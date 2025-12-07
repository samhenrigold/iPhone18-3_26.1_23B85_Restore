unint64_t convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(unint64_t result, unint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *(a4 + 16);
  v6 = *(a4 + 24);
  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v7 >= result)
      {
        result = (result << 16) | 4;
        if ((v6 & 0x1000000000000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_17:
        v10 = result;
        v9 = MEMORY[0x1865CB180](15, a2, v5);
        result = v10;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v11 = a2;
  result = MEMORY[0x1865CB180](15, result, v5);
  a2 = v11;
  v5 = *(a4 + 16);
  v6 = *(a4 + 24);
  if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 < a2)
  {
    goto LABEL_22;
  }

  v9 = (a2 << 16) | 4;
LABEL_14:
  if (v9 >> 14 < result >> 14)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

unint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA46450LL6string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return 2;
  }

  v7 = a5;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v12 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v15[3] = v6;
    v14 = a6;
    v12 = _StringObject.sharedUTF8.getter();
    a6 = v14;
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5H7VGXEfU_10Foundation0nO0VXMtAQ15URLComponentSet01_qrstuvW0LLVSbTf1nnc_nTf4xndnn_n(v12, a1, a2, a3, a4, v7, a6 & 1);
  if (!v6)
  {
    return result & 1;
  }

  return result;
}

BOOL _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA46450LL6buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(_BYTE *a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v4 = a3;
  if ((a4 & 1) == 0)
  {
    if (!a1 || !a2)
    {
      return 1;
    }

    while (1)
    {
      if (*a1 < 0)
      {
        return 0;
      }

      v9 = *a1;
      if (v9 > 0x2A)
      {
        if (*a1 <= 0x2Cu)
        {
          if (v9 == 43)
          {
            if ((a3 & 0xF7) == 0)
            {
              return 0;
            }

            goto LABEL_48;
          }

          if (v9 == 44)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v9 == 45 || v9 == 46)
          {
            goto LABEL_90;
          }

          if (v9 == 47)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v7 = a3 & 0xF6;
        if (*a1 > 0x26u || (v7 = a3 & 0xF6, v9 == 33) || (v7 = a3 & 0xF6, v9 == 36) || (v7 = a3 & 0x76, v9 == 38))
        {
          if (!v7)
          {
            return v7;
          }

          goto LABEL_48;
        }
      }

      if (v9 - 58 > 0xFFFFFFF5)
      {
        goto LABEL_90;
      }

      if (*a1 <= 0x3Cu)
      {
        if (v9 == 58)
        {
          if ((a3 & 0xD2) == 0)
          {
            return 0;
          }

          goto LABEL_48;
        }

        if (v9 == 59)
        {
LABEL_64:
          if ((a3 & 0xF6) == 0)
          {
            return 0;
          }

          goto LABEL_48;
        }
      }

      else
      {
        switch(v9)
        {
          case '=':
            if ((a3 & 0x76) == 0)
            {
              return 0;
            }

            goto LABEL_48;
          case '?':
            if (a3 < 0x40u)
            {
              return 0;
            }

            goto LABEL_48;
          case '@':
LABEL_60:
            if (a3 < 0x10u)
            {
              return 0;
            }

            goto LABEL_48;
        }
      }

      if (v9 - 91 > 0xFFFFFFE5)
      {
        goto LABEL_90;
      }

      if (v9 == 95)
      {
        if (a3 < 2u)
        {
          return 0;
        }

        goto LABEL_48;
      }

      if (v9 - 123 > 0xFFFFFFE5)
      {
LABEL_90:
        if (!a3)
        {
          return 0;
        }

        goto LABEL_48;
      }

      v7 = 0;
      if (v9 != 126 || a3 < 2u)
      {
        return v7;
      }

LABEL_48:
      ++a1;
      if (!--a2)
      {
        return 1;
      }
    }
  }

  if (!a1 || !a2)
  {
    return 1;
  }

  v5 = 0;
  while (2)
  {
    if (*a1 < 0)
    {
      return 0;
    }

    else
    {
      v6 = *a1;
      switch(*a1)
      {
        case '!':
        case '$':
        case '\'':
        case '(':
        case ')':
        case '*':
        case ',':
          goto LABEL_9;
        case '%':
          if (v5)
          {
            return 0;
          }

          v5 = 2;
          goto LABEL_6;
        case '&':
          goto LABEL_20;
        case '+':
          if ((v4 & 0xFFFFFFF7) == 0)
          {
            return 0;
          }

          goto LABEL_39;
        case '-':
        case '.':
          goto LABEL_38;
        case '/':
          goto LABEL_18;
        default:
          if ((v6 - 58) > 0xFFFFFFF5)
          {
            goto LABEL_38;
          }

          if (*a1 <= 0x3Cu)
          {
            if (v6 == 58)
            {
              if ((v4 & 0xD2) == 0)
              {
                return 0;
              }

              goto LABEL_39;
            }

            if (v6 == 59)
            {
LABEL_9:
              if ((v4 & 0xF6) == 0)
              {
                return 0;
              }

              goto LABEL_39;
            }
          }

          else
          {
            switch(v6)
            {
              case '=':
LABEL_20:
                if ((v4 & 0x76) == 0)
                {
                  return 0;
                }

                goto LABEL_39;
              case '?':
                if (v4 < 0x40)
                {
                  return 0;
                }

                goto LABEL_39;
              case '@':
LABEL_18:
                if (v4 < 0x10)
                {
                  return 0;
                }

                goto LABEL_39;
            }
          }

          if ((v6 - 91) > 0xFFFFFFE5)
          {
            goto LABEL_38;
          }

          if (v6 == 95)
          {
            if (v4 < 2)
            {
              return 0;
            }

            goto LABEL_39;
          }

          if ((v6 - 123) > 0xFFFFFFE5)
          {
LABEL_38:
            if (!v4)
            {
              return 0;
            }
          }

          else
          {
            v7 = 0;
            if (v6 != 126 || v4 < 2)
            {
              return v7;
            }
          }

LABEL_39:
          if (v5-- < 1)
          {
            v5 = 0;
          }

          else if ((v6 - 58) <= 0xFFFFFFF5)
          {
            v7 = 0;
            if ((v6 - 65) > 0x25 || ((1 << (v6 - 65)) & 0x3F0000003FLL) == 0)
            {
              return v7;
            }
          }

LABEL_6:
          ++a1;
          if (--a2)
          {
            continue;
          }

          result = v5 == 0;
          break;
      }
    }

    return result;
  }
}

id @objc static NSLocale._preferredLanguages.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache.preferredLanguages(forCurrentUser:)(0);
  v0 = _ContiguousArrayBuffer._asCocoaArray()();

  return v0;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 72 * result;
  *(v6 + 64) = *(a4 + 64);
  v7 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v7;
  v8 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

void *one-time initialization function for fileSchemeUTF8()
{
  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(4, 0);
  *(result + 8) = 1701603686;
  static _SwiftURL.fileSchemeUTF8 = result;
  return result;
}

uint64_t static Calendar._fromNSCalendarIdentifier(_:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = *MEMORY[0x1E695D850];
  isTaggedPointer = _objc_isTaggedPointer(*MEMORY[0x1E695D850]);
  v6 = v4;
  v7 = v6;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v6);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v11 = v10;

          goto LABEL_20;
        }

        goto LABEL_6;
      }

      v15 = [v7 UTF8String];
      if (!v15)
      {
        __break(1u);
        goto LABEL_213;
      }

      v16 = String.init(utf8String:)(v15);
      if (v17)
      {
LABEL_15:
        v9 = v16;
        v11 = v17;

        goto LABEL_20;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v16 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v17)
    {
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v9 = v238;
      v11 = v239;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_6:
  LOBYTE(v238) = 0;
  if (__CFStringIsCF())
  {

LABEL_10:
    v9 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_20;
  }

  v12 = v7;
  v13 = String.init(_nativeStorage:)();
  if (v14)
  {
    v9 = v13;
    v11 = v14;

    goto LABEL_20;
  }

  if (![v12 length])
  {

    goto LABEL_10;
  }

  v9 = String.init(_cocoaString:)();
  v11 = v18;
LABEL_20:
  v19 = _objc_isTaggedPointer(a1);
  v20 = a1;
  v21 = v20;
  if (!v19)
  {
    goto LABEL_25;
  }

  v22 = _objc_getTaggedPointerTag(v20);
  if (!v22)
  {
    goto LABEL_33;
  }

  if (v22 == 22)
  {
    v29 = [v21 UTF8String];
    if (v29)
    {
      v30 = String.init(utf8String:)(v29);
      if (v31)
      {
LABEL_34:
        v23 = v30;
        v25 = v31;

        goto LABEL_39;
      }

      __break(1u);
LABEL_33:
      _CFIndirectTaggedPointerStringGetContents();
      v30 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v31)
      {
        [v21 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v23 = v238;
        v25 = v239;
        goto LABEL_39;
      }

      goto LABEL_34;
    }

LABEL_213:
    __break(1u);
LABEL_214:
    v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v162)
    {
      v33 = 11;
      goto LABEL_44;
    }

    v163 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8C0]);
    v165 = v164;
    if (v163 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v165 == v166)
    {
      v33 = 12;
      goto LABEL_42;
    }

    goto LABEL_221;
  }

  if (v22 != 2)
  {
LABEL_25:
    LOBYTE(v238) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v26 = v21;
      v27 = String.init(_nativeStorage:)();
      if (v28)
      {
        v23 = v27;
        v25 = v28;

        goto LABEL_39;
      }

      if ([v26 length])
      {
        v23 = String.init(_cocoaString:)();
        v25 = v32;
        goto LABEL_39;
      }
    }

    v23 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_39;
  }

  MEMORY[0x1EEE9AC00](v22);
  v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v25 = v24;

LABEL_39:
  if (v9 == v23 && v11 == v25)
  {
    v33 = 0;
LABEL_42:

    goto LABEL_44;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v33 = 0;
  if (v35)
  {
    goto LABEL_44;
  }

  v36 = *MEMORY[0x1E695D820];
  v37 = _objc_isTaggedPointer(*MEMORY[0x1E695D820]);
  v38 = v36;
  v39 = v38;
  if (v37)
  {
    v40 = _objc_getTaggedPointerTag(v38);
    if (v40)
    {
      if (v40 != 22)
      {
        if (v40 == 2)
        {
          MEMORY[0x1EEE9AC00](v40);
          v41 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v43 = v42;

          goto LABEL_64;
        }

        goto LABEL_50;
      }

      v47 = [v39 UTF8String];
      if (!v47)
      {
        __break(1u);
        goto LABEL_220;
      }

      v48 = String.init(utf8String:)(v47);
      if (v49)
      {
LABEL_59:
        v41 = v48;
        v43 = v49;

        goto LABEL_64;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v48 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v49)
    {
      [v39 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v41 = v238;
      v43 = v239;
      goto LABEL_64;
    }

    goto LABEL_59;
  }

LABEL_50:
  LOBYTE(v238) = 0;
  if (__CFStringIsCF())
  {

LABEL_54:
    v41 = 0;
    v43 = 0xE000000000000000;
    goto LABEL_64;
  }

  v44 = v39;
  v45 = String.init(_nativeStorage:)();
  if (v46)
  {
    v41 = v45;
    v43 = v46;

    goto LABEL_64;
  }

  if (![v44 length])
  {

    goto LABEL_54;
  }

  v41 = String.init(_cocoaString:)();
  v43 = v50;
LABEL_64:
  v51 = v21;
  v52 = v51;
  if (!v19)
  {
    goto LABEL_69;
  }

  v53 = _objc_getTaggedPointerTag(v51);
  if (!v53)
  {
    goto LABEL_77;
  }

  if (v53 == 22)
  {
    v60 = [v52 UTF8String];
    if (v60)
    {
      v61 = String.init(utf8String:)(v60);
      if (v62)
      {
LABEL_78:
        v54 = v61;
        v56 = v62;

        goto LABEL_83;
      }

      __break(1u);
LABEL_77:
      _CFIndirectTaggedPointerStringGetContents();
      v61 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v62)
      {
        [v52 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v54 = v238;
        v56 = v239;
        goto LABEL_83;
      }

      goto LABEL_78;
    }

LABEL_220:
    __break(1u);
LABEL_221:
    v167 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v167)
    {
      v33 = 12;
      goto LABEL_44;
    }

    v168 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8C8]);
    v170 = v169;
    if (v168 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v170 == v171)
    {
      v33 = 13;
      goto LABEL_42;
    }

    goto LABEL_228;
  }

  if (v53 != 2)
  {
LABEL_69:
    LOBYTE(v238) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v57 = v52;
      v58 = String.init(_nativeStorage:)();
      if (v59)
      {
        v54 = v58;
        v56 = v59;

        goto LABEL_83;
      }

      if ([v57 length])
      {
        v54 = String.init(_cocoaString:)();
        v56 = v63;
        goto LABEL_83;
      }
    }

    v54 = 0;
    v56 = 0xE000000000000000;
    goto LABEL_83;
  }

  MEMORY[0x1EEE9AC00](v53);
  v54 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v56 = v55;

LABEL_83:
  if (v41 == v54 && v43 == v56)
  {
    v33 = 1;
    goto LABEL_42;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v64)
  {
    v33 = 1;
    goto LABEL_44;
  }

  v65 = *MEMORY[0x1E695D828];
  v66 = _objc_isTaggedPointer(*MEMORY[0x1E695D828]);
  v67 = v65;
  v68 = v67;
  if (!v66)
  {
LABEL_93:
    LOBYTE(v238) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v73 = v68;
      v74 = String.init(_nativeStorage:)();
      if (v75)
      {
        v70 = v74;
        v72 = v75;

        goto LABEL_107;
      }

      if ([v73 length])
      {
        v70 = String.init(_cocoaString:)();
        v72 = v79;
        goto LABEL_107;
      }
    }

    v70 = 0;
    v72 = 0xE000000000000000;
    goto LABEL_107;
  }

  v69 = _objc_getTaggedPointerTag(v67);
  if (!v69)
  {
    goto LABEL_101;
  }

  if (v69 == 22)
  {
    v76 = [v68 UTF8String];
    if (!v76)
    {
      __break(1u);
      goto LABEL_227;
    }

    v77 = String.init(utf8String:)(v76);
    if (v78)
    {
LABEL_102:
      v70 = v77;
      v72 = v78;

      goto LABEL_107;
    }

    __break(1u);
LABEL_101:
    _CFIndirectTaggedPointerStringGetContents();
    v77 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v78)
    {
      [v68 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v70 = v238;
      v72 = v239;
      goto LABEL_107;
    }

    goto LABEL_102;
  }

  if (v69 != 2)
  {
    goto LABEL_93;
  }

  MEMORY[0x1EEE9AC00](v69);
  v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v72 = v71;

LABEL_107:
  v80 = v52;
  v81 = v80;
  if (!v19)
  {
    goto LABEL_112;
  }

  v82 = _objc_getTaggedPointerTag(v80);
  if (!v82)
  {
    goto LABEL_120;
  }

  if (v82 != 22)
  {
    if (v82 == 2)
    {
      MEMORY[0x1EEE9AC00](v82);
      v83 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v85 = v84;

LABEL_126:
      if (v70 == v83 && v72 == v85)
      {
        v33 = 2;
        goto LABEL_42;
      }

      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v93)
      {
        v33 = 2;
        goto LABEL_44;
      }

      v94 = *MEMORY[0x1E695D830];
      v95 = _objc_isTaggedPointer(*MEMORY[0x1E695D830]);
      v96 = v94;
      v97 = v96;
      if (!v95)
      {
        goto LABEL_136;
      }

      v98 = _objc_getTaggedPointerTag(v96);
      if (v98)
      {
        if (v98 != 22)
        {
          if (v98 == 2)
          {
            MEMORY[0x1EEE9AC00](v98);
            v99 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v101 = v100;

LABEL_150:
            v109 = v81;
            v110 = v109;
            if (!v19)
            {
LABEL_155:
              if (__CFStringIsCF())
              {

LABEL_159:
                v112 = 0;
                v114 = 0xE000000000000000;
                goto LABEL_169;
              }

              v115 = v110;
              v116 = String.init(_nativeStorage:)();
              if (v117)
              {
                v112 = v116;
                v114 = v117;

                goto LABEL_169;
              }

              if (![v115 length])
              {

                goto LABEL_159;
              }

              v112 = String.init(_cocoaString:)();
              v114 = v121;
LABEL_169:
              if (v99 == v112 && v101 == v114)
              {
                v33 = 3;
                goto LABEL_42;
              }

              v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v122)
              {
                v33 = 3;
                goto LABEL_44;
              }

              v123 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D848]);
              v125 = v124;
              if (v123 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v125 == v126)
              {
                v33 = 4;
                goto LABEL_42;
              }

              v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v127)
              {
                v33 = 4;
                goto LABEL_44;
              }

              v128 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D840]);
              v130 = v129;
              if (v128 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v130 == v131)
              {
                v33 = 5;
                goto LABEL_42;
              }

              v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v132)
              {
                v33 = 5;
                goto LABEL_44;
              }

              v133 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D860]);
              v135 = v134;
              if (v133 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v135 == v136)
              {
                v33 = 6;
                goto LABEL_42;
              }

              v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v137)
              {
                v33 = 6;
                goto LABEL_44;
              }

              v138 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D868]);
              v140 = v139;
              if (v138 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v140 == v141)
              {
                v33 = 7;
                goto LABEL_42;
              }

              v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v142)
              {
                v33 = 7;
                goto LABEL_44;
              }

              v143 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D870]);
              v145 = v144;
              if (v143 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v145 == v146)
              {
                v33 = 8;
                goto LABEL_42;
              }

              v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v147)
              {
                v33 = 8;
                goto LABEL_44;
              }

              v148 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D878]);
              v150 = v149;
              if (v148 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v150 == v151)
              {
                v33 = 9;
                goto LABEL_42;
              }

              v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v152)
              {
                v33 = 9;
                goto LABEL_44;
              }

              v153 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D880]);
              v155 = v154;
              if (v153 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v155 == v156)
              {
                v33 = 10;
                goto LABEL_42;
              }

              v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v157)
              {
                v33 = 10;
                goto LABEL_44;
              }

              v158 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D898]);
              v160 = v159;
              if (v158 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v160 == v161)
              {
                v33 = 11;
                goto LABEL_42;
              }

              goto LABEL_214;
            }

            v111 = _objc_getTaggedPointerTag(v109);
            if (!v111)
            {
              goto LABEL_163;
            }

            if (v111 != 22)
            {
              if (v111 == 2)
              {
                MEMORY[0x1EEE9AC00](v111);
                v112 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v114 = v113;

                goto LABEL_169;
              }

              goto LABEL_155;
            }

            v118 = [v110 UTF8String];
            if (v118)
            {
              v119 = String.init(utf8String:)(v118);
              if (v120)
              {
                goto LABEL_164;
              }

              __break(1u);
LABEL_163:
              _CFIndirectTaggedPointerStringGetContents();
              v119 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v120)
              {
                [v110 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v112 = v238;
                v114 = v239;
                goto LABEL_169;
              }

LABEL_164:
              v112 = v119;
              v114 = v120;

              goto LABEL_169;
            }

LABEL_234:
            __break(1u);
            goto LABEL_235;
          }

LABEL_136:
          LOBYTE(v238) = 0;
          if (__CFStringIsCF())
          {
          }

          else
          {
            v102 = v97;
            v103 = String.init(_nativeStorage:)();
            if (v104)
            {
              v99 = v103;
              v101 = v104;

              goto LABEL_150;
            }

            if ([v102 length])
            {
              v99 = String.init(_cocoaString:)();
              v101 = v108;
              goto LABEL_150;
            }
          }

          v99 = 0;
          v101 = 0xE000000000000000;
          goto LABEL_150;
        }

        v105 = [v97 UTF8String];
        if (!v105)
        {
          __break(1u);
          goto LABEL_234;
        }

        v106 = String.init(utf8String:)(v105);
        if (v107)
        {
LABEL_145:
          v99 = v106;
          v101 = v107;

          goto LABEL_150;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      v106 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v107)
      {
        [v97 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v99 = v238;
        v101 = v239;
        goto LABEL_150;
      }

      goto LABEL_145;
    }

LABEL_112:
    LOBYTE(v238) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v86 = v81;
      v87 = String.init(_nativeStorage:)();
      if (v88)
      {
        v83 = v87;
        v85 = v88;

        goto LABEL_126;
      }

      if ([v86 length])
      {
        v83 = String.init(_cocoaString:)();
        v85 = v92;
        goto LABEL_126;
      }
    }

    v83 = 0;
    v85 = 0xE000000000000000;
    goto LABEL_126;
  }

  v89 = [v81 UTF8String];
  if (v89)
  {
    v90 = String.init(utf8String:)(v89);
    if (v91)
    {
LABEL_121:
      v83 = v90;
      v85 = v91;

      goto LABEL_126;
    }

    __break(1u);
LABEL_120:
    _CFIndirectTaggedPointerStringGetContents();
    v90 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v91)
    {
      [v81 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v83 = v238;
      v85 = v239;
      goto LABEL_126;
    }

    goto LABEL_121;
  }

LABEL_227:
  __break(1u);
