void sub_1000E3124(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v35 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v33 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  v38 = *(a2 + 96);
  v36 = *(a2 + 89);
  v37 = *(a2 + 104);
  v32 = *(a2 + 112);
  v31 = *(a2 + 120);
  v13 = [objc_allocWithZone(DIAttributeImageCaptureRequirements) init];
  v14 = v13;
  if (*(v4 + 16))
  {
    v15 = *(v4 + 32);
  }

  else
  {
    v15 = 1;
  }

  [v13 setSelection:v15];
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  [v14 setMinHeight:v8];
  if (v9 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v14 setMinWidth:v9];
  if (v7 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v14 setPreferredHeight:v7];
  if (v6 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v14 setPreferredWidth:v6];
  if (v12)
  {
    v11 = 1.0;
  }

  v16 = [objc_allocWithZone(NSNumber) initWithDouble:v11];
  [v14 setMaximumCompressionRatio:v16];

  if (v33)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = v10;
  }

  v18 = [objc_allocWithZone(NSNumber) initWithDouble:v17];
  [v14 setCompressionRatio:v18];

  sub_100007224(&qword_100839C38, &qword_1006DFBA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006BF520;
  v20 = &DIAttributeImageEncodingJPEG;
  v21 = &DIAttributeImageEncodingPNG;
  if (v5 != 2)
  {
    v21 = &DIAttributeImageEncodingUnknown;
  }

  if (v5 != 1)
  {
    v20 = v21;
  }

  v22 = *v20;
  *(v19 + 32) = *v20;
  type metadata accessor for DIAttributeImageEncoding(0);
  v23 = v22;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setSupportedEncoding:isa];

  if (a3)
  {
    v25 = v38;
    v27 = v36;
    v26 = v37;
    if (*(a3 + 16))
    {
      sub_10003ADCC(v35, v3);
    }
  }

  else
  {
    v25 = v38;
    v27 = v36;
    v26 = v37;
  }

  v8 = String._bridgeToObjectiveC()();

  [v14 setUserMessage:v8];

  [v14 setLiveliness:v27 & 1];
  if (v26)
  {
    v28 = 0x7FFFFFFFLL;
  }

  else
  {
    v28 = v25;
  }

  if (v28 < 0)
  {
    goto LABEL_35;
  }

  [v14 setTimeout:?];
  if (v31)
  {
    v29 = 0;
  }

  else
  {
    v29 = v32;
  }

  if (v29 < 0)
  {
    goto LABEL_36;
  }

  [v14 setMaxRetakeCount:?];
  v8 = v14;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_37:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_1000E34D0(__int128 *a1, const void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v144 = a3;
  v140 = a5;
  v141 = a6;
  v142 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CharacterSet();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v143 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v151 = a1[2];
  v152 = v15;
  v16 = a1[5];
  v153 = a1[4];
  v154 = v16;
  v17 = a1[1];
  v149 = *a1;
  v150 = v17;
  memcpy(v148, a2, sizeof(v148));
  if (sub_1000A257C(v148) != 1)
  {
    v18 = v148[57];
    if (v148[57])
    {
      if (*(v148[57] + 16))
      {
        v19 = sub_10003ADCC(v149, *(&v149 + 1));
        if (v20)
        {
          v21 = *(v18 + 56) + 152 * v19;
          v22 = *(v21 + 16);
          v137 = *(v21 + 8);
          v23 = objc_allocWithZone(DIAttributeDocumentScanRequirements);
          v138 = v22;

          v24 = [v23 init];
          v25 = String._bridgeToObjectiveC()();
          [v24 setType:v25];

          v26 = [v24 type];
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v139 = v12;
          if (v27 == v30 && v29 == v31)
          {
          }

          else
          {
            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v36 & 1) == 0)
            {
              v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v63 = v62;
              v38 = v13;
              if (v61 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v63 == v64)
              {
              }

              else
              {
                v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v68 & 1) == 0)
                {
                  v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v126 = v125;
                  if (v124 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v126 == v127)
                  {

                    v37 = 4;
                  }

                  else
                  {
                    v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v128 & 1) == 0)
                    {
LABEL_15:
                      v39 = v24;
                      v40 = String._bridgeToObjectiveC()();

                      v144 = v39;
                      [v39 setUserMessage:v40];

                      v41 = *(&v151 + 1);
                      v135 = v152;
                      v136 = v151;
                      v134 = *(&v152 + 1);
                      v42 = *(&v153 + 1);
                      v132 = v154;
                      v133 = v153;
                      v147[0] = v150;

                      v43 = v143;
                      static CharacterSet.whitespaces.getter();
                      sub_10001F298();
                      v44 = StringProtocol.trimmingCharacters(in:)();
                      v46 = v45;
                      v47 = *(v38 + 8);
                      v137 = v38 + 8;
                      v138 = v47;
                      v47(v43, v139);

                      *&v147[0] = v44;
                      *(&v147[0] + 1) = v46;
                      v145 = 120;
                      v146 = 0xE100000000000000;
                      v48 = StringProtocol.components<A>(separatedBy:)();

                      if (v48[2] < 2uLL)
                      {

                        v60 = v144;
                        goto LABEL_91;
                      }

                      v49 = v48[4];
                      v50 = v48[5];
                      v51 = HIBYTE(v50) & 0xF;
                      v52 = v49 & 0xFFFFFFFFFFFFLL;
                      if ((v50 & 0x2000000000000000) != 0)
                      {
                        v53 = HIBYTE(v50) & 0xF;
                      }

                      else
                      {
                        v53 = v49 & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v53)
                      {
LABEL_85:
                        v56 = 1280;
                        while (1)
                        {
LABEL_86:
                          v60 = v144;
                          [v144 setMinHeight:v56];
                          if (v48[2] < 2uLL)
                          {
                            __break(1u);
                          }

                          else
                          {
                            v80 = v48[6];
                            v81 = v48[7];

                            v82 = sub_1000FAB98(v80, v81);
                            if (v83)
                            {
                              v84 = 720;
                            }

                            else
                            {
                              v84 = v82;
                            }

                            [v60 setMinWidth:v84];
LABEL_91:
                            *&v147[0] = v136;
                            *(&v147[0] + 1) = v41;

                            static CharacterSet.whitespaces.getter();
                            v85 = StringProtocol.trimmingCharacters(in:)();
                            v87 = v86;
                            v138(v43, v139);

                            *&v147[0] = v85;
                            *(&v147[0] + 1) = v87;
                            v145 = 120;
                            v146 = 0xE100000000000000;
                            v48 = StringProtocol.components<A>(separatedBy:)();

                            if (v48[2] < 2uLL)
                            {

                              goto LABEL_101;
                            }

                            v49 = v48[4];
                            v50 = v48[5];

                            v88 = sub_1000FAB98(v49, v50);
                            if (v89)
                            {
                              v90 = 1920;
                            }

                            else
                            {
                              v90 = v88;
                            }

                            [v60 setPreferredHeight:v90];
                            if (v48[2] >= 2uLL)
                            {
                              v91 = v48[6];
                              v92 = v48[7];

                              v93 = sub_1000FAB98(v91, v92);
                              if (v94)
                              {
                                v95 = 1080;
                              }

                              else
                              {
                                v95 = v93;
                              }

                              [v60 setPreferredWidth:v95];
LABEL_101:
                              *&v147[0] = v135;
                              *(&v147[0] + 1) = v134;

                              static CharacterSet.whitespaces.getter();
                              v96 = StringProtocol.trimmingCharacters(in:)();
                              v98 = v97;
                              v138(v43, v139);

                              *&v147[0] = v96;
                              *(&v147[0] + 1) = v98;
                              v145 = 58;
                              v146 = 0xE100000000000000;
                              v99 = StringProtocol.components<A>(separatedBy:)();

                              if (v99[2] < 2uLL)
                              {

                                goto LABEL_111;
                              }

                              v100 = v99[4];
                              v101 = v99[5];

                              v102 = sub_1000FAB98(v100, v101);
                              if (v103)
                              {
                                v104 = 4;
                              }

                              else
                              {
                                v104 = v102;
                              }

                              [v60 setRatioHeight:v104];
                              if (v99[2] < 2uLL)
                              {
                                __break(1u);
                              }

                              else
                              {
                                v105 = v99[6];
                                v106 = v99[7];

                                v107 = sub_1000FAB98(v105, v106);
                                if (v108)
                                {
                                  v109 = 3;
                                }

                                else
                                {
                                  v109 = v107;
                                }

                                [v60 setRatioWidth:v109];
LABEL_111:
                                v110 = [objc_allocWithZone(NSNumber) initWithDouble:v42];
                                [v60 setMaximumCompressionRatio:v110];

                                [v60 setMinBorderPadding:v132];
                                type metadata accessor for DIAttributeImageEncoding(0);
                                isa = Array._bridgeToObjectiveC()().super.isa;
                                [v60 setSupportedEncoding:isa];

                                v112 = *(v133 + 16);
                                if (v112)
                                {
                                  v113 = v133 + 40;
                                  do
                                  {
                                    String.lowercased()();
                                    v114 = String._bridgeToObjectiveC()();

                                    v115 = [v60 supportedEncoding];
                                    v116 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      v116 = sub_1003C54BC(0, v116[2] + 1, 1, v116);
                                    }

                                    v118 = v116[2];
                                    v117 = v116[3];
                                    if (v118 >= v117 >> 1)
                                    {
                                      v116 = sub_1003C54BC((v117 > 1), v118 + 1, 1, v116);
                                    }

                                    v116[2] = v118 + 1;
                                    v116[v118 + 4] = v114;
                                    v119 = Array._bridgeToObjectiveC()().super.isa;

                                    v60 = v144;
                                    [v144 setSupportedEncoding:v119];

                                    v113 += 16;
                                    --v112;
                                  }

                                  while (v112);
                                }

                                v120 = *(&v154 + 1);
                                if (*(&v154 + 1))
                                {
                                  v121 = v60;
                                  sub_1000E49B4(v120, v121, v142);

                                  return;
                                }

                                v122 = String._bridgeToObjectiveC()();
                                [v60 setCountryCode:v122];

                                v101 = v60;
                                v123 = v142;
                                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                                if (*((*v123 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                                {
LABEL_121:
                                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                                  return;
                                }
                              }

                              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                              goto LABEL_121;
                            }
                          }

                          __break(1u);
LABEL_129:

                          v56 = sub_1000FFDD8(v49, v50, 10);
                          v130 = v129;

                          if (v130)
                          {
                            goto LABEL_85;
                          }
                        }
                      }

                      if ((v50 & 0x1000000000000000) != 0)
                      {
                        goto LABEL_129;
                      }

                      if ((v50 & 0x2000000000000000) != 0)
                      {
                        *&v147[0] = v48[4];
                        *(&v147[0] + 1) = v50 & 0xFFFFFFFFFFFFFFLL;
                        if (v49 == 43)
                        {
                          if (v51)
                          {
                            if (--v51)
                            {
                              v56 = 0;
                              v72 = v147 + 1;
                              while (1)
                              {
                                v73 = *v72 - 48;
                                if (v73 > 9)
                                {
                                  break;
                                }

                                v74 = 10 * v56;
                                if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                                {
                                  break;
                                }

                                v56 = v74 + v73;
                                if (__OFADD__(v74, v73))
                                {
                                  break;
                                }

                                ++v72;
                                if (!--v51)
                                {
                                  goto LABEL_84;
                                }
                              }
                            }

                            goto LABEL_83;
                          }

                          goto LABEL_137;
                        }

                        if (v49 != 45)
                        {
                          if (v51)
                          {
                            v56 = 0;
                            v77 = v147;
                            while (1)
                            {
                              v78 = *v77 - 48;
                              if (v78 > 9)
                              {
                                break;
                              }

                              v79 = 10 * v56;
                              if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                              {
                                break;
                              }

                              v56 = v79 + v78;
                              if (__OFADD__(v79, v78))
                              {
                                break;
                              }

                              ++v77;
                              if (!--v51)
                              {
                                goto LABEL_84;
                              }
                            }
                          }

                          goto LABEL_83;
                        }

                        if (v51)
                        {
                          if (--v51)
                          {
                            v56 = 0;
                            v65 = v147 + 1;
                            while (1)
                            {
                              v66 = *v65 - 48;
                              if (v66 > 9)
                              {
                                break;
                              }

                              v67 = 10 * v56;
                              if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                              {
                                break;
                              }

                              v56 = v67 - v66;
                              if (__OFSUB__(v67, v66))
                              {
                                break;
                              }

                              ++v65;
                              if (!--v51)
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
                        if ((v49 & 0x1000000000000000) != 0)
                        {
                          v54 = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
                        }

                        else
                        {
                          v54 = _StringObject.sharedUTF8.getter();
                        }

                        v55 = *v54;
                        if (v55 == 43)
                        {
                          if (v52 >= 1)
                          {
                            v51 = v52 - 1;
                            if (v52 != 1)
                            {
                              v56 = 0;
                              if (v54)
                              {
                                v69 = v54 + 1;
                                while (1)
                                {
                                  v70 = *v69 - 48;
                                  if (v70 > 9)
                                  {
                                    goto LABEL_83;
                                  }

                                  v71 = 10 * v56;
                                  if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                                  {
                                    goto LABEL_83;
                                  }

                                  v56 = v71 + v70;
                                  if (__OFADD__(v71, v70))
                                  {
                                    goto LABEL_83;
                                  }

                                  ++v69;
                                  if (!--v51)
                                  {
                                    goto LABEL_84;
                                  }
                                }
                              }

                              goto LABEL_75;
                            }

                            goto LABEL_83;
                          }

                          goto LABEL_136;
                        }

                        if (v55 != 45)
                        {
                          if (v52)
                          {
                            v56 = 0;
                            if (v54)
                            {
                              while (1)
                              {
                                v75 = *v54 - 48;
                                if (v75 > 9)
                                {
                                  goto LABEL_83;
                                }

                                v76 = 10 * v56;
                                if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                                {
                                  goto LABEL_83;
                                }

                                v56 = v76 + v75;
                                if (__OFADD__(v76, v75))
                                {
                                  goto LABEL_83;
                                }

                                ++v54;
                                if (!--v52)
                                {
                                  goto LABEL_75;
                                }
                              }
                            }

                            goto LABEL_75;
                          }

LABEL_83:
                          v56 = 0;
                          LOBYTE(v51) = 1;
LABEL_84:
                          LOBYTE(v145) = v51;
                          if ((v51 & 1) == 0)
                          {
                            goto LABEL_86;
                          }

                          goto LABEL_85;
                        }

                        if (v52 >= 1)
                        {
                          v51 = v52 - 1;
                          if (v52 != 1)
                          {
                            v56 = 0;
                            if (v54)
                            {
                              v57 = v54 + 1;
                              while (1)
                              {
                                v58 = *v57 - 48;
                                if (v58 > 9)
                                {
                                  goto LABEL_83;
                                }

                                v59 = 10 * v56;
                                if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                                {
                                  goto LABEL_83;
                                }

                                v56 = v59 - v58;
                                if (__OFSUB__(v59, v58))
                                {
                                  goto LABEL_83;
                                }

                                ++v57;
                                if (!--v51)
                                {
                                  goto LABEL_84;
                                }
                              }
                            }

LABEL_75:
                            LOBYTE(v51) = 0;
                            goto LABEL_84;
                          }

                          goto LABEL_83;
                        }

                        __break(1u);
                      }

                      __break(1u);
LABEL_136:
                      __break(1u);
LABEL_137:
                      __break(1u);
                      return;
                    }

                    v37 = 4;
                  }

LABEL_14:
                  *v144 |= v37;
                  goto LABEL_15;
                }
              }

              v37 = 8;
              goto LABEL_14;
            }
          }

          v37 = 2;
          v38 = v13;
          goto LABEL_14;
        }
      }
    }
  }

  defaultLogger()();
  sub_1000F2868(&v149, v147);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  sub_1000F28A0(&v149);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v147[0] = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_100141FE4(v149, *(&v149 + 1), v147);
    _os_log_impl(&_mh_execute_header, v32, v33, "no configuration found for attribute type %{public}s", v34, 0xCu);
    sub_10000BB78(v35);
  }

  (*(v9 + 8))(v11, v8);
}

