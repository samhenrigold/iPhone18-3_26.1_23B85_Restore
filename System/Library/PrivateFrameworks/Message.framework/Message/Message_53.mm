BOOL sub_1B0B63BF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[9];
        v18[8] = v3[8];
        v18[9] = v5;
        v18[10] = v3[10];
        v6 = v3[5];
        v18[4] = v3[4];
        v18[5] = v6;
        v7 = v3[7];
        v18[6] = v3[6];
        v18[7] = v7;
        v8 = v3[1];
        v18[0] = *v3;
        v18[1] = v8;
        v9 = v3[3];
        v18[2] = v3[2];
        v18[3] = v9;
        v10 = v4[9];
        v19[8] = v4[8];
        v19[9] = v10;
        v19[10] = v4[10];
        v11 = v4[5];
        v19[4] = v4[4];
        v19[5] = v11;
        v12 = v4[7];
        v19[6] = v4[6];
        v19[7] = v12;
        v13 = v4[1];
        v19[0] = *v4;
        v19[1] = v13;
        v14 = v4[3];
        v19[2] = v4[2];
        v19[3] = v14;
        sub_1B03A35B8(v18, v17);
        sub_1B03A35B8(v19, v17);
        v15 = sub_1B03B5F54(v18, v19);
        sub_1B03A3614(v19);
        sub_1B03A3614(v18);
        if (!v15)
        {
          break;
        }

        v3 += 11;
        v4 += 11;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v15;
}

uint64_t sub_1B0B63D20(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v89 = a2 + 32;
  v86 = a1 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_161;
    }

    v5 = v4 + 48 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v10 = *(v5 + 24);
    v9 = *(v5 + 32);
    v11 = *(v5 + 40);
    v12 = v89 + 48 * v3;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v17 = *(v12 + 24);
    v16 = *(v12 + 32);
    v18 = *(v12 + 40);
    v19 = v6 >> 62;
    v20 = v13 >> 62;
    v96 = v14;
    v90 = v18;
    v91 = v11;
    v92 = v16;
    v93 = v9;
    v94 = v15;
    v95 = v8;
    if (v6 >> 62 == 3)
    {
      if (v7)
      {
        v21 = 0;
      }

      else
      {
        v21 = v6 == 0xC000000000000000;
      }

      if (v21 && v13 >> 62 == 3 && !v14 && v13 == 0xC000000000000000)
      {
        sub_1B03B2000(0, 0xC000000000000000);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = 0;
        v25 = 0xC000000000000000;
        goto LABEL_50;
      }

LABEL_30:
      v26 = 0;
      if (v20 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_30;
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_164;
      }

      if (v20 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v19)
    {
      LODWORD(v26) = HIDWORD(v7) - v7;
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_165;
      }

      v26 = v26;
      if (v20 <= 1)
      {
LABEL_28:
        if (v20)
        {
          LODWORD(v30) = HIDWORD(v14) - v14;
          if (__OFSUB__(HIDWORD(v14), v14))
          {
            goto LABEL_162;
          }

          v30 = v30;
        }

        else
        {
          v30 = BYTE6(v13);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v26 = BYTE6(v6);
      if (v20 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_31:
    if (v20 != 2)
    {
      if (v26)
      {
        return 0;
      }

LABEL_49:
      sub_1B03B2000(v7, v6);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24 = v14;
      v25 = v13;
LABEL_50:
      sub_1B03B2000(v24, v25);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      goto LABEL_142;
    }

    v32 = *(v14 + 16);
    v31 = *(v14 + 24);
    v29 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v29)
    {
      goto LABEL_163;
    }

LABEL_37:
    if (v26 != v30)
    {
      return 0;
    }

    if (v26 < 1)
    {
      goto LABEL_49;
    }

    v87 = v6;
    if (v19 <= 1)
    {
      if (!v19)
      {
        __s1[0] = v7;
        LOWORD(__s1[1]) = v6;
        BYTE2(__s1[1]) = BYTE2(v6);
        BYTE3(__s1[1]) = BYTE3(v6);
        BYTE4(__s1[1]) = BYTE4(v6);
        BYTE5(__s1[1]) = BYTE5(v6);
        if (v20)
        {
          if (v20 == 1)
          {
            v33 = v14;
            v88 = (v14 >> 32) - v14;
            if (v14 >> 32 < v14)
            {
              goto LABEL_169;
            }

            sub_1B03B2000(v7, v6);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B03B2000(v14, v13);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v34 = sub_1B0E42A98();
            if (!v34)
            {
              goto LABEL_196;
            }

            v35 = v34;
            v36 = sub_1B0E42AC8();
            if (__OFSUB__(v33, v36))
            {
              goto LABEL_174;
            }

            v37 = (v33 - v36 + v35);
            result = sub_1B0E42AB8();
            if (!v37)
            {
              goto LABEL_195;
            }

LABEL_110:
            if (result >= v88)
            {
              v66 = v88;
            }

            else
            {
              v66 = result;
            }

            v61 = memcmp(__s1, v37, v66);
            goto LABEL_114;
          }

          v58 = *(v14 + 16);
          v85 = *(v14 + 24);
          sub_1B03B2000(v7, v6);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v14, v13);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v46 = sub_1B0E42A98();
          if (v46)
          {
            v59 = sub_1B0E42AC8();
            if (__OFSUB__(v58, v59))
            {
              goto LABEL_179;
            }

            v46 += v58 - v59;
          }

          v48 = v85 - v58;
          if (__OFSUB__(v85, v58))
          {
            goto LABEL_172;
          }

          result = sub_1B0E42AB8();
          if (!v46)
          {
            goto LABEL_194;
          }

          goto LABEL_102;
        }

LABEL_70:
        v97 = v14;
        v98 = v13;
        v99 = BYTE2(v13);
        v100 = BYTE3(v13);
        v101 = BYTE4(v13);
        v102 = BYTE5(v13);
        sub_1B03B2000(v7, v6);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B2000(v14, v13);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v49 = __s1;
        v50 = &v97;
        v51 = BYTE6(v13);
        v4 = v86;
        goto LABEL_141;
      }

      if (v7 > v7 >> 32)
      {
        goto LABEL_166;
      }

      sub_1B03B2000(v7, v6);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B2000(v14, v13);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v42 = sub_1B0E42A98();
      if (v42)
      {
        v43 = v42;
        v44 = sub_1B0E42AC8();
        if (__OFSUB__(v7, v44))
        {
          goto LABEL_168;
        }

        v81 = (v7 - v44 + v43);
      }

      else
      {
        v81 = 0;
      }

      sub_1B0E42AB8();
      if (v20 == 2)
      {
        v72 = *(v96 + 16);
        v73 = *(v96 + 24);
        v52 = sub_1B0E42A98();
        if (v52)
        {
          v74 = sub_1B0E42AC8();
          if (__OFSUB__(v72, v74))
          {
            goto LABEL_182;
          }

          v52 += v72 - v74;
        }

        v29 = __OFSUB__(v73, v72);
        v75 = v73 - v72;
        if (v29)
        {
          goto LABEL_178;
        }

        v76 = sub_1B0E42AB8();
        if (v76 >= v75)
        {
          v55 = v75;
        }

        else
        {
          v55 = v76;
        }

        v49 = v81;
        if (!v81)
        {
          goto LABEL_193;
        }

        v4 = v86;
        v6 = v87;
        if (!v52)
        {
          goto LABEL_192;
        }

        goto LABEL_137;
      }

      if (v20 == 1)
      {
        if (v96 >> 32 < v96)
        {
          goto LABEL_177;
        }

        v52 = sub_1B0E42A98();
        if (v52)
        {
          v56 = sub_1B0E42AC8();
          if (__OFSUB__(v96, v56))
          {
            goto LABEL_184;
          }

          v52 += v96 - v56;
        }

        v57 = sub_1B0E42AB8();
        if (v57 >= (v96 >> 32) - v96)
        {
          v55 = (v96 >> 32) - v96;
        }

        else
        {
          v55 = v57;
        }

        v49 = v81;
        if (!v81)
        {
          goto LABEL_191;
        }

        v4 = v86;
        if (!v52)
        {
          goto LABEL_190;
        }

        goto LABEL_137;
      }

      v4 = v86;
      v49 = v81;
      __s1[0] = v96;
      LOWORD(__s1[1]) = v13;
      BYTE2(__s1[1]) = BYTE2(v13);
      BYTE3(__s1[1]) = BYTE3(v13);
      BYTE4(__s1[1]) = BYTE4(v13);
      BYTE5(__s1[1]) = BYTE5(v13);
      if (!v81)
      {
        goto LABEL_189;
      }

      goto LABEL_140;
    }

    if (v19 != 2)
    {
      memset(__s1, 0, 14);
      if (v20)
      {
        if (v20 != 2)
        {
          v62 = v14;
          v88 = (v14 >> 32) - v14;
          if (v14 >> 32 < v14)
          {
            goto LABEL_170;
          }

          sub_1B03B2000(v7, v6);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v14, v13);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v63 = sub_1B0E42A98();
          if (!v63)
          {
            goto LABEL_197;
          }

          v64 = v63;
          v65 = sub_1B0E42AC8();
          if (__OFSUB__(v62, v65))
          {
            goto LABEL_175;
          }

          v37 = (v62 - v65 + v64);
          result = sub_1B0E42AB8();
          if (!v37)
          {
            goto LABEL_198;
          }

          goto LABEL_110;
        }

        v45 = *(v14 + 16);
        v84 = *(v14 + 24);
        sub_1B03B2000(v7, v6);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B2000(v14, v13);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v46 = sub_1B0E42A98();
        if (v46)
        {
          v47 = sub_1B0E42AC8();
          if (__OFSUB__(v45, v47))
          {
            goto LABEL_180;
          }

          v46 += v45 - v47;
        }

        v48 = v84 - v45;
        if (__OFSUB__(v84, v45))
        {
          goto LABEL_171;
        }

        result = sub_1B0E42AB8();
        if (!v46)
        {
          goto LABEL_199;
        }

LABEL_102:
        if (result >= v48)
        {
          v60 = v48;
        }

        else
        {
          v60 = result;
        }

        v61 = memcmp(__s1, v46, v60);
        v6 = v87;
LABEL_114:
        v4 = v86;
        if (v61)
        {
          goto LABEL_157;
        }

        goto LABEL_142;
      }

      goto LABEL_70;
    }

    v82 = *(v7 + 16);
    sub_1B03B2000(v7, v6);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B2000(v14, v13);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v39 = sub_1B0E42A98();
    if (v39)
    {
      v40 = v39;
      v41 = sub_1B0E42AC8();
      if (__OFSUB__(v82, v41))
      {
        goto LABEL_167;
      }

      v83 = (v82 - v41 + v40);
    }

    else
    {
      v83 = 0;
    }

    sub_1B0E42AB8();
    if (v20 == 2)
    {
      v67 = *(v96 + 16);
      v68 = *(v96 + 24);
      v52 = sub_1B0E42A98();
      if (v52)
      {
        v69 = sub_1B0E42AC8();
        if (__OFSUB__(v67, v69))
        {
          goto LABEL_181;
        }

        v52 += v67 - v69;
      }

      v29 = __OFSUB__(v68, v67);
      v70 = v68 - v67;
      if (v29)
      {
        goto LABEL_176;
      }

      v71 = sub_1B0E42AB8();
      if (v71 >= v70)
      {
        v55 = v70;
      }

      else
      {
        v55 = v71;
      }

      v49 = v83;
      if (!v83)
      {
        goto LABEL_188;
      }

      v4 = v86;
      v6 = v87;
      if (!v52)
      {
        goto LABEL_187;
      }

      goto LABEL_137;
    }

    if (v20 == 1)
    {
      if (v96 >> 32 < v96)
      {
        goto LABEL_173;
      }

      v52 = sub_1B0E42A98();
      if (v52)
      {
        v53 = sub_1B0E42AC8();
        if (__OFSUB__(v96, v53))
        {
          goto LABEL_183;
        }

        v52 += v96 - v53;
      }

      v54 = sub_1B0E42AB8();
      if (v54 >= (v96 >> 32) - v96)
      {
        v55 = (v96 >> 32) - v96;
      }

      else
      {
        v55 = v54;
      }

      v49 = v83;
      if (!v83)
      {
        goto LABEL_186;
      }

      v4 = v86;
      if (!v52)
      {
        goto LABEL_185;
      }

LABEL_137:
      if (v49 == v52)
      {
        goto LABEL_142;
      }

      v51 = v55;
      v50 = v52;
      goto LABEL_141;
    }

    v49 = v83;
    v4 = v86;
    __s1[0] = v96;
    LOWORD(__s1[1]) = v13;
    BYTE2(__s1[1]) = BYTE2(v13);
    BYTE3(__s1[1]) = BYTE3(v13);
    BYTE4(__s1[1]) = BYTE4(v13);
    BYTE5(__s1[1]) = BYTE5(v13);
    if (!v83)
    {
      break;
    }

LABEL_140:
    v51 = BYTE6(v13);
    v50 = __s1;
LABEL_141:
    if (memcmp(v49, v50, v51))
    {
      goto LABEL_157;
    }

LABEL_142:
    if (v95 != v94)
    {
LABEL_157:
      v77 = v96;
LABEL_158:
      sub_1B0391D50(v77, v13);

      sub_1B0391D50(v7, v6);

      return 0;
    }

    v77 = v96;
    if (v93 != v92)
    {
      goto LABEL_158;
    }

    v78 = *(v10 + 16);
    if (v78 != *(v17 + 16))
    {
      goto LABEL_158;
    }

    if (v78)
    {
      v79 = v10 == v17;
    }

    else
    {
      v79 = 1;
    }

    if (!v79)
    {
      v80 = 32;
      while (v78)
      {
        if (*(v10 + v80) != *(v17 + v80))
        {
          goto LABEL_158;
        }

        ++v80;
        if (!--v78)
        {
          goto LABEL_153;
        }
      }

      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
    }

LABEL_153:
    sub_1B0391D50(v96, v13);

    sub_1B0391D50(v7, v6);

    if (v91 != v90)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  sub_1B0E42AB8();
  __break(1u);
LABEL_197:
  result = sub_1B0E42AB8();
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
  return result;
}

