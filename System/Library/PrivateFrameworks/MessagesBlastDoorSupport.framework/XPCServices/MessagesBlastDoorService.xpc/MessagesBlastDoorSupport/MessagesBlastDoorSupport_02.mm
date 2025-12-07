uint64_t sub_100043604()
{
  v1 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  __chkstk_darwin(v1 - 8);
  v3 = v87 - v2;
  v4 = sub_1000C4294();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v87 - v9;
  v11 = sub_1000C3D24();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v87 - v17;
  v131 = *(v0 + 104);
  v19 = *(&v131 + 1);
  v20 = _swiftEmptyArrayStorage;
  if (*(&v131 + 1) >> 60 == 15)
  {
    return v20;
  }

  v120 = v10;
  v121 = v16;
  v21 = v131;
  objc_allocWithZone(NSKeyedUnarchiver);
  sub_100044D1C(&v131, &aBlock);
  v22 = sub_100046284(v21, v19);
  v115 = 0;
  v114 = v15;
  v24 = v22;
  [v22 _enableStrictSecureDecodingMode];
  [v24 setDecodingFailurePolicy:1];
  sub_1000458B4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CB3A0;
  *(inited + 32) = sub_10001D1A8(0, &qword_1000FC8F8, NSArray_ptr);
  *(inited + 40) = sub_10001D1A8(0, &qword_1000FC478, NSDictionary_ptr);
  *(inited + 48) = sub_10001D1A8(0, &qword_1000FC488, NSString_ptr);
  *(inited + 56) = sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
  *(inited + 64) = sub_10001D1A8(0, &qword_1000FC900, NSAttributedString_ptr);
  sub_1000448E0(inited);

  sub_1000C5224();
  sub_1000C5694();

  if (!*(&v123 + 1))
  {
    sub_100018F90(&aBlock, &qword_1000FC828, &qword_1000CF790);

    sub_100018F90(&v131, &qword_1000FC3F8, &qword_1000CE300);
    return _swiftEmptyArrayStorage;
  }

  v116 = v24;
  sub_10001D8C8(&aBlock, &v130);
  sub_10001D804(&v130, &aBlock);
  sub_1000124CC(&qword_1000FC908, &qword_1000CB660);
  result = swift_dynamicCast();
  if (!result)
  {

    sub_100018F90(&v131, &qword_1000FC3F8, &qword_1000CE300);
    sub_100015F68(&v130);
    return _swiftEmptyArrayStorage;
  }

  v103 = v8;
  v104 = v4;
  v109 = v3;
  v112 = "sentationUnpacker.swift";
  v28 = *&v128[0] + 64;
  v27 = *(*&v128[0] + 64);
  v117 = *&v128[0];
  v29 = 1 << *(*&v128[0] + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v27;
  v32 = v29 + 63;
  v33 = v5;
  v34 = v32 >> 6;
  v111 = &v123;
  v108 = (v12 + 32);
  v107 = (v12 + 16);
  v106 = (v12 + 56);
  v105 = (v12 + 8);
  v101 = (v33 + 16);
  v100 = v33 + 8;
  v102 = v33;
  v99 = v33 + 32;
  *&v26 = 138412290;
  v110 = v26;
  v20 = _swiftEmptyArrayStorage;
  v113 = v18;
  v35 = 0;
  if (v31)
  {
    while (1)
    {
      v36 = v35;
LABEL_14:
      v37 = __clz(__rbit64(v31)) | (v36 << 6);
      v38 = v117;
      sub_100046C50(*(v117 + 48) + 40 * v37, &aBlock);
      v39 = *(*(v38 + 56) + 8 * v37);
      v118 = aBlock;
      v40 = v124;
      v119 = v123;
      v41 = *(&v123 + 1);
      swift_unknownObjectRetain();
      if (!v41)
      {
        goto LABEL_66;
      }

      v31 &= v31 - 1;
      v128[0] = v118;
      v128[1] = v119;
      v129 = v40;
      *&aBlock = v39;
      swift_unknownObjectRetain();
      sub_1000124CC(&qword_1000FC910, &qword_1000CB668);
      if (swift_dynamicCast())
      {
        break;
      }

      v42 = sub_1000C5544();
      sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
      v43 = sub_1000C5794();
      sub_1000C1A54(v42, &_mh_execute_header, v43, "Invalid translation dictionary", 30, 2, _swiftEmptyArrayStorage);
      swift_unknownObjectRelease();

LABEL_17:
      result = sub_100046CAC(v128);
      v35 = v36;
      if (!v31)
      {
        goto LABEL_11;
      }
    }

    v44 = v127[2];
    v98 = v127;
    if (!v44)
    {
LABEL_63:
      swift_unknownObjectRelease();

      goto LABEL_17;
    }

    v45 = v127 + 4;
    while (1)
    {
      v52 = *v45;
      sub_100046C50(v128, &aBlock);

      if (swift_dynamicCast())
      {
        break;
      }

      v46 = v45;
      v47 = v44;
      v48 = sub_1000C5544();
      sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
      v49 = sub_1000C5794();
      v50 = v48;
      v51 = v47;
      v45 = v46;
      v18 = v113;
      sub_1000C1A54(v50, &_mh_execute_header, v49, "Missing index in translation dictionary", 39, 2, _swiftEmptyArrayStorage);

LABEL_22:
      ++v45;
      v44 = v51 - 1;
      if (!v44)
      {
        goto LABEL_63;
      }
    }

    v53 = *(v52 + 16);
    *&v119 = v45;
    if (v53)
    {
      *&v118 = v127;
      v54 = sub_100099FF8(0x614C656372756F73, 0xEE0065676175676ELL);
      if (v55)
      {
        v127 = *(*(v52 + 56) + 8 * v54);
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          if (*(v52 + 16))
          {
            v97 = aBlock;
            v56 = sub_100099FF8(0xD000000000000013, v112 | 0x8000000000000000);
            if ((v57 & 1) == 0 || (v127 = *(*(v52 + 56) + 8 * v56), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
            {
              v68 = v44;

              goto LABEL_40;
            }

            if (*(v52 + 16))
            {
              v96 = *(&aBlock + 1);
              v94 = aBlock;
              v58 = sub_100099FF8(0x74616C736E617274, 0xEE00747865546465);
              if (v59)
              {
                v95 = *(*(v52 + 56) + 8 * v58);
                swift_unknownObjectRetain();

                objc_opt_self();
                v60 = swift_dynamicCastObjCClass();
                if (v60)
                {
                  v91 = v44;
                  v61 = v60;
                  swift_unknownObjectRetain();
                  v93 = v61;
                  v62 = [v61 string];
                  if (!v62)
                  {
                    sub_1000C5224();
                    v62 = sub_1000C51F4();
                  }

                  v87[1] = sub_1000C5224();
                  v90 = v63;
                  v127 = _swiftEmptyArrayStorage;
                  v126 = 0;
                  v89 = v62;
                  result = [v62 length];
                  v92 = result;
                  if (result < 0)
                  {
                    goto LABEL_68;
                  }

                  v64 = swift_allocObject();
                  *(v64 + 16) = &v126;
                  *(v64 + 24) = &v127;
                  v65 = swift_allocObject();
                  *(v65 + 16) = sub_100046D10;
                  *(v65 + 24) = v64;
                  v87[2] = v64;
                  v124 = sub_100046D18;
                  v125 = v65;
                  *&aBlock = _NSConcreteStackBlock;
                  *(&aBlock + 1) = 1107296256;
                  *&v123 = sub_10009771C;
                  *(&v123 + 1) = &unk_1000F3EF8;
                  v88 = _Block_copy(&aBlock);

                  v66 = v88;
                  [v93 enumerateAttributesInRange:0 options:v92 usingBlock:{0, v88}];
                  _Block_release(v66);
                  LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

                  if (v66)
                  {
                    goto LABEL_69;
                  }

                  v67 = v126;
                  if (v126)
                  {
                    swift_errorRetain();

                    v93 = v67;
                    swift_willThrow();
LABEL_51:
                    swift_unknownObjectRelease();

                    v115 = 0;
LABEL_52:
                    v72 = sub_1000C5544();
                    sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
                    v73 = sub_1000C5794();
                    if (os_log_type_enabled(v73, v72))
                    {
                      v74 = swift_slowAlloc();
                      DWORD2(v97) = v72;
                      v75 = v74;
                      v76 = swift_slowAlloc();
                      *&v118 = v73;
                      *&v97 = v76;
                      *v75 = v110;
                      swift_errorRetain();
                      v77 = _swift_stdlib_bridgeErrorToNSError();
                      *(v75 + 4) = v77;
                      v78 = v97;
                      *v97 = v77;
                      _os_log_impl(&_mh_execute_header, v118, BYTE8(v97), "Decoding error: %@", v75, 0xCu);
                      sub_100018F90(v78, &qword_1000FC468, &qword_1000CAD70);

                      swift_unknownObjectRelease();
                    }

                    else
                    {

                      swift_unknownObjectRelease();
                    }

                    v51 = v91;
                    goto LABEL_22;
                  }

                  v71 = v115;
                  sub_1000C3D14();
                  v93 = v71;
                  if (v71)
                  {
                    goto LABEL_51;
                  }

                  swift_unknownObjectRelease();

                  v79 = v121;
                  (*v108)(v18, v114, v121);

                  v80 = v109;
                  (*v107)(v109, v18, v79);
                  (*v106)(v80, 0, 1, v79);
                  v81 = v93;
                  sub_1000C4284();
                  v115 = v81;
                  if (v81)
                  {
                    v18 = v113;
                    (*v105)(v113, v121);
                    v93 = v115;
                    v115 = 0;
                    v45 = v119;
                    goto LABEL_52;
                  }

                  (*v101)(v103, v120, v104);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v20 = sub_100045590(0, v20[2] + 1, 1, v20, &qword_1000FC918, &qword_1000CB670, &type metadata accessor for TranslatedMessagePart);
                  }

                  v83 = v20[2];
                  v82 = v20[3];
                  *&v118 = v83 + 1;
                  v84 = v83;
                  if (v83 >= v82 >> 1)
                  {
                    v20 = sub_100045590((v82 > 1), v118, 1, v20, &qword_1000FC918, &qword_1000CB670, &type metadata accessor for TranslatedMessagePart);
                  }

                  swift_unknownObjectRelease();
                  v85 = v102;
                  v86 = v104;
                  (*(v102 + 8))(v120, v104);
                  v18 = v113;
                  (*v105)(v113, v121);
                  v20[2] = v118;
                  (*(v85 + 32))(v20 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v84, v103, v86);
                  v51 = v91;
                  goto LABEL_42;
                }

                v68 = v44;

                swift_unknownObjectRelease();
LABEL_41:
                v69 = sub_1000C5544();
                sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
                v70 = sub_1000C5794();
                sub_1000C1A54(v69, &_mh_execute_header, v70, "Missing key in translation dictionary", 37, 2, _swiftEmptyArrayStorage);

                v51 = v68;
LABEL_42:
                v45 = v119;
                goto LABEL_22;
              }

              v68 = v44;

LABEL_40:

              goto LABEL_41;
            }

            v68 = v44;
          }

          else
          {
            v68 = v44;
          }

          goto LABEL_40;
        }
      }
    }

    v68 = v44;
    goto LABEL_40;
  }

LABEL_11:
  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
LABEL_66:
      sub_100015F68(&v130);

      sub_100018F90(&v131, &qword_1000FC3F8, &qword_1000CE300);

      return v20;
    }

    v31 = *(v28 + 8 * v36);
    ++v35;
    if (v31)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

unint64_t *sub_1000448E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100045AA0(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      sub_1000124CC(&qword_1000FC920, &qword_1000CB678);
      sub_1000124CC(&qword_1000FC928, &qword_1000CB680);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_100045AA0((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t MessageSummaryInfoDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FC8D0, &unk_1000CB3B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10001530C(a1, a1[3]);
  sub_100044CC8();
  sub_1000C5D04();
  LOBYTE(v12) = 0;
  sub_1000C5B24();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1000C5AF4();
    LOBYTE(v12) = 2;
    sub_1000C5AF4();
    LOBYTE(v12) = 3;
    sub_1000C5AF4();
    LOBYTE(v12) = 4;
    sub_1000C5AF4();
    LOBYTE(v12) = 5;
    sub_1000C5AF4();
    LOBYTE(v12) = 6;
    sub_1000C5B04();
    LOBYTE(v12) = 7;
    sub_1000C5B04();
    v12 = *(v3 + 104);
    v13 = v12;
    v11[23] = 8;
    sub_100044D1C(&v13, v11);
    sub_100042EA0();
    sub_1000C5B44();
    sub_100018CBC(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100044CC8()
{
  result = qword_1000FC8D8;
  if (!qword_1000FC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8D8);
  }

  return result;
}

uint64_t sub_100044D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC3F8, &qword_1000CE300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double MessageSummaryInfoDictionary.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100046344(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_100044E1C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 6450529;
    v6 = 6516065;
    if (a1 != 2)
    {
      v5 = 6581601;
    }

    if (a1)
    {
      v6 = 7564641;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 7631733;
    v2 = 7496296;
    if (a1 != 7)
    {
      v2 = 7368052;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1650552161;
    if (a1 != 4)
    {
      v3 = 1634954593;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_100044EF8()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_10008DB6C(v3, v1);
  return sub_1000C5CD4();
}

Swift::Int sub_100044F48()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_10008DB6C(v3, v1);
  return sub_1000C5CD4();
}

unint64_t sub_100044F8C@<X0>(Swift::String *a1@<X0>, MessagesBlastDoorService::MessageSummaryInfoDictionary::CodingKeys_optional *a2@<X8>)
{
  result = _s24MessagesBlastDoorService28MessageSummaryInfoDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_100044FBC@<X0>(uint64_t *a1@<X8>)
{
  result = MessageSummaryInfoDictionary.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100044FF0@<X0>(uint64_t a1@<X0>, MessagesBlastDoorService::MessageSummaryInfoDictionary::CodingKeys_optional *a2@<X8>, void *a3@<X1>)
{
  result = _s24MessagesBlastDoorService28MessageSummaryInfoDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1, a3);
  a2->value = result;
  return result;
}

uint64_t sub_100045024(uint64_t a1)
{
  v2 = sub_100044CC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100045060(uint64_t a1)
{
  v2 = sub_100044CC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

char *sub_100045204(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FC990, &qword_1000CB6E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100045308(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FC9B0, &qword_1000CB708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_10004540C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FC9C8, &qword_1000CB720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100045590(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000124CC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10004576C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000124CC(&qword_1000FC948, &qword_1000CB6A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000124CC(&qword_1000FC950, &qword_1000CB6A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000458B4()
{
  v0 = sub_1000124CC(&qword_1000FC920, &qword_1000CB678);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1000FC938;
    v3 = &unk_1000CB690;
  }

  else
  {
    v2 = &unk_1000FC940;
    v3 = &unk_1000CB698;
  }

  return sub_1000124CC(v2, v3);
}

char *sub_10004592C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004594C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC9F0, &qword_1000CB748, &type metadata accessor for Handwriting.DrawingStroke);
  *v3 = result;
  return result;
}

void *sub_100045990(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC9E8, &qword_1000CB740, &type metadata accessor for EncodedAttachments.Content);
  *v3 = result;
  return result;
}

void *sub_1000459D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FCA08, &qword_1000CB760, &type metadata accessor for StrokePoint);
  *v3 = result;
  return result;
}

void *sub_100045A18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC988, &qword_1000CB6E0, &type metadata accessor for RelayReachabilityHandleResult);
  *v3 = result;
  return result;
}

void *sub_100045A5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC970, &qword_1000CB6C8, &type metadata accessor for SMSCTPart);
  *v3 = result;
  return result;
}

char *sub_100045AA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045D58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100045AC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC998, &qword_1000CB6F0, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

void *sub_100045B04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045E5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100045B24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC9F8, &qword_1000CB750, &type metadata accessor for Handwriting.DrawingStrokePoint);
  *v3 = result;
  return result;
}

void *sub_100045B68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC9B8, &qword_1000CB710, &type metadata accessor for PhotosPoster.ParallaxLayer);
  *v3 = result;
  return result;
}

void *sub_100045BAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC9C0, &qword_1000CB718, &type metadata accessor for MonogramPoster.GradientDefinition.MeshGradientPoint);
  *v3 = result;
  return result;
}

void *sub_100045BF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC9D0, &qword_1000CB728, &type metadata accessor for Color);
  *v3 = result;
  return result;
}