id sub_1000E4298()
{
  v1 = v0;
  v2 = [v0 attributes];
  sub_10001F8D4(0, &unk_1008399D0, DIAttribute_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v1 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 holdLocally])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v5;
      if (v1 == i)
      {
        v1 = v15;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v8 = [v1 title];
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = [v1 subTitle];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [v1 page];
  v11 = objc_allocWithZone(DIPage);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithAttributes:isa title:v8 subTitle:v9 page:v10];

  return v13;
}

void (*sub_1000E4510(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
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
  v7[8] = sub_1000E4828(v7);
  v7[9] = sub_1000E461C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1000E45BC;
}

void sub_1000E45BC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1000E461C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10003ADCC(a2, a3);
  *(v11 + 40) = v14 & 1;
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
      sub_10017057C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100167CCC(v18, a4 & 1);
    v13 = sub_10003ADCC(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1000E4774;
}

void sub_1000E4774(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    if ((*a1)[5])
    {
      *(*(*v1[3] + 56) + 8 * v1[4]) = v2;
    }

    else
    {
      sub_1001751D4();
    }
  }

  else if ((*a1)[5])
  {
    v3 = v1[4];
    v4 = *v1[3];
    sub_10004D860(*(v4 + 48) + 16 * v3);
    sub_10015D658(v3, v4);
  }

  free(v1);
}

uint64_t (*sub_1000E4828(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1000E4850;
}

uint64_t sub_1000E485C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = result + 32;
    do
    {
      v6 = *(v5 + 112);
      v22 = *(v5 + 96);
      v23 = v6;
      v24 = *(v5 + 128);
      v25 = *(v5 + 144);
      v7 = *(v5 + 48);
      v20[2] = *(v5 + 32);
      v20[3] = v7;
      v8 = *(v5 + 80);
      v20[4] = *(v5 + 64);
      v21 = v8;
      v9 = *(v5 + 16);
      v20[0] = *v5;
      v20[1] = v9;
      v10 = v20[0];
      v11 = *(&v22 + 1);
      if (*(&v22 + 1))
      {
        v12 = v22;
      }

      else
      {
        v11 = *(&v21 + 1);
        if (!*(&v21 + 1))
        {
          sub_1000F059C(v20, v18);
          v13 = a3;
          v14 = v26;
          goto LABEL_9;
        }

        v12 = v21;
      }

      sub_1000F059C(v20, v18);
      v13 = v12;
      v14 = v11;
LABEL_9:
      v15 = sub_1000C5670(v18, v13, v14);
      if (*v16)
      {

        sub_100151120(&v19, v10, *(&v10 + 1));
      }

      (v15)(v18, 0);
      result = sub_1000F05D4(v20);
      v5 += 152;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1000E49B4(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = a1 + 40;
    do
    {

      [a2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10001F8D4(0, &qword_10084A2B0, DIAttributeDocumentScanRequirements_ptr);
      if (swift_dynamicCast())
      {
        v7 = String._bridgeToObjectiveC()();
        [v9 setCountryCode:v7];

        v8 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
      }

      v6 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1000E4B24(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; i += 10)
    {
      v10 = i[7];
      v11 = i[5];
      v45 = i[6];
      v46 = v10;
      v12 = i[7];
      v13 = i[9];
      v47 = i[8];
      v48 = v13;
      v14 = i[3];
      v15 = i[1];
      v41 = i[2];
      v42 = v14;
      v16 = i[3];
      v17 = i[5];
      v43 = i[4];
      v44 = v17;
      v18 = i[1];
      v40[0] = *i;
      v40[1] = v18;
      v36 = v45;
      v37 = v12;
      v19 = i[9];
      v38 = v47;
      v39 = v19;
      v32 = v41;
      v33 = v16;
      v34 = v43;
      v35 = v11;
      v30 = v40[0];
      v31 = v15;
      sub_1000F27AC(v40, &v20);
      sub_1000E00C0(&v30, a2, a3, a4);
      if (v4)
      {
        break;
      }

      v26 = v36;
      v27 = v37;
      v28 = v38;
      v29 = v39;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      v25 = v35;
      v20 = v30;
      v21 = v31;
      result = sub_1000F27E4(&v20);
      if (!--v5)
      {
        return result;
      }
    }

    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v20 = v30;
    v21 = v31;
    return sub_1000F27E4(&v20);
  }

  return result;
}

uint64_t sub_1000E4C70(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  sub_1000F09E4(v9);
  memcpy((v1 + 32), v9, 0x2181uLL);
  *(v1 + 8680) = 0u;
  *(v1 + 8696) = 0u;
  *(v1 + 8705) = 0u;
  *(v1 + 8728) = sub_10003E3EC(_swiftEmptyArrayStorage);
  *(v1 + 8736) = _swiftEmptyArrayStorage;
  *(v1 + 8744) = sub_10003E400(_swiftEmptyArrayStorage);
  *(v1 + 8752) = sub_10003E400(_swiftEmptyArrayStorage);
  *(v1 + 16) = v7;
  *(v1 + 24) = v6;
  memcpy(v10, (v1 + 32), 0x2181uLL);
  memcpy((v1 + 32), v9, 0x2181uLL);

  sub_10000BE18(v10, &qword_100839990, &unk_1006C19E0);
  *(v1 + 8616) = 0;
  *(v1 + 8624) = 0u;
  *(v1 + 8656) = 0u;
  *(v1 + 8640) = _swiftEmptyArrayStorage;
  *(v1 + 8648) = _swiftEmptyArrayStorage;
  *(v1 + 8672) = v4 & 1;
  return v1;
}

uint64_t sub_1000E4DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[268] = a6;
  v6[267] = a5;
  v6[266] = a4;
  v6[265] = a3;
  v6[264] = a2;
  v6[263] = a1;
  v7 = type metadata accessor for DIPError.Code();
  v6[269] = v7;
  v6[270] = *(v7 - 8);
  v6[271] = swift_task_alloc();

  return _swift_task_switch(sub_1000E4E78, 0, 0);
}

uint64_t sub_1000E4E78()
{
  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 2176) = v1;
  *v1 = v0;
  v1[1] = sub_1000E4F58;
  v2 = *(v0 + 2136);

  return sub_1005B0A4C(v0 + 992, 0, 0, v2, 1, 0);
}

uint64_t sub_1000E4F58()
{

  return _swift_task_switch(sub_1000E5054, 0, 0);
}

uint64_t sub_1000E5054()
{
  memcpy((v0 + 504), (v0 + 992), 0x1E8uLL);
  if (sub_1000A257C(v0 + 504) == 1)
  {
    (*(*(v0 + 2160) + 104))(*(v0 + 2168), enum case for DIPError.Code.unexpectedDaemonState(_:), *(v0 + 2152));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v1 = *(v0 + 8);

    return v1();
  }

  v3 = v0 + 2088;
  memcpy((v0 + 16), (v0 + 504), 0x1E8uLL);
  *(v0 + 2088) = 0;
  if (qword_100832CC0 != -1)
  {
LABEL_28:
    swift_once();
  }

  v4 = *(v0 + 2104);
  v5 = qword_1008823E0;
  v62 = v3;
  sub_100592174(0, v5, v3);

  v6 = sub_10003E414(_swiftEmptyArrayStorage);
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = (v0 + 1480);
    v3 = *(v0 + 2104) + 32;
    while (1)
    {
      v24 = *(v3 + 16);
      *v8 = *v3;
      *(v0 + 1496) = v24;
      v25 = *(v3 + 32);
      v26 = *(v3 + 48);
      v27 = *(v3 + 80);
      *(v0 + 1544) = *(v3 + 64);
      *(v0 + 1560) = v27;
      *(v0 + 1512) = v25;
      *(v0 + 1528) = v26;
      v28 = *(v3 + 96);
      v29 = *(v3 + 112);
      v30 = *(v3 + 128);
      *(v0 + 1624) = *(v3 + 144);
      *(v0 + 1592) = v29;
      *(v0 + 1608) = v30;
      *(v0 + 1576) = v28;
      v31 = *(v0 + 1480);
      v32 = *(v0 + 1488);
      sub_1000F059C(v0 + 1480, v0 + 1632);
      sub_1000F059C(v0 + 1480, v0 + 1784);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = sub_10003ADCC(v31, v32);
      v36 = v6[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v40 = v35;
      if (v6[3] < v39)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v53 = v34;
      sub_100170388();
      v34 = v53;
      if (v40)
      {
LABEL_8:
        v9 = v6[7] + 152 * v34;
        v10 = *(v9 + 16);
        *(v0 + 1936) = *v9;
        *(v0 + 1952) = v10;
        v11 = *(v9 + 80);
        v13 = *(v9 + 32);
        v12 = *(v9 + 48);
        *(v0 + 2000) = *(v9 + 64);
        *(v0 + 2016) = v11;
        *(v0 + 1968) = v13;
        *(v0 + 1984) = v12;
        v15 = *(v9 + 112);
        v14 = *(v9 + 128);
        v16 = *(v9 + 96);
        *(v0 + 2080) = *(v9 + 144);
        *(v0 + 2048) = v15;
        *(v0 + 2064) = v14;
        *(v0 + 2032) = v16;
        v17 = *(v0 + 1496);
        *v9 = *v8;
        *(v9 + 16) = v17;
        v18 = *(v0 + 1512);
        v19 = *(v0 + 1528);
        v20 = *(v0 + 1560);
        *(v9 + 64) = *(v0 + 1544);
        *(v9 + 80) = v20;
        *(v9 + 32) = v18;
        *(v9 + 48) = v19;
        v21 = *(v0 + 1576);
        v22 = *(v0 + 1592);
        v23 = *(v0 + 1608);
        *(v9 + 144) = *(v0 + 1624);
        *(v9 + 112) = v22;
        *(v9 + 128) = v23;
        *(v9 + 96) = v21;
        sub_1000F05D4(v0 + 1936);
        sub_1000F05D4(v0 + 1480);
        goto LABEL_9;
      }

LABEL_16:
      v6[(v34 >> 6) + 8] |= 1 << v34;
      v42 = (v6[6] + 16 * v34);
      *v42 = v31;
      v42[1] = v32;
      v43 = v6[7] + 152 * v34;
      v44 = *(v0 + 1624);
      v46 = *(v0 + 1592);
      v45 = *(v0 + 1608);
      *(v43 + 96) = *(v0 + 1576);
      *(v43 + 112) = v46;
      *(v43 + 128) = v45;
      *(v43 + 144) = v44;
      v48 = *(v0 + 1544);
      v47 = *(v0 + 1560);
      v49 = *(v0 + 1528);
      *(v43 + 32) = *(v0 + 1512);
      *(v43 + 48) = v49;
      *(v43 + 64) = v48;
      *(v43 + 80) = v47;
      v50 = *(v0 + 1496);
      *v43 = *v8;
      *(v43 + 16) = v50;

      sub_1000F05D4(v0 + 1480);
      v51 = v6[2];
      v38 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v38)
      {
        goto LABEL_27;
      }

      v6[2] = v52;
LABEL_9:
      v3 += 152;
      if (!--v7)
      {
        goto LABEL_20;
      }
    }

    sub_1001678C8(v39, isUniquelyReferenced_nonNull_native);
    v34 = sub_10003ADCC(v31, v32);
    if ((v40 & 1) != (v41 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_15:
    if (v40)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_20:
  *(v0 + 2184) = v6;
  v54 = *(v0 + 2144);
  v55 = *(v0 + 2120);
  *(v0 + 2096) = *(v0 + 2112);
  v56 = swift_task_alloc();
  *(v0 + 2192) = v56;
  v57 = *(v0 + 2128);
  *(v56 + 16) = v6;
  *(v56 + 24) = v55;
  *(v56 + 32) = v57;
  *(v56 + 48) = v54;
  *(v56 + 56) = v0 + 16;
  *(v56 + 64) = v62;
  v58 = swift_task_alloc();
  *(v0 + 2200) = v58;
  v59 = sub_100007224(&unk_100839A40, &qword_1006C1B50);
  v60 = sub_10001F8D4(0, &qword_100839BC8, DIPage_ptr);
  v61 = sub_1000BA30C(&unk_100839BD0, &unk_100839A40, &qword_1006C1B50, &protocol conformance descriptor for [A]);
  *v58 = v0;
  v58[1] = sub_1000E562C;

  return Sequence.asyncMap<A>(_:)(&unk_1006D49C8, v56, v59, v60, v61);
}

uint64_t sub_1000E562C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2208) = v1;

  if (v1)
  {
    v5 = sub_1000E57F0;
  }

  else
  {

    *(v4 + 2216) = a1;
    sub_10000BE18(v4 + 992, &qword_100839998, &qword_1006DCAA0);

    v5 = sub_1000E577C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E577C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 2216);

  return v1(v2);
}

uint64_t sub_1000E57F0()
{

  sub_10000BE18(v0 + 992, &qword_100839998, &qword_1006DCAA0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E5888(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 112))
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {

      type metadata accessor for LegacySPWorkflow(0);
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = &OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_recipientCertificates;
LABEL_8:
        v7 = *(v5 + *v6);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  type metadata accessor for LegacyINOWorkflow(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = &OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_recipientCertificates;
    goto LABEL_8;
  }

LABEL_9:
  v7 = 0;
LABEL_10:
  v8 = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate + 8);
  if (v8)
  {
    if (v7)
    {
      v9 = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate);
      sub_1000C5744(v7, a2);

      v10 = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);

      sub_1000E485C(v10, a2, v9, v8);
    }
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a2;
  sub_10016D3A8(&_swiftEmptySetSingleton, 0x746C7561666564, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  *a2 = v13;
  return sub_1000C5978(*(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields));
}

uint64_t sub_1000E5A54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616353746E6F7266 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6163536B636162 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xED0000746E6F7246 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC0000006B636142 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6569666C6573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7373656E6576696CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65766973736170 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FF320 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461726F6C707865 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6953726566667562 && a2 == 0xEA0000000000657ALL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6957656C62617473 && a2 == 0xEC000000776F646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x72466E6163536469 && a2 == 0xEF65746152656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6172466F65646976 && a2 == 0xEE0065746152656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x547463655278616DLL && a2 == 0xED00006C65766172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FF340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEF74756F656D6954)
  {

    return 17;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

void *sub_1000E6014(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = sub_100007224(&qword_100839940, &qword_1006D48B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = v2[3];
  v118 = v2;
  sub_10000BA08(v2, v9);
  sub_1000F08B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000BB78(v118);
  }

  v48 = v6;
  LOBYTE(v51[0]) = 0;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = v10;
  v88[1055] = 1;
  v11 = sub_1000F0904();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(v117, v89, sizeof(v117));
  v87[1055] = 2;
  v45 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v116[5], v88, 0x41BuLL);
  v86[1055] = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v115[5], v87, 0x41BuLL);
  v85[1055] = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v114[5], v86, 0x41BuLL);
  v84[1055] = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v113[5], v85, 0x41BuLL);
  v83[1055] = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v112[5], v84, 0x41BuLL);
  v82[1055] = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v42 = v4;
  v43 = v11;
  memcpy(&v111[5], v83, 0x41BuLL);
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  LOBYTE(v50[0]) = 8;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = v51[0];
  LOBYTE(v51[0]) = 9;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v108 = BYTE4(v12) & 1;
  LOBYTE(v51[0]) = 10;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v105 = v14 & 1;
  LOBYTE(v51[0]) = 11;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v103 = v15 & 1;
  LOBYTE(v51[0]) = 12;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v101 = v16 & 1;
  LOBYTE(v51[0]) = 13;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v99 = v17 & 1;
  LOBYTE(v51[0]) = 14;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v96 = BYTE4(v45) & 1;
  v81 = 15;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  memcpy(&v95[7], v82, 0x41BuLL);
  LOBYTE(v51[0]) = 16;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v92 = v19 & 1;
  v80 = 17;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v20;
  v38 = v63;
  v29 = &v50[927] + 4;
  (*(v48 + 8))(v8, v5);
  v90 = v21 & 1;
  v50[0] = v46;
  v50[1] = v47;
  memcpy(&v50[2], v117, 0x41BuLL);
  memcpy(&v50[133] + 3, v116, 0x420uLL);
  memcpy(&v50[265] + 3, v115, 0x420uLL);
  memcpy(&v50[397] + 3, v114, 0x420uLL);
  memcpy(&v50[529] + 3, v113, 0x420uLL);
  memcpy(&v50[661] + 3, v112, 0x420uLL);
  memcpy(&v50[793] + 3, v111, 0x420uLL);
  *(&v50[925] + 3) = v109;
  HIBYTE(v50[925]) = v110;
  v50[926] = v44;
  v36 = v13;
  v37 = v12;
  LODWORD(v50[927]) = v12;
  LODWORD(v48) = v108;
  v22 = v29;
  *v29 = v108;
  *(&v50[927] + 5) = v106;
  HIBYTE(v50[927]) = v107;
  v50[928] = v13;
  v35 = v105;
  v22[12] = v105;
  *(&v50[929] + 1) = *v104;
  HIDWORD(v50[929]) = *&v104[3];
  v50[930] = v41;
  v34 = v103;
  v22[28] = v103;
  *(&v50[931] + 1) = *v102;
  HIDWORD(v50[931]) = *&v102[3];
  v50[932] = v40;
  v33 = v101;
  v22[44] = v101;
  *(&v50[933] + 1) = *v100;
  HIDWORD(v50[933]) = *&v100[3];
  v50[934] = v39;
  v32 = v99;
  v22[60] = v99;
  v23 = v22;
  BYTE3(v50[935]) = v98;
  *(&v50[935] + 1) = v97;
  HIDWORD(v50[935]) = v45;
  v31 = v96;
  v22[68] = v96;
  memcpy(&v50[936] + 1, v95, 0x422uLL);
  *(&v50[1068] + 3) = v93;
  HIBYTE(v50[1068]) = v94;
  v50[1069] = v18;
  v30 = v92;
  *(&v50[1070] + 1) = *v91;
  v23[1140] = v92;
  HIDWORD(v50[1070]) = *&v91[3];
  v24 = v43;
  v50[1071] = v43;
  v25 = v90;
  v23[1156] = v90;
  sub_1000F0958(v50, &v49);
  sub_10000BB78(v118);
  v51[0] = v46;
  v51[1] = v47;
  memcpy(v52, v117, sizeof(v52));
  memcpy(v53, v116, sizeof(v53));
  memcpy(v54, v115, sizeof(v54));
  memcpy(v55, v114, sizeof(v55));
  memcpy(v56, v113, sizeof(v56));
  memcpy(v57, v112, sizeof(v57));
  memcpy(v58, v111, sizeof(v58));
  v59 = v109;
  v60 = v110;
  v61 = v44;
  v26 = v38;
  v62 = v37;
  *v38 = v48;
  *&v63[1] = v106;
  v63[3] = v107;
  v64 = v36;
  v26[12] = v35;
  *v65 = *v104;
  *&v65[3] = *&v104[3];
  v66 = v41;
  v26[28] = v34;
  *v67 = *v102;
  *&v67[3] = *&v102[3];
  v68 = v40;
  *v69 = *v100;
  v26[44] = v33;
  *&v69[3] = *&v100[3];
  v70 = v39;
  v26[60] = v32;
  v71 = v97;
  v72 = v98;
  v73 = v45;
  v26[68] = v31;
  v27 = v26;
  memcpy(v74, v95, sizeof(v74));
  v75 = v93;
  v76 = v94;
  v77 = v18;
  v27[1140] = v30;
  *v78 = *v91;
  *&v78[3] = *&v91[3];
  v79 = v24;
  v27[1156] = v25;
  sub_1000B1590(v51);
  return memcpy(v42, v50, 0x2181uLL);
}

