uint64_t sub_10019B758()
{
  v1 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v1 - 8);
  v3 = &v117 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_196;
  }

  while (1)
  {
    v12 = qword_10051B7F0;
    *v11 = qword_10051B7F0;
    (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
    v13 = v12;
    LOBYTE(v12) = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v11, v8);
    if ((v12 & 1) == 0)
    {
      __break(1u);
LABEL_198:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        return result;
      }

      goto LABEL_5;
    }

    v11 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
    swift_beginAccess();
    v14 = *(v0 + v11);
    if (v14 >> 62)
    {
      goto LABEL_198;
    }

    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_5:
    v16 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
    swift_beginAccess();
    sub_1000938D4(v0 + v16, v3, &unk_10050BE80, &unk_10040B360);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      break;
    }

    sub_100075768(v3, &unk_10050BE80, &unk_10040B360);
    v130 = v0;
    v7 = *(v0 + v11);
    if (!(v7 >> 62))
    {
      v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_8;
    }

LABEL_202:
    v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_8:
    v127 = v11;
    if (!v17)
    {
      goto LABEL_182;
    }

    v5 = v7 & 0xC000000000000001;
    v123 = v7 & 0xFFFFFFFFFFFFFF8;
    v122 = v7 + 32;

    v18 = 0;
    v9 = &OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
    v126 = v7;
    v125 = v17;
    v124 = v7 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v123 + 16))
        {
          goto LABEL_201;
        }

        v8 = *(v122 + 8 * v18);
      }

      v19 = OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
      sub_1000938D4(v8 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken, v142, &qword_100502438, &qword_100409990);
      if (v143)
      {
        break;
      }

      sub_100075768(v142, &qword_100502438, &qword_100409990);
      v35 = __OFADD__(v18++, 1);
      if (v35)
      {
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
        goto LABEL_202;
      }

LABEL_11:
      if (v18 == v17)
      {

LABEL_182:
        v0 = v130;
        v3 = *(v130 + v11);
        if (v3 >> 62)
        {
          goto LABEL_205;
        }

        v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
LABEL_206:
          v104 = 0;
          goto LABEL_207;
        }

LABEL_184:
        v22 = v3 & 0xC000000000000001;
        if ((v3 & 0xC000000000000001) != 0)
        {
          goto LABEL_231;
        }

        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_248;
        }

        v103 = *(v3 + 32);

        if (v7 != 1)
        {
          goto LABEL_232;
        }

        goto LABEL_187;
      }
    }

    sub_100075768(v142, &qword_100502438, &qword_100409990);
    sub_1000938D4(v8 + v19, v142, &qword_100502438, &qword_100409990);
    if (!v143)
    {
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __DataStorage._length.getter();
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      result = __DataStorage._length.getter();
      __break(1u);
      return result;
    }

    v129 = v18;
    v134 = *sub_1000752B0(v142, v143);
    v20 = [objc_opt_self() sessionManager];
    v3 = [v20 getActiveDCKSessions];

    sub_10009393C(0, &qword_100505370, off_1004BE540);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v128 = v8;
    if (v4 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0 = v130;
    if (!v21)
    {
LABEL_10:

      sub_1000752F4(v142);
      v11 = v127;
      v7 = v126;
      v17 = v125;
      v5 = v124;
      v9 = &OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
      v18 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        goto LABEL_200;
      }

      goto LABEL_11;
    }

    v22 = 0;
    v132 = v4 & 0xFFFFFFFFFFFFFF8;
    v133 = v4 & 0xC000000000000001;
    v131 = v4;
    while (1)
    {
      if (v133)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v132 + 16))
        {
          goto LABEL_195;
        }

        v23 = *(v4 + 8 * v22 + 32);
      }

      v7 = v23;
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v24 = [v23 activeEndpoint];
      if (!v24)
      {
        v5 = 0;
        v3 = *(v134 + 16);
        v11 = *(v134 + 24);
        v9 = 0xF000000000000000;
LABEL_31:
        sub_100069E2C(v3, v11);

        if (v11 >> 60 == 15)
        {

          sub_10006A2D0(v5, v9);
LABEL_193:
          sub_1000752F4(v142);
          swift_beginAccess();
          v105 = sub_100196708(v129);
          swift_endAccess();
          return v105;
        }

LABEL_32:
        sub_10006A2D0(v5, v9);
        v28 = v3;
        v29 = v11;
LABEL_33:
        sub_10006A2D0(v28, v29);
        goto LABEL_34;
      }

      v25 = v24;
      v26 = [v24 publicKeyIdentifier];

      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v27;

      v3 = *(v134 + 16);
      v11 = *(v134 + 24);
      if (v9 >> 60 == 15)
      {
        goto LABEL_31;
      }

      if (v11 >> 60 == 15)
      {
        sub_100069E2C(*(v134 + 16), *(v134 + 24));

        goto LABEL_32;
      }

      v30 = v9 >> 62;
      v31 = v11 >> 62;
      if (v9 >> 62 == 3)
      {
        v32 = 0;
        if (!v5 && v9 == 0xC000000000000000 && v11 >> 62 == 3)
        {
          v32 = 0;
          if (!v3 && v11 == 0xC000000000000000)
          {
            sub_100069E2C(0, 0xC000000000000000);
            sub_100069E2C(0, 0xC000000000000000);
            sub_10006A2BC(0, 0xC000000000000000);

            sub_10006A2D0(0, 0xC000000000000000);
            sub_10006A178(0, 0xC000000000000000);
            sub_10006A2D0(0, 0xC000000000000000);
            v5 = 0;
            goto LABEL_191;
          }
        }

LABEL_52:
        if (v31 > 1)
        {
          goto LABEL_46;
        }

        goto LABEL_53;
      }

      if (v30 > 1)
      {
        if (v30 == 2)
        {
          v38 = *(v5 + 16);
          v37 = *(v5 + 24);
          v35 = __OFSUB__(v37, v38);
          v32 = v37 - v38;
          if (v35)
          {
            goto LABEL_230;
          }

          goto LABEL_52;
        }

        v32 = 0;
        if (v31 > 1)
        {
          goto LABEL_46;
        }
      }

      else if (v30)
      {
        LODWORD(v32) = HIDWORD(v5) - v5;
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:

          v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (v7 != 1)
          {
LABEL_232:
            v115 = 1;
            while (1)
            {
              if (v22)
              {
                v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v116 = v115 + 1;
                if (__OFADD__(v115, 1))
                {
                  goto LABEL_245;
                }
              }

              else
              {
                if ((v115 & 0x8000000000000000) != 0)
                {
                  goto LABEL_246;
                }

                if (v115 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_247;
                }

                v104 = *(v3 + 8 * v115 + 32);

                v116 = v115 + 1;
                if (__OFADD__(v115, 1))
                {
LABEL_245:
                  __break(1u);
LABEL_246:
                  __break(1u);
LABEL_247:
                  __break(1u);
LABEL_248:
                  __break(1u);
LABEL_249:
                  __break(1u);
LABEL_250:
                  __break(1u);
LABEL_251:
                  __break(1u);
LABEL_252:
                  __break(1u);
LABEL_253:
                  __break(1u);
LABEL_254:
                  __break(1u);
LABEL_255:
                  __break(1u);
LABEL_256:
                  __break(1u);
LABEL_257:
                  __break(1u);
LABEL_258:
                  __break(1u);
LABEL_259:
                  __break(1u);
LABEL_260:
                  __break(1u);
LABEL_261:
                  __break(1u);
LABEL_262:
                  __break(1u);
LABEL_263:
                  __break(1u);
LABEL_264:
                  __break(1u);
LABEL_265:
                  __break(1u);
LABEL_266:
                  __break(1u);
LABEL_267:
                  __break(1u);
                }
              }

              if (*(v103 + OBJC_IVAR____TtC10seserviced9SERequest_priority) < *(v104 + OBJC_IVAR____TtC10seserviced9SERequest_priority))
              {

                v103 = v104;
                v115 = v116;
                if (v116 == v7)
                {
                  goto LABEL_188;
                }
              }

              else
              {

                ++v115;
                if (v116 == v7)
                {
                  break;
                }
              }
            }
          }

LABEL_187:
          v104 = v103;
LABEL_188:

          v11 = v127;
LABEL_207:
          v106 = *(v0 + v11);
          if (v106 >> 62)
          {
            goto LABEL_227;
          }

          for (i = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
          {

            v108 = 0;
            while (1)
            {
              if ((v106 & 0xC000000000000001) != 0)
              {
                v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v108 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_226;
                }

                v109 = *(v106 + 8 * v108 + 32);
              }

              if (v104 && v109 == v104)
              {

                swift_beginAccess();
                v114 = sub_100196708(v108);
                swift_endAccess();

                return v114;
              }

              v110 = v108 + 1;
              if (__OFADD__(v108, 1))
              {
                break;
              }

              ++v108;
              if (v110 == i)
              {

                goto LABEL_219;
              }
            }

            __break(1u);
LABEL_226:
            __break(1u);
LABEL_227:
            ;
          }

LABEL_219:
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v111, v112))
          {
            v113 = swift_slowAlloc();
            *v113 = 0;
            _os_log_impl(&_mh_execute_header, v111, v112, "Should never get here", v113, 2u);
          }

          return 0;
        }

        v32 = v32;
        if (v31 > 1)
        {
LABEL_46:
          if (v31 != 2)
          {
            if (!v32)
            {
              goto LABEL_189;
            }

LABEL_71:
            sub_100069E2C(*(v134 + 16), *(v134 + 24));
            sub_100069E2C(v3, v11);
            sub_10006A2BC(v5, v9);

            sub_10006A2D0(v3, v11);
            sub_10006A178(v3, v11);
            sub_10006A2D0(v5, v9);
            v28 = v5;
            v29 = v9;
            goto LABEL_33;
          }

          v34 = *(v3 + 16);
          v33 = *(v3 + 24);
          v35 = __OFSUB__(v33, v34);
          v36 = v33 - v34;
          if (v35)
          {
            goto LABEL_204;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v32 = BYTE6(v9);
        if (v31 > 1)
        {
          goto LABEL_46;
        }
      }

LABEL_53:
      if (!v31)
      {
        v36 = BYTE6(v11);
LABEL_55:
        if (v32 != v36)
        {
          goto LABEL_71;
        }

        goto LABEL_61;
      }

      if (__OFSUB__(HIDWORD(v3), v3))
      {
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
          goto LABEL_206;
        }

        goto LABEL_184;
      }

      if (v32 != HIDWORD(v3) - v3)
      {
        goto LABEL_71;
      }

LABEL_61:
      if (v32 < 1)
      {
LABEL_189:
        sub_100069E2C(*(v134 + 16), *(v134 + 24));
        sub_100069E2C(v3, v11);
        sub_10006A2BC(v5, v9);
LABEL_190:

        sub_10006A2D0(v3, v11);
        sub_10006A178(v3, v11);
        sub_10006A2D0(v5, v9);
LABEL_191:
        sub_10006A2D0(v5, v9);
LABEL_192:

        goto LABEL_193;
      }

      if (v30 > 1)
      {
        if (v30 != 2)
        {
          memset(__s1, 0, 14);
          if (v31)
          {
            if (v31 == 2)
            {
              v48 = *(v3 + 24);
              v121 = *(v3 + 16);
              v120 = v48;
              sub_100069E2C(v3, v11);
              sub_100069E2C(v3, v11);
              sub_10006A2BC(v5, v9);
              v49 = __DataStorage._bytes.getter();
              if (v49)
              {
                v50 = v49;
                v51 = __DataStorage._offset.getter();
                v52 = v121;
                if (__OFSUB__(v121, v51))
                {
                  goto LABEL_263;
                }

                v119 = (v121 - v51 + v50);
              }

              else
              {
                v119 = 0;
                v52 = v121;
              }

              v84 = v120 - v52;
              if (__OFSUB__(v120, v52))
              {
                goto LABEL_255;
              }

              v85 = __DataStorage._length.getter();
              v70 = v119;
              if (!v119)
              {
                goto LABEL_283;
              }

LABEL_133:
              if (v85 >= v84)
              {
                v69 = v84;
              }

              else
              {
                v69 = v85;
              }

LABEL_136:
              v86 = memcmp(__s1, v70, v69);

              sub_10006A178(v3, v11);
              sub_10006A2D0(v5, v9);
              sub_10006A2D0(v3, v11);
              sub_10006A2D0(v5, v9);
              v0 = v130;
              if (!v86)
              {
                goto LABEL_192;
              }

              goto LABEL_34;
            }

            v121 = v3;
            v120 = (v3 >> 32) - v3;
            if (v3 >> 32 < v3)
            {
              goto LABEL_252;
            }

            sub_100069E2C(v3, v11);
            sub_100069E2C(v3, v11);
            sub_10006A2BC(v5, v9);
            v66 = __DataStorage._bytes.getter();
            if (!v66)
            {
              goto LABEL_279;
            }

            v67 = v66;
            v68 = __DataStorage._offset.getter();
            if (__OFSUB__(v121, v68))
            {
              goto LABEL_257;
            }

            v42 = (v121 - v68 + v67);
            v43 = __DataStorage._length.getter();
            if (!v42)
            {
              goto LABEL_280;
            }

LABEL_112:
            if (v43 >= v120)
            {
              v69 = v120;
            }

            else
            {
              v69 = v43;
            }

            v70 = v42;
            goto LABEL_136;
          }

          goto LABEL_90;
        }

        v121 = *(v5 + 16);
        sub_100069E2C(v3, v11);
        sub_100069E2C(v3, v11);
        sub_10006A2BC(v5, v9);
        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v120 = v44;
          v45 = __DataStorage._offset.getter();
          if (__OFSUB__(v121, v45))
          {
            goto LABEL_250;
          }

          v121 = v121 - v45 + v120;
        }

        else
        {
          v121 = 0;
        }

        __DataStorage._length.getter();
        if (v31 == 2)
        {
          v71 = *(v3 + 24);
          v120 = *(v3 + 16);
          v119 = v71;
          v72 = __DataStorage._bytes.getter();
          if (v72)
          {
            v73 = v72;
            v74 = __DataStorage._offset.getter();
            v75 = v120;
            if (__OFSUB__(v120, v74))
            {
              goto LABEL_264;
            }

            v118 = (v120 - v74 + v73);
          }

          else
          {
            v118 = 0;
            v75 = v120;
          }

          v87 = &v119[-v75];
          if (__OFSUB__(v119, v75))
          {
            goto LABEL_259;
          }

          v88 = __DataStorage._length.getter();
          if (v88 >= v87)
          {
            v89 = v87;
          }

          else
          {
            v89 = v88;
          }

          v76 = v121;
          if (!v121)
          {
            goto LABEL_273;
          }

          v0 = v130;
          v83 = v118;
          if (!v118)
          {
            goto LABEL_272;
          }

LABEL_160:
          if (v76 == v83)
          {
            goto LABEL_190;
          }

          v82 = v89;
          goto LABEL_169;
        }

        if (v31 == 1)
        {
          v120 = (v3 >> 32) - v3;
          if (v3 >> 32 < v3)
          {
            goto LABEL_256;
          }

          v56 = __DataStorage._bytes.getter();
          if (v56)
          {
            v119 = v56;
            v57 = __DataStorage._offset.getter();
            if (__OFSUB__(v3, v57))
            {
              goto LABEL_266;
            }

            v119 += v3 - v57;
          }

          else
          {
            v119 = 0;
          }

          v90 = v121;
          v91 = __DataStorage._length.getter();
          v92 = v120;
          if (v91 < v120)
          {
            v92 = v91;
          }

          if (!v90)
          {
            goto LABEL_271;
          }

          v0 = v130;
          v83 = v119;
          if (!v119)
          {
            goto LABEL_270;
          }

          if (v90 == v119)
          {
            goto LABEL_190;
          }

          v82 = v92;
          v76 = v90;
          goto LABEL_169;
        }

        v0 = v130;
        __s1[0] = v3;
        LOWORD(__s1[1]) = v11;
        BYTE2(__s1[1]) = BYTE2(v11);
        BYTE3(__s1[1]) = BYTE3(v11);
        BYTE4(__s1[1]) = BYTE4(v11);
        BYTE5(__s1[1]) = BYTE5(v11);
        v76 = v121;
        if (!v121)
        {
          goto LABEL_269;
        }
      }

      else
      {
        if (!v30)
        {
          __s1[0] = v5;
          LOWORD(__s1[1]) = v9;
          BYTE2(__s1[1]) = BYTE2(v9);
          BYTE3(__s1[1]) = BYTE3(v9);
          BYTE4(__s1[1]) = BYTE4(v9);
          BYTE5(__s1[1]) = BYTE5(v9);
          if (v31)
          {
            if (v31 != 1)
            {
              v61 = *(v3 + 24);
              v121 = *(v3 + 16);
              v120 = v61;
              sub_100069E2C(v3, v11);
              sub_100069E2C(v3, v11);
              sub_10006A2BC(v5, v9);
              v62 = __DataStorage._bytes.getter();
              if (v62)
              {
                v63 = v62;
                v64 = __DataStorage._offset.getter();
                v65 = v121;
                if (__OFSUB__(v121, v64))
                {
                  goto LABEL_262;
                }

                v119 = (v121 - v64 + v63);
              }

              else
              {
                v119 = 0;
                v65 = v121;
              }

              v84 = v120 - v65;
              if (__OFSUB__(v120, v65))
              {
                goto LABEL_254;
              }

              v85 = __DataStorage._length.getter();
              v70 = v119;
              if (!v119)
              {
                goto LABEL_281;
              }

              goto LABEL_133;
            }

            v121 = v3;
            v120 = (v3 >> 32) - v3;
            if (v3 >> 32 < v3)
            {
              goto LABEL_253;
            }

            sub_100069E2C(v3, v11);
            sub_100069E2C(v3, v11);
            sub_10006A2BC(v5, v9);
            v39 = __DataStorage._bytes.getter();
            if (!v39)
            {
              goto LABEL_284;
            }

            v40 = v39;
            v41 = __DataStorage._offset.getter();
            if (__OFSUB__(v121, v41))
            {
              goto LABEL_258;
            }

            v42 = (v121 - v41 + v40);
            v43 = __DataStorage._length.getter();
            if (!v42)
            {
              goto LABEL_282;
            }

            goto LABEL_112;
          }

LABEL_90:
          __s2 = v3;
          v136 = v11;
          v137 = BYTE2(v11);
          v138 = BYTE3(v11);
          v139 = BYTE4(v11);
          v140 = BYTE5(v11);
          sub_100069E2C(v3, v11);
          sub_100069E2C(v3, v11);
          sub_10006A2BC(v5, v9);
          v53 = memcmp(__s1, &__s2, BYTE6(v11));

          sub_10006A178(v3, v11);
          sub_10006A2D0(v5, v9);
          v54 = v3;
          v55 = v11;
          goto LABEL_170;
        }

        v121 = v5;
        if (v5 > v5 >> 32)
        {
          goto LABEL_249;
        }

        sub_100069E2C(v3, v11);
        sub_100069E2C(v3, v11);
        sub_10006A2BC(v5, v9);
        v46 = __DataStorage._bytes.getter();
        if (v46)
        {
          v120 = v46;
          v47 = __DataStorage._offset.getter();
          if (__OFSUB__(v121, v47))
          {
            goto LABEL_251;
          }

          v121 = v121 - v47 + v120;
        }

        else
        {
          v121 = 0;
        }

        __DataStorage._length.getter();
        if (v31 == 2)
        {
          v77 = *(v3 + 24);
          v120 = *(v3 + 16);
          v119 = v77;
          v78 = __DataStorage._bytes.getter();
          if (v78)
          {
            v79 = v78;
            v80 = __DataStorage._offset.getter();
            v81 = v120;
            if (__OFSUB__(v120, v80))
            {
              goto LABEL_265;
            }

            v118 = (v120 - v80 + v79);
          }

          else
          {
            v118 = 0;
            v81 = v120;
          }

          v93 = &v119[-v81];
          if (__OFSUB__(v119, v81))
          {
            goto LABEL_261;
          }

          v94 = __DataStorage._length.getter();
          if (v94 >= v93)
          {
            v89 = v93;
          }

          else
          {
            v89 = v94;
          }

          v76 = v121;
          if (!v121)
          {
            goto LABEL_278;
          }

          v0 = v130;
          v83 = v118;
          if (!v118)
          {
            goto LABEL_277;
          }

          goto LABEL_160;
        }

        if (v31 == 1)
        {
          v120 = (v3 >> 32) - v3;
          if (v3 >> 32 < v3)
          {
            goto LABEL_260;
          }

          v58 = __DataStorage._bytes.getter();
          if (v58)
          {
            v119 = v58;
            v59 = __DataStorage._offset.getter();
            if (__OFSUB__(v3, v59))
            {
              goto LABEL_267;
            }

            v60 = &v119[v3 - v59];
          }

          else
          {
            v60 = 0;
          }

          v95 = __DataStorage._length.getter();
          v96 = v120;
          if (v95 < v120)
          {
            v96 = v95;
          }

          v76 = v121;
          if (!v121)
          {
            goto LABEL_276;
          }

          v0 = v130;
          if (!v60)
          {
            goto LABEL_275;
          }

          if (v121 == v60)
          {
            goto LABEL_190;
          }

          v82 = v96;
          v83 = v60;
          goto LABEL_169;
        }

        v0 = v130;
        v76 = v121;
        __s1[0] = v3;
        LOWORD(__s1[1]) = v11;
        BYTE2(__s1[1]) = BYTE2(v11);
        BYTE3(__s1[1]) = BYTE3(v11);
        BYTE4(__s1[1]) = BYTE4(v11);
        BYTE5(__s1[1]) = BYTE5(v11);
        if (!v121)
        {
          goto LABEL_274;
        }
      }

      v82 = BYTE6(v11);
      v83 = __s1;