LABEL_228:
  v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v172)
  {
    v33 = 13;
    goto LABEL_44;
  }

  v173 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D888]);
  v175 = v174;
  if (v173 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v175 == v176)
  {
    v33 = 14;
    goto LABEL_42;
  }

LABEL_235:
  v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v177)
  {
    v33 = 14;
    goto LABEL_44;
  }

  v178 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D890]);
  v180 = v179;
  if (v178 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v180 == v181)
  {
    v33 = 15;
    goto LABEL_42;
  }

  v182 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v182)
  {
    v33 = 15;
    goto LABEL_44;
  }

  v183 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D818]);
  v185 = v184;
  if (v183 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v185 == v186)
  {
    v33 = 16;
    goto LABEL_42;
  }

  v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v187)
  {
    v33 = 16;
    goto LABEL_44;
  }

  v188 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D858]);
  v190 = v189;
  if (v188 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v190 == v191)
  {
    v33 = 17;
    goto LABEL_42;
  }

  v192 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v192)
  {
    v33 = 17;
    goto LABEL_44;
  }

  v193 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8A0]);
  v195 = v194;
  if (v193 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v195 == v196)
  {
    v33 = 18;
    goto LABEL_42;
  }

  v197 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v197)
  {
    v33 = 18;
    goto LABEL_44;
  }

  v198 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8A8]);
  v200 = v199;
  if (v198 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v200 == v201)
  {
    v33 = 19;
    goto LABEL_42;
  }

  v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v202)
  {
    v33 = 19;
    goto LABEL_44;
  }

  v203 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8B0]);
  v205 = v204;
  if (v203 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v205 == v206)
  {
    v33 = 20;
    goto LABEL_42;
  }

  v207 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v207)
  {
    v33 = 20;
    goto LABEL_44;
  }

  v208 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8B8]);
  v210 = v209;
  if (v208 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v210 == v211)
  {
    v33 = 21;
    goto LABEL_42;
  }

  v212 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v212)
  {
    v33 = 21;
    goto LABEL_44;
  }

  v213 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8D0]);
  v215 = v214;
  if (v213 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v215 == v216)
  {
    v33 = 22;
    goto LABEL_42;
  }

  v217 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v217)
  {
    v33 = 22;
    goto LABEL_44;
  }

  v218 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8D8]);
  v220 = v219;
  if (v218 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v220 == v221)
  {
    v33 = 23;
    goto LABEL_42;
  }

  v222 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v222)
  {
    v33 = 23;
    goto LABEL_44;
  }

  v223 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8E8]);
  v225 = v224;
  if (v223 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v225 == v226)
  {
    v33 = 24;
    goto LABEL_42;
  }

  v227 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v227)
  {
    v33 = 24;
    goto LABEL_44;
  }

  v228 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D838]);
  v230 = v229;
  if (v228 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v230 == v231)
  {
    v33 = 25;
    goto LABEL_42;
  }

  v232 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v232)
  {
    v33 = 25;
    goto LABEL_44;
  }

  v233 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8E0]);
  v235 = v234;
  v33 = 26;
  if (v233 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v235 == v236)
  {
    goto LABEL_42;
  }

  v237 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v237)
  {
    v33 = 26;
  }

  else
  {
    v33 = 27;
  }

LABEL_44:
  *a2 = v33;
  return result;
}

unint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA46450LL6string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5H7VGXEfU_10Foundation0nO0VXMtAQ15URLComponentSet01_qrstuvW0LLVSbTf1nnc_nTf4xndnn_n(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned __int8 a6, char a7)
{
  v10 = result;
  v11 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v13 = a2 & 0xC;
  v14 = a2;
  if (v13 == v12)
  {
    v28 = a2;
    v16 = a3;
    v17 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v28;
    a3 = v16;
    a5 = v17;
    v14 = result;
    if ((v17 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v15 = v14 >> 16;
      if (v13 != v12)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v29 = a2;
  v18 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a5) & 0xF;
  }

  if (v18 < v14 >> 16)
  {
    goto LABEL_31;
  }

  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v15 = result;
  a3 = v19;
  a2 = v29;
  if (v13 == v12)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v12)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_29;
  }

  if (v25 < a3 >> 16)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  if (__OFADD__(v15, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  v26 = result;
  if ((v15 + result) < v15)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v10)
  {
    v27 = (v15 + v10);
  }

  else
  {
    v27 = 0;
  }

  return _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v27, v26, a6, a7 & 1);
}

uint64_t storeEnumTagSinglePayload for Measurement(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id @objc static NSLocale._preferredLanguagesForCurrentUser(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a3;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
    v3 = a3;
  }

  LocaleCache.preferredLanguages(forCurrentUser:)(v3);
  v4 = _ContiguousArrayBuffer._asCocoaArray()();

  return v4;
}