uint64_t sub_1000E7230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E697272756C62 && a2 == 0xEA00000000007373;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x426563616C70616CLL && a2 == 0xEB0000000072756CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473694464726163 && a2 == 0xEE006E6F6974726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDE70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDE90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6374695064616568 && a2 == 0xE900000000000068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6C6F5264616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x77615964616568 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73656361466D756ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65676E615278756CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDEB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FDED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FDEF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDF10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FDF30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FDF50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x666E6F4365636166 && a2 == 0xEE0065636E656469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x75516569666C6573 && a2 == 0xED00007974696C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC000000657A6953 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEC00000077656B53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x666972447466656CLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6972447468676972 && a2 == 0xEA00000000007466 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x74666972447075 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x666972446E776F64 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6544373134666470 && a2 == 0xEE00646574636574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDFD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6572616C67 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x61436F7475417369 && a2 == 0xEE00646572757470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x5465727574706163 && a2 == 0xEB00000000656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FE030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x6556746567726174 && a2 == 0xEE00736563697472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x74614D797A7A7566 && a2 == 0xED0000676E696863 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x7373656E6576696CLL && a2 == 0xED00006574756843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x456873616C467369 && a2 == 0xEE0064656C62616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FF400 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0x686374614D72636FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x5378656C706D6F63 && a2 == 0xEE00736C616E6769 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x6165706552626F64 && a2 == 0xEE00746E756F4374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x6165706552656F64 && a2 == 0xEE00746E756F4374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FE090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006FE0B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x526E6163537A726DLL && a2 == 0xED0000746C757365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0x636F44664F656761 && a2 == 0xED0000746E656D75)
  {

    return 44;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 44;
    }

    else
    {
      return 45;
    }
  }
}