LABEL_169:
      v53 = memcmp(v76, v83, v82);

      sub_10006A2D0(v3, v11);
      sub_10006A178(v3, v11);
      v54 = v5;
      v55 = v9;
LABEL_170:
      sub_10006A2D0(v54, v55);
      sub_10006A2D0(v5, v9);
      if (!v53)
      {
        goto LABEL_192;
      }

LABEL_34:
      ++v22;
      v4 = v131;
      if (v8 == v21)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    swift_once();
  }

  v97 = (*(v5 + 32))(v7, v3, v4);
  v98 = *(v0 + v11);
  __chkstk_darwin(v97);
  *(&v117 - 2) = v7;

  v99 = sub_100196414(sub_10019F300, (&v117 - 4), v98);
  v101 = v100;

  if (v101)
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  swift_beginAccess();
  v102 = sub_100196708(v99);
  swift_endAccess();
  (*(v5 + 8))(v7, v4);
  return v102;
}

void sub_10019CE50(double a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v4 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  *v6 = v10;
  v9(v6, v8, v3);
  v13 = _dispatchPreconditionTest(_:)();
  v12(v6, v3);
  if ((v13 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v14 = OBJC_IVAR____TtC10seserviced5DSKSE_seTimer;
  v15 = *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer);
  if (v15)
  {
    v16 = v15;
    if (sub_1003AE7DC(v16))
    {
      sub_1003AE754(v16);
    }

    v17 = *(v1 + v14);
    if (v17)
    {
      sub_1003AE618(v17, a1);
    }
  }
}

void sub_10019D034(void *a1, char a2, uint64_t a3, int a4)
{
  v153 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  __chkstk_darwin(v153);
  v154 = &v140 - v8;
  v9 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v9 - 8);
  v158 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v152 = &v140 - v12;
  __chkstk_darwin(v13);
  v150 = &v140 - v14;
  __chkstk_darwin(v15);
  v155 = &v140 - v16;
  __chkstk_darwin(v17);
  v159 = &v140 - v18;
  __chkstk_darwin(v19);
  v156 = &v140 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v151 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v157 = &v140 - v25;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v30 = qword_10051B7F0;
  *v29 = qword_10051B7F0;
  (*(v27 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v26);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v29, v26);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_67;
  }

  v32 = OBJC_IVAR____TtC10seserviced5DSKSE_state;
  *(a3 + OBJC_IVAR____TtC10seserviced5DSKSE_state) = 2;
  v33 = OBJC_IVAR____TtC10seserviced5DSKSE_logger;
  if (a2)
  {
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    sub_1001A1EF0(a1, 1);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v161[0] = v37;
      *v36 = 67109378;
      *(v36 + 4) = a4;
      *(v36 + 8) = 2080;
      swift_getErrorValue();
      v38 = Error.localizedDescription.getter();
      v40 = sub_1002FFA0C(v38, v39, v161);

      *(v36 + 10) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to get SE %u error %s", v36, 0x12u);
      sub_1000752F4(v37);
    }

    *(a3 + v32) = 0;
    sub_100197634();
    return;
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 67109120;
    *(v43 + 4) = a4;
    _os_log_impl(&_mh_execute_header, v41, v42, "Got SE identifier %u", v43, 8u);
  }

  v44 = sub_10019B758();
  if (v44)
  {
    v45 = v44;
    swift_retain_n();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v148 = a3;
      v149 = v45;
      v50 = v49;
      v161[0] = v49;
      *v48 = 136315138;
      v147 = a1;
      v51 = v22;
      v52 = v21;
      v53 = v32;
      v54 = v33;
      v56 = *(v149 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
      v55 = *(v149 + OBJC_IVAR____TtC10seserviced9SERequest_reason + 8);

      v57 = sub_1002FFA0C(v56, v55, v161);
      v33 = v54;

      *(v48 + 4) = v57;
      v32 = v53;
      v21 = v52;
      v22 = v51;
      a1 = v147;
      _os_log_impl(&_mh_execute_header, v46, v47, "Got request for %s", v48, 0xCu);
      sub_1000752F4(v50);
      v45 = v149;
      a3 = v148;
    }

    v58 = v159;
    if (*(v45 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) != 1)
    {
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "First APDU of session is not SELECT", v70, 2u);
      }

      *(a3 + v32) = 0;
      v71 = *(v45 + 32);

      v71(0, 1);

      goto LABEL_26;
    }

    v146 = v33;
    if (*(v45 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks + 8))
    {
      goto LABEL_15;
    }

    v72 = *(v45 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks);
    if ((v72 & 1) == 0)
    {
      if ((v72 & 2) != 0)
      {
        v73 = v45 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
        if ((*(v45 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber + 8) & 1) != 0 || (v74 = *(v45 + OBJC_IVAR____TtC10seserviced9SERequest_peer)) == 0 || *v73 != *(v74 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber))
        {

          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = -1;
            v78 = swift_slowAlloc();
            *v78 = 134218240;
            v79 = *v73;
            if (*(v73 + 8))
            {
              v79 = -1;
            }

            *(v78 + 4) = v79;
            *(v78 + 12) = 2048;
            v80 = *(v45 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
            if (v80)
            {
              v77 = *(v80 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber);
            }

            *(v78 + 14) = v77;
            v81 = v78;

            _os_log_impl(&_mh_execute_header, v75, v76, "Got different sequence numbers request %ld current %ld", v81, 0x16u);
          }

          else
          {
          }

          goto LABEL_19;
        }
      }

      goto LABEL_15;
    }

    v90 = OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier;
    v91 = v156;
    sub_1000938D4(v45 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier, v156, &unk_10050BE80, &unk_10040B360);
    v145 = *(v22 + 48);
    v92 = v145(v91, 1, v21);
    v149 = v45;
    if (v92 == 1)
    {
      v93 = &unk_10050BE80;
      v94 = &unk_10040B360;
LABEL_54:
      sub_100075768(v91, v93, v94);
LABEL_55:

      v113 = Logger.logObject.getter();
      v114 = v45;
      v115 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v113, v115))
      {
        v159 = v22;
        v116 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v160 = v158;
        *v116 = 136315394;
        v117 = v114 + v90;
        v118 = v152;
        sub_1000938D4(v117, v152, &unk_10050BE80, &unk_10040B360);
        if (v145(v118, 1, v21) == 1)
        {
          v119 = v21;
          sub_100075768(v118, &unk_10050BE80, &unk_10040B360);
          v120 = 0xE400000000000000;
          v121 = 1819047278;
        }

        else
        {
          v122 = v118;
          v123 = UUID.uuidString.getter();
          v120 = v124;
          v125 = v122;
          v119 = v21;
          (*(v159 + 8))(v125, v21);
          v121 = v123;
        }

        v126 = sub_1002FFA0C(v121, v120, &v160);

        *(v116 + 4) = v126;
        *(v116 + 12) = 2080;
        v127 = *(v149 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
        v128 = 1819047278;
        if (v127)
        {
          v129 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
          swift_beginAccess();
          v130 = v159;
          v131 = v127 + v129;
          v132 = v151;
          v133 = v119;
          (*(v159 + 16))(v151, v131, v119);
          v134 = UUID.uuidString.getter();
          v136 = v135;
          (*(v130 + 8))(v132, v133);
          v128 = v134;
        }

        else
        {
          v136 = 0xE400000000000000;
        }

        v137 = sub_1002FFA0C(v128, v136, &v160);

        *(v116 + 14) = v137;
        _os_log_impl(&_mh_execute_header, v113, v115, "Got different connection identifiers request %s current %s", v116, 0x16u);
        swift_arrayDestroy();
      }

      *(a3 + v32) = 0;
      sub_100197634();
      goto LABEL_27;
    }

    v144 = v22 + 48;
    v147 = a1;
    v148 = a3;
    v143 = v32;
    v95 = *(v22 + 32);
    v96 = v157;
    v156 = v22 + 32;
    v141 = v95;
    v95(v157, v91, v21);
    v97 = *(v22 + 16);
    v97(v58, v96, v21);
    v98 = *(v22 + 56);
    v99 = v58;
    v100 = 1;
    v98(v99, 0, 1, v21);
    v101 = *(v45 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
    v142 = v90;
    if (v101)
    {
      v102 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
      swift_beginAccess();
      v103 = v155;
      v97(v155, (v101 + v102), v21);
      v100 = 0;
    }

    else
    {
      v103 = v155;
    }

    v98(v103, v100, 1, v21);
    v104 = v21;
    v91 = v154;
    v105 = *(v153 + 48);
    v106 = v159;
    sub_1000938D4(v159, v154, &unk_10050BE80, &unk_10040B360);
    sub_1000938D4(v103, v91 + v105, &unk_10050BE80, &unk_10040B360);
    v107 = v145;
    v108 = v145(v91, 1, v104) == 1;
    v32 = v143;
    v45 = v149;
    v109 = v103;
    a3 = v148;
    if (v108)
    {
      sub_100075768(v109, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v106, &unk_10050BE80, &unk_10040B360);
      (*(v22 + 8))(v157, v104);
      v110 = v107(v91 + v105, 1, v104);
      v21 = v104;
      v90 = v142;
      if (v110 != 1)
      {
LABEL_53:
        v93 = &qword_1005031D0;
        v94 = &unk_100413B20;
        goto LABEL_54;
      }

      sub_100075768(v91, &unk_10050BE80, &unk_10040B360);
      a1 = v147;
    }

    else
    {
      v111 = v150;
      sub_1000938D4(v91, v150, &unk_10050BE80, &unk_10040B360);
      if (v107(v91 + v105, 1, v104) == 1)
      {
        sub_100075768(v155, &unk_10050BE80, &unk_10040B360);
        sub_100075768(v159, &unk_10050BE80, &unk_10040B360);
        v112 = *(v22 + 8);
        v112(v157, v104);
        v112(v111, v104);
        v21 = v104;
        v90 = v142;
        goto LABEL_53;
      }

      v138 = v151;
      v141(v151, v91 + v105, v104);
      sub_1001A1F6C(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v156) = dispatch thunk of static Equatable.== infix(_:_:)();
      v139 = *(v22 + 8);
      v139(v138, v104);
      sub_100075768(v155, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v159, &unk_10050BE80, &unk_10040B360);
      v139(v157, v104);
      v139(v111, v104);
      v45 = v149;
      sub_100075768(v91, &unk_10050BE80, &unk_10040B360);
      v21 = v104;
      a1 = v147;
      v90 = v142;
      if ((v156 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_15:
    v59 = v21;
    v60 = OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress;
    *(a3 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress) = 1;
    sub_1003375E0(0xD000000000000042, 0x8000000100465570, 0, 0xF000000000000000, 0, 0xF000000000000000, 0);
    v61 = *(v45 + 32);

    v61(a1, 0);

    if (*(v45 + 24))
    {
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Releasing the SE", v64, 2u);
      }

      *(a3 + v60) = 0;
      sub_1003375E0(0xD000000000000041, 0x8000000100465520, 0, 0xF000000000000000, 0, 0xF000000000000000, 0);
LABEL_19:
      *(a3 + v32) = 0;
LABEL_26:
      sub_100197634();
LABEL_27:

      return;
    }

    v82 = *(v45 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
    if (v82)
    {
      v83 = *(v45 + 16);
      v84 = v158;
      (*(v22 + 16))(v158, v82 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v59);
      (*(v22 + 56))(v84, 0, 1, v59);
      v85 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
      swift_beginAccess();
      sub_1001A15AC(v84, a3 + v85);
      swift_endAccess();
      v86 = OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier;
      v87 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier;
      swift_beginAccess();
      sub_1001A1EFC(v45 + v86, a3 + v87);
      swift_endAccess();
      v88 = *(a3 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle);
      *(a3 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle) = a1;
      v89 = a1;

      *(a3 + v32) = 3;
      sub_10019CE50(v83);
      goto LABEL_26;
    }

LABEL_67:
    __break(1u);
    return;
  }

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "Got SE but no request", v67, 2u);
  }

  *(a3 + v32) = 0;
}