char *sub_100045C34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100046180(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100045C54(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FC9A0, &qword_1000CB6F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100045D58(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FC930, &qword_1000CB688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100045E5C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000124CC(&qword_1000FC948, &qword_1000CB6A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000124CC(&qword_1000FC950, &qword_1000CB6A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100045FA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000124CC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100046180(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FC990, &qword_1000CB6E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id sub_100046284(uint64_t a1, uint64_t a2)
{
  isa = sub_1000C1544().super.isa;
  v8 = 0;
  v4 = [v2 initForReadingFromData:isa error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_1000C1474();

    swift_willThrow();
  }

  return v4;
}

void sub_100046344(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FC9D8, &qword_1000CB730);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v44 = a1;
  sub_10001530C(a1, v9);
  sub_100044CC8();
  sub_1000C5CF4();
  if (v2)
  {
    sub_100015F68(v44);
  }

  else
  {
    v10 = v6;
    LOBYTE(v53) = 0;
    v11 = v5;
    v12 = sub_1000C5A34();
    v71 = v13 & 1;
    LOBYTE(v53) = 1;
    v14 = sub_1000C5A04();
    v43 = v15;
    LOBYTE(v53) = 2;
    v16 = sub_1000C5A04();
    v42 = v17;
    v38 = v16;
    LOBYTE(v53) = 3;
    v37 = sub_1000C5A04();
    v41 = v18;
    LOBYTE(v53) = 4;
    v36 = sub_1000C5A04();
    v40 = v19;
    LOBYTE(v53) = 5;
    v34 = sub_1000C5A04();
    v35 = v14;
    v39 = v20;
    LOBYTE(v53) = 6;
    v33 = sub_1000C5A14();
    LOBYTE(v53) = 7;
    v32 = sub_1000C5A14();
    v72 = 8;
    sub_100042DD4();
    sub_1000C5A54();
    (*(v10 + 8))(v8, v11);
    v29 = v70;
    v30 = v69;
    *&v45 = v12;
    v31 = v71;
    BYTE8(v45) = v71;
    v22 = v42;
    v21 = v43;
    *&v46 = v35;
    *(&v46 + 1) = v43;
    *&v47 = v38;
    *(&v47 + 1) = v42;
    v23 = v40;
    v24 = v41;
    *&v48 = v37;
    *(&v48 + 1) = v41;
    *&v49 = v36;
    *(&v49 + 1) = v40;
    v25 = v39;
    *&v50 = v34;
    *(&v50 + 1) = v39;
    LOBYTE(v51) = v33;
    BYTE1(v51) = v32;
    *(&v51 + 1) = v69;
    v52 = v70;
    sub_100046D3C(&v45, &v53);
    sub_100015F68(v44);
    v53 = v12;
    v54 = v31;
    v55 = v35;
    v56 = v21;
    v57 = v38;
    v58 = v22;
    v59 = v37;
    v60 = v24;
    v61 = v36;
    v62 = v23;
    v63 = v34;
    v64 = v25;
    v65 = v33;
    v66 = v32;
    v67 = v30;
    v68 = v29;
    sub_100029510(&v53);
    v26 = v50;
    *(a2 + 64) = v49;
    *(a2 + 80) = v26;
    *(a2 + 96) = v51;
    *(a2 + 112) = v52;
    v27 = v46;
    *a2 = v45;
    *(a2 + 16) = v27;
    v28 = v48;
    *(a2 + 32) = v47;
    *(a2 + 48) = v28;
  }
}

unint64_t _s24MessagesBlastDoorService28MessageSummaryInfoDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1590;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000468F4()
{
  result = qword_1000FC8E0;
  if (!qword_1000FC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8E0);
  }

  return result;
}

unint64_t sub_10004694C()
{
  result = qword_1000FC8E8;
  if (!qword_1000FC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8E8);
  }

  return result;
}

unint64_t sub_1000469A4()
{
  result = qword_1000FC8F0;
  if (!qword_1000FC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8F0);
  }

  return result;
}

__n128 sub_1000469F8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100046A24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
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

uint64_t sub_100046A80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageSummaryInfoDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageSummaryInfoDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100046D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100046DC0()
{
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_1000C40D4();
  sub_100046E78(&qword_1000FCA38, &protocol conformance descriptor for VideoMessageMetadata);
  sub_1000C1444();
}

uint64_t sub_100046E78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000C40D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100046ECC(uint64_t a1)
{
  result = sub_100012760();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100046F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_1000C4124();
  v66 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C4AC4();
  v7 = *(v6 - 8);
  v67 = v6;
  v68 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v65 = &v51 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v51 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v51 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v51 - v23;
  __chkstk_darwin(v22);
  v26 = &v51 - v25;
  v27 = sub_1000C4054();
  v28 = __chkstk_darwin(v27);
  v29 = __chkstk_darwin(v28);
  if (a1[17])
  {
    goto LABEL_4;
  }

  v33 = a1[16];
  if (v33 != 1 && v33 != 4)
  {
    if (v33 == 3)
    {

      v42 = v70;
      result = sub_1000C4114();
      if (!v42)
      {
        v43 = v66;
        (*(v66 + 16))(v10, v5, v3);
        (*(v68 + 104))(v10, enum case for TranscriptBackgroundCommandType.request(_:), v67);
        sub_1000C4984();
        return (*(v43 + 8))(v5, v3);
      }

      return result;
    }

    if (v33 != 2)
    {
      v71 = 0;
      v72 = 0xE000000000000000;
      v35 = v33;
      sub_1000C5944(36);

      v71 = 0xD000000000000022;
      v72 = 0x80000001000D6370;
      v78 = v35;
      v79._countAndFlagsBits = sub_1000C5BE4();
      sub_1000C52E4(v79);

      sub_1000C4FC4();
      sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      goto LABEL_5;
    }
  }

  if (a1[1])
  {
LABEL_4:
    sub_1000C4FC4();
    sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
LABEL_5:
    sub_1000C4FB4();
    return swift_willThrow();
  }

  v36 = *(a1 + 160);
  if (v36 == 2 || (v36 & 1) == 0)
  {
    v77 = *(a1 + 1);
    if (!*(&v77 + 1))
    {
      goto LABEL_4;
    }

    v76 = *(a1 + 2);
    if (!*(&v76 + 1))
    {
      goto LABEL_4;
    }

    v75 = *(a1 + 3);
    if (!*(&v75 + 1))
    {
      goto LABEL_4;
    }

    v74 = *(a1 + 4);
    if (!*(&v74 + 1))
    {
      goto LABEL_4;
    }

    v73 = *(a1 + 5);
    if (!*(&v73 + 1) || (a1[13] & 1) != 0 || (a1[15] & 1) != 0)
    {
      goto LABEL_4;
    }

    v52 = v33;
    v53 = v31;
    v66 = v29;
    v63 = v73;
    v60 = a1[12];
    v58 = a1[14];
    v56 = a1[18];
    v64 = a1[19];
    v54 = v32;
    v59 = v76;
    v61 = v75;
    v57 = *(&v74 + 1);
    v62 = v74;
    v55 = *(&v73 + 1);
    sub_100049288(&v77, &v71);
    sub_100049288(&v76, &v71);
    sub_100049288(&v75, &v71);
    sub_100049288(&v74, &v71);
    sub_100049288(&v73, &v71);

    v44 = v54;
    v45 = v70;
    result = sub_1000C4044();
    if (!v45)
    {
      v46 = v44;
      if (v52 == 1)
      {
        v47 = v53;
        (*(v53 + 16))(v18, v44, v66);
        (*(v68 + 104))(v18, enum case for TranscriptBackgroundCommandType.update(_:), v67);
      }

      else
      {
        v48 = v53;
        if (v52 == 4)
        {
          v49 = v65;
          v47 = v53;
          (*(v53 + 16))(v65, v46, v66);
          (*(v68 + 104))(v49, enum case for TranscriptBackgroundCommandType.requestResponse(_:), v67);
        }

        else
        {
          if (v52 != 2)
          {
            v71 = 0;
            v72 = 0xE000000000000000;
            v50 = v52;
            sub_1000C5944(76);
            v83._countAndFlagsBits = 0xD000000000000022;
            v83._object = 0x80000001000D6370;
            sub_1000C52E4(v83);
            v78 = v50;
            v84._countAndFlagsBits = sub_1000C5BE4();
            sub_1000C52E4(v84);

            v85._object = 0x80000001000D65A0;
            v85._countAndFlagsBits = 0xD000000000000028;
            sub_1000C52E4(v85);
            sub_1000C4FC4();
            sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            return (*(v48 + 8))(v46, v66);
          }

          v47 = v53;
          (*(v53 + 16))(v15, v46, v66);
          (*(v68 + 104))(v15, enum case for TranscriptBackgroundCommandType.refresh(_:), v67);
        }
      }

      sub_1000C4984();
      return (*(v47 + 8))(v46, v66);
    }
  }

  else
  {
    v37 = a1[16];
    v38 = v31;
    v66 = v29;
    v39 = &v51 - v30;

    v40 = v70;
    result = sub_1000C4044();
    if (!v40)
    {
      switch(v37)
      {
        case 1:
          v41 = v38;
          (*(v38 + 16))(v26, v39, v66);
          (*(v68 + 104))(v26, enum case for TranscriptBackgroundCommandType.update(_:), v67);
          break;
        case 4:
          (*(v38 + 16))(v21, v39, v66);
          (*(v68 + 104))(v21, enum case for TranscriptBackgroundCommandType.requestResponse(_:), v67);
          sub_1000C4984();
          return (*(v38 + 8))(v39, v66);
        case 2:
          v41 = v38;
          (*(v38 + 16))(v24, v39, v66);
          (*(v68 + 104))(v24, enum case for TranscriptBackgroundCommandType.refresh(_:), v67);
          break;
        default:
          v71 = 0;
          v72 = 0xE000000000000000;
          sub_1000C5944(76);
          v80._countAndFlagsBits = 0xD000000000000022;
          v80._object = 0x80000001000D6370;
          sub_1000C52E4(v80);
          v78 = v37;
          v81._countAndFlagsBits = sub_1000C5BE4();
          sub_1000C52E4(v81);

          v82._object = 0x80000001000D65A0;
          v82._countAndFlagsBits = 0xD000000000000028;
          sub_1000C52E4(v82);
          sub_1000C4FC4();
          sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          swift_allocError();
          sub_1000C4FB4();
          swift_willThrow();
          return (*(v38 + 8))(v39, v66);
      }

      sub_1000C4984();
      return (*(v41 + 8))(v39, v66);
    }
  }

  return result;
}

void sub_100048000(uint64_t a1@<X8>)
{
  *&v125 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v1 - 8);
  v123 = &v111 - v2;
  v132 = sub_1000C5974();
  v129 = *(v132 - 1);
  v3 = __chkstk_darwin(v132);
  v124 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v131 = &v111 - v6;
  __chkstk_darwin(v5);
  v126 = &v111 - v7;
  v8 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v8 - 8);
  v130 = (&v111 - v9);
  v10 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v10 - 8);
  v127 = &v111 - v11;
  v12 = sub_1000C1974();
  v128 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C4FC4();
  v133 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C4ED4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v148;
  sub_1000C1994();
  if (!v22)
  {
    v148 = v18;
    v115 = 0;
    v118 = v14;
    v119 = v12;
    v24 = v132;
    v23 = v133;
    v120 = v17;
    v121 = v21;
    v117 = v15;
    v122 = v19;
    v25 = sub_1000C1984();
    if (v26 >> 60 == 15)
    {
      sub_100014F70();
      v27 = sub_1000C5834();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1000C94D0;
      v29 = v130;
      v30 = v121;
      sub_1000C4EC4();
      v31 = sub_1000C1614();
      (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
      v32 = sub_1000C4A84();
      v34 = v33;
      sub_100018F90(v29, &qword_1000FC520, &qword_1000C9D20);
      *(v28 + 56) = &type metadata for String;
      *(v28 + 64) = sub_100014FBC();
      *(v28 + 32) = v32;
      *(v28 + 40) = v34;
      v35 = sub_1000C5554();
      sub_1000C1A44("Missing encrypted data (messageGUID: %@)", 40, 2, &_mh_execute_header, v27, v35, v28);

      sub_1000491EC();
      swift_allocError();
      swift_willThrow();
      (*(v122 + 8))(v30, v148);
      return;
    }

    v113 = v25;
    v114 = v26;
    isa = sub_1000C1544().super.isa;
    v37 = [(objc_class *)isa _imOptionallyDecompressData];

    v38 = sub_1000C1564();
    v40 = v39;

    v116 = v40;
    v41 = v40 >> 62;
    v112 = v38;
    if ((v40 >> 62) <= 1)
    {
      v42 = v23;
      v43 = v119;
      v44 = v120;
      v45 = v128;
      v46 = v129;
      v47 = v118;
      if (!v41)
      {
        v48 = v131;
        if (!BYTE6(v116))
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      v48 = v131;
      if (!__OFSUB__(HIDWORD(v38), v38))
      {
        if (HIDWORD(v38) - v38 <= 0)
        {
          goto LABEL_16;
        }

LABEL_11:
        sub_1000C1464();
        swift_allocObject();
        v53 = sub_1000C1454();
        sub_100014F1C();
        v54 = v115;
        v111 = v53;
        sub_1000C1444();
        if (v54)
        {
          *&v134 = v54;
          swift_errorRetain();
          sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
          v55 = v126;
          if (swift_dynamicCast())
          {

            (*(v46 + 32))(v48, v55, v24);
            v130 = sub_100014F70();
            v56 = v24;
            v57 = sub_1000C5834();
            v126 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
            v58 = swift_allocObject();
            v59 = v48;
            v60 = v58;
            v125 = xmmword_1000C94D0;
            *(v58 + 16) = xmmword_1000C94D0;
            v115 = *(v46 + 16);
            v61 = v123;
            v115(v123, v59, v24);
            (*(v46 + 56))(v61, 0, 1, v24);
            v62 = sub_1000C4A84();
            v64 = v63;
            sub_100018F90(v61, &qword_1000FC430, &unk_1000C9B00);
            v60[7] = &type metadata for String;
            v123 = sub_100014FBC();
            v60[8] = v123;
            v60[4] = v62;
            v60[5] = v64;
            v65 = sub_1000C5554();
            sub_1000C1A44("TranscriptBackgroundCommandDictionary unpacking error: %{public}@", 65, 2, &_mh_execute_header, v57, v65, v60);

            v66 = v128;
            v68 = v118;
            v67 = v119;
            (*(v128 + 104))(v118, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v119);
            sub_1000C1964();
            (*(v66 + 8))(v68, v67);
            v115(v124, v131, v56);
            v69 = v120;
            sub_1000C4FA4();
            v70 = sub_1000C5834();
            v71 = swift_allocObject();
            *(v71 + 16) = v125;
            v72 = v133;
            v130 = *(v133 + 16);
            v73 = v127;
            v74 = v117;
            v130(v127, v69, v117);
            (*(v72 + 56))(v73, 0, 1, v74);
            v75 = sub_1000C4A84();
            v77 = v76;
            sub_100018F90(v73, &qword_1000FC438, &unk_1000C9DC0);
            v78 = v123;
            *(v71 + 56) = &type metadata for String;
            *(v71 + 64) = v78;
            *(v71 + 32) = v75;
            *(v71 + 40) = v77;
            v79 = sub_1000C5554();
            sub_1000C1A44("TranscriptBackgroundCommandDictionary unpacking explosion: %{public}@", 69, 2, &_mh_execute_header, v70, v79, v71);

            sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
            swift_allocError();
            v80 = v120;
            v130(v81, v120, v74);
            swift_willThrow();
            sub_100018CBC(v113, v114);

            sub_100018CD0(v112, v116);
            (*(v72 + 8))(v80, v74);
            (*(v129 + 8))(v131, v132);
            (*(v122 + 8))(v121, v148);
          }

          else
          {

            sub_100014F70();
            v105 = sub_1000C5834();
            sub_1000124CC(&qword_1000FC348, qword_1000C9550);
            v106 = swift_allocObject();
            *(v106 + 16) = xmmword_1000C94D0;
            *&v134 = v54;
            v107 = sub_1000C4A84();
            v109 = v108;
            *(v106 + 56) = &type metadata for String;
            *(v106 + 64) = sub_100014FBC();
            *(v106 + 32) = v107;
            *(v106 + 40) = v109;
            v110 = sub_1000C5554();
            sub_1000C1A44("TranscriptBackgroundCommandDictionary unpacking unknown error: %{public}@", 73, 2, &_mh_execute_header, v105, v110, v106);

            swift_getErrorValue();
            swift_getDynamicType();
            *&v134 = 0;
            *(&v134 + 1) = 0xE000000000000000;
            sub_1000C5944(22);

            *&v134 = 0xD000000000000014;
            *(&v134 + 1) = 0x80000001000D5330;
            v149._countAndFlagsBits = sub_1000C5D34();
            sub_1000C52E4(v149);

            sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            sub_100018CBC(v113, v114);

            sub_100018CD0(v112, v116);

            (*(v122 + 8))(v121, v148);
          }
        }

        else
        {
          v146[8] = v142;
          v146[9] = v143;
          v146[10] = v144;
          v147 = v145;
          v146[4] = v138;
          v146[5] = v139;
          v146[6] = v140;
          v146[7] = v141;
          v146[0] = v134;
          v146[1] = v135;
          v146[2] = v136;
          v146[3] = v137;
          sub_100014F70();
          v96 = sub_1000C5834();
          sub_1000124CC(&qword_1000FC348, qword_1000C9550);
          v97 = swift_allocObject();
          *(v97 + 16) = xmmword_1000C94D0;
          v98 = v130;
          v99 = v121;
          sub_1000C4EC4();
          v100 = sub_1000C1614();
          (*(*(v100 - 8) + 56))(v98, 0, 1, v100);
          v101 = sub_1000C4A84();
          v103 = v102;
          sub_100018F90(v98, &qword_1000FC520, &qword_1000C9D20);
          *(v97 + 56) = &type metadata for String;
          *(v97 + 64) = sub_100014FBC();
          *(v97 + 32) = v101;
          *(v97 + 40) = v103;
          v104 = sub_1000C5554();
          sub_1000C1A44("Unpacking TranscriptBackgroundCommandDictionary (transcriptBackgroundCommandGUID: %@)", 85, 2, &_mh_execute_header, v96, v104, v97);

          sub_100046F3C(v146, v125);
          (*(v122 + 8))(v99, v148);
          sub_100015058(v146);

          sub_100018CD0(v112, v116);
          sub_100018CBC(v113, v114);
        }

        return;
      }

LABEL_21:
      __break(1u);
      return;
    }

    v42 = v23;
    v43 = v119;
    v44 = v120;
    v45 = v128;
    v46 = v129;
    v48 = v131;
    v47 = v118;
    if (v41 == 2)
    {
      v50 = *(v38 + 16);
      v49 = *(v38 + 24);
      v51 = __OFSUB__(v49, v50);
      v52 = v49 - v50;
      if (v51)
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v52 > 0)
      {
        goto LABEL_11;
      }
    }

LABEL_16:
    v82 = v43;
    v83 = v45;
    (*(v45 + 104))(v47, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v43);
    sub_1000C1964();
    (*(v83 + 8))(v47, v82);
    sub_1000C4FB4();
    sub_100014F70();
    v131 = sub_1000C5834();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1000C94D0;
    v85 = v42;
    v86 = v42;
    v87 = v44;
    v132 = *(v86 + 16);
    v88 = v127;
    v89 = v117;
    (v132)(v127, v87, v117);
    (*(v85 + 56))(v88, 0, 1, v89);
    v90 = sub_1000C4A84();
    v92 = v91;
    sub_100018F90(v88, &qword_1000FC438, &unk_1000C9DC0);
    *(v84 + 56) = &type metadata for String;
    *(v84 + 64) = sub_100014FBC();
    *(v84 + 32) = v90;
    *(v84 + 40) = v92;
    v93 = sub_1000C5554();
    v94 = v131;
    sub_1000C1A44("Message unpacking explosion: %{public}@", 39, 2, &_mh_execute_header, v131, v93, v84);

    sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    (v132)(v95, v87, v89);
    swift_willThrow();
    sub_100018CBC(v113, v114);
    sub_100018CD0(v112, v116);
    (*(v85 + 8))(v87, v89);
    (*(v122 + 8))(v121, v148);
  }
}