void *sub_1000E8048@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100007224(&qword_100839F10, &qword_1006D5FC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v152 = a1;
  sub_10000BA08(a1, v9);
  sub_1000F47D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v361 = v2;
    v149 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v136 = 0;
    v137 = 0;
    LODWORD(v138) = 0;
    v139 = 0;
    LODWORD(v140) = 0;
    v141 = 0;
    LODWORD(v142) = 0;
    LODWORD(v143) = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
    LODWORD(v150) = 0;
    LODWORD(v151) = 0;
  }

  else
  {
    LOBYTE(v153[0]) = 0;
    sub_1000F4834();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v132 = v154;
    v133 = v155;
    v134 = v156;
    v135 = v157;
    LOBYTE(v153[0]) = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v128 = v154;
    v129 = v155;
    v130 = v156;
    v131 = v157;
    LOBYTE(v153[0]) = 2;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v124 = v154;
    v125 = v155;
    v126 = v156;
    v127 = v157;
    LOBYTE(v153[0]) = 3;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v120 = v154;
    v121 = v155;
    v122 = v156;
    v123 = v157;
    LOBYTE(v153[0]) = 4;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v116 = v154;
    v117 = v155;
    v118 = v156;
    v119 = v157;
    LOBYTE(v153[0]) = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v112 = v154;
    v113 = v155;
    v114 = v156;
    v115 = v157;
    LOBYTE(v153[0]) = 6;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v108 = v154;
    v109 = v155;
    v110 = v156;
    v111 = v157;
    LOBYTE(v153[0]) = 7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v104 = v154;
    v105 = v155;
    v106 = v156;
    v107 = v157;
    LOBYTE(v153[0]) = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v100 = v154;
    v101 = v155;
    v102 = v156;
    v103 = v157;
    LOBYTE(v153[0]) = 9;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v96 = v154;
    v97 = v155;
    v98 = v156;
    v99 = v157;
    LOBYTE(v153[0]) = 10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v92 = v154;
    v93 = v155;
    v94 = v156;
    v95 = v157;
    LOBYTE(v153[0]) = 11;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v88 = v154;
    v89 = v155;
    v90 = v156;
    v91 = v157;
    LOBYTE(v153[0]) = 12;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v84 = v154;
    v85 = v155;
    v86 = v156;
    v87 = v157;
    LOBYTE(v153[0]) = 13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v80 = v154;
    v81 = v155;
    v82 = v156;
    v83 = v157;
    LOBYTE(v153[0]) = 14;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v76 = v154;
    v77 = v155;
    v78 = v156;
    v79 = v157;
    LOBYTE(v153[0]) = 15;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v72 = v154;
    v73 = v155;
    v74 = v156;
    v75 = v157;
    LOBYTE(v153[0]) = 16;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v31 = v154;
    v34 = v155;
    v37 = v156;
    v42 = v157;
    LOBYTE(v153[0]) = 17;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v30 = v154;
    v33 = v155;
    v38 = v156;
    v43 = v157;
    LOBYTE(v153[0]) = 18;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v32 = v154;
    v36 = v155;
    v40 = v156;
    v45 = v157;
    LOBYTE(v153[0]) = 19;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v35 = v154;
    v39 = v155;
    v44 = v156;
    v48 = v157;
    LOBYTE(v153[0]) = 20;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v41 = v154;
    v46 = v155;
    v49 = v156;
    v51 = v157;
    LOBYTE(v153[0]) = 21;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v47 = v154;
    v50 = v155;
    v53 = v156;
    v55 = v157;
    LOBYTE(v153[0]) = 22;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v52 = v154;
    v54 = v155;
    v56 = v156;
    v58 = v157;
    LOBYTE(v153[0]) = 23;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v57 = v154;
    v60 = v155;
    v61 = v156;
    v63 = v157;
    LOBYTE(v153[0]) = 24;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v62 = v154;
    v64 = v155;
    v66 = v156;
    v68 = v157;
    LOBYTE(v153[0]) = 25;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = 0;
    v67 = v154;
    v69 = v155;
    v70 = v156;
    v71 = v157;
    LOBYTE(v153[0]) = 26;
    sub_1000F4888();
    v19 = v361;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v361 = v19;
    if (v19 || (v151 = v154, v20 = v155, v21 = v156, LOBYTE(v153[0]) = 27, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), v361 = 0, v22 = v154, v150 = v155, v149 = v156, v322 = 28, sub_1000F48DC(), v23 = v361, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v361 = v23) != 0) || (*&v333[39] = v325, *&v333[55] = v326, *&v333[71] = v327, *&v333[7] = v323, v333[87] = v328, *&v333[23] = v324, LOBYTE(v154) = 29, v148 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v361 = 0, LOBYTE(v154) = 30, HIDWORD(v147) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v361 = 0, LOBYTE(v154) = 31, LODWORD(v147) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v361 = 0, LOBYTE(v154) = 32, HIDWORD(v146) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v361 = 0, LOBYTE(v154) = 33, LODWORD(v146) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v361 = 0, LOBYTE(v154) = 34, HIDWORD(v145) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v361 = 0, LOBYTE(v154) = 35, LODWORD(v145) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v361 = 0, LOBYTE(v154) = 36, v144 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v361 = 0, sub_100007224(&qword_100839F38, &qword_1006D5FD0), LOBYTE(v153[0]) = 37, sub_1000F4930(), v24 = v361, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v361 = v24) != 0))
    {
      (*(v6 + 8))(v8, v5);
      LODWORD(v150) = 0;
      LODWORD(v151) = 0;
      v149 = 1;
      v10 = 1;
      v11 = 1;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      v17 = 1;
      v136 = 1;
      v137 = 0x100000001;
      LODWORD(v138) = 1;
      v139 = 1;
      LODWORD(v140) = 1;
      v141 = 1;
      LODWORD(v142) = 1;
      LODWORD(v143) = 1;
      v144 = 1;
      v145 = 0x100000001;
      v146 = 0x100000001;
      v147 = 0x100000001;
      v148 = 1;
    }

    else
    {
      v65 = v154;
      sub_100007224(&qword_100839F50, &qword_1006D5FD8);
      LOBYTE(v153[0]) = 38;
      sub_1000F4A08();
      v25 = v361;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v361 = v25;
      if (v25)
      {
        (*(v6 + 8))(v8, v5);
        LODWORD(v151) = 0;
        v149 = 1;
        v10 = 1;
        v11 = 1;
        v12 = 1;
        v13 = 1;
        v14 = 1;
        v15 = 1;
        v16 = 1;
        v17 = 1;
        v136 = 1;
        v137 = 0x100000001;
        LODWORD(v138) = 1;
        v139 = 1;
        LODWORD(v140) = 1;
        v141 = 1;
        LODWORD(v142) = 1;
        LODWORD(v143) = 1;
        v144 = 1;
        v145 = 0x100000001;
        v146 = 0x100000001;
        v147 = 0x100000001;
        v148 = 1;
        LODWORD(v150) = 1;
      }

      else
      {
        v59 = v154;
        LOBYTE(v153[0]) = 39;
        v143 = sub_1000F4AE0();
        v26 = v361;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v361 = v26;
        if (!v26)
        {
          v142 = v154;
          v141 = v155;
          LOBYTE(v153[0]) = 40;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v361 = 0;
          v140 = v154;
          v139 = v155;
          LOBYTE(v153[0]) = 41;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v361 = 0;
          v138 = v154;
          HIDWORD(v137) = v155;
          LOBYTE(v153[0]) = 42;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v361 = 0;
          v143 = v154;
          LODWORD(v137) = v155;
          LOBYTE(v154) = 43;
          v136 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v361 = 0;
          v321 = 44;
          v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v361 = 0;
          (*(v6 + 8))(v8, v5);
          HIDWORD(v153[19]) = *&v356[3];
          *(&v153[19] + 1) = *v356;
          HIDWORD(v153[23]) = *&v355[3];
          *(&v153[23] + 1) = *v355;
          HIDWORD(v153[27]) = *&v354[3];
          *(&v153[27] + 1) = *v354;
          HIDWORD(v153[31]) = *&v353[3];
          *(&v153[31] + 1) = *v353;
          *(&v153[35] + 1) = *v352;
          *(&v153[39] + 1) = *v351;
          *(&v153[43] + 1) = *v350;
          *(&v153[47] + 1) = *v349;
          *(&v153[51] + 1) = *v348;
          *(&v153[55] + 1) = *v347;
          *(&v153[59] + 1) = *v346;
          *(&v153[63] + 1) = *v345;
          *(&v153[67] + 1) = *v344;
          *(&v153[71] + 1) = *v343;
          *(&v153[75] + 1) = *v342;
          *(&v153[79] + 1) = *v341;
          *(&v153[83] + 1) = *v340;
          *(&v153[87] + 1) = *v339;
          *(&v153[91] + 1) = *v338;
          *(&v153[95] + 1) = *v337;
          *(&v153[99] + 1) = *v336;
          *(&v153[103] + 1) = *v335;
          *(&v153[106] + 1) = *v334;
          *(&v153[121] + 1) = *v332;
          *(&v153[125] + 1) = *v331;
          *(&v153[127] + 1) = *v330;
          *(&v153[129] + 1) = *v329;
          *(&v153[3] + 1) = v360[0];
          HIDWORD(v153[3]) = *(v360 + 3);
          *(&v153[7] + 1) = *v359;
          HIDWORD(v153[7]) = *&v359[3];
          *(&v153[11] + 1) = *v358;
          HIDWORD(v153[11]) = *&v358[3];
          *(&v153[15] + 1) = *v357;
          HIDWORD(v153[15]) = *&v357[3];
          HIDWORD(v153[35]) = *&v352[3];
          HIDWORD(v153[39]) = *&v351[3];
          HIDWORD(v153[43]) = *&v350[3];
          HIDWORD(v153[47]) = *&v349[3];
          HIDWORD(v153[51]) = *&v348[3];
          HIDWORD(v153[55]) = *&v347[3];
          HIDWORD(v153[59]) = *&v346[3];
          HIDWORD(v153[63]) = *&v345[3];
          HIDWORD(v153[67]) = *&v344[3];
          HIDWORD(v153[71]) = *&v343[3];
          HIDWORD(v153[75]) = *&v342[3];
          HIDWORD(v153[79]) = *&v341[3];
          HIDWORD(v153[83]) = *&v340[3];
          HIDWORD(v153[87]) = *&v339[3];
          HIDWORD(v153[91]) = *&v338[3];
          HIDWORD(v153[95]) = *&v337[3];
          HIDWORD(v153[99]) = *&v336[3];
          HIDWORD(v153[103]) = *&v335[3];
          HIDWORD(v153[106]) = *&v334[3];
          *(&v153[119] + 1) = *&v333[80];
          *(&v153[109] + 1) = *v333;
          *(&v153[111] + 1) = *&v333[16];
          *(&v153[115] + 1) = *&v333[48];
          *(&v153[117] + 1) = *&v333[64];
          *(&v153[113] + 1) = *&v333[32];
          HIDWORD(v153[121]) = *&v332[3];
          HIDWORD(v153[125]) = *&v331[3];
          HIDWORD(v153[127]) = *&v330[3];
          HIDWORD(v153[129]) = *&v329[3];
          v153[0] = v132;
          v153[1] = v133;
          v153[2] = v134;
          LOBYTE(v153[3]) = v135;
          v153[4] = v128;
          v27 = v129;
          v153[5] = v129;
          v153[6] = v130;
          LOBYTE(v153[7]) = v131;
          v153[8] = v124;
          v153[9] = v125;
          v153[10] = v126;
          LOBYTE(v153[11]) = v127;
          v153[12] = v120;
          v153[13] = v121;
          v153[14] = v122;
          LOBYTE(v153[15]) = v123;
          v153[16] = v116;
          v153[17] = v117;
          v153[18] = v118;
          LOBYTE(v153[19]) = v119;
          v153[20] = v112;
          v153[21] = v113;
          v153[22] = v114;
          LOBYTE(v153[23]) = v115;
          v153[24] = v108;
          v153[25] = v109;
          v153[26] = v110;
          LOBYTE(v153[27]) = v111;
          v153[28] = v104;
          v153[29] = v105;
          v153[30] = v106;
          LOBYTE(v153[31]) = v107;
          v153[32] = v100;
          v153[33] = v101;
          v153[34] = v102;
          LOBYTE(v153[35]) = v103;
          v153[36] = v96;
          v153[37] = v97;
          v153[38] = v98;
          LOBYTE(v153[39]) = v99;
          v153[40] = v92;
          v153[41] = v93;
          v153[42] = v94;
          LOBYTE(v153[43]) = v95;
          v153[44] = v88;
          v153[45] = v89;
          v153[46] = v90;
          LOBYTE(v153[47]) = v91;
          v153[48] = v84;
          v153[49] = v85;
          v153[50] = v86;
          LOBYTE(v153[51]) = v87;
          v153[52] = v80;
          v153[53] = v81;
          v153[54] = v82;
          LOBYTE(v153[55]) = v83;
          v153[56] = v76;
          v153[57] = v77;
          v153[58] = v78;
          LOBYTE(v153[59]) = v79;
          v153[60] = v72;
          v153[61] = v73;
          v153[62] = v74;
          LOBYTE(v153[63]) = v75;
          v153[64] = v31;
          v153[65] = v34;
          v153[66] = v37;
          LOBYTE(v153[67]) = v42;
          v153[68] = v30;
          v153[69] = v33;
          v153[70] = v38;
          LOBYTE(v153[71]) = v43;
          v153[72] = v32;
          v153[73] = v36;
          v153[74] = v40;
          LOBYTE(v153[75]) = v45;
          v153[76] = v35;
          v153[77] = v39;
          v153[78] = v44;
          LOBYTE(v153[79]) = v48;
          v153[80] = v41;
          v153[81] = v46;
          v153[82] = v49;
          LOBYTE(v153[83]) = v51;
          v153[84] = v47;
          v153[85] = v50;
          v153[86] = v53;
          LOBYTE(v153[87]) = v55;
          v153[88] = v52;
          v153[89] = v54;
          v153[90] = v56;
          LOBYTE(v153[91]) = v58;
          v153[92] = v57;
          v153[93] = v60;
          v153[94] = v61;
          LOBYTE(v153[95]) = v63;
          v153[96] = v62;
          v153[97] = v64;
          v153[98] = v66;
          LOBYTE(v153[99]) = v68;
          v153[100] = v67;
          v153[101] = v69;
          v153[102] = v70;
          LOBYTE(v153[103]) = v71;
          v153[104] = v151;
          v153[105] = v20;
          LOBYTE(v153[106]) = v21;
          v153[107] = v22;
          v153[108] = v150;
          LOBYTE(v153[109]) = v149;
          BYTE1(v153[120]) = v148;
          BYTE2(v153[120]) = BYTE4(v147);
          BYTE3(v153[120]) = v147;
          BYTE4(v153[120]) = BYTE4(v146);
          BYTE5(v153[120]) = v146;
          BYTE6(v153[120]) = BYTE4(v145);
          HIBYTE(v153[120]) = v145;
          LOBYTE(v153[121]) = v144;
          v153[122] = v65;
          v153[123] = v59;
          v153[124] = v142;
          LOBYTE(v153[125]) = v141;
          v153[126] = v140;
          LOBYTE(v153[127]) = v139;
          v153[128] = v138;
          LOBYTE(v153[129]) = BYTE4(v137);
          v153[130] = v143;
          LOBYTE(v153[131]) = v137;
          BYTE1(v153[131]) = v136;
          BYTE2(v153[131]) = v29;
          sub_1000F4B34(v153, &v154);
          sub_10000BB78(v152);
          v154 = v132;
          v155 = v133;
          v156 = v134;
          v157 = v135;
          v159 = v128;
          v160 = v27;
          v161 = v130;
          v162 = v131;
          v164 = v124;
          v165 = v125;
          v166 = v126;
          v167 = v127;
          v169 = v120;
          v170 = v121;
          v171 = v122;
          v172 = v123;
          v174 = v116;
          v175 = v117;
          v176 = v118;
          v177 = v119;
          v179 = v112;
          v180 = v113;
          v181 = v114;
          v182 = v115;
          v184 = v108;
          v185 = v109;
          v186 = v110;
          v187 = v111;
          v189 = v104;
          v190 = v105;
          v191 = v106;
          v192 = v107;
          v194 = v100;
          v195 = v101;
          v196 = v102;
          v197 = v103;
          v199 = v96;
          v200 = v97;
          v201 = v98;
          v202 = v99;
          v204 = v92;
          v205 = v93;
          v206 = v94;
          v207 = v95;
          v209 = v88;
          v210 = v89;
          v211 = v90;
          v212 = v91;
          v214 = v84;
          v215 = v85;
          v216 = v86;
          v217 = v87;
          v219 = v80;
          v220 = v81;
          v221 = v82;
          v222 = v83;
          v224 = v76;
          v225 = v77;
          v226 = v78;
          v227 = v79;
          v229 = v72;
          v230 = v73;
          v231 = v74;
          v232 = v75;
          v234 = v31;
          v235 = v34;
          v236 = v37;
          v237 = v42;
          v239 = v30;
          v240 = v33;
          v241 = v38;
          v242 = v43;
          v244 = v32;
          v245 = v36;
          v246 = v40;
          v247 = v45;
          v249 = v35;
          v250 = v39;
          v251 = v44;
          v252 = v48;
          v254 = v41;
          v255 = v46;
          v256 = v49;
          v257 = v51;
          v259 = v47;
          v260 = v50;
          v261 = v53;
          v262 = v55;
          v264 = v52;
          v265 = v54;
          v266 = v56;
          v267 = v58;
          v269 = v57;
          v270 = v60;
          v271 = v61;
          v272 = v63;
          v274 = v62;
          v275 = v64;
          v276 = v66;
          v277 = v68;
          v279 = v67;
          v280 = v69;
          v281 = v70;
          *v158 = v360[0];
          *&v158[3] = *(v360 + 3);
          *v163 = *v359;
          *&v163[3] = *&v359[3];
          *v168 = *v358;
          *&v168[3] = *&v358[3];
          *v173 = *v357;
          *&v173[3] = *&v357[3];
          *&v178[3] = *&v356[3];
          *v178 = *v356;
          *&v183[3] = *&v355[3];
          *v183 = *v355;
          *&v188[3] = *&v354[3];
          *v188 = *v354;
          *&v193[3] = *&v353[3];
          *v193 = *v353;
          *v198 = *v352;
          *&v198[3] = *&v352[3];
          *v203 = *v351;
          *&v203[3] = *&v351[3];
          *v208 = *v350;
          *&v208[3] = *&v350[3];
          *v213 = *v349;
          *&v213[3] = *&v349[3];
          *v218 = *v348;
          *&v218[3] = *&v348[3];
          *v223 = *v347;
          *&v223[3] = *&v347[3];
          *v228 = *v346;
          *&v228[3] = *&v346[3];
          *v233 = *v345;
          *&v233[3] = *&v345[3];
          *v238 = *v344;
          *&v238[3] = *&v344[3];
          *v243 = *v343;
          *&v243[3] = *&v343[3];
          *v248 = *v342;
          *&v248[3] = *&v342[3];
          *v253 = *v341;
          *&v253[3] = *&v341[3];
          *v258 = *v340;
          *&v258[3] = *&v340[3];
          *v263 = *v339;
          *&v263[3] = *&v339[3];
          *v268 = *v338;
          *&v268[3] = *&v338[3];
          *v273 = *v337;
          *&v273[3] = *&v337[3];
          *v278 = *v336;
          *&v278[3] = *&v336[3];
          v282 = v71;
          *v283 = *v335;
          *&v283[3] = *&v335[3];
          v284 = v151;
          v285 = v20;
          v286 = v21;
          *v287 = *v334;
          *&v287[3] = *&v334[3];
          v288 = v22;
          v289 = v150;
          v290 = v149;
          v291 = *v333;
          v292 = *&v333[16];
          v296 = *&v333[80];
          v294 = *&v333[48];
          v295 = *&v333[64];
          v293 = *&v333[32];
          v297 = v148;
          v298 = BYTE4(v147);
          v299 = v147;
          v300 = BYTE4(v146);
          v301 = v146;
          v302 = BYTE4(v145);
          v303 = v145;
          v304 = v144;
          *v305 = *v332;
          *&v305[3] = *&v332[3];
          v306 = v65;
          v307 = v59;
          v308 = v142;
          v309 = v141;
          *v310 = *v331;
          *&v310[3] = *&v331[3];
          v311 = v140;
          v312 = v139;
          *v313 = *v330;
          *&v313[3] = *&v330[3];
          v314 = v138;
          v315 = BYTE4(v137);
          *v316 = *v329;
          *&v316[3] = *&v329[3];
          v317 = v143;
          v318 = v137;
          v319 = v136;
          v320 = v29;
          sub_1000F4B6C(&v154);
          return memcpy(a2, v153, 0x41BuLL);
        }

        (*(v6 + 8))(v8, v5);
        v149 = 1;
        v10 = 1;
        v11 = 1;
        v12 = 1;
        v13 = 1;
        v14 = 1;
        v15 = 1;
        v16 = 1;
        v17 = 1;
        v136 = 1;
        v137 = 0x100000001;
        LODWORD(v138) = 1;
        v139 = 1;
        LODWORD(v140) = 1;
        v141 = 1;
        LODWORD(v142) = 1;
        LODWORD(v143) = 1;
        v144 = 1;
        v145 = 0x100000001;
        v146 = 0x100000001;
        v147 = 0x100000001;
        v148 = 1;
        LODWORD(v150) = 1;
        LODWORD(v151) = 1;
      }
    }
  }

  result = sub_10000BB78(v152);
  if (v149)
  {
    result = sub_1000F4824(v132);
    if (!v10)
    {
LABEL_6:
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_45;
    }
  }

  else if (!v10)
  {
    goto LABEL_6;
  }

  result = sub_1000F4824(v128);
  if (!v11)
  {
LABEL_7:
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = sub_1000F4824(v124);
  if (!v12)
  {
LABEL_8:
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = sub_1000F4824(v120);
  if (!v13)
  {
LABEL_9:
    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = sub_1000F4824(v116);
  if (!v14)
  {
LABEL_10:
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = sub_1000F4824(v112);
  if (!v15)
  {
LABEL_11:
    if (!v16)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = sub_1000F4824(v108);
  if (!v16)
  {
LABEL_12:
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = sub_1000F4824(v104);
  if (!v17)
  {
LABEL_13:
    if (!v136)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = sub_1000F4824(v100);
  if (!v136)
  {
LABEL_14:
    if (!v137)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = sub_1000F4824(v96);
  if (!v137)
  {
LABEL_15:
    if (!HIDWORD(v137))
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = sub_1000F4824(v92);
  if (!HIDWORD(v137))
  {
LABEL_16:
    if (!v138)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = sub_1000F4824(v88);
  if (!v138)
  {
LABEL_17:
    if (!v139)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = sub_1000F4824(v84);
  if (!v139)
  {
LABEL_18:
    if (!v140)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = sub_1000F4824(v80);
  if (!v140)
  {
LABEL_19:
    if (!v141)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = sub_1000F4824(v76);
  if (!v141)
  {
LABEL_20:
    if (!v142)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = sub_1000F4824(v72);
  if (!v142)
  {
LABEL_21:
    if (!v143)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = sub_1000F4824(v31);
  if (!v143)
  {
LABEL_22:
    if (!v144)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = sub_1000F4824(v30);
  if (!v144)
  {
LABEL_23:
    if (!v145)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = sub_1000F4824(v32);
  if (!v145)
  {
LABEL_24:
    if (!HIDWORD(v145))
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = sub_1000F4824(v35);
  if (!HIDWORD(v145))
  {
LABEL_25:
    if (!v146)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  result = sub_1000F4824(v41);
  if (!v146)
  {
LABEL_26:
    if (!HIDWORD(v146))
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  result = sub_1000F4824(v47);
  if (!HIDWORD(v146))
  {
LABEL_27:
    if (!v147)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = sub_1000F4824(v52);
  if (!v147)
  {
LABEL_28:
    if (!HIDWORD(v147))
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = sub_1000F4824(v57);
  if (!HIDWORD(v147))
  {
LABEL_29:
    if (!v148)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = sub_1000F4824(v62);
  if (!v148)
  {
LABEL_30:
    if (!v150)
    {
      goto LABEL_31;
    }

LABEL_69:

    if (!v151)
    {
      return result;
    }
  }

LABEL_68:
  result = sub_1000F4824(v67);
  if (v150)
  {
    goto LABEL_69;
  }

LABEL_31:
  if (v151)
  {
  }

  return result;
}

uint64_t sub_1000EAF3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000EB058(void *a1)
{
  v3 = sub_100007224(&qword_10083A0E0, &unk_1006D6D28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_10000BA08(a1, v7);
  sub_1000F5EDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_100007224(&unk_10083A0F0, &unk_1006C96E0);
    v9[15] = 0;
    sub_1000AF1E4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v7 = v10;
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v9[13] = 2;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v7;
}

uint64_t sub_1000EB290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000EB3AC(void *a1)
{
  v3 = sub_100007224(&qword_10083A100, &qword_1006D6D38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  sub_10000BA08(a1, a1[3]);
  sub_1000F5F30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000BB78(a1);
  }

  v14 = 0;
  v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 2;
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_10000BB78(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFF00 | v7;
}

uint64_t sub_1000EB590(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64726F7779656BLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E6172656C6F74 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000EB754@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_10083A120, &qword_1006D6D48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F5FD8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  LOBYTE(v36[0]) = 1;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v13 & 1;
  LOBYTE(v36[0]) = 2;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = v14 & 1;
  LOBYTE(v36[0]) = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v16;
  v27 = v15;
  v45 = 4;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v26 = v12;
  *&v31 = v12;
  *(&v31 + 1) = v11;
  *&v32 = v29;
  HIDWORD(v25) = v44;
  BYTE8(v32) = v44;
  v18 = v28;
  *&v33 = v28;
  v19 = v43;
  BYTE8(v33) = v43;
  v20 = v27;
  v21 = v30;
  *&v34 = v27;
  *(&v34 + 1) = v30;
  v35 = v17;
  sub_1000F602C(&v31, v36);
  sub_10000BB78(a1);
  v36[0] = v26;
  v36[1] = v11;
  v36[2] = v29;
  v37 = BYTE4(v25);
  v38 = v18;
  v39 = v19;
  v40 = v20;
  v41 = v21;
  v42 = v17;
  result = sub_1000F6064(v36);
  v23 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v23;
  *(a2 + 64) = v35;
  v24 = v32;
  *a2 = v31;
  *(a2 + 16) = v24;
  return result;
}

uint64_t sub_1000EBA98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C616E676973 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000EBBB8(void *a1)
{
  v3 = sub_100007224(&qword_10083A130, &qword_1006D6D50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F6094();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[31] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[30] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_100007224(&qword_10083A140, &qword_1006D6D58);
    v9[29] = 2;
    sub_1000F60E8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v7;
}

uint64_t sub_1000EBDF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74617261706D6F63 && a2 == 0xEA0000000000726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000EBF18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_10083A2B8, &qword_1006D7980);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F6FA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v24 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v20 = a2;
  v21 = v9;
  v23 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v13;
  v22 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  result = sub_10000BB78(a1);
  v17 = v20;
  *v20 = v21;
  v17[1] = v11;
  v18 = v19;
  v17[2] = v12;
  v17[3] = v18;
  *(v17 + 8) = v15;
  return result;
}

uint64_t sub_1000EC16C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6C69737065 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F506E696DLL && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65746E496E696DLL && a2 == 0xEC00000079746973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5372657473756C63 && a2 == 0xEB00000000657A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6163736E776F64 && a2 == 0xEF726F7463614665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1000EC3D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_10083A110, &qword_1006D6D40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F5F84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v46 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v10 = v9;
  v43 = BYTE4(v9) & 1;
  v45 = 1;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = v12 & 1;
  v44 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v14 & 1;
  v42 = 3;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v37 = v15 & 1;
  v41 = 4;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = v16 & 1;
  v40 = 5;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = 6;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 &= 1u;
  v18 = *(v6 + 8);
  v30 = v17;
  v19 = v8;
  v21 = v20;
  v18(v19, v5);
  v22 = v21 & 1;
  v35 = v21 & 1;
  v23 = v43;
  v24 = v39;
  v27 = v38;
  v28 = v37;
  v29 = v36;
  result = sub_10000BB78(a1);
  *a2 = v10;
  *(a2 + 4) = v23;
  *(a2 + 8) = v11;
  *(a2 + 16) = v24;
  *(a2 + 24) = v13;
  *(a2 + 32) = v27;
  *(a2 + 40) = v33;
  *(a2 + 48) = v28;
  *(a2 + 56) = v32;
  *(a2 + 64) = v29;
  *(a2 + 65) = v31;
  *(a2 + 72) = v30;
  *(a2 + 80) = v22;
  return result;
}

uint64_t sub_1000EC6C4(void *a1)
{
  v2 = sub_100007224(&qword_10083A158, &qword_1006D6D60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F61C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8[15] = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000BB78(a1);
  return v6;
}

uint64_t sub_1000EC86C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001006FF3A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FF420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F697461526975 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69646F636E65 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006FF3E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FF440 == a2)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000ECA70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_10083A0B0, &qword_1006D6D08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F5E34();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v35[0]) = 1;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v12;
  LOBYTE(v35[0]) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v14;
  v25 = v13;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  LOBYTE(v30) = 3;
  sub_10007FD2C();
  v26 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v35[0];
  LOBYTE(v35[0]) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v36[0] = 5;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *&v30 = v9;
  *(&v30 + 1) = v11;
  v19 = v28;
  v18 = v29;
  *&v31 = v27;
  *(&v31 + 1) = v29;
  *&v32 = v25;
  *(&v32 + 1) = v28;
  v20 = v24;
  *&v33 = v24;
  *(&v33 + 1) = v16;
  v34 = v17;
  sub_1000F4674(&v30, v35);
  sub_10000BB78(a1);
  v35[0] = v9;
  v35[1] = v11;
  v35[2] = v27;
  v35[3] = v18;
  v35[4] = v25;
  v35[5] = v19;
  v35[6] = v20;
  v35[7] = v16;
  v35[8] = v17;
  result = sub_1000F44CC(v35);
  v22 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v22;
  *(a2 + 64) = v34;
  v23 = v31;
  *a2 = v30;
  *(a2 + 16) = v23;
  return result;
}

uint64_t sub_1000ECE74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F466567616D69 && a2 == 0xEB0000000074616DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FF360 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000ECF98@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v48 = sub_100007224(&qword_100839E90, &qword_1006D5F90);
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v20 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000F4424();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v21 = a2;
  LOBYTE(v28[0]) = 0;
  v9 = v48;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v20 = v10;
  v37 = 1;
  sub_1000F4478();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v40;
  v46 = v41;
  v47 = v42;
  v43 = v38;
  v44 = v39;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v35 = 2;
  sub_10007FD2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v8 + 8))(v7, v9);
  v13 = v36;
  v14 = v20;
  *&v22 = v20;
  *(&v22 + 1) = v12;
  v25 = v45;
  v26 = v46;
  v23 = v43;
  v24 = v44;
  *&v27 = v47;
  *(&v27 + 1) = v36;
  sub_1000F2868(&v22, v28);
  sub_10000BB78(a1);
  v28[0] = v14;
  v28[1] = v12;
  v31 = v45;
  v32 = v46;
  v29 = v43;
  v30 = v44;
  v33 = v47;
  v34 = v13;
  result = sub_1000F28A0(v28);
  v16 = v25;
  v17 = v21;
  v21[2] = v24;
  v17[3] = v16;
  v18 = v27;
  v17[4] = v26;
  v17[5] = v18;
  v19 = v23;
  *v17 = v22;
  v17[1] = v19;
  return result;
}

uint64_t sub_1000ED2B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FEAD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FEB20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FEB40 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1000ED464(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FA108, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000ED4B0(void *a1)
{
  v3 = sub_100007224(&qword_1008398A0, &qword_1006D4888);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F02F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v7;
}

unint64_t sub_1000ED694(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FA188, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000ED6E0(void *a1)
{
  v2 = sub_100007224(&qword_10083A0C0, &qword_1006D6D10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5E88();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v8[15] = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000BB78(a1);
  return v6;
}

uint64_t sub_1000ED888(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001006FE590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F697463656C6573 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646F636E65 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FF380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006FF3A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FF3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006FF3E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656E696C6576696CLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6B6174655278616DLL && a2 == 0xEE00746E756F4365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    return 10;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1000EDC1C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v84 = sub_100007224(&qword_100839EA8, &qword_1006D5F98);
  v5 = *(v84 - 8);
  __chkstk_darwin(v84);
  v7 = &v28 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000F44FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  v42 = a2;
  LOBYTE(v51) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v10;
  sub_100007224(&qword_100839EB8, &qword_1006D5FA0);
  LOBYTE(v43) = 1;
  sub_1000F4550();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v40 = v51;
  LOBYTE(v51) = 2;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v43) = 3;
  v39 = sub_1000F45CC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v52;
  v37 = v51;
  LOBYTE(v43) = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = v51;
  v35 = v52;
  LOBYTE(v51) = 5;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = v11 & 1;
  LOBYTE(v51) = 6;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v82 = v13 & 1;
  LOBYTE(v51) = 7;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v51) = 8;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v79 = v14 & 1;
  LOBYTE(v51) = 9;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v77 = v16 & 1;
  v74 = 10;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = v17;
  (*(v8 + 8))(v7, v84);
  v75 = v18 & 1;
  *&v43 = v9;
  *(&v43 + 1) = v41;
  v19 = v38;
  *&v44 = v40;
  *(&v44 + 1) = v38;
  *&v45 = v37;
  *(&v45 + 1) = v36;
  *&v46 = v39;
  *(&v46 + 1) = v35;
  *&v47 = v34;
  HIDWORD(v28) = v83;
  BYTE8(v47) = v83;
  v20 = v12;
  *&v48 = v12;
  v21 = v82;
  BYTE8(v48) = v82;
  LOBYTE(v12) = v32;
  BYTE9(v48) = v32;
  *&v49 = v33;
  v29 = v79;
  BYTE8(v49) = v79;
  *&v50[0] = v15;
  v30 = v77;
  BYTE8(v50[0]) = v77;
  *&v50[1] = v31;
  LODWORD(v84) = v75;
  BYTE8(v50[1]) = v75;
  sub_1000F28D0(&v43, &v51);
  sub_10000BB78(a1);
  v51 = v9;
  v52 = v41;
  v53 = v40;
  v54 = v19;
  v55 = v37;
  v56 = v36;
  v57 = v39;
  v58 = v35;
  v59 = v34;
  v60 = BYTE4(v28);
  v61 = v20;
  v62 = v21;
  v63 = v12;
  v64 = v80;
  v65 = v81;
  v66 = v33;
  v67 = v29;
  *&v68[3] = *&v78[3];
  *v68 = *v78;
  v69 = v15;
  v70 = v30;
  *&v71[3] = *&v76[3];
  *v71 = *v76;
  v72 = v31;
  v73 = v84;
  result = sub_1000F2908(&v51);
  v23 = v50[0];
  v24 = v42;
  v42[6] = v49;
  v24[7] = v23;
  *(v24 + 121) = *(v50 + 9);
  v25 = v46;
  v24[2] = v45;
  v24[3] = v25;
  v26 = v48;
  v24[4] = v47;
  v24[5] = v26;
  v27 = v44;
  *v24 = v43;
  v24[1] = v27;
  return result;
}

uint64_t sub_1000EE1D0(void *a1)
{
  v3 = sub_100007224(&qword_100839ED0, &qword_1006D5FA8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_10000BA08(a1, v7);
  sub_1000F4620();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    LOBYTE(v7) = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v7 & 1;
}

uint64_t sub_1000EE37C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FF280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FF2A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FF2C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E65646469487369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72456E4F65646F63 && a2 == 0xEB00000000726F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FEB40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001006FF2E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FF300 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65646F4E61746164 && a2 == 0xED0000666F6F7250)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1000EE744@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = sub_100007224(&qword_1008398B8, &qword_1006D4898);
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v33 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000F0344();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v8 = v5;
  LOBYTE(v62[0]) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v62[0]) = 1;
  v83 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v62[0]) = 2;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = v13;
  LOBYTE(v62[0]) = 3;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v48 = v14;
  LOBYTE(v62[0]) = 4;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v62[0]) = 5;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v62[0]) = 6;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v50 = v15;
  LOBYTE(v62[0]) = 7;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v41 = v16;
  LOBYTE(v62[0]) = 8;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = v17;
  v40 = 0;
  sub_100007224(&qword_1008398C8, &qword_1006D48A0);
  LOBYTE(v52) = 9;
  sub_1000F0398();
  v18 = v40;
  v19 = v40;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v42 = v18;
  if (v18)
  {
    (*(v8 + 8))(v7, v51);
    sub_10000BB78(a1);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v36 = v62[0];
    sub_100007224(&qword_1008398E0, &qword_1006D48A8);
    LOBYTE(v52) = 10;
    sub_1000F0470();
    v22 = v42;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = v22;
    if (v22)
    {
      (*(v8 + 8))(v7, v51);
      sub_10000BB78(a1);
      v21 = 0;
      v20 = 1;
    }

    else
    {
      v35 = v62[0];
      v84 = 11;
      sub_1000F0548();
      v23 = v42;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v42 = v23;
      if (!v23)
      {
        v83 &= 1u;
        v24 = v83;
        (*(v8 + 8))(v7, v51);
        v51 = v81;
        *&v52 = v10;
        v40 = *(&v81 + 1);
        v34 = v82;
        *(&v52 + 1) = v12;
        LOBYTE(v53) = v24;
        v25 = v48;
        *(&v53 + 1) = v47;
        v26 = v50;
        *&v54 = v49;
        *(&v54 + 1) = v46;
        *&v55 = v48;
        BYTE8(v55) = v45;
        BYTE9(v55) = v44;
        *&v56 = v43;
        *(&v56 + 1) = v50;
        v27 = v39;
        *&v57 = v38;
        *(&v57 + 1) = v41;
        v28 = v36;
        *&v58 = v37;
        *(&v58 + 1) = v39;
        *&v59 = v36;
        *(&v59 + 1) = v35;
        v60 = v81;
        v61 = v82;
        sub_1000F059C(&v52, v62);
        sub_10000BB78(a1);
        v62[0] = v10;
        v62[1] = v12;
        v63 = v83;
        v64 = v47;
        v65 = v49;
        v66 = v46;
        v67 = v25;
        v68 = v45;
        v69 = v44;
        v70 = v43;
        v71 = v26;
        v72 = v38;
        v73 = v41;
        v74 = v37;
        v75 = v27;
        v76 = v28;
        v77 = v35;
        v78 = v51;
        v79 = v40;
        v80 = v34;
        result = sub_1000F05D4(v62);
        v29 = v59;
        *(a2 + 96) = v58;
        *(a2 + 112) = v29;
        *(a2 + 128) = v60;
        *(a2 + 144) = v61;
        v30 = v55;
        *(a2 + 32) = v54;
        *(a2 + 48) = v30;
        v31 = v57;
        *(a2 + 64) = v56;
        *(a2 + 80) = v31;
        v32 = v53;
        *a2 = v52;
        *(a2 + 16) = v32;
        return result;
      }

      (*(v8 + 8))(v7, v51);
      sub_10000BB78(a1);
      v20 = 1;
      v21 = 1;
    }
  }

  if (v19)
  {
    if (v20)
    {
      goto LABEL_10;
    }

LABEL_13:
    if (!v21)
    {
      return result;
    }
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:

  if ((v21 & 1) == 0)
  {
    return result;
  }
}

uint64_t sub_1000EEE08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74615070756F7267 && a2 == 0xE900000000000068;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEB00000000644965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEA0000000000746ELL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000EEF34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100007224(&qword_100839830, &qword_1006D4858);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F0030();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v24 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v20 = a2;
  v21 = v9;
  v23 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v13;
  v22 = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_10000BB78(a1);
  v16 = v20;
  *v20 = v21;
  v16[1] = v11;
  v17 = v19;
  v16[2] = v12;
  v16[3] = v17;
  *(v16 + 32) = v14;
  return result;
}

uint64_t sub_1000EF180(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701273968 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746954627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6570795465676170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEB00000000737465)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1000EF454@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100839848, &unk_1006D4868);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F0084();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v52[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v52[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v12;
  LOBYTE(v52[0]) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v14;
  v37 = v11;
  v38 = v13;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  LOBYTE(v45) = 3;
  v15 = sub_10007FD2C();
  v41 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = 0;
  v35 = v15;
  v36 = v52[0];
  sub_100007224(&qword_100839868, &qword_1006D4878);
  LOBYTE(v45) = 4;
  sub_1000F00D8();
  v16 = v44;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v16)
  {
    v44 = v16;
    (*(v6 + 8))(v8, v5);
    v17 = v41;
    sub_10000BB78(a1);

    if (!v17)
    {
    }
  }

  else
  {
    v34 = v52[0];
    LOBYTE(v52[0]) = 5;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v19;
    v33 = v18;
    LOBYTE(v52[0]) = 6;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v20;
    LOBYTE(v52[0]) = 7;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v21;
    v53 = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v44 = 0;
    (*(v6 + 8))(v8, v5);
    v35 = v54;
    *&v45 = v9;
    v22 = v37;
    *(&v45 + 1) = v37;
    v23 = v43;
    *&v46 = v43;
    *(&v46 + 1) = v38;
    v24 = v42;
    *&v47 = v42;
    v25 = v36;
    *(&v47 + 1) = v36;
    v26 = v34;
    *&v48 = v34;
    v27 = v33;
    *(&v48 + 1) = v33;
    *&v49 = v40;
    *(&v49 + 1) = v32;
    *&v50 = v39;
    *(&v50 + 1) = v31;
    *&v51 = v41;
    *(&v51 + 1) = v54;
    sub_1000F01B0(&v45, v52);
    sub_10000BB78(a1);
    v52[0] = v9;
    v52[1] = v22;
    v52[2] = v23;
    v52[3] = v38;
    v52[4] = v24;
    v52[5] = v25;
    v52[6] = v26;
    v52[7] = v27;
    v52[8] = v40;
    v52[9] = v32;
    v52[10] = v39;
    v52[11] = v31;
    v52[12] = v41;
    v52[13] = v35;
    result = sub_1000F01E8(v52);
    v28 = v50;
    a2[4] = v49;
    a2[5] = v28;
    a2[6] = v51;
    v29 = v46;
    *a2 = v45;
    a2[1] = v29;
    v30 = v48;
    a2[2] = v47;
    a2[3] = v30;
  }

  return result;
}

uint64_t sub_1000EFB5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746954627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000EFC70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x80000001006FF220 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001006FF240 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF73656972746552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001006FF260 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000EFDE4(void *a1)
{
  v2 = sub_100007224(&qword_100839818, &qword_1006D4848);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10000BA08(a1, a1[3]);
  sub_1000EFFDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 2;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v9 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000BB78(a1);
  return v7;
}

unint64_t sub_1000EFFDC()
{
  result = qword_100839820;
  if (!qword_100839820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839820);
  }

  return result;
}

unint64_t sub_1000F0030()
{
  result = qword_100839838;
  if (!qword_100839838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839838);
  }

  return result;
}

unint64_t sub_1000F0084()
{
  result = qword_100839850;
  if (!qword_100839850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839850);
  }

  return result;
}

unint64_t sub_1000F00D8()
{
  result = qword_100839870;
  if (!qword_100839870)
  {
    sub_10000B870(&qword_100839868, &qword_1006D4878);
    sub_1000F015C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839870);
  }

  return result;
}

unint64_t sub_1000F015C()
{
  result = qword_100839878;
  if (!qword_100839878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839878);
  }

  return result;
}

unint64_t sub_1000F0218()
{
  result = qword_100839890;
  if (!qword_100839890)
  {
    sub_10000B870(&qword_100839868, &qword_1006D4878);
    sub_1000F029C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839890);
  }

  return result;
}

unint64_t sub_1000F029C()
{
  result = qword_100839898;
  if (!qword_100839898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839898);
  }

  return result;
}

unint64_t sub_1000F02F0()
{
  result = qword_1008398A8;
  if (!qword_1008398A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398A8);
  }

  return result;
}

unint64_t sub_1000F0344()
{
  result = qword_1008398C0;
  if (!qword_1008398C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398C0);
  }

  return result;
}

unint64_t sub_1000F0398()
{
  result = qword_1008398D0;
  if (!qword_1008398D0)
  {
    sub_10000B870(&qword_1008398C8, &qword_1006D48A0);
    sub_1000F041C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398D0);
  }

  return result;
}

unint64_t sub_1000F041C()
{
  result = qword_1008398D8;
  if (!qword_1008398D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398D8);
  }

  return result;
}

unint64_t sub_1000F0470()
{
  result = qword_1008398E8;
  if (!qword_1008398E8)
  {
    sub_10000B870(&qword_1008398E0, &qword_1006D48A8);
    sub_1000F04F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398E8);
  }

  return result;
}

