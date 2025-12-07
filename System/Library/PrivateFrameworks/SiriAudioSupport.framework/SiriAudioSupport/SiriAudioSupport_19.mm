uint64_t type metadata accessor for SiriAudioSelfLogger.VMCPUStats(uint64_t a1)
{
  result = qword_280073EC0;
  if (!qword_280073EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266477310(uint64_t result)
{
  if ((result - 29) < 0xFFFFFFFFFFFFFFE4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_266477324(uint64_t result)
{
  if ((result - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0;
  }

  return result;
}

id sub_266477338()
{
  v1 = v0;
  v2 = sub_2664DE4A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662C1744(0, &qword_280073ED8, 0x277CCAD78);
  v6 = sub_2664E08C8();
  if (v6)
  {
    v7 = v6;
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v8 = sub_2664E08C8();
    if (v8)
    {
      v9 = v8;
      v45 = v2;
      v10 = [v8 integerValue];
      if ((v10 - 1) <= 4 && (v11 = v10, (v12 = sub_2664E08C8()) != 0))
      {
        v13 = v12;
        v49 = sub_2664E08C8();
        if (v49)
        {
          v48 = sub_2664E08C8();
          if (v48)
          {
            v14 = sub_2664E08C8();
            if (v14)
            {
              v47 = v14;
              v50 = v13;
              v51 = v9;
              v15 = sub_2664E08C8();
              if (v15)
              {
                v9 = v15;
                v16 = v7;
                v17 = sub_2664E08C8();
                if (v17)
                {
                  v18 = v17;
                  v19 = sub_2664E08C8();
                  if (v19)
                  {
                    v20 = v19;
                    v46 = v9;
                    v21 = sub_2664E08C8();
                    if (v21)
                    {
                      v22 = v21;
                      v44 = v16;
                      sub_2664DE488();
                      (*(v3 + 32))(&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_mwtId], v5, v45);
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_snapshotStage] = v11;
                      v23 = v50;
                      v24 = [v50 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksUser] = v24;
                      v25 = v49;
                      v26 = [v49 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksSystem] = v26;
                      v27 = v48;
                      v28 = [v48 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksIdle] = v28;
                      v29 = v47;
                      v30 = [v47 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_cpuTicksNice] = v30;
                      v31 = v46;
                      v32 = [v46 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_compressions] = v32;
                      v33 = [v18 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_decompressions] = v33;
                      v34 = [v20 unsignedLongLongValue];
                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_pageins] = v34;
                      v35 = [v22 unsignedLongLongValue];

                      *&v1[OBJC_IVAR___SASelfLoggerVMCPUStats_faults] = v35;
                      v36 = type metadata accessor for SiriAudioSelfLogger.VMCPUStats(0);
                      v52.receiver = v1;
                      v52.super_class = v36;
                      return objc_msgSendSuper2(&v52, sel_init);
                    }

                    v16 = v50;
                    v43 = v51;
                    v41 = v48;
                    v42 = v49;
                    v39 = v46;
                    v40 = v47;
                    v38 = v18;
                    v9 = v20;
                  }

                  else
                  {
                    v43 = v7;
                    v42 = v50;
                    v16 = v51;
                    v40 = v48;
                    v41 = v49;
                    v39 = v47;
                    v38 = v9;
                    v9 = v18;
                  }
                }

                else
                {
                  v41 = v50;
                  v42 = v51;
                  v39 = v48;
                  v40 = v49;
                  v38 = v47;
                }
              }

              else
              {
                v42 = v7;
                v40 = v50;
                v41 = v51;
                v38 = v48;
                v39 = v49;
                v9 = v47;
              }
            }

            else
            {
              v41 = v7;
              v40 = v9;
              v39 = v13;
              v9 = v48;
              v38 = v49;
            }
          }

          else
          {
            v40 = v7;
            v39 = v9;
            v38 = v13;
            v9 = v49;
          }
        }

        else
        {
          v39 = v7;
          v38 = v9;
          v9 = v13;
        }
      }

      else
      {
        v38 = v7;
      }
    }

    else
    {
      v9 = v7;
    }
  }

  result = sub_2664E0C48();
  __break(1u);
  return result;
}

unint64_t sub_2664778A0(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v2 = 0;
      v1 = 0;
      return v2 | (v1 << 32);
    }

    if (a1 == 1)
    {
      v1 = 0;
      v2 = 1;
      return v2 | (v1 << 32);
    }

LABEL_12:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 == 4)
  {
    v1 = 0;
    v2 = 4;
    return v2 | (v1 << 32);
  }

  if (a1 == 3)
  {
    v1 = 0;
    v2 = 3;
    return v2 | (v1 << 32);
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v1 = 0;
  v2 = 2;
  return v2 | (v1 << 32);
}

unint64_t sub_266477928(unsigned int a1)
{
  v1 = 0;
  v2 = a1;
  switch(a1)
  {
    case 0u:
      v2 = 0;
      v1 = 0;
      break;
    case 1u:
      return v2 | (v1 << 32);
    case 2u:
      v1 = 0;
      v2 = 2;
      break;
    case 3u:
      v1 = 0;
      v2 = 3;
      break;
    case 4u:
      v1 = 0;
      v2 = 4;
      break;
    case 5u:
      v1 = 0;
      v2 = 5;
      break;
    case 6u:
      v1 = 0;
      v2 = 6;
      break;
    case 7u:
      v1 = 0;
      v2 = 7;
      break;
    case 8u:
      v1 = 0;
      v2 = 8;
      break;
    case 9u:
      v1 = 0;
      v2 = 9;
      break;
    case 0xAu:
      v1 = 0;
      v2 = 10;
      break;
    case 0xBu:
      v1 = 0;
      v2 = 11;
      break;
    case 0xCu:
      v1 = 0;
      v2 = 12;
      break;
    case 0xDu:
      v1 = 0;
      v2 = 13;
      break;
    case 0xEu:
      v1 = 0;
      v2 = 14;
      break;
    case 0xFu:
      v1 = 0;
      v2 = 15;
      break;
    case 0x10u:
      v1 = 0;
      v2 = 16;
      break;
    case 0x11u:
      v1 = 0;
      v2 = 17;
      break;
    case 0x12u:
      v1 = 0;
      v2 = 18;
      break;
    case 0x13u:
      v1 = 0;
      v2 = 19;
      break;
    case 0x14u:
      v1 = 0;
      v2 = 20;
      break;
    case 0x15u:
      v1 = 0;
      v2 = 21;
      break;
    case 0x16u:
      v1 = 0;
      v2 = 22;
      break;
    case 0x17u:
      v1 = 0;
      v2 = 23;
      break;
    case 0x18u:
      v1 = 0;
      v2 = 24;
      break;
    case 0x19u:
      v1 = 0;
      v2 = 25;
      break;
    case 0x1Au:
      v1 = 0;
      v2 = 26;
      break;
    case 0x1Bu:
      v1 = 0;
      v2 = 27;
      break;
    case 0x1Cu:
      v1 = 0;
      v2 = 28;
      break;
    case 0x1Du:
      v1 = 0;
      v2 = 29;
      break;
    case 0x1Eu:
      v1 = 0;
      v2 = 30;
      break;
    case 0x1Fu:
      v1 = 0;
      v2 = 31;
      break;
    case 0x20u:
      v1 = 0;
      v2 = 32;
      break;
    case 0x21u:
      v1 = 0;
      v2 = 33;
      break;
    case 0x22u:
      v1 = 0;
      v2 = 34;
      break;
    case 0x23u:
      v1 = 0;
      v2 = 35;
      break;
    case 0x24u:
      v1 = 0;
      v2 = 36;
      break;
    case 0x25u:
      v1 = 0;
      v2 = 37;
      break;
    case 0x26u:
      v1 = 0;
      v2 = 38;
      break;
    case 0x27u:
      v1 = 0;
      v2 = 39;
      break;
    case 0x28u:
      v1 = 0;
      v2 = 40;
      break;
    default:
      v2 = 0;
      v1 = 1;
      break;
  }

  return v2 | (v1 << 32);
}

unint64_t sub_266477B5C(unsigned int a1)
{
  v1 = a1;
  v2 = 0;
  switch(a1)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
    case 0x3Fu:
    case 0x40u:
    case 0x41u:
    case 0x42u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
    case 0x46u:
    case 0x47u:
    case 0x48u:
    case 0x49u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Cu:
    case 0x4Du:
    case 0x4Eu:
      v2 = 0;
      break;
    case 0x4Fu:
      return v1 | (v2 << 32);
    case 0x50u:
      v2 = 0;
      v1 = 80;
      break;
    case 0x51u:
      v2 = 0;
      v1 = 81;
      break;
    case 0x52u:
      v2 = 0;
      v1 = 82;
      break;
    case 0x53u:
      v2 = 0;
      v1 = 83;
      break;
    case 0x54u:
      v2 = 0;
      v1 = 84;
      break;
    case 0x55u:
      v2 = 0;
      v1 = 85;
      break;
    case 0x56u:
      v2 = 0;
      v1 = 86;
      break;
    case 0x57u:
      v2 = 0;
      v1 = 87;
      break;
    case 0x58u:
      v2 = 0;
      v1 = 88;
      break;
    case 0x59u:
      v2 = 0;
      v1 = 89;
      break;
    case 0x5Au:
      v2 = 0;
      v1 = 90;
      break;
    case 0x5Bu:
      v2 = 0;
      v1 = 91;
      break;
    case 0x5Cu:
      v2 = 0;
      v1 = 92;
      break;
    case 0x5Du:
      v2 = 0;
      v1 = 93;
      break;
    case 0x5Eu:
      v2 = 0;
      v1 = 94;
      break;
    case 0x5Fu:
      v2 = 0;
      v1 = 95;
      break;
    case 0x60u:
      v2 = 0;
      v1 = 96;
      break;
    case 0x61u:
      v2 = 0;
      v1 = 97;
      break;
    case 0x62u:
      v2 = 0;
      v1 = 98;
      break;
    case 0x63u:
      v2 = 0;
      v1 = 99;
      break;
    case 0x64u:
      v2 = 0;
      v1 = 100;
      break;
    case 0x65u:
      v2 = 0;
      v1 = 101;
      break;
    case 0x66u:
      v2 = 0;
      v1 = 102;
      break;
    case 0x67u:
      v2 = 0;
      v1 = 103;
      break;
    case 0x68u:
      v2 = 0;
      v1 = 104;
      break;
    case 0x69u:
      v2 = 0;
      v1 = 105;
      break;
    case 0x6Au:
      v2 = 0;
      v1 = 106;
      break;
    case 0x6Bu:
      v2 = 0;
      v1 = 107;
      break;
    case 0x6Cu:
      v2 = 0;
      v1 = 108;
      break;
    case 0x6Du:
      v2 = 0;
      v1 = 109;
      break;
    case 0x6Eu:
      v2 = 0;
      v1 = 110;
      break;
    case 0x6Fu:
      v2 = 0;
      v1 = 111;
      break;
    case 0x70u:
      v2 = 0;
      v1 = 112;
      break;
    case 0x71u:
      v2 = 0;
      v1 = 113;
      break;
    case 0x72u:
      v2 = 0;
      v1 = 114;
      break;
    case 0x73u:
      v2 = 0;
      v1 = 115;
      break;
    case 0x74u:
      v2 = 0;
      v1 = 116;
      break;
    case 0x75u:
      v2 = 0;
      v1 = 117;
      break;
    case 0x76u:
      v2 = 0;
      v1 = 118;
      break;
    case 0x77u:
      v2 = 0;
      v1 = 119;
      break;
    case 0x78u:
      v2 = 0;
      v1 = 120;
      break;
    case 0x79u:
      v2 = 0;
      v1 = 121;
      break;
    case 0x7Au:
      v2 = 0;
      v1 = 122;
      break;
    case 0x7Bu:
      v2 = 0;
      v1 = 123;
      break;
    case 0x7Cu:
      v2 = 0;
      v1 = 124;
      break;
    case 0x7Du:
      v2 = 0;
      v1 = 125;
      break;
    case 0x7Eu:
      v2 = 0;
      v1 = 126;
      break;
    case 0x7Fu:
      v2 = 0;
      v1 = 127;
      break;
    default:
      v2 = 0;
      switch(a1)
      {
        case 0x80u:
          return v1 | (v2 << 32);
        case 0x81u:
          v2 = 0;
          v1 = 129;
          break;
        case 0x82u:
          v2 = 0;
          v1 = 130;
          break;
        case 0x83u:
          v2 = 0;
          v1 = 131;
          break;
        case 0x84u:
          v2 = 0;
          v1 = 132;
          break;
        case 0x85u:
          v2 = 0;
          v1 = 133;
          break;
        case 0x86u:
          v2 = 0;
          v1 = 134;
          break;
        case 0x87u:
          v2 = 0;
          v1 = 135;
          break;
        case 0x88u:
          v2 = 0;
          v1 = 136;
          break;
        case 0x89u:
          v2 = 0;
          v1 = 137;
          break;
        case 0x8Au:
          v2 = 0;
          v1 = 138;
          break;
        case 0x8Bu:
          v2 = 0;
          v1 = 139;
          break;
        case 0x8Cu:
          v2 = 0;
          v1 = 140;
          break;
        case 0x8Du:
          v2 = 0;
          v1 = 141;
          break;
        case 0x8Eu:
          v2 = 0;
          v1 = 142;
          break;
        case 0x8Fu:
          v2 = 0;
          v1 = 143;
          break;
        case 0x90u:
          v2 = 0;
          v1 = 144;
          break;
        case 0x91u:
          v2 = 0;
          v1 = 145;
          break;
        case 0x92u:
          v2 = 0;
          v1 = 146;
          break;
        case 0x93u:
          v2 = 0;
          v1 = 147;
          break;
        case 0x94u:
          v2 = 0;
          v1 = 148;
          break;
        case 0x95u:
          v2 = 0;
          v1 = 149;
          break;
        case 0x96u:
          v2 = 0;
          v1 = 150;
          break;
        case 0x97u:
          v2 = 0;
          v1 = 151;
          break;
        case 0x98u:
          v2 = 0;
          v1 = 152;
          break;
        case 0x99u:
          v2 = 0;
          v1 = 153;
          break;
        case 0x9Au:
          v2 = 0;
          v1 = 154;
          break;
        case 0x9Bu:
          v2 = 0;
          v1 = 155;
          break;
        case 0x9Cu:
          v2 = 0;
          v1 = 156;
          break;
        case 0x9Du:
          v2 = 0;
          v1 = 157;
          break;
        case 0x9Eu:
          v2 = 0;
          v1 = 158;
          break;
        case 0x9Fu:
          v2 = 0;
          v1 = 159;
          break;
        case 0xA0u:
          v2 = 0;
          v1 = 160;
          break;
        case 0xA1u:
          v2 = 0;
          v1 = 161;
          break;
        case 0xA2u:
          v2 = 0;
          v1 = 162;
          break;
        case 0xA3u:
          v2 = 0;
          v1 = 163;
          break;
        case 0xA4u:
          v2 = 0;
          v1 = 164;
          break;
        case 0xA5u:
          v2 = 0;
          v1 = 165;
          break;
        case 0xA6u:
          v2 = 0;
          v1 = 166;
          break;
        case 0xA7u:
          v2 = 0;
          v1 = 167;
          break;
        case 0xA8u:
          v2 = 0;
          v1 = 168;
          break;
        case 0xA9u:
          v2 = 0;
          v1 = 169;
          break;
        case 0xAAu:
          v2 = 0;
          v1 = 170;
          break;
        case 0xABu:
          v2 = 0;
          v1 = 171;
          break;
        case 0xACu:
          v2 = 0;
          v1 = 172;
          break;
        case 0xADu:
          v2 = 0;
          v1 = 173;
          break;
        case 0xAEu:
          v2 = 0;
          v1 = 174;
          break;
        default:
          v1 = 0;
          v2 = 1;
          break;
      }

      break;
  }

  return v1 | (v2 << 32);
}

unint64_t sub_266478050(int a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v1 = 0;
        v2 = 3;
        return v2 | (v1 << 32);
      case 4:
        v1 = 0;
        v2 = 4;
        return v2 | (v1 << 32);
      case 5:
        v1 = 0;
        v2 = 5;
        return v2 | (v1 << 32);
    }

LABEL_12:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (!a1)
  {
    v2 = 0;
    v1 = 0;
    return v2 | (v1 << 32);
  }

  if (a1 == 1)
  {
    v1 = 0;
    v2 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  v1 = 0;
  v2 = 2;
  return v2 | (v1 << 32);
}

unint64_t sub_2664780EC(unsigned int a1)
{
  v1 = 0;
  v2 = a1;
  switch(a1)
  {
    case 0u:
      v2 = 0;
      v1 = 0;
      break;
    case 1u:
      return v2 | (v1 << 32);
    case 2u:
      v1 = 0;
      v2 = 2;
      break;
    case 3u:
      v1 = 0;
      v2 = 3;
      break;
    case 4u:
      v1 = 0;
      v2 = 4;
      break;
    case 5u:
      v1 = 0;
      v2 = 5;
      break;
    case 6u:
      v1 = 0;
      v2 = 6;
      break;
    case 7u:
      v1 = 0;
      v2 = 7;
      break;
    case 8u:
      v1 = 0;
      v2 = 8;
      break;
    case 9u:
      v1 = 0;
      v2 = 9;
      break;
    case 0xAu:
      v1 = 0;
      v2 = 10;
      break;
    case 0xBu:
      v1 = 0;
      v2 = 11;
      break;
    case 0xCu:
      v1 = 0;
      v2 = 12;
      break;
    case 0xDu:
      v1 = 0;
      v2 = 13;
      break;
    case 0xEu:
      v1 = 0;
      v2 = 14;
      break;
    default:
      v2 = 0;
      v1 = 1;
      break;
  }

  return v2 | (v1 << 32);
}

unint64_t sub_2664781E8(int a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v1 = 0;
        v2 = 2;
      }

      else
      {
        v1 = 0;
        if (a1 == 3)
        {
          v2 = 3;
        }

        else
        {
          v2 = 4;
        }
      }

      return v2 | (v1 << 32);
    }

    if (!a1)
    {
      v2 = 0;
      v1 = 0;
      return v2 | (v1 << 32);
    }

    if (a1 == 1)
    {
      v1 = 0;
      v2 = 1;
      return v2 | (v1 << 32);
    }

LABEL_22:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        v1 = 0;
        v2 = 7;
        return v2 | (v1 << 32);
      case 8:
        v1 = 0;
        v2 = 8;
        return v2 | (v1 << 32);
      case 9:
        v1 = 0;
        v2 = 9;
        return v2 | (v1 << 32);
    }

    goto LABEL_22;
  }

  v1 = 0;
  if (a1 == 5)
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  return v2 | (v1 << 32);
}

unint64_t sub_2664782E4(int a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        v2 = 0;
        v1 = 0;
        return v2 | (v1 << 32);
      case 1:
        v1 = 0;
        v2 = 1;
        return v2 | (v1 << 32);
      case 2:
        v1 = 0;
        v2 = 2;
        return v2 | (v1 << 32);
    }

LABEL_13:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      v1 = 0;
      v2 = 5;
      return v2 | (v1 << 32);
    }

    if (a1 == 6)
    {
      v1 = 0;
      v2 = 6;
      return v2 | (v1 << 32);
    }

    goto LABEL_13;
  }

  v1 = 0;
  if (a1 == 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  return v2 | (v1 << 32);
}

unint64_t sub_26647839C(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 3)
    {
      v1 = 0;
      v2 = 3;
      return v2 | (v1 << 32);
    }

    if (a1 == 2)
    {
      v1 = 0;
      v2 = 2;
      return v2 | (v1 << 32);
    }

LABEL_8:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (!a1)
  {
    v2 = 0;
    v1 = 0;
    return v2 | (v1 << 32);
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v1 = 0;
  v2 = 1;
  return v2 | (v1 << 32);
}

unint64_t sub_266478438()
{
  result = qword_280073E38;
  if (!qword_280073E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E38);
  }

  return result;
}

unint64_t sub_266478490()
{
  result = qword_280073E40;
  if (!qword_280073E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E40);
  }

  return result;
}

unint64_t sub_2664784E8()
{
  result = qword_280073E48;
  if (!qword_280073E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E48);
  }

  return result;
}

unint64_t sub_266478540()
{
  result = qword_280073E50;
  if (!qword_280073E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E50);
  }

  return result;
}

