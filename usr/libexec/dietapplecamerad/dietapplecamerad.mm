void sub_100000C50(uint64_t a1)
{
  v23 = 255;
  v2 = IOServiceNameMatching("AppleH10CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  v22 = 0;
  v4 = [+[MSUDataAccessor sharedDataAccessor](MSUDataAccessor "sharedDataAccessor")];
  v5 = [NSData dataWithContentsOfFile:@"/private/var/tmp/usr/standalone/firmware/Savage/SavagePatch.DAT"];
  if (a1)
  {
    v6 = v5;
    if (sub_1000195F4(a1, &v23))
    {
      if (v6)
      {
        NSLog(@"Found Savage override DAT file, which takes precedence over all others - %@", @"/private/var/tmp/usr/standalone/firmware/Savage/SavagePatch.DAT");
        v9 = 0;
        v8 = 0;
      }

      else
      {
        if (!v4)
        {
          NSLog(@"Personalized firmware root path accessor not found");
          return;
        }

        v7 = sub_10001AB84(MatchingService, &v24, __str);
        v8 = v24;
        v9 = *__str;
        if ((v7 & 1) == 0)
        {
          v20 = 0;
          if (!*__str)
          {
            goto LABEL_20;
          }

          goto LABEL_28;
        }

        v10 = CFGetTypeID(v24);
        if (v10 != CFDataGetTypeID())
        {
          goto LABEL_34;
        }

        v11 = CFGetTypeID(v9);
        if (v11 != CFDataGetTypeID())
        {
          goto LABEL_34;
        }

        BytePtr = CFDataGetBytePtr(v8);
        v13 = "B3";
        if (BytePtr && (*BytePtr & 0xF0) == 0xA0)
        {
          v13 = "BA";
        }

        v14 = CFDataGetBytePtr(v9);
        v15 = "Dev";
        if (v14 && *v14 == 10)
        {
          v15 = "Prod";
        }

        snprintf(__str, 0x400uLL, "Savage/SavagePatch%s%s.DAT", v13, v15);
        v16 = [v4 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __str)}];
        NSLog(@"DAT file for unprovisioned Savage - %@", v16);
        v17 = [v4 stringByAppendingPathComponent:@"/Savage/SavagePatch.DAT"];
        NSLog(@"DAT file for provisioned Savage - %@", v17);
        v18 = [NSData dataWithContentsOfFile:v16];
        if (!v18)
        {
          v19 = [NSData dataWithContentsOfFile:v17];
          if (v19)
          {
            v6 = v19;
            goto LABEL_17;
          }

          NSLog(@"No DAT file for Savage found");
LABEL_34:
          v20 = 0;
          goto LABEL_28;
        }

        v6 = v18;
        NSLog(@"Loading DAT file for unprovisioned Savage");
      }

LABEL_17:
      v20 = malloc_type_calloc([(NSData *)v6 length], 1uLL, 0x100004077774924uLL);
      if (v20)
      {
        [(NSData *)v6 getBytes:v20 length:[(NSData *)v6 length]];
        v21 = sub_100019414(a1, v23 | 0x80000000, v20, [(NSData *)v6 length], 5u);
        NSLog(@"Load Savage DAT File: Size = %ld; Status = %08x", [(NSData *)v6 length], v21);
      }

      if (!v9)
      {
LABEL_20:
        if (!v8)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_28:
      CFRelease(v9);
      if (!v8)
      {
LABEL_22:
        if (v20)
        {
          free(v20);
        }

        goto LABEL_24;
      }

LABEL_21:
      CFRelease(v8);
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v4)
  {
  }
}

void sub_100000F80(uint64_t a1)
{
  v25 = 255;
  v2 = IOServiceNameMatching("AppleH10CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  v24 = 0;
  v4 = [+[MSUDataAccessor sharedDataAccessor](MSUDataAccessor "sharedDataAccessor")];
  v5 = [NSData dataWithContentsOfFile:@"/private/var/tmp/usr/standalone/firmware/Yonkers/YonkersPatch.DAT"];
  if (a1)
  {
    v6 = v5;
    v7 = sub_1000195A0(a1, &v25);
    if (v6)
    {
      NSLog(@"Found Yonkers override DAT file, which takes precedence over all others - %@", @"/private/var/tmp/usr/standalone/firmware/Yonkers/YonkersPatch.DAT");
      v10 = 0;
      v9 = 0;
      goto LABEL_23;
    }

    if (v7)
    {
      if (!v4)
      {
        NSLog(@"Personalized firmware root path accessor not found");
        return;
      }

      v8 = sub_10001AC30(MatchingService, &v26, __str);
      v9 = v26;
      v10 = *__str;
      if ((v8 & 1) == 0)
      {
        v16 = 0;
        goto LABEL_25;
      }

      v11 = CFGetTypeID(*__str);
      if (v11 != CFDataGetTypeID())
      {
        goto LABEL_38;
      }

      v12 = CFGetTypeID(v9);
      if (v12 != CFDataGetTypeID())
      {
        goto LABEL_38;
      }

      BytePtr = CFDataGetBytePtr(v9);
      if (BytePtr)
      {
        v14 = __rev16(*BytePtr);
        v15 = "Ymgt";
        if (v14 != 54529 && v14 != 59905 && v14 != 61953 && v14 != 56577)
        {
          v15 = "Ngsk";
        }
      }

      else
      {
        v15 = "Ngsk";
      }

      v17 = CFDataGetBytePtr(v10);
      v18 = "Dev";
      if (v17 && *v17 == 8)
      {
        v18 = "Prod";
      }

      snprintf(__str, 0x400uLL, "Yonkers/YonkersPatch%s%s.DAT", v15, v18);
      v19 = [v4 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", __str)}];
      NSLog(@"DAT file for unprovisioned Yonkers - %@", v19);
      v20 = [v4 stringByAppendingPathComponent:@"/Yonkers/YonkersPatch.DAT"];
      NSLog(@"DAT file for provisioned Yonkers - %@", v20);
      v21 = [NSData dataWithContentsOfFile:v19];
      if (!v21)
      {
        v22 = [NSData dataWithContentsOfFile:v20];
        if (v22)
        {
          v6 = v22;
          goto LABEL_23;
        }

        NSLog(@"No DAT file for Yonkers found");
LABEL_38:
        v16 = 0;
        goto LABEL_26;
      }

      v6 = v21;
      NSLog(@"Loading DAT file for unprovisioned Yonkers");
LABEL_23:
      v16 = malloc_type_calloc([(NSData *)v6 length], 1uLL, 0x100004077774924uLL);
      if (v16)
      {
        [(NSData *)v6 getBytes:v16 length:[(NSData *)v6 length]];
        v23 = sub_100019414(a1, v25 | 0x80000000, v16, [(NSData *)v6 length], 5u);
        NSLog(@"Load Yonkers DAT File: Size = %ld; Status = %08x", [(NSData *)v6 length], v23);
      }

LABEL_25:
      if (!v10)
      {
LABEL_27:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v16)
        {
          free(v16);
        }

        goto LABEL_31;
      }

LABEL_26:
      CFRelease(v10);
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v4)
  {
  }
}

void sub_1000012D8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10001ADE4();
  }

  if (!a2)
  {
    sub_10001ADB8();
  }

  bzero((a2 + 469800), 0x4424uLL);
  *(a2 + 469796) = *(a2 + 284);
  v4 = *(a2 + 4);
  if (v4 <= 2)
  {
    switch(v4)
    {
      case 2:
        v76[0] = 0uLL;
        v74[0] = a1;
        v74[1] = 0;
        sub_10000181C(v76, v74, a2);
        return;
      case 0:
        sub_10001AD60();
      case 1:
        sub_10001AD34();
    }

LABEL_90:
    sub_10001AD8C();
  }

  if (v4 != 4)
  {
    if (v4 == 3)
    {
      sub_10001AD08();
    }

    goto LABEL_90;
  }

  if (*(a2 + 688))
  {
    v5 = *(a2 + 32);
    v6 = *(a2 + 34);
    if ((v6 * v5) >= 0x81)
    {
      sub_10001ACDC();
    }

    bzero((a2 + 427300), 0x3800uLL);
    v7 = *(a2 + 250) - *(a2 + 246);
    v73 = a2;
    if (v7)
    {
      v8 = 0;
      v9 = *(a2 + 254);
      v10 = *(a2 + 252);
      v11 = *(a2 + 248) - *(a2 + 244);
      v12 = a1 + *(a2 + 246) * v10 + 2 * *(a2 + 244);
      v13 = *(a2 + 704);
      v14 = *(a2 + 704);
      v15 = a2 + 427300 + 112 * -v5;
      v16 = *(a2 + 256);
      do
      {
        if (v8)
        {
          v17 = 0;
        }

        else
        {
          v17 = v5;
        }

        v15 += 112 * v17;
        if (!v8)
        {
          v8 = v16;
        }

        if (v11 >= 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = v15 - 112;
          v21 = v11 + 1;
          do
          {
            if (v19)
            {
              v22 = 0;
            }

            else
            {
              v19 = v9;
              v22 = 112;
            }

            v20 += v22;
            v23 = *(v12 + v18);
            if (v23 != 0x3FFF)
            {
              v24 = v23 + v13;
              v25 = 32 - __clz(v24 ^ (v24 >> 31));
              if (v24 == v24 >> 31)
              {
                v25 = 0;
              }

              v26 = v25 ^ (v24 >> 31);
              if (v26 >= 6)
              {
                v27 = 6;
              }

              else
              {
                v27 = v26;
              }

              v28 = v27 + 7;
              if (v26 >= -7)
              {
                v29 = v28;
              }

              else
              {
                v29 = 0;
              }

              *(v20 + 8 * v29) = vadd_s32(*(v20 + 8 * v29), (*(v12 + v18) | 0x100000000));
            }

            --v19;
            --v21;
            v18 += 2;
          }

          while (v21 > 1);
        }

        v12 += v10;
        --v8;
        --v7;
      }

      while (v7);
      if (!v6)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v14 = *(a2 + 704);
      if (!v6)
      {
LABEL_78:

        sub_100007A80(v73);
        return;
      }
    }

    v30 = 0;
    v31 = *(v73 + 288);
    v32 = *(v73 + 292);
    v33 = *(v73 + 296);
    v34 = v14;
    v35 = vcvts_n_f32_u32(*(v73 + 706), 0xFuLL);
    v36 = (100 - *(v73 + 700)) / 200.0;
    v37 = *(v73 + 708) >> 1;
    v38 = -v37;
    v39 = v73 + 112 * v37 * ~v5 + 427300;
    v40 = 112 * v5;
    v41 = 1.0 - v36;
    while (!v5)
    {
LABEL_77:
      ++v30;
      ++v38;
      v39 += v40;
      if (v30 == v6)
      {
        goto LABEL_78;
      }
    }

    v42 = 0;
    v43 = *(v73 + 696);
    v44 = v39;
    v45 = -v37;
    while (1)
    {
      v46 = v44;
      v47 = v38;
      memset(v76, 0, sizeof(v76));
      do
      {
        if (v47 < v6)
        {
          v48 = v46;
          v49 = v45;
          do
          {
            if (v49 < v5)
            {
              for (i = 0; i != 112; i += 8)
              {
                *(v76 + i) = vadd_s32(*(v76 + i), *(v48 + i));
              }
            }

            v48 += 112;
            v51 = (v42 + v37) <= v49++;
          }

          while (!v51);
        }

        v46 += v40;
        v51 = (v30 + v37) <= v47++;
      }

      while (!v51);
      v52 = DWORD1(v76[0]);
      *v74 = DWORD1(v76[0]);
      v53 = v76 + 3;
      for (j = 4; j != 56; j += 4)
      {
        v55 = *v53;
        v53 += 2;
        v52 = v52 + v55;
        *(v74 + j) = v52;
      }

      if (v75 != 0.0)
      {
        for (k = 0; k != 56; k += 4)
        {
          *(v74 + k) = *(v74 + k) / v75;
        }
      }

      v57 = 0;
      v58 = 0;
      v59 = 13;
      do
      {
        v60 = *(v74 + v57);
        v61 = v74 + v57;
        if (v60 <= v36 && v61[1] > v36)
        {
          v58 = v57 + 1;
        }

        if (v60 < v41 && v61[1] >= v41)
        {
          v59 = v57 + 1;
        }

        ++v57;
      }

      while (v57 != 13);
      if (v58 > v59)
      {
        break;
      }

      v62 = 0;
      v63 = v59 - v58 + 1;
      v64 = v76 + 2 * v58 + 1;
      v65 = 0.0;
      do
      {
        v65 = v65 + *(v64 - 1);
        v66 = *v64;
        v64 += 2;
        v62 += v66;
        --v63;
      }

      while (v63);
      if (!v62)
      {
        goto LABEL_69;
      }

      v67 = -(((v65 / v62) + v34) * v35);
LABEL_70:
      v68 = v32 * (v67 - v31);
      v69 = v73 + 480040 + 52 * (v42 + v30 * v5);
      if (v62 >= v43)
      {
        v70 = 0x3FFF;
      }

      else
      {
        v70 = 0;
      }

      *v69 = v62;
      *(v69 + 4) = v70;
      v71 = v33 * v68;
      if (v62 >= v43)
      {
        v72 = -96;
      }

      else
      {
        v72 = -120;
      }

      *(v69 + 8) = v71;
      *(v69 + 12) = 0;
      *(v69 + 16) = 0;
      *(v69 + 20) = v72;
      ++v42;
      ++v45;
      v44 += 112;
      if (v42 == v5)
      {
        goto LABEL_77;
      }
    }

    v62 = 0;
LABEL_69:
    v67 = 0.0;
    goto LABEL_70;
  }
}

uint64_t sub_10000181C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 34) * *(a3 + 32) >= 0x81)
  {
    sub_10001B440();
  }

  v1099 = *(a3 + 8);
  if (v1099 >= 2)
  {
    sub_10001AE10();
  }

  v4 = (a3 + 486696);
  v5 = *(a3 + 4);
  v1006 = (a3 + 486696);
  if (v5 < 2)
  {
    sub_100008008((a3 + 12), a1, a2, &v1132);
    v37 = *(a3 + 32);
    v38 = a3 + 6948;
    v39 = *(a3 + 12);
    v1082 = v37;
    if (!v1099)
    {
      if (v39 > 4)
      {
        sub_10001AF70();
      }

      if (v39 == 2)
      {
        v617 = *(a3 + 20);
        v1112 = *(a3 + 28);
        v1123.i32[0] = 0;
        if (v617)
        {
          v618 = v1112;
          do
          {
            v619 = 2 * v1134;
            v620 = 2 * *(a3 + 16);
            if (v620 >= 1)
            {
              v621 = 0;
              v622 = 2 * *(a3 + 24);
              v623 = v38 - 404;
              v624 = *(&v1135 + 1);
              v625 = (v1136[0] + 6);
              v626 = *(a3 + 304);
              v627 = v620 + 2;
              do
              {
                if (!v619)
                {
                  v619 = 2 * LODWORD(v1140[0]);
                  v625 = (v1140[4] + 6);
                  v624 = v1140[3];
                }

                if (v621)
                {
                  v628 = 0;
                }

                else
                {
                  v621 = v622;
                  v628 = 404;
                }

                v623 += v628;
                v629 = *v624;
                v630.i32[0] = v624[1];
                v630.i32[1] = v624[2];
                v631 = vshr_n_u32(v630, 4uLL);
                v632 = *v625;
                ++*(v623 + 384);
                *(v623 + 388) += v631.u32[0];
                *(v623 + 396) += v631.u32[0] * v631.u32[0];
                if ((v632 & 4) == 0)
                {
                  v633 = v625[1];
                  v634 = v633 & 7;
                  if ((v632 & 1) != 0 || (((v633 & 7u) < 6) & (v632 >> 1)) != 0)
                  {
                    v651.i32[0] = 1;
                    v651.i32[1] = v631.i32[0];
                    v651.i64[1] = (v629 >> 4) | 0x100000000;
                    *(v623 + 336) = vaddq_s32(*(v623 + 336), v651);
                    *(v623 + 352) = vadd_s32(*(v623 + 352), v631);
                  }

                  else
                  {
                    v635 = v634 > 5;
                    v636 = v632;
                    v637 = v625[2];
                    v638 = (v637 & 0xF) + 1;
                    v639 = v637 >> 4;
                    v640 = v632 >> 3;
                    v641 = v625[1] >> 3;
                    if (v641 >= 0)
                    {
                      LOWORD(v642) = v625[1] >> 3;
                    }

                    else
                    {
                      v642 = -v641;
                    }

                    if (v640 < 0)
                    {
                      v640 = -v640;
                    }

                    v643 = v634 - v635;
                    v644 = (16 * (v642 & 0xFFFu)) >> v635 >> 1;
                    v645 = ((v638 >> 1) * v639 * v644) >> 15 << v626;
                    if (v645 <= -32768)
                    {
                      v645 = -32768;
                    }

                    if (v645 >= 0x7FFF)
                    {
                      v645 = 0x7FFF;
                    }

                    v646 = ((v645 * v644) >> 15);
                    v647 = ((v645 * 8 * (v640 & 0xFFF)) >> 15);
                    if ((v641 ^ (v636 >> 3)) >= 0)
                    {
                      v648 = v643 + 7;
                    }

                    else
                    {
                      v648 = v643;
                    }

                    v649 = (v623 + 24 * v648);
                    v650 = v649[1] + v646;
                    *v649 += v638;
                    v649[1] = v650;
                    v649[2] += v647;
                  }
                }

                v624 += 4;
                v625 += 6;
                v619 -= 2;
                v621 -= 2;
                ++v1123.i32[0];
                v627 -= 2;
              }

              while (v627 > 2);
            }

            if (v619)
            {
              sub_10001B204();
            }

            sub_100008878(&v1132);
            sub_100008878(&v1138);
            v652 = v37;
            if (v618 != 1)
            {
              v652 = 0;
            }

            v38 += 404 * v652;
            if (v618 == 1)
            {
              v618 = v1112;
            }

            else
            {
              --v618;
            }

            --v617;
          }

          while (v617);
        }
      }

      else
      {
        v60 = *(a3 + 20);
        v61 = 2 * v60;
        v1105 = 2 * *(a3 + 28);
        v1123.i32[0] = 0;
        if (v39 <= 1)
        {
          if (v39)
          {
            if (v61)
            {
              v690 = v1105;
              v691 = -2 * v60;
              while (1)
              {
                sub_10000897C((a3 + 12), a3 + 300, 1, &v1134, v1140, v38, &v1123);
                sub_100008878(&v1132);
                sub_100008878(&v1138);
                sub_10000897C((a3 + 12), a3 + 300, 0, &v1136[1], &v1140[5], v38, &v1123);
                if (v1132 <= 1)
                {
                  if (v1132 != 1)
                  {
                    if (v1132)
                    {
                      goto LABEL_1534;
                    }

                    goto LABEL_1532;
                  }
                }

                else if (v1132 != 3)
                {
                  if (v1132 == 4)
                  {
                    sub_10001B0D0();
                  }

                  if (v1132 != 2)
                  {
LABEL_1534:
                    sub_10001B128();
                  }

LABEL_1532:
                  sub_10001B0FC();
                }

                *&v1137 = v1137 + 2 * *(&v1132 + 1) + 2 * v1133;
                if (v1136[3])
                {
                  --v1136[3];
                  v692 = *(&v1137 + 1) + 4 * *(&v1133 + 1);
                }

                else
                {
                  v692 = *(&v1137 + 1) + 2 * *(&v1133 + 1);
                }

                *(&v1137 + 1) = v692;
                LODWORD(v693) = vadd_s32(*(&v1136[1] + 4), 0x200000002).u32[0];
                HIDWORD(v693) = veor_s8(*(v1136 + 12), 0x100000001).i32[1];
                *(&v1136[1] + 4) = v693;
                if (v1138 <= 1)
                {
                  if (v1138 != 1)
                  {
                    if (v1138)
                    {
                      goto LABEL_1539;
                    }

                    goto LABEL_1537;
                  }
                }

                else if (v1138 != 3)
                {
                  if (v1138 == 4)
                  {
                    sub_10001B0D0();
                  }

                  if (v1138 != 2)
                  {
LABEL_1539:
                    sub_10001B128();
                  }

LABEL_1537:
                  sub_10001B0FC();
                }

                *&v1141 = v1141 + 2 * *(&v1138 + 1) + 2 * v1139;
                if (v1140[7])
                {
                  --v1140[7];
                  v694 = *(&v1141 + 1) + 4 * *(&v1139 + 1);
                }

                else
                {
                  v694 = *(&v1141 + 1) + 2 * *(&v1139 + 1);
                }

                *(&v1141 + 1) = v694;
                LODWORD(v695) = vadd_s32(*(&v1140[5] + 4), 0x200000002).u32[0];
                HIDWORD(v695) = veor_s8(*(v1140 + 44), 0x100000001).i32[1];
                *(&v1140[5] + 4) = v695;
                v696 = v1082;
                if (v690 != 2)
                {
                  v696 = 0;
                }

                v38 += 404 * v696;
                if (v690 == 2)
                {
                  v690 = v1105;
                }

                else
                {
                  v690 -= 2;
                }

                v691 += 2;
                if (!v691)
                {
                  goto LABEL_1017;
                }
              }
            }
          }

          else if (v61)
          {
            v379 = v1105;
            do
            {
              v380 = v1134;
              v381 = *(a3 + 16);
              if (v381 >= 1)
              {
                v382 = 0;
                v383 = *(a3 + 24);
                v384 = v38 - 404;
                v386 = *(&v1135 + 1);
                v385 = v1136[0];
                v387 = v1140[3];
                v388 = v1140[4];
                v389 = *(a3 + 304);
                v390 = v1140[1];
                v391 = v381 + 1;
                v392 = DWORD2(v1134);
                v393 = v1140[0];
                do
                {
                  if (!v380)
                  {
                    v380 = v393;
                    v392 = v390;
                    v385 = v388;
                    v386 = v387;
                  }

                  if (v382)
                  {
                    v394 = 0;
                  }

                  else
                  {
                    v382 = v383;
                    v394 = 404;
                  }

                  v384 += v394;
                  v395 = *v386;
                  v396 = v386[1] >> 4;
                  v397 = *v385;
                  ++*(v384 + 384);
                  *(v384 + 388) += v396;
                  *(v384 + 396) += v396 * v396;
                  if ((v397 & 4) == 0)
                  {
                    v398 = v385[1];
                    v399 = v398 & 7;
                    if ((v397 & 1) != 0 || (((v398 & 7u) < 6) & (v397 >> 1)) != 0)
                    {
                      v416 = v395 >> 4;
                      v417 = (v384 + 12 * v392);
                      v418.i32[0] = 1;
                      v418.i32[1] = v396;
                      v417[42] = vadd_s32(v417[42], v418);
                      v417[43].i32[0] += v416;
                    }

                    else
                    {
                      v400 = v399 > 5;
                      v401 = v397;
                      v402 = v385[2];
                      v403 = (v402 & 0xF) + 1;
                      v404 = v402 >> 4;
                      v405 = v397 >> 3;
                      v406 = v385[1] >> 3;
                      if (v406 >= 0)
                      {
                        LOWORD(v407) = v385[1] >> 3;
                      }

                      else
                      {
                        v407 = -v406;
                      }

                      if (v405 < 0)
                      {
                        v405 = -v405;
                      }

                      v408 = v399 - v400;
                      v409 = (16 * (v407 & 0xFFFu)) >> v400 >> 1;
                      v410 = ((v403 >> 1) * v404 * v409) >> 15 << v389;
                      if (v410 <= -32768)
                      {
                        v410 = -32768;
                      }

                      if (v410 >= 0x7FFF)
                      {
                        v410 = 0x7FFF;
                      }

                      v411 = ((v410 * v409) >> 15);
                      v412 = ((v410 * 8 * (v405 & 0xFFF)) >> 15);
                      if ((v406 ^ (v401 >> 3)) >= 0)
                      {
                        v413 = v408 + 7;
                      }

                      else
                      {
                        v413 = v408;
                      }

                      v414 = (v384 + 24 * v413);
                      v415 = v414[1];
                      *v414 += v403;
                      v414[1] = v415 + v411;
                      v414[2] += v412;
                    }
                  }

                  v386 += 2;
                  v385 += 3;
                  --v380;
                  --v382;
                  ++v1123.i32[0];
                  v392 ^= 1u;
                  --v391;
                }

                while (v391 > 1);
              }

              if (v380)
              {
                sub_10001B230();
              }

              sub_100008878(&v1132);
              sub_100008878(&v1138);
              v419 = v37;
              if (v379 != 1)
              {
                v419 = 0;
              }

              v38 += 404 * v419;
              if (v379 == 1)
              {
                v379 = v1105;
              }

              else
              {
                --v379;
              }

              --v61;
            }

            while (v61);
          }
        }

        else if (v39 == 4)
        {
          if (v61)
          {
            sub_10001B1D8();
          }
        }

        else if (v61)
        {
          v668 = v1105;
          v669 = -2 * v60;
          while (1)
          {
            sub_10000897C((a3 + 12), a3 + 300, 0, &v1136[1], &v1140[5], v38, &v1123);
            if (v1132 <= 1)
            {
              if (v1132 != 1)
              {
                if (v1132)
                {
                  goto LABEL_1516;
                }

                goto LABEL_1514;
              }
            }

            else if (v1132 != 3)
            {
              if (v1132 == 4)
              {
                sub_10001B0D0();
              }

              if (v1132 != 2)
              {
LABEL_1516:
                sub_10001B128();
              }

LABEL_1514:
              sub_10001B0FC();
            }

            *&v1137 = v1137 + 2 * *(&v1132 + 1) + 2 * v1133;
            if (v1136[3])
            {
              --v1136[3];
              v670 = *(&v1137 + 1) + 4 * *(&v1133 + 1);
            }

            else
            {
              v670 = *(&v1137 + 1) + 2 * *(&v1133 + 1);
            }

            *(&v1137 + 1) = v670;
            LODWORD(v671) = vadd_s32(*(&v1136[1] + 4), 0x200000002).u32[0];
            HIDWORD(v671) = veor_s8(*(v1136 + 12), 0x100000001).i32[1];
            *(&v1136[1] + 4) = v671;
            if (v1138 <= 1)
            {
              if (v1138 != 1)
              {
                if (v1138)
                {
                  goto LABEL_1521;
                }

                goto LABEL_1519;
              }
            }

            else if (v1138 != 3)
            {
              if (v1138 == 4)
              {
                sub_10001B0D0();
              }

              if (v1138 != 2)
              {
LABEL_1521:
                sub_10001B128();
              }

LABEL_1519:
              sub_10001B0FC();
            }

            *&v1141 = v1141 + 2 * *(&v1138 + 1) + 2 * v1139;
            if (v1140[7])
            {
              --v1140[7];
              v672 = *(&v1141 + 1) + 4 * *(&v1139 + 1);
            }

            else
            {
              v672 = *(&v1141 + 1) + 2 * *(&v1139 + 1);
            }

            *(&v1141 + 1) = v672;
            LODWORD(v673) = vadd_s32(*(&v1140[5] + 4), 0x200000002).u32[0];
            HIDWORD(v673) = veor_s8(*(v1140 + 44), 0x100000001).i32[1];
            *(&v1140[5] + 4) = v673;
            sub_10000897C((a3 + 12), a3 + 300, 1, &v1134, v1140, v38, &v1123);
            sub_100008878(&v1132);
            sub_100008878(&v1138);
            v674 = v1082;
            if (v668 != 2)
            {
              v674 = 0;
            }

            v38 += 404 * v674;
            if (v668 == 2)
            {
              v668 = v1105;
            }

            else
            {
              v668 -= 2;
            }

            v669 += 2;
            if (!v669)
            {
              goto LABEL_1017;
            }
          }
        }
      }

      goto LABEL_1017;
    }

    if (v39 > 4)
    {
      sub_10001AF70();
    }

    if (v39 != 2)
    {
      v40 = *(a3 + 20);
      v41 = 2 * v40;
      v1104 = 2 * *(a3 + 28);
      v1122 = 0;
      if (v39 > 1)
      {
        if (v39 == 4)
        {
          if (v41)
          {
            sub_10001B0A4();
          }
        }

        else if (v41)
        {
          v435 = v1104;
          v436 = -2 * v40;
          while (1)
          {
            sub_100008B90((a3 + 12), a3 + 300, 0, &v1136[1], &v1140[5], v38, &v1122);
            if (v1132 <= 1)
            {
              if (v1132 != 1)
              {
                if (v1132)
                {
                  goto LABEL_1486;
                }

                goto LABEL_1435;
              }
            }

            else if (v1132 != 3)
            {
              if (v1132 == 4)
              {
                sub_10001B0D0();
              }

              if (v1132 != 2)
              {
LABEL_1486:
                sub_10001B128();
              }

LABEL_1435:
              sub_10001B0FC();
            }

            *&v1137 = v1137 + 2 * *(&v1132 + 1) + 2 * v1133;
            if (v1136[3])
            {
              --v1136[3];
              v437 = *(&v1137 + 1) + 4 * *(&v1133 + 1);
            }

            else
            {
              v437 = *(&v1137 + 1) + 2 * *(&v1133 + 1);
            }

            *(&v1137 + 1) = v437;
            LODWORD(v438) = vadd_s32(*(&v1136[1] + 4), 0x200000002).u32[0];
            HIDWORD(v438) = veor_s8(*(v1136 + 12), 0x100000001).i32[1];
            *(&v1136[1] + 4) = v438;
            if (v1138 <= 1)
            {
              if (v1138 != 1)
              {
                if (v1138)
                {
                  goto LABEL_1488;
                }

                goto LABEL_1438;
              }
            }

            else if (v1138 != 3)
            {
              if (v1138 == 4)
              {
                sub_10001B0D0();
              }

              if (v1138 != 2)
              {
LABEL_1488:
                sub_10001B128();
              }

LABEL_1438:
              sub_10001B0FC();
            }

            *&v1141 = v1141 + 2 * *(&v1138 + 1) + 2 * v1139;
            if (v1140[7])
            {
              --v1140[7];
              v439 = *(&v1141 + 1) + 4 * *(&v1139 + 1);
            }

            else
            {
              v439 = *(&v1141 + 1) + 2 * *(&v1139 + 1);
            }

            *(&v1141 + 1) = v439;
            LODWORD(v440) = vadd_s32(*(&v1140[5] + 4), 0x200000002).u32[0];
            HIDWORD(v440) = veor_s8(*(v1140 + 44), 0x100000001).i32[1];
            *(&v1140[5] + 4) = v440;
            sub_100008B90((a3 + 12), a3 + 300, 1, &v1134, v1140, v38, &v1122);
            sub_100008878(&v1132);
            sub_100008878(&v1138);
            if (v435 == 2)
            {
              v441 = v37;
            }

            else
            {
              v441 = 0;
            }

            v38 += 404 * v441;
            if (v435 == 2)
            {
              v435 = v1104;
            }

            else
            {
              v435 -= 2;
            }

            v436 += 2;
            if (!v436)
            {
              goto LABEL_1017;
            }
          }
        }

        goto LABEL_1017;
      }

      if (!v39)
      {
        if (!v41)
        {
          goto LABEL_1017;
        }

        v123 = v1104;
        while (1)
        {
          v1068 = v123;
          v124 = v1134;
          v125 = *(a3 + 16);
          if (v125 >= 1)
          {
            break;
          }

LABEL_245:
          if (v124)
          {
            sub_10001B1AC();
          }

          sub_100008878(&v1132);
          sub_100008878(&v1138);
          v123 = v1068 - 1;
          if (v1068 == 1)
          {
            v184 = v37;
          }

          else
          {
            v184 = 0;
          }

          v38 += 404 * v184;
          if (v1068 == 1)
          {
            v123 = v1104;
          }

          if (!--v41)
          {
            goto LABEL_1017;
          }
        }

        v126 = 0;
        v127 = vdupq_n_s16(*(a3 + 304));
        v128 = *(a3 + 24);
        v129 = 40;
        if (!v1134)
        {
          v129 = 152;
        }

        v130 = *(&v1132 + v129);
        v131 = v38 - 404;
        v133 = *(&v1135 + 1);
        v132 = v1136[0];
LABEL_217:
        v134 = v1140[3];
        v135 = v1140[4];
        v136 = v1140[0];
        if (!v124)
        {
          v124 = v1140[0];
          v132 = v1140[4];
          v133 = v1140[3];
        }

        if (v124 <= 7)
        {
          v137 = v125;
          if (v124 != v125)
          {
            if (v124 < 1)
            {
              sub_10001B180();
            }

            v138 = 0;
            v139 = 2 * v124;
            do
            {
              v140 = &v133[v138];
              v1123.i16[v138 / 2] = *v140;
              v1131.i16[v138 / 2] = v140[1];
              v1130.i16[v138 / 2] = *v132;
              v1129.i16[v138 / 2] = v132[1];
              v1128.i16[v138 / 2] = v132[2];
              v132 += 3;
              v138 += 2;
            }

            while (v139 != v138);
            if (v125 >= 8)
            {
              v141 = 8;
            }

            else
            {
              v141 = v125;
            }

            if (v124 < v141)
            {
              v142 = 0;
              v143 = &v1128.i8[v139];
              v144 = &v1129.i8[v139];
              v145 = &v1130.i8[v139];
              v146 = &v1131.i8[v139];
              v147 = &v1123.i8[v139];
              v148 = v124;
              v149 = v134;
              do
              {
                v150 = &v134[v142];
                *&v147[v142] = *v150;
                *&v146[v142] = v150[1];
                *&v145[v142] = *v135;
                *&v144[v142] = v135[1];
                *&v143[v142] = v135[2];
                v151 = v149;
                v135 += 3;
                ++v148;
                v142 += 2;
                v149 = v150 + 2;
              }

              while (v141 > v148);
              v134 = v151 + 2;
              v37 = v1082;
            }

            v1152.val[0] = v1123;
            v1152.val[1] = v1131;
            v1153.val[1] = v1129;
            v1153.val[0] = v1130;
            v124 += v136 - v141;
            v132 = v135;
            v133 = v134;
            v1153.val[2] = v1128;
LABEL_234:
            v152 = 0;
            v153.i64[0] = 0x2000200020002;
            v153.i64[1] = 0x2000200020002;
            v154.i64[0] = 0x4000400040004;
            v154.i64[1] = 0x4000400040004;
            v155 = vceqzq_s16(vandq_s8(v1153.val[0], v154));
            v156.i64[0] = 0x7000700070007;
            v156.i64[1] = 0x7000700070007;
            v157 = vandq_s8(v1153.val[1], v156);
            v158.i64[0] = 0xF000F000F000FLL;
            v158.i64[1] = 0xF000F000F000FLL;
            v159 = vshrq_n_u16(v1152.val[0], 4uLL);
            v160 = vshrq_n_u16(v1152.val[1], 4uLL);
            v161 = vshrq_n_s16(v1153.val[1], 3uLL);
            v162 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v1153.val[0], 3uLL)), 4uLL);
            v163.i64[0] = 0x5000500050005;
            v163.i64[1] = 0x5000500050005;
            v164 = vcgtq_u16(v157, v163);
            v165 = vorrq_s8(v164, vceqzq_s16(vandq_s8(v1153.val[0], v153)));
            v166 = vaddq_s16(v157, v164);
            v167 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v161), 4uLL), v164);
            v164.i64[0] = 0x1000100010001;
            v164.i64[1] = 0x1000100010001;
            v168 = vandq_s8(vaddq_s16(vandq_s8(v1153.val[2], v158), vbicq_s8(v164, v1153.val[0])), v165);
            v169 = vaddq_s16(v166, vandq_s8(veorq_s8(vcltzq_s16(v1153.val[0]), vcgezq_s16(v161)), v156));
            v170 = vshrq_n_u16(v167, 1uLL);
            v171 = vqshlq_s16(vqdmulhq_s16(v170, vmulq_s16(vshrq_n_u16(v168, 1uLL), vshrq_n_u16(v1153.val[2], 4uLL))), v127);
            v172 = vceqzq_s16(v168);
            v1123 = v169;
            v1124 = vornq_s8(vandq_s8(v168, v155), v155);
            v1125 = vbslq_s8(v172, v160, vqdmulhq_s16(v171, v170));
            v1126 = vbslq_s8(v172, v159, vqdmulhq_s16(v171, vshrq_n_u16(v162, 1uLL)));
            v1131 = v160;
            v173 = &v1125;
            while (1)
            {
              if (v126)
              {
                v174 = 0;
              }

              else
              {
                v126 = v128;
                v174 = 404;
              }

              v131 += v174;
              v175 = v173[-2].u16[0];
              v176 = v173[-1].u16[0];
              v177 = v173->u16[0];
              v178 = v173[1].u16[0];
              ++*(v131 + 384);
              v179 = v1131.u16[v152];
              *(v131 + 388) += v179;
              *(v131 + 396) += v179 * v179;
              if (v176)
              {
                if (v176 != 0xFFFF)
                {
                  v180 = (v131 + 24 * v175);
                  v181 = v180[1];
                  *v180 += v176;
                  v180[1] = v181 + v177;
                  v180[2] += v178;
                }
              }

              else
              {
                v182 = (v131 + 12 * v130);
                v183.i32[0] = 1;
                v183.i32[1] = v177;
                v182[42] = vadd_s32(v182[42], v183);
                v182[43].i32[0] += v178;
              }

              ++v1122;
              if (v125 - 1 == v152)
              {
                goto LABEL_245;
              }

              v173 = (v173 + 2);
              v130 ^= 1u;
              --v126;
              if (++v152 == 8)
              {
                v125 -= 8;
                if (v125 + 1 > 1)
                {
                  goto LABEL_217;
                }

                goto LABEL_245;
              }
            }
          }
        }

        else
        {
          v137 = 8;
        }

        v1152 = vld2q_s16(v133);
        v133 += 16;
        v124 -= v137;
        v1153 = vld3q_s16(v132);
        v132 += 24;
        goto LABEL_234;
      }

      if (v41)
      {
        v557 = v1104;
        for (i = -2 * v40; i; i += 2)
        {
          sub_100008B90((a3 + 12), a3 + 300, 1, &v1134, v1140, v38, &v1122);
          sub_100008878(&v1132);
          sub_100008878(&v1138);
          sub_100008B90((a3 + 12), a3 + 300, 0, &v1136[1], &v1140[5], v38, &v1122);
          if (v1132 <= 1)
          {
            if (v1132 != 1)
            {
              if (v1132)
              {
                goto LABEL_1499;
              }

              goto LABEL_1441;
            }
          }

          else if (v1132 != 3)
          {
            if (v1132 == 4)
            {
              sub_10001B0D0();
            }

            if (v1132 != 2)
            {
LABEL_1499:
              sub_10001B128();
            }

LABEL_1441:
            sub_10001B0FC();
          }

          *&v1137 = v1137 + 2 * *(&v1132 + 1) + 2 * v1133;
          if (v1136[3])
          {
            --v1136[3];
            v559 = *(&v1137 + 1) + 4 * *(&v1133 + 1);
          }

          else
          {
            v559 = *(&v1137 + 1) + 2 * *(&v1133 + 1);
          }

          *(&v1137 + 1) = v559;
          LODWORD(v560) = vadd_s32(*(&v1136[1] + 4), 0x200000002).u32[0];
          HIDWORD(v560) = veor_s8(*(v1136 + 12), 0x100000001).i32[1];
          *(&v1136[1] + 4) = v560;
          if (v1138 <= 1)
          {
            if (v1138 != 1)
            {
              if (v1138)
              {
                goto LABEL_1501;
              }

              goto LABEL_1444;
            }
          }

          else if (v1138 != 3)
          {
            if (v1138 == 4)
            {
              sub_10001B0D0();
            }

            if (v1138 != 2)
            {
LABEL_1501:
              sub_10001B128();
            }

LABEL_1444:
            sub_10001B0FC();
          }

          *&v1141 = v1141 + 2 * *(&v1138 + 1) + 2 * v1139;
          if (v1140[7])
          {
            --v1140[7];
            v561 = *(&v1141 + 1) + 4 * *(&v1139 + 1);
          }

          else
          {
            v561 = *(&v1141 + 1) + 2 * *(&v1139 + 1);
          }

          *(&v1141 + 1) = v561;
          LODWORD(v562) = vadd_s32(*(&v1140[5] + 4), 0x200000002).u32[0];
          HIDWORD(v562) = veor_s8(*(v1140 + 44), 0x100000001).i32[1];
          *(&v1140[5] + 4) = v562;
          if (v557 == 2)
          {
            v563 = v37;
          }

          else
          {
            v563 = 0;
          }

          v38 += 404 * v563;
          if (v557 == 2)
          {
            v557 = v1104;
          }

          else
          {
            v557 -= 2;
          }
        }
      }

