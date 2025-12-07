void sub_1579C(uint64_t a1, uint64_t a2)
{
  sub_21E14();
  sub_7E80(&qword_31870, &unk_23020);
  sub_1772C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22EA0;
  sub_8AF4(0, &qword_31878, TTSAssetType_ptr);
  *(v4 + 32) = sub_22074();
  sub_7E80(&qword_31880, &unk_22F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EB0;
  *(inited + 64) = &type metadata for String;
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  type metadata accessor for TTSAssetProperty();
  sub_175D0();
  sub_173B4(v6, v7, &unk_22D98);

  sub_1779C();
  sub_17684();
  v8 = sub_21DD4();

  v37 = &_swiftEmptyArrayStorage;
  v36 = &_swiftEmptySetSingleton;
  v9 = sub_1EBC4(v8);
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = v8 & 0xC000000000000001;
    v33 = v8 + 32;
    v34 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12)
      {
        v13 = sub_221D4();
      }

      else
      {
        if (v11 >= *(v34 + 16))
        {
          goto LABEL_28;
        }

        v13 = *(v33 + 8 * v11);
      }

      v14 = v13;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v16 = v36;
      v17 = sub_21DC4();
      v19 = v18;
      if (*(v16 + 2))
      {
        v20 = v17;
        sub_22314();
        sub_21F34();
        v21 = sub_22334();
        v22 = ~(-1 << v16[32]);
        while (1)
        {
          v23 = v21 & v22;
          if (((*&v16[(((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v21 & v22)) & 1) == 0)
          {
            break;
          }

          v24 = (*(v16 + 6) + 16 * v23);
          if (*v24 != v20 || v24[1] != v19)
          {
            v26 = sub_222C4();
            v21 = v23 + 1;
            if ((v26 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_21;
        }
      }

      v27 = sub_21DF4();
      v29 = sub_15B28(v27, v28);

      if (v29)
      {
        v30 = v29;
        sub_21F64();
        if (*(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v37 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_21FA4();
        }

        sub_21FD4();
        sub_21DC4();
        sub_93C8();
        sub_1BBF8(&v35, v31, v32);

LABEL_21:
      }

      else
      {
      }

      if (v11 == v10)
      {

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
  }
}

uint64_t sub_15B28(uint64_t a1, uint64_t a2)
{
  sub_21E14();
  sub_7E80(&qword_31870, &unk_23020);
  sub_1772C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22EA0;
  sub_8AF4(0, &qword_31878, TTSAssetType_ptr);
  *(v4 + 32) = sub_22074();
  sub_7E80(&qword_31880, &unk_22F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EB0;
  *(inited + 64) = &type metadata for String;
  *(inited + 32) = 0;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  type metadata accessor for TTSAssetProperty();
  sub_175D0();
  sub_173B4(v6, v7, &unk_22D98);

  sub_1779C();
  sub_17684();
  v8 = sub_21E04();

  return v8;
}

id sub_15C70(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeVarietiesWithinLanguage] = &_swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap;
  sub_7E80(&qword_31928, &qword_23030);
  sub_17770();
  *&v3[v6] = sub_21ED4();
  v7 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyNameToLocale;
  sub_17770();
  *&v3[v7] = sub_21ED4();
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription] = 0;
  v8 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceDisplayStringToVoice;
  sub_21E14();
  sub_17770();
  *&v3[v8] = sub_21ED4();
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietySpecifiers] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers] = &_swiftEmptyArrayStorage;
  if (a2)
  {
    sub_17684();
    v9 = sub_21EE4();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for ReadingVoiceListController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_15E44(void *a1)
{
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeVarietiesWithinLanguage] = &_swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap;
  sub_7E80(&qword_31928, &qword_23030);
  sub_17758();
  *&v1[v3] = sub_21ED4();
  v4 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyNameToLocale;
  sub_17758();
  *&v1[v4] = sub_21ED4();
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription] = 0;
  v5 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceDisplayStringToVoice;
  sub_21E14();
  sub_17758();
  *&v1[v5] = sub_21ED4();
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietySpecifiers] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers] = &_swiftEmptyArrayStorage;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ReadingVoiceListController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_15FB8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ReadingVoiceListController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_160DC()
{
  sub_176A0();
  sub_8AF4(0, &qword_31600, PSSpecifier_ptr);
  sub_17610();
  return sub_220F4() & 1;
}

uint64_t sub_1612C()
{
  sub_176A0();
  sub_21D94();
  sub_17610();
  return sub_220F4() & 1;
}

uint64_t sub_161D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_222C4() & 1;
  }
}

uint64_t sub_16214(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B3A0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_16290(v6);
  return sub_22214();
}

Swift::Int sub_16290(uint64_t *a1)
{
  v3 = a1[1];
  result = sub_22294(v3);
  if (result < v3)
  {
    v5 = result;
    v6 = sub_1E4B8(v3 / 2);
    v8[0] = v7;
    v8[1] = v3 / 2;
    result = sub_164B8(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = 0;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_16370(0, v3, 1, a1);
  }

  return result;
}

uint64_t sub_16370(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v21 = v7;
      v22 = v6;
      while (1)
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        result = sub_1AE44(v10);
        if (!v12)
        {
          goto LABEL_19;
        }

        v13 = result;
        v14 = v12;
        result = sub_1AE44(v11);
        if (!v15)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        if (v13 == result && v14 == v15)
        {
          break;
        }

        v17 = sub_222C4();

        if ((v17 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (!v5)
        {
          goto LABEL_20;
        }

        v18 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v18;
        v6 -= 8;
        if (__CFADD__(v7++, 1))
        {
          goto LABEL_16;
        }
      }

LABEL_16:
      ++v4;
      v6 = v22 + 8;
      v7 = v21 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_164B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v109 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v112 = v5;
        v105 = v7;
        v10 = *a3;
        v11 = v6 + 1;
        v12 = *(*a3 + 8 * v9);
        v13 = *(*a3 + 8 * v8);
        v14 = v12;
        v15 = v13;
        result = sub_1AE44(v14);
        if (!v16)
        {
          goto LABEL_157;
        }

        v17 = result;
        v18 = v16;
        result = sub_1AE44(v15);
        if (!v19)
        {
          goto LABEL_158;
        }

        v7 = v19;
        if (v17 == result && v18 == v19)
        {
          v110 = 0;
        }

        else
        {
          v110 = sub_222C4();
        }

        v9 = v11;
        v4 = v112;

        v107 = v8;
        v21 = (v10 + 8 * v8 + 16);
        v103 = 8 * v8;
        for (i = 8 * v8 + 8; ; i += 8)
        {
          v115 = v9++;
          if (v9 >= v4)
          {
            break;
          }

          v23 = *(v21 - 1);
          v7 = *v21;
          v24 = v23;
          result = sub_1AE44(v7);
          if (!v25)
          {
            goto LABEL_152;
          }

          v26 = result;
          v27 = v25;
          result = sub_1AE44(v24);
          if (!v28)
          {
            goto LABEL_151;
          }

          if (v26 == result && v27 == v28)
          {

            v4 = v112;
            if (v110)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v30 = sub_222C4();

            v31 = v110 ^ v30;
            v4 = v112;
            if (v31)
            {
              break;
            }
          }

          ++v21;
        }

        if (v110)
        {
LABEL_25:
          v32 = v115;
          v9 = v115 + 1;
          v33 = v107;
          if (v115 + 1 < v107)
          {
            goto LABEL_144;
          }

          if (v107 >= v9)
          {
            v7 = v105;
            v8 = v107;
            goto LABEL_36;
          }

          v7 = v105;
          v34 = v103;
          do
          {
            if (v33 != v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_155;
              }

              v36 = *(v35 + v34);
              *(v35 + v34) = *(v35 + i);
              *(v35 + i) = v36;
            }

            ++v33;
            i -= 8;
            v34 += 8;
          }

          while (v33 < v32--);
        }

        else
        {
          v7 = v105;
        }

        v8 = v107;
      }

LABEL_36:
      v38 = a3[1];
      if (v9 < v38)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_143;
        }

        if (v9 - v8 < a4)
        {
          v39 = v8 + a4;
          if (__OFADD__(v8, a4))
          {
            goto LABEL_145;
          }

          if (v39 >= v38)
          {
            v39 = a3[1];
          }

          if (v39 >= v8)
          {
            if (v9 == v39)
            {
              goto LABEL_60;
            }

            v106 = v7;
            v108 = v8;
            v40 = *a3;
            v41 = *a3 + 8 * v9 - 8;
            v42 = v8 - v9;
            v111 = v39;
LABEL_45:
            v116 = v9;
            v43 = *(v40 + 8 * v9);
            v44 = v42;
            v113 = v41;
            while (1)
            {
              v45 = *v41;
              v46 = v43;
              v47 = v45;
              result = sub_1AE44(v46);
              if (!v48)
              {
                goto LABEL_149;
              }

              v4 = result;
              v49 = v48;
              result = sub_1AE44(v47);
              if (!v50)
              {
                break;
              }

              if (v4 == result && v49 == v50)
              {

LABEL_58:
                v9 = v116 + 1;
                v41 = v113 + 8;
                --v42;
                if (v116 + 1 == v111)
                {
                  v9 = v111;
                  v7 = v106;
                  v8 = v108;
                  goto LABEL_60;
                }

                goto LABEL_45;
              }

              v4 = sub_222C4();

              if ((v4 & 1) == 0)
              {
                goto LABEL_58;
              }

              if (!v40)
              {
                goto LABEL_150;
              }

              v52 = *v41;
              v43 = *(v41 + 8);
              *v41 = v43;
              *(v41 + 8) = v52;
              v41 -= 8;
              if (__CFADD__(v44++, 1))
              {
                goto LABEL_58;
              }
            }

            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

LABEL_146:
          __break(1u);
LABEL_147:
          result = sub_1AD04(v7);
          v7 = result;
          goto LABEL_114;
        }
      }

LABEL_60:
      if (v9 < v8)
      {
        goto LABEL_142;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AD44(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v55 = *(v7 + 2);
      v54 = *(v7 + 3);
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        result = sub_1AD44((v54 > 1), v55 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v56;
      v57 = v7 + 32;
      v58 = &v7[16 * v55 + 32];
      *v58 = v8;
      v58[1] = v9;
      v59 = *v109;
      if (!*v109)
      {
        goto LABEL_156;
      }

      v117 = v9;
      if (v55)
      {
        while (1)
        {
          v4 = v56 - 1;
          v60 = &v57[2 * v56 - 2];
          v61 = &v7[16 * v56];
          if (v56 >= 4)
          {
            break;
          }

          if (v56 == 3)
          {
            v62 = *(v7 + 4);
            v63 = *(v7 + 5);
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
LABEL_80:
            if (v65)
            {
              goto LABEL_129;
            }

            v77 = *v61;
            v76 = *(v61 + 1);
            v78 = __OFSUB__(v76, v77);
            v79 = v76 - v77;
            v80 = v78;
            if (v78)
            {
              goto LABEL_132;
            }

            v81 = v60[1];
            v82 = v81 - *v60;
            if (__OFSUB__(v81, *v60))
            {
              goto LABEL_135;
            }

            if (__OFADD__(v79, v82))
            {
              goto LABEL_137;
            }

            if (v79 + v82 >= v64)
            {
              if (v64 < v82)
              {
                v4 = v56 - 2;
              }

              goto LABEL_102;
            }

            goto LABEL_95;
          }

          if (v56 < 2)
          {
            goto LABEL_131;
          }

          v84 = *v61;
          v83 = *(v61 + 1);
          v72 = __OFSUB__(v83, v84);
          v79 = v83 - v84;
          v80 = v72;
LABEL_95:
          if (v80)
          {
            goto LABEL_134;
          }

          v86 = *v60;
          v85 = v60[1];
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_136;
          }

          if (v87 < v79)
          {
            goto LABEL_109;
          }

LABEL_102:
          if (v4 - 1 >= v56)
          {
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

          if (!*a3)
          {
            goto LABEL_153;
          }

          v91 = v7;
          v92 = &v57[2 * v4 - 2];
          v93 = *v92;
          v7 = &v57[2 * v4];
          v94 = *(v7 + 1);
          sub_16C04((*a3 + 8 * *v92), (*a3 + 8 * *v7), (*a3 + 8 * v94), v59);
          if (v118)
          {
          }

          if (v94 < v93)
          {
            goto LABEL_124;
          }

          v95 = *(v91 + 2);
          if (v4 > v95)
          {
            goto LABEL_125;
          }

          *v92 = v93;
          v92[1] = v94;
          if (v4 >= v95)
          {
            goto LABEL_126;
          }

          v56 = v95 - 1;
          result = sub_1AD18(v7 + 16, v95 - 1 - v4, &v57[2 * v4]);
          v7 = v91;
          *(v91 + 2) = v95 - 1;
          if (v95 <= 2)
          {
            goto LABEL_109;
          }
        }

        v66 = &v57[2 * v56];
        v67 = *(v66 - 8);
        v68 = *(v66 - 7);
        v72 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (v72)
        {
          goto LABEL_127;
        }

        v71 = *(v66 - 6);
        v70 = *(v66 - 5);
        v72 = __OFSUB__(v70, v71);
        v64 = v70 - v71;
        v65 = v72;
        if (v72)
        {
          goto LABEL_128;
        }

        v73 = *(v61 + 1);
        v74 = v73 - *v61;
        if (__OFSUB__(v73, *v61))
        {
          goto LABEL_130;
        }

        v72 = __OFADD__(v64, v74);
        v75 = v64 + v74;
        if (v72)
        {
          goto LABEL_133;
        }

        if (v75 >= v69)
        {
          v89 = *v60;
          v88 = v60[1];
          v72 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v72)
          {
            goto LABEL_141;
          }

          if (v64 < v90)
          {
            v4 = v56 - 2;
          }

          goto LABEL_102;
        }

        goto LABEL_80;
      }

LABEL_109:
      v6 = v117;
      v5 = a3[1];
      if (v117 >= v5)
      {
        goto LABEL_112;
      }
    }
  }

  v7 = &_swiftEmptyArrayStorage;
LABEL_112:
  v4 = *v109;
  if (!*v109)
  {
LABEL_159:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_147;
  }

LABEL_114:
  v96 = v7 + 16;
  v97 = *(v7 + 2);
  while (v97 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_154;
    }

    v98 = v7;
    v99 = &v7[16 * v97];
    v100 = *v99;
    v7 = &v96[2 * v97];
    v101 = *(v7 + 1);
    sub_16C04((*a3 + 8 * *v99), (*a3 + 8 * *v7), (*a3 + 8 * v101), v4);
    if (v118)
    {
      break;
    }

    if (v101 < v100)
    {
      goto LABEL_138;
    }

    if (v97 - 2 >= *v96)
    {
      goto LABEL_139;
    }

    *v99 = v100;
    *(v99 + 1) = v101;
    v102 = *v96 - v97;
    if (*v96 < v97)
    {
      goto LABEL_140;
    }

    v97 = *v96 - 1;
    result = sub_1AD18(v7 + 16, v102, v7);
    *v96 = v97;
    v7 = v98;
  }
}