uint64_t sub_1B0B64774(uint64_t a1, uint64_t a2)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41F8, &unk_1B0EC4440);
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v38 - v9;
  SearchResult = type metadata accessor for FetchSearchResultMessages.Requests.Search(0);
  MEMORY[0x1EEE9AC00](SearchResult);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v38 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v41 = (v4 + 48);
  v21 = *(v14 + 72);
  v39 = v8;
  v40 = v21;
  v42 = (&v38 - v15);
  while (1)
  {
    sub_1B0B66A7C(v19, v16, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    sub_1B0B66A7C(v20, v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    if (*v16 != *v12)
    {
      sub_1B0B66AE4(v12, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v36 = v16;
LABEL_20:
      sub_1B0B66AE4(v36, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      return 0;
    }

    v22 = *(SearchResult + 20);
    v23 = v16 + v22;
    v24 = v12 + v22;
    sub_1B03D06F8();
    if ((sub_1B0E46E08() & 1) == 0)
    {
      v37 = v12;
LABEL_19:
      sub_1B0B66AE4(v37, type metadata accessor for FetchSearchResultMessages.Requests.Search);
      v36 = v42;
      goto LABEL_20;
    }

    v46 = v19;
    v25 = v12;
    MessagesVMa = _s19UserInitiatedSearchV13FetchMessagesVMa(0);
    if ((sub_1B0E46E08() & 1) == 0)
    {
      v37 = v25;
      goto LABEL_19;
    }

    v27 = *(MessagesVMa + 24);
    v28 = *(v44 + 48);
    sub_1B0B66738(&v23[v27], v10);
    v29 = &v24[v27];
    v30 = v47;
    sub_1B0B66738(v29, &v10[v28]);
    v31 = *v41;
    if ((*v41)(v10, 1, v30) != 1)
    {
      break;
    }

    sub_1B0B66AE4(v25, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    v16 = v42;
    sub_1B0B66AE4(v42, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    if (v31(&v10[v28], 1, v47) != 1)
    {
      goto LABEL_22;
    }

    sub_1B0398EFC(v10, &qword_1EB6E3920, &qword_1B0E9B070);
    v12 = v25;
LABEL_5:
    v20 += v40;
    v19 = v46 + v40;
    if (!--v17)
    {
      return 1;
    }
  }

  v32 = v39;
  sub_1B0B66738(v10, v39);
  if (v31(&v10[v28], 1, v47) != 1)
  {
    v33 = v43;
    sub_1B074BA2C(&v10[v28], v43);
    v34 = sub_1B0E46E08();
    sub_1B0398EFC(v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v12 = v25;
    sub_1B0B66AE4(v25, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    v16 = v42;
    sub_1B0B66AE4(v42, type metadata accessor for FetchSearchResultMessages.Requests.Search);
    sub_1B0398EFC(v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v10, &qword_1EB6E3920, &qword_1B0E9B070);
    if ((v34 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_1B0B66AE4(v25, type metadata accessor for FetchSearchResultMessages.Requests.Search);
  sub_1B0B66AE4(v42, type metadata accessor for FetchSearchResultMessages.Requests.Search);
  sub_1B0398EFC(v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_22:
  sub_1B0398EFC(v10, &qword_1EB6E41F8, &unk_1B0EC4440);
  return 0;
}

uint64_t sub_1B0B64D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    for (i = (a1 + 40); *(v3 - 2) == *(i - 2); i += 12)
    {
      result = 0;
      if (*(v3 - 1) != *(i - 1) || ((*i ^ *v3) & 1) != 0)
      {
        return result;
      }

      v3 += 12;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B0B64DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskHistory.Running(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1B0B66A7C(v13, v10, type metadata accessor for TaskHistory.Running);
        sub_1B0B66A7C(v14, v6, type metadata accessor for TaskHistory.Running);
        v16 = sub_1B0BB1D80(v10, v6);
        sub_1B0B66AE4(v6, type metadata accessor for TaskHistory.Running);
        sub_1B0B66AE4(v10, type metadata accessor for TaskHistory.Running);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1B0B64F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A30, &qword_1B0EC7698);
  MEMORY[0x1EEE9AC00](v43);
  v7 = &v38 - v6;
  v8 = type metadata accessor for TaskHistory.Previous(0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v38 - v16;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(v14 + 72);
  v38 = v15;
  v39 = v21;
  v22 = v44;
  v40 = v8;
  while (1)
  {
    sub_1B0B66A7C(v19, v22, type metadata accessor for TaskHistory.Previous);
    v23 = v45;
    sub_1B0B66A7C(v20, v45, type metadata accessor for TaskHistory.Previous);
    v24 = &v7[*(v43 + 48)];
    sub_1B0B66A7C(v22, v7, type metadata accessor for TaskHistory.Previous);
    sub_1B0B66A7C(v23, v24, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v25 = v42;
    sub_1B0B66A7C(v7, v42, type metadata accessor for TaskHistory.Previous);
    v26 = *v25;
    v27 = *(v25 + 8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B03E1BE8(v26);
      goto LABEL_19;
    }

    v28 = *v24;
    v29 = *(v24 + 8);
    v30 = static Action.__derived_enum_equals(_:_:)(v26, *v24);
    sub_1B03E1BE8(v28);
    sub_1B03E1BE8(v26);
    if ((v30 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1B0B66AE4(v7, type metadata accessor for TaskHistory.Previous);
    v22 = v44;
    if (v27 != v29)
    {
      goto LABEL_20;
    }

LABEL_5:
    sub_1B0B66AE4(v45, type metadata accessor for TaskHistory.Previous);
    sub_1B0B66AE4(v22, type metadata accessor for TaskHistory.Previous);
    v20 += v39;
    v19 += v39;
    if (!--v17)
    {
      return 1;
    }
  }

  v31 = v38;
  sub_1B0B66A7C(v7, v38, type metadata accessor for TaskHistory.Previous);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48);
  v33 = *(v31 + v32);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = *(v24 + v32);
    v35 = v41;
    sub_1B0423B48(v24, v41, type metadata accessor for ClientCommand);
    v36 = static ClientCommand.__derived_enum_equals(_:_:)(v31, v35);
    sub_1B0B66AE4(v35, type metadata accessor for ClientCommand);
    sub_1B0B66AE4(v31, type metadata accessor for ClientCommand);
    if ((v36 & 1) == 0)
    {
LABEL_16:
      sub_1B0B66AE4(v7, type metadata accessor for TaskHistory.Previous);
      v22 = v44;
      goto LABEL_20;
    }

    sub_1B0B66AE4(v7, type metadata accessor for TaskHistory.Previous);
    v22 = v44;
    if (v33 != v34)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  sub_1B0B66AE4(v31, type metadata accessor for ClientCommand);
LABEL_19:
  sub_1B0398EFC(v7, &qword_1EB6E4A30, &qword_1B0EC7698);
LABEL_20:
  sub_1B0B66AE4(v45, type metadata accessor for TaskHistory.Previous);
  sub_1B0B66AE4(v22, type metadata accessor for TaskHistory.Previous);
  return 0;
}

uint64_t sub_1B0B65458@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = MEMORY[0x1E69E7CC0];
  sub_1B0BCC1A8(MEMORY[0x1E69E7CC0]);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v17 = &_s18CondStoreResponsesVN;
  v18 = sub_1B0B667A8();
  v12 = swift_allocObject();
  *&v16 = v12;
  *(v12 + 16) = v5;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  *(v12 + 48) = v5;
  *(v12 + 56) = 0;
  *(v12 + 64) = 1;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0450C74(&v16, a1);
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  v13 = type metadata accessor for PendingServerResponses(0);
  return sub_1B074BA2C(v4, a1 + *(v13 + 24));
}

uint64_t sub_1B0B6557C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = MEMORY[0x1E69E7CC0];
  sub_1B0BCC1A8(MEMORY[0x1E69E7CC0]);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v17 = &_s14BasicResponsesVN;
  v18 = sub_1B0B667FC();
  v12 = swift_allocObject();
  *&v16 = v12;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = v5;
  *(v12 + 48) = 1;
  *(v12 + 56) = 1;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0450C74(&v16, a1);
  *(a1 + 40) = v5;
  *(a1 + 48) = 0;
  v13 = type metadata accessor for PendingServerResponses(0);
  return sub_1B074BA2C(v4, a1 + *(v13 + 24));
}

uint64_t sub_1B0B656A0(uint64_t result)
{
  v2 = *v1;
  if ((*(v1 + 8) & 1) == 0)
  {
    v3 = *(v2 + 16);
    if (v3 <= 0x294)
    {
      v4 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4418, &qword_1B0EC76A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B0EC1E70;
      *(inited + 32) = v4;
      result = sub_1B0AFC818(inited);
      v6 = 0;
      v7 = v2;
LABEL_7:
      *v1 = v7;
      *(v1 + 8) = v6;
      return result;
    }

    result = sub_1B0AA93E0(*v1, 0);
    v2 = v3;
  }

  v7 = v2 + 1;
  if (!__OFADD__(v2, 1))
  {
    v6 = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B6577C(uint64_t a1)
{
  sub_1B0B66E0C();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B657B8(uint64_t a1)
{
  sub_1B0B66E0C();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B657F4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A58, &qword_1B0EC7908);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v24[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A60, &qword_1B0EC7910);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A68, &qword_1B0EC7918);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0B66D10();
  sub_1B0E46D48();
  v13 = *v2;
  v12 = v2[1];
  v15 = v2[2];
  v14 = v2[3];
  v16 = *(v2 + 48);
  if (v16 < 0)
  {
    v20 = v2 + 4;
    v19 = v2[4];
    v29 = v20[1];
    v25 = v16 & 0x7F;
    LOBYTE(v32) = 1;
    sub_1B0B66D64();
    v21 = v26;
    v22 = v31;
    sub_1B0E468B8();
    v32 = v13;
    v33 = v12;
    v34 = v15;
    v35 = v14;
    v36 = v19;
    v37 = v29;
    v38 = v25;
    sub_1B0B66DB8();
    v23 = v28;
    sub_1B0E46958();
    (*(v27 + 8))(v21, v23);
    return (*(v30 + 8))(v11, v22);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_1B0B66E0C();
    v17 = v31;
    sub_1B0E468B8();
    v32 = v13;
    v33 = v12;
    v34 = v15;
    v35 = v14;
    sub_1B0B66E60();
    sub_1B0E46958();
    (*(v29 + 8))(v8, v6);
    return (*(v30 + 8))(v11, v17);
  }
}

uint64_t sub_1B0B65B60()
{
  if (*v0)
  {
    return 0x726F7453646E6F63;
  }

  else
  {
    return 0x6369736162;
  }
}

uint64_t sub_1B0B65B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369736162 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F7453646E6F63 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0B65C7C(uint64_t a1)
{
  sub_1B0B66D10();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B65CB8(uint64_t a1)
{
  sub_1B0B66D10();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B65CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B0E46A78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B0B65D74(uint64_t a1)
{
  sub_1B0B66D64();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B65DB0(uint64_t a1)
{
  sub_1B0B66D64();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B65E04(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B0B66404(v8, v9) & 1;
}

uint64_t sub_1B0B65E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  sub_1B0E46C28();
  if (a1 != 2)
  {
    sub_1B0E46C68();
    FlagsUpdate.hash(into:)(v7, a1 & 0xFFFFFFFF01010101, v4);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B0E46C68();
    return sub_1B0E46CB8();
  }

  sub_1B0E46C68();
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B0E46C68();
  sub_1B0B0AC94(v7, a3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B65F60(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[2];
  if (*v1 != 2)
  {
    v6 = *(v1 + 8);
    sub_1B0E46C68();
    FlagsUpdate.hash(into:)(a1, v3 & 0xFFFFFFFF01010101, v6);
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  if (!v4)
  {
    return sub_1B0E46C68();
  }

LABEL_3:
  sub_1B0E46C68();

  return sub_1B0B0AC94(a1, v4);
}

uint64_t sub_1B0B66024(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  sub_1B0E46C28();
  if (v2 != 2)
  {
    sub_1B0E46C68();
    FlagsUpdate.hash(into:)(v6, v2 & 0xFFFFFFFF01010101, v3);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B0E46C68();
    return sub_1B0E46CB8();
  }

  sub_1B0E46C68();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B0E46C68();
  sub_1B0B0AC94(v6, v4);
  return sub_1B0E46CB8();
}

uint64_t *sub_1B0B660F4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(result + 8) == 1)
  {
    v5 = v3 == 0;
    if (v3)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (!v5)
    {
      v4 = 0;
    }

    if (v2)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  else if ((v3 | v2) < 0)
  {
    __break(1u);
  }

  else
  {
    return (v3 == v2);
  }

  return result;
}

void sub_1B0B66148(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *(v3 + 16);
      if (v6 == v8)
      {
        break;
      }

      if (v6 >= v8)
      {
        __break(1u);
        goto LABEL_32;
      }

      v9 = *(a1 + v5 + 40);
      v10 = *(a1 + v5 + 48);
      v11 = *(a1 + v5 + 56);
      v12 = *(v3 + v5 + 32);
      v13 = *(v3 + v5 + 40);
      v14 = *(v3 + v5 + 48);
      v15 = *(v3 + v5 + 56);
      LODWORD(v25) = *(a1 + v5 + 32);
      *(&v25 + 1) = v9;
      LOBYTE(v26) = v10;
      *(&v26 + 1) = v11;
      LODWORD(v27) = v12;
      *(&v27 + 1) = v13;
      LOBYTE(v28) = v14;
      *(&v28 + 1) = v15;
      if (v12 != v25)
      {
        goto LABEL_23;
      }

      if (v9 == 2)
      {
        if (v13 != 2)
        {
          goto LABEL_23;
        }
      }

      else if (v13 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(v9 & 0xFFFFFFFF01010101, v10, v13 & 0xFFFFFFFF01010101, v14) & 1) == 0)
      {
LABEL_23:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_24:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_25:
        sub_1B0398EFC(&v25, &qword_1EB6E4A50, &qword_1B0EC77A0);
        break;
      }

      if (v11)
      {
        if (!v15)
        {
          goto LABEL_24;
        }

        swift_bridgeObjectRetain_n();
        v16 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v17 = sub_1B0AFDF14(v16, v15);

        if ((v17 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v15)
      {
        goto LABEL_24;
      }

      v29 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B0B09F84(0, *(v7 + 16) + 1, 1);
        v7 = v29;
      }

      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B0B09F84((v18 > 1), v19 + 1, 1);
        v7 = v29;
      }

      ++v6;
      *(v7 + 16) = v19 + 1;
      v20 = (v7 + (v19 << 6));
      v21 = v25;
      v22 = v26;
      v23 = v28;
      v20[4] = v27;
      v20[5] = v23;
      v20[2] = v21;
      v20[3] = v22;
      v5 += 32;
    }

    while (v4 != v6);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v24 = *(v7 + 16);

  if (v24)
  {
    if (*(v3 + 16) < v24)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      sub_1B0BACF58(0, v24);
    }
  }
}

uint64_t sub_1B0B663A8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v4 == v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    return v7 & 1;
  }

  else if (v6)
  {
    return 0;
  }

  else
  {
    return sub_1B03D2D0C(v4, v5) & 1;
  }
}

uint64_t sub_1B0B66404(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v16 = *a2;
  v17 = *(a2 + 2);
  if (v4 == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v16 == 2 || (static FlagsUpdate.__derived_struct_equals(_:_:)(v4 & 0xFFFFFFFF01010101, v5, v16 & 0xFFFFFFFF01010101, BYTE8(v16)) & 1) == 0)
  {
    goto LABEL_32;
  }

  v7 = v17;
  if (v6)
  {
    if (!v17)
    {
      sub_1B0B66A14(&v16, v15);
      goto LABEL_32;
    }

    sub_1B0B66A14(&v16, v15);
    v8 = sub_1B0AFDF14(v6, v7);
    result = sub_1B0B66A4C(&v16);
    if ((v8 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_32;
    }

    result = sub_1B0B66A14(&v16, v15);
  }

  v10 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*(a2 + 6) != *(a1 + 6))
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_32;
    }
  }

  v11 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*(a2 + 8) != *(a1 + 8))
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_32;
    }
  }

  if (a1[6])
  {
    if ((a2[3] & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_31:
    v14 = static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(*(a1 + 14), a1[8], a1[9], *(a2 + 14), *(a2 + 8), *(a2 + 9));
    return v14 & 1;
  }

  if (a2[3])
  {
LABEL_32:
    v14 = 0;
    return v14 & 1;
  }

  v12 = a1[5];
  v13 = *(a2 + 5);
  if (((v13 | v12) & 0x8000000000000000) == 0)
  {
    if (v13 == v12)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

BOOL sub_1B0B6658C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (a4 == 2)
    {
      return 0;
    }

    v7 = a6;
    v8 = static FlagsUpdate.__derived_struct_equals(_:_:)(a1 & 0xFFFFFFFF01010101, a2, a4 & 0xFFFFFFFF01010101, a5);
    a6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    if (!a6)
    {
      return 0;
    }

    v9 = a6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = sub_1B0AFDF14(a3, v9);

    return (v10 & 1) != 0;
  }

  return !a6;
}

uint64_t sub_1B0B66738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0B667A8()
{
  result = qword_1EB6DD818;
  if (!qword_1EB6DD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD818);
  }

  return result;
}

unint64_t sub_1B0B667FC()
{
  result = qword_1EB6E4A40;
  if (!qword_1EB6E4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A40);
  }

  return result;
}

uint64_t sub_1B0B66850(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0B66898(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B668FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0B66958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1B0B669C0()
{
  result = qword_1EB6E4A48;
  if (!qword_1EB6E4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A48);
  }

  return result;
}

uint64_t sub_1B0B66A7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B66AE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0B66B54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0B66BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0B66C20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 49))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 48) & 0x7E | (*(a1 + 48) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0B66C70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_1B0B66D10()
{
  result = qword_1EB6DD810;
  if (!qword_1EB6DD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD810);
  }

  return result;
}

unint64_t sub_1B0B66D64()
{
  result = qword_1EB6DD7E8;
  if (!qword_1EB6DD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7E8);
  }

  return result;
}

unint64_t sub_1B0B66DB8()
{
  result = qword_1EB6DD828;
  if (!qword_1EB6DD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD828);
  }

  return result;
}

unint64_t sub_1B0B66E0C()
{
  result = qword_1EB6E4A70;
  if (!qword_1EB6E4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A70);
  }

  return result;
}

unint64_t sub_1B0B66E60()
{
  result = qword_1EB6E4A78;
  if (!qword_1EB6E4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A78);
  }

  return result;
}

unint64_t sub_1B0B66EE8()
{
  result = qword_1EB6E4A80;
  if (!qword_1EB6E4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A80);
  }

  return result;
}

unint64_t sub_1B0B66F40()
{
  result = qword_1EB6E4A88;
  if (!qword_1EB6E4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A88);
  }

  return result;
}