LABEL_1017:
      if (!*(a3 + 608))
      {
        goto LABEL_1095;
      }

      sub_100008008((a3 + 12), a1, a2, &v1132);
      v697 = *(a3 + 12);
      if (v697 <= 1)
      {
        if (!v697)
        {
          if (*(a3 + 16) != *(a3 + 160))
          {
            sub_10001AFF4();
          }

          if (*(a3 + 156))
          {
            v748 = 0;
            v749 = a3 + 487308;
            v750 = v1006[137];
            v751 = v1006[140];
            v1117 = v1006[146];
            v1095 = v1006[149];
            *v1065 = v1006[143];
            v752 = *(a3 + 20);
            do
            {
              v753 = *(a3 + 140 + 4 * (v748 % *(a3 + 132)));
              v754 = v1006 + 138;
              v755 = 5;
              do
              {
                bzero((v749 + *(v754 - 1)), *v754);
                v754 += 3;
                --v755;
              }

              while (v755);
              if (v752 >= v753)
              {
                v756 = v753;
              }

              else
              {
                v756 = v752;
              }

              sub_100008F60(a3, v756, &v1132, (v749 + v750), (v749 + v751), (v749 + *v1065));
              sub_1000090DC(v1099, (a3 + 132), a3 + 608, (v749 + v750), (v749 + v751), (v749 + v1117), (v749 + v1095), (a3 + 58660 + 360 * *(a3 + 184) * v748));
              LOWORD(v752) = v752 - v753;
              ++v748;
            }

            while (v748 < *(a3 + 156));
          }

          goto LABEL_1095;
        }

        if (v697 == 1)
        {
          if (*(a3 + 16) != *(a3 + 160))
          {
            sub_10001AFF4();
          }

          v707 = a3 + 487308;
          v708 = v1006[137];
          v709 = v1006[140];
          v1114 = v1006[146];
          v1092 = v1006[149];
          v1075 = v1006[143];
          if (*(a3 + 156))
          {
            v710 = 0;
            v711 = *(a3 + 20);
            do
            {
              v712 = *(a3 + 140 + 4 * (v710 % *(a3 + 132)));
              v713 = v1006 + 138;
              v714 = 5;
              do
              {
                bzero((v707 + *(v713 - 1)), *v713);
                v713 += 3;
                --v714;
              }

              while (v714);
              if (v711 >= v712)
              {
                v715 = v712;
              }

              else
              {
                v715 = v711;
              }

              sub_100008F60(a3, v715, &v1132, (v707 + v708), (v707 + v709), (v707 + v1075));
              sub_1000090DC(v1099, (a3 + 132), a3 + 608, (v707 + v708), (v707 + v709), (v707 + v1114), (v707 + v1092), (a3 + 58660 + 360 * *(a3 + 184) * v710));
              LOWORD(v711) = v711 - v712;
              ++v710;
            }

            while (v710 < *(a3 + 156));
            v708 = v1006[137];
            v709 = v1006[140];
            v1114 = v1006[146];
            v1075 = v1006[143];
            v1092 = v1006[149];
          }

          if (*(a3 + 20) != *(a3 + 216))
          {
            sub_10001B020();
          }

          if (*(a3 + 212))
          {
            v716 = 0;
            v717 = 0;
            v718 = *(a3 + 16);
            do
            {
              v719 = *(a3 + 196 + 4 * (v717 % *(a3 + 188)));
              v720 = v1006 + 138;
              v721 = 5;
              do
              {
                bzero((v707 + *(v720 - 1)), *v720);
                v720 += 3;
                --v721;
              }

              while (v721);
              if (v718 >= v719)
              {
                v722 = v719;
              }

              else
              {
                v722 = v718;
              }

              sub_1000099A8(a3, v716, v722, &v1132, (v707 + v708), (v707 + v709), (v707 + v1075));
              sub_1000090DC(v1099, (a3 + 188), a3 + 608, (v707 + v708), (v707 + v709), (v707 + v1114), (v707 + v1092), (a3 + 242980 + 360 * *(a3 + 240) * v717));
              v716 += v719;
              LOWORD(v718) = v718 - v719;
              ++v717;
            }

            while (v717 < *(a3 + 212));
          }

          goto LABEL_1095;
        }
      }

      else
      {
        switch(v697)
        {
          case 2:
            if (*(a3 + 16) != *(a3 + 160))
            {
              sub_10001AFF4();
            }

            if (*(a3 + 156))
            {
              v723 = 0;
              v724 = a3 + 487308;
              v725 = v1006[137];
              v726 = v1006[140];
              v1115 = v1006[146];
              v1093 = v1006[149];
              v727 = *(a3 + 20);
              do
              {
                v728 = *(a3 + 140 + 4 * (v723 % *(a3 + 132)));
                v729 = v1006 + 138;
                v730 = 5;
                do
                {
                  bzero((v724 + *(v729 - 1)), *v729);
                  v729 += 3;
                  --v730;
                }

                while (v730);
                if (v727 >= v728)
                {
                  v731 = v728;
                }

                else
                {
                  v731 = v727;
                }

                sub_100009BDC(a3 + 12, v731, &v1132, (v724 + v725), (v724 + v726));
                sub_1000090DC(v1099, (a3 + 132), a3 + 608, (v724 + v725), (v724 + v726), (v724 + v1115), (v724 + v1093), (a3 + 58660 + 360 * *(a3 + 184) * v723));
                LOWORD(v727) = v727 - v728;
                ++v723;
              }

              while (v723 < *(a3 + 156));
            }

            goto LABEL_1095;
          case 3:
            if (*(a3 + 16) != *(a3 + 160))
            {
              sub_10001AFF4();
            }

            v732 = a3 + 487308;
            v733 = v1006[137];
            v734 = v1006[140];
            v1116 = v1006[146];
            v1094 = v1006[149];
            v1076 = v1006[143];
            if (*(a3 + 156))
            {
              v735 = 0;
              v736 = *(a3 + 20);
              do
              {
                v737 = *(a3 + 140 + 4 * (v735 % *(a3 + 132)));
                v738 = v1006 + 138;
                v739 = 5;
                do
                {
                  bzero((v732 + *(v738 - 1)), *v738);
                  v738 += 3;
                  --v739;
                }

                while (v739);
                if (v736 >= v737)
                {
                  v740 = v737;
                }

                else
                {
                  v740 = v736;
                }

                sub_100008F60(a3, v740, &v1132, (v732 + v733), (v732 + v734), (v732 + v1076));
                sub_1000090DC(v1099, (a3 + 132), a3 + 608, (v732 + v733), (v732 + v734), (v732 + v1116), (v732 + v1094), (a3 + 58660 + 360 * *(a3 + 184) * v735));
                LOWORD(v736) = v736 - v737;
                ++v735;
              }

              while (v735 < *(a3 + 156));
              v733 = v1006[137];
              v734 = v1006[140];
              v1116 = v1006[146];
              v1076 = v1006[143];
              v1094 = v1006[149];
            }

            if (*(a3 + 20) != *(a3 + 216))
            {
              sub_10001B020();
            }

            if (*(a3 + 212))
            {
              v741 = 0;
              v742 = 0;
              v743 = *(a3 + 16);
              do
              {
                v744 = *(a3 + 196 + 4 * (v742 % *(a3 + 188)));
                v745 = v1006 + 138;
                v746 = 5;
                do
                {
                  bzero((v732 + *(v745 - 1)), *v745);
                  v745 += 3;
                  --v746;
                }

                while (v746);
                if (v743 >= v744)
                {
                  v747 = v744;
                }

                else
                {
                  v747 = v743;
                }

                sub_1000099A8(a3, v741, v747, &v1132, (v732 + v733), (v732 + v734), (v732 + v1076));
                sub_1000090DC(v1099, (a3 + 188), a3 + 608, (v732 + v733), (v732 + v734), (v732 + v1116), (v732 + v1094), (a3 + 242980 + 360 * *(a3 + 240) * v742));
                v741 += v744;
                LOWORD(v743) = v743 - v744;
                ++v742;
              }

              while (v742 < *(a3 + 212));
            }

            goto LABEL_1095;
          case 4:
            if (*(a3 + 16) != *(a3 + 160))
            {
              sub_10001AFF4();
            }

            v698 = a3 + 487308;
            if (*(a3 + 156))
            {
              v699 = 0;
              v700 = v1006[137];
              v701 = v1006[140];
              v1113 = v1006[146];
              v1091 = v1006[149];
              v702 = *(a3 + 20);
              do
              {
                v703 = *(a3 + 140 + 4 * (v699 % *(a3 + 132)));
                v704 = v1006 + 138;
                v705 = 5;
                do
                {
                  bzero((v698 + *(v704 - 1)), *v704);
                  v704 += 3;
                  --v705;
                }

                while (v705);
                if (v702 >= v703)
                {
                  v706 = v703;
                }

                else
                {
                  v706 = v702;
                }

                sub_100009BDC(a3 + 12, v706, &v1132, (v698 + v700), (v698 + v701));
                sub_1000090DC(v1099, (a3 + 132), a3 + 608, (v698 + v700), (v698 + v701), (v698 + v1113), (v698 + v1091), (a3 + 58660 + 360 * *(a3 + 184) * v699));
                LOWORD(v702) = v702 - v703;
                ++v699;
              }

              while (v699 < *(a3 + 156));
            }

            if (*(a3 + 20) != *(a3 + 216))
            {
              sub_10001B020();
            }

            if (*(a3 + 212))
            {
              sub_10001B25C((v1006 + 137), a3 + 487308);
            }

            goto LABEL_1095;
        }
      }

      sub_10001B078();
    }

    v260 = *(a3 + 20);
    v1106 = *(a3 + 28);
    v1122 = 0;
    if (!v260)
    {
      goto LABEL_1017;
    }

    v261 = v1106;
    while (1)
    {
      v262 = 2 * *(a3 + 16);
      if (v262 >= 1)
      {
        break;
      }

LABEL_368:
      sub_100008878(&v1132);
      sub_100008878(&v1138);
      if (v261 == 1)
      {
        v329 = v37;
      }

      else
      {
        v329 = 0;
      }

      v38 += 404 * v329;
      if (v261 == 1)
      {
        v261 = v1106;
      }

      else
      {
        --v261;
      }

      if (!--v260)
      {
        goto LABEL_1017;
      }
    }

    v263 = 0;
    v264 = vdupq_n_s16(*(a3 + 304));
    v265 = 2 * *(a3 + 24);
    v266 = 2 * v1134;
    v267 = v38 - 404;
    v268 = *(&v1135 + 1);
    v269 = v1136[0];
    v270 = v262 - 2;