unint64_t sub_266478598()
{
  result = qword_280073E58;
  if (!qword_280073E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E58);
  }

  return result;
}

unint64_t sub_2664785F0()
{
  result = qword_280073E60;
  if (!qword_280073E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E60);
  }

  return result;
}

unint64_t sub_266478648()
{
  result = qword_280073E68;
  if (!qword_280073E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E68);
  }

  return result;
}

unint64_t sub_2664786A0()
{
  result = qword_280073E70;
  if (!qword_280073E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E70);
  }

  return result;
}

unint64_t sub_2664786F8()
{
  result = qword_280073E78;
  if (!qword_280073E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E78);
  }

  return result;
}

unint64_t sub_266478750()
{
  result = qword_280073E80;
  if (!qword_280073E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E80);
  }

  return result;
}

unint64_t sub_2664787A8()
{
  result = qword_280073E88;
  if (!qword_280073E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E88);
  }

  return result;
}

unint64_t sub_266478800()
{
  result = qword_280073E90;
  if (!qword_280073E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E90);
  }

  return result;
}

unint64_t sub_266478858()
{
  result = qword_280073E98;
  if (!qword_280073E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073E98);
  }

  return result;
}

unint64_t sub_2664788B0()
{
  result = qword_280073EA0;
  if (!qword_280073EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073EA0);
  }

  return result;
}

unint64_t sub_266478908()
{
  result = qword_280073EA8;
  if (!qword_280073EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073EA8);
  }

  return result;
}

unint64_t sub_266478960()
{
  result = qword_280073EB0;
  if (!qword_280073EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073EB0);
  }

  return result;
}

unint64_t sub_2664789B8()
{
  result = qword_280073EB8;
  if (!qword_280073EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073EB8);
  }

  return result;
}

void keypath_get_39Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _DWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_get_45Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_set_46Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void keypath_set_40Tm(int *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

double keypath_get_107Tm@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

uint64_t sub_266478D78(uint64_t a1)
{
  result = sub_2664DE4A8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static DispatchQueues.serialQueue(_:qos:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664E0788();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = 0;
  sub_2663A575C();
  sub_2664E0F48();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(a1, a2, a3, v9);
  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_26647B894()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0098();
  v10[1] = 0;
  sub_2663A575C();
  sub_2664E0F48();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0x636974796C616E41, 0xE900000000000073, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280F90D38 = v8;
  return result;
}

uint64_t sub_26647BA44()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(1953719636, 0xE400000000000000, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073EE0 = v8;
  return result;
}

uint64_t sub_26647BBF4()
{
  v0 = sub_2664E00B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E0788();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = 0;
  sub_2663A575C();
  sub_2664E0F48();
  sub_2664E0078();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001ELL, 0x80000002664FA420, v3, v7);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073EE8 = v8;
  return result;
}

id sub_26647BDC8(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t static DispatchQueues.getGlobalQueue(qos:)()
{
  v0 = sub_2664E0058();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664259E0();
  sub_2664E00A8();
  v4 = sub_2664E0808();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v7 = sub_2664E07B8();
  v58 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664E0058();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664E0788();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v55 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v44 - v14;
  v15 = sub_2664E00B8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v54 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  v21 = sub_2664DFE38();
  v61 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v59 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_2664E0B28();

  v66 = 0xD000000000000015;
  v67 = 0x80000002664FA440;
  MEMORY[0x2667833B0](a1, a2);
  v24 = v66;
  v23 = v67;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v21, qword_280F914F0);
  swift_beginAccess();
  (*(v61 + 16))(v59, v25, v21);
  v51 = v21;
  v26 = *(v16 + 16);
  v57 = a3;
  v53 = v26;
  v26(v20, a3, v15);
  v50 = v15;
  v52 = *(v62 + 16);
  v52(v60, v64, v63);

  v27 = sub_2664DFE18();
  v28 = v23;
  v29 = sub_2664E06C8();

  if (os_log_type_enabled(v27, v29))
  {
    v30 = swift_slowAlloc();
    v46 = v7;
    v31 = v30;
    v45 = swift_slowAlloc();
    v65 = v45;
    *v31 = 136315650;
    *(v31 + 4) = sub_2662A320C(v24, v28, &v65);
    *(v31 + 12) = 1024;
    v32 = v47;
    v44 = v28;
    sub_2664E00A8();
    v33 = sub_2664E0048();
    (*(v48 + 8))(v32, v49);
    v34 = v50;
    (*(v16 + 8))(v20, v50);
    *(v31 + 14) = v33;
    *(v31 + 18) = 2048;
    v35 = v60;
    v36 = sub_2664E0778();
    v37 = v35;
    v38 = v63;
    (*(v62 + 8))(v37, v63);
    *(v31 + 20) = v36;
    _os_log_impl(&dword_26629C000, v27, v29, "Creating DispatchQueue: %s with qos: %u and attributes: %llu", v31, 0x1Cu);
    v39 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x266784AD0](v39, -1, -1);
    v40 = v31;
    v7 = v46;
    MEMORY[0x266784AD0](v40, -1, -1);

    (*(v61 + 8))(v59, v51);
    v41 = v34;
  }

  else
  {
    v42 = v63;
    (*(v62 + 8))(v60, v63);
    v41 = v50;
    (*(v16 + 8))(v20, v50);

    (*(v61 + 8))(v59, v51);
    v38 = v42;
  }

  sub_2664259E0();
  v53(v54, v57, v41);
  v52(v55, v64, v38);
  (*(v58 + 104))(v56, *MEMORY[0x277D85260], v7);
  return sub_2664E07F8();
}

uint64_t AirPlayRouteProvider.__allocating_init(refId:)(char *a1, unint64_t a2)
{
  v4 = swift_allocObject();
  type metadata accessor for AirPlayRouteSetupContext();
  v5 = static AirPlayRouteSetupContext.shared(refId:)(a1, a2);

  *(v4 + 16) = v5;
  return v4;
}

uint64_t sub_26647C654(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, int a6, uint64_t a7, void *(*a8)(uint64_t *__return_ptr, uint64_t), uint64_t a9)
{
  HIDWORD(v24) = a6;
  v25 = a5;
  v26 = a4;
  v27 = a9;
  v28 = a8;
  v13 = sub_2664DFE08();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v17 = qword_280F91D48;
  sub_2664DFDE8();
  v18 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D83B88];
  *(v19 + 16) = xmmword_2664E36F0;
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = a7;
  sub_2664DFDC8(v18, &dword_26629C000, v17, a1, a2, a3, v16, v26, v25, BYTE4(v24), v19);

  v28(&v29, v22);
  sub_2664E0838();
  sub_2664DFDD8();
  (*(v14 + 8))(v16, v13);
  return v29;
}

uint64_t AirPlayRouteProvider.init(refId:)(char *a1, unint64_t a2)
{
  v3 = v2;
  type metadata accessor for AirPlayRouteSetupContext();
  v6 = static AirPlayRouteSetupContext.shared(refId:)(a1, a2);

  *(v3 + 16) = v6;
  return v3;
}

uint64_t sub_26647C8C8(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v21 = a3;
  v22 = a2;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06B8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = sub_2664E01D8();
    v15 = sub_2662A320C(v13, v14, &v23);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_26629C000, v9, v10, "AirPlayRouteProvider#decodeHashedRouteUIDs Decoded hashedRouteUIDs: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v16 = *(a1 + 16);
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = sub_26640C820(*(a1 + 16), 0);
  v18 = sub_266410DDC();
  v19 = v23;

  sub_2662B793C(v19);
  if (v18 != v16)
  {
    __break(1u);
LABEL_8:
    v17 = MEMORY[0x277D84F90];
  }

  v22(v17);
}

uint64_t sub_26647CB88(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a2(0);
  }

  v35 = v8;
  v36 = a3;
  v10 = *(a1 + 16);
  if (!v10)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v33 = v7;
  v34 = a2;
  do
  {
    a2 = (a1 + 40 + 16 * v11);
    v7 = v11;
    while (1)
    {
      if (v7 >= v10)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_28;
      }

      v14 = *(a2 - 1);
      v13 = *a2;
      sub_2664DFD18();

      if (v14 != sub_2664DFD08() || v13 != v15)
      {
        break;
      }

LABEL_6:

      ++v7;
      a2 = (a2 + 16);
      if (v11 == v10)
      {
        v7 = v33;
        a2 = v34;
        goto LABEL_21;
      }
    }

    v16 = sub_2664E0D88();

    if (v16)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2662FCF24(0, *(v12 + 16) + 1, 1);
      v12 = v39[0];
    }

    v7 = v33;
    v19 = *(v12 + 16);
    v18 = *(v12 + 24);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      sub_2662FCF24((v18 > 1), v19 + 1, 1);
      v20 = v19 + 1;
      v12 = v39[0];
    }

    *(v12 + 16) = v20;
    v21 = v12 + 16 * v19;
    *(v21 + 32) = v14;
    *(v21 + 40) = v13;
    a2 = v34;
  }

  while (v11 != v10);
LABEL_21:
  if (qword_280F914E8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v23 = v35;
  v24 = __swift_project_value_buffer(v35, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v37, v24, v23);

  v25 = sub_2664DFE18();
  v26 = sub_2664E06B8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38 = v28;
    *v27 = 136315138;
    v29 = MEMORY[0x2667834D0](v12, MEMORY[0x277D837D0]);
    v31 = sub_2662A320C(v29, v30, &v38);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_26629C000, v25, v26, "AirPlayRouteProvider#getRouteIdsFromIntent filtered routeIds: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x266784AD0](v28, -1, -1);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  (*(v7 + 8))(v37, v23);
  if (!*(v12 + 16))
  {

    v12 = 0;
  }

  a2(v12);
}

void sub_26647CF84(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v78 - v14;
  v16 = sub_2664DFE08();
  v17 = MEMORY[0x28223BE20](v16);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v4[2];
  if (v21)
  {
    v81 = v20;
    v82 = v18;
    v84 = v17;
    v85 = a3;
    v83 = v8;
    swift_beginAccess();
    *(v21 + 48) = a1;

    v23 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v23);
    v24 = *(v22 + 8);
    v86 = a1;

    if (v24(v23, v22))
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      (*(v10 + 16))(v15, v25, v9);
      v26 = v86;

      v27 = sub_2664DFE18();
      v28 = sub_2664E06B8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v88[0] = v30;
        *v29 = 136315138;
        v31 = MEMORY[0x2667834D0](v26, MEMORY[0x277D837D0]);
        v33 = sub_2662A320C(v31, v32, v88);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_26629C000, v27, v28, "AirPlayRouteProvider#startAirplayDiscovery Skipping route setup on HomePod (Bolt and 1p are handling route setup): %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x266784AD0](v30, -1, -1);
        MEMORY[0x266784AD0](v29, -1, -1);
      }

      (*(v10 + 8))(v15, v9);
      LOBYTE(v88[0]) = 5;
      sub_266481BC0(v88);

      return;
    }

    if (qword_280F91468 != -1)
    {
      swift_once();
    }

    v38 = qword_280F91470;
    v89[3] = type metadata accessor for SiriKitTaskLoggingProvider();
    v89[4] = &protocol witness table for SiriKitTaskLoggingProvider;
    v89[0] = v38;
    type metadata accessor for PThreadMutex();
    swift_allocObject();

    v39 = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD00000000000001ALL, 0x80000002664FA460, 1, v89);
    swift_beginAccess();
    *(v21 + 136) = v39;

    sub_2662A98AC();

    v40 = v85;
    v41 = v86;
    if (*(v21 + 40) != 3)
    {
      LOBYTE(v88[0]) = 2;
      sub_266481BC0(v88);
    }

    v42 = *(v41 + 16);
    v43 = swift_beginAccess();
    *(v21 + 96) = v42;
    *(v21 + 104) = 0;
    MEMORY[0x28223BE20](v43);
    v77 = v21;
    v44 = sub_26647C654("siriAirPlaySetAudioSessionCategory", 34, 2, "deviceIdCount=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 73, 2, v42, sub_2664831FC, &v74);
    v45 = v44;
    if (*(v21 + 40) == 6 || !v44)
    {
      v87[0] = 6;
      sub_266481BC0(v87);
      if (!*(v21 + 136))
      {
        goto LABEL_25;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v44);
      v76 = v41;
      v77 = v40;
      v45 = v45;
      v46 = sub_26647C654("siriAirPlayReconnaissanceSessionCreateWithEndpointFeatures", 58, 2, "deviceIdCount=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 73, 2, v42, sub_266483204, &v74);
      if (v46)
      {
        v47 = v46;
        v80 = v45;
        if (qword_280F91508 != -1)
        {
          swift_once();
        }

        v48 = qword_280F91D48;
        v49 = v81;
        v50 = v48;
        sub_2664DFDE8();
        v51 = sub_2664E0848();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
        v52 = swift_allocObject();
        v53 = MEMORY[0x277D83B88];
        *(v52 + 16) = xmmword_2664E36F0;
        v54 = MEMORY[0x277D83C10];
        *(v52 + 56) = v53;
        *(v52 + 64) = v54;
        *(v52 + 32) = v42;
        LOBYTE(v75) = 2;
        v79 = v50;
        sub_2664DFDC8(v51, &dword_26629C000, v50, "siriAirPlayReconnaissanceSessionSetTargetAudioSessionID", 55, 2, v49, "deviceIdCount=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 73, v75, v52);

        v55 = [v80 opaqueSessionID];
        v56 = v40[3];
        v57 = v40[4];
        __swift_project_boxed_opaque_existential_1(v40, v56);
        (*(v57 + 80))(v47, v55, v56, v57);
        sub_2664E0838();
        sub_2664DFDD8();
        v58 = *(v82 + 8);
        v59 = v84;
        v58(v49, v84);
        v60 = v40[3];
        v61 = v40[4];
        __swift_project_boxed_opaque_existential_1(v40, v60);
        (*(v61 + 88))(v47, 0, v60, v61);
        v62 = v40[3];
        v63 = v40[4];
        __swift_project_boxed_opaque_existential_1(v40, v62);
        (*(v63 + 96))(v47, 1, v62, v63);
        v64 = sub_2664E0848();
        sub_2664DFDF8();
        LOBYTE(v75) = 2;
        sub_2664DFDC8(v64, &dword_26629C000, v79, "siriAirPlayDeviceSearch", 23, 2, v49, " enableTelemetry=YES ", 21, v75, MEMORY[0x277D84F90]);
        v58(v49, v59);
        v65 = v40[3];
        v66 = v40[4];
        __swift_project_boxed_opaque_existential_1(v40, v65);
        v67 = swift_allocObject();
        v67[2] = v86;
        v67[3] = v21;
        v67[4] = v83;
        v68 = *(v66 + 104);

        v68(v47, sub_26648320C, v67, v65, v66, 5.0);

        v69 = v80;

        return;
      }

      v87[0] = 6;
      sub_266481BC0(v87);
      v70 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v71 = sub_2664E02A8();
      v72 = [v70 initWithDomain:v71 code:0 userInfo:0];

      swift_beginAccess();
      v73 = *(v21 + 64);
      *(v21 + 64) = v72;

      if (!*(v21 + 136))
      {
LABEL_25:

        return;
      }
    }

    sub_2662AA89C();

    goto LABEL_25;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v34, v9);
  v35 = sub_2664DFE18();
  v36 = sub_2664E06D8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_26629C000, v35, v36, "AirPlayRouteProvider#startAirplayDiscovery Unable to retrieve AirPlayRouteSetupContext", v37, 2u);
    MEMORY[0x266784AD0](v37, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
}

uint64_t sub_26647DA34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v25 = *(v6 + 16);
  v25(v11, v12, v5);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v9;
    v16 = v5;
    v17 = v6;
    v18 = a3;
    v19 = v15;
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "AirPlayRouteProvider#startAirplayDiscovery Configuring audio session", v15, 2u);
    v20 = v19;
    a3 = v18;
    v6 = v17;
    v5 = v16;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  v26 = *(v6 + 8);
  v26(v11, v5);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  result = (*(v22 + 64))(v21, v22);
  *a3 = result;
  return result;
}

void sub_26647DE5C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v28 = v15;
    *v14 = 136315138;
    v17 = MEMORY[0x2667834D0](a1, MEMORY[0x277D837D0]);
    v19 = sub_2662A320C(v17, v18, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_26629C000, v11, v12, "AirPlayRouteProvider#startAirplayDiscovery Creating reconnaissance session for airplay ids: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v20 = v16;
    a2 = v26;
    MEMORY[0x266784AD0](v20, -1, -1);
    v21 = v14;
    a3 = v27;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  v24 = sub_2664E0488();
  v25 = (*(v23 + 72))(v24, 1, v22, v23);

  *a3 = v25;
}

