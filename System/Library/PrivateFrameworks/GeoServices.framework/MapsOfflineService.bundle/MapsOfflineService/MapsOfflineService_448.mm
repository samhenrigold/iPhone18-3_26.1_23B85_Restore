uint64_t sub_17FF454(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v20 = sub_1797A98(*(a1 + 64));
    v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_137;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v21 = sub_179E704(*(a1 + 72));
  v2 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_138;
  }

LABEL_137:
  v22 = sub_179F4BC(*(a1 + 80));
  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_139;
  }

LABEL_138:
  v23 = sub_17A046C(*(a1 + 88));
  v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_140:
    v25 = sub_17BD1FC(*(a1 + 104));
    v2 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_141;
  }

LABEL_139:
  v24 = sub_17A24CC(*(a1 + 96));
  v2 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_140;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_141:
  v26 = sub_17BEB7C(*(a1 + 112));
  v2 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    v4 = sub_17C4E0C(*(a1 + 120));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    v27 = sub_17C3204(*(a1 + 128));
    v2 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_145;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v28 = sub_17B28E0(*(a1 + 136));
  v2 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_146;
  }

LABEL_145:
  v29 = sub_17AACF0(*(a1 + 144));
  v2 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_147;
  }

LABEL_146:
  v30 = sub_17C8FD4(*(a1 + 152));
  v2 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_148;
  }

LABEL_147:
  v31 = sub_1868D18(*(a1 + 160));
  v2 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_149;
  }

LABEL_148:
  v32 = sub_17CB10C(*(a1 + 168));
  v2 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_149:
  v33 = sub_17CD318(*(a1 + 176));
  v2 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    v5 = sub_153C388(*(a1 + 184));
    v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    v34 = sub_17B4C04(*(a1 + 192));
    v2 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_153;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  v35 = sub_17CECB8(*(a1 + 200));
  v2 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_154;
  }

LABEL_153:
  v36 = sub_17CF788(*(a1 + 208));
  v2 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_155;
  }

LABEL_154:
  v37 = sub_17D4AA8(*(a1 + 216));
  v2 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_156;
  }

LABEL_155:
  v38 = sub_17B5604(*(a1 + 224));
  v2 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_157;
  }

LABEL_156:
  v39 = sub_17BC254(*(a1 + 232));
  v2 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_157:
  v40 = sub_17D71E8(*(a1 + 240));
  v2 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    v6 = sub_17B05D0(*(a1 + 248));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v92 = sub_17DB964(*(a1 + 256));
    v2 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_220;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  v93 = sub_17DCC34(*(a1 + 264));
  v2 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_221;
  }

LABEL_220:
  v94 = sub_17E2E58(*(a1 + 272));
  v2 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_222;
  }

LABEL_221:
  v95 = sub_17A3294(*(a1 + 280));
  v2 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_223;
  }

LABEL_222:
  v96 = sub_17A4570(*(a1 + 288));
  v2 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_224:
    v98 = sub_17A6148(*(a1 + 304));
    v2 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_225;
  }

LABEL_223:
  v97 = sub_17A55E8(*(a1 + 296));
  v2 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_224;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_225:
  v99 = sub_17C0734(*(a1 + 312));
  v2 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_40:
  v7 = *(a1 + 44);
  if (!v7)
  {
    goto LABEL_50;
  }

  if (v7)
  {
    v41 = sub_17E6DC8(*(a1 + 320));
    v2 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 2) == 0)
    {
LABEL_43:
      if ((v7 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_161;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_43;
  }

  v42 = sub_17E768C(*(a1 + 328));
  v2 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 4) == 0)
  {
LABEL_44:
    if ((v7 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_162;
  }

LABEL_161:
  v43 = sub_17E86C0(*(a1 + 336));
  v2 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 8) == 0)
  {
LABEL_45:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_163;
  }

LABEL_162:
  v44 = sub_17EA4E4(*(a1 + 344));
  v2 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x10) == 0)
  {
LABEL_46:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_164;
  }

LABEL_163:
  v45 = sub_1869600(*(a1 + 352));
  v2 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x20) == 0)
  {
LABEL_47:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_165;
  }

LABEL_164:
  v46 = sub_17EB344(*(a1 + 360));
  v2 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x40) == 0)
  {
LABEL_48:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_165:
  v47 = sub_17ED73C(*(a1 + 368));
  v2 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x80) != 0)
  {
LABEL_49:
    v8 = sub_17EDED8(*(a1 + 376));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_50:
  if ((v7 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v7 & 0x100) != 0)
  {
    v48 = sub_17EE7C4(*(a1 + 384));
    v2 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x200) == 0)
    {
LABEL_53:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_169;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  v49 = sub_17EBD10(*(a1 + 392));
  v2 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x400) == 0)
  {
LABEL_54:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_170;
  }

LABEL_169:
  v50 = sub_17EC448(*(a1 + 400));
  v2 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x800) == 0)
  {
LABEL_55:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_171;
  }

LABEL_170:
  v51 = sub_1920C44(*(a1 + 408));
  v2 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x1000) == 0)
  {
LABEL_56:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_172;
  }

LABEL_171:
  v52 = sub_17ECD78(*(a1 + 416));
  v2 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x2000) == 0)
  {
LABEL_57:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_173;
  }

LABEL_172:
  v53 = sub_17E56D8(*(a1 + 424));
  v2 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x4000) == 0)
  {
LABEL_58:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_173:
  v54 = sub_17E64C8(*(a1 + 432));
  v2 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x8000) != 0)
  {
LABEL_59:
    v9 = sub_17C7CB4(*(a1 + 440));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_60:
  if ((v7 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v7 & 0x10000) != 0)
  {
    v55 = sub_17C15A0(*(a1 + 448));
    v2 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x20000) == 0)
    {
LABEL_63:
      if ((v7 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_177;
    }
  }

  else if ((v7 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  v56 = sub_13935B0(*(a1 + 456));
  v2 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x40000) == 0)
  {
LABEL_64:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_178;
  }

LABEL_177:
  v57 = sub_191CAC4(*(a1 + 464));
  v2 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x80000) == 0)
  {
LABEL_65:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_179;
  }

LABEL_178:
  v58 = sub_17EFAC8(*(a1 + 472));
  v2 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x100000) == 0)
  {
LABEL_66:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_180;
  }

LABEL_179:
  v59 = sub_179CFF8(*(a1 + 480));
  v2 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x200000) == 0)
  {
LABEL_67:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_181;
  }

LABEL_180:
  v60 = sub_17F1D20(*(a1 + 488));
  v2 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x400000) == 0)
  {
LABEL_68:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_181:
  v61 = sub_191D7E8(*(a1 + 496));
  v2 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x800000) != 0)
  {
LABEL_69:
    v10 = sub_1851FE0(*(a1 + 504));
    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_70:
  if (!HIBYTE(v7))
  {
    goto LABEL_79;
  }

  if ((v7 & 0x1000000) != 0)
  {
    v100 = sub_1853FB8(*(a1 + 512));
    v2 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v7 & 0x4000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_228;
    }
  }

  else if ((v7 & 0x2000000) == 0)
  {
    goto LABEL_73;
  }

  v101 = sub_1417BC4(*(a1 + 520));
  v2 += v101 + ((9 * (__clz(v101 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x4000000) == 0)
  {
LABEL_74:
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_229;
  }

LABEL_228:
  v102 = sub_1815E44(*(a1 + 528));
  v2 += v102 + ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x8000000) == 0)
  {
LABEL_75:
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_230;
  }

LABEL_229:
  v103 = sub_1816C08(*(a1 + 536));
  v2 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x10000000) == 0)
  {
LABEL_76:
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_231;
  }

LABEL_230:
  v104 = sub_18198AC(*(a1 + 544));
  v2 += v104 + ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x20000000) == 0)
  {
LABEL_77:
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_232:
    v106 = sub_17B5F88(*(a1 + 560));
    v2 += v106 + ((9 * (__clz(v106 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_233;
  }

LABEL_231:
  v105 = sub_181EAC0(*(a1 + 552));
  v2 += v105 + ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_232;
  }

LABEL_78:
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_233:
  v107 = sub_17B67C0(*(a1 + 568));
  v2 += v107 + ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_79:
  v11 = *(a1 + 48);
  if (!v11)
  {
    goto LABEL_89;
  }

  if (v11)
  {
    v62 = sub_17B76E8(*(a1 + 576));
    v2 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 2) == 0)
    {
LABEL_82:
      if ((v11 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_185;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_82;
  }

  v63 = sub_13935B0(*(a1 + 584));
  v2 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 4) == 0)
  {
LABEL_83:
    if ((v11 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_186;
  }

LABEL_185:
  v64 = sub_1852EA0(*(a1 + 592));
  v2 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 8) == 0)
  {
LABEL_84:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_187;
  }

LABEL_186:
  v65 = sub_182ED00(*(a1 + 600));
  v2 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x10) == 0)
  {
LABEL_85:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_188;
  }

LABEL_187:
  v66 = sub_174C0B8(*(a1 + 608));
  v2 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x20) == 0)
  {
LABEL_86:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_189;
  }

LABEL_188:
  v67 = sub_181B1C0(*(a1 + 616));
  v2 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x40) == 0)
  {
LABEL_87:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_189:
  v68 = sub_181D93C(*(a1 + 624));
  v2 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x80) != 0)
  {
LABEL_88:
    v12 = sub_181E09C(*(a1 + 632));
    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_89:
  if ((v11 & 0xFF00) == 0)
  {
    goto LABEL_99;
  }

  if ((v11 & 0x100) != 0)
  {
    v69 = sub_17CD318(*(a1 + 640));
    v2 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 0x200) == 0)
    {
LABEL_92:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_193;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_92;
  }

  v70 = sub_17B80F8(*(a1 + 648));
  v2 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x400) == 0)
  {
LABEL_93:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_194;
  }

LABEL_193:
  v71 = sub_1854520(*(a1 + 656));
  v2 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x800) == 0)
  {
LABEL_94:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_195;
  }

LABEL_194:
  v72 = sub_181C364(*(a1 + 664));
  v2 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x1000) == 0)
  {
LABEL_95:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_196;
  }

LABEL_195:
  v73 = sub_182F524(*(a1 + 672));
  v2 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x2000) == 0)
  {
LABEL_96:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_197;
  }

LABEL_196:
  v74 = sub_17D83DC(*(a1 + 680));
  v2 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x4000) == 0)
  {
LABEL_97:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

LABEL_197:
  v75 = sub_181D1E8(*(a1 + 688));
  v2 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x8000) != 0)
  {
LABEL_98:
    v13 = sub_17D0250(*(a1 + 696));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_99:
  if ((v11 & 0xFF0000) == 0)
  {
    goto LABEL_109;
  }

  if ((v11 & 0x10000) != 0)
  {
    v76 = sub_17D26C4(*(a1 + 704));
    v2 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 0x20000) == 0)
    {
LABEL_102:
      if ((v11 & 0x40000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_201;
    }
  }

  else if ((v11 & 0x20000) == 0)
  {
    goto LABEL_102;
  }

  v77 = sub_17D3240(*(a1 + 712));
  v2 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x40000) == 0)
  {
LABEL_103:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_202;
  }

LABEL_201:
  v78 = sub_182DB2C(*(a1 + 720));
  v2 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x80000) == 0)
  {
LABEL_104:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_203;
  }

LABEL_202:
  v79 = sub_185BAFC(*(a1 + 728));
  v2 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x100000) == 0)
  {
LABEL_105:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_204;
  }

LABEL_203:
  v80 = sub_17BA970(*(a1 + 736));
  v2 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x200000) == 0)
  {
LABEL_106:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_205;
  }

LABEL_204:
  v81 = sub_17DAE64(*(a1 + 744));
  v2 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x400000) == 0)
  {
LABEL_107:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_205:
  v82 = sub_17D13B0(*(a1 + 752));
  v2 += v82 + ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x800000) != 0)
  {
LABEL_108:
    v14 = sub_184AFE4(*(a1 + 760));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_109:
  if (!HIBYTE(v11))
  {
    goto LABEL_118;
  }

  if ((v11 & 0x1000000) != 0)
  {
    v108 = sub_185CFA8(*(a1 + 768));
    v2 += v108 + ((9 * (__clz(v108 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 0x2000000) == 0)
    {
LABEL_112:
      if ((v11 & 0x4000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_236;
    }
  }

  else if ((v11 & 0x2000000) == 0)
  {
    goto LABEL_112;
  }

  v109 = sub_17BB51C(*(a1 + 776));
  v2 += v109 + ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x4000000) == 0)
  {
LABEL_113:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_237;
  }

LABEL_236:
  v110 = sub_183D770(*(a1 + 784));
  v2 += v110 + ((9 * (__clz(v110 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x8000000) == 0)
  {
LABEL_114:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_238;
  }

LABEL_237:
  v111 = sub_1828E7C(*(a1 + 792));
  v2 += v111 + ((9 * (__clz(v111 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x10000000) == 0)
  {
LABEL_115:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_239;
  }

LABEL_238:
  v112 = sub_181F6EC(*(a1 + 800));
  v2 += v112 + ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x20000000) == 0)
  {
LABEL_116:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_117;
    }

LABEL_240:
    v114 = sub_18251DC(*(a1 + 816));
    v2 += v114 + ((9 * (__clz(v114 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_241;
  }

LABEL_239:
  v113 = sub_18202A4(*(a1 + 808));
  v2 += v113 + ((9 * (__clz(v113 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x40000000) != 0)
  {
    goto LABEL_240;
  }

LABEL_117:
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_241:
  v115 = sub_17DA048(*(a1 + 824));
  v2 += v115 + ((9 * (__clz(v115 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_118:
  v15 = *(a1 + 52);
  if (!v15)
  {
    goto LABEL_128;
  }

  if (v15)
  {
    v83 = sub_1820E4C(*(a1 + 832));
    v2 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v15 & 2) == 0)
    {
LABEL_121:
      if ((v15 & 4) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_209;
    }
  }

  else if ((v15 & 2) == 0)
  {
    goto LABEL_121;
  }

  v84 = sub_1821D4C(*(a1 + 840));
  v2 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 4) == 0)
  {
LABEL_122:
    if ((v15 & 8) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_210;
  }

LABEL_209:
  v85 = sub_1822BE0(*(a1 + 848));
  v2 += v85 + ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 8) == 0)
  {
LABEL_123:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_211;
  }

LABEL_210:
  v86 = sub_18235F8(*(a1 + 856));
  v2 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x10) == 0)
  {
LABEL_124:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_212;
  }

LABEL_211:
  v87 = sub_184CFE8(*(a1 + 864));
  v2 += v87 + ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x20) == 0)
  {
LABEL_125:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_213;
  }

LABEL_212:
  v88 = sub_1823F04(*(a1 + 872));
  v2 += v88 + ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x40) == 0)
  {
LABEL_126:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_213:
  v89 = sub_17C6698(*(a1 + 880));
  v2 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x80) != 0)
  {
LABEL_127:
    v16 = sub_17C729C(*(a1 + 888));
    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_128:
  if ((v15 & 0x700) == 0)
  {
    goto LABEL_133;
  }

  if ((v15 & 0x100) != 0)
  {
    v90 = sub_182FF34(*(a1 + 896));
    v2 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v15 & 0x200) == 0)
    {
LABEL_131:
      if ((v15 & 0x400) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_132;
    }
  }

  else if ((v15 & 0x200) == 0)
  {
    goto LABEL_131;
  }

  v91 = sub_184E434(*(a1 + 904));
  v2 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v15 & 0x400) != 0)
  {
LABEL_132:
    v17 = sub_1826A7C(*(a1 + 912));
    v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_133:
  v18 = *(a1 + 8);
  if (v18)
  {
    v116 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    v117 = *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v117 < 0)
    {
      v117 = *(v116 + 16);
    }

    v2 += v117;
  }

  *(a1 + 56) = v2;
  return v2;
}