LABEL_331:
    v271 = v1140[3];
    v272 = v1140[4];
    v273 = v1140[0];
    _ZF = v266 == 0;
    if (v266)
    {
      v275 = v269;
    }

    else
    {
      v266 = 2 * LODWORD(v1140[0]);
      v275 = v1140[4];
    }

    if (_ZF)
    {
      v268 = v1140[3];
    }

    if (v266 < 16)
    {
      v276 = v262;
      if (v266 != v262)
      {
        v281 = v266 == 1;
        if (v266 < 1)
        {
          sub_10001B154();
        }

        v282 = v266 >> 1;
        if (!v281)
        {
          if (v282 <= 1)
          {
            v283 = 1;
          }

          else
          {
            v283 = v282;
          }

          v284 = v275 + 5;
          v285 = &v1127;
          v286 = &v1128;
          v287 = &v1129;
          v288 = &v1130;
          v289 = &v1131;
          v290 = &v1123;
          do
          {
            v290->i16[0] = *v268;
            v290 = (v290 + 2);
            v289->i16[0] = v268[1];
            v289 = (v289 + 2);
            v288->i16[0] = v268[2];
            v288 = (v288 + 2);
            v287->i16[0] = *(v284 - 2);
            v287 = (v287 + 2);
            v286->i16[0] = *(v284 - 1);
            v286 = (v286 + 2);
            v291 = *v284;
            v284 += 6;
            v285->i16[0] = v291;
            v285 = (v285 + 2);
            v268 += 4;
            --v283;
          }

          while (v283);
        }

        LODWORD(v292) = v262 >> 1;
        if (v262 <= 15)
        {
          v292 = v292;
        }

        else
        {
          v292 = 8;
        }

        if (v282 >= v292)
        {
          v37 = v1082;
        }

        else
        {
          v293 = v282;
          v37 = v1082;
          do
          {
            v1123.i16[v293] = *v271;
            v1131.i16[v293] = v271[1];
            v1130.i16[v293] = v271[2];
            v1129.i16[v293] = v272[3];
            v1128.i16[v293] = v272[4];
            v1127.i16[v293] = v272[5];
            v271 += 4;
            v272 += 6;
            ++v293;
          }

          while (v292 != v293);
        }

        v1156.val[0] = v1123;
        v1156.val[1] = v1131;
        v278 = v1129;
        v1156.val[2] = v1130;
        v280 = v1127;
        v279 = v1128;
        v266 = 2 * (v273 - v292 + v282);
        v269 = v272;
        v268 = v271;
LABEL_356:
        v294 = 0;
        v295.i64[0] = 0x2000200020002;
        v295.i64[1] = 0x2000200020002;
        v296.i64[0] = 0x4000400040004;
        v296.i64[1] = 0x4000400040004;
        v297 = vceqzq_s16(vandq_s8(v278, v296));
        v298.i64[0] = 0x7000700070007;
        v298.i64[1] = 0x7000700070007;
        v299 = vandq_s8(v279, v298);
        v300.i64[0] = 0xF000F000F000FLL;
        v300.i64[1] = 0xF000F000F000FLL;
        v301 = vandq_s8(v280, v300);
        v302 = vshrq_n_u16(v1156.val[0], 4uLL);
        v303 = vshrq_n_u16(v1156.val[1], 4uLL);
        v304 = vshrq_n_u16(v1156.val[2], 4uLL);
        v305 = vshrq_n_s16(v279, 3uLL);
        v306 = vshrq_n_u16(v280, 4uLL);
        v307 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v278, 3uLL)), 4uLL);
        v308 = vceqzq_s16(vandq_s8(v278, v295));
        v295.i64[0] = 0x5000500050005;
        v295.i64[1] = 0x5000500050005;
        v309 = vcgtq_u16(v299, v295);
        v310 = vorrq_s8(v309, v308);
        v311 = vaddq_s16(v299, v309);
        v312 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v305), 4uLL), v309);
        v309.i64[0] = 0x1000100010001;
        v309.i64[1] = 0x1000100010001;
        v313 = vandq_s8(vaddq_s16(v301, vbicq_s8(v309, v278)), v310);
        v314 = vaddq_s16(v311, vandq_s8(veorq_s8(vcltzq_s16(v278), vcgezq_s16(v305)), v298));
        v315 = vmulq_s16(vshrq_n_u16(v313, 1uLL), v306);
        v316 = vshrq_n_u16(v312, 1uLL);
        v317 = vqshlq_s16(vqdmulhq_s16(v316, v315), v264);
        v318 = vqdmulhq_s16(v317, v316);
        v319 = vqdmulhq_s16(v317, vshrq_n_u16(v307, 1uLL));
        v320 = vceqzq_s16(v313);
        v1131 = v303;
        v1123 = vornq_s8(vandq_s8(v313, v297), v297);
        v1124 = vbslq_s8(v320, v303, v318);
        v1125 = vbslq_s8(v320, v302, v319);
        v1126 = vbslq_s8(v320, v304, v314);
        while (1)
        {
          if (v263)
          {
            v321 = 0;
          }

          else
          {
            v263 = v265;
            v321 = 404;
          }

          v267 += v321;
          v322 = v1123.u16[v294];
          ++*(v267 + 384);
          v323 = v1131.u16[v294];
          *(v267 + 388) += v323;
          *(v267 + 396) += v323 * v323;
          if (v322)
          {
            if (v322 != 0xFFFF)
            {
              v324 = v1125.u16[v294];
              v325 = (v267 + 24 * v1126.u16[v294]);
              v326 = v325[1] + *(&v1123 + v294 * 2 + 16);
              *v325 += v322;
              v325[1] = v326;
              v325[2] += v324;
            }
          }

          else
          {
            v327 = v1126.u16[v294];
            v328.i32[0] = 1;
            v328.i32[3] = 1;
            v328.i32[1] = *(&v1123 + v294 * 2 + 16);
            v328.i32[2] = v1125.u16[v294];
            *(v267 + 336) = vaddq_s32(*(v267 + 336), v328);
            *(v267 + 352) += v328.i32[1];
            *(v267 + 356) += v327;
          }

          ++v1122;
          if (v270 == (v294 * 2))
          {
            goto LABEL_368;
          }

          v263 -= 2;
          if (++v294 == 8)
          {
            v270 -= 16;
            v872 = v262 <= 16;
            v262 -= 16;
            if (v872)
            {
              goto LABEL_368;
            }

            goto LABEL_331;
          }
        }
      }
    }

    else
    {
      v276 = 16;
    }

    v1156 = vld4q_s16(v268);
    v268 += 32;
    v277 = v275;
    v1154 = vld3q_s16(v277);
    v277 += 24;
    v1155 = vld3q_s16(v277);
    v278 = vuzp2q_s16(v1154.val[0], v1155.val[0]);
    v279 = vuzp2q_s16(v1154.val[1], v1155.val[1]);
    v280 = vuzp2q_s16(v1154.val[2], v1155.val[2]);
    v269 = v275 + 48;
    v266 -= v276;
    goto LABEL_356;
  }

  if (v5 - 2 >= 2)
  {
    if (v5 == 4)
    {
      sub_10001AE3C();
    }

    sub_10001B414();
  }

  sub_1000083D8(a3 + 12, a2, &v1132);
  v1103 = *(a3 + 32);
  v15 = a3 + 6948;
  v16 = *(a3 + 12);
  if (v1099)
  {
    if (v16 > 4)
    {
      sub_10001AF70();
    }

    if (v16 != 2)
    {
      v17 = *(a3 + 20);
      v18 = 2 * v17;
      v1081 = 2 * *(a3 + 28);
      v1122 = 0;
      if (v16 > 1)
      {
        if (v16 == 3)
        {
          if (v18)
          {
            v19 = v1081;
            v20 = -2 * v17;
            while (1)
            {
              sub_10000A128(a3 + 12, a3 + 300, 0, &v1135, &v1139, v15, &v1122, v6, v7, v8, v9, v10, v11, v12);
              if (v1132 <= 2)
              {
                break;
              }

              if (v1132 == 3)
              {
                goto LABEL_18;
              }

              if (v1132 != 4)
              {
                goto LABEL_1547;
              }

              if (v1136[0])
              {
                --v1136[0];
                v28 = v1136[1] + 4 * *(&v1132 + 1);
              }

              else
              {
                v28 = v1136[1] + 2 * *(&v1132 + 1);
              }

              v1136[1] = v28;
              DWORD1(v1135) += 2;
LABEL_24:
              if (SLODWORD(v1136[2]) <= 2)
              {
                if (LODWORD(v1136[2]) != 1)
                {
                  if (!LODWORD(v1136[2]) || LODWORD(v1136[2]) == 2)
                  {
                    sub_10001AE94();
                  }

LABEL_1548:
                  sub_10001AEC0();
                }

LABEL_30:
                if (v1140[0])
                {
                  --v1140[0];
                  v31 = v1140[1] + 4 * v1136[3];
                }

                else
                {
                  v31 = v1140[1] + 2 * v1136[3];
                }

                v1140[1] = v31;
                v22.i32[0] = vadd_s32(*(&v1139 + 4), 0x200000002).u32[0];
                *v21.i8 = veor_s8(*(&v1139 + 4), 0x100000001);
                v22.i32[1] = v21.i32[1];
                *(&v1139 + 4) = v22.i64[0];
                goto LABEL_36;
              }

              if (LODWORD(v1136[2]) == 3)
              {
                goto LABEL_30;
              }

              if (LODWORD(v1136[2]) != 4)
              {
                goto LABEL_1548;
              }

              if (v1140[0])
              {
                --v1140[0];
                v30 = v1140[1] + 4 * v1136[3];
              }

              else
              {
                v30 = v1140[1] + 2 * v1136[3];
              }

              v1140[1] = v30;
              DWORD1(v1139) += 2;
LABEL_36:
              sub_10000A128(a3 + 12, a3 + 300, 1, &v1133, &v1137, v15, &v1122, v21, v22, v23, v24, v25, v26, v27);
              if (v1132 > 2)
              {
                if ((v1132 - 3) >= 2)
                {
LABEL_1455:
                  sub_10001AE68();
                }

                goto LABEL_42;
              }

              if (v1132)
              {
                if (v1132 != 1)
                {
                  if (v1132 != 2)
                  {
                    goto LABEL_1455;
                  }

                  *(&v1134 + 1) += 2 * *(&v1132 + 1);
                  v32 = DWORD1(v1133) + 1;
                  goto LABEL_46;
                }

LABEL_42:
                if (v1134)
                {
                  *&v1134 = v1134 - 1;
                  v33 = *(&v1134 + 1) + 2 * *(&v1132 + 1);
                }

                else
                {
                  v33 = *(&v1134 + 1) + 4 * *(&v1132 + 1);
                }

                *(&v1134 + 1) = v33;
                v32 = DWORD1(v1133) + 2;
LABEL_46:
                DWORD1(v1133) = v32;
                goto LABEL_48;
              }

              *(&v1134 + 1) += 2 * *(&v1132 + 1);
              v7.i32[0] = vadd_s32(*(&v1133 + 4), 0x100000001).u32[0];
              *v6.i8 = veor_s8(*(&v1133 + 4), 0x100000001);
              v7.i32[1] = v6.i32[1];
              *(&v1133 + 4) = v7.i64[0];
LABEL_48:
              if (SLODWORD(v1136[2]) > 2)
              {
                if ((LODWORD(v1136[2]) - 3) >= 2)
                {
LABEL_1456:
                  sub_10001AE68();
                }
              }

              else
              {
                if (!LODWORD(v1136[2]))
                {
                  *(&v1138 + 1) += 2 * v1136[3];
                  v7.i32[0] = vadd_s32(*(&v1137 + 4), 0x100000001).u32[0];
                  *v6.i8 = veor_s8(*(&v1137 + 4), 0x100000001);
                  v7.i32[1] = v6.i32[1];
                  *(&v1137 + 4) = v7.i64[0];
                  goto LABEL_59;
                }

                if (LODWORD(v1136[2]) != 1)
                {
                  if (LODWORD(v1136[2]) != 2)
                  {
                    goto LABEL_1456;
                  }

                  *(&v1138 + 1) += 2 * v1136[3];
                  v34 = DWORD1(v1137) + 1;
                  goto LABEL_58;
                }
              }

              if (v1138)
              {
                *&v1138 = v1138 - 1;
                v35 = *(&v1138 + 1) + 2 * v1136[3];
              }

              else
              {
                v35 = *(&v1138 + 1) + 4 * v1136[3];
              }

              *(&v1138 + 1) = v35;
              v34 = DWORD1(v1137) + 2;
LABEL_58:
              DWORD1(v1137) = v34;
LABEL_59:
              v36 = v1103;
              if (v19 != 2)
              {
                v36 = 0;
              }

              v15 += 404 * v36;
              if (v19 == 2)
              {
                v19 = v1081;
              }

              else
              {
                v19 -= 2;
              }

              v20 += 2;
              if (!v20)
              {
                goto LABEL_619;
              }
            }

            if (v1132 != 1)
            {
              if (!v1132 || v1132 == 2)
              {
                sub_10001AE94();
              }

LABEL_1547:
              sub_10001AEC0();
            }

LABEL_18:
            if (v1136[0])
            {
              --v1136[0];
              v29 = v1136[1] + 4 * *(&v1132 + 1);
            }

            else
            {
              v29 = v1136[1] + 2 * *(&v1132 + 1);
            }

            v1136[1] = v29;
            v22.i32[0] = vadd_s32(*(&v1135 + 4), 0x200000002).u32[0];
            *v21.i8 = veor_s8(*(&v1135 + 4), 0x100000001);
            v22.i32[1] = v21.i32[1];
            *(&v1135 + 4) = v22.i64[0];
            goto LABEL_24;
          }

          goto LABEL_619;
        }

        if (v18)
        {
          v420 = v1081;
          v421 = -2 * v17;
          while (1)
          {
            sub_10000A4E8(a3 + 12, a3 + 300, &v1135, &v1139, v15, &v1122);
            if (v1132 <= 2)
            {
              break;
            }

            if (v1132 == 3)
            {
              goto LABEL_490;
            }

            if (v1132 != 4)
            {
              goto LABEL_1551;
            }

            if (v1136[0])
            {
              --v1136[0];
              v422 = v1136[1] + 4 * *(&v1132 + 1);
            }

            else
            {
              v422 = v1136[1] + 2 * *(&v1132 + 1);
            }

            v1136[1] = v422;
            DWORD1(v1135) += 2;
LABEL_496:
            if (SLODWORD(v1136[2]) <= 2)
            {
              if (LODWORD(v1136[2]) != 1)
              {
                if (!LODWORD(v1136[2]) || LODWORD(v1136[2]) == 2)
                {
                  sub_10001AE94();
                }

LABEL_1552:
                sub_10001AEC0();
              }

LABEL_502:
              if (v1140[0])
              {
                --v1140[0];
                v426 = v1140[1] + 4 * v1136[3];
              }

              else
              {
                v426 = v1140[1] + 2 * v1136[3];
              }

              v1140[1] = v426;
              LODWORD(v427) = vadd_s32(*(&v1139 + 4), 0x200000002).u32[0];
              HIDWORD(v427) = veor_s8(*(&v1139 + 4), 0x100000001).i32[1];
              *(&v1139 + 4) = v427;
              goto LABEL_508;
            }

            if (LODWORD(v1136[2]) == 3)
            {
              goto LABEL_502;
            }

            if (LODWORD(v1136[2]) != 4)
            {
              goto LABEL_1552;
            }

            if (v1140[0])
            {
              --v1140[0];
              v425 = v1140[1] + 4 * v1136[3];
            }

            else
            {
              v425 = v1140[1] + 2 * v1136[3];
            }

            v1140[1] = v425;
            DWORD1(v1139) += 2;
LABEL_508:
            sub_10000A4E8(a3 + 12, a3 + 300, &v1133, &v1137, v15, &v1122);
            if (v1132 > 2)
            {
              if ((v1132 - 3) >= 2)
              {
LABEL_1483:
                sub_10001AE68();
              }

              goto LABEL_514;
            }

            if (v1132)
            {
              if (v1132 != 1)
              {
                if (v1132 != 2)
                {
                  goto LABEL_1483;
                }

                *(&v1134 + 1) += 2 * *(&v1132 + 1);
                v428 = DWORD1(v1133) + 1;
                goto LABEL_518;
              }

LABEL_514:
              if (v1134)
              {
                *&v1134 = v1134 - 1;
                v429 = *(&v1134 + 1) + 2 * *(&v1132 + 1);
              }

              else
              {
                v429 = *(&v1134 + 1) + 4 * *(&v1132 + 1);
              }

              *(&v1134 + 1) = v429;
              v428 = DWORD1(v1133) + 2;
LABEL_518:
              DWORD1(v1133) = v428;
              goto LABEL_520;
            }

            *(&v1134 + 1) += 2 * *(&v1132 + 1);
            LODWORD(v430) = vadd_s32(*(&v1133 + 4), 0x100000001).u32[0];
            HIDWORD(v430) = veor_s8(*(&v1133 + 4), 0x100000001).i32[1];
            *(&v1133 + 4) = v430;
LABEL_520:
            if (SLODWORD(v1136[2]) > 2)
            {
              if ((LODWORD(v1136[2]) - 3) >= 2)
              {
LABEL_1484:
                sub_10001AE68();
              }
            }

            else
            {
              if (!LODWORD(v1136[2]))
              {
                *(&v1138 + 1) += 2 * v1136[3];
                LODWORD(v434) = vadd_s32(*(&v1137 + 4), 0x100000001).u32[0];
                HIDWORD(v434) = veor_s8(*(&v1137 + 4), 0x100000001).i32[1];
                *(&v1137 + 4) = v434;
                goto LABEL_531;
              }

              if (LODWORD(v1136[2]) != 1)
              {
                if (LODWORD(v1136[2]) != 2)
                {
                  goto LABEL_1484;
                }

                *(&v1138 + 1) += 2 * v1136[3];
                v431 = DWORD1(v1137) + 1;
                goto LABEL_530;
              }
            }

            if (v1138)
            {
              *&v1138 = v1138 - 1;
              v432 = *(&v1138 + 1) + 2 * v1136[3];
            }

            else
            {
              v432 = *(&v1138 + 1) + 4 * v1136[3];
            }

            *(&v1138 + 1) = v432;
            v431 = DWORD1(v1137) + 2;
LABEL_530:
            DWORD1(v1137) = v431;
LABEL_531:
            v433 = v1103;
            if (v420 != 2)
            {
              v433 = 0;
            }

            v15 += 404 * v433;
            if (v420 == 2)
            {
              v420 = v1081;
            }

            else
            {
              v420 -= 2;
            }

            v421 += 2;
            if (!v421)
            {
              goto LABEL_619;
            }
          }

          if (v1132 != 1)
          {
            if (!v1132 || v1132 == 2)
            {
              sub_10001AE94();
            }

LABEL_1551:
            sub_10001AEC0();
          }

LABEL_490:
          if (v1136[0])
          {
            --v1136[0];
            v423 = v1136[1] + 4 * *(&v1132 + 1);
          }

          else
          {
            v423 = v1136[1] + 2 * *(&v1132 + 1);
          }

          v1136[1] = v423;
          LODWORD(v424) = vadd_s32(*(&v1135 + 4), 0x200000002).u32[0];
          HIDWORD(v424) = veor_s8(*(&v1135 + 4), 0x100000001).i32[1];
          *(&v1135 + 4) = v424;
          goto LABEL_496;
        }

LABEL_619:
        v4 = v1006;
        goto LABEL_620;
      }

      if (!v16)
      {
        if (!v18)
        {
          goto LABEL_619;
        }

        v62 = vdupq_n_s16(*(a3 + 304));
        v63 = *(a3 + 24);
        v1037 = *(a3 + 16);
        v65 = *(&v1134 + 1);
        v64 = v1134;
        v66 = v1138;
        v67 = DWORD1(v1137);
        v1007 = *(&v1132 + 1);
        v999 = 4 * *(&v1132 + 1);
        v1002 = v1136[3];
        v996 = 4 * v1136[3];
        v68.i64[0] = 0x2000200020002;
        v68.i64[1] = 0x2000200020002;
        v69.i64[0] = 0x4000400040004;
        v69.i64[1] = 0x4000400040004;
        v9.n128_u64[0] = 0x7000700070007;
        v9.n128_u64[1] = 0x7000700070007;
        v70.i64[0] = 0xF000F000F000FLL;
        v70.i64[1] = 0xF000F000F000FLL;
        v11.n128_u64[0] = 0x5000500050005;
        v11.n128_u64[1] = 0x5000500050005;
        v71.i64[0] = 0x1000100010001;
        v71.i64[1] = 0x1000100010001;
        v1030 = v1133;
        v72 = v1081;
        v73 = DWORD1(v1133);
        __src = v1132;
        v1012 = v1136[2];
        while (1)
        {
          v1044 = v73;
          v1052 = v67;
          *v1059 = v66;
          v1067 = v64;
          v74 = v1030;
          if (v1037 < 1)
          {
            goto LABEL_178;
          }

          v13.i32[0] = 0;
          v75 = 0;
          v76 = &v1137 + 8;
          v74 = v1030;
          if (v1030)
          {
            v76 = &v1133 + 8;
          }

          v77 = *v76;
          v14.i32[0] = *v76 & 1;
          v78 = vdup_lane_s32(vceq_s32(*v14.i8, *v13.i8), 0);
          v79 = v15 - 404;
          v13 = vcltzq_s16(vshlq_n_s16(vmovl_u8(vorr_s8((*&v78 & 0xFF00FF00FF00FF00), (*&vmvn_s8(v78) & 0xFF00FF00FF00FFLL))), 0xFuLL));
          v80 = v65;
          v81 = v1037;
LABEL_148:
          v82 = *(&v1138 + 1);
          v83 = v1137;
          if (v74)
          {
            v84 = v74;
          }

          else
          {
            v84 = v1137;
          }

          if (!v74)
          {
            v80 = *(&v1138 + 1);
          }

          if (v84 > 7)
          {
            break;
          }

          v85 = v81;
          if (v84 == v81)
          {
            goto LABEL_156;
          }

          if (v84 < 1)
          {
            sub_10001AF18();
          }

          v86 = 0;
          v87 = 2 * v84;
          do
          {
            v1123.i16[v86 / 2] = *v80;
            v1131.i16[v86 / 2] = v80[1];
            v1130.i16[v86 / 2] = v80[2];
            v1129.i16[v86 / 2] = v80[3];
            v80 += 4;
            v86 += 2;
          }

          while (v87 != v86);
          if (v81 >= 8)
          {
            v88 = 8;
          }

          else
          {
            v88 = v81;
          }

          if (v84 < v88)
          {
            v89 = &v1129.i16[v87 / 2];
            v90 = &v1130.i16[v87 / 2];
            v91 = &v1131.i16[v87 / 2];
            v92 = &v1123.i16[v87 / 2];
            v93 = v84;
            do
            {
              *v92++ = *v82;
              *v91++ = v82[1];
              *v90++ = v82[2];
              *v89++ = v82[3];
              v82 += 4;
              ++v93;
            }

            while (v88 > v93);
          }

          v14 = v1123;
          v1157.val[1] = v1131;
          v1157.val[3] = v1129;
          v1157.val[2] = v1130;
          v74 = v83 - v88 + v84;
          v80 = v82;
LABEL_167:
          v94 = 0;
          v95 = vceqzq_s16(vandq_s8(v14, v69));
          v96 = vandq_s8(v1157.val[1], v9);
          v97 = vshrq_n_s16(v14, 3uLL);
          v98 = vaddq_s16(v1157.val[3], vbslq_s8(v13, vnegq_s16(v97), v97));
          v99 = vshrq_n_s16(v1157.val[1], 3uLL);
          v100 = vcgtq_u16(v96, v11);
          v101 = vandq_s8(vaddq_s16(vandq_s8(v1157.val[2], v70), vbicq_s8(v71, v14)), vorrq_s8(v100, vceqzq_s16(vandq_s8(v14, v68))));
          v102 = vaddq_s16(vaddq_s16(v96, v100), vandq_s8(veorq_s8(vcltzq_s16(v14), vcgezq_s16(v99)), v9));
          v103 = vshrq_n_u16(vshlq_u16(vqshlq_n_u16(vabsq_s16(v99), 4uLL), v100), 1uLL);
          v104 = vqshlq_s16(vqdmulhq_s16(v103, vmulq_s16(vshrq_n_u16(v101, 1uLL), vshrq_n_u16(v1157.val[2], 4uLL))), v62);
          v105 = vqdmulhq_s16(v104, v103);
          v106 = vqdmulhq_s16(v104, vshrq_n_u16(vqshlq_n_u16(vabsq_s16(v97), 4uLL), 1uLL));
          v107 = vceqzq_s16(v101);
          v1123 = v102;
          v1124 = vornq_s8(vandq_s8(v101, v95), v95);
          v1125 = vbslq_s8(v107, v98, v105);
          v1126 = vbslq_s8(v107, v1157.val[3], v106);
          v1131 = v98;
          v108 = &v1125;
          while (1)
          {
            if (v75)
            {
              v109 = 0;
            }

            else
            {
              v75 = v63;
              v109 = 404;
            }

            v79 += v109;
            v110 = v108[-2].u16[0];
            v111 = v108[-1].u16[0];
            v112 = v108->u16[0];
            v113 = v108[1].u16[0];
            ++*(v79 + 384);
            v114 = v1131.u16[v94];
            *(v79 + 388) += v114;
            *(v79 + 396) += v114 * v114;
            if (v111)
            {
              if (v111 != 0xFFFF)
              {
                v115 = (v79 + 24 * v110);
                v116 = v115[1] + v112;
                *v115 += v111;
                v115[1] = v116;
                v115[2] += v113;
              }
            }

            else
            {
              v117 = (v79 + 12 * v77);
              v118.i32[0] = 1;
              v118.i32[1] = v112;
              *v14.i8 = vadd_s32(v117[42], v118);
              v117[42] = *v14.i8;
              v117[43].i32[0] += v113;
            }

            ++v1122;
            if (v81 - 1 == v94)
            {
              break;
            }

            v108 = (v108 + 2);
            v77 ^= 1u;
            --v75;
            if (++v94 == 8)
            {
              v81 -= 8;
              if (v81 + 1 > 1)
              {
                goto LABEL_148;
              }

              break;
            }
          }

LABEL_178:
          if (v74)
          {
            sub_10001AF44();
          }

          v64 = v1067;
          if (__src > 2)
          {
            v66 = *v1059;
            v119 = v1052;
            v120 = v1012;
            if ((__src - 3) >= 2)
            {
LABEL_1469:
              sub_10001AE68();
            }

LABEL_185:
            if (v1067)
            {
              v64 = v1067 - 1;
              *&v1134 = v1067 - 1;
              v65 += v1007;
            }

            else
            {
              v65 = (v65 + v999);
            }

            *(&v1134 + 1) = v65;
            v73 = v1044 + 2;
LABEL_189:
            DWORD1(v1133) = v73;
            goto LABEL_191;
          }

          v66 = *v1059;
          v119 = v1052;
          v120 = v1012;
          if (__src)
          {
            if (__src == 1)
            {
              goto LABEL_185;
            }

            if (__src != 2)
            {
              goto LABEL_1469;
            }

            v65 += v1007;
            *(&v1134 + 1) = v65;
            v73 = v1044 + 1;
            goto LABEL_189;
          }

          v65 += v1007;
          *(&v1134 + 1) = v65;
          v73 = v1044 + 1;
          *(&v1133 + 4) = __PAIR64__(DWORD2(v1133), v1044 + 1) ^ 0x100000000;
LABEL_191:
          if (v120 > 2)
          {
            if ((v120 - 3) >= 2)
            {
LABEL_1470:
              sub_10001AE68();
            }
          }

          else
          {
            if (!v120)
            {
              *(&v1138 + 1) += 2 * v1002;
              v67 = v119 + 1;
              *(&v1137 + 4) = __PAIR64__(DWORD2(v1137), v67) ^ 0x100000000;
              goto LABEL_203;
            }

            if (v120 != 1)
            {
              if (v120 != 2)
              {
                goto LABEL_1470;
              }

              *(&v1138 + 1) += 2 * v1002;
              v67 = v119 + 1;
              goto LABEL_201;
            }
          }

          if (v66)
          {
            *&v1138 = --v66;
            v121 = *(&v1138 + 1) + 2 * v1002;
          }

          else
          {
            v121 = *(&v1138 + 1) + v996;
          }

          *(&v1138 + 1) = v121;
          v67 = v119 + 2;
LABEL_201:
          DWORD1(v1137) = v67;
LABEL_203:
          v122 = v1103;
          if (v72 != 1)
          {
            v122 = 0;
          }

          v15 += 404 * v122;
          if (v72 == 1)
          {
            v72 = v1081;
          }

          else
          {
            --v72;
          }

          if (!--v18)
          {
            goto LABEL_619;
          }
        }

        v85 = 8;
LABEL_156:
        v74 = v84 - v85;
        *v14.i8 = vld4q_s16(v80);
        v80 += 32;
        goto LABEL_167;
      }

      if (!v18)
      {
        goto LABEL_619;
      }

      v442 = v1081;
      v443 = -2 * v17;
      while (1)
      {
        sub_10000A128(a3 + 12, a3 + 300, 1, &v1133, &v1137, v15, &v1122, v6, v7, v8, v9, v10, v11, v12);
        if (v1132 > 2)
        {
          break;
        }

        if (v1132)
        {
          if (v1132 != 1)
          {
            if (v1132 != 2)
            {
              goto LABEL_1489;
            }

            *(&v1134 + 1) += 2 * *(&v1132 + 1);
            v451 = DWORD1(v1133) + 1;
            goto LABEL_575;
          }

LABEL_571:
          if (v1134)
          {
            *&v1134 = v1134 - 1;
            v452 = *(&v1134 + 1) + 2 * *(&v1132 + 1);
          }

          else
          {
            v452 = *(&v1134 + 1) + 4 * *(&v1132 + 1);
          }

          *(&v1134 + 1) = v452;
          v451 = DWORD1(v1133) + 2;
LABEL_575:
          DWORD1(v1133) = v451;
          goto LABEL_576;
        }

        *(&v1134 + 1) += 2 * *(&v1132 + 1);
        v445.i32[0] = vadd_s32(*(&v1133 + 4), 0x100000001).u32[0];
        *v444.i8 = veor_s8(*(&v1133 + 4), 0x100000001);
        v445.i32[1] = v444.i32[1];
        *(&v1133 + 4) = v445.i64[0];
LABEL_576:
        if (SLODWORD(v1136[2]) > 2)
        {
          if ((LODWORD(v1136[2]) - 3) >= 2)
          {
LABEL_1490:
            sub_10001AE68();
          }

          goto LABEL_582;
        }

        if (LODWORD(v1136[2]))
        {
          if (LODWORD(v1136[2]) != 1)
          {
            if (LODWORD(v1136[2]) != 2)
            {
              goto LABEL_1490;
            }

            *(&v1138 + 1) += 2 * v1136[3];
            v453 = DWORD1(v1137) + 1;
            goto LABEL_586;
          }

LABEL_582:
          if (v1138)
          {
            *&v1138 = v1138 - 1;
            v454 = *(&v1138 + 1) + 2 * v1136[3];
          }

          else
          {
            v454 = *(&v1138 + 1) + 4 * v1136[3];
          }

          *(&v1138 + 1) = v454;
          v453 = DWORD1(v1137) + 2;
LABEL_586:
          DWORD1(v1137) = v453;
          goto LABEL_587;
        }

        *(&v1138 + 1) += 2 * v1136[3];
        v445.i32[0] = vadd_s32(*(&v1137 + 4), 0x100000001).u32[0];
        *v444.i8 = veor_s8(*(&v1137 + 4), 0x100000001);
        v445.i32[1] = v444.i32[1];
        *(&v1137 + 4) = v445.i64[0];
LABEL_587:
        sub_10000A128(a3 + 12, a3 + 300, 0, &v1135, &v1139, v15, &v1122, v444, v445, v446, v447, v448, v449, v450);
        if (v1132 <= 2)
        {
          if (v1132 != 1)
          {
            if (!v1132 || v1132 == 2)
            {
              sub_10001AE94();
            }

LABEL_1553:
            sub_10001AEC0();
          }

LABEL_593:
          if (v1136[0])
          {
            --v1136[0];
            v456 = v1136[1] + 4 * *(&v1132 + 1);
          }

          else
          {
            v456 = v1136[1] + 2 * *(&v1132 + 1);
          }

          v1136[1] = v456;
          v7.i32[0] = vadd_s32(*(&v1135 + 4), 0x200000002).u32[0];
          *v6.i8 = veor_s8(*(&v1135 + 4), 0x100000001);
          v7.i32[1] = v6.i32[1];
          *(&v1135 + 4) = v7.i64[0];
          goto LABEL_601;
        }

        if (v1132 == 3)
        {
          goto LABEL_593;
        }

        if (v1132 != 4)
        {
          goto LABEL_1553;
        }

        if (v1136[0])
        {
          --v1136[0];
          v455 = v1136[1] + 4 * *(&v1132 + 1);
        }

        else
        {
          v455 = v1136[1] + 2 * *(&v1132 + 1);
        }

        v1136[1] = v455;
        DWORD1(v1135) += 2;
LABEL_601:
        if (SLODWORD(v1136[2]) <= 2)
        {
          if (LODWORD(v1136[2]) != 1)
          {
            if (!LODWORD(v1136[2]) || LODWORD(v1136[2]) == 2)
            {
              sub_10001AE94();
            }

LABEL_1554:
            sub_10001AEC0();
          }
        }

        else if (LODWORD(v1136[2]) != 3)
        {
          if (LODWORD(v1136[2]) != 4)
          {
            goto LABEL_1554;
          }

          if (v1140[0])
          {
            --v1140[0];
            v457 = v1140[1] + 4 * v1136[3];
          }

          else
          {
            v457 = v1140[1] + 2 * v1136[3];
          }

          v1140[1] = v457;
          DWORD1(v1139) += 2;
          goto LABEL_613;
        }

        if (v1140[0])
        {
          --v1140[0];
          v458 = v1140[1] + 4 * v1136[3];
        }

        else
        {
          v458 = v1140[1] + 2 * v1136[3];
        }

        v1140[1] = v458;
        v7.i32[0] = vadd_s32(*(&v1139 + 4), 0x200000002).u32[0];
        *v6.i8 = veor_s8(*(&v1139 + 4), 0x100000001);
        v7.i32[1] = v6.i32[1];
        *(&v1139 + 4) = v7.i64[0];
LABEL_613:
        v459 = v1103;
        if (v442 != 2)
        {
          v459 = 0;
        }

        v15 += 404 * v459;
        if (v442 == 2)
        {
          v442 = v1081;
        }

        else
        {
          v442 -= 2;
        }

        v443 += 2;
        if (!v443)
        {
          goto LABEL_619;
        }
      }

      if ((v1132 - 3) >= 2)
      {
LABEL_1489:
        sub_10001AE68();
      }

      goto LABEL_571;
    }

    v185 = *(a3 + 20);
    v1083 = *(a3 + 28);
    v1122 = 0;
    if (!v185)
    {
      goto LABEL_619;
    }

    v186 = vdupq_n_s16(*(a3 + 304));
    v187 = 2 * *(a3 + 24);
    v188 = *(&v1134 + 1);
    v189 = v1134;
    v190 = DWORD1(v1133);
    v993 = DWORD2(v1133);
    v191 = v1138;
    v1013 = v1133;
    v1008 = 2 * v1133;
    v1023 = *(&v1132 + 1);
    v991 = 4 * *(&v1132 + 1);
    v992 = DWORD2(v1137);
    __srca = v1136[3];
    v990 = 4 * v1136[3];
    v1045 = 2 * *(a3 + 16);
    v192.i64[0] = 0x2000200020002;
    v192.i64[1] = 0x2000200020002;
    v193.i64[0] = 0x4000400040004;
    v193.i64[1] = 0x4000400040004;
    v9.n128_u64[0] = 0x7000700070007;
    v9.n128_u64[1] = 0x7000700070007;
    v194.i64[0] = 0xF000F000F000FLL;
    v194.i64[1] = 0xF000F000F000FLL;
    v11.n128_u64[0] = 0x5000500050005;
    v11.n128_u64[1] = 0x5000500050005;
    v195.i64[0] = 0x1000100010001;
    v195.i64[1] = 0x1000100010001;
    v196 = v1083;
    v197 = DWORD1(v1137);
    v1038 = v1132;
    v1031 = v1136[2];
    while (1)
    {
      v1053 = v196;
      *v1060 = v191;
      v1069 = v190;
      if (v1045 < 1)
      {
        goto LABEL_297;
      }

      v198 = 0;
      v199 = &v1137 + 8;
      v200 = v15 - 404;
      if (v1013)
      {
        v199 = &v1133 + 8;
      }

      v201 = *v199;
      v202 = v1045 - 2;
      v203 = v188;
      v204 = v1008;
      v205 = v1045;
LABEL_259:
      v206 = *(&v1138 + 1);
      v207 = v1137;
      v208 = v204 ? v204 : 2 * v1137;
      v209 = v204 ? v203 : *(&v1138 + 1);
      if (v208 >= 16)
      {
        break;
      }

      v210 = v205;
      if (v208 == v205)
      {
        goto LABEL_268;
      }

      if (v208 <= 0)
      {
        sub_10001AEEC();
      }

      v1000 = v197;
      v994 = v189;
      v997 = v188;
      v218 = v208 >> 1;
      if (v208 != 1)
      {
        if (v218 <= 1)
        {
          v219 = 1;
        }

        else
        {
          v219 = v218;
        }

        v220 = v209 + 4;
        v221 = &v1128;
        v222 = &v1127;
        v223 = &v1129;
        v224 = &v1130;
        v225 = &v1131;
        v226 = &v1123;
        do
        {
          v226->i16[0] = *v220;
          v226 = (v226 + 2);
          v225->i16[0] = v220[1];
          v225 = (v225 + 2);
          v224->i16[0] = v220[2];
          v224 = (v224 + 2);
          v223->i16[0] = v220[3];
          v223 = (v223 + 2);
          v227 = *(v220 - 1);
          v222->i16[0] = v227;
          v222 = (v222 + 2);
          v221->i16[0] = v227 - (*(v220 - 4) >> 3);
          v221 = (v221 + 2);
          v220 += 8;
          --v219;
        }

        while (v219);
      }

      LODWORD(v228) = v205 >> 1;
      if (v205 <= 15)
      {
        v228 = v228;
      }

      else
      {
        v228 = 8;
      }

      if (v218 >= v228)
      {
        v189 = v994;
        v188 = v997;
      }

      else
      {
        v229 = v218;
        v189 = v994;
        v188 = v997;
        do
        {
          v1123.i16[v229] = v206[4];
          v1131.i16[v229] = v206[5];
          v1130.i16[v229] = v206[6];
          v1129.i16[v229] = v206[7];
          v230 = v206[3];
          v1127.i16[v229] = v230;
          v1128.i16[v229] = v230 - (*v206 >> 3);
          v206 += 8;
          ++v229;
        }

        while (v228 != v229);
      }

      v212 = v1123;
      v213 = v1131;
      v216 = v1129;
      v214 = v1130;
      v215 = v1127;
      v217 = v1128;
      v204 = 2 * (v207 - v228 + v218);
      v203 = v206;
      v197 = v1000;
LABEL_285:
      v231 = 0;
      v232 = vceqzq_s16(vandq_s8(v212, v193));
      v233 = vandq_s8(v213, v9);
      v234 = vshrq_n_s16(v213, 3uLL);
      v235 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v212, 3uLL)), 4uLL);
      v236 = vcgtq_u16(v233, v11);
      v237 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v234), 4uLL), v236);
      v238 = vandq_s8(vaddq_s16(vandq_s8(v214, v194), vbicq_s8(v195, v212)), vorrq_s8(v236, vceqzq_s16(vandq_s8(v212, v192))));
      v239 = vaddq_s16(vaddq_s16(v233, v236), vandq_s8(veorq_s8(vcltzq_s16(v212), vcgezq_s16(v234)), v9));
      v240 = vmulq_s16(vshrq_n_u16(v238, 1uLL), vshrq_n_u16(v214, 4uLL));
      v241 = vshrq_n_u16(v237, 1uLL);
      v242 = vqshlq_s16(vqdmulhq_s16(v241, v240), v186);
      v243 = vceqzq_s16(v238);
      v1131 = v217;
      v1123 = vornq_s8(vandq_s8(v238, v232), v232);
      v1124 = vbslq_s8(v243, v217, vqdmulhq_s16(v242, v241));
      v1125 = vbslq_s8(v243, v215, vqdmulhq_s16(v242, vshrq_n_u16(v235, 1uLL)));
      v1126 = vbslq_s8(v243, v216, v239);
      while (1)
      {
        if (v198)
        {
          v244 = 0;
        }

        else
        {
          v198 = v187;
          v244 = 404;
        }

        v200 += v244;
        v245 = v1123.u16[v231];
        ++*(v200 + 384);
        v246 = v1131.u16[v231];
        *(v200 + 388) += v246;
        *(v200 + 396) += v246 * v246;
        if (v245)
        {
          if (v245 != 0xFFFF)
          {
            v247 = v1125.u16[v231];
            v248 = (v200 + 24 * v1126.u16[v231]);
            v249 = v248[1] + *(&v1123 + v231 * 2 + 16);
            *v248 += v245;
            v248[1] = v249;
            v248[2] += v247;
          }
        }

        else
        {
          v250 = v1125.u16[v231];
          v251 = v1126.u16[v231];
          v252 = (v200 + 336 + 12 * v201);
          v253.i32[0] = 1;
          v253.i32[1] = *(&v1123 + v231 * 2 + 16);
          *v252 = vadd_s32(*v252, v253);
          v252[1].i32[0] += v250;
          v254 = (v200 + 336 + 12 * (v201 + 1));
          *v254 = vadd_s32(*v254, v253);
          v254[1].i32[0] += v251;
        }

        ++v1122;
        if (v202 == (v231 * 2))
        {
          break;
        }

        v198 -= 2;
        if (++v231 == 8)
        {
          v202 -= 16;
          v872 = v205 <= 16;
          v205 -= 16;
          if (v872)
          {
            break;
          }

          goto LABEL_259;
        }
      }