unint64_t sub_1B0B66F98()
{
  result = qword_1EB6E4A90;
  if (!qword_1EB6E4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A90);
  }

  return result;
}

unint64_t sub_1B0B66FF0()
{
  result = qword_1EB6DD7F0;
  if (!qword_1EB6DD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7F0);
  }

  return result;
}

unint64_t sub_1B0B67048()
{
  result = qword_1EB6DD7F8;
  if (!qword_1EB6DD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7F8);
  }

  return result;
}

unint64_t sub_1B0B670A0()
{
  result = qword_1EB6DD7D8;
  if (!qword_1EB6DD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7D8);
  }

  return result;
}

unint64_t sub_1B0B670F8()
{
  result = qword_1EB6DD7E0;
  if (!qword_1EB6DD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7E0);
  }

  return result;
}

unint64_t sub_1B0B67150()
{
  result = qword_1EB6DD800;
  if (!qword_1EB6DD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD800);
  }

  return result;
}

unint64_t sub_1B0B671A8()
{
  result = qword_1EB6DD808;
  if (!qword_1EB6DD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD808);
  }

  return result;
}

uint64_t sub_1B0B67204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0B6724C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B672A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((sub_1B0B66400(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B03D2E18(v2, v6) & 1) == 0)
  {
    return 0;
  }

  result = sub_1B03D2F14(v3, v7);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (v4)
    {
      if (v9)
      {
        return v8 != 0;
      }
    }

    else if (v9)
    {
      return v8 == 0;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

  if (((v8 | v4) & 0x8000000000000000) == 0)
  {
    return v8 == v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B673E4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1B0B67434(double a1)
{
  sub_1B0BCC1A8(MEMORY[0x1E69E7CC0]);
  v3 = v2;
  v5 = v4;
  v7 = v6;

  *v1 = v3;
  v1[1] = v5;
  v1[2] = v7;
  return result;
}

double sub_1B0B674B4@<D0>(uint64_t a1@<X8>)
{
  sub_1B0B684E0(*(v1 + 8), *(v1 + 24), v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

unint64_t sub_1B0B67508(uint64_t a1)
{
  result = sub_1B0B67530();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B67530()
{
  result = qword_1EB6E4A98;
  if (!qword_1EB6E4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4A98);
  }

  return result;
}

uint64_t sub_1B0B67584(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AA0, &qword_1B0EC7D60);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0B68824();
  sub_1B0E46D48();
  v14 = 0;
  sub_1B0E468C8();
  if (!v5)
  {
    v13 = 1;
    sub_1B0E468C8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B0B67718()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x577365676E616863;
  }
}

uint64_t sub_1B0B67764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x577365676E616863 && a2 == 0xEE00444955687469;
  if (v6 || (sub_1B0E46A78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B590 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B0E46A78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B0B67850(uint64_t a1)
{
  sub_1B0B68824();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B6788C(uint64_t a1)
{
  sub_1B0B68824();

  return sub_1B0E46F38();
}

void sub_1B0B678E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v88 = a3;
  v86 = a1;
  v87 = a2;
  v85 = _s12LocalMailboxV6LoggerVMa(0);
  MEMORY[0x1EEE9AC00](v85);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v83 - v10;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v83 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v83 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v83 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v83 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v83 - v29;
  v84 = a5;
  if ((a5 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) != 0)
    {
      v61 = v31;
      v62 = v30;
      sub_1B0B6874C(a6, v30, _s12LocalMailboxV6LoggerVMa);
      sub_1B0B6874C(a6, v11, _s12LocalMailboxV6LoggerVMa);
      sub_1B0B6874C(a6, v61, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v63 = sub_1B0E43988();
      v64 = sub_1B0E458E8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v92 = v89;
        *v65 = 68158979;
        *(v65 + 4) = 2;
        *(v65 + 8) = 256;
        v66 = v85;
        v67 = v11[*(v85 + 20)];
        sub_1B0B687B4(v11, _s12LocalMailboxV6LoggerVMa);
        *(v65 + 10) = v67;
        *(v65 + 11) = 1040;
        *(v65 + 13) = 2;
        *(v65 + 17) = 512;
        v68 = *(v61 + *(v66 + 20) + 2);
        sub_1B0B687B4(v61, _s12LocalMailboxV6LoggerVMa);
        *(v65 + 19) = v68;
        *(v65 + 21) = 2160;
        *(v65 + 23) = 0x786F626C69616DLL;
        *(v65 + 31) = 2085;
        v69 = v62 + *(v66 + 20);
        v70 = *(v69 + 8);
        v71 = *(v69 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B687B4(v62, _s12LocalMailboxV6LoggerVMa);
        v90 = v70;
        v91 = v71;
        v72 = sub_1B0E44BA8();
        v74 = sub_1B0399D64(v72, v73, &v92);

        *(v65 + 33) = v74;
        _os_log_impl(&dword_1B0389000, v63, v64, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Flag/label change without UID and without sequence number.", v65, 0x29u);
        v75 = v89;
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x1B272C230](v75, -1, -1);
        MEMORY[0x1B272C230](v65, -1, -1);
      }

      else
      {
        sub_1B0B687B4(v61, _s12LocalMailboxV6LoggerVMa);
        sub_1B0B687B4(v11, _s12LocalMailboxV6LoggerVMa);

        sub_1B0B687B4(v62, _s12LocalMailboxV6LoggerVMa);
      }
    }

    else
    {
      v48 = a4;
      sub_1B0B6874C(a6, v21, _s12LocalMailboxV6LoggerVMa);
      sub_1B0B6874C(a6, v18, _s12LocalMailboxV6LoggerVMa);
      sub_1B0B6874C(a6, v15, _s12LocalMailboxV6LoggerVMa);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v49 = sub_1B0E43988();
      v50 = sub_1B0E458D8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v92 = v83;
        *v51 = 68159235;
        *(v51 + 4) = 2;
        *(v51 + 8) = 256;
        v52 = v85;
        v53 = v18[*(v85 + 20)];
        v84 = v48;
        sub_1B0B687B4(v18, _s12LocalMailboxV6LoggerVMa);
        *(v51 + 10) = v53;
        *(v51 + 11) = 1040;
        *(v51 + 13) = 2;
        *(v51 + 17) = 512;
        v54 = *&v15[*(v52 + 20) + 2];
        sub_1B0B687B4(v15, _s12LocalMailboxV6LoggerVMa);
        *(v51 + 19) = v54;
        *(v51 + 21) = 2160;
        *(v51 + 23) = 0x786F626C69616DLL;
        *(v51 + 31) = 2085;
        v55 = &v21[*(v52 + 20)];
        v56 = *(v55 + 1);
        v57 = *(v55 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B687B4(v21, _s12LocalMailboxV6LoggerVMa);
        v90 = v56;
        v91 = v57;
        v58 = sub_1B0E44BA8();
        v48 = sub_1B0399D64(v58, v59, &v92);

        *(v51 + 33) = v48;
        LODWORD(v48) = v84;
        *(v51 + 41) = 1024;
        *(v51 + 43) = v48;
        _os_log_impl(&dword_1B0389000, v49, v50, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Inserting flag/label change without UID. Sequence number %u.", v51, 0x2Fu);
        v60 = v83;
        __swift_destroy_boxed_opaque_existential_0(v83);
        MEMORY[0x1B272C230](v60, -1, -1);
        MEMORY[0x1B272C230](v51, -1, -1);
      }

      else
      {
        sub_1B0B687B4(v15, _s12LocalMailboxV6LoggerVMa);
        sub_1B0B687B4(v18, _s12LocalMailboxV6LoggerVMa);

        sub_1B0B687B4(v21, _s12LocalMailboxV6LoggerVMa);
      }

      v77 = v88;
      v76 = v89;
      v78 = v89[3];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1B0AFF688(0, *(v78 + 2) + 1, 1, v78);
      }

      v80 = *(v78 + 2);
      v79 = *(v78 + 3);
      if (v80 >= v79 >> 1)
      {
        v78 = sub_1B0AFF688((v79 > 1), v80 + 1, 1, v78);
      }

      *(v78 + 2) = v80 + 1;
      v81 = &v78[32 * v80];
      *(v81 + 8) = v48;
      v82 = v87;
      *(v81 + 5) = v86;
      v81[48] = v82;
      *(v81 + 7) = v77;
      v76[3] = v78;
    }
  }

  else
  {
    sub_1B0B6874C(a6, &v83 - v29, _s12LocalMailboxV6LoggerVMa);
    sub_1B0B6874C(a6, v27, _s12LocalMailboxV6LoggerVMa);
    sub_1B0B6874C(a6, v24, _s12LocalMailboxV6LoggerVMa);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v33 = sub_1B0E43988();
    v34 = sub_1B0E458D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v92 = v83;
      *v35 = 68159235;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      v36 = v85;
      v37 = v27[*(v85 + 20)];
      sub_1B0B687B4(v27, _s12LocalMailboxV6LoggerVMa);
      *(v35 + 10) = v37;
      *(v35 + 11) = 1040;
      *(v35 + 13) = 2;
      *(v35 + 17) = 512;
      v38 = *&v24[*(v36 + 20) + 2];
      sub_1B0B687B4(v24, _s12LocalMailboxV6LoggerVMa);
      *(v35 + 19) = v38;
      *(v35 + 21) = 2160;
      *(v35 + 23) = 0x786F626C69616DLL;
      *(v35 + 31) = 2085;
      v39 = &v32[*(v36 + 20)];
      v40 = *(v39 + 1);
      v41 = *(v39 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B687B4(v32, _s12LocalMailboxV6LoggerVMa);
      v90 = v40;
      v91 = v41;
      v42 = sub_1B0E44BA8();
      v44 = sub_1B0399D64(v42, v43, &v92);

      *(v35 + 33) = v44;
      *(v35 + 41) = 1024;
      v45 = v84;
      *(v35 + 43) = v84;
      _os_log_impl(&dword_1B0389000, v33, v34, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Inserting flag/label change for UID %u.", v35, 0x2Fu);
      v46 = v83;
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x1B272C230](v46, -1, -1);
      MEMORY[0x1B272C230](v35, -1, -1);

      v47 = v88;
    }

    else
    {
      sub_1B0B687B4(v24, _s12LocalMailboxV6LoggerVMa);
      sub_1B0B687B4(v27, _s12LocalMailboxV6LoggerVMa);

      sub_1B0B687B4(v32, _s12LocalMailboxV6LoggerVMa);
      v47 = v88;
      v45 = v84;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BC8FC4(v86, v87, v47, v45);
  }
}

void sub_1B0B6820C(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  sub_1B0B6874C(a1, v20 - v6, type metadata accessor for MailboxTaskLogger);
  sub_1B0B6874C(a1, v4, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v8 = sub_1B0E43988();
  v9 = sub_1B0E458E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 68159235;
    *(v10 + 4) = 2;
    *(v10 + 8) = 256;
    v12 = &v4[*(v2 + 20)];
    *(v10 + 10) = *v12;
    *(v10 + 11) = 2082;
    v13 = &v7[*(v2 + 20)];
    *(v10 + 13) = sub_1B0399D64(*(v13 + 1), *(v13 + 2), &v22);
    *(v10 + 21) = 1040;
    *(v10 + 23) = 2;
    *(v10 + 27) = 512;
    v14 = *(v12 + 12);
    sub_1B0B687B4(v4, type metadata accessor for MailboxTaskLogger);
    *(v10 + 29) = v14;
    *(v10 + 31) = 2160;
    *(v10 + 33) = 0x786F626C69616DLL;
    *(v10 + 41) = 2085;
    v15 = *(v13 + 4);
    v16 = *(v13 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B687B4(v7, type metadata accessor for MailboxTaskLogger);
    v20[1] = v15;
    v21 = v16;
    v17 = sub_1B0E44BA8();
    v19 = sub_1B0399D64(v17, v18, &v22);

    *(v10 + 43) = v19;
    _os_log_impl(&dword_1B0389000, v8, v9, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Attempting to store HIGHESTMODSEQ, but PendingServerResponses does not support CONDSTORE.", v10, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v11, -1, -1);
    MEMORY[0x1B272C230](v10, -1, -1);
  }

  else
  {
    sub_1B0B687B4(v4, type metadata accessor for MailboxTaskLogger);

    sub_1B0B687B4(v7, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1B0B684E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = (a1 + 32);
    do
    {
      v19 = *v18++;
      v32 = v19;
      MessageIdentifierSet.insert(_:)(v33, &v32, v11);
      --v17;
    }

    while (v17);
  }

  sub_1B03C60A4(v13, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v30 = sub_1B0B963BC();
  v21 = v20;
  sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0E46EE8();
  v22 = *(v31 + 16);
  if (v22)
  {
    v23 = (v31 + 32);
    do
    {
      v24 = *v23;
      v23 += 8;
      v32 = v24;
      MessageIdentifierSet.insert(_:)(v33, &v32, v5);
      --v22;
    }

    while (v22);
  }

  sub_1B03C60A4(v7, v10, &qword_1EB6E4030, &qword_1B0EC2B00);
  v25 = sub_1B0B969A8();
  v27 = v26;
  result = sub_1B0398EFC(v10, &qword_1EB6E4030, &qword_1B0EC2B00);
  *a3 = v30;
  *(a3 + 8) = v21;
  *(a3 + 16) = v25;
  *(a3 + 24) = v27;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return result;
}

uint64_t sub_1B0B6874C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B687B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B0B68824()
{
  result = qword_1EB6E4AA8;
  if (!qword_1EB6E4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4AA8);
  }

  return result;
}

unint64_t sub_1B0B6888C()
{
  result = qword_1EB6E4AB0;
  if (!qword_1EB6E4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4AB0);
  }

  return result;
}

unint64_t sub_1B0B688E4()
{
  result = qword_1EB6E4AB8;
  if (!qword_1EB6E4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4AB8);
  }

  return result;
}

unint64_t sub_1B0B6893C()
{
  result = qword_1EB6E4AC0;
  if (!qword_1EB6E4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4AC0);
  }

  return result;
}

uint64_t sub_1B0B68990(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  result = static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(*a1, a1[1], a1[2], *a2, a2[1], a2[2]);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (((v3 | v2) & 0x8000000000000000) == 0)
  {
    return v3 == v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B689F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v50 = v2;
  v16 = v2[2];
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 32);
    do
    {
      v19 = *v18++;
      v52 = v19;
      MessageIdentifierSet.insert(_:)(&v51, &v52, v10);
      --v17;
    }

    while (v17);
  }

  sub_1B03C60A4(v12, v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v20 = sub_1B0B963BC();
  v48 = v21;
  v49 = v20;
  sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v22 = v50;
  v23 = v50[4];
  sub_1B0E46EE8();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = (v23 + 32);
    do
    {
      v26 = *v25;
      v25 += 8;
      v52 = v26;
      MessageIdentifierSet.insert(_:)(&v51, &v52, v4);
      --v24;
    }

    while (v24);
  }

  sub_1B03C60A4(v6, v9, &qword_1EB6E4030, &qword_1B0EC2B00);
  v27 = sub_1B0B969A8();
  v29 = v28;
  result = sub_1B0398EFC(v9, &qword_1EB6E4030, &qword_1B0EC2B00);
  v31 = *v22;
  v32 = *(*v22 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v46 = v29;
    v47 = v27;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A5A4(0, v32, 0);
    v33 = v51;
    v34 = (v31 + 56);
    do
    {
      v35 = *(v34 - 6);
      v36 = *(v34 - 2);
      v37 = *v34;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v38 = sub_1B0B6A03C(v36, v35);

      v51 = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_1B0B0A5A4((v39 > 1), v40 + 1, 1);
        v33 = v51;
      }

      v34 += 4;
      *(v33 + 16) = v40 + 1;
      v41 = v33 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
      --v32;
    }

    while (v32);
    v22 = v50;
    v29 = v46;
    v27 = v47;
  }

  v42 = v22[5];
  v43 = *(v22 + 48);
  if (v43)
  {
    v42 = 0;
  }

  v44 = v48;
  v45 = v49;
  *a1 = v33;
  *(a1 + 8) = v45;
  *(a1 + 16) = v44;
  *(a1 + 24) = v27;
  *(a1 + 32) = v29;
  *(a1 + 40) = v42;
  *(a1 + 48) = v43 | 0x80;
  return result;
}

void sub_1B0B68DA4(uint64_t *a1, uint64_t a2)
{
  v5 = _s12LocalMailboxV6LoggerVMa(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v20);
  if ((*(a1 + 36) & 1) == 0)
  {
    v76 = v21;
    v77 = &v75 - v22;
    v38 = *(a1 + 8);
    v39 = *a1;
    v40 = *(a1 + 8);
    v41 = a1[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v42 = v2;
    sub_1B0BC8FC4(v39, v40, v41, v38);
    if (a1[6])
    {
      v43 = v77;
      sub_1B0B6A28C(a2, v77);
      sub_1B0B6A28C(a2, v19);
      sub_1B0B6A28C(a2, v16);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v24 = sub_1B0E43988();
      v44 = sub_1B0E458F8();
      if (os_log_type_enabled(v24, v44))
      {
        v26 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v80 = v45;
        *v26 = 68158979;
        *(v26 + 4) = 2;
        *(v26 + 8) = 256;
        v46 = v76;
        v47 = v19[*(v76 + 20)];
        sub_1B0B6A2F0(v19);
        *(v26 + 10) = v47;
        *(v26 + 11) = 1040;
        *(v26 + 13) = 2;
        *(v26 + 17) = 512;
        v48 = *&v16[*(v46 + 20) + 2];
        sub_1B0B6A2F0(v16);
        *(v26 + 19) = v48;
        *(v26 + 21) = 2160;
        *(v26 + 23) = 0x786F626C69616DLL;
        *(v26 + 31) = 2085;
        v49 = v43 + *(v46 + 20);
        v50 = *(v49 + 8);
        v51 = *(v49 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B6A2F0(v43);
        v78 = v50;
        v79 = v51;
        v52 = sub_1B0E44BA8();
        v54 = sub_1B0399D64(v52, v53, &v80);

        *(v26 + 33) = v54;
        _os_log_impl(&dword_1B0389000, v24, v44, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Mailbox supports CONDSTORE, but flag change has no MODSEQ.", v26, 0x29u);
        __swift_destroy_boxed_opaque_existential_0(v45);
        v37 = v45;
        goto LABEL_8;
      }

      sub_1B0B6A2F0(v16);
      sub_1B0B6A2F0(v19);

      v74 = v43;
      goto LABEL_30;
    }

    v64 = a1[5];
    v65 = *(a1 + 14);
    v67 = a1[8];
    v66 = a1[9];
    v68 = *v42;
    v69 = *(*v42 + 2);
    if (!v69 || (static ConnectionCommandIDSet.__derived_struct_equals(_:_:)(v65, v67, v66, *&v68[32 * v69], *&v68[32 * v69 + 8], *&v68[32 * v69 + 16]) & 1) == 0)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_1B0AFF794(0, *(v68 + 2) + 1, 1, v68);
      }

      v72 = *(v68 + 2);
      v71 = *(v68 + 3);
      if (v72 >= v71 >> 1)
      {
        v68 = sub_1B0AFF794((v71 > 1), v72 + 1, 1, v68);
      }

      *(v68 + 2) = v72 + 1;
      v73 = &v68[32 * v72];
      *(v73 + 8) = v65;
      *(v73 + 5) = v67;
      *(v73 + 6) = v66;
      *(v73 + 7) = v64;
      *v42 = v68;
      return;
    }

    v70 = *(v68 + 2);
    if (v70)
    {
      if (v64 <= *&v68[32 * v70 + 24])
      {
        v66 = *&v68[32 * v70 + 24];
      }

      else
      {
        v66 = v64;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    v68 = sub_1B0B8C978(v68);
LABEL_21:
    if (v70 > *(v68 + 2))
    {
      __break(1u);
    }

    else
    {
      *&v68[32 * v70 + 24] = v66;
      *v42 = v68;
    }

    return;
  }

  if (*(a1 + 28))
  {
    v23 = v21;
    sub_1B0B6A28C(a2, v13);
    sub_1B0B6A28C(a2, v10);
    sub_1B0B6A28C(a2, v7);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E458E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v80 = v27;
      *v26 = 68158979;
      v28 = v23;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v29 = v10[*(v23 + 20)];
      sub_1B0B6A2F0(v10);
      *(v26 + 10) = v29;
      *(v26 + 11) = 1040;
      *(v26 + 13) = 2;
      *(v26 + 17) = 512;
      v30 = *&v7[*(v23 + 20) + 2];
      sub_1B0B6A2F0(v7);
      *(v26 + 19) = v30;
      *(v26 + 21) = 2160;
      *(v26 + 23) = 0x786F626C69616DLL;
      *(v26 + 31) = 2085;
      v31 = &v13[*(v28 + 20)];
      v32 = *(v31 + 1);
      v33 = *(v31 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B6A2F0(v13);
      v78 = v32;
      v79 = v33;
      v34 = sub_1B0E44BA8();
      v36 = sub_1B0399D64(v34, v35, &v80);

      *(v26 + 33) = v36;
      _os_log_impl(&dword_1B0389000, v24, v25, "[%.*hhx-{%.*hx}-%{sensitive,mask.mailbox}s] Flag change has no UID and no sequence number.", v26, 0x29u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v37 = v27;
LABEL_8:
      MEMORY[0x1B272C230](v37, -1, -1);
      MEMORY[0x1B272C230](v26, -1, -1);

      return;
    }

    sub_1B0B6A2F0(v7);
    sub_1B0B6A2F0(v10);

    v74 = v13;
LABEL_30:
    sub_1B0B6A2F0(v74);
    return;
  }

  v55 = *(a1 + 6);
  v56 = *a1;
  v57 = *(a1 + 8);
  v58 = a1[2];
  v59 = v2;
  v60 = v2[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = sub_1B0AFF688(0, *(v60 + 2) + 1, 1, v60);
  }

  v62 = *(v60 + 2);
  v61 = *(v60 + 3);
  if (v62 >= v61 >> 1)
  {
    v60 = sub_1B0AFF688((v61 > 1), v62 + 1, 1, v60);
  }

  *(v60 + 2) = v62 + 1;
  v63 = &v60[32 * v62];
  *(v63 + 8) = v55;
  *(v63 + 5) = v56;
  v63[48] = v57;
  *(v63 + 7) = v58;
  v59[4] = v60;
}

uint64_t sub_1B0B69484(double a1)
{
  sub_1B0BCC1A8(MEMORY[0x1E69E7CC0]);
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v1[1] = v3;
  v1[2] = v5;
  v1[3] = v7;
  return result;
}

uint64_t sub_1B0B694E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 16);
  if (!v5)
  {
LABEL_15:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    LODWORD(v17) = 1;
    v21 = v25;
    goto LABEL_16;
  }

  v7 = result;
  v8 = 0;
  v9 = v4 + 48;
  while (1)
  {
    if (v8 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v11 = v4;
    v12 = *(v9 - 16);
    v13 = *(v9 - 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v12) = ConnectionCommandIDSet.isDisjoint(with:)(v7, a2, a3, v12, v13);

    if ((v12 & 1) == 0)
    {
      break;
    }

    ++v8;
    v9 += 32;
    v4 = v11;
    if (v5 == v8)
    {
      v8 = v5;
      goto LABEL_8;
    }
  }

  v4 = v11;
LABEL_8:
  if (*(v4 + 16) < v8)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v8)
  {
    goto LABEL_15;
  }

  v26 = MEMORY[0x1E69E7CC0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B0A2C4(0, v8, 0);
  v14 = v26;
  v15 = *(v26 + 16);
  v16 = (v4 + 56);
  v17 = v8;
  do
  {
    v19 = *v16;
    v16 += 4;
    v18 = v19;
    v20 = *(v26 + 24);
    if (v15 >= v20 >> 1)
    {
      sub_1B0B0A2C4((v20 > 1), v15 + 1, 1);
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15++ + 32) = v18;
    --v17;
  }

  while (v17);
  v21 = v25;
  v4 = v11;
LABEL_16:
  v22 = sub_1B0B203CC(v14);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    if ((*(v21 + 48) & 1) == 0 && v22 <= *(v21 + 40))
    {
      v22 = *(v21 + 40);
    }

    *(v21 + 40) = v22;
    *(v21 + 48) = 0;
  }

  if (v17)
  {
LABEL_24:
  }

  else
  {
    if (*(v4 + 16) >= v8)
    {
      sub_1B0BAD404(0, v8);
      goto LABEL_24;
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

char *sub_1B0B69704(char *result, __n128 a2)
{
  v3 = result;
  v4 = *v2;
  if (*(*v2 + 16))
  {
    v5 = static ConnectionCommandIDSet.empty.getter(a2);
    v7 = v6;
    v9 = v8;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF794(0, *(v4 + 2) + 1, 1, v4);
      v4 = result;
    }

    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      result = sub_1B0AFF794((v10 > 1), v11 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 2) = v11 + 1;
    v12 = &v4[32 * v11];
    *(v12 + 8) = v5;
    *(v12 + 5) = v7;
    *(v12 + 6) = v9;
    *(v12 + 7) = v3;
    *v2 = v4;
  }

  else
  {
    *(v2 + 40) = result;
    *(v2 + 48) = 0;
  }

  return result;
}

double sub_1B0B697E8@<D0>(uint64_t a1@<X8>)
{
  sub_1B0B689F0(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1B0B69834(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AD8, &unk_1B0EC8038);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0B6A530();
  sub_1B0E46D48();
  v12 = a2;
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0B6A584();
  sub_1B0E46958();
  if (!v3)
  {
    v11[14] = 1;
    sub_1B0E46998();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B0B699E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AC8, &qword_1B0EC8028);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B0B6A404();
  sub_1B0E46D48();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AD0, &qword_1B0EC8030);
  sub_1B0B6A458();
  sub_1B0E46958();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  sub_1B0E468C8();
  v10[5] = 2;
  sub_1B0E468C8();
  v10[4] = 3;
  sub_1B0E46918();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B0B69BD8()
{
  if (*v0)
  {
    return 0x65636E6575716573;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1B0B69C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001B0F2B5D0 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xED000065756C6156)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B0E46A78();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1B0B69D14(uint64_t a1)
{
  sub_1B0B6A530();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B69D50(uint64_t a1)
{
  sub_1B0B6A530();

  return sub_1B0E46F38();
}

unint64_t sub_1B0B69DA8()
{
  v1 = 0x65636E6575716573;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0x577365676E616863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B0B69E40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B0B6A830(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B0B69E68(uint64_t a1)
{
  sub_1B0B6A404();

  return sub_1B0E46F28();
}

uint64_t sub_1B0B69EA4(uint64_t a1)
{
  sub_1B0B6A404();

  return sub_1B0E46F38();
}

uint64_t sub_1B0B69EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if ((sub_1B03D2D68(a1, a7) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B0B66400(a2, a8) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B03D2E18(a3, a9) & 1) == 0)
  {
    return 0;
  }

  result = sub_1B03D2F14(a4, a10);
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (a6)
  {
    return (a12 & 1) != 0;
  }

  if (a12)
  {
    return 0;
  }

  if (((a11 | a5) & 0x8000000000000000) == 0)
  {
    return a11 == a5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0B69FC0(uint64_t a1)
{
  result = sub_1B0B69FE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B69FE8()
{
  result = qword_1EB6DD820;
  if (!qword_1EB6DD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD820);
  }

  return result;
}

uint64_t sub_1B0B6A03C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v2, 0);
  v3 = v25;
  v5 = a1 + 56;
  result = sub_1B0E460B8();
  v7 = result;
  v8 = 0;
  v21 = v2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v22 = v8;
    v23 = *(a1 + 36);
    v24 = *(*(a1 + 48) + 4 * v7);
    result = sub_1B0E46508();
    v12 = *(v25 + 16);
    v11 = *(v25 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_1B041D32C((v11 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v13 = v25 + 16 * v12;
    *(v13 + 32) = HIDWORD(v24);
    *(v13 + 40) = 0xE000000000000000;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v5 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v10);
    if ((v14 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v7 & 0x3F));
    if (v15)
    {
      v9 = __clz(__rbit64(v15)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v18 = (a1 + 64 + 8 * v10);
      while (v17 < (v9 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1B0425168(v7, v23, 0);
          v9 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v7, v23, 0);
    }

LABEL_4:
    v8 = v22 + 1;
    v7 = v9;
    if (v22 + 1 == v21)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B0B6A28C(uint64_t a1, uint64_t a2)
{
  v4 = _s12LocalMailboxV6LoggerVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B6A2F0(uint64_t a1)
{
  v2 = _s12LocalMailboxV6LoggerVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B6A36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0B6A3B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0B6A404()
{
  result = qword_1EB6DD860;
  if (!qword_1EB6DD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD860);
  }

  return result;
}

unint64_t sub_1B0B6A458()
{
  result = qword_1EB6DB478;
  if (!qword_1EB6DB478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E4AD0, &qword_1B0EC8030);
    sub_1B0B6A4DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB478);
  }

  return result;
}

unint64_t sub_1B0B6A4DC()
{
  result = qword_1EB6DD830;
  if (!qword_1EB6DD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD830);
  }

  return result;
}

unint64_t sub_1B0B6A530()
{
  result = qword_1EB6DD848;
  if (!qword_1EB6DD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD848);
  }

  return result;
}

unint64_t sub_1B0B6A584()
{
  result = qword_1EB6DB080;
  if (!qword_1EB6DB080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB080);
  }

  return result;
}

unint64_t sub_1B0B6A624()
{
  result = qword_1EB6E4AE0;
  if (!qword_1EB6E4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4AE0);
  }

  return result;
}

unint64_t sub_1B0B6A67C()
{
  result = qword_1EB6E4AE8;
  if (!qword_1EB6E4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4AE8);
  }

  return result;
}

unint64_t sub_1B0B6A6D4()
{
  result = qword_1EB6DD838;
  if (!qword_1EB6DD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD838);
  }

  return result;
}

unint64_t sub_1B0B6A72C()
{
  result = qword_1EB6DD840;
  if (!qword_1EB6DD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD840);
  }

  return result;
}

unint64_t sub_1B0B6A784()
{
  result = qword_1EB6DD850;
  if (!qword_1EB6DD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD850);
  }

  return result;
}

unint64_t sub_1B0B6A7DC()
{
  result = qword_1EB6DD858;
  if (!qword_1EB6DD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD858);
  }

  return result;
}

uint64_t sub_1B0B6A830(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEF73657461647055;
  if (v4 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x577365676E616863 && a2 == 0xEE00444955687469 || (sub_1B0E46A78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B0F2B590 == a2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B0F2B5B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B0E46A78();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B0B6A9B8()
{
  result = sub_1B03D0770(&unk_1F2710F98);
  qword_1EB737D20 = result;
  return result;
}

uint64_t sub_1B0B6A9E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B0EC4700;
  *(v0 + 32) = type metadata accessor for FindMissingMessages(0);
  sub_1B0451F2C();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 80) = type metadata accessor for FetchSearchResultMessages(0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 128) = &type metadata for DetectChangesToMessages;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 176) = &type metadata for DetectChangesToMessagesInRecent;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 224) = &type metadata for DetectRemovedMessages;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  *(v0 + 272) = &type metadata for DetectRemovedMessagesInRecent;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  return v0;
}

void sub_1B0B6AB80(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  if (*(v1 + 112))
  {
    sub_1B0A92638(a1, v8);
    sub_1B0A92638(a1, v5);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v15 = sub_1B0E43988();
    v16 = sub_1B0E45908();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v48 = v18;
      *v17 = 68159235;
      *(v17 + 4) = 2;
      *(v17 + 8) = 256;
      v19 = &v5[*(v3 + 20)];
      *(v17 + 10) = *v19;
      *(v17 + 11) = 2082;
      v20 = &v8[*(v3 + 20)];
      *(v17 + 13) = sub_1B0399D64(*(v20 + 1), *(v20 + 2), &v48);
      *(v17 + 21) = 1040;
      *(v17 + 23) = 2;
      *(v17 + 27) = 512;
      v21 = *(v19 + 12);
      sub_1B0A9269C(v5);
      *(v17 + 29) = v21;
      *(v17 + 31) = 2160;
      *(v17 + 33) = 0x786F626C69616DLL;
      *(v17 + 41) = 2085;
      v22 = *(v20 + 4);
      v23 = *(v20 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v8);
      v46 = v22;
      v47 = v23;
      v24 = sub_1B0E44BA8();
      v26 = sub_1B0399D64(v24, v25, &v48);

      *(v17 + 43) = v26;
      _os_log_impl(&dword_1B0389000, v15, v16, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Not purging any messages.", v17, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v18, -1, -1);
      MEMORY[0x1B272C230](v17, -1, -1);

      return;
    }

    sub_1B0A9269C(v5);

    v44 = v8;
  }

  else
  {
    v27 = *(v1 + 104);
    sub_1B0A92638(a1, &v45 - v13);
    sub_1B0A92638(a1, v11);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v28 = sub_1B0E43988();
    v29 = sub_1B0E45908();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v45 = v27;
      v31 = v30;
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 68159491;
      *(v31 + 4) = 2;
      *(v31 + 8) = 256;
      v33 = &v11[*(v3 + 20)];
      *(v31 + 10) = *v33;
      *(v31 + 11) = 2082;
      v34 = &v14[*(v3 + 20)];
      *(v31 + 13) = sub_1B0399D64(*(v34 + 1), *(v34 + 2), &v48);
      *(v31 + 21) = 1040;
      *(v31 + 23) = 2;
      *(v31 + 27) = 512;
      v35 = *(v33 + 12);
      sub_1B0A9269C(v11);
      *(v31 + 29) = v35;
      *(v31 + 31) = 2160;
      *(v31 + 33) = 0x786F626C69616DLL;
      *(v31 + 41) = 2085;
      v36 = *(v34 + 4);
      v37 = *(v34 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v14);
      v46 = v36;
      v47 = v37;
      v38 = sub_1B0E44BA8();
      v40 = sub_1B0399D64(v38, v39, &v48);

      *(v31 + 43) = v40;
      *(v31 + 51) = 2082;
      v46 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v41 = MessageIdentifierRange.debugDescription.getter();
      v43 = sub_1B0399D64(v41, v42, &v48);

      *(v31 + 53) = v43;
      _os_log_impl(&dword_1B0389000, v28, v29, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task purging UIDs %{public}s", v31, 0x3Du);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v32, -1, -1);
      MEMORY[0x1B272C230](v31, -1, -1);

      return;
    }

    sub_1B0A9269C(v11);

    v44 = v14;
  }

  sub_1B0A9269C(v44);
}

double sub_1B0B6B070()
{
  if (qword_1EB6DD2C0 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

void sub_1B0B6B0D0(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>, double a4@<D0>)
{
  if (*(v4 + 112) & 1) != 0 || (v6 = *(v4 + 104), (sub_1B0A9FCC0(a1, a2, a4)))
  {
    v7 = 0xF000000000000007;
  }

  else
  {
    v8 = swift_allocObject();
    v9 = *(v4 + 24);
    *(v8 + 16) = *(v4 + 16);
    *(v8 + 24) = v9;
    *(v8 + 32) = v6;
    v10 = *(v4 + 124);
    *(v8 + 40) = *(v4 + 116);
    *(v8 + 48) = v10;
    v7 = v8 | 0x3000000000000002;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a3 = v7;
}

__n128 __swift_memcpy125_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1B0B6B1B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 125))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0B6B200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 125) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 125) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0B6B274()
{
  result = qword_1EB6DD2B8;
  if (!qword_1EB6DD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD2B8);
  }

  return result;
}

unint64_t sub_1B0B6B2C8(uint64_t a1)
{
  result = sub_1B0B6B2F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B6B2F0()
{
  result = qword_1EB6DD2B0;
  if (!qword_1EB6DD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD2B0);
  }

  return result;
}

uint64_t sub_1B0B6B358()
{
  result = sub_1B03D0770(&unk_1F2711010);
  qword_1EB737D50 = result;
  return result;
}

void sub_1B0B6B380(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  sub_1B0A92638(a1, v24 - v8);
  sub_1B0A92638(a1, v6);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B23F10(v2, v29);
  sub_1B0B23F10(v2, v28);
  sub_1B0B23F10(v2, v27);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 68160003;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v14 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v14;
    *(v12 + 11) = 2082;
    v15 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_1B0399D64(*(v15 + 1), *(v15 + 2), &v26);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    v16 = *(v14 + 12);
    sub_1B0A9269C(v6);
    *(v12 + 29) = v16;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v17 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v9);
    v24[1] = v17;
    v25 = v15;
    v18 = sub_1B0E44BA8();
    v20 = sub_1B0399D64(v18, v19, &v26);

    *(v12 + 43) = v20;
    *(v12 + 51) = 2048;
    v21 = v30;
    sub_1B0B23EB0(v29);
    *(v12 + 53) = v21;
    *(v12 + 61) = 2048;
    v22 = *(v28[15] + 16);
    sub_1B0B23EB0(v28);
    *(v12 + 63) = v22;
    *(v12 + 71) = 2048;
    v23 = v27[14];
    sub_1B0B23EB0(v27);
    *(v12 + 73) = v23;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. highest-mod-seq local: %llu, changes without UID: %ld, server: %llu", v12, 0x51u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {
    sub_1B0B23EB0(v27);
    sub_1B0B23EB0(v28);
    sub_1B0B23EB0(v29);
    sub_1B0A9269C(v6);

    sub_1B0A9269C(v9);
  }
}

uint64_t sub_1B0B6B688@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = *(v4 + 104);
  if ((v6 < *(v4 + 112) || *(*(v4 + 120) + 16)) && (sub_1B0B71C68(a1, a2, a4) & 1) == 0)
  {
    if (*(v4 + 128))
    {
      v10 = &unk_1F27115E8;
    }

    else
    {
      v10 = &unk_1F2711528;
    }

    v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48);
    v12 = sub_1B041C1E8();
    static MessageIdentifierRange.all.getter(&type metadata for UID, v12, &v15);
    v14 = v15;
    Range<>.init<A>(_:)(&v14, &type metadata for UID, v12);
    sub_1B03D06F8();
    sub_1B0E46F08();
    *v11 = v10;
    *(v11 + 8) = v6;
    *(v11 + 16) = 0;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AF0, &qword_1B0EC8470);
    return (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AF0, &qword_1B0EC8470);
    v8 = *(*(v7 - 8) + 56);

    return v8(a3, 1, 1, v7);
  }
}