void sub_1800AF0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 + 40);
  if (!v5)
  {
    goto LABEL_75;
  }

  if (v5)
  {
    *(a1 + 40) |= 1u;
    v6 = *(a1 + 64);
    if (!v6)
    {
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      v6 = sub_185D55C(v8);
      *(a1 + 64) = v6;
    }

    if (*(a2 + 64))
    {
      v9 = *(a2 + 64);
    }

    else
    {
      v9 = &off_2782358;
    }

    sub_17983D8(v6, v9);
    if ((v5 & 2) == 0)
    {
LABEL_4:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(a1 + 40) |= 2u;
  v10 = *(a1 + 72);
  if (!v10)
  {
    v11 = *(a1 + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v10 = sub_185D940(v12);
    *(a1 + 72) = v10;
  }

  if (*(a2 + 72))
  {
    v13 = *(a2 + 72);
  }

  else
  {
    v13 = &off_2782768;
  }

  sub_179E8C0(v10, v13);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_27:
  *(a1 + 40) |= 4u;
  v14 = *(a1 + 80);
  if (!v14)
  {
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v14 = sub_185D9F8(v16);
    *(a1 + 80) = v14;
  }

  if (*(a2 + 80))
  {
    v17 = *(a2 + 80);
  }

  else
  {
    v17 = &off_2782800;
  }

  sub_179F564(v14, v17);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_35:
  *(a1 + 40) |= 8u;
  v18 = *(a1 + 88);
  if (!v18)
  {
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    v18 = sub_185DAF4(v20);
    *(a1 + 88) = v18;
  }

  if (*(a2 + 88))
  {
    v21 = *(a2 + 88);
  }

  else
  {
    v21 = &off_2782860;
  }

  sub_17A058C(v18, v21);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_43:
  *(a1 + 40) |= 0x10u;
  v22 = *(a1 + 96);
  if (!v22)
  {
    v23 = *(a1 + 8);
    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
    if (v23)
    {
      v24 = *v24;
    }

    v22 = sub_185DCB4(v24);
    *(a1 + 96) = v22;
  }

  if (*(a2 + 96))
  {
    v25 = *(a2 + 96);
  }

  else
  {
    v25 = &off_2782930;
  }

  sub_17A2650(v22, v25);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_51:
  *(a1 + 40) |= 0x20u;
  v26 = *(a1 + 104);
  if (!v26)
  {
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    v26 = sub_185F28C(v28);
    *(a1 + 104) = v26;
  }

  if (*(a2 + 104))
  {
    v29 = *(a2 + 104);
  }

  else
  {
    v29 = &off_2783528;
  }

  sub_17BD384(v26, v29);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

LABEL_59:
  *(a1 + 40) |= 0x40u;
  v30 = *(a1 + 112);
  if (!v30)
  {
    v31 = *(a1 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    v30 = sub_185F3C8(v32);
    *(a1 + 112) = v30;
  }

  if (*(a2 + 112))
  {
    v33 = *(a2 + 112);
  }

  else
  {
    v33 = &off_27835F8;
  }

  sub_17BECF0(v30, v33);
  if ((v5 & 0x80) != 0)
  {
LABEL_67:
    *(a1 + 40) |= 0x80u;
    v34 = *(a1 + 120);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_185F924(v36);
      *(a1 + 120) = v34;
    }

    if (*(a2 + 120))
    {
      v37 = *(a2 + 120);
    }

    else
    {
      v37 = &off_27838B0;
    }

    sub_179AFF4(v34, v37);
  }

LABEL_75:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_149;
  }

  if ((v5 & 0x100) != 0)
  {
    *(a1 + 40) |= 0x100u;
    v38 = *(a1 + 128);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_185F788(v40);
      *(a1 + 128) = v38;
    }

    if (*(a2 + 128))
    {
      v41 = *(a2 + 128);
    }

    else
    {
      v41 = &off_27837E8;
    }

    sub_17C3340(v38, v41);
    if ((v5 & 0x200) == 0)
    {
LABEL_78:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_101;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_78;
  }

  *(a1 + 40) |= 0x200u;
  v42 = *(a1 + 136);
  if (!v42)
  {
    v43 = *(a1 + 8);
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    v42 = sub_185E974(v44);
    *(a1 + 136) = v42;
  }

  if (*(a2 + 136))
  {
    v45 = *(a2 + 136);
  }

  else
  {
    v45 = &off_2782F78;
  }

  sub_17B2C0C(v42, v45);
  if ((v5 & 0x400) == 0)
  {
LABEL_79:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_109;
  }

LABEL_101:
  *(a1 + 40) |= 0x400u;
  v46 = *(a1 + 144);
  if (!v46)
  {
    v47 = *(a1 + 8);
    v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
    if (v47)
    {
      v48 = *v48;
    }

    v46 = sub_185E560(v48);
    *(a1 + 144) = v46;
  }

  if (*(a2 + 144))
  {
    v49 = *(a2 + 144);
  }

  else
  {
    v49 = &off_2782C98;
  }

  sub_17AAEBC(v46, v49);
  if ((v5 & 0x800) == 0)
  {
LABEL_80:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_117;
  }

LABEL_109:
  *(a1 + 40) |= 0x800u;
  v50 = *(a1 + 152);
  if (!v50)
  {
    v51 = *(a1 + 8);
    v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
    if (v51)
    {
      v52 = *v52;
    }

    v50 = sub_185FE68(v52);
    *(a1 + 152) = v50;
  }

  if (*(a2 + 152))
  {
    v53 = *(a2 + 152);
  }

  else
  {
    v53 = &off_2783AA8;
  }

  sub_17C91B4(v50, v53);
  if ((v5 & 0x1000) == 0)
  {
LABEL_81:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_125;
  }

LABEL_117:
  *(a1 + 40) |= 0x1000u;
  v54 = *(a1 + 160);
  if (!v54)
  {
    v55 = *(a1 + 8);
    v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
    if (v55)
    {
      v56 = *v56;
    }

    v54 = sub_1869074(v56);
    *(a1 + 160) = v54;
  }

  if (*(a2 + 160))
  {
    v57 = *(a2 + 160);
  }

  else
  {
    v57 = &off_2787AD8;
  }

  sub_1802D4C(v54, v57);
  if ((v5 & 0x2000) == 0)
  {
LABEL_82:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_133;
  }

LABEL_125:
  *(a1 + 40) |= 0x2000u;
  v58 = *(a1 + 168);
  if (!v58)
  {
    v59 = *(a1 + 8);
    v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
    if (v59)
    {
      v60 = *v60;
    }

    v58 = sub_185FFF0(v60);
    *(a1 + 168) = v58;
  }

  if (*(a2 + 168))
  {
    v61 = *(a2 + 168);
  }

  else
  {
    v61 = &off_2783B88;
  }

  sub_1436AB4(v58, v61);
  if ((v5 & 0x4000) == 0)
  {
LABEL_83:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_141;
  }

LABEL_133:
  *(a1 + 40) |= 0x4000u;
  v62 = *(a1 + 176);
  if (!v62)
  {
    v63 = *(a1 + 8);
    v64 = (v63 & 0xFFFFFFFFFFFFFFFCLL);
    if (v63)
    {
      v64 = *v64;
    }

    v62 = sub_1860104(v64);
    *(a1 + 176) = v62;
  }

  if (*(a2 + 176))
  {
    v65 = *(a2 + 176);
  }

  else
  {
    v65 = &off_2783C80;
  }

  sub_17CD440(v62, v65);
  if ((v5 & 0x8000) != 0)
  {
LABEL_141:
    *(a1 + 40) |= 0x8000u;
    v66 = *(a1 + 184);
    if (!v66)
    {
      v67 = *(a1 + 8);
      v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
      if (v67)
      {
        v68 = *v68;
      }

      v66 = sub_1551A70(v68);
      *(a1 + 184) = v66;
    }

    if (*(a2 + 184))
    {
      v69 = *(a2 + 184);
    }

    else
    {
      v69 = &off_2776880;
    }

    sub_144F404(v66, v69);
  }

LABEL_149:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_223;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(a1 + 40) |= 0x10000u;
    v70 = *(a1 + 192);
    if (!v70)
    {
      v71 = *(a1 + 8);
      v72 = (v71 & 0xFFFFFFFFFFFFFFFCLL);
      if (v71)
      {
        v72 = *v72;
      }

      v70 = sub_185EB00(v72);
      *(a1 + 192) = v70;
    }

    if (*(a2 + 192))
    {
      v73 = *(a2 + 192);
    }

    else
    {
      v73 = &off_2783108;
    }

    sub_17B4CAC(v70, v73);
    if ((v5 & 0x20000) == 0)
    {
LABEL_152:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_175;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_152;
  }

  *(a1 + 40) |= 0x20000u;
  v74 = *(a1 + 200);
  if (!v74)
  {
    v75 = *(a1 + 8);
    v76 = (v75 & 0xFFFFFFFFFFFFFFFCLL);
    if (v75)
    {
      v76 = *v76;
    }

    v74 = sub_186030C(v76);
    *(a1 + 200) = v74;
  }

  if (*(a2 + 200))
  {
    v77 = *(a2 + 200);
  }

  else
  {
    v77 = &off_2783D90;
  }

  sub_17CED88(v74, v77);
  if ((v5 & 0x40000) == 0)
  {
LABEL_153:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_183;
  }

LABEL_175:
  *(a1 + 40) |= 0x40000u;
  v78 = *(a1 + 208);
  if (!v78)
  {
    v79 = *(a1 + 8);
    v80 = (v79 & 0xFFFFFFFFFFFFFFFCLL);
    if (v79)
    {
      v80 = *v80;
    }

    v78 = sub_1860420(v80);
    *(a1 + 208) = v78;
  }

  if (*(a2 + 208))
  {
    v81 = *(a2 + 208);
  }

  else
  {
    v81 = &off_2783DE0;
  }

  sub_17CF8BC(v78, v81);
  if ((v5 & 0x80000) == 0)
  {
LABEL_154:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_191;
  }

LABEL_183:
  *(a1 + 40) |= 0x80000u;
  v82 = *(a1 + 216);
  if (!v82)
  {
    v83 = *(a1 + 8);
    v84 = (v83 & 0xFFFFFFFFFFFFFFFCLL);
    if (v83)
    {
      v84 = *v84;
    }

    v82 = sub_1860960(v84);
    *(a1 + 216) = v82;
  }

  if (*(a2 + 216))
  {
    v85 = *(a2 + 216);
  }

  else
  {
    v85 = &off_2784040;
  }

  sub_17D4D70(v82, v85);
  if ((v5 & 0x100000) == 0)
  {
LABEL_155:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_199;
  }

LABEL_191:
  *(a1 + 40) |= 0x100000u;
  v86 = *(a1 + 224);
  if (!v86)
  {
    v87 = *(a1 + 8);
    v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
    if (v87)
    {
      v88 = *v88;
    }

    v86 = sub_185EC18(v88);
    *(a1 + 224) = v86;
  }

  if (*(a2 + 224))
  {
    v89 = *(a2 + 224);
  }

  else
  {
    v89 = &off_2783150;
  }

  sub_17B56AC(v86, v89);
  if ((v5 & 0x200000) == 0)
  {
LABEL_156:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_207;
  }

LABEL_199:
  *(a1 + 40) |= 0x200000u;
  v90 = *(a1 + 232);
  if (!v90)
  {
    v91 = *(a1 + 8);
    v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
    if (v91)
    {
      v92 = *v92;
    }

    v90 = sub_185F1B8(v92);
    *(a1 + 232) = v90;
  }

  if (*(a2 + 232))
  {
    v93 = *(a2 + 232);
  }

  else
  {
    v93 = &off_27834C0;
  }

  sub_17BC394(v90, v93);
  if ((v5 & 0x400000) == 0)
  {
LABEL_157:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_215;
  }

LABEL_207:
  *(a1 + 40) |= 0x400000u;
  v94 = *(a1 + 240);
  if (!v94)
  {
    v95 = *(a1 + 8);
    v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
    if (v95)
    {
      v96 = *v96;
    }

    v94 = sub_1860AC8(v96);
    *(a1 + 240) = v94;
  }

  if (*(a2 + 240))
  {
    v97 = *(a2 + 240);
  }

  else
  {
    v97 = &off_2784138;
  }

  sub_17D7460(v94, v97);
  if ((v5 & 0x800000) != 0)
  {
LABEL_215:
    *(a1 + 40) |= 0x800000u;
    v98 = *(a1 + 248);
    if (!v98)
    {
      v99 = *(a1 + 8);
      v100 = (v99 & 0xFFFFFFFFFFFFFFFCLL);
      if (v99)
      {
        v100 = *v100;
      }

      v98 = sub_185E820(v100);
      *(a1 + 248) = v98;
    }

    if (*(a2 + 248))
    {
      v101 = *(a2 + 248);
    }

    else
    {
      v101 = &off_2782E80;
    }

    sub_17B0890(v98, v101);
  }

LABEL_223:
  if (!HIBYTE(v5))
  {
    goto LABEL_297;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(a1 + 40) |= 0x1000000u;
    v102 = *(a1 + 256);
    if (!v102)
    {
      v103 = *(a1 + 8);
      v104 = (v103 & 0xFFFFFFFFFFFFFFFCLL);
      if (v103)
      {
        v104 = *v104;
      }

      v102 = sub_1860E20(v104);
      *(a1 + 256) = v102;
    }

    if (*(a2 + 256))
    {
      v105 = *(a2 + 256);
    }

    else
    {
      v105 = &off_2784368;
    }

    sub_17DBAB0(v102, v105);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_226:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_227;
      }

      goto LABEL_249;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_226;
  }

  *(a1 + 40) |= 0x2000000u;
  v106 = *(a1 + 264);
  if (!v106)
  {
    v107 = *(a1 + 8);
    v108 = (v107 & 0xFFFFFFFFFFFFFFFCLL);
    if (v107)
    {
      v108 = *v108;
    }

    v106 = sub_1860FA8(v108);
    *(a1 + 264) = v106;
  }

  if (*(a2 + 264))
  {
    v109 = *(a2 + 264);
  }

  else
  {
    v109 = &off_27843B8;
  }

  sub_17DCD14(v106, v109);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_227:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_257;
  }

LABEL_249:
  *(a1 + 40) |= 0x4000000u;
  v110 = *(a1 + 272);
  if (!v110)
  {
    v111 = *(a1 + 8);
    v112 = (v111 & 0xFFFFFFFFFFFFFFFCLL);
    if (v111)
    {
      v112 = *v112;
    }

    v110 = sub_1861658(v112);
    *(a1 + 272) = v110;
  }

  if (*(a2 + 272))
  {
    v113 = *(a2 + 272);
  }

  else
  {
    v113 = &off_2784608;
  }

  sub_17E3100(v110, v113);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_228:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_265;
  }

LABEL_257:
  *(a1 + 40) |= 0x8000000u;
  v114 = *(a1 + 280);
  if (!v114)
  {
    v115 = *(a1 + 8);
    v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
    if (v115)
    {
      v116 = *v116;
    }

    v114 = sub_185DD6C(v116);
    *(a1 + 280) = v114;
  }

  if (*(a2 + 280))
  {
    v117 = *(a2 + 280);
  }

  else
  {
    v117 = &off_27829E0;
  }

  sub_14B7610(v114, v117);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_229:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_273;
  }

LABEL_265:
  *(a1 + 40) |= 0x10000000u;
  v118 = *(a1 + 288);
  if (!v118)
  {
    v119 = *(a1 + 8);
    v120 = (v119 & 0xFFFFFFFFFFFFFFFCLL);
    if (v119)
    {
      v120 = *v120;
    }

    v118 = sub_185DF08(v120);
    *(a1 + 288) = v118;
  }

  if (*(a2 + 288))
  {
    v121 = *(a2 + 288);
  }

  else
  {
    v121 = &off_2782A50;
  }

  sub_17A461C(v118, v121);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_230:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_281;
  }

LABEL_273:
  *(a1 + 40) |= 0x20000000u;
  v122 = *(a1 + 296);
  if (!v122)
  {
    v123 = *(a1 + 8);
    v124 = (v123 & 0xFFFFFFFFFFFFFFFCLL);
    if (v123)
    {
      v124 = *v124;
    }

    v122 = sub_185E080(v124);
    *(a1 + 296) = v122;
  }

  if (*(a2 + 296))
  {
    v125 = *(a2 + 296);
  }

  else
  {
    v125 = &off_2782AB0;
  }

  sub_17A5690(v122, v125);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_231:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_297;
    }

    goto LABEL_289;
  }

LABEL_281:
  *(a1 + 40) |= 0x40000000u;
  v126 = *(a1 + 304);
  if (!v126)
  {
    v127 = *(a1 + 8);
    v128 = (v127 & 0xFFFFFFFFFFFFFFFCLL);
    if (v127)
    {
      v128 = *v128;
    }

    sub_185E198(v128);
    *(a1 + 304) = v126;
  }

  if (*(a2 + 304))
  {
    v129 = *(a2 + 304);
  }

  else
  {
    v129 = &off_2782AF8;
  }

  sub_17A6260(v126, v129);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_289:
    *(a1 + 40) |= 0x80000000;
    v130 = *(a1 + 312);
    if (!v130)
    {
      v131 = *(a1 + 8);
      v132 = (v131 & 0xFFFFFFFFFFFFFFFCLL);
      if (v131)
      {
        v132 = *v132;
      }

      v130 = sub_185F504(v132);
      *(a1 + 312) = v130;
    }

    if (*(a2 + 312))
    {
      v133 = *(a2 + 312);
    }

    else
    {
      v133 = &off_27836D8;
    }

    sub_17C0874(v130, v133);
  }