uint64_t sub_16C04(id *a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_21448(a1, a2 - a1, a4);
    v10 = &v4[v8];
    for (i = v10; ; v10 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = v7;
      v13 = v5;
      v14 = v6;
      v15 = *v4;
      v16 = *v6;
      v17 = v15;
      result = sub_1AE44(v16);
      if (!v19)
      {
        __break(1u);
        goto LABEL_50;
      }

      v20 = result;
      v21 = v19;
      result = sub_1AE44(v17);
      if (!v22)
      {
        goto LABEL_51;
      }

      v23 = v20 == result && v21 == v22;
      if (v23)
      {
        break;
      }

      v24 = sub_222C4();

      if ((v24 & 1) == 0)
      {
        goto LABEL_17;
      }

      v25 = v6++;
      v26 = v12;
      v5 = v13;
      if (v12 != v14)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 = v26 + 1;
    }

LABEL_17:
    v25 = v4;
    v26 = v12;
    v23 = v12 == v4++;
    v5 = v13;
    if (v23)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v26 = *v25;
    goto LABEL_19;
  }

  sub_21448(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v45 = v7;
  v46 = v4;
LABEL_21:
  v27 = v6 - 1;
  v28 = v5 - 1;
  v48 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v30 = v28;
    v31 = v10;
    v32 = *--v10;
    v33 = v27;
    v34 = *v27;
    v35 = v32;
    v36 = v34;
    result = sub_1AE44(v35);
    if (!v37)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

    v38 = result;
    v39 = v37;
    result = sub_1AE44(v36);
    if (!v40)
    {
      goto LABEL_52;
    }

    if (v38 == result && v39 == v40)
    {
    }

    else
    {
      v42 = sub_222C4();

      if (v42)
      {
        v5 = v30;
        v23 = v30 + 1 == v48;
        v6 = v33;
        v7 = v45;
        v4 = v46;
        v10 = v31;
        if (!v23)
        {
          *v5 = *v33;
          v6 = v33;
        }

        goto LABEL_21;
      }
    }

    v27 = v33;
    if (v31 != v30 + 1)
    {
      *v30 = *v10;
    }

    v28 = v30 - 1;
    v6 = v48;
    v7 = v45;
    v4 = v46;
  }

LABEL_42:
  v43 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v43])
  {
    memmove(v6, v4, 8 * v43);
  }

  return 1;
}

id sub_16F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v15 = sub_21EE4();
  v16 = [a9 preferenceSpecifierNamed:v15 target:a3 set:a4 get:a5 detail:a6 cell:a7 edit:a8];

  return v16;
}

id sub_16FAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21EE4();

  v5 = [a3 propertyForKey:v4];

  return v5;
}

uint64_t sub_17010(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21EE4();

  v5 = [a3 baseLocaleToDialectMapForLanguage:v4];

  if (!v5)
  {
    return 0;
  }

  sub_7E80(&qword_31948, &unk_23040);
  v6 = sub_21EB4();

  return v6;
}

uint64_t sub_170B8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_21EE4();

  v7 = [a3 *a4];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_21EF4();

  return v8;
}

uint64_t sub_17144(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_21EF4();
    sub_17644();
  }

  return sub_1765C();
}

uint64_t sub_1719C(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21EF4();

  return v3;
}

id sub_1720C(uint64_t a1, void *a2)
{
  isa = sub_21F74().super.isa;

  v4 = [a2 removeSpecifiers:isa];

  return v4;
}

id sub_17274(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_21F74().super.isa;

  v6 = [a3 insertContiguousSpecifiers:isa afterSpecifier:a2];

  return v6;
}

uint64_t sub_17354()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1739C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_173B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_173FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_8AAC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_17444()
{
  result = qword_31958;
  if (!qword_31958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31958);
  }

  return result;
}

unint64_t sub_17498()
{
  result = qword_31960;
  if (!qword_31960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31960);
  }

  return result;
}

uint64_t sub_1750C()
{

  sub_1772C();

  return _swift_deallocObject(v1);
}

uint64_t sub_17558()
{
  sub_91DC(v0);
}

uint64_t sub_1758C()
{
}

void sub_175A8(uint64_t a1, uint64_t a2)
{

  sub_1E79C(v3, a1, a2, v2);
}