unint64_t sub_1000F04F4()
{
  result = qword_1008398F0;
  if (!qword_1008398F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398F0);
  }

  return result;
}

unint64_t sub_1000F0548()
{
  result = qword_1008398F8;
  if (!qword_1008398F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008398F8);
  }

  return result;
}

unint64_t sub_1000F0604()
{
  result = qword_100839908;
  if (!qword_100839908)
  {
    sub_10000B870(&qword_1008398C8, &qword_1006D48A0);
    sub_1000F0688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839908);
  }

  return result;
}

unint64_t sub_1000F0688()
{
  result = qword_100839910;
  if (!qword_100839910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839910);
  }

  return result;
}

unint64_t sub_1000F06DC()
{
  result = qword_100839918;
  if (!qword_100839918)
  {
    sub_10000B870(&qword_1008398E0, &qword_1006D48A8);
    sub_1000F0760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839918);
  }

  return result;
}

unint64_t sub_1000F0760()
{
  result = qword_100839920;
  if (!qword_100839920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839920);
  }

  return result;
}

unint64_t sub_1000F07B4()
{
  result = qword_100839928;
  if (!qword_100839928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839928);
  }

  return result;
}

unint64_t sub_1000F0808()
{
  result = qword_100839930;
  if (!qword_100839930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839930);
  }

  return result;
}

