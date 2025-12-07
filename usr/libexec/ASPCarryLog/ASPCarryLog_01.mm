uint64_t sub_100026C38(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = 1;
  if (a4 && a5)
  {
    if (a5 == 1)
    {
      if (a4 <= 8)
      {
        __memmove_chk();
        return sub_10002E2CC(a1, "", a2, 0);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if (a4 <= 8)
        {
          __memmove_chk();
          snprintf(__str, 0x64uLL, "%d", v10);
          __str[100] = 0;
          v5 = sub_10002E2CC(a1, a2, __str, 0) & v5;
        }

        else
        {
          v5 = 0;
        }

        v10 = ++v11;
      }

      while (v11 < a5);
    }
  }

  return v5;
}

uint64_t sub_100026D9C(uint64_t a1, unint64_t *a2, unsigned int a3)
{
  v5 = 0;
  v6 = a3 >> 3;
  *__str = 0u;
  v22 = 0u;
LABEL_2:
  v7 = -v6;
  while (v7)
  {
    v9 = *a2++;
    v8 = v9;
    ++v7;
    v10 = HIDWORD(v9);
    if (HIDWORD(v9))
    {
      if (v8 != 0xFFFF && v8 <= 0x30000000 && -v7 >= v10)
      {
        if (v8 >> 33)
        {
          snprintf(__str, 0x20uLL, "Stat_%d_");
        }

        else
        {
          snprintf(__str, 0x20uLL, "Stat_%d");
        }

        if (sub_100026C38(a1, __str, a2, 8u, v10))
        {
          v5 = (v5 + v10);
          a2 += v10;
          v6 = -v7 - v10;
          goto LABEL_2;
        }

        sub_100012748("ASPFTLParseBufferToCxt %d: Cannot add %d elements to context", v13, v14, v15, v16, v17, v18, v19, v8, v10, *__str, *&__str[8], v22);
      }

      return v5;
    }
  }

  return v5;
}