BOOL sub_17668(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_176BC()
{
}

id sub_176D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{

  return sub_16F0C(a1, a2, a3, 0, 0, 0, 3, 0, a9);
}

BOOL sub_176F8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_17714(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

__n128 sub_17744(uint64_t a1)
{
  *(v2 - 120) = a1;
  result = *(v2 - 160);
  *v1 = result.n128_u32[0];
  return result;
}

void sub_1777C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1779C()
{

  return sub_21ED4();
}

BOOL sub_177BC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_177D4(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_177EC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

id sub_17804(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_21EE4();

  v4 = [v2 initWithLocaleIdentifier:v3];

  return v4;
}

BOOL sub_17878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B4B4();
  sub_22314();
  sub_21F34();
  v6 = sub_22334();
  v7 = ~(-1 << *(v3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(v3 + 48) + 16 * v8);
    if (*v11 == v5 && v11[1] == v4)
    {
      break;
    }

    v13 = sub_222C4();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

char *sub_1795C()
{
  v1 = v0;
  v2 = static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000013, 0x8000000000023AB0);
  sub_1AF18(v2, v3, v0);
  sub_1835C();
  v16 = sub_1AF7C(&_swiftEmptyArrayStorage);
  sub_1A170(&v16);
  v4 = v16;
  v5 = objc_opt_self();
  v6 = sub_1EA98(0xD000000000000018, 0x8000000000023AD0, v5);
  v7 = *&v1[OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_addTTSLanguagesGroup];
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_addTTSLanguagesGroup] = v6;
  v8 = v6;

  if (v6)
  {
    sub_19CD8(0, v4);
    if (sub_19DD8(v4) < 0)
    {
      __break(1u);
    }

    else
    {
      v9 = sub_1EBC4(v4);
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (!v10)
      {
        sub_1975C(v11, 1);
        sub_19DFC(0, 0, 1, v8);
        v12 = v16;
        v13 = sub_1CAA8(v16);
        sub_1E9CC(v13, v1);
        v14 = sub_1CAA8(v12);

        return v14;
      }
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

_BYTE *sub_17B40(uint64_t a1)
{
  v2 = v1;
  v63 = &_swiftEmptyArrayStorage;
  v78 = &_swiftEmptyArrayStorage;
  sub_21E44();
  result = sub_21E24();
  v5 = 0;
  v66 = result + 56;
  v70 = result;
  v6 = 1 << result[32];
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 7);
  v69 = OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_preferences;
  v64 = OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_readableLanguageNameToLocaleCode;
  v65 = (v6 + 63) >> 6;
  v67 = a1;
  v68 = v1;
  while (v8)
  {
LABEL_9:
    v10 = (*(v70 + 6) + ((v5 << 10) | (16 * __clz(__rbit64(v8)))));
    v12 = *v10;
    v11 = v10[1];
    v13 = qword_31548;

    if (v13 != -1)
    {
      sub_A42C();
      swift_once();
    }

    v14 = sub_21E64();
    sub_87F8(v14, qword_31EE0);

    v15 = sub_21E54();
    v16 = sub_220B4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_94C8();
      v18 = sub_94F8();
      v77[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_E6C0(v12, v11, v77);
      _os_log_impl(&dword_0, v15, v16, "#MessagingWithSiriController trying to add  %s", v17, 0xCu);
      sub_91DC(v18);
      sub_9474(v18);
      sub_9474(v17);
    }

    sub_8AF4(0, &qword_315E8, NSLocale_ptr);

    v71 = v12;
    v19 = sub_17804(v12, v11);
    v20 = [v19 languageCode];

    v74 = sub_21EF4();
    v22 = v21;

    v23 = [*(v2 + v69) languageCode];
    if (!v23)
    {

      v60 = sub_21E54();
      v61 = sub_220A4();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_0, v60, v61, "#MessagingWithSiriController currentLanguage is nil", v62, 2u);
        sub_9474(v62);
      }

      return &_swiftEmptyArrayStorage;
    }

    v24 = v23;
    v73 = v11;
    v72 = sub_21EF4();
    v26 = v25;

    v27 = sub_21E54();
    v28 = sub_220B4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = sub_94C8();
      v30 = sub_94F8();
      v77[0] = v30;
      *v29 = 136315138;
      v31 = v74;
      *(v29 + 4) = sub_E6C0(v74, v22, v77);
      _os_log_impl(&dword_0, v27, v28, "#MessagingWithSiriController primary language %s", v29, 0xCu);
      sub_91DC(v30);
      v32 = v30;
      a1 = v67;
      sub_9474(v32);
      v33 = v29;
      v2 = v68;
      sub_9474(v33);
    }

    else
    {

      v31 = v74;
    }

    v8 &= v8 - 1;
    v34 = sub_17804(v72, v26);
    v35 = [v34 languageCode];

    v36 = sub_21EF4();
    v38 = v37;

    v39 = sub_17804(v31, v22);
    LOBYTE(v36) = sub_C700(v36, v38);

    if ((v36 & 1) != 0 || (sub_8AF4(0, &qword_315F0, SUICAssistantVoiceSettingsConnection_ptr), v40 = sub_C57C(v71, v73), !v41))
    {
    }

    else
    {
      v42 = v40;
      v43 = v41;

      v44 = sub_21E54();
      v45 = sub_220B4();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = sub_94C8();
        v47 = sub_94F8();
        v77[0] = v47;
        *v46 = 136315138;

        v48 = sub_E6C0(v42, v43, v77);

        *(v46 + 4) = v48;
        a1 = v67;
        _os_log_impl(&dword_0, v44, v45, "#MessagingWithSiriController localizedName %s", v46, 0xCu);
        sub_91DC(v47);
        v49 = v47;
        v2 = v68;
        sub_9474(v49);
        sub_9474(v46);
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = *(v2 + v64);
      sub_19898(v71, v73, v42, v43, isUniquelyReferenced_nonNull_native);
      *(v2 + v64) = v76;
      swift_endAccess();

      v51 = sub_21E54();
      v52 = sub_220B4();

      if (os_log_type_enabled(v51, v52))
      {
        v75 = v42;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v77[0] = v54;
        *v53 = 136315394;
        *(v53 + 4) = sub_E6C0(v74, v22, v77);
        *(v53 + 12) = 2080;
        if (a1)
        {
          sub_17878(v74, v22, a1);
        }

        sub_7E80(&qword_31890, &qword_23090);
        v56 = sub_21F14();
        v58 = sub_E6C0(v56, v57, v77);

        *(v53 + 14) = v58;
        _os_log_impl(&dword_0, v51, v52, "#MessagingWithSiriController subscribedLanguagesSet contains %s :  %s", v53, 0x16u);
        swift_arrayDestroy();
        sub_9474(v54);
        sub_9474(v53);

        a1 = v67;
        v2 = v68;
        v42 = v75;
        if (!v67)
        {
LABEL_30:

          goto LABEL_31;
        }
      }

      else
      {

        if (!a1)
        {
          goto LABEL_30;
        }
      }

      v55 = sub_17878(v74, v22, a1);

      if (v55)
      {
      }

      else
      {
LABEL_31:
        v59 = objc_opt_self();
        result = sub_1E8A8(v42, v43, v2, 0, 0, 0, 3, 0, v59);
        if (result)
        {
          sub_21F64();
          if (*(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v78 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_21FA4();
          }

          result = sub_21FD4();
          v63 = v78;
        }
      }
    }
  }

  while (1)
  {
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v9 >= v65)
    {

      return v63;
    }

    v8 = *&v66[8 * v9];
    ++v5;
    if (v8)
    {
      v5 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1835C()
{
  if (qword_31520 != -1)
  {
    swift_once();
  }

  sub_9598();
  swift_beginAccess();
  v1 = static MessagesSettingsUtils.daemonSession;
  sub_9688();
  *(swift_allocObject() + 16) = v0;
  v2 = v1;
  v3 = v0;
  sub_21CE4();
}

uint64_t sub_1843C(uint64_t a1)
{
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v2 = sub_21E64();
  v3 = sub_87F8(v2, qword_31EE0);
  v4 = sub_21E54();
  v5 = sub_220B4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "#MessagingWithSiriController removeAlreadySubscribedLanguages analyzing voiceSubscriptions", v6, 2u);
  }

  v7 = &_swiftEmptySetSingleton;
  v33 = &_swiftEmptySetSingleton;
  v8 = sub_1EBC4(a1);
  if (v8)
  {
    v9 = v8;
    result = sub_8AF4(0, &qword_315E8, NSLocale_ptr);
    if (v9 < 1)
    {
      __break(1u);
      return result;
    }

    v11 = 0;
    v12 = a1 & 0xC000000000000001;
    v30 = a1 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        v13 = sub_221D4();
      }

      else
      {
        v13 = *(a1 + 8 * v11 + 32);
      }

      v31 = v13;
      v14 = sub_21DA4();
      v15 = sub_21D84();
      v17 = v16;

      v18 = sub_17804(v15, v17);
      v19 = [v18 languageCode];

      v20 = sub_21EF4();
      v22 = v21;

      v23 = sub_21E54();
      v24 = sub_220B4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = v9;
        v27 = v3;
        v28 = a1;
        v29 = swift_slowAlloc();
        v32 = v29;
        *v25 = 136315138;
        *(v25 + 4) = sub_E6C0(v20, v22, &v32);
        _os_log_impl(&dword_0, v23, v24, "#MessagingWithSiriController Locale.LanguageCode(asset.primaryLanguage) %s", v25, 0xCu);
        sub_91DC(v29);
        a1 = v28;
        v3 = v27;
        v9 = v26;

        v12 = v30;
      }

      ++v11;
      sub_1BBF8(&v32, v20, v22);
    }

    while (v9 != v11);
    v7 = v33;
  }

  sub_18760(v7);
}

void sub_18760(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E84();
  sub_964C();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21EA4();
  sub_964C();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21EE4();
  v17 = [v1 valueForKey:v16];

  if (v17)
  {
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  sub_9688();
  v18 = swift_allocObject();
  aBlock = v40;
  v36 = v41;
  if (!*(&v41 + 1))
  {
    sub_8F6C(&aBlock, &qword_31610, &qword_23080);
    goto LABEL_11;
  }

  sub_7E80(&qword_31618, &unk_22C50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_9688();
    swift_deallocUninitializedObject();
LABEL_12:
    sub_1B53C();
    return;
  }

  v32 = a1;
  v33 = v12;
  v34 = v6;
  v19 = v39;
  *(v18 + 16) = v39;
  v20 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_addTTSLanguagesGroup];
  if (v20)
  {

    v21 = v20;
    sub_1CC14(v21, v19);
    v23 = v22;
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      sub_8AF4(0, &qword_31620, OS_dispatch_queue_ptr);
      v31 = sub_220C4();
      v26 = swift_allocObject();
      v26[2] = v23;
      v26[3] = v18;
      v27 = v32;
      v26[4] = v2;
      v26[5] = v27;
      v37 = sub_196DC;
      v38 = v26;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v36 = sub_55D0;
      *(&v36 + 1) = &unk_2D000;
      v28 = _Block_copy(&aBlock);

      v29 = v2;

      sub_21E94();
      *&aBlock = &_swiftEmptyArrayStorage;
      sub_19700();
      sub_7E80(&qword_31630, &qword_23050);
      sub_173FC(&qword_31638, &qword_31630, &qword_23050, &protocol conformance descriptor for [A]);
      sub_22134();
      v30 = v31;
      sub_220D4();
      _Block_release(v28);

      (*(v34 + 8))(v9, v4);
      (*(v33 + 8))(v15, v10);
    }

    goto LABEL_12;
  }

  __break(1u);
}

void sub_18B70(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v8 = sub_21E64();
  sub_87F8(v8, qword_31EE0);
  v9 = sub_21E54();
  v10 = sub_220B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a1;
    _os_log_impl(&dword_0, v9, v10, "#MessagingWithSiriController adding voice group %ld", v11, 0xCu);
  }

  swift_beginAccess();

  v13 = sub_1CAA8(v12);

  v14 = objc_allocWithZone(PSSpecifierUpdates);
  v15 = sub_1E448(v13);
  if (!v15)
  {
    v16 = sub_21E54();
    v27 = sub_220A4();
    if (os_log_type_enabled(v16, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v16, v27, "#MessagingWithSiriController handleURL failed to get updates", v28, 2u);
    }

    goto LABEL_14;
  }

  v16 = v15;
  [v15 removeSpecifiersInGroup:*&a3[OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_addTTSLanguagesGroup]];
  v17 = sub_17B40(a4);
  v18 = sub_1CAA8(v17);
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1E95C(v18, a1 + 1, v16);
    v19 = [v16 context];
    if (v19)
    {
      v20 = v19;

      [v20 setAnimated:1];

      v21 = sub_1EA3C(v16);
      if (v21)
      {
        v22 = sub_1C99C(v21);

        if (v22)
        {

          v29[0] = sub_1AF7C(v23);
          sub_1A170(v29);

          v24 = v29[0];
          swift_beginAccess();
          *(a2 + 16) = v24;
        }
      }

      swift_beginAccess();

      v26 = sub_1CAA8(v25);

      sub_1E9CC(v26, a3);
LABEL_14:

      return;
    }
  }

  __break(1u);

  __break(1u);
}

void sub_18E88(uint64_t a1)
{
  v2 = v1;
  isa = sub_21CA4().super.isa;
  v37.receiver = v1;
  v37.super_class = type metadata accessor for ListOfLanguagesController();
  objc_msgSendSuper2(&v37, "tableView:didSelectRowAtIndexPath:", a1, isa);

  v5 = sub_21CA4().super.isa;
  v6 = [v1 specifierAtIndexPath:v5];

  if (v6)
  {
    v7 = v6;
    v8 = sub_1AEA8(v7);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_readableLanguageNameToLocaleCode;
      sub_9598();
      swift_beginAccess();
      v13 = *&v2[v12];

      v14 = sub_1ED50(v10, v11, v13);
      v16 = v15;

      if (v16)
      {
        if (qword_31548 != -1)
        {
          sub_A42C();
          swift_once();
        }

        v17 = sub_21E64();
        sub_87F8(v17, qword_31EE0);
        v18 = v7;
        v19 = sub_21E54();
        v20 = sub_220B4();

        if (os_log_type_enabled(v19, v20))
        {
          v35 = v14;
          v21 = sub_94C8();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v18;
          *v22 = v6;
          v23 = v18;
          _os_log_impl(&dword_0, v19, v20, "#ListOfLanguagesController %@", v21, 0xCu);
          sub_8F6C(v22, &qword_31680, &qword_22C90);
          sub_9474(v22);
          v24 = v21;
          v14 = v35;
          sub_9474(v24);
        }

        if (qword_31518 != -1)
        {
          swift_once();
        }

        sub_9598();
        swift_beginAccess();

        sub_9598();
        sub_A6DC(v25, v26, v27, v28);

        v29 = [v2 navigationController];
        if (v29)
        {
          v30 = v29;
        }

        v31 = sub_21E54();
        v32 = sub_220B4();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = sub_94C8();
          v34 = sub_94F8();
          v36 = v34;
          *v33 = 136315138;
          *(v33 + 4) = sub_E6C0(v14, v16, &v36);
          _os_log_impl(&dword_0, v31, v32, "ReadingVoiceListController: attempting to insert %s into the cache from listOfLanguagesController#tableView", v33, 0xCu);
          sub_91DC(v34);
          sub_9474(v34);
          sub_9474(v33);
        }

        if (qword_31540 != -1)
        {
          swift_once();
        }

        sub_1B5D4(v14, v16);
      }
    }
  }
}

id sub_19340()
{
  sub_1B4B4();
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_addTTSLanguagesGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_addTTSLanguageLink] = 0;
  v3 = OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_readableLanguageNameToLocaleCode;
  *&v1[v3] = sub_21ED4();
  v4 = OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_preferences;
  *&v1[v4] = [objc_opt_self() sharedPreferences];
  if (v2)
  {
    v5 = sub_21EE4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for ListOfLanguagesController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, v0);

  return v6;
}