LABEL_297:
      if (v1038 > 2)
      {
        v255 = v1069;
        v256 = v1031;
        if ((v1038 - 3) >= 2)
        {
LABEL_1472:
          sub_10001AE68();
        }
      }

      else
      {
        v255 = v1069;
        v256 = v1031;
        if (!v1038)
        {
          v188 += v1023;
          *(&v1134 + 1) = v188;
          v190 = v1069 + 1;
          DWORD1(v1133) = v1069 + 1;
          v993 ^= 1u;
          DWORD2(v1133) = v993;
LABEL_308:
          v191 = *v1060;
          v257 = v1053;
          goto LABEL_309;
        }

        if (v1038 != 1)
        {
          if (v1038 != 2)
          {
            goto LABEL_1472;
          }

          v188 += v1023;
          *(&v1134 + 1) = v188;
          v190 = v1069 + 1;
          DWORD1(v1133) = v1069 + 1;
          goto LABEL_308;
        }
      }

      if (v189)
      {
        *&v1134 = --v189;
        v188 += v1023;
      }

      else
      {
        v188 = (v188 + v991);
      }

      v191 = *v1060;
      v257 = v1053;
      *(&v1134 + 1) = v188;
      v190 = v255 + 2;
      DWORD1(v1133) = v190;
LABEL_309:
      if (v256 > 2)
      {
        if ((v256 - 3) >= 2)
        {
LABEL_1473:
          sub_10001AE68();
        }
      }

      else
      {
        if (!v256)
        {
          *(&v1138 + 1) += 2 * __srca;
          DWORD1(v1137) = ++v197;
          v992 ^= 1u;
          DWORD2(v1137) = v992;
          goto LABEL_321;
        }

        if (v256 != 1)
        {
          if (v256 != 2)
          {
            goto LABEL_1473;
          }

          *(&v1138 + 1) += 2 * __srca;
          ++v197;
          goto LABEL_319;
        }
      }

      if (v191)
      {
        *&v1138 = --v191;
        v258 = *(&v1138 + 1) + 2 * __srca;
      }

      else
      {
        v258 = *(&v1138 + 1) + v990;
      }

      *(&v1138 + 1) = v258;
      v197 += 2;
LABEL_319:
      DWORD1(v1137) = v197;
LABEL_321:
      v196 = v257 - 1;
      v259 = v1103;
      if (v257 != 1)
      {
        v259 = 0;
      }

      v15 += 404 * v259;
      if (v257 == 1)
      {
        v196 = v1083;
      }

      if (!--v185)
      {
        goto LABEL_619;
      }
    }

    v210 = 16;
LABEL_268:
    v211 = v209;
    v1158 = vld4q_s16(v211);
    v211 += 32;
    v1159 = vld4q_s16(v211);
    v212 = vuzp2q_s16(v1158.val[0], v1159.val[0]);
    v213 = vuzp2q_s16(v1158.val[1], v1159.val[1]);
    v214 = vuzp2q_s16(v1158.val[2], v1159.val[2]);
    v215 = vuzp1q_s16(v1158.val[3], v1159.val[3]);
    v216 = vuzp2q_s16(v1158.val[3], v1159.val[3]);
    v217 = vsraq_n_s16(v215, vuzp1q_s16(v1158.val[0], v1159.val[0]), 3uLL);
    v203 = v209 + 64;
    v204 = v208 - v210;
    goto LABEL_285;
  }

  if (v16 > 4)
  {
    sub_10001AF70();
  }

  if (v16 == 2)
  {
    v564 = *(a3 + 20);
    v565 = *(a3 + 28);
    v1123.i32[0] = 0;
    if (!v564)
    {
      goto LABEL_620;
    }

    v566 = 2 * *(a3 + 24);
    v567 = v1132;
    __srcd = v1133;
    v1056 = 2 * v1133;
    v568 = *(&v1134 + 1);
    v569 = v1134;
    v570 = v1138;
    v571 = DWORD1(v1137);
    v1034 = *(&v1132 + 1);
    v1010 = 4 * *(&v1132 + 1);
    v1024 = v1136[3];
    v1004 = 4 * v1136[3];
    v1048 = 2 * *(a3 + 16);
    v572 = DWORD1(v1133);
    v573 = v565;
    v1041 = v1136[2];
    while (1)
    {
      v1064 = v572;
      v1074 = v570;
      v1090 = v571;
      v574 = v567;
      v575 = v565;
      v576 = v1056;
      if (v1048 >= 1)
      {
        v577 = 0;
        v578 = v15 - 404;
        v579 = &v1137 + 8;
        v580 = (v568 + 8);
        v581 = *(a3 + 304);
        if (__srcd)
        {
          v579 = &v1133 + 8;
        }

        v582 = *v579;
        v583 = v1048 + 2;
        v576 = v1056;
        do
        {
          if (v576)
          {
            v584 = v576;
          }

          else
          {
            v584 = 2 * v1137;
          }

          if (!v576)
          {
            v580 = (*(&v1138 + 1) + 8);
          }

          if (v577)
          {
            v585 = v577;
          }

          else
          {
            v585 = v566;
          }

          if (v577)
          {
            v586 = 0;
          }

          else
          {
            v586 = 404;
          }

          v578 += v586;
          v587 = *(v580 - 1);
          v588 = v580[3];
          v589 = v587 + (*(v580 - 4) >> 3);
          v590 = *v580;
          ++*(v578 + 384);
          *(v578 + 388) += v589;
          *(v578 + 396) += v589 * v589;
          if ((v590 & 4) == 0)
          {
            v591 = v580[1] & 7;
            if ((v590 & 1) != 0 || ((v591 < 6) & (v590 >> 1)) != 0)
            {
              v608 = (v578 + 336 + 12 * v582);
              v609.i32[0] = 1;
              v609.i32[1] = v589;
              *v608 = vadd_s32(*v608, v609);
              v608[1].i32[0] += v587;
              v610 = (v578 + 336 + 12 * (v582 + 1));
              *v610 = vadd_s32(*v610, v609);
              v610[1].i32[0] += v588;
            }

            else
            {
              v592 = v591 > 5;
              v593 = v590;
              v594 = v580[2];
              v595 = (v594 & 0xF) + 1;
              v596 = v594 >> 4;
              v597 = v590 >> 3;
              v598 = v580[1] >> 3;
              if (v598 >= 0)
              {
                LOWORD(v599) = v580[1] >> 3;
              }

              else
              {
                v599 = -v598;
              }

              if (v597 < 0)
              {
                v597 = -v597;
              }

              v600 = v591 - v592;
              v601 = (16 * (v599 & 0xFFFu)) >> v592 >> 1;
              v602 = ((v595 >> 1) * v596 * v601) >> 15 << v581;
              if (v602 <= -32768)
              {
                v602 = -32768;
              }

              if (v602 >= 0x7FFF)
              {
                v602 = 0x7FFF;
              }

              v603 = ((v602 * v601) >> 15);
              v604 = ((v602 * 8 * (v597 & 0xFFF)) >> 15);
              if ((v598 ^ (v593 >> 3)) >= 0)
              {
                v605 = v600 + 7;
              }

              else
              {
                v605 = v600;
              }

              v606 = (v578 + 24 * v605);
              v607 = v606[1];
              *v606 += v595;
              v606[1] = v607 + v603;
              v606[2] += v604;
            }
          }

          v580 += 8;
          v576 = v584 - 2;
          v577 = v585 - 2;
          ++v1123.i32[0];
          v583 -= 2;
        }

        while (v583 > 2);
      }

      if (v576)
      {
        sub_10001AF9C();
      }

      v567 = v574;
      if (v574 > 2)
      {
        v613 = v574 - 3;
        v4 = v1006;
        v565 = v575;
        v611 = v1090;
        v570 = v1074;
        v612 = v1064;
        if (v613 >= 2)
        {
LABEL_1502:
          sub_10001AE68();
        }
      }

      else
      {
        v4 = v1006;
        v565 = v575;
        v611 = v1090;
        v570 = v1074;
        v612 = v1064;
        if (!v567)
        {
          v568 += 2 * v1034;
          *(&v1134 + 1) = v568;
          v572 = v1064 + 1;
          *(&v1133 + 4) = __PAIR64__(DWORD2(v1133), v1064 + 1) ^ 0x100000000;
LABEL_803:
          v614 = v1041;
          goto LABEL_804;
        }

        if (v567 != 1)
        {
          if (v567 != 2)
          {
            goto LABEL_1502;
          }

          v568 += 2 * v1034;
          *(&v1134 + 1) = v568;
          v572 = v1064 + 1;
          DWORD1(v1133) = v1064 + 1;
          goto LABEL_803;
        }
      }

      if (v569)
      {
        *&v1134 = --v569;
        v568 += 2 * v1034;
      }

      else
      {
        v568 += v1010;
      }

      v614 = v1041;
      *(&v1134 + 1) = v568;
      v572 = v612 + 2;
      DWORD1(v1133) = v572;
LABEL_804:
      if (v614 > 2)
      {
        if ((v614 - 3) >= 2)
        {
LABEL_1503:
          sub_10001AE68();
        }
      }

      else
      {
        if (!v614)
        {
          *(&v1138 + 1) += 2 * v1024;
          v571 = v611 + 1;
          *(&v1137 + 4) = __PAIR64__(DWORD2(v1137), v571) ^ 0x100000000;
          goto LABEL_816;
        }

        if (v614 != 1)
        {
          if (v614 != 2)
          {
            goto LABEL_1503;
          }

          *(&v1138 + 1) += 2 * v1024;
          v571 = v611 + 1;
          goto LABEL_814;
        }
      }

      if (v570)
      {
        *&v1138 = --v570;
        v615 = *(&v1138 + 1) + 2 * v1024;
      }

      else
      {
        v615 = *(&v1138 + 1) + v1004;
      }

      *(&v1138 + 1) = v615;
      v571 = v611 + 2;
LABEL_814:
      DWORD1(v1137) = v571;
LABEL_816:
      v616 = v1103;
      if (v573 != 1)
      {
        v616 = 0;
      }

      v15 += 404 * v616;
      if (v573 == 1)
      {
        v573 = v565;
      }

      else
      {
        --v573;
      }

      if (!--v564)
      {
        goto LABEL_620;
      }
    }
  }

  v42 = *(a3 + 20);
  v43 = 2 * v42;
  v44 = (2 * *(a3 + 28));
  v1123.i32[0] = 0;
  if (v16 <= 1)
  {
    if (!v16)
    {
      if (!v43)
      {
        goto LABEL_620;
      }

      v330 = *(a3 + 24);
      v332 = *(&v1134 + 1);
      v331 = v1134;
      v1061 = DWORD2(v1133);
      v333 = DWORD1(v1133);
      v334 = v1138;
      v1039 = *(&v1132 + 1);
      v1032 = v1136[3];
      v1014 = 4 * v1136[3];
      __srcb = 4 * *(&v1132 + 1);
      v1054 = *(a3 + 16);
      v1070 = v1133;
      v335 = v1132;
      v336 = v44;
      v337 = DWORD1(v1137);
      v1046 = v1136[2];
      while (1)
      {
        v1084 = v337;
        v338 = v335;
        v339 = v44;
        v340 = v1070;
        if (v1054 >= 1)
        {
          v341 = 0;
          v342 = v15 - 404;
          v343 = *(a3 + 304);
          v344 = v1054 + 1;
          v345 = v332;
          v346 = v1061;
          v340 = v1070;
          do
          {
            v347 = v340 == 0;
            if (v340)
            {
              v348 = v346;
            }

            else
            {
              v340 = v1137;
              v348 = DWORD2(v1137);
            }

            if (v347)
            {
              v349 = *(&v1138 + 1);
            }

            else
            {
              v349 = v345;
            }

            if (v341)
            {
              v350 = v341;
            }

            else
            {
              v350 = v330;
            }

            if (v341)
            {
              v351 = 0;
            }

            else
            {
              v351 = 404;
            }

            v342 += v351;
            v352 = *v349;
            v353 = v352 >> 3;
            v354 = v349[3];
            if (v348)
            {
              v355 = -v353;
            }

            else
            {
              LOWORD(v355) = v352 >> 3;
            }

            v356 = v355 + v354;
            ++*(v342 + 384);
            *(v342 + 388) += v356;
            *(v342 + 396) += v356 * v356;
            if ((v352 & 4) == 0)
            {
              v357 = v349[1];
              v358 = v357 & 7;
              if ((v352 & 1) != 0 || (((v357 & 7u) < 6) & (v352 >> 1)) != 0)
              {
                v374 = (v342 + 12 * v348);
                v375.i32[0] = 1;
                v375.i32[1] = v356;
                v374[42] = vadd_s32(v374[42], v375);
                v374[43].i32[0] += v354;
              }

              else
              {
                v359 = v358 > 5;
                v360 = v349[2];
                v361 = (v360 & 0xF) + 1;
                v362 = v360 >> 4;
                v363 = v349[1];
                v364 = v363 >> 3;
                if (v363 >> 3 < 0)
                {
                  v364 = -v364;
                }

                if (v353 >= 0)
                {
                  LOWORD(v365) = v353;
                }

                else
                {
                  v365 = -v353;
                }

                v366 = v358 - v359;
                v367 = (16 * (v364 & 0xFFFu)) >> v359 >> 1;
                v368 = ((v361 >> 1) * v362 * v367) >> 15 << v343;
                if (v368 <= -32768)
                {
                  v368 = -32768;
                }

                if (v368 >= 0x7FFF)
                {
                  v368 = 0x7FFF;
                }

                v369 = ((v368 * v367) >> 15);
                v370 = ((v368 * 8 * (v365 & 0xFFF)) >> 15);
                if ((v353 ^ (v363 >> 3)) >= 0)
                {
                  v371 = v366 + 7;
                }

                else
                {
                  v371 = v366;
                }

                v372 = (v342 + 24 * v371);
                v373 = v372[1];
                *v372 += v361;
                v372[1] = v373 + v369;
                v372[2] += v370;
              }
            }

            v345 = v349 + 4;
            --v340;
            v341 = v350 - 1;
            ++v1123.i32[0];
            v346 = v348 ^ 1;
            --v344;
          }

          while (v344 > 1);
        }

        if (v340)
        {
          sub_10001AFC8();
        }

        v335 = v338;
        if (v338 > 2)
        {
          v4 = v1006;
          v44 = v339;
          if ((v338 - 3) >= 2)
          {
LABEL_1475:
            sub_10001AE68();
          }
        }

        else
        {
          v4 = v1006;
          v44 = v339;
          if (!v338)
          {
            v332 += v1039;
            *(&v1134 + 1) = v332;
            DWORD1(v1133) = ++v333;
            v1061 ^= 1u;
            DWORD2(v1133) = v1061;
LABEL_426:
            v376 = v1046;
            goto LABEL_427;
          }

          if (v338 != 1)
          {
            if (v338 != 2)
            {
              goto LABEL_1475;
            }

            v332 += v1039;
            *(&v1134 + 1) = v332;
            DWORD1(v1133) = ++v333;
            goto LABEL_426;
          }
        }

        if (v331)
        {
          *&v1134 = --v331;
          v332 += v1039;
        }

        else
        {
          v332 = (v332 + __srcb);
        }

        v376 = v1046;
        *(&v1134 + 1) = v332;
        v333 += 2;
        DWORD1(v1133) = v333;
LABEL_427:
        if (v376 > 2)
        {
          if ((v376 - 3) >= 2)
          {
LABEL_1476:
            sub_10001AE68();
          }
        }

        else
        {
          if (!v376)
          {
            *(&v1138 + 1) += 2 * v1032;
            v337 = v1084 + 1;
            DWORD1(v1137) = v1084 + 1;
            DWORD2(v1137) ^= 1u;
            goto LABEL_439;
          }

          if (v376 != 1)
          {
            if (v376 != 2)
            {
              goto LABEL_1476;
            }

            *(&v1138 + 1) += 2 * v1032;
            v337 = v1084 + 1;
            goto LABEL_437;
          }
        }

        if (v334)
        {
          *&v1138 = --v334;
          v377 = *(&v1138 + 1) + 2 * v1032;
        }

        else
        {
          v377 = *(&v1138 + 1) + v1014;
        }

        *(&v1138 + 1) = v377;
        v337 = v1084 + 2;
LABEL_437:
        DWORD1(v1137) = v337;
LABEL_439:
        v378 = v1103;
        if (v336 != 1)
        {
          v378 = 0;
        }

        v15 += 404 * v378;
        if (v336 == 1)
        {
          v336 = v44;
        }

        else
        {
          --v336;
        }

        if (!--v43)
        {
          goto LABEL_620;
        }
      }
    }

    if (!v43)
    {
      goto LABEL_620;
    }

    v675 = v44;
    v676 = -2 * v42;
    while (1)
    {
      sub_100009CE0(a3 + 12, a3 + 300, 1, &v1133, &v1137, v15, &v1123);
      if (v1132 > 2)
      {
        break;
      }

      if (v1132)
      {
        if (v1132 != 1)
        {
          if (v1132 != 2)
          {
            goto LABEL_1522;
          }

          *(&v1134 + 1) += 2 * *(&v1132 + 1);
          v677 = DWORD1(v1133) + 1;
          goto LABEL_950;
        }

LABEL_946:
        if (v1134)
        {
          *&v1134 = v1134 - 1;
          v678 = *(&v1134 + 1) + 2 * *(&v1132 + 1);
        }

        else
        {
          v678 = *(&v1134 + 1) + 4 * *(&v1132 + 1);
        }

        *(&v1134 + 1) = v678;
        v677 = DWORD1(v1133) + 2;
LABEL_950:
        DWORD1(v1133) = v677;
        goto LABEL_951;
      }

      *(&v1134 + 1) += 2 * *(&v1132 + 1);
      LODWORD(v684) = vadd_s32(*(&v1133 + 4), 0x100000001).u32[0];
      HIDWORD(v684) = veor_s8(*(&v1133 + 4), 0x100000001).i32[1];
      *(&v1133 + 4) = v684;
LABEL_951:
      if (SLODWORD(v1136[2]) > 2)
      {
        if ((LODWORD(v1136[2]) - 3) >= 2)
        {
LABEL_1523:
          sub_10001AE68();
        }

        goto LABEL_957;
      }

      if (LODWORD(v1136[2]))
      {
        if (LODWORD(v1136[2]) != 1)
        {
          if (LODWORD(v1136[2]) != 2)
          {
            goto LABEL_1523;
          }

          *(&v1138 + 1) += 2 * v1136[3];
          v679 = DWORD1(v1137) + 1;
          goto LABEL_961;
        }

LABEL_957:
        if (v1138)
        {
          *&v1138 = v1138 - 1;
          v680 = *(&v1138 + 1) + 2 * v1136[3];
        }

        else
        {
          v680 = *(&v1138 + 1) + 4 * v1136[3];
        }

        *(&v1138 + 1) = v680;
        v679 = DWORD1(v1137) + 2;
LABEL_961:
        DWORD1(v1137) = v679;
        goto LABEL_962;
      }

      *(&v1138 + 1) += 2 * v1136[3];
      LODWORD(v685) = vadd_s32(*(&v1137 + 4), 0x100000001).u32[0];
      HIDWORD(v685) = veor_s8(*(&v1137 + 4), 0x100000001).i32[1];
      *(&v1137 + 4) = v685;
LABEL_962:
      sub_100009CE0(a3 + 12, a3 + 300, 0, &v1135, &v1139, v15, &v1123);
      if (v1132 <= 2)
      {
        if (v1132 != 1)
        {
          if (!v1132 || v1132 == 2)
          {
            sub_10001AE94();
          }

LABEL_1559:
          sub_10001AEC0();
        }

LABEL_968:
        if (v1136[0])
        {
          --v1136[0];
          v682 = v1136[1] + 4 * *(&v1132 + 1);
        }

        else
        {
          v682 = v1136[1] + 2 * *(&v1132 + 1);
        }

        v1136[1] = v682;
        LODWORD(v683) = vadd_s32(*(&v1135 + 4), 0x200000002).u32[0];
        HIDWORD(v683) = veor_s8(*(&v1135 + 4), 0x100000001).i32[1];
        *(&v1135 + 4) = v683;
        goto LABEL_976;
      }

      if (v1132 == 3)
      {
        goto LABEL_968;
      }

      if (v1132 != 4)
      {
        goto LABEL_1559;
      }

      if (v1136[0])
      {
        --v1136[0];
        v681 = v1136[1] + 4 * *(&v1132 + 1);
      }

      else
      {
        v681 = v1136[1] + 2 * *(&v1132 + 1);
      }

      v1136[1] = v681;
      DWORD1(v1135) += 2;
LABEL_976:
      if (SLODWORD(v1136[2]) <= 2)
      {
        if (LODWORD(v1136[2]) != 1)
        {
          if (!LODWORD(v1136[2]) || LODWORD(v1136[2]) == 2)
          {
            sub_10001AE94();
          }

LABEL_1560:
          sub_10001AEC0();
        }
      }

      else if (LODWORD(v1136[2]) != 3)
      {
        if (LODWORD(v1136[2]) != 4)
        {
          goto LABEL_1560;
        }

        if (v1140[0])
        {
          --v1140[0];
          v686 = v1140[1] + 4 * v1136[3];
        }

        else
        {
          v686 = v1140[1] + 2 * v1136[3];
        }

        v1140[1] = v686;
        DWORD1(v1139) += 2;
        goto LABEL_988;
      }

      if (v1140[0])
      {
        --v1140[0];
        v687 = v1140[1] + 4 * v1136[3];
      }

      else
      {
        v687 = v1140[1] + 2 * v1136[3];
      }

      v1140[1] = v687;
      LODWORD(v688) = vadd_s32(*(&v1139 + 4), 0x200000002).u32[0];
      HIDWORD(v688) = veor_s8(*(&v1139 + 4), 0x100000001).i32[1];
      *(&v1139 + 4) = v688;
LABEL_988:
      v689 = v1103;
      if (v675 != 2)
      {
        v689 = 0;
      }

      v15 += 404 * v689;
      if (v675 == 2)
      {
        v675 = v44;
      }

      else
      {
        v675 -= 2;
      }

      v676 += 2;
      if (!v676)
      {
        goto LABEL_620;
      }
    }

    if ((v1132 - 3) >= 2)
    {
LABEL_1522:
      sub_10001AE68();
    }

    goto LABEL_946;
  }

  if (v16 == 3)
  {
    if (!v43)
    {
      goto LABEL_620;
    }

    v45 = v44;
    v46 = -2 * v42;
    while (1)
    {
      sub_100009CE0(a3 + 12, a3 + 300, 0, &v1135, &v1139, v15, &v1123);
      if (v1132 <= 2)
      {
        break;
      }

      if (v1132 == 3)
      {
        goto LABEL_86;
      }

      if (v1132 != 4)
      {
        goto LABEL_1549;
      }

      if (v1136[0])
      {
        --v1136[0];
        v47 = v1136[1] + 4 * *(&v1132 + 1);
      }

      else
      {
        v47 = v1136[1] + 2 * *(&v1132 + 1);
      }

      v1136[1] = v47;
      DWORD1(v1135) += 2;
LABEL_92:
      if (SLODWORD(v1136[2]) <= 2)
      {
        if (LODWORD(v1136[2]) != 1)
        {
          if (!LODWORD(v1136[2]) || LODWORD(v1136[2]) == 2)
          {
            sub_10001AE94();
          }

LABEL_1550:
          sub_10001AEC0();
        }

LABEL_98:
        if (v1140[0])
        {
          --v1140[0];
          v51 = v1140[1] + 4 * v1136[3];
        }

        else
        {
          v51 = v1140[1] + 2 * v1136[3];
        }

        v1140[1] = v51;
        LODWORD(v52) = vadd_s32(*(&v1139 + 4), 0x200000002).u32[0];
        HIDWORD(v52) = veor_s8(*(&v1139 + 4), 0x100000001).i32[1];
        *(&v1139 + 4) = v52;
        goto LABEL_104;
      }

      if (LODWORD(v1136[2]) == 3)
      {
        goto LABEL_98;
      }

      if (LODWORD(v1136[2]) != 4)
      {
        goto LABEL_1550;
      }

      if (v1140[0])
      {
        --v1140[0];
        v50 = v1140[1] + 4 * v1136[3];
      }

      else
      {
        v50 = v1140[1] + 2 * v1136[3];
      }

      v1140[1] = v50;
      DWORD1(v1139) += 2;
LABEL_104:
      sub_100009CE0(a3 + 12, a3 + 300, 1, &v1133, &v1137, v15, &v1123);
      if (v1132 > 2)
      {
        if ((v1132 - 3) >= 2)
        {
LABEL_1465:
          sub_10001AE68();
        }

        goto LABEL_110;
      }

      if (v1132)
      {
        if (v1132 != 1)
        {
          if (v1132 != 2)
          {
            goto LABEL_1465;
          }

          *(&v1134 + 1) += 2 * *(&v1132 + 1);
          v53 = DWORD1(v1133) + 1;
          goto LABEL_114;
        }

LABEL_110:
        if (v1134)
        {
          *&v1134 = v1134 - 1;
          v54 = *(&v1134 + 1) + 2 * *(&v1132 + 1);
        }

        else
        {
          v54 = *(&v1134 + 1) + 4 * *(&v1132 + 1);
        }

        *(&v1134 + 1) = v54;
        v53 = DWORD1(v1133) + 2;
LABEL_114:
        DWORD1(v1133) = v53;
        goto LABEL_116;
      }

      *(&v1134 + 1) += 2 * *(&v1132 + 1);
      LODWORD(v55) = vadd_s32(*(&v1133 + 4), 0x100000001).u32[0];
      HIDWORD(v55) = veor_s8(*(&v1133 + 4), 0x100000001).i32[1];
      *(&v1133 + 4) = v55;
LABEL_116:
      if (SLODWORD(v1136[2]) > 2)
      {
        if ((LODWORD(v1136[2]) - 3) >= 2)
        {
LABEL_1466:
          sub_10001AE68();
        }
      }

      else
      {
        if (!LODWORD(v1136[2]))
        {
          *(&v1138 + 1) += 2 * v1136[3];
          LODWORD(v58) = vadd_s32(*(&v1137 + 4), 0x100000001).u32[0];
          HIDWORD(v58) = veor_s8(*(&v1137 + 4), 0x100000001).i32[1];
          *(&v1137 + 4) = v58;
          goto LABEL_128;
        }

        if (LODWORD(v1136[2]) != 1)
        {
          if (LODWORD(v1136[2]) != 2)
          {
            goto LABEL_1466;
          }

          *(&v1138 + 1) += 2 * v1136[3];
          v56 = DWORD1(v1137) + 1;
          goto LABEL_126;
        }
      }

      if (v1138)
      {
        *&v1138 = v1138 - 1;
        v57 = *(&v1138 + 1) + 2 * v1136[3];
      }

      else
      {
        v57 = *(&v1138 + 1) + 4 * v1136[3];
      }

      *(&v1138 + 1) = v57;
      v56 = DWORD1(v1137) + 2;
LABEL_126:
      DWORD1(v1137) = v56;
LABEL_128:
      v59 = v1103;
      if (v45 != 2)
      {
        v59 = 0;
      }

      v15 += 404 * v59;
      if (v45 == 2)
      {
        v45 = v44;
      }

      else
      {
        v45 -= 2;
      }

      v46 += 2;
      if (!v46)
      {
        goto LABEL_620;
      }
    }

    if (v1132 != 1)
    {
      if (!v1132 || v1132 == 2)
      {
        sub_10001AE94();
      }

LABEL_1549:
      sub_10001AEC0();
    }

LABEL_86:
    if (v1136[0])
    {
      --v1136[0];
      v48 = v1136[1] + 4 * *(&v1132 + 1);
    }

    else
    {
      v48 = v1136[1] + 2 * *(&v1132 + 1);
    }

    v1136[1] = v48;
    LODWORD(v49) = vadd_s32(*(&v1135 + 4), 0x200000002).u32[0];
    HIDWORD(v49) = veor_s8(*(&v1135 + 4), 0x100000001).i32[1];
    *(&v1135 + 4) = v49;
    goto LABEL_92;
  }

  if (v43)
  {
    v653 = v44;
    v654 = -2 * v42;
    while (1)
    {
      sub_100009EEC(a3 + 12, a3 + 300, &v1135, &v1139, v15, &v1123);
      if (v1132 <= 2)
      {
        break;
      }

      if (v1132 == 3)
      {
        goto LABEL_866;
      }

      if (v1132 != 4)
      {
        goto LABEL_1555;
      }

      if (v1136[0])
      {
        --v1136[0];
        v655 = v1136[1] + 4 * *(&v1132 + 1);
      }

      else
      {
        v655 = v1136[1] + 2 * *(&v1132 + 1);
      }

      v1136[1] = v655;
      DWORD1(v1135) += 2;
LABEL_872:
      if (SLODWORD(v1136[2]) <= 2)
      {
        if (LODWORD(v1136[2]) != 1)
        {
          if (!LODWORD(v1136[2]) || LODWORD(v1136[2]) == 2)
          {
            sub_10001AE94();
          }

LABEL_1556:
          sub_10001AEC0();
        }

LABEL_878:
        if (v1140[0])
        {
          --v1140[0];
          v659 = v1140[1] + 4 * v1136[3];
        }

        else
        {
          v659 = v1140[1] + 2 * v1136[3];
        }

        v1140[1] = v659;
        LODWORD(v660) = vadd_s32(*(&v1139 + 4), 0x200000002).u32[0];
        HIDWORD(v660) = veor_s8(*(&v1139 + 4), 0x100000001).i32[1];
        *(&v1139 + 4) = v660;
        goto LABEL_884;
      }

      if (LODWORD(v1136[2]) == 3)
      {
        goto LABEL_878;
      }

      if (LODWORD(v1136[2]) != 4)
      {
        goto LABEL_1556;
      }

      if (v1140[0])
      {
        --v1140[0];
        v658 = v1140[1] + 4 * v1136[3];
      }

      else
      {
        v658 = v1140[1] + 2 * v1136[3];
      }

      v1140[1] = v658;
      DWORD1(v1139) += 2;
LABEL_884:
      sub_100009EEC(a3 + 12, a3 + 300, &v1133, &v1137, v15, &v1123);
      if (v1132 > 2)
      {
        if ((v1132 - 3) >= 2)
        {
LABEL_1510:
          sub_10001AE68();
        }

        goto LABEL_890;
      }

      if (v1132)
      {
        if (v1132 != 1)
        {
          if (v1132 != 2)
          {
            goto LABEL_1510;
          }

          *(&v1134 + 1) += 2 * *(&v1132 + 1);
          v661 = DWORD1(v1133) + 1;
          goto LABEL_894;
        }

LABEL_890:
        if (v1134)
        {
          *&v1134 = v1134 - 1;
          v662 = *(&v1134 + 1) + 2 * *(&v1132 + 1);
        }

        else
        {
          v662 = *(&v1134 + 1) + 4 * *(&v1132 + 1);
        }

        *(&v1134 + 1) = v662;
        v661 = DWORD1(v1133) + 2;
LABEL_894:
        DWORD1(v1133) = v661;
        goto LABEL_896;
      }

      *(&v1134 + 1) += 2 * *(&v1132 + 1);
      LODWORD(v663) = vadd_s32(*(&v1133 + 4), 0x100000001).u32[0];
      HIDWORD(v663) = veor_s8(*(&v1133 + 4), 0x100000001).i32[1];
      *(&v1133 + 4) = v663;
LABEL_896:
      if (SLODWORD(v1136[2]) > 2)
      {
        if ((LODWORD(v1136[2]) - 3) >= 2)
        {
LABEL_1511:
          sub_10001AE68();
        }
      }

      else
      {
        if (!LODWORD(v1136[2]))
        {
          *(&v1138 + 1) += 2 * v1136[3];
          LODWORD(v666) = vadd_s32(*(&v1137 + 4), 0x100000001).u32[0];
          HIDWORD(v666) = veor_s8(*(&v1137 + 4), 0x100000001).i32[1];
          *(&v1137 + 4) = v666;
          goto LABEL_908;
        }

        if (LODWORD(v1136[2]) != 1)
        {
          if (LODWORD(v1136[2]) != 2)
          {
            goto LABEL_1511;
          }

          *(&v1138 + 1) += 2 * v1136[3];
          v664 = DWORD1(v1137) + 1;
          goto LABEL_906;
        }
      }

      if (v1138)
      {
        *&v1138 = v1138 - 1;
        v665 = *(&v1138 + 1) + 2 * v1136[3];
      }

      else
      {
        v665 = *(&v1138 + 1) + 4 * v1136[3];
      }

      *(&v1138 + 1) = v665;
      v664 = DWORD1(v1137) + 2;
LABEL_906:
      DWORD1(v1137) = v664;
LABEL_908:
      v667 = v1103;
      if (v653 != 2)
      {
        v667 = 0;
      }

      v15 += 404 * v667;
      if (v653 == 2)
      {
        v653 = v44;
      }

      else
      {
        v653 -= 2;
      }

      v654 += 2;
      if (!v654)
      {
        goto LABEL_620;
      }
    }

    if (v1132 != 1)
    {
      if (!v1132 || v1132 == 2)
      {
        sub_10001AE94();
      }

LABEL_1555:
      sub_10001AEC0();
    }

LABEL_866:
    if (v1136[0])
    {
      --v1136[0];
      v656 = v1136[1] + 4 * *(&v1132 + 1);
    }

    else
    {
      v656 = v1136[1] + 2 * *(&v1132 + 1);
    }

    v1136[1] = v656;
    LODWORD(v657) = vadd_s32(*(&v1135 + 4), 0x200000002).u32[0];
    HIDWORD(v657) = veor_s8(*(&v1135 + 4), 0x100000001).i32[1];
    *(&v1135 + 4) = v657;
    goto LABEL_872;
  }