LABEL_297:
  v134 = *(a2 + 44);
  if (!v134)
  {
    goto LABEL_371;
  }

  if (v134)
  {
    *(a1 + 44) |= 1u;
    v135 = *(a1 + 320);
    if (!v135)
    {
      v136 = *(a1 + 8);
      v137 = (v136 & 0xFFFFFFFFFFFFFFFCLL);
      if (v136)
      {
        v137 = *v137;
      }

      v135 = sub_1861944(v137);
      *(a1 + 320) = v135;
    }

    if (*(a2 + 320))
    {
      v138 = *(a2 + 320);
    }

    else
    {
      v138 = &off_2784828;
    }

    sub_132DE2C(v135, v138);
    if ((v134 & 2) == 0)
    {
LABEL_300:
      if ((v134 & 4) == 0)
      {
        goto LABEL_301;
      }

      goto LABEL_323;
    }
  }

  else if ((v134 & 2) == 0)
  {
    goto LABEL_300;
  }

  *(a1 + 44) |= 2u;
  v139 = *(a1 + 328);
  if (!v139)
  {
    v140 = *(a1 + 8);
    v141 = (v140 & 0xFFFFFFFFFFFFFFFCLL);
    if (v140)
    {
      v141 = *v141;
    }

    v139 = sub_1861A40(v141);
    *(a1 + 328) = v139;
  }

  if (*(a2 + 328))
  {
    v142 = *(a2 + 328);
  }

  else
  {
    v142 = &off_2784860;
  }

  sub_12A9C84(v139, v142);
  if ((v134 & 4) == 0)
  {
LABEL_301:
    if ((v134 & 8) == 0)
    {
      goto LABEL_302;
    }

    goto LABEL_331;
  }

LABEL_323:
  *(a1 + 44) |= 4u;
  v143 = *(a1 + 336);
  if (!v143)
  {
    v144 = *(a1 + 8);
    v145 = (v144 & 0xFFFFFFFFFFFFFFFCLL);
    if (v144)
    {
      v145 = *v145;
    }

    v143 = sub_1861B5C(v145);
    *(a1 + 336) = v143;
  }

  if (*(a2 + 336))
  {
    v146 = *(a2 + 336);
  }

  else
  {
    v146 = &off_27848B0;
  }

  sub_17E8910(v143, v146);
  if ((v134 & 8) == 0)
  {
LABEL_302:
    if ((v134 & 0x10) == 0)
    {
      goto LABEL_303;
    }

    goto LABEL_339;
  }

LABEL_331:
  *(a1 + 44) |= 8u;
  v147 = *(a1 + 344);
  if (!v147)
  {
    v148 = *(a1 + 8);
    v149 = (v148 & 0xFFFFFFFFFFFFFFFCLL);
    if (v148)
    {
      v149 = *v149;
    }

    v147 = sub_1861C8C(v149);
    *(a1 + 344) = v147;
  }

  if (*(a2 + 344))
  {
    v150 = *(a2 + 344);
  }

  else
  {
    v150 = &off_27849A0;
  }

  sub_17EA5E0(v147, v150);
  if ((v134 & 0x10) == 0)
  {
LABEL_303:
    if ((v134 & 0x20) == 0)
    {
      goto LABEL_304;
    }

    goto LABEL_347;
  }