id sub_1949C(void *a1)
{
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_addTTSLanguagesGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_addTTSLanguageLink] = 0;
  v3 = OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_readableLanguageNameToLocaleCode;
  *&v1[v3] = sub_21ED4();
  v4 = OBJC_IVAR____TtC20SiriMessagesSettings25ListOfLanguagesController_preferences;
  *&v1[v4] = [objc_opt_self() sharedPreferences];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ListOfLanguagesController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1959C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ListOfLanguagesController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_19660()
{

  sub_9688();

  return _swift_deallocObject(v0);
}

uint64_t sub_19694()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_196E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_19700()
{
  result = qword_31628;
  if (!qword_31628)
  {
    sub_21E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31628);
  }

  return result;
}

uint64_t sub_1975C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22274();
LABEL_9:
  result = sub_221E4();
  *v2 = result;
  return result;
}

void *sub_197FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_1BB78(v1, 0);

    sub_221C4();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = sub_22274();
    if (!v1)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void sub_19898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  sub_214F4(a3, a4);
  sub_1B440();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_7E80(&qword_315F8, &qword_22C38);
  if (!sub_22254(a5 & 1, v12))
  {
    goto LABEL_5;
  }

  v18 = sub_214F4(a3, a4);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    sub_222F4();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v6;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = a1;
    v21[1] = a2;
    sub_1B53C();
  }

  else
  {
    sub_19C44(v16, a3, a4, a1, a2, v20);
    sub_1B53C();
  }
}

void sub_199D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B410(a1, a2, a3);
  sub_1B440();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_222F4();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = sub_7E80(&qword_319D0, &qword_230A8);
  if (sub_1B494(v10))
  {
    sub_1B504();
    sub_1B4C4();
    if (!v12)
    {
      goto LABEL_12;
    }

    v8 = v11;
  }

  if (v9)
  {
    *(*(*v4 + 56) + 8 * v8) = v3;
    sub_1B588();
  }

  else
  {
    v13 = sub_1B480();
    sub_19C90(v13, v14, v15, v16, v17);
    sub_1B588();
  }
}

void sub_19A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B410(a1, a2, a3);
  sub_1B440();
  if (v7)
  {
    __break(1u);
LABEL_14:
    sub_222F4();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = sub_7E80(&qword_319C8, &qword_230A0);
  if (sub_1B494(v10))
  {
    sub_1B504();
    sub_1B4C4();
    if (!v12)
    {
      goto LABEL_14;
    }

    v8 = v11;
  }

  if (v9)
  {
    *(*(*v4 + 56) + 8 * v8) = v3;
    sub_1B588();
  }

  else
  {
    v14 = sub_1B480();
    sub_19C90(v14, v15, v16, v17, v18);
    sub_1B588();
  }
}

void sub_19B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B410(a1, a2, a3);
  sub_1B440();
  if (v7)
  {
    __break(1u);
LABEL_14:
    sub_222F4();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = sub_7E80(&qword_319C0, &qword_23098);
  if (sub_1B494(v10))
  {
    sub_1B504();
    sub_1B4C4();
    if (!v12)
    {
      goto LABEL_14;
    }

    v8 = v11;
  }

  if (v9)
  {
    *(*(*v4 + 56) + 8 * v8) = v3;
    sub_1B588();
  }

  else
  {
    v15 = sub_1B480();
    sub_19C90(v15, v16, v17, v18, v19);
    sub_1B588();
  }
}

unint64_t sub_19C44(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_19C90(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_19CD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_22274();
  }

  else
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_19D30(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1B4B4();
  v5 = *v2;
  if (sub_19DD8(*v2) < v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = 1 - v6;
  if (__OFSUB__(1, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1EBC4(v5);
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1975C(v10, 1);

  sub_19DFC(v4, v3, 1, v1);
}

uint64_t sub_19DD8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_22274();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

void sub_19DFC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_8AF4(0, &qword_31600, PSSpecifier_ptr);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = sub_22274();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_21448((v8 + 8 * v6), &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = sub_22274();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

void sub_19F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_8AF4(0, &qword_31600, PSSpecifier_ptr);
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    goto LABEL_6;
  }

LABEL_23:
  v15 = sub_22274();
LABEL_6:
  if (__OFSUB__(v15, v7))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_21448(&v9[v7], v15 - v7, (v6 + 8 * v8));
  if (v10)
  {
    v13 = sub_22274();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_25;
  }

  v5[2] = v13 + v11;
LABEL_12:
  if (v8 < 1)
  {
    sub_1B53C();

    return;
  }

  __chkstk_darwin(v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_26:
    sub_1B280(v4, sub_1B3F0);
    goto LABEL_17;
  }

  if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) == v8)
  {
    swift_arrayInitWithCopy();
LABEL_17:

    sub_1B53C();
    return;
  }

  __break(1u);
}

uint64_t sub_1A0F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_8AF4(0, &qword_31600, PSSpecifier_ptr);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A170(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B3A0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1A1EC(v6);
  return sub_22214();
}

Swift::Int sub_1A1EC(uint64_t *a1)
{
  v3 = a1[1];
  result = sub_22294(v3);
  if (result < v3)
  {
    v5 = result;
    v6 = sub_1E4B8(v3 / 2);
    v8[0] = v7;
    v8[1] = v3 / 2;
    result = sub_1A2CC(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = 0;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_16370(0, v3, 1, a1);
  }

  return result;
}

uint64_t sub_1A2CC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v109 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v112 = v5;
        v105 = v7;
        v10 = *a3;
        v11 = v6 + 1;
        v12 = *(*a3 + 8 * v9);
        v13 = *(*a3 + 8 * v8);
        v14 = v12;
        v15 = v13;
        result = sub_1AE44(v14);
        if (!v16)
        {
          goto LABEL_157;
        }

        v17 = result;
        v18 = v16;
        result = sub_1AE44(v15);
        if (!v19)
        {
          goto LABEL_158;
        }

        v7 = v19;
        if (v17 == result && v18 == v19)
        {
          v110 = 0;
        }

        else
        {
          v110 = sub_222C4();
        }

        v9 = v11;
        v4 = v112;

        v107 = v8;
        v21 = (v10 + 8 * v8 + 16);
        v103 = 8 * v8;
        for (i = 8 * v8 + 8; ; i += 8)
        {
          v115 = v9++;
          if (v9 >= v4)
          {
            break;
          }

          v23 = *(v21 - 1);
          v7 = *v21;
          v24 = v23;
          result = sub_1AE44(v7);
          if (!v25)
          {
            goto LABEL_152;
          }

          v26 = result;
          v27 = v25;
          result = sub_1AE44(v24);
          if (!v28)
          {
            goto LABEL_151;
          }

          if (v26 == result && v27 == v28)
          {

            v4 = v112;
            if (v110)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v30 = sub_222C4();

            v31 = v110 ^ v30;
            v4 = v112;
            if (v31)
            {
              break;
            }
          }

          ++v21;
        }

        if (v110)
        {
LABEL_25:
          v32 = v115;
          v9 = v115 + 1;
          v33 = v107;
          if (v115 + 1 < v107)
          {
            goto LABEL_144;
          }

          if (v107 >= v9)
          {
            v7 = v105;
            v8 = v107;
            goto LABEL_36;
          }

          v7 = v105;
          v34 = v103;
          do
          {
            if (v33 != v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_155;
              }

              v36 = *(v35 + v34);
              *(v35 + v34) = *(v35 + i);
              *(v35 + i) = v36;
            }

            ++v33;
            i -= 8;
            v34 += 8;
          }

          while (v33 < v32--);
        }

        else
        {
          v7 = v105;
        }

        v8 = v107;
      }

LABEL_36:
      v38 = a3[1];
      if (v9 < v38)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_143;
        }

        if (v9 - v8 < a4)
        {
          v39 = v8 + a4;
          if (__OFADD__(v8, a4))
          {
            goto LABEL_145;
          }

          if (v39 >= v38)
          {
            v39 = a3[1];
          }

          if (v39 >= v8)
          {
            if (v9 == v39)
            {
              goto LABEL_60;
            }

            v106 = v7;
            v108 = v8;
            v40 = *a3;
            v41 = *a3 + 8 * v9 - 8;
            v42 = v8 - v9;
            v111 = v39;
LABEL_45:
            v116 = v9;
            v43 = *(v40 + 8 * v9);
            v44 = v42;
            v113 = v41;
            while (1)
            {
              v45 = *v41;
              v46 = v43;
              v47 = v45;
              result = sub_1AE44(v46);
              if (!v48)
              {
                goto LABEL_149;
              }

              v4 = result;
              v49 = v48;
              result = sub_1AE44(v47);
              if (!v50)
              {
                break;
              }

              if (v4 == result && v49 == v50)
              {

LABEL_58:
                v9 = v116 + 1;
                v41 = v113 + 8;
                --v42;
                if (v116 + 1 == v111)
                {
                  v9 = v111;
                  v7 = v106;
                  v8 = v108;
                  goto LABEL_60;
                }

                goto LABEL_45;
              }

              v4 = sub_1B520(v4, v50, result);

              if ((v4 & 1) == 0)
              {
                goto LABEL_58;
              }

              if (!v40)
              {
                goto LABEL_150;
              }

              v52 = *v41;
              v43 = *(v41 + 8);
              *v41 = v43;
              *(v41 + 8) = v52;
              v41 -= 8;
              if (__CFADD__(v44++, 1))
              {
                goto LABEL_58;
              }
            }

            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

LABEL_146:
          __break(1u);
LABEL_147:
          result = sub_1AD04(v7);
          v7 = result;
          goto LABEL_114;
        }
      }

LABEL_60:
      if (v9 < v8)
      {
        goto LABEL_142;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AD44(0, v7[2] + 1, 1, v7);
        v7 = result;
      }

      v55 = v7[2];
      v54 = v7[3];
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        result = sub_1AD44((v54 > 1), v55 + 1, 1, v7);
        v7 = result;
      }

      v7[2] = v56;
      v57 = v7 + 4;
      v58 = &v7[2 * v55 + 4];
      *v58 = v8;
      v58[1] = v9;
      v59 = *v109;
      if (!*v109)
      {
        goto LABEL_156;
      }

      v117 = v9;
      if (v55)
      {
        while (1)
        {
          v4 = v56 - 1;
          v60 = &v57[2 * v56 - 2];
          v61 = &v7[2 * v56];
          if (v56 >= 4)
          {
            break;
          }

          if (v56 == 3)
          {
            v62 = v7[4];
            v63 = v7[5];
            v72 = __OFSUB__(v63, v62);
            v64 = v63 - v62;
            v65 = v72;
LABEL_80:
            if (v65)
            {
              goto LABEL_129;
            }

            v77 = *v61;
            v76 = v61[1];
            v78 = __OFSUB__(v76, v77);
            v79 = v76 - v77;
            v80 = v78;
            if (v78)
            {
              goto LABEL_132;
            }

            v81 = v60[1];
            v82 = v81 - *v60;
            if (__OFSUB__(v81, *v60))
            {
              goto LABEL_135;
            }

            if (__OFADD__(v79, v82))
            {
              goto LABEL_137;
            }

            if (v79 + v82 >= v64)
            {
              if (v64 < v82)
              {
                v4 = v56 - 2;
              }

              goto LABEL_102;
            }

            goto LABEL_95;
          }

          if (v56 < 2)
          {
            goto LABEL_131;
          }

          v84 = *v61;
          v83 = v61[1];
          v72 = __OFSUB__(v83, v84);
          v79 = v83 - v84;
          v80 = v72;
LABEL_95:
          if (v80)
          {
            goto LABEL_134;
          }

          v86 = *v60;
          v85 = v60[1];
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_136;
          }

          if (v87 < v79)
          {
            goto LABEL_109;
          }

LABEL_102:
          if (v4 - 1 >= v56)
          {
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

          if (!*a3)
          {
            goto LABEL_153;
          }

          v91 = v7;
          v92 = &v57[2 * v4 - 2];
          v93 = *v92;
          v7 = &v57[2 * v4];
          v94 = v7[1];
          sub_1AA14((*a3 + 8 * *v92), (*a3 + 8 * *v7), (*a3 + 8 * v94), v59);
          if (v118)
          {
          }

          if (v94 < v93)
          {
            goto LABEL_124;
          }

          v95 = v91[2];
          if (v4 > v95)
          {
            goto LABEL_125;
          }

          *v92 = v93;
          v92[1] = v94;
          if (v4 >= v95)
          {
            goto LABEL_126;
          }

          v56 = v95 - 1;
          result = memmove(&v57[2 * v4], v7 + 2, 16 * (v95 - 1 - v4));
          v7 = v91;
          v91[2] = v95 - 1;
          if (v95 <= 2)
          {
            goto LABEL_109;
          }
        }

        v66 = &v57[2 * v56];
        v67 = *(v66 - 8);
        v68 = *(v66 - 7);
        v72 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (v72)
        {
          goto LABEL_127;
        }

        v71 = *(v66 - 6);
        v70 = *(v66 - 5);
        v72 = __OFSUB__(v70, v71);
        v64 = v70 - v71;
        v65 = v72;
        if (v72)
        {
          goto LABEL_128;
        }

        v73 = v61[1];
        v74 = v73 - *v61;
        if (__OFSUB__(v73, *v61))
        {
          goto LABEL_130;
        }

        v72 = __OFADD__(v64, v74);
        v75 = v64 + v74;
        if (v72)
        {
          goto LABEL_133;
        }

        if (v75 >= v69)
        {
          v89 = *v60;
          v88 = v60[1];
          v72 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v72)
          {
            goto LABEL_141;
          }

          if (v64 < v90)
          {
            v4 = v56 - 2;
          }

          goto LABEL_102;
        }

        goto LABEL_80;
      }