uint64_t sub_10019E2B4(void *a1, char *a2)
{
  v33 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  __chkstk_darwin(v6);
  v34 = &v31 - v7;
  v8 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v8 - 8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v15 = __chkstk_darwin(v13);
  v16 = &v31 - v14;
  v17 = *(*a1 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
  if (v17)
  {
    v18 = *(v4 + 16);
    v18(&v31 - v14, v17 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v3, v15);
    v19 = *(v4 + 56);
    (v19)(v16, 0, 1, v3);
  }

  else
  {
    v19 = *(v4 + 56);
    v19(&v31 - v14, 1, 1, v3, v15);
    v18 = *(v4 + 16);
  }

  (v18)(v12, v33, v3);
  (v19)(v12, 0, 1, v3);
  v20 = *(v6 + 48);
  v21 = v34;
  sub_1000938D4(v16, v34, &unk_10050BE80, &unk_10040B360);
  sub_1000938D4(v12, v21 + v20, &unk_10050BE80, &unk_10040B360);
  v22 = *(v4 + 48);
  if (v22(v21, 1, v3) != 1)
  {
    v33 = v16;
    v26 = v21;
    v24 = v21;
    v27 = v32;
    sub_1000938D4(v26, v32, &unk_10050BE80, &unk_10040B360);
    if (v22(v24 + v20, 1, v3) != 1)
    {
      v28 = v31;
      (*(v4 + 32))(v31, v24 + v20, v3);
      sub_1001A1F6C(&qword_100502C18, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v4 + 8);
      v29(v28, v3);
      sub_100075768(v12, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v33, &unk_10050BE80, &unk_10040B360);
      v29(v32, v3);
      sub_100075768(v24, &unk_10050BE80, &unk_10040B360);
      return v25 & 1;
    }

    sub_100075768(v12, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v33, &unk_10050BE80, &unk_10040B360);
    (*(v4 + 8))(v27, v3);
    goto LABEL_9;
  }

  sub_100075768(v12, &unk_10050BE80, &unk_10040B360);
  v23 = v16;
  v24 = v34;
  sub_100075768(v23, &unk_10050BE80, &unk_10040B360);
  if (v22(v24 + v20, 1, v3) != 1)
  {
LABEL_9:
    sub_100075768(v24, &qword_1005031D0, &unk_100413B20);
    v25 = 0;
    return v25 & 1;
  }

  sub_100075768(v24, &unk_10050BE80, &unk_10040B360);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_10019E7A0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v28 = a2;
  v3 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  __chkstk_darwin(v3 - 8);
  v5 = v25 - v4;
  v6 = *a1;
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040C130;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000100465600;
  v8 = *(v6 + 24);
  *&v26 = *(v6 + 16);
  BYTE8(v26) = v8;
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v9;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000100464700;
  sub_1000938D4(v6 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier, v5, &unk_10050BE80, &unk_10040B360);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_100075768(v5, &unk_10050BE80, &unk_10040B360);
    v12 = (inited + 96);
    *(inited + 120) = &type metadata for String;
  }

  else
  {
    v25[1] = inited + 32;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v11 + 8))(v5, v10);
    v12 = (inited + 96);
    *(inited + 120) = &type metadata for String;
    if (v15)
    {
      *v12 = v13;
      goto LABEL_6;
    }
  }

  *v12 = 1701736302;
  v15 = 0xE400000000000000;
LABEL_6:
  *(inited + 104) = v15;
  strcpy((inited + 128), "handoffToken");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  sub_1000938D4(v6 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken, &v26, &qword_100502438, &qword_100409990);
  v16 = v27 != 0;
  sub_100075768(&v26, &qword_100502438, &qword_100409990);
  *(inited + 144) = v16;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x8000000100465620;
  *(inited + 192) = *(v6 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 1919247728;
  *(inited + 232) = 0xE400000000000000;
  if (*(v6 + OBJC_IVAR____TtC10seserviced9SERequest_peer))
  {
    v17 = UUID.uuidString.getter();
    v19 = (inited + 240);
    *(inited + 264) = &type metadata for String;
    if (v18)
    {
      *v19 = v17;
      goto LABEL_11;
    }
  }

  else
  {
    v19 = (inited + 240);
    *(inited + 264) = &type metadata for String;
  }

  *v19 = 1701736302;
  v18 = 0xE400000000000000;
LABEL_11:
  *(inited + 248) = v18;
  *(inited + 272) = 0x797469726F697270;
  *(inited + 280) = 0xE800000000000000;
  *(inited + 288) = *(v6 + OBJC_IVAR____TtC10seserviced9SERequest_priority);
  *(inited + 312) = &type metadata for SERequest.Priority;
  *(inited + 320) = 0x6E6F73616572;
  *(inited + 328) = 0xE600000000000000;
  v20 = *(v6 + OBJC_IVAR____TtC10seserviced9SERequest_reason + 8);
  *(inited + 336) = *(v6 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
  *(inited + 344) = v20;
  *(inited + 360) = &type metadata for String;
  strcpy((inited + 368), "sequenceNumber");
  *(inited + 383) = -18;
  if (*(v6 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber + 8))
  {
    *(inited + 408) = &type metadata for String;
    *(inited + 384) = 1701736302;
    *(inited + 392) = 0xE400000000000000;
  }

  else
  {
    v21 = *(v6 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber);
    v27 = &type metadata for Int;
    *&v26 = v21;
    sub_100075D50(&v26, (inited + 384));
  }

  strcpy((inited + 416), "sessionChecks");
  *(inited + 430) = -4864;
  v22 = *(v6 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks + 8);
  *(inited + 456) = &type metadata for Bool;
  *(inited + 432) = (v22 & 1) == 0;

  v23 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  result = swift_arrayDestroy();
  *v28 = v23;
  return result;
}

uint64_t sub_10019EC94(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced5DSKSE_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  sub_100075768(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier, &unk_10050BE80, &unk_10040B360);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DSKSE(uint64_t a1)
{
  result = qword_100505290;
  if (!qword_100505290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019EDFC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    sub_10019EEF4(319);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10019EEF4(uint64_t a1)
{
  if (!qword_1005052A0)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005052A0);
    }
  }
}

unint64_t sub_10019EF78()
{
  result = qword_100505360;
  if (!qword_100505360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505360);
  }

  return result;
}

unint64_t sub_10019EFD0()
{
  result = qword_100505368;
  if (!qword_100505368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505368);
  }

  return result;
}

uint64_t sub_10019F024@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
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
      result = __DataStorage._length.getter();
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
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
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

uint64_t sub_10019F254()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_10019F29C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10019F2E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10019F320(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
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

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

char *sub_10019F3C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10019FB70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F3E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A04D4(a1, a2, a3, *v3, &qword_100505490, &qword_10040CD10, &qword_100505498, &qword_10040CD18);
  *v3 = result;
  return result;
}

void *sub_10019F420(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_100503F10, &qword_10040A008, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

void *sub_10019F464(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0EC8(a1, a2, a3, *v3, &qword_100505378, &qword_10040CC10, &qword_100502600, &unk_100417140);
  *v3 = result;
  return result;
}

char *sub_10019F4A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10019FDCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F4C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0EC8(a1, a2, a3, *v3, &qword_1005042B0, &qword_10040B5C0, &qword_100505FD0, &qword_10040B550);
  *v3 = result;
  return result;
}

void *sub_10019F504(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10019FED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10019F524(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0CC8(a1, a2, a3, *v3, &qword_100505430, &qword_10040CCC0);
  *v3 = result;
  return result;
}

char *sub_10019F554(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A000C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F574(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0108(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F594(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0FFC(a1, a2, a3, *v3, &qword_100505380, &qword_10040CC18, &qword_100505388, &qword_10040CC20);
  *v3 = result;
  return result;
}

void *sub_10019F5D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0250(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F5F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A03A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F614(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A04D4(a1, a2, a3, *v3, &qword_1005053E0, &qword_10040CC78, &qword_1005053E8, &qword_10040CC80);
  *v3 = result;
  return result;
}

char *sub_10019F654(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0CC8(a1, a2, a3, *v3, &qword_1005042A0, &qword_10040B5B0);
  *v3 = result;
  return result;
}

char *sub_10019F684(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A061C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F6A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F6C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_1005043D0, &qword_10040B6D0, &type metadata accessor for SEStorageCredential);
  *v3 = result;
  return result;
}

void *sub_10019F708(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0888(a1, a2, a3, *v3, &qword_100505438, &qword_10040CCC8, &qword_100505440, &unk_100413B30);
  *v3 = result;
  return result;
}

void *sub_10019F748(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0888(a1, a2, a3, *v3, &qword_100505448, &qword_10040CCD0, &qword_100505450, &qword_10040CCD8);
  *v3 = result;
  return result;
}

void *sub_10019F788(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0888(a1, a2, a3, *v3, &qword_100505458, &qword_10040CCE0, &qword_100505460, &qword_100413B40);
  *v3 = result;
  return result;
}

void *sub_10019F7C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0EC8(a1, a2, a3, *v3, &qword_100505480, &qword_10040CD00, &qword_100505488, &qword_10040CD08);
  *v3 = result;
  return result;
}

void *sub_10019F808(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_1005043E8, &qword_10040B6E8, &type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
  *v3 = result;
  return result;
}

void *sub_10019F84C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_100505470, &qword_10040CCF0, &type metadata accessor for SEStorageManagementSheet.ProposedCredentialType);
  *v3 = result;
  return result;
}

void *sub_10019F890(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_1005043B0, &qword_10040B6B8, &type metadata accessor for SECCredentialConfig);
  *v3 = result;
  return result;
}

char *sub_10019F8D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0A70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F8F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_100504390, &qword_10040B698, type metadata accessor for PresentmentInfo);
  *v3 = result;
  return result;
}

void *sub_10019F938(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0B80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10019F958(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0CC8(a1, a2, a3, *v3, &qword_100505410, &qword_10040CCA0);
  *v3 = result;
  return result;
}

char *sub_10019F988(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0DC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F9A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0EC8(a1, a2, a3, *v3, &qword_100505390, &qword_10040CC28, &qword_100505398, &qword_10040CC30);
  *v3 = result;
  return result;
}

void *sub_10019F9E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0FFC(a1, a2, a3, *v3, &qword_1005053B0, &qword_10040CC48, &qword_1005053B8, &qword_10040CC50);
  *v3 = result;
  return result;
}

void *sub_10019FA28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0FFC(a1, a2, a3, *v3, &qword_1005053C0, &qword_10040CC58, &qword_1005053C8, &qword_10040CC60);
  *v3 = result;
  return result;
}

void *sub_10019FA68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A0FFC(a1, a2, a3, *v3, &qword_1005053D0, &qword_10040CC68, &qword_1005053D8, &qword_10040CC70);
  *v3 = result;
  return result;
}

void *sub_10019FAA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_100505478, &qword_10040CCF8, &type metadata accessor for AppletType);
  *v3 = result;
  return result;
}

void *sub_10019FAEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_1005043C8, &qword_10040B6C8, &type metadata accessor for CredentialType);
  *v3 = result;
  return result;
}