void *_NSKVONotifyingCreateInfoWithOriginalClass(Class cls)
{
  v13 = *MEMORY[0x1E69E9840];
  if (_NSKeyValueObserverRegistrationEnableLockingAssertions == 1)
  {
    os_unfair_lock_assert_owner(&_NSKeyValueObserverRegistrationLock);
  }

  Name = class_getName(cls);
  if (strchr(Name, 46))
  {
    v3 = @"..NSKVONotifying_%s";
  }

  else
  {
    v3 = @"NSKVONotifying_%s";
  }

  v4 = [NSString stringWithFormat:v3, Name];
  ClassPair = objc_allocateClassPair(cls, [(NSString *)v4 UTF8String], 0x30uLL);
  if (ClassPair)
  {
    v6 = ClassPair;
    objc_registerClassPair(ClassPair);
    IndexedIvars = object_getIndexedIvars(v6);
    *IndexedIvars = cls;
    IndexedIvars[1] = v6;
    IndexedIvars[2] = CFSetCreateMutable(0, 0, MEMORY[0x1E695E530]);
    IndexedIvars[3] = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    IndexedIvars[4] = 0;
    if (qword_1ED43F6A0 != -1)
    {
      dispatch_once(&qword_1ED43F6A0, &__block_literal_global_20);
    }

    v8 = class_getMethodImplementation(*IndexedIvars, sel_willChangeValueForKey_) != qword_1ED43F6A8 || class_getMethodImplementation(*IndexedIvars, sel_didChangeValueForKey_) != qword_1ED43F6B0;
    *(IndexedIvars + 40) = v8;
    NSKVONotifyingSetMethodImplementation(IndexedIvars, sel__isKVOA, NSKVOIsAutonotifying, 0);
    NSKVONotifyingSetMethodImplementation(IndexedIvars, sel_dealloc, NSKVODeallocate, 0);
    NSKVONotifyingSetMethodImplementation(IndexedIvars, sel_class, NSKVOClass, 0);
  }

  else
  {
    if (qword_1ED43F698 != -1)
    {
      dispatch_once(&qword_1ED43F698, &__block_literal_global_15);
    }

    v9 = qword_1ED43F690;
    if (os_log_type_enabled(qword_1ED43F690, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "KVO failed to allocate class pair for name %{public}@, automatic key-value observing will not work for this class", buf, 0xCu);
    }

    return 0;
  }

  return IndexedIvars;
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static _LocaleICU._identifierCapturingPreferences(forIdentifier:calendarIdentifier:preferences:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _OWORD *a4)
{
  v5 = a4[5];
  v6 = a4[7];
  v41 = a4[6];
  v42[0] = v6;
  *(v42 + 12) = *(a4 + 124);
  v7 = a4[1];
  v8 = a4[3];
  v37 = a4[2];
  v38 = v8;
  v9 = a4[3];
  v10 = a4[5];
  v39 = a4[4];
  v40 = v10;
  v11 = a4[1];
  v36[0] = *a4;
  v36[1] = v11;
  v12 = a4[7];
  v49 = v41;
  *v50 = v12;
  *&v50[12] = *(a4 + 124);
  v45 = v37;
  v46 = v9;
  v47 = v39;
  v48 = v5;
  v13 = *a3;
  v43 = v36[0];
  v44 = v7;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v43) == 1)
  {

    return a1;
  }

  outlined init with copy of FloatingPointRoundingRule?(v36, __src, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
  Locale.Components.init(identifier:)(__src);
  v14 = *(&v45 + 1);
  if (*(&v45 + 1))
  {
    v15 = v45;
    v16 = String.lowercased()();
    v17 = __src[13];
    v18 = __src[14];
    v19 = __src[15];
    v20 = __src[16];

    outlined consume of Locale.LanguageCode?(v17, v18, v19, v20);
    __src[13] = v15;
    __src[14] = v14;
    *&__src[15] = v16;
  }

  v21 = v46;
  if (!v46 || !*(v46 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v23 & 1) == 0))
  {
LABEL_12:
    v30[6] = v49;
    v30[7] = *v50;
    *(&v30[7] + 12) = *&v50[12];
    v30[2] = v45;
    v30[3] = v46;
    v30[4] = v47;
    v30[5] = v48;
    v30[0] = v43;
    v30[1] = v44;
    LocalePreferences.measurementSystem.getter(&v31);
    v25 = v32;
    if (v32)
    {
      v27 = v33;
      v26 = v34;
      v28 = v31;
      outlined consume of Locale.LanguageCode?(__src[26], __src[27], __src[28], __src[29]);
      __src[26] = v28;
      __src[27] = v25;
      __src[28] = v27;
      __src[29] = v26;
    }

    if (v50[26] == 2 || (v50[26] & 1) == 0)
    {
      if (v50[27] == 2 || (v50[27] & 1) == 0)
      {
        goto LABEL_21;
      }

      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    BYTE1(__src[25]) = v29;
LABEL_21:
    memcpy(v30, __src, sizeof(v30));
    a1 = Locale.Components.icuIdentifier.getter();
    outlined destroy of TermOfAddress?(v36, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
    memcpy(v30, __src, sizeof(v30));
    outlined destroy of Locale.Components(v30);
    return a1;
  }

  v24 = *(*(v21 + 56) + 8 * result);
  if (v24 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v24 <= 0x7FFFFFFF)
  {
    if ((v24 - 8) >= 0xFFFFFFFFFFFFFFF9)
    {
      LOBYTE(__src[25]) = outlined read-only object #0 of one-time initialization function for weekdays[v24 + 31];
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type POSIXError and conformance POSIXError()
{
  result = lazy protocol witness table cache variable for type POSIXError and conformance POSIXError;
  if (!lazy protocol witness table cache variable for type POSIXError and conformance POSIXError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type POSIXError and conformance POSIXError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type POSIXError and conformance POSIXError;
  if (!lazy protocol witness table cache variable for type POSIXError and conformance POSIXError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type POSIXError and conformance POSIXError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type POSIXError and conformance POSIXError;
  if (!lazy protocol witness table cache variable for type POSIXError and conformance POSIXError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type POSIXError and conformance POSIXError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type POSIXError and conformance POSIXError;
  if (!lazy protocol witness table cache variable for type POSIXError and conformance POSIXError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type POSIXError and conformance POSIXError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type POSIXError and conformance POSIXError;
  if (!lazy protocol witness table cache variable for type POSIXError and conformance POSIXError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type POSIXError and conformance POSIXError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type POSIXError and conformance POSIXError;
  if (!lazy protocol witness table cache variable for type POSIXError and conformance POSIXError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type POSIXError and conformance POSIXError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalePreferences(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 140))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

objc_method *NSKVONotifyingSetMethodImplementation(Class *a1, const char *a2, void (*a3)(void), const void *a4)
{
  result = class_getInstanceMethod(*a1, a2);
  if (result)
  {
    TypeEncoding = method_getTypeEncoding(result);
    if (a4)
    {
      os_unfair_recursive_lock_lock_with_options();
      CFDictionarySetValue(a1[3], a2, a4);
      os_unfair_recursive_lock_unlock();
    }

    v10 = a1[1];

    return class_addMethod(v10, a2, a3, TypeEncoding);
  }

  return result;
}

id closure #2 in LocaleCache.currentNSLocale()@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    *a1 = a2;
    v5 = a2;
    v4 = 0;
  }

  *a3 = v5;
  return v4;
}

void *NSProcessInfoNotifyPowerState(int a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  result = notify_get_state(a1, v3);
  if (result)
  {
    atomic_exchange(&_NSProcessInfoGetPowerState_powerState, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v2 = v3[0] != 0;
    result = [_NSSwiftProcessInfo updatePowerState:?];
    if (atomic_exchange(&_NSProcessInfoGetPowerState_powerState, v2) != v2)
    {
      return [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:" object:@"NSProcessInfoPowerStateDidChangeNotification", +[NSProcessInfo processInfo]];
    }
  }

  return result;
}

void *_LocaleICU.init(identifier:prefs:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v56 = *MEMORY[0x1E69E9840];
  v5 = a3[7];
  v54 = a3[6];
  v55[0] = v5;
  *(v55 + 12) = *(a3 + 124);
  v6 = a3[3];
  v50 = a3[2];
  v51 = v6;
  v7 = a3[5];
  v52 = a3[4];
  v53 = v7;
  v8 = a3[1];
  v48 = *a3;
  v49 = v8;
  v9 = *MEMORY[0x1E695E4A8];
  v10 = String._bridgeToObjectiveCImpl()();

  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(v9, v10);
  swift_unknownObjectRelease();
  if (!CanonicalLocaleIdentifierFromString)
  {
    goto LABEL_11;
  }

  isTaggedPointer = _objc_isTaggedPointer(CanonicalLocaleIdentifierFromString);
  v13 = CanonicalLocaleIdentifierFromString;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  if (!TaggedPointerTag)
  {
    goto LABEL_15;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v16 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v18 = v17;

LABEL_22:
      v26 = v52;
      *(v3 + 136) = v53;
      v27 = v55[0];
      *(v3 + 152) = v54;
      *(v3 + 168) = v27;
      *(v3 + 180) = *(v55 + 12);
      v28 = v48;
      *(v3 + 72) = v49;
      v29 = v51;
      *(v3 + 88) = v50;
      *(v3 + 104) = v29;
      *(v3 + 120) = v26;
      *(v3 + 16) = v16;
      *(v3 + 24) = v18;
      *(v3 + 56) = v28;

      outlined init with copy of FloatingPointRoundingRule?(&v48, v46, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
      static _LocaleICU._calendarIdentifier(forIdentifier:)(v16, v18, v46);

      v46[5] = v53;
      v46[6] = v54;
      v47[0] = v55[0];
      *(v47 + 12) = *(v55 + 12);
      v30 = v48;
      v46[1] = v49;
      v46[2] = v50;
      v46[3] = v51;
      v46[4] = v52;
      v31 = v46[0];
      *(v3 + 48) = v46[0];
      v32 = *(v3 + 16);
      v33 = v4[3];
      LOBYTE(v43[0]) = v31;
      v46[0] = v30;

      v34 = specialized static _LocaleICU._identifierCapturingPreferences(forIdentifier:calendarIdentifier:preferences:)(v32, v33, v43, v46);
      v36 = v35;

      outlined destroy of TermOfAddress?(&v48, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
      v4[4] = v34;
      v4[5] = v36;
      memset(&v45[7], 0, 49);
      memset(&v44[6], 0, 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA10_LocaleICUC0C0V_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA10_LocaleICUC0C0V_GMR);
      v37 = swift_allocObject();
      *(v37 + 536) = 0;
      *(v37 + 16) = xmmword_1812187D0;
      *(v37 + 32) = 0u;
      *(v37 + 48) = 0u;
      *(v37 + 64) = 0u;
      *(v37 + 80) = 0u;
      *(v37 + 96) = 0u;
      *(v37 + 112) = 0u;
      *(v37 + 128) = 0u;
      *(v37 + 144) = 0;
      *(v37 + 152) = 1;
      *(v37 + 160) = 0u;
      *(v37 + 176) = 0u;
      *(v37 + 192) = 0u;
      *(v37 + 208) = 0;
      *(v37 + 216) = 7;
      v38 = *v45;
      v39 = *&v45[16];
      v40 = *&v45[32];
      *(v37 + 265) = *&v45[48];
      *(v37 + 249) = v40;
      *(v37 + 233) = v39;
      *(v37 + 217) = v38;
      *(v37 + 273) = 1;
      *(v37 + 278) = WORD2(v43[0]);
      *(v37 + 274) = v43[0];
      *(v37 + 280) = 0;
      *(v37 + 288) = 1025;
      v41 = *&v44[16];
      *(v37 + 290) = *v44;
      *(v37 + 306) = v41;
      *(v37 + 320) = *&v44[30];
      *(v37 + 328) = 2;
      *(v37 + 329) = v46[0];
      *(v37 + 332) = *(v46 + 3);
      *(v37 + 336) = xmmword_1812187D0;
      *(v37 + 352) = 0;
      *(v37 + 360) = 0;
      *(v37 + 368) = 0;
      *(v37 + 376) = 1;
      *(v37 + 384) = 0;
      *(v37 + 392) = 0;
      *(v37 + 400) = 1;
      *(v37 + 408) = 0;
      *(v37 + 416) = 0;
      *(v37 + 424) = 1;
      *(v37 + 432) = 0;
      *(v37 + 440) = 0;
      v42 = MEMORY[0x1E69E7CC8];
      *(v37 + 448) = MEMORY[0x1E69E7CC8];
      *(v37 + 456) = v42;
      *(v37 + 464) = v42;
      *(v37 + 472) = v42;
      *(v37 + 480) = v42;
      *(v37 + 488) = v42;
      *(v37 + 496) = v42;
      *(v37 + 504) = v42;
      *(v37 + 512) = v42;
      *(v37 + 520) = v42;
      *(v37 + 528) = v42;
      v4[25] = v37;
      return v4;
    }

LABEL_7:
    LOBYTE(v43[0]) = 0;
    *&v46[0] = 0;
    if (__CFStringIsCF())
    {

LABEL_11:
      v16 = 0;
      v18 = 0xE000000000000000;
      goto LABEL_22;
    }

    v19 = v14;
    v20 = String.init(_nativeStorage:)();
    if (v21)
    {
      v16 = v20;
      v18 = v21;

      goto LABEL_22;
    }

    *&v46[0] = [(__CFString *)v19 length];
    if (!*&v46[0])
    {

      goto LABEL_11;
    }

    v16 = String.init(_cocoaString:)();
    v18 = v25;
LABEL_21:

    goto LABEL_22;
  }

  result = [(__CFString *)v14 UTF8String];
  if (result)
  {
    v23 = String.init(utf8String:)(result);
    if (v24)
    {
LABEL_16:
      v16 = v23;
      v18 = v24;

      goto LABEL_21;
    }

    __break(1u);
LABEL_15:
    _CFIndirectTaggedPointerStringGetContents();
    v23 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v24)
    {
      [(__CFString *)v14 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v16 = v43[0];
      v18 = v43[1];
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

double _s10Foundation17LocalePreferencesVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1812187D0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  *(a1 + 124) = 0u;
  return result;
}

uint64_t specialized static Locale.keywordValue(identifier:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  String.utf8CString.getter();
  String.utf8CString.getter();
  KeywordValue = uloc_getKeywordValue();

  if (KeywordValue <= 0)
  {
    return 0;
  }

  v6[KeywordValue] = 0;
  return MEMORY[0x1865CAEB0](v6);
}

Foundation::Calendar::Identifier_optional __swiftcall Calendar.Identifier.init(identifierString:)(Swift::String identifierString)
{
  object = identifierString._object;
  countAndFlagsBits = identifierString._countAndFlagsBits;
  v4 = v1;
  if (identifierString._countAndFlagsBits == 0x6169726F67657267 && identifierString._object == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 0;
  }

  else if (countAndFlagsBits == 0x7473696864647562 && object == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 1;
  }

  else if (countAndFlagsBits == 0x6573656E696863 && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 2;
  }

  else if (countAndFlagsBits == 0x636974706F63 && object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 3;
  }

  else if (countAndFlagsBits == 0x6369706F69687465 && object == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 4;
  }

  else if (countAndFlagsBits == 0x61616F69687465 && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || countAndFlagsBits == 0xD000000000000013 && 0x800000018147FB50 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 5;
  }

  else if (countAndFlagsBits == 0x776572626568 && object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 6;
  }

  else if (countAndFlagsBits == 0x313036386F7369 && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 7;
  }

  else if (countAndFlagsBits == 0x6E6169646E69 && object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 8;
  }

  else if (countAndFlagsBits == 0x63696D616C7369 && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 9;
  }

  else if (countAndFlagsBits == 0x2D63696D616C7369 && object == 0xED00006C69766963 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 10;
  }

  else if (countAndFlagsBits == 0x6573656E6170616ALL && object == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 11;
  }

  else if (countAndFlagsBits == 0x6E616973726570 && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 12;
  }

  else if (countAndFlagsBits == 6516594 && object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 13;
  }

  else if (countAndFlagsBits == 0x2D63696D616C7369 && object == 0xEC000000616C6274 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 14;
  }

  else if (countAndFlagsBits == 0xD000000000000010 && 0x800000018147FB70 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 15;
  }

  else if (countAndFlagsBits == 0x616C676E6162 && object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 16;
  }

  else if (countAndFlagsBits == 0x69746172616A7567 && object == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 17;
  }

  else if (countAndFlagsBits == 0x6164616E6E616BLL && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 18;
  }

  else if (countAndFlagsBits == 0x616C6179616C616DLL && object == 0xE90000000000006DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 19;
  }

  else if (countAndFlagsBits == 0x6968746172616DLL && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 20;
  }

  else if (countAndFlagsBits == 1634296943 && object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 21;
  }

  else if (countAndFlagsBits == 0x6C696D6174 && object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 22;
  }

  else if (countAndFlagsBits == 0x7567756C6574 && object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 23;
  }

  else if (countAndFlagsBits == 0x6D61726B6976 && object == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 24;
  }

  else if (countAndFlagsBits == 0x69676E6164 && object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 25;
  }

  else if (countAndFlagsBits == 0x656D616E74656976 && object == 0xEA00000000006573)
  {

    v6 = 26;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      v6 = 26;
    }

    else
    {
      v6 = 27;
    }
  }

  *v4 = v6;
  return result;
}

void *_NSFrameworkPathFromLibraryPath(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v1 = [objc_msgSend(a1 _stringByResolvingSymlinksInPathUsingCache:{1), "stringByDeletingLastPathComponent"}];
  v2 = [v1 pathExtension];
  if ([v2 compare:@"framework" options:0 range:{0, objc_msgSend(v2, "length")}])
  {
    v3 = [v1 stringByDeletingLastPathComponent];
    v4 = [v3 lastPathComponent];
    if ([v4 compare:@"Versions" options:0 range:{0, objc_msgSend(v4, "length")}])
    {
      return 0;
    }

    v1 = [v3 stringByDeletingLastPathComponent];
    v5 = [v1 pathExtension];
    if ([v5 compare:@"framework" options:0 range:{0, objc_msgSend(v5, "length")}])
    {
      if ([v5 compare:@"axbundle" options:0 range:{0, objc_msgSend(v5, "length")}])
      {
        return 0;
      }
    }
  }

  memset(&v7, 0, sizeof(v7));
  if (![v1 getFileSystemRepresentation:v8 maxLength:1024] || stat(v8, &v7))
  {
    return 0;
  }

  if (access(v8, 4))
  {
    getpid();
    sandbox_check();
    return 0;
  }

  if ((v7.st_mode & 0xF000) != 0x4000)
  {
    return 0;
  }

  return v1;
}

unint64_t _NSProcessInfoGetPowerState()
{
  if (_NSProcessInfoGetPowerState_once != -1)
  {
    dispatch_once(&_NSProcessInfoGetPowerState_once, &__block_literal_global_166);
  }

  return atomic_load(&_NSProcessInfoGetPowerState_powerState);
}

id protocol witness for Error._getEmbeddedNSError() in conformance CocoaError()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - a2;
  if (a3 == a2)
  {
    v5 = *(result + 16);
LABEL_7:
    if (v4 == v5)
    {
      return 1;
    }

    else if (v4 >= v5)
    {
      __break(1u);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = *(result + 16);
    v7 = result + 32;
    while (1)
    {
      result = v5 == v6;
      if (v5 == v6 || *(a4 + a2 + v6) != *(v7 + v6))
      {
        break;
      }

      if (v4 == ++v6)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t ___writeJSONObject_block_invoke(uint64_t result, CFStringRef theString, __CFString *a3, _BYTE *a4)
{
  v7 = result;
  v19 = *MEMORY[0x1E69E9840];
  v8 = *(result + 40);
  if (*(*(v8 + 8) + 24) == 1 && (*(result + 56) & 1) != 0)
  {
    result = _appendBytes(*(result + 64), 2 * *(result + 72) + 2, *(result + 32), 2 * *(result + 72));
    v8 = v7[5];
    if ((result & 1) == 0)
    {
      *(*(v8 + 8) + 24) = 0;
      v8 = v7[5];
    }
  }

  if (*(*(v8 + 8) + 24) == 1)
  {
    result = _writeJSONString(v7[4], theString, v7[7]);
    v8 = v7[5];
    if ((result & 1) == 0)
    {
      *(*(v8 + 8) + 24) = 0;
      v8 = v7[5];
    }
  }

  if (*(*(v8 + 8) + 24) == 1 && (v7[7] & 1) != 0)
  {
    v9 = v7[4];
    __src = 32;
    result = _appendBytes(&__src, 1uLL, v9, 32);
    v8 = v7[5];
    if ((result & 1) == 0)
    {
      *(*(v8 + 8) + 24) = 0;
      v8 = v7[5];
    }
  }

  if (*(*(v8 + 8) + 24) == 1)
  {
    v10 = v7[4];
    v17 = 58;
    result = _appendBytes(&v17, 1uLL, v10, 58);
    v8 = v7[5];
    if ((result & 1) == 0)
    {
      *(*(v8 + 8) + 24) = 0;
      v8 = v7[5];
    }
  }

  if (*(*(v8 + 8) + 24) == 1 && (v7[7] & 1) != 0)
  {
    v11 = v7[4];
    v16 = 32;
    result = _appendBytes(&v16, 1uLL, v11, 32);
    v8 = v7[5];
    if ((result & 1) == 0)
    {
      *(*(v8 + 8) + 24) = 0;
      v8 = v7[5];
    }
  }

  if (*(*(v8 + 8) + 24) == 1)
  {
    result = _writeJSONValue(v7[4], a3);
    v8 = v7[5];
    if ((result & 1) == 0)
    {
      *(*(v8 + 8) + 24) = 0;
      v8 = v7[5];
    }
  }

  if (*(*(v8 + 8) + 24) == 1 && *(*(v7[6] + 8) + 24) < v7[10])
  {
    v12 = v7[4];
    v15 = 44;
    result = _appendBytes(&v15, 1uLL, v12, 44);
    if ((result & 1) == 0)
    {
      *(*(v7[5] + 8) + 24) = 0;
    }

    v8 = v7[5];
    if (*(*(v8 + 8) + 24) == 1 && (v7[7] & 1) != 0)
    {
      v13 = v7[4];
      v14 = 10;
      result = _appendBytes(&v14, 1uLL, v13, 10);
      v8 = v7[5];
      if ((result & 1) == 0)
      {
        *(*(v8 + 8) + 24) = 0;
        v8 = v7[5];
      }
    }
  }

  if (*(*(v8 + 8) + 24))
  {
    ++*(*(v7[6] + 8) + 24);
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

NSObject *oq_synthesize_backing_queue(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 184);
  if (!v1)
  {
    v3 = atomic_load((a1 + 502));
    if (v3)
    {
      v4 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], v3, 0);
    }

    else
    {
      v4 = MEMORY[0x1E69E96A8];
    }

    v5 = atomic_load((a1 + 501));
    if (v5)
    {
      v4 = dispatch_queue_attr_make_with_overcommit();
    }

    v1 = dispatch_queue_create(0, v4);
    if (*(a1 + 200))
    {
      goto LABEL_21;
    }

    v8[0] = 0;
    [*(a1 + 192) getBytes:a1 + 200 maxLength:299 usedLength:v8 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(*(a1 + 192), "length"), 0}];
    *(a1 + 200 + v8[0]) = 0;
    __strlcat_chk();
    v6 = atomic_load((a1 + 502));
    if (v6 <= 16)
    {
      if (v6 && v6 != 5 && v6 != 9)
      {
        goto LABEL_20;
      }
    }

    else if (v6 > 24)
    {
      if (v6 != 33 && v6 != 25)
      {
        goto LABEL_20;
      }
    }

    else if (v6 != 17 && v6 != 21)
    {
      goto LABEL_20;
    }

    __strlcat_chk();
LABEL_20:
    __strlcat_chk();
LABEL_21:
    dispatch_queue_set_label_nocopy();
    *(a1 + 184) = v1;
  }

  dispatch_retain(v1);
  return v1;
}

id _NSFileManagerBridge.createDirectory(at:withIntermediateDirectories:attributes:)(uint64_t *a1, char a2, uint64_t a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 144))(ObjectType, v4);
  v7 = *(v4 + 240);
  if ((v6 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v7(ObjectType, v4);
    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveCImpl()();

    v17 = (*(v4 + 432))(ObjectType, v4);
    swift_unknownObjectRelease();
    v18 = [v15 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
LABEL_10:
    v18;
    swift_unknownObjectRelease();

    return swift_willThrow();
  }

  v8 = (v7)(ObjectType, v4);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    swift_unknownObjectRetain();
    v7(ObjectType, v4);
    v19 = objc_opt_self();
    v20 = String._bridgeToObjectiveCImpl()();

    v17 = (*(v4 + 432))(ObjectType, v4);
    swift_unknownObjectRelease();
    v18 = [v19 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    goto LABEL_10;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = String._bridgeToObjectiveCImpl()();

    if (a3)
    {
      type metadata accessor for NSFileAttributeKey(0);
      lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();

      v14 = _NativeDictionary.bridged()();
    }

    else
    {
      v14 = 0;
    }

    v25[0] = 0;
    v22 = [v12 createDirectoryAtPath:v13 withIntermediateDirectories:a2 & 1 attributes:v14 error:v25];

    swift_unknownObjectRelease();
    if (v22)
    {
      return v25[0];
    }

    if (v25[0])
    {
      v25[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v23 = _nilObjCError;
    }

    return swift_willThrow();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _appendBytes@<X0>(char *__src@<X1>, size_t __n@<X2>, uint64_t a3@<X0>, char a4@<W8>)
{
  v4 = __n;
  v7 = *(a3 + 16);
  if (v7 == 1)
  {
    v12 = *(a3 + 32);
    v11 = *(a3 + 40);
    if (v11 + __n >= v12)
    {
      if (v11 + __n <= 2 * v12)
      {
        v14 = 2 * v12;
      }

      else
      {
        v14 = v11 + __n;
      }

      v13 = MEMORY[0x1865CFE30](*(a3 + 24), v14, 2178024471, 0);
      *(a3 + 24) = v13;
      *(a3 + 32) = v14;
      v11 = *(a3 + 40);
    }

    else
    {
      v13 = *(a3 + 24);
    }

    memcpy((v13 + v11), __src, v4);
    *(a3 + 40) += v4;
    goto LABEL_18;
  }

  if (v7 != 2)
  {
    return a4 & 1;
  }

  if (!__n)
  {
LABEL_18:
    a4 = 1;
    return a4 & 1;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    while (1)
    {
      v10 = [*(a3 + 8) write:&__src[v8] maxLength:v4];
      if (v10 < 0)
      {
        v15 = MEMORY[0x1E695E0F8];
        v16 = 512;
        goto LABEL_21;
      }

      if (!v10)
      {
        break;
      }

      v8 += v10;
      *(a3 + 72) += v10;
      a4 = 1;
      v4 -= v10;
      if (!v4)
      {
        return a4 & 1;
      }
    }

    if (++v9 >= 0xBu)
    {
      break;
    }

    pthread_yield_np();
  }

  v15 = MEMORY[0x1E695E0F8];
  v16 = 640;
LABEL_21:
  [a3 setFailure:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", v16, v15)}];
  a4 = 0;
  return a4 & 1;
}

void __swiftcall URL._bridgeToObjectiveC()(NSURL *__return_ptr retstr)
{
  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  (*(v2 + 432))(ObjectType, v2);
}

id @objc static NSLocale._autoupdatingCurrent.getter(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

BOOL specialized Sequence<>.starts<A>(with:)(_BOOL8 result, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = 0;
      v4 = *(result + 16);
      do
      {
        v5 = v4 == v3;
        if (v4 == v3 || *(a2 + v3) != *(result + 32 + v3))
        {
          return v5;
        }
      }

      while (a3 != ++v3);
    }
  }

  else
  {
    a3 = 0;
  }

  v6 = *(result + 16);
  if (a3 == v6)
  {
    return 1;
  }

  if (a3 < v6)
  {
    return 0;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy16_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void ___explicitSubclassExceptions_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], _explicitSubclassExceptionKeys, _explicitSubclassExceptionObjects, 20, 0, 0);
  qword_1ED43F5A0 = CFDictionaryCreateMutableCopy(v0, 21, v1);
  CFRelease(v1);
  v2 = qword_1ED43F5A0;
  v3 = NSClassFromString(@"NSSharedKeyDictionary");
  CFDictionaryAddValue(v2, v3, MEMORY[0x1E695DF90]);
  v4 = qword_1ED43F5A0;
  v5 = NSClassFromString(@"__NSCFString");
  CFDictionaryAddValue(v4, v5, NSMutableString);
  v6 = qword_1ED43F5A0;
  v7 = NSClassFromString(@"__NSCFConstantString");

  CFDictionaryAddValue(v6, v7, NSMutableString);
}

uint64_t static Locale.languageIdentifierWithScriptCodeForLocaleIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  v191 = *MEMORY[0x1E69E9840];
  String.utf8CString.getter();
  v2 = uloc_addLikelySubtags();

  if (v2 < 1)
  {
    return 0;
  }

  v190[v2] = 0;
  MEMORY[0x1865CAEB0](v190);
  if (!v3)
  {
    return 0;
  }

  memset(v189, 0, 96);
  outlined destroy of Locale.Language.Components(v189);
  LODWORD(v137._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v5 = 0;
  v6 = 0;
  if (Language > 0)
  {
    v188[Language] = 0;
    v5 = MEMORY[0x1865CAEB0](v188);
    v6 = v7;
  }

  LODWORD(v137._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Script = uloc_getScript();

  v9 = 0;
  v10 = 0;
  if (Script > 0)
  {
    v187[Script] = 0;
    v9 = MEMORY[0x1865CAEB0](v187);
    v10 = v11;
  }

  LODWORD(v137._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Country = uloc_getCountry();

  v13 = 0;
  v14 = 0;
  if (Country > 0)
  {
    v186[Country] = 0;
    v13 = MEMORY[0x1865CAEB0](v186, 0);
  }

  v126 = v14;
  if (!v6)
  {
    v5 = 0;
    object = 0;
    countAndFlagsBits = 0;
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_13:
    v9 = 0;
    v128 = 0;
    v129 = 0;
    goto LABEL_14;
  }

  v15 = String.lowercased()();
  object = v15._object;
  countAndFlagsBits = v15._countAndFlagsBits;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_11:
  v137._countAndFlagsBits = v9;
  v137._object = v10;

  String.init<A>(_:)();
  v16 = String._capitalized()();
  v128 = v16._object;
  v129 = v16._countAndFlagsBits;

LABEL_14:
  v123 = v10;
  v127 = v6;
  if (v126)
  {
    v17 = String.uppercased()();
    v18 = v17._countAndFlagsBits;
    v19 = v17._object;
    v20 = v13;
  }

  else
  {
    v20 = 0;
    v18 = 0;
    v19 = 0;
  }

  v113 = v19;
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  v185[0] = v5;
  v185[1] = v127;
  v185[2] = countAndFlagsBits;
  v185[3] = object;
  v185[4] = v9;
  v185[5] = v123;
  v185[6] = v129;
  v185[7] = v128;
  v185[8] = v20;
  v185[9] = v126;
  v185[10] = v18;
  v185[11] = v19;
  outlined copy of Locale.LanguageCode?(v5, v127, countAndFlagsBits, object);
  outlined copy of Locale.LanguageCode?(v9, v123, v129, v128);
  v118 = v20;
  outlined copy of Locale.LanguageCode?(v20, v126, v18, v19);
  outlined destroy of Locale.Language.Components(v185);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  LODWORD(v137._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Variant = uloc_getVariant();

  v22 = v18;
  if (Variant > 0 && (v184[Variant] = 0, v23 = MEMORY[0x1865CAEB0](v184), v24))
  {
    v116 = v24;
    v117 = v23;
    v25 = String.lowercased()();
    v114 = v25._object;
    v115 = v25._countAndFlagsBits;
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  }

  else
  {
    v116 = 0;
    v117 = 0;
    v114 = 0;
    v115 = 0;
  }

  String.utf8CString.getter();
  v26 = uloc_openKeywords();

  v121 = v5;
  v119 = v9;
  if (!v26)
  {

    v40 = 0;
    v120 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v36 = 0;
    v35 = 0;
    v130 = 0;
    v131 = 0;
    v46 = 0;
    v45 = 0;
    v37 = 0;
    v38 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v51 = 0;
    LOBYTE(v56) = 4;
    v39 = 7;
    v55 = 27;
    goto LABEL_24;
  }

  v88 = v18;
  type metadata accessor for ICU.Enumerator();
  *(swift_allocObject() + 16) = v26;
  LODWORD(v137._countAndFlagsBits) = 0;
  v27 = uenum_next();
  v51 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v109 = 0;
  v110 = 0;
  v120 = 0;
  v26 = 0;
  v55 = 27;
  v108 = 7;
  v56 = 4;
  while (v27)
  {
    v122 = v52;
    v132 = v53;
    v57 = String.init(cString:)();
    static Locale.legacyKey(forKey:)(v57, v58, &v137._countAndFlagsBits);

    v59 = v137._object;
    if (v137._object)
    {
      v60 = v56;
      v111 = v51;
      v112 = v26;
      v61 = v137._countAndFlagsBits;
      LODWORD(v137._countAndFlagsBits) = 0;
      String.utf8CString.getter();
      String.utf8CString.getter();
      KeywordValue = uloc_getKeywordValue();

      if (SLODWORD(v137._countAndFlagsBits) > 0 || KeywordValue <= 0)
      {
        goto LABEL_42;
      }

      v136[KeywordValue] = 0;
      v63 = MEMORY[0x1865CAEB0](v136);
      if (!v64)
      {

        v52 = v122;
        v26 = v112;
        v56 = v60;
        goto LABEL_31;
      }

      v65 = v63;
      v107 = v64;
      v56 = v60;
      if (v61 == 0x7261646E656C6163 && v59 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v66._countAndFlagsBits = v65;
        v66._object = v107;
        Calendar.Identifier.init(identifierString:)(v66);
        v55 = v137._countAndFlagsBits;
      }

      else
      {
        if (v61 == 0x6F6974616C6C6F63 && v59 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v67 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v109, v112, v120, v110);
          v109 = v65;
          v110 = v67._object;
          v120 = v67._countAndFlagsBits;
          v26 = v107;
          v52 = v122;
          v51 = v111;
          goto LABEL_31;
        }

        if (v61 == 0x79636E6572727563 && v59 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v68 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v106, v105, v104, v103);
          v105 = v107;
          v106 = v65;
          v103 = v68._object;
          v104 = v68._countAndFlagsBits;
        }

        else if (v61 == 0x737265626D756ELL && v59 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v69 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v102, v101, v100, v99);
          v101 = v107;
          v102 = v65;
          v99 = v69._object;
          v100 = v69._countAndFlagsBits;
        }

        else
        {
          if ((v61 != 30566 || v59 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (v61 == 0x7372756F68 && v59 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v70._countAndFlagsBits = v65;
              v70._object = v107;
              v71 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of static Locale.languageIdentifierWithScriptCodeForLocaleIdentifier(_:), v70);

              if (v71 > 1)
              {
                if (v71 == 2)
                {
                  v56 = 2;
                  goto LABEL_85;
                }

                if (v71 == 3)
                {
                  v56 = 3;
                  goto LABEL_85;
                }
              }

              else
              {
                if (!v71)
                {
                  v56 = 0;
                  goto LABEL_85;
                }

                if (v71 == 1)
                {
                  v56 = 1;
LABEL_85:
                  v52 = v122;
                  v51 = v111;
                  v26 = v112;
                  goto LABEL_31;
                }
              }

              v56 = 4;
              goto LABEL_85;
            }

            if (v61 == 0x6572757361656DLL && v59 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (v65 == 0x6C61697265706D69 && v107 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                if (one-time initialization token for uk != -1)
                {
                  swift_once();
                }

                v73 = static Locale.MeasurementSystem.uk;
                v72 = *algn_1EA7AFAD8;
                v74 = *(&xmmword_1EA7AFAE0 + 1);
                v75 = xmmword_1EA7AFAE0;

                outlined consume of Locale.LanguageCode?(v54, v132, v122, v98);
                v54 = v73;
                v132 = v72;
                v52 = v75;
              }

              else
              {
                v81 = String.lowercased()();
                v52 = v81._countAndFlagsBits;
                v74 = v81._object;
                outlined consume of Locale.LanguageCode?(v54, v132, v122, v98);
                v54 = v65;
                v132 = v107;
              }

              v98 = v74;
LABEL_44:
              v51 = v111;
              v26 = v112;
LABEL_45:
              v56 = v60;
              goto LABEL_31;
            }

            if (v61 == 26482 && v59 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (String.count.getter() > 2)
              {
                specialized Collection.prefix(_:)(2, v65, v107);

                v76 = Substring.uppercased()();

                v137 = v76;
                v77 = String.init<A>(_:)();
                v79 = v78;
                v80 = String.uppercased()();
                outlined consume of Locale.LanguageCode?(v97, v96, v95, v94);
                v96 = v79;
                v97 = v77;
                v94 = v80._object;
                v95 = v80._countAndFlagsBits;
                goto LABEL_43;
              }

LABEL_42:

LABEL_43:
              v52 = v122;
              goto LABEL_44;
            }

            if (v61 == 25715 && v59 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v82 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v93, v92, v91, v90);
              v92 = v107;
              v93 = v65;
              v90 = v82._object;
              v91 = v82._countAndFlagsBits;
              goto LABEL_43;
            }

            if (v61 == 0x656E6F7A656D6974 && v59 == 0xE800000000000000)
            {
            }

            else
            {
              v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v84 & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            if (one-time initialization token for cache != -1)
            {
              v83 = swift_once();
            }

            v85 = static TimeZoneCache.cache;
            MEMORY[0x1EEE9AC00](v83);
            os_unfair_lock_lock(v85 + 30);
            closure #1 in TimeZoneCache.fixed(_:)partial apply(&v137._countAndFlagsBits);
            os_unfair_lock_unlock(v85 + 30);
            v86 = v137._countAndFlagsBits;
            v87 = v137._object;

            if (v86)
            {
              v51 = v87;
            }

            else
            {
              v51 = 0;
            }

            swift_unknownObjectRelease();
            v89 = v86;
            v52 = v122;
            v26 = v112;
            goto LABEL_45;
          }

          v192._countAndFlagsBits = v65;
          v192._object = v107;
          Locale.Weekday.init(rawValue:)(&v137._countAndFlagsBits, v192);
          v108 = v137._countAndFlagsBits;
        }
      }

      v52 = v122;
      v51 = v111;
      v26 = v112;
    }

    else
    {
      v52 = v122;
    }

LABEL_31:
    LODWORD(v137._countAndFlagsBits) = 0;
    v27 = uenum_next();
    v53 = v132;
    if (SLODWORD(v137._countAndFlagsBits) > 0)
    {
      break;
    }
  }

  v130 = v54;
  v131 = v53;

  v28 = v110;
  v30 = v105;
  v29 = v106;
  v32 = v103;
  v31 = v104;
  v34 = v101;
  v33 = v102;
  v35 = v99;
  v36 = v100;
  v38 = v96;
  v37 = v97;
  v39 = v108;
  v40 = v109;
  v42 = v94;
  v41 = v95;
  v44 = v92;
  v43 = v93;
  v45 = v98;
  v46 = v52;
  v48 = v90;
  v47 = v91;
  v49 = v89;
  v22 = v88;
LABEL_24:
  v138 = countAndFlagsBits;
  v139 = object;
  v144 = v118;
  v145 = v126;
  v146 = v22;
  v147 = v113;
  v148 = v55;
  v150 = v40;
  v151 = v26;
  *v149 = *v135;
  *&v149[3] = *&v135[3];
  v137._countAndFlagsBits = v121;
  v137._object = v127;
  v140 = v119;
  v141 = v123;
  v142 = v129;
  v143 = v128;
  v152 = v120;
  v153 = v28;
  v154 = v29;
  v155 = v30;
  v156 = v31;
  v157 = v32;
  v158 = v33;
  v159 = v34;
  v160 = v36;
  v161 = v35;
  v162 = v39;
  v163 = v56;
  v165 = v134;
  v164 = v133;
  v166 = v130;
  v167 = v131;
  v168 = v46;
  v169 = v45;
  v170 = v37;
  v171 = v38;
  v172 = v41;
  v173 = v42;
  v174 = v43;
  v175 = v44;
  v176 = v47;
  v177 = v48;
  v178 = v49;
  v179 = v51;
  v180 = v117;
  v181 = v116;
  v182 = v115;
  v183 = v114;
  if (v127 && v123)
  {
    outlined copy of Locale.LanguageCode?(v119, v123, v129, v128);

    MEMORY[0x1865CB0E0](45, 0xE100000000000000);

    outlined consume of Locale.LanguageCode?(v119, v123, v129, v128);
    MEMORY[0x1865CB0E0](v119, v123);

    outlined destroy of Locale.Components(&v137);
    return v121;
  }

  outlined destroy of Locale.Components(&v137);
  return 0;
}

unint64_t outlined copy of Data.Deallocator?(unint64_t result)
{
  if (result != 4)
  {
    return outlined copy of Data.Deallocator(result);
  }

  return result;
}

uint64_t __CharacterSetStorage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for _URLProtocol.init(filePath:directoryHint:relativeTo:) in conformance _SwiftURL(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  v6 = *a3;
  v7 = *a4;
  v8 = a4[1];

  v9 = specialized String.withFileSystemRepresentation<A>(_:)(a1, a2, a1, a2);
  v11 = v10;

  v15[0] = v6;
  v14[0] = v7;
  v14[1] = v8;
  v12 = swift_allocObject();
  _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v9, v11, 0, v15, v14);
  return v12;
}

void protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSRunLoopMode(void *a1, id *a2)
{
  v5 = 0;
  v6 = 0;
  static String._forceBridgeFromObjectiveC(_:result:)(a1, &v5);
  if (v6)
  {
    v4 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance Date(void *a1, uint64_t a2)
{
  [a1 timeIntervalSinceReferenceDate];
  *a2 = v3;
  *(a2 + 8) = 0;
  return 1;
}

void specialized static Bool._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, char *a2)
{
  if (!*MEMORY[0x1E695E4D0])
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*MEMORY[0x1E695E4D0] == a1)
  {
    v4 = 1;
    goto LABEL_9;
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v4 = 1;
  v5 = [objc_allocWithZone(NSNumber) initWithInteger_];
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
LABEL_9:
    *a2 = v4;
    return;
  }

  if (!*MEMORY[0x1E695E4C0])
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (*MEMORY[0x1E695E4C0] == a1 || (v7 = [objc_allocWithZone(NSNumber) initWithInteger_], v8 = static NSObject.== infix(_:_:)(), v7, (v8 & 1) != 0))
  {
    v4 = 0;
    goto LABEL_9;
  }
}

void closure #2 in static Dictionary._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v23)
  {
    goto LABEL_32;
  }

  if (!a3)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v38 = v19;
  [v18 _getObjects_andKeys_count_];
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v36 = v12;
  v37 = a3;
  if (isClassOrObjCExistentialType)
  {
    if (a6 < 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (a6)
    {
      v25 = 0;
      do
      {
        v39 = *(a1 + 8 * v25);
        swift_unknownObjectRetain();
        swift_dynamicCast();
        (*(v16 + 32))(a1 + *(v16 + 72) * v25++, v22, a7);
      }

      while (a6 != v25);
    }
  }

  else
  {
    if (a6 < 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (a6)
    {
      v26 = a6;
      while (v26 <= a6)
      {
        v27 = v26 - 1;
        v39 = *(a1 - 8 + 8 * v26);
        swift_unknownObjectRetain();
        swift_dynamicCast();
        (*(v16 + 32))(a1 + *(v16 + 72) * v27, v22, a7);
        v26 = v27;
        if (!v27)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

LABEL_14:
  v28 = v38;
  if ((_swift_isClassOrObjCExistentialType() & 1) == 0)
  {
    v33 = v36;
    v32 = v37;
    if (a6 < 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (!a6)
    {
      return;
    }

    v34 = a6;
    while (v34 <= a6)
    {
      v35 = v34 - 1;
      v39 = *(v32 - 8 + 8 * v34);
      swift_unknownObjectRetain();
      swift_dynamicCast();
      (*(v33 + 32))(v32 + *(v33 + 72) * v35, v14, v28);
      v34 = v35;
      if (!v35)
      {
        return;
      }
    }

    goto LABEL_27;
  }

  v30 = v36;
  v29 = v37;
  if (a6 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a6)
  {
    v31 = 0;
    do
    {
      v39 = *(v29 + 8 * v31);
      swift_unknownObjectRetain();
      swift_dynamicCast();
      (*(v30 + 32))(v29 + *(v30 + 72) * v31++, v14, v28);
    }

    while (a6 != v31);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString, off_1E69EE918);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v5 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    while (1)
    {
      outlined init with copy of ICULegacyNumberFormatter.Signature(*(v2 + 48) + v12 * v10, v8);
      if (specialized static ICULegacyNumberFormatter.NumberFormatType.== infix(_:_:)(v8, a1))
      {
        v13 = *(v5 + 20);
        v14 = *&v8[v13];
        v15 = *&v8[v13 + 8];
        v16 = (a1 + v13);
        v17 = v14 == *v16 && v15 == v16[1];
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v8[*(v5 + 24)] == *(a1 + *(v5 + 24)))
        {
          break;
        }
      }

      outlined destroy of ICULegacyNumberFormatter.Signature(v8);
      v10 = (v10 + 1) & v11;
      if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v8);
  }

  return v10;
}

{
  v20 = a1;
  v4 = type metadata accessor for CombineIdentifier();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(&lazy protocol witness table cache variable for type CombineIdentifier and conformance CombineIdentifier, 255, MEMORY[0x1E695BC50], MEMORY[0x1E695BC60]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1865CBF40](v9, a1);
      outlined destroy of AnyHashable(v9);
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

id specialized Data.init(contentsOf:options:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  ObjectType = swift_getObjectType();
  if ((*(v6 + 144))(ObjectType, v6))
  {
    *&v12 = v5;
    *(&v12 + 1) = v6;
    v13 = 1;
    swift_unknownObjectRetain();
    v3 = readDataFromFile(path:reportProgress:maxLength:options:)(&v12, 1, 0, 1, a2);
    outlined consume of PathOrURL(v12, *(&v12 + 1), v13);
  }

  else
  {
    *&v12 = v5;
    *(&v12 + 1) = v6;
    objc_allocWithZone(MEMORY[0x1E695DEF0]);
    swift_unknownObjectRetain();
    v8 = @nonobjc NSData.init(contentsOf:options:)(&v12, a2);
    if (!v2)
    {
      v10 = v8;
      v11 = specialized Data.init(referencing:)(v8);

      return v11;
    }
  }

  return v3;
}

NSArray __swiftcall Array._bridgeToObjectiveC()()
{
  v1 = v0;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v1 < 0 || (v1 & 0x4000000000000000) != 0))
  {

    return swift_unknownObjectRetain();
  }

  else
  {
    _swift_isClassOrObjCExistentialType();

    return _ContiguousArrayBuffer._asCocoaArray()();
  }
}

uint64_t specialized CVarArg<>._cVarArgEncoding.getter()
{
  v0 = String._bridgeToObjectiveCImpl()();
  v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v1 + 16) = 1;
  *(v1 + 32) = v0;

  return v1;
}

uint64_t lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *specialized static Locale.canonicalizeLocalizations(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *MEMORY[0x1E695E4A8];
    v3 = a1 + 40;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = String._bridgeToObjectiveCImpl()();

      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v2, v5);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        break;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v8 = CanonicalLanguageIdentifierFromString;
      v9 = v8;
      if (!isTaggedPointer)
      {
        goto LABEL_9;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v8);
      if (!TaggedPointerTag)
      {
        _CFIndirectTaggedPointerStringGetContents();
        v18 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v19)
        {
          [(__CFString *)v9 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v11 = v25;
          v13 = v26;
LABEL_25:

          goto LABEL_26;
        }

        goto LABEL_20;
      }

      if (TaggedPointerTag == 22)
      {
        v17 = [(__CFString *)v9 UTF8String];
        if (!v17)
        {
          goto LABEL_34;
        }

        v18 = String.init(utf8String:)(v17);
        if (!v19)
        {
          __break(1u);
LABEL_34:
          __break(1u);
        }

LABEL_20:
        v11 = v18;
        v13 = v19;

        goto LABEL_26;
      }

      if (TaggedPointerTag != 2)
      {
LABEL_9:
        LOBYTE(v25) = 0;
        if (__CFStringIsCF())
        {
          v11 = 0;

LABEL_13:
          v13 = 0xE000000000000000;
          goto LABEL_26;
        }

        v14 = v9;
        v15 = String.init(_nativeStorage:)();
        if (v16)
        {
          v11 = v15;
          v13 = v16;

          goto LABEL_26;
        }

        if ([(__CFString *)v14 length])
        {
          v11 = String.init(_cocoaString:)();
          v13 = v20;
          goto LABEL_25;
        }

LABEL_12:
        v11 = 0;
        goto LABEL_13;
      }

      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v13 = v12;

LABEL_26:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v22 = *(v4 + 2);
      v21 = *(v4 + 3);
      if (v22 >= v21 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v4);
      }

      *(v4 + 2) = v22 + 1;
      v23 = &v4[16 * v22];
      *(v23 + 4) = v11;
      *(v23 + 5) = v13;
      v3 += 16;
      if (!--v1)
      {
        return v4;
      }
    }

    goto LABEL_12;
  }

  return MEMORY[0x1E69E7CC0];
}

void *_NSSwiftCalendar._components(_:from:)@<X0>(int a1@<W0>, double *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = *a2;
  v8 = _fromNSCalendarUnits(_:)(a1);
  v9 = *&v4[OBJC_IVAR____NSSwiftCalendar__lock];
  os_unfair_lock_lock((v9 + 32));
  v15 = *(v9 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 32));
  v18 = v15;
  Calendar.ComponentSet.init(_:)(v8, &v17);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v10 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v7)
  {
    v10 = v7;
  }

  if (*&static Date.validCalendarRange >= v10)
  {
    v10 = *&static Date.validCalendarRange;
  }

  v16 = v10;
  Calendar._dateComponents(_:from:)(&v17, &v16, __src);
  swift_unknownObjectRelease();
  if ((a1 & 0x100000) != 0)
  {
    v11 = v4;
    os_unfair_lock_lock((v9 + 32));
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v9 + 32));

    swift_unknownObjectRelease();
    *&__src[0] = v12;
    *(&__src[0] + 1) = v13;
    if (*&__src[1])
    {
      if (v12)
      {
        v18 = __src[1];
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(&v18);
      }
    }
  }

  if ((a1 & 0x100) != 0)
  {
    *&__src[14] = *&__src[16];
    BYTE8(__src[14]) = BYTE8(__src[16]);
  }

  return memcpy(a3, __src, 0x11BuLL);
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

NSDateComponents __swiftcall DateComponents._bridgeToObjectiveC()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v33 = *(v0 + 40);
  v18 = v0[4];
  v19 = v0[6];
  v34 = *(v0 + 56);
  v20 = v0[8];
  v35 = *(v0 + 72);
  v21 = v0[10];
  v36 = *(v0 + 88);
  v5 = v0[12];
  v6 = *(v0 + 104);
  v22 = v0[14];
  v37 = *(v0 + 120);
  v23 = v0[16];
  v38 = *(v0 + 136);
  v24 = v0[18];
  v39 = *(v0 + 152);
  v25 = v0[20];
  v40 = *(v0 + 168);
  v26 = v0[22];
  v41 = *(v0 + 184);
  v27 = v0[24];
  v42 = *(v0 + 200);
  v28 = v0[26];
  v43 = *(v0 + 216);
  v17 = v0[28];
  v32 = *(v0 + 232);
  v29 = v0[30];
  v44 = *(v0 + 248);
  v30 = v0[32];
  v45 = *(v0 + 264);
  v31 = v0[34];
  v46 = *(v0 + 280);
  v7 = *(v0 + 281);
  v8 = *(v0 + 282);
  v9 = objc_allocWithZone(MEMORY[0x1E695DF10]);
  swift_unknownObjectRetain();
  v10 = [v9 init];
  if (v2)
  {
    ObjectType = swift_getObjectType();
    v12 = (*(v1 + 216))(ObjectType, v1);
    [v10 setCalendar_];
    swift_unknownObjectRelease();
  }

  if (v3)
  {
    v13 = swift_getObjectType();
    v14 = *(v4 + 128);
    swift_unknownObjectRetain();
    v15 = v14(v13, v4);
    [v10 setTimeZone_];
    swift_unknownObjectRelease();
  }

  if (v33)
  {
    if (v34)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [v10 setEra_];
    if (v34)
    {
LABEL_7:
      if (v35)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  [v10 setYear_];
  if (v35)
  {
LABEL_8:
    if (v36)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v10 setMonth_];
  if (v36)
  {
LABEL_9:
    if (v37)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v10 setDay_];
  if (v37)
  {
LABEL_10:
    if (v38)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v10 setHour_];
  if (v38)
  {
LABEL_11:
    if (v39)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v10 setMinute_];
  if (v39)
  {
LABEL_12:
    if (v40)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v10 setSecond_];
  if (v40)
  {
LABEL_13:
    if (v41)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v10 setNanosecond_];
  if (v41)
  {
LABEL_14:
    if (v42)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v10 setWeekday_];
  if (v42)
  {
LABEL_15:
    if (v43)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v10 setWeekdayOrdinal_];
  if (v43)
  {
LABEL_16:
    if (v44)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v10 setQuarter_];
  if (v44)
  {
LABEL_17:
    if (v45)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v10 setWeekOfMonth_];
  if (v45)
  {
LABEL_18:
    if (v46)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v10 setWeekOfYear_];
  if (v46)
  {
LABEL_19:
    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v10 setYearForWeekOfYear_];
  if (v6)
  {
LABEL_20:
    if (v7 == 2)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v10 setDayOfYear_];
  if (v7 == 2)
  {
LABEL_21:
    if (v8 == 2)
    {
      goto LABEL_22;
    }

LABEL_41:
    [v10 setRepeatedDay_];
    if (v32)
    {
      return v10;
    }

    goto LABEL_23;
  }

LABEL_40:
  [v10 setLeapMonth_];
  if (v8 != 2)
  {
    goto LABEL_41;
  }

LABEL_22:
  if ((v32 & 1) == 0)
  {
LABEL_23:
    __NSDateComponentsSetWeek(v10, v17);
  }

  return v10;
}

uint64_t _s10Foundation13URLComponentsV01_B0VSgWOg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _writeJSONObject(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v48 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v11 = 2 * a3;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v29 - ((v11 + 17) & 0xFFFFFFFFFFFFFFF0);
    bzero(v10, v11 + 2);
    memset(v10, 32, v11 + 2);
    LOBYTE(__src[0]) = 123;
    if (_appendBytes(__src, 1uLL, a1, 123))
    {
      LOBYTE(__src[0]) = 10;
      if (_appendBytes(__src, 1uLL, a1, 10))
      {
        v8 = [a2 count];
        v9 = v8;
        if (v8)
        {
          goto LABEL_8;
        }

        LOBYTE(__src[0]) = 10;
        if (_appendBytes(__src, 1uLL, a1, 10))
        {
          if (!v5 || _appendBytes(&v29 - ((v11 + 17) & 0xFFFFFFFFFFFFFFF0), 2 * v5, a1, v27))
          {
LABEL_39:
            LOBYTE(__src[0]) = 125;
            return _appendBytes(__src, 1uLL, a1, 125);
          }
        }
      }
    }

    return 0;
  }

  LOBYTE(__src[0]) = 123;
  if (!_appendBytes(__src, 1uLL, a1, 123))
  {
    return 0;
  }

  v8 = [a2 count];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_39;
  }

  v10 = 0;
LABEL_8:
  __src[0] = 0;
  __src[1] = __src;
  __src[2] = 0x2020000000;
  __src[3] = 1;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 1;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v33 = ___writeJSONObject_block_invoke;
  v34 = &unk_1E69F6F90;
  v35 = a1;
  v36 = &v42;
  v39 = v10;
  v40 = v5;
  v37 = __src;
  v38 = a4;
  v41 = v9;
  if ((a4 & 2) != 0)
  {
    v30 = v5;
    v29 = &v29;
    MEMORY[0x1EEE9AC00](v8);
    v12 = &v29 - 128;
    MEMORY[0x1EEE9AC00](v13);
    v14 = &v29 - 128;
    MEMORY[0x1EEE9AC00](v15);
    v16 = &v29 - 128;
    if (v9 >= 0x81)
    {
      v12 = malloc_type_malloc(8 * v9, 0x80040B8603338uLL);
      v14 = malloc_type_malloc(8 * v9, 0x80040B8603338uLL);
      v16 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
    }

    [a2 getObjects:v14 andKeys:v12 count:v9];
    v17 = 0;
    do
    {
      if (([v12[v17] isNSString] & 1) == 0)
      {
        if (v9 >= 0x81)
        {
          free(v12);
          free(v14);
          free(v16);
        }

        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid (non-string) key in JSON dictionary" userInfo:0]);
      }

      ++v17;
    }

    while (v9 != v17);
    v18 = 0;
    v19 = xmmword_1812187D0;
    v20 = vdupq_n_s64(v9 - 1);
    v21 = vdupq_n_s64(2uLL);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v20, v19));
      if (v22.i8[0])
      {
        v16[v18] = v18;
      }

      if (v22.i8[4])
      {
        v16[v18 + 1] = v18 + 1;
      }

      v18 += 2;
      v19 = vaddq_s64(v19, v21);
    }

    while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v18);
    v31[5] = MEMORY[0x1E69E9820];
    v31[6] = 3221225472;
    v31[7] = ___writeJSONObject_block_invoke_2;
    v31[8] = &__block_descriptor_40_e11_q24__0q8q16l;
    v31[9] = v12;
    CFSortIndexes();
    v23 = 0;
    v47 = 0;
    do
    {
      v33(v32, v12[v16[v23]], v14[v16[v23]], &v47);
      if (v47)
      {
        break;
      }
    }

    while (v9 - 1 != v23++);
    if (v9 >= 0x81)
    {
      free(v12);
      free(v14);
      free(v16);
    }

    v5 = v30;
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = ___writeJSONObject_block_invoke_3;
    v31[3] = &unk_1E69F6FD8;
    v31[4] = v32;
    [a2 enumerateKeysAndObjectsUsingBlock:v31];
  }

  if (*(v43 + 24) == 1 && ((a4 & 1) == 0 || (v47 = 10, _appendBytes(&v47, 1uLL, a1, 10)) && (!v5 || _appendBytes(v10, 2 * v5, a1, v26))))
  {
    v47 = 125;
    appended = _appendBytes(&v47, 1uLL, a1, 125);
  }

  else
  {
    appended = 0;
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(__src, 8);
  return appended;
}

void sub_1807F3FF8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t ___writeJSONObject_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((_NSIsNSString() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid (non-string) key in JSON dictionary" userInfo:0]);
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t _fromNSCalendarUnits(_:)(int a1)
{
  v4 = MEMORY[0x1E69E7CD0];
  if ((a1 & 2) != 0)
  {
    specialized Set._Variant.insert(_:)(&v3, 0);
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  specialized Set._Variant.insert(_:)(&v3, 1);
  if ((a1 & 8) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  specialized Set._Variant.insert(_:)(&v3, 2);
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  specialized Set._Variant.insert(_:)(&v3, 3);
  if ((a1 & 0x20) == 0)
  {
LABEL_6:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  specialized Set._Variant.insert(_:)(&v3, 4);
  if ((a1 & 0x40) == 0)
  {
LABEL_7:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  specialized Set._Variant.insert(_:)(&v3, 5);
  if ((a1 & 0x80) == 0)
  {
LABEL_8:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  specialized Set._Variant.insert(_:)(&v3, 6);
  if ((a1 & 0x200) == 0)
  {
LABEL_9:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  specialized Set._Variant.insert(_:)(&v3, 7);
  if ((a1 & 0x400) == 0)
  {
LABEL_10:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  specialized Set._Variant.insert(_:)(&v3, 8);
  if ((a1 & 0x800) == 0)
  {
LABEL_11:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  specialized Set._Variant.insert(_:)(&v3, 9);
  if ((a1 & 0x1000) == 0)
  {
LABEL_12:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  specialized Set._Variant.insert(_:)(&v3, 10);
  if ((a1 & 0x2000) == 0)
  {
LABEL_13:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  specialized Set._Variant.insert(_:)(&v3, 11);
  if ((a1 & 0x4000) == 0)
  {
LABEL_14:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  specialized Set._Variant.insert(_:)(&v3, 12);
  if ((a1 & 0x10000) == 0)
  {
LABEL_15:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  specialized Set._Variant.insert(_:)(&v3, 18);
  if ((a1 & 0x8000) == 0)
  {
LABEL_16:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  specialized Set._Variant.insert(_:)(&v3, 13);
  if ((a1 & 0x100000) == 0)
  {
LABEL_17:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  specialized Set._Variant.insert(_:)(&v3, 14);
  if ((a1 & 0x200000) == 0)
  {
LABEL_18:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_19;
    }

LABEL_39:
    specialized Set._Variant.insert(_:)(&v3, 11);
    if ((a1 & 0x80000000) == 0)
    {
      return v4;
    }

    goto LABEL_20;
  }

LABEL_38:
  specialized Set._Variant.insert(_:)(&v3, 15);
  if ((a1 & 0x100) != 0)
  {
    goto LABEL_39;
  }

LABEL_19:
  if (a1 < 0)
  {
LABEL_20:
    specialized Set._Variant.insert(_:)(&v3, 17);
  }

  return v4;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v5 = result;
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    v9 = *v3;
    goto LABEL_76;
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMR);
    v10 = static _SetStorage.resize(original:capacity:move:)();
    v9 = v10;
    if (*(v6 + 16))
    {
      v11 = 0;
      v12 = (v6 + 56);
      v13 = 1 << *(v6 + 32);
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v15 = v14 & *(v6 + 56);
      v16 = (v13 + 63) >> 6;
      v17 = v10 + 56;
      while (v15)
      {
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_19:
        v22 = *(*(v6 + 48) + (v19 | (v11 << 6)));
        Hasher.init(_seed:)();
        MEMORY[0x1865CD060](v22);
        v23 = Hasher._finalize()();
        v24 = -1 << *(v9 + 32);
        v25 = v23 & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
        {
          v27 = 0;
          v28 = (63 - v24) >> 6;
          while (++v26 != v28 || (v27 & 1) == 0)
          {
            v29 = v26 == v28;
            if (v26 == v28)
            {
              v26 = 0;
            }

            v27 |= v29;
            v30 = *(v17 + 8 * v26);
            if (v30 != -1)
            {
              v18 = __clz(__rbit64(~v30)) + (v26 << 6);
              goto LABEL_11;
            }
          }

LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
        *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v9 + 48) + v18) = v22;
        ++*(v9 + 16);
      }

      v20 = v11;
      while (1)
      {
        v11 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_79;
        }

        if (v11 >= v16)
        {
          break;
        }

        v21 = v12[v11];
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v15 = (v21 - 1) & v21;
          goto LABEL_19;
        }
      }

      v45 = 1 << *(v6 + 32);
      if (v45 >= 64)
      {
        bzero((v6 + 56), ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v45;
      }

      v4 = v3;
      *(v6 + 16) = 0;
    }

LABEL_72:

    *v4 = v9;
    Hasher.init(_seed:)();
    MEMORY[0x1865CD060](v5);
    result = Hasher._finalize()();
    v66 = -1 << *(v9 + 32);
    a2 = result & ~v66;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v67 = ~v66;
      while (*(*(v9 + 48) + a2) != v5)
      {
        a2 = (a2 + 1) & v67;
        if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_84;
    }

    goto LABEL_76;
  }

  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMR);
  if (v8 <= v7)
  {
    v46 = static _SetStorage.resize(original:capacity:move:)();
    v9 = v46;
    if (!*(v6 + 16))
    {
      goto LABEL_72;
    }

    v47 = 0;
    v48 = 1 << *(v6 + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & *(v6 + 56);
    v51 = (v48 + 63) >> 6;
    v52 = v46 + 56;
    while (v50)
    {
      v54 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
LABEL_60:
      v57 = *(*(v6 + 48) + (v54 | (v47 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v57);
      v58 = Hasher._finalize()();
      v59 = -1 << *(v9 + 32);
      v60 = v58 & ~v59;
      v61 = v60 >> 6;
      if (((-1 << v60) & ~*(v52 + 8 * (v60 >> 6))) == 0)
      {
        v62 = 0;
        v63 = (63 - v59) >> 6;
        while (++v61 != v63 || (v62 & 1) == 0)
        {
          v64 = v61 == v63;
          if (v61 == v63)
          {
            v61 = 0;
          }

          v62 |= v64;
          v65 = *(v52 + 8 * v61);
          if (v65 != -1)
          {
            v53 = __clz(__rbit64(~v65)) + (v61 << 6);
            goto LABEL_52;
          }
        }

        goto LABEL_82;
      }

      v53 = __clz(__rbit64((-1 << v60) & ~*(v52 + 8 * (v60 >> 6)))) | v60 & 0x7FFFFFFFFFFFFFC0;
LABEL_52:
      *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      *(*(v9 + 48) + v53) = v57;
      ++*(v9 + 16);
    }

    v55 = v47;
    while (1)
    {
      v47 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v47 >= v51)
      {
        goto LABEL_72;
      }

      v56 = *(v6 + 56 + 8 * v47);
      ++v55;
      if (v56)
      {
        v54 = __clz(__rbit64(v56));
        v50 = (v56 - 1) & v56;
        goto LABEL_60;
      }
    }
  }

  else
  {
    v32 = static _SetStorage.copy(original:)();
    v9 = v32;
    if (!*(v6 + 16))
    {
LABEL_69:

      *v4 = v9;
      a2 = v31;
LABEL_76:
      *(v9 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      *(*(v9 + 48) + a2) = v5;
      v68 = *(v9 + 16);
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (!v69)
      {
        *(v9 + 16) = v70;
        return result;
      }

      goto LABEL_83;
    }

    v33 = (v32 + 56);
    v34 = v6 + 56;
    v35 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v6 || v33 >= v34 + 8 * v35)
    {
      memmove(v33, (v6 + 56), 8 * v35);
    }

    v36 = 0;
    *(v9 + 16) = *(v6 + 16);
    v37 = 1 << *(v6 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v6 + 56);
    for (i = (v37 + 63) >> 6; v39; *(*(v9 + 48) + v42) = *(*(v6 + 48) + v42))
    {
      v41 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v42 = v41 | (v36 << 6);
LABEL_42:
      ;
    }

    v43 = v36;
    while (1)
    {
      v36 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v36 >= i)
      {
        goto LABEL_69;
      }

      v44 = *(v34 + 8 * v36);
      ++v43;
      if (v44)
      {
        v39 = (v44 - 1) & v44;
        v42 = __clz(__rbit64(v44)) | (v36 << 6);
        goto LABEL_42;
      }
    }

LABEL_80:
    __break(1u);
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v6 = result;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *(*v3 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    v10 = *v3;
    goto LABEL_78;
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation21_BPlistEncodingFormatV9ReferenceCGMd, &_ss11_SetStorageCy10Foundation21_BPlistEncodingFormatV9ReferenceCGMR);
    v11 = static _SetStorage.resize(original:capacity:move:)();
    v10 = v11;
    if (*(v7 + 16))
    {
      v12 = 0;
      v13 = (v7 + 56);
      v14 = 1 << *(v7 + 32);
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v16 = v15 & *(v7 + 56);
      v17 = (v14 + 63) >> 6;
      v18 = v11 + 56;
      while (v16)
      {
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_19:
        v23 = *(*(v7 + 48) + 8 * (v20 | (v12 << 6)));
        Hasher.init(_seed:)();
        _BPlistEncodingFormat.Reference.hash(into:)(v73);
        v24 = Hasher._finalize()();
        v25 = -1 << *(v10 + 32);
        v26 = v24 & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
        {
          v28 = 0;
          v29 = (63 - v25) >> 6;
          while (++v27 != v29 || (v28 & 1) == 0)
          {
            v30 = v27 == v29;
            if (v27 == v29)
            {
              v27 = 0;
            }

            v28 |= v30;
            v31 = *(v18 + 8 * v27);
            if (v31 != -1)
            {
              v19 = __clz(__rbit64(~v31)) + (v27 << 6);
              goto LABEL_11;
            }
          }

LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
        *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v10 + 48) + 8 * v19) = v23;
        ++*(v10 + 16);
      }

      v21 = v12;
      while (1)
      {
        v12 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_81;
        }

        if (v12 >= v17)
        {
          break;
        }

        v22 = v13[v12];
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v16 = (v22 - 1) & v22;
          goto LABEL_19;
        }
      }

      v45 = 1 << *(v7 + 32);
      if (v45 >= 64)
      {
        bzero((v7 + 56), ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v13 = -1 << v45;
      }

      v4 = v3;
      *(v7 + 16) = 0;
    }

    goto LABEL_72;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation21_BPlistEncodingFormatV9ReferenceCGMd, &_ss11_SetStorageCy10Foundation21_BPlistEncodingFormatV9ReferenceCGMR);
  if (v9 <= v8)
  {
    v46 = static _SetStorage.resize(original:capacity:move:)();
    v10 = v46;
    if (!*(v7 + 16))
    {
LABEL_72:

LABEL_74:
      *v4 = v10;
      Hasher.init(_seed:)();
      _BPlistEncodingFormat.Reference.hash(into:)(v73);
      result = Hasher._finalize()();
      v66 = -1 << *(v10 + 32);
      a2 = result & ~v66;
      if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
      {
        v67 = ~v66;
        type metadata accessor for _BPlistEncodingFormat.Reference();
        while (1)
        {

          v69 = specialized static _BPlistEncodingFormat.Reference.== infix(_:_:)(v68, v6);

          if (v69)
          {
            goto LABEL_86;
          }

          a2 = (a2 + 1) & v67;
          if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_78;
    }

    v47 = 0;
    v48 = 1 << *(v7 + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & *(v7 + 56);
    v51 = (v48 + 63) >> 6;
    v52 = v46 + 56;
    while (v50)
    {
      v54 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
LABEL_60:
      v57 = *(*(v7 + 48) + 8 * (v54 | (v47 << 6)));
      Hasher.init(_seed:)();

      _BPlistEncodingFormat.Reference.hash(into:)(v73);
      v58 = Hasher._finalize()();
      v59 = -1 << *(v10 + 32);
      v60 = v58 & ~v59;
      v61 = v60 >> 6;
      if (((-1 << v60) & ~*(v52 + 8 * (v60 >> 6))) == 0)
      {
        v62 = 0;
        v63 = (63 - v59) >> 6;
        while (++v61 != v63 || (v62 & 1) == 0)
        {
          v64 = v61 == v63;
          if (v61 == v63)
          {
            v61 = 0;
          }

          v62 |= v64;
          v65 = *(v52 + 8 * v61);
          if (v65 != -1)
          {
            v53 = __clz(__rbit64(~v65)) + (v61 << 6);
            goto LABEL_52;
          }
        }

        goto LABEL_84;
      }

      v53 = __clz(__rbit64((-1 << v60) & ~*(v52 + 8 * (v60 >> 6)))) | v60 & 0x7FFFFFFFFFFFFFC0;
LABEL_52:
      *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      *(*(v10 + 48) + 8 * v53) = v57;
      ++*(v10 + 16);
    }

    v55 = v47;
    while (1)
    {
      v47 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v47 >= v51)
      {

        v4 = v3;
        goto LABEL_74;
      }

      v56 = *(v7 + 56 + 8 * v47);
      ++v55;
      if (v56)
      {
        v54 = __clz(__rbit64(v56));
        v50 = (v56 - 1) & v56;
        goto LABEL_60;
      }
    }
  }

  else
  {
    v32 = static _SetStorage.copy(original:)();
    v10 = v32;
    if (!*(v7 + 16))
    {
LABEL_69:

      *v4 = v10;
LABEL_78:
      *(v10 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      *(*(v10 + 48) + 8 * a2) = v6;
      v70 = *(v10 + 16);
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (!v71)
      {
        *(v10 + 16) = v72;
        return result;
      }

      goto LABEL_85;
    }

    v33 = (v32 + 56);
    v34 = v7 + 56;
    v35 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v7 || v33 >= v34 + 8 * v35)
    {
      memmove(v33, (v7 + 56), 8 * v35);
    }

    v36 = 0;
    *(v10 + 16) = *(v7 + 16);
    v37 = 1 << *(v7 + 32);
    v38 = *(v7 + 56);
    v39 = -1;
    if (v37 < 64)
    {
      v39 = ~(-1 << v37);
    }

    v40 = v39 & v38;
    v41 = (v37 + 63) >> 6;
    if ((v39 & v38) != 0)
    {
      do
      {
        v42 = __clz(__rbit64(v40));
        v40 &= v40 - 1;
LABEL_42:
        *(*(v10 + 48) + 8 * (v42 | (v36 << 6))) = *(*(v7 + 48) + 8 * (v42 | (v36 << 6)));
      }

      while (v40);
    }

    v43 = v36;
    while (1)
    {
      v36 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v36 >= v41)
      {
        goto LABEL_69;
      }

      v44 = *(v34 + 8 * v36);
      ++v43;
      if (v44)
      {
        v42 = __clz(__rbit64(v44));
        v40 = (v44 - 1) & v44;
        goto LABEL_42;
      }
    }

LABEL_82:
    __break(1u);
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v5 = result;
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    v9 = *v3;
    goto LABEL_76;
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys7UnicodeO6ScalarVGMd, &_ss11_SetStorageCys7UnicodeO6ScalarVGMR);
    v10 = static _SetStorage.resize(original:capacity:move:)();
    v9 = v10;
    if (*(v6 + 16))
    {
      v11 = 0;
      v12 = (v6 + 56);
      v13 = 1 << *(v6 + 32);
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v15 = v14 & *(v6 + 56);
      v16 = (v13 + 63) >> 6;
      v17 = v10 + 56;
      while (v15)
      {
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_19:
        v22 = *(*(v6 + 48) + 4 * (v19 | (v11 << 6)));
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v22);
        v23 = Hasher._finalize()();
        v24 = -1 << *(v9 + 32);
        v25 = v23 & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
        {
          v27 = 0;
          v28 = (63 - v24) >> 6;
          while (++v26 != v28 || (v27 & 1) == 0)
          {
            v29 = v26 == v28;
            if (v26 == v28)
            {
              v26 = 0;
            }

            v27 |= v29;
            v30 = *(v17 + 8 * v26);
            if (v30 != -1)
            {
              v18 = __clz(__rbit64(~v30)) + (v26 << 6);
              goto LABEL_11;
            }
          }

LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
        *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v9 + 48) + 4 * v18) = v22;
        ++*(v9 + 16);
      }

      v20 = v11;
      while (1)
      {
        v11 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_79;
        }

        if (v11 >= v16)
        {
          break;
        }

        v21 = v12[v11];
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v15 = (v21 - 1) & v21;
          goto LABEL_19;
        }
      }

      v45 = 1 << *(v6 + 32);
      if (v45 >= 64)
      {
        bzero((v6 + 56), ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v45;
      }

      v4 = v3;
      *(v6 + 16) = 0;
    }

LABEL_72:

    *v4 = v9;
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v5);
    result = Hasher._finalize()();
    v66 = -1 << *(v9 + 32);
    a2 = result & ~v66;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v67 = ~v66;
      while (*(*(v9 + 48) + 4 * a2) != v5)
      {
        a2 = (a2 + 1) & v67;
        if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_84;
    }

    goto LABEL_76;
  }

  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys7UnicodeO6ScalarVGMd, &_ss11_SetStorageCys7UnicodeO6ScalarVGMR);
  if (v8 <= v7)
  {
    v46 = static _SetStorage.resize(original:capacity:move:)();
    v9 = v46;
    if (!*(v6 + 16))
    {
      goto LABEL_72;
    }

    v47 = 0;
    v48 = 1 << *(v6 + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & *(v6 + 56);
    v51 = (v48 + 63) >> 6;
    v52 = v46 + 56;
    while (v50)
    {
      v54 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
LABEL_60:
      v57 = *(*(v6 + 48) + 4 * (v54 | (v47 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v57);
      v58 = Hasher._finalize()();
      v59 = -1 << *(v9 + 32);
      v60 = v58 & ~v59;
      v61 = v60 >> 6;
      if (((-1 << v60) & ~*(v52 + 8 * (v60 >> 6))) == 0)
      {
        v62 = 0;
        v63 = (63 - v59) >> 6;
        while (++v61 != v63 || (v62 & 1) == 0)
        {
          v64 = v61 == v63;
          if (v61 == v63)
          {
            v61 = 0;
          }

          v62 |= v64;
          v65 = *(v52 + 8 * v61);
          if (v65 != -1)
          {
            v53 = __clz(__rbit64(~v65)) + (v61 << 6);
            goto LABEL_52;
          }
        }

        goto LABEL_82;
      }

      v53 = __clz(__rbit64((-1 << v60) & ~*(v52 + 8 * (v60 >> 6)))) | v60 & 0x7FFFFFFFFFFFFFC0;
LABEL_52:
      *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      *(*(v9 + 48) + 4 * v53) = v57;
      ++*(v9 + 16);
    }

    v55 = v47;
    while (1)
    {
      v47 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v47 >= v51)
      {
        goto LABEL_72;
      }

      v56 = *(v6 + 56 + 8 * v47);
      ++v55;
      if (v56)
      {
        v54 = __clz(__rbit64(v56));
        v50 = (v56 - 1) & v56;
        goto LABEL_60;
      }
    }
  }

  else
  {
    v32 = static _SetStorage.copy(original:)();
    v9 = v32;
    if (!*(v6 + 16))
    {
LABEL_69:

      *v4 = v9;
      a2 = v31;
LABEL_76:
      *(v9 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      *(*(v9 + 48) + 4 * a2) = v5;
      v68 = *(v9 + 16);
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (!v69)
      {
        *(v9 + 16) = v70;
        return result;
      }

      goto LABEL_83;
    }

    v33 = (v32 + 56);
    v34 = v6 + 56;
    v35 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v6 || v33 >= v34 + 8 * v35)
    {
      memmove(v33, (v6 + 56), 8 * v35);
    }

    v36 = 0;
    *(v9 + 16) = *(v6 + 16);
    v37 = 1 << *(v6 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v6 + 56);
    for (i = (v37 + 63) >> 6; v39; *(*(v9 + 48) + 4 * v42) = *(*(v6 + 48) + 4 * v42))
    {
      v41 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v42 = v41 | (v36 << 6);
LABEL_42:
      ;
    }

    v43 = v36;
    while (1)
    {
      v36 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v36 >= i)
      {
        goto LABEL_69;
      }

      v44 = *(v34 + 8 * v36);
      ++v43;
      if (v44)
      {
        v39 = (v44 - 1) & v44;
        v42 = __clz(__rbit64(v44)) | (v36 << 6);
        goto LABEL_42;
      }
    }

LABEL_80:
    __break(1u);
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v5 = result;
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    v9 = *v3;
    goto LABEL_76;
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd, &_ss11_SetStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMR);
    v10 = static _SetStorage.resize(original:capacity:move:)();
    v9 = v10;
    if (*(v6 + 16))
    {
      v11 = 0;
      v12 = (v6 + 56);
      v13 = 1 << *(v6 + 32);
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v15 = v14 & *(v6 + 56);
      v16 = (v13 + 63) >> 6;
      v17 = v10 + 56;
      while (v15)
      {
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_19:
        v22 = *(*(v6 + 48) + (v19 | (v11 << 6)));
        Hasher.init(_seed:)();
        MEMORY[0x1865CD060](v22);
        v23 = Hasher._finalize()();
        v24 = -1 << *(v9 + 32);
        v25 = v23 & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
        {
          v27 = 0;
          v28 = (63 - v24) >> 6;
          while (++v26 != v28 || (v27 & 1) == 0)
          {
            v29 = v26 == v28;
            if (v26 == v28)
            {
              v26 = 0;
            }

            v27 |= v29;
            v30 = *(v17 + 8 * v26);
            if (v30 != -1)
            {
              v18 = __clz(__rbit64(~v30)) + (v26 << 6);
              goto LABEL_11;
            }
          }

LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
        *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v9 + 48) + v18) = v22;
        ++*(v9 + 16);
      }

      v20 = v11;
      while (1)
      {
        v11 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_79;
        }

        if (v11 >= v16)
        {
          break;
        }

        v21 = v12[v11];
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v15 = (v21 - 1) & v21;
          goto LABEL_19;
        }
      }

      v45 = 1 << *(v6 + 32);
      if (v45 >= 64)
      {
        bzero((v6 + 56), ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v45;
      }

      v4 = v3;
      *(v6 + 16) = 0;
    }

LABEL_72:

    *v4 = v9;
    Hasher.init(_seed:)();
    MEMORY[0x1865CD060](v5);
    result = Hasher._finalize()();
    v66 = -1 << *(v9 + 32);
    a2 = result & ~v66;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v67 = ~v66;
      while (*(*(v9 + 48) + a2) != v5)
      {
        a2 = (a2 + 1) & v67;
        if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_84;
    }

    goto LABEL_76;
  }

  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd, &_ss11_SetStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMR);
  if (v8 <= v7)
  {
    v46 = static _SetStorage.resize(original:capacity:move:)();
    v9 = v46;
    if (!*(v6 + 16))
    {
      goto LABEL_72;
    }

    v47 = 0;
    v48 = 1 << *(v6 + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & *(v6 + 56);
    v51 = (v48 + 63) >> 6;
    v52 = v46 + 56;
    while (v50)
    {
      v54 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
LABEL_60:
      v57 = *(*(v6 + 48) + (v54 | (v47 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v57);
      v58 = Hasher._finalize()();
      v59 = -1 << *(v9 + 32);
      v60 = v58 & ~v59;
      v61 = v60 >> 6;
      if (((-1 << v60) & ~*(v52 + 8 * (v60 >> 6))) == 0)
      {
        v62 = 0;
        v63 = (63 - v59) >> 6;
        while (++v61 != v63 || (v62 & 1) == 0)
        {
          v64 = v61 == v63;
          if (v61 == v63)
          {
            v61 = 0;
          }

          v62 |= v64;
          v65 = *(v52 + 8 * v61);
          if (v65 != -1)
          {
            v53 = __clz(__rbit64(~v65)) + (v61 << 6);
            goto LABEL_52;
          }
        }

        goto LABEL_82;
      }

      v53 = __clz(__rbit64((-1 << v60) & ~*(v52 + 8 * (v60 >> 6)))) | v60 & 0x7FFFFFFFFFFFFFC0;
LABEL_52:
      *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      *(*(v9 + 48) + v53) = v57;
      ++*(v9 + 16);
    }

    v55 = v47;
    while (1)
    {
      v47 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v47 >= v51)
      {
        goto LABEL_72;
      }

      v56 = *(v6 + 56 + 8 * v47);
      ++v55;
      if (v56)
      {
        v54 = __clz(__rbit64(v56));
        v50 = (v56 - 1) & v56;
        goto LABEL_60;
      }
    }
  }

  else
  {
    v32 = static _SetStorage.copy(original:)();
    v9 = v32;
    if (!*(v6 + 16))
    {
LABEL_69:

      *v4 = v9;
      a2 = v31;
LABEL_76:
      *(v9 + 8 * (a2 >> 6) + 56) |= 1 << a2;
      *(*(v9 + 48) + a2) = v5;
      v68 = *(v9 + 16);
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (!v69)
      {
        *(v9 + 16) = v70;
        return result;
      }

      goto LABEL_83;
    }

    v33 = (v32 + 56);
    v34 = v6 + 56;
    v35 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v6 || v33 >= v34 + 8 * v35)
    {
      memmove(v33, (v6 + 56), 8 * v35);
    }

    v36 = 0;
    *(v9 + 16) = *(v6 + 16);
    v37 = 1 << *(v6 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v6 + 56);
    for (i = (v37 + 63) >> 6; v39; *(*(v9 + 48) + v42) = *(*(v6 + 48) + v42))
    {
      v41 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v42 = v41 | (v36 << 6);
LABEL_42:
      ;
    }

    v43 = v36;
    while (1)
    {
      v36 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v36 >= i)
      {
        goto LABEL_69;
      }

      v44 = *(v34 + 8 * v36);
      ++v43;
      if (v44)
      {
        v39 = (v44 - 1) & v44;
        v42 = __clz(__rbit64(v44)) | (v36 << 6);
        goto LABEL_42;
      }
    }

LABEL_80:
    __break(1u);
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Calendar.ComponentSet.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  for (i = v6 & *(result + 56); i; v4 |= qword_181232728[*(*(result + 48) + (v9 | (v8 << 6)))])
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(i));
    i &= i - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= ((v5 + 63) >> 6))
    {

      *a2 = v4;
      return result;
    }

    i = *(result + 56 + 8 * v8);
    ++v3;
    if (i)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static DateComponents._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, void *a2)
{
  memcpy(__dst, a2, 0x11BuLL);
  outlined destroy of TermOfAddress?(__dst, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  BYTE8(__src[2]) = 1;
  *&__src[3] = 0;
  BYTE8(__src[3]) = 1;
  *&__src[4] = 0;
  BYTE8(__src[4]) = 1;
  *&__src[5] = 0;
  BYTE8(__src[5]) = 1;
  *&__src[6] = 0;
  BYTE8(__src[6]) = 1;
  *&__src[7] = 0;
  BYTE8(__src[7]) = 1;
  *&__src[8] = 0;
  BYTE8(__src[8]) = 1;
  *&__src[9] = 0;
  BYTE8(__src[9]) = 1;
  *&__src[10] = 0;
  BYTE8(__src[10]) = 1;
  *&__src[11] = 0;
  BYTE8(__src[11]) = 1;
  *&__src[12] = 0;
  BYTE8(__src[12]) = 1;
  *&__src[13] = 0;
  BYTE8(__src[13]) = 1;
  *&__src[14] = 0;
  BYTE8(__src[14]) = 1;
  *&__src[15] = 0;
  BYTE8(__src[15]) = 1;
  *&__src[16] = 0;
  BYTE8(__src[16]) = 1;
  *&__src[17] = 0;
  BYTE8(__src[17]) = 1;
  *(&__src[17] + 9) = 514;
  memset(__src, 0, 40);
  v47[0] = 0;
  v47[1] = 0;
  DateComponents.timeZone.setter(v47);
  *&__src[2] = 0;
  BYTE8(__src[2]) = 1;
  *&__src[3] = 0;
  BYTE8(__src[3]) = 1;
  *&__src[4] = 0;
  BYTE8(__src[4]) = 1;
  *&__src[5] = 0;
  BYTE8(__src[5]) = 1;
  *&__src[7] = 0;
  BYTE8(__src[7]) = 1;
  *&__src[8] = 0;
  BYTE8(__src[8]) = 1;
  *&__src[9] = 0;
  BYTE8(__src[9]) = 1;
  *&__src[10] = 0;
  BYTE8(__src[10]) = 1;
  *&__src[11] = 0;
  BYTE8(__src[11]) = 1;
  *&__src[12] = 0;
  BYTE8(__src[12]) = 1;
  *&__src[13] = 0;
  BYTE8(__src[13]) = 1;
  *&__src[15] = 0;
  BYTE8(__src[15]) = 1;
  *&__src[16] = 0;
  BYTE8(__src[16]) = 1;
  *&__src[17] = 0;
  BYTE8(__src[17]) = 1;
  *&__src[6] = 0;
  BYTE8(__src[6]) = 1;
  memcpy(v49, __src, 0x11BuLL);
  v4 = [a1 calendar];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for _NSSwiftCalendar();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____NSSwiftCalendar__lock);
      v8 = v5;
      os_unfair_lock_lock((v7 + 32));
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v7 + 32));
    }

    else
    {
      type metadata accessor for _CalendarBridged();
      v10 = swift_allocObject();
      *(v10 + 16) = v5;
      v9 = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _CalendarBridged and conformance _CalendarBridged, type metadata accessor for _CalendarBridged, &protocol conformance descriptor for _CalendarBridged);
    }

    v49[0] = v10;
    v49[1] = v9;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v49[2])
    {
      if (!v10)
      {
        goto LABEL_9;
      }

      v47[0] = v49[2];
      v47[1] = v49[3];
      swift_unknownObjectRetain_n();
      Calendar.timeZone.setter(v47);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

LABEL_9:
  v11 = [a1 timeZone];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for _NSSwiftTimeZone();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____NSSwiftTimeZone_timeZone);
      v15 = *(v13 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
      swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _TimeZoneBridged();
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      v15 = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged, &protocol conformance descriptor for _TimeZoneBridged);
    }

    v47[0] = v14;
    v47[1] = v15;
    DateComponents.timeZone.setter(v47);
  }

  if ([a1 era] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [a1 era];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    v49[4] = v17;
    LOBYTE(v49[5]) = v16 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 year] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [a1 year];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    v49[6] = v19;
    LOBYTE(v49[7]) = v18 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 month] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [a1 month];
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    v49[8] = v21;
    LOBYTE(v49[9]) = v20 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = [a1 day];
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    v49[10] = v23;
    LOBYTE(v49[11]) = v22 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [a1 hour];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    v49[14] = v25;
    LOBYTE(v49[15]) = v24 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = [a1 minute];
    if (v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0;
    }

    else
    {
      v27 = v26;
    }

    v49[16] = v27;
    LOBYTE(v49[17]) = v26 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 second] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = [a1 second];
    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    v49[18] = v29;
    LOBYTE(v49[19]) = v28 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 nanosecond] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = [a1 nanosecond];
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30;
    }

    v49[20] = v31;
    LOBYTE(v49[21]) = v30 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 weekday] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = [a1 weekday];
    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    v49[22] = v33;
    LOBYTE(v49[23]) = v32 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 weekdayOrdinal] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = [a1 weekdayOrdinal];
    if (v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = 0;
    }

    else
    {
      v35 = v34;
    }

    v49[24] = v35;
    LOBYTE(v49[25]) = v34 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 quarter] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = [a1 quarter];
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36;
    }

    v49[26] = v37;
    LOBYTE(v49[27]) = v36 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 weekOfMonth] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v38 = [a1 weekOfMonth];
    if (v38 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v39 = 0;
    }

    else
    {
      v39 = v38;
    }

    v49[30] = v39;
    LOBYTE(v49[31]) = v38 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 weekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v40 = [a1 weekOfYear];
    if (v40 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40;
    }

    v49[32] = v41;
    LOBYTE(v49[33]) = v40 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 yearForWeekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = [a1 yearForWeekOfYear];
    if (v42 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    v49[34] = v43;
    LOBYTE(v49[35]) = v42 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([a1 dayOfYear] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = [a1 dayOfYear];
    if (v44 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = 0;
    }

    else
    {
      v45 = v44;
    }

    v49[12] = v45;
    LOBYTE(v49[13]) = v44 == 0x7FFFFFFFFFFFFFFFLL;
  }

  if (__NSDateComponentsIsLeapMonthSet(a1))
  {
    BYTE1(v49[35]) = [a1 isLeapMonth];
  }

  if (__NSDateComponentsIsRepeatedDaySet(a1))
  {
    BYTE2(v49[35]) = [a1 isRepeatedDay];
  }

  if (__NSDateComponentsWeek(a1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v49[28] = __NSDateComponentsWeek(a1);
    LOBYTE(v49[29]) = 0;
  }

  memcpy(v47, v49, 0x11BuLL);
  _NSBundleDeallocatingImmortalBundle();
  memcpy(a2, v47, 0x11BuLL);
  return 1;
}

uint64_t getEnumTagSinglePayload for DateComponents(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 283))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