LABEL_109:
      v6 = v117;
      v5 = a3[1];
      if (v117 >= v5)
      {
        goto LABEL_112;
      }
    }
  }

  v7 = &_swiftEmptyArrayStorage;
LABEL_112:
  v4 = *v109;
  if (!*v109)
  {
LABEL_159:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_147;
  }

LABEL_114:
  v96 = v7 + 2;
  v97 = v7[2];
  while (v97 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_154;
    }

    v98 = v7;
    v99 = &v7[2 * v97];
    v100 = *v99;
    v7 = &v96[2 * v97];
    v101 = v7[1];
    sub_1AA14((*a3 + 8 * *v99), (*a3 + 8 * *v7), (*a3 + 8 * v101), v4);
    if (v118)
    {
      break;
    }

    if (v101 < v100)
    {
      goto LABEL_138;
    }

    if (v97 - 2 >= *v96)
    {
      goto LABEL_139;
    }

    *v99 = v100;
    v99[1] = v101;
    v102 = *v96 - v97;
    if (*v96 < v97)
    {
      goto LABEL_140;
    }

    v97 = *v96 - 1;
    result = memmove(v7, v7 + 2, 16 * v102);
    *v96 = v97;
    v7 = v98;
  }
}

uint64_t sub_1AA14(id *a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_21448(a1, a2 - a1, a4);
    v10 = &v4[v8];
    for (i = v10; ; v10 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = v7;
      v13 = v5;
      v14 = v6;
      v15 = *v4;
      v16 = *v6;
      v17 = v15;
      result = sub_1AE44(v16);
      if (!v19)
      {
        __break(1u);
        goto LABEL_50;
      }

      v20 = result;
      v21 = v19;
      result = sub_1AE44(v17);
      if (!v22)
      {
        goto LABEL_51;
      }

      v23 = v20 == result && v21 == v22;
      if (v23)
      {
        break;
      }

      v24 = sub_1B520(v20, v22, result);

      if ((v24 & 1) == 0)
      {
        goto LABEL_17;
      }

      v25 = v6++;
      v26 = v12;
      v5 = v13;
      if (v12 != v14)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 = v26 + 1;
    }

LABEL_17:
    v25 = v4;
    v26 = v12;
    v23 = v12 == v4++;
    v5 = v13;
    if (v23)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v26 = *v25;
    goto LABEL_19;
  }

  sub_21448(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v45 = v7;
  v46 = v4;
LABEL_21:
  v27 = v6 - 1;
  v28 = v5 - 1;
  v48 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v30 = v28;
    v31 = v10;
    v32 = *--v10;
    v33 = v27;
    v34 = *v27;
    v35 = v32;
    v36 = v34;
    result = sub_1AE44(v35);
    if (!v37)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

    v38 = result;
    v39 = v37;
    result = sub_1AE44(v36);
    if (!v40)
    {
      goto LABEL_52;
    }

    if (v38 == result && v39 == v40)
    {
    }

    else
    {
      v42 = sub_1B520(v38, v40, result);

      if (v42)
      {
        v5 = v30;
        v23 = v30 + 1 == v48;
        v6 = v33;
        v7 = v45;
        v4 = v46;
        v10 = v31;
        if (!v23)
        {
          *v5 = *v33;
          v6 = v33;
        }

        goto LABEL_21;
      }
    }

    v27 = v33;
    if (v31 != v30 + 1)
    {
      *v30 = *v10;
    }

    v28 = v30 - 1;
    v6 = v48;
    v7 = v45;
    v4 = v46;
  }

LABEL_42:
  v43 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v43])
  {
    memmove(v6, v4, 8 * v43);
  }

  return 1;
}

char *sub_1AD18(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1AD44(char *result, int64_t a2, char a3, char *a4)
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
    sub_7E80(&qword_319B8, &qword_23088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1AE44(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21EF4();

  return v3;
}

uint64_t sub_1AEA8(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21EF4();

  return v3;
}

void sub_1AF18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21EE4();

  [a3 setTitle:v4];
}

void *sub_1AF7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22274();
    if (v3)
    {
      v4 = v3;
      v1 = sub_1BB78(v3, 0);
      sub_1B010();
      v6 = v5;

      if (v6 == v4)
      {
        return v1;
      }

      __break(1u);
    }

    return &_swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

void sub_1B010()
{
  sub_1B4EC();
  if (v2)
  {
    v5 = sub_22274();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      return;
    }
  }

  if (!v1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = sub_1EBC4(v0);
  if (v6 > v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v2)
  {
    v7 = sub_8AF4(0, &qword_31600, PSSpecifier_ptr);
    sub_1B568(v7);
    return;
  }

  if (v5 < 1)
  {
    goto LABEL_15;
  }

  v24 = v6;
  sub_1B454(&qword_319B0);
  do
  {
    v8 = sub_7E80(&qword_31618, &unk_22C50);
    v16 = sub_1B4D4(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25[0]);
    v19 = sub_1EAFC(v16, v17, v18);
    v21 = *v20;
    v19(v25, 0);
    sub_1B554();
  }

  while (!v22);
}

void sub_1B150()
{
  sub_1B4EC();
  if (v2)
  {
    v5 = sub_22274();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
      return;
    }
  }

  if (!v1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v6 = sub_1EBC4(v0);
  if (v6 > v3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v2)
  {
    v7 = sub_21D94();
    sub_1B568(v7);
    return;
  }

  if (v5 < 1)
  {
    goto LABEL_15;
  }

  v24 = v6;
  sub_1B454(&qword_319E0);
  do
  {
    v8 = sub_7E80(&qword_319D8, &unk_230B0);
    v16 = sub_1B4D4(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25[0]);
    v19 = sub_1EAFC(v16, v17, v18);
    v21 = *v20;
    v19(v25, 0);
    sub_1B554();
  }

  while (!v22);
}

uint64_t sub_1B280(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = sub_1B2E4(a1);
  v4 = v3[2];

  return a2((v3 + 4), v4);
}

void *sub_1B2E4(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, &_swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, &_swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_197FC(a1);

      objc_setAssociatedObject(v2, &_swiftEmptyArrayStorage, v4, &dword_0 + 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1B3B4()
{
  sub_9688();

  return _swift_deallocObject(v1);
}

unint64_t sub_1B410(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_214F4(a2, a3);
}

uint64_t sub_1B454(unint64_t *a1)
{

  return sub_173FC(a1, v1, v2, &protocol conformance descriptor for [A]);
}

BOOL sub_1B494(uint64_t a1)
{

  return sub_22254(v2 & 1, v1);
}

unint64_t sub_1B504()
{

  return sub_214F4(v1, v0);
}

uint64_t sub_1B520(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_222C4();
}

uint64_t sub_1B568(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1B59C()
{
  type metadata accessor for MessagesSettingsCache();
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptySetSingleton;
  qword_31ED8 = result;
  return result;
}

uint64_t sub_1B5D4(uint64_t a1, uint64_t a2)
{
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v4 = sub_21E64();
  sub_87F8(v4, qword_31EE0);

  v5 = sub_21E54();
  v6 = sub_220B4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *(v7 + 4) = sub_1C97C(4.8149e-34, v12, v8);
    sub_1C93C(&dword_0, v9, v10, "MessagesSettingsCache: inserting locale: %s");
    sub_91DC(v12);
    sub_9474(v12);
    sub_9474(v7);
  }

  sub_1C95C();

  sub_1BBF8(&v13, a1, a2);
  swift_endAccess();
}

uint64_t sub_1B718(uint64_t a1, uint64_t a2)
{
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v4 = sub_21E64();
  sub_87F8(v4, qword_31EE0);

  v5 = sub_21E54();
  v6 = sub_220B4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *(v7 + 4) = sub_1C97C(4.8149e-34, v12, v8);
    sub_1C93C(&dword_0, v9, v10, "MessagesSettingsCache: deleting locale: %s");
    sub_91DC(v12);
    sub_9474(v12);
    sub_9474(v7);
  }

  sub_1C95C();
  sub_1C4F8(a1, a2);
  swift_endAccess();
}

void *sub_1B854()
{
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v0 = sub_21E64();
  sub_87F8(v0, qword_31EE0);

  v1 = sub_21E54();
  v2 = sub_220B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11[0] = v4;
    *v3 = 136315138;
    swift_beginAccess();

    v5 = sub_22054();
    v7 = v6;

    v8 = sub_E6C0(v5, v7, v11);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_0, v1, v2, "MessagesSettingsCache: reading all locales. current set is: %s", v3, 0xCu);
    sub_91DC(v4);
    sub_9474(v4);
    sub_9474(v3);
  }

  swift_beginAccess();

  return sub_1B9F0(v9);
}

void *sub_1B9F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BAFC(*(a1 + 16), 0);
  sub_1C7D8(&v7, v3 + 4, v2, a1);
  v5 = v4;
  sub_1C934(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t MessagesSettingsCache.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0);
}