unint64_t sub_1000F085C()
{
  result = qword_100839938;
  if (!qword_100839938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839938);
  }

  return result;
}

unint64_t sub_1000F08B0()
{
  result = qword_100839948;
  if (!qword_100839948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839948);
  }

  return result;
}

unint64_t sub_1000F0904()
{
  result = qword_100839958;
  if (!qword_100839958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839958);
  }

  return result;
}

unint64_t sub_1000F0990()
{
  result = qword_100839968;
  if (!qword_100839968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839968);
  }

  return result;
}

uint64_t sub_1000F09F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000F0A40()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F0A78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F0A90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69546E6F74747562 && a2 == 0xEB00000000656C74;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000F0BB8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v29 = a6;
  v30 = sub_100007224(a2, a3);
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v25 - v10;
  sub_10000BA08(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v6)
  {
    return sub_10000BB78(a1);
  }

  v12 = v9;
  v13 = v29;
  v14 = v30;
  v33 = 0;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  v28 = v15;
  v32 = 1;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v18;
  v31 = 2;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v11;
  v22 = v21;
  (*(v12 + 8))(v20, v14);
  result = sub_10000BB78(a1);
  *v13 = v28;
  v13[1] = v17;
  v24 = v27;
  v13[2] = v26;
  v13[3] = v24;
  v13[4] = v19;
  v13[5] = v22;
  return result;
}

uint64_t sub_1000F0E0C(void *a1)
{
  v3 = sub_100007224(&qword_10083A088, &qword_1006D6CE8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_10000BA08(a1, v7);
  sub_1000F5DE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    sub_1000F4124();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000BB78(a1);
  return v7;
}

uint64_t sub_1000F0FD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69546E6F74747562 && a2 == 0xEB00000000656C74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7373656E69737562 && a2 == 0xEC00000074616843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7629921 && a2 == 0xE300000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_1000F121C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v42 = sub_100007224(&qword_100839E20, &qword_1006D5F78);
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v26 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000F4028();
  v43 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v8 = v5;
    v41 = a2;
    LOBYTE(v54) = 0;
    v9 = v42;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v11;
    LOBYTE(v54) = 1;
    *&v39 = KeyedDecodingContainer.decode(_:forKey:)();
    *(&v39 + 1) = v12;
    LOBYTE(v54) = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v14;
    LOBYTE(v44) = 3;
    sub_1000F407C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v13;
    v35 = v55;
    v36 = v54;
    v33 = v56;
    v34 = *(&v54 + 1);
    v15 = v57;
    v37 = v58;
    LOBYTE(v44) = 4;
    sub_1000F40D0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31 = v54;
    v32 = v55;
    v29 = v57;
    v30 = v56;
    v28 = v58;
    LOBYTE(v44) = 5;
    sub_1000F4124();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    HIDWORD(v26) = v54;
    sub_100007224(&qword_100839E48, &qword_1006D5F80);
    v72[0] = 6;
    sub_1000F4178();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v8 + 8))(v43, v9);
    v43 = v73;
    *&v44 = v10;
    v16 = *(&v39 + 1);
    v17 = v40;
    v18 = v38;
    *(&v44 + 1) = v40;
    v45 = v39;
    *&v46 = v27;
    *(&v46 + 1) = v38;
    *&v47 = v36;
    *(&v47 + 1) = v34;
    *&v48 = v35;
    v19 = v33;
    *(&v48 + 1) = v33;
    *&v49 = v15;
    *(&v49 + 1) = v37;
    v50 = v31;
    *&v51 = v32;
    *(&v51 + 1) = v30;
    *&v52 = v29;
    *(&v52 + 1) = v28;
    LOBYTE(v53) = BYTE4(v26);
    *(&v53 + 1) = v73;
    sub_1000F27AC(&v44, &v54);
    sub_10000BB78(a1);
    *&v54 = v10;
    *(&v54 + 1) = v17;
    v55 = v39;
    v56 = v16;
    v57 = v27;
    v58 = v18;
    v59 = v36;
    v60 = v34;
    v61 = v35;
    v62 = v19;
    v63 = v15;
    v64 = v37;
    v65 = v31;
    v66 = v32;
    v67 = v30;
    v68 = v29;
    v69 = v28;
    v70 = BYTE4(v26);
    v71 = v43;
    sub_1000F27E4(&v54);
    v20 = v51;
    v21 = v41;
    v41[6] = v50;
    v21[7] = v20;
    v22 = v53;
    v21[8] = v52;
    v21[9] = v22;
    v23 = v47;
    v21[2] = v46;
    v21[3] = v23;
    v24 = v49;
    v21[4] = v48;
    v21[5] = v24;
    v25 = v45;
    *v21 = v44;
    v21[1] = v25;
  }
}