void sub_1B0B6B854(uint64_t a1)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  if ((v3 | v2) < 0)
  {
    __break(1u);
  }

  else if (v3 != v2)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
    MEMORY[0x1EEE9AC00](a1);
    if (*(v6 + 192))
    {
      v8 = *(v6 + 176);
      v7 = *(v6 + 184);
      v12 = *(v6 + 168);
      v9 = v12;
      v10 = v6;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B2BE00(&v12, v4, v5, 0, sub_1B0B6BF28);
      sub_1B03BB638(v9, v8, v7, 1);
      v11 = v12;
      *(v10 + 176) = 0;
      *(v10 + 184) = 0;
      *(v10 + 168) = v11;
      *(v10 + 192) = 1;
    }
  }
}

uint64_t sub_1B0B6B950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = *(a2 + 120);
  v13 = (a1 + *(type metadata accessor for MailboxSyncState(0) + 48));
  v14 = v13[3];
  v15 = v13[4];
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  (*(v15 + 32))(v12, v14, v15);
  v16 = v13[3];
  v17 = v13[4];
  __swift_project_boxed_opaque_existential_0(v13, v16);
  (*(v17 + 40))(v16, v17);
  v19 = *(v18 + 16);

  sub_1B0A92638(a3, v11);
  sub_1B0A92638(a3, v8);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v20 = sub_1B0E43988();
  v21 = sub_1B0E45908();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v19;
    v24 = v23;
    v41 = v23;
    *v22 = 68159491;
    *(v22 + 4) = 2;
    *(v22 + 8) = 256;
    v25 = *(v6 + 20);
    v38 = a2;
    v26 = &v8[v25];
    *(v22 + 10) = v8[v25];
    *(v22 + 11) = 2082;
    v27 = &v11[*(v6 + 20)];
    *(v22 + 13) = sub_1B0399D64(*(v27 + 1), *(v27 + 2), &v41);
    *(v22 + 21) = 1040;
    *(v22 + 23) = 2;
    *(v22 + 27) = 512;
    LOWORD(v26) = *(v26 + 12);
    sub_1B0A9269C(v8);
    *(v22 + 29) = v26;
    *(v22 + 31) = 2160;
    *(v22 + 33) = 0x786F626C69616DLL;
    *(v22 + 41) = 2085;
    v28 = *(v27 + 4);
    LODWORD(v26) = *(v27 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v11);
    v39 = v28;
    v40 = v26;
    a2 = v38;
    v29 = sub_1B0E44BA8();
    v31 = sub_1B0399D64(v29, v30, &v41);

    *(v22 + 43) = v31;
    *(v22 + 51) = 2048;
    *(v22 + 53) = v37;
    _os_log_impl(&dword_1B0389000, v20, v21, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Number of changes to-be-sent to the persistence: %ld.", v22, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v24, -1, -1);
    MEMORY[0x1B272C230](v22, -1, -1);
  }

  else
  {
    sub_1B0A9269C(v8);

    sub_1B0A9269C(v11);
  }

  v32 = *(a2 + 112);
  v33 = v13[3];
  v34 = v13[4];
  __swift_mutable_project_boxed_opaque_existential_1(v13, v33);
  return (*(v34 + 64))(v32, a3, v33, v34);
}