void *static DateComponents._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    LOBYTE(__src[5]) = 1;
    __src[6] = 0;
    LOBYTE(__src[7]) = 1;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    __src[10] = 0;
    LOBYTE(__src[11]) = 1;
    __src[12] = 0;
    LOBYTE(__src[13]) = 1;
    __src[14] = 0;
    LOBYTE(__src[15]) = 1;
    __src[16] = 0;
    LOBYTE(__src[17]) = 1;
    __src[18] = 0;
    LOBYTE(__src[19]) = 1;
    __src[20] = 0;
    LOBYTE(__src[21]) = 1;
    __src[22] = 0;
    LOBYTE(__src[23]) = 1;
    __src[24] = 0;
    LOBYTE(__src[25]) = 1;
    __src[26] = 0;
    LOBYTE(__src[27]) = 1;
    __src[28] = 0;
    LOBYTE(__src[29]) = 1;
    __src[30] = 0;
    LOBYTE(__src[31]) = 1;
    LOBYTE(__src[33]) = 1;
    __src[32] = 0;
    __src[34] = 0;
    LOBYTE(__src[35]) = 1;
    *(&__src[35] + 1) = 514;
    memset(__src, 0, 40);
    v3 = a1;
    v9[1] = 0;
    v9[0] = 0;
    DateComponents.timeZone.setter(v9);
    __src[4] = 0;
    LOBYTE(__src[5]) = 1;
    __src[6] = 0;
    LOBYTE(__src[7]) = 1;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    __src[10] = 0;
    LOBYTE(__src[11]) = 1;
    __src[14] = 0;
    LOBYTE(__src[15]) = 1;
    __src[16] = 0;
    LOBYTE(__src[17]) = 1;
    __src[18] = 0;
    LOBYTE(__src[19]) = 1;
    __src[20] = 0;
    LOBYTE(__src[21]) = 1;
    __src[22] = 0;
    LOBYTE(__src[23]) = 1;
    __src[24] = 0;
    LOBYTE(__src[25]) = 1;
    __src[26] = 0;
    LOBYTE(__src[27]) = 1;
    __src[30] = 0;
    LOBYTE(__src[31]) = 1;
    LOBYTE(__src[33]) = 1;
    __src[32] = 0;
    __src[34] = 0;
    LOBYTE(__src[35]) = 1;
    __src[12] = 0;
    LOBYTE(__src[13]) = 1;
    memcpy(__dst, __src, sizeof(__dst));
    _NSBundleDeallocatingImmortalBundle();
    memcpy(v11, __dst, 0x11BuLL);
    specialized static DateComponents._conditionallyBridgeFromObjectiveC(_:result:)(v3, v11);
    memcpy(v9, v11, 0x11BuLL);
    result = _s10Foundation13URLComponentsV01_B0VSgWOg(v9);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      memcpy(v6, v11, 0x11BuLL);
      memcpy(v7, v11, 0x11BuLL);
      outlined init with copy of DateComponents(v7, &v5);
      outlined destroy of TermOfAddress?(v6, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);

      return memcpy(a2, v9, 0x11BuLL);
    }
  }

  else
  {
    *(a2 + 4) = 0;
    *a2 = 0u;
    a2[1] = 0u;
    *(a2 + 40) = 1;
    *(a2 + 6) = 0;
    *(a2 + 56) = 1;
    *(a2 + 8) = 0;
    *(a2 + 72) = 1;
    *(a2 + 10) = 0;
    *(a2 + 88) = 1;
    *(a2 + 12) = 0;
    *(a2 + 104) = 1;
    *(a2 + 14) = 0;
    *(a2 + 120) = 1;
    *(a2 + 16) = 0;
    *(a2 + 136) = 1;
    *(a2 + 18) = 0;
    *(a2 + 152) = 1;
    *(a2 + 20) = 0;
    *(a2 + 168) = 1;
    *(a2 + 22) = 0;
    *(a2 + 184) = 1;
    *(a2 + 24) = 0;
    *(a2 + 200) = 1;
    *(a2 + 26) = 0;
    *(a2 + 216) = 1;
    *(a2 + 28) = 0;
    *(a2 + 232) = 1;
    *(a2 + 30) = 0;
    *(a2 + 248) = 1;
    *(a2 + 32) = 0;
    *(a2 + 264) = 1;
    *(a2 + 34) = 0;
    *(a2 + 280) = 1;
    *(a2 + 281) = 514;
    *a2 = 0uLL;
    __src[1] = 0;
    __src[0] = 0;
    result = DateComponents.timeZone.setter(__src);
    *(a2 + 4) = 0;
    *(a2 + 40) = 1;
    *(a2 + 6) = 0;
    *(a2 + 56) = 1;
    *(a2 + 8) = 0;
    *(a2 + 72) = 1;
    *(a2 + 10) = 0;
    *(a2 + 88) = 1;
    *(a2 + 14) = 0;
    *(a2 + 120) = 1;
    *(a2 + 16) = 0;
    *(a2 + 136) = 1;
    *(a2 + 18) = 0;
    *(a2 + 152) = 1;
    *(a2 + 20) = 0;
    *(a2 + 168) = 1;
    *(a2 + 22) = 0;
    *(a2 + 184) = 1;
    *(a2 + 24) = 0;
    *(a2 + 200) = 1;
    *(a2 + 26) = 0;
    *(a2 + 216) = 1;
    *(a2 + 30) = 0;
    *(a2 + 248) = 1;
    *(a2 + 32) = 0;
    *(a2 + 264) = 1;
    *(a2 + 34) = 0;
    *(a2 + 280) = 1;
    *(a2 + 12) = 0;
    *(a2 + 104) = 1;
  }

  return result;
}