uint64_t sub_1000F1770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656572674179656BLL && a2 == 0xEC000000746E656DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696E676973 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xE900000000000074)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1000F1894(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000F18E8(uint64_t a1)
{
  v3 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v3;
  v4 = *(a1 + 40);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = v4;
  v5 = *(a1 + 56);
  *(v1 + 48) = *(a1 + 48);
  *(v1 + 56) = v5;
  v6 = *(a1 + 72);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 72) = v6;
  v7 = *(a1 + 88);
  *(v1 + 80) = *(a1 + 80);
  *(v1 + 88) = v7;
  v8 = *(a1 + 104);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 104) = v8;
  *(v1 + 112) = *(a1 + 112);
  v9 = *(a1 + 128);
  *(v1 + 120) = *(a1 + 120);
  *(v1 + 128) = v9;
  v10 = *(a1 + 144);
  *(v1 + 136) = *(a1 + 136);
  *(v1 + 144) = v10;
  *(v1 + 152) = *(a1 + 152);
  v11 = *(a1 + 168);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 168) = v11;
  *(v1 + 176) = *(a1 + 176);
  v12 = *(a1 + 192);
  *(v1 + 184) = *(a1 + 184);
  *(v1 + 192) = v12;
  *(v1 + 200) = *(a1 + 200);
  sub_10000BBC4(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType, v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType, &qword_1008353E0, &qword_1006C0F18);
  *(v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes) = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes);
  *(v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields) = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);
  v13 = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate + 8);
  v14 = (v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate);
  *v14 = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate);
  v14[1] = v13;
  *(v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_enableUAM) = *(a1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_enableUAM);

  return v1;
}

unint64_t sub_1000F1A9C()
{
  result = qword_100839A00;
  if (!qword_100839A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A00);
  }

  return result;
}

unint64_t sub_1000F1AF0()
{
  result = qword_100839A18;
  if (!qword_100839A18)
  {
    sub_10000B870(&qword_100839A10, &qword_1006D4908);
    sub_1000F09F8(&qword_100839A20, 255, type metadata accessor for UserInputValidationURL, &unk_1006D47B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A18);
  }

  return result;
}

unint64_t sub_1000F1BA8()
{
  result = qword_100839A30;
  if (!qword_100839A30)
  {
    sub_10000B870(&qword_100839A28, &unk_1006D4910);
    sub_1000F1C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A30);
  }

  return result;
}

unint64_t sub_1000F1C2C()
{
  result = qword_100839A38;
  if (!qword_100839A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A38);
  }

  return result;
}

unint64_t sub_1000F1C80()
{
  result = qword_100839A60;
  if (!qword_100839A60)
  {
    sub_10000B870(&qword_100839A58, &qword_1006D4920);
    sub_1000F1D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A60);
  }

  return result;
}

unint64_t sub_1000F1D04()
{
  result = qword_100839A68;
  if (!qword_100839A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A68);
  }

  return result;
}

unint64_t sub_1000F1D58()
{
  result = qword_100839A78;
  if (!qword_100839A78)
  {
    sub_10000B870(&qword_100839A70, &qword_1006D4928);
    sub_1000B25AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A78);
  }

  return result;
}

unint64_t sub_1000F1DDC()
{
  result = qword_100839A90;
  if (!qword_100839A90)
  {
    sub_10000B870(&qword_100839A88, &qword_1006D4930);
    sub_1000F09F8(&qword_100839A98, 255, type metadata accessor for EncryptionCertificateInStringFormat, &unk_1006D5E54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839A90);
  }

  return result;
}

unint64_t sub_1000F1EBC()
{
  result = qword_100839AA0;
  if (!qword_100839AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839AA0);
  }

  return result;
}

unint64_t sub_1000F1F10()
{
  result = qword_100839AA8;
  if (!qword_100839AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839AA8);
  }

  return result;
}

uint64_t sub_1000F1F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptionCertificateInStringFormat(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F1FC8(uint64_t a1)
{
  v2 = type metadata accessor for EncryptionCertificateInStringFormat(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000F2024()
{
  result = qword_100839AD8;
  if (!qword_100839AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839AD8);
  }

  return result;
}

unint64_t sub_1000F2078()
{
  result = qword_100839AE0;
  if (!qword_100839AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839AE0);
  }

  return result;
}

unint64_t sub_1000F20CC()
{
  result = qword_100839AE8;
  if (!qword_100839AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839AE8);
  }

  return result;
}

unint64_t sub_1000F2120()
{
  result = qword_100839B00;
  if (!qword_100839B00)
  {
    sub_10000B870(&qword_100839AF8, &qword_1006D4960);
    sub_1000F09F8(&qword_100839AF0, 255, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B00);
  }

  return result;
}

unint64_t sub_1000F21D8()
{
  result = qword_100839B10;
  if (!qword_100839B10)
  {
    sub_10000B870(&qword_100839B08, &qword_1006D4968);
    sub_1000F225C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B10);
  }

  return result;
}

unint64_t sub_1000F225C()
{
  result = qword_100839B18;
  if (!qword_100839B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B18);
  }

  return result;
}

unint64_t sub_1000F22B0()
{
  result = qword_100839B28;
  if (!qword_100839B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B28);
  }

  return result;
}

unint64_t sub_1000F2304()
{
  result = qword_100839B38;
  if (!qword_100839B38)
  {
    sub_10000B870(&qword_100839B30, &qword_1006D4978);
    sub_1000F09F8(&unk_100839B40, v1, type metadata accessor for VerifiedClaimField, &unk_1006D4768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B38);
  }

  return result;
}

unint64_t sub_1000F23B8()
{
  result = qword_100839B68;
  if (!qword_100839B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B68);
  }

  return result;
}

unint64_t sub_1000F240C()
{
  result = qword_100839B70;
  if (!qword_100839B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B70);
  }

  return result;
}

unint64_t sub_1000F2460()
{
  result = qword_100839B80;
  if (!qword_100839B80)
  {
    sub_10000B870(&qword_100839AF8, &qword_1006D4960);
    sub_1000F09F8(&qword_100836DC8, 255, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B80);
  }

  return result;
}

unint64_t sub_1000F2518()
{
  result = qword_100839B88;
  if (!qword_100839B88)
  {
    sub_10000B870(&qword_100839B08, &qword_1006D4968);
    sub_1000F259C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B88);
  }

  return result;
}

unint64_t sub_1000F259C()
{
  result = qword_100839B90;
  if (!qword_100839B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839B90);
  }

  return result;
}

uint64_t sub_1000F260C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100027B9C;

  return sub_1000DE2F4(a1, a2, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_1000F2814()
{
  result = qword_100839C10;
  if (!qword_100839C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839C10);
  }

  return result;
}

uint64_t sub_1000F294C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000F29E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LegacySPWorkflow.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LegacySPWorkflow.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IQModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IQModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000F2DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000F2E74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000F2F24(uint64_t a1)
{
  sub_1000BD2F0();
  if (v1 <= 0x3F)
  {
    sub_1000F2FD4(319, &unk_100839CB0, &type metadata accessor for EncryptedMessageEntity);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F2FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000F3058(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000F3090(uint64_t a1, uint64_t a2)
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
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1000F30C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1000F310C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F3198(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1051))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 976);
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

uint64_t sub_1000F31F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1050) = 0;
    *(result + 1048) = 0;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1051) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1051) = 0;
    }

    if (a2)
    {
      *(result + 976) = a2;
    }
  }

  return result;
}

unint64_t sub_1000F3378()
{
  result = qword_100839CE8;
  if (!qword_100839CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839CE8);
  }

  return result;
}

unint64_t sub_1000F33D0()
{
  result = qword_100839CF0;
  if (!qword_100839CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839CF0);
  }

  return result;
}

unint64_t sub_1000F3428()
{
  result = qword_100839CF8;
  if (!qword_100839CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839CF8);
  }

  return result;
}

unint64_t sub_1000F3480()
{
  result = qword_100839D00;
  if (!qword_100839D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D00);
  }

  return result;
}

unint64_t sub_1000F34D8()
{
  result = qword_100839D08;
  if (!qword_100839D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D08);
  }

  return result;
}

unint64_t sub_1000F3530()
{
  result = qword_100839D10;
  if (!qword_100839D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D10);
  }

  return result;
}

unint64_t sub_1000F3588()
{
  result = qword_100839D18;
  if (!qword_100839D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D18);
  }

  return result;
}

unint64_t sub_1000F35E0()
{
  result = qword_100839D20;
  if (!qword_100839D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D20);
  }

  return result;
}

unint64_t sub_1000F3638()
{
  result = qword_100839D28;
  if (!qword_100839D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D28);
  }

  return result;
}

unint64_t sub_1000F3690()
{
  result = qword_100839D30;
  if (!qword_100839D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D30);
  }

  return result;
}

unint64_t sub_1000F36E8()
{
  result = qword_100839D38;
  if (!qword_100839D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D38);
  }

  return result;
}

unint64_t sub_1000F3740()
{
  result = qword_100839D40;
  if (!qword_100839D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D40);
  }

  return result;
}

unint64_t sub_1000F3798()
{
  result = qword_100839D48;
  if (!qword_100839D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D48);
  }

  return result;
}

unint64_t sub_1000F37F0()
{
  result = qword_100839D50;
  if (!qword_100839D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D50);
  }

  return result;
}

unint64_t sub_1000F3848()
{
  result = qword_100839D58;
  if (!qword_100839D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D58);
  }

  return result;
}

unint64_t sub_1000F38A0()
{
  result = qword_100839D60;
  if (!qword_100839D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D60);
  }

  return result;
}

unint64_t sub_1000F38F8()
{
  result = qword_100839D68;
  if (!qword_100839D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D68);
  }

  return result;
}

unint64_t sub_1000F3950()
{
  result = qword_100839D70;
  if (!qword_100839D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D70);
  }

  return result;
}

unint64_t sub_1000F39A8()
{
  result = qword_100839D78;
  if (!qword_100839D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D78);
  }

  return result;
}

unint64_t sub_1000F3A00()
{
  result = qword_100839D80;
  if (!qword_100839D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D80);
  }

  return result;
}

unint64_t sub_1000F3A58()
{
  result = qword_100839D88;
  if (!qword_100839D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D88);
  }

  return result;
}

unint64_t sub_1000F3AB0()
{
  result = qword_100839D90;
  if (!qword_100839D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D90);
  }

  return result;
}

unint64_t sub_1000F3B08()
{
  result = qword_100839D98;
  if (!qword_100839D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839D98);
  }

  return result;
}

unint64_t sub_1000F3B60()
{
  result = qword_100839DA0;
  if (!qword_100839DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DA0);
  }

  return result;
}

unint64_t sub_1000F3BB8()
{
  result = qword_100839DA8;
  if (!qword_100839DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DA8);
  }

  return result;
}

unint64_t sub_1000F3C10()
{
  result = qword_100839DB0;
  if (!qword_100839DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DB0);
  }

  return result;
}

unint64_t sub_1000F3C68()
{
  result = qword_100839DB8;
  if (!qword_100839DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DB8);
  }

  return result;
}

unint64_t sub_1000F3CC0()
{
  result = qword_100839DC0;
  if (!qword_100839DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DC0);
  }

  return result;
}

unint64_t sub_1000F3D18()
{
  result = qword_100839DC8;
  if (!qword_100839DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DC8);
  }

  return result;
}

unint64_t sub_1000F3D70()
{
  result = qword_100839DD0;
  if (!qword_100839DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DD0);
  }

  return result;
}

unint64_t sub_1000F3DC8()
{
  result = qword_100839DD8;
  if (!qword_100839DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DD8);
  }

  return result;
}

unint64_t sub_1000F3E20()
{
  result = qword_100839DE0;
  if (!qword_100839DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DE0);
  }

  return result;
}

unint64_t sub_1000F3E78()
{
  result = qword_100839DE8;
  if (!qword_100839DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DE8);
  }

  return result;
}

unint64_t sub_1000F3ED0()
{
  result = qword_100839DF0;
  if (!qword_100839DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DF0);
  }

  return result;
}

unint64_t sub_1000F3F28()
{
  result = qword_100839DF8;
  if (!qword_100839DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839DF8);
  }

  return result;
}

unint64_t sub_1000F3F80()
{
  result = qword_100839E00;
  if (!qword_100839E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E00);
  }

  return result;
}

unint64_t sub_1000F3FD4()
{
  result = qword_100839E10;
  if (!qword_100839E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E10);
  }

  return result;
}

unint64_t sub_1000F4028()
{
  result = qword_100839E28;
  if (!qword_100839E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E28);
  }

  return result;
}

unint64_t sub_1000F407C()
{
  result = qword_100839E30;
  if (!qword_100839E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E30);
  }

  return result;
}

unint64_t sub_1000F40D0()
{
  result = qword_100839E38;
  if (!qword_100839E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E38);
  }

  return result;
}

unint64_t sub_1000F4124()
{
  result = qword_100839E40;
  if (!qword_100839E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E40);
  }

  return result;
}

unint64_t sub_1000F4178()
{
  result = qword_100839E50;
  if (!qword_100839E50)
  {
    sub_10000B870(&qword_100839E48, &qword_1006D5F80);
    sub_1000F41FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E50);
  }

  return result;
}

unint64_t sub_1000F41FC()
{
  result = qword_100839E58;
  if (!qword_100839E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E58);
  }

  return result;
}

unint64_t sub_1000F4250()
{
  result = qword_100839E68;
  if (!qword_100839E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E68);
  }

  return result;
}

unint64_t sub_1000F42A4()
{
  result = qword_100839E70;
  if (!qword_100839E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E70);
  }

  return result;
}

unint64_t sub_1000F42F8()
{
  result = qword_100839E78;
  if (!qword_100839E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E78);
  }

  return result;
}

unint64_t sub_1000F434C()
{
  result = qword_100839E80;
  if (!qword_100839E80)
  {
    sub_10000B870(&qword_100839E48, &qword_1006D5F80);
    sub_1000F43D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E80);
  }

  return result;
}

unint64_t sub_1000F43D0()
{
  result = qword_100839E88;
  if (!qword_100839E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E88);
  }

  return result;
}

unint64_t sub_1000F4424()
{
  result = qword_100839E98;
  if (!qword_100839E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839E98);
  }

  return result;
}

unint64_t sub_1000F4478()
{
  result = qword_100839EA0;
  if (!qword_100839EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839EA0);
  }

  return result;
}

unint64_t sub_1000F44FC()
{
  result = qword_100839EB0;
  if (!qword_100839EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839EB0);
  }

  return result;
}

unint64_t sub_1000F4550()
{
  result = qword_100839EC0;
  if (!qword_100839EC0)
  {
    sub_10000B870(&qword_100839EB8, &qword_1006D5FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839EC0);
  }

  return result;
}

unint64_t sub_1000F45CC()
{
  result = qword_100839EC8;
  if (!qword_100839EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839EC8);
  }

  return result;
}

unint64_t sub_1000F4620()
{
  result = qword_100839ED8;
  if (!qword_100839ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839ED8);
  }

  return result;
}

unint64_t sub_1000F46AC()
{
  result = qword_100839EE8;
  if (!qword_100839EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839EE8);
  }

  return result;
}

unint64_t sub_1000F4700()
{
  result = qword_100839EF8;
  if (!qword_100839EF8)
  {
    sub_10000B870(&qword_100839EB8, &qword_1006D5FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839EF8);
  }

  return result;
}

unint64_t sub_1000F477C()
{
  result = qword_100839F00;
  if (!qword_100839F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F00);
  }

  return result;
}

unint64_t sub_1000F47D0()
{
  result = qword_100839F18;
  if (!qword_100839F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F18);
  }

  return result;
}

uint64_t sub_1000F4824(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1000F4834()
{
  result = qword_100839F20;
  if (!qword_100839F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F20);
  }

  return result;
}