void *sub_1BAFC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_7E80(&qword_31AC0, &qword_23160);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_1BB78(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_7E80(&qword_31870, &unk_23020);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

BOOL sub_1BBF8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22314();
  sub_21F34();
  v8 = sub_22334();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_222C4() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1C004(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_1BD44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_230C0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1BDA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_7E80(&qword_31AC8, &unk_23100);
  result = sub_22194();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1BD44(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22314();
    sub_21F34();
    result = sub_22334();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1C004(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1BDA8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C2C4(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_22314();
      sub_21F34();
      v16 = sub_22334();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_222C4() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1C16C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_222E4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void sub_1C16C()
{
  v1 = v0;
  sub_7E80(&qword_31AC8, &unk_23100);
  v2 = *v0;
  v3 = sub_22184();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

uint64_t sub_1C2C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_7E80(&qword_31AC8, &unk_23100);
  result = sub_22194();
  v5 = result;
  if (*(v3 + 16))
  {
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_22314();

        sub_21F34();
        result = sub_22334();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C4F8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22314();
  sub_21F34();
  v6 = sub_22334();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_222C4() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C16C();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1C620(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_1C620(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22144();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22314();

        sub_21F34();
        v10 = sub_22334();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

void sub_1C7D8(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_1C93C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C95C()
{

  return swift_beginAccess();
}

unint64_t sub_1C97C(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_E6C0(v4, v3, va);
}

void *sub_1C99C(uint64_t a1)
{
  v6 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_22224();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_ED54(v3, v5);
    sub_8AF4(0, &qword_31600, PSSpecifier_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22204();
    sub_22234();
    sub_22244();
    sub_22214();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

char *sub_1CAA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22274();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v10 = &_swiftEmptyArrayStorage;
  result = sub_1E558(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_221D4();
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_8AF4(0, &qword_31600, PSSpecifier_ptr);
      swift_dynamicCast();
      v10 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        sub_1E558((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      v3[2] = v8 + 1;
      sub_1EB54(&v9, &v3[4 * v8 + 4]);
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1CC14(uint64_t a1, unint64_t a2)
{
  v3 = sub_19DD8(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = sub_221D4();
    }

    else
    {
      if (v4 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_8AF4(0, &qword_31600, PSSpecifier_ptr);
    v7 = sub_220F4();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_1CD10()
{
  v1 = v0;
  v2 = sub_951C();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51[0] = v49;
  v51[1] = v50;
  if (*(&v50 + 1))
  {
    v4 = sub_7E80(&qword_31618, &unk_22C50);
    if (sub_1EC68(v4))
    {
      if (qword_31548 != -1)
      {
        sub_9368(&qword_31548);
      }

      v5 = sub_21E64();
      sub_9444(v5, qword_31EE0);
      v6 = sub_21E54();
      v7 = sub_220B4();
      if (sub_17714(v7))
      {
        v8 = sub_94E0();
        *v8 = 0;
        sub_9434();
        _os_log_impl(v9, v10, v11, v12, v13, 2u);
        sub_9474(v8);
      }

      sub_1CAA8(v48);
LABEL_31:

      return;
    }
  }

  else
  {
    sub_ECAC(v51);
  }

  *&v51[0] = &_swiftEmptyArrayStorage;
  v14 = sub_2C8C();
  v15 = objc_opt_self();
  v16 = sub_1EA98(0xD000000000000023, 0x8000000000023620, v15);
  v17 = OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_messageWithoutConfGroup;
  v18 = *&v1[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_messageWithoutConfGroup];
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_messageWithoutConfGroup] = v16;
  v19 = v16;

  v20 = "MESSAGE_WITHOUT_CONFIRMATION_OFF_FOOTER";
  if (v14)
  {
    v20 = "MESSAGE_WITHOUT_CONFIRMATION_FOOTER";
  }

  if (!v16)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v14)
  {
    v21 = 0xD000000000000023;
  }

  else
  {
    v21 = 0xD000000000000027;
  }

  sub_1E0D4(v21, ((v20 - 32) | 0x8000000000000000));
  v22 = sub_21EE4();

  v23 = sub_21EF4();
  sub_1E79C(v22, v23, v24, v19);

  v25 = *&v1[v17];
  if (!v25)
  {
    goto LABEL_33;
  }

  v26 = v25;
  sub_21F64();
  v27 = *(&dword_18 + (*&v51[0] & 0xFFFFFFFFFFFFFF8));
  if (*(&dword_10 + (*&v51[0] & 0xFFFFFFFFFFFFFF8)) >= v27 >> 1)
  {
    sub_945C(v27);
    sub_21FA4();
  }

  sub_21FD4();
  v28 = sub_1E0D4(0xD000000000000023, 0x8000000000023620);
  v30 = sub_1E8A8(v28, v29, v1, "setMessageWithoutConfEnabled:specifier:", "getMessageWithoutConfEnabledWithSpecifier:", 0, 6, 0, v15);
  v31 = OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_messageWithoutConfSpecifier;
  v32 = *&v1[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_messageWithoutConfSpecifier];
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_messageWithoutConfSpecifier] = v30;
  v33 = v30;

  if (!v30)
  {
    goto LABEL_34;
  }

  isa = sub_21FE4().super.super.isa;
  sub_21EF4();
  v35 = sub_1EC14();
  sub_1E79C(v35, v36, v37, v33);

  v38 = *&v1[v31];
  if (v38)
  {
    v39 = v38;

    sub_21F64();
    v40 = *(&dword_18 + (*&v51[0] & 0xFFFFFFFFFFFFFF8));
    if (*(&dword_10 + (*&v51[0] & 0xFFFFFFFFFFFFFF8)) >= v40 >> 1)
    {
      sub_945C(v40);
      sub_21FA4();
    }

    sub_21FD4();
    v41 = *&v51[0];
    sub_1D71C(*&v51[0], v14 & 1, 0);
    if (v42)
    {
      v43 = v42;
      v44 = sub_1EA3C(v42);
      if (v44)
      {
        v45 = sub_1C99C(v44);

        if (v45)
        {

          v41 = v45;
        }
      }

      else
      {
      }
    }

    v47 = sub_1CAA8(v46);
    sub_1E9CC(v47, v1);

    sub_1CAA8(v41);
    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
}

void sub_1D1B0(uint64_t a1)
{
  sub_21FF4();
  sub_96A8();
  if (!v1)
  {
    sub_9368(&qword_31548);
  }

  v2 = sub_21E64();
  sub_9444(v2, qword_31EE0);
  oslog = sub_21E54();
  v3 = sub_220A4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = sub_94E0();
    *v4 = 0;
    _os_log_impl(&dword_0, oslog, v3, "#MessagesAutoConfirmSettingsController error setting auto send enable setting", v4, 2u);
    sub_9474(v4);
  }
}

Class sub_1D5E0()
{
  v0 = sub_2C8C();
  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v1 = sub_21E64();
  sub_9444(v1, qword_31EE0);
  v2 = sub_21E54();
  v3 = sub_220B4();
  if (sub_17714(v3))
  {
    v4 = sub_9634();
    *v4 = 67109120;
    v4[1] = v0 & 1;
    sub_9434();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
    sub_9474(v4);
  }

  sub_8AF4(0, &qword_31648, NSNumber_ptr);
  return sub_220E4(v0 & 1).super.super.isa;
}

void sub_1D71C(unint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_1CAA8(a1);
  v9 = objc_allocWithZone(PSSpecifierUpdates);
  v10 = sub_1E448(v8);
  if (!v10)
  {
    if (qword_31548 != -1)
    {
      sub_9368(&qword_31548);
    }

    v37 = sub_21E64();
    sub_9444(v37, qword_31EE0);
    v38 = sub_21E54();
    v39 = sub_220A4();
    if (sub_17714(v39))
    {
      v40 = sub_94E0();
      *v40 = 0;
      sub_9434();
      _os_log_impl(v41, v42, v43, v44, v45, 2u);
      sub_9474(v40);
    }

    goto LABEL_33;
  }

  if ((a2 & 1) == 0)
  {
    v46 = *(v3 + OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_destinationSpecifierGroup);
    if (v46)
    {
      v47 = v46;
      sub_1CC14(v47, a1);
      if ((v49 & 1) == 0)
      {
        v50 = v48;
        if (qword_31548 != -1)
        {
          sub_9368(&qword_31548);
        }

        v51 = sub_21E64();
        sub_9444(v51, qword_31EE0);
        v52 = sub_21E54();
        v53 = sub_220B4();
        if (sub_17714(v53))
        {
          v54 = sub_94E0();
          *v54 = 0;
          _os_log_impl(&dword_0, v52, v53, "#MessagesAutoConfirmSettingsController removing child settings since autosend setting is disabled", v54, 2u);
          sub_9474(v54);
        }

        v55 = sub_19DD8(a1);
        if (__OFSUB__(v55, v50))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        [v10 removeSpecifiersInRange:{v50, v55 - v50}];
      }
    }

LABEL_31:
    v58 = [v10 context];
    if (v58)
    {
      v38 = v58;
      [v58 setAnimated:a3 & 1];
LABEL_33:

      return;
    }

    goto LABEL_35;
  }

  v11 = objc_opt_self();
  v12 = sub_1E0D4(0xD000000000000030, 0x80000000000234D0);
  v14 = sub_1E818(0xD000000000000033, 0x8000000000023490, v12, v13, v11);
  v15 = *(v4 + OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_destinationSpecifierGroup);
  *(v4 + OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_destinationSpecifierGroup) = v14;
  v16 = v14;

  if (v14)
  {
    sub_21F64();
    sub_9694();
    if (v18)
    {
      sub_945C(v17);
      sub_21FA4();
    }

    sub_21FD4();
    v19 = sub_1E0D4(0xD000000000000027, 0x8000000000023510);
    v22 = sub_1EC38(v19, v20, v21, "setMessageWithoutConfHeadphonesEnabled:specifier:", "getMessageWithoutConfHeadphonesEnabledWithSpecifier:");
    v23 = *(v4 + OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_headPhonesSpecifier);
    *(v4 + OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_headPhonesSpecifier) = v22;
    v24 = v22;

    if (!v22)
    {
      goto LABEL_37;
    }

    sub_21F64();
    sub_9694();
    if (v18)
    {
      sub_945C(v25);
      sub_21FA4();
    }

    sub_21FD4();
    v26 = sub_1E0D4(0xD000000000000024, 0x8000000000023540);
    v29 = sub_1EC38(v26, v27, v28, "setMessageWithoutConfCarPlayEnabled:specifier:", "getMessageWithoutConfCarPlayEnabledWithSpecifier:");
    v30 = *(v4 + OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_carPlaySpecifier);
    *(v4 + OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_carPlaySpecifier) = v29;
    v31 = v29;

    if (!v29)
    {
      goto LABEL_38;
    }

    sub_21F64();
    v32 = *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= v32 >> 1)
    {
      sub_945C(v32);
      sub_21FA4();
    }

    sub_21FD4();
    if (qword_31548 != -1)
    {
      sub_9368(&qword_31548);
    }

    v33 = sub_21E64();
    sub_9444(v33, qword_31EE0);

    v34 = sub_21E54();
    v35 = sub_220B4();
    if (sub_17714(v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = sub_19DD8(&_swiftEmptyArrayStorage);

      _os_log_impl(&dword_0, v34, v35, "#MessagesAutoConfirmSettingsController adding %ld child settings since autosend setting is enabled", v36, 0xCu);
      sub_9474(v36);
    }

    else
    {
    }

    v56 = sub_1CAA8(&_swiftEmptyArrayStorage);

    v57 = sub_19DD8(a1);
    sub_1E95C(v56, v57, v10);
    goto LABEL_31;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_1DD2C(uint64_t a1, uint64_t a2, const char *a3, SEL *a4, const char *a5, ...)
{
  sub_21FF4();
  sub_96A8();
  if (!v6)
  {
    sub_9368(&qword_31548);
  }

  v7 = sub_21E64();
  sub_9444(v7, qword_31EE0);
  oslog = sub_21E54();
  v8 = sub_220A4();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = sub_94E0();
    *v9 = 0;
    _os_log_impl(&dword_0, oslog, v8, a5, v9, 2u);
    sub_9474(v9);
  }
}

Class sub_1DF60(uint64_t a1, SEL *a2, const char *a3, ...)
{
  v5 = [objc_opt_self() sharedPreferences];
  v6 = [v5 *a2];

  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v7 = sub_21E64();
  sub_9444(v7, qword_31EE0);
  v8 = sub_21E54();
  v9 = sub_220B4();
  if (sub_17714(v9))
  {
    v10 = sub_9634();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_0, v8, v9, a3, v10, 8u);
    sub_93FC();
  }

  sub_8AF4(0, &qword_31648, NSNumber_ptr);
  return sub_220E4(v6).super.super.isa;
}

uint64_t sub_1E0D4(uint64_t a1, void *a2)
{
  type metadata accessor for MessagesAutoConfirmSettingsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9._countAndFlagsBits = 0xE000000000000000;
  v11.value._object = 0x80000000000230F0;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11.value._countAndFlagsBits = 0xD000000000000014;
  v6.super.isa = v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v7 = sub_21BF4(v10, v11, v6, v12, 0, v9);

  return v7;
}

id sub_1E18C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_messageWithoutConfGroup] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_messageWithoutConfSpecifier] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_destinationSpecifierGroup] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_headPhonesSpecifier] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_carPlaySpecifier] = 0;
  if (a2)
  {
    v5 = sub_21EE4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for MessagesAutoConfirmSettingsController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_1E2A8(void *a1)
{
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_messageWithoutConfGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_messageWithoutConfSpecifier] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_destinationSpecifierGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_headPhonesSpecifier] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings37MessagesAutoConfirmSettingsController_carPlaySpecifier] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MessagesAutoConfirmSettingsController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E374(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MessagesAutoConfirmSettingsController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1E448(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_21F74().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithSpecifiers:v2.super.isa];

  return v3;
}

uint64_t sub_1E4B8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_8AF4(0, &qword_31600, PSSpecifier_ptr);
      result = sub_21FC4();
      *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)) = v1;
    }

    else
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return result;
}

unint64_t sub_1E534(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_1E558(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E598(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E578(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E69C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E598(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_7E80(&qword_31B20, &qword_23158);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_21408((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1E69C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_7E80(&qword_31AC0, &qword_23160);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_21428((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1E79C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_21EE4();

  [a4 setProperty:a1 forKey:v6];
}

id sub_1E818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_21EE4();

  sub_1EC2C();
  v7 = sub_21EE4();

  v8 = [a5 groupSpecifierWithID:v6 name:v7];

  return v8;
}

id sub_1E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v15 = sub_21EE4();

  v16 = [a9 preferenceSpecifierNamed:v15 target:a3 set:a4 get:a5 detail:a6 cell:a7 edit:a8];

  return v16;
}

id sub_1E95C(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_21F74().super.isa;

  v6 = [a3 insertContiguousSpecifiers:isa atIndex:a2];

  return v6;
}

void sub_1E9CC(uint64_t a1, void *a2)
{
  isa = sub_21F74().super.isa;

  [a2 setSpecifiers:isa];
}

uint64_t sub_1EA3C(void *a1)
{
  v1 = [a1 currentSpecifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21F84();

  return v3;
}

id sub_1EA98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21EE4();

  v5 = [a3 groupSpecifierWithID:v4];

  return v5;
}

uint64_t sub_1EAFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1EBD0(a1, a2, a3);
  if (v4)
  {
    v5 = sub_1EC88();
  }

  else
  {
    sub_1EC2C();
    v5 = sub_221D4();
  }

  *v3 = v5;
  return sub_1EC5C();
}

_OWORD *sub_1EB54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1EB64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1EBD0(a1, a2, a3);
  if (v4)
  {
    v5 = sub_1EC88();
  }

  else
  {
    sub_1EC2C();
    v5 = sub_221D4();
  }

  *v3 = v5;
  return sub_1EC5C();
}

unint64_t sub_1EBD0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1E524(a3);

  return sub_1E534(a2, v5, a3);
}

id sub_1EC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1E8A8(a1, a2, v5, a4, a5, 0, 6, 0, v6);
}

uint64_t sub_1EC68(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

id sub_1EC88()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_1ECA0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 8;
  }

  v3 = sub_21468(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 8;
  }
}

double sub_1ECEC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_214B0(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_ED54(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1ED50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_214F4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

void sub_1EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_214F4(a1, a2);
    if (v3)
    {
    }
  }
}

void *sub_1EDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_214F4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1EE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_214F4(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1EE9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  [v5 lock];
  swift_beginAccess();
  v6 = *(v2 + 16);

  v7 = sub_1EE44(a1, a2, v6);

  [v5 unlock];
  return v7;
}

char *sub_1EF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21E84();
  sub_964C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_21A00();
  v11 = v10 - v9;
  sub_21EA4();
  sub_964C();
  v38 = v13;
  v39 = v12;
  __chkstk_darwin(v12);
  sub_21A00();
  v16 = v15 - v14;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_spinner] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_downloadProgress] = 0;
  v17 = &v3[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_localeCode];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_textConstraints] = 0;
  if (a3)
  {
    v18 = sub_21EE4();
  }

  else
  {
    v18 = 0;
  }

  v41.receiver = v3;
  v41.super_class = type metadata accessor for LanguageCell();
  v19 = objc_msgSendSuper2(&v41, "initWithStyle:reuseIdentifier:", 0, v18);

  v20 = qword_31548;
  v21 = v19;
  if (v20 != -1)
  {
    sub_9368(&qword_31548);
  }

  v22 = sub_21E64();
  sub_87F8(v22, qword_31EE0);
  v23 = v21;
  v24 = sub_21E54();
  v25 = sub_220B4();

  if (os_log_type_enabled(v24, v25))
  {
    v37 = v7;
    v26 = sub_94C8();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    v28 = *&v23[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_localeCode + 8];
    if (v28)
    {
      v29 = *&v23[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_localeCode];
    }

    else
    {
      v29 = 0;
      v28 = 0xE000000000000000;
    }

    v30 = sub_E6C0(v29, v28, aBlock);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v24, v25, "#LanguageCell initializer no specificer %s", v26, 0xCu);
    sub_91DC(v27);
    sub_9474(v27);
    sub_9474(v26);

    v7 = v37;
  }

  else
  {
  }

  if ([objc_opt_self() isMainThread])
  {
    sub_1FB60(0, 1);
  }

  else
  {
    sub_8AF4(0, &qword_31620, OS_dispatch_queue_ptr);
    v31 = sub_220C4();
    v32 = swift_allocObject();
    *(v32 + 16) = v23;
    aBlock[4] = sub_21964;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    sub_219DC();
    aBlock[2] = v33;
    aBlock[3] = &unk_2D140;
    v34 = _Block_copy(aBlock);
    v35 = v23;

    sub_21E94();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_19700();
    sub_7E80(&qword_31630, &qword_23050);
    sub_8A48();
    sub_21A44();
    sub_22134();
    sub_220D4();
    _Block_release(v34);

    (*(v7 + 8))(v11, v5);
    (*(v38 + 8))(v16, v39);
  }

  return v23;
}

void sub_1F3EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_21E84();
  sub_964C();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_21A00();
  v60 = v12 - v11;
  v13 = sub_21EA4();
  sub_964C();
  v59 = v14;
  __chkstk_darwin(v15);
  sub_21A00();
  v58 = v17 - v16;
  *&v4[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_spinner] = 0;
  *&v4[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_downloadProgress] = 0;
  v18 = &v4[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_localeCode];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_textConstraints] = 0;
  v19 = sub_21EE4();
  v62.receiver = v4;
  v62.super_class = type metadata accessor for LanguageCell();
  v20 = objc_msgSendSuper2(&v62, "initWithStyle:reuseIdentifier:specifier:", a1, v19, a4);

  if (!v20)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v21 = qword_31530;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = sub_21884(a4);
  if (!v24)
  {
    goto LABEL_25;
  }

  v25 = v23;
  v26 = v24;
  v56 = v13;
  v57 = v9;

  swift_beginAccess();
  v27 = sub_1ED50(v25, v26, static MessagesSettingsUtils.readableLanguageToLocaleMap);
  v29 = v28;
  swift_endAccess();

  v30 = &v22[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_localeCode];
  *v30 = v27;
  v30[1] = v29;

  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v31 = sub_21E64();
  sub_87F8(v31, qword_31EE0);
  v32 = v22;
  v33 = sub_21E54();
  v34 = sub_220B4();

  if (os_log_type_enabled(v33, v34))
  {
    v55 = a4;
    v35 = v7;
    v36 = sub_94C8();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315138;
    v38 = v30[1];
    if (v38)
    {
      v39 = *v30;
    }

    else
    {
      v39 = 0;
      v38 = 0xE000000000000000;
    }

    v40 = sub_E6C0(v39, v38, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v34, "#LanguageCell initializer with specificer %s", v36, 0xCu);
    sub_91DC(v37);
    sub_9474(v37);
    sub_9474(v36);

    v7 = v35;
    a4 = v55;
  }

  else
  {
  }

  [v32 setCellEnabled:1];
  v41 = v30[1];
  if (!v41)
  {
    goto LABEL_22;
  }

  v42 = *v30;
  v43 = qword_31518;

  if (v43 != -1)
  {
    sub_EDD4(&qword_31518);
  }

  swift_beginAccess();
  swift_beginAccess();

  v44 = sub_1EE9C(v42, v41);
  v46 = v45;

  if (v46)
  {
    v47 = sub_21E54();
    v48 = sub_220B4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = sub_94E0();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "LanguageCell download percentage nil", v49, 2u);
      sub_9474(v49);
    }

    goto LABEL_22;
  }

  if ([objc_opt_self() isMainThread])
  {
    sub_1FB60(v44, 0);
LABEL_22:

    return;
  }

  sub_8AF4(0, &qword_31620, OS_dispatch_queue_ptr);
  v50 = sub_220C4();
  v51 = swift_allocObject();
  *(v51 + 16) = v32;
  *(v51 + 24) = v44;
  *(v51 + 32) = 0;
  aBlock[4] = sub_21920;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_219DC();
  aBlock[2] = v52;
  aBlock[3] = &unk_2D0F0;
  v53 = _Block_copy(aBlock);
  v54 = v32;

  sub_21E94();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_19700();
  sub_7E80(&qword_31630, &qword_23050);
  sub_8A48();
  sub_22134();
  sub_220D4();
  _Block_release(v53);

  (*(v57 + 8))(v60, v7);
  (*(v59 + 8))(v58, v56);
}