void sub_26647E0F0(const __CFArray *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v131 = a3;
  v134 = sub_2664DFE38();
  v135 = *(v134 - 8);
  v8 = MEMORY[0x28223BE20](v134);
  v133 = v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v124 = v118 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v125 = v118 - v13;
  MEMORY[0x28223BE20](v12);
  v132 = v118 - v14;
  v15 = sub_2664DFE08();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Count = CFArrayGetCount(a1);
  v20 = *(a4 + 16);
  v21 = sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v22 = qword_280F91D48;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2664E34E0;
  v24 = MEMORY[0x277D83B88];
  v25 = MEMORY[0x277D83C10];
  *(v23 + 56) = MEMORY[0x277D83B88];
  *(v23 + 64) = v25;
  v127 = v20;
  *(v23 + 32) = v20;
  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  *(v23 + 72) = Count;
  sub_2664DFDF8();
  v129 = v22;
  sub_2664DFDC8(v21, &dword_26629C000, v22, "siriAirPlayDeviceSearch", 23, 2, v18, "deviceIdCount=%{public, signpost.telemetry:number1}d resolvedOutputDevicesCount=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", 139, 2, v23);

  v28 = *(v16 + 8);
  v27 = v16 + 8;
  v26 = v28;
  v130 = v18;
  v28(v18, v15);
  swift_beginAccess();
  v128 = Count;
  *(a5 + 112) = Count;
  *(a5 + 120) = 0;
  v29 = a5;
  v30 = v134;
  v31 = v133;
  v32 = v131;
  if (v131)
  {
    v120 = v26;
    v121 = v27;
    v122 = v15;
    v123 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v30, qword_280F914F0);
    swift_beginAccess();
    v34 = *(v135 + 16);
    v119 = v33;
    v118[1] = v135 + 16;
    v118[0] = v34;
    v34(v132, v33, v30);
    v35 = v32;
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = v30;
      v40 = swift_slowAlloc();
      *v38 = 138412290;
      type metadata accessor for CFError(0);
      sub_2662A3E08(&qword_2800726B0, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      swift_allocError();
      *v41 = v35;
      v42 = v35;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v43;
      *v40 = v43;
      _os_log_impl(&dword_26629C000, v36, v37, "AirPlayRouteProvider#startAirplayDiscovery Error searching for output devices: %@", v38, 0xCu);
      sub_2662E4324(v40);
      v44 = v40;
      v30 = v39;
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v45 = v135 + 8;
    v131 = *(v135 + 8);
    v131(v132, v30);
    type metadata accessor for CFError(0);
    sub_2662A3E08(&qword_2800726B0, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    v46 = swift_allocError();
    *v47 = v35;
    swift_beginAccess();
    v48 = *(a5 + 64);
    *(v29 + 64) = v46;
    v49 = v35;
    v50 = v46;

    v51 = v46;
    v132 = sub_2664DE198();

    v52 = sub_2664DE198();
    v53 = [v52 code];
    v54 = [v52 domain];
    v55 = sub_2664E02C8();
    v57 = v130;
    if (!*MEMORY[0x277D27AE0])
    {
      __break(1u);
      return;
    }

    v58 = v55;
    v59 = v56;

    if (v58 == sub_2664E02C8() && v59 == v60)
    {

      v61 = v53 == 26;
      v62 = v128;
      if (!v61 || v128 <= 0)
      {
LABEL_21:
        v83 = v132;
        v84 = [v132 code];
        v85 = [v83 domain];
        v86 = sub_2664E02C8();
        v88 = v87;

        v89 = sub_2664E0858();
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_2664E34D0;
        v91 = MEMORY[0x277D83B88];
        *(v90 + 56) = MEMORY[0x277D83B88];
        v92 = MEMORY[0x277D83C10];
        *(v90 + 64) = MEMORY[0x277D83C10];
        *(v90 + 72) = v62;
        *(v90 + 32) = v127;
        *(v90 + 96) = v91;
        *(v90 + 104) = v92;
        *(v90 + 136) = v91;
        *(v90 + 144) = v92;
        *(v90 + 112) = v84;
        *(v90 + 176) = MEMORY[0x277D837D0];
        *(v90 + 184) = sub_2662C4094();
        *(v90 + 152) = v86;
        *(v90 + 160) = v88;
        sub_2664DFDF8();
        LOBYTE(v117) = 2;
        sub_2664DFDC8(v89, &dword_26629C000, v129, "siriAirPlayDeviceSearchError", 28, 2, v57, "deviceIdCount=%{public, signpost.telemetry:number1}d resolvedOutputDevicesCount=%{public, signpost.telemetry:number2}d errorCode=%{public, signpost.telemetry:number3}d errorDomain=%{public, signpost.telemetry:string1}@ enableTelemetry=YES ", 239, v117, v90);

        v120(v57, v122);
        v93 = v124;
        v94 = v134;
        (v118[0])(v124, v119, v134);
        v95 = v46;
        v96 = sub_2664DFE18();
        v97 = sub_2664E06D8();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *v98 = 138412290;
          v100 = v46;
          v101 = _swift_stdlib_bridgeErrorToNSError();
          *(v98 + 4) = v101;
          *v99 = v101;
          _os_log_impl(&dword_26629C000, v96, v97, "AirPlayRouteProvider#searchOutputDevices Failed to search for output devices: %@", v98, 0xCu);
          sub_2662E4324(v99);
          MEMORY[0x266784AD0](v99, -1, -1);
          MEMORY[0x266784AD0](v98, -1, -1);
        }

        v131(v93, v94);
        swift_beginAccess();
        if (*(v29 + 136))
        {

          sub_2662AA89C();
        }

        v137[0] = 6;
        sub_266481BC0(v137);

        return;
      }
    }

    else
    {
      v63 = sub_2664E0D88();

      v61 = v53 == 26;
      v62 = v128;
      if (!v61 || (v63 & 1) == 0 || v128 < 1)
      {
        goto LABEL_21;
      }
    }

    v128 = v45;
    swift_beginAccess();
    *(v29 + 72) = 1;
    v64 = v132;
    v65 = [v132 code];
    v66 = [v64 domain];
    v67 = sub_2664E02C8();
    v69 = v68;

    v70 = sub_2664E0858();
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_2664E34D0;
    v72 = MEMORY[0x277D83B88];
    *(v71 + 56) = MEMORY[0x277D83B88];
    v73 = MEMORY[0x277D83C10];
    *(v71 + 64) = MEMORY[0x277D83C10];
    *(v71 + 72) = v62;
    *(v71 + 32) = v127;
    *(v71 + 96) = v72;
    *(v71 + 104) = v73;
    *(v71 + 136) = v72;
    *(v71 + 144) = v73;
    *(v71 + 112) = v65;
    *(v71 + 176) = MEMORY[0x277D837D0];
    *(v71 + 184) = sub_2662C4094();
    *(v71 + 152) = v67;
    *(v71 + 160) = v69;
    sub_2664DFDF8();
    LOBYTE(v117) = 2;
    sub_2664DFDC8(v70, &dword_26629C000, v129, "siriAirPlayDeviceSearchPartialError", 35, 2, v57, "deviceIdCount=%{public, signpost.telemetry:number1}d resolvedOutputDevicesCount=%{public, signpost.telemetry:number2}d errorCode=%{public, signpost.telemetry:number3}d errorDomain=%{public, signpost.telemetry:string1}@ enableTelemetry=YES ", 239, v117, v71);

    v120(v57, v122);
    v74 = v125;
    v30 = v134;
    (v118[0])(v125, v119, v134);
    v75 = v123;
    v76 = v123;
    v77 = sub_2664DFE18();
    v78 = sub_2664E06D8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138412290;
      *(v79 + 4) = v76;
      *v80 = v75;
      v81 = v76;
      _os_log_impl(&dword_26629C000, v77, v78, "AirPlayRouteProvider#searchOutputDevices Timed out with partial discovery. We will fall through and use these partial devices, following the existing apple music behavior. Found devices: %@", v79, 0xCu);
      sub_2662E4324(v80);
      MEMORY[0x266784AD0](v80, -1, -1);
      v82 = v79;
      v74 = v125;
      MEMORY[0x266784AD0](v82, -1, -1);
    }

    else
    {
    }

    v31 = v133;
    v131(v74, v30);
    a1 = v123;
  }

  swift_beginAccess();
  v102 = *(v29 + 128);
  *(v29 + 128) = a1;

  v103 = qword_280F914E8;
  v104 = a1;
  if (v103 != -1)
  {
    swift_once();
  }

  v105 = __swift_project_value_buffer(v30, qword_280F914F0);
  swift_beginAccess();
  (*(v135 + 16))(v31, v105, v30);

  v106 = sub_2664DFE18();
  v107 = sub_2664E06C8();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v136[0] = v109;
    *v108 = 136315138;
    v110 = sub_2662A0374();
    v112 = sub_2662A320C(v110, v111, v136);
    v113 = v135;
    v114 = v112;

    *(v108 + 4) = v114;
    _os_log_impl(&dword_26629C000, v106, v107, "AirPlayRouteProvider#startAirplayDiscovery Finished searching devices, setting output devices: %s", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    MEMORY[0x266784AD0](v109, -1, -1);
    MEMORY[0x266784AD0](v108, -1, -1);

    (*(v113 + 8))(v31, v30);
  }

  else
  {

    (*(v135 + 8))(v31, v30);
  }

  if (*(v29 + 40) == 3)
  {
    if (qword_280F91468 != -1)
    {
      swift_once();
    }

    v115 = qword_280F91470;
    v136[3] = type metadata accessor for SiriKitTaskLoggingProvider();
    v136[4] = &protocol witness table for SiriKitTaskLoggingProvider;
    v136[0] = v115;
    type metadata accessor for PThreadMutex();
    swift_allocObject();

    v116 = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000017, 0x80000002664FA5C0, 1, v136);
    swift_beginAccess();
    *(v29 + 144) = v116;

    sub_2662A98AC();
  }

  swift_beginAccess();
  if (*(v29 + 136))
  {

    sub_2662AA89C();
  }
}

uint64_t sub_26647F02C(void *a1)
{
  v2 = v1;
  v84 = a1;
  v3 = sub_2664DFE08();
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  v81 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2664E0788();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2664E00B8();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v73 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v73 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v73 - v20;
  v22 = *(v2 + 16);
  if (v22)
  {
    if ((*(v22 + 40) & 0xFE) == 2)
    {
      swift_beginAccess();
      v23 = *(v22 + 128);
      if (v23)
      {
        v75 = v2;
        v24 = qword_280F914E8;

        v25 = v23;
        if (v24 != -1)
        {
          swift_once();
        }

        v26 = __swift_project_value_buffer(v9, qword_280F914F0);
        swift_beginAccess();
        v27 = v10;
        (*(v10 + 16))(v21, v26, v9);
        v28 = v25;
        v29 = sub_2664DFE18();
        v30 = sub_2664E06C8();
        v76 = v28;

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v73 = v31;
          v74 = swift_slowAlloc();
          v85[0] = v74;
          *v31 = 136315138;
          v32 = v76;
          v86 = v76;
          type metadata accessor for CFArray(0);
          v33 = v32;
          v34 = sub_2664E0318();
          LOBYTE(v32) = v30;
          v36 = sub_2662A320C(v34, v35, v85);

          v37 = v73;
          *(v73 + 1) = v36;
          v38 = v37;
          _os_log_impl(&dword_26629C000, v29, v32, "AirPlayRouteProvider#setOutputDevices Setting output devices... %s", v37, 0xCu);
          v39 = v74;
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          MEMORY[0x266784AD0](v39, -1, -1);
          MEMORY[0x266784AD0](v38, -1, -1);
        }

        (*(v27 + 8))(v21, v9);
        sub_2664E0078();
        sub_2664E0768();
        v40 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0x79616C50726941, 0xE700000000000000, v8, v6);
        (*(v79 + 8))(v6, v80);
        (*(v77 + 8))(v8, v78);
        swift_beginAccess();
        v41 = *(v22 + 32);
        *(v22 + 32) = v40;
        v42 = v40;

        swift_beginAccess();
        if (!*(v22 + 144))
        {
          if (qword_280F91468 != -1)
          {
            swift_once();
          }

          v43 = qword_280F91470;
          v85[3] = type metadata accessor for SiriKitTaskLoggingProvider();
          v85[4] = &protocol witness table for SiriKitTaskLoggingProvider;
          v85[0] = v43;
          type metadata accessor for PThreadMutex();
          swift_allocObject();

          *(v22 + 144) = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000017, 0x80000002664FA5C0, 1, v85);

          sub_2662A98AC();
        }

        LOBYTE(v85[0]) = 4;
        sub_266481BC0(v85);
        v44 = sub_2664E0848();
        if (qword_280F91508 != -1)
        {
          swift_once();
        }

        v45 = qword_280F91D48;
        v46 = v81;
        sub_2664DFDF8();
        sub_2664DFDC8(v44, &dword_26629C000, v45, "siriAirPlaySetOutputDevices", 27, 2, v46, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
        (*(v82 + 8))(v46, v83);
        v47 = v84[3];
        v48 = v84[4];
        __swift_project_boxed_opaque_existential_1(v84, v47);
        v49 = swift_allocObject();
        v50 = v76;
        v49[2] = v76;
        v49[3] = v22;
        v49[4] = v75;
        v51 = *(v48 + 112);

        v52 = v50;

        v51(v52, v42, sub_266483218, v49, v47, v48);
      }

      else
      {
        v68 = qword_280F914E8;

        if (v68 != -1)
        {
          swift_once();
        }

        v69 = __swift_project_value_buffer(v9, qword_280F914F0);
        swift_beginAccess();
        (*(v10 + 16))(v19, v69, v9);
        v70 = sub_2664DFE18();
        v71 = sub_2664E06D8();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_26629C000, v70, v71, "AirPlayRouteProvider#setOutputDevices No resolved output devices, will not be setting up routes", v72, 2u);
          MEMORY[0x266784AD0](v72, -1, -1);
        }

        else
        {
        }

        return (*(v10 + 8))(v19, v9);
      }
    }

    else
    {
      v58 = qword_280F914E8;

      if (v58 != -1)
      {
        swift_once();
      }

      v59 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      (*(v10 + 16))(v16, v59, v9);

      v60 = sub_2664DFE18();
      v61 = sub_2664E06D8();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v87[0] = v63;
        *v62 = 136315138;

        v64 = sub_2662A0374();
        v66 = v65;

        v67 = sub_2662A320C(v64, v66, v87);

        *(v62 + 4) = v67;
        _os_log_impl(&dword_26629C000, v60, v61, "AirPlayRouteProvider#setOutputDevices setOutputDevices is being triggered more than once or in wrong context %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x266784AD0](v63, -1, -1);
        MEMORY[0x266784AD0](v62, -1, -1);
      }

      else
      {
      }

      return (*(v10 + 8))(v16, v9);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v54 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v13, v54, v9);
    v55 = sub_2664DFE18();
    v56 = sub_2664E06D8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_26629C000, v55, v56, "AirPlayRouteProvider#setOutputDevices Unable to retrieve AirPlayRouteSetupContext", v57, 2u);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_26647FB58(void *a1, const __CFArray *a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v7 = sub_2664DFE38();
  v76 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v73 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v69 - v10;
  v77 = sub_2664DFE08();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a2;
  Count = CFArrayGetCount(a2);
  v15 = sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v16 = qword_280F91D48;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D83B88];
  v71 = xmmword_2664E36F0;
  *(v18 + 16) = xmmword_2664E36F0;
  v20 = MEMORY[0x277D83C10];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  *(v18 + 32) = Count;
  sub_2664DFDF8();
  sub_2664DFDC8(v15, &dword_26629C000, v16, "siriAirPlaySetOutputDevices", 27, 2, v13, "deviceCount=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 71, 2, v18);

  v23 = *(v11 + 8);
  v22 = (v11 + 8);
  v21 = v23;
  v23(v13, v77);
  if (a1)
  {
    v69 = v17;
    v70 = v13;
    v24 = MEMORY[0x277D83B88];
    *&v71 = v21;
    v72 = v16;
    v73 = v22;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v26 = v74;
    (*(v76 + 16))(v74, v25, v7);
    v27 = a1;
    v28 = sub_2664DFE18();
    v29 = sub_2664E06D8();

    v30 = v24;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v32 = v7;
      v33 = swift_slowAlloc();
      *v31 = 138412290;
      v34 = a1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_26629C000, v28, v29, "AirPlayRouteProvider#setOutputDevices Error setting output devices: %@", v31, 0xCu);
      sub_2662E4324(v33);
      v36 = v33;
      v7 = v32;
      MEMORY[0x266784AD0](v36, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v76 + 8))(v26, v7);
    swift_beginAccess();
    v37 = *(a3 + 80);
    *(a3 + 80) = a1;

    v38 = a1;
    v39 = sub_2664DE198();
    swift_beginAccess();
    *(a3 + 121) = 0;
    LOBYTE(v78[0]) = 6;
    sub_266481BC0(v78);
    swift_beginAccess();
    v40 = v72;
    v41 = v70;
    if (*(a3 + 144))
    {

      sub_2662AA89C();
    }

    v42 = CFArrayGetCount(v75);
    v43 = v39;
    v44 = [v43 code];
    v45 = [v43 domain];

    v46 = sub_2664E02C8();
    v48 = v47;

    v49 = sub_2664E0858();
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_2664E36E0;
    *(v50 + 56) = v30;
    v51 = MEMORY[0x277D83C10];
    *(v50 + 64) = MEMORY[0x277D83C10];
    *(v50 + 72) = v44;
    *(v50 + 32) = v42;
    *(v50 + 96) = v30;
    *(v50 + 104) = v51;
    *(v50 + 136) = MEMORY[0x277D837D0];
    *(v50 + 144) = sub_2662C4094();
    *(v50 + 112) = v46;
    *(v50 + 120) = v48;
    sub_2664DFDF8();
    LOBYTE(v68) = 2;
    sub_2664DFDC8(v49, &dword_26629C000, v40, "siriAirPlaySetOutputDeviceError", 31, 2, v41, "deviceCount=%{public, signpost.telemetry:number1}d errorCode=%{public, signpost.telemetry:number2}d errorDomain=%{public, signpost.telemetry:string1}@ enableTelemetry=YES ", 171, v68, v50);

    return (v71)(v41, v77);
  }

  else
  {
    v53 = v7;
    v54 = CFArrayGetCount(v75);
    v55 = sub_2664E0858();
    v56 = v21;
    v57 = swift_allocObject();
    *(v57 + 16) = v71;
    *(v57 + 56) = MEMORY[0x277D83B88];
    *(v57 + 64) = MEMORY[0x277D83C10];
    *(v57 + 32) = v54;
    sub_2664DFDF8();
    LOBYTE(v68) = 2;
    sub_2664DFDC8(v55, &dword_26629C000, v16, "siriAirPlaySetOutputDeviceSuccess", 33, 2, v13, "deviceCount=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 71, v68, v57);

    v56(v13, v77);
    swift_beginAccess();
    *(a3 + 121) = 1;
    v79[0] = 5;
    sub_266481BC0(v79);
    swift_beginAccess();
    if (*(a3 + 144))
    {

      sub_2662AA89C();
    }

    v59 = v72;
    v58 = v73;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v53, qword_280F914F0);
    swift_beginAccess();
    (*(v76 + 16))(v58, v60, v53);

    v61 = sub_2664DFE18();
    v62 = sub_2664E06C8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v78[0] = v64;
      *v63 = 136315138;
      v78[3] = *(v59 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073F28, qword_2664EF348);
      v65 = sub_2664E0318();
      v67 = sub_2662A320C(v65, v66, v78);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_26629C000, v61, v62, "AirPlayRouteProvider#setOutputDevices Finished setting output devices: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x266784AD0](v64, -1, -1);
      MEMORY[0x266784AD0](v63, -1, -1);
    }

    return (*(v76 + 8))(v58, v53);
  }
}

uint64_t sub_2664803E8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38[-v14 - 8];
  MEMORY[0x28223BE20](v13);
  v17 = &v38[-v16 - 8];
  v18 = *(v4 + 16);
  if (v18)
  {
    v38[0] = 3;

    sub_266481BC0(v38);
    sub_26647CF84(a1, a2, a3);
    sub_2664808CC();
    if (*(v18 + 40) == 6)
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v8, qword_280F914F0);
      swift_beginAccess();
      (*(v9 + 16))(v15, v19, v8);

      v20 = sub_2664DFE18();
      v21 = sub_2664E06D8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v37 = v23;
        *v22 = 136315138;

        v24 = sub_2662A0374();
        v26 = v25;

        v27 = sub_2662A320C(v24, v26, &v37);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_26629C000, v20, v21, "AirPlayRouteProvider#discoverAndSetOutputDevices Something went wrong discovering AirPlay routes while connecting to device that initiated remote execution request %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x266784AD0](v23, -1, -1);
        MEMORY[0x266784AD0](v22, -1, -1);
      }

      else
      {
      }

      return (*(v9 + 8))(v15, v8);
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v33 = __swift_project_value_buffer(v8, qword_280F914F0);
      swift_beginAccess();
      (*(v9 + 16))(v17, v33, v8);
      v34 = sub_2664DFE18();
      v35 = sub_2664E06C8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_26629C000, v34, v35, "AirPlayRouteProvider#discoverAndSetOutputDevices Starting to set AirPlay routes. Device search has been completed", v36, 2u);
        MEMORY[0x266784AD0](v36, -1, -1);
      }

      (*(v9 + 8))(v17, v8);
      sub_26647F02C(a3);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v12, v28, v8);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "AirPlayRouteProvider#discoverAndSetOutputDevices Unable to retrieve AirPlayRouteSetupContext", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_2664808CC()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = *(v0 + 16);
  if (v14)
  {
    swift_beginAccess();
    if (*(v14 + 136))
    {
      v15 = qword_280F914E8;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v1, qword_280F914F0);
      swift_beginAccess();
      v37 = *(v2 + 16);
      v37(v13, v16, v1);
      v17 = sub_2664DFE18();
      v18 = sub_2664E06C8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v36 = v2;
        v20 = v19;
        *v19 = 0;
        _os_log_impl(&dword_26629C000, v17, v18, "AirPlayRouteProvider#waitForDeviceDiscovery Waiting to finish device search...", v19, 2u);
        v21 = v20;
        v2 = v36;
        MEMORY[0x266784AD0](v21, -1, -1);
      }

      v22 = *(v2 + 8);
      v22(v13, v1);
      sub_2662A98AC();
      v37(v11, v16, v1);
      v23 = sub_2664DFE18();
      v24 = sub_2664E06C8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_26629C000, v23, v24, "AirPlayRouteProvider#waitForDeviceDiscovery Finished waiting for device search", v25, 2u);
        MEMORY[0x266784AD0](v25, -1, -1);
      }

      v22(v11, v1);
      sub_2662AA89C();
    }

    else
    {
      v31 = qword_280F914E8;

      if (v31 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v1, qword_280F914F0);
      swift_beginAccess();
      (*(v2 + 16))(v8, v32, v1);
      v33 = sub_2664DFE18();
      v34 = sub_2664E06C8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_26629C000, v33, v34, "AirPlayRouteProvider#waitForDeviceDiscovery Not waiting for device search since lock is not set", v35, 2u);
        MEMORY[0x266784AD0](v35, -1, -1);
      }

      else
      {
      }

      return (*(v2 + 8))(v8, v1);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v1, qword_280F914F0);
    swift_beginAccess();
    (*(v2 + 16))(v5, v27, v1);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "AirPlayRouteProvider#waitForDeviceDiscovery Unable to retrieve AirPlayRouteSetupContext", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_266480DF4()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = *(v0 + 16);
  if (v14)
  {
    swift_beginAccess();
    if (*(v14 + 144))
    {
      v15 = qword_280F914E8;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v1, qword_280F914F0);
      swift_beginAccess();
      v37 = *(v2 + 16);
      v37(v13, v16, v1);
      v17 = sub_2664DFE18();
      v18 = sub_2664E06C8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v36 = v2;
        v20 = v19;
        *v19 = 0;
        _os_log_impl(&dword_26629C000, v17, v18, "AirPlayRouteProvider#waitForSetOutputDevices Waiting to finish route setup...", v19, 2u);
        v21 = v20;
        v2 = v36;
        MEMORY[0x266784AD0](v21, -1, -1);
      }

      v22 = *(v2 + 8);
      v22(v13, v1);
      sub_2662A98AC();
      v37(v11, v16, v1);
      v23 = sub_2664DFE18();
      v24 = sub_2664E06C8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_26629C000, v23, v24, "AirPlayRouteProvider#waitForSetOutputDevices Finished waiting for route setup", v25, 2u);
        MEMORY[0x266784AD0](v25, -1, -1);
      }

      v22(v11, v1);
      sub_2662AA89C();
    }

    else
    {
      v31 = qword_280F914E8;

      if (v31 != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v1, qword_280F914F0);
      swift_beginAccess();
      (*(v2 + 16))(v8, v32, v1);
      v33 = sub_2664DFE18();
      v34 = sub_2664E06C8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_26629C000, v33, v34, "AirPlayRouteProvider#waitForSetOutputDevices Not waiting for route setup since lock is not set", v35, 2u);
        MEMORY[0x266784AD0](v35, -1, -1);
      }

      else
      {
      }

      return (*(v2 + 8))(v8, v1);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v1, qword_280F914F0);
    swift_beginAccess();
    (*(v2 + 16))(v5, v27, v1);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "AirPlayRouteProvider#waitForSetOutputDevices Unable to retrieve AirPlayRouteSetupContext", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }
}