double sub_1B0B6BCD8()
{
  if (qword_1EB6DD7B8 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B0B6BD9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0B6BDE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0B6BE58()
{
  result = qword_1EB6DD7B0;
  if (!qword_1EB6DD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7B0);
  }

  return result;
}

unint64_t sub_1B0B6BEAC(uint64_t a1)
{
  result = sub_1B0B6BED4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B6BED4()
{
  result = qword_1EB6DD7A8;
  if (!qword_1EB6DD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD7A8);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1B0B6BF60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0B6BFBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t (*sub_1B0B6C038(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1B0B6C7A8(v6, a2, a3);
  return sub_1B0B6C0C0;
}

uint64_t (*sub_1B0B6C0C4(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B0B6C858(v4, a2);
  return sub_1B0B6E68C;
}

void sub_1B0B6C13C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1B0B6C188(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(v3 + 48);
  if (!v4)
  {
    goto LABEL_16;
  }

  if (!*(v4 + 16) || (v28 = a2, v5 = sub_1B03AB888(a1, a2), (v6 & 1) == 0))
  {
    v20 = 0;
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  v7 = *(v4 + 56) + 72 * v5;
  v31 = *v7;
  v8 = *(v7 + 64);
  v10 = *(v7 + 32);
  v9 = *(v7 + 48);
  v32 = *(v7 + 16);
  v33 = v10;
  v34 = v9;
  v35 = v8;
  v11 = *(&v31 + 1);
  v12 = v31;
  v14 = *(&v32 + 1);
  v13 = v32;
  v16 = *(&v10 + 1);
  v15 = v10;
  v17 = *(&v9 + 1);
  v18 = v9;
  v19 = v8;
  v20 = HIBYTE(v8);
  sub_1B03BB0B4(&v31, v30);
  if (!v12)
  {
LABEL_15:
    *&v31 = 0;
    *(&v31 + 1) = v11;
    *&v32 = v13;
    *(&v32 + 1) = v14;
    *&v33 = v15;
    *(&v33 + 1) = v16;
    *&v34 = v18;
    *(&v34 + 1) = v17;
    LOBYTE(v35) = v19;
    HIBYTE(v35) = v20;
    sub_1B0398EFC(&v31, &qword_1EB6E4568, &qword_1B0EC55C0);
    goto LABEL_16;
  }

  v31 = __PAIR128__(v11, v12);
  v32 = __PAIR128__(v14, v13);
  v33 = __PAIR128__(v16, v15);
  v34 = __PAIR128__(v17, v18);
  v35 = __PAIR16__(v20, v19);
  result = sub_1B0398EFC(&v31, &qword_1EB6E4568, &qword_1B0EC55C0);
  if (v20)
  {
LABEL_16:
    v25 = 0;
    v26 = 1;
LABEL_17:
    LOBYTE(v31) = v26;
    return v25 | (v26 << 32);
  }

  if (a3 != -1)
  {
    if (a3 + 1 > v15)
    {
      v22 = a3 + 1;
    }

    else
    {
      v22 = v15;
    }

    v24 = sub_1B0B6C038(v30, a1, v28);
    if (*v23 && *(v23 + 65) != 1)
    {
      *(v23 + 32) = v22;
    }

    (v24)(v30, 0);
    v26 = v15 > a3;
    if (v15 <= a3)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B6C37C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1B0B6DAF4(v9, v10) & 1;
}

uint64_t sub_1B0B6C428(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B0B6C464(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 11) = *(a1 + 27);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 11) = *(a2 + 27);
  return sub_1B0B6D9B8(&v5, &v7) & 1;
}

void sub_1B0B6C4B0(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 48))
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    sub_1B03BB0B4(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *(v1 + 48);
    sub_1B0A9BF5C(a1, v3, v4, isUniquelyReferenced_nonNull_native);
    v7 = v15[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4AF8, &qword_1B0EC85E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0EC1E70;
    v10 = *a1;
    *(inited + 40) = *(a1 + 8);
    *(inited + 32) = v10;
    v11 = inited + 32;
    *(inited + 48) = *a1;
    v12 = *(a1 + 16);
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    *(inited + 112) = *(a1 + 64);
    *(inited + 80) = v13;
    *(inited + 96) = v14;
    *(inited + 64) = v12;
    v7 = sub_1B0BAB530(inited);
    swift_setDeallocating();
    sub_1B03BB0B4(a1, v15);
    sub_1B03BB0B4(a1, v15);
    sub_1B0398EFC(v11, &qword_1EB6E4B00, &qword_1B0EC85E8);
  }

  *(v2 + 48) = v7;
}

uint64_t sub_1B0B6C5E0()
{
  if (*v0)
  {
    return 0x616C696176616E75;
  }

  else
  {
    return 0x6574726F70707573;
  }
}

uint64_t sub_1B0B6C628(__int16 a1)
{
  LOBYTE(v1) = a1;
  if ((a1 & 0x100) != 0)
  {
    if (!a1)
    {
      return 0x31303533636672;
    }

    v1 = a1;
    v5 = 0;
  }

  else
  {
    result = 0x2D6C616963657073;
    if (!v1)
    {
      return result;
    }

    v1 = v1;
    v5 = 0x2D6C616963657073;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0x6174732D7473696CLL;
  }

  if (v1 == 2)
  {
    v4 = 0x80000001B0F2B5F0;
  }

  else
  {
    v4 = 0xEB00000000737574;
  }

  MEMORY[0x1B2726E80](v3, v4);

  return v5;
}

uint64_t sub_1B0B6C71C()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1B0B6C628(v1 | *v0);
}

unint64_t sub_1B0B6C738()
{
  v1 = 0x6174732D7473696CLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C696176616E75;
  }
}

uint64_t (*sub_1B0B6C7A8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1B0B6CE4C(v7);
  v7[9] = sub_1B0B6C95C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1B0B6C854;
}

uint64_t (*sub_1B0B6C858(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1B0B6CE80(v5);
  v5[9] = sub_1B0B6CC44(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1B0B6E690;
}

void sub_1B0B6C8FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1B0B6C95C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x1C8uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 68) = a3;
  *(v10 + 432) = a2;
  *(v10 + 440) = v4;
  v12 = *v4;
  v13 = sub_1B03AB888(a2, a3);
  *(v11 + 66) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1B0B8D330();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1B0B2F69C(v18, a4 & 1);
    v13 = sub_1B03AB888(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1B0E46BA8();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v11 + 448) = v13;
  if (v19)
  {
    memmove((v11 + 144), (*(*v5 + 56) + 72 * v13), 0x42uLL);
  }

  else
  {
    *(v11 + 208) = 0;
    *(v11 + 176) = 0u;
    *(v11 + 192) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 160) = 0u;
  }

  return sub_1B0B6CACC;
}

void sub_1B0B6CACC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 160);
  *(v2 + 216) = *(*a1 + 144);
  *(v2 + 232) = v3;
  v4 = *(v2 + 192);
  *(v2 + 248) = *(v2 + 176);
  *(v2 + 264) = v4;
  *(v2 + 280) = *(v2 + 208);
  v5 = *(v2 + 216);
  if (a2)
  {
    if (v5)
    {
      v7 = *(v2 + 440);
      v6 = *(v2 + 448);
      if ((*(v2 + 66) & 1) == 0)
      {
        v8 = *(v2 + 68);
        v9 = *(v2 + 432);
        v10 = *v7;
        v11 = *(v2 + 192);
        *(v2 + 32) = *(v2 + 176);
        *(v2 + 48) = v11;
        *(v2 + 64) = *(v2 + 208);
        v12 = *(v2 + 160);
        *v2 = *(v2 + 144);
        *(v2 + 16) = v12;
        v13 = v9;
        v14 = v2;
LABEL_11:
        sub_1B0A9BBD4(v6, v13, v8, v14, v10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v5)
  {
    v7 = *(v2 + 440);
    v6 = *(v2 + 448);
    if ((*(v2 + 66) & 1) == 0)
    {
      v8 = *(v2 + 68);
      v17 = *(v2 + 432);
      v10 = *v7;
      v18 = *(v2 + 144);
      *(v2 + 88) = *(v2 + 160);
      v19 = *(v2 + 192);
      *(v2 + 104) = *(v2 + 176);
      *(v2 + 120) = v19;
      *(v2 + 136) = *(v2 + 208);
      *(v2 + 72) = v18;
      v14 = v2 + 72;
      v13 = v17;
      goto LABEL_11;
    }

LABEL_7:
    memmove((*(*v7 + 56) + 72 * v6), (v2 + 144), 0x42uLL);
    goto LABEL_12;
  }

  if (*(v2 + 66))
  {
    v15 = *(v2 + 448);
    v16 = **(v2 + 440);
    sub_1B039E440((*(v16 + 48) + 16 * v15));
    sub_1B0B900C4(v15, v16);
  }

LABEL_12:
  v20 = *(v2 + 192);
  *(v2 + 320) = *(v2 + 176);
  *(v2 + 336) = v20;
  *(v2 + 352) = *(v2 + 208);
  v21 = *(v2 + 160);
  *(v2 + 288) = *(v2 + 144);
  *(v2 + 304) = v21;
  sub_1B0B6DD98(v2 + 216, v2 + 360);
  sub_1B0398EFC(v2 + 288, &qword_1EB6E4568, &qword_1B0EC55C0);

  free(v2);
}

void (*sub_1B0B6CC44(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1B0AE00C4(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1B0B8E9DC();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1B0B325B0(v16, a3 & 1);
    v11 = sub_1B0AE00C4(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
    result = sub_1B0E46BA8();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_1B0B6CD98;
}

void sub_1B0B6CD98(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1B0A9BD3C(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    sub_1B0B90958(v6, v7);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  free(v1);
}

uint64_t (*sub_1B0B6CE4C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B0B6CE74;
}

uint64_t (*sub_1B0B6CE80(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B0B6E678;
}

unsigned __int8 *sub_1B0B6CEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0E44ED8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B0A6C2B0(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B0E46368();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1B0B6D434(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0E44ED8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B0A6C2B0(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B0E46368();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1B0B6D9B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || ((a1[4] ^ a2[4]) & 1) != 0 || ((a1[5] ^ a2[5]) & 1) != 0 || a1[6] != a2[6] || a1[7] != a2[7] || ((a1[8] ^ a2[8]) & 1) != 0 || a1[9] != a2[9])
  {
    return 0;
  }

  v2 = a2[24];
  if (a1[24])
  {
    if (!a2[24])
    {
      return v2 & 1;
    }
  }

  else
  {
    if (*(a1 + 2) != *(a2 + 2))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  if (a1[40])
  {
    v2 = 0;
    if (v3)
    {
      if ((a2[40] & 1) == 0 || !v4)
      {
        return v2 & 1;
      }
    }

    else if ((a2[40] & 1) == 0 || v4)
    {
      return v2 & 1;
    }
  }

  else
  {
    v2 = 0;
    if ((a2[40] & 1) != 0 || v3 != v4)
    {
      return v2 & 1;
    }
  }

  if (a1[41] != a2[41])
  {
    return 0;
  }

  v2 = a1[42] ^ a2[42] ^ 1;
  return v2 & 1;
}

uint64_t sub_1B0B6DAF4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vmovn_s64(vceqq_s64(vandq_s8(vzip1q_s64(*a2, *a1), v5), vdupq_n_s64(2uLL)));
  if (v6.i8[4])
  {
    if ((v6.i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6.i8[0])
    {
      return 0;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40) | (*(a1 + 42) << 16);
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *(a2 + 40) | (*(a2 + 42) << 16);
    v30[0] = *a2;
    v30[1] = v10;
    v31 = v11;
    v32 = v12;
    v33 = BYTE2(v12);
    v26[0] = v4;
    v26[1] = v7;
    v27 = v8;
    v28 = v9;
    v29 = BYTE2(v9);
    if ((sub_1B0B6D9B8(v26, v30) & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B72F70(v13, v14);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v17 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if ((*(a1 + 65) ^ *(a2 + 65)))
  {
    return 0;
  }

  v19 = *(a1 + 72);
  v20 = *(a2 + 72);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v22 = *(a1 + 80);
    v21 = *(a1 + 88);
    v24 = *(a2 + 80);
    v23 = *(a2 + 88);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v21) = static Namespace.__derived_struct_equals(_:_:)(v19, v22, v21, v20, v24, v23, v25);

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  return 1;
}

double sub_1B0B6DCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1B04420D8(a1);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0B6DCF0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1B0447F00(result);
  }

  return result;
}

uint64_t sub_1B0B6DD30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B6DD98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4568, &qword_1B0EC55C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s6RemoteV6ServerV11ListSupportVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6RemoteV6ServerV11ListSupportVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0B6DFC0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[43])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0B6E004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t _s6RemoteV6ServerV13SearchSupportVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *_s6RemoteV6ServerV13SearchSupportVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B0B6E1C0()
{
  result = qword_1EB6E4B08;
  if (!qword_1EB6E4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B08);
  }

  return result;
}

unint64_t sub_1B0B6E218()
{
  result = qword_1EB6E4B10;
  if (!qword_1EB6E4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B10);
  }

  return result;
}

unint64_t sub_1B0B6E270()
{
  result = qword_1EB6E4B18;
  if (!qword_1EB6E4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B18);
  }

  return result;
}

unint64_t sub_1B0B6E2C8()
{
  result = qword_1EB6E4B20;
  if (!qword_1EB6E4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B20);
  }

  return result;
}

unint64_t sub_1B0B6E320()
{
  result = qword_1EB6E4B28;
  if (!qword_1EB6E4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B28);
  }

  return result;
}

unint64_t sub_1B0B6E408()
{
  result = qword_1EB6E4B30;
  if (!qword_1EB6E4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B30);
  }

  return result;
}

unint64_t sub_1B0B6E460()
{
  result = qword_1EB6E4B38;
  if (!qword_1EB6E4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B38);
  }

  return result;
}

unint64_t sub_1B0B6E4B8()
{
  result = qword_1EB6E4B40;
  if (!qword_1EB6E4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B40);
  }

  return result;
}

unint64_t sub_1B0B6E510()
{
  result = qword_1EB6E4B48;
  if (!qword_1EB6E4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B48);
  }

  return result;
}