uint64_t sub_100049078@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_1000C19B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_100049240(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v3)
  {
    sub_100048000(a3);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_1000491EC()
{
  result = qword_1000FCA48;
  if (!qword_1000FCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCA48);
  }

  return result;
}

uint64_t sub_100049240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100049288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC3F0, &unk_1000C97B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100049308(uint64_t a1@<X8>)
{
  v4 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v87 - v9;
  __chkstk_darwin(v8);
  v104 = v87 - v11;
  v103 = sub_1000C3084();
  v106 = *(v103 - 8);
  __chkstk_darwin(v103);
  v105 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1000C43F4();
  v109 = *(v107 - 8);
  __chkstk_darwin(v107);
  v113 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1000C3C34();
  v112 = *(v110 - 8);
  __chkstk_darwin(v110);
  v115 = v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000C3D24();
  v15 = *(v114 - 8);
  __chkstk_darwin(v114);
  v108 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000124CC(&qword_1000FCA50, &qword_1000CB8F8);
  __chkstk_darwin(v17 - 8);
  v18 = sub_1000124CC(&qword_1000FCA58, &unk_1000CB900);
  __chkstk_darwin(v18 - 8);
  v19 = sub_1000C5274();
  __chkstk_darwin(v19 - 8);
  v20 = v1[6];
  v21 = v1[7];
  if (v21 >> 60 == 15)
  {
    sub_1000C3FE4();
    if (!v2)
    {
      v22 = enum case for SMSCTPart.Content.attachment(_:);
      v23 = sub_1000C5034();
      (*(*(v23 - 8) + 104))(a1, v22, v23);
    }

    return;
  }

  v101 = v15;
  v102 = a1;
  v111 = v20;
  v116 = v21;
  v24 = v1[1];
  if (!v24)
  {
    goto LABEL_32;
  }

  v25 = *v1;
  if (*v1 == 0x616C702F74786574 && v24 == 0xEA00000000006E69 || (sub_1000C5C04() & 1) != 0)
  {
    v26 = v111;
    v27 = v116;
    sub_100018C68(v111, v116);
    sub_1000C5254();
    sub_1000C5244();
    v28 = v102;
    sub_1000C32E4();
    if (v2)
    {
      v29 = v26;
    }

    else
    {
      v30 = v26;
      v31 = enum case for SMSCTPart.Content.plain(_:);
      v32 = sub_1000C5034();
      (*(*(v32 - 8) + 104))(v28, v31, v32);
      v29 = v30;
    }

    v33 = v27;
    goto LABEL_36;
  }

  if (v25 == 0xD000000000000018 && 0x80000001000D66B0 == v24 || (sub_1000C5C04() & 1) != 0)
  {
    v34 = v111;
    v35 = v116;
    sub_100018C54(v111, v116);
    sub_100018C68(v34, v35);
    sub_1000C20F4();
    if (v2)
    {
LABEL_16:
      v29 = v34;
LABEL_17:
      v33 = v35;
LABEL_36:
      sub_100018CBC(v29, v33);
      return;
    }

    v36 = v102;
    sub_1000C4944();
    sub_100018CBC(v34, v35);
    v37 = &enum case for SMSCTPart.Content.attributedChipList(_:);
LABEL_19:
    v38 = *v37;
    v39 = sub_1000C5034();
    (*(*(v39 - 8) + 104))(v36, v38, v39);
    return;
  }

  if (v25 == 0xD000000000000019 && 0x80000001000D6690 == v24 || (sub_1000C5C04() & 1) != 0)
  {
    v34 = v111;
    v35 = v116;
    sub_100018C54(v111, v116);
    sub_100018C68(v34, v35);
    sub_1000C2324();
    if (v2)
    {
      goto LABEL_16;
    }

    v36 = v102;
    sub_1000C49F4();
    sub_100018CBC(v34, v35);
    v37 = &enum case for SMSCTPart.Content.attributedRichCards(_:);
    goto LABEL_19;
  }

  if ((v25 != 0xD000000000000010 || 0x80000001000D65D0 != v24) && (sub_1000C5C04() & 1) == 0)
  {
LABEL_32:
    v50 = v111;
    v49 = v116;
    sub_100018C54(v111, v116);
    sub_100018C54(v50, v49);

    v51 = v102;
    sub_1000C3FE4();
    if (!v2)
    {
      v52 = enum case for SMSCTPart.Content.attachment(_:);
      v53 = sub_1000C5034();
      (*(*(v53 - 8) + 104))(v51, v52, v53);
    }

    v29 = v50;
    goto LABEL_35;
  }

  v40 = v111;
  v41 = v116;
  sub_100018C68(v111, v116);
  sub_1000C5254();
  sub_1000C5244();
  if (!v42)
  {
    (*(v101 + 56))(v7, 1, 1, v114);
    v36 = v102;
    sub_1000C3064();
    sub_100018CBC(v40, v41);
    if (v2)
    {
      return;
    }

    goto LABEL_74;
  }

  v43 = [objc_opt_self() sharedInstance];
  v44 = objc_allocWithZone(MBDSMSToSuperParserContext);
  v45 = sub_1000C51F4();

  v46 = [v44 initWithContent:v45];

  if (![v43 parseContext:v46])
  {
    (*(v101 + 56))(v10, 1, 1, v114);
    v36 = v102;
    sub_1000C3064();
    v35 = v116;
    if (v2)
    {

      v29 = v111;
      goto LABEL_17;
    }

    sub_100018CBC(v111, v116);

    goto LABEL_74;
  }

  v47 = [v46 body];
  v48 = v108;
  _AttributedString.init(fromNSAttributedString:)(v47, v108);
  v49 = v116;
  if (v2)
  {

    v29 = v111;
LABEL_35:
    v33 = v49;
    goto LABEL_36;
  }

  v93 = v43;
  v92 = v46;
  v54 = [v46 orderedParts];
  v55 = sub_1000C53A4();

  v56 = *(v55 + 16);
  if (!v56)
  {
    v95 = _swiftEmptyArrayStorage;
    v84 = v111;
    v59 = v114;
LABEL_76:

    v85 = v101;
    v86 = v104;
    (*(v101 + 16))(v104, v48, v59);
    (*(v85 + 56))(v86, 0, 1, v59);
    v36 = v102;
    sub_1000C3064();
    (*(v85 + 8))(v48, v59);
    sub_100018CBC(v84, v49);

LABEL_74:
    v37 = &enum case for SMSCTPart.Content.smil(_:);
    goto LABEL_19;
  }

  v57 = 0;
  v58 = v55 + 32;
  v97 = v112 + 32;
  v96 = v109 + 32;
  v87[1] = v106 + 32;
  v95 = _swiftEmptyArrayStorage;
  v59 = v114;
  v91 = v55;
  v89 = v56;
  v88 = v55 + 32;
  while (1)
  {
    if (v57 >= *(v55 + 16))
    {
      goto LABEL_83;
    }

    v90 = v57;
    sub_10001D804(v58 + 32 * v57, v117);
    sub_10001D1A8(0, &qword_1000FCA60, off_1000EEAE0);
    if (!swift_dynamicCast())
    {

      sub_1000C4FC4();
      sub_100018BFC();
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      sub_100018CBC(v111, v49);
      (*(v101 + 8))(v48, v59);
      return;
    }

    v94 = v118;
    v60 = [v118 textParts];
    v61 = sub_1000C53A4();

    v99 = *(v61 + 16);
    if (v99)
    {
      break;
    }

    v64 = _swiftEmptyArrayStorage;
LABEL_57:
    v100 = v64;

    v70 = [v94 attachmentParts];
    v71 = sub_1000C53A4();

    v99 = *(v71 + 16);
    if (v99)
    {
      v72 = 0;
      v73 = v71 + 32;
      v74 = _swiftEmptyArrayStorage;
      while (v72 < *(v71 + 16))
      {
        sub_10001D804(v73, v117);
        sub_10001D1A8(0, &qword_1000FCA70, off_1000EEAD8);
        if (!swift_dynamicCast())
        {

          sub_1000C4FC4();
          sub_100018BFC();
          swift_allocError();
          goto LABEL_79;
        }

        v75 = v118;
        v76 = [v118 contentLocation];
        sub_1000C5224();

        sub_1000C43E4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_1000451B4(0, v74[2] + 1, 1, v74);
        }

        v78 = v74[2];
        v77 = v74[3];
        if (v78 >= v77 >> 1)
        {
          v74 = sub_1000451B4((v77 > 1), v78 + 1, 1, v74);
        }

        ++v72;

        v74[2] = v78 + 1;
        (*(v109 + 32))(v74 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v78, v113, v107);
        v73 += 32;
        if (v99 == v72)
        {
          goto LABEL_66;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }

LABEL_66:

    sub_1000C3074();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_10004518C(0, v95[2] + 1, 1, v95);
    }

    v80 = v95[2];
    v79 = v95[3];
    if (v80 >= v79 >> 1)
    {
      v95 = sub_10004518C((v79 > 1), v80 + 1, 1, v95);
    }

    v81 = v90 + 1;

    v82 = v95;
    v95[2] = v80 + 1;
    (*(v106 + 32))(v82 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v80, v105, v103);
    v57 = v81;
    v83 = v81 == v89;
    v49 = v116;
    v84 = v111;
    v59 = v114;
    v48 = v108;
    v55 = v91;
    v58 = v88;
    if (v83)
    {
      goto LABEL_76;
    }
  }

  v62 = 0;
  v63 = v61 + 32;
  v64 = _swiftEmptyArrayStorage;
  v98 = v61;
  while (1)
  {
    if (v62 >= *(v61 + 16))
    {
      __break(1u);
      goto LABEL_82;
    }

    sub_10001D804(v63, v117);
    sub_10001D1A8(0, &qword_1000FCA68, &off_1000EEAE8);
    if (!swift_dynamicCast())
    {
      break;
    }

    v100 = v64;
    v65 = v118;
    v66 = [v118 contentLocation];
    sub_1000C5224();

    v67 = [v65 text];
    sub_1000C5224();

    sub_1000C3C24();
    v64 = v100;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_1000451DC(0, v64[2] + 1, 1, v64);
    }

    v61 = v98;
    v69 = v64[2];
    v68 = v64[3];
    if (v69 >= v68 >> 1)
    {
      v64 = sub_1000451DC((v68 > 1), v69 + 1, 1, v64);
    }

    ++v62;

    v64[2] = v69 + 1;
    (*(v112 + 32))(v64 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v69, v115, v110);
    v63 += 32;
    if (v99 == v62)
    {
      goto LABEL_57;
    }
  }

  sub_1000C4FC4();
  sub_100018BFC();
  swift_allocError();
LABEL_79:
  sub_1000C4FB4();
  swift_willThrow();

  sub_100018CBC(v111, v116);
  (*(v101 + 8))(v108, v114);
}