LABEL_620:
  if (!*(a3 + 608))
  {
    goto LABEL_1095;
  }

  sub_1000083D8(a3 + 12, a2, &v1132);
  v460 = *(a3 + 12);
  if (v460 <= 1)
  {
    if (v460)
    {
      if (v460 != 1)
      {
        goto LABEL_1497;
      }

      if (*(a3 + 16) != *(a3 + 160))
      {
        sub_10001AFF4();
      }

      v504 = a3 + 487308;
      v505 = v4[137];
      v506 = v4[140];
      v1108 = v4[146];
      v1086 = v4[149];
      v1072 = v4[143];
      if (*(a3 + 156))
      {
        v507 = 0;
        v508 = *(a3 + 20);
        v509 = v4 + 138;
        do
        {
          v510 = *(a3 + 140 + 4 * (v507 % *(a3 + 132)));
          v511 = v509;
          v512 = 5;
          do
          {
            bzero((v504 + *(v511 - 1)), *v511);
            v511 += 3;
            --v512;
          }

          while (v512);
          if (v508 >= v510)
          {
            v513 = v510;
          }

          else
          {
            v513 = v508;
          }

          sub_10000A928(a3, v513, &v1132, (v504 + v505), (v504 + v506), (v504 + v1072));
          sub_1000090DC(v1099, (a3 + 132), a3 + 608, (v504 + v505), (v504 + v506), (v504 + v1108), (v504 + v1086), (a3 + 58660 + 360 * *(a3 + 184) * v507));
          LOWORD(v508) = v508 - v510;
          ++v507;
        }

        while (v507 < *(a3 + 156));
        v505 = v1006[137];
        v506 = v1006[140];
        v1108 = v1006[146];
        v1072 = v1006[143];
        v1086 = v1006[149];
      }

      if (*(a3 + 20) != *(a3 + 216))
      {
        sub_10001B020();
      }

      if (*(a3 + 212))
      {
        v514 = 0;
        v515 = 0;
        v516 = *(a3 + 16);
        do
        {
          v517 = *(a3 + 196 + 4 * (v515 % *(a3 + 188)));
          v518 = v1006 + 138;
          v519 = 5;
          do
          {
            bzero((v504 + *(v518 - 1)), *v518);
            v518 += 3;
            --v519;
          }

          while (v519);
          if (v516 >= v517)
          {
            v520 = v517;
          }

          else
          {
            v520 = v516;
          }

          sub_10000ABF0(a3, v514, v520, &v1132, (v504 + v505), (v504 + v506), (v504 + v1072));
          sub_1000090DC(v1099, (a3 + 188), a3 + 608, (v504 + v505), (v504 + v506), (v504 + v1108), (v504 + v1086), (a3 + 242980 + 360 * *(a3 + 240) * v515));
          v514 += v517;
          LOWORD(v516) = v516 - v517;
          ++v515;
        }

        while (v515 < *(a3 + 212));
      }
    }

    else
    {
      if (*(a3 + 16) != *(a3 + 160))
      {
        sub_10001AFF4();
      }

      if (*(a3 + 156))
      {
        v548 = 0;
        v549 = a3 + 487308;
        v550 = v1006[137];
        v551 = v1006[140];
        v1111 = v1006[146];
        v1089 = v1006[149];
        *v1063 = v1006[143];
        v552 = *(a3 + 20);
        do
        {
          v553 = *(a3 + 140 + 4 * (v548 % *(a3 + 132)));
          v554 = v1006 + 138;
          v555 = 5;
          do
          {
            bzero((v549 + *(v554 - 1)), *v554);
            v554 += 3;
            --v555;
          }

          while (v555);
          if (v552 >= v553)
          {
            v556 = v553;
          }

          else
          {
            v556 = v552;
          }

          sub_10000A928(a3, v556, &v1132, (v549 + v550), (v549 + v551), (v549 + *v1063));
          sub_1000090DC(v1099, (a3 + 132), a3 + 608, (v549 + v550), (v549 + v551), (v549 + v1111), (v549 + v1089), (a3 + 58660 + 360 * *(a3 + 184) * v548));
          LOWORD(v552) = v552 - v553;
          ++v548;
        }

        while (v548 < *(a3 + 156));
      }
    }
  }

  else
  {
    switch(v460)
    {
      case 2:
        if (*(a3 + 16) != *(a3 + 160))
        {
          sub_10001AFF4();
        }

        if (*(a3 + 156))
        {
          v521 = 0;
          v522 = a3 + 487308;
          v523 = v1006[137];
          v524 = v1006[140];
          v1109 = v1006[146];
          v1087 = v1006[149];
          v525 = *(a3 + 20);
          do
          {
            v526 = *(a3 + 140 + 4 * (v521 % *(a3 + 132)));
            v527 = v1006 + 138;
            v528 = 5;
            do
            {
              bzero((v522 + *(v527 - 1)), *v527);
              v527 += 3;
              --v528;
            }

            while (v528);
            if (v525 >= v526)
            {
              v530 = v526;
            }

            else
            {
              v530 = v525;
            }

            sub_10000AE4C(a3 + 12, v530, &v1132, (v522 + v523), (v522 + v524), v529);
            sub_1000090DC(v1099, (a3 + 132), a3 + 608, (v522 + v523), (v522 + v524), (v522 + v1109), (v522 + v1087), (a3 + 58660 + 360 * *(a3 + 184) * v521));
            LOWORD(v525) = v525 - v526;
            ++v521;
          }

          while (v521 < *(a3 + 156));
        }

        break;
      case 3:
        if (*(a3 + 16) != *(a3 + 160))
        {
          sub_10001AFF4();
        }

        v531 = a3 + 487308;
        v532 = v4[137];
        v533 = v4[140];
        v1110 = v4[146];
        v1088 = v4[149];
        v1073 = v4[143];
        if (*(a3 + 156))
        {
          v534 = 0;
          v535 = *(a3 + 20);
          v536 = v4 + 138;
          do
          {
            v537 = *(a3 + 140 + 4 * (v534 % *(a3 + 132)));
            v538 = v536;
            v539 = 5;
            do
            {
              bzero((v531 + *(v538 - 1)), *v538);
              v538 += 3;
              --v539;
            }

            while (v539);
            if (v535 >= v537)
            {
              v540 = v537;
            }

            else
            {
              v540 = v535;
            }

            sub_10000A928(a3, v540, &v1132, (v531 + v532), (v531 + v533), (v531 + v1073));
            sub_1000090DC(v1099, (a3 + 132), a3 + 608, (v531 + v532), (v531 + v533), (v531 + v1110), (v531 + v1088), (a3 + 58660 + 360 * *(a3 + 184) * v534));
            LOWORD(v535) = v535 - v537;
            ++v534;
          }

          while (v534 < *(a3 + 156));
          v532 = v1006[137];
          v533 = v1006[140];
          v1110 = v1006[146];
          v1073 = v1006[143];
          v1088 = v1006[149];
        }

        if (*(a3 + 20) != *(a3 + 216))
        {
          sub_10001B020();
        }

        if (*(a3 + 212))
        {
          v541 = 0;
          v542 = 0;
          v543 = *(a3 + 16);
          do
          {
            v544 = *(a3 + 196 + 4 * (v542 % *(a3 + 188)));
            v545 = v1006 + 138;
            v546 = 5;
            do
            {
              bzero((v531 + *(v545 - 1)), *v545);
              v545 += 3;
              --v546;
            }

            while (v546);
            if (v543 >= v544)
            {
              v547 = v544;
            }

            else
            {
              v547 = v543;
            }

            sub_10000ABF0(a3, v541, v547, &v1132, (v531 + v532), (v531 + v533), (v531 + v1073));
            sub_1000090DC(v1099, (a3 + 188), a3 + 608, (v531 + v532), (v531 + v533), (v531 + v1110), (v531 + v1088), (a3 + 242980 + 360 * *(a3 + 240) * v542));
            v541 += v544;
            LOWORD(v543) = v543 - v544;
            ++v542;
          }

          while (v542 < *(a3 + 212));
        }

        break;
      case 4:
        if (*(a3 + 16) != *(a3 + 160))
        {
          sub_10001AFF4();
        }

        v461 = a3 + 487308;
        v462 = v4[137];
        v463 = v4[140];
        v1055 = v4[146];
        v1047 = v4[149];
        if (*(a3 + 156))
        {
          v464 = 0;
          v465 = *(a3 + 20);
          v466 = v4 + 138;
          do
          {
            v467 = *(a3 + 140 + 4 * (v464 % *(a3 + 132)));
            v468 = v466;
            v469 = 5;
            do
            {
              bzero((v461 + *(v468 - 1)), *v468);
              v468 += 3;
              --v469;
            }

            while (v469);
            if (v465 >= v467)
            {
              v471 = v467;
            }

            else
            {
              v471 = v465;
            }

            sub_10000AE4C(a3 + 12, v471, &v1132, (v461 + v462), (v461 + v463), v470);
            sub_1000090DC(v1099, (a3 + 132), a3 + 608, (v461 + v462), (v461 + v463), (v461 + v1055), (v461 + v1047), (a3 + 58660 + 360 * *(a3 + 184) * v464));
            LOWORD(v465) = v465 - v467;
            ++v464;
          }

          while (v464 < *(a3 + 156));
          v462 = v1006[137];
          v463 = v1006[140];
          v1047 = v1006[149];
          v1055 = v1006[146];
        }

        if (*(a3 + 20) != *(a3 + 216))
        {
          sub_10001B020();
        }

        if (*(a3 + 212))
        {
          v472 = 0;
          v473 = 0;
          v1085 = *(a3 + 16);
          __srcc = (v461 + v462);
          v1062 = (v461 + v463);
          v474 = v1132;
          v1009 = v1135;
          v1001 = v1136[1];
          v1003 = v1136[0];
          v475 = v1136[2];
          v476 = v1139;
          v1107 = *(&v1132 + 1);
          v477 = 4 * *(&v1132 + 1);
          v478 = v1136[3];
          v479 = 4 * v1136[3];
          v995 = v1140[1];
          v998 = v1140[0];
          do
          {
            v1040 = v472;
            v1033 = v473;
            v480 = 4 * (v473 % *(a3 + 188));
            v481 = v1006 + 138;
            v1071 = *(a3 + 196 + v480);
            v482 = 5;
            do
            {
              bzero((v461 + *(v481 - 1)), *v481);
              v481 += 3;
              --v482;
            }

            while (v482);
            if (v1085 >= v1071)
            {
              v483 = v1071;
            }

            else
            {
              v483 = v1085;
            }

            if (!v483)
            {
              sub_10001B04C();
            }

            v484 = *(a3 + 20);
            if (v484)
            {
              v485 = 0;
              v486 = v1009 - v1040;
              if (v1009 - v1040 >= 1)
              {
                v487 = 0;
              }

              else
              {
                v487 = v476;
              }

              v488 = v487 + v486;
              v489 = __srcc;
              v490 = v1062;
              v491 = v995;
              v492 = v998;
              v494 = v1001;
              v493 = v1003;
              do
              {
                v495 = v491 + -16 * v486;
                if (v486 >= 1)
                {
                  v495 = v494 + 2 * (8 * v1040);
                }

                v496 = v483;
                v497 = v488;
                do
                {
                  if (!v497)
                  {
                    v495 = v491;
                    v497 = v476;
                  }

                  *v489 += *(v495 + 6) >> 2;
                  *v490 += *(v495 + 14) >> 2;
                  v495 += 16;
                  --v497;
                  --v496;
                }

                while (v496);
                if ((v474 - 3) >= 2 && v474 != 1)
                {
                  if (v474 == 2 || !v474)
                  {
                    sub_10001AE94();
                  }

                  sub_10001AEC0();
                }

                if ((v475 - 3) >= 2 && v475 != 1)
                {
                  if (v475 == 2 || !v475)
                  {
                    sub_10001AE94();
                  }

                  sub_10001AEC0();
                }

                v498 = v494 + 2 * v1107;
                v494 += v477;
                if (!v493)
                {
                  v494 = v498;
                }

                _CF = v493-- != 0;
                if (!_CF)
                {
                  v493 = 0;
                }

                v499 = v491 + 2 * v478;
                v491 += v479;
                v500 = v492 - 1;
                if (!v492)
                {
                  v500 = 0;
                  v491 = v499;
                }

                ++v489;
                ++v490;
                ++v485;
                v492 = v500;
              }

              while (v485 != v484);
              v501 = __srcc;
              v502 = v1062;
              v503 = 0x80 / v483;
              do
              {
                *v501 = (*v501 * v503) >> 5;
                ++v501;
                *v502 = (*v502 * v503) >> 5;
                ++v502;
                --v484;
              }

              while (v484);
            }

            sub_1000090DC(v1099, (a3 + 188), a3 + 608, __srcc, v1062, (v461 + v1055), (v461 + v1047), (a3 + 242980 + 360 * *(a3 + 240) * v1033));
            v472 = v1071 + v1040;
            LOWORD(v1085) = v1085 - v1071;
            v473 = v1033 + 1;
          }

          while (v1033 + 1 < *(a3 + 212));
        }

        break;
      default:
LABEL_1497:
        sub_10001B078();
    }
  }