void *sub_10019FB30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A1320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019FB50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001A1464(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10019FB70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&unk_100504720, &qword_100414C40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10019FC7C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_1005042D0, &qword_10040B5E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_1005025F0, &qword_100409A18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10019FDCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_1005025E0, &unk_10040F430);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10019FED8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_100505468, &qword_10040CCE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A000C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100502448, &qword_100409998);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_1001A0108(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_1005042D8, &qword_10040B5E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_1005042E0, &qword_10040B5F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A0250(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_1005053F8, &qword_10040CC88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100505400, &qword_10040CC90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A03A0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_100504F00, &qword_10040C480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_1005053F0, &unk_10040CDE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A04D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100068FC4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1001A061C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100504330, &qword_10040B640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A0740(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_100504350, &qword_10040B658);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100504358, &qword_10040B660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A0888(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100068FC4(a5, a6);
  v16 = *(sub_100068FC4(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100068FC4(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1001A0A70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100504D48, &qword_10040C010);
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

void *sub_1001A0B80(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A0CC8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100068FC4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1001A0DC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100505418, &qword_10040CCA8);
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

void *sub_1001A0EC8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100068FC4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1001A0FFC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100068FC4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1001A1144(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100068FC4(a5, a6);
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

void *sub_1001A1320(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_1005053A0, &qword_10040CC38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_1005053A8, &qword_10040CC40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A1464(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&unk_100507CD0, &unk_100414C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&unk_100504020, &qword_100409CC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1001A15AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A1648(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1001A16C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A17E0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A18CC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  sub_100068FC4(&qword_1005042C0, &qword_10040B5D0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A19E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_100068FC4(&qword_1005042F0, &qword_10040B600);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A1AE0(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v7 = *(a1 + 8 * v5 + 32);
    }

    if (*(v7 + OBJC_IVAR____TtC10seserviced9SERequest_peer) && (static UUID.== infix(_:_:)() & 1) != 0)
    {
      v8 = *(v7 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks);
      v9 = *(v7 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks + 8);

      if (v9 & 1) == 0 && (v8)
      {
        return v5;
      }
    }

    else
    {
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_18;
    }
  }

  return 0;
}

unint64_t sub_1001A1C34(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_1001A1AE0(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v10 = *(v4 + 8 * v8 + 32);

LABEL_16:
    if (*(v10 + OBJC_IVAR____TtC10seserviced9SERequest_peer) && (static UUID.== infix(_:_:)() & 1) != 0)
    {
      v11 = *(v10 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks);
      v12 = *(v10 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks + 8);

      if (v12 & 1) == 0 && (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (v7 != v8)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7 >= v15)
        {
          goto LABEL_51;
        }

        if (v8 >= v15)
        {
          goto LABEL_52;
        }

        v13 = *(v4 + 32 + 8 * v7);
        v14 = *(v4 + 32 + 8 * v8);
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_1001A1648(v4);
        v16 = (v4 >> 62) & 1;
      }

      else
      {
        LODWORD(v16) = 0;
      }

      v17 = v4 & 0xFFFFFFFFFFFFFF8;
      *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v14;

      if ((v4 & 0x8000000000000000) != 0 || v16)
      {
        v4 = sub_1001A1648(v4);
        v17 = v4 & 0xFFFFFFFFFFFFFF8;
        if ((v8 & 0x8000000000000000) != 0)
        {
LABEL_43:
          __break(1u);
          return v7;
        }
      }

      else if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if (v8 >= *(v17 + 16))
      {
        goto LABEL_49;
      }

      *(v17 + 8 * v8 + 32) = v13;

      *a1 = v4;
    }

    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      goto LABEL_48;
    }

LABEL_9:
    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_1001A1EF0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1001A1EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A1F6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001A1FB4()
{
  result = qword_1005064B0;
  if (!qword_1005064B0)
  {
    sub_1000692D8(&unk_100501E60, &qword_100408C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005064B0);
  }

  return result;
}

uint64_t sub_1001A2024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for DSKBLEConnectionPriority.Connection(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1001A2144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_10019F320(result, 1);

  return sub_1001A2024(v7, v6, 1, v4);
}

unint64_t sub_1001A2248(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  sub_100068FC4(&qword_1005042E0, &qword_10040B5F0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A2360(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1001A2438(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_10009393C(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A2554(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  sub_100068FC4(&qword_1005042F0, &qword_10040B600);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1001A2648(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_10012F404(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_1001A2554(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

uint64_t sub_1001A2738(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    sub_10019F320(result, 1);
    return sub_1001A2438(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1001A2834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (!v13)
  {
    sub_10019F320(result, 1);
    return sub_1001A16C4(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1001A292C(uint64_t result)
{
  if (result < 0)
  {
    return 0;
  }

  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(v3) < result)
      {
        return 0;
      }

LABEL_9:
      v9 = result;
      sub_100069E2C(*v1, *(v1 + 8));
      sub_100288640(v9, v2, v3, v15);
      v10 = v15[0];
      v11 = *v1;
      v12 = *(v1 + 8);
      sub_100069E2C(*v1, v12);
      sub_100084D68(v9, v11, v12, v15);
      v13 = v15[0];
      v14 = v15[1];
      sub_10006A178(*v1, *(v1 + 8));
      result = v10;
      *v1 = v13;
      *(v1 + 8) = v14;
      return result;
    }

    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      if (HIDWORD(v2) - v2 < result)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  if (v4 == 2)
  {
    v6 = *(v2 + 16);
    v5 = *(v2 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (v7)
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v8 >= result)
    {
      goto LABEL_9;
    }
  }

  else if (!result)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1001A2A3C()
{
  result = sub_10013044C(0xD000000000000014, 0x8000000100465660);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B360 = result;
    *algn_10051B368 = v1;
  }

  return result;
}

uint64_t sub_1001A2A88(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA384();
      sub_1001A65F0(&qword_1005054A8, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1001A2C68(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1001A2C68(v5, v6);
  }

  type metadata accessor for SHA384();
  sub_1001A65F0(&qword_1005054A8, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1001A2C68(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA384();
      sub_1001A65F0(&qword_1005054A8, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A2D48(void *a1)
{
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = sub_1003AF1FC(a1, isa);

  if (v3)
  {
    swift_willThrow();

    return 0;
  }

  v5 = sub_1002B3B94(&off_1004C3B78);
  v7 = v6;
  v8 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v5, v7);
  v14 = 0;
  v9 = sub_1003AEB5C(a1, v8, &v14);

  if (!v9)
  {
    v13 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v10 = v14;
  v11 = sub_1003B0934(v9);

  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

uint64_t sub_1001A2ED8(char *a1)
{
  v3 = v1;
  if (qword_100501A38 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v6 = sub_1003AF1FC(a1, isa);

    if (v6)
    {
      break;
    }

    v51 = a1;
    v49 = v3;
    v2 = sub_10012F668(0, 16, 0, _swiftEmptyArrayStorage);
    v7 = sub_1002B3B94(&off_1004C4030);
    v9 = v8;
    v10 = 0;
LABEL_5:
    v50 = v2;
    if (v10 <= 0x10)
    {
      v11 = 16;
    }

    else
    {
      v11 = v10;
    }

    a1 = (v10 << 16);
    v3 = v10;
    v12 = v51;
    while (v11 != v3)
    {
      v13 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v13 != 2)
        {
          goto LABEL_65;
        }

        if (*(v7 + 16) > 2)
        {
          goto LABEL_55;
        }

        if (*(v7 + 24) < 3)
        {
          goto LABEL_58;
        }

        v16 = v9 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v7 + 16);
          v2 = *(v7 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v17, __DataStorage._offset.getter()))
            {
              goto LABEL_64;
            }

            if (__OFSUB__(v2, v17))
            {
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }
          }

          else if (__OFSUB__(v2, v17))
          {
            goto LABEL_62;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v23 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v16 = v23;
          v12 = v51;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = *(v7 + 16);
          v24 = *(v7 + 24);
          type metadata accessor for Data.RangeReference();
          v25 = swift_allocObject();
          *(v25 + 16) = v2;
          *(v25 + 24) = v24;

          v7 = v25;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v26 = __DataStorage._bytes.getter();
        if (!v26)
        {
          goto LABEL_67;
        }

        v27 = v26;
        v28 = __DataStorage._offset.getter();
        if (__OFSUB__(2, v28))
        {
          goto LABEL_60;
        }

        *(v27 + 2 - v28) = v3;
        v9 = v16 | 0x8000000000000000;
      }

      else if (v13)
      {
        v2 = v7 >> 32;
        if (v7 >> 32 < 3 || v7 > 2)
        {
          goto LABEL_57;
        }

        v18 = v9 & 0x3FFFFFFFFFFFFFFFLL;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
          {
            goto LABEL_63;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v19 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v18 = v19;
          v12 = v51;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v20 = __DataStorage._bytes.getter();
        if (!v20)
        {
          goto LABEL_66;
        }

        v21 = v20;
        v22 = __DataStorage._offset.getter();
        if (__OFSUB__(2, v22))
        {
          goto LABEL_59;
        }

        *(v21 + 2 - v22) = v3;
        v9 = v18 | 0x4000000000000000;
      }

      else
      {
        v14 = BYTE6(v9);
        if (BYTE6(v9) < 3uLL)
        {
          goto LABEL_56;
        }

        v7 = &a1[v7 & 0xFFFFFFFFFF00FFFFLL];
        v15 = v52 & 0xF00000000000000 | v9 & 0xFFFFFFFFFFFFLL;
        v9 = v15 | (BYTE6(v9) << 48);
        v52 = v15 | (v14 << 48);
      }

      v29 = Data._bridgeToObjectiveC()().super.isa;
      v55 = 0;
      v30 = sub_1003AE9C8(v12, v29, &v55);

      if (!v30)
      {
        v2 = v55;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_51;
      }

      v31 = v55;
      v32 = sub_1003B0984(v30);
      if (v32 != 27266)
      {
        if (v32 != 36864)
        {

          sub_1000B9C54();
          v55 = 0;
          v56 = 0xE000000000000000;
          _StringGuts.grow(_:)(25);

          v55 = 0xD000000000000017;
          v56 = 0x8000000100465640;
          sub_100068FC4(&qword_100502440, &unk_10040B240);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1004098F0;
          v46 = sub_1003B0984(v30);
          *(v45 + 56) = &type metadata for UInt16;
          *(v45 + 64) = &protocol witness table for UInt16;
          *(v45 + 32) = v46;
          v47._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v47);

          sub_10030990C(0, 1, v55, v56, 0);
          swift_willThrow();

          goto LABEL_51;
        }

        v33 = sub_1003B0934(v30);
        v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        sub_10026C534(v57);
        v55 = v34;
        v56 = v36;
        sub_100069E2C(v34, v36);
        v37 = sub_1001A93E0(&v55, v57);
        if (v49)
        {

          sub_10006A178(v34, v36);
          v65 = v58;
          v66 = v59;
          sub_10018C454(&v65);
          v54 = v60;
          sub_1001A3618(&v54);
          sub_10006A178(v55, v56);

          sub_10006A178(v7, v9);
          return v2;
        }

        v38 = v37;
        v63 = v58;
        v64 = v59;
        sub_10018C454(&v63);
        v53 = v60;
        sub_1001A3618(&v53);
        sub_10006A178(v55, v56);
        sub_10026C6C4(v38, v61);
        v49 = 0;
        sub_10006A178(v34, v36);
        v2 = v50;
        v40 = *(v50 + 16);
        v39 = *(v50 + 24);
        if (v40 >= v39 >> 1)
        {
          v2 = sub_10012F668((v39 > 1), v40 + 1, 1, v50);
        }

        v10 = v3 + 1;

        *(v2 + 16) = v40 + 1;
        v41 = v2 + 72 * v40;
        *(v41 + 32) = v61[0];
        v42 = v61[1];
        v43 = v61[2];
        v44 = v61[3];
        *(v41 + 96) = v62;
        *(v41 + 64) = v43;
        *(v41 + 80) = v44;
        *(v41 + 48) = v42;
        if (v3 == 15)
        {
          goto LABEL_51;
        }

        goto LABEL_5;
      }

      ++v3;

      a1 += 0x10000;
      if (v3 == 16)
      {
        v2 = v50;
LABEL_51:
        sub_10006A178(v7, v9);
        return v2;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_1001A3618(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504EC8, &qword_10040C3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A3680(void *a1)
{
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = sub_1003AF1FC(a1, isa);

  if (!v4)
  {
    v5 = sub_1002B3B94(&off_1004C4058);
    v7 = v6;
    v8 = Data._bridgeToObjectiveC()().super.isa;
    v22 = 0;
    v9 = sub_1003AE9C8(a1, v8, &v22);

    v1 = v22;
    if (!v9)
    {
      v17 = v22;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10006A178(v5, v7);
      return v1;
    }

    v10 = v22;
    v11 = sub_1003B0934(v9);
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = v14;
    v16 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v16 == 2)
      {
        v18 = *(v12 + 16);
        v19 = *(v12 + 24);
        sub_10006A178(v12, v15);
        if (v18 == v19)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      sub_10006A178(v12, v14);
    }

    else
    {
      if (!v16)
      {
        sub_10006A178(v12, v14);
        if ((v14 & 0xFF000000000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_15:
        v20 = sub_1003B0934(v9);
        v1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10006A178(v5, v7);

LABEL_18:
        return v1;
      }

      sub_10006A178(v12, v14);
      if (v12 != v12 >> 32)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    sub_10006A178(v5, v7);
    v1 = 0;
    goto LABEL_18;
  }

  swift_willThrow();
  return v1;
}

void sub_1001A38C8(void *a1)
{
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = sub_1003AF1FC(a1, isa);

  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    v4 = Data._bridgeToObjectiveC()().super.isa;
    v5 = sub_1003AEF50();

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v7 = 0;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1001A3A2C(uint64_t a1, unsigned __int16 a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 0xEu)
  {
    v3 = 0;
  }

  else
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v3 = __DataStorage.init(capacity:)() | 0x4000000000000000;
  }

  LOWORD(v5) = 0;
  v44 = v3;
  while (1)
  {
    if (((a2 - v5) & 0xFFFF0000) != 0)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if ((a2 - v5) >= 0x2E4u)
    {
      v6 = 740;
    }

    else
    {
      v6 = (a2 - v5);
    }

    v7 = sub_1003AF0E8();
    if (!v7)
    {
      v29 = 0;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10006A178(0, v44);
    }

    v8 = v7;
    v9 = 0;
    v10 = sub_1003B0934(v8);
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        sub_10006A178(v11, v13);
        if (__OFSUB__(v15, v16))
        {
          goto LABEL_58;
        }

        if (v15 - v16 != v6)
        {
          break;
        }
      }

      else
      {
        sub_10006A178(v11, v13);
        if (a2 != v5)
        {
          break;
        }
      }

      goto LABEL_24;
    }

    if (!v14)
    {
      sub_10006A178(v11, v13);
      if (BYTE6(v13) != v6)
      {
        break;
      }

      goto LABEL_24;
    }

    sub_10006A178(v11, v13);
    if (__OFSUB__(HIDWORD(v11), v11))
    {
      goto LABEL_57;
    }

    if (HIDWORD(v11) - v11 != v6)
    {
      break;
    }

LABEL_24:
    v17 = sub_1003B0934(v8);
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    Data.append(_:)();
    sub_10006A178(v18, v20);
    v21 = sub_1003B0934(v8);
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v25 != 2)
      {
        sub_10006A178(v22, v24);
        LOWORD(v26) = 0;
        goto LABEL_37;
      }

      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      sub_10006A178(v22, v24);
      v26 = v27 - v28;
      if (__OFSUB__(v27, v28))
      {
        goto LABEL_60;
      }

LABEL_33:
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      if (v26 >> 16)
      {
        goto LABEL_55;
      }

      goto LABEL_37;
    }

    if (v25)
    {
      sub_10006A178(v22, v24);
      LODWORD(v26) = HIDWORD(v22) - v22;
      if (__OFSUB__(HIDWORD(v22), v22))
      {
        goto LABEL_59;
      }

      v26 = v26;
      goto LABEL_33;
    }

    sub_10006A178(v22, v24);
    LOWORD(v26) = BYTE6(v24);
LABEL_37:
    v5 = v5 + v26;
    if ((v5 & 0x10000) != 0)
    {
      goto LABEL_56;
    }

    if (v5 == a2)
    {
      return 0;
    }
  }

  _StringGuts.grow(_:)(62);
  v30._countAndFlagsBits = 0xD00000000000001ELL;
  v30._object = 0x80000001004656C0;
  String.append(_:)(v30);
  v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v31);

  v32._object = 0x80000001004656E0;
  v32._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v32);
  v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0x746F672074756220;
  v34._object = 0xE900000000000020;
  String.append(_:)(v34);
  v35 = sub_1003B0934(v8);
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = v38;
  v40 = v38 >> 62;
  if ((v38 >> 62) <= 1)
  {
    if (!v40)
    {
LABEL_50:
      sub_10006A178(v36, v38);
      goto LABEL_51;
    }

LABEL_48:
    sub_10006A178(v36, v39);
    if (!__OFSUB__(HIDWORD(v36), v36))
    {
      goto LABEL_51;
    }

LABEL_61:
    __break(1u);
  }

  if (v40 != 2)
  {
    goto LABEL_50;
  }

  v42 = *(v36 + 16);
  v41 = *(v36 + 24);
  sub_10006A178(v36, v39);
  if (__OFSUB__(v41, v42))
  {
    __break(1u);
    goto LABEL_48;
  }

LABEL_51:
  sub_1000B9C54();
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  sub_10030990C(0, 1, 0, 0xE000000000000000, 0);
  swift_willThrow();

  return sub_10006A178(0, v44);
}

Class sub_1001A3F58(void *a1)
{
  v3 = objc_opt_self();
  v5 = sub_1003AF3C4(a1, v4);
  v6 = [v5 seid];

  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v7, v9);
  v60 = 0;
  v11 = sub_10002DFC0(v3, v10.super.isa, &v60);

  v12 = v60;
  if (v11)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v60 = 0;
    v17 = sub_1003AEF50();

    if (!v17)
    {
      v25 = v60;
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_29:
      sub_10006A178(v13, v15);
      return v10.super.isa;
    }

    v18 = v60;
    v10.super.isa = sub_1003B0934(v17);
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v21;
    v23 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v23 != 2)
      {
        sub_10006A178(v19, v21);
        goto LABEL_18;
      }

      v26 = *(v19 + 16);
      v10.super.isa = *(v19 + 24);
      sub_10006A178(v19, v22);
      if (!__OFSUB__(v10.super.isa, v26))
      {
        if ((v10.super.isa - v26) != 2)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      if (!v23)
      {
        sub_10006A178(v19, v21);
        if (BYTE6(v21) != 2)
        {
          goto LABEL_18;
        }

LABEL_15:
        v27 = sub_1003B0934(v17);
        v10.super.isa = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_100090214(v10.super.isa, v29, 0, 0, 0);
        sub_10006A178(v10.super.isa, v29);
        if (v1)
        {
          sub_10006A178(v13, v15);

          return v10.super.isa;
        }

        v42 = sub_1001A3A2C(a1, v30);
        v44 = v43;
        v60 = v42;
        v61 = v43;
        v45 = v42;
        sub_100069E2C(v42, v43);
        sub_1001AD294(&v60, 0);
        v47 = v46;
        v49 = v48;
        v51 = v50;
        sub_10006A178(v60, v61);
        v59 = v51;
        v52 = sub_1001AD9C0(v49, v47, v51);
        if (v52 < 0)
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
        }

        v53 = v52;
        v54 = v45;
        v10.super.isa = Data._Representation.subscript.getter();
        v55 = v44 >> 62;
        if ((v44 >> 62) > 1)
        {
          v56 = 0;
          if (v55 != 2 || (v58 = *(v54 + 16), v57 = *(v54 + 24), v56 = v57 - v58, !__OFSUB__(v57, v58)))
          {
LABEL_41:
            if (v56 >= v53)
            {
              Data._Representation.subscript.getter();
              sub_10006A178(v47, v59);
              sub_10006A178(v54, v44);

              sub_10006A178(v13, v15);
              return v10.super.isa;
            }

            goto LABEL_47;
          }

          __break(1u);
        }

        else if (!v55)
        {
          v56 = BYTE6(v44);
          goto LABEL_41;
        }

        if (__OFSUB__(HIDWORD(v54), v54))
        {
          goto LABEL_48;
        }

        v56 = HIDWORD(v54) - v54;
        goto LABEL_41;
      }

      v10.super.isa = HIDWORD(v19);
      sub_10006A178(v19, v21);
      if (!__OFSUB__(HIDWORD(v19), v19))
      {
        if (HIDWORD(v19) - v19 == 2)
        {
          goto LABEL_15;
        }

LABEL_18:
        v60 = 0;
        v61 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v31._object = 0x8000000100465680;
        v31._countAndFlagsBits = 0xD000000000000034;
        String.append(_:)(v31);
        v32 = sub_1003B0934(v17);
        v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = v35;
        v37 = v35 >> 62;
        if ((v35 >> 62) > 1)
        {
          if (v37 != 2)
          {
LABEL_27:
            sub_10006A178(v33, v35);
LABEL_28:
            sub_1000B9C54();
            v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v40);

            sub_10030990C(0, 1, v60, v61, 0);
            swift_willThrow();

            goto LABEL_29;
          }

          v39 = *(v33 + 16);
          v38 = *(v33 + 24);
          sub_10006A178(v33, v36);
          v33 = v38 - v39;
          if (!__OFSUB__(v38, v39))
          {
            goto LABEL_28;
          }

          __break(1u);
        }

        else if (!v37)
        {
          goto LABEL_27;
        }

        sub_10006A178(v33, v36);
        if (!__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_28;
        }

        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v24 = v12;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return v10.super.isa;
}

uint64_t sub_1001A44E0(void *a1)
{
  result = sub_1001A3680(a1);
  if (!v1 && v4 >> 60 != 15)
  {
    sub_10006A2D0(result, v4);
    if (qword_100501A38 != -1)
    {
      swift_once();
    }

    isa = Data._bridgeToObjectiveC()().super.isa;
    v6 = sub_1003AF1FC(a1, isa);

    if (v6)
    {
      return swift_willThrow();
    }

    else
    {
      v7 = sub_1002B3B94(&off_1004C4080);
      v9 = v8;
      v10 = Data._bridgeToObjectiveC()().super.isa;
      v14 = 0;
      v11 = sub_1003AEB5C(a1, v10, &v14);

      if (v11)
      {
        v12 = v14;
      }

      else
      {
        v13 = v14;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      return sub_10006A178(v7, v9);
    }
  }

  return result;
}

uint64_t sub_1001A4668(void *a1, void *a2, void *a3)
{
  v6 = sub_1002B3B94(&off_1004C4100);
  v8 = v7;
  v22 = v6;
  v23 = v7;
  v21[3] = &type metadata for Data;
  v21[4] = &protocol witness table for Data;
  v21[0] = a2;
  v21[1] = a3;
  v9 = sub_1000752B0(v21, &type metadata for Data);
  v10 = *v9;
  v11 = v9[1];
  sub_100069E2C(v6, v8);
  sub_100069E2C(a2, a3);
  sub_10008E4C8(v10, v11, &v22);
  sub_10006A178(v6, v8);
  sub_1000752F4(v21);
  v13 = v22;
  v12 = v23;
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = sub_1003AF1FC(a1, isa);

  if (v15)
  {
    goto LABEL_4;
  }

  v17 = Data._bridgeToObjectiveC()().super.isa;
  v21[0] = 0;
  v18 = sub_1003AEB5C(a1, v17, v21);

  if (!v18)
  {
    v20 = v21[0];
    _convertNSErrorToError(_:)();

LABEL_4:
    swift_willThrow();
    return sub_10006A178(v13, v12);
  }

  v19 = v21[0];

  return sub_10006A178(v13, v12);
}

void sub_1001A4854(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = sub_1003AF1FC(a1, isa);

  if (v12)
  {
    swift_willThrow();
  }

  else
  {
    v13 = [objc_opt_self() randomData:16];
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v65[0] = v14;
    v65[1] = v16;
    v65[2] = a2;
    v65[3] = a3;
    v66 = a4 & 1;
    sub_100069E2C(a2, a3);
    v17 = sub_10026BCF4();
    if (v5)
    {
      sub_1001A6E90(v65);
    }

    else
    {
      v48 = v17;
      v49 = v18;
      v19 = Data._bridgeToObjectiveC()().super.isa;
      v51 = 0;
      v20 = sub_1003AEB5C(a1, v19, &v51);

      if (v20)
      {
        v21 = v51;
        v22 = sub_1003B0934(v20);
        v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        sub_10026E0EC(v53);
        v51 = v23;
        v52 = v25;
        sub_100069E2C(v23, v25);
        v26 = sub_1001A93E0(&v51, v53);
        v63 = v54;
        v64 = v55;
        v35 = v26;
        sub_10018C454(&v63);
        v50 = v56;
        sub_1001A3618(&v50);
        sub_10006A178(v51, v52);
        sub_10026E8DC(v35, v57);
        v36 = v58;
        v37 = v61;
        v47 = v62;
        sub_10006A178(v23, v25);
        v38 = sub_1003B0934(v20);
        v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
        sub_10006A178(v48, v49);

        sub_1001A6E90(v65);
        v42 = v57[1];
        v43 = v57[2];
        v44 = v57[3];
        v45 = v59;
        v46 = v60;
        *a5 = v57[0];
        *(a5 + 16) = v42;
        *(a5 + 32) = v43;
        *(a5 + 48) = v44;
        *(a5 + 64) = v36 & 1;
        *(a5 + 88) = v46;
        *(a5 + 72) = v45;
        *(a5 + 104) = v37;
        *(a5 + 112) = v47;
        *(a5 + 120) = v39;
        *(a5 + 128) = v41;
      }

      else
      {
        v27 = v51;
        v28 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_1000B9C54();
        v51 = 0;
        v52 = 0xE000000000000000;
        _StringGuts.grow(_:)(34);

        v51 = 0xD000000000000020;
        v52 = 0x8000000100465700;
        sub_100288788(v48, v49);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v29 = BidirectionalCollection<>.joined(separator:)();
        v31 = v30;

        v32._countAndFlagsBits = v29;
        v32._object = v31;
        String.append(_:)(v32);

        v33 = v51;
        v34 = v52;
        swift_errorRetain();
        sub_10030990C(0, 1, v33, v34, v28);
        swift_willThrow();
        sub_10006A178(v48, v49);
        sub_1001A6E90(v65);
      }
    }
  }
}

void sub_1001A4DF8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for SHA384();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SHA384Digest();
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v12 = __DataStorage.init(capacity:)();
  v39 = 0;
  v40 = v12 | 0x4000000000000000;
  v13 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    LODWORD(v14) = 0;
    if (v13 != 2)
    {
      goto LABEL_12;
    }

    v16 = *(a2 + 16);
    v15 = *(a2 + 24);
    v17 = __OFSUB__(v15, v16);
    v14 = v15 - v16;
    if (!v17)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v13)
  {
    LODWORD(v14) = BYTE6(a3);
    goto LABEL_12;
  }

  LODWORD(v14) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
  }

  v14 = v14;
LABEL_10:
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v14 >> 16))
  {
LABEL_12:
    v32 = a1;
    LOWORD(v35[0]) = bswap32(v14) >> 16;
    v37 = &type metadata for UnsafeRawBufferPointer;
    v38 = &protocol witness table for UnsafeRawBufferPointer;
    v36[0] = v35;
    v36[1] = v35 + 2;
    sub_1000752B0(v36, &type metadata for UnsafeRawBufferPointer);
    Data._Representation.append(contentsOf:)();
    sub_1000752F4(v36);
    sub_1001A65F0(&qword_1005054A8, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
    dispatch thunk of HashFunction.init()();
    sub_100069E2C(a2, a3);
    sub_1001A2A88(a2, a3, v8);
    sub_10006A178(a2, a3);
    dispatch thunk of HashFunction.finalize()();
    (*(v33 + 8))(v8, v6);
    v37 = v9;
    v38 = sub_1001A65F0(&qword_1005054B0, &type metadata accessor for SHA384Digest, &protocol conformance descriptor for SHA384Digest);
    v18 = sub_1000B9634(v36);
    v19 = v34;
    (*(v34 + 16))(v18, v11, v9);
    sub_1000752B0(v36, v37);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v19 + 8))(v11, v9);
    v20 = v35[0];
    v21 = v35[1];
    sub_1000752F4(v36);
    Data.append(_:)();
    sub_10006A178(v20, v21);
    v11 = sub_1001AF63C(0xC0uLL, v39, v40);
    v9 = v22;
    if (qword_100501A38 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  __break(1u);
LABEL_20:
  swift_once();
LABEL_13:
  v36[0] = sub_100288788(qword_10051B360, *algn_10051B368);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  BidirectionalCollection<>.joined(separator:)();

  v23 = String._bridgeToObjectiveC()();

  isa = Data._bridgeToObjectiveC()().super.isa;
  v36[0] = 0;
  v25 = sub_100057B6C(v32, v23, isa, 0, 2, v36);

  v26 = v36[0];
  if (v25)
  {
    v27 = v36[0];
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10006A178(v28, v29);

    if (v26)
    {
LABEL_15:
      swift_willThrow();
      sub_10006A178(v11, v9);
      sub_10006A178(v39, v40);

      return;
    }
  }

  else
  {
    v30 = v36[0];
    if (v26)
    {
      goto LABEL_15;
    }
  }

  sub_10006A178(v11, v9);
  sub_10006A178(v39, v40);
}

uint64_t sub_1001A534C(void *a1, __int16 a2)
{
  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004099F0;
  *(v4 + 32) = 1152;
  *(v4 + 34) = HIBYTE(a2);
  *(v4 + 35) = a2;
  v5 = sub_1002B3B94(v4);
  v7 = v6;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = 0;
  v9 = sub_1003AEB5C(a1, isa, &v13);

  if (v9)
  {
    v10 = v13;
  }

  else
  {
    v11 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return sub_10006A178(v5, v7);
}

void sub_1001A5488(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v7)
  {
    LOWORD(v8) = BYTE6(a3);
    goto LABEL_14;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_72;
  }

  v8 = HIDWORD(v5) - v5;
LABEL_10:
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
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
  }

  if (!(v8 >> 16))
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  LOWORD(v8) = 0;
LABEL_14:
  sub_1001A534C(a1, v8);
  if (!v3)
  {
    v11 = 0;
    v12 = HIDWORD(v5) - v5;
    v13 = BYTE6(v4);
    v14 = __OFSUB__(HIDWORD(v5), v5);
    v15 = v5;
    v40 = v5 >> 32;
    while (1)
    {
      if (v7 > 1)
      {
        if (v7 != 2)
        {
          if (!v11)
          {
            return;
          }

          LOWORD(v20) = 0;
          goto LABEL_37;
        }

        v18 = *(v5 + 16);
        v17 = *(v5 + 24);
        v19 = __OFSUB__(v17, v18);
        v16 = v17 - v18;
        if (v19)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v16 = v13;
        if (v7)
        {
          v16 = v12;
          if (v14)
          {
            goto LABEL_74;
          }
        }
      }

      if (v16 == v11)
      {
        return;
      }

      LOWORD(v20) = v13;
      if (v7)
      {
        if (v7 == 2)
        {
          v22 = *(v5 + 16);
          v21 = *(v5 + 24);
          v19 = __OFSUB__(v21, v22);
          v20 = v21 - v22;
          if (v19)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v20 = v12;
          if (v14)
          {
            goto LABEL_75;
          }
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        if (v20 >> 16)
        {
          goto LABEL_66;
        }
      }

LABEL_37:
      v23 = v20 - v11;
      if ((v23 & 0xFFFF0000) != 0)
      {
        goto LABEL_67;
      }

      v23 = v23;
      if (v23 >= 0x2E4u)
      {
        v23 = 740;
      }

      v24 = v23 + v11;
      if ((v24 & 0x10000) != 0)
      {
        goto LABEL_68;
      }

      v25 = 0;
      if (v7 > 1)
      {
        if (v7 == 3)
        {
          goto LABEL_46;
        }

        v26 = *(v5 + 16);
        if ((v26 & 0x8000000000000000) != 0)
        {
LABEL_62:
          __break(1u);
LABEL_63:
          v39 = v4;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          return;
        }
      }

      else
      {
        v26 = v15;
        if (!v7)
        {
          goto LABEL_46;
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }
      }

      v25 = v26;
      if (v26 >> 16)
      {
        __break(1u);
        return;
      }

LABEL_46:
      if (v7 > 1)
      {
        if (v7 != 2)
        {
          v27 = 0;
LABEL_58:
          v28 = v27;
          goto LABEL_59;
        }

        v28 = *(v5 + 24);
      }

      else
      {
        v27 = v13;
        v28 = v40;
        if (!v7)
        {
          goto LABEL_58;
        }
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      if (v28 >> 16)
      {
        goto LABEL_70;
      }

LABEL_59:
      if (v28 < v25)
      {
        goto LABEL_71;
      }

      v41 = v15;
      v42 = v14;
      v43 = v13;
      v44 = v12;
      v29 = v5;
      v30 = v4;
      v31 = Data._Representation.subscript.getter();
      v32 = v6;
      v34 = v33;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v36 = v34;
      v6 = v32;
      sub_10006A178(v31, v36);
      v37 = sub_1003AF0E8();

      v4 = 0;
      if (!v37)
      {
        goto LABEL_63;
      }

      v38 = 0;

      v11 = v24;
      v12 = v44;
      v4 = v30;
      v5 = v29;
      v13 = v43;
      v14 = v42;
      v15 = v41;
    }
  }
}

unint64_t sub_1001A57D8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v67 = a1;
  v9 = type metadata accessor for SESPeerIdentityData(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001A6638(a4, v11);
  v13 = v11[2];
  v12 = v11[3];
  v15 = v11[6];
  v14 = v11[7];
  sub_100069E2C(v13, v12);
  sub_100069E2C(v15, v14);
  sub_1001A669C(v11);
  v71 = &_s14ExportTLKInputVN;
  v72 = &off_1004CE478;
  v16 = swift_allocObject();
  v69 = v16;
  *&v17 = v13;
  *(&v17 + 1) = v12;
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *&v18 = v15;
  *(&v18 + 1) = v14;
  *(v16 + 32) = v17;
  *(v16 + 48) = v18;
  sub_100069E2C(v13, v12);
  sub_100069E2C(v15, v14);
  sub_100069E2C(a2, a3);
  sub_100069E2C(a2, a3);
  sub_1001A659C(v13, v12, v15, v14);
  v19 = sub_1001A91D4(&v69);
  if (!v4)
  {
    v21 = v19;
    v22 = v20;
    v66 = a3;
    sub_1000752F4(&v69);
    sub_1001A4DF8(v67, v21, v22);
    v23 = v21;
    v5 = 0;
    v64 = v23;
    v65 = v22;
    v63 = a2;
    if (qword_100501A38 != -1)
    {
      swift_once();
    }

    isa = Data._bridgeToObjectiveC()().super.isa;
    v25 = v67;
    v26 = sub_1003AF1FC(v67, isa);

    v27 = v14;
    if (v26)
    {
      swift_willThrow();
      sub_10006A178(v64, v65);
      sub_10006A178(v63, v66);
      sub_1001A6548(v13, v12, v15, v14);
      sub_10006A178(v13, v12);
      v28 = v15;
LABEL_8:
      v29 = v27;
LABEL_9:
      sub_10006A178(v28, v29);
      return v5;
    }

    sub_1001A5488(v25, v64, v65);
    v31 = v15;
    v32 = sub_1002B3B94(&off_1004C45D8);
    v34 = v33;
    v35 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v32, v34);
    v69 = 0;
    v36 = sub_1003AEB5C(v25, v35, &v69);

    v5 = v69;
    if (!v36)
    {
      v45 = v69;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10006A178(v13, v12);
      sub_10006A178(v31, v27);
      sub_10006A178(v63, v66);
      sub_1001A6548(v13, v12, v31, v27);
      v28 = v64;
      v29 = v65;
      goto LABEL_9;
    }

    v37 = v69;
    v38 = sub_1003B0934(v36);
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = v41;
    v43 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v43 != 2)
      {
        sub_10006A178(v39, v41);
LABEL_25:
        v69 = 0;
        v70 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v52._object = 0x8000000100465680;
        v52._countAndFlagsBits = 0xD000000000000034;
        String.append(_:)(v52);
        v53 = sub_1003B0934(v36);
        v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = v56;
        v58 = v56 >> 62;
        if ((v56 >> 62) > 1)
        {
          if (v58 != 2)
          {
            sub_10006A178(v54, v56);
            v54 = 0;
            goto LABEL_35;
          }

          v60 = *(v54 + 16);
          v59 = *(v54 + 24);
          sub_10006A178(v54, v57);
          v54 = v59 - v60;
          if (!__OFSUB__(v59, v60))
          {
            goto LABEL_35;
          }

          __break(1u);
        }

        else if (!v58)
        {
          sub_10006A178(v54, v56);
          v54 = BYTE6(v56);
LABEL_35:
          v61 = sub_1000B9C54();
          v68 = v54;
          v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v62);

          v5 = v61;
          sub_10030990C(0, 1, v69, v70, 0);
          swift_willThrow();

          sub_10006A178(v64, v65);
          sub_10006A178(v63, v66);
          sub_1001A6548(v13, v12, v31, v27);
          sub_10006A178(v13, v12);
          v28 = v31;
          goto LABEL_8;
        }

        sub_10006A178(v54, v57);
        if (!__OFSUB__(HIDWORD(v54), v54))
        {
          v54 = HIDWORD(v54) - v54;
          goto LABEL_35;
        }

LABEL_37:
        __break(1u);
      }

      v47 = *(v39 + 16);
      v46 = *(v39 + 24);
      sub_10006A178(v39, v42);
      v44 = v46 - v47;
      if (!__OFSUB__(v46, v47))
      {
LABEL_22:
        if (v44 == 2)
        {
          v48 = sub_1003B0934(v36);
          v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          LOWORD(v48) = sub_100090214(v49, v51, 0, 0, 0);
          sub_10006A178(v49, v51);
          v5 = sub_1001A3A2C(v67, v48);

          sub_10006A178(v64, v65);
          sub_10006A178(v63, v66);
          sub_1001A6548(v13, v12, v31, v27);
          sub_10006A178(v13, v12);
          sub_10006A178(v31, v27);
          return v5;
        }

        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v43)
    {
      sub_10006A178(v39, v41);
      v44 = BYTE6(v41);
      goto LABEL_22;
    }

    sub_10006A178(v39, v42);
    LODWORD(v44) = HIDWORD(v39) - v39;
    if (__OFSUB__(HIDWORD(v39), v39))
    {
      __break(1u);
      goto LABEL_37;
    }

    v44 = v44;
    goto LABEL_22;
  }

  sub_10006A178(v13, v12);
  sub_10006A178(v15, v14);
  sub_10006A178(a2, a3);
  sub_1001A6548(v13, v12, v15, v14);
  sub_1000752F4(&v69);
  return v5;
}

id sub_1001A5EF4(id object, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = sub_1003AF1FC(object, isa);

  if (v10)
  {
    swift_willThrow();
    return object;
  }

  v53 = &_s14ExportTLKInputVN;
  v54 = &off_1004CE478;
  v11 = swift_allocObject();
  v51 = v11;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = 0;
  v11[6] = 0;
  v11[7] = 0x2000000000000000;
  swift_bridgeObjectRetain_n();
  sub_100069E2C(a2, a3);
  sub_100069E2C(a2, a3);
  sub_1001A659C(a4, 0, 0, 0x2000000000000000uLL);
  v12 = sub_1001A91D4(&v51);
  if (v4)
  {

    sub_10006A178(a2, a3);
    sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);
    sub_1000752F4(&v51);
    return object;
  }

  v14 = v12;
  v15 = v13;
  sub_1000752F4(&v51);
  sub_1001A4DF8(object, v14, v15);
  v16 = Data._bridgeToObjectiveC()().super.isa;
  v17 = sub_1003AF1FC(object, v16);

  if (v17)
  {
    swift_willThrow();
LABEL_10:
    sub_10006A178(v14, v15);
    sub_10006A178(a2, a3);
    sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);

    return object;
  }

  sub_1001A5488(object, v14, v15);
  v19 = sub_1002B3B94(&off_1004C4600);
  v21 = v20;
  v48 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v19, v21);
  v51 = 0;
  v22 = sub_1003AEB5C(object, v48, &v51);

  if (!v22)
  {
    object = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_10006A178(a2, a3);
    sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);
    sub_10006A178(v14, v15);
    return object;
  }

  v23 = v51;
  v47 = v22;
  v24 = sub_1003B0934(v22);
  v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = v26;
  v28 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v28)
    {
      sub_10006A178(v49, v26);
      v29 = BYTE6(v26);
      v30 = v47;
      goto LABEL_22;
    }

    result = sub_10006A178(v49, v26);
    LODWORD(v29) = HIDWORD(v49) - v49;
    v30 = v47;
    if (!__OFSUB__(HIDWORD(v49), v49))
    {
      v29 = v29;
LABEL_22:
      if (v29 == 2)
      {
        v33 = sub_1003B0934(v30);
        v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v46 = sub_100090214(v50, v35, 0, 0, 0);
        sub_10006A178(v50, v35);
        object = sub_1001A3A2C(object, v46);

        sub_10006A178(v14, v15);
        sub_10006A178(a2, a3);
        sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);

        return object;
      }

      goto LABEL_25;
    }

    goto LABEL_37;
  }

  if (v28 == 2)
  {
    v32 = *(v49 + 16);
    v31 = *(v49 + 24);
    result = sub_10006A178(v49, v27);
    v29 = v31 - v32;
    if (!__OFSUB__(v31, v32))
    {
      v30 = v47;
      goto LABEL_22;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_10006A178(v49, v26);
  v30 = v47;
LABEL_25:
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v36._object = 0x8000000100465680;
  v36._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v36);
  v37 = sub_1003B0934(v30);
  v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = v40;
  v42 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    if (v42 != 2)
    {
LABEL_34:
      sub_10006A178(v38, v40);
LABEL_35:
      sub_1000B9C54();
      v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      object = v45._object;
      String.append(_:)(v45);

      sub_10030990C(0, 1, v51, v52, 0);
      swift_willThrow();

      goto LABEL_10;
    }

    v44 = *(v38 + 16);
    v43 = *(v38 + 24);
    sub_10006A178(v38, v41);
    v38 = v43 - v44;
    if (!__OFSUB__(v43, v44))
    {
      goto LABEL_35;
    }

    __break(1u);
  }

  else if (!v42)
  {
    goto LABEL_34;
  }

  result = sub_10006A178(v38, v41);
  if (!__OFSUB__(HIDWORD(v38), v38))
  {
    goto LABEL_35;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1001A6548(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_10006A178(a1, a2);

    return sub_10006A178(a3, a4);
  }
}

void sub_1001A659C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_100069E2C(a1, a2);

    sub_100069E2C(a3, a4);
  }
}

uint64_t sub_1001A65F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001A6638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SESPeerIdentityData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A669C(uint64_t a1)
{
  v2 = type metadata accessor for SESPeerIdentityData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A66F8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v36 = a1;
  v8 = type metadata accessor for SESPeerIdentityData(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001A6638(a4, v10);
  v12 = v10[4];
  v11 = v10[5];
  v14 = v10[6];
  v13 = v10[7];
  sub_100069E2C(v12, v11);
  sub_100069E2C(v14, v13);
  sub_1001A669C(v10);
  v37[3] = &_s14ImportTLKInputVN;
  v37[4] = &off_1004CE468;
  v15 = swift_allocObject();
  v37[0] = v15;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v11;
  v15[6] = v14;
  v15[7] = v13;
  sub_100069E2C(v12, v11);
  sub_100069E2C(v14, v13);
  sub_100069E2C(a2, a3);
  sub_100069E2C(a2, a3);
  sub_1001A659C(v12, v11, v14, v13);
  v16 = sub_1001A91D4(v37);
  if (v4)
  {
    sub_10006A178(v12, v11);
    sub_10006A178(v14, v13);
    sub_10006A178(a2, a3);
    sub_1001A6548(v12, v11, v14, v13);
    return sub_1000752F4(v37);
  }

  else
  {
    v19 = v16;
    v20 = v17;
    sub_1000752F4(v37);
    sub_1001A4DF8(v36, v19, v20);
    v21 = v36;
    v34 = v20;
    v35 = v19;
    if (qword_100501A38 != -1)
    {
      swift_once();
    }

    isa = Data._bridgeToObjectiveC()().super.isa;
    v23 = sub_1003AF1FC(v21, isa);

    if (v23)
    {
      swift_willThrow();
      sub_10006A178(v35, v34);
      sub_10006A178(a2, a3);
      sub_1001A6548(v12, v11, v14, v13);
      sub_10006A178(v12, v11);
      v24 = v14;
      v25 = v13;
    }

    else
    {
      sub_1001A5488(v36, v35, v34);
      v26 = sub_1002B3B94(&off_1004C4628);
      v28 = v27;
      v33 = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v26, v28);
      v37[0] = 0;
      v29 = v33;
      v30 = sub_1003AEB5C(v36, v33, v37);

      if (v30)
      {
        v31 = v37[0];
      }

      else
      {
        v32 = v37[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      sub_10006A178(v12, v11);
      sub_10006A178(v14, v13);
      sub_10006A178(a2, a3);
      sub_1001A6548(v12, v11, v14, v13);
      v25 = v34;
      v24 = v35;
    }

    return sub_10006A178(v24, v25);
  }
}

uint64_t sub_1001A6AE4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = sub_1003AF1FC(a1, isa);

  if (v10)
  {
    return swift_willThrow();
  }

  v26[3] = &_s14ImportTLKInputVN;
  v26[4] = &off_1004CE468;
  v12 = swift_allocObject();
  v26[0] = v12;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = 0;
  v12[6] = 0;
  v12[7] = 0x2000000000000000;
  swift_bridgeObjectRetain_n();
  sub_100069E2C(a2, a3);
  sub_100069E2C(a2, a3);
  sub_1001A659C(a4, 0, 0, 0x2000000000000000uLL);
  v13 = sub_1001A91D4(v26);
  if (v4)
  {

    sub_10006A178(a2, a3);
    sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);
    return sub_1000752F4(v26);
  }

  else
  {
    v15 = v13;
    v16 = v14;
    sub_1000752F4(v26);
    sub_1001A4DF8(a1, v15, v16);
    v17 = Data._bridgeToObjectiveC()().super.isa;
    v18 = sub_1003AF1FC(a1, v17);

    if (v18)
    {
      swift_willThrow();
      sub_10006A178(v15, v16);
      sub_10006A178(a2, a3);
      sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);
    }

    else
    {
      sub_1001A5488(a1, v15, v16);
      v19 = sub_1002B3B94(&off_1004C4740);
      v21 = v20;
      v25 = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v19, v21);
      v26[0] = 0;
      v22 = sub_1003AEB5C(a1, v25, v26);

      if (v22)
      {
        v23 = v26[0];
      }

      else
      {
        v24 = v26[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      sub_10006A178(a2, a3);
      sub_1001A6548(a4, 0, 0, 0x2000000000000000uLL);
      return sub_10006A178(v15, v16);
    }
  }
}

uint64_t sub_1001A6E4C()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));
  sub_1001A6548(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001A6EF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for SHA256Digest();
  sub_1001A8824(&qword_1005054C0, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v4 = dispatch thunk of static Digest.byteCount.getter();
  if (((v4 | a3) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!is_mul_ok(v4, 0xFFFFFFFFuLL))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (0xFFFFFFFF * v4 > a3)
  {
    v7 = sub_1001303A8(a3);
    v8 = v5;
    __chkstk_darwin(v7);
    SharedSecret.withUnsafeBytes<A>(_:)();
    Data.subdata(in:)();
    SymmetricKey.init<A>(data:)();
    return sub_10006A178(v7, v8);
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1001A70B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v43 = a6;
  v47 = a2;
  v46 = a1;
  v42 = type metadata accessor for SHA256Digest();
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256();
  __chkstk_darwin(v12);
  v45 = a5 >> 62;
  v49 = a4;
  v37 = a4;
  v36 = a4 >> 32;
  v35[0] = (a4 >> 32) - a4;
  v40 = (v10 + 16);
  v39 = (v10 + 8);
  v38 = (v14 + 8);
  v35[1] = v56 + BYTE6(a5);
  v15 = 1;
  v48 = xmmword_1004099F0;
  v50 = a5;
  v51 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (a3 >= 1)
  {
    sub_1001A8824(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
    v24 = swift_allocObject();
    *(v24 + 16) = v48;
    *(v24 + 32) = HIBYTE(v15);
    *(v24 + 33) = BYTE2(v15);
    if (v15 == 0x10000)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    v25 = v24;
    *(v24 + 34) = bswap32(v15) >> 16;
    v26 = sub_100068FC4(&qword_100504F50, &qword_1004146C0);
    v57 = v26;
    v58 = sub_1001A8890();
    v56[0] = v25;
    v27 = sub_1000752B0(v56, v26);
    v28 = *v27;
    v29 = *(*v27 + 16);
    if (!v29)
    {
      sub_1000752F4(v56);
      memset(__dst, 0, sizeof(__dst));
LABEL_15:
      dispatch thunk of HashFunction.update(bufferPointer:)();
      goto LABEL_20;
    }

    if (v29 <= 0xE)
    {
      memset(__dst, 0, sizeof(__dst));
      v54 = v29;
      memcpy(__dst, (v28 + 32), v29);
      v55[0] = *__dst;
      *(v55 + 6) = *&__dst[6];
      sub_1000752F4(v56);
      *__dst = v55[0];
      *&__dst[6] = *(v55 + 6);
      goto LABEL_15;
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    __DataStorage.init(bytes:length:)();
    if (v29 >= 0x7FFFFFFF)
    {
      type metadata accessor for Data.RangeReference();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = v29;
      sub_1000752F4(v56);

      if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
      {
        goto LABEL_40;
      }

      __DataStorage._length.getter();
      dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    else
    {
      sub_1000752F4(v56);

      if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
      {
        goto LABEL_39;
      }

      __DataStorage._length.getter();
      dispatch thunk of HashFunction.update(bufferPointer:)();
    }

LABEL_20:
    v31 = v50;
    dispatch thunk of HashFunction.update(bufferPointer:)();
    if (v45 > 1)
    {
      if (v45 == 2)
      {
        v33 = *(v49 + 16);
        v34 = *(v49 + 24);

        if (__DataStorage._bytes.getter() && __OFSUB__(v33, __DataStorage._offset.getter()))
        {
          goto LABEL_37;
        }

        if (__OFSUB__(v34, v33))
        {
          goto LABEL_36;
        }

        v31 = v50;
        __DataStorage._length.getter();
      }

      else
      {
        memset(v56, 0, 14);
      }
    }

    else
    {
      if (!v45)
      {
        v32 = v49;
        v56[0] = v49;
        LOWORD(v56[1]) = v31;
        BYTE2(v56[1]) = BYTE2(v31);
        BYTE3(v56[1]) = BYTE3(v31);
        BYTE4(v56[1]) = BYTE4(v31);
        BYTE5(v56[1]) = BYTE5(v31);
        dispatch thunk of HashFunction.update(bufferPointer:)();
        v16 = v32;
        goto LABEL_4;
      }

      if (v36 < v37)
      {
        goto LABEL_35;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v37, __DataStorage._offset.getter()))
      {
        goto LABEL_38;
      }

      __DataStorage._length.getter();
    }

    dispatch thunk of HashFunction.update(bufferPointer:)();
    v16 = v49;
LABEL_4:
    sub_10006A178(v16, v31);
    v17 = v41;
    dispatch thunk of HashFunction.finalize()();
    v18 = v42;
    v57 = v42;
    v58 = sub_1001A8824(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v19 = sub_1000B9634(v56);
    (*v40)(v19, v17, v18);
    v20 = sub_1000752B0(v56, v57);
    __chkstk_darwin(v20);
    v35[-2] = v43;
    v21 = v52;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v52 = v21;
    v22 = v51;
    (*v39)(v17, v18);
    sub_1000752F4(v56);
    (*v38)(v22, v12);
    ++v15;
    v23 = __OFSUB__(a3, v44);
    a3 -= v44;
    if (v23)
    {
      goto LABEL_34;
    }
  }
}

unint64_t sub_1001A78F4()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = P256.KeyAgreement.PublicKey.x963Representation.getter();
  v6 = v5;
  result = String.count.getter();
  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  result = String.count.getter();
  v9 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v6);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v13 = *(v4 + 16);
  v12 = *(v4 + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    __break(1u);
LABEL_10:
    LODWORD(v11) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v11 = v11;
  }

LABEL_13:
  result = v9 + v11;
  if (__OFADD__(v9, v11))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = sub_1001303A8(result);
  v31 = v15;
  sub_100068FC4(&qword_1005043F0, &unk_10040CDD0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004098F0;
  result = String.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result > 0xFF)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v4;
  *(v16 + 32) = result;
  v17 = sub_1002B3B94(v16);
  v19 = v18;

  Data.append(_:)();
  sub_10006A178(v17, v19);
  static String.Encoding.utf8.getter();
  v20 = String.data(using:allowLossyConversion:)();
  v22 = v21;
  v23 = *(v1 + 8);
  result = v23(v3, v0);
  if (v22 >> 60 == 15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  Data.append(_:)();
  sub_10006A2D0(v20, v22);
  static String.Encoding.utf8.getter();
  v24 = String.data(using:allowLossyConversion:)();
  v26 = v25;
  result = v23(v3, v0);
  if (v26 >> 60 != 15)
  {
    Data.append(_:)();
    sub_10006A2D0(v24, v26);
    v27 = v29;
    Data.append(_:)();
    sub_10006A178(v27, v6);
    return v30;
  }

LABEL_26:
  __break(1u);
  return result;
}

char *sub_1001A7BEC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v98 = a1;
  v99 = a2;
  v6 = type metadata accessor for SHA256();
  v90 = *(v6 - 8);
  v91 = v6;
  __chkstk_darwin(v6);
  v89 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SHA256Digest();
  v93 = *(v8 - 8);
  v94 = v8;
  __chkstk_darwin(v8);
  v92 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100068FC4(&qword_1005054B8, &unk_10040CD40);
  __chkstk_darwin(v10 - 8);
  v100 = (&v79 - v11);
  v12 = type metadata accessor for AES.GCM.SealedBox();
  v95 = *(v12 - 8);
  v96 = v12;
  __chkstk_darwin(v12);
  v97 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for SymmetricKey();
  v104 = *(v102 - 8);
  __chkstk_darwin(v102);
  v105 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for SharedSecret();
  v103 = *(v101 - 8);
  __chkstk_darwin(v101);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v106 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v107 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v79 - v24;
  v108[0] = a3;
  v108[1] = a4;
  v26 = a4;
  v27 = a3;
  v28 = a3;
  v29 = v26;
  sub_100069E2C(v28, v26);
  v30 = v112;
  P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  if (!v30)
  {
    v86 = v29;
    v87 = v22;
    v85 = v27;
    v112 = v20;
    v31 = v106;
    v88 = v17;
    P256.KeyAgreement.PrivateKey.init()();
    P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
    v32 = v19;
    v83 = v25;
    v33 = v87;
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v34 = sub_1001A78F4();
    v36 = v35;
    v37 = v107 + 8;
    v84 = *(v107 + 8);
    v84(v33, v112);
    v38 = v36;
    sub_1001A6EF8(v34, v36, 0x20uLL);
    v108[0] = v98;
    v108[1] = v99;
    v111 = xmmword_10040CD30;
    v39 = sub_1000937E0();
    v40 = v100;
    v99 = v39;
    AES.GCM.Nonce.init<A>(data:)();
    v41 = v16;
    v42 = v31;
    v107 = v37;
    v80 = v34;
    v81 = v38;
    v82 = v41;
    v98 = v32;
    v43 = type metadata accessor for AES.GCM.Nonce();
    (*(*(v43 - 8) + 56))(v40, 0, 1, v43);
    static AES.GCM.seal<A>(_:using:nonce:)();
    sub_1001A87BC(v40);
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004099F0;
    strcpy(v108, "version");
    v108[1] = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v46;
    *(inited + 80) = v47;
    v100 = inited;
    strcpy(v108, "publicKeyHash");
    HIWORD(v108[1]) = -4864;
    AnyHashable.init<A>(_:)();
    sub_1001A8824(&qword_100503000, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v48 = v89;
    v49 = v91;
    dispatch thunk of HashFunction.init()();
    v51 = v85;
    v50 = v86;
    sub_100069E2C(v85, v86);
    sub_100357FC4(v51, v50, v48);
    sub_10006A178(v51, v50);
    v52 = v92;
    dispatch thunk of HashFunction.finalize()();
    (*(v90 + 8))(v48, v49);
    v53 = v94;
    v109 = v94;
    v110 = sub_1001A8824(&qword_100503008, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v54 = sub_1000B9634(v108);
    v55 = v93;
    (*(v93 + 16))(v54, v52, v53);
    sub_1000752B0(v108, v109);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v99 = 0;
    (*(v55 + 8))(v52, v53);
    v57 = *(&v111 + 1);
    v56 = v111;
    sub_1000752F4(v108);
    v58 = Data.base64EncodedString(options:)(0);
    sub_10006A178(v56, v57);
    v59 = v100;
    v100[10]._object = &type metadata for String;
    v59[9] = v58;
    v108[0] = 0xD000000000000012;
    v108[1] = 0x80000001004626A0;
    AnyHashable.init<A>(_:)();
    v60 = v87;
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v61 = P256.KeyAgreement.PublicKey.x963Representation.getter();
    v63 = v62;
    v84(v60, v112);
    v64 = Data.base64EncodedString(options:)(0);
    sub_10006A178(v61, v63);
    v59[15]._countAndFlagsBits = &type metadata for String;
    *(v59 + 216) = v64;
    v108[0] = 1635017060;
    v108[1] = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    v65 = AES.GCM.SealedBox.ciphertext.getter();
    v67 = v66;
    v68 = AES.GCM.SealedBox.tag.getter();
    v70 = v69;
    *&v111 = v65;
    *(&v111 + 1) = v67;
    v109 = &type metadata for Data;
    v110 = &protocol witness table for Data;
    v108[0] = v68;
    v108[1] = v69;
    v71 = sub_1000752B0(v108, &type metadata for Data);
    v72 = v103;
    v74 = *v71;
    v73 = v71[1];
    sub_100069E2C(v65, v67);
    sub_100069E2C(v68, v70);
    sub_10008E4C8(v74, v73, &v111);
    sub_10006A178(v68, v70);
    sub_10006A178(v65, v67);
    sub_1000752F4(v108);
    v76 = *(&v111 + 1);
    v75 = v111;
    v77 = Data.base64EncodedString(options:)(0);
    sub_10006A178(v75, v76);
    v78 = v100;
    v100[19]._object = &type metadata for String;
    v78[18] = v77;
    v19 = sub_100090BC4(v78);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    sub_10006A178(v80, v81);
    (*(v95 + 8))(v97, v96);
    (*(v104 + 8))(v105, v102);
    (*(v72 + 8))(v82, v101);
    (*(v42 + 8))(v98, v88);
    v84(v83, v112);
  }

  return v19;
}

uint64_t sub_1001A87BC(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_1005054B8, &unk_10040CD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A8824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001A8890()
{
  result = qword_100504F58;
  if (!qword_100504F58)
  {
    sub_1000692D8(&qword_100504F50, &qword_1004146C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504F58);
  }

  return result;
}

uint64_t sub_1001A8910(uint64_t a1, unint64_t a2)
{
  v60 = a2;
  v3 = type metadata accessor for AES.GCM.Nonce();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for AES.GCM.SealedBox();
  v54 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymmetricKey();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SharedSecret();
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v58 = *(v13 - 8);
  v59 = v13;
  __chkstk_darwin(v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = 0xD000000000000012;
  v62 = 0x80000001004626A0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v16 = sub_10008CA7C(v63), (v17 & 1) == 0))
  {
    sub_100092F28(v63);
    goto LABEL_7;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v16, v64);
  sub_100092F28(v63);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v20 = sub_1000B9C54();
    v21 = "Missing ephemeralPublicKey";
    goto LABEL_8;
  }

  v51 = v7;
  v52 = Data.init(base64Encoded:options:)();
  v19 = v18;

  v53 = v19;
  if (v19 >> 60 == 15)
  {
    v20 = sub_1000B9C54();
    v21 = "Invalid ephemeralPublicKey";
LABEL_8:
    sub_10030990C(0, 1, 0xD00000000000001ALL, (v21 - 32) | 0x8000000000000000, 0);
    swift_willThrow();
    return v20;
  }

  v61 = 1635017060;
  v62 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v23 = sub_10008CA7C(v63), (v24 & 1) == 0))
  {
    sub_100092F28(v63);
    v26 = v52;
    goto LABEL_16;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v23, v64);
  sub_100092F28(v63);
  v25 = swift_dynamicCast();
  v26 = v52;
  if ((v25 & 1) == 0)
  {
LABEL_16:
    v20 = sub_1000B9C54();
    v29 = 0x20676E697373694DLL;
    goto LABEL_17;
  }

  v50 = Data.init(base64Encoded:options:)();
  v28 = v27;

  if (v28 >> 60 == 15)
  {
    v20 = sub_1000B9C54();
    v29 = 0x2064696C61766E49;
LABEL_17:
    sub_10030990C(0, 1, v29, 0xEC00000061746164, 0);
    swift_willThrow();
    v30 = v26;
    v31 = v53;
LABEL_18:
    sub_10006A2D0(v30, v31);
    return v20;
  }

  v49 = v28;
  v20 = v53;
  *&v63[0] = v26;
  *(&v63[0] + 1) = v53;
  sub_100069E2C(v26, v53);
  v32 = v65;
  P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  if (v32)
  {
    sub_10006A2D0(v26, v20);
    v30 = v50;
    v31 = v49;
    goto LABEL_18;
  }

  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  v60 = sub_1001A78F4();
  v65 = v33;
  result = sub_1001A6EF8(v60, v33, 0x20uLL);
  v34 = v49 >> 62;
  if ((v49 >> 62) <= 1)
  {
    v35 = v50;
    if (!v34)
    {
      v36 = BYTE6(v49);
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v35 = v50;
  if (v34 != 2)
  {
    v36 = 0;
    goto LABEL_31;
  }

  v38 = *(v50 + 16);
  v37 = *(v50 + 24);
  v39 = __OFSUB__(v37, v38);
  v36 = v37 - v38;
  if (v39)
  {
    __break(1u);
LABEL_28:
    LODWORD(v36) = HIDWORD(v35) - v35;
    if (__OFSUB__(HIDWORD(v35), v35))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v36 = v36;
  }

LABEL_31:
  v48 = v36 - 16;
  if (__OFSUB__(v36, 16))
  {
    __break(1u);
    goto LABEL_45;
  }

  v63[0] = xmmword_10040CD30;
  v40 = sub_1000937E0();
  result = AES.GCM.Nonce.init<A>(data:)();
  v47 = v40;
  if (v48 < 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v41 = v50;
  result = Data.subdata(in:)();
  *&v63[0] = result;
  *(&v63[0] + 1) = v42;
  if (v34 > 1)
  {
    v43 = 0;
    if (v34 != 2 || (v45 = *(v41 + 16), v44 = *(v41 + 24), v43 = v44 - v45, !__OFSUB__(v44, v45)))
    {
LABEL_42:
      result = v48;
      if (v43 >= v48)
      {
        v64[0] = Data.subdata(in:)();
        v64[1] = v46;
        AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
        v20 = static AES.GCM.open(_:using:)();
        sub_10006A178(v60, v65);
        sub_10006A2D0(v50, v49);
        sub_10006A2D0(v52, v53);
        (*(v54 + 8))(v6, v4);
        (*(v55 + 8))(v9, v51);
        (*(v56 + 8))(v12, v57);
        (*(v58 + 8))(v15, v59);
        return v20;
      }

      goto LABEL_46;
    }

    __break(1u);
  }

  else if (!v34)
  {
    v43 = BYTE6(v49);
    goto LABEL_42;
  }

  if (!__OFSUB__(HIDWORD(v41), v41))
  {
    v43 = HIDWORD(v41) - v41;
    goto LABEL_42;
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1001A91D4(void *a1)
{
  sub_1000752B0(a1, a1[3]);
  swift_getDynamicType();
  (*(a1[4] + 8))(&v10);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  v6 = sub_1001ADEA8(a1, v10, v11, v12, v13, v14);
  sub_1001AF6EC(v3, v4, v5);
  if (v1)
  {
    v24 = v15;
    return sub_100075768(&v24, &qword_100504EC8, &qword_10040C3B0);
  }

  else
  {
    v23 = v15;
    sub_100075768(&v23, &qword_100504EC8, &qword_10040C3B0);
    v9[0] = sub_1001303A8(v6);
    v9[1] = v7;
    sub_1000752B0(a1, a1[3]);
    swift_getDynamicType();
    (*(a1[4] + 8))(v16);
    sub_1001AB134(a1, v16, v9);
    v21 = v17;
    v22 = v18;
    sub_10018C454(&v21);
    v20 = v19;
    sub_100075768(&v20, &qword_100504EC8, &qword_10040C3B0);
    return v9[0];
  }
}

void sub_1001A93B8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
}

unint64_t sub_1001A93E0(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = a2[2];
  v5 = *(a2 + 32);
  if (v5 <= 0x3F)
  {
    v6 = sub_1001AC940(a1, 1);
    if (!v2)
    {
      v7 = *(v4 + 16);
      if (v7)
      {
        v8 = 0;
        v9 = v4 + 32;
        v10 = _swiftEmptyArrayStorage;
        v4 = &qword_1005053F0;
        do
        {
          v11 = (v9 + (v8 << 6));
          v12 = v8;
          while (1)
          {
            if (v12 >= v7)
            {
              __break(1u);
LABEL_198:
              __break(1u);
              goto LABEL_199;
            }

            v13 = *v11;
            v14 = v11[1];
            v15 = v11[3];
            v134 = v11[2];
            v135 = v15;
            v132 = v13;
            v133 = v14;
            v8 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_198;
            }

            if (BYTE8(v133))
            {
              sub_10007FC0C();
              v4 = swift_allocError();
              *(v75 + 8) = 0;
              *(v75 + 16) = 0;
              *v75 = 5;
              *(v75 + 24) = 3;
              swift_willThrow();

              return v4;
            }

            if (v133 == v6)
            {
              break;
            }

            ++v12;
            v11 += 4;
            if (v8 == v7)
            {
              goto LABEL_80;
            }
          }

          v16 = v6;
          sub_1000938D4(&v132, &v126, &qword_1005053F0, &unk_10040CDE0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10019F5F4(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v18 = _swiftEmptyArrayStorage[2];
          v17 = _swiftEmptyArrayStorage[3];
          v19 = v18 + 1;
          v6 = v16;
          if (v18 >= v17 >> 1)
          {
            sub_10019F5F4((v17 > 1), v18 + 1, 1);
            v4 = &qword_1005053F0;
            v19 = v18 + 1;
            v6 = v16;
          }

          _swiftEmptyArrayStorage[2] = v19;
          v20 = &_swiftEmptyArrayStorage[8 * v18];
          v21 = v132;
          v22 = v133;
          v23 = v135;
          v20[4] = v134;
          v20[5] = v23;
          v20[2] = v21;
          v20[3] = v22;
        }

        while (v8 != v7);
      }

LABEL_80:
      if (_swiftEmptyArrayStorage[2])
      {
        v67 = *&_swiftEmptyArrayStorage[6];
        v132 = *&_swiftEmptyArrayStorage[4];
        v133 = v67;
        v68 = *&_swiftEmptyArrayStorage[10];
        v134 = *&_swiftEmptyArrayStorage[8];
        v135 = v68;
        sub_1000938D4(&v132, &v126, &qword_1005053F0, &unk_10040CDE0);

        v69 = *(&v132 + 1);
        v70 = v134;
        v136 = v133;
        v137 = WORD4(v133);
        v138 = v134;
        v71 = v135;
        v139 = v135;
        v140 = *(&v135 + 1);
        v72 = v132;
        v73 = swift_allocObject();
        sub_1000938D4(&v132, &v126, &qword_1005053F0, &unk_10040CDE0);
        sub_1001AF6EC(v70, *(&v70 + 1), v71);

        *(v73 + 16) = v72;
        *(v73 + 24) = v69;
        v74 = sub_1001A93E0(v3, &v136);
        sub_100075768(&v132, &qword_1005053F0, &unk_10040CDE0);
        *(v73 + 32) = v74;
        return v73 | 0xA000000000000000;
      }

      else
      {

        sub_10007FC0C();
        swift_allocError();
        *(v76 + 8) = 0;
        *(v76 + 16) = 0;
        *v76 = 2;
        *(v76 + 24) = 3;
        swift_willThrow();
      }
    }

    return v4;
  }

  v25 = a2[3];
  v26 = v5 >> 6;
  v28 = v5 >> 6 == 3 && v4 == 3 && v25 == 0;
  if (v28 && v5 == 192)
  {
    sub_1001AD294(a1, 1);
    if (!v2)
    {
      if ((a2[1] & 1) != 0 || (v42 = *a2, *a2 == v39))
      {
        v106 = v40;
        v107 = v41;
        v108 = swift_allocObject();
        *(v108 + 16) = v106;
        *(v108 + 24) = v107;
        return v108 | 0x2000000000000000;
      }

      else
      {
        v43 = 0;
        v44 = *v3;
        v45 = v3[1] >> 62;
        v46 = v39;
        v4 = v40;
        v47 = v41;
        if (v45 > 1)
        {
          if (v45 == 2)
          {
            v43 = *(v44 + 16);
          }
        }

        else if (v45)
        {
          v43 = v44;
        }

        sub_10007FC0C();
        swift_allocError();
        *v113 = v46;
        *(v113 + 8) = v42;
        *(v113 + 16) = v43;
        *(v113 + 24) = 0;
        swift_willThrow();
        sub_10006A178(v4, v47);
      }
    }

    return v4;
  }

  sub_1001AD294(a1, 0);
  if (v2)
  {
    return v4;
  }

  v32 = v30;
  v33 = v31;
  *&v132 = v29;
  *(&v132 + 1) = v30;
  *&v133 = v31;
  v34 = a2;
  if ((a2[1] & 1) == 0)
  {
    v35 = *a2;
    if (*v34 != v29)
    {
      v36 = *v3;
      v37 = v3[1] >> 62;
      v4 = v29;
      if (v37 > 1)
      {
        v38 = 0;
        if (v37 == 2)
        {
          v38 = *(v36 + 16);
        }
      }

      else if (v37)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0;
      }

      sub_10007FC0C();
      swift_allocError();
      *v105 = v4;
      *(v105 + 8) = v35;
      *(v105 + 16) = v38;
      *(v105 + 24) = 0;
      goto LABEL_183;
    }
  }

  v48 = v34[5];
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = v31 >> 62;
    v51 = HIDWORD(v30) - v30;
    v52 = __OFSUB__(HIDWORD(v30), v30);
    v3 = BYTE6(v31);
    v53 = (v48 + 72);
    while (1)
    {
      v54 = *(v53 - 3);
      v55 = *(v53 - 1);
      if (*(v53 - 32))
      {
        goto LABEL_56;
      }

      v56 = *(v53 - 5);
      if (v50 <= 1)
      {
        break;
      }

      if (v50 == 2)
      {
        v59 = *(v32 + 16);
        v58 = *(v32 + 24);
        v60 = __OFSUB__(v58, v59);
        v57 = v58 - v59;
        if (v60)
        {
          goto LABEL_212;
        }

LABEL_53:
        if (v57 < v56)
        {
          goto LABEL_162;
        }

        goto LABEL_56;
      }

      if (v56 > 0)
      {
        goto LABEL_180;
      }

LABEL_56:
      if (*(v53 - 16))
      {
        goto LABEL_66;
      }

      if (v50 > 1)
      {
        if (v50 != 2)
        {
          if (v54 < 0)
          {
            goto LABEL_180;
          }

          goto LABEL_66;
        }

        v62 = *(v32 + 16);
        v63 = *(v32 + 24);
        v60 = __OFSUB__(v63, v62);
        v61 = v63 - v62;
        if (v60)
        {
          goto LABEL_215;
        }
      }

      else
      {
        v61 = BYTE6(v33);
        if (v50)
        {
          v61 = v51;
          if (v52)
          {
            goto LABEL_214;
          }
        }
      }

      if (v54 < v61)
      {
LABEL_162:
        if (v50 <= 1)
        {
          v4 = v29;
          if (v50)
          {
            v3 = v51;
            if (v52)
            {
              __break(1u);
LABEL_166:
              v109 = swift_allocObject();
              v110 = v3 + 1;
              if (v5)
              {
                v111 = sub_1001AA7A0(v110, v4, v25);
              }

              else
              {
                v111 = sub_1001AA244(v110, v4, v25);
              }

              *(v109 + 16) = v111;
              v4 = v109 | 0x6000000000000000;
              sub_10006A178(*(&v132 + 1), v133);
              return v4;
            }
          }

LABEL_181:
          sub_10007FC0C();
          swift_allocError();
          *v117 = v4;
          *(v117 + 8) = v3;
          *(v117 + 16) = 0;
          v118 = 1;
LABEL_182:
          *(v117 + 24) = v118;
LABEL_183:
          swift_willThrow();
          sub_10006A178(*(&v132 + 1), v133);
          return v4;
        }

        if (v50 != 2)
        {
LABEL_180:
          v4 = v29;
          v3 = 0;
          goto LABEL_181;
        }

        v115 = *(v32 + 16);
        v114 = *(v32 + 24);
        v3 = (v114 - v115);
        if (!__OFSUB__(v114, v115))
        {
          v4 = v29;
          goto LABEL_181;
        }

LABEL_229:
        __break(1u);
      }

LABEL_66:
      if ((*v53 & 1) == 0)
      {
        if (v50 > 1)
        {
          if (v50 == 2)
          {
            v66 = *(v32 + 16);
            v65 = *(v32 + 24);
            v60 = __OFSUB__(v65, v66);
            v64 = v65 - v66;
            if (v60)
            {
              goto LABEL_217;
            }
          }

          else
          {
            v64 = 0;
          }
        }

        else
        {
          v64 = BYTE6(v33);
          if (v50)
          {
            v64 = v51;
            if (v52)
            {
              goto LABEL_216;
            }
          }
        }

        if (!v55)
        {
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
          goto LABEL_219;
        }

        if (v64 == 0x8000000000000000 && v55 == -1)
        {
          __break(1u);
          goto LABEL_80;
        }

        if (v64 % v55)
        {
          goto LABEL_162;
        }
      }

      v53 += 48;
      if (!--v49)
      {
        goto LABEL_84;
      }
    }

    v57 = BYTE6(v33);
    if (v50)
    {
      v57 = v51;
      if (v52)
      {
        goto LABEL_213;
      }
    }

    goto LABEL_53;
  }

LABEL_84:
  v3 = &v132;
  if (v26 == 1)
  {
    goto LABEL_166;
  }

  if (v26 != 2)
  {
    if (v25 | v4 || v5 != 192)
    {
      if (v4 == 1 && !v25 && v5 == 192)
      {
        v119 = v29;
        v120 = swift_allocObject();
        *(v120 + 16) = v119;
        *(v120 + 24) = sub_1001AD600(v32, v33);
        v4 = v120 | 0x4000000000000000;
      }

      else
      {
        if (v4 != 2 || v25 || v5 != 192)
        {
          sub_10007FC0C();
          swift_allocError();
          *(v117 + 8) = 0;
          *(v117 + 16) = 0;
          *v117 = 2;
          v118 = 3;
          goto LABEL_182;
        }

        v4 = swift_allocObject();
        *(v4 + 16) = sub_1001AD89C(v32, v33) & 1;
      }
    }

    else
    {
      v112 = swift_allocObject();
      *(v112 + 16) = v32;
      *(v112 + 24) = v33;
      v4 = v112 | 0x2000000000000000;
      sub_100069E2C(v32, v33);
    }

    sub_10006A178(v32, v33);
    return v4;
  }

  v77 = *(v4 + 48);
  v142 = *(v4 + 32);
  v143 = v77;
  v141 = *(v4 + 16);
  v144 = v142;
  v145 = *(v4 + 48);
  v125 = *(&v77 + 1);
  v123 = swift_allocObject();
  sub_1001AF70C(&v144, &v126);
  sub_1000938D4(&v125, &v126, &qword_100504EC8, &qword_10040C3B0);
  v78 = _swiftEmptyArrayStorage;
  while (1)
  {
    v79 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v79 != 2)
      {
        goto LABEL_196;
      }

      v82 = *(v32 + 16);
      v81 = *(v32 + 24);
      v60 = __OFSUB__(v81, v82);
      v80 = v81 - v82;
      if (v60)
      {
        goto LABEL_220;
      }
    }

    else if (v79)
    {
      LODWORD(v80) = HIDWORD(v32) - v32;
      if (__OFSUB__(HIDWORD(v32), v32))
      {
        goto LABEL_221;
      }

      v80 = v80;
    }

    else
    {
      v80 = BYTE6(v33);
    }

    if (!v80)
    {
LABEL_196:
      *(v123 + 16) = v78;
      sub_10018C454(&v144);
      sub_100075768(&v125, &qword_100504EC8, &qword_10040C3B0);
      v4 = v123 | 0x8000000000000000;
      sub_10006A178(v32, v33);
      return v4;
    }

    v124 = v78;
    if (v79 == 2)
    {
      v86 = *(v32 + 16);
      v85 = *(v32 + 24);
      v60 = __OFSUB__(v85, v86);
      v84 = v85 - v86;
      if (v60)
      {
        goto LABEL_222;
      }

      v83 = 0;
    }

    else
    {
      v83 = 0;
      if (v79 == 1)
      {
        LODWORD(v84) = HIDWORD(v32) - v32;
        if (__OFSUB__(HIDWORD(v32), v32))
        {
          goto LABEL_223;
        }

        v84 = v84;
      }

      else
      {
        v84 = BYTE6(v33);
      }
    }

    if (!v84)
    {
LABEL_178:
      sub_10007FC0C();
      swift_allocError();
      *(v116 + 8) = 0;
      *(v116 + 16) = 0;
      *v116 = 0;
      *(v116 + 24) = 3;
      swift_willThrow();

LABEL_179:
      swift_deallocUninitializedObject();
      sub_10018C454(&v144);
      sub_100075768(&v125, &qword_100504EC8, &qword_10040C3B0);
      sub_10006A178(*(&v132 + 1), v133);
      return v4;
    }

    if (v79)
    {
      break;
    }

    if ((v33 & 0xFF000000000000) == 0)
    {
      goto LABEL_224;
    }

    v8 = v32;
LABEL_118:
    if ((~v8 & 0x1E) == 0)
    {
      if (v79)
      {
        if (v79 == 2)
        {
          v93 = *(v32 + 16);
        }

        else
        {
          v93 = v32;
        }
      }

      else
      {
        v93 = 0;
      }

      v94 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        goto LABEL_218;
      }

      if (v79 == 2)
      {
        v95 = *(v32 + 24);
      }

      else if (v79 == 1)
      {
        v95 = v32 >> 32;
      }

      else
      {
        v95 = BYTE6(v33);
      }

      if (v95 < v94)
      {
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
        goto LABEL_229;
      }

      while (1)
      {
        if (v95 == v94)
        {
          goto LABEL_178;
        }

        if (v79 == 2)
        {
          break;
        }

        if (v79 == 1)
        {
          if (v94 < v32 || v94 >= v32 >> 32)
          {
            goto LABEL_208;
          }

          v97 = v83;
          result = __DataStorage._bytes.getter();
          if (!result)
          {
            __break(1u);
LABEL_231:
            __break(1u);
            goto LABEL_232;
          }

          v98 = result;
          v4 = v33 & 0x3FFFFFFFFFFFFFFFLL;
          v99 = __DataStorage._offset.getter();
          v100 = v94 - v99;
          if (__OFSUB__(v94, v99))
          {
            goto LABEL_210;
          }

          goto LABEL_132;
        }

        if (v94 >= BYTE6(v33))
        {
          goto LABEL_207;
        }

        v126 = v32;
        v127 = v33;
        v128 = BYTE2(v33);
        v129 = BYTE3(v33);
        v130 = BYTE4(v33);
        v131 = BYTE5(v33);
        v96 = *(&v126 + v94);
LABEL_133:
        v8 = v96 | (v8 << 8);
        ++v94;
        if ((v96 & 0x80) == 0)
        {
          goto LABEL_151;
        }
      }

      if (v94 < *(v32 + 16))
      {
        goto LABEL_206;
      }

      if (v94 >= *(v32 + 24))
      {
        goto LABEL_209;
      }

      v97 = v83;
      result = __DataStorage._bytes.getter();
      if (!result)
      {
        goto LABEL_231;
      }

      v98 = result;
      v4 = v33 & 0x3FFFFFFFFFFFFFFFLL;
      v101 = __DataStorage._offset.getter();
      v100 = v94 - v101;
      if (__OFSUB__(v94, v101))
      {
        goto LABEL_211;
      }

LABEL_132:
      v96 = *(v98 + v100);
      v83 = v97;
      goto LABEL_133;
    }

LABEL_151:
    if ((BYTE8(v141) & 1) == 0)
    {
      v10 = v141;
      if (v141 != v8)
      {
LABEL_199:

        v4 = 0;
        v121 = v133 >> 62;
        if ((v133 >> 62) > 1)
        {
          if (v121 == 2)
          {
            v4 = *(*(&v132 + 1) + 16);
          }
        }

        else if (v121)
        {
          v4 = SDWORD2(v132);
        }

        sub_10007FC0C();
        swift_allocError();
        *v122 = v8;
        *(v122 + 8) = v10;
        *(v122 + 16) = v4;
        *(v122 + 24) = 0;
        swift_willThrow();
        goto LABEL_179;
      }
    }

    v78 = v124;
    v102 = sub_1001A93E0(&v132 + 1, &v141);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_10012F55C(0, *(v124 + 2) + 1, 1, v124);
    }

    v104 = *(v78 + 2);
    v103 = *(v78 + 3);
    v4 = v104 + 1;
    if (v104 >= v103 >> 1)
    {
      v78 = sub_10012F55C((v103 > 1), v104 + 1, 1, v78);
    }

    *(v78 + 2) = v4;
    *&v78[8 * v104 + 32] = v102;
    v32 = *(&v132 + 1);
    v33 = v133;
  }

  if (v79 != 2)
  {
    if (v32 >= v32 >> 32)
    {
      goto LABEL_226;
    }

    result = __DataStorage._bytes.getter();
    if (!result)
    {
      goto LABEL_233;
    }

    v89 = result;
    v4 = v33 & 0x3FFFFFFFFFFFFFFFLL;
    v92 = __DataStorage._offset.getter();
    v91 = v32 - v92;
    if (__OFSUB__(v32, v92))
    {
      goto LABEL_227;
    }

    goto LABEL_117;
  }

  v87 = *(v32 + 16);
  if (v87 >= *(v32 + 24))
  {
    goto LABEL_225;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v89 = result;
    v4 = v33 & 0x3FFFFFFFFFFFFFFFLL;
    v90 = __DataStorage._offset.getter();
    v91 = v87 - v90;
    if (__OFSUB__(v87, v90))
    {
      goto LABEL_228;
    }

LABEL_117:
    v8 = *(v89 + v91);
    v83 = 0;
    goto LABEL_118;
  }

LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
  return result;
}

uint64_t *sub_1001AA244(uint64_t *result, uint64_t a2, char a3)
{
  v51 = result;
  v3 = *(a2 + 16);
  if (!v3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = 0;
  v46 = a2 + 96;
  v47 = a2 + 32;
  v5 = _swiftEmptyDictionarySingleton;
  v77 = *(a2 + 16);
  while (1)
  {
    if (v4 >= v3)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return result;
    }

    v6 = (v47 + (v4 << 6));
    v7 = v6[3];
    v68 = v6[2];
    v69 = v7;
    v8 = v6[1];
    v66 = *v6;
    v67 = v8;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_55;
    }

    v11 = *(&v66 + 1);
    v10 = v67;
    v12 = BYTE8(v67);
    v13 = BYTE9(v67);
    v15 = *(&v68 + 1);
    v14 = v68;
    v16 = *v51;
    v17 = v51[1];
    v18 = v17 >> 62;
    v52 = v66;
    v50 = v69;
    v49 = *(&v69 + 1);
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        break;
      }

      v21 = v16 + 16;
      v19 = *(v16 + 16);
      v20 = *(v21 + 8);
      v22 = __OFSUB__(v20, v19);
      v16 = v20 - v19;
      if (v22)
      {
        goto LABEL_57;
      }
    }

    else if (v18)
    {
      v22 = __OFSUB__(HIDWORD(v16), v16);
      LODWORD(v16) = HIDWORD(v16) - v16;
      if (v22)
      {
        goto LABEL_56;
      }

      v16 = v16;
    }

    else
    {
      v16 = BYTE6(v17);
    }

    if (!v16)
    {
      break;
    }

    sub_1000938D4(&v66, &v60, &qword_1005053F0, &unk_10040CDE0);
    result = sub_1001AC940(v51, 1);
    if (v54)
    {

      goto LABEL_41;
    }

    v48 = v5;
    v23 = v52;
    *&v60 = v52;
    *(&v60 + 1) = v11;
    v61 = v10;
    LOBYTE(v62) = v12;
    HIBYTE(v62) = v13;
    v24 = v14;
    *&v63 = v14;
    *(&v63 + 1) = v15;
    v25 = v50;
    v64 = v50;
    if (v10 == result)
    {
      v26 = 1;
    }

    else
    {
      v26 = v12;
    }

    v27 = v49;
    v65 = v49;
    if ((v26 & 1) == 0)
    {
      v30 = (v46 + (v4 << 6));
      while (1)
      {
        if ((v13 & 1) == 0)
        {
          v14 = v24;
          v34 = result;
          v50 = v25;
          v49 = v27;
          v52 = v23;
          v5 = v48;

          v35 = *v51;
          v36 = v51[1] >> 62;
          if (v36 > 1)
          {
            v37 = 0;
            if (v36 == 2)
            {
              v37 = *(v35 + 16);
            }
          }

          else if (v36)
          {
            v37 = v35;
          }

          else
          {
            v37 = 0;
          }

          sub_10007FC0C();
          swift_allocError();
          *v39 = v34;
          *(v39 + 8) = v10;
          *(v39 + 16) = v37;
          *(v39 + 24) = 0;
          swift_willThrow();
          v12 = 0;
          v13 = 0;
          goto LABEL_41;
        }

        if (v77 == v9)
        {
          break;
        }

        if (v9 >= v77)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v31 = result;
        v32 = v30[1];
        v56 = *v30;
        v57 = v32;
        v33 = v30[3];
        v58 = v30[2];
        v59 = v33;
        sub_1000938D4(&v56, v55, &qword_1005053F0, &unk_10040CDE0);
        result = sub_100075768(&v60, &qword_1005053F0, &unk_10040CDE0);
        v4 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_53;
        }

        v11 = *(&v56 + 1);
        v23 = v56;
        v27 = *(&v59 + 1);
        v25 = v59;
        v15 = *(&v58 + 1);
        v24 = v58;
        v13 = BYTE9(v57);
        v12 = BYTE8(v57);
        v10 = v57;
        v60 = v56;
        v61 = v57;
        v62 = WORD4(v57);
        v63 = v58;
        v64 = v59;
        v65 = *(&v59 + 1);
        if ((BYTE8(v57) & 1) == 0)
        {
          ++v9;
          v30 += 4;
          result = v31;
          if (v57 != v31)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      if ((a3 & 1) == 0)
      {
        v14 = v24;
        v50 = v25;
        v49 = v27;
        v52 = v23;
        v5 = v48;

        sub_10007FC0C();
        swift_allocError();
        v13 = 1;
        *(v38 + 8) = 0;
        *(v38 + 16) = 0;
        *v38 = 1;
        *(v38 + 24) = 3;
        swift_willThrow();
        v12 = 0;
        goto LABEL_41;
      }

      sub_100075768(&v60, &qword_1005053F0, &unk_10040CDE0);
      return v48;
    }

    ++v4;
LABEL_21:
    v53 = v23;
    v70 = v10;
    v71 = v12;
    v72 = v13;
    v73 = v24;
    v74 = v15;
    v75 = v25;
    v76 = v27;

    v28 = sub_1001A93E0(v51, &v70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v56 = v48;
    sub_100316520(v28, v53, v11, isUniquelyReferenced_nonNull_native);

    result = sub_100075768(&v60, &qword_1005053F0, &unk_10040CDE0);
    v5 = v56;
    v3 = v77;
    if (v4 == v77)
    {
      return v5;
    }
  }

  if (!BYTE9(v67))
  {
LABEL_50:
    sub_1000938D4(&v66, &v60, &qword_1005053F0, &unk_10040CDE0);

    sub_10007FC0C();
    swift_allocError();
    *(v43 + 8) = 0;
    *(v43 + 16) = 0;
    *v43 = 1;
    *(v43 + 24) = 3;
    swift_willThrow();
LABEL_41:
    *&v60 = v52;
    *(&v60 + 1) = v11;
    v61 = v10;
    LOBYTE(v62) = v12;
    HIBYTE(v62) = v13;
    *&v63 = v14;
    *(&v63 + 1) = v15;
    v64 = v50;
    v65 = v49;
    sub_100075768(&v60, &qword_1005053F0, &unk_10040CDE0);
    return v5;
  }

  v40 = (a2 + (v4 << 6) + 121);
  v41 = v4 + 1;
  while (v77 != v41)
  {
    if (v41 >= v77)
    {
      goto LABEL_58;
    }

    if (__OFADD__(v41, 1))
    {
      goto LABEL_59;
    }

    v42 = *v40;
    v40 += 64;
    ++v41;
    if ((v42 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  return v5;
}