uint64_t sub_10004A758()
{
  v1 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v33 = &v30 - v5;
  v6 = sub_1000124CC(&qword_1000FC590, &qword_1000C9EC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_1000124CC(&qword_1000FC598, &qword_1000C9EC8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v34 = &v30 - v11;
  v12 = sub_1000124CC(&qword_1000FC5A0, &unk_1000C9ED0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  sub_1000124CC(&qword_1000FC5C8, &qword_1000C9EF0);
  sub_1000C1704();
  if (!*(v0 + 24))
  {
    (*(v13 + 8))(v18, v12);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_6:
    v22 = &qword_1000FC590;
    v23 = &qword_1000C9EC0;
    v24 = v8;
    goto LABEL_7;
  }

  v35 = v10;
  v36 = v9;
  v32 = v4;
  sub_1000C5374();
  sub_100022D6C();
  sub_1000C16F4();
  sub_1000C1714();
  v19 = *(v13 + 8);
  v19(v16, v12);

  v21 = v35;
  v20 = v36;
  if ((*(v35 + 48))(v8, 1, v36) == 1)
  {
    v19(v18, v12);
    goto LABEL_6;
  }

  (*(v21 + 32))(v34, v8, v20);
  swift_getKeyPath();
  sub_1000C1724();

  sub_1000C52A4();

  v26 = v33;
  sub_1000C15E4();

  v27 = v32;
  sub_100018F28(v26, v32, &qword_1000FC520, &qword_1000C9D20);
  v28 = sub_1000C1614();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) != 1)
  {
    v31 = sub_1000C15F4();
    sub_100018F90(v26, &qword_1000FC520, &qword_1000C9D20);
    (*(v21 + 8))(v34, v36);
    v19(v18, v12);
    (*(v29 + 8))(v27, v28);
    return v31;
  }

  sub_100018F90(v26, &qword_1000FC520, &qword_1000C9D20);
  (*(v21 + 8))(v34, v36);
  v19(v18, v12);
  v24 = v27;
  v22 = &qword_1000FC520;
  v23 = &qword_1000C9D20;
LABEL_7:
  sub_100018F90(v24, v22, v23);
  return 0;
}

uint64_t sub_10004AD3C(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FCA88, &unk_1000CBA70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10001530C(a1, a1[3]);
  sub_10004B97C();
  sub_1000C5D04();
  LOBYTE(v12) = 0;
  sub_1000C5AF4();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1000C5AF4();
    LOBYTE(v12) = 2;
    sub_1000C5AF4();
    v12 = *(v3 + 48);
    v13 = v12;
    v11[23] = 3;
    sub_100018F28(&v13, v11, &qword_1000FC3F8, &qword_1000CE300);
    sub_100042EA0();
    sub_1000C5B44();
    sub_100018CBC(v12, *(&v12 + 1));
    LOBYTE(v12) = 4;
    sub_1000C5AF4();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_10004AF8C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10004B578(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

Swift::Int sub_10004AFFC()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_10004B0DC(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_10004B1A8()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_10004B284@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004BAE8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10004B2B4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x80000001000D4FC0;
  v6 = 0xD000000000000010;
  v7 = 0xE400000000000000;
  v8 = 1635017060;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001000D4FE0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x2D746E65746E6F63;
    v3 = 0xEA00000000006469;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10004B350()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000010;
  v4 = 1635017060;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x2D746E65746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10004B3E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004BAE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004B410(uint64_t a1)
{
  v2 = sub_10004B97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004B44C(uint64_t a1)
{
  v2 = sub_10004B97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10004B488(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10004B4A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_10004B500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10004B578@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FCA78, &qword_1000CBA68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  sub_10001530C(a1, a1[3]);
  sub_10004B97C();
  sub_1000C5CF4();
  if (v2)
  {
    v41 = v2;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0xF000000000000000;
LABEL_4:
    sub_100015F68(a1);
    v47 = v15;
    v48 = v14;
    v49 = v13;
    v50 = v12;
    v51 = v11;
    v52 = v10;
    v53 = v9;
    v54 = v16;
    v55 = 0;
    v56 = 0;
    return sub_100022CBC(&v47);
  }

  LOBYTE(v47) = 0;
  v40 = sub_1000C5A04();
  v39 = v18;
  LOBYTE(v47) = 1;
  v19 = sub_1000C5A04();
  v36 = a2;
  v38 = v19;
  v37 = v20;
  LOBYTE(v47) = 2;
  v21 = sub_1000C5A04();
  v41 = 0;
  v11 = v21;
  v10 = v22;
  LOBYTE(v42) = 3;
  sub_100042DD4();
  v23 = v41;
  sub_1000C5A54();
  v41 = v23;
  if (v23)
  {
    (*(v6 + 8))(v8, v5);
    v9 = 0;
    v16 = 0xF000000000000000;
LABEL_9:
    v14 = v39;
    v15 = v40;
    v12 = v37;
    v13 = v38;
    goto LABEL_4;
  }

  v9 = v47;
  v16 = v48;
  sub_100018CBC(0, 0xF000000000000000);
  v57 = 4;
  v24 = v41;
  v25 = sub_1000C5A04();
  v41 = v24;
  if (v24)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_9;
  }

  v27 = v25;
  v28 = v8;
  v29 = v26;
  (*(v6 + 8))(v28, v5);
  v30 = v39;
  *&v42 = v40;
  *(&v42 + 1) = v39;
  v31 = v37;
  *&v43 = v38;
  *(&v43 + 1) = v37;
  *&v44 = v11;
  *(&v44 + 1) = v10;
  *&v45 = v9;
  *(&v45 + 1) = v16;
  *&v46 = v27;
  *(&v46 + 1) = v29;
  sub_100022C60(&v42, &v47);
  sub_100015F68(a1);
  v47 = v40;
  v48 = v30;
  v49 = v38;
  v50 = v31;
  v51 = v11;
  v52 = v10;
  v53 = v9;
  v54 = v16;
  v55 = v27;
  v56 = v29;
  result = sub_100022CBC(&v47);
  v32 = v45;
  v33 = v36;
  v36[2] = v44;
  v33[3] = v32;
  v33[4] = v46;
  v34 = v43;
  *v33 = v42;
  v33[1] = v34;
  return result;
}

unint64_t sub_10004B97C()
{
  result = qword_1000FCA80;
  if (!qword_1000FCA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCA80);
  }

  return result;
}

unint64_t sub_10004B9E4()
{
  result = qword_1000FCA90;
  if (!qword_1000FCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCA90);
  }

  return result;
}

unint64_t sub_10004BA3C()
{
  result = qword_1000FCA98;
  if (!qword_1000FCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCA98);
  }

  return result;
}

unint64_t sub_10004BA94()
{
  result = qword_1000FCAA0;
  if (!qword_1000FCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAA0);
  }

  return result;
}

unint64_t sub_10004BAE8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1688;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10004BB44(uint64_t a1)
{
  result = sub_1000126B8();
  *(a1 + 8) = result;
  return result;
}

void sub_10004BBB4(unint64_t a1@<X8>)
{
  v118 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v1 - 8);
  v112 = &v99 - v2;
  v122 = sub_1000C5974();
  v120 = *(v122 - 1);
  v3 = __chkstk_darwin(v122);
  v113 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v115 = &v99 - v6;
  __chkstk_darwin(v5);
  v114 = &v99 - v7;
  v8 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v8 - 8);
  v117 = &v99 - v9;
  v10 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v10 - 8);
  v116 = &v99 - v11;
  v12 = sub_1000C1974();
  v119 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C4FC4();
  v121 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C4ED4();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v99 - v23;
  v25 = v123;
  sub_1000C1994();
  if (!v25)
  {
    v105 = v22;
    v107 = v14;
    v106 = 0;
    v108 = v12;
    v109 = v17;
    v26 = v122;
    v110 = v24;
    v111 = v18;
    v123 = v19;
    v27 = sub_1000C1984();
    if (v28 >> 60 == 15)
    {
      sub_100014F70();
      v29 = sub_1000C5754();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1000C94D0;
      v31 = v117;
      v32 = v110;
      sub_1000C4EC4();
      v33 = sub_1000C1614();
      (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
      v34 = sub_1000C4A84();
      v36 = v35;
      sub_100018F90(v31, &qword_1000FC520, &qword_1000C9D20);
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_100014FBC();
      *(v30 + 32) = v34;
      *(v30 + 40) = v36;
      v37 = sub_1000C5554();
      sub_1000C1A44("Missing encrypted data (MessageGUID: %@)", 40, 2, &_mh_execute_header, v29, v37, v30);

      sub_10004CE7C();
      swift_allocError();
      swift_willThrow();
      (*(v123 + 8))(v32, v111);
      return;
    }

    v104 = v27;
    v117 = v28;
    isa = sub_1000C1544().super.isa;
    v39 = [(objc_class *)isa _imOptionallyDecompressData];

    v40 = sub_1000C1564();
    v42 = v41;

    v43 = v42 >> 62;
    v103 = v15;
    if ((v42 >> 62) > 1)
    {
      v49 = v120;
      v44 = v121;
      v45 = v108;
      v46 = v109;
      v47 = v119;
      v48 = v107;
      if (v43 != 2)
      {
        goto LABEL_16;
      }

      v51 = *(v40 + 16);
      v50 = *(v40 + 24);
      v52 = __OFSUB__(v50, v51);
      v53 = v50 - v51;
      if (!v52)
      {
        if (v53 > 0)
        {
          goto LABEL_11;
        }

LABEL_16:
        v82 = v45;
        v83 = v47;
        (*(v47 + 104))(v48, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v45);
        sub_1000C1964();
        v106 = v40;
        (*(v83 + 8))(v48, v82);
        sub_1000C4FB4();
        sub_100014F70();
        v84 = sub_1000C5754();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_1000C94D0;
        v122 = *(v44 + 16);
        v86 = v116;
        v87 = v103;
        (v122)(v116, v46, v103);
        (*(v44 + 56))(v86, 0, 1, v87);
        v88 = sub_1000C4A84();
        v118 = v42;
        v90 = v89;
        sub_100018F90(v86, &qword_1000FC438, &unk_1000C9DC0);
        *(v85 + 56) = &type metadata for String;
        *(v85 + 64) = sub_100014FBC();
        *(v85 + 32) = v88;
        *(v85 + 40) = v90;
        v91 = sub_1000C5554();
        sub_1000C1A44("Message unpacking explosion: %{public}@", 39, 2, &_mh_execute_header, v84, v91, v85);

        sub_10004CED0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        (v122)(v92, v46, v87);
        swift_willThrow();
        sub_100018CBC(v104, v117);
        sub_100018CD0(v106, v118);
        (*(v44 + 8))(v46, v87);
LABEL_19:
        (*(v123 + 8))(v110, v111);
        return;
      }

      __break(1u);
    }

    else
    {
      v44 = v121;
      v45 = v108;
      v46 = v109;
      v47 = v119;
      v48 = v107;
      if (!v43)
      {
        v49 = v120;
        if (!BYTE6(v42))
        {
          goto LABEL_16;
        }

LABEL_11:
        sub_1000C1464();
        swift_allocObject();
        v54 = sub_1000C1454();
        sub_10004CF18();
        v55 = v106;
        sub_1000C1444();
        if (!v55)
        {
          sub_1000C1994();
          sub_1000C42D4();
          (*(v123 + 8))(v110, v111);
          sub_100018CBC(v104, v117);
          sub_100018CD0(v40, v42);

          return;
        }

        v105 = v54;
        v106 = v40;
        v118 = v42;
        v124 = v55;
        swift_errorRetain();
        sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
        v56 = v114;
        if (swift_dynamicCast())
        {

          v57 = v115;
          (*(v49 + 32))(v115, v56, v26);
          v114 = sub_100014F70();
          v58 = sub_1000C5754();
          v102 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
          v59 = swift_allocObject();
          v101 = xmmword_1000C94D0;
          *(v59 + 16) = xmmword_1000C94D0;
          v100 = *(v49 + 16);
          v60 = v112;
          v100(v112, v57, v26);
          (*(v49 + 56))(v60, 0, 1, v26);
          v61 = sub_1000C4A84();
          v63 = v62;
          sub_100018F90(v60, &qword_1000FC430, &unk_1000C9B00);
          *(v59 + 56) = &type metadata for String;
          v112 = sub_100014FBC();
          *(v59 + 64) = v112;
          *(v59 + 32) = v61;
          *(v59 + 40) = v63;
          v64 = sub_1000C5554();
          sub_1000C1A44("priorityMessageGUIDArray unpacking error: %{public}@", 52, 2, &_mh_execute_header, v58, v64, v59);

          v65 = v119;
          v66 = v107;
          v67 = v108;
          (*(v119 + 104))(v107, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v108);
          sub_1000C1964();
          (*(v65 + 8))(v66, v67);
          v100(v113, v57, v26);
          v68 = v109;
          sub_1000C4FA4();
          v69 = sub_1000C5754();
          v70 = swift_allocObject();
          *(v70 + 16) = v101;
          v71 = v121;
          v72 = *(v121 + 16);
          v73 = v116;
          v74 = v103;
          v72(v116, v68, v103);
          (*(v71 + 56))(v73, 0, 1, v74);
          v75 = sub_1000C4A84();
          v77 = v76;
          sub_100018F90(v73, &qword_1000FC438, &unk_1000C9DC0);
          v78 = v112;
          *(v70 + 56) = &type metadata for String;
          *(v70 + 64) = v78;
          *(v70 + 32) = v75;
          *(v70 + 40) = v77;
          v79 = sub_1000C5554();
          sub_1000C1A44("priorityMessageGUIDArray unpacking explosion: %{public}@", 56, 2, &_mh_execute_header, v69, v79, v70);

          sub_10004CED0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          swift_allocError();
          v80 = v109;
          v72(v81, v109, v74);
          swift_willThrow();
          sub_100018CBC(v104, v117);

          sub_100018CD0(v106, v118);
          (*(v71 + 8))(v80, v74);
          (*(v120 + 8))(v115, v122);
          (*(v123 + 8))(v110, v111);

          return;
        }

        sub_100014F70();
        v93 = sub_1000C5754();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_1000C94D0;
        v124 = v55;
        v95 = sub_1000C4A84();
        v97 = v96;
        *(v94 + 56) = &type metadata for String;
        *(v94 + 64) = sub_100014FBC();
        *(v94 + 32) = v95;
        *(v94 + 40) = v97;
        v98 = sub_1000C5554();
        sub_1000C1A44("priorityMessageGUIDArray unpacking unknown error: %{public}@", 60, 2, &_mh_execute_header, v93, v98, v94);

        swift_getErrorValue();
        swift_getDynamicType();
        v124 = 0;
        v125 = 0xE000000000000000;
        sub_1000C5944(22);

        v124 = 0xD000000000000014;
        v125 = 0x80000001000D5330;
        v126._countAndFlagsBits = sub_1000C5D34();
        sub_1000C52E4(v126);

        sub_10004CED0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        sub_100018CBC(v104, v117);

        sub_100018CD0(v106, v118);

        goto LABEL_19;
      }

      v49 = v120;
      if (!__OFSUB__(HIDWORD(v40), v40))
      {
        if (HIDWORD(v40) - v40 > 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10004CB88(void *a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FCAD0, &qword_1000CBD60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10001530C(a1, a1[3]);
  sub_10004D354();
  sub_1000C5D04();
  v9[1] = a2;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  sub_100015FB4(&qword_1000FC380, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1000C5BB4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10004CD08@<X0>(unint64_t a3@<X8>)
{
  v5 = sub_1000C19B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_10004CED0(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v3)
  {
    sub_10004BBB4(a3);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_10004CE7C()
{
  result = qword_1000FCAB0;
  if (!qword_1000FCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAB0);
  }

  return result;
}

uint64_t sub_10004CED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004CF18()
{
  result = qword_1000FCAB8;
  if (!qword_1000FCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAB8);
  }

  return result;
}

Swift::Int sub_10004CF8C()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

Swift::Int sub_10004CFE0()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

void sub_10004D024(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F1720;
  v6._object = v3;
  v5 = sub_1000C59F4(v4, v6);

  *a2 = v5 != 0;
}

void sub_10004D094(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F1758;
  v7._object = a2;
  v6 = sub_1000C59F4(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_10004D0EC(uint64_t a1)
{
  v2 = sub_10004D354();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D128(uint64_t a1)
{
  v2 = sub_10004D354();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10004D164@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10004D1AC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_10004D1AC(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FCAC0, &unk_1000CBD50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10001530C(a1, a1[3]);
  sub_10004D354();
  sub_1000C5CF4();
  if (v1)
  {
    sub_100015F68(a1);
  }

  else
  {
    sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    sub_100015FB4(&qword_1000FC3A8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000C5AC4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100015F68(a1);
  }

  return v7;
}

unint64_t sub_10004D354()
{
  result = qword_1000FCAC8;
  if (!qword_1000FCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAC8);
  }

  return result;
}

unint64_t sub_10004D3BC()
{
  result = qword_1000FCAD8;
  if (!qword_1000FCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAD8);
  }

  return result;
}

unint64_t sub_10004D414()
{
  result = qword_1000FCAE0;
  if (!qword_1000FCAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAE0);
  }

  return result;
}

unint64_t sub_10004D46C()
{
  result = qword_1000FCAE8;
  if (!qword_1000FCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAE8);
  }

  return result;
}

Swift::Int sub_10004D4D4(uint64_t a1, uint64_t a2)
{
  sub_1000C5CB4();
  sub_1000C51B4();
  return sub_1000C5CD4();
}

uint64_t sub_10004D538(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051FB4();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10004D584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000C5CB4();
  sub_1000C51B4();
  return sub_1000C5CD4();
}

uint64_t sub_10004D5EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100054998(a2);
  *a1 = result;
  return result;
}

uint64_t sub_10004D620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054998(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004D66C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100053608();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10004D6B8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10004D6D4()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *sub_10004D6E8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_10004D708(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_10004D730()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010AC70);
  sub_100042220(v0, qword_10010AC70);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000CBEC0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "messageType";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = sub_1000C1924();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "sendDate";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "messageData";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "baseColor";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "identifier";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "supportsPlaybackTimeOffsets";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "startDelay";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return sub_1000C1934();
}

uint64_t sub_10004DA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1000C17B4();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_10004DBEC(a1, v5, a2, a3);
          break;
        case 2:
          type metadata accessor for ETP_Header(0);
          sub_1000C1844();
          break;
        case 3:
          type metadata accessor for ETP_Header(0);
          sub_1000C17E4();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        type metadata accessor for ETP_Header(0);
        sub_1000C17C4();
      }

      else if (result == 7)
      {
        type metadata accessor for ETP_Header(0);
        sub_1000C1804();
      }
    }

    else if (result == 4)
    {
      type metadata accessor for ETP_Header(0);
      sub_1000C1834();
    }

    else
    {
      type metadata accessor for ETP_Header(0);
      sub_1000C1814();
    }
  }

  return result;
}

uint64_t sub_10004DBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ETP_Header(0);
  sub_100051FB4();
  return sub_1000C17D4();
}

uint64_t sub_10004DC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ETP_Header(0);
  if (*(v3 + v5[5]) == 8 || (sub_100051FB4(), result = sub_1000C18A4(), !v4))
  {
    if ((*(v3 + v5[6] + 8) & 1) != 0 || (result = sub_1000C1914(), !v4))
    {
      v7 = v3 + v5[7];
      v8 = *(v7 + 8);
      if (v8 >> 60 == 15 || (v9 = *v7, sub_100018C68(*v7, *(v7 + 8)), sub_1000C18B4(), result = sub_100018CBC(v9, v8), !v4))
      {
        if ((*(v3 + v5[8] + 4) & 1) != 0 || (result = sub_1000C1904(), !v4))
        {
          if (!*(v3 + v5[9] + 8) || (result = sub_1000C18E4(), !v4))
          {
            if (*(v3 + v5[10]) == 2 || (result = sub_1000C1894(), !v4))
            {
              if (*(v3 + v5[11] + 8))
              {
                return sub_1000C1734();
              }

              result = sub_1000C18D4();
              if (!v4)
              {
                return sub_1000C1734();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double sub_10004DE48@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C1744();
  v4 = a1[6];
  *(a2 + a1[5]) = 8;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 8) = 1;
  result = 0.0;
  v7 = a1[8];
  *(a2 + a1[7]) = xmmword_1000C9E00;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[10];
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  *(a2 + v9) = 2;
  v11 = a2 + a1[11];
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_10004DF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC10, type metadata accessor for ETP_Header, &unk_1000CC9F0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004DFEC(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCBD8, type metadata accessor for ETP_Header, &unk_1000CCA28);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004E05C(uint64_t a1, uint64_t a2)
{
  sub_100051530(&qword_1000FCBD8, type metadata accessor for ETP_Header, &unk_1000CCA28);

  return sub_1000C1884();
}

uint64_t sub_10004E0E0()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010AC88);
  sub_100042220(v0, qword_10010AC88);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000CBED0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "Tap";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_1000C1924();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "QuickTap";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "Heartbeat";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "Doodle";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ReadReceipt";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "Video";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "Kiss";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "Anger";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  return sub_1000C1934();
}

uint64_t sub_10004E444()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010ACA0);
  sub_100042220(v0, qword_10010ACA0);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CACB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "timeDeltas";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1000C1924();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "points";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "colors";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_1000C1934();
}

uint64_t sub_10004E650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1000C17B4();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 4 || result == 3 || result == 2)
    {
      type metadata accessor for ETP_Tap(0);
      sub_1000C17E4();
    }
  }

  return result;
}

uint64_t sub_10004E780(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC38, type metadata accessor for ETP_Tap, &unk_1000CC860);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004E820(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCBB8, type metadata accessor for ETP_Tap, &unk_1000CC898);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004E88C(uint64_t a1, uint64_t a2)
{
  sub_100051530(&qword_1000FCBB8, type metadata accessor for ETP_Tap, &unk_1000CC898);

  return sub_1000C1884();
}

uint64_t sub_10004E938()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010ACB8);
  sub_100042220(v0, qword_10010ACB8);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000CBEE0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "beatsPerMinute";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_1000C1924();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "duration";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "normalizedCenterX";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "normalizedCenterY";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "rotation";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "heartbreakTime";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  return sub_1000C1934();
}