void sub_1FAB8()
{
  *(v0 + OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_spinner) = 0;
  *(v0 + OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_downloadProgress) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_localeCode);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_textConstraints) = 0;
  sub_22264();
  __break(1u);
}

uint64_t sub_1FB60(uint64_t a1, char a2)
{
  if (qword_31518 != -1)
  {
    sub_EDD4(&qword_31518);
  }

  swift_beginAccess();
  v5 = static MessagesSettingsUtils.ttsDownloader;
  sub_21A38();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  swift_beginAccess();
  swift_retain_n();
  v2;
  sub_2124C();
  v7 = *(*(v5 + 24) + 16);
  sub_21298(v7);
  v8 = *(v5 + 24);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = sub_2187C;
  *(v9 + 40) = v6;
  *(v5 + 24) = v8;
  swift_endAccess();
  sub_209F0(a1, a2 & 1);
}

void sub_1FC88(void *a1, uint64_t a2)
{
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v3 = sub_21E64();
  sub_87F8(v3, qword_31EE0);
  v4 = a1;
  v5 = sub_21E54();
  v6 = sub_220B4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315138;
    v9 = *&v4[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_localeCode + 8];
    v17[1] = *&v4[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_localeCode];
    v17[2] = v9;

    sub_7E80(&qword_318A8, &unk_22FC8);
    v10 = sub_21F14();
    v12 = sub_E6C0(v10, v11, v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v5, v6, "#LanguageCell onChangeActions %s", v7, 0xCu);
    sub_91DC(v8);
  }

  v13 = *&v4[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_localeCode + 8];
  if (v13)
  {
    v14 = *&v4[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_localeCode];
    swift_beginAccess();

    v15 = sub_1EE9C(v14, v13);
    LOBYTE(v14) = v16;

    if ((v14 & 1) == 0)
    {
      sub_1FE94(v15);
    }
  }
}

uint64_t sub_1FE94(uint64_t a1)
{
  v3 = sub_21E84();
  sub_964C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_21A00();
  v9 = v8 - v7;
  v10 = sub_21EA4();
  sub_964C();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_21A00();
  v16 = v15 - v14;
  sub_8AF4(0, &qword_31620, OS_dispatch_queue_ptr);
  v17 = sub_220C4();
  sub_21A38();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v1;
  aBlock[4] = sub_21820;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_219DC();
  aBlock[2] = v19;
  aBlock[3] = &unk_2D078;
  v20 = _Block_copy(aBlock);
  v21 = v1;

  sub_21E94();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_19700();
  sub_7E80(&qword_31630, &qword_23050);
  sub_8A48();
  sub_21A44();
  sub_22134();
  sub_220D4();
  _Block_release(v20);

  (*(v5 + 8))(v9, v3);
  return (*(v12 + 8))(v16, v10);
}