unint64_t sub_1B0B6E568()
{
  result = qword_1EB6E4B50;
  if (!qword_1EB6E4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B50);
  }

  return result;
}

unint64_t sub_1B0B6E5C0()
{
  result = qword_1EB6E4B58;
  if (!qword_1EB6E4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B58);
  }

  return result;
}

unint64_t sub_1B0B6E618()
{
  result = qword_1EB6E4B60;
  if (!qword_1EB6E4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B60);
  }

  return result;
}

uint64_t sub_1B0B6E6BC(uint64_t result)
{
  if (*(v1 + 24) == 1)
  {
    v2 = result;
    v3 = *v1;
    v4 = *(v1 + 8);
    v42 = (v1 + 8);
    v5 = *(v1 + 16);
    v49 = *v1;
    v6 = result + 64;
    v7 = 1 << *(result + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(result + 64);
    v39 = v5;
    v40 = v4;
    sub_1B03B9A2C(v3, v4, v5, 1);
    v10 = (v7 + 63) >> 6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = 0;
    v12 = 0;
    v41 = v3;
    v46 = v1;
    v43 = v2;
    v13 = v3 + 32;
LABEL_7:
    while (v9)
    {
      v14 = v9;
LABEL_13:
      v9 = (v14 - 1) & v14;
      v16 = *(v3 + 16);
      if (v16)
      {
        v45 = (v14 - 1) & v14;
        v17 = 0;
        v18 = (*(v2 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v14)))));
        v19 = *v18;
        v20 = v18[1];
        v21 = *v18 + 32;
        while (1)
        {
          v22 = (v13 + 176 * v17);
          if (v22[1] == v20)
          {
            v23 = *v22;
            v24 = *(*v22 + 16);
            if (v24 == *(v19 + 16))
            {
              break;
            }
          }

LABEL_15:
          if (++v17 == v16)
          {
            v9 = v45;
            goto LABEL_7;
          }
        }

        if (v24)
        {
          v25 = v23 == v19;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          v26 = (v23 + 32);
          v27 = v21;
          while (v24)
          {
            if (*v26 != *v27)
            {
              goto LABEL_15;
            }

            ++v26;
            ++v27;
            if (!--v24)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_26:
        v28 = v22[17];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v44 = v28;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B1AF0(v11, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v1 + 32);
        *&v48[0] = v30;
        v32 = sub_1B03B8A9C(v19, v20);
        v33 = v30[2];
        v34 = (v31 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_39;
        }

        v36 = v31;
        if (v30[3] >= v35)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0B8D6A0();
            v30 = *&v48[0];
          }
        }

        else
        {
          sub_1B0B2FCE0(v35, isUniquelyReferenced_nonNull_native);
          v30 = *&v48[0];
          v37 = sub_1B03B8A9C(v19, v20);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_40;
          }

          v32 = v37;
        }

        *(v46 + 32) = v30;
        if (v36)
        {
        }

        else
        {
          sub_1B0A9BC3C(v32, v19, v20, MEMORY[0x1E69E7CD0], v30);
        }

        v9 = v45;
        sub_1B03B00C8(v44);
        sub_1B0BAFC50(v17, v47);
        v48[8] = v47[8];
        v48[9] = v47[9];
        v48[10] = v47[10];
        v48[4] = v47[4];
        v48[5] = v47[5];
        v48[6] = v47[6];
        v48[7] = v47[7];
        v48[0] = v47[0];
        v48[1] = v47[1];
        v48[2] = v47[2];
        v48[3] = v47[3];
        sub_1B03A3614(v48);
        v11 = sub_1B0B6EA2C;
        v3 = v49;
        v1 = v46;
        v2 = v43;
        v13 = v49 + 32;
      }
    }

    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v15 >= v10)
      {

        sub_1B03BB638(v41, v40, v39, 1);
        result = sub_1B03B1AF0(v11, 0);
        *v1 = v3;
        *v42 = 0;
        v42[1] = 0;
        *(v1 + 24) = 1;
        return result;
      }

      v14 = *(v6 + 8 * v15);
      ++v12;
      if (v14)
      {
        v12 = v15;
        goto LABEL_13;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = sub_1B0E46BA8();
    __break(1u);
  }

  return result;
}