uint64_t sub_100026ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v9 = "ASPMSPParseBufferToCxt: Passed in invalid buffer or empty buffer";
  if (!a2)
  {
    goto LABEL_2105;
  }

  v10 = a3;
  if (!a3)
  {
    goto LABEL_2105;
  }

  v11 = a2;
  v8 = 0;
  v13 = "avg_rd_window_size";
  v9 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): Error adding 5 elements to context";
  v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
  v15 = "num_zq_failures";
  v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
  v17 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes";
  v18 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
  while (1)
  {
    do
    {
      if (!v10)
      {
        return v8;
      }

      v19 = v11;
      v20 = *(v11 + 2);
      v11 += 4;
      v10 -= 4;
    }

    while (!v20);
    v21 = *v19;
    if (v21 != 12286)
    {
      if (v21 == 12287 || v10 < v20)
      {
        return v8;
      }

      switch(v21)
      {
        case 4097:
          v23 = v16;
          v24 = v14;
          v25 = v13;
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: passWithTmodeFS1_2b(4097): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v26 = 1;
          }

          else
          {
            v26 = v20 >> 2;
          }

          if (!sub_100026C38(a1, "passWithTmodeFS1_2b", v11, 4u, v26))
          {
            v9 = "ASPMSPParseBufferToCxt: passWithTmodeFS1_2b(4097): Error adding 1 elements to context";
            goto LABEL_2105;
          }

          v8 = v8 + v26;
          v13 = v25;
          v14 = v24;
          v16 = v23;
          goto LABEL_20;
        case 4098:
          v28 = v18;
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: passWithTmodeFS1_4b(4098): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v29 = 1;
          }

          else
          {
            v29 = v20 >> 2;
          }

          if (!sub_100026C38(a1, "passWithTmodeFS1_4b", v11, 4u, v29))
          {
            v9 = "ASPMSPParseBufferToCxt: passWithTmodeFS1_4b(4098): Error adding 1 elements to context";
            goto LABEL_2105;
          }

          v8 = v8 + v29;
          v13 = "avg_rd_window_size";
          v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
          v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
          v18 = v28;
          break;
        case 4100:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: passWithTmodeFS1_2b_fast(4100): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "passWithTmodeFS1_2b_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: passWithTmodeFS1_2b_fast(4100): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4101:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: passWithTmodeFS1_4b_fast(4101): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "passWithTmodeFS1_4b_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: passWithTmodeFS1_4b_fast(4101): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4102:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: numOfCwFailedInTmodeFS2_EOL(4102): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "numOfCwFailedInTmodeFS2_EOL", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: numOfCwFailedInTmodeFS2_EOL(4102): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4103:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: numOfCwFailedInTmodeFS2_DSP_EOL(4103): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "numOfCwFailedInTmodeFS2_DSP_EOL", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: numOfCwFailedInTmodeFS2_DSP_EOL(4103): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4104:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterAcq(4104): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassWithHardAfterAcq", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterAcq(4104): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4105:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: firstReadWasHardWithDefaultBDBFastRead(4105): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "firstReadWasHardWithDefaultBDBFastRead", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasHardWithDefaultBDBFastRead(4105): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4110:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: firstReadWasHardWithAcq(4110): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "firstReadWasHardWithAcq", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasHardWithAcq(4110): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4117:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: firstReadWasHardWithDefaultBDB(4117): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "firstReadWasHardWithDefaultBDB", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasHardWithDefaultBDB(4117): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4118:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassedThroughSyndSumAcquisition(4118): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassedThroughSyndSumAcquisition", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughSyndSumAcquisition(4118): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4119:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassedThroughSlip(4119): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassedThroughSlip", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughSlip(4119): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4123:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterSlip_fast(4123): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassWithHardAfterSlip_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterSlip_fast(4123): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4124:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterSlip_fast(4124): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassWithFS12BitAfterSlip_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterSlip_fast(4124): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4125:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterSlip_fast(4125): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassWithFS14BitAfterSlip_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterSlip_fast(4125): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4126:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassWithFS3_fast(4126): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassWithFS3_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS3_fast(4126): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4128:
          if (v20 != 40)
          {
            sub_100012748("ASPMSPParseBufferToCxt: deepSoft2Decoded(4128): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x2C)
          {
            v27 = 10;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "deepSoft2Decoded", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: deepSoft2Decoded(4128): Error adding 10 elements to context";
          goto LABEL_2105;
        case 4131:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassedThroughSlip_fast(4131): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassedThroughSlip_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughSlip_fast(4131): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4132:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassedThroughFS3_fast(4132): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassedThroughFS3_fast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughFS3_fast(4132): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4135:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readZeroPage(4135): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readZeroPage", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readZeroPage(4135): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4136:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readErasedPage(4136): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readErasedPage", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readErasedPage(4136): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4137:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readFail(4137): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readFail", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readFail(4137): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4140:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: bdbDefaultMoveFastToNormal(4140): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "bdbDefaultMoveFastToNormal", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: bdbDefaultMoveFastToNormal(4140): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4141:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: bdbDefaultMoveNormalToFast(4141): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "bdbDefaultMoveNormalToFast", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: bdbDefaultMoveNormalToFast(4141): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4145:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: firstReadWasFS2EOL_DSP(4145): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "firstReadWasFS2EOL_DSP", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasFS2EOL_DSP(4145): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4146:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: firstReadWasFS2EOL(4146): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "firstReadWasFS2EOL", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: firstReadWasFS2EOL(4146): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4150:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassedThroughFS3(4150): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassedThroughFS3", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassedThroughFS3(4150): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4153:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterSlip(4153): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassWithHardAfterSlip", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithHardAfterSlip(4153): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4154:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterSlip(4154): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassWithFS12BitAfterSlip", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterSlip(4154): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4155:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterSlip(4155): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassWithFS14BitAfterSlip", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterSlip(4155): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4156:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassWithFS3(4156): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassWithFS3", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS3(4156): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4158:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterAcq(4158): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassWithFS12BitAfterAcq", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS12BitAfterAcq(4158): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4159:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterAcq(4159): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readAlgoPassWithFS14BitAfterAcq", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readAlgoPassWithFS14BitAfterAcq(4159): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4164:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: syndSumAcqConvergedToStaticWalls(4164): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "syndSumAcqConvergedToStaticWalls", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: syndSumAcqConvergedToStaticWalls(4164): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4196:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails100(4196): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readStageNumOfFails100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails100(4196): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4197:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails101(4197): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readStageNumOfFails101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails101(4197): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4198:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readStage100(4198): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readStage100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage100(4198): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4199:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readStage101(4199): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readStage101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage101(4199): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4200:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: initialReadStage100(4200): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "initialReadStage100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage100(4200): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4201:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readStage102(4201): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readStage102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage102(4201): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4202:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: initialReadStage101(4202): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "initialReadStage101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage101(4202): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4203:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife100(4203): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "nandStageOfLife100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife100(4203): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4204:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife101(4204): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "nandStageOfLife101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife101(4204): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4205:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails102(4205): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readStageNumOfFails102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails102(4205): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4206:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: initialReadStage102(4206): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "initialReadStage102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage102(4206): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4207:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readStage103(4207): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readStage103", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage103(4207): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4208:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readStage104(4208): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readStage104", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage104(4208): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4209:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readStage105(4209): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readStage105", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage105(4209): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4210:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readStage106(4210): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readStage106", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage106(4210): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4211:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter100(4211): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "dspExceptionParameter100", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter100(4211): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4212:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter101(4212): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "dspExceptionParameter101", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter101(4212): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4213:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: initialReadStage103(4213): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "initialReadStage103", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage103(4213): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4214:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: initialReadStage104(4214): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "initialReadStage104", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: initialReadStage104(4214): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4215:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readStage107(4215): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readStage107", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage107(4215): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4216:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: readStage108(4216): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "readStage108", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: readStage108(4216): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4217:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife102(4217): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "nandStageOfLife102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife102(4217): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4218:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife103(4218): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "nandStageOfLife103", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife103(4218): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4219:
          if (v20 != 4)
          {
            sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife104(4219): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 8)
          {
            v27 = 1;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "nandStageOfLife104", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: nandStageOfLife104(4219): Error adding 1 elements to context";
          goto LABEL_2105;
        case 4220:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter102(4220): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "dspExceptionParameter102", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter102(4220): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4221:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter103(4221): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "dspExceptionParameter103", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter103(4221): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4222:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter104(4222): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "dspExceptionParameter104", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter104(4222): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4223:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter105(4223): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "dspExceptionParameter105", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter105(4223): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4224:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter106(4224): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "dspExceptionParameter106", v11, 4u, v27))
          {
            goto LABEL_462;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter106(4224): Error adding 4 elements to context";
          goto LABEL_2105;
        case 4225:
          if (v20 != 16)
          {
            sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter107(4225): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
          }

          if (v20 >= 0x14)
          {
            v27 = 4;
          }

          else
          {
            v27 = v20 >> 2;
          }

          if (sub_100026C38(a1, "dspExceptionParameter107", v11, 4u, v27))
          {
LABEL_462:
            v8 = v8 + v27;
            v13 = "avg_rd_window_size";
            v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
            v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
            v18 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
            break;
          }

          v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter107(4225): Error adding 4 elements to context";
LABEL_2105:
          sub_100012748(v9, a2, a3, a4, a5, a6, a7, a8);
          return v8;
        default:
          switch(v21)
          {
            case 4226:
              v30 = v15;
              v31 = v16;
              v32 = v13;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter108(4226): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v33 = 4;
              }

              else
              {
                v33 = v20 >> 2;
              }

              if (!sub_100026C38(a1, "dspExceptionParameter108", v11, 4u, v33))
              {
                v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter108(4226): Error adding 4 elements to context";
                goto LABEL_2105;
              }

              v8 = v8 + v33;
              v13 = v32;
              v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
              v16 = v31;
              v15 = v30;
              goto LABEL_21;
            case 4227:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter109(4227): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter109", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter109(4227): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4228:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter110(4228): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter110", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter110(4228): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4229:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter111(4229): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter111", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter111(4229): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4230:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter112(4230): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter112", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter112(4230): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4231:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter113(4231): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter113", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter113(4231): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4232:
              v34 = v17;
              v35 = v16;
              if (v20 != 256)
              {
                sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails108(4232): cfg 64 elements; (64*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x104)
              {
                v36 = 64;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "readStageNumOfFails108", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails108(4232): Error adding 64 elements to context";
              goto LABEL_2105;
            case 4233:
              v34 = v17;
              v35 = v16;
              if (v20 != 256)
              {
                sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails103(4233): cfg 64 elements; (64*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x104)
              {
                v36 = 64;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "readStageNumOfFails103", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails103(4233): Error adding 64 elements to context";
              goto LABEL_2105;
            case 4234:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails104(4234): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "readStageNumOfFails104", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails104(4234): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4235:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails105(4235): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "readStageNumOfFails105", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails105(4235): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4236:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails106(4236): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "readStageNumOfFails106", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails106(4236): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4237:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails107(4237): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "readStageNumOfFails107", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails107(4237): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4238:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: readStage109(4238): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "readStage109", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStage109(4238): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4239:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: readStage110(4239): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "readStage110", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStage110(4239): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4240:
              v34 = v17;
              v35 = v16;
              if (v20 != 80)
              {
                sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfErrorsBin100(4240): cfg 20 elements; (20*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x54)
              {
                v36 = 20;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "readStageNumOfErrorsBin100", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: readStageNumOfErrorsBin100(4240): Error adding 20 elements to context";
              goto LABEL_2105;
            case 4241:
              v34 = v17;
              v35 = v16;
              if (v20 != 80)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter114(4241): cfg 20 elements; (20*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x54)
              {
                v36 = 20;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter114", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter114(4241): Error adding 20 elements to context";
              goto LABEL_2105;
            case 4242:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter115(4242): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter115", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter115(4242): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4243:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter116(4243): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter116", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter116(4243): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4244:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter117(4244): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter117", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter117(4244): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4245:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter118(4245): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter118", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter118(4245): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4246:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter119(4246): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter119", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter119(4246): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4247:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter120(4247): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter120", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter120(4247): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4248:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter121(4248): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter121", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter121(4248): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4249:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: cbdr_ref_1(4249): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "cbdr_ref_1", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_ref_1(4249): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4250:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: cbdr_ref_2(4250): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "cbdr_ref_2", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_ref_2(4250): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4251:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: cbdr_outlier(4251): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "cbdr_outlier", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_outlier(4251): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4252:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: cbdr_step_1(4252): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "cbdr_step_1", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_1(4252): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4253:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: cbdr_step_2(4253): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "cbdr_step_2", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_2(4253): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4254:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: cbdr_step_3(4254): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "cbdr_step_3", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_3(4254): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4255:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: cbdr_step_4(4255): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "cbdr_step_4", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_4(4255): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4256:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: cbdr_step_5(4256): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "cbdr_step_5", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_5(4256): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4257:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: cbdr_step_6(4257): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "cbdr_step_6", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_6(4257): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4258:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: cbdr_step_7(4258): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "cbdr_step_7", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: cbdr_step_7(4258): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4259:
              v34 = v17;
              v35 = v16;
              if (v20 != 80)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter122(4259): cfg 20 elements; (20*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x54)
              {
                v36 = 20;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter122", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter122(4259): Error adding 20 elements to context";
              goto LABEL_2105;
            case 4260:
              v34 = v17;
              v35 = v16;
              if (v20 != 32)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter123(4260): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x24)
              {
                v36 = 8;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter123", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter123(4260): Error adding 8 elements to context";
              goto LABEL_2105;
            case 4261:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter124(4261): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter124", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter124(4261): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4262:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter125(4262): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter125", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter125(4262): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4263:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter126(4263): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter126", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter126(4263): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4264:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter127(4264): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter127", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter127(4264): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4265:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter128(4265): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter128", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter128(4265): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4266:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter129(4266): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter129", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter129(4266): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4267:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter130(4267): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter130", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter130(4267): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4268:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter131(4268): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter131", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter131(4268): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4269:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter132(4269): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter132", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter132(4269): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4270:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter133(4270): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter133", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter133(4270): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4271:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter134(4271): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter134", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter134(4271): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4272:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter135(4272): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter135", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter135(4272): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4273:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter136(4273): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter136", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter136(4273): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4274:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter137(4274): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter137", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter137(4274): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4275:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter138(4275): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter138", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter138(4275): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4276:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter139(4276): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter139", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter139(4276): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4277:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter140(4277): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter140", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter140(4277): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4278:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter141(4278): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dspExceptionParameter141", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter141(4278): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4279:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: fs1_4b_fail(4279): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "fs1_4b_fail_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: fs1_4b_fail(4279): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4280:
              v34 = v17;
              v35 = v16;
              if (v20 != 16)
              {
                sub_100012748("ASPMSPParseBufferToCxt: fs1_4b_fast_fail(4280): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x14)
              {
                v36 = 4;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "fs1_4b_fast_fail_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: fs1_4b_fast_fail(4280): Error adding 4 elements to context";
              goto LABEL_2105;
            case 4281:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: dyce_decoded_bit_flips(4281): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "dyce_decoded_bit_flips_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: dyce_decoded_bit_flips(4281): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4282:
              v34 = v17;
              v35 = v16;
              if (v20 != 60)
              {
                sub_100012748("ASPMSPParseBufferToCxt: slip_bch(4282): cfg 15 elements; (15*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x40)
              {
                v36 = 15;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "slip_bch_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: slip_bch(4282): Error adding 15 elements to context";
              goto LABEL_2105;
            case 4283:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: read_fail(4283): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "read_fail_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: read_fail(4283): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4284:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: tr_read_fail(4284): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "tr_read_fail_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: tr_read_fail(4284): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4285:
              v34 = v17;
              v35 = v16;
              if (v20 != 40)
              {
                sub_100012748("ASPMSPParseBufferToCxt: tr_aux_bfs_percent(4285): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x2C)
              {
                v36 = 10;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "tr_aux_bfs_percent_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: tr_aux_bfs_percent(4285): Error adding 10 elements to context";
              goto LABEL_2105;
            case 4286:
              v34 = v17;
              v35 = v16;
              if (v20 != 20)
              {
                sub_100012748("ASPMSPParseBufferToCxt: tr_reconstruct_pass_step(4286): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 0x18)
              {
                v36 = 5;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "tr_reconstruct_pass_step_", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: tr_reconstruct_pass_step(4286): Error adding 5 elements to context";
              goto LABEL_2105;
            case 4287:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: tr_reconstruct_num(4287): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "tr_reconstruct_num", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: tr_reconstruct_num(4287): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4301:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife105(4301): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (sub_100026C38(a1, "nandStageOfLife105", v11, 4u, v36))
              {
                goto LABEL_912;
              }

              v9 = "ASPMSPParseBufferToCxt: nandStageOfLife105(4301): Error adding 1 elements to context";
              goto LABEL_2105;
            case 4302:
              v34 = v17;
              v35 = v16;
              if (v20 != 4)
              {
                sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife106(4302): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", a2, a3, v18, a5, a6, a7, a8, v20);
              }

              if (v20 >= 8)
              {
                v36 = 1;
              }

              else
              {
                v36 = v20 >> 2;
              }

              if (!sub_100026C38(a1, "nandStageOfLife106", v11, 4u, v36))
              {
                v9 = "ASPMSPParseBufferToCxt: nandStageOfLife106(4302): Error adding 1 elements to context";
                goto LABEL_2105;
              }

LABEL_912:
              v8 = v8 + v36;
              v13 = "avg_rd_window_size";
              v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
              v16 = v35;
              v17 = v34;
              goto LABEL_913;
            default:
              a3 = 12297;
              a2 = 12294;
              a5 = 12295;
              a8 = 12290;
              a7 = 12289;
              a6 = 12292;
              switch(v21)
              {
                case 4303:
                  if (v20 != 8)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter145(4303): cfg 2 elements; (2*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0xC)
                  {
                    v37 = 2;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter145_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter145(4303): Error adding 2 elements to context";
                  goto LABEL_2105;
                case 4304:
                  if (v20 != 8)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter146(4304): cfg 2 elements; (2*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0xC)
                  {
                    v37 = 2;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter146_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter146(4304): Error adding 2 elements to context";
                  goto LABEL_2105;
                case 4305:
                  if (v20 != 8)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter147(4305): cfg 2 elements; (2*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0xC)
                  {
                    v37 = 2;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter147_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter147(4305): Error adding 2 elements to context";
                  goto LABEL_2105;
                case 4306:
                  if (v20 != 8)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter148(4306): cfg 2 elements; (2*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0xC)
                  {
                    v37 = 2;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter148_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter148(4306): Error adding 2 elements to context";
                  goto LABEL_2105;
                case 4307:
                  if (v20 != 32)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter149(4307): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter149_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter149(4307): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4308:
                  if (v20 != 24)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter150(4308): cfg 6 elements; (6*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x1C)
                  {
                    v37 = 6;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter150_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter150(4308): Error adding 6 elements to context";
                  goto LABEL_2105;
                case 4309:
                  if (v20 != 20)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter151(4309): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter151_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter151(4309): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4310:
                  if (v20 != 20)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife107(4310): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife107_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife107(4310): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4311:
                  if (v20 != 20)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife108(4311): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife108_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife108(4311): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4312:
                  if (v20 != 20)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife109(4312): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife109_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife109(4312): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4313:
                  if (v20 != 20)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife110(4313): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife110_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife110(4313): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4314:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife111(4314): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife111", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife111(4314): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4315:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter152(4315): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter152", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter152(4315): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4316:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter153(4316): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter153", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter153(4316): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4317:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter154(4317): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter154", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter154(4317): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4318:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife112(4318): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife112", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife112(4318): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4319:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife113(4319): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife113", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife113(4319): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4320:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife114(4320): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife114", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife114(4320): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4321:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter155(4321): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter155", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter155(4321): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4322:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter156(4322): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter156", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter156(4322): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4323:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter157(4323): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter157", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter157(4323): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4324:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: readStage111(4324): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "readStage111", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage111(4324): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4325:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife115(4325): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife115", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife115(4325): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4326:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife116(4326): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife116", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife116(4326): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4327:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife117(4327): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife117", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife117(4327): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4328:
LABEL_930:
                  if (v21 < 12288)
                  {
                    switch(v21)
                    {
                      case 8208:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_block_read_failures(8208): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_block_read_failures", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_block_read_failures(8208): Error adding 1 elements to context";
                        break;
                      case 8209:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_block_refresh(8209): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_block_refresh", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_block_refresh(8209): Error adding 1 elements to context";
                        break;
                      case 8210:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_block_convert_to_main(8210): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_block_convert_to_main", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_block_convert_to_main(8210): Error adding 1 elements to context";
                        break;
                      case 8211:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_block_read_source_changed(8211): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_block_read_source_changed", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_block_read_source_changed(8211): Error adding 1 elements to context";
                        break;
                      case 8219:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: number_of_dcc_failures(8219): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "number_of_dcc_failures", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: number_of_dcc_failures(8219): Error adding 1 elements to context";
                        break;
                      case 8234:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: msp_number_sram_flips(8234): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "msp_number_sram_flips", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: msp_number_sram_flips(8234): Error adding 1 elements to context";
                        break;
                      case 8250:
                        if (v20 != 120)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: lower_die_temperature(8250): cfg 30 elements; (30*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x7C)
                        {
                          v37 = 30;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "lower_die_temperature", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: lower_die_temperature(8250): Error adding 30 elements to context";
                        break;
                      case 8251:
                        if (v20 != 120)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: higher_die_temperature(8251): cfg 30 elements; (30*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x7C)
                        {
                          v37 = 30;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "higher_die_temperature", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: higher_die_temperature(8251): Error adding 30 elements to context";
                        break;
                      case 8258:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: msp_number_hw_sram_flips(8258): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "msp_number_hw_sram_flips", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: msp_number_hw_sram_flips(8258): Error adding 1 elements to context";
                        break;
                      case 8259:
                        if (v20 != 12)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_rd_training_failure(8259): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 3;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_rd_training_failure_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_training_failure(8259): Error adding 3 elements to context";
                        break;
                      case 8260:
                        if (v20 != 12)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_wr_training_failure(8260): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 3;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_wr_training_failure_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_wr_training_failure(8260): Error adding 3 elements to context";
                        break;
                      case 8261:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_rd_sdl_overflow(8261): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_rd_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_sdl_overflow(8261): Error adding 1 elements to context";
                        break;
                      case 8262:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_wr_sdl_overflow(8262): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_wr_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_wr_sdl_overflow(8262): Error adding 1 elements to context";
                        break;
                      case 8263:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_rd_pos_win_hist_all_dies(8263): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_rd_pos_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_pos_win_hist_all_dies(8263): Error adding 5 elements to context";
                        break;
                      case 8264:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_rd_neg_win_hist_all_dies(8264): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_rd_neg_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_neg_win_hist_all_dies(8264): Error adding 5 elements to context";
                        break;
                      case 8265:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_wr_win_hist_all_dies(8265): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_wr_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_wr_win_hist_all_dies(8265): Error adding 5 elements to context";
                        break;
                      case 8266:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_rd_pos_win_hist_ch0_die0(8266): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_rd_pos_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_pos_win_hist_ch0_die0(8266): Error adding 5 elements to context";
                        break;
                      case 8267:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_rd_neg_win_hist_ch0_die0(8267): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_rd_neg_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_rd_neg_win_hist_ch0_die0(8267): Error adding 5 elements to context";
                        break;
                      case 8268:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_wr_win_hist_ch0_die0(8268): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_wr_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_wr_win_hist_ch0_die0(8268): Error adding 5 elements to context";
                        break;
                      case 8269:
                        if (v20 != 64)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pts_vs_boot_mid_rd_p_c0d0_hist(8269): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pts_vs_boot_mid_rd_p_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pts_vs_boot_mid_rd_p_c0d0_hist(8269): Error adding 16 elements to context";
                        break;
                      case 8270:
                        if (v20 != 64)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pts_vs_boot_mid_rd_n_c0d0_hist(8270): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pts_vs_boot_mid_rd_n_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pts_vs_boot_mid_rd_n_c0d0_hist(8270): Error adding 16 elements to context";
                        break;
                      case 8271:
                        if (v20 != 64)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pts_vs_boot_mid_wr_c0d0_hist(8271): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pts_vs_boot_mid_wr_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pts_vs_boot_mid_wr_c0d0_hist(8271): Error adding 16 elements to context";
                        break;
                      case 8272:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_rd_training_failure(8272): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_rd_training_failure", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_training_failure(8272): Error adding 1 elements to context";
                        break;
                      case 8273:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_wr_training_failure(8273): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_wr_training_failure", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_wr_training_failure(8273): Error adding 1 elements to context";
                        break;
                      case 8274:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_rd_sdl_overflow(8274): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_rd_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_sdl_overflow(8274): Error adding 1 elements to context";
                        break;
                      case 8275:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_wr_sdl_overflow(8275): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_wr_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_wr_sdl_overflow(8275): Error adding 1 elements to context";
                        break;
                      case 8276:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_rd_pos_win_hist_all_dies(8276): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_rd_pos_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_pos_win_hist_all_dies(8276): Error adding 5 elements to context";
                        break;
                      case 8277:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_rd_neg_win_hist_all_dies(8277): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_rd_neg_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_neg_win_hist_all_dies(8277): Error adding 5 elements to context";
                        break;
                      case 8278:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_wr_win_hist_all_dies(8278): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_wr_win_hist_all_dies_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_wr_win_hist_all_dies(8278): Error adding 5 elements to context";
                        break;
                      case 8279:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_rd_pos_win_hist_ch0_die0(8279): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_rd_pos_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_pos_win_hist_ch0_die0(8279): Error adding 5 elements to context";
                        break;
                      case 8280:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_rd_neg_win_hist_ch0_die0(8280): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_rd_neg_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_rd_neg_win_hist_ch0_die0(8280): Error adding 5 elements to context";
                        break;
                      case 8281:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_wr_win_hist_ch0_die0(8281): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v37 = 5;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_wr_win_hist_ch0_die0_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_wr_win_hist_ch0_die0(8281): Error adding 5 elements to context";
                        break;
                      case 8282:
                        if (v20 != 64)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_vs_pge_rd_p_c0d0_hist(8282): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_vs_pge_rd_p_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_vs_pge_rd_p_c0d0_hist(8282): Error adding 16 elements to context";
                        break;
                      case 8283:
                        if (v20 != 64)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_vs_pge_rd_n_c0d0_hist(8283): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_vs_pge_rd_n_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_vs_pge_rd_n_c0d0_hist(8283): Error adding 16 elements to context";
                        break;
                      case 8284:
                        if (v20 != 64)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: boot_vs_pge_wr_c0d0_hist(8284): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "boot_vs_pge_wr_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: boot_vs_pge_wr_c0d0_hist(8284): Error adding 16 elements to context";
                        break;
                      case 8285:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: periodic_rd_training_failure(8285): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "periodic_rd_training_failure", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_rd_training_failure(8285): Error adding 1 elements to context";
                        break;
                      case 8286:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: periodic_wr_training_failure(8286): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "periodic_wr_training_failure", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_wr_training_failure(8286): Error adding 1 elements to context";
                        break;
                      case 8287:
                        if (v20 != 64)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_vs_periodic_rd_p_c0d0_hist(8287): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_vs_periodic_rd_p_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_vs_periodic_rd_p_c0d0_hist(8287): Error adding 16 elements to context";
                        break;
                      case 8288:
                        if (v20 != 64)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_vs_periodic_rd_n_c0d0_hist(8288): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_vs_periodic_rd_n_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_vs_periodic_rd_n_c0d0_hist(8288): Error adding 16 elements to context";
                        break;
                      case 8289:
                        if (v20 != 64)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: pge_vs_periodic_wr_c0d0_hist(8289): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x44)
                        {
                          v37 = 16;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "pge_vs_periodic_wr_c0d0_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: pge_vs_periodic_wr_c0d0_hist(8289): Error adding 16 elements to context";
                        break;
                      case 8290:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: periodic_rd_sdl_overflow(8290): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "periodic_rd_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_rd_sdl_overflow(8290): Error adding 1 elements to context";
                        break;
                      case 8291:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: periodic_wr_sdl_overflow(8291): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "periodic_wr_sdl_overflow", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_wr_sdl_overflow(8291): Error adding 1 elements to context";
                        break;
                      case 8292:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: too_frequent_temp_change_rd(8292): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "too_frequent_temp_change_rd", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: too_frequent_temp_change_rd(8292): Error adding 1 elements to context";
                        break;
                      case 8293:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: too_frequent_temp_change_wr(8293): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "too_frequent_temp_change_wr", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: too_frequent_temp_change_wr(8293): Error adding 1 elements to context";
                        break;
                      case 8294:
                        if (v20 != 28)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: periodic_rd_training_hist(8294): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "periodic_rd_training_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_rd_training_hist(8294): Error adding 7 elements to context";
                        break;
                      case 8295:
                        if (v20 != 28)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: periodic_wr_training_hist(8295): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "periodic_wr_training_hist_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_wr_training_hist(8295): Error adding 7 elements to context";
                        break;
                      case 8296:
                        if (v20 != 28)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: periodic_rd_training_latency(8296): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "periodic_rd_training_latency_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_rd_training_latency(8296): Error adding 7 elements to context";
                        break;
                      case 8297:
                        if (v20 != 28)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: periodic_wr_training_latency(8297): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "periodic_wr_training_latency_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: periodic_wr_training_latency(8297): Error adding 7 elements to context";
                        break;
                      case 8298:
                        if (v20 != 48)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: system_temp(8298): cfg 12 elements; (12*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x34)
                        {
                          v37 = 12;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "system_temp_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: system_temp(8298): Error adding 12 elements to context";
                        break;
                      case 8299:
                        if (v20 != 48)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: temp_diff_150ms(8299): cfg 12 elements; (12*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x34)
                        {
                          v37 = 12;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "temp_diff_150ms_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: temp_diff_150ms(8299): Error adding 12 elements to context";
                        break;
                      case 8300:
                        if (v20 != 48)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: temp_diff_1s(8300): cfg 12 elements; (12*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x34)
                        {
                          v37 = 12;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "temp_diff_1s_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: temp_diff_1s(8300): Error adding 12 elements to context";
                        break;
                      case 8301:
                        if (v20 != 28)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: num_of_steps_bigger_win(8301): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "num_of_steps_bigger_win_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: num_of_steps_bigger_win(8301): Error adding 7 elements to context";
                        break;
                      case 8302:
                        if (v20 != 28)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: num_of_steps_smaller_win(8302): cfg 7 elements; (7*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x20)
                        {
                          v37 = 7;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "num_of_steps_smaller_win_", v11, 4u, v37))
                        {
                          goto LABEL_1372;
                        }

                        v9 = "ASPMSPParseBufferToCxt: num_of_steps_smaller_win(8302): Error adding 7 elements to context";
                        break;
                      default:
                        goto LABEL_1826;
                    }

                    goto LABEL_2105;
                  }

                  if (v21 <= 12292)
                  {
                    if (v21 <= 12289)
                    {
                      if (v21 == 12288)
                      {
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails200(12288): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 3;
                        }

                        if (!sub_100026C38(a1, "readStageNumOfFails200", v11, 8u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails200(12288): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }
                      }

                      else
                      {
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStage200(12289): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 3;
                        }

                        if (!sub_100026C38(a1, "initialReadStage200", v11, 8u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: initialReadStage200(12289): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }
                      }
                    }

                    else if (v21 == 12290)
                    {
                      if (v20 != 8)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: initialReadStage201(12290): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100026C38(a1, "initialReadStage201", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage201(12290): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    else if (v21 == 12291)
                    {
                      if (v20 != 8)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails201(12291): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100026C38(a1, "readStageNumOfFails201", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails201(12291): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    else
                    {
                      if (v20 != 8)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: initialReadStage202(12292): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100026C38(a1, "initialReadStage202", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage202(12292): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    goto LABEL_1372;
                  }

                  if (v21 <= 12295)
                  {
                    if (v21 == 12293)
                    {
                      if (v20 != 8)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: initialReadStage203(12293): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100026C38(a1, "initialReadStage203", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage203(12293): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    else if (v21 == 12294)
                    {
                      if (v20 != 8)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails202(12294): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100026C38(a1, "readStageNumOfFails202", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails202(12294): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    else
                    {
                      if (v20 != 8)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: readStageNumOfFails203(12295): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100026C38(a1, "readStageNumOfFails203", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: readStageNumOfFails203(12295): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }
                    }

                    goto LABEL_1372;
                  }

                  switch(v21)
                  {
                    case 12296:
                      if (v20 != 8)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: initialReadStage204(12296): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100026C38(a1, "initialReadStage204", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage204(12296): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                    case 12297:
                      if (v20 != 8)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: initialReadStage205(12297): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100026C38(a1, "initialReadStage205", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage205(12297): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                    case 12298:
                      if (v20 != 8)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: initialReadStage206(12298): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x10)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 3;
                      }

                      if (!sub_100026C38(a1, "initialReadStage206", v11, 8u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: initialReadStage206(12298): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                  }

LABEL_1826:
                  if (v21 < 0x4000)
                  {
                    v13 = "avg_rd_window_size";
                    v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
                    v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
                    v15 = "num_zq_failures";
                    v17 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes";
                    v18 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
                    switch(v21)
                    {
                      case 12299:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStage207(12299): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "initialReadStage207", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage207(12299): Error adding 1 elements to context";
                        break;
                      case 12300:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStage208(12300): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "initialReadStage208", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage208(12300): Error adding 1 elements to context";
                        break;
                      case 12301:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStage209(12301): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "initialReadStage209", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage209(12301): Error adding 1 elements to context";
                        break;
                      case 12302:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage200(12302): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage200", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage200(12302): Error adding 1 elements to context";
                        break;
                      case 12303:
                        if (v20 != 32)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage201(12303): cfg 4 elements; (4*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x28)
                        {
                          v27 = 4;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage201", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage201(12303): Error adding 4 elements to context";
                        break;
                      case 12304:
                        if (v20 != 32)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage202(12304): cfg 4 elements; (4*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x28)
                        {
                          v27 = 4;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage202", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage202(12304): Error adding 4 elements to context";
                        break;
                      case 12305:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStage210(12305): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "initialReadStage210", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage210(12305): Error adding 1 elements to context";
                        break;
                      case 12306:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStage211(12306): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "initialReadStage211", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage211(12306): Error adding 1 elements to context";
                        break;
                      case 12307:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage203(12307): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage203", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage203(12307): Error adding 1 elements to context";
                        break;
                      case 12308:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage204(12308): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage204", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage204(12308): Error adding 1 elements to context";
                        break;
                      case 12309:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage205(12309): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage205", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage205(12309): Error adding 1 elements to context";
                        break;
                      case 12310:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage206(12310): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage206", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage206(12310): Error adding 1 elements to context";
                        break;
                      case 12311:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage207(12311): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage207", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage207(12311): Error adding 1 elements to context";
                        break;
                      case 12312:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage208(12312): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage208", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage208(12312): Error adding 1 elements to context";
                        break;
                      case 12313:
                        if (v20 != 32)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage209(12313): cfg 4 elements; (4*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x28)
                        {
                          v27 = 4;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage209", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage209(12313): Error adding 4 elements to context";
                        break;
                      case 12314:
                        if (v20 != 32)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage210(12314): cfg 4 elements; (4*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x28)
                        {
                          v27 = 4;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage210", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage210(12314): Error adding 4 elements to context";
                        break;
                      case 12315:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStage212(12315): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "initialReadStage212", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage212(12315): Error adding 1 elements to context";
                        break;
                      case 12316:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStage213(12316): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "initialReadStage213", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage213(12316): Error adding 1 elements to context";
                        break;
                      case 12317:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage211(12317): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage211", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage211(12317): Error adding 1 elements to context";
                        break;
                      case 12318:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage212(12318): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage212", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage212(12318): Error adding 1 elements to context";
                        break;
                      case 12319:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage213(12319): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage213", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage213(12319): Error adding 1 elements to context";
                        break;
                      case 12320:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage214(12320): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage214", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage214(12320): Error adding 1 elements to context";
                        break;
                      case 12321:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: readStage215(12321): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "readStage215", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: readStage215(12321): Error adding 1 elements to context";
                        break;
                      case 12322:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter142(12322): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "dspExceptionParameter142", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter142(12322): Error adding 1 elements to context";
                        break;
                      case 12323:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter143(12323): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "dspExceptionParameter143", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter143(12323): Error adding 1 elements to context";
                        break;
                      case 12324:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter144(12324): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "dspExceptionParameter144", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter144(12324): Error adding 1 elements to context";
                        break;
                      case 12325:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStageParameter1(12325): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "initialReadStageParameter1", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStageParameter1(12325): Error adding 1 elements to context";
                        break;
                      case 12326:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStageParameter2(12326): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v27 = 1;
                        }

                        else
                        {
                          v27 = v20 >> 3;
                        }

                        if (sub_100026C38(a1, "initialReadStageParameter2", v11, 8u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStageParameter2(12326): Error adding 1 elements to context";
                        break;
                      case 12331:
                        if (v20 != 20)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStage11(12331): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x18)
                        {
                          v27 = 5;
                        }

                        else
                        {
                          v27 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "initialReadStage11_", v11, 4u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage11(12331): Error adding 5 elements to context";
                        break;
                      case 12332:
                        if (v20 != 32)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStage12(12332): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x24)
                        {
                          v27 = 8;
                        }

                        else
                        {
                          v27 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "initialReadStage12_", v11, 4u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage12(12332): Error adding 8 elements to context";
                        break;
                      case 12333:
                        if (v20 != 24)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: initialReadStage13(12333): cfg 6 elements; (6*4) cfg bytes != (%d) buffer bytes", 12294, 12297, "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context", 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x1C)
                        {
                          v27 = 6;
                        }

                        else
                        {
                          v27 = v20 >> 2;
                        }

                        if (sub_100026C38(a1, "initialReadStage13_", v11, 4u, v27))
                        {
                          goto LABEL_462;
                        }

                        v9 = "ASPMSPParseBufferToCxt: initialReadStage13(12333): Error adding 6 elements to context";
                        break;
                      default:
                        goto LABEL_463;
                    }

                    goto LABEL_2105;
                  }

                  if (v21 <= 16395)
                  {
                    switch(v21)
                    {
                      case 16384:
                        if (v20 != 8)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: fw_version_identifier(16384): cfg 1 elements; (1*8) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 0x10)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 3;
                        }

                        if (!sub_100026C38(a1, "fw_version_identifier", v11, 8u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: fw_version_identifier(16384): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }

                        goto LABEL_1372;
                      case 16394:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: coge_cache_hit_read(16394): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (!sub_100026C38(a1, "coge_cache_hit_read", v11, 4u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: coge_cache_hit_read(16394): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }

                        goto LABEL_1372;
                      case 16395:
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: coge_cache_miss_read(16395): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (!sub_100026C38(a1, "coge_cache_miss_read", v11, 4u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: coge_cache_miss_read(16395): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }

                        goto LABEL_1372;
                    }
                  }

                  else
                  {
                    if (v21 <= 16397)
                    {
                      if (v21 == 16396)
                      {
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: coge_cache_hit_program(16396): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (!sub_100026C38(a1, "coge_cache_hit_program", v11, 4u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: coge_cache_hit_program(16396): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }
                      }

                      else
                      {
                        if (v20 != 4)
                        {
                          sub_100012748("ASPMSPParseBufferToCxt: coge_cache_miss_program(16397): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                        }

                        if (v20 >= 8)
                        {
                          v37 = 1;
                        }

                        else
                        {
                          v37 = v20 >> 2;
                        }

                        if (!sub_100026C38(a1, "coge_cache_miss_program", v11, 4u, v37))
                        {
                          v9 = "ASPMSPParseBufferToCxt: coge_cache_miss_program(16397): Error adding 1 elements to context";
                          goto LABEL_2105;
                        }
                      }

                      goto LABEL_1372;
                    }

                    if (v21 == 16398)
                    {
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: coge_lru_num_of_replacement(16398): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (!sub_100026C38(a1, "coge_lru_num_of_replacement", v11, 4u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: coge_lru_num_of_replacement(16398): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

LABEL_1372:
                      v8 = v8 + v37;
                      goto LABEL_1373;
                    }

                    if (v21 == 16399)
                    {
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: coge_lru_num_of_searches(16399): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (!sub_100026C38(a1, "coge_lru_num_of_searches", v11, 4u, v37))
                      {
                        v9 = "ASPMSPParseBufferToCxt: coge_lru_num_of_searches(16399): Error adding 1 elements to context";
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                    }
                  }

LABEL_1373:
                  v13 = "avg_rd_window_size";
                  v14 = "ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes";
                  v16 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
LABEL_20:
                  v15 = "num_zq_failures";
LABEL_21:
                  v17 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes";
LABEL_913:
                  v18 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
                  break;
                case 4329:
                  if (v20 != 32)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter158(4329): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter158_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter158(4329): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4330:
                  if (v20 != 20)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter159(4330): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter159_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter159(4330): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4331:
                  if (v20 != 24)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: readStage112(4331): cfg 6 elements; (6*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x1C)
                  {
                    v37 = 6;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "readStage112_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage112(4331): Error adding 6 elements to context";
                  goto LABEL_2105;
                case 4332:
                  if (v20 != 32)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: readStageFail0(4332): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "readStageFail0_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStageFail0(4332): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4333:
                  if (v20 != 16)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: readStage113(4333): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x14)
                  {
                    v37 = 4;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "readStage113_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage113(4333): Error adding 4 elements to context";
                  goto LABEL_2105;
                case 4334:
                  if (v20 != 16)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: readStage114(4334): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x14)
                  {
                    v37 = 4;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "readStage114_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage114(4334): Error adding 4 elements to context";
                  goto LABEL_2105;
                case 4335:
                  if (v20 != 48)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter160(4335): cfg 12 elements; (12*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x34)
                  {
                    v37 = 12;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter160_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter160(4335): Error adding 12 elements to context";
                  goto LABEL_2105;
                case 4336:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife118(4336): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife118", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife118(4336): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4337:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: nandStageOfLife119(4337): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "nandStageOfLife119", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: nandStageOfLife119(4337): Error adding 1 elements to context";
                  goto LABEL_2105;
                case 4338:
                  if (v20 != 40)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: readStage115(4338): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x2C)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "readStage115_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage115(4338): Error adding 10 elements to context";
                  goto LABEL_2105;
                case 4339:
                  if (v20 != 40)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: readStageFail1(4339): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x2C)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "readStageFail1_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStageFail1(4339): Error adding 10 elements to context";
                  goto LABEL_2105;
                case 4340:
                  if (v20 != 12)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: readStageFail2(4340): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x10)
                  {
                    v37 = 3;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "readStageFail2_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStageFail2(4340): Error adding 3 elements to context";
                  goto LABEL_2105;
                case 4341:
                  if (v20 != 16)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: readStage116(4341): cfg 4 elements; (4*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x14)
                  {
                    v37 = 4;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "readStage116_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage116(4341): Error adding 4 elements to context";
                  goto LABEL_2105;
                case 4342:
                  if (v20 != 40)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: readStage117(4342): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x2C)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "readStage117_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage117(4342): Error adding 10 elements to context";
                  goto LABEL_2105;
                case 4343:
                  if (v20 != 20)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter161(4343): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter161_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter161(4343): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4344:
                  if (v20 != 12)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter162(4344): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x10)
                  {
                    v37 = 3;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter162_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter162(4344): Error adding 3 elements to context";
                  goto LABEL_2105;
                case 4345:
                  if (v20 != 40)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: readStage118(4345): cfg 10 elements; (10*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x2C)
                  {
                    v37 = 10;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "readStage118_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: readStage118(4345): Error adding 10 elements to context";
                  goto LABEL_2105;
                case 4346:
                  if (v20 != 32)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter163(4346): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter163_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter163(4346): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4347:
                  if (v20 != 32)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter164(4347): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter164_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter164(4347): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4348:
                  if (v20 != 32)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter165(4348): cfg 8 elements; (8*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x24)
                  {
                    v37 = 8;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter165_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter165(4348): Error adding 8 elements to context";
                  goto LABEL_2105;
                case 4349:
                  if (v20 != 20)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter166(4349): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter166_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter166(4349): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4350:
                  if (v20 != 20)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter167(4350): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x18)
                  {
                    v37 = 5;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter167_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter167(4350): Error adding 5 elements to context";
                  goto LABEL_2105;
                case 4351:
                  if (v20 != 12)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter168(4351): cfg 3 elements; (3*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 0x10)
                  {
                    v37 = 3;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter168_", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter168(4351): Error adding 3 elements to context";
                  goto LABEL_2105;
                case 4352:
                  if (v20 != 4)
                  {
                    sub_100012748("ASPMSPParseBufferToCxt: dspExceptionParameter169(4352): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                  }

                  if (v20 >= 8)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = v20 >> 2;
                  }

                  if (sub_100026C38(a1, "dspExceptionParameter169", v11, 4u, v37))
                  {
                    goto LABEL_1372;
                  }

                  v9 = "ASPMSPParseBufferToCxt: dspExceptionParameter169(4352): Error adding 1 elements to context";
                  goto LABEL_2105;
                default:
                  switch(v21)
                  {
                    case 8193:
                      if (v20 != 20)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: avg_rd_window_size(8193): cfg 5 elements; (5*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x18)
                      {
                        v37 = 5;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (!sub_100026C38(a1, "avg_rd_window_size", v11, 4u, v37))
                      {
                        goto LABEL_2105;
                      }

                      goto LABEL_1372;
                    case 8194:
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: num_zq_failures(8194): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "num_zq_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: num_zq_failures(8194): Error adding 1 elements to context";
                      break;
                    case 8195:
                      if (v20 != 64)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: lower_die_temperature(8195): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x44)
                      {
                        v37 = 16;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "lower_die_temperature", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: lower_die_temperature(8195): Error adding 16 elements to context";
                      break;
                    case 8196:
                      if (v20 != 64)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: higher_die_temperature(8196): cfg 16 elements; (16*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 0x44)
                      {
                        v37 = 16;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "higher_die_temperature", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: higher_die_temperature(8196): Error adding 16 elements to context";
                      break;
                    case 8197:
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: number_of_sram_flips(8197): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "number_of_sram_flips", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: number_of_sram_flips(8197): Error adding 1 elements to context";
                      break;
                    case 8198:
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: number_of_reset_failures(8198): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "number_of_reset_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: number_of_reset_failures(8198): Error adding 1 elements to context";
                      break;
                    case 8199:
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: device_config(8199): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "device_config", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: device_config(8199): Error adding 1 elements to context";
                      break;
                    case 8200:
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: number_of_throttling_events(8200): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "number_of_throttling_events", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: number_of_throttling_events(8200): Error adding 1 elements to context";
                      break;
                    case 8201:
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: link_speed_recoveries(8201): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "link_speed_recoveries", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: link_speed_recoveries(8201): Error adding 1 elements to context";
                      break;
                    case 8202:
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: fw_updates(8202): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "fw_updates", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: fw_updates(8202): Error adding 1 elements to context";
                      break;
                    case 8203:
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: maintenance_backup_to_main(8203): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "maintenance_backup_to_main", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: maintenance_backup_to_main(8203): Error adding 1 elements to context";
                      break;
                    case 8204:
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: maintenance_main_to_backup(8204): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "maintenance_main_to_backup", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: maintenance_main_to_backup(8204): Error adding 1 elements to context";
                      break;
                    case 8205:
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: boot_block_erase_failures(8205): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "boot_block_erase_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: boot_block_erase_failures(8205): Error adding 1 elements to context";
                      break;
                    case 8206:
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: boot_block_program_failures(8206): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "boot_block_program_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: boot_block_program_failures(8206): Error adding 1 elements to context";
                      break;
                    case 8207:
                      if (v20 != 4)
                      {
                        sub_100012748("ASPMSPParseBufferToCxt: boot_block_read_verify_failures(8207): cfg 1 elements; (1*4) cfg bytes != (%d) buffer bytes", 12294, 12297, 12296, 12295, 12292, 12289, 12290, v20);
                      }

                      if (v20 >= 8)
                      {
                        v37 = 1;
                      }

                      else
                      {
                        v37 = v20 >> 2;
                      }

                      if (sub_100026C38(a1, "boot_block_read_verify_failures", v11, 4u, v37))
                      {
                        goto LABEL_1372;
                      }

                      v9 = "ASPMSPParseBufferToCxt: boot_block_read_verify_failures(8207): Error adding 1 elements to context";
                      break;
                    default:
                      goto LABEL_930;
                  }

                  goto LABEL_2105;
              }

              break;
          }

          break;
      }
    }

LABEL_463:
    v11 += v20;
    v10 -= v20;
  }
}

uint64_t sub_10002E2CC(uint64_t result, const char *a2, const char *a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    v8 = malloc_type_calloc(1uLL, 0x78uLL, 0x102004060B2607BuLL);
    v9 = malloc_type_calloc(1uLL, 0x78uLL, 0x102004060B2607BuLL);
    v10 = v9;
    if (v8 && v9)
    {
      v11 = v7[1];
      if (v11 && (v12 = v7[3]) != 0)
      {
        *(v11 + 112) = v9;
        v13 = (v12 + 112);
      }

      else
      {
        *v7 = v9;
        v13 = (v7 + 2);
      }

      *v13 = v8;
      v7[1] = v9;
      v7[3] = v8;
      *(v8 + 14) = 0;
      *(v9 + 14) = 0;
      snprintf(v9, 0x63uLL, "%s%s", a2, a3);
      v10[99] = 0;
      snprintf(v8, 0x63uLL, "%llu", a4);
      v8[99] = 0;
      *(v8 + 13) = a4;
      return 1;
    }

    else
    {
      if (v8)
      {
        free(v8);
      }

      if (v10)
      {
        free(v10);
      }

      return 0;
    }
  }

  return result;
}

double sub_10002E3F0(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      do
      {
        v3 = v2[14];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = v4[14];
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10002E450(void *a1, const char *a2, const char *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x78uLL, 0x102004060B2607BuLL);
  v9 = malloc_type_malloc(0x78uLL, 0x102004060B2607BuLL);
  v10 = v9;
  v11 = a1[1];
  if (v11 && (v12 = a1[3]) != 0)
  {
    *(v11 + 112) = v9;
    v13 = (v12 + 112);
  }

  else
  {
    *a1 = v9;
    v13 = (a1 + 2);
  }

  *v13 = v8;
  a1[1] = v9;
  a1[3] = v8;
  *(v8 + 14) = 0;
  v9[14] = 0;
  snprintf(v9, 0x63uLL, "%s%s", a2, a3);
  *(v10 + 99) = 0;
  result = snprintf(v8, 0x63uLL, "%llu", a4);
  v8[99] = 0;
  *(v8 + 13) = a4;
  return result;
}

uint64_t sub_10002E538(unsigned int a1, uint64_t *a2, void *a3)
{
  v12 = 0;
  if (!a2 || !a3)
  {
    v4 = __stderrp;
    v5 = "Error: Exporting data must output to buffer externally!\n";
    v6 = 56;
    goto LABEL_6;
  }

  if (a1 <= 1)
  {
    v4 = __stderrp;
    v5 = "Error: system counters only supported on OSX\n";
    v6 = 45;
LABEL_6:
    fwrite(v5, v6, 1uLL, v4);
    return 0;
  }

  v8 = a1 - 3;
  if (a1 - 3 >= 7)
  {
    fprintf(__stderrp, "Error: Not supported option %d\n", a1);
    return 0;
  }

  v10 = dword_100094568[v8];
  v11 = sub_10003DDE4(0, v10, qword_100094530[v8], &v12, 0, 0);
  *a2 = v11;
  if (v11)
  {
    *a3 = v12;
    return 1;
  }

  else
  {
    fprintf(__stderrp, "Error: Failed to get tunnel buffer for cmd option %d.\n", v10);
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t sub_10002E660(int a1, uint64_t a2, unint64_t *a3)
{
  __nbyte = 0x100000;
  v12 = 0;
  if (sub_10003E22C(&v12) && v12 && *(v12 + 4))
  {
    v6 = malloc_type_malloc(0x100000uLL, 0x64F9E6E2uLL);
    if (v6)
    {
      v7 = 0;
      v8 = a2 - 1;
      while (1)
      {
        __nbyte = 0x100000;
        bzero(v6, 0x100000uLL);
        if (!sub_10003DE34(v12, v6, &__nbyte, 36, 0, 0, 1, 1))
        {
          break;
        }

        if (__nbyte)
        {
          write(a1, v6, __nbyte);
          v7 += __nbyte;
          if (v8 >= v7)
          {
            continue;
          }
        }

        v9 = 1;
        goto LABEL_12;
      }

      fwrite("Error: Tunnel command IOLog extraction failed\n", 0x2EuLL, 1uLL, __stderrp);
    }

    else
    {
      fprintf(__stderrp, "Error: failed to malloc %u bytes for iolog export.\n", 0x100000);
      v7 = 0;
    }
  }

  else
  {
    fwrite("Unable to get nand connection\n", 0x1EuLL, 1uLL, __stderrp);
    v7 = 0;
    v6 = 0;
  }

  v9 = 0;
LABEL_12:
  if (v12)
  {
    sub_10003E378(v12);
  }

  if (v6)
  {
    free(v6);
  }

  if (a3)
  {
    *a3 = v7;
  }

  return v9;
}

uint64_t sub_10002E7E8(int a1, _DWORD *a2, int a3)
{
  outputStruct = 0;
  *v11 = 0;
  if (!sub_10003E22C(v11) || !*v11 || !*(*v11 + 16))
  {
    v7 = __stderrp;
    v8 = "Unable to get nand connection\n";
    v9 = 30;
LABEL_12:
    fwrite(v8, v9, 1uLL, v7);
    v6 = 0;
    goto LABEL_13;
  }

  if ((sub_10003E0A8(*v11, 34, a1, &outputStruct) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (a2)
  {
    *a2 = outputStruct;
  }

  if (a3 && (sub_10003E0A8(*v11, 34, outputStruct, &outputStruct) & 1) == 0)
  {
LABEL_11:
    v7 = __stderrp;
    v8 = "Error calling CoreDebugTunnel method to get/set iolog level!\n";
    v9 = 61;
    goto LABEL_12;
  }

  v6 = 1;
LABEL_13:
  sub_10003E378(*v11);
  return v6;
}

uint64_t sub_10002E8D4(unsigned int **a1, unint64_t *a2, BOOL *a3, void *a4, _DWORD *a5)
{
  if (!a3 || !a4 || !sub_10002EA50(0, a1, a2, 1, 0))
  {
    goto LABEL_31;
  }

  v10 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v11 = *a2;
  if (!*a2)
  {
    return 1;
  }

  if (a5)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v10 + v11;
    while (1)
    {
      v16 = v10 + 2;
      if ((v10 + 2) > v15)
      {
        break;
      }

      v17 = *(v10 + 6);
      v18 = *v10;
      v19 = *v10 * *(v10 + 6);
      v20 = v19 >= v11;
      v21 = (v16 + v19);
      if (v20 || v21 > v15)
      {
        break;
      }

      v23 = *(v10 + 2);
      switch(v23)
      {
        case 1:
          if (v17 != 8 || v18 != 1)
          {
            goto LABEL_29;
          }

          *a4 = *v16;
          v12 = 1;
          break;
        case 4:
          if (v17 != 4 || v18 != 1)
          {
            goto LABEL_29;
          }

          *a5 = *v16;
          v13 = 1;
          break;
        case 10:
          if (v17 != 1 || v18 != 1)
          {
            goto LABEL_29;
          }

          *a3 = *v16 == 0;
          v14 = 1;
          break;
      }

      v10 = v21;
      if (v14)
      {
        v10 = v21;
        if (v12)
        {
          v10 = v21;
          if (v13)
          {
            return 1;
          }
        }
      }
    }

LABEL_29:
    if (v12 & v14 & v13)
    {
      return 1;
    }

LABEL_31:
    if (!a1)
    {
      goto LABEL_34;
    }

    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_34;
    }
  }

  free(v10);
  *a1 = 0;
LABEL_34:
  result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_10002EA50(char **a1, void **a2, size_t *a3, int a4, int a5)
{
  if (!a2 || !a3)
  {
    *a3 = 0;
    LODWORD(v8) = -1;
    if (!a2)
    {
      goto LABEL_10;
    }

LABEL_20:
    if (*a2)
    {
      free(*a2);
      *a2 = 0;
    }

    goto LABEL_10;
  }

  if (a4 == 1)
  {
    v8 = 265;
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v8 = 267;
LABEL_13:
    v9 = sub_10003DA48(a1, v8, 0, 0, a3, 0, 0);
    *a2 = v9;
    if (v9 && *a3)
    {
      return 1;
    }

    *a3 = 0;
    goto LABEL_20;
  }

  if (!a1 || !*a2 || !*a3 || (v7 = 1, (sub_10003E08C(a1, 266, a5, *a2, *a3, 1, 1) & 1) == 0))
  {
    *a3 = 0;
    LODWORD(v8) = 266;
LABEL_10:
    fprintf(__stderrp, "get IOLog SPD buffer with opcode 0x%x failed", v8);
    return 0;
  }

  return v7;
}

uint64_t sub_10002EB7C(char **a1, uint64_t a2, int a3, uint64_t *a4, void *a5)
{
  if (a3)
  {
    v6 = 10;
  }

  else
  {
    v6 = 13;
  }

  v10 = 0;
  if (a4 && a5)
  {
    v8 = sub_10003DA48(a1, v6, 0, a2, &v10, 0, 0);
    *a4 = v8;
    if (v8)
    {
      *a5 = v10;
      return 1;
    }

    else
    {
      fprintf(__stderrp, "Error: Failed to get tunnel buffer for cmd option %d.\n", v6);
      result = 0;
      *a5 = 0;
    }
  }

  else
  {
    fwrite("Error: Exporting data must output to buffer externally!\n", 0x38uLL, 1uLL, __stderrp);
    return 0;
  }

  return result;
}

uint64_t print_asp_magazine_stats(char *a1, uint64_t a2, int a3)
{
  v8 = 0;
  v9 = 0;
  if (sub_10002EB7C(0, a2, a3, &v9, &v8))
  {
    if (a3)
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }

    sub_10002ECF8(a1, v9, v8 >> 3, v5);
    free(v9);
    return 1;
  }

  else
  {
    v7 = "all";
    if (a3)
    {
      v7 = "perm";
    }

    fprintf(__stderrp, "Error: IO NVMe Smart cmd failed to extract ASP %s stats!\n", v7);
    return 0;
  }
}

uint64_t sub_10002ECF8(char *__filename, unint64_t *a2, int a3, uint64_t a4)
{
  v7 = __filename;
  if (__filename)
  {
    v8 = fopen(__filename, "a");
    if (!v8)
    {
      return fprintf(__stderrp, "Unable to open %s\n", v7);
    }
  }

  else
  {
    v8 = __stdoutp;
  }

  fwrite("NAND stats:\n", 0xCuLL, 1uLL, v8);
  result = fwrite("===========\n", 0xCuLL, 1uLL, v8);
  if (!a3)
  {
    goto LABEL_3286;
  }

  v10 = a4 & 3;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  LODWORD(v14) = 0;
  LODWORD(v487) = 0;
  v488 = 0;
  v489 = 0;
  while (1)
  {
    v17 = *a2;
    v16 = a2 + 1;
    v15 = v17;
    v18 = a3 - 1;
    v19 = HIDWORD(v17);
    if (v18 < HIDWORD(v17))
    {
      break;
    }

    v490 = v18;
    if (v15 > 49)
    {
      if (v15 > 128)
      {
        if (v15 == 129)
        {
          v12 = *v16;
          goto LABEL_31;
        }

        if (v15 == 677)
        {
          v11 = *v16;
          goto LABEL_31;
        }
      }

      else
      {
        if (v15 == 50)
        {
          v487 = *v16;
          goto LABEL_31;
        }

        if (v15 == 84)
        {
          v13 = *v16;
          goto LABEL_31;
        }
      }
    }

    else if (v15 > 19)
    {
      if (v15 == 20)
      {
        v488 = *v16;
        goto LABEL_31;
      }

      if (v15 == 49)
      {
        v14 = *v16;
        goto LABEL_31;
      }
    }

    else
    {
      if (v15 == 1)
      {
        result = fprintf(v8, "%20s:\t0x%llx\n");
        goto LABEL_32;
      }

      if (v15 == 4)
      {
        v489 = *v16;
LABEL_31:
        result = fprintf(v8, "%20s:\t%llu\n");
        goto LABEL_32;
      }
    }

    if ((a4 & 1) != 0 && v15 == 678 || (a4 & 1) != 0 && v15 == 679)
    {
      goto LABEL_31;
    }

    if ((a4 & 1) == 0 || v15 != 680)
    {
      if (((a4 & 1) == 0 || v15 != 2) && ((a4 & 1) == 0 || v15 != 3) && ((a4 & 1) == 0 || v15 != 5) && ((a4 & 1) == 0 || v15 != 6) && ((a4 & 1) == 0 || v15 != 27) && ((a4 & 1) == 0 || v15 != 99) && ((a4 & 1) == 0 || v15 != 107) && ((a4 & 1) == 0 || v15 != 1066) && ((a4 & 1) == 0 || v15 != 191) && ((a4 & 1) == 0 || v15 != 7))
      {
        v486 = v12;
        if ((a4 & 1) != 0 && v15 == 8)
        {
          result = fprintf(v8, "%20s:\t%llu\n", "validLbas", *v16);
LABEL_42:
          v12 = v486;
          goto LABEL_32;
        }

        v485 = v10;
        if ((a4 & 1) != 0 && v15 == 9 || (a4 & 1) != 0 && v15 == 10 || (a4 & 1) != 0 && v15 == 11 || (a4 & 1) != 0 && v15 == 12 || (a4 & 1) != 0 && v15 == 895 || (a4 & 1) != 0 && v15 == 13 || (a4 & 2) != 0 && v15 == 739)
        {
LABEL_80:
          result = fprintf(v8, "%20s:\t%llu\n");
        }

        else if ((a4 & 1) != 0 && v15 == 14)
        {
          result = fprintf(v8, "%20s:\n", "hostWriteLogHisto");
          if (v19)
          {
            v26 = 0;
            if (v19 >= 0xA)
            {
              v27 = 10;
            }

            else
            {
              v27 = v19;
            }

            do
            {
              result = fprintf(v8, "                      [%d] = %llu\n", v26, v16[v26]);
              ++v26;
            }

            while (v27 != v26);
          }
        }

        else if ((a4 & 1) != 0 && v15 == 15)
        {
          result = fprintf(v8, "%20s:\n", "hostReadLogHisto");
          if (v19)
          {
            v28 = 0;
            if (v19 >= 0xA)
            {
              v29 = 10;
            }

            else
            {
              v29 = v19;
            }

            do
            {
              result = fprintf(v8, "                      [%d] = %llu\n", v28, v16[v28]);
              ++v28;
            }

            while (v29 != v28);
          }
        }

        else
        {
          if ((a4 & 1) != 0 && v15 == 17 || (a4 & 1) != 0 && v15 == 18 || (a4 & 1) != 0 && v15 == 19 || (a4 & 1) != 0 && v15 == 916 || (a4 & 1) != 0 && v15 == 917 || (a4 & 1) != 0 && v15 == 1024 || (a4 & 1) != 0 && v15 == 1314 || (a4 & 1) != 0 && v15 == 1360 || (a4 & 1) != 0 && v15 == 414 || (a4 & 1) != 0 && v15 == 22 || (a4 & 1) != 0 && v15 == 23 || (a4 & 1) != 0 && v15 == 24 || (a4 & 1) != 0 && v15 == 404 || (a4 & 1) != 0 && v15 == 1274 || (a4 & 1) != 0 && v15 == 817 || (a4 & 1) != 0 && v15 == 818 || (a4 & 1) != 0 && v15 == 819 || (a4 & 1) != 0 && v15 == 820 || (a4 & 1) != 0 && v15 == 28 || (a4 & 1) != 0 && v15 == 30 || (a4 & 1) != 0 && v15 == 31 || (a4 & 1) != 0 && v15 == 337 || (a4 & 1) != 0 && v15 == 34 || (a4 & 1) != 0 && v15 == 92 || (a4 & 1) != 0 && v15 == 36 || (a4 & 1) != 0 && v15 == 37 || (a4 & 1) != 0 && v15 == 190 || (a4 & 1) != 0 && v15 == 38 || (a4 & 1) != 0 && v15 == 39 || (a4 & 1) != 0 && v15 == 41 || (a4 & 1) != 0 && v15 == 42 || (a4 & 1) != 0 && v15 == 43 || (a4 & 1) != 0 && v15 == 44 || (a4 & 1) != 0 && v15 == 996 || (a4 & 1) != 0 && v15 == 997 || (a4 & 1) != 0 && v15 == 998 || (a4 & 1) != 0 && v15 == 999 || (a4 & 1) != 0 && v15 == 45 || (a4 & 1) != 0 && v15 == 334 || (a4 & 2) != 0 && v15 == 198 || (a4 & 2) != 0 && v15 == 46 || (a4 & 1) != 0 && v15 == 47 || (a4 & 1) != 0 && v15 == 379 || (a4 & 1) != 0 && v15 == 48 || (a4 & 2) != 0 && v15 == 51 || (a4 & 2) != 0 && v15 == 52 || (a4 & 2) != 0 && v15 == 53)
          {
            goto LABEL_80;
          }

          if ((a4 & 2) != 0 && v15 == 54)
          {
            result = fprintf(v8, "%20s:\n", "ECBins");
            if (v19)
            {
              v30 = 0;
              if (v19 >= 0x64)
              {
                v31 = 100;
              }

              else
              {
                v31 = v19;
              }

              do
              {
                result = fprintf(v8, "                      [%d] = %llu\n", v30, v16[v30]);
                ++v30;
              }

              while (v31 != v30);
            }
          }

          else if ((a4 & 2) != 0 && v15 == 55)
          {
            result = fprintf(v8, "%20s:\n", "RCBins");
            if (v19)
            {
              v32 = 0;
              if (v19 >= 0x64)
              {
                v33 = 100;
              }

              else
              {
                v33 = v19;
              }

              do
              {
                result = fprintf(v8, "                      [%d] = %llu\n", v32, v16[v32]);
                ++v32;
              }

              while (v33 != v32);
            }
          }

          else
          {
            if ((a4 & 2) != 0 && v15 == 56 || (a4 & 2) != 0 && v15 == 57 || (a4 & 2) != 0 && v15 == 58 || (a4 & 2) != 0 && v15 == 791 || (a4 & 1) != 0 && v15 == 1189 || (a4 & 1) != 0 && v15 == 1325)
            {
              goto LABEL_80;
            }

            if ((a4 & 1) != 0 && v15 == 1190)
            {
              result = fprintf(v8, "%20s:\n", "powerDownTime");
              if (v19)
              {
                v34 = 0;
                if (v19 >= 0xB)
                {
                  v35 = 11;
                }

                else
                {
                  v35 = v19;
                }

                do
                {
                  result = fprintf(v8, "                      [%d] = %llu\n", v34, v16[v34]);
                  ++v34;
                }

                while (v35 != v34);
              }
            }

            else
            {
              if ((a4 & 1) != 0 && v15 == 1244)
              {
                goto LABEL_80;
              }

              if ((a4 & 1) != 0 && v15 == 90)
              {
                result = fprintf(v8, "%20s:\n", "qosPerCmdQ");
                if (v19)
                {
                  v36 = 0;
                  if (v19 >= 0xA0)
                  {
                    v37 = 160;
                  }

                  else
                  {
                    v37 = v19;
                  }

                  do
                  {
                    result = fprintf(v8, "                      [%d] = %llu\n", v36, v16[v36]);
                    ++v36;
                  }

                  while (v37 != v36);
                }
              }

              else if ((a4 & 1) != 0 && v15 == 91)
              {
                result = fprintf(v8, "%20s:\n", "maxQosPerCmdQ");
                if (v19)
                {
                  v38 = 0;
                  if (v19 >= 0xA)
                  {
                    v39 = 10;
                  }

                  else
                  {
                    v39 = v19;
                  }

                  do
                  {
                    result = fprintf(v8, "                      [%d] = %llu\n", v38, v16[v38]);
                    ++v38;
                  }

                  while (v39 != v38);
                }
              }

              else
              {
                if ((a4 & 2) != 0 && v15 == 59 || (a4 & 2) != 0 && v15 == 60 || (a4 & 2) != 0 && v15 == 61 || (a4 & 2) != 0 && v15 == 62 || (a4 & 2) != 0 && v15 == 63 || (a4 & 2) != 0 && v15 == 64 || (a4 & 2) != 0 && v15 == 65 || (a4 & 2) != 0 && v15 == 66 || (a4 & 2) != 0 && v15 == 67 || (a4 & 2) != 0 && v15 == 68 || (a4 & 2) != 0 && v15 == 69 || (a4 & 2) != 0 && v15 == 70 || (a4 & 2) != 0 && v15 == 109 || (a4 & 2) != 0 && v15 == 71 || (a4 & 2) != 0 && v15 == 72 || (a4 & 1) != 0 && v15 == 73 || (a4 & 1) != 0 && v15 == 75 || (a4 & 1) != 0 && v15 == 76 || (a4 & 1) != 0 && v15 == 77)
                {
                  goto LABEL_80;
                }

                if ((a4 & 1) != 0 && v15 == 265)
                {
                  result = fprintf(v8, "%20s:\n", "readCountHisto");
                  if (v19)
                  {
                    v40 = 0;
                    if (v19 >= 5)
                    {
                      v41 = 5;
                    }

                    else
                    {
                      v41 = v19;
                    }

                    do
                    {
                      result = fprintf(v8, "                      [%d] = %llu\n", v40, v16[v40]);
                      ++v40;
                    }

                    while (v41 != v40);
                  }
                }

                else
                {
                  if ((a4 & 1) != 0 && v15 == 80 || (a4 & 1) != 0 && v15 == 81 || (a4 & 1) != 0 && v15 == 82 || (a4 & 1) != 0 && v15 == 1019 || (a4 & 2) != 0 && v15 == 85 || (a4 & 2) != 0 && v15 == 86 || (a4 & 1) != 0 && v15 == 87)
                  {
                    goto LABEL_80;
                  }

                  if ((a4 & 1) != 0 && v15 == 93)
                  {
                    result = fprintf(v8, "%20s:\n", "numBandsRefreshedForAgePerTier");
                    if (v19)
                    {
                      v42 = 0;
                      if (v19 >= 3)
                      {
                        v43 = 3;
                      }

                      else
                      {
                        v43 = v19;
                      }

                      do
                      {
                        result = fprintf(v8, "                      [%d] = %llu\n", v42, v16[v42]);
                        ++v42;
                      }

                      while (v43 != v42);
                    }
                  }

                  else if ((a4 & 1) != 0 && v15 == 94)
                  {
                    result = fprintf(v8, "%20s:\n", "bdrDeltaHot");
                    if (v19)
                    {
                      v44 = 0;
                      if (v19 >= 0x14)
                      {
                        v45 = 20;
                      }

                      else
                      {
                        v45 = v19;
                      }

                      do
                      {
                        result = fprintf(v8, "                      [%d] = %llu\n", v44, v16[v44]);
                        ++v44;
                      }

                      while (v45 != v44);
                    }
                  }

                  else
                  {
                    if ((a4 & 1) != 0 && v15 == 112 || (a4 & 1) != 0 && v15 == 95 || (a4 & 1) != 0 && v15 == 96 || (a4 & 1) != 0 && v15 == 381 || (a4 & 1) != 0 && v15 == 1264 || (a4 & 1) != 0 && v15 == 1289 || (a4 & 1) != 0 && v15 == 130 || (a4 & 1) != 0 && v15 == 97 || (a4 & 1) != 0 && v15 == 98 || (a4 & 4) != 0 && v15 == 106 || (a4 & 4) != 0 && v15 == 100 || (a4 & 4) != 0 && v15 == 101 || (a4 & 4) != 0 && v15 == 102 || (a4 & 4) != 0 && v15 == 103 || (a4 & 4) != 0 && v15 == 104 || (a4 & 4) != 0 && v15 == 105 || (a4 & 2) != 0 && v15 == 110)
                    {
                      goto LABEL_80;
                    }

                    if ((a4 & 1) != 0 && v15 == 113)
                    {
                      result = fprintf(v8, "%20s:\n", "bandsPerHostFlow");
                      if (v19)
                      {
                        v46 = 0;
                        if (v19 >= 4)
                        {
                          v47 = 4;
                        }

                        else
                        {
                          v47 = v19;
                        }

                        do
                        {
                          result = fprintf(v8, "                      [%d] = %llu\n", v46, v16[v46]);
                          ++v46;
                        }

                        while (v47 != v46);
                      }
                    }

                    else if ((a4 & 1) != 0 && v15 == 114)
                    {
                      result = fprintf(v8, "%20s:\n", "bandsPerSpecialFlow");
                      if (v19)
                      {
                        v48 = 0;
                        if (v19 >= 5)
                        {
                          v49 = 5;
                        }

                        else
                        {
                          v49 = v19;
                        }

                        do
                        {
                          result = fprintf(v8, "                      [%d] = %llu\n", v48, v16[v48]);
                          ++v48;
                        }

                        while (v49 != v48);
                      }
                    }

                    else if ((a4 & 1) != 0 && v15 == 115)
                    {
                      result = fprintf(v8, "%20s:\n", "secsPerHostFlow");
                      if (v19)
                      {
                        v50 = 0;
                        if (v19 >= 4)
                        {
                          v51 = 4;
                        }

                        else
                        {
                          v51 = v19;
                        }

                        do
                        {
                          result = fprintf(v8, "                      [%d] = %llu\n", v50, v16[v50]);
                          ++v50;
                        }

                        while (v51 != v50);
                      }
                    }

                    else if ((a4 & 1) != 0 && v15 == 116)
                    {
                      result = fprintf(v8, "%20s:\n", "secsPerSpecialFlow");
                      if (v19)
                      {
                        v52 = 0;
                        if (v19 >= 5)
                        {
                          v53 = 5;
                        }

                        else
                        {
                          v53 = v19;
                        }

                        do
                        {
                          result = fprintf(v8, "                      [%d] = %llu\n", v52, v16[v52]);
                          ++v52;
                        }

                        while (v53 != v52);
                      }
                    }

                    else if ((a4 & 1) != 0 && v15 == 118)
                    {
                      result = fprintf(v8, "%20s:\n", "overWritesPerHostFlow");
                      if (v19)
                      {
                        v54 = 0;
                        if (v19 >= 4)
                        {
                          v55 = 4;
                        }

                        else
                        {
                          v55 = v19;
                        }

                        do
                        {
                          result = fprintf(v8, "                      [%d] = %llu\n", v54, v16[v54]);
                          ++v54;
                        }

                        while (v55 != v54);
                      }
                    }

                    else if ((a4 & 1) != 0 && v15 == 119)
                    {
                      result = fprintf(v8, "%20s:\n", "overWritesPerSpecialFlow");
                      if (v19)
                      {
                        v56 = 0;
                        if (v19 >= 5)
                        {
                          v57 = 5;
                        }

                        else
                        {
                          v57 = v19;
                        }

                        do
                        {
                          result = fprintf(v8, "                      [%d] = %llu\n", v56, v16[v56]);
                          ++v56;
                        }

                        while (v57 != v56);
                      }
                    }

                    else if ((a4 & 1) != 0 && v15 == 120)
                    {
                      result = fprintf(v8, "%20s:\n", "padSectorsPerFlow");
                      if (v19)
                      {
                        v58 = 0;
                        if (v19 >= 0xA)
                        {
                          v59 = 10;
                        }

                        else
                        {
                          v59 = v19;
                        }

                        do
                        {
                          result = fprintf(v8, "                      [%d] = %llu\n", v58, v16[v58]);
                          ++v58;
                        }

                        while (v59 != v58);
                      }
                    }

                    else if ((a4 & 1) != 0 && v15 == 121)
                    {
                      result = fprintf(v8, "%20s:\n", "padSizes");
                      if (v19)
                      {
                        v60 = 0;
                        if (v19 >= 4)
                        {
                          v61 = 4;
                        }

                        else
                        {
                          v61 = v19;
                        }

                        do
                        {
                          result = fprintf(v8, "                      [%d] = %llu\n", v60, v16[v60]);
                          ++v60;
                        }

                        while (v61 != v60);
                      }
                    }

                    else
                    {
                      if ((a4 & 1) != 0 && v15 == 740)
                      {
                        goto LABEL_80;
                      }

                      if ((a4 & 1) != 0 && v15 == 122)
                      {
                        result = fprintf(v8, "%20s:\n", "unmapsPerHostFlow");
                        if (v19)
                        {
                          v62 = 0;
                          if (v19 >= 4)
                          {
                            v63 = 4;
                          }

                          else
                          {
                            v63 = v19;
                          }

                          do
                          {
                            result = fprintf(v8, "                      [%d] = %llu\n", v62, v16[v62]);
                            ++v62;
                          }

                          while (v63 != v62);
                        }
                      }

                      else if ((a4 & 1) != 0 && v15 == 123)
                      {
                        result = fprintf(v8, "%20s:\n", "unmapsPerSpecialFlow");
                        if (v19)
                        {
                          v64 = 0;
                          if (v19 >= 5)
                          {
                            v65 = 5;
                          }

                          else
                          {
                            v65 = v19;
                          }

                          do
                          {
                            result = fprintf(v8, "                      [%d] = %llu\n", v64, v16[v64]);
                            ++v64;
                          }

                          while (v65 != v64);
                        }
                      }

                      else if ((a4 & 1) != 0 && v15 == 124)
                      {
                        result = fprintf(v8, "%20s:\n", "coldestCycle");
                        if (v19)
                        {
                          v66 = 0;
                          if (v19 >= 2)
                          {
                            v67 = 2;
                          }

                          else
                          {
                            v67 = v19;
                          }

                          do
                          {
                            result = fprintf(v8, "                      [%d] = %llu\n", v66, v16[v66]);
                            ++v66;
                          }

                          while (v67 != v66);
                        }
                      }

                      else if ((a4 & 1) != 0 && v15 == 503)
                      {
                        result = fprintf(v8, "%20s:\n", "avgCycle");
                        if (v19)
                        {
                          v68 = 0;
                          if (v19 >= 2)
                          {
                            v69 = 2;
                          }

                          else
                          {
                            v69 = v19;
                          }

                          do
                          {
                            result = fprintf(v8, "                      [%d] = %llu\n", v68, v16[v68]);
                            ++v68;
                          }

                          while (v69 != v68);
                        }
                      }

                      else if ((a4 & 1) != 0 && v15 == 125)
                      {
                        result = fprintf(v8, "%20s:\n", "hottestCycle");
                        if (v19)
                        {
                          v70 = 0;
                          if (v19 >= 2)
                          {
                            v71 = 2;
                          }

                          else
                          {
                            v71 = v19;
                          }

                          do
                          {
                            result = fprintf(v8, "                      [%d] = %llu\n", v70, v16[v70]);
                            ++v70;
                          }

                          while (v71 != v70);
                        }
                      }

                      else
                      {
                        if ((a4 & 1) != 0 && v15 == 16 || (a4 & 1) != 0 && v15 == 126 || (a4 & 1) != 0 && v15 == 139 || (a4 & 1) != 0 && v15 == 576 || (a4 & 1) != 0 && v15 == 604 || (a4 & 1) != 0 && v15 == 721 || (a4 & 1) != 0 && v15 == 722 || (a4 & 1) != 0 && v15 == 140 || (a4 & 1) != 0 && v15 == 346)
                        {
                          goto LABEL_80;
                        }

                        if ((a4 & 1) != 0 && v15 == 131)
                        {
                          result = fprintf(v8, "%20s:\n", "errInjCounters");
                          if (v19)
                          {
                            v72 = 0;
                            if (v19 >= 8)
                            {
                              v73 = 8;
                            }

                            else
                            {
                              v73 = v19;
                            }

                            do
                            {
                              result = fprintf(v8, "                      [%d] = %llu\n", v72, v16[v72]);
                              ++v72;
                            }

                            while (v73 != v72);
                          }
                        }

                        else
                        {
                          if ((a4 & 2) != 0 && v15 == 962 || (a4 & 1) != 0 && v15 == 132 || (a4 & 1) != 0 && v15 == 133 || (a4 & 1) != 0 && v15 == 135 || (a4 & 1) != 0 && v15 == 388 || (a4 & 1) != 0 && v15 == 389 || (a4 & 1) != 0 && v15 == 390 || (a4 & 1) != 0 && v15 == 391 || (a4 & 1) != 0 && v15 == 392 || (a4 & 1) != 0 && v15 == 393 || (a4 & 1) != 0 && v15 == 394 || (a4 & 1) != 0 && v15 == 395 || (a4 & 1) != 0 && v15 == 586 || (a4 & 1) != 0 && v15 == 587 || (a4 & 1) != 0 && v15 == 1383 || (a4 & 1) != 0 && v15 == 1384 || (a4 & 1) != 0 && v15 == 1385 || (a4 & 1) != 0 && v15 == 1386 || (a4 & 1) != 0 && v15 == 760 || (a4 & 1) != 0 && v15 == 761 || (a4 & 1) != 0 && v15 == 762 || (a4 & 1) != 0 && v15 == 763 || (a4 & 1) != 0 && v15 == 134)
                          {
                            goto LABEL_80;
                          }

                          if ((a4 & 1) != 0 && v15 == 476)
                          {
                            result = fprintf(v8, "%20s:\n", "raidSuccessfulRecoLbaRange");
                            if (v19)
                            {
                              v74 = 0;
                              if (v19 >= 2)
                              {
                                v75 = 2;
                              }

                              else
                              {
                                v75 = v19;
                              }

                              do
                              {
                                result = fprintf(v8, "                      [%d] = %llu\n", v74, v16[v74]);
                                ++v74;
                              }

                              while (v75 != v74);
                            }
                          }

                          else if ((a4 & 1) != 0 && v15 == 477)
                          {
                            result = fprintf(v8, "%20s:\n", "raidFailedRecoLbaRange");
                            if (v19)
                            {
                              v76 = 0;
                              if (v19 >= 2)
                              {
                                v77 = 2;
                              }

                              else
                              {
                                v77 = v19;
                              }

                              do
                              {
                                result = fprintf(v8, "                      [%d] = %llu\n", v76, v16[v76]);
                                ++v76;
                              }

                              while (v77 != v76);
                            }
                          }

                          else if ((a4 & 1) != 0 && v15 == 630)
                          {
                            result = fprintf(v8, "%20s:\n", "raidSuccessfulRecoEAN");
                            if (v19)
                            {
                              v78 = 0;
                              if (v19 >= 6)
                              {
                                v79 = 6;
                              }

                              else
                              {
                                v79 = v19;
                              }

                              do
                              {
                                result = fprintf(v8, "                      [%d] = %llu\n", v78, v16[v78]);
                                ++v78;
                              }

                              while (v79 != v78);
                            }
                          }

                          else if ((a4 & 1) != 0 && v15 == 631)
                          {
                            result = fprintf(v8, "%20s:\n", "raidFailedRecoEAN");
                            if (v19)
                            {
                              v80 = 0;
                              if (v19 >= 6)
                              {
                                v81 = 6;
                              }

                              else
                              {
                                v81 = v19;
                              }

                              do
                              {
                                result = fprintf(v8, "                      [%d] = %llu\n", v80, v16[v80]);
                                ++v80;
                              }

                              while (v81 != v80);
                            }
                          }

                          else
                          {
                            if ((a4 & 1) != 0 && v15 == 648 || (a4 & 1) != 0 && v15 == 649 || (a4 & 1) != 0 && v15 == 864 || (a4 & 1) != 0 && v15 == 862 || (a4 & 1) != 0 && v15 == 863 || (a4 & 2) != 0 && v15 == 813 || (a4 & 1) != 0 && v15 == 697 || (a4 & 1) != 0 && v15 == 698 || (a4 & 1) != 0 && v15 == 712 || (a4 & 1) != 0 && v15 == 713 || (a4 & 1) != 0 && v15 == 737 || (a4 & 1) != 0 && v15 == 738 || (a4 & 1) != 0 && v15 == 714 || (a4 & 1) != 0 && v15 == 715 || (a4 & 1) != 0 && v15 == 716 || (a4 & 1) != 0 && v15 == 717 || (a4 & 1) != 0 && v15 == 829)
                            {
                              goto LABEL_80;
                            }

                            if ((a4 & 1) != 0 && v15 == 891)
                            {
                              result = fprintf(v8, "%20s:\n", "turboRaidSuccessAuxPartition");
                              if (v19)
                              {
                                v82 = 0;
                                if (v19 >= 2)
                                {
                                  v83 = 2;
                                }

                                else
                                {
                                  v83 = v19;
                                }

                                do
                                {
                                  result = fprintf(v8, "                      [%d] = %llu\n", v82, v16[v82]);
                                  ++v82;
                                }

                                while (v83 != v82);
                              }
                            }

                            else if ((a4 & 1) != 0 && v15 == 892)
                            {
                              result = fprintf(v8, "%20s:\n", "turboRaidFailAuxPartition");
                              if (v19)
                              {
                                v84 = 0;
                                if (v19 >= 2)
                                {
                                  v85 = 2;
                                }

                                else
                                {
                                  v85 = v19;
                                }

                                do
                                {
                                  result = fprintf(v8, "                      [%d] = %llu\n", v84, v16[v84]);
                                  ++v84;
                                }

                                while (v85 != v84);
                              }
                            }

                            else if ((a4 & 1) != 0 && v15 == 893)
                            {
                              result = fprintf(v8, "%20s:\n", "turboRaidClassifyQualPartition");
                              if (v19)
                              {
                                v86 = 0;
                                if (v19 >= 2)
                                {
                                  v87 = 2;
                                }

                                else
                                {
                                  v87 = v19;
                                }

                                do
                                {
                                  result = fprintf(v8, "                      [%d] = %llu\n", v86, v16[v86]);
                                  ++v86;
                                }

                                while (v87 != v86);
                              }
                            }

                            else if ((a4 & 1) != 0 && v15 == 894)
                            {
                              result = fprintf(v8, "%20s:\n", "turboRaidClassifyRelPartition");
                              if (v19)
                              {
                                v88 = 0;
                                if (v19 >= 2)
                                {
                                  v89 = 2;
                                }

                                else
                                {
                                  v89 = v19;
                                }

                                do
                                {
                                  result = fprintf(v8, "                      [%d] = %llu\n", v88, v16[v88]);
                                  ++v88;
                                }

                                while (v89 != v88);
                              }
                            }

                            else
                            {
                              if ((a4 & 1) != 0 && v15 == 900 || (a4 & 1) != 0 && v15 == 901 || (a4 & 1) != 0 && v15 == 902 || (a4 & 1) != 0 && v15 == 903 || (a4 & 1) != 0 && v15 == 904 || (a4 & 1) != 0 && v15 == 947 || (a4 & 1) != 0 && v15 == 1133 || (a4 & 1) != 0 && v15 == 1134 || (a4 & 1) != 0 && v15 == 1135 || (a4 & 1) != 0 && v15 == 1136 || (a4 & 1) != 0 && v15 == 403 || (a4 & 1) != 0 && v15 == 197 || (a4 & 1) != 0 && v15 == 136 || (a4 & 1) != 0 && v15 == 137 || (a4 & 1) != 0 && v15 == 444 || (a4 & 1) != 0 && v15 == 445 || (a4 & 1) != 0 && v15 == 964 || (a4 & 1) != 0 && v15 == 965 || (a4 & 1) != 0 && v15 == 440 || (a4 & 1) != 0 && v15 == 1388 || (a4 & 1) != 0 && v15 == 960 || (a4 & 1) != 0 && v15 == 441 || (a4 & 1) != 0 && v15 == 382 || (a4 & 1) != 0 && v15 == 659 || (a4 & 1) != 0 && v15 == 172 || (a4 & 1) != 0 && v15 == 416 || (a4 & 1) != 0 && v15 == 417)
                              {
                                goto LABEL_80;
                              }

                              if ((a4 & 1) != 0 && v15 == 406)
                              {
                                result = fprintf(v8, "%20s:\n", "raidReconstructSuccessFlow");
                                if (v19)
                                {
                                  v90 = 0;
                                  if (v19 >= 5)
                                  {
                                    v91 = 5;
                                  }

                                  else
                                  {
                                    v91 = v19;
                                  }

                                  do
                                  {
                                    result = fprintf(v8, "                      [%d] = %llu\n", v90, v16[v90]);
                                    ++v90;
                                  }

                                  while (v91 != v90);
                                }
                              }

                              else if ((a4 & 1) != 0 && v15 == 407)
                              {
                                result = fprintf(v8, "%20s:\n", "raidReconstructFailFlow");
                                if (v19)
                                {
                                  v92 = 0;
                                  if (v19 >= 5)
                                  {
                                    v93 = 5;
                                  }

                                  else
                                  {
                                    v93 = v19;
                                  }

                                  do
                                  {
                                    result = fprintf(v8, "                      [%d] = %llu\n", v92, v16[v92]);
                                    ++v92;
                                  }

                                  while (v93 != v92);
                                }
                              }

                              else
                              {
                                if ((a4 & 1) != 0 && v15 == 472 || (a4 & 1) != 0 && v15 == 473 || (a4 & 1) != 0 && v15 == 639 || (a4 & 1) != 0 && v15 == 640)
                                {
                                  goto LABEL_80;
                                }

                                if ((a4 & 1) != 0 && v15 == 469)
                                {
                                  result = fprintf(v8, "%20s:\n", "raidReconstructSuccessPartition");
                                  if (v19)
                                  {
                                    v94 = 0;
                                    if (v19 >= 2)
                                    {
                                      v95 = 2;
                                    }

                                    else
                                    {
                                      v95 = v19;
                                    }

                                    do
                                    {
                                      result = fprintf(v8, "                      [%d] = %llu\n", v94, v16[v94]);
                                      ++v94;
                                    }

                                    while (v95 != v94);
                                  }
                                }

                                else if ((a4 & 1) != 0 && v15 == 470)
                                {
                                  result = fprintf(v8, "%20s:\n", "raidReconstructFailPartition");
                                  if (v19)
                                  {
                                    v96 = 0;
                                    if (v19 >= 2)
                                    {
                                      v97 = 2;
                                    }

                                    else
                                    {
                                      v97 = v19;
                                    }

                                    do
                                    {
                                      result = fprintf(v8, "                      [%d] = %llu\n", v96, v16[v96]);
                                      ++v96;
                                    }

                                    while (v97 != v96);
                                  }
                                }

                                else
                                {
                                  if ((a4 & 1) != 0 && v15 == 408 || (a4 & 1) != 0 && v15 == 409 || (a4 & 1) != 0 && v15 == 786 || (a4 & 1) != 0 && v15 == 787 || (a4 & 1) != 0 && v15 == 410 || (a4 & 1) != 0 && v15 == 788 || (a4 & 1) != 0 && v15 == 411 || (a4 & 1) != 0 && v15 == 510 || (a4 & 1) != 0 && v15 == 566 || (a4 & 1) != 0 && v15 == 567 || (a4 & 1) != 0 && v15 == 570 || (a4 & 1) != 0 && v15 == 574 || (a4 & 1) != 0 && v15 == 789 || (a4 & 1) != 0 && v15 == 681 || (a4 & 1) != 0 && v15 == 682 || (a4 & 1) != 0 && v15 == 711 || (a4 & 1) != 0 && v15 == 790 || (a4 & 1) != 0 && v15 == 774 || (a4 & 1) != 0 && v15 == 412 || (a4 & 1) != 0 && v15 == 471 || (a4 & 1) != 0 && v15 == 641)
                                  {
                                    goto LABEL_80;
                                  }

                                  if ((a4 & 1) != 0 && v15 == 798)
                                  {
                                    result = fprintf(v8, "%20s:\n", "raidBMXFailP");
                                    if (v19)
                                    {
                                      v98 = 0;
                                      if (v19 >= 4)
                                      {
                                        v99 = 4;
                                      }

                                      else
                                      {
                                        v99 = v19;
                                      }

                                      do
                                      {
                                        result = fprintf(v8, "                      [%d] = %llu\n", v98, v16[v98]);
                                        ++v98;
                                      }

                                      while (v99 != v98);
                                    }
                                  }

                                  else if ((a4 & 1) != 0 && v15 == 799)
                                  {
                                    result = fprintf(v8, "%20s:\n", "raidBMXFailUECC");
                                    if (v19)
                                    {
                                      v100 = 0;
                                      if (v19 >= 4)
                                      {
                                        v101 = 4;
                                      }

                                      else
                                      {
                                        v101 = v19;
                                      }

                                      do
                                      {
                                        result = fprintf(v8, "                      [%d] = %llu\n", v100, v16[v100]);
                                        ++v100;
                                      }

                                      while (v101 != v100);
                                    }
                                  }

                                  else if ((a4 & 1) != 0 && v15 == 804)
                                  {
                                    result = fprintf(v8, "%20s:\n", "raidBMXFailNoSPBX");
                                    if (v19)
                                    {
                                      v102 = 0;
                                      if (v19 >= 4)
                                      {
                                        v103 = 4;
                                      }

                                      else
                                      {
                                        v103 = v19;
                                      }

                                      do
                                      {
                                        result = fprintf(v8, "                      [%d] = %llu\n", v102, v16[v102]);
                                        ++v102;
                                      }

                                      while (v103 != v102);
                                    }
                                  }

                                  else if ((a4 & 1) != 0 && v15 == 806)
                                  {
                                    result = fprintf(v8, "%20s:\n", "raidBMXFailBlank");
                                    if (v19)
                                    {
                                      v104 = 0;
                                      if (v19 >= 4)
                                      {
                                        v105 = 4;
                                      }

                                      else
                                      {
                                        v105 = v19;
                                      }

                                      do
                                      {
                                        result = fprintf(v8, "                      [%d] = %llu\n", v104, v16[v104]);
                                        ++v104;
                                      }

                                      while (v105 != v104);
                                    }
                                  }

                                  else if ((a4 & 1) != 0 && v15 == 809)
                                  {
                                    result = fprintf(v8, "%20s:\n", "raidBMXFailUnsup");
                                    if (v19)
                                    {
                                      v106 = 0;
                                      if (v19 >= 4)
                                      {
                                        v107 = 4;
                                      }

                                      else
                                      {
                                        v107 = v19;
                                      }

                                      do
                                      {
                                        result = fprintf(v8, "                      [%d] = %llu\n", v106, v16[v106]);
                                        ++v106;
                                      }

                                      while (v107 != v106);
                                    }
                                  }

                                  else if ((a4 & 1) != 0 && v15 == 811)
                                  {
                                    result = fprintf(v8, "%20s:\n", "raidBMXFailMpSkip");
                                    if (v19)
                                    {
                                      v108 = 0;
                                      if (v19 >= 4)
                                      {
                                        v109 = 4;
                                      }

                                      else
                                      {
                                        v109 = v19;
                                      }

                                      do
                                      {
                                        result = fprintf(v8, "                      [%d] = %llu\n", v108, v16[v108]);
                                        ++v108;
                                      }

                                      while (v109 != v108);
                                    }
                                  }

                                  else if ((a4 & 1) != 0 && v15 == 812)
                                  {
                                    result = fprintf(v8, "%20s:\n", "raidBMXFailAbort");
                                    if (v19)
                                    {
                                      v110 = 0;
                                      if (v19 >= 4)
                                      {
                                        v111 = 4;
                                      }

                                      else
                                      {
                                        v111 = v19;
                                      }

                                      do
                                      {
                                        result = fprintf(v8, "                      [%d] = %llu\n", v110, v16[v110]);
                                        ++v110;
                                      }

                                      while (v111 != v110);
                                    }
                                  }

                                  else if ((a4 & 1) != 0 && v15 == 814)
                                  {
                                    result = fprintf(v8, "%20s:\n", "raidBMXFailOther");
                                    if (v19)
                                    {
                                      v112 = 0;
                                      if (v19 >= 4)
                                      {
                                        v113 = 4;
                                      }

                                      else
                                      {
                                        v113 = v19;
                                      }

                                      do
                                      {
                                        result = fprintf(v8, "                      [%d] = %llu\n", v112, v16[v112]);
                                        ++v112;
                                      }

                                      while (v113 != v112);
                                    }
                                  }

                                  else if ((a4 & 1) != 0 && v15 == 815)
                                  {
                                    result = fprintf(v8, "%20s:\n", "raidBMXSuccess");
                                    if (v19)
                                    {
                                      v114 = 0;
                                      if (v19 >= 4)
                                      {
                                        v115 = 4;
                                      }

                                      else
                                      {
                                        v115 = v19;
                                      }

                                      do
                                      {
                                        result = fprintf(v8, "                      [%d] = %llu\n", v114, v16[v114]);
                                        ++v114;
                                      }

                                      while (v115 != v114);
                                    }
                                  }

                                  else
                                  {
                                    if ((a4 & 1) != 0 && v15 == 182 || (a4 & 1) != 0 && v15 == 353 || (a4 & 1) != 0 && v15 == 609 || (a4 & 1) != 0 && v15 == 596 || (a4 & 1) != 0 && v15 == 597 || (a4 & 1) != 0 && v15 == 152 || (a4 & 1) != 0 && v15 == 153 || (a4 & 1) != 0 && v15 == 384 || (a4 & 1) != 0 && v15 == 386 || (a4 & 1) != 0 && v15 == 657 || (a4 & 1) != 0 && v15 == 387 || (a4 & 1) != 0 && v15 == 420 || (a4 & 1) != 0 && v15 == 438 || (a4 & 1) != 0 && v15 == 155 || (a4 & 1) != 0 && v15 == 158 || (a4 & 1) != 0 && v15 == 159 || (a4 & 1) != 0 && v15 == 539 || (a4 & 1) != 0 && v15 == 540 || (a4 & 2) != 0 && v15 == 160 || (a4 & 2) != 0 && v15 == 161 || (a4 & 2) != 0 && v15 == 163 || (a4 & 2) != 0 && v15 == 164 || (a4 & 2) != 0 && v15 == 165 || (a4 & 2) != 0 && v15 == 1292 || (a4 & 1) != 0 && v15 == 141 || (a4 & 1) != 0 && v15 == 142 || (a4 & 1) != 0 && v15 == 143 || (a4 & 1) != 0 && v15 == 187 || (a4 & 1) != 0 && v15 == 188 || (a4 & 1) != 0 && v15 == 189 || (a4 & 1) != 0 && v15 == 147 || (a4 & 1) != 0 && v15 == 148 || (a4 & 1) != 0 && v15 == 149 || (a4 & 1) != 0 && v15 == 183 || (a4 & 1) != 0 && v15 == 204 || (a4 & 1) != 0 && v15 == 205 || (a4 & 1) != 0 && v15 == 206 || (a4 & 2) != 0 && v15 == 248 || (a4 & 2) != 0 && v15 == 199 || (a4 & 1) != 0 && v15 == 200 || (a4 & 1) != 0 && v15 == 201 || (a4 & 2) != 0 && v15 == 203)
                                    {
                                      goto LABEL_80;
                                    }

                                    if ((a4 & 1) != 0 && v15 == 207)
                                    {
                                      result = fprintf(v8, "%20s:\n", "numOfThrottlingEntriesPerLevel");
                                      if (v19)
                                      {
                                        v116 = 0;
                                        if (v19 >= 0x19)
                                        {
                                          v117 = 25;
                                        }

                                        else
                                        {
                                          v117 = v19;
                                        }

                                        do
                                        {
                                          result = fprintf(v8, "                      [%d] = %llu\n", v116, v16[v116]);
                                          ++v116;
                                        }

                                        while (v117 != v116);
                                      }
                                    }

                                    else if ((a4 & 1) != 0 && v15 == 865)
                                    {
                                      result = fprintf(v8, "%20s:\n", "timeOfThrottlingPerLevel");
                                      if (v19)
                                      {
                                        v118 = 0;
                                        if (v19 >= 0x19)
                                        {
                                          v119 = 25;
                                        }

                                        else
                                        {
                                          v119 = v19;
                                        }

                                        do
                                        {
                                          result = fprintf(v8, "                      [%d] = %llu\n", v118, v16[v118]);
                                          ++v118;
                                        }

                                        while (v119 != v118);
                                      }
                                    }

                                    else if ((a4 & 2) != 0 && v15 == 453)
                                    {
                                      result = fprintf(v8, "%20s:\n", "numOfThrottlingEntriesPerReadLevel");
                                      if (v19)
                                      {
                                        v120 = 0;
                                        if (v19 >= 0x19)
                                        {
                                          v121 = 25;
                                        }

                                        else
                                        {
                                          v121 = v19;
                                        }

                                        do
                                        {
                                          result = fprintf(v8, "                      [%d] = %llu\n", v120, v16[v120]);
                                          ++v120;
                                        }

                                        while (v121 != v120);
                                      }
                                    }

                                    else if ((a4 & 2) != 0 && v15 == 866)
                                    {
                                      result = fprintf(v8, "%20s:\n", "timeOfThrottlingPerReadLevel");
                                      if (v19)
                                      {
                                        v122 = 0;
                                        if (v19 >= 0x19)
                                        {
                                          v123 = 25;
                                        }

                                        else
                                        {
                                          v123 = v19;
                                        }

                                        do
                                        {
                                          result = fprintf(v8, "                      [%d] = %llu\n", v122, v16[v122]);
                                          ++v122;
                                        }

                                        while (v123 != v122);
                                      }
                                    }

                                    else if ((a4 & 2) != 0 && v15 == 454)
                                    {
                                      result = fprintf(v8, "%20s:\n", "numOfThrottlingEntriesPerWriteLevel");
                                      if (v19)
                                      {
                                        v124 = 0;
                                        if (v19 >= 0x19)
                                        {
                                          v125 = 25;
                                        }

                                        else
                                        {
                                          v125 = v19;
                                        }

                                        do
                                        {
                                          result = fprintf(v8, "                      [%d] = %llu\n", v124, v16[v124]);
                                          ++v124;
                                        }

                                        while (v125 != v124);
                                      }
                                    }

                                    else if ((a4 & 2) != 0 && v15 == 867)
                                    {
                                      result = fprintf(v8, "%20s:\n", "timeOfThrottlingPerWriteLevel");
                                      if (v19)
                                      {
                                        v126 = 0;
                                        if (v19 >= 0x19)
                                        {
                                          v127 = 25;
                                        }

                                        else
                                        {
                                          v127 = v19;
                                        }

                                        do
                                        {
                                          result = fprintf(v8, "                      [%d] = %llu\n", v126, v16[v126]);
                                          ++v126;
                                        }

                                        while (v127 != v126);
                                      }
                                    }

                                    else
                                    {
                                      if ((a4 & 2) != 0 && v15 == 1354 || (a4 & 2) != 0 && v15 == 1348 || (a4 & 2) != 0 && v15 == 1349 || (a4 & 1) != 0 && v15 == 1271 || (a4 & 1) != 0 && v15 == 1272 || (a4 & 1) != 0 && v15 == 1273 || (a4 & 2) != 0 && v15 == 1448 || (a4 & 2) != 0 && v15 == 1449 || (a4 & 2) != 0 && v15 == 1450 || (a4 & 2) != 0 && v15 == 1452 || (a4 & 2) != 0 && v15 == 1440)
                                      {
                                        goto LABEL_80;
                                      }

                                      if ((a4 & 2) != 0 && v15 == 1441)
                                      {
                                        result = fprintf(v8, "%20s:\n", "throttlingmWEstimateLatencyHisto");
                                        if (v19)
                                        {
                                          v128 = 0;
                                          if (v19 >= 5)
                                          {
                                            v129 = 5;
                                          }

                                          else
                                          {
                                            v129 = v19;
                                          }

                                          do
                                          {
                                            result = fprintf(v8, "                      [%d] = %llu\n", v128, v16[v128]);
                                            ++v128;
                                          }

                                          while (v129 != v128);
                                        }
                                      }

                                      else if ((a4 & 1) != 0 && v15 == 1494)
                                      {
                                        result = fprintf(v8, "%20s:\n", "throttlingSecPerTTPerMW");
                                        if (v19)
                                        {
                                          v130 = 0;
                                          if (v19 >= 0x14)
                                          {
                                            v131 = 20;
                                          }

                                          else
                                          {
                                            v131 = v19;
                                          }

                                          do
                                          {
                                            result = fprintf(v8, "                      [%d] = %llu\n", v130, v16[v130]);
                                            ++v130;
                                          }

                                          while (v131 != v130);
                                        }
                                      }

                                      else if ((a4 & 1) != 0 && v15 == 213)
                                      {
                                        result = fprintf(v8, "%20s:\n", "crcInternalReadFail");
                                        if (v19)
                                        {
                                          v132 = 0;
                                          if (v19 >= 8)
                                          {
                                            v133 = 8;
                                          }

                                          else
                                          {
                                            v133 = v19;
                                          }

                                          do
                                          {
                                            result = fprintf(v8, "                      [%d] = %llu\n", v132, v16[v132]);
                                            ++v132;
                                          }

                                          while (v133 != v132);
                                        }
                                      }

                                      else
                                      {
                                        if ((a4 & 1) != 0 && v15 == 217 || (a4 & 1) != 0 && v15 == 1067 || (a4 & 1) != 0 && v15 == 221 || (a4 & 1) != 0 && v15 == 222 || (a4 & 1) != 0 && v15 == 1221 || (a4 & 1) != 0 && v15 == 223 || (a4 & 1) != 0 && v15 == 224 || (a4 & 1) != 0 && v15 == 1222 || (a4 & 1) != 0 && v15 == 494)
                                        {
                                          goto LABEL_80;
                                        }

                                        if ((a4 & 1) != 0 && v15 == 1223)
                                        {
                                          result = fprintf(v8, "%20s:\n", "RD_closedBlocksTHHist");
                                          if (v19)
                                          {
                                            v134 = 0;
                                            if (v19 >= 0xA)
                                            {
                                              v135 = 10;
                                            }

                                            else
                                            {
                                              v135 = v19;
                                            }

                                            do
                                            {
                                              result = fprintf(v8, "                      [%d] = %llu\n", v134, v16[v134]);
                                              ++v134;
                                            }

                                            while (v135 != v134);
                                          }
                                        }

                                        else
                                        {
                                          if ((a4 & 1) != 0 && v15 == 1346 || (a4 & 1) != 0 && v15 == 1340 || (a4 & 1) != 0 && v15 == 1481 || (a4 & 1) != 0 && v15 == 1341 || (a4 & 1) != 0 && v15 == 1318 || (a4 & 1) != 0 && v15 == 1319 || (a4 & 1) != 0 && v15 == 1342 || (a4 & 1) != 0 && v15 == 1343 || (a4 & 1) != 0 && v15 == 1352 || (a4 & 1) != 0 && v15 == 1433 || (a4 & 1) != 0 && v15 == 267)
                                          {
                                            goto LABEL_80;
                                          }

                                          if ((a4 & 1) != 0 && v15 == 229)
                                          {
                                            result = fprintf(v8, "%20s:\n", "indmbXferCountTo");
                                            if (v19)
                                            {
                                              v136 = 0;
                                              if (v19 >= 2)
                                              {
                                                v137 = 2;
                                              }

                                              else
                                              {
                                                v137 = v19;
                                              }

                                              do
                                              {
                                                result = fprintf(v8, "                      [%d] = %llu\n", v136, v16[v136]);
                                                ++v136;
                                              }

                                              while (v137 != v136);
                                            }
                                          }

                                          else if ((a4 & 1) != 0 && v15 == 230)
                                          {
                                            result = fprintf(v8, "%20s:\n", "indmbAccumulatedTimeBetweenXfers");
                                            if (v19)
                                            {
                                              v138 = 0;
                                              if (v19 >= 2)
                                              {
                                                v139 = 2;
                                              }

                                              else
                                              {
                                                v139 = v19;
                                              }

                                              do
                                              {
                                                result = fprintf(v8, "                      [%d] = %llu\n", v138, v16[v138]);
                                                ++v138;
                                              }

                                              while (v139 != v138);
                                            }
                                          }

                                          else
                                          {
                                            if ((a4 & 1) != 0 && v15 == 231 || (a4 & 1) != 0 && v15 == 232 || (a4 & 1) != 0 && v15 == 233 || (a4 & 1) != 0 && v15 == 234)
                                            {
                                              goto LABEL_80;
                                            }

                                            if ((a4 & 1) != 0 && v15 == 235)
                                            {
                                              result = fprintf(v8, "%20s:\n", "gracefulBootTimeLogMs");
                                              if (v19)
                                              {
                                                v140 = 0;
                                                if (v19 >= 8)
                                                {
                                                  v141 = 8;
                                                }

                                                else
                                                {
                                                  v141 = v19;
                                                }

                                                do
                                                {
                                                  result = fprintf(v8, "                      [%d] = %llu\n", v140, v16[v140]);
                                                  ++v140;
                                                }

                                                while (v141 != v140);
                                              }
                                            }

                                            else if ((a4 & 1) != 0 && v15 == 236)
                                            {
                                              result = fprintf(v8, "%20s:\n", "ungracefulBootTimeLogMs");
                                              if (v19)
                                              {
                                                v142 = 0;
                                                if (v19 >= 8)
                                                {
                                                  v143 = 8;
                                                }

                                                else
                                                {
                                                  v143 = v19;
                                                }

                                                do
                                                {
                                                  result = fprintf(v8, "                      [%d] = %llu\n", v142, v16[v142]);
                                                  ++v142;
                                                }

                                                while (v143 != v142);
                                              }
                                            }

                                            else
                                            {
                                              if ((a4 & 1) != 0 && v15 == 245 || (a4 & 1) != 0 && v15 == 246 || (a4 & 1) != 0 && v15 == 1323 || (a4 & 1) != 0 && v15 == 247 || (a4 & 1) != 0 && v15 == 254)
                                              {
                                                goto LABEL_80;
                                              }

                                              if ((a4 & 1) != 0 && v15 == 269)
                                              {
                                                result = fprintf(v8, "%20s:\n", "numBootBlockRefreshSuccess");
                                                if (v19)
                                                {
                                                  v144 = 0;
                                                  if (v19 >= 8)
                                                  {
                                                    v145 = 8;
                                                  }

                                                  else
                                                  {
                                                    v145 = v19;
                                                  }

                                                  do
                                                  {
                                                    result = fprintf(v8, "                      [%d] = %llu\n", v144, v16[v144]);
                                                    ++v144;
                                                  }

                                                  while (v145 != v144);
                                                }
                                              }

                                              else if ((a4 & 1) != 0 && v15 == 270)
                                              {
                                                result = fprintf(v8, "%20s:\n", "numBootBlockRefreshFail");
                                                if (v19)
                                                {
                                                  v146 = 0;
                                                  if (v19 >= 8)
                                                  {
                                                    v147 = 8;
                                                  }

                                                  else
                                                  {
                                                    v147 = v19;
                                                  }

                                                  do
                                                  {
                                                    result = fprintf(v8, "                      [%d] = %llu\n", v146, v16[v146]);
                                                    ++v146;
                                                  }

                                                  while (v147 != v146);
                                                }
                                              }

                                              else
                                              {
                                                if ((a4 & 1) != 0 && v15 == 322 || (a4 & 1) != 0 && v15 == 323 || (a4 & 1) != 0 && v15 == 271 || (a4 & 1) != 0 && v15 == 272 || (a4 & 1) != 0 && v15 == 274)
                                                {
                                                  goto LABEL_80;
                                                }

                                                if ((a4 & 1) != 0 && v15 == 277)
                                                {
                                                  result = fprintf(v8, "%20s:\n", "powerBudgetSelect");
                                                  if (v19)
                                                  {
                                                    v148 = 0;
                                                    if (v19 >= 4)
                                                    {
                                                      v149 = 4;
                                                    }

                                                    else
                                                    {
                                                      v149 = v19;
                                                    }

                                                    do
                                                    {
                                                      result = fprintf(v8, "                      [%d] = %llu\n", v148, v16[v148]);
                                                      ++v148;
                                                    }

                                                    while (v149 != v148);
                                                  }
                                                }

                                                else
                                                {
                                                  if ((a4 & 1) != 0 && v15 == 279)
                                                  {
                                                    goto LABEL_80;
                                                  }

                                                  if ((a4 & 1) != 0 && v15 == 280)
                                                  {
                                                    result = fprintf(v8, "%20s:\n", "E2EDPErrorCounters");
                                                    if (v19)
                                                    {
                                                      v150 = 0;
                                                      if (v19 >= 0xC)
                                                      {
                                                        v151 = 12;
                                                      }

                                                      else
                                                      {
                                                        v151 = v19;
                                                      }

                                                      do
                                                      {
                                                        result = fprintf(v8, "                      [%d] = %llu\n", v150, v16[v150]);
                                                        ++v150;
                                                      }

                                                      while (v151 != v150);
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if ((a4 & 2) != 0 && v15 == 281 || (a4 & 2) != 0 && v15 == 282 || (a4 & 2) != 0 && v15 == 283 || (a4 & 1) != 0 && v15 == 288)
                                                    {
                                                      goto LABEL_80;
                                                    }

                                                    if ((a4 & 1) != 0 && v15 == 289)
                                                    {
                                                      result = fprintf(v8, "%20s:\n", "mspBootBlockReadFail");
                                                      if (v19)
                                                      {
                                                        v152 = 0;
                                                        if (v19 >= 0x20)
                                                        {
                                                          v153 = 32;
                                                        }

                                                        else
                                                        {
                                                          v153 = v19;
                                                        }

                                                        do
                                                        {
                                                          result = fprintf(v8, "                      [%d] = %llu\n", v152, v16[v152]);
                                                          ++v152;
                                                        }

                                                        while (v153 != v152);
                                                      }
                                                    }

                                                    else if ((a4 & 1) != 0 && v15 == 290)
                                                    {
                                                      result = fprintf(v8, "%20s:\n", "mspBootBlockProgFail");
                                                      if (v19)
                                                      {
                                                        v154 = 0;
                                                        if (v19 >= 0x20)
                                                        {
                                                          v155 = 32;
                                                        }

                                                        else
                                                        {
                                                          v155 = v19;
                                                        }

                                                        do
                                                        {
                                                          result = fprintf(v8, "                      [%d] = %llu\n", v154, v16[v154]);
                                                          ++v154;
                                                        }

                                                        while (v155 != v154);
                                                      }
                                                    }

                                                    else if ((a4 & 1) != 0 && v15 == 291)
                                                    {
                                                      result = fprintf(v8, "%20s:\n", "mspBootBlockEraseFail");
                                                      if (v19)
                                                      {
                                                        v156 = 0;
                                                        if (v19 >= 0x20)
                                                        {
                                                          v157 = 32;
                                                        }

                                                        else
                                                        {
                                                          v157 = v19;
                                                        }

                                                        do
                                                        {
                                                          result = fprintf(v8, "                      [%d] = %llu\n", v156, v16[v156]);
                                                          ++v156;
                                                        }

                                                        while (v157 != v156);
                                                      }
                                                    }

                                                    else if ((a4 & 2) != 0 && v15 == 511)
                                                    {
                                                      result = fprintf(v8, "%20s:\n", "mspbootBlockRefreshCnt");
                                                      if (v19)
                                                      {
                                                        v158 = 0;
                                                        if (v19 >= 0x20)
                                                        {
                                                          v159 = 32;
                                                        }

                                                        else
                                                        {
                                                          v159 = v19;
                                                        }

                                                        do
                                                        {
                                                          result = fprintf(v8, "                      [%d] = %llu\n", v158, v16[v158]);
                                                          ++v158;
                                                        }

                                                        while (v159 != v158);
                                                      }
                                                    }

                                                    else if ((a4 & 2) != 0 && v15 == 516)
                                                    {
                                                      result = fprintf(v8, "%20s:\n", "mspBootBlockRefreshTime");
                                                      if (v19)
                                                      {
                                                        v160 = 0;
                                                        if (v19 >= 0x20)
                                                        {
                                                          v161 = 32;
                                                        }

                                                        else
                                                        {
                                                          v161 = v19;
                                                        }

                                                        do
                                                        {
                                                          result = fprintf(v8, "                      [%d] = %llu\n", v160, v16[v160]);
                                                          ++v160;
                                                        }

                                                        while (v161 != v160);
                                                      }
                                                    }

                                                    else
                                                    {
                                                      if ((a4 & 2) != 0 && v15 == 517 || (a4 & 2) != 0 && v15 == 777 || (a4 & 1) != 0 && v15 == 292)
                                                      {
                                                        goto LABEL_80;
                                                      }

                                                      if ((a4 & 1) != 0 && v15 == 298)
                                                      {
                                                        result = fprintf(v8, "%20s:\n", "perHostReads");
                                                        if (v19)
                                                        {
                                                          v162 = 0;
                                                          if (v19 >= 2)
                                                          {
                                                            v163 = 2;
                                                          }

                                                          else
                                                          {
                                                            v163 = v19;
                                                          }

                                                          do
                                                          {
                                                            result = fprintf(v8, "                      [%d] = %llu\n", v162, v16[v162]);
                                                            ++v162;
                                                          }

                                                          while (v163 != v162);
                                                        }
                                                      }

                                                      else if ((a4 & 1) != 0 && v15 == 299)
                                                      {
                                                        result = fprintf(v8, "%20s:\n", "perHostReadXacts");
                                                        if (v19)
                                                        {
                                                          v164 = 0;
                                                          if (v19 >= 2)
                                                          {
                                                            v165 = 2;
                                                          }

                                                          else
                                                          {
                                                            v165 = v19;
                                                          }

                                                          do
                                                          {
                                                            result = fprintf(v8, "                      [%d] = %llu\n", v164, v16[v164]);
                                                            ++v164;
                                                          }

                                                          while (v165 != v164);
                                                        }
                                                      }

                                                      else if ((a4 & 1) != 0 && v15 == 300)
                                                      {
                                                        result = fprintf(v8, "%20s:\n", "perHostWrites");
                                                        if (v19)
                                                        {
                                                          v166 = 0;
                                                          if (v19 >= 2)
                                                          {
                                                            v167 = 2;
                                                          }

                                                          else
                                                          {
                                                            v167 = v19;
                                                          }

                                                          do
                                                          {
                                                            result = fprintf(v8, "                      [%d] = %llu\n", v166, v16[v166]);
                                                            ++v166;
                                                          }

                                                          while (v167 != v166);
                                                        }
                                                      }

                                                      else if ((a4 & 1) != 0 && v15 == 301)
                                                      {
                                                        result = fprintf(v8, "%20s:\n", "perHostWriteXacts");
                                                        if (v19)
                                                        {
                                                          v168 = 0;
                                                          if (v19 >= 2)
                                                          {
                                                            v169 = 2;
                                                          }

                                                          else
                                                          {
                                                            v169 = v19;
                                                          }

                                                          do
                                                          {
                                                            result = fprintf(v8, "                      [%d] = %llu\n", v168, v16[v168]);
                                                            ++v168;
                                                          }

                                                          while (v169 != v168);
                                                        }
                                                      }

                                                      else if ((a4 & 1) != 0 && v15 == 302)
                                                      {
                                                        result = fprintf(v8, "%20s:\n", "perHostNumFlushes");
                                                        if (v19)
                                                        {
                                                          v170 = 0;
                                                          if (v19 >= 2)
                                                          {
                                                            v171 = 2;
                                                          }

                                                          else
                                                          {
                                                            v171 = v19;
                                                          }

                                                          do
                                                          {
                                                            result = fprintf(v8, "                      [%d] = %llu\n", v170, v16[v170]);
                                                            ++v170;
                                                          }

                                                          while (v171 != v170);
                                                        }
                                                      }

                                                      else if ((a4 & 1) != 0 && v15 == 303)
                                                      {
                                                        result = fprintf(v8, "%20s:\n", "perHostNumFences");
                                                        if (v19)
                                                        {
                                                          v172 = 0;
                                                          if (v19 >= 2)
                                                          {
                                                            v173 = 2;
                                                          }

                                                          else
                                                          {
                                                            v173 = v19;
                                                          }

                                                          do
                                                          {
                                                            result = fprintf(v8, "                      [%d] = %llu\n", v172, v16[v172]);
                                                            ++v172;
                                                          }

                                                          while (v173 != v172);
                                                        }
                                                      }

                                                      else if ((a4 & 1) != 0 && v15 == 304)
                                                      {
                                                        result = fprintf(v8, "%20s:\n", "commitPadSectorsPerFlow");
                                                        if (v19)
                                                        {
                                                          v174 = 0;
                                                          if (v19 >= 0xA)
                                                          {
                                                            v175 = 10;
                                                          }

                                                          else
                                                          {
                                                            v175 = v19;
                                                          }

                                                          do
                                                          {
                                                            result = fprintf(v8, "                      [%d] = %llu\n", v174, v16[v174]);
                                                            ++v174;
                                                          }

                                                          while (v175 != v174);
                                                        }
                                                      }

                                                      else if ((a4 & 1) != 0 && v15 == 305)
                                                      {
                                                        result = fprintf(v8, "%20s:\n", "wcacheOverWrLogSizeCnts");
                                                        if (v19)
                                                        {
                                                          v176 = 0;
                                                          if (v19 >= 0xA)
                                                          {
                                                            v177 = 10;
                                                          }

                                                          else
                                                          {
                                                            v177 = v19;
                                                          }

                                                          do
                                                          {
                                                            result = fprintf(v8, "                      [%d] = %llu\n", v176, v16[v176]);
                                                            ++v176;
                                                          }

                                                          while (v177 != v176);
                                                        }
                                                      }

                                                      else if ((a4 & 1) != 0 && v15 == 306)
                                                      {
                                                        result = fprintf(v8, "%20s:\n", "wcacheOverWrSizeByFlow");
                                                        if (v19)
                                                        {
                                                          v178 = 0;
                                                          if (v19 >= 4)
                                                          {
                                                            v179 = 4;
                                                          }

                                                          else
                                                          {
                                                            v179 = v19;
                                                          }

                                                          do
                                                          {
                                                            result = fprintf(v8, "                      [%d] = %llu\n", v178, v16[v178]);
                                                            ++v178;
                                                          }

                                                          while (v179 != v178);
                                                        }
                                                      }

                                                      else if ((a4 & 1) != 0 && v15 == 307)
                                                      {
                                                        result = fprintf(v8, "%20s:\n", "CmdRaisePrioiryEvents");
                                                        if (v19)
                                                        {
                                                          v180 = 0;
                                                          if (v19 >= 0xA)
                                                          {
                                                            v181 = 10;
                                                          }

                                                          else
                                                          {
                                                            v181 = v19;
                                                          }

                                                          do
                                                          {
                                                            result = fprintf(v8, "                      [%d] = %llu\n", v180, v16[v180]);
                                                            ++v180;
                                                          }

                                                          while (v181 != v180);
                                                        }
                                                      }

                                                      else
                                                      {
                                                        if ((a4 & 1) != 0 && v15 == 308 || (a4 & 1) != 0 && v15 == 309 || (a4 & 1) != 0 && v15 == 310)
                                                        {
                                                          goto LABEL_80;
                                                        }

                                                        if ((a4 & 1) != 0 && v15 == 314)
                                                        {
                                                          result = fprintf(v8, "%20s:\n", "numBootBlockValidateSuccess");
                                                          if (v19)
                                                          {
                                                            v182 = 0;
                                                            if (v19 >= 8)
                                                            {
                                                              v183 = 8;
                                                            }

                                                            else
                                                            {
                                                              v183 = v19;
                                                            }

                                                            do
                                                            {
                                                              result = fprintf(v8, "                      [%d] = %llu\n", v182, v16[v182]);
                                                              ++v182;
                                                            }

                                                            while (v183 != v182);
                                                          }
                                                        }

                                                        else if ((a4 & 1) != 0 && v15 == 315)
                                                        {
                                                          result = fprintf(v8, "%20s:\n", "numBootBlockValidateFail");
                                                          if (v19)
                                                          {
                                                            v184 = 0;
                                                            if (v19 >= 8)
                                                            {
                                                              v185 = 8;
                                                            }

                                                            else
                                                            {
                                                              v185 = v19;
                                                            }

                                                            do
                                                            {
                                                              result = fprintf(v8, "                      [%d] = %llu\n", v184, v16[v184]);
                                                              ++v184;
                                                            }

                                                            while (v185 != v184);
                                                          }
                                                        }

                                                        else if ((a4 & 1) != 0 && v15 == 316)
                                                        {
                                                          result = fprintf(v8, "%20s:\n", "clogPagesFillingPercentage");
                                                          if (v19)
                                                          {
                                                            v186 = 0;
                                                            if (v19 >= 4)
                                                            {
                                                              v187 = 4;
                                                            }

                                                            else
                                                            {
                                                              v187 = v19;
                                                            }

                                                            do
                                                            {
                                                              result = fprintf(v8, "                      [%d] = %llu\n", v186, v16[v186]);
                                                              ++v186;
                                                            }

                                                            while (v187 != v186);
                                                          }
                                                        }

                                                        else
                                                        {
                                                          if ((a4 & 2) != 0 && v15 == 317 || (a4 & 2) != 0 && v15 == 643 || (a4 & 1) != 0 && v15 == 336 || (a4 & 1) != 0 && v15 == 318 || (a4 & 1) != 0 && v15 == 319 || (a4 & 1) != 0 && v15 == 320 || (a4 & 1) != 0 && v15 == 321)
                                                          {
                                                            goto LABEL_80;
                                                          }

                                                          if ((a4 & 1) != 0 && v15 == 324)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "bitflipAddr");
                                                            if (v19)
                                                            {
                                                              v188 = 0;
                                                              if (v19 >= 5)
                                                              {
                                                                v189 = 5;
                                                              }

                                                              else
                                                              {
                                                                v189 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v188, v16[v188]);
                                                                ++v188;
                                                              }

                                                              while (v189 != v188);
                                                            }
                                                          }

                                                          else if ((a4 & 1) != 0 && v15 == 325)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "bitflipCount");
                                                            if (v19)
                                                            {
                                                              v190 = 0;
                                                              if (v19 >= 5)
                                                              {
                                                                v191 = 5;
                                                              }

                                                              else
                                                              {
                                                                v191 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v190, v16[v190]);
                                                                ++v190;
                                                              }

                                                              while (v191 != v190);
                                                            }
                                                          }

                                                          else if ((a4 & 1) != 0 && v15 == 326)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "bitflipDupes");
                                                            if (v19)
                                                            {
                                                              v192 = 0;
                                                              if (v19 >= 5)
                                                              {
                                                                v193 = 5;
                                                              }

                                                              else
                                                              {
                                                                v193 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v192, v16[v192]);
                                                                ++v192;
                                                              }

                                                              while (v193 != v192);
                                                            }
                                                          }

                                                          else if ((a4 & 1) != 0 && v15 == 327)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "bandsMaxTempHisto");
                                                            if (v19)
                                                            {
                                                              v194 = 0;
                                                              if (v19 >= 0x1E)
                                                              {
                                                                v195 = 30;
                                                              }

                                                              else
                                                              {
                                                                v195 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v194, v16[v194]);
                                                                ++v194;
                                                              }

                                                              while (v195 != v194);
                                                            }
                                                          }

                                                          else if ((a4 & 1) != 0 && v15 == 328)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "bandsMinTempHisto");
                                                            if (v19)
                                                            {
                                                              v196 = 0;
                                                              if (v19 >= 0x1E)
                                                              {
                                                                v197 = 30;
                                                              }

                                                              else
                                                              {
                                                                v197 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v196, v16[v196]);
                                                                ++v196;
                                                              }

                                                              while (v197 != v196);
                                                            }
                                                          }

                                                          else if ((a4 & 1) != 0 && v15 == 329)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "bandsLifeTimeTempHisto");
                                                            if (v19)
                                                            {
                                                              v198 = 0;
                                                              if (v19 >= 0x1E)
                                                              {
                                                                v199 = 30;
                                                              }

                                                              else
                                                              {
                                                                v199 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v198, v16[v198]);
                                                                ++v198;
                                                              }

                                                              while (v199 != v198);
                                                            }
                                                          }

                                                          else if ((a4 & 1) != 0 && v15 == 330)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "bandsDeltaTempHisto");
                                                            if (v19)
                                                            {
                                                              v200 = 0;
                                                              if (v19 >= 0x16)
                                                              {
                                                                v201 = 22;
                                                              }

                                                              else
                                                              {
                                                                v201 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v200, v16[v200]);
                                                                ++v200;
                                                              }

                                                              while (v201 != v200);
                                                            }
                                                          }

                                                          else if ((a4 & 1) != 0 && v15 == 331)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "bandsCrossTempHisto");
                                                            if (v19)
                                                            {
                                                              v202 = 0;
                                                              if (v19 >= 0x2D)
                                                              {
                                                                v203 = 45;
                                                              }

                                                              else
                                                              {
                                                                v203 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v202, v16[v202]);
                                                                ++v202;
                                                              }

                                                              while (v203 != v202);
                                                            }
                                                          }

                                                          else if ((a4 & 1) != 0 && v15 == 1031)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "bandsUeccTempHisto");
                                                            if (v19)
                                                            {
                                                              v204 = 0;
                                                              if (v19 >= 0x1D)
                                                              {
                                                                v205 = 29;
                                                              }

                                                              else
                                                              {
                                                                v205 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v204, v16[v204]);
                                                                ++v204;
                                                              }

                                                              while (v205 != v204);
                                                            }
                                                          }

                                                          else if ((a4 & 1) != 0 && v15 == 1373)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "bandsGBBTempHisto");
                                                            if (v19)
                                                            {
                                                              v206 = 0;
                                                              if (v19 >= 0xA)
                                                              {
                                                                v207 = 10;
                                                              }

                                                              else
                                                              {
                                                                v207 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v206, v16[v206]);
                                                                ++v206;
                                                              }

                                                              while (v207 != v206);
                                                            }
                                                          }

                                                          else if ((a4 & 1) != 0 && v15 == 1246)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "bandsUeccCrossTempHisto");
                                                            if (v19)
                                                            {
                                                              v208 = 0;
                                                              if (v19 >= 8)
                                                              {
                                                                v209 = 8;
                                                              }

                                                              else
                                                              {
                                                                v209 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v208, v16[v208]);
                                                                ++v208;
                                                              }

                                                              while (v209 != v208);
                                                            }
                                                          }

                                                          else if ((a4 & 1) != 0 && v15 == 1275)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "secInColdHisto");
                                                            if (v19)
                                                            {
                                                              v210 = 0;
                                                              if (v19 >= 0xD)
                                                              {
                                                                v211 = 13;
                                                              }

                                                              else
                                                              {
                                                                v211 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v210, v16[v210]);
                                                                ++v210;
                                                              }

                                                              while (v211 != v210);
                                                            }
                                                          }

                                                          else if ((a4 & 1) != 0 && v15 == 1313)
                                                          {
                                                            result = fprintf(v8, "%20s:\n", "secInHotHisto");
                                                            if (v19)
                                                            {
                                                              v212 = 0;
                                                              if (v19 >= 0xD)
                                                              {
                                                                v213 = 13;
                                                              }

                                                              else
                                                              {
                                                                v213 = v19;
                                                              }

                                                              do
                                                              {
                                                                result = fprintf(v8, "                      [%d] = %llu\n", v212, v16[v212]);
                                                                ++v212;
                                                              }

                                                              while (v213 != v212);
                                                            }
                                                          }

                                                          else
                                                          {
                                                            if ((a4 & 1) != 0 && v15 == 1405 || (a4 & 1) != 0 && v15 == 1355 || (a4 & 1) != 0 && v15 == 1356 || (a4 & 1) != 0 && v15 == 1357 || (a4 & 1) != 0 && v15 == 1407)
                                                            {
                                                              goto LABEL_80;
                                                            }

                                                            if ((a4 & 1) != 0 && v15 == 1358)
                                                            {
                                                              result = fprintf(v8, "%20s:\n", "tempChangedHisto");
                                                              if (v19)
                                                              {
                                                                v214 = 0;
                                                                if (v19 >= 0xD)
                                                                {
                                                                  v215 = 13;
                                                                }

                                                                else
                                                                {
                                                                  v215 = v19;
                                                                }

                                                                do
                                                                {
                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v214, v16[v214]);
                                                                  ++v214;
                                                                }

                                                                while (v215 != v214);
                                                              }
                                                            }

                                                            else if ((a4 & 1) != 0 && v15 == 1359)
                                                            {
                                                              result = fprintf(v8, "%20s:\n", "tempChangedEnterETHisto");
                                                              if (v19)
                                                              {
                                                                v216 = 0;
                                                                if (v19 >= 0xD)
                                                                {
                                                                  v217 = 13;
                                                                }

                                                                else
                                                                {
                                                                  v217 = v19;
                                                                }

                                                                do
                                                                {
                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v216, v16[v216]);
                                                                  ++v216;
                                                                }

                                                                while (v217 != v216);
                                                              }
                                                            }

                                                            else if ((a4 & 1) != 0 && v15 == 332)
                                                            {
                                                              result = fprintf(v8, "%20s:\n", "wcacheWaitLogMs");
                                                              if (v19)
                                                              {
                                                                v218 = 0;
                                                                if (v19 >= 0xA)
                                                                {
                                                                  v219 = 10;
                                                                }

                                                                else
                                                                {
                                                                  v219 = v19;
                                                                }

                                                                do
                                                                {
                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v218, v16[v218]);
                                                                  ++v218;
                                                                }

                                                                while (v219 != v218);
                                                              }
                                                            }

                                                            else if ((a4 & 1) != 0 && v15 == 333)
                                                            {
                                                              result = fprintf(v8, "%20s:\n", "wcache_segsSortedLogSize");
                                                              if (v19)
                                                              {
                                                                v220 = 0;
                                                                if (v19 >= 0xA)
                                                                {
                                                                  v221 = 10;
                                                                }

                                                                else
                                                                {
                                                                  v221 = v19;
                                                                }

                                                                do
                                                                {
                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v220, v16[v220]);
                                                                  ++v220;
                                                                }

                                                                while (v221 != v220);
                                                              }
                                                            }

                                                            else if ((a4 & 1) != 0 && v15 == 468)
                                                            {
                                                              result = fprintf(v8, "%20s:\n", "wcacheDirtyAtFlush");
                                                              if (v19)
                                                              {
                                                                v222 = 0;
                                                                if (v19 >= 0x10)
                                                                {
                                                                  v223 = 16;
                                                                }

                                                                else
                                                                {
                                                                  v223 = v19;
                                                                }

                                                                do
                                                                {
                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v222, v16[v222]);
                                                                  ++v222;
                                                                }

                                                                while (v223 != v222);
                                                              }
                                                            }

                                                            else
                                                            {
                                                              if ((a4 & 2) != 0 && v15 == 457 || (a4 & 1) != 0 && v15 == 340 || (a4 & 1) != 0 && v15 == 953 || (a4 & 1) != 0 && v15 == 343 || (a4 & 1) != 0 && v15 == 344 || (a4 & 1) != 0 && v15 == 349 || (a4 & 1) != 0 && v15 == 350 || (a4 & 1) != 0 && v15 == 351 || (a4 & 1) != 0 && v15 == 352 || (a4 & 1) != 0 && v15 == 356 || (a4 & 1) != 0 && v15 == 358 || (a4 & 1) != 0 && v15 == 368 || (a4 & 1) != 0 && v15 == 369 || (a4 & 1) != 0 && v15 == 370 || (a4 & 1) != 0 && v15 == 371 || (a4 & 1) != 0 && v15 == 372 || (a4 & 1) != 0 && v15 == 374 || (a4 & 1) != 0 && v15 == 375 || (a4 & 2) != 0 && v15 == 603 || (a4 & 1) != 0 && v15 == 385 || (a4 & 1) != 0 && v15 == 401 || (a4 & 2) != 0 && v15 == 419 || (a4 & 1) != 0 && v15 == 422 || (a4 & 1) != 0 && v15 == 1311 || (a4 & 1) != 0 && v15 == 423 || (a4 & 1) != 0 && v15 == 1312 || (a4 & 1) != 0 && v15 == 424 || (a4 & 1) != 0 && v15 == 427 || (a4 & 1) != 0 && v15 == 461 || (a4 & 1) != 0 && v15 == 485 || (a4 & 1) != 0 && v15 == 462)
                                                              {
                                                                goto LABEL_80;
                                                              }

                                                              if ((a4 & 1) != 0 && v15 == 463)
                                                              {
                                                                result = fprintf(v8, "%20s:\n", "balanceProportionBucketsHistogram");
                                                                if (v19)
                                                                {
                                                                  v224 = 0;
                                                                  if (v19 >= 0xB)
                                                                  {
                                                                    v225 = 11;
                                                                  }

                                                                  else
                                                                  {
                                                                    v225 = v19;
                                                                  }

                                                                  do
                                                                  {
                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v224, v16[v224]);
                                                                    ++v224;
                                                                  }

                                                                  while (v225 != v224);
                                                                }
                                                              }

                                                              else
                                                              {
                                                                if ((a4 & 1) != 0 && v15 == 464)
                                                                {
                                                                  goto LABEL_80;
                                                                }

                                                                if ((a4 & 1) != 0 && v15 == 913)
                                                                {
                                                                  result = fprintf(v8, "%20s:\n", "fwaHistogram");
                                                                  if (v19)
                                                                  {
                                                                    v226 = 0;
                                                                    if (v19 >= 0xA)
                                                                    {
                                                                      v227 = 10;
                                                                    }

                                                                    else
                                                                    {
                                                                      v227 = v19;
                                                                    }

                                                                    do
                                                                    {
                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v226, v16[v226]);
                                                                      ++v226;
                                                                    }

                                                                    while (v227 != v226);
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  if ((a4 & 2) != 0 && v15 == 428 || (a4 & 1) != 0 && v15 == 429 || (a4 & 1) != 0 && v15 == 430 || (a4 & 1) != 0 && v15 == 431 || (a4 & 1) != 0 && v15 == 432 || (a4 & 1) != 0 && v15 == 433 || (a4 & 1) != 0 && v15 == 434 || (a4 & 1) != 0 && v15 == 435 || (a4 & 1) != 0 && v15 == 436)
                                                                  {
                                                                    goto LABEL_80;
                                                                  }

                                                                  if ((a4 & 1) != 0 && v15 == 466)
                                                                  {
                                                                    result = fprintf(v8, "%20s:\n", "qosDirectToTLC");
                                                                    if (v19)
                                                                    {
                                                                      v228 = 0;
                                                                      if (v19 >= 0x40)
                                                                      {
                                                                        v229 = 64;
                                                                      }

                                                                      else
                                                                      {
                                                                        v229 = v19;
                                                                      }

                                                                      do
                                                                      {
                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v228, v16[v228]);
                                                                        ++v228;
                                                                      }

                                                                      while (v229 != v228);
                                                                    }
                                                                  }

                                                                  else if ((a4 & 1) != 0 && v15 == 467)
                                                                  {
                                                                    result = fprintf(v8, "%20s:\n", "maxQosDirectToTLC");
                                                                    if (v19)
                                                                    {
                                                                      v230 = 0;
                                                                      if (v19 >= 4)
                                                                      {
                                                                        v231 = 4;
                                                                      }

                                                                      else
                                                                      {
                                                                        v231 = v19;
                                                                      }

                                                                      do
                                                                      {
                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v230, v16[v230]);
                                                                        ++v230;
                                                                      }

                                                                      while (v231 != v230);
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    if ((a4 & 1) != 0 && v15 == 447 || (a4 & 1) != 0 && v15 == 448 || (a4 & 1) != 0 && v15 == 449 || (a4 & 1) != 0 && v15 == 488 || (a4 & 1) != 0 && v15 == 486 || (a4 & 1) != 0 && v15 == 450 || (a4 & 1) != 0 && v15 == 518 || (a4 & 1) != 0 && v15 == 519 || (a4 & 2) != 0 && v15 == 627 || (a4 & 2) != 0 && v15 == 628 || (a4 & 2) != 0 && v15 == 629 || (a4 & 2) != 0 && v15 == 671 || (a4 & 2) != 0 && v15 == 672 || (a4 & 2) != 0 && v15 == 816 || (a4 & 1) != 0 && v15 == 538 || (a4 & 1) != 0 && v15 == 487)
                                                                    {
                                                                      goto LABEL_80;
                                                                    }

                                                                    if ((a4 & 1) != 0 && v15 == 490)
                                                                    {
                                                                      result = fprintf(v8, "%20s:\n", "bdrTmpHist");
                                                                      if (v19)
                                                                      {
                                                                        v232 = 0;
                                                                        if (v19 >= 0x40)
                                                                        {
                                                                          v233 = 64;
                                                                        }

                                                                        else
                                                                        {
                                                                          v233 = v19;
                                                                        }

                                                                        do
                                                                        {
                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v232, v16[v232]);
                                                                          ++v232;
                                                                        }

                                                                        while (v233 != v232);
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      if ((a4 & 1) != 0 && v15 == 491 || (a4 & 1) != 0 && v15 == 492)
                                                                      {
                                                                        goto LABEL_80;
                                                                      }

                                                                      if ((a4 & 1) != 0 && v15 == 624)
                                                                      {
                                                                        result = fprintf(v8, "%20s:\n", "clogFailReason");
                                                                        if (v19)
                                                                        {
                                                                          v234 = 0;
                                                                          if (v19 >= 0x10)
                                                                          {
                                                                            v235 = 16;
                                                                          }

                                                                          else
                                                                          {
                                                                            v235 = v19;
                                                                          }

                                                                          do
                                                                          {
                                                                            result = fprintf(v8, "                      [%d] = %llu\n", v234, v16[v234]);
                                                                            ++v234;
                                                                          }

                                                                          while (v235 != v234);
                                                                        }
                                                                      }

                                                                      else if ((a4 & 1) != 0 && v15 == 1001)
                                                                      {
                                                                        result = fprintf(v8, "%20s:\n", "clogReplayFailReason");
                                                                        if (v19)
                                                                        {
                                                                          v236 = 0;
                                                                          if (v19 >= 8)
                                                                          {
                                                                            v237 = 8;
                                                                          }

                                                                          else
                                                                          {
                                                                            v237 = v19;
                                                                          }

                                                                          do
                                                                          {
                                                                            result = fprintf(v8, "                      [%d] = %llu\n", v236, v16[v236]);
                                                                            ++v236;
                                                                          }

                                                                          while (v237 != v236);
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        if ((a4 & 1) != 0 && v15 == 1002 || (a4 & 1) != 0 && v15 == 1003 || (a4 & 1) != 0 && v15 == 493 || (a4 & 1) != 0 && v15 == 497 || (a4 & 1) != 0 && v15 == 495 || (a4 & 1) != 0 && v15 == 496 || (a4 & 1) != 0 && v15 == 498 || (a4 & 1) != 0 && v15 == 499 || (a4 & 1) != 0 && v15 == 500 || (a4 & 1) != 0 && v15 == 606 || (a4 & 1) != 0 && v15 == 617 || (a4 & 1) != 0 && v15 == 607 || (a4 & 1) != 0 && v15 == 618 || (a4 & 1) != 0 && v15 == 619 || (a4 & 1) != 0 && v15 == 620 || (a4 & 1) != 0 && v15 == 625 || (a4 & 1) != 0 && v15 == 626 || (a4 & 1) != 0 && v15 == 1009 || (a4 & 1) != 0 && v15 == 1010)
                                                                        {
                                                                          goto LABEL_80;
                                                                        }

                                                                        if ((a4 & 1) != 0 && v15 == 621)
                                                                        {
                                                                          result = fprintf(v8, "%20s:\n", "eanBootReadsHist");
                                                                          if (v19)
                                                                          {
                                                                            v238 = 0;
                                                                            if (v19 >= 0xA)
                                                                            {
                                                                              v239 = 10;
                                                                            }

                                                                            else
                                                                            {
                                                                              v239 = v19;
                                                                            }

                                                                            do
                                                                            {
                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v238, v16[v238]);
                                                                              ++v238;
                                                                            }

                                                                            while (v239 != v238);
                                                                          }
                                                                        }

                                                                        else if ((a4 & 1) != 0 && v15 == 632)
                                                                        {
                                                                          result = fprintf(v8, "%20s:\n", "eanFirstReadMode");
                                                                          if (v19)
                                                                          {
                                                                            v240 = 0;
                                                                            if (v19 >= 6)
                                                                            {
                                                                              v241 = 6;
                                                                            }

                                                                            else
                                                                            {
                                                                              v241 = v19;
                                                                            }

                                                                            do
                                                                            {
                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v240, v16[v240]);
                                                                              ++v240;
                                                                            }

                                                                            while (v241 != v240);
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          if ((a4 & 1) != 0 && v15 == 642 || (a4 & 1) != 0 && v15 == 502 || (a4 & 1) != 0 && v15 == 505 || (a4 & 1) != 0 && v15 == 506 || (a4 & 1) != 0 && v15 == 507 || (a4 & 1) != 0 && v15 == 520 || (a4 & 1) != 0 && v15 == 521 || (a4 & 1) != 0 && v15 == 522 || (a4 & 1) != 0 && v15 == 523 || (a4 & 1) != 0 && v15 == 524 || (a4 & 1) != 0 && v15 == 525 || (a4 & 1) != 0 && v15 == 526 || (a4 & 1) != 0 && v15 == 527 || (a4 & 1) != 0 && v15 == 612 || (a4 & 1) != 0 && v15 == 616 || (a4 & 1) != 0 && v15 == 664 || (a4 & 1) != 0 && v15 == 665 || (a4 & 1) != 0 && v15 == 707 || (a4 & 1) != 0 && v15 == 708 || (a4 & 2) != 0 && v15 == 530 || (a4 & 1) != 0 && v15 == 531 || (a4 & 1) != 0 && v15 == 828)
                                                                          {
                                                                            goto LABEL_80;
                                                                          }

                                                                          if ((a4 & 2) != 0 && v15 == 1369)
                                                                          {
                                                                            result = fprintf(v8, "%20s:\n", "realGBBPerDipOfFailingDie");
                                                                            if (v19)
                                                                            {
                                                                              v242 = 0;
                                                                              if (v19 >= 8)
                                                                              {
                                                                                v243 = 8;
                                                                              }

                                                                              else
                                                                              {
                                                                                v243 = v19;
                                                                              }

                                                                              do
                                                                              {
                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v242, v16[v242]);
                                                                                ++v242;
                                                                              }

                                                                              while (v243 != v242);
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            if ((a4 & 1) != 0 && v15 == 532 || (a4 & 1) != 0 && v15 == 533 || (a4 & 1) != 0 && v15 == 534 || (a4 & 1) != 0 && v15 == 535 || (a4 & 1) != 0 && v15 == 537 || (a4 & 1) != 0 && v15 == 543 || (a4 & 2) != 0 && v15 == 581 || (a4 & 2) != 0 && v15 == 582 || (a4 & 1) != 0 && v15 == 583 || (a4 & 1) != 0 && v15 == 584 || (a4 & 1) != 0 && v15 == 544 || (a4 & 1) != 0 && v15 == 553 || (a4 & 1) != 0 && v15 == 557 || (a4 & 1) != 0 && v15 == 1117 || (a4 & 1) != 0 && v15 == 548 || (a4 & 1) != 0 && v15 == 611 || (a4 & 1) != 0 && v15 == 545 || (a4 & 1) != 0 && v15 == 558 || (a4 & 1) != 0 && v15 == 559 || (a4 & 1) != 0 && v15 == 1112 || (a4 & 1) != 0 && v15 == 563 || (a4 & 1) != 0 && v15 == 564 || (a4 & 1) != 0 && v15 == 613 || (a4 & 1) != 0 && v15 == 614 || (a4 & 1) != 0 && v15 == 615)
                                                                            {
                                                                              goto LABEL_80;
                                                                            }

                                                                            if ((a4 & 1) != 0 && v15 == 546)
                                                                            {
                                                                              result = fprintf(v8, "%20s:\n", "slcDemandBurstSizeDetected");
                                                                              if (v19)
                                                                              {
                                                                                v244 = 0;
                                                                                if (v19 >= 0xA)
                                                                                {
                                                                                  v245 = 10;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v245 = v19;
                                                                                }

                                                                                do
                                                                                {
                                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v244, v16[v244]);
                                                                                  ++v244;
                                                                                }

                                                                                while (v245 != v244);
                                                                              }
                                                                            }

                                                                            else if ((a4 & 1) != 0 && v15 == 549)
                                                                            {
                                                                              result = fprintf(v8, "%20s:\n", "slcDemandBurstSizeSlc");
                                                                              if (v19)
                                                                              {
                                                                                v246 = 0;
                                                                                if (v19 >= 0xA)
                                                                                {
                                                                                  v247 = 10;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v247 = v19;
                                                                                }

                                                                                do
                                                                                {
                                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v246, v16[v246]);
                                                                                  ++v246;
                                                                                }

                                                                                while (v247 != v246);
                                                                              }
                                                                            }

                                                                            else if ((a4 & 1) != 0 && v15 == 547)
                                                                            {
                                                                              result = fprintf(v8, "%20s:\n", "slcDemandBurstDur");
                                                                              if (v19)
                                                                              {
                                                                                v248 = 0;
                                                                                if (v19 >= 0xA)
                                                                                {
                                                                                  v249 = 10;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v249 = v19;
                                                                                }

                                                                                do
                                                                                {
                                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v248, v16[v248]);
                                                                                  ++v248;
                                                                                }

                                                                                while (v249 != v248);
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              if ((a4 & 1) != 0 && v15 == 560 || (a4 & 1) != 0 && v15 == 635 || (a4 & 1) != 0 && v15 == 636 || (a4 & 1) != 0 && v15 == 637 || (a4 & 1) != 0 && v15 == 561 || (a4 & 1) != 0 && v15 == 565 || (a4 & 1) != 0 && v15 == 568 || (a4 & 1) != 0 && v15 == 575 || (a4 & 1) != 0 && v15 == 588 || (a4 & 1) != 0 && v15 == 589 || (a4 & 1) != 0 && v15 == 590 || (a4 & 1) != 0 && v15 == 591 || (a4 & 1) != 0 && v15 == 594 || (a4 & 1) != 0 && v15 == 595 || (a4 & 1) != 0 && v15 == 602)
                                                                              {
                                                                                goto LABEL_80;
                                                                              }

                                                                              if ((a4 & 1) != 0 && v15 == 638)
                                                                              {
                                                                                result = fprintf(v8, "%20s:\n", "oslcDemandBurstSize");
                                                                                if (v19)
                                                                                {
                                                                                  v250 = 0;
                                                                                  if (v19 >= 0xA)
                                                                                  {
                                                                                    v251 = 10;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v251 = v19;
                                                                                  }

                                                                                  do
                                                                                  {
                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v250, v16[v250]);
                                                                                    ++v250;
                                                                                  }

                                                                                  while (v251 != v250);
                                                                                }
                                                                              }

                                                                              else if ((a4 & 1) != 0 && v15 == 674)
                                                                              {
                                                                                result = fprintf(v8, "%20s:\n", "oslcNoVotesHw");
                                                                                if (v19)
                                                                                {
                                                                                  v252 = 0;
                                                                                  if (v19 >= 8)
                                                                                  {
                                                                                    v253 = 8;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v253 = v19;
                                                                                  }

                                                                                  do
                                                                                  {
                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v252, v16[v252]);
                                                                                    ++v252;
                                                                                  }

                                                                                  while (v253 != v252);
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                if ((a4 & 1) != 0 && v15 == 884 || (a4 & 2) != 0 && v15 == 1408 || (a4 & 1) != 0 && v15 == 601)
                                                                                {
                                                                                  goto LABEL_80;
                                                                                }

                                                                                if ((a4 & 1) != 0 && v15 == 1462)
                                                                                {
                                                                                  result = fprintf(v8, "%20s:\n", "nandWritesByMode");
                                                                                  if (v19)
                                                                                  {
                                                                                    v254 = 0;
                                                                                    if (v19 >= 6)
                                                                                    {
                                                                                      v255 = 6;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v255 = v19;
                                                                                    }

                                                                                    do
                                                                                    {
                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v254, v16[v254]);
                                                                                      ++v254;
                                                                                    }

                                                                                    while (v255 != v254);
                                                                                  }
                                                                                }

                                                                                else if ((a4 & 1) != 0 && v15 == 1463)
                                                                                {
                                                                                  result = fprintf(v8, "%20s:\n", "nandReadsByMode");
                                                                                  if (v19)
                                                                                  {
                                                                                    v256 = 0;
                                                                                    if (v19 >= 6)
                                                                                    {
                                                                                      v257 = 6;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v257 = v19;
                                                                                    }

                                                                                    do
                                                                                    {
                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v256, v16[v256]);
                                                                                      ++v256;
                                                                                    }

                                                                                    while (v257 != v256);
                                                                                  }
                                                                                }

                                                                                else if ((a4 & 1) != 0 && v15 == 605)
                                                                                {
                                                                                  result = fprintf(v8, "%20s:\n", "gcActiveReasons");
                                                                                  if (v19)
                                                                                  {
                                                                                    v258 = 0;
                                                                                    if (v19 >= 0xA)
                                                                                    {
                                                                                      v259 = 10;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v259 = v19;
                                                                                    }

                                                                                    do
                                                                                    {
                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v258, v16[v258]);
                                                                                      ++v258;
                                                                                    }

                                                                                    while (v259 != v258);
                                                                                  }
                                                                                }

                                                                                else if ((a4 & 1) != 0 && v15 == 610)
                                                                                {
                                                                                  result = fprintf(v8, "%20s:\n", "pcieAerCounters");
                                                                                  if (v19)
                                                                                  {
                                                                                    v260 = 0;
                                                                                    if (v19 >= 0x40)
                                                                                    {
                                                                                      v261 = 64;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v261 = v19;
                                                                                    }

                                                                                    do
                                                                                    {
                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v260, v16[v260]);
                                                                                      ++v260;
                                                                                    }

                                                                                    while (v261 != v260);
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  if ((a4 & 1) != 0 && v15 == 622 || (a4 & 1) != 0 && v15 == 623 || (a4 & 1) != 0 && v15 == 633 || (a4 & 1) != 0 && v15 == 634 || (a4 & 1) != 0 && v15 == 1437 || (a4 & 1) != 0 && v15 == 1438 || (a4 & 1) != 0 && v15 == 541 || (a4 & 1) != 0 && v15 == 542 || (a4 & 1) != 0 && v15 == 667 || (a4 & 1) != 0 && v15 == 1442 || (a4 & 1) != 0 && v15 == 676 || (a4 & 1) != 0 && v15 == 826)
                                                                                  {
                                                                                    goto LABEL_80;
                                                                                  }

                                                                                  if ((a4 & 1) != 0 && v15 == 1362)
                                                                                  {
                                                                                    result = fprintf(v8, "%20s:\n", "gcMustReasons");
                                                                                    if (v19)
                                                                                    {
                                                                                      v262 = 0;
                                                                                      if (v19 >= 0x15)
                                                                                      {
                                                                                        v263 = 21;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v263 = v19;
                                                                                      }

                                                                                      do
                                                                                      {
                                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v262, v16[v262]);
                                                                                        ++v262;
                                                                                      }

                                                                                      while (v263 != v262);
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    if ((a4 & 2) != 0 && v15 == 666 || (a4 & 2) != 0 && v15 == 675)
                                                                                    {
                                                                                      goto LABEL_80;
                                                                                    }

                                                                                    if ((a4 & 1) != 0 && v15 == 687)
                                                                                    {
                                                                                      result = fprintf(v8, "%20s:\n", "cbdrInitSent");
                                                                                      if (v19)
                                                                                      {
                                                                                        v264 = 0;
                                                                                        if (v19 >= 3)
                                                                                        {
                                                                                          v265 = 3;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v265 = v19;
                                                                                        }

                                                                                        do
                                                                                        {
                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v264, v16[v264]);
                                                                                          ++v264;
                                                                                        }

                                                                                        while (v265 != v264);
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      if ((a4 & 1) != 0 && v15 == 688 || (a4 & 1) != 0 && v15 == 689 || (a4 & 1) != 0 && v15 == 690 || (a4 & 1) != 0 && v15 == 691)
                                                                                      {
                                                                                        goto LABEL_80;
                                                                                      }

                                                                                      if ((a4 & 1) != 0 && v15 == 694)
                                                                                      {
                                                                                        result = fprintf(v8, "%20s:\n", "cbdrRefreshGrades");
                                                                                        if (v19)
                                                                                        {
                                                                                          v266 = 0;
                                                                                          if (v19 >= 0xA)
                                                                                          {
                                                                                            v267 = 10;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v267 = v19;
                                                                                          }

                                                                                          do
                                                                                          {
                                                                                            result = fprintf(v8, "                      [%d] = %llu\n", v266, v16[v266]);
                                                                                            ++v266;
                                                                                          }

                                                                                          while (v267 != v266);
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        if ((a4 & 1) != 0 && v15 == 695 || (a4 & 1) != 0 && v15 == 696 || (a4 & 1) != 0 && v15 == 699 || (a4 & 1) != 0 && v15 == 753 || (a4 & 1) != 0 && v15 == 754 || (a4 & 1) != 0 && v15 == 755)
                                                                                        {
                                                                                          goto LABEL_80;
                                                                                        }

                                                                                        if ((a4 & 1) != 0 && v15 == 756)
                                                                                        {
                                                                                          result = fprintf(v8, "%20s:\n", "cbdrRefreshedAges");
                                                                                          if (v19)
                                                                                          {
                                                                                            v268 = 0;
                                                                                            if (v19 >= 9)
                                                                                            {
                                                                                              v269 = 9;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v269 = v19;
                                                                                            }

                                                                                            do
                                                                                            {
                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v268, v16[v268]);
                                                                                              ++v268;
                                                                                            }

                                                                                            while (v269 != v268);
                                                                                          }
                                                                                        }

                                                                                        else if ((a4 & 1) != 0 && v15 == 1310)
                                                                                        {
                                                                                          result = fprintf(v8, "%20s:\n", "cbdrRefreshedAges2");
                                                                                          if (v19)
                                                                                          {
                                                                                            v270 = 0;
                                                                                            if (v19 >= 9)
                                                                                            {
                                                                                              v271 = 9;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v271 = v19;
                                                                                            }

                                                                                            do
                                                                                            {
                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v270, v16[v270]);
                                                                                              ++v270;
                                                                                            }

                                                                                            while (v271 != v270);
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          if ((a4 & 1) != 0 && v15 == 757 || (a4 & 1) != 0 && v15 == 758)
                                                                                          {
                                                                                            goto LABEL_80;
                                                                                          }

                                                                                          if ((a4 & 1) != 0 && v15 == 759)
                                                                                          {
                                                                                            result = fprintf(v8, "%20s:\n", "cbdrScanPct");
                                                                                            if (v19)
                                                                                            {
                                                                                              v272 = 0;
                                                                                              if (v19 >= 5)
                                                                                              {
                                                                                                v273 = 5;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v273 = v19;
                                                                                              }

                                                                                              do
                                                                                              {
                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v272, v16[v272]);
                                                                                                ++v272;
                                                                                              }

                                                                                              while (v273 != v272);
                                                                                            }
                                                                                          }

                                                                                          else if ((a4 & 1) != 0 && v15 == 1309)
                                                                                          {
                                                                                            result = fprintf(v8, "%20s:\n", "cbdrScanPct2");
                                                                                            if (v19)
                                                                                            {
                                                                                              v274 = 0;
                                                                                              if (v19 >= 5)
                                                                                              {
                                                                                                v275 = 5;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v275 = v19;
                                                                                              }

                                                                                              do
                                                                                              {
                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v274, v16[v274]);
                                                                                                ++v274;
                                                                                              }

                                                                                              while (v275 != v274);
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            if ((a4 & 1) != 0 && v15 == 766 || (a4 & 1) != 0 && v15 == 1351)
                                                                                            {
                                                                                              goto LABEL_80;
                                                                                            }

                                                                                            if ((a4 & 1) != 0 && v15 == 769)
                                                                                            {
                                                                                              result = fprintf(v8, "%20s:\n", "cbdrScanPctSLC");
                                                                                              if (v19)
                                                                                              {
                                                                                                v276 = 0;
                                                                                                if (v19 >= 5)
                                                                                                {
                                                                                                  v277 = 5;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v277 = v19;
                                                                                                }

                                                                                                do
                                                                                                {
                                                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v276, v16[v276]);
                                                                                                  ++v276;
                                                                                                }

                                                                                                while (v277 != v276);
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              if ((a4 & 2) != 0 && v15 == 970 || (a4 & 1) != 0 && v15 == 683 || (a4 & 1) != 0 && v15 == 693 || (a4 & 1) != 0 && v15 == 718 || (a4 & 1) != 0 && v15 == 709 || (a4 & 1) != 0 && v15 == 710)
                                                                                              {
                                                                                                goto LABEL_80;
                                                                                              }

                                                                                              if ((a4 & 1) != 0 && v15 == 702)
                                                                                              {
                                                                                                result = fprintf(v8, "%20s:\n", "vcurve");
                                                                                                if (v19)
                                                                                                {
                                                                                                  v278 = 0;
                                                                                                  if (v19 >= 0x20)
                                                                                                  {
                                                                                                    v279 = 32;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v279 = v19;
                                                                                                  }

                                                                                                  do
                                                                                                  {
                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v278, v16[v278]);
                                                                                                    ++v278;
                                                                                                  }

                                                                                                  while (v279 != v278);
                                                                                                }
                                                                                              }

                                                                                              else if ((a4 & 1) != 0 && v15 == 703)
                                                                                              {
                                                                                                result = fprintf(v8, "%20s:\n", "injDepth");
                                                                                                if (v19)
                                                                                                {
                                                                                                  v280 = 0;
                                                                                                  if (v19 >= 0xC)
                                                                                                  {
                                                                                                    v281 = 12;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v281 = v19;
                                                                                                  }

                                                                                                  do
                                                                                                  {
                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v280, v16[v280]);
                                                                                                    ++v280;
                                                                                                  }

                                                                                                  while (v281 != v280);
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                if ((a4 & 1) != 0 && v15 == 704 || (a4 & 1) != 0 && v15 == 719 || (a4 & 1) != 0 && v15 == 720 || (a4 & 1) != 0 && v15 == 729 || (a4 & 1) != 0 && v15 == 730 || (a4 & 1) != 0 && v15 == 732 || (a4 & 1) != 0 && v15 == 741 || (a4 & 1) != 0 && v15 == 742 || (a4 & 1) != 0 && v15 == 743 || (a4 & 1) != 0 && v15 == 746 || (a4 & 1) != 0 && v15 == 747 || (a4 & 1) != 0 && v15 == 750 || (a4 & 1) != 0 && v15 == 751)
                                                                                                {
                                                                                                  goto LABEL_80;
                                                                                                }

                                                                                                if ((a4 & 1) != 0 && v15 == 744)
                                                                                                {
                                                                                                  result = fprintf(v8, "%20s:\n", "raidReconstructDurationHisto");
                                                                                                  if (v19)
                                                                                                  {
                                                                                                    v282 = 0;
                                                                                                    if (v19 >= 8)
                                                                                                    {
                                                                                                      v283 = 8;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v283 = v19;
                                                                                                    }

                                                                                                    do
                                                                                                    {
                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v282, v16[v282]);
                                                                                                      ++v282;
                                                                                                    }

                                                                                                    while (v283 != v282);
                                                                                                  }
                                                                                                }

                                                                                                else if ((a4 & 1) != 0 && v15 == 745)
                                                                                                {
                                                                                                  result = fprintf(v8, "%20s:\n", "failsOnReconstructHisto");
                                                                                                  if (v19)
                                                                                                  {
                                                                                                    v284 = 0;
                                                                                                    if (v19 >= 8)
                                                                                                    {
                                                                                                      v285 = 8;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v285 = v19;
                                                                                                    }

                                                                                                    do
                                                                                                    {
                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v284, v16[v284]);
                                                                                                      ++v284;
                                                                                                    }

                                                                                                    while (v285 != v284);
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  if ((a4 & 1) != 0 && v15 == 776 || (a4 & 1) != 0 && v15 == 764 || (a4 & 1) != 0 && v15 == 765)
                                                                                                  {
                                                                                                    goto LABEL_80;
                                                                                                  }

                                                                                                  if ((a4 & 1) != 0 && v15 == 770)
                                                                                                  {
                                                                                                    result = fprintf(v8, "%20s:\n", "cpuBurstLength");
                                                                                                    if (v19)
                                                                                                    {
                                                                                                      v286 = 0;
                                                                                                      if (v19 >= 8)
                                                                                                      {
                                                                                                        v287 = 8;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v287 = v19;
                                                                                                      }

                                                                                                      do
                                                                                                      {
                                                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v286, v16[v286]);
                                                                                                        ++v286;
                                                                                                      }

                                                                                                      while (v287 != v286);
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    if ((a4 & 1) != 0 && v15 == 778 || (a4 & 1) != 0 && v15 == 779 || (a4 & 1) != 0 && v15 == 780 || (a4 & 1) != 0 && v15 == 792 || (a4 & 1) != 0 && v15 == 793 || (a4 & 1) != 0 && v15 == 794 || (a4 & 2) != 0 && v15 == 821 || (a4 & 1) != 0 && v15 == 822 || (a4 & 1) != 0 && v15 == 827)
                                                                                                    {
                                                                                                      goto LABEL_80;
                                                                                                    }

                                                                                                    if ((a4 & 1) != 0 && v15 == 823)
                                                                                                    {
                                                                                                      result = fprintf(v8, "%20s:\n", "readClassifyStatusesHisto");
                                                                                                      if (v19)
                                                                                                      {
                                                                                                        v288 = 0;
                                                                                                        if (v19 >= 3)
                                                                                                        {
                                                                                                          v289 = 3;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v289 = v19;
                                                                                                        }

                                                                                                        do
                                                                                                        {
                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v288, v16[v288]);
                                                                                                          ++v288;
                                                                                                        }

                                                                                                        while (v289 != v288);
                                                                                                      }
                                                                                                    }

                                                                                                    else if ((a4 & 1) != 0 && v15 == 824)
                                                                                                    {
                                                                                                      result = fprintf(v8, "%20s:\n", "readWithAuxStatusesHisto");
                                                                                                      if (v19)
                                                                                                      {
                                                                                                        v290 = 0;
                                                                                                        if (v19 >= 0xA)
                                                                                                        {
                                                                                                          v291 = 10;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v291 = v19;
                                                                                                        }

                                                                                                        do
                                                                                                        {
                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v290, v16[v290]);
                                                                                                          ++v290;
                                                                                                        }

                                                                                                        while (v291 != v290);
                                                                                                      }
                                                                                                    }

                                                                                                    else if ((a4 & 1) != 0 && v15 == 825)
                                                                                                    {
                                                                                                      result = fprintf(v8, "%20s:\n", "readReconstructStatusesHisto");
                                                                                                      if (v19)
                                                                                                      {
                                                                                                        v292 = 0;
                                                                                                        if (v19 >= 0xA)
                                                                                                        {
                                                                                                          v293 = 10;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v293 = v19;
                                                                                                        }

                                                                                                        do
                                                                                                        {
                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v292, v16[v292]);
                                                                                                          ++v292;
                                                                                                        }

                                                                                                        while (v293 != v292);
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      if ((a4 & 1) != 0 && v15 == 830 || (a4 & 1) != 0 && v15 == 831 || (a4 & 2) != 0 && v15 == 832)
                                                                                                      {
                                                                                                        goto LABEL_80;
                                                                                                      }

                                                                                                      if ((a4 & 2) != 0 && v15 == 855)
                                                                                                      {
                                                                                                        result = fprintf(v8, "%20s:\n", "fwFormatVersion");
                                                                                                        if (v19)
                                                                                                        {
                                                                                                          v294 = 0;
                                                                                                          if (v19 >= 3)
                                                                                                          {
                                                                                                            v295 = 3;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v295 = v19;
                                                                                                          }

                                                                                                          do
                                                                                                          {
                                                                                                            result = fprintf(v8, "                      [%d] = %llu\n", v294, v16[v294]);
                                                                                                            ++v294;
                                                                                                          }

                                                                                                          while (v295 != v294);
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        if ((a4 & 1) != 0 && v15 == 883)
                                                                                                        {
                                                                                                          goto LABEL_80;
                                                                                                        }

                                                                                                        if ((a4 & 2) != 0 && v15 == 868)
                                                                                                        {
                                                                                                          result = fprintf(v8, "%20s:\n", "dmReasonsSlc_1bc");
                                                                                                          if (v19)
                                                                                                          {
                                                                                                            v296 = 0;
                                                                                                            if (v19 >= 0x20)
                                                                                                            {
                                                                                                              v297 = 32;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v297 = v19;
                                                                                                            }

                                                                                                            do
                                                                                                            {
                                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v296, v16[v296]);
                                                                                                              ++v296;
                                                                                                            }

                                                                                                            while (v297 != v296);
                                                                                                          }
                                                                                                        }

                                                                                                        else if ((a4 & 2) != 0 && v15 == 869)
                                                                                                        {
                                                                                                          result = fprintf(v8, "%20s:\n", "dmReasonsTlc_1bc");
                                                                                                          if (v19)
                                                                                                          {
                                                                                                            v298 = 0;
                                                                                                            if (v19 >= 0x20)
                                                                                                            {
                                                                                                              v299 = 32;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v299 = v19;
                                                                                                            }

                                                                                                            do
                                                                                                            {
                                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v298, v16[v298]);
                                                                                                              ++v298;
                                                                                                            }

                                                                                                            while (v299 != v298);
                                                                                                          }
                                                                                                        }

                                                                                                        else if ((a4 & 2) != 0 && v15 == 870)
                                                                                                        {
                                                                                                          result = fprintf(v8, "%20s:\n", "dmReasonsSlc_1bc_he");
                                                                                                          if (v19)
                                                                                                          {
                                                                                                            v300 = 0;
                                                                                                            if (v19 >= 0x20)
                                                                                                            {
                                                                                                              v301 = 32;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v301 = v19;
                                                                                                            }

                                                                                                            do
                                                                                                            {
                                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v300, v16[v300]);
                                                                                                              ++v300;
                                                                                                            }

                                                                                                            while (v301 != v300);
                                                                                                          }
                                                                                                        }

                                                                                                        else if ((a4 & 2) != 0 && v15 == 871)
                                                                                                        {
                                                                                                          result = fprintf(v8, "%20s:\n", "dmReasonsTlc_1bc_he");
                                                                                                          if (v19)
                                                                                                          {
                                                                                                            v302 = 0;
                                                                                                            if (v19 >= 0x20)
                                                                                                            {
                                                                                                              v303 = 32;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v303 = v19;
                                                                                                            }

                                                                                                            do
                                                                                                            {
                                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v302, v16[v302]);
                                                                                                              ++v302;
                                                                                                            }

                                                                                                            while (v303 != v302);
                                                                                                          }
                                                                                                        }

                                                                                                        else if ((a4 & 2) != 0 && v15 == 876)
                                                                                                        {
                                                                                                          result = fprintf(v8, "%20s:\n", "dmReasonsSlc_mbc");
                                                                                                          if (v19)
                                                                                                          {
                                                                                                            v304 = 0;
                                                                                                            if (v19 >= 0x20)
                                                                                                            {
                                                                                                              v305 = 32;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v305 = v19;
                                                                                                            }

                                                                                                            do
                                                                                                            {
                                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v304, v16[v304]);
                                                                                                              ++v304;
                                                                                                            }

                                                                                                            while (v305 != v304);
                                                                                                          }
                                                                                                        }

                                                                                                        else if ((a4 & 2) != 0 && v15 == 877)
                                                                                                        {
                                                                                                          result = fprintf(v8, "%20s:\n", "dmReasonsTlc_mbc");
                                                                                                          if (v19)
                                                                                                          {
                                                                                                            v306 = 0;
                                                                                                            if (v19 >= 0x20)
                                                                                                            {
                                                                                                              v307 = 32;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v307 = v19;
                                                                                                            }

                                                                                                            do
                                                                                                            {
                                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v306, v16[v306]);
                                                                                                              ++v306;
                                                                                                            }

                                                                                                            while (v307 != v306);
                                                                                                          }
                                                                                                        }

                                                                                                        else if ((a4 & 2) != 0 && v15 == 1291)
                                                                                                        {
                                                                                                          result = fprintf(v8, "%20s:\n", "dmReasonsTlc_mbc2");
                                                                                                          if (v19)
                                                                                                          {
                                                                                                            v308 = 0;
                                                                                                            if (v19 >= 0x20)
                                                                                                            {
                                                                                                              v309 = 32;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v309 = v19;
                                                                                                            }

                                                                                                            do
                                                                                                            {
                                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v308, v16[v308]);
                                                                                                              ++v308;
                                                                                                            }

                                                                                                            while (v309 != v308);
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          if ((a4 & 1) != 0 && v15 == 896)
                                                                                                          {
                                                                                                            goto LABEL_80;
                                                                                                          }

                                                                                                          if ((a4 & 1) != 0 && v15 == 897)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "wcWrFragSizes");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v310 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v311 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v311 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v310, v16[v310]);
                                                                                                                ++v310;
                                                                                                              }

                                                                                                              while (v311 != v310);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 905)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidRelPerBlock");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v312 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v313 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v313 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v312, v16[v312]);
                                                                                                                ++v312;
                                                                                                              }

                                                                                                              while (v313 != v312);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 906)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidRelBetweenRefreshesPerBlock");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v314 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v315 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v315 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v314, v16[v314]);
                                                                                                                ++v314;
                                                                                                              }

                                                                                                              while (v315 != v314);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 907)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidMaxRelBetweenRefreshesPerBlock");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v316 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v317 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v317 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v316, v16[v316]);
                                                                                                                ++v316;
                                                                                                              }

                                                                                                              while (v317 != v316);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 908)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidMinRelBetweenRefreshesPerBlock");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v318 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v319 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v319 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v318, v16[v318]);
                                                                                                                ++v318;
                                                                                                              }

                                                                                                              while (v319 != v318);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 918)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidMaxCyclesBetweenRel");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v320 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v321 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v321 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v320, v16[v320]);
                                                                                                                ++v320;
                                                                                                              }

                                                                                                              while (v321 != v320);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 919)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidMinCyclesBetweenRel");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v322 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v323 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v323 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v322, v16[v322]);
                                                                                                                ++v322;
                                                                                                              }

                                                                                                              while (v323 != v322);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 932)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidLastRelPECycles");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v324 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v325 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v325 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v324, v16[v324]);
                                                                                                                ++v324;
                                                                                                              }

                                                                                                              while (v325 != v324);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 933)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidRelQualPECycles");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v326 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v327 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v327 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v326, v16[v326]);
                                                                                                                ++v326;
                                                                                                              }

                                                                                                              while (v327 != v326);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 920)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidAuxPerBlock");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v328 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v329 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v329 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v328, v16[v328]);
                                                                                                                ++v328;
                                                                                                              }

                                                                                                              while (v329 != v328);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 921)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidAuxBetweenRefreshesPerBlock");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v330 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v331 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v331 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v330, v16[v330]);
                                                                                                                ++v330;
                                                                                                              }

                                                                                                              while (v331 != v330);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 930)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidMaxCyclesBetweenAux");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v332 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v333 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v333 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v332, v16[v332]);
                                                                                                                ++v332;
                                                                                                              }

                                                                                                              while (v333 != v332);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 931)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidMinCyclesBetweenAux");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v334 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v335 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v335 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v334, v16[v334]);
                                                                                                                ++v334;
                                                                                                              }

                                                                                                              while (v335 != v334);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 934)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidLastAuxPECycles");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v336 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v337 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v337 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v336, v16[v336]);
                                                                                                                ++v336;
                                                                                                              }

                                                                                                              while (v337 != v336);
                                                                                                            }
                                                                                                          }

                                                                                                          else if ((a4 & 1) != 0 && v15 == 935)
                                                                                                          {
                                                                                                            result = fprintf(v8, "%20s:\n", "turboRaidAuxQualPECycles");
                                                                                                            if (v19)
                                                                                                            {
                                                                                                              v338 = 0;
                                                                                                              if (v19 >= 0x10)
                                                                                                              {
                                                                                                                v339 = 16;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v339 = v19;
                                                                                                              }

                                                                                                              do
                                                                                                              {
                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v338, v16[v338]);
                                                                                                                ++v338;
                                                                                                              }

                                                                                                              while (v339 != v338);
                                                                                                            }
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            if ((a4 & 1) != 0 && v15 == 922 || (a4 & 1) != 0 && v15 == 923)
                                                                                                            {
                                                                                                              goto LABEL_80;
                                                                                                            }

                                                                                                            if ((a4 & 1) != 0 && v15 == 910)
                                                                                                            {
                                                                                                              result = fprintf(v8, "%20s:\n", "pgBelowMinBands");
                                                                                                              if (v19)
                                                                                                              {
                                                                                                                v340 = 0;
                                                                                                                if (v19 >= 2)
                                                                                                                {
                                                                                                                  v341 = 2;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v341 = v19;
                                                                                                                }

                                                                                                                do
                                                                                                                {
                                                                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v340, v16[v340]);
                                                                                                                  ++v340;
                                                                                                                }

                                                                                                                while (v341 != v340);
                                                                                                              }
                                                                                                            }

                                                                                                            else if ((a4 & 1) != 0 && v15 == 911)
                                                                                                            {
                                                                                                              result = fprintf(v8, "%20s:\n", "pgNoBands");
                                                                                                              if (v19)
                                                                                                              {
                                                                                                                v342 = 0;
                                                                                                                if (v19 >= 2)
                                                                                                                {
                                                                                                                  v343 = 2;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v343 = v19;
                                                                                                                }

                                                                                                                do
                                                                                                                {
                                                                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v342, v16[v342]);
                                                                                                                  ++v342;
                                                                                                                }

                                                                                                                while (v343 != v342);
                                                                                                              }
                                                                                                            }

                                                                                                            else if ((a4 & 1) != 0 && v15 == 912)
                                                                                                            {
                                                                                                              result = fprintf(v8, "%20s:\n", "pgBelowMinBlocks");
                                                                                                              if (v19)
                                                                                                              {
                                                                                                                v344 = 0;
                                                                                                                if (v19 >= 2)
                                                                                                                {
                                                                                                                  v345 = 2;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v345 = v19;
                                                                                                                }

                                                                                                                do
                                                                                                                {
                                                                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v344, v16[v344]);
                                                                                                                  ++v344;
                                                                                                                }

                                                                                                                while (v345 != v344);
                                                                                                              }
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              if ((a4 & 1) != 0 && v15 == 915 || (a4 & 1) != 0 && v15 == 925 || (a4 & 1) != 0 && v15 == 946 || (a4 & 1) != 0 && v15 == 936 || (a4 & 1) != 0 && v15 == 937 || (a4 & 1) != 0 && v15 == 938 || (a4 & 1) != 0 && v15 == 939 || (a4 & 1) != 0 && v15 == 940 || (a4 & 2) != 0 && v15 == 954 || (a4 & 2) != 0 && v15 == 942 || (a4 & 2) != 0 && v15 == 943 || (a4 & 2) != 0 && v15 == 944 || (a4 & 1) != 0 && v15 == 957 || (a4 & 1) != 0 && v15 == 958)
                                                                                                              {
                                                                                                                goto LABEL_80;
                                                                                                              }

                                                                                                              if ((a4 & 2) != 0 && v15 == 948)
                                                                                                              {
                                                                                                                result = fprintf(v8, "%20s:\n", "assertHistory");
                                                                                                                if (v19)
                                                                                                                {
                                                                                                                  v346 = 0;
                                                                                                                  if (v19 >= 0x28)
                                                                                                                  {
                                                                                                                    v347 = 40;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v347 = v19;
                                                                                                                  }

                                                                                                                  do
                                                                                                                  {
                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v346, v16[v346]);
                                                                                                                    ++v346;
                                                                                                                  }

                                                                                                                  while (v347 != v346);
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                if ((a4 & 2) != 0 && v15 == 951 || (a4 & 2) != 0 && v15 == 952 || (a4 & 1) != 0 && v15 == 955 || (a4 & 1) != 0 && v15 == 966 || (a4 & 1) != 0 && v15 == 968 || (a4 & 1) != 0 && v15 == 969)
                                                                                                                {
                                                                                                                  goto LABEL_80;
                                                                                                                }

                                                                                                                if ((a4 & 1) != 0 && v15 == 961)
                                                                                                                {
                                                                                                                  result = fprintf(v8, "%20s:\n", "osBuildStr");
                                                                                                                  if (v19)
                                                                                                                  {
                                                                                                                    v348 = 0;
                                                                                                                    if (v19 >= 2)
                                                                                                                    {
                                                                                                                      v349 = 2;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v349 = v19;
                                                                                                                    }

                                                                                                                    do
                                                                                                                    {
                                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v348, v16[v348]);
                                                                                                                      ++v348;
                                                                                                                    }

                                                                                                                    while (v349 != v348);
                                                                                                                  }
                                                                                                                }

                                                                                                                else if ((a4 & 1) != 0 && v15 == 967)
                                                                                                                {
                                                                                                                  result = fprintf(v8, "%20s:\n", "indTrimFrags");
                                                                                                                  if (v19)
                                                                                                                  {
                                                                                                                    v350 = 0;
                                                                                                                    if (v19 >= 0xC)
                                                                                                                    {
                                                                                                                      v351 = 12;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v351 = v19;
                                                                                                                    }

                                                                                                                    do
                                                                                                                    {
                                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v350, v16[v350]);
                                                                                                                      ++v350;
                                                                                                                    }

                                                                                                                    while (v351 != v350);
                                                                                                                  }
                                                                                                                }

                                                                                                                else if ((a4 & 1) != 0 && v15 == 971)
                                                                                                                {
                                                                                                                  result = fprintf(v8, "%20s:\n", "indUsedFrags");
                                                                                                                  if (v19)
                                                                                                                  {
                                                                                                                    v352 = 0;
                                                                                                                    if (v19 >= 0xC)
                                                                                                                    {
                                                                                                                      v353 = 12;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v353 = v19;
                                                                                                                    }

                                                                                                                    do
                                                                                                                    {
                                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v352, v16[v352]);
                                                                                                                      ++v352;
                                                                                                                    }

                                                                                                                    while (v353 != v352);
                                                                                                                  }
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  if ((a4 & 1) != 0 && v15 == 985 || (a4 & 1) != 0 && v15 == 973 || (a4 & 1) != 0 && v15 == 976 || (a4 & 1) != 0 && v15 == 980 || (a4 & 1) != 0 && v15 == 981 || (a4 & 1) != 0 && v15 == 982 || (a4 & 1) != 0 && v15 == 984 || (a4 & 1) != 0 && v15 == 990 || (a4 & 1) != 0 && v15 == 992 || (a4 & 1) != 0 && v15 == 993 || (a4 & 1) != 0 && v15 == 994 || (a4 & 1) != 0 && v15 == 1401 || (a4 & 1) != 0 && v15 == 986 || (a4 & 1) != 0 && v15 == 987 || (a4 & 1) != 0 && v15 == 1000 || (a4 & 1) != 0 && v15 == 1013)
                                                                                                                  {
                                                                                                                    goto LABEL_80;
                                                                                                                  }

                                                                                                                  if ((a4 & 1) != 0 && v15 == 1015)
                                                                                                                  {
                                                                                                                    result = fprintf(v8, "%20s:\n", "eanEarlyBootUeccPage");
                                                                                                                    if (v19)
                                                                                                                    {
                                                                                                                      v354 = 0;
                                                                                                                      if (v19 >= 4)
                                                                                                                      {
                                                                                                                        v355 = 4;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v355 = v19;
                                                                                                                      }

                                                                                                                      do
                                                                                                                      {
                                                                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v354, v16[v354]);
                                                                                                                        ++v354;
                                                                                                                      }

                                                                                                                      while (v355 != v354);
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    if ((a4 & 1) != 0 && v15 == 1016 || (a4 & 1) != 0 && v15 == 1017 || (a4 & 1) != 0 && v15 == 1020 || (a4 & 1) != 0 && v15 == 1021 || (a4 & 1) != 0 && v15 == 1027 || (a4 & 1) != 0 && v15 == 1028 || (a4 & 1) != 0 && v15 == 1029 || (a4 & 2) != 0 && v15 == 1025 || (a4 & 2) != 0 && v15 == 1026)
                                                                                                                    {
                                                                                                                      goto LABEL_80;
                                                                                                                    }

                                                                                                                    if ((a4 & 1) != 0 && v15 == 1040)
                                                                                                                    {
                                                                                                                      result = fprintf(v8, "%20s:\n", "bandsAgeBinsV2");
                                                                                                                      if (v19)
                                                                                                                      {
                                                                                                                        v356 = 0;
                                                                                                                        if (v19 >= 0x1F)
                                                                                                                        {
                                                                                                                          v357 = 31;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v357 = v19;
                                                                                                                        }

                                                                                                                        do
                                                                                                                        {
                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v356, v16[v356]);
                                                                                                                          ++v356;
                                                                                                                        }

                                                                                                                        while (v357 != v356);
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1041)
                                                                                                                    {
                                                                                                                      result = fprintf(v8, "%20s:\n", "bandsAgeBinsSnapshot");
                                                                                                                      if (v19)
                                                                                                                      {
                                                                                                                        v358 = 0;
                                                                                                                        if (v19 >= 0x1F)
                                                                                                                        {
                                                                                                                          v359 = 31;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v359 = v19;
                                                                                                                        }

                                                                                                                        do
                                                                                                                        {
                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v358, v16[v358]);
                                                                                                                          ++v358;
                                                                                                                        }

                                                                                                                        while (v359 != v358);
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1042)
                                                                                                                    {
                                                                                                                      result = fprintf(v8, "%20s:\n", "bandsAgeBinsReadSectors");
                                                                                                                      if (v19)
                                                                                                                      {
                                                                                                                        v360 = 0;
                                                                                                                        if (v19 >= 0xF)
                                                                                                                        {
                                                                                                                          v361 = 15;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v361 = v19;
                                                                                                                        }

                                                                                                                        do
                                                                                                                        {
                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v360, v16[v360]);
                                                                                                                          ++v360;
                                                                                                                        }

                                                                                                                        while (v361 != v360);
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      if ((a4 & 1) != 0 && v15 == 1022 || (a4 & 1) != 0 && v15 == 1023 || (a4 & 1) != 0 && v15 == 1030 || (a4 & 2) != 0 && v15 == 1050 || (a4 & 2) != 0 && v15 == 1051 || (a4 & 2) != 0 && v15 == 1052 || (a4 & 2) != 0 && v15 == 1053 || (a4 & 2) != 0 && v15 == 1061)
                                                                                                                      {
                                                                                                                        goto LABEL_80;
                                                                                                                      }

                                                                                                                      if ((a4 & 1) != 0 && v15 == 1057)
                                                                                                                      {
                                                                                                                        result = fprintf(v8, "%20s:\n", "hostReadsVerticalByFlow");
                                                                                                                        if (v19)
                                                                                                                        {
                                                                                                                          v362 = 0;
                                                                                                                          if (v19 >= 3)
                                                                                                                          {
                                                                                                                            v363 = 3;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v363 = v19;
                                                                                                                          }

                                                                                                                          do
                                                                                                                          {
                                                                                                                            result = fprintf(v8, "                      [%d] = %llu\n", v362, v16[v362]);
                                                                                                                            ++v362;
                                                                                                                          }

                                                                                                                          while (v363 != v362);
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else if ((a4 & 1) != 0 && v15 == 1058)
                                                                                                                      {
                                                                                                                        result = fprintf(v8, "%20s:\n", "hostReadsByFlow");
                                                                                                                        if (v19)
                                                                                                                        {
                                                                                                                          v364 = 0;
                                                                                                                          if (v19 >= 7)
                                                                                                                          {
                                                                                                                            v365 = 7;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v365 = v19;
                                                                                                                          }

                                                                                                                          do
                                                                                                                          {
                                                                                                                            result = fprintf(v8, "                      [%d] = %llu\n", v364, v16[v364]);
                                                                                                                            ++v364;
                                                                                                                          }

                                                                                                                          while (v365 != v364);
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        if ((a4 & 1) != 0 && v15 == 1036 || (a4 & 1) != 0 && v15 == 1037 || (a4 & 1) != 0 && v15 == 1076 || (a4 & 1) != 0 && v15 == 1098)
                                                                                                                        {
                                                                                                                          goto LABEL_80;
                                                                                                                        }

                                                                                                                        if ((a4 & 1) != 0 && v15 == 1099)
                                                                                                                        {
                                                                                                                          result = fprintf(v8, "%20s:\n", "pgCompressionBlocksInDip");
                                                                                                                          if (v19)
                                                                                                                          {
                                                                                                                            v366 = 0;
                                                                                                                            if (v19 >= 4)
                                                                                                                            {
                                                                                                                              v367 = 4;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v367 = v19;
                                                                                                                            }

                                                                                                                            do
                                                                                                                            {
                                                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v366, v16[v366]);
                                                                                                                              ++v366;
                                                                                                                            }

                                                                                                                            while (v367 != v366);
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else if ((a4 & 1) != 0 && v15 == 1139)
                                                                                                                        {
                                                                                                                          result = fprintf(v8, "%20s:\n", "pgCompressionBlocksInPG");
                                                                                                                          if (v19)
                                                                                                                          {
                                                                                                                            v368 = 0;
                                                                                                                            if (v19 >= 4)
                                                                                                                            {
                                                                                                                              v369 = 4;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v369 = v19;
                                                                                                                            }

                                                                                                                            do
                                                                                                                            {
                                                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v368, v16[v368]);
                                                                                                                              ++v368;
                                                                                                                            }

                                                                                                                            while (v369 != v368);
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          if ((a4 & 1) != 0 && v15 == 1140 || (a4 & 1) != 0 && v15 == 1141 || (a4 & 1) != 0 && v15 == 1200 || (a4 & 1) != 0 && v15 == 1080)
                                                                                                                          {
                                                                                                                            goto LABEL_80;
                                                                                                                          }

                                                                                                                          if ((a4 & 1) != 0 && v15 == 1105)
                                                                                                                          {
                                                                                                                            result = fprintf(v8, "%20s:\n", "hostReadSequential");
                                                                                                                            if (v19)
                                                                                                                            {
                                                                                                                              v370 = 0;
                                                                                                                              if (v19 >= 0xE)
                                                                                                                              {
                                                                                                                                v371 = 14;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v371 = v19;
                                                                                                                              }

                                                                                                                              do
                                                                                                                              {
                                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v370, v16[v370]);
                                                                                                                                ++v370;
                                                                                                                              }

                                                                                                                              while (v371 != v370);
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else if ((a4 & 1) != 0 && v15 == 1106)
                                                                                                                          {
                                                                                                                            result = fprintf(v8, "%20s:\n", "GCReadSequential");
                                                                                                                            if (v19)
                                                                                                                            {
                                                                                                                              v372 = 0;
                                                                                                                              if (v19 >= 0xE)
                                                                                                                              {
                                                                                                                                v373 = 14;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v373 = v19;
                                                                                                                              }

                                                                                                                              do
                                                                                                                              {
                                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v372, v16[v372]);
                                                                                                                                ++v372;
                                                                                                                              }

                                                                                                                              while (v373 != v372);
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            if ((a4 & 2) != 0 && v15 == 1118 || (a4 & 2) != 0 && v15 == 1121 || (a4 & 1) != 0 && v15 == 1123 || (a4 & 1) != 0 && v15 == 1124 || (a4 & 1) != 0 && v15 == 1125 || (a4 & 1) != 0 && v15 == 1126 || (a4 & 1) != 0 && v15 == 1137 || (a4 & 1) != 0 && v15 == 1138)
                                                                                                                            {
                                                                                                                              goto LABEL_80;
                                                                                                                            }

                                                                                                                            if ((a4 & 1) != 0 && v15 == 1116)
                                                                                                                            {
                                                                                                                              result = fprintf(v8, "%20s:\n", "gcwamp");
                                                                                                                              if (v19)
                                                                                                                              {
                                                                                                                                v374 = 0;
                                                                                                                                if (v19 >= 0x20)
                                                                                                                                {
                                                                                                                                  v375 = 32;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v375 = v19;
                                                                                                                                }

                                                                                                                                do
                                                                                                                                {
                                                                                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v374, v16[v374]);
                                                                                                                                  ++v374;
                                                                                                                                }

                                                                                                                                while (v375 != v374);
                                                                                                                              }
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              if ((a4 & 1) != 0 && v15 == 1157 || (a4 & 1) != 0 && v15 == 1158 || (a4 & 1) != 0 && v15 == 1164)
                                                                                                                              {
                                                                                                                                goto LABEL_80;
                                                                                                                              }

                                                                                                                              if ((a4 & 2) != 0 && v15 == 1159)
                                                                                                                              {
                                                                                                                                result = fprintf(v8, "%20s:\n", "slcWLPerDipDelta");
                                                                                                                                if (v19)
                                                                                                                                {
                                                                                                                                  v376 = 0;
                                                                                                                                  if (v19 >= 0x18)
                                                                                                                                  {
                                                                                                                                    v377 = 24;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v377 = v19;
                                                                                                                                  }

                                                                                                                                  do
                                                                                                                                  {
                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v376, v16[v376]);
                                                                                                                                    ++v376;
                                                                                                                                  }

                                                                                                                                  while (v377 != v376);
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else if ((a4 & 2) != 0 && v15 == 1160)
                                                                                                                              {
                                                                                                                                result = fprintf(v8, "%20s:\n", "slcWLPerDipAvgPEC");
                                                                                                                                if (v19)
                                                                                                                                {
                                                                                                                                  v378 = 0;
                                                                                                                                  if (v19 >= 0x18)
                                                                                                                                  {
                                                                                                                                    v379 = 24;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v379 = v19;
                                                                                                                                  }

                                                                                                                                  do
                                                                                                                                  {
                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v378, v16[v378]);
                                                                                                                                    ++v378;
                                                                                                                                  }

                                                                                                                                  while (v379 != v378);
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else if ((a4 & 2) != 0 && v15 == 1161)
                                                                                                                              {
                                                                                                                                result = fprintf(v8, "%20s:\n", "slcWLPerDipSlack");
                                                                                                                                if (v19)
                                                                                                                                {
                                                                                                                                  v380 = 0;
                                                                                                                                  if (v19 >= 0x18)
                                                                                                                                  {
                                                                                                                                    v381 = 24;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v381 = v19;
                                                                                                                                  }

                                                                                                                                  do
                                                                                                                                  {
                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v380, v16[v380]);
                                                                                                                                    ++v380;
                                                                                                                                  }

                                                                                                                                  while (v381 != v380);
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                if ((a4 & 2) != 0 && v15 == 1162 || (a4 & 2) != 0 && v15 == 1163)
                                                                                                                                {
                                                                                                                                  goto LABEL_80;
                                                                                                                                }

                                                                                                                                if ((a4 & 2) != 0 && v15 == 1216)
                                                                                                                                {
                                                                                                                                  result = fprintf(v8, "%20s:\n", "tlcWLPerDipAvgPEC");
                                                                                                                                  if (v19)
                                                                                                                                  {
                                                                                                                                    v382 = 0;
                                                                                                                                    if (v19 >= 0x18)
                                                                                                                                    {
                                                                                                                                      v383 = 24;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v383 = v19;
                                                                                                                                    }

                                                                                                                                    do
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v382, v16[v382]);
                                                                                                                                      ++v382;
                                                                                                                                    }

                                                                                                                                    while (v383 != v382);
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else if ((a4 & 2) != 0 && v15 == 1217)
                                                                                                                                {
                                                                                                                                  result = fprintf(v8, "%20s:\n", "tlcWLPerDipMaxPEC");
                                                                                                                                  if (v19)
                                                                                                                                  {
                                                                                                                                    v384 = 0;
                                                                                                                                    if (v19 >= 0x18)
                                                                                                                                    {
                                                                                                                                      v385 = 24;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v385 = v19;
                                                                                                                                    }

                                                                                                                                    do
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v384, v16[v384]);
                                                                                                                                      ++v384;
                                                                                                                                    }

                                                                                                                                    while (v385 != v384);
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else if ((a4 & 2) != 0 && v15 == 1218)
                                                                                                                                {
                                                                                                                                  result = fprintf(v8, "%20s:\n", "tlcWLPerDipMinPEC");
                                                                                                                                  if (v19)
                                                                                                                                  {
                                                                                                                                    v386 = 0;
                                                                                                                                    if (v19 >= 0x18)
                                                                                                                                    {
                                                                                                                                      v387 = 24;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v387 = v19;
                                                                                                                                    }

                                                                                                                                    do
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v386, v16[v386]);
                                                                                                                                      ++v386;
                                                                                                                                    }

                                                                                                                                    while (v387 != v386);
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else if ((a4 & 1) != 0 && v15 == 1147)
                                                                                                                                {
                                                                                                                                  result = fprintf(v8, "%20s:\n", "gc_concurrent_dw_gc12");
                                                                                                                                  if (v19)
                                                                                                                                  {
                                                                                                                                    v388 = 0;
                                                                                                                                    if (v19 >= 0x18)
                                                                                                                                    {
                                                                                                                                      v389 = 24;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v389 = v19;
                                                                                                                                    }

                                                                                                                                    do
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v388, v16[v388]);
                                                                                                                                      ++v388;
                                                                                                                                    }

                                                                                                                                    while (v389 != v388);
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else if ((a4 & 1) != 0 && v15 == 1148)
                                                                                                                                {
                                                                                                                                  result = fprintf(v8, "%20s:\n", "gc_concurrent_dw_gc1");
                                                                                                                                  if (v19)
                                                                                                                                  {
                                                                                                                                    v390 = 0;
                                                                                                                                    if (v19 >= 0x18)
                                                                                                                                    {
                                                                                                                                      v391 = 24;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v391 = v19;
                                                                                                                                    }

                                                                                                                                    do
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v390, v16[v390]);
                                                                                                                                      ++v390;
                                                                                                                                    }

                                                                                                                                    while (v391 != v390);
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else if ((a4 & 1) != 0 && v15 == 1149)
                                                                                                                                {
                                                                                                                                  result = fprintf(v8, "%20s:\n", "gc_concurrent_dw_gc2");
                                                                                                                                  if (v19)
                                                                                                                                  {
                                                                                                                                    v392 = 0;
                                                                                                                                    if (v19 >= 0x18)
                                                                                                                                    {
                                                                                                                                      v393 = 24;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v393 = v19;
                                                                                                                                    }

                                                                                                                                    do
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v392, v16[v392]);
                                                                                                                                      ++v392;
                                                                                                                                    }

                                                                                                                                    while (v393 != v392);
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  if ((a4 & 1) != 0 && v15 == 1178)
                                                                                                                                  {
                                                                                                                                    goto LABEL_80;
                                                                                                                                  }

                                                                                                                                  if ((a4 & 2) != 0 && v15 == 1179)
                                                                                                                                  {
                                                                                                                                    result = fprintf(v8, "%20s:\n", "gc_cur_dw_gc1");
                                                                                                                                    if (v19)
                                                                                                                                    {
                                                                                                                                      v394 = 0;
                                                                                                                                      if (v19 >= 4)
                                                                                                                                      {
                                                                                                                                        v395 = 4;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v395 = v19;
                                                                                                                                      }

                                                                                                                                      do
                                                                                                                                      {
                                                                                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v394, v16[v394]);
                                                                                                                                        ++v394;
                                                                                                                                      }

                                                                                                                                      while (v395 != v394);
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else if ((a4 & 2) != 0 && v15 == 1180)
                                                                                                                                  {
                                                                                                                                    result = fprintf(v8, "%20s:\n", "gc_cur_dw_gc2");
                                                                                                                                    if (v19)
                                                                                                                                    {
                                                                                                                                      v396 = 0;
                                                                                                                                      if (v19 >= 4)
                                                                                                                                      {
                                                                                                                                        v397 = 4;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v397 = v19;
                                                                                                                                      }

                                                                                                                                      do
                                                                                                                                      {
                                                                                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v396, v16[v396]);
                                                                                                                                        ++v396;
                                                                                                                                      }

                                                                                                                                      while (v397 != v396);
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else if ((a4 & 2) != 0 && v15 == 1181)
                                                                                                                                  {
                                                                                                                                    result = fprintf(v8, "%20s:\n", "gc_cur_dw_gc3");
                                                                                                                                    if (v19)
                                                                                                                                    {
                                                                                                                                      v398 = 0;
                                                                                                                                      if (v19 >= 4)
                                                                                                                                      {
                                                                                                                                        v399 = 4;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v399 = v19;
                                                                                                                                      }

                                                                                                                                      do
                                                                                                                                      {
                                                                                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v398, v16[v398]);
                                                                                                                                        ++v398;
                                                                                                                                      }

                                                                                                                                      while (v399 != v398);
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else if ((a4 & 1) != 0 && v15 == 1182)
                                                                                                                                  {
                                                                                                                                    result = fprintf(v8, "%20s:\n", "gc_tot_dw_gc1");
                                                                                                                                    if (v19)
                                                                                                                                    {
                                                                                                                                      v400 = 0;
                                                                                                                                      if (v19 >= 4)
                                                                                                                                      {
                                                                                                                                        v401 = 4;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v401 = v19;
                                                                                                                                      }

                                                                                                                                      do
                                                                                                                                      {
                                                                                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v400, v16[v400]);
                                                                                                                                        ++v400;
                                                                                                                                      }

                                                                                                                                      while (v401 != v400);
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else if ((a4 & 1) != 0 && v15 == 1183)
                                                                                                                                  {
                                                                                                                                    result = fprintf(v8, "%20s:\n", "gc_tot_dw_gc2");
                                                                                                                                    if (v19)
                                                                                                                                    {
                                                                                                                                      v402 = 0;
                                                                                                                                      if (v19 >= 4)
                                                                                                                                      {
                                                                                                                                        v403 = 4;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v403 = v19;
                                                                                                                                      }

                                                                                                                                      do
                                                                                                                                      {
                                                                                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v402, v16[v402]);
                                                                                                                                        ++v402;
                                                                                                                                      }

                                                                                                                                      while (v403 != v402);
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    if ((a4 & 2) != 0 && v15 == 1184 || (a4 & 2) != 0 && v15 == 1185 || (a4 & 2) != 0 && v15 == 1186 || (a4 & 1) != 0 && v15 == 1187)
                                                                                                                                    {
                                                                                                                                      goto LABEL_80;
                                                                                                                                    }

                                                                                                                                    if ((a4 & 1) != 0 && v15 == 1168)
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "%20s:\n", "poDetectPERemovalTotalCost");
                                                                                                                                      if (v19)
                                                                                                                                      {
                                                                                                                                        v404 = 0;
                                                                                                                                        if (v19 >= 2)
                                                                                                                                        {
                                                                                                                                          v405 = 2;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v405 = v19;
                                                                                                                                        }

                                                                                                                                        do
                                                                                                                                        {
                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v404, v16[v404]);
                                                                                                                                          ++v404;
                                                                                                                                        }

                                                                                                                                        while (v405 != v404);
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1198)
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "%20s:\n", "poDetectPERemovalMostSevereCost");
                                                                                                                                      if (v19)
                                                                                                                                      {
                                                                                                                                        v406 = 0;
                                                                                                                                        if (v19 >= 3)
                                                                                                                                        {
                                                                                                                                          v407 = 3;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v407 = v19;
                                                                                                                                        }

                                                                                                                                        do
                                                                                                                                        {
                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v406, v16[v406]);
                                                                                                                                          ++v406;
                                                                                                                                        }

                                                                                                                                        while (v407 != v406);
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1169)
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "%20s:\n", "poDetectEmptySpotRemovalTotalCost");
                                                                                                                                      if (v19)
                                                                                                                                      {
                                                                                                                                        v408 = 0;
                                                                                                                                        if (v19 >= 2)
                                                                                                                                        {
                                                                                                                                          v409 = 2;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v409 = v19;
                                                                                                                                        }

                                                                                                                                        do
                                                                                                                                        {
                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v408, v16[v408]);
                                                                                                                                          ++v408;
                                                                                                                                        }

                                                                                                                                        while (v409 != v408);
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1171)
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "%20s:\n", "poDetectEmptySpotRemovalAge");
                                                                                                                                      if (v19)
                                                                                                                                      {
                                                                                                                                        v410 = 0;
                                                                                                                                        if (v19 >= 0xA)
                                                                                                                                        {
                                                                                                                                          v411 = 10;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v411 = v19;
                                                                                                                                        }

                                                                                                                                        do
                                                                                                                                        {
                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v410, v16[v410]);
                                                                                                                                          ++v410;
                                                                                                                                        }

                                                                                                                                        while (v411 != v410);
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1172)
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "%20s:\n", "poDetectGBBedMostSevereCost");
                                                                                                                                      if (v19)
                                                                                                                                      {
                                                                                                                                        v412 = 0;
                                                                                                                                        if (v19 >= 3)
                                                                                                                                        {
                                                                                                                                          v413 = 3;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v413 = v19;
                                                                                                                                        }

                                                                                                                                        do
                                                                                                                                        {
                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v412, v16[v412]);
                                                                                                                                          ++v412;
                                                                                                                                        }

                                                                                                                                        while (v413 != v412);
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1196)
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "%20s:\n", "poDetectGBBedTotalCost");
                                                                                                                                      if (v19)
                                                                                                                                      {
                                                                                                                                        v414 = 0;
                                                                                                                                        if (v19 >= 5)
                                                                                                                                        {
                                                                                                                                          v415 = 5;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v415 = v19;
                                                                                                                                        }

                                                                                                                                        do
                                                                                                                                        {
                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v414, v16[v414]);
                                                                                                                                          ++v414;
                                                                                                                                        }

                                                                                                                                        while (v415 != v414);
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1197)
                                                                                                                                    {
                                                                                                                                      result = fprintf(v8, "%20s:\n", "poDetectGBBedAge");
                                                                                                                                      if (v19)
                                                                                                                                      {
                                                                                                                                        v416 = 0;
                                                                                                                                        if (v19 >= 0xA)
                                                                                                                                        {
                                                                                                                                          v417 = 10;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v417 = v19;
                                                                                                                                        }

                                                                                                                                        do
                                                                                                                                        {
                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v416, v16[v416]);
                                                                                                                                          ++v416;
                                                                                                                                        }

                                                                                                                                        while (v417 != v416);
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      if ((a4 & 1) != 0 && v15 == 1199 || (a4 & 1) != 0 && v15 == 1191 || (a4 & 1) != 0 && v15 == 1192 || (a4 & 1) != 0 && v15 == 1205)
                                                                                                                                      {
                                                                                                                                        goto LABEL_80;
                                                                                                                                      }

                                                                                                                                      if ((a4 & 1) != 0 && v15 == 1211)
                                                                                                                                      {
                                                                                                                                        result = fprintf(v8, "%20s:\n", "forcedAllocationSmallEraseQ");
                                                                                                                                        if (v19)
                                                                                                                                        {
                                                                                                                                          v418 = 0;
                                                                                                                                          if (v19 >= 0x18)
                                                                                                                                          {
                                                                                                                                            v419 = 24;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v419 = v19;
                                                                                                                                          }

                                                                                                                                          do
                                                                                                                                          {
                                                                                                                                            result = fprintf(v8, "                      [%d] = %llu\n", v418, v16[v418]);
                                                                                                                                            ++v418;
                                                                                                                                          }

                                                                                                                                          while (v419 != v418);
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else if ((a4 & 1) != 0 && v15 == 1201)
                                                                                                                                      {
                                                                                                                                        result = fprintf(v8, "%20s:\n", "gcVerticalSuccssfulAlignments");
                                                                                                                                        if (v19)
                                                                                                                                        {
                                                                                                                                          v420 = 0;
                                                                                                                                          if (v19 >= 4)
                                                                                                                                          {
                                                                                                                                            v421 = 4;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v421 = v19;
                                                                                                                                          }

                                                                                                                                          do
                                                                                                                                          {
                                                                                                                                            result = fprintf(v8, "                      [%d] = %llu\n", v420, v16[v420]);
                                                                                                                                            ++v420;
                                                                                                                                          }

                                                                                                                                          while (v421 != v420);
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else if ((a4 & 1) != 0 && v15 == 1202)
                                                                                                                                      {
                                                                                                                                        result = fprintf(v8, "%20s:\n", "gcVerticalNoAlignmentDueToMissingSegs");
                                                                                                                                        if (v19)
                                                                                                                                        {
                                                                                                                                          v422 = 0;
                                                                                                                                          if (v19 >= 4)
                                                                                                                                          {
                                                                                                                                            v423 = 4;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v423 = v19;
                                                                                                                                          }

                                                                                                                                          do
                                                                                                                                          {
                                                                                                                                            result = fprintf(v8, "                      [%d] = %llu\n", v422, v16[v422]);
                                                                                                                                            ++v422;
                                                                                                                                          }

                                                                                                                                          while (v423 != v422);
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        if ((a4 & 2) != 0 && v15 == 1225 || (a4 & 2) != 0 && v15 == 1226 || (a4 & 2) != 0 && v15 == 1227)
                                                                                                                                        {
                                                                                                                                          goto LABEL_80;
                                                                                                                                        }

                                                                                                                                        if ((a4 & 1) != 0 && v15 == 1228)
                                                                                                                                        {
                                                                                                                                          result = fprintf(v8, "%20s:\n", "HUPolicyWidthDown");
                                                                                                                                          if (v19)
                                                                                                                                          {
                                                                                                                                            v424 = 0;
                                                                                                                                            if (v19 >= 6)
                                                                                                                                            {
                                                                                                                                              v425 = 6;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v425 = v19;
                                                                                                                                            }

                                                                                                                                            do
                                                                                                                                            {
                                                                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v424, v16[v424]);
                                                                                                                                              ++v424;
                                                                                                                                            }

                                                                                                                                            while (v425 != v424);
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        else if ((a4 & 1) != 0 && v15 == 1229)
                                                                                                                                        {
                                                                                                                                          result = fprintf(v8, "%20s:\n", "HUPolicyWidthUp");
                                                                                                                                          if (v19)
                                                                                                                                          {
                                                                                                                                            v426 = 0;
                                                                                                                                            if (v19 >= 6)
                                                                                                                                            {
                                                                                                                                              v427 = 6;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v427 = v19;
                                                                                                                                            }

                                                                                                                                            do
                                                                                                                                            {
                                                                                                                                              result = fprintf(v8, "                      [%d] = %llu\n", v426, v16[v426]);
                                                                                                                                              ++v426;
                                                                                                                                            }

                                                                                                                                            while (v427 != v426);
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          if ((a4 & 2) != 0 && v15 == 1230 || (a4 & 2) != 0 && v15 == 1231 || (a4 & 1) != 0 && v15 == 1235 || (a4 & 1) != 0 && v15 == 1236 || (a4 & 1) != 0 && v15 == 1232 || (a4 & 1) != 0 && v15 == 1233 || (a4 & 1) != 0 && v15 == 1234)
                                                                                                                                          {
                                                                                                                                            goto LABEL_80;
                                                                                                                                          }

                                                                                                                                          if ((a4 & 1) != 0 && v15 == 1224)
                                                                                                                                          {
                                                                                                                                            result = fprintf(v8, "%20s:\n", "apfsValidLbaOvershoot");
                                                                                                                                            if (v19)
                                                                                                                                            {
                                                                                                                                              v428 = 0;
                                                                                                                                              if (v19 >= 0x14)
                                                                                                                                              {
                                                                                                                                                v429 = 20;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v429 = v19;
                                                                                                                                              }

                                                                                                                                              do
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v428, v16[v428]);
                                                                                                                                                ++v428;
                                                                                                                                              }

                                                                                                                                              while (v429 != v428);
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          else if ((a4 & 1) != 0 && v15 == 1241)
                                                                                                                                          {
                                                                                                                                            result = fprintf(v8, "%20s:\n", "s2rTimeHisto");
                                                                                                                                            if (v19)
                                                                                                                                            {
                                                                                                                                              v430 = 0;
                                                                                                                                              if (v19 >= 0xA)
                                                                                                                                              {
                                                                                                                                                v431 = 10;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v431 = v19;
                                                                                                                                              }

                                                                                                                                              do
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "                      [%d] = %llu\n", v430, v16[v430]);
                                                                                                                                                ++v430;
                                                                                                                                              }

                                                                                                                                              while (v431 != v430);
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            if ((a4 & 1) != 0 && v15 == 1396 || (a4 & 1) != 0 && v15 == 1397 || (a4 & 1) != 0 && v15 == 1400 || (a4 & 1) != 0 && v15 == 1403 || (a4 & 1) != 0 && v15 == 1411 || (a4 & 1) != 0 && v15 == 1404)
                                                                                                                                            {
                                                                                                                                              goto LABEL_80;
                                                                                                                                            }

                                                                                                                                            if ((a4 & 1) != 0 && v15 == 1395)
                                                                                                                                            {
                                                                                                                                              result = fprintf(v8, "%20s:\n", "SleepNoHisto");
                                                                                                                                              if (v19)
                                                                                                                                              {
                                                                                                                                                v432 = 0;
                                                                                                                                                if (v19 >= 6)
                                                                                                                                                {
                                                                                                                                                  v433 = 6;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v433 = v19;
                                                                                                                                                }

                                                                                                                                                do
                                                                                                                                                {
                                                                                                                                                  result = fprintf(v8, "                      [%d] = %llu\n", v432, v16[v432]);
                                                                                                                                                  ++v432;
                                                                                                                                                }

                                                                                                                                                while (v433 != v432);
                                                                                                                                              }
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              if ((a4 & 2) != 0 && v15 == 1247 || (a4 & 2) != 0 && v15 == 1248 || (a4 & 1) != 0 && v15 == 1251 || (a4 & 1) != 0 && v15 == 1252 || (a4 & 1) != 0 && v15 == 1268 || (a4 & 1) != 0 && v15 == 1254 || (a4 & 1) != 0 && v15 == 1255 || (a4 & 1) != 0 && v15 == 1256 || (a4 & 2) != 0 && v15 == 1270 || (a4 & 1) != 0 && v15 == 1282 || (a4 & 1) != 0 && v15 == 1283 || (a4 & 1) != 0 && v15 == 1392 || (a4 & 1) != 0 && v15 == 1393 || (a4 & 1) != 0 && v15 == 1394 || (a4 & 1) != 0 && v15 == 1414 || (a4 & 2) != 0 && v15 == 1285 || (a4 & 2) != 0 && v15 == 1203)
                                                                                                                                              {
                                                                                                                                                goto LABEL_80;
                                                                                                                                              }

                                                                                                                                              if ((a4 & 1) != 0 && v15 == 1215)
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "%20s:\n", "hostWritesPerThrottleZone");
                                                                                                                                                if (v19)
                                                                                                                                                {
                                                                                                                                                  v434 = 0;
                                                                                                                                                  if (v19 >= 7)
                                                                                                                                                  {
                                                                                                                                                    v435 = 7;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v435 = v19;
                                                                                                                                                  }

                                                                                                                                                  do
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v434, v16[v434]);
                                                                                                                                                    ++v434;
                                                                                                                                                  }

                                                                                                                                                  while (v435 != v434);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else if ((a4 & 2) != 0 && v15 == 1320)
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "%20s:\n", "msPerThrottleZone");
                                                                                                                                                if (v19)
                                                                                                                                                {
                                                                                                                                                  v436 = 0;
                                                                                                                                                  if (v19 >= 7)
                                                                                                                                                  {
                                                                                                                                                    v437 = 7;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v437 = v19;
                                                                                                                                                  }

                                                                                                                                                  do
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v436, v16[v436]);
                                                                                                                                                    ++v436;
                                                                                                                                                  }

                                                                                                                                                  while (v437 != v436);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else if ((a4 & 1) != 0 && v15 == 1295)
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "%20s:\n", "bpHostChokeTime");
                                                                                                                                                if (v19)
                                                                                                                                                {
                                                                                                                                                  v438 = 0;
                                                                                                                                                  if (v19 >= 8)
                                                                                                                                                  {
                                                                                                                                                    v439 = 8;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v439 = v19;
                                                                                                                                                  }

                                                                                                                                                  do
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v438, v16[v438]);
                                                                                                                                                    ++v438;
                                                                                                                                                  }

                                                                                                                                                  while (v439 != v438);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else if ((a4 & 1) != 0 && v15 == 1293)
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "%20s:\n", "bpZone2EntryTime");
                                                                                                                                                if (v19)
                                                                                                                                                {
                                                                                                                                                  v440 = 0;
                                                                                                                                                  if (v19 >= 0x10)
                                                                                                                                                  {
                                                                                                                                                    v441 = 16;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v441 = v19;
                                                                                                                                                  }

                                                                                                                                                  do
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v440, v16[v440]);
                                                                                                                                                    ++v440;
                                                                                                                                                  }

                                                                                                                                                  while (v441 != v440);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else if ((a4 & 1) != 0 && v15 == 1294)
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "%20s:\n", "bpZone2ExitTime");
                                                                                                                                                if (v19)
                                                                                                                                                {
                                                                                                                                                  v442 = 0;
                                                                                                                                                  if (v19 >= 0x10)
                                                                                                                                                  {
                                                                                                                                                    v443 = 16;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v443 = v19;
                                                                                                                                                  }

                                                                                                                                                  do
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v442, v16[v442]);
                                                                                                                                                    ++v442;
                                                                                                                                                  }

                                                                                                                                                  while (v443 != v442);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else if ((a4 & 1) != 0 && v15 == 1296)
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "%20s:\n", "bpZone2EntryHW");
                                                                                                                                                if (v19)
                                                                                                                                                {
                                                                                                                                                  v444 = 0;
                                                                                                                                                  if (v19 >= 0x10)
                                                                                                                                                  {
                                                                                                                                                    v445 = 16;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v445 = v19;
                                                                                                                                                  }

                                                                                                                                                  do
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v444, v16[v444]);
                                                                                                                                                    ++v444;
                                                                                                                                                  }

                                                                                                                                                  while (v445 != v444);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else if ((a4 & 1) != 0 && v15 == 1298)
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "%20s:\n", "bpZone2ExitHW");
                                                                                                                                                if (v19)
                                                                                                                                                {
                                                                                                                                                  v446 = 0;
                                                                                                                                                  if (v19 >= 0x10)
                                                                                                                                                  {
                                                                                                                                                    v447 = 16;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v447 = v19;
                                                                                                                                                  }

                                                                                                                                                  do
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v446, v16[v446]);
                                                                                                                                                    ++v446;
                                                                                                                                                  }

                                                                                                                                                  while (v447 != v446);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else if ((a4 & 1) != 0 && v15 == 1302)
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "%20s:\n", "bpZone2EntryHostTP");
                                                                                                                                                if (v19)
                                                                                                                                                {
                                                                                                                                                  v448 = 0;
                                                                                                                                                  if (v19 >= 0x10)
                                                                                                                                                  {
                                                                                                                                                    v449 = 16;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v449 = v19;
                                                                                                                                                  }

                                                                                                                                                  do
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v448, v16[v448]);
                                                                                                                                                    ++v448;
                                                                                                                                                  }

                                                                                                                                                  while (v449 != v448);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else if ((a4 & 1) != 0 && v15 == 1303)
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "%20s:\n", "bpZone2EntryGCTP");
                                                                                                                                                if (v19)
                                                                                                                                                {
                                                                                                                                                  v450 = 0;
                                                                                                                                                  if (v19 >= 0x10)
                                                                                                                                                  {
                                                                                                                                                    v451 = 16;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v451 = v19;
                                                                                                                                                  }

                                                                                                                                                  do
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v450, v16[v450]);
                                                                                                                                                    ++v450;
                                                                                                                                                  }

                                                                                                                                                  while (v451 != v450);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else if ((a4 & 1) != 0 && v15 == 1304)
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "%20s:\n", "bpZone2ExitHostTP");
                                                                                                                                                if (v19)
                                                                                                                                                {
                                                                                                                                                  v452 = 0;
                                                                                                                                                  if (v19 >= 0x10)
                                                                                                                                                  {
                                                                                                                                                    v453 = 16;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v453 = v19;
                                                                                                                                                  }

                                                                                                                                                  do
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v452, v16[v452]);
                                                                                                                                                    ++v452;
                                                                                                                                                  }

                                                                                                                                                  while (v453 != v452);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else if ((a4 & 1) != 0 && v15 == 1305)
                                                                                                                                              {
                                                                                                                                                result = fprintf(v8, "%20s:\n", "bpZone2ExitGCTP");
                                                                                                                                                if (v19)
                                                                                                                                                {
                                                                                                                                                  v454 = 0;
                                                                                                                                                  if (v19 >= 0x10)
                                                                                                                                                  {
                                                                                                                                                    v455 = 16;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v455 = v19;
                                                                                                                                                  }

                                                                                                                                                  do
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "                      [%d] = %llu\n", v454, v16[v454]);
                                                                                                                                                    ++v454;
                                                                                                                                                  }

                                                                                                                                                  while (v455 != v454);
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                if ((a4 & 1) != 0 && v15 == 1333 || (a4 & 1) != 0 && v15 == 1334 || (a4 & 1) != 0 && v15 == 1335 || (a4 & 1) != 0 && v15 == 1336 || (a4 & 1) != 0 && v15 == 1337 || (a4 & 1) != 0 && v15 == 1338 || (a4 & 1) != 0 && v15 == 1339)
                                                                                                                                                {
                                                                                                                                                  goto LABEL_80;
                                                                                                                                                }

                                                                                                                                                if ((a4 & 2) != 0 && v15 == 1286)
                                                                                                                                                {
                                                                                                                                                  result = fprintf(v8, "%20s:\n", "regularReadBlockAge");
                                                                                                                                                  if (v19)
                                                                                                                                                  {
                                                                                                                                                    v456 = 0;
                                                                                                                                                    if (v19 >= 0x1A)
                                                                                                                                                    {
                                                                                                                                                      v457 = 26;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v457 = v19;
                                                                                                                                                    }

                                                                                                                                                    do
                                                                                                                                                    {
                                                                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v456, v16[v456]);
                                                                                                                                                      ++v456;
                                                                                                                                                    }

                                                                                                                                                    while (v457 != v456);
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                else if ((a4 & 2) != 0 && v15 == 1287)
                                                                                                                                                {
                                                                                                                                                  result = fprintf(v8, "%20s:\n", "blockScanReadBlockAge");
                                                                                                                                                  if (v19)
                                                                                                                                                  {
                                                                                                                                                    v458 = 0;
                                                                                                                                                    if (v19 >= 0x1A)
                                                                                                                                                    {
                                                                                                                                                      v459 = 26;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v459 = v19;
                                                                                                                                                    }

                                                                                                                                                    do
                                                                                                                                                    {
                                                                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v458, v16[v458]);
                                                                                                                                                      ++v458;
                                                                                                                                                    }

                                                                                                                                                    while (v459 != v458);
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                else if ((a4 & 2) != 0 && v15 == 1288)
                                                                                                                                                {
                                                                                                                                                  result = fprintf(v8, "%20s:\n", "enhancedReadBlockAge");
                                                                                                                                                  if (v19)
                                                                                                                                                  {
                                                                                                                                                    v460 = 0;
                                                                                                                                                    if (v19 >= 0x1A)
                                                                                                                                                    {
                                                                                                                                                      v461 = 26;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v461 = v19;
                                                                                                                                                    }

                                                                                                                                                    do
                                                                                                                                                    {
                                                                                                                                                      result = fprintf(v8, "                      [%d] = %llu\n", v460, v16[v460]);
                                                                                                                                                      ++v460;
                                                                                                                                                    }

                                                                                                                                                    while (v461 != v460);
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  if ((a4 & 1) != 0 && v15 == 1399 || (a4 & 1) != 0 && v15 == 1321 || (a4 & 1) != 0 && v15 == 1322 || (a4 & 1) != 0 && v15 == 1326 || (a4 & 1) != 0 && v15 == 1327 || (a4 & 1) != 0 && v15 == 1328 || (a4 & 1) != 0 && v15 == 1329 || (a4 & 1) != 0 && v15 == 1347 || (a4 & 1) != 0 && v15 == 1368 || (a4 & 1) != 0 && v15 == 1424 || (a4 & 1) != 0 && v15 == 1425 || (a4 & 1) != 0 && v15 == 1474 || (a4 & 1) != 0 && v15 == 1475 || (a4 & 1) != 0 && v15 == 1476 || (a4 & 1) != 0 && v15 == 1477 || (a4 & 1) != 0 && v15 == 1331 || (a4 & 1) != 0 && v15 == 1332)
                                                                                                                                                  {
                                                                                                                                                    goto LABEL_80;
                                                                                                                                                  }

                                                                                                                                                  if ((a4 & 1) != 0 && v15 == 1344)
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "%20s:\n", "unhappyWideGC1");
                                                                                                                                                    if (v19)
                                                                                                                                                    {
                                                                                                                                                      v462 = 0;
                                                                                                                                                      if (v19 >= 4)
                                                                                                                                                      {
                                                                                                                                                        v463 = 4;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v463 = v19;
                                                                                                                                                      }

                                                                                                                                                      do
                                                                                                                                                      {
                                                                                                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v462, v16[v462]);
                                                                                                                                                        ++v462;
                                                                                                                                                      }

                                                                                                                                                      while (v463 != v462);
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else if ((a4 & 1) != 0 && v15 == 1345)
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "%20s:\n", "unhappyVertGC");
                                                                                                                                                    if (v19)
                                                                                                                                                    {
                                                                                                                                                      v464 = 0;
                                                                                                                                                      if (v19 >= 4)
                                                                                                                                                      {
                                                                                                                                                        v465 = 4;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v465 = v19;
                                                                                                                                                      }

                                                                                                                                                      do
                                                                                                                                                      {
                                                                                                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v464, v16[v464]);
                                                                                                                                                        ++v464;
                                                                                                                                                      }

                                                                                                                                                      while (v465 != v464);
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else if ((a4 & 1) != 0 && v15 == 1367)
                                                                                                                                                  {
                                                                                                                                                    result = fprintf(v8, "%20s:\n", "asyncMessageHisto");
                                                                                                                                                    if (v19)
                                                                                                                                                    {
                                                                                                                                                      v466 = 0;
                                                                                                                                                      if (v19 >= 0x20)
                                                                                                                                                      {
                                                                                                                                                        v467 = 32;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v467 = v19;
                                                                                                                                                      }

                                                                                                                                                      do
                                                                                                                                                      {
                                                                                                                                                        result = fprintf(v8, "                      [%d] = %llu\n", v466, v16[v466]);
                                                                                                                                                        ++v466;
                                                                                                                                                      }

                                                                                                                                                      while (v467 != v466);
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    if ((a4 & 2) != 0 && v15 == 1361 || (a4 & 2) != 0 && v15 == 1363 || (a4 & 1) != 0 && v15 == 1379 || (a4 & 1) != 0 && v15 == 1380 || (a4 & 1) != 0 && v15 == 1382 || (a4 & 2) != 0 && v15 == 1381 || (a4 & 1) != 0 && v15 == 1372 || (a4 & 1) != 0 && v15 == 1409 || (a4 & 1) != 0 && v15 == 1410 || (a4 & 1) != 0 && v15 == 1412 || (a4 & 1) != 0 && v15 == 1413 || (a4 & 1) != 0 && v15 == 1439 || (a4 & 1) != 0 && v15 == 1387 || (a4 & 1) != 0 && v15 == 1530 || (a4 & 1) != 0 && v15 == 1541 || (a4 & 1) != 0 && v15 == 1542 || (a4 & 1) != 0 && v15 == 1531 || (a4 & 1) != 0 && v15 == 1532 || (a4 & 1) != 0 && v15 == 1536 || (a4 & 1) != 0 && v15 == 1537 || (a4 & 1) != 0 && v15 == 1538 || (a4 & 1) != 0 && v15 == 1539 || (a4 & 1) != 0 && v15 == 1540)
                                                                                                                                                    {
                                                                                                                                                      goto LABEL_80;
                                                                                                                                                    }

                                                                                                                                                    if ((a4 & 1) != 0 && v15 == 1533)
                                                                                                                                                    {
                                                                                                                                                      result = fprintf(v8, "%20s:\n", "istkLowPingIntervals");
                                                                                                                                                      if (v19)
                                                                                                                                                      {
                                                                                                                                                        v468 = 0;
                                                                                                                                                        if (v19 >= 0xC)
                                                                                                                                                        {
                                                                                                                                                          v469 = 12;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v469 = v19;
                                                                                                                                                        }

                                                                                                                                                        do
                                                                                                                                                        {
                                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v468, v16[v468]);
                                                                                                                                                          ++v468;
                                                                                                                                                        }

                                                                                                                                                        while (v469 != v468);
                                                                                                                                                      }
                                                                                                                                                    }

                                                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1543)
                                                                                                                                                    {
                                                                                                                                                      result = fprintf(v8, "%20s:\n", "istkLowNoDIPingIntervals");
                                                                                                                                                      if (v19)
                                                                                                                                                      {
                                                                                                                                                        v470 = 0;
                                                                                                                                                        if (v19 >= 0xA)
                                                                                                                                                        {
                                                                                                                                                          v471 = 10;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v471 = v19;
                                                                                                                                                        }

                                                                                                                                                        do
                                                                                                                                                        {
                                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v470, v16[v470]);
                                                                                                                                                          ++v470;
                                                                                                                                                        }

                                                                                                                                                        while (v471 != v470);
                                                                                                                                                      }
                                                                                                                                                    }

                                                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1544)
                                                                                                                                                    {
                                                                                                                                                      result = fprintf(v8, "%20s:\n", "istkLowNoSUIPingIntervals");
                                                                                                                                                      if (v19)
                                                                                                                                                      {
                                                                                                                                                        v472 = 0;
                                                                                                                                                        if (v19 >= 0xA)
                                                                                                                                                        {
                                                                                                                                                          v473 = 10;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v473 = v19;
                                                                                                                                                        }

                                                                                                                                                        do
                                                                                                                                                        {
                                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v472, v16[v472]);
                                                                                                                                                          ++v472;
                                                                                                                                                        }

                                                                                                                                                        while (v473 != v472);
                                                                                                                                                      }
                                                                                                                                                    }

                                                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1534)
                                                                                                                                                    {
                                                                                                                                                      result = fprintf(v8, "%20s:\n", "istkMedPingIntervals");
                                                                                                                                                      if (v19)
                                                                                                                                                      {
                                                                                                                                                        v474 = 0;
                                                                                                                                                        if (v19 >= 0xA)
                                                                                                                                                        {
                                                                                                                                                          v475 = 10;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v475 = v19;
                                                                                                                                                        }

                                                                                                                                                        do
                                                                                                                                                        {
                                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v474, v16[v474]);
                                                                                                                                                          ++v474;
                                                                                                                                                        }

                                                                                                                                                        while (v475 != v474);
                                                                                                                                                      }
                                                                                                                                                    }

                                                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1535)
                                                                                                                                                    {
                                                                                                                                                      result = fprintf(v8, "%20s:\n", "istkHighPingIntervals");
                                                                                                                                                      if (v19)
                                                                                                                                                      {
                                                                                                                                                        v476 = 0;
                                                                                                                                                        if (v19 >= 0xA)
                                                                                                                                                        {
                                                                                                                                                          v477 = 10;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v477 = v19;
                                                                                                                                                        }

                                                                                                                                                        do
                                                                                                                                                        {
                                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v476, v16[v476]);
                                                                                                                                                          ++v476;
                                                                                                                                                        }

                                                                                                                                                        while (v477 != v476);
                                                                                                                                                      }
                                                                                                                                                    }

                                                                                                                                                    else if ((a4 & 1) != 0 && v15 == 1545)
                                                                                                                                                    {
                                                                                                                                                      result = fprintf(v8, "%20s:\n", "istkLowAfterMedIntervals");
                                                                                                                                                      if (v19)
                                                                                                                                                      {
                                                                                                                                                        v478 = 0;
                                                                                                                                                        if (v19 >= 6)
                                                                                                                                                        {
                                                                                                                                                          v479 = 6;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v479 = v19;
                                                                                                                                                        }

                                                                                                                                                        do
                                                                                                                                                        {
                                                                                                                                                          result = fprintf(v8, "                      [%d] = %llu\n", v478, v16[v478]);
                                                                                                                                                          ++v478;
                                                                                                                                                        }

                                                                                                                                                        while (v479 != v478);
                                                                                                                                                      }
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      if ((a4 & 1) != 0 && v15 == 1546)
                                                                                                                                                      {
                                                                                                                                                        goto LABEL_80;
                                                                                                                                                      }

                                                                                                                                                      if ((a4 & 1) != 0 && v15 == 1547)
                                                                                                                                                      {
                                                                                                                                                        result = fprintf(v8, "%20s:\n", "istkHWBetweenMed");
                                                                                                                                                        if (v19)
                                                                                                                                                        {
                                                                                                                                                          v480 = 0;
                                                                                                                                                          if (v19 >= 5)
                                                                                                                                                          {
                                                                                                                                                            v481 = 5;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v481 = v19;
                                                                                                                                                          }

                                                                                                                                                          do
                                                                                                                                                          {
                                                                                                                                                            result = fprintf(v8, "                      [%d] = %llu\n", v480, v16[v480]);
                                                                                                                                                            ++v480;
                                                                                                                                                          }

                                                                                                                                                          while (v481 != v480);
                                                                                                                                                        }
                                                                                                                                                      }

                                                                                                                                                      else if (v10 && v19)
                                                                                                                                                      {
                                                                                                                                                        if (v19 == 1)
                                                                                                                                                        {
                                                                                                                                                          result = fprintf(v8, "                KEY_%u:\t%llu\n");
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          printf("KEY_%u:\n", v15);
                                                                                                                                                          v482 = 0;
                                                                                                                                                          if (v19 >= 0x100)
                                                                                                                                                          {
                                                                                                                                                            v483 = 256;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v483 = v19;
                                                                                                                                                          }

                                                                                                                                                          do
                                                                                                                                                          {
                                                                                                                                                            result = fprintf(v8, "                      [%d] = %llu\n", v482, v16[v482]);
                                                                                                                                                            ++v482;
                                                                                                                                                          }

                                                                                                                                                          while (v483 != v482);
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
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v10 = v485;
        a4 = a4;
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    result = fprintf(v8, "%20s:\n", "magazineFWVersion");
    if (v19)
    {
      v486 = v12;
      v484 = v13;
      v20 = v7;
      v21 = a4;
      v22 = v11;
      v23 = v10;
      v24 = 0;
      if (v19 >= 3)
      {
        v25 = 3;
      }

      else
      {
        v25 = v19;
      }

      do
      {
        result = fprintf(v8, "                      [%d] = %llu\n", v24, v16[v24]);
        ++v24;
      }

      while (v25 != v24);
      v10 = v23;
      v11 = v22;
      a4 = v21;
      v7 = v20;
      v13 = v484;
      goto LABEL_42;
    }

LABEL_32:
    a2 = &v16[v19];
    a3 = v490 - v19;
    if (!a3)
    {
      goto LABEL_3280;
    }
  }

  result = fwrite("ASPUserClient: maxEl < elements", 0x1FuLL, 1uLL, v8);
LABEL_3280:
  if (v489)
  {
    result = fprintf(v8, "%20s:\t%f\n", "WriteAmp", v488 * ((v14 * v487) >> 12) / v489);
    if (v13)
    {
      if (v12)
      {
        result = fprintf(v8, "%20s:\t%f\n", "IntermediateWriteAmp", v13 * ((v12 * v14) >> 12) / v489);
      }
    }
  }

  if (v11)
  {
    result = fprintf(v8, "%20s:\t%llu\n", "statsMagCalTime", (v11 >> 24));
  }

LABEL_3286:
  if (v7)
  {

    return fclose(v8);
  }

  return result;
}