void sub_2664813F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1 = sub_2664E02A8();
  [v0 setName_];

  qword_280073EF0 = v0;
}

uint64_t sub_26648147C()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0098();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001FLL, 0x80000002664FAC10, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073F00 = v8;
  return result;
}

uint64_t sub_266481614()
{
  v0 = sub_2664E0018();
  __swift_allocate_value_buffer(v0, qword_280073F08);
  *__swift_project_value_buffer(v0, qword_280073F08) = 60;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

id sub_2664816A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2662A320C(a1, a2, v15);
    _os_log_impl(&dword_26629C000, v9, v10, "AirPlayRouteSetupContext#sharedCompletion Removing old context with refId: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (qword_280071C88 != -1)
  {
    swift_once();
  }

  v13 = qword_280073EF0;
  [qword_280073EF0 lock];
  if (qword_280071C90 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_266407AD0(a1, a2);
  swift_endAccess();

  return [v13 unlock];
}

id static AirPlayRouteSetupContext.remove(refId:)(id result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (qword_280071C88 != -1)
    {
      swift_once();
    }

    v4 = qword_280073EF0;
    [qword_280073EF0 lock];
    if (qword_280071C90 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_266407AD0(v3, a2);
    swift_endAccess();

    return [v4 unlock];
  }

  return result;
}

void sub_266481A80(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

void *sub_266481AD8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_266481B1C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_266481BC0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  LODWORD(v11) = *a1;
  if (*(v2 + 40) >= v11)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v10, v28, v4);

    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v44 = v11;
      v11 = v31;
      v43 = swift_slowAlloc();
      v46 = v43;
      *v11 = 136315650;
      v45 = *(v2 + 40);
      v32 = sub_2664E0318();
      v34 = sub_2662A320C(v32, v33, &v46);

      *(v11 + 4) = v34;
      *(v11 + 12) = 2080;
      v45 = v44;
      v35 = sub_2664E0318();
      v37 = sub_2662A320C(v35, v36, &v46);

      *(v11 + 14) = v37;
      *(v11 + 22) = 2080;
      v38 = sub_2662A0374();
      v40 = sub_2662A320C(v38, v39, &v46);

      *(v11 + 24) = v40;
      _os_log_impl(&dword_26629C000, v29, v30, "AirPlayRouteSetupContext#state Invalid state being set, old = %s, new = %s, context: %s", v11, 0x20u);
      v41 = v43;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v41, -1, -1);
      v42 = v11;
      LOBYTE(v11) = v44;
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    result = (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v12, v4);

    v13 = sub_2664DFE18();
    v14 = sub_2664E06C8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v44 = v11;
      v11 = v15;
      v43 = swift_slowAlloc();
      v46 = v43;
      *v11 = 136315650;
      v45 = *(v2 + 40);
      v16 = sub_2664E0318();
      v18 = sub_2662A320C(v16, v17, &v46);

      *(v11 + 4) = v18;
      *(v11 + 12) = 2080;
      v45 = v44;
      v19 = sub_2664E0318();
      v21 = sub_2662A320C(v19, v20, &v46);

      *(v11 + 14) = v21;
      *(v11 + 22) = 2080;
      v22 = sub_2662A0374();
      v24 = sub_2662A320C(v22, v23, &v46);

      *(v11 + 24) = v24;
      _os_log_impl(&dword_26629C000, v13, v14, "AirPlayRouteSetupContext#state Valid state being set, old = %s, new = %s, context: %s", v11, 0x20u);
      v25 = v43;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v25, -1, -1);
      v26 = v11;
      LOBYTE(v11) = v44;
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    result = (*(v5 + 8))(v8, v4);
  }

  *(v2 + 40) = v11;
  return result;
}

uint64_t (*sub_266482094(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return sub_2664820C0;
}

uint64_t sub_2664820C0(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return sub_266481BC0(v2);
}

uint64_t sub_266482108(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

double sub_266482168()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2664821A0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

void sub_266482238(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;
}

void *sub_266482298()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_2664822E0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void sub_266482378(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
  v5 = v2;
}

void *sub_2664823D8()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_266482420(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

void sub_26648257C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
  v5 = v2;
}

void *sub_2664825DC()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void sub_266482624(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

void sub_2664827B8(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2 & 1;
}

void sub_266482894(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2 & 1;
}

void sub_2664829FC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
  v5 = v2;
}

void *sub_266482A54()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

void sub_266482A98(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_266482B30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 136) = v2;
}

double sub_266482B90()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_266482BC8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
}

uint64_t sub_266482C60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;
}

double sub_266482CC0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_266482CF8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

id *AirPlayRouteSetupContext.deinit()
{

  return v0;
}

uint64_t AirPlayRouteSetupContext.__deallocating_deinit()
{
  AirPlayRouteSetupContext.deinit();

  return swift_deallocClassInstance();
}

SiriAudioSupport::AirPlayRouteSetupState_optional __swiftcall AirPlayRouteSetupState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_266482E64(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void sub_266482EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_2664DFE18();
  v12 = sub_2664E06B8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x2667834D0](a1, MEMORY[0x277D837D0]);
    v18 = sub_2662A320C(v16, v17, aBlock);
    v27 = v6;
    v19 = a3;
    v20 = v18;

    *(v14 + 4) = v20;
    a3 = v19;
    _os_log_impl(&dword_26629C000, v11, v12, "AirPlayRouteProvider#decodeHashedRouteUIDs Decoding hashedRouteUIDs: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    v21 = v14;
    a2 = v28;
    MEMORY[0x266784AD0](v21, -1, -1);

    (*(v7 + 8))(v9, v27);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v22 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;

  v24 = sub_2664E0488();
  aBlock[4] = sub_266483C84;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26648C248;
  aBlock[3] = &block_descriptor_62_0;
  v25 = _Block_copy(aBlock);

  [v22 decodeHashedRouteUIDs:v24 completion:v25];
  _Block_release(v25);
}