LABEL_1095:
  if (*(a3 + 608))
  {
    v757 = *(a3 + 12);
    if (v757 >= 5)
    {
      sub_10001B2B4();
    }

    v1035 = 0;
    __srce = *(a3 + 676);
    v758 = *(a3 + 684);
    v1005 = *(a3 + 288);
    v759 = *(a3 + 292);
    v760 = *(a3 + 296);
    v761 = 8;
    if (v757 <= 1)
    {
      if (v757)
      {
LABEL_1103:
        if (8u / *(a3 + 164) != v761 / *(a3 + 220))
        {
          sub_10001B2E0();
        }

        v1035 = 1;
      }
    }

    else if (v757 != 2)
    {
      if (v757 != 4)
      {
        v761 = 4;
      }

      goto LABEL_1103;
    }

    v1015 = 8u / *(a3 + 164);
    v1025 = *(a3 + 656);
    v1027 = *(a3 + 680);
    v1131.i32[0] = 0;
    v1130.i32[0] = 0;
    __asm { FMOV            V12.2S, #1.0 }

    v766 = *(a3 + 664);
    if (*(a3 + 664))
    {
      v767 = 0;
      v768 = *(a3 + 668);
      v769 = *(a3 + 672);
      do
      {
        v1077 = v767;
        v770 = a3 + 132 + 56 * v767;
        *v1100 = *(v770 + 24);
        if (v1100[0])
        {
          v771 = 0;
          v772 = a3 + 58660 + 184320 * v767;
          v1096 = *(v770 + 52);
          do
          {
            if (v1096)
            {
              v773 = 0;
              v1118 = *(a3 + 620);
              do
              {
                v774 = (v772 + v773);
                LODWORD(v1132) = 0;
                v1123.i32[0] = 0;
                v775 = *(v772 + v773 + 340);
                if (v775)
                {
                  v9.n128_f32[0] = v775;
                }

                else
                {
                  v9.n128_f32[0] = 1.0;
                }

                v776.i32[1] = *(v772 + v773 + 168);
                v776.i32[0] = *(v772 + v773 + 160);
                v777 = vdiv_f32(v776, vdup_lane_s32(v9.n128_u64[0], 0));
                v778 = vmul_n_f32(v777, v775);
                v779.i32[1] = *(v772 + v773 + 176);
                v780 = vmul_n_f32(v778, v1118);
                v779.i32[0] = *(v772 + v773 + 164);
                v774[88] = fmaxf(vaddv_f32(vdiv_f32(vmls_f32(v779, v777, v778), vbsl_s8(vceqz_f32(v780), _D12, v780))) * 65536.0, 0.0);
                sub_10000B06C(a3 + 284, v772 + v773, v1123.i32, &v1132);
                v781 = *&v1132;
                v774[86] = v1132;
                v774[87] = v1123.i32[0];
                if (v781 >= v769 && v774[88] >= v768)
                {
                  *(v772 + v773 + 356) = 1;
                }

                v773 += 360;
              }

              while (360 * v1096 != v773);
              v772 += v773;
            }

            ++v771;
          }

          while (v771 != *v1100);
        }

        v767 = v1077 + 1;
      }

      while (v1077 != v1035);
    }

    *(a3 + 636) = 0;
    v1078 = *(a3 + 34);
    if (*(a3 + 34))
    {
      v1042 = 0;
      v782 = v1015 >> 1;
      v1097 = *(a3 + 32);
      v783 = (v1025 + (v1025 >> 15));
      v784 = -(v783 >> 1);
      v1016 = (__srce - v1027);
      v785 = 1.0 - v758;
      if (v758 == 1.0)
      {
        v785 = 1.0;
      }

      v1011 = v785;
      v786 = v782;
      v1028 = v783 >> 1;
      if (v784 <= v783 >> 1)
      {
        v787 = v783 >> 1;
      }

      else
      {
        v787 = -(v783 >> 1);
      }

      v1119 = v787;
      v1049 = -(v783 >> 1);
      do
      {
        if (v1097)
        {
          *v1101 = 0;
          do
          {
            v1150 = 0;
            v1148 = 0u;
            v1149 = 0u;
            v1146 = 0u;
            v1147 = 0u;
            v1144 = 0u;
            v1145 = 0u;
            v1142 = 0u;
            v1143 = 0u;
            v1141 = 0u;
            v1139 = 0u;
            memset(v1140, 0, sizeof(v1140));
            v1137 = 0u;
            v1138 = 0u;
            memset(v1136, 0, sizeof(v1136));
            v1134 = 0u;
            v1135 = 0u;
            v1132 = 0u;
            v1133 = 0u;
            if (v784 <= v1028)
            {
              v789 = 0;
              v788 = 0;
              v790 = v784;
              do
              {
                v1057 = v790;
                v791 = v790 + v1042;
                do
                {
                  _CF = v784 + v1101[0] >= v1097 || v791 >= v1078;
                  if (!_CF)
                  {
                    v793 = 0;
                    v794 = *(a3 + 660);
                    v795 = a3 + 58676;
                    do
                    {
                      v796 = a3 + 132 + 56 * v793;
                      if (v793)
                      {
                        v797 = v784 + LOWORD(v1101[0]);
                      }

                      else
                      {
                        v797 = v791;
                      }

                      v798 = v797 * *v796;
                      if ((*v796 + v798) >= *(v796 + 24))
                      {
                        v799 = *(v796 + 24);
                      }

                      else
                      {
                        v799 = (*v796 + v798);
                      }

                      if (v799 > v798)
                      {
                        if (v793)
                        {
                          v800 = v791;
                        }

                        else
                        {
                          v800 = v784 + LOWORD(v1101[0]);
                        }

                        v801 = *(v796 + 52);
                        if ((v800 + 1) >= v801)
                        {
                          v802 = v801;
                        }

                        else
                        {
                          v802 = (v800 + 1);
                        }

                        v803 = v798;
                        v804 = v801 * v798 + v800;
                        v805 = a3 + 58660 + 184320 * v793 + 360 * v804;
                        v806 = v795 + 360 * v804;
                        do
                        {
                          v807 = v806;
                          v808 = v800;
                          v809 = v805;
                          if (v800 < v802)
                          {
                            do
                            {
                              if (!v766 || *(v809 + 356) == 1)
                              {
                                v810 = 0;
                                v811 = *(v809 + 340);
                                do
                                {
                                  v812 = (&v1132 + v810);
                                  *v812 = vaddq_f32(*(v809 + v810), *(&v1132 + v810));
                                  v812[1].f32[0] = *(v807 + v810) + *(&v1132 + v810 + 16);
                                  v810 += 20;
                                }

                                while (v810 != 340);
                                v789 += v811;
                                if (v811)
                                {
                                  v11.n128_f32[0] = v811;
                                }

                                else
                                {
                                  v11.n128_f32[0] = 1.0;
                                }

                                v11.n128_u64[0] = vdup_lane_s32(v11.n128_u64[0], 0);
                                v813.i32[1] = *(v809 + 168);
                                v813.i32[0] = *(v809 + 160);
                                v814 = vdiv_f32(v813, v11.n128_u64[0]);
                                v815 = vmul_n_f32(v814, v811);
                                v816 = vmul_n_f32(v815, *(a3 + 620));
                                v817.i32[1] = *(v809 + 176);
                                v817.i32[0] = *(v809 + 164);
                                v788 += fmaxf(vaddv_f32(vdiv_f32(vmls_f32(v817, v814, v815), vbsl_s8(vceqz_f32(v816), _D12, v816))) * v794, 0.0);
                              }

                              v809 += 360;
                              ++v808;
                              v807 += 360;
                            }

                            while (v808 != v802);
                          }

                          v805 += 360 * v801;
                          ++v803;
                          v806 += 360 * v801;
                        }

                        while (v803 != v799);
                      }

                      ++v793;
                      v795 += 184320;
                    }

                    while (v793 != v1035 + 1);
                  }

                  _ZF = v784++ == v1119;
                }

                while (!_ZF);
                v790 = v1057 + 1;
                v784 = v1049;
              }

              while (v1057 != v1119);
              DWORD1(v1149) = v789;
            }

            else
            {
              v788 = 0;
            }

            sub_10000B06C(a3 + 284, &v1132, v1130.i32, v1131.i32);
            v818 = *v1131.i32 <= v758 || v788 <= __srce - (((*v1131.i32 - v758) * v1016) / v1011);
            v784 = v1049;
            v819 = v759 * ((v786 * *v1130.i32) - v1005);
            v820 = *v1101;
            v821 = !v818;
            if (v818)
            {
              v822 = 0;
            }

            else
            {
              v822 = v788;
            }

            v823 = a3 + 480040 + 52 * (*v1101 + v1042 * v1097);
            *(v823 + 24) = (*v1131.i32 * 1000.0);
            *(v823 + 28) = v822;
            if (v821)
            {
              v824 = -96;
            }

            else
            {
              v824 = -120;
            }

            *(v823 + 32) = v760 * v819;
            *(v823 + 36) = 0;
            *(v823 + 40) = 0;
            *(v823 + 44) = v824;
            ++*v1101;
          }

          while (v820 + 1 != v1097);
        }

        ++v1042;
      }

      while (v1042 != v1078);
    }

    v762 = v1078;
    goto LABEL_1181;
  }

  v1005 = *(a3 + 288);
  v762 = *(a3 + 34);
LABEL_1181:
  v825 = *(a3 + 32);
  v826 = v762 * v825;
  if (v762 * v825)
  {
    v827 = a3 + 6948;
    v828 = a3 + 7092;
    v829 = vcvts_n_s32_f32(v1005, 0xCuLL);
    v830 = (a3 + 6964);
    do
    {
      v831 = 0;
      v832 = v827;
      v833 = v828;
      do
      {
        for (j = 0; j != 24; j += 8)
        {
          v835 = *(v832 + j);
          *(v832 + j) = *(v833 + j);
          *(v833 + j) = v835;
        }

        ++v831;
        v833 -= 24;
        v832 += 24;
      }

      while (v831 != 3);
      v836 = 0;
      v837 = v830;
      do
      {
        v838 = *(v837 - 1);
        v839 = dword_10001FE90[v836];
        v840 = ((*v837 << dword_10001FE20[v836]) * dword_10001FE58[v836] - ((v838 * v829 + 2048) >> 12)) << v839;
        *(v837 - 1) = v838 << v839;
        *v837 = v840;
        ++v836;
        v837 += 3;
      }

      while (v836 != 14);
      v827 += 404;
      v828 += 404;
      v830 = (v830 + 404);
      --v826;
    }

    while (v826);
  }

  bzero((a3 + 441636), 0x6E00uLL);
  if (v762)
  {
    v841 = *(a3 + 292) * *(a3 + 296);
    v842 = a3 + 463652;
    v843 = a3 + 6948;
    v844 = *(a3 + 308);
    v845 = a3 + 441636;
    do
    {
      if (v825)
      {
        v846 = (v843 + 16);
        v847 = (v843 + 344);
        v848 = v845;
        v849 = v842;
        v850 = v825;
        do
        {
          v851 = 0;
          v852 = 0;
          v853 = 0;
          v854 = (v843 + 388);
          v855 = v846;
          do
          {
            v856 = *(v855 - 1);
            v857 = (v856 / v844);
            if (v857)
            {
              v858 = v841 * vcvts_n_f32_s64((*v855 << 8) / v856, 8uLL);
              if (v858 < 0.0)
              {
                v859 = -0.5;
              }

              else
              {
                v859 = 0.5;
              }

              v860 = (v858 + v859);
              v861 = *(v855 - 4);
            }

            else
            {
              v860 = 0;
              v861 = 0;
            }

            v862 = (v848 + v851 * 4);
            *v862 = v861;
            v862[14] = v857;
            v862[28] = v860;
            v852 += dword_10001FEC8[v851] * v857;
            v853 += v861;
            ++v851;
            v855 += 3;
          }

          while (v851 != 14);
          v863 = *(v843 + 384);
          if (v863 && *v854)
          {
            v864 = 0;
            v865 = *v854 * *v854;
            v866 = 16 * v852;
            if (v853 <= 1)
            {
              v867 = 1;
            }

            else
            {
              v867 = v853;
            }

            v868 = (a3 + 326);
            v869 = v866 / v867;
            do
            {
              v871 = *v868;
              v868 += 2;
              v870 = v871;
              if (v864 > 2)
              {
                break;
              }

              ++v864;
              v872 = v870 == 0xFFFF || v869 < v870;
            }

            while (!v872);
            v873 = 10000 * (*(v843 + 396) * v863 - v865) / v865 > *(v868 - 1);
          }

          else
          {
            v873 = 0;
          }

          v874 = 0;
          *(v848 + 168) = v873;
          v875 = v847;
          do
          {
            v876 = (v849 + v874);
            *v876 = *(v875 - 2);
            v876[4] = *(v875 - 1);
            v877 = *v875;
            v875 += 3;
            v876[8] = v877;
            v874 += 4;
          }

          while (v874 != 16);
          v843 += 404;
          v848 += 172;
          v849 += 48;
          v846 = (v846 + 404);
          v847 += 101;
          --v850;
        }

        while (v850);
      }

      v845 += 172 * v825;
      v842 += 48 * v825;
      --v762;
    }

    while (v762);
  }

  if (*(a3 + 312) != 1)
  {
    sub_10001B30C();
  }

  v878 = 0;
  v1050 = a3 + 312;
  v1029 = a3 + 469800;
  v879 = &v1135 + 8;
  v880 = 1;
  do
  {
    v1079 = v880;
    v881 = *(v1050 + 4 * v878);
    if (v881 >= 1)
    {
      v882 = v1029 + (v878 << 11);
      v883 = *(a3 + 32);
      v884 = *(a3 + 34);
      if (v881 == 1)
      {
        v885 = v884 * v883;
        if (v884 * v883)
        {
          v886 = a3 + 441636;
          do
          {
            sub_10000B394(a3 + 284, v886, v882);
            v886 += 172;
            v882 += 16;
            --v885;
          }

          while (v885);
        }
      }

      else
      {
        v887 = 0;
        if (v883 >= v881)
        {
          v888 = *(v1050 + 4 * v878);
        }

        else
        {
          v888 = *(a3 + 32);
        }

        if (v884 >= v881)
        {
          v889 = *(v1050 + 4 * v878);
        }

        else
        {
          v889 = *(a3 + 34);
        }

        v1120 = v889;
        v890 = *(a3 + 34);
        v891 = *(a3 + 32);
        do
        {
          if (v888 <= v891)
          {
            v893 = 0;
            LODWORD(v892) = v891;
            do
            {
              v894 = v893 + v892 * v887;
              v1139 = 0u;
              memset(v1140, 0, 28);
              v1137 = 0u;
              v1138 = 0u;
              memset(v1136, 0, sizeof(v1136));
              v1134 = 0u;
              v1135 = 0u;
              v1132 = 0u;
              v1133 = 0u;
              if (v884)
              {
                v895 = 0;
                v896 = 0;
                v897 = a3 + 441636 + 172 * v894;
                v898 = a3 + 441692 + 172 * (v893 + v887 * v892);
                v899 = v1120;
                do
                {
                  v900 = v898;
                  v901 = v888;
                  v902 = v897;
                  if (v883)
                  {
                    do
                    {
                      if (*(v902 + 168))
                      {
                        v903 = v900;
                        v904 = &v1135 + 2;
                        v905 = 14;
                        do
                        {
                          *(v904 - 14) += *(v903 - 14);
                          v906 = *v903;
                          *v904 += *v903;
                          v904[14] += v903[14] * v906;
                          ++v904;
                          ++v903;
                          --v905;
                        }

                        while (v905);
                        v895 = ++v896;
                      }

                      v902 += 172;
                      v900 += 43;
                      --v901;
                    }

                    while (v901);
                  }

                  v897 += 172 * v891;
                  v898 += 172 * v891;
                  --v899;
                }

                while (v899);
                LOBYTE(v1140[3]) = v895;
              }

              v907 = 0;
              v908 = v882 + 16 * v894;
              do
              {
                v909 = &v1132 + v907;
                v910 = *(&v1136[-1] + v907);
                if (v910)
                {
                  v911 = *(v909 + 28);
                  v912 = v910 >> 1;
                  if (v911 < 0)
                  {
                    v912 = -v912;
                  }

                  *(v909 + 28) = (v912 + v911) / v910;
                }

                v907 += 4;
              }

              while (v907 != 56);
              sub_10000B394(a3 + 284, &v1132, v908);
              v892 = *(a3 + 32);
              LOWORD(v891) = *(a3 + 32);
              v872 = v893++ < (v892 - v888);
            }

            while (v872);
            v890 = *(a3 + 34);
          }

          else
          {
            v892 = v891;
          }

          v891 = v892;
          v872 = v887++ < v890 - v1120;
        }

        while (v872);
      }
    }

    v880 = 0;
    v878 = 1;
  }

  while ((v1079 & 1) != 0);
  v913 = *(a3 + 12);
  if (v913 >= 5)
  {
    sub_10001B338();
  }

  v914 = *(a3 + 34);
  v915 = v914 * *(a3 + 32);
  v916 = (a3 + 463652);
  if (v915)
  {
    v917 = qword_10001FF60[v913];
    v918 = v914 * *(a3 + 32);
    do
    {
      v919 = v916;
      v920 = v917;
      do
      {
        v919[2561] = *v919;
        v919[2565] = v919[4];
        v919[2569] = v919[8];
        ++v919;
        --v920;
      }

      while (v920);
      v916 += 12;
      --v918;
    }

    while (v918);
  }

  *(a3 + 487232) = *(a3 + 6861);
  *(a3 + 487236) = *(a3 + 6865);
  if (*(a3 + 6860))
  {
    v921 = a3 + 486700;
    v922 = *v1006;
    if (v915 && v922 <= 0x7F)
    {
      v923 = (v921 + 4 * v922);
      v924 = v915 - 1;
      v925 = a3 + 473896;
      do
      {
        sub_10000B5E0(*(a3 + 12), v925);
        LOWORD(v922) = *v1006;
        if (v926 >= 0.0)
        {
          *v923++ = v926;
          LOWORD(v922) = v922 + 1;
          *v1006 = v922;
        }

        if (!v924)
        {
          break;
        }

        v925 += 48;
        --v924;
      }

      while (v922 < 0x80u);
    }

    if (v922)
    {
      qsort((a3 + 486700), v922, 4uLL, sub_10000B73C);
      v927 = 0;
      v928 = *v1006;
      do
      {
        v929 = (42949673 * (*(a3 + 487232 + v927) * v928 + 50)) >> 32;
        if (v929 >= v928)
        {
          LODWORD(v929) = v928 - 1;
        }

        *(a3 + 487212 + 4 * v927++) = *(v921 + 4 * v929);
      }

      while (v927 != 5);
    }

    v930 = 0;
    v931 = a3 + 6868;
    while (2)
    {
      v932 = 0;
      do
      {
        v933 = *(v931 + 4 * v932);
        if (v933 < 0.0)
        {
          goto LABEL_1285;
        }

        v934 = *(a3 + 487212 + 4 * v932);
        if (v932 > 3)
        {
          break;
        }

        ++v932;
      }

      while (v933 <= v934);
      if (v933 > v934)
      {
LABEL_1285:
        if (*(v1006 + 544) >= 5u)
        {
          sub_10001B364();
        }

        break;
      }

      *(v1006 + 544) = ++v930;
      v931 += 20;
      if (v930 != 4)
      {
        continue;
      }

      break;
    }
  }

  if (*(a3 + 400))
  {
    v935 = *(a3 + 404);
    if (*(v1006 + 544) && v935 > *(a3 + 408))
    {
      v935 = *(a3 + 408);
    }
  }

  else
  {
    v935 = 0.0;
  }

  v936 = 0;
  v937 = ((*(a3 + 292) * *(a3 + 288)) * *(a3 + 296)) * -0.5;
  v938 = 1;
  do
  {
    v1121 = v938;
    v939 = *(v1050 + 4 * v936);
    if (v939 >= 1)
    {
      v940 = *(a3 + 34);
      v941 = v940 - v939;
      if (v940 >= v939)
      {
        v942 = 0;
        v943 = a3 + 480040;
        v944 = *(a3 + 469796);
        v945 = a3 + 473896;
        v946 = v1029 + (v936 << 11);
        v947 = a3 + 360 + 20 * v936;
        v948 = v936 << 6;
        v949 = *(a3 + 32);
        v1102 = v949 - v939;
        v950 = *(a3 + 32);
        v1043 = v940 - v939;
        v1036 = v949;
        while (v949 < v939)
        {
LABEL_1360:
          v945 += 48 * v950;
          v946 += 16 * v950;
          v943 += 52 * v950;
          _ZF = v942++ == v941;
          if (_ZF)
          {
            goto LABEL_1362;
          }
        }

        v1098 = v942;
        v951 = 0;
        *v1066 = v945;
        v1080 = v946;
        v1058 = v943;
        while (1)
        {
          sub_10000B5E0(*(a3 + 12), v945);
          if (*(a3 + 344))
          {
            v953 = *(v946 + 12) ? v879 & 0xFFFFFFFE : (v879 & 0xFFFFFFFE) + 1;
          }

          else
          {
            v953 = v879 & 0xFFFFFFFE;
          }

          if (*(a3 + 348))
          {
            v954 = *(v946 + 8);
            v955 = vcvts_n_f32_s32(v954, 4uLL) + v944;
            v956 = *(a3 + 356);
            v957 = v953 & 0xFFFFFFFB | (4 * (v955 >= v956));
            if (v954 >= -1024 && v955 < v956)
            {
              v957 = v953 & 0xFFFFFFFB | (4 * (v955 <= *(a3 + 352)));
            }
          }

          else
          {
            v957 = v953 & 0xFFFFFFFB;
          }

          if (*v947)
          {
            v958 = *(v947 + 4);
            if (v958 <= 1)
            {
              v958 = 1;
            }

            v959 = *(v946 + 4);
            v960 = *v946 / v958;
            v961 = (*(v946 + 8) * 0.0625) - v937;
            if (v961 < 0.0)
            {
              v961 = -v961;
            }

            v962 = ((1.0 - ((v961 + -16.0) * 0.0625)) * 20.0) + (((v961 + -16.0) * 0.0625) * 10.0);
            if (v961 > 32.0)
            {
              v962 = 10.0;
            }

            if (v961 <= 16.0)
            {
              v962 = ((1.0 - ((v961 + -8.0) * 0.125)) * 40.0) + (((v961 + -8.0) * 0.125) * 20.0);
            }

            v963 = v961 > 8.0 ? v962 : 40.0;
            v964 = (*(v947 + 8) * ((sqrtf(v960) * v963) + 0.5)) >> 8;
            v965 = v960 >= *(v947 + 16) || v959 >= *(v947 + 12);
            v966 = v965 && v959 >= v964;
            v967 = v966 ? 0 : 8;
            v968 = v967 | v957 & 0xFFFFFFF7;
          }

          else
          {
            v968 = v957 & 0xFFFFFFF7;
          }

          v969 = *(a3 + 400) ? v968 & 0xFFFFFFEF | (16 * (v952 >= v935)) : v968 & 0xFFFFFFEF;
          LODWORD(v879) = v969 & 0xFFFFFFDD;
          v970 = *(v946 + 8) * 0.0625;
          if (v939 != 1)
          {
            break;
          }

          if ((v1121 & 1) == 0)
          {
            sub_10001B3E8();
          }

          *v943 = *v946;
          *(v943 + 8) = v970;
          *(v943 + 12) = v952;
          *(v943 + 16) = 0;
          *(v943 + 20) = v969 & 0xDD;
          v971 = ~(2 * v969) & 0x20;
          if ((v969 & 0xD) != 0)
          {
            v971 = 0;
          }

          *(v943 + 20) = v971 | v969 & 0x1D;
LABEL_1357:
          v946 += 16;
          v945 += 48;
          v943 += 52;
          _ZF = v951++ == v1102;
          if (_ZF)
          {
            v950 = *(a3 + 32);
            v941 = v1043;
            v942 = v1098;
            v945 = *v1066;
            v946 = v1080;
            v949 = v1036;
            v943 = v1058;
            goto LABEL_1360;
          }
        }

        if (v1121)
        {
          sub_10001B3BC();
        }

        if ((v969 & 0xD) != 0)
        {
          goto LABEL_1357;
        }

        v972 = *(v946 + 12);
        v973 = v939;
        v974 = v943;
LABEL_1342:
        v975 = (v974 + 20);
        v976 = v939;
        while (1)
        {
          v977 = *v975;
          if (((*v975 & 0x10) != 0 || (*v975 & 1) != 0 && (v939 * v939) >> 1 >= v972) && !*(a3 + 324))
          {
            goto LABEL_1355;
          }

          if (*(a3 + 342) == 1)
          {
            if ((*v975 & 0x20) != 0 && *(v975 - 3) <= v970)
            {
              goto LABEL_1355;
            }
          }

          else
          {
            if (*(a3 + 342))
            {
              sub_10001B390();
            }

            if ((*v975 & 0x20) != 0 && *(v975 - 3) >= v970)
            {
              goto LABEL_1355;
            }
          }

          *(v975 - 5) = *v946;
          *(v975 - 3) = v970;
          *v975 = v977 & 0x33 | v948 | 0x20;
LABEL_1355:
          v975 += 13;
          if (!--v976)
          {
            v974 += 52 * *(a3 + 32);
            if (!--v973)
            {
              goto LABEL_1357;
            }

            goto LABEL_1342;
          }
        }
      }
    }

LABEL_1362:
    v938 = 0;
    v936 = 1;
  }

  while ((v1121 & 1) != 0);
  if (*(a3 + 412))
  {
    if (*(a3 + 608))
    {
      v978 = *(a3 + 34) * *(a3 + 32);
      if (v978)
      {
        v979 = a3 + 480048;
        do
        {
          if (*(a3 + 413) && (*(v979 + 36) & 0x20) == 0)
          {
            *(v979 + 12) = *(v979 + 12) & 0xDD | 2;
          }

          if ((*(v979 + 12) & 0x20) != 0)
          {
            v980 = *v979;
            if ((*v979 <= 0.0 || *(v979 + 24) >= 0.0) && (v980 >= 0.0 || *(v979 + 24) <= 0.0))
            {
              v981 = v980 >= 0.0 ? *v979 : -v980;
              if (v981 > 1.0)
              {
                v982 = *(v979 + 24);
                if (v982 >= 0.0)
                {
                  v983 = *(v979 + 24);
                }

                else
                {
                  v983 = -v982;
                }

                if (v983 <= v981)
                {
                  v984 = sub_10000B754(a3 + 480, v981);
                  if (v982 == 0.0)
                  {
                    v986 = 1.0;
                  }

                  else
                  {
                    v986 = v983;
                  }

                  v985 = v981 / v986;
                }

                else
                {
                  v984 = sub_10000B754(a3 + 544, v981);
                  v985 = v983 / v981;
                }

                v987 = powf(v985, v984);
                v988 = v987 * sub_10000B754(a3 + 416, *(v979 + 16));
                *v979 = (v982 * v988) + (v980 * (1.0 - v988));
                *(v979 + 8) = v988;
              }
            }
          }

          v979 += 52;
          --v978;
        }

        while (v978);
      }
    }
  }

  return sub_100007A80(a3);
}

uint64_t sub_100007A80(uint64_t result)
{
  if (*(result + 712))
  {
    v1 = *(result + 713);
    v2 = *(result + 714) == v1 ? 1 : *(result + 714) - v1;
    v3 = *(result + 34);
    if (*(result + 34))
    {
      v4 = 0;
      v5 = *(result + 272);
      v6 = result + 480040;
      v7 = *(result + 280);
      v8 = *(result + 262);
      v35 = *(result + 268);
      v9 = *(result + 32);
      v10 = (((v2 + ((v2 & 0x8000) >> 15)) >> 1) + 0x10000) / v2;
      do
      {
        v11 = v5 >> 8;
        v12 = v7 + v5;
        v13 = (v7 + v5 + 255) >> 8;
        v14 = (v5 >> 8) & ~(v5 >> 31);
        if (v11 > v8)
        {
          v14 = v8;
        }

        v15 = v13 & ~((v12 + 255) >> 31);
        if (v13 > v8)
        {
          v15 = v8;
        }

        v16 = v15 - v14;
        if (v15 < v14)
        {
          v16 = 0;
        }

        if (v9)
        {
          v17 = 0;
          v18 = *(result + 276);
          v19 = *(result + 260);
          v20 = *(result + 264);
          v21 = v35;
          do
          {
            v22 = 0;
            v23 = v21 >> 8;
            v24 = (v21 >> 8) & ~(v21 >> 31);
            v21 += v18;
            v25 = (v21 + 255) >> 8;
            if (v23 <= v19)
            {
              v26 = v24;
            }

            else
            {
              v26 = v19;
            }

            if (v25 <= v19)
            {
              v27 = v25 & ~((v21 + 255) >> 31);
            }

            else
            {
              v27 = v19;
            }

            LODWORD(v28) = v27 - v26;
            if (v27 >= v26)
            {
              v28 = v28;
            }

            else
            {
              v28 = 0;
            }

            if (v15 > v14)
            {
              v22 = 0;
              v29 = result + 715 + v14 * v20 + v26;
              v30 = v16;
              do
              {
                if (v27 > v26)
                {
                  v31 = 0;
                  do
                  {
                    v32 = *(v29 + v31);
                    if (v32 <= v1)
                    {
                      v32 = v1;
                    }

                    v22 += v32;
                    ++v31;
                  }

                  while (v31 < v28);
                }

                v29 += v20;
                v33 = __OFSUB__(v30--, 1);
              }

              while (!((v30 < 0) ^ v33 | (v30 == 0)));
              if (v27 > v26)
              {
                v22 /= v28 * v16;
              }
            }

            v34 = (((v22 - v1) * v10) >> 8) & ~(((v22 - v1) * v10) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            *(v6 + 48) = v34;
            v6 += 52;
            ++v17;
          }

          while (v17 != v9);
        }

        ++v4;
        v5 = v12;
      }

      while (v4 != v3);
    }
  }

  return result;
}

uint64_t sub_100007C3C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a1)
  {
    sub_10001B574();
  }

  if (!a2)
  {
    sub_10001B548();
  }

  if (!a3)
  {
    sub_10001B51C();
  }

  bzero(a3 + 117450, 0x4424uLL);
  a3[117449] = a3[71];
  v6 = a3[1];
  if (v6 <= 1)
  {
    if (!v6)
    {
      v10 = a1;
      v11 = 0;
      v8 = a2;
      v9 = 0;
      return sub_10000181C(&v10, &v8, a3);
    }

    if (v6 == 1)
    {
      sub_10001B4C4();
    }

LABEL_19:
    sub_10001B4F0();
  }

  if (v6 != 3)
  {
    if (v6 == 2)
    {
      sub_10001B498();
    }

    if (v6 == 4)
    {
      sub_10001B46C();
    }

    goto LABEL_19;
  }

  v10 = 0;
  v11 = 0;
  v8 = a1;
  v9 = a2;
  return sub_10000181C(&v10, &v8, a3);
}

void sub_100007D3C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          bzero(a4 + 117450, 0x4424uLL);
          a4[117449] = a4[71];
          v5 = a4[1];
          if (v5 <= 1)
          {
            if (!v5)
            {
              __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5331, "false");
            }

            if (v5 == 1)
            {
              __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5335, "false");
            }
          }

          else
          {
            switch(v5)
            {
              case 2:
                __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5339, "false");
              case 3:
                __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5343, "false");
              case 4:
                __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5347, "false");
            }
          }

          __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5351, "false");
        }

        __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5326, "pContext != nullptr");
      }

      __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5325, "pIn2 != nullptr");
    }

    __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5324, "pIn1 != nullptr");
  }

  __assert_rtn("Process_x3", "PDAFPixelEngine.cpp", 5323, "pIn0 != nullptr");
}

uint64_t sub_100007EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (!a1)
  {
    sub_10001B72C();
  }

  if (!a2)
  {
    sub_10001B700();
  }

  if (!a3)
  {
    sub_10001B6D4();
  }

  if (!a4)
  {
    sub_10001B6A8();
  }

  if (!a5)
  {
    sub_10001B67C();
  }

  bzero(a5 + 117450, 0x4424uLL);
  a5[117449] = a5[71];
  v10 = a5[1];
  if (v10 != 1)
  {
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        sub_10001B5CC();
      }

      if (v10 == 4)
      {
        sub_10001B5A0();
      }
    }

    else
    {
      if (!v10)
      {
        sub_10001B624();
      }

      if (v10 == 2)
      {
        sub_10001B5F8();
      }
    }

    sub_10001B650();
  }

  v13[0] = a1;
  v13[1] = a3;
  v12[0] = a2;
  v12[1] = a4;
  return sub_10000181C(v13, v12, a5);
}

unsigned int *sub_100008008(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = result + 6;
  v9 = 0uLL;
  v10 = 1;
  v43 = result;
  do
  {
    v11 = v10;
    v12 = a4 + 112 * v6;
    *(v12 + 80) = v9;
    *(v12 + 96) = v9;
    *(v12 + 48) = v9;
    *(v12 + 64) = v9;
    *(v12 + 16) = v9;
    *(v12 + 32) = v9;
    *v12 = v9;
    v13 = *result;
    v14 = &v8[12 * v6];
    *v12 = v13;
    *(v12 + 36) = -1;
    *(v12 + 76) = -1;
    v16 = v14[2].u32[0];
    v15 = v14[2].u32[1];
    v18 = v14[1].u32[0];
    v17 = v14[1].u32[1];
    v19 = v16 - v18;
    if (v16 <= v18 || v15 <= v17)
    {
      goto LABEL_51;
    }

    v21 = v15 - v17;
    *(v12 + 4) = v21;
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        if (v13 != 3)
        {
          if (v13 != 4)
          {
            goto LABEL_76;
          }

          if (v14[3].i32[0])
          {
            sub_10001B758();
          }

          if (v14[3].i32[1] != 2)
          {
            sub_10001B784();
          }

          v22 = 0;
          v23 = 2;
LABEL_19:
          *(v12 + 72) = v19;
          *(v12 + 76) = 0;
          *(v12 + 80) = v23;
          *(v12 + 32) = v19;
          *(v12 + 36) = 1;
          v24 = v19;
          *(v12 + 40) = v22;
          goto LABEL_26;
        }

        goto LABEL_16;
      }

      if (v14[3].i32[0])
      {
        sub_10001B7B0();
      }

      if (v14[3].i32[1] != -1)
      {
        sub_10001B7DC();
      }

      v25 = 0;
LABEL_25:
      v24 = 0;
      *(v12 + 32) = v19;
      *(v12 + 36) = 0;
      *(v12 + 40) = v25;
      *(v12 + 72) = 0xFFFFFFFF00000000;
      *(v12 + 80) = -1;
      goto LABEL_26;
    }

    if (!v13)
    {
      v25 = v14[3].u32[0];
      if (v25 >= 2)
      {
        sub_10001BA18();
      }

      if (v14[3].i32[1] != -1)
      {
        sub_10001B860();
      }

      goto LABEL_25;
    }

    if (v13 != 1)
    {
LABEL_76:
      sub_10001BA44();
    }

LABEL_16:
    v22 = v14[3].u32[0];
    if (v22 >= 2)
    {
      sub_10001B834();
    }

    v23 = v14[3].i32[1];
    if ((v23 - 4) <= 0xFFFFFFFD)
    {
      sub_10001B808();
    }

    if (v13 != 1)
    {
      goto LABEL_19;
    }

    *(v12 + 32) = v19;
    *(v12 + 36) = 0;
    *(v12 + 40) = v22;
    *(v12 + 72) = v19;
    *(v12 + 76) = 1;
    v24 = v19;
    *(v12 + 80) = v23;
LABEL_26:
    if (v21 != result[2])
    {
      sub_10001B88C();
    }

    v26 = *(a2 + 8 * v6);
    if (!v26)
    {
      sub_10001B9EC();
    }

    v27 = v14[5];
    v28 = vshr_n_u32(v27, 1uLL);
    *&v29 = v28.u32[0];
    *(&v29 + 1) = v28.u32[1];
    *(v12 + 8) = v29;
    if (v27.i32[0] <= 1u)
    {
      sub_10001B9C0();
    }

    if (v27.i32[1] <= 1u)
    {
      sub_10001B994();
    }

    if (v13 <= 1)
    {
      if (v13)
      {
        v33 = v26 + v14[4].u32[1];
        *(v12 + 56) = v33;
        v31 = v33 + 2 * v28.u32[0];
      }

      else
      {
LABEL_35:
        v31 = 0;
        *(v12 + 56) = v26 + v14[4].u32[1];
      }

      v32 = 96;
      goto LABEL_38;
    }

    if (v13 == 2)
    {
      goto LABEL_35;
    }

    if (v13 != 3)
    {
      sub_10001B8B8();
    }

    v30 = v26 + v14[4].u32[1];
    *(v12 + 96) = v30;
    v31 = v30 + 2 * v28.u32[0];
    v32 = 56;
LABEL_38:
    *(v12 + v32) = v31;
    v34 = *(a3 + 8 * v6);
    if (!v34)
    {
      sub_10001B968();
    }

    v46 = v24;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    sub_1000086DC(v13, &v8[12 * v6], 6, &v49, &v48, &v47);
    *(v12 + 24) = v49 >> 1;
    *(v12 + 48) = 0;
    *(v12 + 88) = 0;
    v36 = sub_100008850(v13, v35);
    if (v13 > 1)
    {
      v9 = 0uLL;
      if (v13 == 3)
      {
LABEL_43:
        v38 = v14[1].u32[1];
        if (v36 > v38)
        {
          *(v12 + 48) = v36 - v38;
        }

        v39 = v14->u32[1] + ~v36;
        v40 = v39 >= v38;
        v41 = v39 - v38;
        if (v40)
        {
          *(v12 + 88) = v41;
        }

        *(v12 + 64) = v34 + v48;
        v37 = v34 + v47;
        goto LABEL_49;
      }
    }

    else
    {
      v9 = 0uLL;
      if (v13)
      {
        goto LABEL_43;
      }
    }

    v37 = 0;
    *(v12 + 64) = v34 + v48;