unint64_t sub_1000F4888()
{
  result = qword_100839F28;
  if (!qword_100839F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F28);
  }

  return result;
}

unint64_t sub_1000F48DC()
{
  result = qword_100839F30;
  if (!qword_100839F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F30);
  }

  return result;
}

unint64_t sub_1000F4930()
{
  result = qword_100839F40;
  if (!qword_100839F40)
  {
    sub_10000B870(&qword_100839F38, &qword_1006D5FD0);
    sub_1000F49B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F40);
  }

  return result;
}

unint64_t sub_1000F49B4()
{
  result = qword_100839F48;
  if (!qword_100839F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F48);
  }

  return result;
}

unint64_t sub_1000F4A08()
{
  result = qword_100839F58;
  if (!qword_100839F58)
  {
    sub_10000B870(&qword_100839F50, &qword_1006D5FD8);
    sub_1000F4A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F58);
  }

  return result;
}

unint64_t sub_1000F4A8C()
{
  result = qword_100839F60;
  if (!qword_100839F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F60);
  }

  return result;
}

unint64_t sub_1000F4AE0()
{
  result = qword_100839F68;
  if (!qword_100839F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F68);
  }

  return result;
}

unint64_t sub_1000F4B9C()
{
  result = qword_100839F78;
  if (!qword_100839F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F78);
  }

  return result;
}

unint64_t sub_1000F4BF0()
{
  result = qword_100839F80;
  if (!qword_100839F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F80);
  }

  return result;
}

unint64_t sub_1000F4C44()
{
  result = qword_100839F88;
  if (!qword_100839F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F88);
  }

  return result;
}

unint64_t sub_1000F4C98()
{
  result = qword_100839F90;
  if (!qword_100839F90)
  {
    sub_10000B870(&qword_100839F38, &qword_1006D5FD0);
    sub_1000F4D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F90);
  }

  return result;
}

unint64_t sub_1000F4D1C()
{
  result = qword_100839F98;
  if (!qword_100839F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839F98);
  }

  return result;
}

unint64_t sub_1000F4D70()
{
  result = qword_100839FA0;
  if (!qword_100839FA0)
  {
    sub_10000B870(&qword_100839F50, &qword_1006D5FD8);
    sub_1000F4DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FA0);
  }

  return result;
}

unint64_t sub_1000F4DF4()
{
  result = qword_100839FA8;
  if (!qword_100839FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FA8);
  }

  return result;
}

unint64_t sub_1000F4E48()
{
  result = qword_100839FB0;
  if (!qword_100839FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FB0);
  }

  return result;
}

unint64_t sub_1000F4E9C(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1000F4EF0(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for IQCriteria.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 44;
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

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IQCriteria.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000F50E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000F5134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F51C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000F520C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for IQPassportProperties(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IQPassportProperties(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IQPassportProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1000F5338(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F535C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1000F53A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F5408(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000F545C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for IQBoolProperties(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IQBoolProperties(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IQBoolProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1000F5584(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000F5598(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_1000F55F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1000F5660()
{
  result = qword_100839FC8;
  if (!qword_100839FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FC8);
  }

  return result;
}

unint64_t sub_1000F56B8()
{
  result = qword_100839FD0;
  if (!qword_100839FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FD0);
  }

  return result;
}

unint64_t sub_1000F5710()
{
  result = qword_100839FD8;
  if (!qword_100839FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FD8);
  }

  return result;
}

unint64_t sub_1000F5768()
{
  result = qword_100839FE0;
  if (!qword_100839FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FE0);
  }

  return result;
}

unint64_t sub_1000F57C0()
{
  result = qword_100839FE8;
  if (!qword_100839FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FE8);
  }

  return result;
}

unint64_t sub_1000F5818()
{
  result = qword_100839FF0;
  if (!qword_100839FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FF0);
  }

  return result;
}

unint64_t sub_1000F5870()
{
  result = qword_100839FF8;
  if (!qword_100839FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839FF8);
  }

  return result;
}

unint64_t sub_1000F58C8()
{
  result = qword_10083A000;
  if (!qword_10083A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A000);
  }

  return result;
}

unint64_t sub_1000F5920()
{
  result = qword_10083A008;
  if (!qword_10083A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A008);
  }

  return result;
}

unint64_t sub_1000F5978()
{
  result = qword_10083A010;
  if (!qword_10083A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A010);
  }

  return result;
}

unint64_t sub_1000F59D0()
{
  result = qword_10083A018;
  if (!qword_10083A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A018);
  }

  return result;
}

unint64_t sub_1000F5A28()
{
  result = qword_10083A020;
  if (!qword_10083A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A020);
  }

  return result;
}

unint64_t sub_1000F5A80()
{
  result = qword_10083A028;
  if (!qword_10083A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A028);
  }

  return result;
}

unint64_t sub_1000F5AD8()
{
  result = qword_10083A030;
  if (!qword_10083A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A030);
  }

  return result;
}

unint64_t sub_1000F5B30()
{
  result = qword_10083A038;
  if (!qword_10083A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A038);
  }

  return result;
}

unint64_t sub_1000F5B88()
{
  result = qword_10083A040;
  if (!qword_10083A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A040);
  }

  return result;
}

unint64_t sub_1000F5BE0()
{
  result = qword_10083A048;
  if (!qword_10083A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A048);
  }

  return result;
}

unint64_t sub_1000F5C38()
{
  result = qword_10083A050;
  if (!qword_10083A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A050);
  }

  return result;
}

unint64_t sub_1000F5C90()
{
  result = qword_10083A058;
  if (!qword_10083A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A058);
  }

  return result;
}

unint64_t sub_1000F5CE4()
{
  result = qword_10083A068;
  if (!qword_10083A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A068);
  }

  return result;
}

unint64_t sub_1000F5D38()
{
  result = qword_10083A078;
  if (!qword_10083A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A078);
  }

  return result;
}

unint64_t sub_1000F5D8C()
{
  result = qword_10083A080;
  if (!qword_10083A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A080);
  }

  return result;
}

unint64_t sub_1000F5DE0()
{
  result = qword_10083A090;
  if (!qword_10083A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A090);
  }

  return result;
}

unint64_t sub_1000F5E34()
{
  result = qword_10083A0B8;
  if (!qword_10083A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A0B8);
  }

  return result;
}

unint64_t sub_1000F5E88()
{
  result = qword_10083A0C8;
  if (!qword_10083A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A0C8);
  }

  return result;
}

unint64_t sub_1000F5EDC()
{
  result = qword_10083A0E8;
  if (!qword_10083A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A0E8);
  }

  return result;
}

unint64_t sub_1000F5F30()
{
  result = qword_10083A108;
  if (!qword_10083A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A108);
  }

  return result;
}

unint64_t sub_1000F5F84()
{
  result = qword_10083A118;
  if (!qword_10083A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A118);
  }

  return result;
}

unint64_t sub_1000F5FD8()
{
  result = qword_10083A128;
  if (!qword_10083A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A128);
  }

  return result;
}

unint64_t sub_1000F6094()
{
  result = qword_10083A138;
  if (!qword_10083A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A138);
  }

  return result;
}

unint64_t sub_1000F60E8()
{
  result = qword_10083A148;
  if (!qword_10083A148)
  {
    sub_10000B870(&qword_10083A140, &qword_1006D6D58);
    sub_1000F616C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A148);
  }

  return result;
}

unint64_t sub_1000F616C()
{
  result = qword_10083A150;
  if (!qword_10083A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A150);
  }

  return result;
}

unint64_t sub_1000F61C0()
{
  result = qword_10083A160;
  if (!qword_10083A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A160);
  }

  return result;
}

unint64_t sub_1000F6214()
{
  result = qword_10083A198;
  if (!qword_10083A198)
  {
    sub_10000B870(&qword_10083A140, &qword_1006D6D58);
    sub_1000F6298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A198);
  }

  return result;
}

unint64_t sub_1000F6298()
{
  result = qword_10083A1A0;
  if (!qword_10083A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1A0);
  }

  return result;
}

__n128 sub_1000F639C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000F63B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_1000F63F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000F6450()
{
  result = qword_10083A1B0;
  if (!qword_10083A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1B0);
  }

  return result;
}

unint64_t sub_1000F64A8()
{
  result = qword_10083A1B8;
  if (!qword_10083A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1B8);
  }

  return result;
}

unint64_t sub_1000F6500()
{
  result = qword_10083A1C0;
  if (!qword_10083A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1C0);
  }

  return result;
}

unint64_t sub_1000F6558()
{
  result = qword_10083A1C8;
  if (!qword_10083A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1C8);
  }

  return result;
}

unint64_t sub_1000F65B0()
{
  result = qword_10083A1D0;
  if (!qword_10083A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1D0);
  }

  return result;
}

unint64_t sub_1000F6608()
{
  result = qword_10083A1D8;
  if (!qword_10083A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1D8);
  }

  return result;
}

unint64_t sub_1000F6660()
{
  result = qword_10083A1E0;
  if (!qword_10083A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1E0);
  }

  return result;
}

unint64_t sub_1000F66B8()
{
  result = qword_10083A1E8;
  if (!qword_10083A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1E8);
  }

  return result;
}

unint64_t sub_1000F6710()
{
  result = qword_10083A1F0;
  if (!qword_10083A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1F0);
  }

  return result;
}

unint64_t sub_1000F6768()
{
  result = qword_10083A1F8;
  if (!qword_10083A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A1F8);
  }

  return result;
}

unint64_t sub_1000F67C0()
{
  result = qword_10083A200;
  if (!qword_10083A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A200);
  }

  return result;
}

unint64_t sub_1000F6818()
{
  result = qword_10083A208;
  if (!qword_10083A208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A208);
  }

  return result;
}

unint64_t sub_1000F6870()
{
  result = qword_10083A210;
  if (!qword_10083A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A210);
  }

  return result;
}

unint64_t sub_1000F68C8()
{
  result = qword_10083A218;
  if (!qword_10083A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A218);
  }

  return result;
}

unint64_t sub_1000F6920()
{
  result = qword_10083A220;
  if (!qword_10083A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A220);
  }

  return result;
}

unint64_t sub_1000F6978()
{
  result = qword_10083A228;
  if (!qword_10083A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A228);
  }

  return result;
}

unint64_t sub_1000F69D0()
{
  result = qword_10083A230;
  if (!qword_10083A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A230);
  }

  return result;
}

unint64_t sub_1000F6A28()
{
  result = qword_10083A238;
  if (!qword_10083A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A238);
  }

  return result;
}

unint64_t sub_1000F6A80()
{
  result = qword_10083A240;
  if (!qword_10083A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A240);
  }

  return result;
}

unint64_t sub_1000F6AD8()
{
  result = qword_10083A248;
  if (!qword_10083A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A248);
  }

  return result;
}

unint64_t sub_1000F6B30()
{
  result = qword_10083A250;
  if (!qword_10083A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A250);
  }

  return result;
}

unint64_t sub_1000F6B88()
{
  result = qword_10083A258;
  if (!qword_10083A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A258);
  }

  return result;
}

unint64_t sub_1000F6BE0()
{
  result = qword_10083A260;
  if (!qword_10083A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A260);
  }

  return result;
}

unint64_t sub_1000F6C38()
{
  result = qword_10083A268;
  if (!qword_10083A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A268);
  }

  return result;
}

unint64_t sub_1000F6C90()
{
  result = qword_10083A270;
  if (!qword_10083A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A270);
  }

  return result;
}

unint64_t sub_1000F6CE8()
{
  result = qword_10083A278;
  if (!qword_10083A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A278);
  }

  return result;
}

unint64_t sub_1000F6D40()
{
  result = qword_10083A280;
  if (!qword_10083A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A280);
  }

  return result;
}

unint64_t sub_1000F6D98()
{
  result = qword_10083A288;
  if (!qword_10083A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A288);
  }

  return result;
}

unint64_t sub_1000F6DF0()
{
  result = qword_10083A290;
  if (!qword_10083A290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A290);
  }

  return result;
}

unint64_t sub_1000F6E48()
{
  result = qword_10083A298;
  if (!qword_10083A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A298);
  }

  return result;
}

unint64_t sub_1000F6EA0()
{
  result = qword_10083A2A0;
  if (!qword_10083A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2A0);
  }

  return result;
}

unint64_t sub_1000F6EF8()
{
  result = qword_10083A2A8;
  if (!qword_10083A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2A8);
  }

  return result;
}

unint64_t sub_1000F6F50()
{
  result = qword_10083A2B0;
  if (!qword_10083A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2B0);
  }

  return result;
}

unint64_t sub_1000F6FA4()
{
  result = qword_10083A2C0;
  if (!qword_10083A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2C0);
  }

  return result;
}

unint64_t sub_1000F700C()
{
  result = qword_10083A2D0;
  if (!qword_10083A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2D0);
  }

  return result;
}

unint64_t sub_1000F7064()
{
  result = qword_10083A2D8;
  if (!qword_10083A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2D8);
  }

  return result;
}

unint64_t sub_1000F70BC()
{
  result = qword_10083A2E0;
  if (!qword_10083A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083A2E0);
  }

  return result;
}

uint64_t sub_1000F7180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1000F71C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F722C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F7274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000F72E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v19 = a5;
  v9 = sub_100007224(&qword_10083A378, &qword_1006D7D68);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_10000BA08(a1, a1[3]);
  sub_1000F9888();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v20 = 0;
  sub_1000F9984();
  v13 = v15;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v13)
  {
    LOBYTE(v16) = v19 & 1;
    v20 = 1;
    sub_1000F99D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000F748C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a3;
  v7 = sub_100007224(&qword_10083A418, &qword_1006D8268);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000FA148();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  sub_1000FA2CC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[1] = a4;
    v13 = 2;
    sub_100007224(&qword_100837150, &qword_1006C96A0);
    sub_1000FA1F0(&qword_1008371A8, &qword_100834E58, &protocol conformance descriptor for HPKEEncryptedMessageWithKeyWrap<A>, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000F76D8()
{
  if (*v0)
  {
    return 0x737574617473;
  }

  else
  {
    return 0x64726F636572;
  }
}

uint64_t sub_1000F7704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64726F636572 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000F77D8(uint64_t a1)
{
  v2 = sub_1000F9888();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F7814(uint64_t a1)
{
  v2 = sub_1000F9888();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F7850@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000F89AC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1000F78AC()
{
  v1 = 0x644964726F636572;
  if (*v0 != 1)
  {
    v1 = 0x6574707972636E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000F790C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F8BB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000F7934(uint64_t a1)
{
  v2 = sub_1000FA148();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F7970(uint64_t a1)
{
  v2 = sub_1000FA148();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F79AC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000F8CD0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1000F79FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x54554F5F54504FLL;
  }

  else
  {
    v3 = 0x4E495F54504FLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x54554F5F54504FLL;
  }

  else
  {
    v5 = 0x4E495F54504FLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000F7AA0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F7B20(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000F7B8C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F7C08@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FA8A0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}