unint64_t sub_266483228()
{
  result = qword_280073F20;
  if (!qword_280073F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073F20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPlayRouteSetupState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPlayRouteSetupState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_266483C94(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_2664DFE18();
  v8 = sub_2664E06E8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = (*(*a1 + 104))(v10);
    v13 = sub_2662A320C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26629C000, v7, v8, "RemoteSongPlaybackHandler#collectionID Getting collectionID for %{public}s. Returning nil for song or list of songs", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266784AD0](v10, -1, -1);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_266483EDC(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_266484174(*v11, a2, v15, v19, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t sub_266484174(uint64_t a1, void *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v63 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v82[3] = v10;
  v82[4] = &off_2877F3740;
  v82[0] = a1;
  v81[3] = &type metadata for PlaybackStarter;
  v81[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v81[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v80[3] = &type metadata for PlaybackQueueLocationProvider;
  v80[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v80[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v82, v79);
  sub_2662A5550(a2, v78);
  sub_2662A5550(v81, v77);
  sub_2662A5550(v80, v76);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v79, v79[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
  MEMORY[0x28223BE20](v21);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
  MEMORY[0x28223BE20](v25);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v19;
  v75[3] = v10;
  v75[4] = &off_2877F3740;
  v75[0] = v29;
  v74[3] = &type metadata for PlaybackStarter;
  v74[4] = &off_2877EE098;
  v30 = swift_allocObject();
  v74[0] = v30;
  v31 = v23[3];
  v30[3] = v23[2];
  v30[4] = v31;
  v30[5] = v23[4];
  v32 = v23[1];
  v30[1] = *v23;
  v30[2] = v32;
  v72 = &type metadata for PlaybackQueueLocationProvider;
  v73 = &off_2877E8100;
  v33 = swift_allocObject();
  *&v71 = v33;
  v34 = v27[3];
  v33[3] = v27[2];
  v33[4] = v34;
  v33[5] = v27[4];
  v35 = v27[1];
  v33[1] = *v27;
  v33[2] = v35;
  sub_2662A5550(v75, a5 + 16);
  sub_2662A5550(v78, a5 + 56);
  sub_2662A5550(v74, a5 + 104);
  sub_2662A5550(v75, v70);
  sub_2662A5550(v78, v69);
  sub_2662A5550(v74, v68);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v70, v70[3]);
  MEMORY[0x28223BE20](v36);
  v38 = (&v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  MEMORY[0x28223BE20](v40);
  v42 = (&v62 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v38;
  v67[3] = v10;
  v67[4] = &off_2877F3740;
  v66 = &off_2877EE098;
  v67[0] = v44;
  v65 = &type metadata for PlaybackStarter;
  v45 = swift_allocObject();
  v64[0] = v45;
  v46 = v42[3];
  v45[3] = v42[2];
  v45[4] = v46;
  v45[5] = v42[4];
  v47 = v42[1];
  v45[1] = *v42;
  v45[2] = v47;
  type metadata accessor for LocalPlaybackHelper();
  v48 = swift_allocObject();
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v67, v10);
  MEMORY[0x28223BE20](v49);
  v51 = (&v62 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x28223BE20](v53);
  v55 = (&v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v51;
  v48[5] = v10;
  v48[6] = &off_2877F3740;
  v48[2] = v57;
  v48[15] = &type metadata for PlaybackStarter;
  v48[16] = &off_2877EE098;
  v58 = swift_allocObject();
  v48[12] = v58;
  v59 = v55[3];
  v58[3] = v55[2];
  v58[4] = v59;
  v58[5] = v55[4];
  v60 = v55[1];
  v58[1] = *v55;
  v58[2] = v60;
  sub_2662A8618(v69, (v48 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  *(a5 + 96) = v48;
  sub_2662A8618(&v71, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  return a5;
}

uint64_t sub_266484934()
{
  result = sub_26639EF84(&unk_2877E5518);
  qword_280F90DE0 = result;
  return result;
}

uint64_t sub_26648495C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073F30, &qword_2664EF3F0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000019;
  *(inited + 16) = xmmword_2664EF3E0;
  *(inited + 40) = 0x80000002664F0E90;
  *(inited + 48) = sub_26639EF84(&unk_2877E5570);
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000002664F0E30;
  if (qword_280F90DD8 != -1)
  {
    swift_once();
  }

  *(inited + 72) = qword_280F90DE0;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000002664F0E70;

  *(inited + 96) = sub_26639EF84(&unk_2877E5598);
  *(inited + 104) = 0xD000000000000014;
  *(inited + 112) = 0x80000002664F0E50;
  *(inited + 120) = sub_26639EF84(&unk_2877E55E0);
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x80000002664F0ED0;
  *(inited + 144) = sub_26639EF84(&unk_2877E5618);
  v1 = sub_266386798(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073F38, qword_2664EF3F8);
  result = swift_arrayDestroy();
  off_280F90DF8 = v1;
  return result;
}

unint64_t *sub_266484AF0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_266484CC8(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_266484B68(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_266484CC8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_266484AF0(v8, v4, v2);
  result = MEMORY[0x266784AD0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_266484CC8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_2664D0018(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_2664D0018(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266484DB4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v13, v6);
    v14 = sub_2664DFE18();
    v15 = sub_2664E06C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26629C000, v14, v15, "VisionQuest21#canSupportRequest missing media type --> false", v16, 2u);
      MEMORY[0x266784AD0](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    v49 = MEMORY[0x277D84F90];
    v19 = *(a3 + 16);
    v47 = v6;
    if (v19)
    {
      v45 = a3;
      v46 = &v44 - v11;
      v20 = (a3 + 40);
      v21 = MEMORY[0x277D84FA0];
      do
      {
        v24 = *(v20 - 1);
        v23 = *v20;
        v25 = qword_280F90DF0;

        if (v25 != -1)
        {
          swift_once();
        }

        v26 = off_280F90DF8;
        if (*(off_280F90DF8 + 2) && (v27 = sub_2662A3E98(v24, v23), (v28 & 1) != 0))
        {
          v22 = *(v26[7] + 8 * v27);
        }

        else
        {
          v22 = v21;
        }

        sub_2662F9E94(v22);
        v20 += 2;
        --v19;
      }

      while (v19);
      v18 = v49;
      v12 = v46;
      v6 = v47;
      a3 = v45;
    }

    v29 = *(v18 + 16);
    v30 = 32;
    do
    {
      v31 = v29;
      v32 = v29-- != 0;
      v17 = v32;
      if (!v32)
      {
        break;
      }

      v33 = *(v18 + v30);
      v30 += 8;
    }

    while (v33 != a1);

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v12, v34, v6);

    v35 = sub_2664DFE18();
    v36 = sub_2664E06E8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v31 != 0;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v38 = 67109378;
      *(v38 + 4) = v37;
      *(v38 + 8) = 2080;
      v40 = MEMORY[0x2667834D0](a3, MEMORY[0x277D837D0]);
      v42 = sub_2662A320C(v40, v41, &v48);

      *(v38 + 10) = v42;
      _os_log_impl(&dword_26629C000, v35, v36, "VisionQuest21#canSupportRequest: %{BOOL}d for categories: %s", v38, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);

      (*(v7 + 8))(v12, v47);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }
  }

  return v17;
}

unint64_t sub_266485230(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_2662A3E98(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_266450E14(v15, v5 & 1);
    result = sub_2662A3E98(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_2664E0DD8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_12:
    v18[(result >> 6) + 8] |= 1 << result;
    v22 = (v18[6] + 16 * result);
    *v22 = v8;
    v22[1] = v7;
    *(v18[7] + 8 * result) = v9;
    v23 = v18[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v18[2] = v24;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_15;
    }

    return result;
  }

  v21 = result;
  sub_26645410C();
  result = v21;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v19 = result;
  v20 = *(v18[7] + 8 * result);

  if (__OFADD__(v20, v9))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  *(v18[7] + 8 * v19) = v20 + v9;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_15:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v28 = *a3;

      result = sub_2662A3E98(v7, v6);
      v30 = v28[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_25;
      }

      v8 = v29;
      if (v28[3] < v32)
      {
        sub_266450E14(v32, 1);
        result = sub_2662A3E98(v7, v6);
        if ((v8 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      v34 = *a3;
      if (v8)
      {
        v35 = result;
        v36 = *(v34[7] + 8 * result);

        if (__OFADD__(v36, v9))
        {
          goto LABEL_27;
        }

        *(v34[7] + 8 * v35) = v36 + v9;
      }

      else
      {
        v34[(result >> 6) + 8] |= 1 << result;
        v25 = (v34[6] + 16 * result);
        *v25 = v7;
        v25[1] = v6;
        *(v34[7] + 8 * result) = v9;
        v26 = v34[2];
        v14 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        v34[2] = v27;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

BOOL sub_2664854AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
    v7 = *(a2 + 16);
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = (v5 + 16 * v4);
    v11 = *v9;
    v10 = v9[1];
    sub_2664E0E68();

    sub_2664E0368();
    v12 = sub_2664E0EB8();
    v13 = -1 << *(a2 + 32);
    v14 = v12 & ~v13;
    if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
LABEL_13:

      return 0;
    }

    ++v4;
    v15 = ~v13;
    while (1)
    {
      v16 = (*(a2 + 48) + 16 * v14);
      v17 = *v16 == v11 && v16[1] == v10;
      if (v17 || (sub_2664E0D88() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  while (v4 != v2);
  return v8;
}

uint64_t sub_2664855EC(uint64_t a1)
{
  v4 = sub_2664DFE38();
  v97 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v90 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  *&v92 = v89 - v8;
  MEMORY[0x28223BE20](v7);
  v94 = (v89 - v9);
  v10 = *(a1 + 64);
  v98 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v96 = 0;
  v17 = MEMORY[0x277D84F90];
  v99 = v15;
  while (v13)
  {
LABEL_10:
    v19 = *(*(v15 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v13)))));
    v20 = *(v19 + 16);
    v1 = *(v17 + 2);
    v2 = v1 + v20;
    if (__OFADD__(v1, v20))
    {
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      swift_once();
      goto LABEL_34;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v2 > *(v17 + 3) >> 1)
    {
      if (v1 <= v2)
      {
        v22 = v1 + v20;
      }

      else
      {
        v22 = v1;
      }

      v17 = sub_2663846F4(isUniquelyReferenced_nonNull_native, v22, 1, v17);
    }

    v13 &= v13 - 1;
    if (*(v19 + 16))
    {
      if ((*(v17 + 3) >> 1) - *(v17 + 2) < v20)
      {
        goto LABEL_75;
      }

      swift_arrayInitWithCopy();

      v15 = v99;
      if (v20)
      {
        v23 = *(v17 + 2);
        v24 = __OFADD__(v23, v20);
        v25 = v23 + v20;
        if (v24)
        {
          goto LABEL_77;
        }

        *(v17 + 2) = v25;
      }
    }

    else
    {

      v15 = v99;
      if (v20)
      {
        goto LABEL_72;
      }
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if (v18 >= v14)
    {
      break;
    }

    v13 = *(v98 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  v26 = *(v17 + 2);
  v91 = v4;
  if (v26)
  {
    v101[0] = MEMORY[0x277D84F90];
    sub_2662FD1D0(0, v26, 0);
    v27 = v101[0];
    v95 = v17;
    v28 = (v17 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      v101[0] = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);

      if (v32 >= v31 >> 1)
      {
        sub_2662FD1D0((v31 > 1), v32 + 1, 1);
        v27 = v101[0];
      }

      *(v27 + 16) = v32 + 1;
      v33 = (v27 + 24 * v32);
      v33[4] = v29;
      v33[5] = v30;
      v33[6] = 1;
      v28 += 2;
      --v26;
    }

    while (v26);

    v4 = v91;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v17 = v97;
  v13 = v94;
  if (*(v27 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
    v34 = sub_2664E0C98();
  }

  else
  {
    v34 = MEMORY[0x277D84F98];
  }

  v101[0] = v34;
  v1 = v96;
  sub_266485230(v27, 1, v101);

  if (v1)
  {

    __break(1u);
    return result;
  }

  v2 = v101[0];
  if (qword_280F914E8 != -1)
  {
    goto LABEL_79;
  }

LABEL_34:
  v35 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v95 = *(v17 + 2);
  v96 = v17 + 16;
  (v95)(v13, v35, v4);

  v36 = sub_2664DFE18();
  v37 = sub_2664E06C8();

  v38 = os_log_type_enabled(v36, v37);
  v93 = v35;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v100 = v40;
    *v39 = 136315138;
    v41 = sub_2664E01D8();
    v42 = v13;
    v44 = sub_2662A320C(v41, v43, &v100);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_26629C000, v36, v37, "VisionQuest21#uniqueProviders category counts: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v17 = v97;
    MEMORY[0x266784AD0](v40, -1, -1);
    v45 = v39;
    v35 = v93;
    v46 = v91;
    MEMORY[0x266784AD0](v45, -1, -1);

    v47 = *(v17 + 1);
    v48 = v42;
    v4 = v46;
    v49 = v46;
  }

  else
  {

    v47 = *(v17 + 1);
    v48 = v13;
    v49 = v4;
  }

  v94 = v47;
  v47(v48, v49);
  v50 = v92;

  sub_266484B68(v51);

  v52 = sub_26639F100();
  (v95)(v50, v35, v4);
  v53 = sub_2664DFE18();
  v54 = sub_2664E06C8();
  v55 = os_log_type_enabled(v53, v54);
  v89[0] = v1;
  v89[1] = v2;
  if (v55)
  {
    v1 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v100 = v56;
    *v1 = 136315138;
    v57 = sub_2664E0618();
    v59 = v50;
    v60 = sub_2662A320C(v57, v58, &v100);

    *(v1 + 1) = v60;
    _os_log_impl(&dword_26629C000, v53, v54, "VisionQuest21#uniqueProviders unique categories: %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x266784AD0](v56, -1, -1);
    MEMORY[0x266784AD0](v1, -1, -1);

    v61 = v59;
  }

  else
  {

    v61 = v50;
  }

  v94(v61, v4);
  v62 = v99;
  v63 = 1 << *(v99 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v2 = v64 & *(v99 + 64);
  v13 = (v63 + 63) >> 6;

  v65 = 0;
  v66 = MEMORY[0x277D84F90];
  v92 = xmmword_2664E36F0;
  while (v2)
  {
LABEL_49:
    v68 = __clz(__rbit64(v2)) | (v65 << 6);
    v69 = *(*(v62 + 56) + 8 * v68);
    if (!*(v69 + 16))
    {
      goto LABEL_53;
    }

    v70 = (*(v62 + 48) + 16 * v68);
    v72 = *v70;
    v71 = v70[1];

    if (!sub_2664854AC(v69, v52))
    {

LABEL_53:
      v1 = MEMORY[0x277D84F90];
      goto LABEL_54;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
    v1 = swift_allocObject();
    *(v1 + 1) = v92;
    *(v1 + 4) = v72;
    *(v1 + 5) = v71;

LABEL_54:
    v73 = *(v1 + 2);
    v74 = *(v66 + 2);
    v17 = (v74 + v73);
    if (__OFADD__(v74, v73))
    {
      goto LABEL_73;
    }

    v75 = swift_isUniquelyReferenced_nonNull_native();
    if (!v75 || v17 > *(v66 + 3) >> 1)
    {
      if (v74 <= v17)
      {
        v76 = v74 + v73;
      }

      else
      {
        v76 = v74;
      }

      v66 = sub_2663846F4(v75, v76, 1, v66);
    }

    v62 = v99;
    v2 &= v2 - 1;
    if (*(v1 + 2))
    {
      if ((*(v66 + 3) >> 1) - *(v66 + 2) < v73)
      {
        goto LABEL_76;
      }

      swift_arrayInitWithCopy();

      if (v73)
      {
        v77 = *(v66 + 2);
        v24 = __OFADD__(v77, v73);
        v78 = v77 + v73;
        if (v24)
        {
          goto LABEL_78;
        }

        *(v66 + 2) = v78;
      }
    }

    else
    {

      if (v73)
      {
        goto LABEL_74;
      }
    }
  }

  while (1)
  {
    v67 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      goto LABEL_70;
    }

    if (v67 >= v13)
    {
      break;
    }

    v2 = *(v98 + 8 * v67);
    ++v65;
    if (v2)
    {
      v65 = v67;
      goto LABEL_49;
    }
  }

  v79 = sub_26639EB98(v66);

  v80 = v90;
  (v95)(v90, v93, v4);

  v81 = sub_2664DFE18();
  v82 = sub_2664E06C8();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v100 = v84;
    *v83 = 136315138;
    v85 = sub_2664E0618();
    v87 = sub_2662A320C(v85, v86, &v100);

    *(v83 + 4) = v87;
    _os_log_impl(&dword_26629C000, v81, v82, "VisionQuest21#uniqueProviders unique: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    MEMORY[0x266784AD0](v84, -1, -1);
    MEMORY[0x266784AD0](v83, -1, -1);
  }

  v94(v80, v4);
  return v79;
}

uint64_t sub_266485FDC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v114 = a8;
  v121 = a7;
  v119 = a1;
  v19 = sub_2664DFE38();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v113 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v117 = &v111 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v115 = &v111 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v120 = &v111 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v116 = &v111 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v111 - v31;
  v33 = *a2;
  v34 = a2[1];
  LODWORD(a3) = sub_2663CD060(v33, v34, a3);
  v35 = sub_2663CD060(v33, v34, a4);
  LOBYTE(a4) = v35;
  v122 = v33;
  v123 = a5;
  v118 = a3;
  if ((a3 & 1) == 0)
  {
    v13 = 0.0;
    if ((v35 & 1) == 0)
    {
      v45 = 1;
      v37 = v19;
      goto LABEL_17;
    }

    v37 = v19;
    goto LABEL_10;
  }

  if (!*(a5 + 16))
  {
    __break(1u);
    goto LABEL_81;
  }

  v13 = *(a5 + 32);
  v14 = 0.0;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v13 = v13 + v14;
    v37 = v19;
    v38 = __swift_project_value_buffer(v19, qword_280F914F0);
    swift_beginAccess();
    (*(v20 + 16))(v32, v38, v19);

    v39 = v20;
    v40 = sub_2664DFE18();
    v41 = sub_2664E06C8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v112 = a6;
      v43 = v42;
      v19 = swift_slowAlloc();
      v125[0] = v19;
      *v43 = 136315394;
      *(v43 + 4) = sub_2662A320C(v122, v34, v125);
      *(v43 + 12) = 2048;
      *(v43 + 14) = v13;
      _os_log_impl(&dword_26629C000, v40, v41, "VisionQuest21#vq21 support_flag for %s, score: %f", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x266784AD0](v19, -1, -1);
      v44 = v43;
      a6 = v112;
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    (*(v39 + 8))(v32, v37);
    v20 = v39;
    if (a4)
    {
LABEL_10:
      if (*(v123 + 16) < 2uLL)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v14 = *(v123 + 40);
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v13 = v13 + v14;
      v46 = __swift_project_value_buffer(v37, qword_280F914F0);
      swift_beginAccess();
      v47 = v116;
      (*(v20 + 16))(v116, v46, v37);

      a4 = sub_2664DFE18();
      v32 = sub_2664E06C8();

      if (os_log_type_enabled(a4, v32))
      {
        v19 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v125[0] = v48;
        *v19 = 136315394;
        *(v19 + 4) = sub_2662A320C(v122, v34, v125);
        *(v19 + 12) = 2048;
        *(v19 + 14) = v13;
        _os_log_impl(&dword_26629C000, a4, v32, "VisionQuest21#vq21 unicorn_flag for %s, score: %f", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x266784AD0](v48, -1, -1);
        MEMORY[0x266784AD0](v19, -1, -1);
      }

      (*(v20 + 8))(v47, v37);
      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

LABEL_17:
    v49 = v120;
    if ((sub_2663CD060(v122, v34, a6) & 1) == 0)
    {
      goto LABEL_24;
    }

    if (*(v123 + 16) >= 3uLL)
    {
      break;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

  v50 = *(v123 + 48);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = v13 + v50;
  v51 = __swift_project_value_buffer(v37, qword_280F914F0);
  swift_beginAccess();
  (*(v20 + 16))(v49, v51, v37);

  v52 = sub_2664DFE18();
  v53 = sub_2664E06C8();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = v49;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v125[0] = v56;
    *v55 = 136315394;
    *(v55 + 4) = sub_2662A320C(v122, v34, v125);
    *(v55 + 12) = 2048;
    *(v55 + 14) = v13;
    _os_log_impl(&dword_26629C000, v52, v53, "VisionQuest21#vq21 support_unicorn_match for %s, score: %f", v55, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x266784AD0](v56, -1, -1);
    MEMORY[0x266784AD0](v55, -1, -1);

    (*(v20 + 8))(v54, v37);
  }

  else
  {

    (*(v20 + 8))(v49, v37);
  }

LABEL_24:
  v57 = v121;
  if (!v121)
  {
    v80 = v114;
    v81 = 0.0;
    if (*(v114 + 16))
    {
      v61 = v122;
      v82 = sub_2662A3E98(v122, v34);
      v83 = v115;
      if (v84)
      {
        v81 = *(*(v80 + 56) + 8 * v82);
      }
    }

    else
    {
      v61 = v122;
      v83 = v115;
    }

    if (*(v123 + 16) < 4uLL)
    {
      __break(1u);
    }

    else
    {
      v104 = *(v123 + 56);
      v105 = 0.0;
      if (*(a9 + 16))
      {
        v106 = sub_2662A3E98(v61, v34);
        if (v107)
        {
          v105 = *(*(a9 + 56) + 8 * v106);
        }
      }

      v81 = v81 * v104 + v105;
      if (qword_280F914E8 == -1)
      {
LABEL_75:
        v74 = v13 + v81;
        v108 = __swift_project_value_buffer(v37, qword_280F914F0);
        swift_beginAccess();
        (*(v20 + 16))(v83, v108, v37);

        v99 = sub_2664DFE18();
        v100 = sub_2664E06C8();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v124 = v102;
          *v101 = 136315394;
          *(v101 + 4) = sub_2662A320C(v61, v34, &v124);
          *(v101 + 12) = 2048;
          *(v101 + 14) = v74;
          v103 = "VisionQuest21#vq21 type unknown for %s, score: %f";
          goto LABEL_77;
        }

LABEL_78:

        (*(v20 + 8))(v83, v37);
        goto LABEL_79;
      }
    }

    swift_once();
    goto LABEL_75;
  }

  if (qword_280F90DD8 != -1)
  {
    swift_once();
    v57 = v121;
  }

  result = sub_2663CD2F0(v57, qword_280F90DE0);
  v59 = *(a10 + 16);
  v60 = 0.0;
  if ((v45 & v118 & result) != 1)
  {
    v61 = v122;
    if (v59)
    {
      result = sub_2662A3E98(v122, v34);
      if (v85)
      {
        v60 = *(*(a10 + 56) + 8 * result);
      }
    }

    v86 = v123;
    v87 = *(v123 + 16);
    if (v87 < 8)
    {
      goto LABEL_87;
    }

    v88 = *(v123 + 88);
    v89 = 0.0;
    if (*(a9 + 16))
    {
      result = sub_2662A3E98(v61, v34);
      v86 = v123;
      if (v90)
      {
        v89 = *(*(a9 + 56) + 8 * result);
      }
    }

    if (v87 == 8)
    {
      goto LABEL_89;
    }

    v91 = v86[12];
    v92 = 0.0;
    v93 = 0.0;
    if (a13)
    {
      if (v61 == a12 && v34 == a13 || (result = sub_2664E0D88(), v86 = v123, (result & 1) != 0))
      {
        if (v87 < 0xA)
        {
          __break(1u);
          return result;
        }

        v93 = v86[13];
      }
    }

    if (*(a11 + 16))
    {
      v94 = sub_2662A3E98(v61, v34);
      v86 = v123;
      if (v95)
      {
        v92 = *(*(a11 + 56) + 8 * v94);
      }
    }

    if (v87 < 0xB)
    {
      goto LABEL_91;
    }

    v96 = v13 + v60 * v88 + v89 * v91 + v93;
    v97 = v92 * v86[14];
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v74 = v96 + v97;
    v98 = __swift_project_value_buffer(v37, qword_280F914F0);
    swift_beginAccess();
    v83 = v113;
    (*(v20 + 16))(v113, v98, v37);

    v99 = sub_2664DFE18();
    v100 = sub_2664E06C8();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v124 = v102;
      *v101 = 136315394;
      *(v101 + 4) = sub_2662A320C(v61, v34, &v124);
      *(v101 + 12) = 2048;
      *(v101 + 14) = v74;
      v103 = "VisionQuest21#vq21 all other type cases for %s, score: %f";
LABEL_77:
      _os_log_impl(&dword_26629C000, v99, v100, v103, v101, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      MEMORY[0x266784AD0](v102, -1, -1);
      MEMORY[0x266784AD0](v101, -1, -1);
      goto LABEL_78;
    }

    goto LABEL_78;
  }

  v61 = v122;
  if (v59)
  {
    v62 = sub_2662A3E98(v122, v34);
    if (v63)
    {
      v60 = *(*(a10 + 56) + 8 * v62);
    }
  }

  v64 = v123;
  v65 = *(v123 + 16);
  if (v65 < 5)
  {
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v66 = *(v123 + 64);
  v67 = 0.0;
  if (*(a9 + 16))
  {
    v68 = sub_2662A3E98(v61, v34);
    v64 = v123;
    if (v69)
    {
      v67 = *(*(a9 + 56) + 8 * v68);
    }
  }

  if (v65 == 5)
  {
    goto LABEL_88;
  }

  v70 = *(v64 + 72);
  v71 = 0.0;
  if (*(a11 + 16))
  {
    v72 = sub_2662A3E98(v61, v34);
    v64 = v123;
    if (v73)
    {
      v71 = *(*(a11 + 56) + 8 * v72);
    }
  }

  if (v65 >= 7)
  {
    v13 = v13 + v60 * v66 + v67 * v70;
    v60 = v71 * *(v64 + 80);
    if (qword_280F914E8 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_92;
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  swift_once();
LABEL_41:
  v74 = v13 + v60;
  v75 = __swift_project_value_buffer(v37, qword_280F914F0);
  swift_beginAccess();
  (*(v20 + 16))(v117, v75, v37);

  v76 = sub_2664DFE18();
  v77 = sub_2664E06C8();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v124 = v79;
    *v78 = 136315394;
    *(v78 + 4) = sub_2662A320C(v61, v34, &v124);
    *(v78 + 12) = 2048;
    *(v78 + 14) = v74;
    _os_log_impl(&dword_26629C000, v76, v77, "VisionQuest21#vq21 music type contains for %s, score: %f", v78, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    MEMORY[0x266784AD0](v79, -1, -1);
    MEMORY[0x266784AD0](v78, -1, -1);
  }

  (*(v20 + 8))(v117, v37);
LABEL_79:
  v109 = v119;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v109;
  result = sub_26634F084(v61, v34, isUniquelyReferenced_nonNull_native, v74);
  *v109 = v124;
  return result;
}

uint64_t AtomicArray.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AtomicArray.init(name:)(a1, a2);
  return v4;
}

void *AtomicArray.init(name:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v3[2] = sub_2664E04E8();
  v3[4] = a1;
  v3[5] = a2;
  v6 = qword_280F91468;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280F91470;
  v9[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v9[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v9[0] = v7;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v3[3] = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v9);
  return v3;
}

void *AtomicArray.deinit()
{

  return v0;
}

uint64_t AtomicArray.__deallocating_deinit()
{
  AtomicArray.deinit();

  return swift_deallocClassInstance();
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioIntentDetails.from(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2664DFE38();
  MEMORY[0x28223BE20](v6);
  v7 = sub_2664DFC68();
  MEMORY[0x28223BE20](v7 - 8);
  if (a2 >> 60 == 15)
  {
    v10 = sub_2664DE5E8();
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }

  else
  {
    v8 = sub_2664DE5E8();
    sub_26648736C(a1, a2);
    sub_2663C50C4(a1, a2);
    sub_2664DFC58();
    sub_266487380();
    sub_2664DFC78();
    sub_2662B79A8(a1, a2);
    return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }
}

uint64_t sub_26648736C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2663C50C4(result, a2);
  }

  return result;
}

unint64_t sub_266487380()
{
  result = qword_280073F40;
  if (!qword_280073F40)
  {
    sub_2664DE5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073F40);
  }

  return result;
}

uint64_t sub_2664873D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = result + 40;
    do
    {
      v9 = *(v8 - 8);

      v9(a2, a3, a4);

      v8 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

void (*sub_266487460(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; i += 4)
    {
      v7 = i[1];
      v20[0] = *i;
      v20[1] = v7;
      v8 = i[3];
      v10 = *i;
      v9 = i[1];
      v20[2] = i[2];
      v20[3] = v8;
      v16 = v10;
      v17 = v9;
      v11 = i[3];
      v18 = i[2];
      v19 = v11;
      sub_2662C0AE0(v20, &v12);
      v5(&v16);
      if (v3)
      {
        break;
      }

      v12 = v16;
      v13 = v17;
      v14 = v18;
      v15 = v19;
      result = sub_2662C0B3C(&v12);
      if (!--v4)
      {
        return result;
      }
    }

    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    return sub_2662C0B3C(&v12);
  }

  return result;
}

void sub_266487534(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2664E0A68())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x266783B70](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_266487634(uint64_t a1)
{
  v2 = sub_2664E0A18();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_2664ABA8C(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_2664876B0(uint64_t a1)
{
  v2 = sub_2664E0A18();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2664AAD4C(v2, *(a1 + 36), 0, a1);
  }
}

double sub_26648772C(uint64_t a1)
{
  v2 = sub_2664E0A18();
  if (v2 != 1 << *(a1 + 32))
  {
    sub_2664AACFC(v2, *(a1 + 36), 0, a1);
  }

  return result;
}

uint64_t sub_2664877AC(uint64_t a1)
{
  v2 = sub_2664E0A18();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_2664ABAE0(v2, *(a1 + 36), 0, a1);

  return v4;
}

unint64_t sub_266487828(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = result;
  v2 = sub_2664E0A68();
  result = v1;
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    return MEMORY[0x266783B70](0, result);
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_2664878B4(unsigned __int8 a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1;
  v15 = sub_2664DFE38();
  v16 = MEMORY[0x28223BE20](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = a6;
  v31[1] = a7;
  v31[2] = a8;
  if (v14 == 2)
  {
    return a4(v31);
  }

  v21 = v17;
  v28 = v19;
  v29 = v16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = v29;
  v23 = __swift_project_value_buffer(v29, qword_280F914F0);
  swift_beginAccess();
  (*(v21 + 16))(v28, v23, v22);

  v24 = sub_2664DFE18();
  v25 = sub_2664E06D8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_2662A320C(a2, a3, v30);
    _os_log_impl(&dword_26629C000, v24, v25, "Completions#protect FATAL! Double computing completion with name: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  (*(v21 + 8))(v28, v29);
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000043, 0x80000002664F4570);
  MEMORY[0x2667833B0](a2, a3);
  result = sub_2664E0C48();
  __break(1u);
  return result;
}

uint64_t sub_266487B80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v49 - v5;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v55 = *(v7 + 2);
  v56 = v15;
  v55(v14, v15, v6);

  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v50 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v59[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v59);
    _os_log_impl(&dword_26629C000, v16, v17, "AtomicValue#next [%{public}s]", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266784AD0](v20, -1, -1);
    v21 = v19;
    v7 = v50;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  v22 = *(v7 + 1);
  v22(v14, v6);
  sub_2662A98AC();
  v55(v12, v56, v6);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();

  v25 = os_log_type_enabled(v23, v24);
  v50 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v59[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v59);
    _os_log_impl(&dword_26629C000, v23, v24, "AtomicValue#next [%{public}s] lock acquired", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v22 = v50;
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  v22(v12, v6);
  v3[24] = 0;
  v28 = &v3[*(*v3 + 112)];
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  v32 = v28[3];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  sub_2663142F4(v29, v30, v31, v32);
  v33 = v54;
  v55(v54, v56, v6);

  v34 = sub_2664DFE18();
  v35 = sub_2664E06E8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v58[0] = v37;
    *v36 = 136446466;
    *(v36 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v58);
    *(v36 + 12) = 2082;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072958, &qword_2664E5060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072960, &qword_2664E5068);
    v38 = sub_2664E0318();
    v40 = sub_2662A320C(v38, v39, v58);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_26629C000, v34, v35, "AtomicValue#next [%{public}s] computing value for: %{public}s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v37, -1, -1);
    MEMORY[0x266784AD0](v36, -1, -1);

    v50(v54, v6);
  }

  else
  {

    v22(v33, v6);
  }

  v41 = v51;
  sub_2664DE428();
  v42 = sub_2664DE438();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v43 = qword_280F91D08;
  swift_beginAccess();
  sub_2663132FC(v41, &v3[v43]);
  swift_endAccess();
  v44 = *&v3[*(*v3 + 120)];
  v45 = swift_allocObject();
  v46 = v52;
  v47 = v53;
  v45[2] = v3;
  v45[3] = v46;
  v45[4] = v47;

  v44(sub_2664B729C, v45);
}

uint64_t sub_266488278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = a1;
  v66 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v61 - v5;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v61 - v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v68 = *(v7 + 2);
  v69 = v15;
  v68(v14, v15, v6);

  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v63 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    *&v73[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v73);
    _os_log_impl(&dword_26629C000, v16, v17, "AtomicValue#next [%{public}s]", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266784AD0](v20, -1, -1);
    v21 = v19;
    v7 = v63;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  v22 = *(v7 + 1);
  v22(v14, v6);
  sub_2662A98AC();
  v68(v12, v69, v6);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();

  v25 = os_log_type_enabled(v23, v24);
  v63 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v62 = v6;
    v28 = v27;
    *&v73[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v73);
    _os_log_impl(&dword_26629C000, v23, v24, "AtomicValue#next [%{public}s] lock acquired", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v6 = v62;
    MEMORY[0x266784AD0](v28, -1, -1);
    v29 = v26;
    v22 = v63;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v22(v12, v6);
  v3[24] = 0;
  sub_2662DC04C(v72);
  v30 = &v3[*(*v3 + 112)];
  swift_beginAccess();
  v31 = v30[9];
  v73[8] = v30[8];
  v73[9] = v31;
  v32 = v30[11];
  v73[10] = v30[10];
  v73[11] = v32;
  v33 = v30[5];
  v73[4] = v30[4];
  v73[5] = v33;
  v34 = v30[7];
  v73[6] = v30[6];
  v73[7] = v34;
  v35 = v30[1];
  v73[0] = *v30;
  v73[1] = v35;
  v36 = v30[3];
  v73[2] = v30[2];
  v73[3] = v36;
  v37 = v72[9];
  v38 = v72[10];
  v39 = v72[7];
  v30[8] = v72[8];
  v30[9] = v37;
  v40 = v72[11];
  v30[10] = v38;
  v30[11] = v40;
  v41 = v72[5];
  v42 = v72[6];
  v30[4] = v72[4];
  v30[5] = v41;
  v30[6] = v42;
  v30[7] = v39;
  v43 = v72[1];
  *v30 = v72[0];
  v30[1] = v43;
  v44 = v72[3];
  v30[2] = v72[2];
  v30[3] = v44;
  sub_2662A9238(v73, &qword_280073320, &unk_2664EF750);
  v45 = v67;
  v68(v67, v69, v6);

  v46 = sub_2664DFE18();
  v47 = sub_2664E06E8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[0] = v49;
    *v48 = 136446466;
    *(v48 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v71);
    *(v48 + 12) = 2082;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073320, &unk_2664EF750);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072988, &unk_2664E50A0);
    v50 = sub_2664E0318();
    v52 = sub_2662A320C(v50, v51, v71);

    *(v48 + 14) = v52;
    _os_log_impl(&dword_26629C000, v46, v47, "AtomicValue#next [%{public}s] computing value for: %{public}s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v49, -1, -1);
    MEMORY[0x266784AD0](v48, -1, -1);

    v63(v67, v6);
  }

  else
  {

    v22(v45, v6);
  }

  v53 = v64;
  sub_2664DE428();
  v54 = sub_2664DE438();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  v55 = qword_280F91D08;
  swift_beginAccess();
  sub_2663132FC(v53, &v3[v55]);
  swift_endAccess();
  v56 = *&v3[*(*v3 + 120)];
  v57 = swift_allocObject();
  v58 = v65;
  v59 = v66;
  v57[2] = v3;
  v57[3] = v58;
  v57[4] = v59;

  v56(sub_2664B71F4, v57);
}

uint64_t sub_2664889E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v45 - v5;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v51 = *(v7 + 2);
  v52 = v15;
  v51(v14, v15, v6);

  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v46 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v55[0] = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v55);
    _os_log_impl(&dword_26629C000, v16, v17, "AtomicValue#next [%{public}s]", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266784AD0](v20, -1, -1);
    v21 = v19;
    v7 = v46;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  v22 = *(v7 + 1);
  v22(v14, v6);
  sub_2662A98AC();
  v51(v12, v52, v6);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();

  v25 = os_log_type_enabled(v23, v24);
  v46 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v55[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v55);
    _os_log_impl(&dword_26629C000, v23, v24, "AtomicValue#next [%{public}s] lock acquired", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v22 = v46;
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  v22(v12, v6);
  v3[24] = 0;
  v28 = &v3[*(*v3 + 112)];
  swift_beginAccess();
  *v28 = 0;
  v28[1] = 0;
  v28[2] = 0;

  v29 = v50;
  v51(v50, v52, v6);

  v30 = sub_2664DFE18();
  v31 = sub_2664E06E8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v54[0] = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v54);
    *(v32 + 12) = 2082;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072950, &qword_2664E5058);
    v34 = sub_2664E0318();
    v36 = sub_2662A320C(v34, v35, v54);

    *(v32 + 14) = v36;
    _os_log_impl(&dword_26629C000, v30, v31, "AtomicValue#next [%{public}s] computing value for: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v32, -1, -1);

    v46(v50, v6);
  }

  else
  {

    v22(v29, v6);
  }

  v37 = v47;
  sub_2664DE428();
  v38 = sub_2664DE438();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v39 = qword_280F91D08;
  swift_beginAccess();
  sub_2663132FC(v37, &v3[v39]);
  swift_endAccess();
  v40 = *&v3[*(*v3 + 120)];
  v41 = swift_allocObject();
  v42 = v48;
  v43 = v49;
  v41[2] = v3;
  v41[3] = v42;
  v41[4] = v43;

  v40(sub_2664B71BC, v41);
}

uint64_t sub_2664890D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t (*a6)(uint64_t *), uint64_t a7)
{
  v41 = a7;
  v42 = a6;
  v12 = sub_2664DFE38();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  a5[24] = 1;
  v14 = &a5[*(*a5 + 112)];
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  sub_266314294(a1, a2, a3, a4);
  sub_2663142F4(v15, v16, v17, v18);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = v40;
  v20 = __swift_project_value_buffer(v40, qword_280F914F0);
  swift_beginAccess();
  v22 = v38;
  v21 = v39;
  (*(v39 + 16))(v38, v20, v19);
  v23 = v45;
  v24 = v46;
  v25 = v47;
  v26 = v48;

  sub_266314294(v23, v24, v25, v26);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();

  sub_2663142F4(v23, v24, v25, v26);
  v29 = v19;
  v30 = v21;
  if (os_log_type_enabled(v27, v28))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44 = v32;
    *v31 = 136446466;
    *(v31 + 4) = sub_2662A320C(*&a5[*(*a5 + 128)], *&a5[*(*a5 + 128) + 8], &v44);
    *(v31 + 12) = 2082;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072958, &qword_2664E5060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072960, &qword_2664E5068);
    v33 = sub_2664E0318();
    v35 = sub_2662A320C(v33, v34, &v44);

    *(v31 + 14) = v35;
    _os_log_impl(&dword_26629C000, v27, v28, "AtomicValue#next [%{public}s] lock released, received result: %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  (*(v30 + 8))(v22, v29);
  return v42(&v45);
}

uint64_t sub_266489448(__int128 *a1, _BYTE *a2, uint64_t (*a3)(__int128 *), uint64_t a4)
{
  v46[1] = a4;
  v47 = a3;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[9];
  v11 = a1[7];
  v58 = a1[8];
  v59 = v10;
  v12 = a1[9];
  v13 = a1[11];
  v60 = a1[10];
  v61 = v13;
  v14 = a1[5];
  v15 = a1[3];
  v54 = a1[4];
  v55 = v14;
  v16 = a1[5];
  v17 = a1[7];
  v56 = a1[6];
  v57 = v17;
  v18 = a1[1];
  v50 = *a1;
  v51 = v18;
  v19 = a1[3];
  v21 = *a1;
  v20 = a1[1];
  v52 = a1[2];
  v22 = v52;
  v53 = v19;
  v70 = v58;
  v71 = v12;
  v23 = a1[11];
  v72 = v60;
  v73 = v23;
  v66 = v54;
  v67 = v16;
  v68 = v56;
  v69 = v11;
  v62 = v21;
  v63 = v20;
  a2[24] = 1;
  v64 = v22;
  v65 = v15;
  v24 = &a2[*(*a2 + 112)];
  swift_beginAccess();
  v25 = v24[9];
  v74[8] = v24[8];
  v74[9] = v25;
  v26 = v24[11];
  v74[10] = v24[10];
  v74[11] = v26;
  v27 = v24[5];
  v74[4] = v24[4];
  v74[5] = v27;
  v28 = v24[7];
  v74[6] = v24[6];
  v74[7] = v28;
  v29 = v24[1];
  v74[0] = *v24;
  v74[1] = v29;
  v30 = v24[3];
  v74[2] = v24[2];
  v74[3] = v30;
  v31 = v71;
  v24[8] = v70;
  v24[9] = v31;
  v32 = v73;
  v24[10] = v72;
  v24[11] = v32;
  v33 = v67;
  v24[4] = v66;
  v24[5] = v33;
  v34 = v69;
  v24[6] = v68;
  v24[7] = v34;
  v35 = v63;
  *v24 = v62;
  v24[1] = v35;
  v36 = v65;
  v24[2] = v64;
  v24[3] = v36;
  sub_2662A7224(&v62, v75, &qword_280073320, &unk_2664EF750);
  sub_2662A9238(v74, &qword_280073320, &unk_2664EF750);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v37, v6);
  v75[8] = v58;
  v75[9] = v59;
  v75[10] = v60;
  v75[11] = v61;
  v75[4] = v54;
  v75[5] = v55;
  v75[6] = v56;
  v75[7] = v57;
  v75[0] = v50;
  v75[1] = v51;
  v75[2] = v52;
  v75[3] = v53;

  sub_2662A7224(v75, v49, &qword_280073320, &unk_2664EF750);
  v38 = sub_2664DFE18();
  v39 = sub_2664E06E8();

  sub_2662A9238(v75, &qword_280073320, &unk_2664EF750);
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49[0] = v41;
    *v40 = 136446466;
    *(v40 + 4) = sub_2662A320C(*&a2[*(*a2 + 128)], *&a2[*(*a2 + 128) + 8], v49);
    *(v40 + 12) = 2082;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073320, &unk_2664EF750);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072988, &unk_2664E50A0);
    v42 = sub_2664E0318();
    v44 = sub_2662A320C(v42, v43, v49);

    *(v40 + 14) = v44;
    _os_log_impl(&dword_26629C000, v38, v39, "AtomicValue#next [%{public}s] lock released, received result: %{public}s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return v47(&v50);
}

uint64_t sub_266489894(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t (*a5)(void *))
{
  v23[0] = a5;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = a1;
  v25[1] = a2;
  v25[2] = a3;
  a4[24] = 1;
  v13 = &a4[*(*a4 + 112)];
  swift_beginAccess();
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;

  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v14, v9);

  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_2662A320C(*&a4[*(*a4 + 128)], *&a4[*(*a4 + 128) + 8], &v24);
    *(v17 + 12) = 2082;
    v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072950, &qword_2664E5058);
    v19 = sub_2664E0318();
    v21 = sub_2662A320C(v19, v20, &v24);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_26629C000, v15, v16, "AtomicValue#next [%{public}s] lock released, received result: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v18, -1, -1);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  return (v23[0])(v25);
}

uint64_t sub_266489BC4(uint64_t (*a1)(uint64_t *, __n128), uint64_t a2)
{
  v3 = v2;
  v79 = a1;
  v80 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v73 - v5;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v77 = &v73 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v73 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v73 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v73 - v17;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v81 = *(v7 + 16);
  v81(v18, v19, v6);

  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v74 = v19;
    v23 = v6;
    v24 = v7;
    v25 = v22;
    v26 = swift_slowAlloc();
    v84[0] = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v84);
    _os_log_impl(&dword_26629C000, v20, v21, "AtomicValue#getAndCompute [%{public}s]", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x266784AD0](v26, -1, -1);
    v27 = v25;
    v7 = v24;
    v6 = v23;
    v19 = v74;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v28 = *(v7 + 8);
  v28(v18, v6);
  sub_2662A98AC();
  v81(v16, v19, v6);

  v29 = sub_2664DFE18();
  v30 = sub_2664E06E8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v73 = v7;
    v74 = v6;
    v32 = v31;
    v33 = v19;
    v34 = v28;
    v35 = swift_slowAlloc();
    v84[0] = v35;
    *v32 = 136446210;
    *(v32 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v84);
    _os_log_impl(&dword_26629C000, v29, v30, "AtomicValue#getAndCompute [%{public}s] lock acquired", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v36 = v35;
    v28 = v34;
    v19 = v33;
    MEMORY[0x266784AD0](v36, -1, -1);
    v6 = v74;
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  v28(v16, v6);
  if (v3[24] == 1)
  {
    sub_2662AA89C();
    v37 = v75;
    v81(v75, v19, v6);

    v38 = sub_2664DFE18();
    v39 = sub_2664E06E8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v74 = v19;
      v41 = v40;
      v42 = swift_slowAlloc();
      v84[0] = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v84);
      _os_log_impl(&dword_26629C000, v38, v39, "AtomicValue#getAndCompute [%{public}s] lock released", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266784AD0](v42, -1, -1);
      v19 = v74;
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    v28(v37, v6);
    v43 = v78;
    v81(v78, v19, v6);

    v44 = sub_2664DFE18();
    v45 = sub_2664E06E8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v84[0] = v47;
      *v46 = 136446466;
      v48 = *v3;
      v75 = v28;
      *(v46 + 4) = sub_2662A320C(*&v3[*(v48 + 128)], *&v3[*(v48 + 128) + 8], v84);
      *(v46 + 12) = 2082;
      v83[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FC8, &qword_2664EF6D8);
      v49 = sub_2664E0318();
      v51 = sub_2662A320C(v49, v50, v84);

      *(v46 + 14) = v51;
      _os_log_impl(&dword_26629C000, v44, v45, "AtomicValue#getAndCompute [%{public}s] using pre-computed value: %{public}s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v47, -1, -1);
      MEMORY[0x266784AD0](v46, -1, -1);

      (v75)(v78, v6);
    }

    else
    {

      v28(v43, v6);
    }

    v64 = *(*v3 + 112);
    swift_beginAccess();
    LOBYTE(v83[0]) = v3[v64];
    return (v79)(v83);
  }

  else
  {
    v75 = v28;
    v52 = *(*v3 + 112);
    swift_beginAccess();
    v53 = v3[v52];
    v54 = v77;
    v81(v77, v19, v6);

    v55 = sub_2664DFE18();
    v56 = sub_2664E06E8();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v83[0] = v58;
      *v57 = 136446466;
      *(v57 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v83);
      *(v57 + 12) = 2082;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FC8, &qword_2664EF6D8);
      v59 = sub_2664E0318();
      v61 = v53;
      v62 = sub_2662A320C(v59, v60, v83);

      *(v57 + 14) = v62;
      v53 = v61;
      _os_log_impl(&dword_26629C000, v55, v56, "AtomicValue#getAndCompute [%{public}s] computing value for: %{public}s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v57, -1, -1);

      v63 = v77;
    }

    else
    {

      v63 = v54;
    }

    (v75)(v63, v6);
    v66 = v76;
    sub_2664DE428();
    v67 = sub_2664DE438();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    v68 = qword_280F91D08;
    swift_beginAccess();
    sub_2663132FC(v66, &v3[v68]);
    swift_endAccess();
    v69 = *&v3[*(*v3 + 120)];
    v70 = swift_allocObject();
    v71 = v79;
    v72 = v80;
    *(v70 + 16) = v3;
    *(v70 + 24) = v71;
    *(v70 + 32) = v72;
    *(v70 + 40) = v53;

    v69(sub_2664AEAF4, v70);
  }
}

uint64_t sub_26648A63C(char a1, _BYTE *a2, uint64_t (*a3)(void), uint64_t a4, char a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a5;
  a2[24] = 1;
  v14 = *(*a2 + 112);
  swift_beginAccess();
  a2[v14] = a1;
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v15, v10);

  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27[0] = a4;
    v20 = a3;
    v21 = v19;
    v28 = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_2662A320C(*&a2[*(*a2 + 128)], *&a2[*(*a2 + 128) + 8], &v28);
    *(v18 + 12) = 2082;
    v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FC8, &qword_2664EF6D8);
    v22 = sub_2664E0318();
    v24 = sub_2662A320C(v22, v23, &v28);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_26629C000, v16, v17, "AtomicValue#getAndCompute [%{public}s] lock released, received value: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v25 = v21;
    a3 = v20;
    MEMORY[0x266784AD0](v25, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  return a3(&v29);
}

uint64_t sub_26648A940(uint64_t a1, int a2, void (*a3)(__int128 *), uint64_t a4)
{
  v5 = v4;
  v100 = a4;
  v99 = a3;
  v101 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v93 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v97 = &v89 - v10;
  v11 = sub_2664DE438();
  v102 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v91 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v94 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v95 = &v89 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v92 = &v89 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v89 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v89 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v89 - v27;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v90 = v23;
  v29 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v30 = *(v14 + 16);
  v105 = v14 + 16;
  v106 = v29;
  v104 = v30;
  v30(v28, v29, v13);

  v31 = sub_2664DFE18();
  v32 = sub_2664E06E8();

  v33 = os_log_type_enabled(v31, v32);
  v98 = v11;
  v96 = a2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v89 = v14;
    v35 = v34;
    v36 = swift_slowAlloc();
    v109[0] = v36;
    *v35 = 136446466;
    *(v35 + 4) = sub_2662A320C(*&v5[*(*v5 + 128)], *&v5[*(*v5 + 128) + 8], v109);
    *(v35 + 12) = 2082;
    *&v110 = v101;
    BYTE8(v110) = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v37 = sub_2664E0318();
    v39 = sub_2662A320C(v37, v38, v109);

    *(v35 + 14) = v39;
    _os_log_impl(&dword_26629C000, v31, v32, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v36, -1, -1);
    v40 = v35;
    v14 = v89;
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  v103 = *(v14 + 8);
  v103(v28, v13);
  sub_2662A98AC();
  v104(v26, v106, v13);

  v41 = sub_2664DFE18();
  v42 = sub_2664E06E8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v110 = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_2662A320C(*&v5[*(*v5 + 128)], *&v5[*(*v5 + 128) + 8], &v110);
    _os_log_impl(&dword_26629C000, v41, v42, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x266784AD0](v44, -1, -1);
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v103(v26, v13);
  v45 = v98;
  v46 = v97;
  v47 = v102;
  if ((v96 & 1) == 0)
  {
    v48 = *&v101;
    v49 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&v5[v49], v46, &qword_2800737D0, qword_2664E4FD0);
    v50 = *(v47 + 48);
    if (v50(v46, 1, v45) == 1)
    {
      v51 = v91;
      sub_2664DE378();
      v52 = v50(v46, 1, v45);
      v53 = v51;
      if (v52 != 1)
      {
        sub_2662A9238(v46, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v53 = v91;
      (*(v47 + 32))(v91, v46, v45);
    }

    sub_2664DE3C8();
    v55 = v54;
    (*(v47 + 8))(v53, v45);
    v56 = fabs(v55);
    if (v56 > v48)
    {
      v57 = v90;
      v104(v90, v106, v13);

      v58 = sub_2664DFE18();
      v59 = sub_2664E06E8();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v110 = v61;
        *v60 = 136446722;
        *(v60 + 4) = sub_2662A320C(*&v5[*(*v5 + 128)], *&v5[*(*v5 + 128) + 8], &v110);
        *(v60 + 12) = 2050;
        *(v60 + 14) = v56;
        *(v60 + 22) = 2050;
        *(v60 + 24) = *&v101;
        _os_log_impl(&dword_26629C000, v58, v59, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v60, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        MEMORY[0x266784AD0](v61, -1, -1);
        v47 = v102;
        MEMORY[0x266784AD0](v60, -1, -1);
      }

      v103(v57, v13);
      v5[24] = 0;
    }
  }

  if (v5[24] == 1)
  {
    v62 = &v5[*(*v5 + 112)];
    swift_beginAccess();
    v63 = *(v62 + 2);
    v110 = *v62;
    v111 = v63;

    sub_2662AA89C();
    v64 = v92;
    v104(v92, v106, v13);

    v65 = sub_2664DFE18();
    v66 = sub_2664E06E8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v108 = v68;
      *v67 = 136446210;
      *(v67 + 4) = sub_2662A320C(*&v5[*(*v5 + 128)], *&v5[*(*v5 + 128) + 8], &v108);
      _os_log_impl(&dword_26629C000, v65, v66, "AtomicValue#computeIfAbsent [%{public}s] lock released", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x266784AD0](v68, -1, -1);
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    v103(v64, v13);
    v69 = v94;
    v104(v94, v106, v13);

    v70 = sub_2664DFE18();
    v71 = sub_2664E06E8();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v108 = v73;
      *v72 = 136446466;
      *(v72 + 4) = sub_2662A320C(*&v5[*(*v5 + 128)], *&v5[*(*v5 + 128) + 8], &v108);
      *(v72 + 12) = 2082;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072950, &qword_2664E5058);
      v74 = sub_2664E0318();
      v76 = sub_2662A320C(v74, v75, &v108);

      *(v72 + 14) = v76;
      _os_log_impl(&dword_26629C000, v70, v71, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v73, -1, -1);
      MEMORY[0x266784AD0](v72, -1, -1);
    }

    v103(v69, v13);
    v99(&v110);
  }

  else
  {
    v77 = v95;
    v104(v95, v106, v13);

    v78 = sub_2664DFE18();
    v79 = sub_2664E06E8();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v110 = v81;
      *v80 = 136446210;
      *(v80 + 4) = sub_2662A320C(*&v5[*(*v5 + 128)], *&v5[*(*v5 + 128) + 8], &v110);
      _os_log_impl(&dword_26629C000, v78, v79, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x266784AD0](v81, -1, -1);
      MEMORY[0x266784AD0](v80, -1, -1);

      v82 = v95;
    }

    else
    {

      v82 = v77;
    }

    v103(v82, v13);
    v84 = v93;
    sub_2664DE428();
    (*(v47 + 56))(v84, 0, 1, v45);
    v85 = qword_280F91D08;
    swift_beginAccess();
    sub_2663132FC(v84, &v5[v85]);
    swift_endAccess();
    v86 = *&v5[*(*v5 + 120)];
    v87 = swift_allocObject();
    v88 = v99;
    v87[2] = v5;
    v87[3] = v88;
    v87[4] = v100;

    v86(sub_2664B71D4, v87);
  }
}

unint64_t sub_26648B718(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2664E0B78();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_26640687C();
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_26648BA18(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2664E0B78();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_266405E6C(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_26648BD18(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074008, &qword_2664EF728);
  if (swift_dynamicCast())
  {
    sub_2662A8618(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_2664DE188();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2662A9238(__src, &qword_280074010, &unk_2664EF730);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_2664E0B78();
  }

  sub_2664AA458(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2664AED14(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_2664AA520(sub_2664B7134, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_2664DE2C8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2664067E8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_2664E03A8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2664E03D8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_2664E0B78();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2664067E8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_2664E03B8();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_2664DE2D8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_2664DE2D8();
    sub_2662B79A8(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_2662B79A8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2663C50C4(*&__src[0], *(&__src[0] + 1));

  sub_266348774(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_26648C248(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_2664E01C8();

  v2(v3);
}

uint64_t sub_26648C2C0()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000002DLL, 0x80000002664FAFC0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073F48 = v8;
  return result;
}

dispatch_semaphore_t sub_26648C458()
{
  result = dispatch_semaphore_create(0);
  qword_280073F58 = result;
  return result;
}

uint64_t sub_26648C47C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000018;
  v3 = *a1;
  v4 = "mandPrepareForSetQueue";
  if (v3 == 1)
  {
    v5 = 0xD00000000000001DLL;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v3 == 1)
  {
    v6 = "mandPrepareForSetQueue";
  }

  else
  {
    v6 = "MRMediaRemoteCommandSendQueue";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000026;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "led";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = "MRMediaRemoteCommandSendQueue";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000026;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "led";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2664E0D88();
  }

  return v11 & 1;
}

uint64_t sub_26648C554()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26648C5F0(uint64_t a1)
{
  sub_2664E0368();
}

uint64_t sub_26648C678(uint64_t a1)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

unint64_t sub_26648C710@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2664B0BF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26648C740(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000018;
  v3 = "mandPrepareForSetQueue";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v3 = "MRMediaRemoteCommandSendQueue";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000026;
    v4 = "led";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

void *sub_26648C79C()
{
  result = sub_266386258(MEMORY[0x277D84F90]);
  off_280073F60 = result;
  return result;
}

uint64_t sub_26648C7C4()
{
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v0 = qword_280F91470;
  v2[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v2[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v2[0] = v0;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD00000000000002ELL, 0x80000002664FBA00, 1, v2);
  qword_280073F68 = result;
  return result;
}

unint64_t sub_26648C88C(_BYTE *a1, uint64_t a2)
{
  switch(a2)
  {
    case 1:
      *a1 = -92;
      return 0xD000000000000017;
    case 2:
      *a1 = -92;
      return 0xD00000000000001ELL;
    case 3:
      *a1 = -92;
      return 0xD00000000000001ELL;
    case 10:
      *a1 = -92;
      goto LABEL_21;
    case 50:
      *a1 = 19;
      return 0xD000000000000010;
    case 51:
      *a1 = -92;
      return 0xD000000000000014;
    case 52:
      *a1 = -92;
      return 0xD00000000000001FLL;
    case 53:
      *a1 = 17;
      return 0xD000000000000012;
    case 100:
    case 101:
      result = 0xD00000000000001ALL;
      *a1 = -92;
      return result;
    case 102:
    case 103:
      *a1 = -92;
      return 0xD000000000000018;
    case 110:
      *a1 = -92;
      return 0xD00000000000001CLL;
    case 111:
      *a1 = -92;
      return 0xD00000000000001BLL;
    case 112:
      *a1 = -92;
      return 0xD00000000000001ELL;
    case 113:
      *a1 = -92;
      goto LABEL_21;
    case 114:
      *a1 = -92;
      return 0xD000000000000022;
    case 150:
      result = 0xD00000000000001ALL;
      *a1 = -92;
      return result;
    case 151:
      *a1 = -92;
      return 0xD000000000000017;
    case 152:
      *a1 = -92;
      return 0xD000000000000018;
    case 200:
      result = 0xD00000000000001ALL;
      *a1 = -92;
      return result;
    case 201:
      *a1 = -92;
LABEL_21:
      result = 0xD00000000000001DLL;
      break;
    default:
      *a1 = -92;
      result = 0x6E6B6E555F515358;
      break;
  }

  return result;
}

uint64_t sub_26648CB7C()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000002FLL, 0x80000002664FB9D0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073F70 = v8;
  return result;
}

uint64_t sub_26648CD14()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000028, 0x80000002664FAFF0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280073F78 = v8;
  return result;
}

void sub_26648CEAC(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v31 = a3;
  v32 = a2;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = v8;
  v14 = a1;
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();

  v17 = v16;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v29 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    *v19 = 136446210;
    v33 = v29;
    v34 = v20;
    v21 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072538, &unk_2664E3910);
    v22 = sub_2664E0318();
    v24 = sub_2662A320C(v22, v23, &v34);
    v28 = v13;
    v25 = v24;

    *(v19 + 4) = v25;
    _os_log_impl(&dword_26629C000, v15, v17, "MediaPlaybackProvider#destination resolved destination: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266784AD0](v20, -1, -1);
    v26 = v19;
    a1 = v29;
    MEMORY[0x266784AD0](v26, -1, -1);

    (*(v9 + 8))(v11, v28);
  }

  else
  {

    (*(v9 + 8))(v11, v13);
  }

  v27 = sub_2664AD590(a1, a5, v30);
  v32();
}

uint64_t sub_26648D140(void *a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = a1;
    v26 = v14;
    *v13 = 136446210;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072538, &unk_2664E3910);
    v16 = sub_2664E0318();
    v18 = sub_2662A320C(v16, v17, &v26);
    v23 = v4;
    v19 = a2;
    v20 = v18;

    *(v13 + 4) = v20;
    a2 = v19;
    _os_log_impl(&dword_26629C000, v10, v11, "MediaPlaybackProvider#destination resolved destination: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266784AD0](v14, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);

    (*(v24 + 8))(v7, v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return a2(a1);
}

uint64_t sub_26648D3D0@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v42 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v40 = *(v6 + 16);
  v41 = v12;
  v40(v11, v12, v5);
  v39 = v11;
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = v15;
    v38 = swift_slowAlloc();
    v44 = v38;
    *v15 = 136446210;
    LOWORD(v43) = a1 & 0x101;
    BYTE2(v43) = BYTE2(a1) & 1;
    BYTE3(v43) = HIBYTE(a1) & 1;
    type metadata accessor for MPCAssistantWatchAudioRoutingInfo(0);
    v16 = sub_2664E0318();
    v18 = a1;
    v19 = v9;
    v20 = sub_2662A320C(v16, v17, &v44);

    v21 = v37;
    *(v37 + 1) = v20;
    v9 = v19;
    a1 = v18;
    v22 = v14;
    v23 = v21;
    _os_log_impl(&dword_26629C000, v13, v22, "MediaPlaybackProvider#streamingAvailability getting streaming availability for routing: %{public}s", v21, 0xCu);
    v24 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x266784AD0](v24, -1, -1);
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v25 = *(v6 + 8);
  v25(v39, v5);
  v26 = [*(a2 + 136) assistantStreamingGetAvailability_];
  v40(v9, v41, v5);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06C8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v41 = v6;
    v31 = v30;
    v43 = v26;
    v44 = v30;
    *v29 = 136315138;
    type metadata accessor for MPCAssistantStreamingAvailability(0);
    v32 = sub_2664E0318();
    v34 = sub_2662A320C(v32, v33, &v44);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_26629C000, v27, v28, "MediaPlaybackProvider#streamingAvailability complete: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  result = (v25)(v9, v5);
  *v42 = v26;
  return result;
}

void sub_26648D7B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = qword_280F914E8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v14, v8);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v12;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136446210;
    v29 = a3 & 0x101;
    v30 = BYTE2(a3) & 1;
    v31 = HIBYTE(a3) & 1;
    type metadata accessor for MPCAssistantWatchAudioRoutingInfo(0);
    v20 = sub_2664E0318();
    v27 = v8;
    v22 = sub_2662A320C(v20, v21, aBlock);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_26629C000, v15, v16, "MediaPlaybackProvider#radioAvailability getting radio availability for routing: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v23 = v19;
    v12 = v28;
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v17, -1, -1);

    (*(v9 + 8))(v11, v27);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v24 = *(a4 + 136);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2662C0CAC;
  *(v25 + 24) = v12;
  aBlock[4] = sub_2664B6BB4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26648DD88;
  aBlock[3] = &block_descriptor_308;
  v26 = _Block_copy(aBlock);

  [v24 assistantRadioGetAvailability:a3 & 0x1010101 completion:v26];
  _Block_release(v26);
}

uint64_t sub_26648DB0C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v5;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = a1;
    v24 = v13;
    *v12 = 136315138;
    v14 = sub_2664E0D48();
    v16 = sub_2662A320C(v14, v15, &v24);
    v21 = v4;
    v17 = a2;
    v18 = v16;

    *(v12 + 4) = v18;
    a2 = v17;
    _os_log_impl(&dword_26629C000, v9, v10, "MediaPlaybackProvider#radioAvailability complete: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);

    (*(v22 + 8))(v7, v21);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return a2(a1);
}

uint64_t sub_26648DD88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_26648DDDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = v5;
    v18 = a1;
    v19 = a2;
    v20 = a4;
    v21 = a3;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "MediaPlaybackProvider#play (provisional)", v17, 2u);
    v23 = v22;
    a3 = v21;
    a4 = v20;
    a2 = v19;
    a1 = v18;
    v5 = v35;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v24 = [a1 outputDeviceUIDs];
  v25 = sub_2664E04A8();

  v26 = *(v25 + 16);

  if (v26)
  {
    v27 = v5[38];
    v28 = v5[39];
    __swift_project_boxed_opaque_existential_1(v5 + 35, v27);
    v29 = swift_allocObject();
    v29[2] = v5;
    v29[3] = a1;
    v29[4] = a2;
    v29[5] = a3;
    v29[6] = a4;
    v30 = *(v28 + 16);

    v31 = a1;

    v30(sub_2664B6B20, v29, v27, v28);
  }

  else
  {
    if (qword_280071CD8 != -1)
    {
      swift_once();
    }

    v32 = swift_allocObject();
    v32[2] = v5;
    v32[3] = a1;
    v32[4] = a2;
    v32[5] = a3;
    v32[6] = a4;

    v33 = a1;

    sub_2664ABB34(sub_2664B6B30, v32);
  }
}

void sub_26648E12C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t (*a6)(uint64_t *))
{
  if (a1)
  {
    v11 = a1;
    v12 = [v11 mediaRouteIdentifier];
    if (v12)
    {
      v25 = v11;
      v13 = v12;
      v14 = sub_2664E02C8();
      v16 = v15;

      v17 = [a3 outputDeviceUIDs];
      v18 = sub_2664E04A8();

      v26[0] = v14;
      v26[1] = v16;
      MEMORY[0x28223BE20](v19);
      v24[2] = v26;
      LOBYTE(v17) = sub_2662AA720(sub_2663A6860, v24, v18);

      if (v17)
      {
        if (qword_280071CD8 != -1)
        {
          swift_once();
        }

        v20 = swift_allocObject();
        v20[2] = a2;
        v20[3] = a3;
        v20[4] = a4;
        v20[5] = a5;
        v20[6] = a6;

        v21 = a3;

        sub_2664ABB34(sub_2664B7420, v20);
      }

      else
      {
        sub_26648E5A0(a3, a4, a5, a6);
      }

      return;
    }
  }

  if (qword_280071CD8 != -1)
  {
    swift_once();
  }

  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = a5;
  v22[6] = a6;

  v23 = a3;

  sub_2664ABB34(sub_2664B7420, v22);
}

uint64_t sub_26648E3E0(char a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v7, v8, "MediaPlaybackProvider#checkTTSEndToSendPlayDelay did AutoBugCapture for long delay between TTSEnd and SendPlay with: %{BOOL}d", v9, 8u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26648E5A0(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t (*a4)(uint64_t *))
{
  v59 = a3;
  v56 = *v4;
  v57 = v4;
  v58 = sub_2664DFE08();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  v60 = a2;
  if (sub_2664AEEB4(2u, a2))
  {
    v51 = v8;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v19, v20, v13);
    v21 = a1;

    v22 = sub_2664DFE18();
    v23 = sub_2664E06E8();

    v54 = v21;

    v50 = v23;
    v24 = os_log_type_enabled(v22, v23);
    v52 = v12;
    v53 = a4;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v61[0] = v49;
      *v25 = 136446722;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, v61);
      *(v25 + 12) = 2114;
      v27 = v54;
      *(v25 + 14) = v54;
      *v26 = v27;
      *(v25 + 22) = 2080;
      type metadata accessor for CFString(0);
      sub_2664B67D0(&qword_280071F78, type metadata accessor for CFString, &unk_2664E3024);
      v28 = v27;
      v29 = sub_2664E01D8();
      v31 = sub_2662A320C(v29, v30, v61);

      *(v25 + 24) = v31;
      _os_log_impl(&dword_26629C000, v22, v50, "MediaPlaybackProvider#play %{public}s sending MRMediaRemoteCommandPlay to destination:%{public}@, options: %s", v25, 0x20u);
      sub_2662A9238(v26, &qword_2800734B0, &unk_2664E3670);
      MEMORY[0x266784AD0](v26, -1, -1);
      v32 = v49;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    (*(v14 + 8))(v19, v13);
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v33 = qword_280F91D48;
    v34 = v52;
    sub_2664DFDE8();
    v35 = v51;
    v36 = v55;
    v37 = v58;
    (*(v51 + 16))(v55, v34, v58);
    v38 = (*(v35 + 80) + 33) & ~*(v35 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = "mediaPlaybackProviderPlay";
    *(v39 + 24) = 25;
    *(v39 + 32) = 2;
    (*(v35 + 32))(v39 + v38, v36, v37);
    v40 = (v39 + ((v9 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
    v41 = v53;
    *v40 = v59;
    v40[1] = v41;

    v42 = sub_2664E0848();
    sub_2664DFDC8(v42, &dword_26629C000, v33, "mediaPlaybackProviderPlay", 25, 2, v34, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v43 = swift_allocObject();
    *(v43 + 16) = sub_2664B7414;
    *(v43 + 24) = v39;

    sub_26648ECC8(sub_2664B7418, v43, v57, v60, v54, v56);

    return (*(v35 + 8))(v34, v37);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v17, v45, v13);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06D8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26629C000, v46, v47, "MediaPlaybackProvider#play preventing re-send MRMediaRemoteCommandPlay for same Siri request", v48, 2u);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    memset(v61, 0, sizeof(v61));
    return v59(v61);
  }
}

uint64_t sub_26648ECC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a6;
  v69 = a2;
  v70 = a5;
  v74 = a3;
  v75 = a4;
  v67 = a1;
  v6 = sub_2664DFE38();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_2664DE4A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v61 - v16;
  v66 = sub_2664DE438();
  v65 = *(v66 - 8);
  v17 = MEMORY[0x28223BE20](v66);
  v63 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v18;
  MEMORY[0x28223BE20](v17);
  v64 = &v61 - v19;
  sub_2664DE428();
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = qword_280F90B40;
  v21 = unk_280F90B48;
  v22 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v23 = *(v20 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v25);
  (*(v21 + 16))(v20, v21);
  v27 = v26;
  (*(v23 + 8))(v25, v20);
  if (v27)
  {
    sub_2664DE448();

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_2662A9238(v10, &qword_280073C60, &unk_2664EE400);
    }

    else
    {
      v28 = v61;
      (*(v12 + 32))(v61, v10, v11);
      v29 = [objc_allocWithZone(type metadata accessor for SiriAudioSelfLogger()) init];
      sub_26646BE04(0x12, v28);

      (*(v12 + 8))(v28, v11);
    }
  }

  sub_2664B1B84();
  v30 = v74[15];
  v31 = v74[16];
  __swift_project_boxed_opaque_existential_1(v74 + 12, v30);
  v32 = (*(v31 + 16))(1006, v30, v31);
  sub_2664DE498();
  v33 = sub_2664DE458();
  v35 = v34;
  (*(v12 + 8))(v15, v11);
  v83 = v75;

  v36 = sub_2664E02A8();
  result = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
  v82 = result;
  *&v81 = v36;
  if (!*MEMORY[0x277D27CE8])
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_2664AAA78(&v81, *MEMORY[0x277D27CE8], &aBlock);
  sub_2662A9238(&aBlock, &unk_280074250, &unk_2664E3680);
  v38 = sub_2664E0648();
  result = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v82 = result;
  *&v81 = v38;
  v40 = v72;
  v39 = v73;
  v41 = v71;
  if (!*MEMORY[0x277D27CF8])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  sub_2664AAA78(&v81, *MEMORY[0x277D27CF8], &aBlock);
  sub_2662A9238(&aBlock, &unk_280074250, &unk_2664E3680);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v75 = v32;
  v42 = __swift_project_value_buffer(v39, qword_280F914F0);
  swift_beginAccess();
  (*(v40 + 16))(v41, v42, v39);

  v43 = sub_2664DFE18();
  v44 = sub_2664E06C8();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&aBlock = v46;
    *v45 = 136315138;
    v47 = sub_2662A320C(v33, v35, &aBlock);

    *(v45 + 4) = v47;
    _os_log_impl(&dword_26629C000, v43, v44, "MediaPlaybackProvider#internalPlayLogic sending command to MR with ID: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x266784AD0](v46, -1, -1);
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  else
  {
  }

  (*(v40 + 8))(v41, v39);
  v74 = [objc_allocWithZone(MEMORY[0x277D27828]) &off_279BCCB78];
  v48 = v83;
  sub_2663178D4(v83);
  v73 = sub_2664E01A8();

  v49 = v65;
  v50 = v63;
  v51 = v64;
  v52 = v66;
  (*(v65 + 16))(v63, v64, v66);
  v53 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v54 = (v62 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  *(v55 + 16) = v75;
  *(v55 + 24) = v48;
  (*(v49 + 32))(v55 + v53, v50, v52);
  v56 = (v55 + v54);
  v57 = v69;
  *v56 = v67;
  v56[1] = v57;
  *(v55 + ((v54 + 23) & 0xFFFFFFFFFFFFFFF8)) = v68;
  v79 = sub_2664B6A70;
  v80 = v55;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v77 = sub_2663A0C48;
  v78 = &block_descriptor_273;
  v58 = _Block_copy(&aBlock);

  v60 = v73;
  v59 = v74;
  [v74 sendCommandWithResult:0 toDestination:v70 withOptions:v73 completion:v58];
  _Block_release(v58);

  return (*(v49 + 8))(v51, v52);
}

void sub_26648F610(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v105 = a6;
  v104 = a5;
  v99 = a4;
  v108 = a3;
  v10 = sub_2664DFD68();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_2664E0038();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_2664E00B8();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2664DE438();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664DFE38();
  v120 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v92 - v22;
  MEMORY[0x28223BE20](v21);
  v119 = &v92 - v24;
  if (a2)
  {
    sub_26636B8D0();
  }

  v93 = v23;
  v94 = v20;
  v118 = v17;
  if (a1)
  {
    v25 = [a1 error];
    v26 = [a1 returnStatuses];
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v117 = sub_2664E04A8();

    v27 = [a1 commandResult];
    v28 = [v27 resultStatuses];

    sub_2662C1744(0, &qword_280073FE0, 0x277D27A08);
    v121 = sub_2664E04A8();

    v17 = v118;
    v115 = [a1 commandResult];
  }

  else
  {
    v115 = 0;
    v121 = 0;
    v117 = 0;
    v25 = 0;
  }

  v103 = sub_2664B2034();
  v102 = v29;
  v126 = MEMORY[0x277D84F90];
  v100 = 0xD000000000000018;
  v101 = 0x80000002664F3380;
  v30 = sub_2664E0D88();
  v31 = v119;
  if ((v30 & 1) == 0)
  {
    if (sub_2664B21A4(&v126))
    {
      sub_2664DFD98();
      v32 = sub_2664DFD48();
      v34 = v33;

      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {
        v36 = v126;
        v37 = sub_2664DFD48();
        sub_2664B29E0(v36, v37, v38);

        (*(v11 + 8))(v13, v10);
      }

      else
      {
        (*(v11 + 8))(v13, v10);
      }

      v31 = v119;
    }

    else
    {
    }
  }

  v107 = a7;
  v116 = 0x80000002664FBA50;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  v40 = v120;
  v95 = v120[2];
  v95(v31, v39, v17);

  v41 = v117;

  v42 = sub_2664DFE18();
  v43 = sub_2664E06E8();

  v44 = os_log_type_enabled(v42, v43);
  v106 = v25;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    aBlock[0] = v92;
    *v45 = 136446978;
    *(v45 + 4) = sub_2662A320C(0xD00000000000001ALL, v116, aBlock);
    *(v45 + 12) = 2082;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v45 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, aBlock);
    *(v45 + 22) = 2082;
    v46 = MEMORY[0x277D84F90];
    if (v41)
    {
      v47 = v41;
    }

    else
    {
      v47 = MEMORY[0x277D84F90];
    }

    v48 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);

    v49 = MEMORY[0x2667834D0](v47, v48);
    v51 = v50;

    v52 = sub_2662A320C(v49, v51, aBlock);

    *(v45 + 24) = v52;
    *(v45 + 32) = 2082;
    if (v121)
    {
      v53 = v121;
    }

    else
    {
      v53 = v46;
    }

    v54 = sub_2662C1744(0, &qword_280073FE0, 0x277D27A08);

    v55 = MEMORY[0x2667834D0](v53, v54);
    v57 = v56;

    v58 = sub_2662A320C(v55, v57, aBlock);
    v41 = v117;

    *(v45 + 34) = v58;
    _os_log_impl(&dword_26629C000, v42, v43, "%{public}s %{public}s - Result codes: %{public}s, Extended status type: %{public}s", v45, 0x2Au);
    v59 = v92;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v59, -1, -1);
    MEMORY[0x266784AD0](v45, -1, -1);

    v60 = v120[1];
    v17 = v118;
    v60(v119, v118);
  }

  else
  {

    v60 = v40[1];
    v60(v31, v17);
  }

  v61 = v105;
  v62 = v96;
  sub_2664DE428();
  sub_2664DE388();
  v64 = v63;
  (*(v97 + 8))(v62, v98);
  if (v64 >= 4.0)
  {
    v65 = v94;
    v95(v94, v39, v17);
    v66 = sub_2664DFE18();
    v74 = sub_2664E06D8();
    if (os_log_type_enabled(v66, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v75 = 136446722;
      v70 = v116;
      *(v75 + 4) = sub_2662A320C(0xD00000000000001ALL, v116, aBlock);
      *(v75 + 12) = 2082;
      v71 = v107;
      v72 = v101;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v75 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, aBlock);
      *(v75 + 22) = 2050;
      *(v75 + 24) = v64;
      _os_log_impl(&dword_26629C000, v66, v74, "%{public}s %{public}s completed in %{public}f seconds (logging at error for timing visibility)", v75, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v76, -1, -1);
      MEMORY[0x266784AD0](v75, -1, -1);

      v73 = v125;
      goto LABEL_37;
    }
  }

  else
  {
    v65 = v93;
    v95(v93, v39, v17);
    v66 = sub_2664DFE18();
    v67 = sub_2664E06E8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      aBlock[0] = v69;
      *v68 = 136446722;
      v70 = v116;
      *(v68 + 4) = sub_2662A320C(0xD00000000000001ALL, v116, aBlock);
      *(v68 + 12) = 2082;
      v71 = v107;
      v72 = v101;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v68 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, aBlock);
      *(v68 + 22) = 2050;
      *(v68 + 24) = v64;
      _os_log_impl(&dword_26629C000, v66, v67, "%{public}s %{public}s completed in %{public}f seconds", v68, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v69, -1, -1);
      MEMORY[0x266784AD0](v68, -1, -1);

      v73 = &v124;
LABEL_37:
      v60(*(v73 - 32), v118);
      goto LABEL_39;
    }
  }

  v60(v65, v17);
  v71 = v107;
  v72 = v101;
  v70 = v116;
LABEL_39:
  v77 = swift_allocObject();
  *(v77 + 16) = 0xD00000000000001ALL;
  *(v77 + 24) = v70;
  v78 = v70;
  v79 = v100;
  *(v77 + 32) = v100;
  *(v77 + 40) = v72;
  v80 = v115;
  *(v77 + 48) = v71;
  *(v77 + 56) = v80;
  *(v77 + 64) = 2;
  *(v77 + 72) = v104;
  *(v77 + 80) = v61;
  v81 = v80;

  v82 = v106;
  sub_2664949C8(v79, v72, v106, v41, v80, 1, sub_2664B741C, v77);

  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v83 = swift_allocObject();
  *(v83 + 16) = v71;
  *(v83 + 24) = v108;
  *(v83 + 32) = 0xD00000000000001ALL;
  *(v83 + 40) = v78;
  *(v83 + 48) = v79;
  *(v83 + 56) = v72;
  *(v83 + 64) = v82;
  v84 = v121;
  *(v83 + 72) = v41;
  *(v83 + 80) = v84;
  *(v83 + 88) = v80;
  *(v83 + 96) = "mediaPlaybackProviderStatusPlay";
  *(v83 + 104) = 31;
  *(v83 + 112) = 2;
  v85 = v102;
  *(v83 + 120) = v103;
  *(v83 + 128) = v85;
  v125[1] = sub_2664B7384;
  v125[2] = v83;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  v124 = sub_2662A3F90;
  v125[0] = &block_descriptor_284;
  v86 = _Block_copy(aBlock);

  v120 = v81;

  v87 = v82;
  v88 = v109;
  sub_2664E0068();
  v122 = MEMORY[0x277D84F90];
  sub_2664B67D0(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v89 = v82;
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
  v90 = v111;
  v91 = v114;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v88, v90, v86);
  _Block_release(v86);
  (*(v113 + 8))(v90, v91);
  (*(v110 + 8))(v88, v112);
}

void sub_266490554(uint64_t a1, uint64_t a2, void *a3, char *a4, void *a5, void *a6, int a7, uint64_t a8)
{
  v149 = a8;
  v150 = a7;
  v152 = a6;
  v140 = sub_2664DFE08();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  MEMORY[0x28223BE20](v14 - 8);
  v134 = &v132 - v15;
  v136 = sub_2664DE4A8();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v133 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v132 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v137 = &v132 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v151 = &v132 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v132 - v25;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  v28 = *(v18 + 16);
  v146 = v18 + 16;
  v147 = v27;
  v145 = v28;
  v28(v26, v27, v17);
  v29 = a3;

  v30 = a5;
  v31 = v17;
  v32 = sub_2664DFE18();
  v33 = v18;
  v34 = sub_2664E06E8();
  v153 = v30;

  v35 = os_log_type_enabled(v32, v34);
  v148 = v33;
  if (v35)
  {
    v141 = v31;
    v142 = a1;
    v36 = a4;
    v143 = a2;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v155[0] = v144;
    *v37 = 136447234;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v37 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, v155);
    *(v37 + 12) = 2114;
    *(v37 + 14) = v29;
    *v38 = v29;
    *(v37 + 22) = 2082;
    type metadata accessor for CFString(0);
    sub_2664B67D0(&qword_280071F78, type metadata accessor for CFString, &unk_2664E3024);
    v39 = v29;
    v40 = sub_2664E01D8();
    v42 = sub_2662A320C(v40, v41, v155);

    *(v37 + 24) = v42;
    a4 = v36;
    *(v37 + 32) = 2114;
    v43 = v153;
    *(v37 + 34) = v153;
    v38[1] = v43;
    *(v37 + 42) = 1026;
    v44 = v43;
    v45 = [v39 shouldImmediatelyStartPlayback];

    *(v37 + 44) = v45;
    _os_log_impl(&dword_26629C000, v32, v34, "MediaPlaybackProvider#send %{public}s queue:%{public}@ options:%{public}s destination:%{public}@ immediatelyStart?:%{BOOL,public}d", v37, 0x30u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B0, &unk_2664E3670);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v38, -1, -1);
    v46 = v144;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v46, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);

    v47 = v141;
    v144 = *(v148 + 8);
    v144(v26, v141);
    v48 = v152;
    v49 = v142;
    v50 = v143;
  }

  else
  {

    v144 = *(v33 + 8);
    v144(v26, v31);
    v47 = v31;
    v49 = a1;
    v50 = a2;
    v48 = v152;
  }

  if ([v29 shouldImmediatelyStartPlayback])
  {
    v51 = [v153 outputDeviceUIDs];
    v52 = sub_2664E04A8();

    v53 = *(v52 + 16);

    if (!v53)
    {
      v145(v151, v147, v47);
      v54 = sub_2664DFE18();
      v55 = sub_2664E06E8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_26629C000, v54, v55, "MediaPlaybackProvider#send starting local playback immediately, preparing audio handoff...", v56, 2u);
        MEMORY[0x266784AD0](v56, -1, -1);
      }

      v144(v151, v47);
      if (qword_280071CD8 != -1)
      {
        swift_once();
      }

      sub_2664ABB34(nullsub_3, 0);
    }
  }

  v57 = v29;
  v151 = a4;
  swift_bridgeObjectRetain_n();
  v58 = v153;
  swift_retain_n();
  swift_retain_n();
  v59 = v57;
  v60 = v58;
  if ([v59 shouldImmediatelyStartPlayback])
  {
    goto LABEL_20;
  }

  v61 = v48[33];
  v62 = v48[34];
  __swift_project_boxed_opaque_existential_1(v48 + 30, v61);
  if ((*(v62 + 88))(v61, v62))
  {
    goto LABEL_20;
  }

  v63 = [v60 originatingOutputDeviceUID];
  v64 = sub_2664E02C8();
  v66 = v65;

  v67 = HIBYTE(v66) & 0xF;
  if ((v66 & 0x2000000000000000) == 0)
  {
    v67 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (v67)
  {
    goto LABEL_20;
  }

  v68 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v69 = sub_2664E02A8();
  v70 = [v68 initWithSuiteName_];

  if (v70)
  {
    v71 = sub_2664E02A8();
    v72 = [v70 stringForKey_];

    if (v72)
    {
      v73 = sub_2664E02C8();
      v75 = v74;

      v76 = HIBYTE(v75) & 0xF;
      v77 = v73 & 0xFFFFFFFFFFFFLL;
      if ((v75 & 0x2000000000000000) != 0)
      {
        v78 = HIBYTE(v75) & 0xF;
      }

      else
      {
        v78 = v73 & 0xFFFFFFFFFFFFLL;
      }

      if (!v78)
      {

        v81 = 499;
        goto LABEL_87;
      }

      if ((v75 & 0x1000000000000000) != 0)
      {
        v154 = 0;
        v81 = sub_26640687C();
        v99 = v131;
LABEL_85:

        if ((v99 & 1) == 0)
        {
          if (v81 < 1)
          {
            v145(v132, v147, v47);
            v128 = sub_2664DFE18();
            v129 = sub_2664E06E8();
            if (os_log_type_enabled(v128, v129))
            {
              v130 = swift_slowAlloc();
              *v130 = 0;
              _os_log_impl(&dword_26629C000, v128, v129, "MediaPlaybackProvider#waitForTTSSynth not waiting for TTS synthesis since wait time is set to 0", v130, 2u);
              MEMORY[0x266784AD0](v130, -1, -1);
            }

            v144(v132, v47);
LABEL_20:
            sub_266491700(0, 0, v48, v49, v50, v151, v59, v60, v150 & 1, v149);

            swift_bridgeObjectRelease_n();

            return;
          }

          goto LABEL_87;
        }

        goto LABEL_86;
      }

      if ((v75 & 0x2000000000000000) != 0)
      {
        v155[0] = v73;
        v155[1] = v75 & 0xFFFFFFFFFFFFFFLL;
        if (v73 == 43)
        {
          if (v76)
          {
            if (--v76)
            {
              v81 = 0;
              v91 = v155 + 1;
              while (1)
              {
                v92 = *v91 - 48;
                if (v92 > 9)
                {
                  break;
                }

                v93 = 10 * v81;
                if ((v81 * 10) >> 64 != (10 * v81) >> 63)
                {
                  break;
                }

                v81 = v93 + v92;
                if (__OFADD__(v93, v92))
                {
                  break;
                }

                ++v91;
                if (!--v76)
                {
                  goto LABEL_84;
                }
              }
            }

            goto LABEL_83;
          }

LABEL_110:
          __break(1u);
          return;
        }

        if (v73 != 45)
        {
          if (v76)
          {
            v81 = 0;
            v96 = v155;
            while (1)
            {
              v97 = *v96 - 48;
              if (v97 > 9)
              {
                break;
              }

              v98 = 10 * v81;
              if ((v81 * 10) >> 64 != (10 * v81) >> 63)
              {
                break;
              }

              v81 = v98 + v97;
              if (__OFADD__(v98, v97))
              {
                break;
              }

              v96 = (v96 + 1);
              if (!--v76)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_83;
        }

        if (v76)
        {
          if (--v76)
          {
            v81 = 0;
            v85 = v155 + 1;
            while (1)
            {
              v86 = *v85 - 48;
              if (v86 > 9)
              {
                break;
              }

              v87 = 10 * v81;
              if ((v81 * 10) >> 64 != (10 * v81) >> 63)
              {
                break;
              }

              v81 = v87 - v86;
              if (__OFSUB__(v87, v86))
              {
                break;
              }

              ++v85;
              if (!--v76)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_83;
        }
      }

      else
      {
        if ((v73 & 0x1000000000000000) != 0)
        {
          v79 = ((v75 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v79 = sub_2664E0B78();
        }

        v80 = *v79;
        if (v80 == 43)
        {
          if (v77 >= 1)
          {
            v76 = v77 - 1;
            if (v77 != 1)
            {
              v81 = 0;
              if (v79)
              {
                v88 = v79 + 1;
                while (1)
                {
                  v89 = *v88 - 48;
                  if (v89 > 9)
                  {
                    goto LABEL_83;
                  }

                  v90 = 10 * v81;
                  if ((v81 * 10) >> 64 != (10 * v81) >> 63)
                  {
                    goto LABEL_83;
                  }

                  v81 = v90 + v89;
                  if (__OFADD__(v90, v89))
                  {
                    goto LABEL_83;
                  }

                  ++v88;
                  if (!--v76)
                  {
                    goto LABEL_84;
                  }
                }
              }

              goto LABEL_75;
            }

            goto LABEL_83;
          }

          goto LABEL_109;
        }

        if (v80 != 45)
        {
          if (v77)
          {
            v81 = 0;
            if (v79)
            {
              while (1)
              {
                v94 = *v79 - 48;
                if (v94 > 9)
                {
                  goto LABEL_83;
                }

                v95 = 10 * v81;
                if ((v81 * 10) >> 64 != (10 * v81) >> 63)
                {
                  goto LABEL_83;
                }

                v81 = v95 + v94;
                if (__OFADD__(v95, v94))
                {
                  goto LABEL_83;
                }

                ++v79;
                if (!--v77)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_75;
          }

LABEL_83:
          v81 = 0;
          LOBYTE(v76) = 1;
          goto LABEL_84;
        }

        if (v77 >= 1)
        {
          v76 = v77 - 1;
          if (v77 != 1)
          {
            v81 = 0;
            if (v79)
            {
              v82 = v79 + 1;
              while (1)
              {
                v83 = *v82 - 48;
                if (v83 > 9)
                {
                  goto LABEL_83;
                }

                v84 = 10 * v81;
                if ((v81 * 10) >> 64 != (10 * v81) >> 63)
                {
                  goto LABEL_83;
                }

                v81 = v84 - v83;
                if (__OFSUB__(v84, v83))
                {
                  goto LABEL_83;
                }

                ++v82;
                if (!--v76)
                {
                  goto LABEL_84;
                }
              }
            }

LABEL_75:
            LOBYTE(v76) = 0;
LABEL_84:
            v154 = v76;
            v99 = v76;
            goto LABEL_85;
          }

          goto LABEL_83;
        }

        __break(1u);
      }

      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }
  }

LABEL_86:
  v81 = 499;
LABEL_87:
  v153 = v81;
  v141 = v47;
  v142 = v49;
  v143 = v50;
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v100 = qword_280F90B40;
  v101 = unk_280F90B48;
  v102 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v103 = *(v100 - 8);
  MEMORY[0x28223BE20](v102);
  v105 = &v132 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v103 + 16))(v105);
  (*(v101 + 16))(v100, v101);
  v107 = v106;
  (*(v103 + 8))(v105, v100);
  if (v107)
  {
    v108 = v134;
    sub_2664DE448();

    v109 = v135;
    v110 = v136;
    v111 = (*(v135 + 48))(v108, 1, v136);
    v112 = v141;
    v113 = v137;
    if (v111 == 1)
    {
      sub_2662A9238(v108, &qword_280073C60, &unk_2664EE400);
    }

    else
    {
      v115 = v133;
      (*(v109 + 32))(v133, v108, v110);
      v116 = [objc_allocWithZone(type metadata accessor for SiriAudioSelfLogger()) init];
      sub_26646BE04(1, v115);

      (*(v109 + 8))(v115, v110);
    }

    v114 = v143;
  }

  else
  {
    v114 = v143;
    v112 = v141;
    v113 = v137;
  }

  v145(v113, v147, v112);
  v117 = sub_2664DFE18();
  v118 = sub_2664E06E8();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 134349056;
    *(v119 + 4) = v153;
    _os_log_impl(&dword_26629C000, v117, v118, "MediaPlaybackProvider#waitForTTSSynth setQueue waiting for TTS synthesis completed notification with timeout: %{public}ldms", v119, 0xCu);
    MEMORY[0x266784AD0](v119, -1, -1);
  }

  v144(v113, v112);
  type metadata accessor for DarwinNotification();
  v120 = swift_allocObject();
  *(v120 + 16) = 0xD000000000000033;
  *(v120 + 24) = 0x80000002664FBB90;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v121 = qword_280F91D48;
  v122 = v138;
  sub_2664DFDE8();
  v123 = sub_2664E0848();
  sub_2664DFDC8(v123, &dword_26629C000, v121, "mediaPlaybackProviderCommandSendQueueWaitingForTTSSynthesis", 59, 2, v122, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v124 = v59;
  v125 = v151;

  v126 = v60;
  v127 = v152;

  sub_2664934E4(v120, v153, v127, v142, v114, v125, v124, v126, v150 & 1, v149);
  sub_2664E0838();
  sub_2664DFDD8();

  swift_bridgeObjectRelease_n();

  (*(v139 + 8))(v122, v140);
}