LABEL_49:
    result = v43;
    *(v12 + 104) = v37;
    if (!*(v12 + 24))
    {
      sub_10001B93C();
    }

    v7 += v46;
    v5 += v19;
LABEL_51:
    v10 = 0;
    v6 = 1;
  }

  while ((v11 & 1) != 0);
  v42 = result[1];
  if (v5 && v5 != v42)
  {
    sub_10001B910();
  }

  if (v7)
  {
    if (v7 != v42)
    {
      sub_10001B8E4();
    }
  }

  return result;
}

unint64_t sub_1000083D8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = result + 24;
  v9 = 0uLL;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = a3 + 80 * v6;
    *(v12 + 48) = v9;
    *(v12 + 64) = v9;
    *(v12 + 16) = v9;
    *(v12 + 32) = v9;
    *v12 = v9;
    v13 = *v4;
    v14 = (v8 + 48 * v6);
    *v12 = v13;
    *(v12 + 20) = -1;
    *(v12 + 52) = -1;
    v15 = v14[4];
    v16 = v14[5];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v15 >= v18;
    v20 = v15 - v18;
    if (v20 == 0 || !v19 || v16 <= v17)
    {
      goto LABEL_37;
    }

    v22 = v16 - v17;
    *(v12 + 4) = v22;
    if (v13 <= 1)
    {
      if (v13)
      {
        if (v13 != 1)
        {
LABEL_58:
          sub_10001BA44();
        }

LABEL_16:
        v23 = v14[6];
        if (v23 >= 2)
        {
          sub_10001B834();
        }

        v24 = v14[7];
        if ((v24 - 4) <= 0xFFFFFFFD)
        {
          sub_10001B808();
        }

        if (v13 == 1)
        {
          *(v12 + 16) = v20;
          *(v12 + 20) = 0;
          *(v12 + 24) = v23;
          *(v12 + 48) = v20;
          *(v12 + 52) = 1;
          v25 = v20;
          *(v12 + 56) = v24;
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      v26 = v14[6];
      if (v26 >= 2)
      {
        sub_10001BA18();
      }

      if (v14[7] != -1)
      {
        sub_10001B860();
      }

LABEL_25:
      v25 = 0;
      *(v12 + 16) = v20;
      *(v12 + 20) = 0;
      *(v12 + 24) = v26;
      *(v12 + 48) = 0xFFFFFFFF00000000;
      *(v12 + 56) = -1;
      goto LABEL_26;
    }

    if (v13 == 2)
    {
      if (v14[6])
      {
        sub_10001B7B0();
      }

      if (v14[7] != -1)
      {
        sub_10001B7DC();
      }

      v26 = 0;
      goto LABEL_25;
    }

    if (v13 == 3)
    {
      goto LABEL_16;
    }

    if (v13 != 4)
    {
      goto LABEL_58;
    }

    if (v14[6])
    {
      sub_10001B758();
    }

    if (v14[7] != 2)
    {
      sub_10001B784();
    }

    v23 = 0;
    v24 = 2;
LABEL_19:
    *(v12 + 48) = v20;
    *(v12 + 52) = 0;
    *(v12 + 56) = v24;
    *(v12 + 16) = v20;
    *(v12 + 20) = 1;
    v25 = v20;
    *(v12 + 24) = v23;
LABEL_26:
    if (v22 != v4[2])
    {
      sub_10001BA70();
    }

    v27 = *(a2 + 8 * v6);
    if (!v27)
    {
      sub_10001B968();
    }

    v7 += v25;
    v36 = 0;
    v37 = 0;
    v5 += v20;
    v35 = 0;
    sub_1000086DC(v13, (v8 + 48 * v6), 8, &v37, &v36, &v35);
    *(v12 + 8) = v37 >> 1;
    *(v12 + 32) = 0;
    *(v12 + 64) = 0;
    result = sub_100008850(v13, v28);
    v9 = 0uLL;
    if (((1 << v13) & 0x1A) != 0)
    {
      v29 = v14[3];
      if (result > v29)
      {
        *(v12 + 32) = result - v29;
      }

      v30 = v14[1] + ~result;
      v19 = v30 >= v29;
      v31 = v30 - v29;
      if (v19)
      {
        *(v12 + 64) = v31;
      }

      *(v12 + 40) = v27 + v36;
      v32 = v27 + v35;
    }

    else
    {
      v32 = 0;
      *(v12 + 40) = v27 + v36;
    }

    *(v12 + 72) = v32;
    if (!*(v12 + 8))
    {
      sub_10001B93C();
    }

LABEL_37:
    v10 = 0;
    v6 = 1;
  }

  while ((v11 & 1) != 0);
  v33 = v4[1];
  if (v5 && v5 != v33)
  {
    sub_10001BAC8();
  }

  if (v7)
  {
    if (v7 != v33)
    {
      sub_10001BA9C();
    }
  }

  return result;
}

unint64_t sub_1000086DC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = a1;
  result = sub_100008850(a1, a2);
  if (v11 > 2)
  {
    if ((v11 - 3) >= 2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!v11)
    {
      v13 = 0;
      v25 = *a2 * a3;
      *a4 = v25;
      v15 = a2[2] * a3 + v25 * 2 * a2[3];
      goto LABEL_15;
    }

    if (v11 != 1)
    {
      if (v11 == 2)
      {
        v13 = 0;
        v14 = 2 * a3 * *a2;
        *a4 = v14;
        v15 = v14 * a2[3] + 2 * a2[2] * a3;
LABEL_15:
        *a5 = v15;
        goto LABEL_16;
      }

LABEL_19:
      sub_10001BB4C();
    }
  }

  v16 = a2[1];
  if (v16 <= 3)
  {
    sub_10001BB20();
  }

  v17 = a2[3];
  if (v17 >= v16)
  {
    sub_10001BAF4();
  }

  v18 = a3 << (v11 == 4);
  *a4 = v18 * *a2;
  *a5 = 0;
  v19 = 2 * v17 - result;
  if (result > v17)
  {
    v19 = v17;
  }

  *a5 = *a4 * v19;
  v20 = v16 + ~v17;
  v21 = *a4 * (2 * v16 - 1);
  *a6 = v21;
  v22 = v21 + *a4 * (result - 2 * v20);
  v23 = v21 - *a4 * v20;
  if (result <= v20)
  {
    v23 = v22;
  }

  *a6 = v23;
  v24 = v18 * a2[2];
  *a5 += v24;
  v13 = *a6 + v24;
LABEL_16:
  *a6 = v13;
  return result;
}

uint64_t sub_100008850(uint64_t a1, uint64_t a2)
{
  if (a1 >= 5)
  {
    sub_10001BB78();
  }

  return qword_10001FF38[a1];
}

uint64_t sub_100008878(uint64_t result)
{
  v1 = *result;
  if (*result <= 1)
  {
    if (!v1)
    {
      v4 = *(result + 36);
      LODWORD(v5) = vadd_s32(v4, 0x100000001).u32[0];
      v6 = *(result + 64) + 2 * *(result + 24);
      *(result + 56) += 2 * *(result + 8 * (v4.i8[0] & 1) + 8);
      *(result + 64) = v6;
      HIDWORD(v5) = veor_s8(*&v4, 0x100000001).i32[1];
      *(result + 36) = v5;
      return result;
    }

    if (v1 != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (v1 != 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        sub_10001BBA4();
      }

LABEL_15:
      sub_10001BBD0();
    }

LABEL_8:
    v2 = *(result + 48);
    *(result + 56) += 2 * *(result + 8) + 2 * *(result + 16);
    if (v2)
    {
      *(result + 48) = v2 - 1;
      v3 = *(result + 64) + 2 * *(result + 24);
    }

    else
    {
      v3 = *(result + 64) + 4 * *(result + 24);
    }

    *(result + 64) = v3;
    v9 = *(result + 36) + 2;
    goto LABEL_14;
  }

  v7 = *(result + 36);
  v8 = *(result + 64) + 2 * *(result + 24);
  *(result + 56) += 2 * *(result + 8 * (v7 & 1) + 8);
  *(result + 64) = v8;
  v9 = v7 + 1;
LABEL_14:
  *(result + 36) = v9;
  return result;
}

unsigned __int16 *sub_10000897C(unsigned __int16 *result, uint64_t a2, int a3, int *a4, int *a5, uint64_t a6, _DWORD *a7)
{
  v7 = *a4;
  v8 = *(result + 1);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 3);
    v11 = a6 - 404;
    v12 = a4[2];
    v14 = *(a4 + 3);
    v13 = *(a4 + 4);
    v15 = v8 + 1;
    v16 = *(a5 + 3);
    result = *(a5 + 4);
    v17 = *(a2 + 4);
    do
    {
      if (!v7)
      {
        v12 = a5[2];
        v7 = *a5;
        v13 = result;
        v14 = v16;
      }

      if (v9)
      {
        v18 = 0;
      }

      else
      {
        v9 = v10;
        v18 = 404;
      }

      v11 += v18;
      v19 = *v14;
      v20 = v14[1] >> 4;
      v21 = *v13;
      ++*(v11 + 384);
      *(v11 + 388) += v20;
      *(v11 + 396) += v20 * v20;
      if ((v21 & 4) == 0)
      {
        v22 = v13[1];
        v23 = v22 & 7;
        if ((v21 & 1) != 0 || (((v22 & 7u) < 6) & (v21 >> 1)) != 0)
        {
          v40 = v19 >> 4;
          v41 = (v11 + 12 * v12);
          v42.i32[0] = 1;
          v42.i32[1] = v20;
          v41[42] = vadd_s32(v41[42], v42);
          v41[43].i32[0] += v40;
        }

        else
        {
          v24 = v23 > 5;
          v25 = v21;
          v26 = v13[2];
          v27 = (v26 & 0xF) + 1;
          v28 = v26 >> 4;
          v29 = v21 >> 3;
          v30 = v13[1] >> 3;
          if (v30 >= 0)
          {
            LOWORD(v31) = v13[1] >> 3;
          }

          else
          {
            v31 = -v30;
          }

          if (v29 < 0)
          {
            v29 = -v29;
          }

          v32 = v23 - v24;
          v33 = (16 * (v31 & 0xFFFu)) >> v24 >> 1;
          v34 = ((v27 >> 1) * v28 * v33) >> 15 << v17;
          if (v34 <= -32768)
          {
            v34 = -32768;
          }

          if (v34 >= 0x7FFF)
          {
            v34 = 0x7FFF;
          }

          v35 = ((v34 * v33) >> 15);
          v36 = ((v34 * 8 * (v29 & 0xFFF)) >> 15);
          if ((v30 ^ (v25 >> 3)) >= 0)
          {
            v37 = v32 + 7;
          }

          else
          {
            v37 = v32;
          }

          v38 = (v11 + 24 * v37);
          v39 = v38[1];
          *v38 += v27;
          v38[1] = v39 + v35;
          v38[2] += v36;
        }
      }

      v14 += 2;
      v13 += 3;
      --v7;
      --v9;
      ++*a7;
      v12 ^= a3;
      --v15;
    }

    while (v15 > 1);
  }

  if (v7)
  {
    sub_10001B230();
  }

  return result;
}

void sub_100008B90(int16x8_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v7 = *a4;
  v8 = a1->i32[1];
  if (v8 < 1)
  {
    goto LABEL_34;
  }

  v9 = 0;
  v10 = vdupq_n_s16(*(a2 + 4));
  v11 = a1->i32[3];
  if (v7)
  {
    v12 = a4;
  }

  else
  {
    v12 = a5;
  }

  v13 = *(v12 + 8);
  v14 = a6 - 404;
  v16 = *(a4 + 24);
  v15 = *(a4 + 32);
  v17 = v68;
  v18.i64[0] = 0x2000200020002;
  v18.i64[1] = 0x2000200020002;
  v19.i64[0] = 0x4000400040004;
  v19.i64[1] = 0x4000400040004;
  v20.i64[0] = 0x7000700070007;
  v20.i64[1] = 0x7000700070007;
  v21.i64[0] = 0xF000F000F000FLL;
  v21.i64[1] = 0xF000F000F000FLL;
  v22.i64[0] = 0x5000500050005;
  v22.i64[1] = 0x5000500050005;
  v23.i64[0] = 0x1000100010001;
  v23.i64[1] = 0x1000100010001;
LABEL_6:
  v24 = *(a5 + 24);
  v25 = *(a5 + 32);
  v26 = *a5;
  if (!v7)
  {
    v7 = *a5;
    v15 = *(a5 + 32);
    v16 = *(a5 + 24);
  }

  if (v7 > 7)
  {
    v27 = 8;
LABEL_11:
    v73 = vld2q_s16(v16);
    v16 += 16;
    v7 -= v27;
    v74 = vld3q_s16(v15);
    v15 += 24;
    goto LABEL_23;
  }

  v27 = v8;
  if (v7 == v8)
  {
    goto LABEL_11;
  }

  if (v7 < 1)
  {
    sub_10001B180();
  }

  v28 = 0;
  v29 = 2 * v7;
  do
  {
    v30 = &v16[v28];
    v67[0].i16[v28 / 2] = *v30;
    v72.i16[v28 / 2] = v30[1];
    v71.i16[v28 / 2] = *v15;
    v70.i16[v28 / 2] = v15[1];
    v69.i16[v28 / 2] = v15[2];
    v15 += 3;
    v28 += 2;
  }

  while (v29 != v28);
  if (v8 >= 8)
  {
    v31 = 8;
  }

  else
  {
    v31 = v8;
  }

  if (v7 < v31)
  {
    v66 = v17;
    v32 = 0;
    v33 = 0;
    v34 = &v69.i8[v29];
    v35 = &v70.i8[v29];
    v36 = &v71.i8[v29];
    v37 = &v72.i8[v29];
    v38 = &v67[0].i8[v29];
    v39 = v7;
    do
    {
      v40 = &v24[v33];
      *&v38[v33] = *v40;
      *&v37[v33] = v40[1];
      *&v36[v33] = *v25;
      *&v35[v33] = v25[1];
      *&v34[v33] = v25[2];
      v25 += 3;
      v33 += 2;
      ++v39;
      v32 += 4;
    }

    while (v31 > v39);
    v24 = (v24 + v32);
    v17 = v66;
  }

  v73.val[0] = v67[0];
  v73.val[1] = v72;
  v74.val[1] = v70;
  v74.val[0] = v71;
  v7 += v26 - v31;
  v15 = v25;
  v16 = v24;
  v74.val[2] = v69;
LABEL_23:
  v41 = 0;
  v42 = vceqzq_s16(vandq_s8(v74.val[0], v19));
  v43 = vandq_s8(v74.val[1], v20);
  v44 = vshrq_n_u16(v73.val[0], 4uLL);
  v45 = vshrq_n_u16(v73.val[1], 4uLL);
  v46 = vshrq_n_s16(v74.val[1], 3uLL);
  v47 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v74.val[0], 3uLL)), 4uLL);
  v48 = vcgtq_u16(v43, v22);
  v49 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v46), 4uLL), v48);
  v50 = vandq_s8(vaddq_s16(vandq_s8(v74.val[2], v21), vbicq_s8(v23, v74.val[0])), vorrq_s8(v48, vceqzq_s16(vandq_s8(v74.val[0], v18))));
  v51 = vaddq_s16(vaddq_s16(v43, v48), vandq_s8(veorq_s8(vcltzq_s16(v74.val[0]), vcgezq_s16(v46)), v20));
  v52 = vshrq_n_u16(v49, 1uLL);
  v53 = vqshlq_s16(vqdmulhq_s16(v52, vmulq_s16(vshrq_n_u16(v50, 1uLL), vshrq_n_u16(v74.val[2], 4uLL))), v10);
  v54 = vceqzq_s16(v50);
  v67[0] = v51;
  v67[1] = vornq_s8(vandq_s8(v50, v42), v42);
  v68[0] = vbslq_s8(v54, v45, vqdmulhq_s16(v53, v52));
  v68[1] = vbslq_s8(v54, v44, vqdmulhq_s16(v53, vshrq_n_u16(v47, 1uLL)));
  v72 = v45;
  v55 = v17;
  while (1)
  {
    if (v9)
    {
      v56 = 0;
    }

    else
    {
      v9 = v11;
      v56 = 404;
    }

    v14 += v56;
    v57 = *(v55 - 16);
    v58 = *(v55 - 8);
    v59 = *v55;
    v60 = v55[8];
    ++*(v14 + 384);
    v61 = v72.u16[v41];
    *(v14 + 388) += v61;
    *(v14 + 396) += v61 * v61;
    if (v58)
    {
      if (v58 != 0xFFFF)
      {
        v62 = (v14 + 24 * v57);
        v63 = v62[1];
        *v62 += v58;
        v62[1] = v63 + v59;
        v62[2] += v60;
      }
    }

    else
    {
      v64 = (v14 + 12 * v13);
      v65.i32[0] = 1;
      v65.i32[1] = v59;
      v64[42] = vadd_s32(v64[42], v65);
      v64[43].i32[0] += v60;
    }

    ++*a7;
    if (v8 - 1 == v41)
    {
      break;
    }

    ++v55;
    v13 ^= a3;
    --v9;
    if (++v41 == 8)
    {
      v8 -= 8;
      if (v8 + 1 > 1)
      {
        goto LABEL_6;
      }

      break;
    }
  }

LABEL_34:
  if (v7)
  {
    sub_10001B1AC();
  }
}

uint64_t sub_100008F60(uint64_t a1, unint64_t a2, uint64_t a3, _WORD *a4, _WORD *a5, _WORD *a6)
{
  v12 = *(a1 + 16);
  v13 = *(a1 + 628);
  bzero(a6, *(a1 + 487272));
  if (!a2)
  {
    sub_10001BC28();
  }

  v14 = 0;
  v15 = 40;
  if (!*(a3 + 32))
  {
    v15 = 152;
  }

  v23 = *(a3 + v15);
  do
  {
    v16 = *(a3 + 32);
    if (v12)
    {
      v17 = *(a3 + 56);
      v18 = v12;
      v19 = a6;
      v20 = a5;
      v21 = a4;
      do
      {
        if (!v16)
        {
          v17 = *(a3 + 168);
          v16 = *(a3 + 144);
        }

        *v21 += *v17 >> 6;
        *v20 += v17[1] >> 6;
        if (v13 < *v17 || v13 < v17[1])
        {
          ++*v19;
        }

        ++v19;
        v17 += 2;
        ++v21;
        ++v20;
        --v16;
        --v18;
      }

      while (v18);
    }

    sub_100008878(a3);
    sub_100008878(a3 + 112);
    if (v16)
    {
      sub_10001BBFC();
    }

    ++v14;
  }

  while (v14 != a2);

  return sub_100009370(a1 + 608, 0x80 / a2, v12, v23, a4, a5, a6);
}

void sub_1000090DC(int a1, unsigned int *a2, uint64_t a3, unsigned __int16 *__src, unsigned __int16 *a5, char *__dst, char *a7, float32x4_t *a8)
{
  v15 = a2[8];
  switch(v15)
  {
    case 4u:
      sub_100009460(a2[7], __src, __dst);
      sub_100009460(a2[7], a5, a7);
      break;
    case 2u:
      sub_100009404(a2[7], __src, __dst);
      sub_100009404(a2[7], a5, a7);
      break;
    case 1u:
      memcpy(__dst, __src, 2 * a2[7]);
      memcpy(a7, a5, 2 * a2[7]);
      break;
    default:
      sub_10001BD04();
  }

  v16 = *(a3 + 4);
  if (a1)
  {
    if ((v16 & 0x80000000) == 0)
    {
      sub_10001BC80();
    }

    if (*(a3 + 8) <= 0)
    {
      sub_10001BC54();
    }

    if (a2[13])
    {
      v17 = 0;
      v18 = 0;
      v19 = a2[10];
      do
      {
        if (a2[12] + v18 >= a2[11])
        {
          v18 = a2[11];
        }

        else
        {
          v18 += a2[12];
        }

        v20 = (v18 - v19) & 0xFFFFFFF8;
        a8[21].i32[1] = v20;
        v21 = &__dst[2 * v19];
        v22 = &a7[2 * v19];
        sub_1000094E8(v20, v21, v22, a8);
        sub_1000094E8(v20, v21, v22 + 1, &a8[10]);
        a8 = (a8 + 360);
        ++v17;
        v19 = v18;
      }

      while (v17 < a2[13]);
    }
  }

  else
  {
    if ((v16 & 0x80000000) == 0)
    {
      sub_10001BCD8();
    }

    v23 = *(a3 + 8);
    if (v23 <= 0)
    {
      sub_10001BCAC();
    }

    v24 = a2[13];
    if (v24)
    {
      v25 = 0;
      v26 = 0;
      v28 = a2[11];
      v27 = a2[12];
      v29 = v23 + 1;
      v30 = a2[10];
      do
      {
        v31 = v30;
        v32 = &__dst[2 * v30];
        v33 = &a7[2 * v30];
        v30 = v25 + v27;
        if (v25 + v27 >= v28)
        {
          v30 = v28;
        }

        v34 = (v30 - v31) & 0xFFFFFFF8;
        a8[21].i32[1] = v34;
        v35 = v16;
        v36 = a8;
        do
        {
          if (v34)
          {
            v37 = 0;
            v38 = 0uLL;
            v39 = v34;
            v40 = v32;
            v41 = &v33[2 * v35];
            do
            {
              v42 = *v40;
              if (v42 != 0xFFFF)
              {
                v43 = *v41;
                if (v43 != 0xFFFF)
                {
                  v37 += v43 * v43;
                  v44.i32[0] = *v40;
                  v44.i32[1] = v42 * v42;
                  v44.i64[1] = __PAIR64__(v43 * v42, v43);
                  v38 = vaddq_s32(v38, v44);
                }
              }

              v40 += 2;
              v41 += 2;
              --v39;
            }

            while (v39);
            v45 = v37;
            v46 = vcvtq_f32_u32(v38);
          }

          else
          {
            v46 = 0uLL;
            v45 = 0.0;
          }

          v36[1].f32[0] = v45 + v36[1].f32[0];
          *v36 = vaddq_f32(v46, *v36);
          v36 = (v36 + 20);
          ++v35;
        }

        while (v29 != v35);
        ++v26;
        a8 = (a8 + 360);
        v25 = v30;
      }

      while (v26 != v24);
    }
  }
}

uint64_t sub_100009370(uint64_t result, int a2, uint64_t a3, char a4, _WORD *a5, _WORD *a6, _WORD *a7)
{
  v7 = *(result + 24);
  if (!*(result + 16))
  {
    v7 = 0xFFFF;
  }

  for (; a3; --a3)
  {
    *a5 = (*a5 * a2) >> 5;
    v8 = *a6 * a2;
    *a6 = v8 >> 5;
    v9 = *a5;
    v10 = (v8 >> 4) & 0xFFFE;
    v11 = v10 >= v9;
    v12 = v10 - v9;
    if (!v11)
    {
      v12 = 0;
    }

    if (a4)
    {
      *a5 = v12;
      v12 = v9;
    }

    *a6 = v12;
    if (v7 <= *a7)
    {
      *a7 = 1;
      *a5 = -1;
      *a6 = -1;
    }

    ++a7;
    ++a5;
    ++a6;
    a4 ^= 1u;
  }

  return result;
}

uint64_t sub_100009404(uint64_t result, unsigned __int16 *a2, _WORD *a3)
{
  v3 = result - 1;
  if (result != 1)
  {
    do
    {
      v4 = *a2;
      *a3 = v4;
      if (v4 == 0xFFFF)
      {
        LOWORD(v6) = -1;
      }

      else
      {
        v5 = a2[1];
        v6 = (v4 + v5 + 1) >> 1;
        if (v5 == 0xFFFF)
        {
          LOWORD(v6) = -1;
        }
      }

      a3[1] = v6;
      ++a2;
      a3 += 2;
      --v3;
    }

    while (v3);
  }

  *a3 = *a2;
  return result;
}

uint64_t sub_100009460(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  v3 = result - 1;
  if (result != 1)
  {
    do
    {
      v4 = *a2;
      *a3 = v4;
      if (v4 == 0xFFFF || (v5 = a2[1], v5 == 0xFFFF))
      {
        *(a3 + 2) = -1;
        LOWORD(v7) = -1;
      }

      else
      {
        v6 = v4 + v5 + 1;
        *(a3 + 4) = v6 >> 1;
        *(a3 + 2) = (v4 + (v6 >> 1) + 1) >> 1;
        v7 = (a2[1] + (v6 >> 1) + 1) >> 1;
      }

      *(a3 + 6) = v7;
      ++a2;
      a3 += 8;
      --v3;
    }

    while (v3);
  }

  *a3 = *a2;
  return result;
}