uint64_t sub_10004EBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1000C17B4();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5 || result == 6)
      {
LABEL_2:
        type metadata accessor for ETP_Heartbeat(0);
        sub_1000C17F4();
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_2;
        case 2:
          type metadata accessor for ETP_Heartbeat(0);
          sub_1000C1824();
          break;
        case 3:
          goto LABEL_2;
      }
    }
  }
}

uint64_t sub_10004ED34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ETP_Heartbeat(0);
  if ((*(v3 + v5[5] + 4) & 1) != 0 || (result = sub_1000C18C4(), !v4))
  {
    if ((*(v3 + v5[6] + 4) & 1) != 0 || (result = sub_1000C18F4(), !v4))
    {
      if ((*(v3 + v5[7] + 4) & 1) != 0 || (result = sub_1000C18C4(), !v4))
      {
        if ((*(v3 + v5[8] + 4) & 1) != 0 || (result = sub_1000C18C4(), !v4))
        {
          if ((*(v3 + v5[9] + 4) & 1) != 0 || (result = sub_1000C18C4(), !v4))
          {
            if (*(v3 + v5[10] + 4))
            {
              return sub_1000C1734();
            }

            result = sub_1000C18C4();
            if (!v4)
            {
              return sub_1000C1734();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10004EE90@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000C1744();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_10004EF64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC40, type metadata accessor for ETP_Heartbeat, &unk_1000CC6F8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004F004(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCB98, type metadata accessor for ETP_Heartbeat, &unk_1000CC730);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004F070(uint64_t a1, uint64_t a2)
{
  sub_100051530(&qword_1000FCB98, type metadata accessor for ETP_Heartbeat, &unk_1000CC730);

  return sub_1000C1884();
}

uint64_t sub_10004F0F0()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010ACD0);
  sub_100042220(v0, qword_10010ACD0);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CBEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "doodleCount";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1000C1924();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "doodleData";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "colorData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pointTimeDeltaData";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1000C1934();
}

uint64_t sub_10004F338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1000C17B4();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        type metadata accessor for ETP_Doodle(0);
        sub_1000C17E4();
      }
    }

    else if (result == 1)
    {
      type metadata accessor for ETP_Doodle(0);
      sub_1000C1824();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_10004F434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ETP_Doodle(0);
  if ((*(v3 + v5[5] + 4) & 1) != 0 || (result = sub_1000C18F4(), !v4))
  {
    v7 = v3 + v5[6];
    v8 = *(v7 + 8);
    if (v8 >> 60 == 15 || (v9 = *v7, sub_100018C68(*v7, *(v7 + 8)), sub_1000C18B4(), result = sub_100018CBC(v9, v8), !v4))
    {
      v10 = v3 + v5[7];
      v11 = *(v10 + 8);
      if (v11 >> 60 == 15 || (v12 = *v10, sub_100018C68(*v10, *(v10 + 8)), sub_1000C18B4(), result = sub_100018CBC(v12, v11), !v4))
      {
        v13 = v3 + v5[8];
        v14 = *(v13 + 8);
        if (v14 >> 60 == 15)
        {
          return sub_1000C1734();
        }

        v15 = *v13;
        sub_100018C68(*v13, *(v13 + 8));
        sub_1000C18B4();
        result = sub_100018CBC(v15, v14);
        if (!v4)
        {
          return sub_1000C1734();
        }
      }
    }
  }

  return result;
}

double sub_10004F5E0@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C1744();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  result = 0.0;
  *(a2 + v4) = xmmword_1000C9E00;
  v7 = a1[8];
  *(a2 + a1[7]) = xmmword_1000C9E00;
  *(a2 + v7) = xmmword_1000C9E00;
  return result;
}

uint64_t sub_10004F680(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC48, type metadata accessor for ETP_Doodle, &unk_1000CC590);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004F720(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCB78, type metadata accessor for ETP_Doodle, &unk_1000CC5C8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004F78C(uint64_t a1, uint64_t a2)
{
  sub_100051530(&qword_1000FCB78, type metadata accessor for ETP_Doodle, &unk_1000CC5C8);

  return sub_1000C1884();
}

uint64_t sub_10004F80C()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010ACE8);
  sub_100042220(v0, qword_10010ACE8);
  return sub_1000C1944();
}

uint64_t sub_10004F858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1000C17B4();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_10004F90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC50, type metadata accessor for ETP_ReadReceipt, &unk_1000CC428);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004F9AC(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCB58, type metadata accessor for ETP_ReadReceipt, &unk_1000CC460);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004FA18(uint64_t a1, uint64_t a2)
{
  sub_100051530(&qword_1000FCB58, type metadata accessor for ETP_ReadReceipt, &unk_1000CC460);

  return sub_1000C1884();
}

uint64_t sub_10004FA94(uint64_t a1, uint64_t a2)
{
  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

uint64_t sub_10004FB1C()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010AD00);
  sub_100042220(v0, qword_10010AD00);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CACB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "introMessageData";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1000C1924();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "playingMessagesData";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "mediaType";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_1000C1934();
}

uint64_t sub_10004FD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1000C17B4();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 4)
    {
      sub_10004FDF8(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      type metadata accessor for ETP_Video(0);
      sub_1000C17E4();
    }
  }

  return result;
}

uint64_t sub_10004FDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ETP_Video(0);
  sub_100053608();
  return sub_1000C17D4();
}

uint64_t sub_10004FE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ETP_Video(0);
  v6 = v3 + v5[5];
  v7 = *(v6 + 8);
  if (v7 >> 60 == 15 || (v8 = *v6, sub_100018C68(*v6, *(v6 + 8)), sub_1000C18B4(), result = sub_100018CBC(v8, v7), !v4))
  {
    v10 = v3 + v5[6];
    v11 = *(v10 + 8);
    if (v11 >> 60 == 15 || (v12 = *v10, sub_100018C68(*v10, *(v10 + 8)), sub_1000C18B4(), result = sub_100018CBC(v12, v11), !v4))
    {
      if (*(v3 + v5[7]) == 2)
      {
        return sub_1000C1734();
      }

      sub_100053608();
      result = sub_1000C18A4();
      if (!v4)
      {
        return sub_1000C1734();
      }
    }
  }

  return result;
}

double sub_10004FFE0@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C1744();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_1000C9E00;
  *(a2 + v5) = xmmword_1000C9E00;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_100050074(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC58, type metadata accessor for ETP_Video, &unk_1000CC2C0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100050114(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCB38, type metadata accessor for ETP_Video, &unk_1000CC2F8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100050180(uint64_t a1, uint64_t a2)
{
  sub_100051530(&qword_1000FCB38, type metadata accessor for ETP_Video, &unk_1000CC2F8);

  return sub_1000C1884();
}

uint64_t sub_100050200()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010AD18);
  sub_100042220(v0, qword_10010AD18);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CBF00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "Video";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1000C1924();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "Photo";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1000C1934();
}

uint64_t sub_1000503EC()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010AD30);
  sub_100042220(v0, qword_10010AD30);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CACB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "delays";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1000C1924();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "points";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "angles";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_1000C1934();
}

uint64_t sub_1000505FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1000C17B4();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      type metadata accessor for ETP_Kiss(0);
      sub_1000C17E4();
    }
  }

  return result;
}

uint64_t sub_1000506C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4(0);
  v10 = (v7 + v9[5]);
  v11 = v10[1];
  if (v11 >> 60 == 15 || (v12 = *v10, sub_100018C68(*v10, v11), sub_1000C18B4(), result = sub_100018CBC(v12, v11), !v8))
  {
    v14 = v7 + v9[6];
    v15 = *(v14 + 8);
    if (v15 >> 60 == 15 || (v16 = *v14, sub_100018C68(*v14, *(v14 + 8)), sub_1000C18B4(), result = sub_100018CBC(v16, v15), !v8))
    {
      v17 = v7 + v9[7];
      v18 = *(v17 + 8);
      if (v18 >> 60 == 15)
      {
        return sub_1000C1734();
      }

      v19 = *v17;
      sub_100018C68(*v17, *(v17 + 8));
      sub_1000C18B4();
      result = sub_100018CBC(v19, v18);
      if (!v8)
      {
        return sub_1000C1734();
      }
    }
  }

  return result;
}

double sub_100050868@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C1744();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_1000C9E00;
  *(a2 + v5) = xmmword_1000C9E00;
  *(a2 + a1[7]) = xmmword_1000C9E00;
  return result;
}

uint64_t sub_100050914(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC68, type metadata accessor for ETP_Kiss, &unk_1000CC130);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000509B4(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCB18, type metadata accessor for ETP_Kiss, &unk_1000CC168);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100050A20(uint64_t a1, uint64_t a2)
{
  sub_100051530(&qword_1000FCB18, type metadata accessor for ETP_Kiss, &unk_1000CC168);

  return sub_1000C1884();
}

uint64_t sub_100050ACC()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010AD48);
  sub_100042220(v0, qword_10010AD48);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000CB3A0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "duration";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_1000C1924();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "normalizedCenterX";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "normalizedCenterY";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "delays";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "points";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v8();
  return sub_1000C1934();
}

uint64_t sub_100050D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1000C17B4();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        type metadata accessor for ETP_Anger(0);
        sub_1000C17F4();
      }
    }

    else
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4 || result == 5)
      {
        type metadata accessor for ETP_Anger(0);
        sub_1000C17E4();
      }
    }
  }
}

uint64_t sub_100050E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ETP_Anger(0);
  if ((*(v3 + v5[5] + 4) & 1) != 0 || (result = sub_1000C18C4(), !v4))
  {
    if ((*(v3 + v5[6] + 4) & 1) != 0 || (result = sub_1000C18C4(), !v4))
    {
      if ((*(v3 + v5[7] + 4) & 1) != 0 || (result = sub_1000C18C4(), !v4))
      {
        v7 = v3 + v5[8];
        v8 = *(v7 + 8);
        if (v8 >> 60 == 15 || (v9 = *v7, sub_100018C68(*v7, *(v7 + 8)), sub_1000C18B4(), result = sub_100018CBC(v9, v8), !v4))
        {
          v10 = v3 + v5[9];
          v11 = *(v10 + 8);
          if (v11 >> 60 == 15)
          {
            return sub_1000C1734();
          }

          v12 = *v10;
          sub_100018C68(*v10, *(v10 + 8));
          sub_1000C18B4();
          result = sub_100018CBC(v12, v11);
          if (!v4)
          {
            return sub_1000C1734();
          }
        }
      }
    }
  }

  return result;
}

double sub_100051024@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C1744();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *(v8 + 4) = 1;
  *v8 = 0;
  result = 0.0;
  *(a2 + v7) = xmmword_1000C9E00;
  *(a2 + a1[9]) = xmmword_1000C9E00;
  return result;
}

uint64_t sub_1000510AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C1754();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100051114(uint64_t a1)
{
  v3 = sub_1000C1754();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1000511AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC70, type metadata accessor for ETP_Anger, &unk_1000CBFC8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10005124C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1000C1954();
  v7 = sub_100042220(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1000512E8(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCAF8, type metadata accessor for ETP_Anger, &unk_1000CC000);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_100051354(uint64_t a1, uint64_t a2)
{
  sub_1000C5CB4();
  sub_1000C51B4();
  return sub_1000C5CD4();
}

uint64_t sub_1000513AC(uint64_t a1, uint64_t a2)
{
  sub_100051530(&qword_1000FCAF8, type metadata accessor for ETP_Anger, &unk_1000CC000);

  return sub_1000C1884();
}

Swift::Int sub_100051428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000C5CB4();
  sub_1000C51B4();
  return sub_1000C5CD4();
}

uint64_t sub_100051530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100051DF0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100051F60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001308C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100051FB4()
{
  result = qword_1000FCC18;
  if (!qword_1000FCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCC18);
  }

  return result;
}