uint64_t _CalendarGregorian.date(from:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = a1 + 2;
  __src = *a1;
  v29 = v5;
  v30 = v6;
  *(v45 + 11) = *(a1 + 267);
  v8 = a1[15];
  v43 = a1[14];
  v44 = v8;
  v45[0] = a1[16];
  v9 = a1[11];
  v39 = a1[10];
  v40 = v9;
  v10 = a1[13];
  v41 = a1[12];
  v42 = v10;
  v11 = a1[7];
  v35 = a1[6];
  v36 = v11;
  v12 = a1[9];
  v37 = a1[8];
  v38 = v12;
  v13 = a1[3];
  v31 = a1[2];
  v32 = v13;
  v14 = a1[5];
  v33 = a1[4];
  v34 = v14;
  result = specialized static _CalendarGregorian.isComponentsInSupportedRange(_:)(&__src);
  if (result)
  {
    __src = *a1;
    v29 = v5;
    v30 = v6;
    *(v45 + 11) = *(v7 + 235);
    v16 = v7[13];
    v43 = v7[12];
    v44 = v16;
    v45[0] = v7[14];
    v17 = v7[9];
    v39 = v7[8];
    v40 = v17;
    v18 = v7[11];
    v41 = v7[10];
    v42 = v18;
    v19 = v7[5];
    v35 = v7[4];
    v36 = v19;
    v20 = v7[7];
    v37 = v7[6];
    v38 = v20;
    v21 = v7[1];
    v31 = *v7;
    v32 = v21;
    v22 = v7[3];
    v33 = v7[2];
    v34 = v22;
    if (v5)
    {
      v23 = v5;
    }

    else
    {
      v23 = *(v2 + 112);
      v6 = *(v2 + 120);
      swift_unknownObjectRetain();
    }

    v26[0] = v23;
    v26[1] = v6;
    v25 = 0;
    swift_unknownObjectRetain();
    _s10Foundation18_CalendarGregorianC4date4from10inTimeZone011dstRepeatedG6Policy0i7SkippedgK0AA4DateVAA0M10ComponentsV_AA0gH0VAN014DaylightSavinggK0OAPtAA0cB5ErrorOYKF(&v27, &__src, v26, &v25, v24);
    result = swift_unknownObjectRelease();
    *a2 = v27;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  return result;
}

char *_s10Foundation18_CalendarGregorianC4date4from10inTimeZone011dstRepeatedG6Policy0i7SkippedgK0AA4DateVAA0M10ComponentsV_AA0gH0VAN014DaylightSavinggK0OAPtAA0cB5ErrorOYKF@<X0>(double *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>, char *a4@<X2>, unint64_t a5@<X4>)
{
  memcpy(__dst, __src, 0x11BuLL);
  v121 = *(a3 + 8);
  v10 = *a4;
  memcpy(__srca, __src, 0x11BuLL);
  outlined init with copy of DateComponents(__dst, v124);
  result = specialized ResolvedDateComponents.init(dateComponents:)(&v126, __srca);
  v13 = v126;
  v12 = v127;
  v14 = v137 >> 5;
  if (v14 > 2)
  {
    v16 = 0;
    v15 = v127;
    if (v14 == 3)
    {
      v16 = v126 == v122[8];
      v15 = 1;
    }
  }

  else
  {
    if ((v14 - 1) >= 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = v127;
    }

    v16 = 0;
  }

  v17 = v15 - 2;
  if (__OFSUB__(v15, 2))
  {
    goto LABEL_165;
  }

  v120 = v10;
  v18 = v126 + 4716;
  if (__OFADD__(v126, 4716))
  {
LABEL_15:
    __srca[0] = xmmword_18121FA20;
    __srca[1] = xmmword_18121B2B0;
    LOBYTE(__srca[2]) = 1;
    lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
    result = swift_willThrowTypedImpl();
    *a5 = xmmword_18121FA20;
    *(a5 + 16) = xmmword_18121B2B0;
    *(a5 + 32) = 1;
    return result;
  }

  if (__OFSUB__(12, v17))
  {
    goto LABEL_166;
  }

  v19 = (14 - v15) / 12;
  v20 = __OFSUB__(v18, v19);
  v21 = &v18[-v19];
  if (v20)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (__OFSUB__(v17, 1))
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  if (__OFADD__(v15 - 3, 12))
  {
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
    goto LABEL_178;
  }

  if ((v21 * 1461) >> 64 != (1461 * v21) >> 63)
  {
    goto LABEL_15;
  }

  v117 = v126 + 4716;
  _ = v127;
  v22 = v15 + 9 - 12 * (((((v15 + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 63) + ((((v15 + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 1));
  v23 = 1461 * v21 / 4 + (((26215 * (153 * v22 + 2)) >> 17) + ((26215 * (153 * v22 + 2)) >> 31)) - 1402;
  v24 = v23 - 3 * ((v21 + 184) / 100) / 4 + 38;
  if (v16)
  {
    v24 = v23;
  }

  v119 = v24;
  result = _CalendarGregorian.relativeWeekday(fromJulianDay:)(v24 + 1);
  v27 = v128;
  v28 = v129 | ((v130 | (v131 << 16)) << 32);
  v29 = v132;
  v30 = v133 | ((v134 | (v135 << 16)) << 32);
  v31 = v136;
  v32 = v14 - 1;
  v113 = v132;
  v111 = v30;
  v112 = v136;
  if (v14 <= 1)
  {
    if (v14)
    {
      v34 = v128 | (v28 << 8);
      if (v132)
      {
        v34 = 1;
      }

      v20 = __OFADD__(v119, v34);
      v30 = v119 + v34;
      v33 = v122;
      if (!v20)
      {
        goto LABEL_76;
      }

      __break(1u);
      goto LABEL_36;
    }

    v30 = v119 + v12;
    v33 = v122;
    if (!__OFADD__(v119, v12))
    {
      goto LABEL_76;
    }

    __break(1u);
LABEL_27:
    v26 = v28 << 8;
    v33 = v122;
    if (v31)
    {
      result = 0;
      goto LABEL_37;
    }

LABEL_36:
    v105 = v25;
    v110 = v27;
    v35 = v28;
    v101 = v26;
    result = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v29 | (v30 << 8));
    v26 = v101;
    v25 = v105;
    v32 = v14 - 1;
    v28 = v35;
    v33 = v122;
    v27 = v110;
LABEL_37:
    a1 = (v27 | (v28 << 8));
    if ((result - v25) <= 0x7FFFFFFFFFFFFFFELL)
    {
      v25 = (result - v25 + 1);
    }

    else
    {
      v25 = (result - v25 + 8);
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    v29 = 8 * (a1 - 1);
    v36 = 7 * (a1 - 1);
    if (((a1 - 1) * 7) >> 64 == v36 >> 63)
    {
      v20 = __OFADD__(v25, v36);
      v30 = v25 + v36;
      a1 = v114;
      if (!v20)
      {
        goto LABEL_75;
      }

      __break(1u);
      goto LABEL_45;
    }

LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v25 = result;
  v114 = a1;
  if (v14 == 2)
  {
    goto LABEL_27;
  }

  v33 = v122;
  if (v14 == 3)
  {
    v110 = v128;
    if (v136)
    {
      result = 0;
      goto LABEL_46;
    }

LABEL_45:
    v37 = v28;
    v38 = v32;
    v106 = v25;
    result = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v29 | (v30 << 8));
    v25 = v106;
    v32 = v38;
    v28 = v37;
LABEL_46:
    v39 = (result - v25);
    v15 = result - v25 + 1;
    if (*(v33 + 152) == 1)
    {
      if (!v33[12])
      {
        goto LABEL_98;
      }

      v40 = v33[13];
      v96 = (result - v25);
      v98 = v28;
      v102 = v32;
      v107 = v25;
      ObjectType = swift_getObjectType();
      v93 = *(v40 + 344);
      swift_unknownObjectRetain();
      v42 = v93(ObjectType, v40);
      result = swift_unknownObjectRelease();
      v39 = v96;
      v28 = v98;
      v25 = v107;
      v32 = v102;
    }

    else
    {
      v42 = v33[18];
    }

    v27 = v110;
    v47 = v39 + 8;
    if (7 - v25 < v42)
    {
      v15 = v47;
    }

    a1 = v114;
    if ((v110 & 1) == 0)
    {
LABEL_57:
      v48 = v12 - 1;
      if (!__OFSUB__(v12, 1))
      {
        v49 = 7 * v48;
        v29 = 7;
        if ((v48 * 7) >> 64 == (7 * v48) >> 63)
        {
          v20 = __OFADD__(v15, v49);
          v15 += v49;
          if (!v20)
          {
            goto LABEL_60;
          }

LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }

LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    while (1)
    {
LABEL_60:
      v30 = v119 + v15;
      if (__OFADD__(v119, v15))
      {
        __break(1u);
LABEL_63:
        v46 = v33[18];
LABEL_64:
        v31 = v15 + 8;
        if (7 - v25 < v46)
        {
          v26 = v15 + 8;
        }

        v50 = v29 - 1;
        if (__OFSUB__(v29, 1))
        {
          goto LABEL_102;
        }

LABEL_67:
        v51 = 7 * v50;
        if ((v50 * 7) >> 64 != (7 * v50) >> 63)
        {
          goto LABEL_175;
        }

        v52 = v26 + v51;
        if (__OFADD__(v26, v51))
        {
          goto LABEL_177;
        }

        v20 = __OFADD__(v119, v52);
        v30 = v119 + v52;
        if (v20)
        {
          __break(1u);
LABEL_72:
          v104 = v32;
          v100 = v28;
          v110 = v27;
          v53 = v15;
          v54 = v25;
          result = _CalendarGregorian.numberOfDaysInMonth(_:year:)(v53, v13);
          v55 = a1 + ((((37 * (result - v54)) >> 8) + (((result - v54 - ((37 * (result - v54)) >> 8)) & 0xFE) >> 1)) >> 2) + 1;
          v56 = 7 * v55;
          if ((v55 * 7) >> 64 != (7 * v55) >> 63)
          {
            goto LABEL_182;
          }

          v20 = __OFADD__(v54, v56);
          v30 = v54 + v56;
          a1 = v114;
          v32 = v104;
          if (v20)
          {
            goto LABEL_183;
          }

          v27 = v110;
          v28 = v100;
LABEL_75:
          v20 = __OFADD__(v119, v30);
          v30 += v119;
          if (v20)
          {
            goto LABEL_176;
          }
        }
      }

LABEL_76:
      if ((v16 & 1) != 0 || v30 >= v33[7])
      {
        goto LABEL_151;
      }

      if (v14 <= 2)
      {
        break;
      }

      if (v14 == 3)
      {
        goto LABEL_80;
      }

LABEL_81:
      v57 = _ - 2;
      if (__OFSUB__(_, 2))
      {
        goto LABEL_170;
      }

      if (__OFSUB__(12, v57))
      {
        goto LABEL_171;
      }

      v58 = (14 - _) / 12;
      v59 = &v117[-v58];
      if (__OFSUB__(v117, v58))
      {
        goto LABEL_172;
      }

      if (__OFSUB__(v57, 1))
      {
        goto LABEL_173;
      }

      if (__OFADD__(_ - 3, 12))
      {
        goto LABEL_174;
      }

      if ((v59 * 1461) >> 64 != (1461 * v59) >> 63)
      {
        goto LABEL_15;
      }

      v16 = v28;
      a5 = v27;
      v60 = _ + 9 - 12 * (((((_ + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 63) + ((((_ + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 1));
      v61 = 1461 * v59 / 4 + (((26215 * (153 * v60 + 2)) >> 17) + ((26215 * (153 * v60 + 2)) >> 31));
      v15 = v61 - 1402;
      result = _CalendarGregorian.relativeWeekday(fromJulianDay:)(v61 - 1401);
      if (v14 > 1)
      {
        v33 = result;
        v50 = v16;
        v31 = v113;
        if (v14 == 2)
        {
          goto LABEL_103;
        }

        if (v14 == 3)
        {
          if ((v112 & 1) == 0)
          {
            goto LABEL_121;
          }

          result = 0;
          v62 = v122;
          goto LABEL_122;
        }

        if (v112)
        {
          result = 0;
          v63 = v122;
        }

        else
        {
          v63 = v122;
          result = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v113 | (v111 << 8));
          v50 = v16;
        }

        v16 = a5 | (v50 << 8);
        v13 = (result - v33);
        v68 = (result - v33 + 1);
        if (*(v63 + 152) != 1)
        {
          goto LABEL_139;
        }

        a5 = v15;
        if (v63[12])
        {
          v73 = v63[13];
          v74 = swift_getObjectType();
          v116 = a1;
          v75 = *(v73 + 344);
          swift_unknownObjectRetain();
          v76 = v75(v74, v73);
          a1 = v116;
          v77 = v76;
          result = swift_unknownObjectRelease();
          goto LABEL_140;
        }

        v80 = v16 - 1;
        if (__OFSUB__(v16, 1))
        {
          goto LABEL_164;
        }

        goto LABEL_143;
      }

      v31 = v113;
      if (v14)
      {
        v64 = a5 | (v16 << 8);
        if (v113)
        {
          v64 = 1;
        }

        v20 = __OFADD__(v15, v64);
        v30 = v15 + v64;
        if (v20)
        {
          __break(1u);
          goto LABEL_112;
        }

        goto LABEL_151;
      }

      v30 = v15 + v12;
      if (!__OFADD__(v15, v12))
      {
        goto LABEL_151;
      }

      __break(1u);
LABEL_98:
      v27 = v110;
      a1 = v114;
      if ((v110 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    if (v32 < 2)
    {
      goto LABEL_81;
    }

LABEL_80:
    _ = 1;
    goto LABEL_81;
  }

  if (v136)
  {
    result = 0;
  }

  else
  {
    v43 = v128;
    v44 = v129 | ((v130 | (v131 << 16)) << 32);
    v108 = result;
    result = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v132 | (v30 << 8));
    v25 = v108;
    v32 = v14 - 1;
    v28 = v44;
    v33 = v122;
    v27 = v43;
    a1 = v114;
  }

  v29 = v27 | (v28 << 8);
  v15 = result - v25;
  v26 = result - v25 + 1;
  if (*(v33 + 152) != 1)
  {
    goto LABEL_63;
  }

  if (v33[12])
  {
    v91 = v33[13];
    v109 = v25;
    v110 = v27;
    v97 = (result - v25 + 1);
    v99 = v28;
    v103 = v32;
    v95 = v27 | (v28 << 8);
    v45 = swift_getObjectType();
    v92 = *(v91 + 344);
    swift_unknownObjectRetain();
    a1 = v114;
    v94 = v92(v45, v91);
    result = swift_unknownObjectRelease();
    v46 = v94;
    v29 = v95;
    v26 = v97;
    v28 = v99;
    v25 = v109;
    v27 = v110;
    v32 = v103;
    goto LABEL_64;
  }

  v50 = v29 - 1;
  if (!__OFSUB__(v29, 1))
  {
    goto LABEL_67;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  v12 = v50 << 8;
  if (v112)
  {
    result = 0;
  }

  else
  {
LABEL_112:
    result = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v31 | (v111 << 8));
    v50 = v16;
  }

  v65 = _;
  a5 = a5 | (v50 << 8);
  if ((result - v33) <= 0x7FFFFFFFFFFFFFFELL)
  {
    v33 = (result - v33 + 1);
  }

  else
  {
    v33 = (result - v33 + 8);
  }

  if (v12 < 0)
  {
    goto LABEL_148;
  }

  v31 = ((a5 - 1) * 7) >> 64;
  v66 = 7 * (a5 - 1);
  if (v31 != v66 >> 63)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  v20 = __OFADD__(v33, v66);
  v67 = v33 + v66;
  if (!v20)
  {
LABEL_150:
    v20 = __OFADD__(v15, v67);
    v30 = &v67[v15];
    if (v20)
    {
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    goto LABEL_151;
  }

  __break(1u);
LABEL_121:
  v62 = v122;
  result = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v31 | (v111 << 8));
LABEL_122:
  v13 = (result - v33);
  v68 = (result - v33 + 1);
  if (*(v62 + 152) != 1)
  {
    v16 = v62[18];
    v63 = __srca;
LABEL_130:
    if (7 - v33 < v16)
    {
      v68 = v13 + 8;
    }

    if (a5)
    {
      goto LABEL_136;
    }

    goto LABEL_133;
  }

  if (v62[12])
  {
    v69 = v62[13];
    v70 = swift_getObjectType();
    v115 = a1;
    v71 = *(v69 + 344);
    swift_unknownObjectRetain();
    v72 = v71(v70, v69);
    a1 = v115;
    v16 = v72;
    result = swift_unknownObjectRelease();
    v63 = __srca;
    goto LABEL_130;
  }

  v63 = __srca;
  if (a5)
  {
    goto LABEL_136;
  }

LABEL_133:
  v78 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v79 = 7 * v78;
  if ((v78 * 7) >> 64 != (7 * v78) >> 63)
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v20 = __OFADD__(v68, v79);
  v68 += v79;
  if (v20)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

LABEL_136:
  v30 = &v68[v15];
  if (!__OFADD__(v15, v68))
  {
    goto LABEL_151;
  }

  __break(1u);
LABEL_139:
  v77 = v63[18];
LABEL_140:
  if (7 - v33 < v77)
  {
    v68 = v13 + 8;
  }

  v80 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

LABEL_143:
  v81 = 7 * v80;
  v65 = 7;
  if ((v80 * 7) >> 64 != (7 * v80) >> 63)
  {
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v82 = &v68[v81];
  if (__OFADD__(v68, v81))
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v20 = __OFADD__(v15, v82);
  v30 = &v82[v15];
  if (v20)
  {
    __break(1u);
LABEL_148:
    result = _CalendarGregorian.numberOfDaysInMonth(_:year:)(v65, v13);
    v83 = a5 + ((((37 * (result - v33)) >> 8) + (((result - v33 - ((37 * (result - v33)) >> 8)) & 0xFE) >> 1)) >> 2) + 1;
    v84 = 7 * v83;
    if ((v83 * 7) >> 64 != (7 * v83) >> 63)
    {
LABEL_191:
      __break(1u);
      goto LABEL_192;
    }

    v20 = __OFADD__(v33, v84);
    v67 = v33 + v84;
    if (v20)
    {
LABEL_192:
      __break(1u);
      return result;
    }

    goto LABEL_150;
  }

LABEL_151:
  v85 = __dst[14] * 3600.0 + 0.0;
  if (LOBYTE(__dst[15]))
  {
    v85 = 0.0;
  }

  v86 = __dst[16] * 60.0;
  if (LOBYTE(__dst[17]))
  {
    v86 = -0.0;
  }

  v87 = v85 + v86;
  if (!LOBYTE(__dst[19]))
  {
    v87 = v87 + __dst[18];
  }

  if ((__dst[21] & 1) == 0)
  {
    v87 = v87 + __dst[20] / 1000000000.0;
  }

  v88 = (v30 + -2451910.5) * 86400.0 + -43200.0 + v87;
  v89 = swift_getObjectType();
  *__srca = v88;
  v124[0] = v120;
  v123 = 0;
  result = (*(v121 + 56))(__srca, v124, &v123, v89, v121);
  *a1 = v88 - result - v90;
  return result;
}

uint64_t specialized static _CalendarGregorian.isComponentsInSupportedRange(_:)(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  v8 = *(a1 + 112);
  v9 = *(a1 + 120);
  v10 = *(a1 + 128);
  v11 = *(a1 + 136);
  v12 = *(a1 + 144);
  v13 = *(a1 + 152);
  v14 = *(a1 + 176);
  v15 = *(a1 + 184);
  v16 = *(a1 + 192);
  v17 = *(a1 + 200);
  v18 = *(a1 + 248);
  v19 = *(a1 + 264);
  v20 = *(a1 + 281);
  if ((*(a1 + 40) & 1) == 0 && (*(a1 + 32) - 11) < 0xFFFFFFFFFFFFFFEBLL)
  {
    goto LABEL_51;
  }

  if ((*(a1 + 48) + 4714) < 0x7CDC5)
  {
    v1 = 1;
  }

  if (v1 != 1)
  {
    goto LABEL_51;
  }

  v21 = (*(a1 + 208) + 18856) < 0x1F3711 ? 1 : *(a1 + 216);
  if (v21 != 1)
  {
    goto LABEL_51;
  }

  if ((*(a1 + 256) + 245128) < 0x195CBD1)
  {
    v19 = 1;
  }

  if (v19 != 1)
  {
    goto LABEL_51;
  }

  if ((*(a1 + 240) + 245128) < 0x195CBD1)
  {
    v18 = 1;
  }

  if (v18 != 1)
  {
    goto LABEL_51;
  }

  v22 = (*(a1 + 272) + 4714) < 0x7CDC5 ? 1 : *(a1 + 280);
  if (v22 != 1)
  {
    goto LABEL_51;
  }

  v23 = (v14 + 1715896) < 0xB1892B1 ? 1 : v15;
  if (v23 != 1)
  {
    goto LABEL_51;
  }

  v24 = (v16 + 245128) < 0x195CBD1 ? 1 : v17;
  if (v24 != 1)
  {
    goto LABEL_51;
  }

  v25 = (v2 + 56568) < 0x5DA531 ? 1 : v3;
  if (v25 != 1)
  {
    goto LABEL_51;
  }

  if ((v6 + 1720610) < 0xB206075)
  {
    v7 = 1;
  }

  if (v7 != 1)
  {
    goto LABEL_51;
  }

  if ((v4 + 1753608) < 0xB5700D1)
  {
    v5 = 1;
  }

  if (v5 != 1)
  {
    goto LABEL_51;
  }

  if ((v8 + 41294640) < 0x82761B30)
  {
    v9 = 1;
  }

  if (v9 == 1 && (v10 == v10 ? (v26 = 1) : (v26 = v11), v26 == 1 && (v12 == v12 ? (v27 = 1) : (v27 = v13), v27 == 1)))
  {
    if (v20 == 2)
    {
      v28 = 1;
    }

    else
    {
      v28 = v20 ^ 1;
    }
  }

  else
  {
LABEL_51:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t *specialized ResolvedDateComponents.init(dateComponents:)@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  memcpy(v15, __src, 0x11BuLL);
  result = outlined destroy of DateComponents(v15);
  if (v15[35])
  {
    v4 = v15[6];
    if (LOBYTE(v15[7]))
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = v15[34];
    if ((v15[33] & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((v15[5] & 1) == 0 && !v15[4])
  {
    v5 = __OFSUB__(1, v4);
    v4 = 1 - v4;
    if (v5)
    {
      __break(1u);
      goto LABEL_56;
    }
  }

LABEL_9:
  if (v15[9])
  {
    v6 = 1;
    goto LABEL_19;
  }

  if (v15[8] >= 13)
  {
    v7 = (v15[8] - 1) / 0xCuLL;
    v5 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v5)
    {
      v6 = (v15[8] - 1) % 0xCuLL + 1;
      goto LABEL_19;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v15[8] < 1)
  {
    v8 = -v15[8] / 0xCuLL;
    v5 = __OFADD__(v4, -v8);
    v9 = v4 - v8;
    if (v5)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v5 = __OFSUB__(v9, 1);
    v4 = v9 - 1;
    if (v5)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v6 = 12 - -v15[8] % 0xCuLL;
  }

  else
  {
    v6 = v15[8];
  }

LABEL_19:
  v10 = v15[10];
  if (v15[11])
  {
    if (v15[25] & 1) != 0 || (v15[23])
    {
      v11 = v15[32];
      if (v15[33] & 1) != 0 || (v15[23])
      {
        if (v15[31] & 1) != 0 || (result = LOBYTE(v15[23]), (v15[23]))
        {
          result = LOBYTE(v15[13]);
          if (LOBYTE(v15[13]) == 1)
          {
            if (v15[35])
            {
              if (v15[7])
              {
                if (LOBYTE(v15[33]))
                {
                  if (v15[31])
                  {
                    if (v15[25])
                    {
                      if (v15[23])
                      {
                        v12 = 33;
                        v13 = 1;
                      }

                      else
                      {
                        v11 = 0;
                        v12 = 64;
                        v13 = v15[22];
                        v10 = 1;
                      }
                    }

                    else
                    {
                      v13 = v15[22];
                      v11 = LOBYTE(v15[23]);
                      v12 = 64;
                      v10 = v15[24];
                    }
                  }

                  else
                  {
                    v13 = v15[22];
                    v11 = LOBYTE(v15[23]);
                    v12 = 0x80;
                    v10 = v15[30];
                  }
                }

                else
                {
                  v10 = 0;
                  v13 = v15[22];
                  v6 = v15[32];
                  v11 = LOBYTE(v15[23]);
                  v12 = 96;
                }
              }

              else
              {
                v12 = LOBYTE(v15[33]) | 0x20;
                v13 = 1;
              }
            }

            else
            {
              v13 = v15[22];
              v6 = v15[32];
              v11 = LOBYTE(v15[23]);
              v12 = 96;
              v10 = LOBYTE(v15[33]);
            }
          }

          else
          {
            v10 = 0;
            v13 = 0;
            v11 = 0;
            v12 = 0;
            v6 = v15[12];
          }
        }

        else
        {
          v11 = 0;
          v12 = 0x80;
          v13 = v15[22];
          v10 = v15[30];
        }
      }

      else
      {
        v10 = 0;
        v12 = 96;
        v13 = v15[22];
        v6 = v15[32];
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = 64;
      v13 = v15[22];
      v10 = v15[24];
    }

    goto LABEL_54;
  }

  v11 = v15[32];
  v14 = v15[33];
  if ((LOBYTE(v15[35]) | (LOBYTE(v15[9]) | LOBYTE(v15[33]))))
  {
LABEL_43:
    v13 = 0;
    v12 = v14 | 0x20;
LABEL_54:
    *a1 = v4;
    a1[1] = v6;
    a1[2] = v10;
    a1[3] = v13;
    a1[4] = v11;
    *(a1 + 40) = v12;
    return result;
  }

  if (v15[8] == 1 && v15[32] >= 52)
  {
    v5 = __OFADD__(v4++, 1);
    if (!v5)
    {
      v14 = 0;
      goto LABEL_43;
    }

    goto LABEL_57;
  }

  v14 = 0;
  if (v15[8] < 2 || v15[32] != 1)
  {
    goto LABEL_43;
  }

  v5 = __OFSUB__(v4--, 1);
  if (!v5)
  {
    v14 = 0;
    v11 = 1;
    goto LABEL_43;
  }

LABEL_60:
  __break(1u);
  return result;
}

Swift::Int __swiftcall _CalendarGregorian.relativeWeekday(fromJulianDay:)(Swift::Int fromJulianDay)
{
  v2 = fromJulianDay + 1;
  if (__OFADD__(fromJulianDay, 1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(v1 + 136) != 1)
  {
    goto LABEL_8;
  }

  if (!*(v1 + 96))
  {
    v7 = 1;
    goto LABEL_10;
  }

  v3 = *(v1 + 104);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 328);
  swift_unknownObjectRetain();
  v5(&v11, ObjectType, v3);
  fromJulianDay = specialized Collection<>.firstIndex(of:)(v11, outlined read-only object #0 of one-time initialization function for weekdays);
  if ((v6 & 1) == 0)
  {
    v1 = fromJulianDay;
    fromJulianDay = swift_unknownObjectRelease();
    v7 = v1 + 1;
    if (!__OFADD__(v1, 1))
    {
LABEL_10:
      v8 = v2 % 7 + 8;
      v9 = __OFSUB__(v8, v7);
      v10 = v8 - v7;
      if (!v9)
      {
        return v10 % 7;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_8:
    v7 = *(v1 + 128);
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return fromJulianDay;
}

void static Calendar.current.getter(void *a1@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 32));
  if (!v3)
  {
    v28 = a1;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v27 = *(&static LocaleCache.cache + 8);
    v5 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 32));
    if (!v7)
    {
      LocaleCache.preferences()(&v39);
      v9 = v8;
      type metadata accessor for _LocaleICU();
      v6 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
      v37 = v45;
      v38[0] = v46[0];
      *(v38 + 12) = *(v46 + 12);
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v32[0] = v39;
      v32[1] = v40;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v39, v31);
      v10 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v32, 0);
      if (v9)
      {
        MEMORY[0x1EEE9AC00](v10);
        os_unfair_lock_lock((v5 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v5 + 16), v32);
        os_unfair_lock_unlock((v5 + 32));
        outlined destroy of LocalePreferences(&v39);

        v6 = *(&v32[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v39);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 200))(&v39, ObjectType, v6);
    swift_unknownObjectRelease();
    v12 = v39;
    if (v39 && v39 != 7)
    {
      *&v27 = type metadata accessor for _CalendarICU();
      v13 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v14 = type metadata accessor for _CalendarICU;
      v15 = &protocol conformance descriptor for _CalendarICU;
    }

    else
    {
      *&v27 = type metadata accessor for _CalendarGregorian();
      v13 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v14 = type metadata accessor for _CalendarGregorian;
      v15 = &protocol conformance descriptor for _CalendarGregorian;
    }

    v16 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v13, v14, v15);
    v30 = v12;
    v29[0] = 0;
    v29[1] = 0;
    v17 = static LocaleCache.cache;
    v26 = *(&static LocaleCache.cache + 8);
    v18 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v18 + 32));
    if (!v20)
    {
      v25[1] = 0;
      *&v32[0] = v17;
      *(v32 + 8) = v26;
      LocaleCache.preferences()(&v39);
      v22 = v21;
      type metadata accessor for _LocaleICU();
      v19 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
      v37 = v45;
      v38[0] = v46[0];
      *(v38 + 12) = *(v46 + 12);
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v32[0] = v39;
      v32[1] = v40;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v39, v31);
      v23 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v32, 0);
      v20 = v23;
      if (v22)
      {
        *&v26 = v25;
        MEMORY[0x1EEE9AC00](v23);
        os_unfair_lock_lock((v18 + 32));
        partial apply for closure #2 in LocaleCache._currentAndCache.getter((v18 + 16), v32);
        os_unfair_lock_unlock((v18 + 32));
        outlined destroy of LocalePreferences(&v39);

        v19 = *(&v32[0] + 1);
        v20 = *&v32[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v39);
      }
    }

    *&v39 = v20;
    *(&v39 + 1) = v19;
    *&v32[0] = 0;
    BYTE8(v32[0]) = 1;
    v24 = (*(v16 + 16))(&v30, v29, &v39, 0, 1, 0, 1, v32, v27, v16);
    MEMORY[0x1EEE9AC00](v24);
    os_unfair_lock_lock((v2 + 32));
    partial apply for closure #2 in CalendarCache.current.getter((v2 + 16), &v39);
    os_unfair_lock_unlock((v2 + 32));
    swift_unknownObjectRelease();
    v4 = *(&v39 + 1);
    v3 = v39;
    a1 = v28;
  }

  *a1 = v3;
  a1[1] = v4;
}

uint64_t lazy protocol witness table accessor for type _CalendarICU and conformance _CalendarICU(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Calendar.Identifier and conformance Calendar.Identifier()
{
  result = lazy protocol witness table cache variable for type Calendar.Identifier and conformance Calendar.Identifier;
  if (!lazy protocol witness table cache variable for type Calendar.Identifier and conformance Calendar.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Identifier and conformance Calendar.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Identifier and conformance Calendar.Identifier;
  if (!lazy protocol witness table cache variable for type Calendar.Identifier and conformance Calendar.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Identifier and conformance Calendar.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Identifier and conformance Calendar.Identifier;
  if (!lazy protocol witness table cache variable for type Calendar.Identifier and conformance Calendar.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Identifier and conformance Calendar.Identifier);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _CalendarGregorian(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, a2, type metadata accessor for _CalendarGregorian, &protocol conformance descriptor for _CalendarGregorian);
  *(a1 + 8) = result;
  return result;
}

void _CalendarGregorian.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:)(unsigned __int8 *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  inited = 0;
  v31 = 0;
  v10 = 0;
  v11 = *a1;
  v13 = *a2;
  v12 = a2[1];
  v14 = *a3;
  v25 = a3[1];
  v26 = 0;
  *(v8 + 80) = 0x4290000000000000;
  *(v8 + 136) = 1;
  v15 = 2299161;
  *(v8 + 152) = 1;
  v16 = *a8;
  v17 = *(a8 + 8);
  *(v8 + 16) = xmmword_181232B40;
  *(v8 + 32) = xmmword_181232B50;
  *(v8 + 48) = 2299161;
  *(v8 + 128) = 0;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 144) = 0;
  if (v11 == 7)
  {
    type metadata accessor for _LocaleUnlocalized();
    inited = swift_initStaticObject();
    v10 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian(&lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized, 255, type metadata accessor for _LocaleUnlocalized, &protocol conformance descriptor for _LocaleUnlocalized);
    v26 = 2;
    v31 = 4;
    if (v13)
    {
LABEL_3:
      *(v8 + 112) = v13;
      *(v8 + 120) = v12;
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if (v13)
  {
    goto LABEL_3;
  }

  v24 = v11;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v18 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (*(v18 + 32))
  {
    v19 = *(v18 + 40);
    v20 = *(v18 + 32);
  }

  else
  {
    v20 = *(v18 + 16);
    if (v20)
    {
      v19 = *(v18 + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      TimeZoneCache.State.findCurrentTimeZone()(&v32);
      v20 = v32;
      v19 = v33;
      *(v18 + 16) = v32;
      *(v18 + 24) = v19;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v18 + 120));
  v11 = v24;
  *(v8 + 112) = v20;
  *(v8 + 120) = v19;
  if (v17)
  {
LABEL_4:
    *(v8 + 56) = xmmword_181232B60;
    *(v8 + 72) = 0xC208951B28000000;
    if (v14)
    {
LABEL_5:
      swift_unknownObjectRelease();
      v10 = v25;
LABEL_22:
      *(v8 + 96) = v14;
      *(v8 + 104) = v10;
      swift_unknownObjectRelease();
      if ((a5 & 1) != 0 || (a4 - 8) <= 0xFFFFFFFFFFFFFFF8)
      {
        v22 = v31;
        if (v11 == 7)
        {
          *(v8 + 128) = v26;
          *(v8 + 136) = 0;
          if (a7)
          {
LABEL_36:
            *(v8 + 144) = v22;
            *(v8 + 152) = 0;
            goto LABEL_37;
          }
        }

        else if (a7)
        {
LABEL_37:
          *(v8 + 88) = v11;
          return;
        }
      }

      else
      {
        *(v8 + 128) = a4;
        *(v8 + 136) = 0;
        v22 = v31;
        if (a7)
        {
          if (v11 != 7)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      v23 = 7;
      if (a6 < 7)
      {
        v23 = a6;
      }

      if (v23 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v23;
      }

      goto LABEL_36;
    }

LABEL_21:
    v14 = inited;
    goto LABEL_22;
  }

LABEL_15:
  *(v8 + 72) = v16;
  v21 = floor(v16 / 86400.0 + 2451910.5 + 0.5);
  if (fabs(v21) > 2130706430.0)
  {
    v32 = 19;
    v33 = v16;
    v34 = 0;
    v35 = 0;
    v36 = 1;
    lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
    swift_willThrowTypedImpl();
    goto LABEL_20;
  }

  if (v21 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v21 < 9.22337204e18)
  {
    v15 = v21;
LABEL_20:
    *(v8 + 56) = v15;
    *(v8 + 64) = specialized static _CalendarGregorian.yearMonthDayFromJulianDay(_:useJulianRef:)(v15, 0);
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  __break(1u);
}

uint64_t protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(unsigned __int8 *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t *a8)
{
  v19 = *a1;
  v14 = *(a8 + 8);
  v17 = *a8;
  v18 = v14;
  v15 = swift_allocObject();
  _CalendarGregorian.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:)(&v19, a2, a3, a4, a5 & 1, a6, a7 & 1, &v17);
  return v15;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  ICULegacyNumberFormatter.Signature.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for CombineIdentifier();
  lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(&lazy protocol witness table cache variable for type CombineIdentifier and conformance CombineIdentifier, 255, MEMORY[0x1E695BC50], MEMORY[0x1E695BC58]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = a1;
  v3 = specialized RawRepresentable<>._rawHashValue(seed:)(*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance UInt32()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithUnsignedInt_];
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance Data(void *a1, uint64_t a2)
{
  outlined consume of Data?(*a2, *(a2 + 8));
  result = specialized Data.init(referencing:)(a1);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t *DateComponents.timeZone.setter(uint64_t *result)
{
  v2 = *result;
  v3 = result[1];
  if (v1[2])
  {
    v4 = v1[3];
    v8 = v1[2];
    v9 = v4;
    if (v2)
    {
      v7[0] = v2;
      v7[1] = v3;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      v5 = specialized static TimeZone.== infix(_:_:)(&v8, v7);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v6 = v2;
      if (v5)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    swift_unknownObjectRetain();
    v6 = 0;
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    swift_unknownObjectRetain();
    v6 = v2;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_9:
  v1[2] = v2;
  v1[3] = v3;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    return result;
  }

  if (*v1)
  {
    v8 = v6;
    v9 = v3;
    return Calendar.timeZone.setter(&v8);
  }

LABEL_13:

  return swift_unknownObjectRelease();
}

double protocol witness for _TimeZoneProtocol.rawAndDaylightSavingTimeOffset(for:repeatedTimePolicy:skippedTimePolicy:) in conformance _TimeZoneICU()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  partial apply for closure #1 in _TimeZoneICU.rawAndDaylightSavingTimeOffset(for:repeatedTimePolicy:skippedTimePolicy:)(v3);
  os_unfair_lock_unlock(v1 + 6);
  return *&v3[1];
}

uint64_t closure #1 in _TimeZoneICU.rawAndDaylightSavingTimeOffset(for:repeatedTimePolicy:skippedTimePolicy:)@<X0>(uint64_t a1@<X1>, uint64_t a4@<X8>)
{
  result = _TimeZoneICU.State.calendar(_:)(*(a1 + 24), *(a1 + 32));
  if (result)
  {
    ucal_getMillis();
    ucal_setMillis();
    ucal_getTimeZoneOffsetFromLocal();
    *a4 = 0;
    *(a4 + 8) = 0;
    return ucal_setMillis();
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  return result;
}

id _sSD10FoundationE34_conditionallyBridgeFromObjectiveC_6resultSbSo12NSDictionaryC_SDyxq_GSgztFZSS_SSTt1g5(void *a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7CA0] + 8;
  v5 = MEMORY[0x1E69E6158];

  swift_unknownObjectRetain();
  if (v5 != v4)
  {
    v6 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (!v6)
    {
      v15 = [a1 count];
      if (v15)
      {
        v16 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
        v9 = static _DictionaryStorage.allocate(capacity:)();
        v17 = v9[6];
        v18 = v9[7];

        [a1 _getObjects_andKeys_count_];
        if (v16 >= 1)
        {
          swift_unknownObjectRetain();
          _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)();
          swift_unknownObjectRelease();
        }

        result = swift_arrayDestroy();
        v13 = 0;
        if (v16 >= 0)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }

      goto LABEL_12;
    }

LABEL_7:
    v12 = v6;
    v13 = 1;
LABEL_8:
    *a2 = v12;
    return v13;
  }

  v6 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v6)
  {
    goto LABEL_7;
  }

  v7 = [a1 count];
  if (!v7)
  {
LABEL_12:
    v13 = 1;
    v12 = MEMORY[0x1E69E7CC8];
    goto LABEL_8;
  }

  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v9 = static _DictionaryStorage.allocate(capacity:)();
  v10 = v9[6];
  v11 = v9[7];

  [a1 _getObjects_andKeys_count_];
  if (v8 >= 1)
  {
    swift_unknownObjectRetain();
    _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)();
    swift_unknownObjectRelease();
  }

  result = swift_arrayDestroy();
  v13 = 0;
  if (v8 >= 0)
  {
LABEL_16:
    v9[2] = 0;

    v12 = 0;
    goto LABEL_8;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t specialized static Locale.components(fromIdentifier:)()
{
  v0 = *MEMORY[0x1E695E4A8];
  v1 = String._bridgeToObjectiveCImpl()();
  ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(v0, v1);
  swift_unknownObjectRelease();
  v3 = MEMORY[0x1E69E7CC8];
  if (ComponentsFromLocaleIdentifier)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v9 = 0;
      v6 = ComponentsFromLocaleIdentifier;
      _sSD10FoundationE34_conditionallyBridgeFromObjectiveC_6resultSbSo12NSDictionaryC_SDyxq_GSgztFZSS_SSTt1g5(v5, &v9);

      v7 = v9;
      if (v7)
      {
        return v7;
      }
    }

    else
    {
    }
  }

  return v3;
}

BOOL _NSKVONotifyingMutatorsShouldNotifyForIsaAndKey(objc_class *a1, const void *a2)
{
  if (class_getMethodImplementation(a1, sel__isKVOA) != NSKVOIsAutonotifying)
  {
    return 0;
  }

  IndexedIvars = object_getIndexedIvars(a1);
  os_unfair_recursive_lock_lock_with_options();
  v4 = CFSetContainsValue(IndexedIvars[2], a2) != 0;
  os_unfair_recursive_lock_unlock();
  return v4;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSRunLoopMode(void *a1, id *a2)
{
  v7 = 0;
  v8 = 0;
  v4 = static String._conditionallyBridgeFromObjectiveC(_:result:)(a1, &v7);
  if (v8)
  {
    v5 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return v4 & 1;
}

Ivar NSKeyValueIvarForPattern(objc_class *a1, char *__format, ...)
{
  va_start(va, __format);
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = vsnprintf(0, 0, __format, va);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - v5;
  va_copy(v9, va);
  vsnprintf(v9 - v5, v7, __format, va);
  return class_getInstanceVariable(a1, v6);
}

uint64_t _NSFoundationBundle()
{
  if (_MergedGlobals_113 != -1)
  {
    dispatch_once(&_MergedGlobals_113, &__block_literal_global_38);
  }

  return qword_1ED43F9E8;
}

id @objc static NSLocale._components(fromLocaleIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  specialized static Locale.components(fromIdentifier:)();

  v3 = _NativeDictionary.bridged()();

  return v3;
}

const UInt8 *_decodeBytes(uint64_t a1, const void *a2, CFIndex *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = atomic_load((a1 + 16));
  if (v3 != *(a1 + 136))
  {
    __NSPoisoned();
  }

  v7 = atomic_load((a1 + 16));
  atomic_store(v7 | 8, (a1 + 16));
  v8 = atomic_load((a1 + 16));
  *(a1 + 136) = v8;
  v9 = *(a1 + 80);
  if (!v9)
  {
    v34 = 0;
    if (a3)
    {
      *a3 = 0;
    }

    OffsetForValueFromDictionary3 = __CFBinaryPlistGetOffsetForValueFromDictionary3();
    v15 = 0;
    if (!OffsetForValueFromDictionary3)
    {
      return v15;
    }

    v16 = *(a1 + 104);
    v17 = (v16 + v34);
    v18 = *(v16 + v34);
    if ((v18 & 0xF0) != 0x40)
    {
      v19 = (v18 & 0xF0) == 0x50 && (v18 & 0xF) == 5;
      if (v19 && v17[1] == 36 && v17[2] == 110 && v17[3] == 117 && v17[4] == 108 && v17[5] == 108)
      {
        return 0;
      }

LABEL_32:
      v30 = _NSMethodExceptionProem(a1, sel_decodeBytesForKey_returnedLength_);
      v31 = a2;
      v22 = @"NSInvalidUnarchiveOperationException";
      v23 = @"%@: value for key (%@) is not a blob of bytes";
      v24 = a1;
LABEL_33:
      [v24 __failWithExceptionName:v22 errorCode:4864 format:{v23, v30, v31}];
      return 0;
    }

    v25 = v18 & 0xF;
    v15 = v17 + 1;
    v33 = v17 + 1;
    if ((v18 & 0xF) == 0xF)
    {
      v32 = 0;
      if ((_readInt(a1, v15, v16 + *(a1 + 112) - 1, &v32, &v33) & 1) == 0)
      {
LABEL_41:
        v30 = _NSMethodExceptionProem(a1, sel_decodeBytesForKey_returnedLength_);
        v23 = @"%@: data is corrupt";
LABEL_42:
        v24 = a1;
        v22 = @"NSArchiverArchiveInconsistency";
        goto LABEL_33;
      }

      v25 = v32;
      if ((v32 & 0x8000000000000000) != 0)
      {
        v30 = _NSMethodExceptionProem(a1, sel_decodeBytesForKey_returnedLength_);
        v31 = v25;
        v23 = @"%@: data bytes is too long to decode (%qd)";
        goto LABEL_42;
      }

      v15 = v33;
      v16 = *(a1 + 104);
    }

    v26 = v15 >= v16;
    v27 = &v15[-v16];
    if (v26)
    {
      v28 = *(a1 + 112);
      v26 = v28 >= v27;
      v29 = v28 - v27;
      if (v26 && v25 <= v29)
      {
        if (a3)
        {
          *a3 = v25;
        }

        return v15;
      }
    }

    goto LABEL_41;
  }

  Count = CFArrayGetCount(v9);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), Count - 1);
  if (CFGetTypeID(ValueAtIndex) == 19)
  {
    Value = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    v13 = Value;
    CFArrayRemoveValueAtIndex(ValueAtIndex, 0);
    if (!a3)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(ValueAtIndex, a2);
  v20 = Value;
  if (a3)
  {
LABEL_22:
    *a3 = 0;
  }

LABEL_23:
  if (!Value || CFGetTypeID(Value) == 7 && CFEqual(@"$null", Value))
  {
    return 0;
  }

  if (CFGetTypeID(Value) != 20)
  {
    goto LABEL_32;
  }

  if (a3)
  {
    *a3 = CFDataGetLength(Value);
  }

  return CFDataGetBytePtr(Value);
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance Data(void *a1, uint64_t a2)
{
  outlined consume of Data?(*a2, *(a2 + 8));
  *a2 = specialized Data.init(referencing:)(a1);
  *(a2 + 8) = v4;
  return 1;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}