float sub_1000094E8(int a1, int16x8_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (a1 < 1)
  {
    v20 = 0uLL;
    v90 = 0.0;
    v89 = 0.0;
    v88 = 0.0;
    v87 = 0.0;
    v86 = 0.0;
    v85 = 0.0;
    v84 = 0.0;
    v83 = 0.0;
    v19 = 0uLL;
    v18 = 0uLL;
    v17 = 0uLL;
    v16 = 0uLL;
    v15 = 0uLL;
    v13 = 0uLL;
    v12 = 0uLL;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = a1 + 8;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    do
    {
      v93 = v20;
      v21 = a3[-1];
      v22 = vextq_s8(v21, *a3, 2uLL);
      v23 = vextq_s8(v21, *a3, 4uLL);
      v24 = vextq_s8(v21, *a3, 6uLL);
      v25 = *a2++;
      v26 = vextq_s8(v21, *a3, 8uLL);
      v27 = vextq_s8(v21, *a3, 0xAuLL);
      v28 = vextq_s8(v21, *a3, 0xCuLL);
      v92 = v28;
      v29 = vextq_s8(v21, *a3, 0xEuLL);
      v30.i64[0] = -1;
      v30.i64[1] = -1;
      v31 = vmvnq_s8(vceqq_s16(v25, v30));
      v32 = vbicq_s8(v31, vceqq_s16(v21, v30));
      v33 = vminq_u16(v25, v32);
      v34 = vminq_u16(v21, v32);
      v35 = vmlal_high_u16(vmull_u16(*v33.i8, *v33.i8), v33, v33);
      v36 = vmlal_high_u16(vmull_u16(*v34.i8, *v34.i8), v34, v34);
      v37 = vmlal_high_u16(vmull_u16(*v33.i8, *v34.i8), v33, v34);
      v33.i16[0] = vaddvq_s16(v33);
      v34.i16[0] = vaddvq_s16(v34);
      v38 = vbicq_s8(v31, vceqq_s16(v22, v30));
      v39 = vminq_u16(v25, v38);
      v40 = vminq_u16(v22, v38);
      v33.i32[1] = v34.i32[0];
      v41 = vmlal_high_u16(vmull_u16(*v39.i8, *v39.i8), v39, v39);
      v42 = vmlal_high_u16(vmull_u16(*v40.i8, *v40.i8), v40, v40);
      v43 = vmlal_high_u16(vmull_u16(*v39.i8, *v40.i8), v39, v40);
      v34.i16[0] = vaddvq_s16(v39);
      v40.i16[0] = vaddvq_s16(v40);
      v34.i32[1] = v40.i32[0];
      v44.i32[0] = vaddvq_s32(v37);
      v45 = vbicq_s8(v31, vceqq_s16(v23, v30));
      v46 = vminq_u16(v25, v45);
      v47 = vminq_u16(v23, v45);
      v48 = vmlal_high_u16(vmull_u16(*v46.i8, *v46.i8), v46, v46);
      v49 = vmlal_high_u16(vmull_u16(*v47.i8, *v47.i8), v47, v47);
      v50 = vmlal_high_u16(vmull_u16(*v46.i8, *v47.i8), v46, v47);
      v46.i16[0] = vaddvq_s16(v46);
      v47.i16[0] = vaddvq_s16(v47);
      v46.i32[1] = v47.i32[0];
      v51 = vbicq_s8(v31, vceqq_s16(v24, v30));
      v52 = vminq_u16(v25, v51);
      v53 = vminq_u16(v24, v51);
      v54 = vmlal_high_u16(vmull_u16(*v52.i8, *v52.i8), v52, v52);
      v55 = vmlal_high_u16(vmull_u16(*v53.i8, *v53.i8), v53, v53);
      v56 = v44.i32[0];
      v57 = vaddvq_s32(vmlal_high_u16(vmull_u16(*v52.i8, *v53.i8), v52, v53));
      v44.i16[0] = vaddvq_s16(v52);
      v52.i16[0] = vaddvq_s16(v53);
      v44.i32[1] = v52.i32[0];
      v58 = vaddvq_s32(v43);
      v59 = vbicq_s8(v31, vceqq_s16(v26, v30));
      v60 = vminq_u16(v25, v59);
      v61 = vminq_u16(v26, v59);
      v62 = vaddvq_s32(v50);
      v63 = vmlal_high_u16(vmull_u16(*v60.i8, *v60.i8), v60, v60);
      v64 = vmlal_high_u16(vmull_u16(*v61.i8, *v61.i8), v61, v61);
      *v26.i8 = vand_s8(*v33.i8, 0xFFFF0000FFFFLL);
      v65 = vaddvq_s32(vmlal_high_u16(vmull_u16(*v60.i8, *v61.i8), v60, v61));
      v60.i16[0] = vaddvq_s16(v60);
      v33.i16[0] = vaddvq_s16(v61);
      v66 = v57;
      v60.i32[1] = v33.i32[0];
      v67 = vbicq_s8(v31, vceqq_s16(v27, v30));
      v68 = vminq_u16(v25, v67);
      v69 = v65;
      v70 = vminq_u16(v27, v67);
      v71 = vmlal_high_u16(vmull_u16(*v68.i8, *v68.i8), v68, v68);
      *v27.i8 = vand_s8(*v34.i8, 0xFFFF0000FFFFLL);
      v72 = vaddvq_s32(vmlal_high_u16(vmull_u16(*v68.i8, *v70.i8), v68, v70));
      v73 = vmlal_high_u16(vmull_u16(*v70.i8, *v70.i8), v70, v70);
      v26.i64[1] = __PAIR64__(vaddvq_s32(v36), vaddvq_s32(v35));
      v28.i16[0] = vaddvq_s16(v68);
      v70.i16[0] = vaddvq_s16(v70);
      v28.i32[1] = v70.i32[0];
      v27.i64[1] = __PAIR64__(vaddvq_s32(v42), vaddvq_s32(v41));
      v4 += v56;
      *v35.i8 = vand_s8(*v46.i8, 0xFFFF0000FFFFLL);
      v35.i64[1] = __PAIR64__(vaddvq_s32(v49), vaddvq_s32(v48));
      v5 += v58;
      v6 += v62;
      *v68.i8 = vand_s8(v44, 0xFFFF0000FFFFLL);
      v68.i64[1] = __PAIR64__(vaddvq_s32(v55), vaddvq_s32(v54));
      v7 += v66;
      v8 += v69;
      *v34.i8 = vand_s8(*v60.i8, 0xFFFF0000FFFFLL);
      v34.i64[1] = __PAIR64__(vaddvq_s32(v64), vaddvq_s32(v63));
      v9 += v72;
      *v36.i8 = vand_s8(*v28.i8, 0xFFFF0000FFFFLL);
      v36.i32[2] = vaddvq_s32(v71);
      v28.i32[0] = vaddvq_s32(v73);
      v74 = vbicq_s8(v31, vceqq_s16(v92, v30));
      v75 = vminq_u16(v25, v74);
      v76 = vminq_u16(v92, v74);
      v77 = vmlal_high_u16(vmull_u16(*v76.i8, *v76.i8), v76, v76);
      v10 += vaddvq_s32(vmlal_high_u16(vmull_u16(*v75.i8, *v76.i8), v75, v76));
      v36.i32[3] = v28.i32[0];
      v28.i16[0] = vaddvq_s16(v75);
      v76.i16[0] = vaddvq_s16(v76);
      v28.i32[1] = v76.i32[0];
      v12 = vaddq_s32(v26, v12);
      *v28.i8 = vand_s8(*v28.i8, 0xFFFF0000FFFFLL);
      v28.i64[1] = __PAIR64__(vaddvq_s32(v77), vaddvq_s32(vmlal_high_u16(vmull_u16(*v75.i8, *v75.i8), v75, v75)));
      v13 = vaddq_s32(v27, v13);
      v78 = vbicq_s8(v31, vceqq_s16(v29, v30));
      v79 = vminq_u16(v25, v78);
      v15 = vaddq_s32(v35, v15);
      v80 = vminq_u16(v29, v78);
      v81 = vmlal_high_u16(vmull_u16(*v79.i8, *v79.i8), v79, v79);
      v82 = vmlal_high_u16(vmull_u16(*v80.i8, *v80.i8), v80, v80);
      v16 = vaddq_s32(v68, v16);
      v11 += vaddvq_s32(vmlal_high_u16(vmull_u16(*v79.i8, *v80.i8), v79, v80));
      v17 = vaddq_s32(v34, v17);
      v79.i16[0] = vaddvq_s16(v79);
      v80.i16[0] = vaddvq_s16(v80);
      v79.i32[1] = v80.i32[0];
      v18 = vaddq_s32(v36, v18);
      *v80.i8 = vand_s8(*v79.i8, 0xFFFF0000FFFFLL);
      v80.i64[1] = __PAIR64__(vaddvq_s32(v82), vaddvq_s32(v81));
      v19 = vaddq_s32(v28, v19);
      ++a3;
      v14 -= 8;
      v20 = vaddq_s32(v80, v93);
    }

    while (v14 > 8);
    v83 = v4;
    v84 = v5;
    v85 = v6;
    v86 = v7;
    v87 = v8;
    v88 = v9;
    v89 = v10;
    v90 = v11;
  }

  *a4 = vcvt_f32_u32(vzip1_s32(*v12.i8, *&vextq_s8(v12, v12, 8uLL)));
  *(a4 + 8) = v12.u32[1];
  *(a4 + 12) = v83;
  *(a4 + 16) = vcvtq_f32_u32(vextq_s8(v12, vuzp2q_s32(vtrn1q_s32(v12, v13), v13), 0xCuLL));
  *(a4 + 32) = v84;
  *(a4 + 36) = vcvtq_f32_u32(vextq_s8(v13, vuzp2q_s32(vtrn1q_s32(v13, v15), v15), 0xCuLL));
  *(a4 + 52) = v85;
  *(a4 + 56) = vcvtq_f32_u32(vextq_s8(v15, vuzp2q_s32(vtrn1q_s32(v15, v16), v16), 0xCuLL));
  *(a4 + 72) = v86;
  *(a4 + 76) = vcvtq_f32_u32(vextq_s8(v16, vuzp2q_s32(vtrn1q_s32(v16, v17), v17), 0xCuLL));
  *(a4 + 92) = v87;
  *(a4 + 96) = vcvtq_f32_u32(vextq_s8(v17, vuzp2q_s32(vtrn1q_s32(v17, v18), v18), 0xCuLL));
  *(a4 + 112) = v88;
  *(a4 + 116) = vcvtq_f32_u32(vextq_s8(v18, vuzp2q_s32(vtrn1q_s32(v18, v19), v19), 0xCuLL));
  *(a4 + 132) = v89;
  *(a4 + 136) = vcvtq_f32_u32(vextq_s8(v19, vuzp2q_s32(vtrn1q_s32(v19, v20), v20), 0xCuLL));
  result = v20.u32[3];
  *(a4 + 152) = v90;
  *(a4 + 156) = v20.u32[3];
  return result;
}

uint64_t sub_1000099A8(uint64_t a1, int a2, unint64_t a3, uint64_t a4, _WORD *a5, _WORD *a6, _WORD *a7)
{
  v9 = *(a1 + 20);
  v10 = *a4;
  v34 = *(a4 + 16);
  v35 = *(a4 + 8);
  v30 = *(a4 + 72);
  v11 = *(a4 + 96);
  v12 = *(a4 + 112);
  v13 = *(a4 + 128);
  v33 = *(a4 + 120);
  v14 = *(a4 + 184);
  v15 = *(a4 + 208);
  v16 = *(a1 + 628);
  bzero(a7, *(a1 + 487272));
  if (!a3)
  {
    sub_10001BD30();
  }

  v17 = 80;
  if (!*(a4 + 72))
  {
    v17 = 192;
  }

  v18 = *(a4 + v17);
  if (v9)
  {
    v19 = 0;
    v20 = v30 - a2;
    if (v30 - a2 >= 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = v14;
    }

    v22 = v21 + v20;
    v23 = a5;
    v24 = a6;
    v25 = a7;
    do
    {
      if (v20 >= 1)
      {
        v26 = (v11 + 4 * a2);
      }

      else
      {
        v26 = &v15[-2 * v20];
      }

      v27 = a3;
      v28 = v22;
      do
      {
        if (!v28)
        {
          v26 = v15;
          v28 = v14;
        }

        *v23 += *v26 >> 6;
        *v24 += v26[1] >> 6;
        if (v16 < *v26 || v16 < v26[1])
        {
          ++*v25;
        }

        v26 += 2;
        --v28;
        --v27;
      }

      while (v27);
      if (v10 <= 1)
      {
        if (v10 != 1)
        {
          if (!v10)
          {
            goto LABEL_41;
          }

          goto LABEL_37;
        }
      }

      else if (v10 != 3)
      {
        if (v10 == 4)
        {
          sub_10001B0D0();
        }

        if (v10 == 2)
        {
LABEL_41:
          sub_10001B0FC();
        }

LABEL_37:
        sub_10001B128();
      }

      if (v12 <= 1)
      {
        if (v12 != 1)
        {
          if (!v12)
          {
LABEL_39:
            sub_10001B0FC();
          }

LABEL_42:
          sub_10001B128();
        }
      }

      else if (v12 != 3)
      {
        if (v12 == 2)
        {
          goto LABEL_39;
        }

        if (v12 == 4)
        {
          sub_10001B0D0();
        }

        goto LABEL_42;
      }

      v11 += 2 * v35 + 2 * v34;
      ++v23;
      ++v24;
      ++v25;
      ++v19;
      v15 += v33 + v13;
    }

    while (v19 != v9);
  }

  return sub_100009370(a1 + 608, 0x80 / a3, v9, v18, a5, a6, a7);
}

uint64_t sub_100009BDC(uint64_t a1, unsigned int a2, uint64_t a3, _WORD *a4, _WORD *a5)
{
  if (!a2)
  {
    sub_10001BD88();
  }

  v10 = 0;
  v11 = *(a1 + 4);
  do
  {
    v12 = *(a3 + 32);
    v13 = *(a1 + 4);
    if (v13)
    {
      v14 = *(a3 + 56);
      v15 = a5;
      v16 = a4;
      do
      {
        if (!v12)
        {
          v14 = *(a3 + 168);
          v12 = *(a3 + 144);
        }

        *v16++ += *v14 >> 6;
        *v15++ += v14[2] >> 6;
        v14 += 4;
        --v12;
        --v13;
      }

      while (v13);
    }

    sub_100008878(a3);
    result = sub_100008878(a3 + 112);
    if (v12)
    {
      sub_10001BD5C();
    }

    ++v10;
  }

  while (v10 != a2);
  if (v11)
  {
    v18 = 0x80 / a2;
    do
    {
      *a4 = (v18 * *a4) >> 5;
      ++a4;
      *a5 = (v18 * *a5) >> 5;
      ++a5;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100009CE0(uint64_t result, uint64_t a2, int a3, int *a4, int *a5, uint64_t a6, _DWORD *a7)
{
  v7 = *a4;
  v8 = *(result + 4);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 12);
    v11 = a6 - 404;
    v12 = a4[2];
    v13 = v8 + 1;
    v14 = *(a4 + 3);
    v15 = *(a2 + 4);
    do
    {
      v16 = *a5;
      if (v7)
      {
        v16 = v7;
      }

      else
      {
        v12 = a5[2];
      }

      if (!v7)
      {
        v14 = *(a5 + 3);
      }

      if (v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v10;
      }

      if (v9)
      {
        v18 = 0;
      }

      else
      {
        v18 = 404;
      }

      v11 += v18;
      v19 = *v14;
      v20 = v19 >> 3;
      v21 = v14[3];
      if (v12)
      {
        v22 = -v20;
      }

      else
      {
        v22 = v19 >> 3;
      }

      v23 = v22 + v21;
      ++*(v11 + 384);
      *(v11 + 388) += v23;
      *(v11 + 396) += v23 * v23;
      if ((v19 & 4) == 0)
      {
        v24 = v14[1];
        v25 = v24 & 7;
        if ((v19 & 1) != 0 || (((v24 & 7u) < 6) & (v19 >> 1)) != 0)
        {
          v41 = (v11 + 12 * v12);
          v42.i32[0] = 1;
          v42.i32[1] = v23;
          v41[42] = vadd_s32(v41[42], v42);
          v41[43].i32[0] += v21;
        }

        else
        {
          v26 = v25 > 5;
          v27 = v14[2];
          v28 = (v27 & 0xF) + 1;
          v29 = v27 >> 4;
          v30 = v14[1];
          v31 = v30 >> 3;
          if (v30 >> 3 < 0)
          {
            v31 = -v31;
          }

          if (v20 >= 0)
          {
            LOWORD(v32) = v20;
          }

          else
          {
            v32 = -v20;
          }

          v33 = v25 - v26;
          v34 = (16 * (v31 & 0xFFFu)) >> v26 >> 1;
          v35 = ((v28 >> 1) * v29 * v34) >> 15 << v15;
          if (v35 <= -32768)
          {
            v35 = -32768;
          }

          if (v35 >= 0x7FFF)
          {
            v35 = 0x7FFF;
          }

          v36 = ((v35 * v34) >> 15);
          v37 = ((v35 * 8 * (v32 & 0xFFF)) >> 15);
          if ((v20 ^ (v30 >> 3)) >= 0)
          {
            v38 = v33 + 7;
          }

          else
          {
            v38 = v33;
          }

          v39 = (v11 + 24 * v38);
          v40 = v39[1];
          *v39 += v28;
          v39[1] = v40 + v36;
          v39[2] += v37;
        }
      }

      v14 += 4;
      v7 = v16 - 1;
      v9 = v17 - 1;
      result = (*a7 + 1);
      *a7 = result;
      v12 ^= a3;
      --v13;
    }

    while (v13 > 1);
  }

  if (v7)
  {
    sub_10001AFC8();
  }

  return result;
}

uint64_t sub_100009EEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = 2 * *a3;
  v7 = 2 * *(result + 4);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 2 * *(result + 12);
    v10 = a5 - 404;
    if (*a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = a4;
    }

    v12 = *(v11 + 8);
    v13 = *(a3 + 24);
    v14 = v7 + 2;
    v15 = *(a2 + 4);
    result = 24;
    do
    {
      v16 = 2 * *a4;
      if (v6)
      {
        v16 = v6;
      }

      else
      {
        v13 = *(a4 + 24);
      }

      if (v8)
      {
        v17 = v8;
      }

      else
      {
        v17 = v9;
      }

      if (v8)
      {
        v18 = 0;
      }

      else
      {
        v18 = 404;
      }

      v10 += v18;
      v19 = v13[3];
      v20 = v13[7];
      v21 = v20 - (v13[4] >> 3);
      v22 = *v13;
      ++*(v10 + 384);
      *(v10 + 388) += v21;
      *(v10 + 396) += v21 * v21;
      if ((v22 & 4) == 0)
      {
        v23 = v13[1];
        v24 = v23 & 7;
        if ((v22 & 1) != 0 || (((v23 & 7u) < 6) & (v22 >> 1)) != 0)
        {
          v41 = (v10 + 336 + 12 * v12);
          v42.i32[0] = 1;
          v42.i32[1] = v21;
          *v41 = vadd_s32(*v41, v42);
          v41[1].i32[0] += v19;
          v43 = (v10 + 336 + 12 * (v12 + 1));
          *v43 = vadd_s32(*v43, v42);
          v43[1].i32[0] += v20;
        }

        else
        {
          v25 = v24 > 5;
          v26 = v22;
          v27 = v13[2];
          v28 = (v27 & 0xF) + 1;
          v29 = v27 >> 4;
          v30 = v22 >> 3;
          v31 = v13[1] >> 3;
          if (v31 >= 0)
          {
            LOWORD(v32) = v13[1] >> 3;
          }

          else
          {
            v32 = -v31;
          }

          if (v30 < 0)
          {
            v30 = -v30;
          }

          v33 = v24 - v25;
          v34 = (16 * (v32 & 0xFFFu)) >> v25 >> 1;
          v35 = ((v28 >> 1) * v29 * v34) >> 15 << v15;
          if (v35 <= -32768)
          {
            v35 = -32768;
          }

          if (v35 >= 0x7FFF)
          {
            v35 = 0x7FFF;
          }

          v36 = ((v35 * v34) >> 15);
          v37 = ((v35 * 8 * (v30 & 0xFFF)) >> 15);
          if ((v31 ^ (v26 >> 3)) >= 0)
          {
            v38 = v33 + 7;
          }

          else
          {
            v38 = v33;
          }

          v39 = (v10 + 24 * v38);
          v40 = v39[1];
          *v39 += v28;
          v39[1] = v40 + v36;
          v39[2] += v37;
        }
      }

      v13 += 8;
      v6 = v16 - 2;
      v8 = v17 - 2;
      ++*a6;
      v14 -= 2;
    }

    while (v14 > 2);
  }

  if (v6)
  {
    sub_10001AF9C();
  }

  return result;
}

uint64_t sub_10000A128(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int32x4_t a8, int32x4_t a9, int8x16_t a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14)
{
  v14 = *a4;
  if (*a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = a5;
  }

  v16 = *(v15 + 8);
  v17 = *(result + 4);
  if (a3)
  {
    a8.i32[0] = 0;
    a9.i32[0] = v16 & 1;
    v18 = vdupq_lane_s32(*&vceqq_s32(a9, a8), 0);
    v19.i64[0] = 0xFFFF0000FFFFLL;
    v19.i64[1] = 0xFFFF0000FFFFLL;
    v20.i64[0] = 0xFFFF0000FFFF0000;
    v20.i64[1] = 0xFFFF0000FFFF0000;
    v21 = vbslq_s8(v18, v20, v19);
  }

  else
  {
    v21 = vdupq_n_s16(-(v16 & 1));
  }

  if (v17 < 1)
  {
    goto LABEL_36;
  }

  v22 = 0;
  v23 = *(a4 + 24);
  v24 = vdupq_n_s16(*(a2 + 4));
  v25 = a6 - 404;
  v26 = *(result + 12);
  v27.i64[0] = 0x2000200020002;
  v27.i64[1] = 0x2000200020002;
  v28.i64[0] = 0x4000400040004;
  v28.i64[1] = 0x4000400040004;
  v29.i64[0] = 0x7000700070007;
  v29.i64[1] = 0x7000700070007;
  v30.i64[0] = 0xF000F000F000FLL;
  v30.i64[1] = 0xF000F000F000FLL;
  v31.i64[0] = 0x5000500050005;
  v31.i64[1] = 0x5000500050005;
  v32.i64[0] = 0x1000100010001;
  v32.i64[1] = 0x1000100010001;
  result = 24;
LABEL_9:
  v33 = *(a5 + 24);
  v34 = *a5;
  if (!v14)
  {
    v14 = *a5;
    v23 = *(a5 + 24);
  }

  if (v14 > 7)
  {
    v35 = 8;
LABEL_14:
    v14 -= v35;
    v74 = vld4q_s16(v23);
    v23 += 32;
    goto LABEL_25;
  }

  v35 = v17;
  if (v14 == v17)
  {
    goto LABEL_14;
  }

  if (v14 < 1)
  {
    sub_10001AF18();
  }

  v36 = 0;
  v37 = 2 * v14;
  do
  {
    v69[0].i16[v36 / 2] = *v23;
    v73.i16[v36 / 2] = v23[1];
    v72.i16[v36 / 2] = v23[2];
    v71.i16[v36 / 2] = v23[3];
    v23 += 4;
    v36 += 2;
  }

  while (v37 != v36);
  if (v17 >= 8)
  {
    v38 = 8;
  }

  else
  {
    v38 = v17;
  }

  if (v14 < v38)
  {
    v39 = &v71.i16[v37 / 2];
    v40 = &v72.i16[v37 / 2];
    v41 = &v73.i16[v37 / 2];
    v42 = &v69[0].i16[v37 / 2];
    v43 = v14;
    do
    {
      *v42++ = *v33;
      *v41++ = v33[1];
      *v40++ = v33[2];
      *v39++ = v33[3];
      v33 += 4;
      ++v43;
    }

    while (v38 > v43);
  }

  v74.val[0] = v69[0];
  v74.val[2] = v72;
  v74.val[1] = v73;
  v74.val[3] = v71;
  v14 += v34 - v38;
  v23 = v33;
LABEL_25:
  v44 = 0;
  v45 = vceqzq_s16(vandq_s8(v74.val[0], v28));
  v46 = vandq_s8(v74.val[1], v29);
  v47 = vshrq_n_s16(v74.val[0], 3uLL);
  v48 = vaddq_s16(v74.val[3], vbslq_s8(v21, vnegq_s16(v47), v47));
  v49 = vshrq_n_s16(v74.val[1], 3uLL);
  v50 = vcgtq_u16(v46, v31);
  v51 = vandq_s8(vaddq_s16(vandq_s8(v74.val[2], v30), vbicq_s8(v32, v74.val[0])), vorrq_s8(v50, vceqzq_s16(vandq_s8(v74.val[0], v27))));
  v52 = vaddq_s16(vaddq_s16(v46, v50), vandq_s8(veorq_s8(vcltzq_s16(v74.val[0]), vcgezq_s16(v49)), v29));
  v53 = vshrq_n_u16(vshlq_u16(vqshlq_n_u16(vabsq_s16(v49), 4uLL), v50), 1uLL);
  v54 = vqshlq_s16(vqdmulhq_s16(v53, vmulq_s16(vshrq_n_u16(v51, 1uLL), vshrq_n_u16(v74.val[2], 4uLL))), v24);
  v55 = vqdmulhq_s16(v54, v53);
  v56 = vqdmulhq_s16(v54, vshrq_n_u16(vqshlq_n_u16(vabsq_s16(v47), 4uLL), 1uLL));
  v57 = vceqzq_s16(v51);
  v69[0] = v52;
  v69[1] = vornq_s8(vandq_s8(v51, v45), v45);
  v70[0] = vbslq_s8(v57, v48, v55);
  v70[1] = vbslq_s8(v57, v74.val[3], v56);
  v73 = v48;
  v58 = v70;
  while (1)
  {
    if (v22)
    {
      v59 = 0;
    }

    else
    {
      v22 = v26;
      v59 = 404;
    }

    v25 += v59;
    v60 = *(v58 - 16);
    v61 = *(v58 - 8);
    v62 = *v58;
    v63 = v58[8];
    ++*(v25 + 384);
    v64 = v73.u16[v44];
    *(v25 + 388) += v64;
    *(v25 + 396) += v64 * v64;
    if (v61)
    {
      if (v61 != 0xFFFF)
      {
        v65 = (v25 + 24 * v60);
        v66 = v65[1];
        *v65 += v61;
        v65[1] = v66 + v62;
        v65[2] += v63;
      }
    }

    else
    {
      v67 = (v25 + 12 * v16);
      v68.i32[0] = 1;
      v68.i32[1] = v62;
      v67[42] = vadd_s32(v67[42], v68);
      v67[43].i32[0] += v63;
    }

    ++*a7;
    if (v17 - 1 == v44)
    {
      break;
    }

    ++v58;
    v16 ^= a3;
    --v22;
    if (++v44 == 8)
    {
      v17 -= 8;
      if (v17 + 1 > 1)
      {
        goto LABEL_9;
      }

      break;
    }
  }

LABEL_36:
  if (v14)
  {
    sub_10001AF44();
  }

  return result;
}

uint64_t sub_10000A4E8(uint64_t result, uint64_t a2, int *a3, int *a4, uint64_t a5, _DWORD *a6)
{
  v6 = 2 * *(result + 4);
  if (v6 < 1)
  {
    return result;
  }

  v7 = 0;
  v8 = vdupq_n_s16(*(a2 + 4));
  v9 = 2 * *(result + 12);
  if (*a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  v11 = v10[2];
  v12 = 2 * *a3;
  v13 = a5 - 404;
  v14 = *(a3 + 3);
  v15 = v6 - 2;
  v16.i64[0] = 0x2000200020002;
  v16.i64[1] = 0x2000200020002;
  v17.i64[0] = 0x4000400040004;
  v17.i64[1] = 0x4000400040004;
  v18.i64[0] = 0x7000700070007;
  v18.i64[1] = 0x7000700070007;
  v19.i64[0] = 0xF000F000F000FLL;
  v19.i64[1] = 0xF000F000F000FLL;
  v20.i64[0] = 0x5000500050005;
  v20.i64[1] = 0x5000500050005;
  result = 0xFFFFLL;
  v21.i64[0] = 0x1000100010001;
  v21.i64[1] = 0x1000100010001;
LABEL_6:
  v22 = *(a4 + 3);
  v23 = *a4;
  v24 = 2 * *a4;
  if (v12)
  {
    v24 = v12;
  }

  else
  {
    v14 = *(a4 + 3);
  }

  if (v24 >= 16)
  {
    v25 = 16;
LABEL_12:
    v26 = v14;
    v76 = vld4q_s16(v26);
    v26 += 32;
    v77 = vld4q_s16(v26);
    v27 = vuzp1q_s16(v76.val[0], v77.val[0]);
    v28 = vuzp1q_s16(v76.val[1], v77.val[1]);
    v29 = vuzp1q_s16(v76.val[2], v77.val[2]);
    v30 = vuzp1q_s16(v76.val[3], v77.val[3]);
    v31 = vuzp2q_s16(v76.val[3], v77.val[3]);
    v32 = vsubq_s16(v31, vshrq_n_s16(vuzp2q_s16(v76.val[0], v77.val[0]), 3uLL));
    v14 += 64;
    v12 = v24 - v25;
    goto LABEL_27;
  }

  v25 = v6;
  if (v24 == v6)
  {
    goto LABEL_12;
  }

  if (v24 <= 0)
  {
    sub_10001AEEC();
  }

  v33 = v24 >> 1;
  if (v24 != 1)
  {
    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    v35 = &v72;
    v36 = &v71;
    v37 = &v73;
    v38 = &v74;
    v39 = &v75;
    v40 = v70;
    do
    {
      *v40++ = *v14;
      v39->i16[0] = v14[1];
      v39 = (v39 + 2);
      v38->i16[0] = v14[2];
      v38 = (v38 + 2);
      v37->i16[0] = v14[3];
      v37 = (v37 + 2);
      v41 = v14[7];
      v36->i16[0] = v41;
      v36 = (v36 + 2);
      v35->i16[0] = v41 + (v14[4] >> 3);
      v35 = (v35 + 2);
      v14 += 8;
      --v34;
    }

    while (v34);
  }

  LODWORD(v42) = v6 >> 1;
  if (v6 <= 15)
  {
    v42 = v42;
  }

  else
  {
    v42 = 8;
  }

  if (v33 < v42)
  {
    v43 = 0;
    do
    {
      *(v70 + v33 + v43) = *v22;
      v75.i16[v33 + v43] = v22[1];
      v74.i16[v33 + v43] = v22[2];
      v73.i16[v33 + v43] = v22[3];
      v44 = v22[7];
      v71.i16[v33 + v43] = v44;
      v72.i16[v33 + v43] = v44 + (v22[4] >> 3);
      v22 += 8;
      ++v43;
    }

    while (v42 - v33 != v43);
  }

  v27 = v70[0];
  v28 = v75;
  v30 = v73;
  v29 = v74;
  v31 = v71;
  v32 = v72;
  v12 = 2 * (v23 - v42 + v33);
  v14 = v22;
LABEL_27:
  v45 = 0;
  v46 = vceqzq_s16(vandq_s8(v27, v17));
  v47 = vandq_s8(v28, v18);
  v48 = vshrq_n_s16(v28, 3uLL);
  v49 = vqshlq_n_u16(vabsq_s16(vshrq_n_s16(v27, 3uLL)), 4uLL);
  v50 = vcgtq_u16(v47, v20);
  v51 = vshlq_u16(vqshlq_n_u16(vabsq_s16(v48), 4uLL), v50);
  v52 = vandq_s8(vaddq_s16(vandq_s8(v29, v19), vbicq_s8(v21, v27)), vorrq_s8(v50, vceqzq_s16(vandq_s8(v27, v16))));
  v53 = vaddq_s16(vaddq_s16(v47, v50), vandq_s8(veorq_s8(vcltzq_s16(v27), vcgezq_s16(v48)), v18));
  v54 = vmulq_s16(vshrq_n_u16(v52, 1uLL), vshrq_n_u16(v29, 4uLL));
  v55 = vshrq_n_u16(v51, 1uLL);
  v56 = vqshlq_s16(vqdmulhq_s16(v55, v54), v8);
  v57 = vceqzq_s16(v52);
  v75 = v32;
  v70[0] = vornq_s8(vandq_s8(v52, v46), v46);
  v70[1] = vbslq_s8(v57, v32, vqdmulhq_s16(v56, v55));
  v70[2] = vbslq_s8(v57, v30, vqdmulhq_s16(v56, vshrq_n_u16(v49, 1uLL)));
  v70[3] = vbslq_s8(v57, v31, v53);
  while (1)
  {
    if (v7)
    {
      v58 = 0;
    }

    else
    {
      v7 = v9;
      v58 = 404;
    }

    v13 += v58;
    v59 = *(v70 + v45);
    ++*(v13 + 384);
    v60 = v75.u16[v45 / 2];
    *(v13 + 388) += v60;
    *(v13 + 396) += v60 * v60;
    if (v59)
    {
      if (v59 != 0xFFFF)
      {
        v61 = *(&v70[2] + v45);
        v62 = (v13 + 24 * *(&v70[3] + v45));
        v63 = v62[1] + *(&v70[1] + v45);
        *v62 += v59;
        v62[1] = v63;
        v62[2] += v61;
      }
    }

    else
    {
      v64 = *(&v70[2] + v45);
      v65 = *(&v70[3] + v45);
      v66 = (v13 + 336 + 12 * v11);
      v67.i32[0] = 1;
      v67.i32[1] = *(&v70[1] + v45);
      *v66 = vadd_s32(*v66, v67);
      v66[1].i32[0] += v64;
      v68 = (v13 + 336 + 12 * (v11 + 1));
      *v68 = vadd_s32(*v68, v67);
      v68[1].i32[0] += v65;
    }

    ++*a6;
    if (v15 == v45)
    {
      return result;
    }

    v45 += 2;
    v7 -= 2;
    if (v45 == 16)
    {
      v15 -= 16;
      v69 = v6 <= 16;
      v6 -= 16;
      if (v69)
      {
        return result;
      }

      goto LABEL_6;
    }
  }
}