uint64_t sub_100052008@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1000C13F4();
    if (v10)
    {
      v11 = sub_1000C1424();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1000C1414();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1000C13F4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1000C1424();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1000C1414();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100052238(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000523C8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100018CD0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100052008(v13, a3, a4, &v12);
  v10 = v4;
  sub_100018CD0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1000523C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1000C13F4();
  v11 = result;
  if (result)
  {
    result = sub_1000C1424();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1000C1414();
  sub_100052008(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_100052480(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100018C68(a3, a4);
          return sub_100052238(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000525E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Video(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_10;
    }

    sub_100018C54(v7, v6);
    sub_100018C54(v10, v9);
    sub_100018CBC(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_10;
    }

    sub_100018C54(v7, v6);
    sub_100018C54(v10, v9);
    v11 = sub_100052480(v7, v6, v10, v9);
    sub_100018CBC(v10, v9);
    sub_100018CBC(v7, v6);
    if (!v11)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_100018C54(v7, v6);
      sub_100018C54(v10, v9);
      sub_100018CBC(v7, v6);
      goto LABEL_13;
    }

LABEL_10:
    sub_100018C54(v7, v6);
    sub_100018C54(v10, v9);
    sub_100018CBC(v7, v6);
    sub_100018CBC(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_100018C54(v7, v6);
  sub_100018C54(v10, v9);
  v15 = sub_100052480(v7, v6, v10, v9);
  sub_100018CBC(v10, v9);
  sub_100018CBC(v7, v6);
  if (!v15)
  {
    return 0;
  }

LABEL_13:
  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 != 2)
  {
    if (v18 != 2 && ((v18 ^ v17) & 1) == 0)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v18 != 2)
  {
    return 0;
  }

LABEL_18:
  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

uint64_t sub_10005284C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Anger(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v22 = *(a1 + v20);
  v21 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v25 = *v23;
  v24 = v23[1];
  if (v21 >> 60 == 15)
  {
    if (v24 >> 60 == 15)
    {
      v26 = v4;
      sub_100018C54(v22, v21);
      sub_100018C54(v25, v24);
      sub_100018CBC(v22, v21);
      v27 = v26;
      goto LABEL_24;
    }

LABEL_28:
    sub_100018C54(v22, v21);
    sub_100018C54(v25, v24);
    sub_100018CBC(v22, v21);
    sub_100018CBC(v25, v24);
    return 0;
  }

  if (v24 >> 60 == 15)
  {
    goto LABEL_28;
  }

  v27 = v4;
  sub_100018C54(v22, v21);
  sub_100018C54(v25, v24);
  v28 = sub_100052480(v22, v21, v25, v24);
  sub_100018CBC(v25, v24);
  sub_100018CBC(v22, v21);
  if (!v28)
  {
    return 0;
  }

LABEL_24:
  v29 = v27[9];
  v22 = *(a1 + v29);
  v21 = *(a1 + v29 + 8);
  v30 = (a2 + v29);
  v25 = *v30;
  v24 = v30[1];
  if (v21 >> 60 != 15)
  {
    if (v24 >> 60 == 15)
    {
      goto LABEL_28;
    }

    sub_100018C54(v22, v21);
    sub_100018C54(v25, v24);
    v32 = sub_100052480(v22, v21, v25, v24);
    sub_100018CBC(v25, v24);
    sub_100018CBC(v22, v21);
    if (v32)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v24 >> 60 != 15)
  {
    goto LABEL_28;
  }

  sub_100018C54(v22, v21);
  sub_100018C54(v25, v24);
  sub_100018CBC(v22, v21);
LABEL_31:
  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

uint64_t sub_100052B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  if (v7 >> 60 == 15)
  {
    if (v10 >> 60 != 15)
    {
      goto LABEL_10;
    }

    sub_100018C54(v8, v7);
    sub_100018C54(v11, v10);
    sub_100018CBC(v8, v7);
  }

  else
  {
    if (v10 >> 60 == 15)
    {
      goto LABEL_10;
    }

    sub_100018C54(v8, v7);
    sub_100018C54(v11, v10);
    v12 = sub_100052480(v8, v7, v11, v10);
    sub_100018CBC(v11, v10);
    sub_100018CBC(v8, v7);
    if (!v12)
    {
      return 0;
    }
  }

  v13 = v5[6];
  v8 = *(a1 + v13);
  v7 = *(a1 + v13 + 8);
  v14 = (a2 + v13);
  v11 = *v14;
  v10 = v14[1];
  if (v7 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_100018C54(v8, v7);
      sub_100018C54(v11, v10);
      sub_100018CBC(v8, v7);
      goto LABEL_14;
    }

LABEL_10:
    sub_100018C54(v8, v7);
    sub_100018C54(v11, v10);
    sub_100018CBC(v8, v7);
    v15 = v11;
    v16 = v10;
LABEL_11:
    sub_100018CBC(v15, v16);
    return 0;
  }

  if (v10 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_100018C54(v8, v7);
  sub_100018C54(v11, v10);
  v18 = sub_100052480(v8, v7, v11, v10);
  sub_100018CBC(v11, v10);
  sub_100018CBC(v8, v7);
  if (!v18)
  {
    return 0;
  }

LABEL_14:
  v19 = v5[7];
  v21 = *(a1 + v19);
  v20 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v24 = *v22;
  v23 = v22[1];
  if (v20 >> 60 != 15)
  {
    if (v23 >> 60 == 15)
    {
      goto LABEL_18;
    }

    sub_100018C54(v21, v20);
    sub_100018C54(v24, v23);
    v25 = sub_100052480(v21, v20, v24, v23);
    sub_100018CBC(v24, v23);
    sub_100018CBC(v21, v20);
    if (v25)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v23 >> 60 != 15)
  {
LABEL_18:
    sub_100018C54(v21, v20);
    sub_100018C54(v24, v23);
    sub_100018CBC(v21, v20);
    v15 = v24;
    v16 = v23;
    goto LABEL_11;
  }

  sub_100018C54(v21, v20);
  sub_100018C54(v24, v23);
  sub_100018CBC(v21, v20);
LABEL_20:
  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

uint64_t sub_100052E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Heartbeat(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

uint64_t sub_100053004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Header(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 8)
  {
    if (v7 != 8)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v15 = *(a1 + v13);
  v14 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v18 = *v16;
  v17 = v16[1];
  if (v14 >> 60 == 15)
  {
    if (v17 >> 60 == 15)
    {
      v19 = v4;
      sub_100018C54(v15, v14);
      sub_100018C54(v18, v17);
      sub_100018CBC(v15, v14);
      v20 = v19;
      goto LABEL_18;
    }

LABEL_15:
    sub_100018C54(v15, v14);
    sub_100018C54(v18, v17);
    sub_100018CBC(v15, v14);
    sub_100018CBC(v18, v17);
    return 0;
  }

  if (v17 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v22 = v4;
  sub_100018C54(v15, v14);
  sub_100018C54(v18, v17);
  v23 = sub_100052480(v15, v14, v18, v17);
  sub_100018CBC(v18, v17);
  sub_100018CBC(v15, v14);
  v20 = v22;
  if (!v23)
  {
    return 0;
  }

LABEL_18:
  v24 = v20[8];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  v29 = v20[9];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v34 = v20;
      v35 = sub_1000C5C04();
      v20 = v34;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v36 = v20[10];
  v37 = *(a1 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

  v39 = v20[11];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 8);
  if (v41)
  {
    if (v43)
    {
      goto LABEL_42;
    }

    return 0;
  }

  if (*v40 != *v42)
  {
    LOBYTE(v43) = 1;
  }

  if (v43)
  {
    return 0;
  }

LABEL_42:
  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

uint64_t sub_1000532DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Doodle(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v15 = *v13;
  v14 = v13[1];
  if (v11 >> 60 == 15)
  {
    if (v14 >> 60 != 15)
    {
      goto LABEL_21;
    }

    v16 = v4;
    sub_100018C54(v12, v11);
    sub_100018C54(v15, v14);
    sub_100018CBC(v12, v11);
    v17 = v16;
  }

  else
  {
    if (v14 >> 60 == 15)
    {
      goto LABEL_21;
    }

    v18 = v4;
    sub_100018C54(v12, v11);
    sub_100018C54(v15, v14);
    v19 = sub_100052480(v12, v11, v15, v14);
    sub_100018CBC(v15, v14);
    sub_100018CBC(v12, v11);
    v17 = v18;
    if (!v19)
    {
      return 0;
    }
  }

  v20 = *(v17 + 28);
  v12 = *(a1 + v20);
  v11 = *(a1 + v20 + 8);
  v21 = (a2 + v20);
  v15 = *v21;
  v14 = v21[1];
  if (v11 >> 60 == 15)
  {
    if (v14 >> 60 == 15)
    {
      v22 = v17;
      sub_100018C54(v12, v11);
      sub_100018C54(v15, v14);
      sub_100018CBC(v12, v11);
      v23 = v22;
      goto LABEL_17;
    }

LABEL_21:
    sub_100018C54(v12, v11);
    sub_100018C54(v15, v14);
    sub_100018CBC(v12, v11);
    sub_100018CBC(v15, v14);
    return 0;
  }

  if (v14 >> 60 == 15)
  {
    goto LABEL_21;
  }

  v23 = v17;
  sub_100018C54(v12, v11);
  sub_100018C54(v15, v14);
  v24 = sub_100052480(v12, v11, v15, v14);
  sub_100018CBC(v15, v14);
  sub_100018CBC(v12, v11);
  if (!v24)
  {
    return 0;
  }

LABEL_17:
  v25 = *(v23 + 32);
  v12 = *(a1 + v25);
  v11 = *(a1 + v25 + 8);
  v26 = (a2 + v25);
  v15 = *v26;
  v14 = v26[1];
  if (v11 >> 60 != 15)
  {
    if (v14 >> 60 == 15)
    {
      goto LABEL_21;
    }

    sub_100018C54(v12, v11);
    sub_100018C54(v15, v14);
    v28 = sub_100052480(v12, v11, v15, v14);
    sub_100018CBC(v15, v14);
    sub_100018CBC(v12, v11);
    if (v28)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (v14 >> 60 != 15)
  {
    goto LABEL_21;
  }

  sub_100018C54(v12, v11);
  sub_100018C54(v15, v14);
  sub_100018CBC(v12, v11);
LABEL_24:
  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

unint64_t sub_100053608()
{
  result = qword_1000FCC60;
  if (!qword_1000FCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCC60);
  }

  return result;
}

uint64_t sub_100053670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1754();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100053750(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C1754();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

void sub_10005380C(uint64_t a1)
{
  sub_1000C1754();
  if (v1 <= 0x3F)
  {
    sub_10005425C(319, &qword_1000FCCE0, &type metadata for ETP_Header.MessageType);
    if (v2 <= 0x3F)
    {
      sub_10005425C(319, &qword_1000FCCE8, &type metadata for Int64);
      if (v3 <= 0x3F)
      {
        sub_10005425C(319, &qword_1000FCCF0, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          sub_10005425C(319, &qword_1000FCCF8, &type metadata for UInt32);
          if (v5 <= 0x3F)
          {
            sub_10005425C(319, &qword_1000FCD00, &type metadata for String);
            if (v6 <= 0x3F)
            {
              sub_10005425C(319, &qword_1000FCD08, &type metadata for Bool);
              if (v7 <= 0x3F)
              {
                sub_10005425C(319, &unk_1000FCD10, &type metadata for Double);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ETP_Header.MessageType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ETP_Header.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_100053B44(uint64_t a1)
{
  sub_1000C1754();
  if (v1 <= 0x3F)
  {
    sub_10005425C(319, &unk_1000FCE58, &type metadata for Float);
    if (v2 <= 0x3F)
    {
      sub_10005425C(319, &qword_1000FCCF8, &type metadata for UInt32);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100053C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1754();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_100053D00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C1754();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_100053DC8(uint64_t a1)
{
  sub_1000C1754();
  if (v1 <= 0x3F)
  {
    sub_10005425C(319, &qword_1000FCCF8, &type metadata for UInt32);
    if (v2 <= 0x3F)
    {
      sub_10005425C(319, &qword_1000FCCF0, &type metadata for Data);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100053EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1754();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100053F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1754();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100053F90(uint64_t a1)
{
  result = sub_1000C1754();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100054010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1754();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000540E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C1754();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

void sub_1000541A0(uint64_t a1)
{
  sub_1000C1754();
  if (v1 <= 0x3F)
  {
    sub_10005425C(319, &qword_1000FCCF0, &type metadata for Data);
    if (v2 <= 0x3F)
    {
      sub_10005425C(319, &unk_1000FD038, &type metadata for ETP_Video.MediaType);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10005425C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000C5854();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000542CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1754();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_1000543A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C1754();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_100054470(uint64_t a1)
{
  sub_1000C1754();
  if (v1 <= 0x3F)
  {
    sub_10005425C(319, &qword_1000FCCF0, &type metadata for Data);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100054520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1754();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_1000545FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C1754();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 32));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_1000546C4(uint64_t a1)
{
  sub_1000C1754();
  if (v1 <= 0x3F)
  {
    sub_10005425C(319, &unk_1000FCE58, &type metadata for Float);
    if (v2 <= 0x3F)
    {
      sub_10005425C(319, &qword_1000FCCF0, &type metadata for Data);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10005478C()
{
  result = qword_1000FD1A8;
  if (!qword_1000FD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1A8);
  }

  return result;
}

unint64_t sub_1000547E4()
{
  result = qword_1000FD1B0;
  if (!qword_1000FD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1B0);
  }

  return result;
}

unint64_t sub_10005483C()
{
  result = qword_1000FD1B8;
  if (!qword_1000FD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1B8);
  }

  return result;
}

unint64_t sub_100054894()
{
  result = qword_1000FD1C0;
  if (!qword_1000FD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1C0);
  }

  return result;
}

unint64_t sub_1000548EC()
{
  result = qword_1000FD1C8;
  if (!qword_1000FD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1C8);
  }

  return result;
}

unint64_t sub_100054944()
{
  result = qword_1000FD1D0;
  if (!qword_1000FD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1D0);
  }

  return result;
}

uint64_t sub_100054998(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_100054A38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = sub_1000124CC(&qword_1000FD1E8, &qword_1000CCDE8);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  v9 = sub_1000C4B64();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 17))
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    (*(v10 + 104))(v12, enum case for RelayReachabilityContextChatStyle.none(_:), v9);
  }

  else
  {
    v13 = &enum case for RelayReachabilityContextChatStyle.groupChat(_:);
    if (*(a1 + 16) != 43)
    {
      v13 = &enum case for RelayReachabilityContextChatStyle.instantMessage(_:);
    }

    (*(v10 + 104))(v8, *v13, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
  }

  v14 = a1[1];
  v25 = *a1;
  v26 = v12;
  v15 = a1[4];
  v23 = a1[3];
  v24 = v14;
  v16 = a1[6];
  v21 = v5;
  v22 = v15;
  if (v16)
  {

    sub_1000C15E4();
  }

  else
  {
    v17 = sub_1000C1614();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  }

  v19[3] = *(a1 + 88);
  v20 = a1[7];

  sub_1000C44F4();
  return sub_10002ACC0(a1);
}

void sub_100054DBC(NSObject *a3@<X8>)
{
  v120 = a3;
  v3 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v3 - 8);
  v121 = &v116 - v4;
  v135 = sub_1000C5974();
  v130 = *(v135 - 1);
  v5 = __chkstk_darwin(v135);
  v124 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v126 = (&v116 - v8);
  v9 = __chkstk_darwin(v7);
  v133 = (&v116 - v10);
  __chkstk_darwin(v9);
  v128 = &v116 - v11;
  v12 = sub_1000C4504();
  __chkstk_darwin(v12 - 8);
  v125 = (&v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v14 - 8);
  v132 = &v116 - v15;
  v16 = sub_1000C1A94();
  v138 = *(v16 - 8);
  v139 = v16;
  v17 = __chkstk_darwin(v16);
  v122 = (&v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v127 = &v116 - v20;
  v21 = __chkstk_darwin(v19);
  v129 = &v116 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v116 - v24;
  __chkstk_darwin(v23);
  v27 = &v116 - v26;
  v28 = sub_1000C1974();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1000C4FC4();
  v136 = *(v140 - 8);
  v32 = __chkstk_darwin(v140);
  v123 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v131 = &v116 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v116 - v37;
  __chkstk_darwin(v36);
  v137 = &v116 - v39;
  isa = sub_1000C1544().super.isa;
  v41 = [(objc_class *)isa _imOptionallyDecompressData];

  v149 = sub_1000C1564();
  v43 = v42;

  v141 = v43;
  v44 = v43 >> 62;
  if ((v43 >> 62) > 1)
  {
    if (v44 != 2)
    {
      goto LABEL_14;
    }

    v46 = *(v149 + 16);
    v45 = *(v149 + 24);
    v47 = __OFSUB__(v45, v46);
    v48 = v45 - v46;
    if (!v47)
    {
      if (v48 > 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  if (v44)
  {
    if (!__OFSUB__(HIDWORD(v149), v149))
    {
      if (HIDWORD(v149) - v149 > 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      (*(v29 + 104))(v31, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v28);
      sub_1000C1964();
      (*(v29 + 8))(v31, v28);
      v67 = v137;
      sub_1000C4FB4();
      sub_1000C1A64();
      v68 = v136;
      v69 = v140;
      v135 = *(v136 + 16);
      v135(v38, v67, v140);
      v70 = sub_1000C1A84();
      v71 = sub_1000C5554();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v134 = v27;
        v73 = v68;
        v74 = v72;
        v131 = v72;
        v133 = swift_slowAlloc();
        *&v145[0] = v133;
        *v74 = 136446210;
        v75 = v132;
        v135(v132, v38, v69);
        (*(v73 + 56))(v75, 0, 1, v69);
        v130 = sub_1000C4A84();
        v77 = v76;
        sub_100018F90(v75, &qword_1000FC438, &unk_1000C9DC0);
        v78 = *(v73 + 8);
        v78(v38, v140);
        v79 = sub_10008AC30(v130, v77, v145);
        v69 = v140;

        v80 = v131;
        *(v131 + 4) = v79;
        _os_log_impl(&_mh_execute_header, v70, v71, "Message unpacking explosion: %{public}s", v80, 0xCu);
        sub_100015F68(v133);

        (*(v138 + 8))(v134, v139);
      }

      else
      {

        v81 = *(v68 + 8);
        v81(v38, v69);
        v78 = v81;
        (*(v138 + 8))(v27, v139);
      }

      sub_100056010(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v82 = v137;
      v135(v83, v137, v69);
      swift_willThrow();
      sub_100018CD0(v149, v141);
      v78(v82, v69);
      return;
    }

    goto LABEL_30;
  }

  if (!BYTE6(v141))
  {
    goto LABEL_14;
  }

LABEL_8:
  sub_1000C1464();
  swift_allocObject();
  v49 = sub_1000C1454();
  sub_100056058();
  v137 = v49;
  v50 = v134;
  sub_1000C1444();
  if (v50)
  {
    *&v145[0] = v50;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v51 = v128;
    v52 = v135;
    if (swift_dynamicCast())
    {

      v53 = v130;
      v54 = v133;
      (*(v130 + 32))(v133, v51, v52);
      sub_1000C1A64();
      v55 = v126;
      v134 = *(v53 + 16);
      v125 = (v53 + 16);
      (v134)(v126, v54, v52);
      v56 = sub_1000C1A84();
      v57 = sub_1000C5554();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v118 = v58;
        v122 = swift_slowAlloc();
        *&v143 = v122;
        *v58 = 136446210;
        v120 = v56;
        v59 = v126;
        v119 = v57;
        v60 = v121;
        (v134)(v121, v126, v52);
        (*(v53 + 56))(v60, 0, 1, v52);
        v117 = sub_1000C4A84();
        v62 = v61;
        sub_100018F90(v60, &qword_1000FC430, &unk_1000C9B00);
        v128 = *(v53 + 8);
        (v128)(v59, v135);
        v63 = sub_10008AC30(v117, v62, &v143);
        v52 = v135;

        v64 = v118;
        *(v118 + 1) = v63;
        v65 = v120;
        _os_log_impl(&_mh_execute_header, v120, v119, "RelayReachabilityRequestDictionary unpacking error: %{public}s", v64, 0xCu);
        sub_100015F68(v122);
      }

      else
      {

        v128 = *(v53 + 8);
        (v128)(v55, v52);
      }

      v66 = v129;
      v129 = *(v138 + 8);
      (v129)(v66, v139);
      (*(v29 + 104))(v31, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v28);
      sub_1000C1964();
      (*(v29 + 8))(v31, v28);
      (v134)(v124, v133, v52);
      v95 = v131;
      sub_1000C4FA4();
      v96 = v127;
      sub_1000C1A64();
      v97 = v136;
      v98 = v123;
      v99 = v95;
      v100 = v140;
      v134 = *(v136 + 16);
      (v134)(v123, v99, v140);
      v101 = sub_1000C1A84();
      v102 = sub_1000C5554();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v125 = v103;
        v126 = swift_slowAlloc();
        *&v143 = v126;
        *v103 = 136446210;
        v104 = v132;
        (v134)(v132, v98, v100);
        (*(v97 + 56))(v104, 0, 1, v100);
        v124 = sub_1000C4A84();
        v105 = v98;
        v107 = v106;
        sub_100018F90(v104, &qword_1000FC438, &unk_1000C9DC0);
        LODWORD(v132) = v102;
        v108 = *(v97 + 8);
        v108(v105, v100);
        v109 = v108;
        v110 = sub_10008AC30(v124, v107, &v143);

        v111 = v125;
        *(v125 + 1) = v110;
        _os_log_impl(&_mh_execute_header, v101, v132, "RelayReachabilityRequestDictionary unpacking explosion: %{public}s", v111, 0xCu);
        sub_100015F68(v126);

        v112 = v127;
      }

      else
      {

        v113 = *(v97 + 8);
        v113(v98, v100);
        v109 = v113;
        v112 = v96;
      }

      (v129)(v112, v139);
      sub_100056010(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v114 = v131;
      (v134)(v115, v131, v100);
      swift_willThrow();

      sub_100018CD0(v149, v141);
      v109(v114, v100);
      (v128)(v133, v135);
    }

    else
    {

      v87 = v122;
      sub_1000C1A64();
      swift_errorRetain();
      v88 = sub_1000C1A84();
      v89 = sub_1000C5554();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v145[0] = v91;
        *v90 = 136446210;
        *&v143 = v50;
        v92 = sub_1000C4A84();
        v94 = sub_10008AC30(v92, v93, v145);

        *(v90 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v88, v89, "RelayReachabilityRequestDictionary unpacking unknown error: %{public}s", v90, 0xCu);
        sub_100015F68(v91);
      }

      (*(v138 + 8))(v87, v139);
      swift_getErrorValue();
      swift_getDynamicType();
      *&v145[0] = 0;
      *(&v145[0] + 1) = 0xE000000000000000;
      sub_1000C5944(22);

      *&v145[0] = 0xD000000000000014;
      *(&v145[0] + 1) = 0x80000001000D5330;
      v150._countAndFlagsBits = sub_1000C5D34();
      sub_1000C52E4(v150);

      sub_100056010(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      sub_100018CD0(v149, v141);
    }
  }

  else
  {
    v144[3] = v145[4];
    v144[4] = v145[5];
    v144[5] = *v146;
    *(&v144[5] + 15) = *&v146[15];
    v143 = v145[0];
    v144[0] = v145[1];
    v144[1] = v145[2];
    v144[2] = v145[3];
    sub_1000C1A64();
    v84 = sub_1000C1A84();
    v85 = sub_1000C5554();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "Unpacking RelayReachabilityRequestDictionary", v86, 2u);
    }

    (*(v138 + 8))(v25, v139);
    v147[2] = *(&v144[2] + 8);
    v147[3] = *(&v144[3] + 8);
    v148[0] = *(&v144[4] + 8);
    *(v148 + 15) = *(&v144[5] + 7);
    v147[0] = *(v144 + 8);
    v147[1] = *(&v144[1] + 8);

    sub_10002ACF0(v144 + 8, &v142);
    sub_100054A38(v147, v125);
    sub_1000C4514();

    sub_100018CD0(v149, v141);
    sub_10002DFF8(&v143);
  }
}

uint64_t sub_100056010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100056058()
{
  result = qword_1000FD1E0;
  if (!qword_1000FD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1E0);
  }

  return result;
}

void sub_100056104(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v52 = a3;
  v4 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  __chkstk_darwin(v4 - 8);
  v57 = &v49 - v5;
  v53 = sub_1000C22C4();
  v51 = *(v53 - 8);
  v6 = __chkstk_darwin(v53);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v49 - v8;
  v56 = sub_1000C3C74();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_1000C4FC4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000C3CC4();
  v61 = *(v65 - 8);
  v18 = __chkstk_darwin(v65);
  v49 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  v22 = *(a1 + 1);
  sub_1000C3CA4();
  if (v22 == sub_1000C3CB4())
  {
    v54 = v21;
    v23 = v61;
    if (*a1 != 2)
    {
      sub_100014F70();
      v24 = sub_1000C56A4();
      v25 = sub_1000C5554();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 16777472;
        v26[4] = 2;
        _os_log_impl(&_mh_execute_header, v24, v25, "SyndicationAction version greater than known version or lower than the minimum version expected. Unpacking to version %hhu", v26, 5u);
      }
    }

    if ((sub_1000C3C44() & 1) == 0)
    {
      sub_100014F70();
      v27 = sub_1000C56A4();
      v28 = sub_1000C5554();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 16777472;
        v29[4] = 2;
        _os_log_impl(&_mh_execute_header, v27, v28, "SyndicationAction type not valid, defaulting to none %hhu", v29, 5u);
      }

      sub_1000C3C54();
      sub_1000C3C64();
      (*(v55 + 8))(v10, v56);
    }

    v30 = SyndicationActionDictionary.messagePartRange()();
    v31 = *(a1 + 48);
    v32 = *(a1 + 112);
    v63[2] = *(a1 + 96);
    v63[3] = v32;
    v64 = *(a1 + 128);
    v33 = *(a1 + 80);
    v63[0] = *(a1 + 64);
    v63[1] = v33;
    v34 = v57;
    sub_10002D3E8(v58, v57);

    sub_100016020(v63, v62);
    v35 = v59;
    v36 = v60;
    sub_1000AB4E8(v63, v34);
    if (v35)
    {
      (*(v23 + 8))(v54, v65);
    }

    else
    {
      v45 = *(v23 + 16);
      v59 = v30;
      v45(v49, v54, v65);
      v58 = v31;
      v46 = v51;
      v47 = v36;
      v48 = v53;
      (*(v51 + 16))(v50, v47, v53);
      sub_1000C3C94();
      (*(v46 + 8))(v60, v48);
      (*(v61 + 8))(v54, v65);
    }
  }

  else
  {
    sub_1000C4FB4();
    sub_100014F70();
    v37 = sub_1000C5764();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1000C94D0;
    v54 = v17;
    v60 = *(v15 + 16);
    (v60)(v13, v17, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    v39 = sub_1000C4A84();
    v41 = v40;
    sub_100018F90(v13, &qword_1000FC438, &unk_1000C9DC0);
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_100014FBC();
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    v42 = sub_1000C5554();
    sub_1000C1A44("SyndicationAction unpacking explosion: %{public}@", 49, 2, &_mh_execute_header, v37, v42, v38);

    sub_100057DC4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v43 = v54;
    (v60)(v44, v54, v14);
    swift_willThrow();
    (*(v15 + 8))(v43, v14);
    (*(v61 + 8))(v21, v65);
  }
}

uint64_t sub_100056968@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1000C19B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_100057DC4(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();
  if (v4)
  {
  }

  v11 = sub_100056D38();
  v30 = v12;
  v13 = v8;
  v25 = sub_1000570B8(v11, v12);
  v26 = v14;
  sub_100057468(v29);
  sub_100056104(v29, a3, a4);
  sub_100057D70(v29);
  sub_100014F70();
  v24 = a4;
  v15 = sub_1000C5764();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v16 = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000C94D0;
  v27 = sub_1000C3C84();
  v28 = v18;
  v24 = sub_1000C4A84();
  v23 = v19;

  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100014FBC();
  v20 = v23;
  *(v17 + 32) = v24;
  *(v17 + 40) = v20;
  v21 = sub_1000C5554();
  sub_1000C1A44("Successfully unpacked SyndicationAction: %@", 43, 2, &_mh_execute_header, v15, v21, v17);

  sub_100018CD0(v25, v26);
  sub_100018CD0(v11, v30);

  return (*(v16 + 8))(v10, v7);
}

uint64_t sub_100056D38()
{
  v0 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v0 - 8);
  v2 = v20 - v1;
  v3 = sub_1000C4FC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C1984();
  v9 = v7;
  v10 = v8;
  if (v8 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v11 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v11 != 2 || *(v7 + 16) == *(v7 + 24))
    {
      goto LABEL_10;
    }
  }

  else if (v11)
  {
    if (v7 == v7 >> 32)
    {
LABEL_10:
      sub_100018CBC(v7, v8);
LABEL_11:
      sub_1000C4FB4();
      sub_100014F70();
      v21 = v9;
      v12 = sub_1000C5764();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1000C94D0;
      v20[1] = v10;
      v20[0] = *(v4 + 16);
      (v20[0])(v2, v6, v3);
      (*(v4 + 56))(v2, 0, 1, v3);
      v14 = sub_1000C4A84();
      v16 = v15;
      sub_100018F90(v2, &qword_1000FC438, &unk_1000C9DC0);
      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_100014FBC();
      *(v13 + 32) = v14;
      *(v13 + 40) = v16;
      v17 = sub_1000C5554();
      sub_1000C1A44("SyndicationAction decrypting explosion: %{public}@", 50, 2, &_mh_execute_header, v12, v17, v13);

      v9 = v21;

      sub_100057DC4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      (v20[0])(v18, v6, v3);
      swift_willThrow();
      (*(v4 + 8))(v6, v3);
    }
  }

  else if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

  return v9;
}

uint64_t sub_1000570B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_1000C4FC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_1000C1544().super.isa;
  v10 = [(objc_class *)isa _imOptionallyDecompressData];

  v11 = sub_1000C1564();
  v13 = v12;

  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v14)
  {
    if (v11 == v11 >> 32)
    {
LABEL_9:
      sub_1000C4FB4();
      sub_100014F70();
      v15 = sub_1000C5764();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1000C94D0;
      v29 = v13;
      v28 = *(v6 + 16);
      v28(v4, v8, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      v17 = v6;
      v18 = sub_1000C4A84();
      v27 = v8;
      v19 = v11;
      v21 = v20;
      sub_100018F90(v4, &qword_1000FC438, &unk_1000C9DC0);
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_100014FBC();
      *(v16 + 32) = v18;
      *(v16 + 40) = v21;
      v11 = v19;
      v22 = sub_1000C5554();
      sub_1000C1A44("SyndicationAction decrypting explosion: %{public}@", 50, 2, &_mh_execute_header, v15, v22, v16);

      sub_100057DC4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v23 = v27;
      v28(v24, v27, v5);
      v25 = v29;
      swift_willThrow();
      sub_100018CD0(v11, v25);
      (*(v17 + 8))(v23, v5);
    }
  }

  else if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  return v11;
}

void *sub_100057468@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v4 - 8);
  v60 = &v56 - v5;
  v6 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v6 - 8);
  v59 = &v56 - v7;
  v8 = sub_1000C1974();
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1000C4FC4();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v65 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C5974();
  v62 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v64 = &v56 - v17;
  __chkstk_darwin(v16);
  v19 = &v56 - v18;
  sub_100057E0C();
  v20 = v66;
  result = sub_1000C1444();
  if (v20)
  {
    *&v67 = v20;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    if (swift_dynamicCast())
    {

      v22 = v62;
      (*(v62 + 32))(v64, v19, v12);
      v23 = v58;
      (*(v58 + 104))(v10, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v8);
      sub_1000C1964();
      (*(v23 + 8))(v10, v8);
      v24 = v22;
      v25 = *(v22 + 16);
      v26 = v64;
      v25(v15, v64, v12);
      sub_1000C4FA4();
      sub_100014F70();
      v27 = sub_1000C5764();
      v58 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v28 = swift_allocObject();
      v66 = xmmword_1000C94D0;
      *(v28 + 16) = xmmword_1000C94D0;
      v29 = v59;
      v57 = v12;
      v25(v59, v26, v12);
      (*(v24 + 56))(v29, 0, 1, v12);
      v30 = sub_1000C4A84();
      v32 = v31;
      sub_100018F90(v29, &qword_1000FC430, &unk_1000C9B00);
      *(v28 + 56) = &type metadata for String;
      v33 = sub_100014FBC();
      *(v28 + 64) = v33;
      *(v28 + 32) = v30;
      *(v28 + 40) = v32;
      v34 = sub_1000C5554();
      sub_1000C1A44("SyndicationAction unpacking error: %{public}@", 45, 2, &_mh_execute_header, v27, v34, v28);

      v35 = sub_1000C5764();
      v36 = swift_allocObject();
      *(v36 + 16) = v66;
      v37 = v61;
      *&v66 = *(v61 + 16);
      v38 = v60;
      v39 = v63;
      (v66)(v60, v65, v63);
      (*(v37 + 56))(v38, 0, 1, v39);
      v40 = sub_1000C4A84();
      v42 = v41;
      sub_100018F90(v38, &qword_1000FC438, &unk_1000C9DC0);
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = v33;
      *(v36 + 32) = v40;
      *(v36 + 40) = v42;
      v43 = sub_1000C5554();
      sub_1000C1A44("SyndicationAction unpacking explosion: %{public}@", 49, 2, &_mh_execute_header, v35, v43, v36);

      sub_100057DC4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v44 = v65;
      (v66)(v45, v65, v39);
      swift_willThrow();
      (*(v37 + 8))(v44, v39);
      (*(v62 + 8))(v64, v57);
    }

    else
    {

      sub_100014F70();
      v50 = sub_1000C5764();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1000C94D0;
      *&v67 = v20;
      v52 = sub_1000C4A84();
      v54 = v53;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = sub_100014FBC();
      *(v51 + 32) = v52;
      *(v51 + 40) = v54;
      v55 = sub_1000C5554();
      sub_1000C1A44("SyndicationAction unpacking unknown error: %{public}@", 53, 2, &_mh_execute_header, v50, v55, v51);

      swift_getErrorValue();
      swift_getDynamicType();
      *&v67 = 0;
      *(&v67 + 1) = 0xE000000000000000;
      sub_1000C5944(22);

      *&v67 = 0xD000000000000014;
      *(&v67 + 1) = 0x80000001000D5330;
      v76._countAndFlagsBits = sub_1000C5D34();
      sub_1000C52E4(v76);

      sub_100057DC4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
    }
  }

  else
  {
    v46 = v74;
    *(a3 + 96) = v73;
    *(a3 + 112) = v46;
    *(a3 + 128) = v75;
    v47 = v70;
    *(a3 + 32) = v69;
    *(a3 + 48) = v47;
    v48 = v72;
    *(a3 + 64) = v71;
    *(a3 + 80) = v48;
    v49 = v68;
    *a3 = v67;
    *(a3 + 16) = v49;
  }

  return result;
}

uint64_t sub_100057DC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100057E0C()
{
  result = qword_1000FD1F8;
  if (!qword_1000FD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1F8);
  }

  return result;
}

uint64_t sub_100057E60(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FD280, &qword_1000CD338);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10001530C(a1, a1[3]);
  sub_10005B278();
  sub_1000C5D04();
  v8[15] = 0;
  sub_1000C5AF4();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1000C5AF4();
  v8[13] = 2;
  sub_1000C5B84();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100058000(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 110;
  if (v2 != 1)
  {
    v4 = 6580579;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 104;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 110;
  if (*a2 != 1)
  {
    v8 = 6580579;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 104;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000C5C04();
  }

  return v11 & 1;
}

Swift::Int sub_1000580D4()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_100058158(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_1000581C8()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_100058248@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005A550(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100058278(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE100000000000000;
  v5 = 110;
  if (v2 != 1)
  {
    v5 = 6580579;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 104;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000582B8()
{
  v1 = 110;
  if (*v0 != 1)
  {
    v1 = 6580579;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 104;
  }
}

unint64_t sub_1000582F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005A550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005831C(uint64_t a1)
{
  v2 = sub_10005B278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100058358(uint64_t a1)
{
  v2 = sub_10005B278();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100058394@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10005A59C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1000583F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1868985701;
  }

  else
  {
    v3 = 118;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1868985701;
  }

  else
  {
    v5 = 118;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_100058484()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_1000584F4(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_100058550()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

void sub_1000585BC(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F1848;
  v7._object = v3;
  v5 = sub_1000C59F4(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_10005861C(uint64_t *a1@<X8>)
{
  v2 = 118;
  if (*v1)
  {
    v2 = 1868985701;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100058648()
{
  if (*v0)
  {
    return 1868985701;
  }

  else
  {
    return 118;
  }
}

void sub_100058670(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F1848;
  v8._object = a2;
  v6 = sub_1000C59F4(v5, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_1000586D4(uint64_t a1)
{
  v2 = sub_1000588D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100058710(uint64_t a1)
{
  v2 = sub_1000588D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EmergencySOSChatSessionCloseDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD200, &qword_1000CCE50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10001530C(a1, a1[3]);
  sub_1000588D4();
  sub_1000C5D04();
  LOBYTE(v12) = 0;
  sub_1000C5BA4();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v12 = *(v3 + 8);
    v13 = v9;
    v14 = *(v3 + 40);
    v11[15] = 1;
    sub_100058928();
    sub_1000C5BB4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000588D4()
{
  result = qword_1000FD208;
  if (!qword_1000FD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD208);
  }

  return result;
}

unint64_t sub_100058928()
{
  result = qword_1000FD210;
  if (!qword_1000FD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD210);
  }

  return result;
}

double EmergencySOSChatSessionCloseDictionary.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10005A7A0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000589E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 4475235;
  if (v2 != 1)
  {
    v4 = 25444;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 22131;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 4475235;
  if (*a2 != 1)
  {
    v8 = 25444;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 22131;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000C5C04();
  }

  return v11 & 1;
}

Swift::Int sub_100058AB8()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_100058B3C(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_100058BAC()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_100058C2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005A9D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100058C5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE300000000000000;
  v5 = 4475235;
  if (v2 != 1)
  {
    v5 = 25444;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 22131;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100058C9C()
{
  v1 = 4475235;
  if (*v0 != 1)
  {
    v1 = 25444;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 22131;
  }
}

unint64_t sub_100058CD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005A9D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100058D00(uint64_t a1)
{
  v2 = sub_10005A980();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100058D3C(uint64_t a1)
{
  v2 = sub_10005A980();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BusinessChatSessionCloseDictionary.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12[0] = a3;
  v12[1] = a4;
  v7 = sub_1000124CC(&qword_1000FD218, &qword_1000CCE58);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10001530C(a1, a1[3]);
  sub_10005A980();
  sub_1000C5D04();
  v15 = 0;
  sub_1000C5BA4();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = 1;
  sub_1000C5B84();
  v13 = 2;
  sub_1000C5B94();
  return (*(v8 + 8))(v10, v7);
}

uint64_t BusinessChatSessionCloseDictionary.init(from:)(void *a1)
{
  result = sub_10005AA20(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100058F54@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10005AA20(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

void sub_100058FB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v113 = a2;
  v112 = a1;
  v102 = a3;
  v108 = sub_1000C5974();
  v105 = *(v108 - 8);
  v4 = __chkstk_darwin(v108);
  v106 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v104 = &v92 - v7;
  v8 = __chkstk_darwin(v6);
  v107 = &v92 - v9;
  __chkstk_darwin(v8);
  v103 = &v92 - v10;
  v11 = sub_1000C4ED4();
  __chkstk_darwin(v11 - 8);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C1974();
  v110 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000C4FC4();
  v109 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C19B4();
  v111 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  v23 = sub_1000C1454();
  sub_10005B120(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();
  if (v3)
  {
    goto LABEL_2;
  }

  v113 = v20;
  v101 = v23;
  v96 = v13;
  v99 = v16;
  v24 = v14;
  v100 = v19;
  v98 = v17;
  v25 = sub_1000C1984();
  if (v26 >> 60 == 15)
  {
    sub_10005B0CC();
    swift_allocError();
    swift_willThrow();

    (*(v111 + 8))(v22, v113);
    return;
  }

  v93 = 0;
  v94 = v25;
  v95 = v26;
  isa = sub_1000C1544().super.isa;
  v28 = [(objc_class *)isa _imOptionallyDecompressData];

  v112 = sub_1000C1564();
  v30 = v29;

  v97 = v30;
  v31 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    v32 = v100;
    v33 = v110;
    v34 = v99;
    if (v31 != 2)
    {
      goto LABEL_30;
    }

    v36 = *(v112 + 16);
    v35 = *(v112 + 24);
    v37 = __OFSUB__(v35, v36);
    v38 = v35 - v36;
    if (v37)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    if (v38 <= 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v32 = v100;
    v33 = v110;
    v34 = v99;
    if (!v31)
    {
      if (!BYTE6(v97))
      {
        goto LABEL_30;
      }

      goto LABEL_12;
    }

    if (__OFSUB__(HIDWORD(v112), v112))
    {
      goto LABEL_57;
    }

    if (HIDWORD(v112) - v112 <= 0)
    {
LABEL_30:
      (*(v33 + 104))(v34, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v14);
      sub_1000C1964();
      (*(v33 + 8))(v34, v14);
      sub_1000C4FB4();
      sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v60 = v98;
      swift_allocError();
      v61 = v109;
      (*(v109 + 16))(v62, v32, v60);
      swift_willThrow();
      sub_100018CBC(v94, v95);

      sub_100018CD0(v112, v97);
      (*(v61 + 8))(v32, v60);
      (*(v111 + 8))(v22, v113);
      return;
    }
  }

LABEL_12:
  v39 = objc_opt_self();
  v40 = sub_1000C1544().super.isa;
  v115 = 0;
  v41 = [v39 propertyListWithData:v40 options:0 format:0 error:&v115];

  v92 = v22;
  if (!v41)
  {
    v45 = v113;
    v63 = v115;
    sub_1000C1474();

    swift_willThrow();
    v44 = v111;
LABEL_33:
    swift_getErrorValue();
    swift_getDynamicType();
    v115 = 0xD000000000000025;
    v116 = 0x80000001000D6B90;
    v118._countAndFlagsBits = sub_1000C5D34();
    sub_1000C52E4(v118);

    sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CBC(v94, v95);

    sub_100018CD0(v112, v97);
    (*(v44 + 8))(v92, v45);
    return;
  }

  v42 = v115;
  sub_1000C58C4();
  swift_unknownObjectRelease();
  sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
  v43 = swift_dynamicCast();
  v44 = v111;
  v45 = v113;
  if (!v43)
  {
    sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    goto LABEL_33;
  }

  v46 = v114 + 64;
  v47 = 1 << *(v114 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v114 + 64);
  v50 = (v47 + 63) >> 6;
  v51 = v114;

  v52 = 0;
  do
  {
    if (v49)
    {
      goto LABEL_22;
    }

    do
    {
      v53 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v53 >= v50)
      {

        sub_10005B224();
        v64 = v93;
        sub_1000C1444();
        if (v64)
        {
          v115 = v64;
          swift_errorRetain();
          sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
          v65 = v106;
          v66 = v108;
          if (swift_dynamicCast())
          {

            v67 = v105;
            (*(v105 + 32))(v107, v65, v66);
            v68 = v110;
            v69 = v99;
            (*(v110 + 104))(v99, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v24);
            sub_1000C1964();
            (*(v68 + 8))(v69, v24);
            v70 = v107;
            (*(v67 + 16))(v104, v107, v66);
            sub_1000C4FA4();
            sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
            v71 = v98;
            swift_allocError();
            v72 = v109;
            (*(v109 + 16))(v73, v32, v71);
            swift_willThrow();
            sub_100018CBC(v94, v95);

            sub_100018CD0(v112, v97);
            (*(v72 + 8))(v32, v71);
            (*(v67 + 8))(v70, v66);
            goto LABEL_43;
          }

          goto LABEL_50;
        }

        v110 = 0;
        v108 = 0;
        v107 = 0;
        v75 = v115;
        v74 = v116;
        v76 = v117[0];
LABEL_45:
        v86 = v109;
        if (v75 && (v74 || v76 != 0xE000000000000000) && (sub_1000C5C04() & 1) == 0)
        {
          v90 = v92;
          v91 = v110;
          sub_1000C1994();
          if (v91)
          {
            (*(v111 + 8))(v90, v113);
            sub_100018CBC(v94, v95);
            sub_100018CD0(v112, v97);

            return;
          }

          sub_1000C3534();
          (*(v111 + 8))(v92, v113);
          sub_100018CBC(v94, v95);
          sub_100018CD0(v112, v97);
LABEL_2:

          return;
        }

        v87 = v100;
        sub_1000C4FB4();
        sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        v88 = v98;
        swift_allocError();
        (*(v86 + 16))(v89, v87, v88);
        swift_willThrow();
        sub_100018CBC(v94, v95);

        sub_100018CD0(v112, v97);
        (*(v86 + 8))(v87, v88);
LABEL_51:
        (*(v111 + 8))(v92, v113);
        return;
      }

      v49 = *(v46 + 8 * v53);
      ++v52;
    }

    while (!v49);
    v52 = v53;
LABEL_22:
    v54 = __clz(__rbit64(v49)) | (v52 << 6);
    v55 = *(v51 + 48) + 16 * v54;
    v57 = *v55;
    v56 = *(v55 + 8);
    sub_10001D804(*(v51 + 56) + 32 * v54, v117);
    v115 = v57;
    v116 = v56;
    if (v57 == 1868985701 && v56 == 0xE400000000000000)
    {

      sub_10005B168(&v115);
      break;
    }

    v49 &= v49 - 1;
    v59 = sub_1000C5C04();

    sub_10005B168(&v115);
  }

  while ((v59 & 1) == 0);

  sub_10005B1D0();
  v77 = v93;
  sub_1000C1444();
  if (!v77)
  {
    v110 = 0;
    v75 = v115;
    v107 = v116;
    v108 = v117[1];
    v74 = v117[3];
    v76 = v117[4];

    goto LABEL_45;
  }

  v115 = v77;
  swift_errorRetain();
  sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
  v78 = v108;
  if (!swift_dynamicCast())
  {
LABEL_50:

    swift_getErrorValue();
    swift_getDynamicType();
    v115 = 0xD000000000000025;
    v116 = 0x80000001000D6B90;
    v119._countAndFlagsBits = sub_1000C5D34();
    sub_1000C52E4(v119);

    sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CBC(v94, v95);

    sub_100018CD0(v112, v97);
    goto LABEL_51;
  }

  v79 = v105;
  v80 = v107;
  (*(v105 + 32))();
  v81 = v110;
  v82 = v99;
  (*(v110 + 104))(v99, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v24);
  sub_1000C1964();
  (*(v81 + 8))(v82, v24);
  (*(v79 + 16))(v104, v80, v78);
  sub_1000C4FA4();
  sub_10005B120(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  v83 = v98;
  swift_allocError();
  v84 = v109;
  (*(v109 + 16))(v85, v32, v83);
  swift_willThrow();
  sub_100018CBC(v94, v95);

  sub_100018CD0(v112, v97);
  (*(v84 + 8))(v32, v83);
  (*(v79 + 8))(v80, v78);
LABEL_43:
  (*(v111 + 8))(v92, v113);
}

unint64_t sub_10005A550(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F17E0;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005A59C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD290, &qword_1000CD340);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10001530C(a1, a1[3]);
  sub_10005B278();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v25 = 0;
  v9 = sub_1000C5A04();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v12 = sub_1000C5A04();
  v14 = v13;
  v21 = v12;
  v23 = 2;
  v15 = sub_1000C5A94();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_100015F68(a1);
  v20 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

uint64_t sub_10005A7A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD2A0, &unk_1000CD350);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10001530C(a1, a1[3]);
  sub_1000588D4();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  LOBYTE(v16) = 0;
  v9 = sub_1000C5AB4();
  v20 = 1;
  sub_10005B2CC();
  sub_1000C5AC4();
  (*(v6 + 8))(v8, v5);
  v10 = v18;
  v11 = v19;
  v14 = v17;
  v15 = v16;
  result = sub_100015F68(a1);
  *a2 = v9;
  v13 = v15;
  *(a2 + 24) = v14;
  *(a2 + 8) = v13;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  return result;
}

unint64_t sub_10005A980()
{
  result = qword_1000FD220;
  if (!qword_1000FD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD220);
  }

  return result;
}

unint64_t sub_10005A9D4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1898;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10005AA20(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FD298, &qword_1000CD348);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_10001530C(a1, v7);
  sub_10005A980();
  sub_1000C5CF4();
  if (!v1)
  {
    v12 = 0;
    v7 = sub_1000C5AB4();
    v11 = 1;
    sub_1000C5A94();
    v10 = 2;
    sub_1000C5AA4();
    (*(v4 + 8))(v6, v3);
  }

  sub_100015F68(a1);
  return v7;
}

__n128 sub_10005AC28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10005AC44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005AC8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10005ACE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10005ACFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}