void sub_1B0B6EA3C(uint64_t a1)
{
  v3 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = *(v1 + 48);
  if (*(v15 + 16) == 1 && (sub_1B0B86A1C(v15, v49), v49[0]))
  {
    v16 = v49[2];
    v17 = v50;

    sub_1B03B1C38(a1, v14, type metadata accessor for Task.Logger);
    sub_1B03B1C38(a1, v11, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0E43988();
    v19 = sub_1B0E45908();

    if (os_log_type_enabled(v18, v19))
    {
      v44 = v17;
      v20 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v20 = 68158723;
      *(v20 + 4) = 2;
      *(v20 + 8) = 256;
      v21 = *&v11[*(v3 + 20)];
      sub_1B03B1E20(v11, type metadata accessor for Task.Logger);
      *(v20 + 10) = v21;
      *(v20 + 11) = 2082;
      v22 = &v14[*(v3 + 20)];
      v23 = v22[1];
      v24 = v22[2];
      v25 = v22[3];
      sub_1B0A982D8(*v22, v23, v24, v25);
      sub_1B03B1E20(v14, type metadata accessor for Task.Logger);
      if (v25 < 0)
      {
      }

      v26 = sub_1B0399D64(v23, v24, &v45);

      *(v20 + 13) = v26;
      *(v20 + 21) = 2160;
      *(v20 + 23) = 0x786F626C69616DLL;
      *(v20 + 31) = 2085;
      v46 = v16;
      v47 = v44;
      v27 = sub_1B0E44BA8();
      v29 = sub_1B0399D64(v27, v28, &v45);

      *(v20 + 33) = v29;
      _os_log_impl(&dword_1B0389000, v18, v19, "[%.*hhx-%{public}s] Created task for '%{sensitive,mask.mailbox}s'", v20, 0x29u);
      v30 = v43;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v30, -1, -1);
      v31 = v20;
LABEL_11:
      MEMORY[0x1B272C230](v31, -1, -1);

      return;
    }

    sub_1B03B1E20(v11, type metadata accessor for Task.Logger);

    v42 = v14;
  }

  else
  {
    sub_1B03B1C38(a1, v8, type metadata accessor for Task.Logger);
    sub_1B03B1C38(a1, v5, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0B707F8(v1, &v46);
    v18 = sub_1B0E43988();
    v32 = sub_1B0E45908();
    if (os_log_type_enabled(v18, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 68158466;
      *(v33 + 4) = 2;
      *(v33 + 8) = 256;
      v35 = *&v5[*(v3 + 20)];
      sub_1B03B1E20(v5, type metadata accessor for Task.Logger);
      *(v33 + 10) = v35;
      *(v33 + 11) = 2082;
      v36 = &v8[*(v3 + 20)];
      v37 = v36[1];
      v38 = v36[2];
      v39 = v36[3];
      sub_1B0A982D8(*v36, v37, v38, v39);
      sub_1B03B1E20(v8, type metadata accessor for Task.Logger);
      if (v39 < 0)
      {
      }

      v40 = sub_1B0399D64(v37, v38, &v45);

      *(v33 + 13) = v40;
      *(v33 + 21) = 2048;
      v41 = *(v48 + 16);
      sub_1B0B70830(&v46);
      *(v33 + 23) = v41;
      _os_log_impl(&dword_1B0389000, v18, v32, "[%.*hhx-%{public}s] Created task for %ld mailboxes.", v33, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1B272C230](v34, -1, -1);
      v31 = v33;
      goto LABEL_11;
    }

    sub_1B0B70830(&v46);
    sub_1B03B1E20(v5, type metadata accessor for Task.Logger);

    v42 = v8;
  }

  sub_1B03B1E20(v42, type metadata accessor for Task.Logger);
}

void sub_1B0B6EF90(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v33 = a3;
  v31 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v31);
  v32 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v3 + 48);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v36 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = (*(v36 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(v36 + 56) + 32 * v13;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((sub_1B0B714A4(v15, v16, v34, v35, sub_1B0B705E0, v22) & 1) == 0)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v27 = v32;
    *v32 = v18;
    *(v27 + 8) = v19;
    *(v27 + 16) = v20;
    *(v27 + 24) = v21;
    swift_storeEnumTagMultiPayload();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B78, &qword_1B0EC8E50);
    v29 = *(v28 + 48);
    v30 = v33;
    *v33 = v15;
    v30[1] = v16;
    sub_1B0423BB0(v27, v30 + v29, type metadata accessor for ClientCommand);
    (*(*(v28 - 8) + 56))(v30, 0, 1, v28);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4B78, &qword_1B0EC8E50);
    v24 = *(*(v23 - 8) + 56);
    v25 = v23;
    v26 = v33;

    v24(v26, 1, 1, v25);
  }
}