LABEL_339:
  *(a1 + 44) |= 0x10u;
  v151 = *(a1 + 352);
  if (!v151)
  {
    v152 = *(a1 + 8);
    v153 = (v152 & 0xFFFFFFFFFFFFFFFCLL);
    if (v152)
    {
      v153 = *v153;
    }

    v151 = sub_1869838(v153);
    *(a1 + 352) = v151;
  }

  if (*(a2 + 352))
  {
    v154 = *(a2 + 352);
  }

  else
  {
    v154 = &off_2787B70;
  }

  sub_1425F24(v151, v154);
  if ((v134 & 0x20) == 0)
  {
LABEL_304:
    if ((v134 & 0x40) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_355;
  }

LABEL_347:
  *(a1 + 44) |= 0x20u;
  v155 = *(a1 + 360);
  if (!v155)
  {
    v156 = *(a1 + 8);
    v157 = (v156 & 0xFFFFFFFFFFFFFFFCLL);
    if (v156)
    {
      v157 = *v157;
    }

    v155 = sub_1861D64(v157);
    *(a1 + 360) = v155;
  }

  if (*(a2 + 360))
  {
    v158 = *(a2 + 360);
  }

  else
  {
    v158 = &off_2784A20;
  }

  sub_17EB458(v155, v158);
  if ((v134 & 0x40) == 0)
  {
LABEL_305:
    if ((v134 & 0x80) == 0)
    {
      goto LABEL_371;
    }

    goto LABEL_363;
  }

LABEL_355:
  *(a1 + 44) |= 0x40u;
  v159 = *(a1 + 368);
  if (!v159)
  {
    v160 = *(a1 + 8);
    v161 = (v160 & 0xFFFFFFFFFFFFFFFCLL);
    if (v160)
    {
      v161 = *v161;
    }

    v159 = sub_18621A0(v161);
    *(a1 + 368) = v159;
  }

  if (*(a2 + 368))
  {
    v162 = *(a2 + 368);
  }

  else
  {
    v162 = &off_2784B58;
  }

  sub_129776C(v159, v162);
  if ((v134 & 0x80) != 0)
  {
LABEL_363:
    *(a1 + 44) |= 0x80u;
    v163 = *(a1 + 376);
    if (!v163)
    {
      v164 = *(a1 + 8);
      v165 = (v164 & 0xFFFFFFFFFFFFFFFCLL);
      if (v164)
      {
        v165 = *v165;
      }

      v163 = sub_18622A0(v165);
      *(a1 + 376) = v163;
    }

    if (*(a2 + 376))
    {
      v166 = *(a2 + 376);
    }

    else
    {
      v166 = &off_2784BA8;
    }

    sub_12C70A0(v163, v166);
  }

LABEL_371:
  if ((v134 & 0xFF00) == 0)
  {
    goto LABEL_445;
  }

  if ((v134 & 0x100) != 0)
  {
    *(a1 + 44) |= 0x100u;
    v167 = *(a1 + 384);
    if (!v167)
    {
      v168 = *(a1 + 8);
      v169 = (v168 & 0xFFFFFFFFFFFFFFFCLL);
      if (v168)
      {
        v169 = *v169;
      }

      v167 = sub_1862390(v169);
      *(a1 + 384) = v167;
    }

    if (*(a2 + 384))
    {
      v170 = *(a2 + 384);
    }

    else
    {
      v170 = &off_2784BE0;
    }

    sub_138A648(v167, v170);
    if ((v134 & 0x200) == 0)
    {
LABEL_374:
      if ((v134 & 0x400) == 0)
      {
        goto LABEL_375;
      }

      goto LABEL_397;
    }
  }

  else if ((v134 & 0x200) == 0)
  {
    goto LABEL_374;
  }

  *(a1 + 44) |= 0x200u;
  v171 = *(a1 + 392);
  if (!v171)
  {
    v172 = *(a1 + 8);
    v173 = (v172 & 0xFFFFFFFFFFFFFFFCLL);
    if (v172)
    {
      v173 = *v173;
    }

    v171 = sub_1861E78(v173);
    *(a1 + 392) = v171;
  }

  if (*(a2 + 392))
  {
    v174 = *(a2 + 392);
  }

  else
  {
    v174 = &off_2784A78;
  }

  sub_17EBDB8(v171, v174);
  if ((v134 & 0x400) == 0)
  {
LABEL_375:
    if ((v134 & 0x800) == 0)
    {
      goto LABEL_376;
    }

    goto LABEL_405;
  }

LABEL_397:
  *(a1 + 44) |= 0x400u;
  v175 = *(a1 + 400);
  if (!v175)
  {
    v176 = *(a1 + 8);
    v177 = (v176 & 0xFFFFFFFFFFFFFFFCLL);
    if (v176)
    {
      v177 = *v177;
    }

    v175 = sub_1861F90(v177);
    *(a1 + 400) = v175;
  }

  if (*(a2 + 400))
  {
    v178 = *(a2 + 400);
  }

  else
  {
    v178 = &off_2784AC0;
  }

  sub_12B9D50(v175, v178);
  if ((v134 & 0x800) == 0)
  {
LABEL_376:
    if ((v134 & 0x1000) == 0)
    {
      goto LABEL_377;
    }

    goto LABEL_413;
  }

LABEL_405:
  *(a1 + 44) |= 0x800u;
  v179 = *(a1 + 408);
  if (!v179)
  {
    v180 = *(a1 + 8);
    v181 = (v180 & 0xFFFFFFFFFFFFFFFCLL);
    if (v180)
    {
      v181 = *v181;
    }

    v179 = sub_19294A4(v181);
    *(a1 + 408) = v179;
  }

  if (*(a2 + 408))
  {
    v182 = *(a2 + 408);
  }

  else
  {
    v182 = &off_278BC98;
  }

  sub_1802F44(v179, v182);
  if ((v134 & 0x1000) == 0)
  {
LABEL_377:
    if ((v134 & 0x2000) == 0)
    {
      goto LABEL_378;
    }

    goto LABEL_421;
  }

LABEL_413:
  *(a1 + 44) |= 0x1000u;
  v183 = *(a1 + 416);
  if (!v183)
  {
    v184 = *(a1 + 8);
    v185 = (v184 & 0xFFFFFFFFFFFFFFFCLL);
    if (v184)
    {
      v185 = *v185;
    }

    v183 = sub_1862084(v185);
    *(a1 + 416) = v183;
  }

  if (*(a2 + 416))
  {
    v186 = *(a2 + 416);
  }

  else
  {
    v186 = &off_2784AF8;
  }

  sub_17ECE70(v183, v186);
  if ((v134 & 0x2000) == 0)
  {
LABEL_378:
    if ((v134 & 0x4000) == 0)
    {
      goto LABEL_379;
    }

    goto LABEL_429;
  }

LABEL_421:
  *(a1 + 44) |= 0x2000u;
  v187 = *(a1 + 424);
  if (!v187)
  {
    v188 = *(a1 + 8);
    v189 = (v188 & 0xFFFFFFFFFFFFFFFCLL);
    if (v188)
    {
      v189 = *v189;
    }

    v187 = sub_18617B4(v189);
    *(a1 + 424) = v187;
  }

  if (*(a2 + 424))
  {
    v190 = *(a2 + 424);
  }

  else
  {
    v190 = &off_2784730;
  }

  sub_17E5834(v187, v190);
  if ((v134 & 0x4000) == 0)
  {
LABEL_379:
    if ((v134 & 0x8000) == 0)
    {
      goto LABEL_445;
    }

    goto LABEL_437;
  }

LABEL_429:
  *(a1 + 44) |= 0x4000u;
  v191 = *(a1 + 432);
  if (!v191)
  {
    v192 = *(a1 + 8);
    v193 = (v192 & 0xFFFFFFFFFFFFFFFCLL);
    if (v192)
    {
      v193 = *v193;
    }

    v191 = sub_186186C(v193);
    *(a1 + 432) = v191;
  }

  if (*(a2 + 432))
  {
    v194 = *(a2 + 432);
  }

  else
  {
    v194 = &off_27847D0;
  }

  sub_128F948(v191, v194);
  if ((v134 & 0x8000) != 0)
  {
LABEL_437:
    *(a1 + 44) |= 0x8000u;
    v195 = *(a1 + 440);
    if (!v195)
    {
      v196 = *(a1 + 8);
      v197 = (v196 & 0xFFFFFFFFFFFFFFFCLL);
      if (v196)
      {
        v197 = *v197;
      }

      v195 = sub_185FDB0(v197);
      *(a1 + 440) = v195;
    }

    if (*(a2 + 440))
    {
      v198 = *(a2 + 440);
    }

    else
    {
      v198 = &off_2783A38;
    }

    sub_17C7D84(v195, v198);
  }

LABEL_445:
  if ((v134 & 0xFF0000) == 0)
  {
    goto LABEL_519;
  }

  if ((v134 & 0x10000) != 0)
  {
    *(a1 + 44) |= 0x10000u;
    v199 = *(a1 + 448);
    if (!v199)
    {
      v200 = *(a1 + 8);
      v201 = (v200 & 0xFFFFFFFFFFFFFFFCLL);
      if (v200)
      {
        v201 = *v201;
      }

      v199 = sub_185F5BC(v201);
      *(a1 + 448) = v199;
    }

    if (*(a2 + 448))
    {
      v202 = *(a2 + 448);
    }

    else
    {
      v202 = &off_2783780;
    }

    sub_14B7610(v199, v202);
    if ((v134 & 0x20000) == 0)
    {
LABEL_448:
      if ((v134 & 0x40000) == 0)
      {
        goto LABEL_449;
      }

      goto LABEL_471;
    }
  }

  else if ((v134 & 0x20000) == 0)
  {
    goto LABEL_448;
  }

  *(a1 + 44) |= 0x20000u;
  v203 = *(a1 + 456);
  if (!v203)
  {
    v204 = *(a1 + 8);
    v205 = (v204 & 0xFFFFFFFFFFFFFFFCLL);
    if (v204)
    {
      v205 = *v205;
    }

    v203 = sub_13AE264(v205);
    *(a1 + 456) = v203;
  }

  if (*(a2 + 456))
  {
    v206 = *(a2 + 456);
  }

  else
  {
    v206 = &off_276D790;
  }

  sub_1393658(v203, v206);
  if ((v134 & 0x40000) == 0)
  {
LABEL_449:
    if ((v134 & 0x80000) == 0)
    {
      goto LABEL_450;
    }

    goto LABEL_479;
  }

LABEL_471:
  *(a1 + 44) |= 0x40000u;
  v207 = *(a1 + 464);
  if (!v207)
  {
    v208 = *(a1 + 8);
    v209 = (v208 & 0xFFFFFFFFFFFFFFFCLL);
    if (v208)
    {
      v209 = *v209;
    }

    v207 = sub_191F8BC(v209);
    *(a1 + 464) = v207;
  }

  if (*(a2 + 464))
  {
    v210 = *(a2 + 464);
  }

  else
  {
    v210 = &off_278BAE0;
  }

  sub_18031A0(v207, v210);
  if ((v134 & 0x80000) == 0)
  {
LABEL_450:
    if ((v134 & 0x100000) == 0)
    {
      goto LABEL_451;
    }

    goto LABEL_487;
  }

LABEL_479:
  *(a1 + 44) |= 0x80000u;
  v211 = *(a1 + 472);
  if (!v211)
  {
    v212 = *(a1 + 8);
    v213 = (v212 & 0xFFFFFFFFFFFFFFFCLL);
    if (v212)
    {
      v213 = *v213;
    }

    v211 = sub_1862594(v213);
    *(a1 + 472) = v211;
  }

  if (*(a2 + 472))
  {
    v214 = *(a2 + 472);
  }

  else
  {
    v214 = &off_2784C40;
  }

  sub_17EFB98(v211, v214);
  if ((v134 & 0x100000) == 0)
  {
LABEL_451:
    if ((v134 & 0x200000) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_495;
  }

LABEL_487:
  *(a1 + 44) |= 0x100000u;
  v215 = *(a1 + 480);
  if (!v215)
  {
    v216 = *(a1 + 8);
    v217 = (v216 & 0xFFFFFFFFFFFFFFFCLL);
    if (v216)
    {
      v217 = *v217;
    }

    v215 = sub_185D888(v217);
    *(a1 + 480) = v215;
  }

  if (*(a2 + 480))
  {
    v218 = *(a2 + 480);
  }

  else
  {
    v218 = &off_27826D0;
  }

  sub_179D14C(v215, v218);
  if ((v134 & 0x200000) == 0)
  {
LABEL_452:
    if ((v134 & 0x400000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_503;
  }

LABEL_495:
  *(a1 + 44) |= 0x200000u;
  v219 = *(a1 + 488);
  if (!v219)
  {
    v220 = *(a1 + 8);
    v221 = (v220 & 0xFFFFFFFFFFFFFFFCLL);
    if (v220)
    {
      v221 = *v221;
    }

    v219 = sub_1862754(v221);
    *(a1 + 488) = v219;
  }

  if (*(a2 + 488))
  {
    v222 = *(a2 + 488);
  }

  else
  {
    v222 = &off_2784CB0;
  }

  sub_17F1F9C(v219, v222);
  if ((v134 & 0x400000) == 0)
  {
LABEL_453:
    if ((v134 & 0x800000) == 0)
    {
      goto LABEL_519;
    }

    goto LABEL_511;
  }

LABEL_503:
  *(a1 + 44) |= 0x400000u;
  v223 = *(a1 + 496);
  if (!v223)
  {
    v224 = *(a1 + 8);
    v225 = (v224 & 0xFFFFFFFFFFFFFFFCLL);
    if (v224)
    {
      v225 = *v225;
    }

    v223 = sub_191FA80(v225);
    *(a1 + 496) = v223;
  }

  if (*(a2 + 496))
  {
    v226 = *(a2 + 496);
  }

  else
  {
    v226 = &off_278BB88;
  }

  sub_1803330(v223, v226);
  if ((v134 & 0x800000) != 0)
  {
LABEL_511:
    *(a1 + 44) |= 0x800000u;
    v227 = *(a1 + 504);
    if (!v227)
    {
      v228 = *(a1 + 8);
      v229 = (v228 & 0xFFFFFFFFFFFFFFFCLL);
      if (v228)
      {
        v229 = *v229;
      }

      v227 = sub_1866134(v229);
      *(a1 + 504) = v227;
    }

    if (*(a2 + 504))
    {
      v230 = *(a2 + 504);
    }

    else
    {
      v230 = &off_27873B0;
    }

    sub_1803460(v227, v230);
  }

LABEL_519:
  if (!HIBYTE(v134))
  {
    goto LABEL_593;
  }

  if ((v134 & 0x1000000) != 0)
  {
    *(a1 + 44) |= 0x1000000u;
    v231 = *(a1 + 512);
    if (!v231)
    {
      v232 = *(a1 + 8);
      v233 = (v232 & 0xFFFFFFFFFFFFFFFCLL);
      if (v232)
      {
        v233 = *v233;
      }

      v231 = sub_1866248(v233);
      *(a1 + 512) = v231;
    }

    if (*(a2 + 512))
    {
      v234 = *(a2 + 512);
    }

    else
    {
      v234 = &off_27874D0;
    }

    sub_1803528(v231, v234);
    if ((v134 & 0x2000000) == 0)
    {
LABEL_522:
      if ((v134 & 0x4000000) == 0)
      {
        goto LABEL_523;
      }

      goto LABEL_545;
    }
  }

  else if ((v134 & 0x2000000) == 0)
  {
    goto LABEL_522;
  }

  *(a1 + 44) |= 0x2000000u;
  v235 = *(a1 + 520);
  if (!v235)
  {
    v236 = *(a1 + 8);
    v237 = (v236 & 0xFFFFFFFFFFFFFFFCLL);
    if (v236)
    {
      v237 = *v237;
    }

    a3.n128_f64[0] = sub_141BF4C(v237);
    *(a1 + 520) = v235;
  }

  if (*(a2 + 520))
  {
    v238 = *(a2 + 520);
  }

  else
  {
    v238 = &off_2770220;
  }

  sub_1417E40(v235, v238, a3);
  if ((v134 & 0x4000000) == 0)
  {
LABEL_523:
    if ((v134 & 0x8000000) == 0)
    {
      goto LABEL_524;
    }

    goto LABEL_553;
  }

LABEL_545:
  *(a1 + 44) |= 0x4000000u;
  v239 = *(a1 + 528);
  if (!v239)
  {
    v240 = *(a1 + 8);
    v241 = (v240 & 0xFFFFFFFFFFFFFFFCLL);
    if (v240)
    {
      v241 = *v241;
    }

    v239 = sub_1862B98(v241);
    *(a1 + 528) = v239;
  }

  if (*(a2 + 528))
  {
    v242 = *(a2 + 528);
  }

  else
  {
    v242 = &off_27856F0;
  }

  sub_18035F0(v239, v242);
  if ((v134 & 0x8000000) == 0)
  {
LABEL_524:
    if ((v134 & 0x10000000) == 0)
    {
      goto LABEL_525;
    }

    goto LABEL_561;
  }

LABEL_553:
  *(a1 + 44) |= 0x8000000u;
  v243 = *(a1 + 536);
  if (!v243)
  {
    v244 = *(a1 + 8);
    v245 = (v244 & 0xFFFFFFFFFFFFFFFCLL);
    if (v244)
    {
      v245 = *v245;
    }

    v243 = sub_1862BF4(v245);
    *(a1 + 536) = v243;
  }

  if (*(a2 + 536))
  {
    v246 = *(a2 + 536);
  }

  else
  {
    v246 = &off_2785748;
  }

  sub_180375C(v243, v246);
  if ((v134 & 0x10000000) == 0)
  {
LABEL_525:
    if ((v134 & 0x20000000) == 0)
    {
      goto LABEL_526;
    }

    goto LABEL_569;
  }

LABEL_561:
  *(a1 + 44) |= 0x10000000u;
  v247 = *(a1 + 544);
  if (!v247)
  {
    v248 = *(a1 + 8);
    v249 = (v248 & 0xFFFFFFFFFFFFFFFCLL);
    if (v248)
    {
      v249 = *v249;
    }

    v247 = sub_1862C50(v249);
    *(a1 + 544) = v247;
  }

  if (*(a2 + 544))
  {
    v250 = *(a2 + 544);
  }

  else
  {
    v250 = &off_27857C0;
  }

  sub_1803954(v247, v250);
  if ((v134 & 0x20000000) == 0)
  {
LABEL_526:
    if ((v134 & 0x40000000) == 0)
    {
      goto LABEL_527;
    }

    goto LABEL_577;
  }

LABEL_569:
  *(a1 + 44) |= 0x20000000u;
  v251 = *(a1 + 552);
  if (!v251)
  {
    v252 = *(a1 + 8);
    v253 = (v252 & 0xFFFFFFFFFFFFFFFCLL);
    if (v252)
    {
      v253 = *v253;
    }

    v251 = sub_1862FD4(v253);
    *(a1 + 552) = v251;
  }

  if (*(a2 + 552))
  {
    v254 = *(a2 + 552);
  }

  else
  {
    v254 = &off_2785C00;
  }

  sub_18041E0(v251, v254);
  if ((v134 & 0x40000000) == 0)
  {
LABEL_527:
    if ((v134 & 0x80000000) == 0)
    {
      goto LABEL_593;
    }

    goto LABEL_585;
  }

LABEL_577:
  *(a1 + 44) |= 0x40000000u;
  v255 = *(a1 + 560);
  if (!v255)
  {
    v256 = *(a1 + 8);
    v257 = (v256 & 0xFFFFFFFFFFFFFFFCLL);
    if (v256)
    {
      v257 = *v257;
    }

    v255 = sub_185ECEC(v257);
    *(a1 + 560) = v255;
  }

  if (*(a2 + 560))
  {
    v258 = *(a2 + 560);
  }

  else
  {
    v258 = &off_27831B0;
  }

  sub_17B6034(v255, v258);
  if ((v134 & 0x80000000) != 0)
  {
LABEL_585:
    *(a1 + 44) |= 0x80000000;
    v259 = *(a1 + 568);
    if (!v259)
    {
      v260 = *(a1 + 8);
      v261 = (v260 & 0xFFFFFFFFFFFFFFFCLL);
      if (v260)
      {
        v261 = *v261;
      }

      v259 = sub_185ED48(v261);
      *(a1 + 568) = v259;
    }

    if (*(a2 + 568))
    {
      v262 = *(a2 + 568);
    }

    else
    {
      v262 = &off_27831F8;
    }

    sub_17B686C(v259, v262);
  }

LABEL_593:
  v263 = *(a2 + 48);
  if (!v263)
  {
    goto LABEL_667;
  }

  if (v263)
  {
    *(a1 + 48) |= 1u;
    v264 = *(a1 + 576);
    if (!v264)
    {
      v265 = *(a1 + 8);
      v266 = (v265 & 0xFFFFFFFFFFFFFFFCLL);
      if (v265)
      {
        v266 = *v266;
      }

      v264 = sub_185EE28(v266);
      *(a1 + 576) = v264;
    }

    if (*(a2 + 576))
    {
      v267 = *(a2 + 576);
    }

    else
    {
      v267 = &off_2783240;
    }

    sub_17B77A4(v264, v267);
    if ((v263 & 2) == 0)
    {
LABEL_596:
      if ((v263 & 4) == 0)
      {
        goto LABEL_597;
      }

      goto LABEL_619;
    }
  }

  else if ((v263 & 2) == 0)
  {
    goto LABEL_596;
  }

  *(a1 + 48) |= 2u;
  v268 = *(a1 + 584);
  if (!v268)
  {
    v269 = *(a1 + 8);
    v270 = (v269 & 0xFFFFFFFFFFFFFFFCLL);
    if (v269)
    {
      v270 = *v270;
    }

    v268 = sub_13AE264(v270);
    *(a1 + 584) = v268;
  }

  if (*(a2 + 584))
  {
    v271 = *(a2 + 584);
  }

  else
  {
    v271 = &off_276D790;
  }

  sub_1393658(v268, v271);
  if ((v263 & 4) == 0)
  {
LABEL_597:
    if ((v263 & 8) == 0)
    {
      goto LABEL_598;
    }

    goto LABEL_627;
  }

LABEL_619:
  *(a1 + 48) |= 4u;
  v272 = *(a1 + 592);
  if (!v272)
  {
    v273 = *(a1 + 8);
    v274 = (v273 & 0xFFFFFFFFFFFFFFFCLL);
    if (v273)
    {
      v274 = *v274;
    }

    v272 = sub_1866190(v274);
    *(a1 + 592) = v272;
  }

  if (*(a2 + 592))
  {
    v275 = *(a2 + 592);
  }

  else
  {
    v275 = &off_27873F8;
  }

  sub_1804308(v272, v275);
  if ((v263 & 8) == 0)
  {
LABEL_598:
    if ((v263 & 0x10) == 0)
    {
      goto LABEL_599;
    }

    goto LABEL_635;
  }

LABEL_627:
  *(a1 + 48) |= 8u;
  v276 = *(a1 + 600);
  if (!v276)
  {
    v277 = *(a1 + 8);
    v278 = (v277 & 0xFFFFFFFFFFFFFFFCLL);
    if (v277)
    {
      v278 = *v278;
    }

    v276 = sub_1864050(v278);
    *(a1 + 600) = v276;
  }

  if (*(a2 + 600))
  {
    v279 = *(a2 + 600);
  }

  else
  {
    v279 = &off_2786490;
  }

  sub_1804554(v276, v279);
  if ((v263 & 0x10) == 0)
  {
LABEL_599:
    if ((v263 & 0x20) == 0)
    {
      goto LABEL_600;
    }

    goto LABEL_643;
  }

LABEL_635:
  *(a1 + 48) |= 0x10u;
  v280 = *(a1 + 608);
  if (!v280)
  {
    v281 = *(a1 + 8);
    v282 = (v281 & 0xFFFFFFFFFFFFFFFCLL);
    if (v281)
    {
      v282 = *v282;
    }

    v280 = sub_174DF14(v282);
    *(a1 + 608) = v280;
  }

  if (*(a2 + 608))
  {
    v283 = *(a2 + 608);
  }

  else
  {
    v283 = &off_2780C98;
  }

  sub_174C264(v280, v283);
  if ((v263 & 0x20) == 0)
  {
LABEL_600:
    if ((v263 & 0x40) == 0)
    {
      goto LABEL_601;
    }

    goto LABEL_651;
  }

LABEL_643:
  *(a1 + 48) |= 0x20u;
  v284 = *(a1 + 616);
  if (!v284)
  {
    v285 = *(a1 + 8);
    v286 = (v285 & 0xFFFFFFFFFFFFFFFCLL);
    if (v285)
    {
      v286 = *v286;
    }

    v284 = sub_1862CAC(v286);
    *(a1 + 616) = v284;
  }

  if (*(a2 + 616))
  {
    v287 = *(a2 + 616);
  }

  else
  {
    v287 = &off_27859D0;
  }

  sub_1804678(v284, v287);
  if ((v263 & 0x40) == 0)
  {
LABEL_601:
    if ((v263 & 0x80) == 0)
    {
      goto LABEL_667;
    }

    goto LABEL_659;
  }

LABEL_651:
  *(a1 + 48) |= 0x40u;
  v288 = *(a1 + 624);
  if (!v288)
  {
    v289 = *(a1 + 8);
    v290 = (v289 & 0xFFFFFFFFFFFFFFFCLL);
    if (v289)
    {
      v290 = *v290;
    }

    v288 = sub_1862EF0(v290);
    *(a1 + 624) = v288;
  }

  if (*(a2 + 624))
  {
    v291 = *(a2 + 624);
  }

  else
  {
    v291 = &off_2785B80;
  }

  sub_18049C0(v288, v291);
  if ((v263 & 0x80) != 0)
  {
LABEL_659:
    *(a1 + 48) |= 0x80u;
    v292 = *(a1 + 632);
    if (!v292)
    {
      v293 = *(a1 + 8);
      v294 = (v293 & 0xFFFFFFFFFFFFFFFCLL);
      if (v293)
      {
        v294 = *v294;
      }

      v292 = sub_1862F4C(v294);
      *(a1 + 632) = v292;
    }

    if (*(a2 + 632))
    {
      v295 = *(a2 + 632);
    }

    else
    {
      v295 = &off_2785BC8;
    }

    sub_1804A88(v292, v295);
  }

LABEL_667:
  if ((v263 & 0xFF00) == 0)
  {
    goto LABEL_741;
  }

  if ((v263 & 0x100) != 0)
  {
    *(a1 + 48) |= 0x100u;
    v296 = *(a1 + 640);
    if (!v296)
    {
      v297 = *(a1 + 8);
      v298 = (v297 & 0xFFFFFFFFFFFFFFFCLL);
      if (v297)
      {
        v298 = *v298;
      }

      v296 = sub_1860104(v298);
      *(a1 + 640) = v296;
    }

    if (*(a2 + 640))
    {
      v299 = *(a2 + 640);
    }

    else
    {
      v299 = &off_2783C80;
    }

    sub_17CD440(v296, v299);
    if ((v263 & 0x200) == 0)
    {
LABEL_670:
      if ((v263 & 0x400) == 0)
      {
        goto LABEL_671;
      }

      goto LABEL_693;
    }
  }

  else if ((v263 & 0x200) == 0)
  {
    goto LABEL_670;
  }

  *(a1 + 48) |= 0x200u;
  v300 = *(a1 + 648);
  if (!v300)
  {
    v301 = *(a1 + 8);
    v302 = (v301 & 0xFFFFFFFFFFFFFFFCLL);
    if (v301)
    {
      v302 = *v302;
    }

    v300 = sub_185EE84(v302);
    *(a1 + 648) = v300;
  }

  if (*(a2 + 648))
  {
    v303 = *(a2 + 648);
  }

  else
  {
    v303 = &off_2783298;
  }

  sub_17B81F4(v300, v303);
  if ((v263 & 0x400) == 0)
  {
LABEL_671:
    if ((v263 & 0x800) == 0)
    {
      goto LABEL_672;
    }

    goto LABEL_701;
  }

LABEL_693:
  *(a1 + 48) |= 0x400u;
  v304 = *(a1 + 656);
  if (!v304)
  {
    v305 = *(a1 + 8);
    v306 = (v305 & 0xFFFFFFFFFFFFFFFCLL);
    if (v305)
    {
      v306 = *v306;
    }

    v304 = sub_18662A4(v306);
    *(a1 + 656) = v304;
  }

  if (*(a2 + 656))
  {
    v307 = *(a2 + 656);
  }

  else
  {
    v307 = &off_2787518;
  }

  sub_1804BD0(v304, v307);
  if ((v263 & 0x800) == 0)
  {
LABEL_672:
    if ((v263 & 0x1000) == 0)
    {
      goto LABEL_673;
    }

    goto LABEL_709;
  }

LABEL_701:
  *(a1 + 48) |= 0x800u;
  v308 = *(a1 + 664);
  if (!v308)
  {
    v309 = *(a1 + 8);
    v310 = (v309 & 0xFFFFFFFFFFFFFFFCLL);
    if (v309)
    {
      v310 = *v310;
    }

    v308 = sub_1862D84(v310);
    *(a1 + 664) = v308;
  }

  if (*(a2 + 664))
  {
    v311 = *(a2 + 664);
  }

  else
  {
    v311 = &off_2785AC0;
  }

  sub_1804C8C(v308, v311);
  if ((v263 & 0x1000) == 0)
  {
LABEL_673:
    if ((v263 & 0x2000) == 0)
    {
      goto LABEL_674;
    }

    goto LABEL_717;
  }

LABEL_709:
  *(a1 + 48) |= 0x1000u;
  v312 = *(a1 + 672);
  if (!v312)
  {
    v313 = *(a1 + 8);
    v314 = (v313 & 0xFFFFFFFFFFFFFFFCLL);
    if (v313)
    {
      v314 = *v314;
    }

    v312 = sub_18640AC(v314);
    *(a1 + 672) = v312;
  }

  if (*(a2 + 672))
  {
    v315 = *(a2 + 672);
  }

  else
  {
    v315 = &off_27864F0;
  }

  sub_1804DC4(v312, v315);
  if ((v263 & 0x2000) == 0)
  {
LABEL_674:
    if ((v263 & 0x4000) == 0)
    {
      goto LABEL_675;
    }

    goto LABEL_725;
  }

LABEL_717:
  *(a1 + 48) |= 0x2000u;
  v316 = *(a1 + 680);
  if (!v316)
  {
    v317 = *(a1 + 8);
    v318 = (v317 & 0xFFFFFFFFFFFFFFFCLL);
    if (v317)
    {
      v318 = *v318;
    }

    v316 = sub_1860B24(v318);
    *(a1 + 680) = v316;
  }

  if (*(a2 + 680))
  {
    v319 = *(a2 + 680);
  }

  else
  {
    v319 = &off_27841B0;
  }

  sub_17D855C(v316, v319);
  if ((v263 & 0x4000) == 0)
  {
LABEL_675:
    if ((v263 & 0x8000) == 0)
    {
      goto LABEL_741;
    }

    goto LABEL_733;
  }

LABEL_725:
  *(a1 + 48) |= 0x4000u;
  v320 = *(a1 + 688);
  if (!v320)
  {
    v321 = *(a1 + 8);
    v322 = (v321 & 0xFFFFFFFFFFFFFFFCLL);
    if (v321)
    {
      v322 = *v322;
    }

    v320 = sub_1862E68(v322);
    *(a1 + 688) = v320;
  }

  if (*(a2 + 688))
  {
    v323 = *(a2 + 688);
  }

  else
  {
    v323 = &off_2785B48;
  }

  sub_1804ED4(v320, v323);
  if ((v263 & 0x8000) != 0)
  {
LABEL_733:
    *(a1 + 48) |= 0x8000u;
    v324 = *(a1 + 696);
    if (!v324)
    {
      v325 = *(a1 + 8);
      v326 = (v325 & 0xFFFFFFFFFFFFFFFCLL);
      if (v325)
      {
        v326 = *v326;
      }

      v324 = sub_18604F4(v326);
      *(a1 + 696) = v324;
    }

    if (*(a2 + 696))
    {
      v327 = *(a2 + 696);
    }

    else
    {
      v327 = &off_2783E40;
    }

    sub_17D02FC(v324, v327);
  }

LABEL_741:
  if ((v263 & 0xFF0000) == 0)
  {
    goto LABEL_815;
  }

  if ((v263 & 0x10000) != 0)
  {
    *(a1 + 48) |= 0x10000u;
    v328 = *(a1 + 704);
    if (!v328)
    {
      v329 = *(a1 + 8);
      v330 = (v329 & 0xFFFFFFFFFFFFFFFCLL);
      if (v329)
      {
        v330 = *v330;
      }

      v328 = sub_186073C(v330);
      *(a1 + 704) = v328;
    }

    if (*(a2 + 704))
    {
      v331 = *(a2 + 704);
    }

    else
    {
      v331 = &off_2783F50;
    }

    sub_17D2778(v328, v331);
    if ((v263 & 0x20000) == 0)
    {
LABEL_744:
      if ((v263 & 0x40000) == 0)
      {
        goto LABEL_745;
      }

      goto LABEL_767;
    }
  }

  else if ((v263 & 0x20000) == 0)
  {
    goto LABEL_744;
  }

  *(a1 + 48) |= 0x20000u;
  v332 = *(a1 + 712);
  if (!v332)
  {
    v333 = *(a1 + 8);
    v334 = (v333 & 0xFFFFFFFFFFFFFFFCLL);
    if (v333)
    {
      v334 = *v334;
    }

    v332 = sub_1860810(v334);
    *(a1 + 712) = v332;
  }

  if (*(a2 + 712))
  {
    v335 = *(a2 + 712);
  }

  else
  {
    v335 = &off_2783FB8;
  }

  sub_17D32D8(v332, v335);
  if ((v263 & 0x40000) == 0)
  {
LABEL_745:
    if ((v263 & 0x80000) == 0)
    {
      goto LABEL_746;
    }

    goto LABEL_775;
  }

LABEL_767:
  *(a1 + 48) |= 0x40000u;
  v336 = *(a1 + 720);
  if (!v336)
  {
    v337 = *(a1 + 8);
    v338 = (v337 & 0xFFFFFFFFFFFFFFFCLL);
    if (v337)
    {
      v338 = *v338;
    }

    v336 = sub_1863F20(v338);
    *(a1 + 720) = v336;
  }

  if (*(a2 + 720))
  {
    v339 = *(a2 + 720);
  }

  else
  {
    v339 = &off_27863E8;
  }

  sub_1805038(v336, v339);
  if ((v263 & 0x80000) == 0)
  {
LABEL_746:
    if ((v263 & 0x100000) == 0)
    {
      goto LABEL_747;
    }

    goto LABEL_783;
  }

LABEL_775:
  *(a1 + 48) |= 0x80000u;
  v340 = *(a1 + 728);
  if (!v340)
  {
    v341 = *(a1 + 8);
    v342 = (v341 & 0xFFFFFFFFFFFFFFFCLL);
    if (v341)
    {
      v342 = *v342;
    }

    v340 = sub_1866C60(v342);
    *(a1 + 728) = v340;
  }

  if (*(a2 + 728))
  {
    v343 = *(a2 + 728);
  }

  else
  {
    v343 = &off_2787970;
  }

  sub_1805170(v340, v343);
  if ((v263 & 0x100000) == 0)
  {
LABEL_747:
    if ((v263 & 0x200000) == 0)
    {
      goto LABEL_748;
    }

    goto LABEL_791;
  }

LABEL_783:
  *(a1 + 48) |= 0x100000u;
  v344 = *(a1 + 736);
  if (!v344)
  {
    v345 = *(a1 + 8);
    v346 = (v345 & 0xFFFFFFFFFFFFFFFCLL);
    if (v345)
    {
      v346 = *v346;
    }

    v344 = sub_185EF98(v346);
    *(a1 + 736) = v344;
  }

  if (*(a2 + 736))
  {
    v347 = *(a2 + 736);
  }

  else
  {
    v347 = &off_27833D0;
  }

  sub_17BAA78(v344, v347);
  if ((v263 & 0x200000) == 0)
  {
LABEL_748:
    if ((v263 & 0x400000) == 0)
    {
      goto LABEL_749;
    }

    goto LABEL_799;
  }

LABEL_791:
  *(a1 + 48) |= 0x200000u;
  v348 = *(a1 + 744);
  if (!v348)
  {
    v349 = *(a1 + 8);
    v350 = (v349 & 0xFFFFFFFFFFFFFFFCLL);
    if (v349)
    {
      v350 = *v350;
    }

    v348 = sub_1860D7C(v350);
    *(a1 + 744) = v348;
  }

  if (*(a2 + 744))
  {
    v351 = *(a2 + 744);
  }

  else
  {
    v351 = &off_2784320;
  }

  sub_17DAF5C(v348, v351);
  if ((v263 & 0x400000) == 0)
  {
LABEL_749:
    if ((v263 & 0x800000) == 0)
    {
      goto LABEL_815;
    }

    goto LABEL_807;
  }

LABEL_799:
  *(a1 + 48) |= 0x400000u;
  v352 = *(a1 + 752);
  if (!v352)
  {
    v353 = *(a1 + 8);
    v354 = (v353 & 0xFFFFFFFFFFFFFFFCLL);
    if (v353)
    {
      v354 = *v354;
    }

    v352 = sub_18605C8(v354);
    *(a1 + 752) = v352;
  }

  if (*(a2 + 752))
  {
    v355 = *(a2 + 752);
  }

  else
  {
    v355 = &off_2783EA0;
  }

  sub_17D162C(v352, v355);
  if ((v263 & 0x800000) != 0)
  {
LABEL_807:
    *(a1 + 48) |= 0x800000u;
    v356 = *(a1 + 760);
    if (!v356)
    {
      v357 = *(a1 + 8);
      v358 = (v357 & 0xFFFFFFFFFFFFFFFCLL);
      if (v357)
      {
        v358 = *v358;
      }

      v356 = sub_1865A94(v358);
      *(a1 + 760) = v356;
    }

    if (*(a2 + 760))
    {
      v359 = *(a2 + 760);
    }

    else
    {
      v359 = &off_2787070;
    }

    sub_180522C(v356, v359);
  }

LABEL_815:
  if (!HIBYTE(v263))
  {
    goto LABEL_889;
  }

  if ((v263 & 0x1000000) != 0)
  {
    *(a1 + 48) |= 0x1000000u;
    v360 = *(a1 + 768);
    if (!v360)
    {
      v361 = *(a1 + 8);
      v362 = (v361 & 0xFFFFFFFFFFFFFFFCLL);
      if (v361)
      {
        v362 = *v362;
      }

      v360 = sub_1866DD4(v362);
      *(a1 + 768) = v360;
    }

    if (*(a2 + 768))
    {
      v363 = *(a2 + 768);
    }

    else
    {
      v363 = &off_2787A20;
    }

    sub_180543C(v360, v363);
    if ((v263 & 0x2000000) == 0)
    {
LABEL_818:
      if ((v263 & 0x4000000) == 0)
      {
        goto LABEL_819;
      }

      goto LABEL_841;
    }
  }

  else if ((v263 & 0x2000000) == 0)
  {
    goto LABEL_818;
  }

  *(a1 + 48) |= 0x2000000u;
  v364 = *(a1 + 776);
  if (!v364)
  {
    v365 = *(a1 + 8);
    v366 = (v365 & 0xFFFFFFFFFFFFFFFCLL);
    if (v365)
    {
      v366 = *v366;
    }

    v364 = sub_185F06C(v366);
    *(a1 + 776) = v364;
  }

  if (*(a2 + 776))
  {
    v367 = *(a2 + 776);
  }

  else
  {
    v367 = &off_2783450;
  }

  sub_17BB5D0(v364, v367);
  if ((v263 & 0x4000000) == 0)
  {
LABEL_819:
    if ((v263 & 0x8000000) == 0)
    {
      goto LABEL_820;
    }

    goto LABEL_849;
  }

LABEL_841:
  *(a1 + 48) |= 0x4000000u;
  v368 = *(a1 + 784);
  if (!v368)
  {
    v369 = *(a1 + 8);
    v370 = (v369 & 0xFFFFFFFFFFFFFFFCLL);
    if (v369)
    {
      v370 = *v370;
    }

    v368 = sub_1864C18(v370);
    *(a1 + 784) = v368;
  }

  if (*(a2 + 784))
  {
    v371 = *(a2 + 784);
  }

  else
  {
    v371 = &off_2786A68;
  }

  sub_1805530(v368, v371);
  if ((v263 & 0x8000000) == 0)
  {
LABEL_820:
    if ((v263 & 0x10000000) == 0)
    {
      goto LABEL_821;
    }

    goto LABEL_857;
  }

LABEL_849:
  *(a1 + 48) |= 0x8000000u;
  v372 = *(a1 + 792);
  if (!v372)
  {
    v373 = *(a1 + 8);
    v374 = (v373 & 0xFFFFFFFFFFFFFFFCLL);
    if (v373)
    {
      v374 = *v374;
    }

    v372 = sub_18639F4(v374);
    *(a1 + 792) = v372;
  }

  if (*(a2 + 792))
  {
    v375 = *(a2 + 792);
  }

  else
  {
    v375 = &off_27861A0;
  }

  sub_1805668(v372, v375);
  if ((v263 & 0x10000000) == 0)
  {
LABEL_821:
    if ((v263 & 0x20000000) == 0)
    {
      goto LABEL_822;
    }

    goto LABEL_865;
  }

LABEL_857:
  *(a1 + 48) |= 0x10000000u;
  v376 = *(a1 + 800);
  if (!v376)
  {
    v377 = *(a1 + 8);
    v378 = (v377 & 0xFFFFFFFFFFFFFFFCLL);
    if (v377)
    {
      v378 = *v378;
    }

    v376 = sub_1863030(v378);
    *(a1 + 800) = v376;
  }

  if (*(a2 + 800))
  {
    v379 = *(a2 + 800);
  }

  else
  {
    v379 = &off_2785C60;
  }

  sub_18057BC(v376, v379);
  if ((v263 & 0x20000000) == 0)
  {
LABEL_822:
    if ((v263 & 0x40000000) == 0)
    {
      goto LABEL_823;
    }

    goto LABEL_873;
  }

LABEL_865:
  *(a1 + 48) |= 0x20000000u;
  v380 = *(a1 + 808);
  if (!v380)
  {
    v381 = *(a1 + 8);
    v382 = (v381 & 0xFFFFFFFFFFFFFFFCLL);
    if (v381)
    {
      v382 = *v382;
    }

    v380 = sub_18630E8(v382);
    *(a1 + 808) = v380;
  }

  if (*(a2 + 808))
  {
    v383 = *(a2 + 808);
  }

  else
  {
    v383 = &off_2785CF0;
  }

  sub_1805990(v380, v383);
  if ((v263 & 0x40000000) == 0)
  {
LABEL_823:
    if ((v263 & 0x80000000) == 0)
    {
      goto LABEL_889;
    }

    goto LABEL_881;
  }

LABEL_873:
  *(a1 + 48) |= 0x40000000u;
  v384 = *(a1 + 816);
  if (!v384)
  {
    v385 = *(a1 + 8);
    v386 = (v385 & 0xFFFFFFFFFFFFFFFCLL);
    if (v385)
    {
      v386 = *v386;
    }

    v384 = sub_1863600(v386);
    *(a1 + 816) = v384;
  }

  if (*(a2 + 816))
  {
    v387 = *(a2 + 816);
  }

  else
  {
    v387 = &off_2785FC8;
  }

  sub_1805A44(v384, v387);
  if ((v263 & 0x80000000) != 0)
  {
LABEL_881:
    *(a1 + 48) |= 0x80000000;
    v388 = *(a1 + 824);
    if (!v388)
    {
      v389 = *(a1 + 8);
      v390 = (v389 & 0xFFFFFFFFFFFFFFFCLL);
      if (v389)
      {
        v390 = *v390;
      }

      v388 = sub_1860C80(v390);
      *(a1 + 824) = v388;
    }

    if (*(a2 + 824))
    {
      v391 = *(a2 + 824);
    }

    else
    {
      v391 = &off_27842B8;
    }

    sub_17DA0D4(v388, v391);
  }

LABEL_889:
  v392 = *(a2 + 52);
  if (!v392)
  {
    goto LABEL_963;
  }

  if (v392)
  {
    *(a1 + 52) |= 1u;
    v393 = *(a1 + 832);
    if (!v393)
    {
      v394 = *(a1 + 8);
      v395 = (v394 & 0xFFFFFFFFFFFFFFFCLL);
      if (v394)
      {
        v395 = *v395;
      }

      v393 = sub_18631A0(v395);
      *(a1 + 832) = v393;
    }

    if (*(a2 + 832))
    {
      v396 = *(a2 + 832);
    }

    else
    {
      v396 = &off_2785D58;
    }

    sub_1805BC4(v393, v396);
    if ((v392 & 2) == 0)
    {
LABEL_892:
      if ((v392 & 4) == 0)
      {
        goto LABEL_893;
      }

      goto LABEL_915;
    }
  }

  else if ((v392 & 2) == 0)
  {
    goto LABEL_892;
  }

  *(a1 + 52) |= 2u;
  v397 = *(a1 + 840);
  if (!v397)
  {
    v398 = *(a1 + 8);
    v399 = (v398 & 0xFFFFFFFFFFFFFFFCLL);
    if (v398)
    {
      v399 = *v399;
    }

    v397 = sub_1863258(v399);
    *(a1 + 840) = v397;
  }

  if (*(a2 + 840))
  {
    v400 = *(a2 + 840);
  }

  else
  {
    v400 = &off_2785DD8;
  }

  sub_1805CE0(v397, v400);
  if ((v392 & 4) == 0)
  {
LABEL_893:
    if ((v392 & 8) == 0)
    {
      goto LABEL_894;
    }

    goto LABEL_923;
  }

LABEL_915:
  *(a1 + 52) |= 4u;
  v401 = *(a1 + 848);
  if (!v401)
  {
    v402 = *(a1 + 8);
    v403 = (v402 & 0xFFFFFFFFFFFFFFFCLL);
    if (v402)
    {
      v403 = *v403;
    }

    v401 = sub_1863310(v403);
    *(a1 + 848) = v401;
  }

  if (*(a2 + 848))
  {
    v404 = *(a2 + 848);
  }

  else
  {
    v404 = &off_2785E88;
  }

  sub_1805E7C(v401, v404);
  if ((v392 & 8) == 0)
  {
LABEL_894:
    if ((v392 & 0x10) == 0)
    {
      goto LABEL_895;
    }

    goto LABEL_931;
  }

LABEL_923:
  *(a1 + 52) |= 8u;
  v405 = *(a1 + 856);
  if (!v405)
  {
    v406 = *(a1 + 8);
    v407 = (v406 & 0xFFFFFFFFFFFFFFFCLL);
    if (v406)
    {
      v407 = *v407;
    }

    v405 = sub_18633C8(v407);
    *(a1 + 856) = v405;
  }

  if (*(a2 + 856))
  {
    v408 = *(a2 + 856);
  }

  else
  {
    v408 = &off_2785F00;
  }

  sub_14B7610(v405, v408);
  if ((v392 & 0x10) == 0)
  {
LABEL_895:
    if ((v392 & 0x20) == 0)
    {
      goto LABEL_896;
    }

    goto LABEL_939;
  }

LABEL_931:
  *(a1 + 52) |= 0x10u;
  v409 = *(a1 + 864);
  if (!v409)
  {
    v410 = *(a1 + 8);
    v411 = (v410 & 0xFFFFFFFFFFFFFFFCLL);
    if (v410)
    {
      v411 = *v411;
    }

    v409 = sub_1865C68(v411);
    *(a1 + 864) = v409;
  }

  if (*(a2 + 864))
  {
    v412 = *(a2 + 864);
  }

  else
  {
    v412 = &off_2787188;
  }

  sub_1805F90(v409, v412);
  if ((v392 & 0x20) == 0)
  {
LABEL_896:
    if ((v392 & 0x40) == 0)
    {
      goto LABEL_897;
    }

    goto LABEL_947;
  }

LABEL_939:
  *(a1 + 52) |= 0x20u;
  v413 = *(a1 + 872);
  if (!v413)
  {
    v414 = *(a1 + 8);
    v415 = (v414 & 0xFFFFFFFFFFFFFFFCLL);
    if (v414)
    {
      v415 = *v415;
    }

    v413 = sub_1863480(v415);
    *(a1 + 872) = v413;
  }

  if (*(a2 + 872))
  {
    v416 = *(a2 + 872);
  }

  else
  {
    v416 = &off_2785F68;
  }

  sub_1659F1C(v413, v416);
  if ((v392 & 0x40) == 0)
  {
LABEL_897:
    if ((v392 & 0x80) == 0)
    {
      goto LABEL_963;
    }

    goto LABEL_955;
  }

LABEL_947:
  *(a1 + 52) |= 0x40u;
  v417 = *(a1 + 880);
  if (!v417)
  {
    v418 = *(a1 + 8);
    v419 = (v418 & 0xFFFFFFFFFFFFFFFCLL);
    if (v418)
    {
      v419 = *v419;
    }

    v417 = sub_185FAFC(v419);
    *(a1 + 880) = v417;
  }

  if (*(a2 + 880))
  {
    v420 = *(a2 + 880);
  }

  else
  {
    v420 = &off_27839A8;
  }

  sub_17C6740(v417, v420);
  if ((v392 & 0x80) != 0)
  {
LABEL_955:
    *(a1 + 52) |= 0x80u;
    v421 = *(a1 + 888);
    if (!v421)
    {
      v422 = *(a1 + 8);
      v423 = (v422 & 0xFFFFFFFFFFFFFFFCLL);
      if (v422)
      {
        v423 = *v423;
      }

      v421 = sub_185FC98(v423);
      *(a1 + 888) = v421;
    }

    if (*(a2 + 888))
    {
      v424 = *(a2 + 888);
    }

    else
    {
      v424 = &off_27839F0;
    }

    sub_17C7344(v421, v424);
  }

LABEL_963:
  if ((v392 & 0x700) == 0)
  {
    goto LABEL_992;
  }

  if ((v392 & 0x100) != 0)
  {
    *(a1 + 52) |= 0x100u;
    v425 = *(a1 + 896);
    if (!v425)
    {
      v426 = *(a1 + 8);
      v427 = (v426 & 0xFFFFFFFFFFFFFFFCLL);
      if (v426)
      {
        v427 = *v427;
      }

      v425 = sub_1864164(v427);
      *(a1 + 896) = v425;
    }

    if (*(a2 + 896))
    {
      v428 = *(a2 + 896);
    }

    else
    {
      v428 = &off_2786560;
    }

    sub_1805990(v425, v428);
    if ((v392 & 0x200) == 0)
    {
LABEL_966:
      if ((v392 & 0x400) == 0)
      {
        goto LABEL_992;
      }

      goto LABEL_984;
    }
  }

  else if ((v392 & 0x200) == 0)
  {
    goto LABEL_966;
  }

  *(a1 + 52) |= 0x200u;
  v429 = *(a1 + 904);
  if (!v429)
  {
    v430 = *(a1 + 8);
    v431 = (v430 & 0xFFFFFFFFFFFFFFFCLL);
    if (v430)
    {
      v431 = *v431;
    }

    v429 = sub_1865D20(v431);
    *(a1 + 904) = v429;
  }

  if (*(a2 + 904))
  {
    v432 = *(a2 + 904);
  }

  else
  {
    v432 = &off_2787238;
  }

  sub_1806058(v429, v432);
  if ((v392 & 0x400) != 0)
  {
LABEL_984:
    *(a1 + 52) |= 0x400u;
    v433 = *(a1 + 912);
    if (!v433)
    {
      v434 = *(a1 + 8);
      v435 = (v434 & 0xFFFFFFFFFFFFFFFCLL);
      if (v434)
      {
        v435 = *v435;
      }

      v433 = sub_18637E0(v435);
      *(a1 + 912) = v433;
    }

    if (*(a2 + 912))
    {
      v436 = *(a2 + 912);
    }

    else
    {
      v436 = &off_2786070;
    }

    sub_1806120(v433, v436);
  }

LABEL_992:
  sub_225EA0C(a1 + 16, a2 + 16);
  v437 = *(a2 + 8);
  if (v437)
  {

    sub_1957EF4((a1 + 8), (v437 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1802D4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_1942A68((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_1942AF4((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_1942B80((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_13B326C((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  if (*(a2 + 40))
  {
    v24 = *(a2 + 144);
    *(a1 + 40) |= 1u;
    *(a1 + 144) = v24;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v25 = *(a2 + 8);
  if (v25)
  {

    sub_1957EF4((a1 + 8), (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1802F44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_194792C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_19479B8((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 0x3F) != 0)
  {
    if (v14)
    {
      *(a1 + 40) |= 1u;
      v16 = *(a1 + 96);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_1929630(v18);
        *(a1 + 96) = v16;
      }

      if (*(a2 + 96))
      {
        v19 = *(a2 + 96);
      }

      else
      {
        v19 = &off_278BDC8;
      }

      sub_1920E90(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_36;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 40) |= 2u;
    v20 = *(a1 + 104);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_192996C(v22);
      *(a1 + 104) = v20;
    }

    if (*(a2 + 104))
    {
      v23 = *(a2 + 104);
    }

    else
    {
      v23 = &off_278C0D0;
    }

    sub_1920FF8(v20, v23);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_44;
    }

LABEL_36:
    *(a1 + 40) |= 4u;
    v24 = *(a1 + 112);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_1929500(v26);
      *(a1 + 112) = v24;
    }

    if (*(a2 + 112))
    {
      v27 = *(a2 + 112);
    }

    else
    {
      v27 = &off_278BD20;
    }

    sub_19210F8(v24, v27);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(a1 + 120) = *(a2 + 120);
    if ((v14 & 0x10) == 0)
    {
LABEL_13:
      if ((v14 & 0x20) == 0)
      {
LABEL_15:
        *(a1 + 40) |= v14;
        goto LABEL_16;
      }

LABEL_14:
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_15;
    }

LABEL_45:
    *(a1 + 124) = *(a2 + 124);
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18031A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_19474D0((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v11 = *(a1 + 72);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_155A57C(v13);
        *(a1 + 72) = v11;
      }

      if (*(a2 + 72))
      {
        v14 = *(a2 + 72);
      }

      else
      {
        v14 = &off_27771C8;
      }

      sub_1554CF0(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(a1 + 40) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 88) = *(a2 + 88);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 40) |= 2u;
    v15 = *(a1 + 80);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_155A8BC(v17);
      *(a1 + 80) = v15;
    }

    if (*(a2 + 80))
    {
      v18 = *(a2 + 80);
    }

    else
    {
      v18 = &off_2777350;
    }

    sub_1558F14(v15, v18);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1803330(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      v5 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 16) |= 2u;
      v8 = *(a1 + 32);
      if (!v8)
      {
        v9 = *(a1 + 8);
        v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
        if (v9)
        {
          v10 = *v10;
        }

        v8 = sub_191FB08(v10);
        *(a1 + 32) = v8;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &off_278BBB8;
      }

      sub_191D8FC(v8, v11);
    }

    if ((v4 & 4) != 0)
    {
      *(a1 + 16) |= 4u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_191FB08(v14);
        *(a1 + 40) = v12;
      }

      if (*(a2 + 40))
      {
        v15 = *(a2 + 40);
      }

      else
      {
        v15 = &off_278BBB8;
      }

      sub_191D8FC(v12, v15);
    }
  }

  v16 = *(a2 + 8);
  if (v16)
  {

    sub_1957EF4((a1 + 8), (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1803460(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193E67C((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1803528(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193E708((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18035F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193DA38((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_185D55C(v12);
        *(a1 + 72) = v10;
      }

      if (*(a2 + 72))
      {
        v13 = *(a2 + 72);
      }

      else
      {
        v13 = &off_2782358;
      }

      sub_17983D8(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 40) |= 2u;
      v14 = *(a1 + 80);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = sub_185D940(v16);
        *(a1 + 80) = v14;
      }

      if (*(a2 + 80))
      {
        v17 = *(a2 + 80);
      }

      else
      {
        v17 = &off_2782768;
      }

      sub_179E8C0(v14, v17);
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_180375C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13EC520((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 0x3F) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v11 = *(a1 + 72);
      if (!v11)
      {
        v12 = *(a1 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        v11 = sub_16F5A54(v13);
        *(a1 + 72) = v11;
      }

      if (*(a2 + 72))
      {
        v14 = *(a2 + 72);
      }

      else
      {
        v14 = &off_277E6F0;
      }

      sub_12F5A34(v11, v14);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_33;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 40) |= 2u;
    v15 = *(a1 + 80);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_16F5A54(v17);
      *(a1 + 80) = v15;
    }

    if (*(a2 + 80))
    {
      v18 = *(a2 + 80);
    }

    else
    {
      v18 = &off_277E6F0;
    }

    sub_12F5A34(v15, v18);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_41;
    }

LABEL_33:
    *(a1 + 40) |= 4u;
    v19 = *(a1 + 88);
    if (!v19)
    {
      v20 = *(a1 + 8);
      v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
      if (v20)
      {
        v21 = *v21;
      }

      v19 = sub_185F7E4(v21);
      *(a1 + 88) = v19;
    }

    if (*(a2 + 88))
    {
      v22 = *(a2 + 88);
    }

    else
    {
      v22 = &off_2783848;
    }

    sub_13F0A84(v19, v22);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(a1 + 96) = *(a2 + 96);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
LABEL_12:
        *(a1 + 40) |= v9;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 112) = *(a2 + 112);
      goto LABEL_12;
    }

LABEL_42:
    *(a1 + 104) = *(a2 + 104);
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  sub_225EA0C(a1 + 16, a2 + 16);
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1803954(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B326C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B326C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_166F898((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_193DAC4((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_13B326C((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 176);
  if (v29)
  {
    v30 = *(a2 + 184);
    v31 = sub_19592E8(a1 + 168, *(a2 + 176));
    sub_13B6038((a1 + 168), v31, (v30 + 8), v29, **(a1 + 184) - *(a1 + 176));
    v32 = *(a1 + 176) + v29;
    *(a1 + 176) = v32;
    v33 = *(a1 + 184);
    if (*v33 < v32)
    {
      *v33 = v32;
    }
  }

  v34 = *(a2 + 200);
  if (v34)
  {
    v35 = *(a2 + 208);
    v36 = sub_19592E8(a1 + 192, *(a2 + 200));
    sub_13B326C((a1 + 192), v36, (v35 + 8), v34, **(a1 + 208) - *(a1 + 200));
    v37 = *(a1 + 200) + v34;
    *(a1 + 200) = v37;
    v38 = *(a1 + 208);
    if (*v38 < v37)
    {
      *v38 = v37;
    }
  }

  v39 = *(a2 + 224);
  if (v39)
  {
    v40 = *(a2 + 232);
    v41 = sub_19592E8(a1 + 216, *(a2 + 224));
    sub_13B326C((a1 + 216), v41, (v40 + 8), v39, **(a1 + 232) - *(a1 + 224));
    v42 = *(a1 + 224) + v39;
    *(a1 + 224) = v42;
    v43 = *(a1 + 232);
    if (*v43 < v42)
    {
      *v43 = v42;
    }
  }

  v44 = *(a2 + 248);
  if (v44)
  {
    v45 = *(a2 + 256);
    v46 = sub_19592E8(a1 + 240, *(a2 + 248));
    sub_193DB50((a1 + 240), v46, (v45 + 8), v44, **(a1 + 256) - *(a1 + 248));
    v47 = *(a1 + 248) + v44;
    *(a1 + 248) = v47;
    v48 = *(a1 + 256);
    if (*v48 < v47)
    {
      *v48 = v47;
    }
  }

  v49 = *(a2 + 272);
  if (v49)
  {
    v50 = *(a2 + 280);
    v51 = sub_19592E8(a1 + 264, *(a2 + 272));
    sub_13B326C((a1 + 264), v51, (v50 + 8), v49, **(a1 + 280) - *(a1 + 272));
    v52 = *(a1 + 272) + v49;
    *(a1 + 272) = v52;
    v53 = *(a1 + 280);
    if (*v53 < v52)
    {
      *v53 = v52;
    }
  }

  v54 = *(a2 + 296);
  if (v54)
  {
    v55 = *(a2 + 304);
    v56 = sub_19592E8(a1 + 288, *(a2 + 296));
    sub_13B326C((a1 + 288), v56, (v55 + 8), v54, **(a1 + 304) - *(a1 + 296));
    v57 = *(a1 + 296) + v54;
    *(a1 + 296) = v57;
    v58 = *(a1 + 304);
    if (*v58 < v57)
    {
      *v58 = v57;
    }
  }

  v59 = *(a2 + 320);
  if (v59)
  {
    v60 = *(a2 + 328);
    v61 = sub_19592E8(a1 + 312, *(a2 + 320));
    sub_13B326C((a1 + 312), v61, (v60 + 8), v59, **(a1 + 328) - *(a1 + 320));
    v62 = *(a1 + 320) + v59;
    *(a1 + 320) = v62;
    v63 = *(a1 + 328);
    if (*v63 < v62)
    {
      *v63 = v62;
    }
  }

  v64 = *(a2 + 344);
  if (v64)
  {
    v65 = *(a2 + 352);
    v66 = sub_19592E8(a1 + 336, *(a2 + 344));
    sub_13B326C((a1 + 336), v66, (v65 + 8), v64, **(a1 + 352) - *(a1 + 344));
    v67 = *(a1 + 344) + v64;
    *(a1 + 344) = v67;
    v68 = *(a1 + 352);
    if (*v68 < v67)
    {
      *v68 = v67;
    }
  }

  v69 = *(a2 + 368);
  if (v69)
  {
    v70 = *(a2 + 376);
    v71 = sub_19592E8(a1 + 360, *(a2 + 368));
    sub_13B326C((a1 + 360), v71, (v70 + 8), v69, **(a1 + 376) - *(a1 + 368));
    v72 = *(a1 + 368) + v69;
    *(a1 + 368) = v72;
    v73 = *(a1 + 376);
    if (*v73 < v72)
    {
      *v73 = v72;
    }
  }

  v74 = *(a2 + 392);
  if (v74)
  {
    v75 = *(a2 + 400);
    v76 = sub_19592E8(a1 + 384, *(a2 + 392));
    sub_193DBCC((a1 + 384), v76, (v75 + 8), v74, **(a1 + 400) - *(a1 + 392));
    v77 = *(a1 + 392) + v74;
    *(a1 + 392) = v77;
    v78 = *(a1 + 400);
    if (*v78 < v77)
    {
      *v78 = v77;
    }
  }

  v79 = *(a2 + 416);
  if (v79)
  {
    v80 = *(a2 + 424);
    v81 = sub_19592E8(a1 + 408, *(a2 + 416));
    sub_166F898((a1 + 408), v81, (v80 + 8), v79, **(a1 + 424) - *(a1 + 416));
    v82 = *(a1 + 416) + v79;
    *(a1 + 416) = v82;
    v83 = *(a1 + 424);
    if (*v83 < v82)
    {
      *v83 = v82;
    }
  }

  v84 = *(a2 + 440);
  if (v84)
  {
    v85 = *(a2 + 448);
    v86 = sub_19592E8(a1 + 432, *(a2 + 440));
    sub_13B326C((a1 + 432), v86, (v85 + 8), v84, **(a1 + 448) - *(a1 + 440));
    v87 = *(a1 + 440) + v84;
    *(a1 + 440) = v87;
    v88 = *(a1 + 448);
    if (*v88 < v87)
    {
      *v88 = v87;
    }
  }

  v89 = *(a2 + 40);
  if (v89)
  {
    if (v89)
    {
      v90 = *(a2 + 456);
      *(a1 + 40) |= 1u;
      v91 = *(a1 + 8);
      v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
      if (v91)
      {
        v92 = *v92;
      }

      sub_194EA1C((a1 + 456), (v90 & 0xFFFFFFFFFFFFFFFELL), v92);
    }

    if ((v89 & 2) != 0)
    {
      v93 = *(a2 + 464);
      *(a1 + 40) |= 2u;
      v94 = *(a1 + 8);
      v95 = (v94 & 0xFFFFFFFFFFFFFFFCLL);
      if (v94)
      {
        v95 = *v95;
      }

      sub_194EA1C((a1 + 464), (v93 & 0xFFFFFFFFFFFFFFFELL), v95);
    }

    if ((v89 & 4) != 0)
    {
      *(a1 + 40) |= 4u;
      v97 = *(a1 + 472);
      if (!v97)
      {
        v98 = *(a1 + 8);
        v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
        if (v98)
        {
          v99 = *v99;
        }

        v97 = sub_191BA60(v99);
        *(a1 + 472) = v97;
      }

      if (*(a2 + 472))
      {
        v100 = *(a2 + 472);
      }

      else
      {
        v100 = &off_278B870;
      }

      sub_17A8DBC(v97, v100);
      if ((v89 & 8) == 0)
      {
LABEL_63:
        if ((v89 & 0x10) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_95;
      }
    }

    else if ((v89 & 8) == 0)
    {
      goto LABEL_63;
    }

    *(a1 + 40) |= 8u;
    v101 = *(a1 + 480);
    if (!v101)
    {
      v102 = *(a1 + 8);
      v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
      if (v102)
      {
        v103 = *v103;
      }

      v101 = sub_191BA60(v103);
      *(a1 + 480) = v101;
    }

    if (*(a2 + 480))
    {
      v104 = *(a2 + 480);
    }

    else
    {
      v104 = &off_278B870;
    }

    sub_17A8DBC(v101, v104);
    if ((v89 & 0x10) == 0)
    {
LABEL_64:
      if ((v89 & 0x20) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_103;
    }

LABEL_95:
    *(a1 + 40) |= 0x10u;
    v105 = *(a1 + 488);
    if (!v105)
    {
      v106 = *(a1 + 8);
      v107 = (v106 & 0xFFFFFFFFFFFFFFFCLL);
      if (v106)
      {
        v107 = *v107;
      }

      v105 = sub_1866190(v107);
      *(a1 + 488) = v105;
    }

    if (*(a2 + 488))
    {
      v108 = *(a2 + 488);
    }

    else
    {
      v108 = &off_27873F8;
    }

    sub_1804308(v105, v108);
    if ((v89 & 0x20) == 0)
    {
LABEL_65:
      if ((v89 & 0x40) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_111;
    }

LABEL_103:
    *(a1 + 40) |= 0x20u;
    v109 = *(a1 + 496);
    if (!v109)
    {
      v110 = *(a1 + 8);
      v111 = (v110 & 0xFFFFFFFFFFFFFFFCLL);
      if (v110)
      {
        v111 = *v111;
      }

      v109 = sub_1860AC8(v111);
      *(a1 + 496) = v109;
    }

    if (*(a2 + 496))
    {
      v112 = *(a2 + 496);
    }

    else
    {
      v112 = &off_2784138;
    }

    sub_17D7460(v109, v112);
    if ((v89 & 0x40) == 0)
    {
LABEL_66:
      if ((v89 & 0x80) == 0)
      {
LABEL_68:
        *(a1 + 40) |= v89;
        goto LABEL_69;
      }

LABEL_67:
      *(a1 + 512) = *(a2 + 512);
      goto LABEL_68;
    }

LABEL_111:
    *(a1 + 504) = *(a2 + 504);
    if ((v89 & 0x80) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_69:
  if ((v89 & 0x300) != 0)
  {
    if ((v89 & 0x100) != 0)
    {
      *(a1 + 516) = *(a2 + 516);
    }

    if ((v89 & 0x200) != 0)
    {
      *(a1 + 520) = *(a2 + 520);
    }

    *(a1 + 40) |= v89;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v96 = *(a2 + 8);
  if (v96)
  {

    sub_1957EF4((a1 + 8), (v96 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18041E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B6038((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a1 + 72);
    sub_1958E5C((a1 + 72), v10 + v9);
    v11 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy((v11 + 4 * v10), *(a2 + 80), 4 * *(a2 + 72));
  }

  if (*(a2 + 40))
  {
    v12 = *(a2 + 88);
    *(a1 + 40) |= 1u;
    *(a1 + 88) = v12;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804308(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B6038((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B326C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 0x1F) != 0)
  {
    if (v14)
    {
      *(a1 + 40) |= 1u;
      v16 = *(a1 + 96);
      if (!v16)
      {
        v17 = *(a1 + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = sub_191BA60(v18);
        *(a1 + 96) = v16;
      }

      if (*(a2 + 96))
      {
        v19 = *(a2 + 96);
      }

      else
      {
        v19 = &off_278B870;
      }

      sub_17A8DBC(v16, v19);
      if ((v14 & 2) == 0)
      {
LABEL_10:
        if ((v14 & 4) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_35;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 40) |= 2u;
    v20 = *(a1 + 104);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_1860AC8(v22);
      *(a1 + 104) = v20;
    }

    if (*(a2 + 104))
    {
      v23 = *(a2 + 104);
    }

    else
    {
      v23 = &off_2784138;
    }

    sub_17D7460(v20, v23);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_43;
    }

LABEL_35:
    *(a1 + 40) |= 4u;
    v24 = *(a1 + 112);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16F5A54(v26);
      *(a1 + 112) = v24;
    }

    if (*(a2 + 112))
    {
      v27 = *(a2 + 112);
    }

    else
    {
      v27 = &off_277E6F0;
    }

    sub_12F5A34(v24, v27);
    if ((v14 & 8) == 0)
    {
LABEL_12:
      if ((v14 & 0x10) == 0)
      {
LABEL_14:
        *(a1 + 40) |= v14;
        goto LABEL_15;
      }

LABEL_13:
      *(a1 + 124) = *(a2 + 124);
      goto LABEL_14;
    }

LABEL_43:
    *(a1 + 120) = *(a2 + 120);
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804554(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193DF90((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 80);
    v11 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_1201B48((a1 + 64), v11, (v10 + 8), v9, **(a1 + 80) - *(a1 + 72));
    v12 = *(a1 + 72) + v9;
    *(a1 + 72) = v12;
    v13 = *(a1 + 80);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804678(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_166F898((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B326C((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_13B326C((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 128);
  if (v19)
  {
    v20 = *(a2 + 136);
    v21 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_193DB50((a1 + 120), v21, (v20 + 8), v19, **(a1 + 136) - *(a1 + 128));
    v22 = *(a1 + 128) + v19;
    *(a1 + 128) = v22;
    v23 = *(a1 + 136);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 152);
  if (v24)
  {
    v25 = *(a2 + 160);
    v26 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_13B326C((a1 + 144), v26, (v25 + 8), v24, **(a1 + 160) - *(a1 + 152));
    v27 = *(a1 + 152) + v24;
    *(a1 + 152) = v27;
    v28 = *(a1 + 160);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 40);
  if ((v29 & 0x1F) != 0)
  {
    if (v29)
    {
      v31 = *(a2 + 168);
      *(a1 + 40) |= 1u;
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      sub_194EA1C((a1 + 168), (v31 & 0xFFFFFFFFFFFFFFFELL), v33);
      if ((v29 & 2) == 0)
      {
LABEL_19:
        if ((v29 & 4) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_39;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_19;
    }

    *(a1 + 40) |= 2u;
    v34 = *(a1 + 176);
    if (!v34)
    {
      v35 = *(a1 + 8);
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
      if (v35)
      {
        v36 = *v36;
      }

      v34 = sub_191BA60(v36);
      *(a1 + 176) = v34;
    }

    if (*(a2 + 176))
    {
      v37 = *(a2 + 176);
    }

    else
    {
      v37 = &off_278B870;
    }

    sub_17A8DBC(v34, v37);
    if ((v29 & 4) == 0)
    {
LABEL_20:
      if ((v29 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_47;
    }

LABEL_39:
    *(a1 + 40) |= 4u;
    v38 = *(a1 + 184);
    if (!v38)
    {
      v39 = *(a1 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_1861C30(v40);
      *(a1 + 184) = v38;
    }

    if (*(a2 + 184))
    {
      v41 = *(a2 + 184);
    }

    else
    {
      v41 = &off_2784940;
    }

    sub_17E9AD0(v38, v41);
    if ((v29 & 8) == 0)
    {
LABEL_21:
      if ((v29 & 0x10) == 0)
      {
LABEL_23:
        *(a1 + 40) |= v29;
        goto LABEL_24;
      }

LABEL_22:
      *(a1 + 193) = *(a2 + 193);
      goto LABEL_23;
    }

LABEL_47:
    *(a1 + 192) = *(a2 + 192);
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  sub_225EA0C(a1 + 16, a2 + 16);
  v30 = *(a2 + 8);
  if (v30)
  {

    sub_1957EF4((a1 + 8), (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18049C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_13B6038((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804A88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 32), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
LABEL_7:
        *(a1 + 16) |= v4;
        goto LABEL_8;
      }

LABEL_6:
      *(a1 + 48) = *(a2 + 48);
      goto LABEL_7;
    }

LABEL_18:
    *(a1 + 16) |= 4u;
    v12 = *(a1 + 40);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_16F5884(v14);
      *(a1 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = &off_277E630;
    }

    sub_128F8FC(v12, v15);
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804BD0(uint64_t *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8((result + 2), *(a2 + 24));
    sub_1680F40(result + 2, v6, (v5 + 8), v4, *result[4] - *(result + 6));
    v7 = *(result + 6) + v4;
    *(result + 6) = v7;
    v8 = result[4];
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4(result + 1, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804C8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193D3A8((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_1860AC8(v12);
        *(a1 + 72) = v10;
      }

      if (*(a2 + 72))
      {
        v13 = *(a2 + 72);
      }

      else
      {
        v13 = &off_2784138;
      }

      sub_17D7460(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 80) = *(a2 + 80);
    }

    *(a1 + 40) |= v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804DC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      *(a1 + 40) |= 1u;
      v5 = *(a1 + 48);
      if (!v5)
      {
        v6 = *(a1 + 8);
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        v5 = sub_191BA60(v7);
        *(a1 + 48) = v5;
      }

      if (*(a2 + 48))
      {
        v8 = *(a2 + 48);
      }

      else
      {
        v8 = &off_278B870;
      }

      sub_17A8DBC(v5, v8);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 40) |= 2u;
      v9 = *(a1 + 56);
      if (!v9)
      {
        v10 = *(a1 + 8);
        v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
        if (v10)
        {
          v11 = *v11;
        }

        sub_14BAE64(v11);
        *(a1 + 56) = v9;
      }

      if (*(a2 + 56))
      {
        v12 = *(a2 + 56);
      }

      else
      {
        v12 = &off_2771738;
      }

      sub_144EF20(v9, v12);
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1804ED4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_24;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 16) |= 1u;
    v6 = *(a1 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

LABEL_13:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) != 0)
  {
LABEL_16:
    *(a1 + 16) |= 8u;
    v14 = *(a1 + 48);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      sub_186117C(v16);
      *(a1 + 48) = v14;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &off_2784458;
    }

    sub_17DEBF8(v14, v17);
  }

LABEL_24:
  v18 = *(a2 + 8);
  if (v18)
  {

    sub_1957EF4((a1 + 8), (v18 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805038(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193DF04((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_1863EA8(v12);
        *(a1 + 72) = v10;
      }

      if (*(a2 + 72))
      {
        v13 = *(a2 + 72);
      }

      else
      {
        v13 = &off_27863C8;
      }

      sub_128F8FC(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 80) = *(a2 + 80);
    }

    *(a1 + 40) |= v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805170(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = sub_19592E8(result + 16, *(a2 + 24));
    sub_193E810((result + 16), v6, (v5 + 8), v4, **(result + 32) - *(result + 24));
    v7 = *(result + 24) + v4;
    *(result + 24) = v7;
    v8 = *(result + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((result + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_180522C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B326C((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_193E3D0((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 0xF) == 0)
  {
    goto LABEL_25;
  }

  if ((v14 & 1) == 0)
  {
    if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v18 = *(a2 + 104);
    *(a1 + 40) |= 2u;
    v19 = *(a1 + 8);
    v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
    if (v19)
    {
      v20 = *v20;
    }

    sub_194EA1C((a1 + 104), (v18 & 0xFFFFFFFFFFFFFFFELL), v20);
    if ((v14 & 4) == 0)
    {
LABEL_11:
      if ((v14 & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v15 = *(a2 + 96);
  *(a1 + 40) |= 1u;
  v16 = *(a1 + 8);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  if (v16)
  {
    v17 = *v17;
  }

  sub_194EA1C((a1 + 96), (v15 & 0xFFFFFFFFFFFFFFFELL), v17);
  if ((v14 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v14 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_19:
  v21 = *(a2 + 112);
  *(a1 + 40) |= 4u;
  v22 = *(a1 + 8);
  v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
  if (v22)
  {
    v23 = *v23;
  }

  sub_194EA1C((a1 + 112), (v21 & 0xFFFFFFFFFFFFFFFELL), v23);
  if ((v14 & 8) != 0)
  {
LABEL_22:
    v24 = *(a2 + 120);
    *(a1 + 40) |= 8u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 120), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
  }

LABEL_25:
  sub_225EA0C(a1 + 16, a2 + 16);
  v27 = *(a2 + 8);
  if (v27)
  {

    sub_1957EF4((a1 + 8), (v27 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_180543C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_193E89C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(a1 + 16) |= 1u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805530(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193E098((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 40);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      *(a1 + 40) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v11 = *(a1 + 8);
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = sub_1864A9C(v12);
        *(a1 + 72) = v10;
      }

      if (*(a2 + 72))
      {
        v13 = *(a2 + 72);
      }

      else
      {
        v13 = &off_27869A0;
      }

      sub_128F948(v10, v13);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 80) = *(a2 + 80);
    }

    *(a1 + 40) |= v9;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805668(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_193DDEC((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B6038((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 40);
  if ((v14 & 3) != 0)
  {
    if (v14)
    {
      *(a1 + 96) = *(a2 + 96);
    }

    if ((v14 & 2) != 0)
    {
      *(a1 + 100) = *(a2 + 100);
    }

    *(a1 + 40) |= v14;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v15 = *(a2 + 8);
  if (v15)
  {

    sub_1957EF4((a1 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_18057BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x3F) != 0)
  {
    if (v4)
    {
      *(a1 + 40) |= 1u;
      v6 = *(a1 + 48);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_16F5A54(v8);
        *(a1 + 48) = v6;
      }

      if (*(a2 + 48))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = &off_277E6F0;
      }

      sub_12F5A34(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_30;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 40) |= 2u;
    v10 = *(a1 + 56);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_16F5A54(v12);
      *(a1 + 56) = v10;
    }

    if (*(a2 + 56))
    {
      v13 = *(a2 + 56);
    }

    else
    {
      v13 = &off_277E6F0;
    }

    sub_12F5A34(v10, v13);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(a1 + 40) |= 4u;
    v14 = *(a1 + 64);
    if (!v14)
    {
      v15 = *(a1 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        v16 = *v16;
      }

      v14 = sub_16F5A54(v16);
      *(a1 + 64) = v14;
    }

    if (*(a2 + 64))
    {
      v17 = *(a2 + 64);
    }

    else
    {
      v17 = &off_277E6F0;
    }

    sub_12F5A34(v14, v17);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(a1 + 40) |= 8u;
    v18 = *(a1 + 72);
    if (!v18)
    {
      v19 = *(a1 + 8);
      v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
      if (v19)
      {
        v20 = *v20;
      }

      v18 = sub_185F924(v20);
      *(a1 + 72) = v18;
    }

    if (*(a2 + 72))
    {
      v21 = *(a2 + 72);
    }

    else
    {
      v21 = &off_27838B0;
    }

    sub_179AFF4(v18, v21);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 40) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 84) = *(a2 + 84);
      goto LABEL_9;
    }

LABEL_46:
    *(a1 + 80) = *(a2 + 80);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805990(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v4 = *(a2 + 48);
    *(a1 + 40) |= 1u;
    v5 = *(a1 + 48);
    if (!v5)
    {
      v6 = *(a1 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      v5 = sub_191BA60(v7);
      *(a1 + 48) = v5;
      v4 = *(a2 + 48);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_278B870;
    }

    sub_17A8DBC(v5, v8);
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805A44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 80);
    v11 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_13118C0((a1 + 64), v11, (v10 + 8), v9, **(a1 + 80) - *(a1 + 72));
    v12 = *(a1 + 72) + v9;
    *(a1 + 72) = v12;
    v13 = *(a1 + 80);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 96);
  if (v14)
  {
    v15 = *(a2 + 104);
    v16 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_13118C0((a1 + 88), v16, (v15 + 8), v14, **(a1 + 104) - *(a1 + 96));
    v17 = *(a1 + 96) + v14;
    *(a1 + 96) = v17;
    v18 = *(a1 + 104);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805BC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B6038((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 40))
  {
    v9 = *(a2 + 72);
    *(a1 + 40) |= 1u;
    v10 = *(a1 + 72);
    if (!v10)
    {
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_191BA60(v12);
      *(a1 + 72) = v10;
      v9 = *(a2 + 72);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_278B870;
    }

    sub_17A8DBC(v10, v13);
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805CE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = *(a2 + 64);
    v6 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B6038((a1 + 48), v6, (v5 + 8), v4, **(a1 + 64) - *(a1 + 56));
    v7 = *(a1 + 56) + v4;
    *(a1 + 56) = v7;
    v8 = *(a1 + 64);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B6038((a1 + 72), v11, (v10 + 8), v9, **(a1 + 88) - *(a1 + 80));
    v12 = *(a1 + 80) + v9;
    *(a1 + 80) = v12;
    v13 = *(a1 + 88);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    v15 = *(a2 + 112);
    v16 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_13B6038((a1 + 96), v16, (v15 + 8), v14, **(a1 + 112) - *(a1 + 104));
    v17 = *(a1 + 104) + v14;
    *(a1 + 104) = v17;
    v18 = *(a1 + 112);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  if (*(a2 + 40))
  {
    v19 = *(a2 + 120);
    *(a1 + 40) |= 1u;
    *(a1 + 120) = v19;
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v20 = *(a2 + 8);
  if (v20)
  {

    sub_1957EF4((a1 + 8), (v20 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805E7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x1F) != 0)
  {
    if (v4)
    {
      *(a1 + 40) |= 1u;
      v6 = *(a1 + 48);
      if (!v6)
      {
        v7 = *(a1 + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        sub_14BAE64(v8);
        *(a1 + 48) = v6;
      }

      if (*(a2 + 48))
      {
        v9 = *(a2 + 48);
      }

      else
      {
        v9 = &off_2771738;
      }

      sub_144EF20(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(a1 + 60) = *(a2 + 60);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
LABEL_8:
        *(a1 + 40) |= v4;
        goto LABEL_9;
      }

LABEL_7:
      *(a1 + 68) = *(a2 + 68);
      goto LABEL_8;
    }

LABEL_23:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1805F90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193E4D8((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1806058(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_193E564((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v9 = *(a2 + 8);
  if (v9)
  {

    sub_1957EF4((a1 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1806120(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    v6 = sub_19592E8(a1 + 40, *(a2 + 48));
    sub_1201B48((a1 + 40), v6, (v5 + 8), v4, **(a1 + 56) - *(a1 + 48));
    v7 = *(a1 + 48) + v4;
    *(a1 + 48) = v7;
    v8 = *(a1 + 56);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    v10 = *(a2 + 80);
    v11 = sub_19592E8(a1 + 64, *(a2 + 72));
    sub_193DCD4((a1 + 64), v11, (v10 + 8), v9, **(a1 + 80) - *(a1 + 72));
    v12 = *(a1 + 72) + v9;
    *(a1 + 72) = v12;
    v13 = *(a1 + 80);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  sub_225EA0C(a1 + 16, a2 + 16);
  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((a1 + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_1806244(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_17F8280(result);

    sub_1800AF0(result, a2, v5);
  }
}

uint64_t sub_1806290(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    result = sub_1798CE8(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 2) != 0)
  {
    result = sub_179EAF4(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 4) != 0)
  {
    v4 = *(a1 + 80);
    v5 = *(v4 + 24);
    while (v5 >= 1)
    {
      v6 = v5 - 1;
      v7 = sub_16F0144(*(*(v4 + 32) + 8 * v5));
      v5 = v6;
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 8) != 0)
  {
    result = sub_17A0860(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x10) != 0)
  {
    result = sub_17A27EC(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x20) != 0)
  {
    result = sub_195228C(*(a1 + 104) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x40) != 0)
  {
    result = sub_17BEEB8(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x80) != 0)
  {
    result = sub_195228C(*(a1 + 120) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x100) != 0)
  {
    result = sub_17C34A0(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x200) != 0)
  {
    result = sub_17B2F64(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x400) != 0)
  {
    result = sub_17AB0F0(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x800) != 0)
  {
    result = sub_17C9334(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x1000) != 0)
  {
    result = sub_195228C(*(a1 + 160) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x2000) != 0)
  {
    result = sub_195228C(*(a1 + 168) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x4000) != 0)
  {
    result = sub_17CD580(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x8000) != 0)
  {
    result = sub_144F674(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x10000) != 0)
  {
    v8 = *(a1 + 192);
    v9 = *(v8 + 24);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_1416118(*(*(v8 + 32) + 8 * v9));
      result = 0;
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x20000) != 0)
  {
    result = sub_12B329C(*(a1 + 200) + 24);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x40000) != 0)
  {
    result = sub_195228C(*(a1 + 208) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x80000) != 0)
  {
    result = sub_17D501C(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x100000) != 0)
  {
    result = sub_195228C(*(a1 + 224) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x200000) != 0)
  {
    result = sub_195228C(*(a1 + 232) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x400000) != 0)
  {
    result = sub_17D78EC(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x800000) != 0)
  {
    result = sub_17B0BA8(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x1000000) != 0)
  {
    result = sub_17DBD24(*(a1 + 256));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x4000000) != 0)
  {
    result = sub_17E33E4(*(a1 + 272));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x8000000) != 0)
  {
    result = sub_195228C(*(a1 + 280) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x10000000) != 0)
  {
    result = sub_195228C(*(a1 + 288) + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if ((v3 & 0x40000000) != 0)
  {
    result = sub_17A63A8(*(a1 + 304));
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 40);
  }

  if (v3 < 0)
  {
    result = sub_17C09EC(*(a1 + 312));
    if (!result)
    {
      return result;
    }
  }

  v12 = *(a1 + 44);
  if ((v12 & 4) != 0)
  {
    result = sub_17E8B40(*(a1 + 336));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 8) != 0)
  {
    result = sub_17EA704(*(a1 + 344));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x10) != 0)
  {
    result = sub_195228C(*(a1 + 352) + 16);
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x20) != 0)
  {
    result = sub_17EB5B0(*(a1 + 360));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x100) != 0)
  {
    v13 = *(a1 + 384);
    if ((*(v13 + 16) & 2) != 0)
    {
      result = sub_16E5370(*(v13 + 32));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 44);
    }
  }

  if ((v12 & 0x800) != 0)
  {
    result = sub_1806BA8(*(a1 + 408));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x2000) != 0)
  {
    result = sub_17E59C8(*(a1 + 424));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x8000) != 0)
  {
    result = sub_17C7E60(*(a1 + 440));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x10000) != 0)
  {
    result = sub_195228C(*(a1 + 448) + 16);
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x20000) != 0)
  {
    result = sub_1393714(*(a1 + 456));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x40000) != 0)
  {
    result = sub_195228C(*(a1 + 464) + 16);
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x100000) != 0)
  {
    result = sub_179D2B8(*(a1 + 480));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x200000) != 0)
  {
    result = sub_17F2290(*(a1 + 488));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x400000) != 0)
  {
    result = sub_1806C78(*(a1 + 496));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x800000) == 0)
  {
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_142;
  }

  v14 = *(a1 + 504);
  result = sub_195228C(v14 + 16);
  if (!result)
  {
    return result;
  }

  result = sub_185208C(v14 + 40);
  if (!result)
  {
    return result;
  }

  v12 = *(a1 + 44);
  if ((v12 & 0x1000000) != 0)
  {
LABEL_142:
    result = sub_1806D18(*(a1 + 512));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

LABEL_147:
  if ((v12 & 0x2000000) != 0)
  {
    result = sub_14180F4(*(a1 + 520));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x4000000) != 0)
  {
    result = sub_1806D84(*(a1 + 528));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x8000000) != 0)
  {
    result = sub_1806E08(*(a1 + 536));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x10000000) != 0)
  {
    result = sub_1806E7C(*(a1 + 544));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x20000000) != 0)
  {
    result = sub_1806FA0(*(a1 + 552));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if ((v12 & 0x40000000) != 0)
  {
    result = sub_17B60FC(*(a1 + 560));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 44);
  }

  if (v12 < 0)
  {
    result = sub_17B6934(*(a1 + 568));
    if (!result)
    {
      return result;
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    result = sub_195228C(*(a1 + 576) + 16);
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 2) != 0)
  {
    result = sub_1393714(*(a1 + 584));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 4) != 0)
  {
    result = sub_1807008(*(a1 + 592));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 8) == 0)
  {
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_178;
  }

  v16 = *(a1 + 600);
  result = sub_195228C(v16 + 16);
  if (!result)
  {
    return result;
  }

  result = sub_182EE00(v16 + 40);
  if (!result)
  {
    return result;
  }

  v15 = *(a1 + 48);
  if ((v15 & 0x10) != 0)
  {
LABEL_178:
    result = sub_174C680(*(a1 + 608));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

LABEL_183:
  if ((v15 & 0x20) != 0)
  {
    result = sub_18070D8(*(a1 + 616));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x40) != 0)
  {
    result = sub_1807160(*(a1 + 624));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x80) != 0)
  {
    v17 = *(a1 + 632);
    if ((*(v17 + 16) & 4) != 0)
    {
      result = sub_16E5890(*(v17 + 40));
      if (!result)
      {
        return result;
      }

      v15 = *(a1 + 48);
    }
  }

  if ((v15 & 0x100) != 0)
  {
    result = sub_17CD580(*(a1 + 640));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x200) != 0)
  {
    result = sub_17B8318(*(a1 + 648));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x400) != 0)
  {
    v18 = *(a1 + 656);
    v19 = *(v18 + 24);
    while (v19 >= 1)
    {
      v20 = v19 - 1;
      v21 = sub_195228C(*(*(v18 + 32) + 8 * v19) + 16);
      result = 0;
      v19 = v20;
      if ((v21 & 1) == 0)
      {
        return result;
      }
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x800) != 0)
  {
    result = sub_1807254(*(a1 + 664));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x1000) != 0)
  {
    result = sub_18072A4(*(a1 + 672));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x2000) != 0)
  {
    result = sub_17D86D8(*(a1 + 680));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x4000) != 0)
  {
    v22 = *(a1 + 688);
    if ((*(v22 + 16) & 8) != 0)
    {
      result = sub_17DEE14(*(v22 + 48));
      if (!result)
      {
        return result;
      }

      v15 = *(a1 + 48);
    }
  }

  if ((v15 & 0x8000) != 0)
  {
    result = sub_195228C(*(a1 + 696) + 16);
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x10000) != 0)
  {
    v23 = *(a1 + 704);
    result = sub_195228C(v23 + 16);
    if (!result)
    {
      return result;
    }

    result = sub_160938C(v23 + 48);
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_228;
    }
  }

  else if ((v15 & 0x20000) == 0)
  {
    goto LABEL_228;
  }

  result = sub_195228C(*(a1 + 712) + 16);
  if (!result)
  {
    return result;
  }

  v15 = *(a1 + 48);
LABEL_228:
  if ((v15 & 0x40000) != 0)
  {
    result = sub_180732C(*(a1 + 720));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x80000) != 0)
  {
    v24 = *(a1 + 728);
    v25 = *(v24 + 24);
    while (v25 >= 1)
    {
      v26 = v25 - 1;
      v27 = sub_195228C(*(*(v24 + 32) + 8 * v25) + 16);
      result = 0;
      v25 = v26;
      if ((v27 & 1) == 0)
      {
        return result;
      }
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x100000) != 0)
  {
    result = sub_17BABB8(*(a1 + 736));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x200000) != 0)
  {
    result = sub_17DB074(*(a1 + 744));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x400000) != 0)
  {
    result = sub_195228C(*(a1 + 752) + 16);
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x800000) != 0)
  {
    result = sub_18073F0(*(a1 + 760));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x1000000) != 0)
  {
    v28 = *(a1 + 768);
    v29 = *(v28 + 32);
    while (v29 >= 1)
    {
      v30 = v29 - 1;
      v31 = sub_185C9CC(*(*(v28 + 40) + 8 * v29));
      result = 0;
      v29 = v30;
      if ((v31 & 1) == 0)
      {
        return result;
      }
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x2000000) != 0)
  {
    result = sub_195228C(*(a1 + 776) + 16);
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x4000000) != 0)
  {
    result = sub_18074B0(*(a1 + 784));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x8000000) != 0)
  {
    result = sub_180751C(*(a1 + 792));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x10000000) != 0)
  {
    result = sub_18075A8(*(a1 + 800));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x20000000) != 0)
  {
    result = sub_18075F0(*(a1 + 808));
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x40000000) != 0)
  {
    result = sub_195228C(*(a1 + 816) + 16);
    if (!result)
    {
      return result;
    }

    v15 = *(a1 + 48);
  }

  if ((v15 & 0x80000000) == 0 || (result = sub_17DA188(*(a1 + 824)), result))
  {
    v32 = *(a1 + 52);
    if (v32)
    {
      result = sub_180763C(*(a1 + 832));
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 2) != 0)
    {
      result = sub_18076AC(*(a1 + 840));
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 4) != 0)
    {
      result = sub_1807760(*(a1 + 848));
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 8) != 0)
    {
      result = sub_195228C(*(a1 + 856) + 16);
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 0x10) != 0)
    {
      result = sub_18077AC(*(a1 + 864));
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 0x100) != 0)
    {
      result = sub_1807818(*(a1 + 896));
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 0x200) != 0)
    {
      result = sub_180785C(*(a1 + 904));
      if (!result)
      {
        return result;
      }

      v32 = *(a1 + 52);
    }

    if ((v32 & 0x400) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 912) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1806BA8(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_1447C10(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 80);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = sub_1922250(*(*(a1 + 88) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      result = sub_1921188(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 2) != 0)
    {
      result = sub_195228C(*(a1 + 104) + 16);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 40);
    }

    if ((v9 & 4) == 0)
    {
      return 1;
    }

    result = sub_195228C(*(a1 + 112) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1806C78(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_195228C(*(a1 + 32) + 16);
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = sub_195228C(*(a1 + 40) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1806CCC(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {

    return sub_185208C(a1 + 40);
  }

  return result;
}

BOOL sub_1806D18(uint64_t a1)
{
  if (!sub_195228C(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 48);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_195228C(*(*(a1 + 56) + 8 * v2) + 16);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3;
}

uint64_t sub_1806D84(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 56);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      v5 = sub_1806E08(*(*(a1 + 64) + 8 * v3));
      v3 = v4;
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      result = sub_1798CE8(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 40);
    }

    if ((v6 & 2) == 0)
    {
      return 1;
    }

    result = sub_179EAF4(*(a1 + 80));
    if (result)
    {
      return 1;
    }
  }

  return result;
}