id sub_200E8(unint64_t a1, char *a2)
{
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v4 = sub_21E64();
  sub_87F8(v4, qword_31EE0);
  v5 = sub_21E54();
  v6 = sub_220B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_0, v5, v6, "#LanguageCell onChangeActions downloadPercentage %ld", v7, 0xCu);
  }

  v8 = OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_downloadProgress;
  v9 = *&a2[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_downloadProgress];
  if (v9)
  {
    v10 = v9;
    v16 = sub_222A4();
    v17 = v11;
    v18._countAndFlagsBits = 37;
    v18._object = 0xE100000000000000;
    sub_21F44(v18);
    sub_21744(v16, v17, v10);
  }

  [a2 setForceHideDisclosureIndicator:0];
  if (!a1)
  {
    v13 = 0;
    v12 = *&a2[v8];
    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v12 = *&a2[v8];
  if (a1 > 0x63)
  {
    if (v12)
    {
      [v12 setHidden:1];
    }

    v12 = *&a2[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_spinner];
    v13 = 1;
    if (!v12)
    {
      goto LABEL_18;
    }

LABEL_16:
    v14 = 1;
    goto LABEL_17;
  }

  v13 = 0;
  if (v12)
  {
    v14 = 0;
LABEL_17:
    [v12 setHidden:v14];
  }

LABEL_18:
  [a2 setAccessoryType:v13];
  return [a2 layoutSubviews];
}

void sub_202D8(uint64_t a1)
{
  v2 = v1;
  v42.receiver = v1;
  v42.super_class = type metadata accessor for LanguageCell();
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v3 = [v1 textLabel];
  if (v3)
  {
    v4 = v3;
    v5 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_downloadProgress];
    if (v5)
    {
      v39 = v5;
      if ([v39 isHidden])
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 65.0;
      }

      [v2 frame];
      v7 = CGRectGetWidth(v43) + -40.0 - v6 + -30.0;
      v8 = v4;
      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      sub_8AF4(0, &qword_31B70, NSLayoutConstraint_ptr);
      v41[3] = sub_8AF4(0, &qword_31B88, UILabel_ptr);
      v41[0] = v8;
      memset(v40, 0, sizeof(v40));
      v9 = v8;
      v37 = sub_207D4(v41, 7, 0, v40, 0, 1.0, v7);
      v10 = OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_textConstraints;
      v38 = objc_opt_self();

      isa = sub_21F74().super.isa;

      [v38 deactivateConstraints:isa];

      sub_7E80(&qword_31870, &unk_23020);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_23170;
      v13 = [v9 leadingAnchor];
      v14 = sub_21A20();
      v15 = [v14 layoutMarginsGuide];

      v16 = [v15 leadingAnchor];
      v17 = [v13 constraintEqualToAnchor:v16];

      *(v12 + 32) = v17;
      v18 = [v9 centerYAnchor];

      v19 = sub_21A20();
      v20 = [v19 centerYAnchor];

      v21 = [v18 constraintEqualToAnchor:v20];
      *(v12 + 40) = v21;
      *(v12 + 48) = v37;
      *&v2[v10] = v12;
      v22 = v37;

      v23.super.isa = sub_21F74().super.isa;

      [v38 activateConstraints:v23.super.isa];

      goto LABEL_14;
    }
  }

  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v24 = sub_21E64();
  sub_87F8(v24, qword_31EE0);
  v25 = v2;
  v26 = sub_21E54();
  v27 = sub_220B4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = sub_94C8();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = [v25 textLabel];
    *(v28 + 4) = v30;
    *v29 = v30;
    _os_log_impl(&dword_0, v26, v27, "#LanguageCell layoutSubviews textLabel %@", v28, 0xCu);
    sub_C388(v29);
    sub_9474(v29);
    sub_9474(v28);
  }

  v31 = v25;
  v23.super.isa = sub_21E54();
  v32 = sub_220B4();

  if (os_log_type_enabled(v23.super.isa, v32))
  {
    v33 = sub_94C8();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    v35 = *&v31[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_downloadProgress];
    *(v33 + 4) = v35;
    *v34 = v35;
    v36 = v35;
    _os_log_impl(&dword_0, v23.super.isa, v32, "#LanguageCell layoutSubviews downloadProgress %@", v33, 0xCu);
    sub_C388(v34);
    sub_9474(v34);
    sub_9474(v33);
  }

LABEL_14:
}

id sub_207D4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  sub_217A8(a1, a1[3]);
  v14 = sub_222B4();
  v15 = a4[3];
  if (v15)
  {
    v16 = sub_217A8(a4, a4[3]);
    v24 = a5;
    v25 = a2;
    v17 = a3;
    v18 = *(v15 - 8);
    __chkstk_darwin(v16);
    v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v20);
    v21 = sub_222B4();
    (*(v18 + 8))(v20, v15);
    a3 = v17;
    a5 = v24;
    a2 = v25;
    sub_91DC(a4);
  }

  else
  {
    v21 = 0;
  }

  v22 = [swift_getObjCClassFromMetadata() constraintWithItem:v14 attribute:a2 relatedBy:a3 toItem:v21 attribute:a5 multiplier:a6 constant:a7];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_91DC(a1);
  return v22;
}

void sub_209F0(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || a1 > 99)
  {
    if (qword_31548 != -1)
    {
      sub_9368(&qword_31548);
    }

    v57 = sub_21E64();
    sub_87F8(v57, qword_31EE0);
    oslog = sub_21E54();
    v58 = sub_220B4();
    if (!os_log_type_enabled(oslog, v58))
    {
      goto LABEL_19;
    }

    v59 = sub_94E0();
    *v59 = 0;
    v60 = "#LanguageCell not adding spinners and text, downloadPercentage undefined or complete";
    goto LABEL_18;
  }

  v3 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v4 = OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_spinner;
  v5 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_spinner];
  *&v2[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_spinner] = v3;

  v6 = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_downloadProgress;
  v8 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_downloadProgress];
  *&v2[OBJC_IVAR____TtC20SiriMessagesSettings12LanguageCell_downloadProgress] = v6;

  v9 = *&v2[v4];
  if (v9)
  {
    v10 = *&v2[v7];
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = [v2 contentView];
      v14 = v11;
      [v13 addSubview:v14];

      v15 = [v2 contentView];
      v16 = v12;
      [v15 addSubview:v16];

      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = [objc_opt_self() grayColor];
      [v16 setTextColor:v17];

      v63 = sub_222A4();
      v64 = v18;
      v66._countAndFlagsBits = 37;
      v66._object = 0xE100000000000000;
      sub_21F44(v66);
      sub_21744(v63, v64, v16);
      [v16 setFrame:{0.0, 0.0, 40.0, 20.0}];

      [v16 setHidden:1];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

      [v14 startAnimating];
      [v2 setForceHideDisclosureIndicator:1];
      [v14 setFrame:{0.0, 0.0, 40.0, 20.0}];

      v19 = objc_opt_self();
      sub_7E80(&qword_31870, &unk_23020);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_23180;
      v21 = [v14 trailingAnchor];

      v22 = [v2 contentView];
      v23 = [v22 trailingAnchor];

      v24 = [v21 constraintEqualToAnchor:v23];
      *(v20 + 32) = v24;
      v25 = [v14 centerYAnchor];

      v26 = sub_21A20();
      v27 = [v26 centerYAnchor];

      v28 = [v25 constraintEqualToAnchor:v27];
      *(v20 + 40) = v28;
      sub_8AF4(0, &qword_31B70, NSLayoutConstraint_ptr);
      isa = sub_21F74().super.isa;

      [v19 activateConstraints:isa];

      sub_8AF4(0, &qword_31B78, UIActivityIndicatorView_ptr);
      v30 = v14;
      v31 = sub_21A20();
      sub_8AF4(0, &qword_31B80, UIView_ptr);
      v32 = sub_21A10();
      v35 = sub_207D4(v33, 6, 0, v34, 6, v32, -15.0);
      sub_8AF4(0, &qword_31B88, UILabel_ptr);
      v36 = v30;
      v37 = v16;
      v38 = sub_21A10();
      v41 = sub_207D4(v39, 6, 0, v40, 5, v38, -25.0);
      v42 = v37;
      sub_21A20();
      v43 = sub_21A10();
      v46 = sub_207D4(v44, 10, 0, v45, 10, v43, 0.0);
      v47 = sub_21A20();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_23170;
      *(v48 + 32) = v35;
      *(v48 + 40) = v41;
      *(v48 + 48) = v46;
      v49 = v35;
      v50 = v41;
      v51 = v46;
      v52 = sub_21F74().super.isa;

      [v47 addConstraints:v52];

      if (qword_31548 != -1)
      {
        sub_9368(&qword_31548);
      }

      v53 = sub_21E64();
      sub_87F8(v53, qword_31EE0);
      v54 = sub_21E54();
      v55 = sub_220B4();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = sub_94E0();
        *v56 = 0;
        _os_log_impl(&dword_0, v54, v55, "#LanguageCell added all subviews", v56, 2u);
        sub_9474(v56);
      }

      return;
    }
  }

  if (qword_31548 != -1)
  {
    sub_9368(&qword_31548);
  }

  v61 = sub_21E64();
  sub_87F8(v61, qword_31EE0);
  oslog = sub_21E54();
  v58 = sub_220A4();
  if (os_log_type_enabled(oslog, v58))
  {
    v59 = sub_94E0();
    *v59 = 0;
    v60 = "#LanguageCell failed to create spinner and progress label";
LABEL_18:
    _os_log_impl(&dword_0, oslog, v58, v60, v59, 2u);
    sub_9474(v59);
  }

LABEL_19:
}

id sub_21184(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LanguageCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_2124C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_212D8(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_21298(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_212D8((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void *sub_212D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_7E80(&qword_31B90, &qword_231A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_7E80(&qword_31B98, &unk_231B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21408(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_219F0(a3, result);
  }

  return result;
}

char *sub_21428(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_219F0(a3, result);
  }

  return result;
}

char *sub_21448(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_219F0(a3, result);
  }

  return result;
}

unint64_t sub_21468(uint64_t a1)
{
  v1 = a1;
  v2 = sub_22304();

  return sub_2156C(v1, v2);
}

unint64_t sub_214B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22154(*(v2 + 40));

  return sub_215CC(a1, v4);
}

unint64_t sub_214F4(uint64_t a1, uint64_t a2)
{
  sub_22314();
  sub_21F34();
  v4 = sub_22334();

  return sub_21690(a1, a2, v4);
}

unint64_t sub_2156C(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_215CC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_2196C(*(v2 + 48) + 40 * i, v7);
    v5 = sub_22164();
    sub_912C(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_21690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_222C4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_21744(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21EE4();

  [a3 setText:v4];
}

void *sub_217A8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_217EC()
{
  sub_21A38();

  return _swift_deallocObject(v1);
}

uint64_t sub_21828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21840()
{

  sub_21A38();

  return _swift_deallocObject(v1);
}

uint64_t sub_21884(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21EF4();

  return v3;
}

uint64_t sub_218E8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_2192C()
{

  return _swift_deallocObject(v0);
}

id sub_21A20()
{
  v3 = *(v1 + 2712);

  return [v0 v3];
}

uint64_t sub_21A58()
{
  v0 = sub_21E64();
  sub_21AE4(v0, qword_31EE0);
  sub_87F8(v0, qword_31EE0);
  if (qword_31550 != -1)
  {
    swift_once();
  }

  v1 = qword_31EF8;
  return sub_21E74();
}

uint64_t *sub_21AE4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_21B48()
{
  sub_21BB0();
  result = sub_22104();
  qword_31EF8 = result;
  return result;
}

unint64_t sub_21BB0()
{
  result = qword_31BA0;
  if (!qword_31BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_31BA0);
  }

  return result;
}