void sub_1B0B6F258(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v79 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v79 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v83 = &v79 - v24;
  v91 = v7;
  v25 = *(v7 + 48);
  if (!*(v25 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v86 = v23;
  v88 = a1;
  v89 = a2;
  v26 = sub_1B03B8A9C(a1, a2);
  if ((v27 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v28 = *(v25 + 56) + 32 * v26;
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = *(v28 + 16);
  LODWORD(v28) = *(v28 + 24);
  v84 = v30;
  v85 = v28;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32 = v90;
  sub_1B0A9174C(a7, a3, a4, a5, a6);
  v33 = v32;
  if (v32)
  {
    v34 = v87;
    sub_1B03B1C38(a7, v87, type metadata accessor for Task.Logger);
    sub_1B03B1C38(a7, v17, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v35 = v31;
    v36 = sub_1B0E43988();
    v37 = sub_1B0E458E8();

    if (os_log_type_enabled(v36, v37))
    {
      LODWORD(v83) = v37;
      v81 = v35;
      v38 = v29;
      v90 = v32;
      v39 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v94 = v82;
      *v39 = 68159235;
      *(v39 + 4) = 2;
      *(v39 + 8) = 256;
      v40 = v86;
      v41 = *&v17[*(v86 + 20)];
      sub_1B03B1E20(v17, type metadata accessor for Task.Logger);
      *(v39 + 10) = v41;
      *(v39 + 11) = 2082;
      v42 = (v34 + *(v40 + 20));
      v43 = v42[1];
      v44 = v42[2];
      v45 = v42[3];
      sub_1B0A982D8(*v42, v43, v44, v45);
      sub_1B03B1E20(v34, type metadata accessor for Task.Logger);
      if (v45 < 0)
      {
      }

      v46 = sub_1B0399D64(v43, v44, &v94);

      *(v39 + 13) = v46;
      *(v39 + 21) = 2160;
      *(v39 + 23) = 0x786F626C69616DLL;
      *(v39 + 31) = 2085;
      v92 = v38;
      v93 = v84;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v47 = sub_1B0E44BA8();
      v49 = sub_1B0399D64(v47, v48, &v94);

      *(v39 + 33) = v49;
      *(v39 + 41) = 2160;
      *(v39 + 43) = 0x786F626C69616DLL;
      *(v39 + 51) = 2085;

      v92 = v81;
      v93 = v85;
      v50 = sub_1B0E44BA8();
      v52 = sub_1B0399D64(v50, v51, &v94);

      *(v39 + 53) = v52;
      _os_log_impl(&dword_1B0389000, v36, v83, "[%.*hhx-%{public}s] Failed to rename '%{sensitive,mask.mailbox}s' to '%{sensitive,mask.mailbox}s'.", v39, 0x3Du);
      v53 = v82;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v53, -1, -1);
      MEMORY[0x1B272C230](v39, -1, -1);

      v54 = v88;
      v55 = v89;
      v33 = v90;
    }

    else
    {
      sub_1B03B1E20(v17, type metadata accessor for Task.Logger);

      sub_1B03B1E20(v34, type metadata accessor for Task.Logger);
      v54 = v88;
      v55 = v89;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B019E4(&v92, v54, v55);
  }

  else
  {
    v56 = v83;
    sub_1B03B1C38(a7, v83, type metadata accessor for Task.Logger);
    v57 = v82;
    sub_1B03B1C38(a7, v82, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v58 = v31;
    v59 = sub_1B0E43988();
    v60 = sub_1B0E45908();

    if (os_log_type_enabled(v59, v60))
    {
      LODWORD(v87) = v60;
      v81 = v58;
      v61 = v29;
      v90 = 0;
      v62 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v94 = v80;
      *v62 = 68159235;
      *(v62 + 4) = 2;
      *(v62 + 8) = 256;
      v63 = v86;
      v64 = *(v57 + *(v86 + 20));
      sub_1B03B1E20(v57, type metadata accessor for Task.Logger);
      *(v62 + 10) = v64;
      *(v62 + 11) = 2082;
      v65 = (v56 + *(v63 + 20));
      v66 = v65[1];
      v67 = v65[2];
      v68 = v65[3];
      sub_1B0A982D8(*v65, v66, v67, v68);
      sub_1B03B1E20(v56, type metadata accessor for Task.Logger);
      if (v68 < 0)
      {
      }

      v69 = sub_1B0399D64(v66, v67, &v94);

      *(v62 + 13) = v69;
      *(v62 + 21) = 2160;
      *(v62 + 23) = 0x786F626C69616DLL;
      *(v62 + 31) = 2085;
      v92 = v61;
      v93 = v84;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v70 = sub_1B0E44BA8();
      v72 = sub_1B0399D64(v70, v71, &v94);

      *(v62 + 33) = v72;
      *(v62 + 41) = 2160;
      *(v62 + 43) = 0x786F626C69616DLL;
      *(v62 + 51) = 2085;

      v92 = v81;
      v93 = v85;
      v73 = sub_1B0E44BA8();
      v75 = sub_1B0399D64(v73, v74, &v94);

      *(v62 + 53) = v75;
      _os_log_impl(&dword_1B0389000, v59, v87, "[%.*hhx-%{public}s] Did rename '%{sensitive,mask.mailbox}s' to '%{sensitive,mask.mailbox}s'.", v62, 0x3Du);
      v76 = v80;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v76, -1, -1);
      MEMORY[0x1B272C230](v62, -1, -1);

      v77 = v88;
      v78 = v89;
    }

    else
    {
      sub_1B03B1E20(v57, type metadata accessor for Task.Logger);

      sub_1B03B1E20(v56, type metadata accessor for Task.Logger);
      v77 = v88;
      v78 = v89;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B019E4(&v92, v77, v78);
  }
}

uint64_t sub_1B0B6FA2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0B70708();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1B0B6FA8C(uint64_t a1)
{
  v2 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B6E6BC(v2);

  *(a1 + 137) = 1;
  return result;
}

unint64_t sub_1B0B6FAF8()
{
  result = qword_1EB6E4B68;
  if (!qword_1EB6E4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B68);
  }

  return result;
}

unint64_t sub_1B0B6FB50(uint64_t a1)
{
  result = sub_1B0B6FB78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B6FB78()
{
  result = qword_1EB6E4B70;
  if (!qword_1EB6E4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4B70);
  }

  return result;
}

uint64_t sub_1B0B6FBCC(unint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    sub_1B0B070C8();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  sub_1B0B91420(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

uint64_t sub_1B0B6FCA4(unint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    sub_1B0B0722C();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  sub_1B0B915D8(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

BOOL sub_1B0B6FDD0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = a2[1];
  if (v3 >> 60 == 11)
  {
    return v4 >> 60 == 11;
  }

  if (v3 >> 60 == 15)
  {
    return v4 >> 60 == 15;
  }

  if (((v4 >> 60) | 4) == 0xF)
  {
    return 0;
  }

  return sub_1B0AB8858(*(a1 + 8), v3, *a2, v4);
}

uint64_t sub_1B0B6FE60(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = a2 + 24;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = result & 1;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v4 + 8 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_21;
    }

    v10 = *(v8 + 12);
    v8 += 2;
    ++v2;
    if (v10 == v6)
    {
      v11 = *v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B09D64(0, *(v7 + 16) + 1, 1);
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1B0B09D64((v12 > 1), v13 + 1, 1);
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 8 * v13;
      *(v14 + 32) = v11;
      *(v14 + 36) = v10;
      v2 = v9;
      goto LABEL_2;
    }
  }

  v15 = *(v7 + 16);
  if (v15)
  {
    sub_1B0B09D44(0, v15, 0);
    v16 = *(v5 + 16);
    v17 = 32;
    do
    {
      v18 = *(v7 + v17);
      v19 = *(v5 + 24);
      if (v16 >= v19 >> 1)
      {
        sub_1B0B09D44((v19 > 1), v16 + 1, 1);
      }

      *(v5 + 16) = v16 + 1;
      *(v5 + 4 * v16 + 32) = v18;
      v17 += 8;
      ++v16;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1B0B70024(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = a2;
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0B6FE60(a1 & 1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_1B03B1C38(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

uint64_t sub_1B0B70260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v17 = a2;
  v18 = BYTE4(a2) & 1;
  v14[2] = &v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0B14C30(sub_1B0B70860, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v6 = v4;
    sub_1B0B09D44(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = *(v15 + 16);
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1B0B09D44((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 4 * v9 + 32) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1B0B70394(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v26 = a3;
  v8 = type metadata accessor for TaskHistory.Previous(0);
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  result = sub_1B0B70260(a1, a2 | ((HIDWORD(a2) & 1) << 32), a4);
  v24 = *(result + 16);
  if (v24)
  {
    v15 = 0;
    v22 = result + 32;
    v25 = result;
    while (v15 < *(result + 16))
    {
      v16 = *(v26 + 16);
      if (v16)
      {
        v17 = *(v22 + 4 * v15);
        v18 = v26 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        v19 = *(v23 + 72);
        do
        {
          sub_1B03B1C38(v18, v13, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v13, v10, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v10, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v20 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v10, type metadata accessor for ClientCommand);
            if (v20 == v17)
            {
              v21 = 1;
              goto LABEL_13;
            }
          }

          v18 += v19;
          --v16;
        }

        while (v16);
      }

      ++v15;
      result = v25;
      if (v15 == v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v21 = 0;
LABEL_13:

    return v21;
  }

  return result;
}

uint64_t sub_1B0B705E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a1;
  v16[1] = a2;
  v14[2] = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0B14DE4(sub_1B0B707A8, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v6 = v4;
    sub_1B0B09D44(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = *(v15 + 16);
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1B0B09D44((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 4 * v9 + 32) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1B0B70708()
{
  v1 = *(v0 + 64);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1B0E460B8();
  v3 = sub_1B0B6FCA4(v2, *(v1 + 36));
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v3;
}

uint64_t sub_1B0B707A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 16) == v2[1])
  {
    return sub_1B04520BC(*(a1 + 8), *v2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0B708B0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 40;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v5 + 16 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_21;
    }

    v10 = *v8;
    v8 += 2;
    ++v3;
    if (v10 == v2)
    {
      v11 = *(v8 - 6);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B09F44(0, *(v7 + 16) + 1, 1);
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1B0B09F44((v12 > 1), v13 + 1, 1);
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v2;
      v3 = v9;
      goto LABEL_2;
    }
  }

  v15 = *(v7 + 16);
  if (v15)
  {
    sub_1B0B09D44(0, v15, 0);
    v16 = v6;
    v17 = *(v6 + 16);
    v18 = 32;
    do
    {
      v19 = *(v7 + v18);
      v20 = *(v16 + 24);
      if (v17 >= v20 >> 1)
      {
        sub_1B0B09D44((v20 > 1), v17 + 1, 1);
      }

      *(v16 + 16) = v17 + 1;
      *(v16 + 4 * v17 + 32) = v19;
      v18 += 16;
      ++v17;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

uint64_t sub_1B0B70A60(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = a2;
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0B708B0(a1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_1B03B1C38(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

uint64_t sub_1B0B70C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v19 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B1527C(sub_1B0B71F14, v18, a2);
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B0B09D44(0, v10, 0);
    v11 = v20;
    v12 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_1B0B71F70(v12, v7);
      v14 = *v7;
      sub_1B0B71FE0(v7);
      v20 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1B0B09D44((v15 > 1), v16 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v16 + 1;
      *(v11 + 4 * v16 + 32) = v14;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t sub_1B0B70E5C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = a2;
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0B70C9C(a1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_1B03B1C38(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

uint64_t sub_1B0B710C8(uint64_t a1, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t), double a4)
{
  v25 = a1;
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0B71AE0(a2, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_1B03B1C38(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

uint64_t sub_1B0B71364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a1;
  v16[1] = a2;
  v14[2] = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0B1596C(sub_1B0B72048, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v6 = v4;
    sub_1B0B09D44(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = *(v15 + 16);
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1B0B09D44((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 4 * v9 + 32) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1B0B714A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, double), double a6)
{
  v30 = a3;
  v10 = type metadata accessor for TaskHistory.Previous(0);
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  result = a5(a1, a2, a4, v14);
  v28 = *(result + 16);
  if (v28)
  {
    v18 = 0;
    v26 = result + 32;
    v29 = result;
    while (v18 < *(result + 16))
    {
      v19 = *(v30 + 16);
      if (v19)
      {
        v20 = *(v26 + 4 * v18);
        v21 = v30 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v22 = *(v27 + 72);
        do
        {
          sub_1B03B1C38(v21, v16, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v16, v12, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v12, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v23 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v12, type metadata accessor for ClientCommand);
            if (v23 == v20)
            {
              v24 = 1;
              goto LABEL_13;
            }
          }

          v21 += v22;
          --v19;
        }

        while (v19);
      }

      ++v18;
      result = v29;
      if (v18 == v28)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v24 = 0;
LABEL_13:

    return v24;
  }

  return result;
}

uint64_t sub_1B0B716F0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = result;
  v4 = *(a2 + 16);
  v5 = a2 + 24;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v5 + 8 * v2);
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_21;
    }

    v10 = *(v8 + 12);
    v8 += 2;
    ++v2;
    if (v10 == v3)
    {
      v11 = *v8;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B0A464(0, *(v7 + 16) + 1, 1);
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1B0B0A464((v12 > 1), v13 + 1, 1);
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 8 * v13;
      *(v14 + 32) = v11;
      *(v14 + 36) = v3;
      v2 = v9;
      goto LABEL_2;
    }
  }

  v15 = *(v7 + 16);
  if (v15)
  {
    sub_1B0B09D44(0, v15, 0);
    v16 = v6;
    v17 = *(v6 + 16);
    v18 = 32;
    do
    {
      v19 = *(v7 + v18);
      v20 = *(v6 + 24);
      if (v17 >= v20 >> 1)
      {
        sub_1B0B09D44((v20 > 1), v17 + 1, 1);
      }

      *(v6 + 16) = v17 + 1;
      *(v6 + 4 * v17 + 32) = v19;
      v18 += 8;
      ++v17;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v16;
}

uint64_t sub_1B0B718A4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = a2;
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  result = sub_1B0B716F0(a1, a3);
  v23 = *(result + 16);
  if (v23)
  {
    v13 = 0;
    v21 = result + 32;
    v24 = result;
    while (v13 < *(result + 16))
    {
      v14 = *(v25 + 16);
      if (v14)
      {
        v15 = *(v21 + 4 * v13);
        v16 = v25 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v17 = *(v22 + 72);
        do
        {
          sub_1B03B1C38(v16, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0423BB0(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B03B1E20(v8, type metadata accessor for TaskHistory.Previous);
          }

          else
          {
            v18 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
            sub_1B03B1E20(v8, type metadata accessor for ClientCommand);
            if (v18 == v15)
            {
              v19 = 1;
              goto LABEL_13;
            }
          }

          v16 += v17;
          --v14;
        }

        while (v14);
      }

      ++v13;
      result = v24;
      if (v13 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v19 = 0;
LABEL_13:

    return v19;
  }

  return result;
}

uint64_t sub_1B0B71AE0(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = (a1 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *v5++;
      v7 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2(0, *(v6 + 16) + 1, 1);
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        a2(v9 > 1, v10 + 1, 1);
      }

      *(v6 + 16) = v11;
      *(v6 + 4 * v10 + 32) = v7;
      --v2;
    }

    while (v2);
  }

  else
  {
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v11)
    {
      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_15;
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1B0B09D44(0, v11, 0);
  v12 = v3;
  v13 = *(v3 + 16);
  v14 = 32;
  do
  {
    v15 = *(v6 + v14);
    v16 = *(v12 + 24);
    if (v13 >= v16 >> 1)
    {
      sub_1B0B09D44((v16 > 1), v13 + 1, 1);
    }

    *(v12 + 16) = v13 + 1;
    *(v12 + 4 * v13 + 32) = v15;
    v14 += 4;
    ++v13;
    --v11;
  }

  while (v11);
LABEL_15:

  return v12;
}

uint64_t sub_1B0B71C80(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v8 = result;
  v9 = 0;
  v10 = a4 + 56;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = (v10 + 32 * v9);
    v13 = v9;
    while (1)
    {
      if (v13 >= v4)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_31;
      }

      v15 = *(v12 - 2);
      v14 = *(v12 - 1);
      v16 = *v12;
      if ((*v12 & 1) == 0)
      {
        break;
      }

      if ((a3 & 1) != 0 && v15 == v8 && v14 == a2)
      {
        v28 = v10;
        v15 = v8;
        v14 = a2;
        goto LABEL_15;
      }

LABEL_4:
      ++v13;
      v12 += 32;
      if (v9 == v4)
      {
        goto LABEL_22;
      }
    }

    if (a3 & 1) != 0 || ((v15 ^ v8))
    {
      goto LABEL_4;
    }

    v28 = v10;
LABEL_15:
    v26 = *(v12 - 6);
    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = a2;
    if ((result & 1) == 0)
    {
      result = sub_1B0B09FA4(0, *(v11 + 16) + 1, 1);
    }

    v10 = v28;
    v18 = *(v11 + 16);
    v17 = *(v11 + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      result = sub_1B0B09FA4((v17 > 1), v18 + 1, 1);
      v19 = v18 + 1;
      v10 = v28;
      v5 = MEMORY[0x1E69E7CC0];
    }

    *(v11 + 16) = v19;
    v20 = v11 + 32 * v18;
    *(v20 + 32) = v26;
    *(v20 + 40) = v15;
    *(v20 + 48) = v14;
    *(v20 + 56) = v16;
    a2 = v27;
  }

  while (v9 != v4);
LABEL_22:
  v21 = *(v11 + 16);
  if (v21)
  {
    sub_1B0B09D44(0, v21, 0);
    v22 = *(v5 + 16);
    v23 = 32;
    do
    {
      v24 = *(v11 + v23);
      v25 = *(v5 + 24);
      if (v22 >= v25 >> 1)
      {
        sub_1B0B09D44((v25 > 1), v22 + 1, 1);
      }

      *(v5 + 16) = v22 + 1;
      *(v5 + 4 * v22 + 32) = v24;
      v23 += 32;
      ++v22;
      --v21;
    }

    while (v21);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

BOOL sub_1B0B71EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else if ((a4 & 0x100000000) != 0)
  {
    return 0;
  }

  return a2 == a4 && (sub_1B04520BC(a1, a3) & 1) != 0;
}

uint64_t sub_1B0B71F14(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  return sub_1B0ABBF54(a1 + *(v4 + 52), v3) & 1;
}

uint64_t sub_1B0B71F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B71FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B0B7208C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  sub_1B0A92638(a1, &v25 - v8);
  sub_1B0A92638(a1, v6);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B72D5C(v2, v29);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B72D5C(v2, v28);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 68159747;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v14 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v14;
    *(v12 + 11) = 2082;
    v15 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_1B0399D64(*(v15 + 1), *(v15 + 2), &v27);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    LOWORD(v14) = *(v14 + 12);
    sub_1B0A9269C(v6);
    *(v12 + 29) = v14;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v16 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v9);
    v25 = v16;
    v26 = v15;
    v17 = sub_1B0E44BA8();
    v19 = sub_1B0399D64(v17, v18, &v27);

    *(v12 + 43) = v19;
    *(v12 + 51) = 1024;
    if (v30)
    {
      v20 = 0;
    }

    else
    {
      v20 = v29[26];
    }

    sub_1B0B72D94(v29);
    *(v12 + 53) = v20;
    *(v12 + 57) = 2082;
    v21 = sub_1B0425504(*&v28[109]);
    v23 = v22;
    sub_1B0B72D94(v28);
    v24 = sub_1B0399D64(v21, v23, &v27);

    *(v12 + 59) = v24;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Local UID validity: 0x%x, reason: %{public}s", v12, 0x43u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {
    sub_1B0B72D94(v29);
    sub_1B0A9269C(v6);

    sub_1B0B72D94(v28);
    sub_1B0A9269C(v9);
  }
}

void sub_1B0B723A8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  if ((*(v2 + 145) & 1) == 0)
  {
    v11 = *(v2 + 144);
    v12 = *(v2 + 136);
    v13 = *(v2 + 128);
    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v38 = v15;
    v39 = BYTE4(v15) & 1;
    v40 = v14;
    v41 = v13 & 1;
    v42 = v12;
    v43 = v11 & 1;
    v16 = sub_1B0B260E0(*(v2 + 24), *(v2 + 32), (a1 + 168), &v38);
    if (v16)
    {
      v18 = sub_1B0B72AE8((a1 + 216), v16, v17);
      v19 = *(*(a1 + 216) + 16);
      if (v19 < v18)
      {
        __break(1u);
        return;
      }

      sub_1B0BAD05C(v18, v19);
    }

    if ((*(v2 + 108) & 1) == 0)
    {
      v20 = *(v2 + 104);
      sub_1B0A92638(a2, v10);
      sub_1B0A92638(a2, v7);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v21 = sub_1B0E43988();
      v22 = sub_1B0E458E8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v34 = v20;
        v24 = v23;
        v25 = swift_slowAlloc();
        v37 = v25;
        *v24 = 68159747;
        *(v24 + 4) = 2;
        *(v24 + 8) = 256;
        v26 = &v7[*(v5 + 20)];
        *(v24 + 10) = *v26;
        *(v24 + 11) = 2082;
        v27 = &v10[*(v5 + 20)];
        *(v24 + 13) = sub_1B0399D64(*(v27 + 1), *(v27 + 2), &v37);
        *(v24 + 21) = 1040;
        *(v24 + 23) = 2;
        *(v24 + 27) = 512;
        LOWORD(v26) = *(v26 + 12);
        sub_1B0A9269C(v7);
        *(v24 + 29) = v26;
        *(v24 + 31) = 2160;
        *(v24 + 33) = 0x786F626C69616DLL;
        *(v24 + 41) = 2085;
        v28 = *(v27 + 4);
        LODWORD(v27) = *(v27 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v10);
        v35 = v28;
        v36 = v27;
        v29 = sub_1B0E44BA8();
        v31 = sub_1B0399D64(v29, v30, &v37);

        *(v24 + 43) = v31;
        *(v24 + 51) = 1024;
        *(v24 + 53) = v34;
        *(v24 + 57) = 1024;
        if ((v15 & 0x100000000) != 0)
        {
          v32 = 0;
        }

        else
        {
          v32 = v15;
        }

        *(v24 + 59) = v32;
        _os_log_impl(&dword_1B0389000, v21, v22, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did delete all existing local messages due to validity change: 0x%x → 0x%x", v24, 0x3Fu);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v25, -1, -1);
        MEMORY[0x1B272C230](v24, -1, -1);
      }

      else
      {
        sub_1B0A9269C(v7);

        sub_1B0A9269C(v10);
      }
    }
  }
}