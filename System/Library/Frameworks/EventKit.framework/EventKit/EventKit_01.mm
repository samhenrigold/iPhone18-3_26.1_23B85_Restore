unint64_t sub_1A818D1F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28B0, &qword_1A81C4390);
    v2 = sub_1A81AD044();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1A8183394(*(a1 + 48) + 40 * v12, v27);
        sub_1A8182480(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1A8183394(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1A8182480(v25 + 8, v20);
        sub_1A8188C34(v24, &qword_1EB2E2908, &qword_1A81C43D8);
        v21 = v18;
        sub_1A8183084(v20, v22);
        v13 = v21;
        sub_1A8183084(v22, v23);
        sub_1A8183084(v23, &v21);
        result = sub_1A8182568(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_1A8183084(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1A8183084(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1A8188C34(v24, &qword_1EB2E2908, &qword_1A81C43D8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id EKRemoteUIObjectSerializer.deserializedRepresentation(serializedDictionary:objectIDToChangeSetDictionaryMap:objectIDToPersistentDictionaryMap:eventStore:occurrenceDate:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = MEMORY[0x1E69E7CC8];
  v12 = MEMORY[0x1E69E7CC8];
  v5 = sub_1A818D57C(a1, a2, a3, a4, a5, &v12, &v11);

  if (v5)
  {
    v6 = v12;
    if (v12)
    {
      v7 = type metadata accessor for EKRemoteUIDeserializedObject();
      v8 = objc_allocWithZone(v7);
      *&v8[OBJC_IVAR____TtC8EventKit28EKRemoteUIDeserializedObject_deserializedObject] = v5;
      *&v8[OBJC_IVAR____TtC8EventKit28EKRemoteUIDeserializedObject_tempObjectIDMap] = v6;
      v10.receiver = v8;
      v10.super_class = v7;
      return objc_msgSendSuper2(&v10, sel_init);
    }
  }

  else
  {
  }

  return 0;
}

id sub_1A818D57C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v319 = a7;
  v318 = a6;
  v320 = a4;
  v317 = a3;
  v316 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E2810, &qword_1A81C4330);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v315 = v297 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v297 - v12;
  if (*(a1 + 16) && (v14 = sub_1A8182568(*(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKIsPendingInsertKey), *(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKIsPendingInsertKey + 8)), (v15 & 1) != 0) && (sub_1A8182480(*(a1 + 56) + 32 * v14, &v329), sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v326;
    v17 = [v326 BOOLValue];
    if (!*(a1 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_15;
    }
  }

  v18 = sub_1A8182568(*(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKPersistentObjectKey), *(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKPersistentObjectKey + 8));
  if ((v19 & 1) == 0 || (sub_1A8182480(*(a1 + 56) + 32 * v18, &v329), sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00), (swift_dynamicCast() & 1) == 0))
  {
LABEL_15:
    if (qword_1EB2E2608 != -1)
    {
      goto LABEL_268;
    }

    goto LABEL_16;
  }

  v20 = v326;
  v21 = sub_1A818FF60(v326, v317, v320, v17, v318, v319);
  if (!v21)
  {
    if (qword_1EB2E2608 != -1)
    {
      goto LABEL_277;
    }

    goto LABEL_21;
  }

  v22 = v21;
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  v304 = v22;
  if (v23)
  {
    v24 = v23;
    v25 = v20;
    sub_1A819549C(a5, v13);
    v26 = sub_1A81ACA54();
    v27 = *(v26 - 8);
    v28 = (*(v27 + 48))(v13, 1, v26);
    v29 = v22;
    v30 = 0;
    if (v28 != 1)
    {
      v30 = sub_1A81ACA34();
      (*(v27 + 8))(v13, v26);
    }

    v31 = [objc_allocWithZone(EKEvent) initWithPersistentObject:v24 occurrenceDate:v30];

    v20 = v25;
    if (!v31)
    {
LABEL_33:
      if (qword_1EB2E2608 != -1)
      {
        goto LABEL_280;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v42 = [v320 publicObjectWithPersistentObject_];
    if (!v42)
    {
      goto LABEL_33;
    }

    v31 = v42;
  }

  v305 = v31;
  if (!*(a1 + 16) || (v43 = sub_1A8182568(*(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetKey), *(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetKey + 8)), (v44 & 1) == 0) || (sub_1A8182480(*(a1 + 56) + 32 * v43, &v329), v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2820, &qword_1A81C4338), (swift_dynamicCast() & 1) == 0))
  {
LABEL_198:
    [v305 _resetAfterUpdatingChangeSetOrBackingObject];
    sub_1A8188E70(*(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKCachedMeltedObjectsKey), *(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKCachedMeltedObjectsKey + 8), a1, &v329);
    if (*(&v330 + 1))
    {
      v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2820, &qword_1A81C4338);
      if (swift_dynamicCast())
      {
        v301 = v20;
        v222 = v326 + 64;
        v223 = 1 << *(v326 + 32);
        v224 = -1;
        if (v223 < 64)
        {
          v224 = ~(-1 << v223);
        }

        v20 = v224 & *(v326 + 64);
        v225 = (v223 + 63) >> 6;
        i = *MEMORY[0x1E6992570];
        v308 = v326;

        v226 = 0;
        *&v312 = MEMORY[0x1E69E7CC8];
        v309 = v222;
        v311 = v225;
        v303 = v16;
        v302 = v221;
        while (1)
        {
          if (v20)
          {
            v227 = v226;
            goto LABEL_214;
          }

          if (v225 <= v226 + 1)
          {
            v228 = v226 + 1;
          }

          else
          {
            v228 = v225;
          }

          v229 = v228 - 1;
          do
          {
            v227 = v226 + 1;
            if (__OFADD__(v226, 1))
            {
              __break(1u);
LABEL_268:
              swift_once();
LABEL_16:
              v32 = sub_1A81ACC64();
              __swift_project_value_buffer(v32, qword_1EB2E3378);
              v33 = sub_1A81ACC44();
              v34 = sub_1A81ACDE4();
              if (os_log_type_enabled(v33, v34))
              {
                v35 = swift_slowAlloc();
                *v35 = 0;
                _os_log_impl(&dword_1A805E000, v33, v34, "EKRemoteUIObjectSerializer: Cannot create persistentObject because objectID is nil", v35, 2u);
                MEMORY[0x1AC569C60](v35, -1, -1);
              }

              goto LABEL_19;
            }

            if (v227 >= v225)
            {
              v20 = 0;
              v327 = 0u;
              v328 = 0u;
              v226 = v229;
              v326 = 0u;
              goto LABEL_215;
            }

            v20 = *(v222 + 8 * v227);
            ++v226;
          }

          while (!v20);
          v226 = v227;
LABEL_214:
          v230 = __clz(__rbit64(v20));
          v20 &= v20 - 1;
          v231 = v230 | (v227 << 6);
          v232 = (*(v308 + 48) + 16 * v231);
          v234 = *v232;
          v233 = v232[1];
          sub_1A8182480(*(v308 + 56) + 32 * v231, &v324);
          *&v326 = v234;
          *(&v326 + 1) = v233;
          sub_1A8183084(&v324, &v327);

LABEL_215:
          v329 = v326;
          v330 = v327;
          v331 = v328;
          v313 = *(&v326 + 1);
          if (!*(&v326 + 1))
          {

            v20 = v301;
            v294 = v312;
            goto LABEL_266;
          }

          v235 = v329;
          sub_1A8183084(&v330, &v326);
          sub_1A8182480(&v326, &v324);
          if (!swift_dynamicCast())
          {
            v310 = v235;
            sub_1A8182480(&v326, &v324);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2838, &qword_1A81C4348);
            if ((swift_dynamicCast() & 1) == 0)
            {
              __swift_destroy_boxed_opaque_existential_0(&v326);

              continue;
            }

            v241 = *&v323[0];
            v314 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
            v307 = v241;
            v242 = *(v241 + 16);
            if (v242)
            {
              v16 = v307 + 32;
              v243 = sub_1A81ACA54();
              v244 = *(*(v243 - 8) + 56);
              do
              {
                v245 = v315;
                v244(v315, 1, 1, v243);

                v247 = sub_1A818D57C(v246, v316, v317, v320, v245, v318, v319);

                sub_1A8188C34(v245, &unk_1EB2E2810, &qword_1A81C4330);
                if (v247)
                {
                  [v314 addObject_];
                }

                v16 += 8;
                --v242;
              }

              while (v242);
            }

            v325 = sub_1A81831D0(0, &qword_1EB2E2840, 0x1E695DFA8);
            v253 = v314;
            *&v324 = v314;
            sub_1A8183084(&v324, v323);
            v254 = v253;
            v255 = v312;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v322 = v255;
            v257 = sub_1A8182568(v310, v313);
            v259 = v255[2];
            v260 = (v258 & 1) == 0;
            v86 = __OFADD__(v259, v260);
            v261 = v259 + v260;
            if (!v86)
            {
              v262 = v258;
              if (v255[3] >= v261)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v293 = v257;
                  sub_1A8193258();
                  v257 = v293;
                }
              }

              else
              {
                sub_1A81922B8(v261, isUniquelyReferenced_nonNull_native);
                v257 = sub_1A8182568(v310, v313);
                if ((v262 & 1) != (v263 & 1))
                {
                  goto LABEL_287;
                }
              }

              v16 = v303;
              v225 = v311;
              v286 = v322;
              *&v312 = v322;
              if (v262)
              {
                v287 = (v322[7] + 32 * v257);
                __swift_destroy_boxed_opaque_existential_0(v287);
                sub_1A8183084(v323, v287);
              }

              else
              {
                v322[(v257 >> 6) + 8] |= 1 << v257;
                v288 = (v286[6] + 16 * v257);
                v289 = v313;
                *v288 = v310;
                v288[1] = v289;
                sub_1A8183084(v323, (v286[7] + 32 * v257));
                v290 = v286[2];
                v86 = __OFADD__(v290, 1);
                v291 = v290 + 1;
                if (v86)
                {
                  goto LABEL_275;
                }

                v286[2] = v291;
              }

              __swift_destroy_boxed_opaque_existential_0(&v326);
              v222 = v309;
              continue;
            }

            goto LABEL_273;
          }

          v236 = *&v323[0];
          v237 = sub_1A81ACA54();
          v238 = v315;
          (*(*(v237 - 8) + 56))(v315, 1, 1, v237);
          v239 = sub_1A818D57C(v236, v316, v317, v320, v238, v318, v319);
          sub_1A8188C34(v238, &unk_1EB2E2810, &qword_1A81C4330);
          if (v235 == sub_1A81ACCC4() && v240 == v313)
          {

            goto LABEL_227;
          }

          v248 = sub_1A81AD074();

          if ((v248 & 1) == 0)
          {

            v225 = v311;
LABEL_238:
            v222 = v309;
            if (!v239)
            {
              goto LABEL_243;
            }

LABEL_239:
            v325 = sub_1A81831D0(0, &qword_1EB2E2848, off_1E77FB9F0);
            *&v324 = v239;
            sub_1A8183084(&v324, v323);
            v264 = v239;
            v265 = v312;
            v266 = swift_isUniquelyReferenced_nonNull_native();
            v322 = v265;
            v267 = sub_1A8182568(v235, v313);
            v269 = v265[2];
            v270 = (v268 & 1) == 0;
            v86 = __OFADD__(v269, v270);
            v271 = v269 + v270;
            if (!v86)
            {
              v272 = v268;
              if (v265[3] >= v271)
              {
                if ((v266 & 1) == 0)
                {
                  v292 = v267;
                  sub_1A8193258();
                  v267 = v292;
                }
              }

              else
              {
                sub_1A81922B8(v271, v266);
                v267 = sub_1A8182568(v235, v313);
                if ((v272 & 1) != (v273 & 1))
                {
                  goto LABEL_287;
                }
              }

              v225 = v311;
              if (v272)
              {
                v279 = v267;

                *&v312 = v322;
                v280 = (v322[7] + 32 * v279);
                __swift_destroy_boxed_opaque_existential_0(v280);
                sub_1A8183084(v323, v280);

                __swift_destroy_boxed_opaque_existential_0(&v326);
LABEL_253:
                v222 = v309;
                continue;
              }

              v281 = v322;
              v322[(v267 >> 6) + 8] |= 1 << v267;
              v282 = (v281[6] + 16 * v267);
              v283 = v313;
              *v282 = v235;
              v282[1] = v283;
              sub_1A8183084(v323, (v281[7] + 32 * v267));

              __swift_destroy_boxed_opaque_existential_0(&v326);
              v284 = v281[2];
              v86 = __OFADD__(v284, 1);
              v285 = v284 + 1;
              if (!v86)
              {
                *&v312 = v281;
                v281[2] = v285;
                goto LABEL_253;
              }

LABEL_274:
              __break(1u);
LABEL_275:
              __break(1u);
              goto LABEL_276;
            }

LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
            goto LABEL_274;
          }

LABEL_227:
          v225 = v311;
          if (v239)
          {
            v249 = [v239 objectID];
            if (v249)
            {
              v250 = v249;

              v251 = [v250 isVirtual];

              if (v251)
              {
                v252 = [v320 defaultCalendarForNewEvents];

                v239 = v252;
                goto LABEL_238;
              }

              goto LABEL_239;
            }

LABEL_286:
            __break(1u);
LABEL_287:
            result = sub_1A81AD0B4();
            __break(1u);
            return result;
          }

          v222 = v309;
LABEL_243:
          v274 = v312;
          v275 = sub_1A8182568(v235, v313);
          v277 = v276;

          if (v277)
          {
            v278 = swift_isUniquelyReferenced_nonNull_native();
            v322 = v274;
            if (!v278)
            {
              sub_1A8193258();
              v274 = v322;
            }

            sub_1A8183084((*(v274 + 56) + 32 * v275), v323);
            *&v312 = v274;
            sub_1A8192AA0(v275, v274);
            __swift_destroy_boxed_opaque_existential_0(&v326);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(&v326);
            memset(v323, 0, sizeof(v323));
          }

          sub_1A8188C34(v323, &qword_1EB2E2830, &qword_1A81C4340);
        }
      }
    }

    else
    {
      sub_1A8188C34(&v329, &qword_1EB2E2830, &qword_1A81C4340);
    }

    v294 = MEMORY[0x1E69E7CC8];
LABEL_266:
    sub_1A81909D0(v294);

    v295 = sub_1A81ACC74();

    v296 = v305;
    [v305 setCachedMeltedObjects_];

    return v296;
  }

  v45 = *(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetSingleValueChangesKey);
  v46 = *(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetSingleValueChangesKey + 8);
  i = v326;
  sub_1A8188E70(v45, v46, v326, &v329);
  v303 = v16;
  v301 = v20;
  if (!*(&v330 + 1))
  {
    sub_1A8188C34(&v329, &qword_1EB2E2830, &qword_1A81C4340);
    goto LABEL_90;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_90:
    v314 = MEMORY[0x1E69E7CC8];
    goto LABEL_92;
  }

  v20 = 0;
  v48 = v326 + 64;
  v47 = *(v326 + 64);
  v311 = v326;
  v49 = 1 << *(v326 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v47;
  v16 = (v49 + 63) >> 6;
  v314 = MEMORY[0x1E69E7CC8];
  v309 = v16;
  v308 = v326 + 64;
  while (1)
  {
    if (v51)
    {
      v59 = v20;
LABEL_48:
      v62 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v63 = v62 | (v59 << 6);
      v64 = (*(v311 + 48) + 16 * v63);
      v66 = *v64;
      v65 = v64[1];
      sub_1A8182480(*(v311 + 56) + 32 * v63, &v336);
      *&v326 = v66;
      *(&v326 + 1) = v65;
      sub_1A8183084(&v336, &v327);
    }

    else
    {
      v60 = v16 <= (v20 + 1) ? v20 + 1 : v16;
      v61 = v60 - 1;
      while (1)
      {
        v59 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
          goto LABEL_272;
        }

        if (v59 >= v16)
        {
          break;
        }

        v51 = *(v48 + 8 * v59);
        ++v20;
        if (v51)
        {
          v20 = v59;
          goto LABEL_48;
        }
      }

      v51 = 0;
      v327 = 0u;
      v328 = 0u;
      v20 = v61;
      v326 = 0u;
    }

    v329 = v326;
    v330 = v327;
    v331 = v328;
    v67 = *(&v326 + 1);
    if (!*(&v326 + 1))
    {
      break;
    }

    v68 = v329;
    sub_1A8183084(&v330, &v326);
    sub_1A8182480(&v326, &v336);
    type metadata accessor for EKRemoteUIPersistentObjectPointer();
    if (swift_dynamicCast())
    {
      v69 = *(v332 + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID);
      *&v312 = v332;
      v70 = *(v332 + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert);
      v71 = v305;
      ObjCClassFromObject = swift_getObjCClassFromObject();
      v73 = v69;
      v74 = v71;
      v313 = v68;
      v75 = sub_1A81ACCB4();
      v76 = [ObjCClassFromObject isWeakRelationObject:v74 forKey:v75];

      if (v76)
      {
        v77 = sub_1A81952A4(v73, v320, *v319);
        v48 = v308;
        if (!v77)
        {
          goto LABEL_71;
        }

        v78 = v77;
        v310 = v73;
        v338 = sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
        *&v336 = v78;
        sub_1A8183084(&v336, &v332);
        v79 = v78;
        v80 = v314;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        *&v324 = v80;
        v82 = sub_1A8182568(v313, v67);
        v84 = v80[2];
        v85 = (v83 & 1) == 0;
        v86 = __OFADD__(v84, v85);
        v87 = v84 + v85;
        v16 = v309;
        if (v86)
        {
          goto LABEL_282;
        }

        v88 = v83;
        if (v80[3] < v87)
        {
          sub_1A81922B8(v87, v81);
          v82 = sub_1A8182568(v313, v67);
          if ((v88 & 1) != (v89 & 1))
          {
            goto LABEL_287;
          }

LABEL_73:
          if ((v88 & 1) == 0)
          {
            goto LABEL_74;
          }

          goto LABEL_79;
        }

        if (v81)
        {
          goto LABEL_73;
        }

        v121 = v82;
        sub_1A8193258();
        v82 = v121;
        if ((v88 & 1) == 0)
        {
LABEL_74:
          v114 = v324;
          *(v324 + 8 * (v82 >> 6) + 64) |= 1 << v82;
          v115 = (v114[6] + 16 * v82);
          *v115 = v313;
          v115[1] = v67;
          sub_1A8183084(&v332, (v114[7] + 32 * v82));

          __swift_destroy_boxed_opaque_existential_0(&v326);
          v116 = v114[2];
          v86 = __OFADD__(v116, 1);
          v117 = v116 + 1;
          if (v86)
          {
            goto LABEL_284;
          }

          goto LABEL_86;
        }

LABEL_79:
        v118 = v82;

        v314 = v324;
        v119 = (*(v324 + 56) + 32 * v118);
        __swift_destroy_boxed_opaque_existential_0(v119);
        sub_1A8183084(&v332, v119);

        __swift_destroy_boxed_opaque_existential_0(&v326);
      }

      else
      {
        v100 = sub_1A818FF60(v73, v316, v320, v70, v318, v319);
        v48 = v308;
        if (v100)
        {
          v101 = v100;
          v310 = v73;
          v338 = sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
          *&v336 = v101;
          sub_1A8183084(&v336, &v332);
          v79 = v101;
          v102 = v314;
          v103 = swift_isUniquelyReferenced_nonNull_native();
          *&v324 = v102;
          v82 = sub_1A8182568(v313, v67);
          v105 = v102[2];
          v106 = (v104 & 1) == 0;
          v86 = __OFADD__(v105, v106);
          v107 = v105 + v106;
          v16 = v309;
          if (v86)
          {
            goto LABEL_283;
          }

          v108 = v104;
          if (v102[3] < v107)
          {
            sub_1A81922B8(v107, v103);
            v82 = sub_1A8182568(v313, v67);
            if ((v108 & 1) != (v109 & 1))
            {
              goto LABEL_287;
            }

LABEL_78:
            if (v108)
            {
              goto LABEL_79;
            }

            goto LABEL_85;
          }

          if (v103)
          {
            goto LABEL_78;
          }

          v122 = v82;
          sub_1A8193258();
          v82 = v122;
          if (v108)
          {
            goto LABEL_79;
          }

LABEL_85:
          v114 = v324;
          *(v324 + 8 * (v82 >> 6) + 64) |= 1 << v82;
          v123 = (v114[6] + 16 * v82);
          *v123 = v313;
          v123[1] = v67;
          sub_1A8183084(&v332, (v114[7] + 32 * v82));

          __swift_destroy_boxed_opaque_existential_0(&v326);
          v124 = v114[2];
          v86 = __OFADD__(v124, 1);
          v117 = v124 + 1;
          if (v86)
          {
            goto LABEL_285;
          }

LABEL_86:
          v314 = v114;
          v114[2] = v117;
        }

        else
        {
LABEL_71:
          __swift_destroy_boxed_opaque_existential_0(&v326);

          v16 = v309;
        }
      }
    }

    else
    {
      sub_1A8182480(&v326, &v336);
      v90 = v314;
      v91 = swift_isUniquelyReferenced_nonNull_native();
      *&v332 = v90;
      v92 = v68;
      v93 = sub_1A8182568(v68, v67);
      v95 = v90[2];
      v96 = (v94 & 1) == 0;
      v86 = __OFADD__(v95, v96);
      v97 = v95 + v96;
      if (v86)
      {
        goto LABEL_279;
      }

      v98 = v94;
      if (v90[3] >= v97)
      {
        if (v91)
        {
          goto LABEL_67;
        }

        v120 = v93;
        sub_1A8193258();
        v93 = v120;
        if (v98)
        {
          goto LABEL_37;
        }

LABEL_68:
        v110 = v332;
        *(v332 + 8 * (v93 >> 6) + 64) |= 1 << v93;
        v111 = (v110[6] + 16 * v93);
        *v111 = v92;
        v111[1] = v67;
        sub_1A8183084(&v336, (v110[7] + 32 * v93));
        __swift_destroy_boxed_opaque_existential_0(&v326);
        v112 = v110[2];
        v86 = __OFADD__(v112, 1);
        v113 = v112 + 1;
        if (v86)
        {
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
          goto LABEL_286;
        }

        v314 = v110;
        v110[2] = v113;
      }

      else
      {
        sub_1A81922B8(v97, v91);
        v93 = sub_1A8182568(v92, v67);
        if ((v98 & 1) != (v99 & 1))
        {
          goto LABEL_287;
        }

LABEL_67:
        if ((v98 & 1) == 0)
        {
          goto LABEL_68;
        }

LABEL_37:
        v57 = v93;

        v314 = v332;
        v58 = (*(v332 + 56) + 32 * v57);
        __swift_destroy_boxed_opaque_existential_0(v58);
        sub_1A8183084(&v336, v58);
        __swift_destroy_boxed_opaque_existential_0(&v326);
      }
    }
  }

  v20 = v301;
LABEL_92:
  sub_1A8188E70(*(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueAdditionsKey), *(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueAdditionsKey + 8), i, &v329);
  if (!*(&v330 + 1))
  {
    sub_1A8188C34(&v329, &qword_1EB2E2830, &qword_1A81C4340);
    goto LABEL_141;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_141:
    v309 = MEMORY[0x1E69E7CC8];
    goto LABEL_143;
  }

  v126 = 0;
  v20 = v326 + 64;
  v127 = *(v326 + 64);
  v313 = v326;
  v128 = 1 << *(v326 + 32);
  if (v128 < 64)
  {
    v129 = ~(-1 << v128);
  }

  else
  {
    v129 = -1;
  }

  v16 = v129 & v127;
  v130 = (v128 + 63) >> 6;
  v309 = MEMORY[0x1E69E7CC8];
  *&v125 = 136315138;
  v312 = v125;
  v311 = v130;
LABEL_98:
  v131 = v126;
  if (!v16)
  {
    goto LABEL_102;
  }

LABEL_101:
  v132 = v131;
LABEL_109:
  v135 = __clz(__rbit64(v16));
  v16 &= v16 - 1;
  v136 = v135 | (v132 << 6);
  v137 = (*(v313 + 48) + 16 * v136);
  v139 = *v137;
  v138 = v137[1];
  sub_1A8182480(*(v313 + 56) + 32 * v136, &v336);
  *&v326 = v139;
  *(&v326 + 1) = v138;
  sub_1A8183084(&v336, &v327);

  v134 = v132;
  while (1)
  {
    v329 = v326;
    v330 = v327;
    v331 = v328;
    v140 = *(&v326 + 1);
    if (!*(&v326 + 1))
    {

      v20 = v301;
LABEL_143:
      sub_1A8188E70(*(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueRemovalsKey), *(v321 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueRemovalsKey + 8), i, &v329);

      if (*(&v330 + 1))
      {
        if (swift_dynamicCast())
        {
          v171 = 0;
          v20 = v326 + 64;
          v172 = *(v326 + 64);
          v313 = v326;
          v173 = 1 << *(v326 + 32);
          if (v173 < 64)
          {
            v174 = ~(-1 << v173);
          }

          else
          {
            v174 = -1;
          }

          v16 = v174 & v172;
          v175 = (v173 + 63) >> 6;
          v302 = MEMORY[0x1E69E7CC8];
          *&v170 = 136315138;
          v312 = v170;
          v311 = v175;
LABEL_149:
          v176 = v171;
          if (!v16)
          {
            goto LABEL_153;
          }

LABEL_152:
          v177 = v176;
LABEL_160:
          v180 = __clz(__rbit64(v16));
          v16 &= v16 - 1;
          v181 = v180 | (v177 << 6);
          v182 = (*(v313 + 48) + 16 * v181);
          v184 = *v182;
          v183 = v182[1];
          sub_1A8182480(*(v313 + 56) + 32 * v181, &v324);
          *&v326 = v184;
          *(&v326 + 1) = v183;
          sub_1A8183084(&v324, &v327);

          v179 = v177;
          while (1)
          {
            v329 = v326;
            v330 = v327;
            v331 = v328;
            v185 = *(&v326 + 1);
            if (!*(&v326 + 1))
            {
              break;
            }

            v186 = v329;
            sub_1A8183084(&v330, &v326);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
            if (swift_dynamicCast())
            {
              v195 = v324;
              *&v326 = MEMORY[0x1E69E7CD0];
              j = v20;
              if ((v324 & 0xC000000000000001) != 0)
              {
                sub_1A81ACE84();
                type metadata accessor for EKRemoteUIPersistentObjectPointer();
                sub_1A8195248();
                sub_1A81ACDA4();
                v196 = *(&v336 + 1);
                v195 = v336;
                v197 = v337;
                v198 = v338;
                v199 = v339;
              }

              else
              {
                v198 = 0;
                v200 = -1 << *(v324 + 32);
                v196 = v324 + 56;
                v197 = ~v200;
                v201 = -v200;
                if (v201 < 64)
                {
                  v202 = ~(-1 << v201);
                }

                else
                {
                  v202 = -1;
                }

                v199 = (v202 & *(v324 + 56));
              }

              v298 = v197;
              v203 = (v197 + 64) >> 6;
              v299 = v179;
              v307 = v195;
              v308 = v196;
              for (i = v203; ; v203 = i)
              {
                if (v195 < 0)
                {
                  v206 = v198;
                  v208 = sub_1A81ACEB4();
                  if (!v208)
                  {
                    goto LABEL_189;
                  }

                  *&v323[0] = v208;
                  type metadata accessor for EKRemoteUIPersistentObjectPointer();
                  swift_dynamicCast();
                  v207 = v324;
                  v310 = v199;
                }

                else
                {
                  v204 = v198;
                  v205 = v199;
                  v206 = v198;
                  if (!v199)
                  {
                    while (1)
                    {
                      v206 = v204 + 1;
                      if (__OFADD__(v204, 1))
                      {
                        break;
                      }

                      if (v206 >= v203)
                      {
                        goto LABEL_189;
                      }

                      v205 = *(v196 + 8 * v206);
                      ++v204;
                      if (v205)
                      {
                        goto LABEL_183;
                      }
                    }

                    __break(1u);
LABEL_279:
                    __break(1u);
LABEL_280:
                    swift_once();
LABEL_34:
                    v52 = sub_1A81ACC64();
                    __swift_project_value_buffer(v52, qword_1EB2E3378);
                    v53 = sub_1A81ACC44();
                    v54 = sub_1A81ACDE4();
                    if (os_log_type_enabled(v53, v54))
                    {
                      v55 = v20;
                      v56 = swift_slowAlloc();
                      *v56 = 0;
                      _os_log_impl(&dword_1A805E000, v53, v54, "EKRemoteUIObjectSerializer: Cannot create EKObject from deserialized EKPersistentObject", v56, 2u);
                      MEMORY[0x1AC569C60](v56, -1, -1);
                    }

                    else
                    {
                    }

                    goto LABEL_19;
                  }

LABEL_183:
                  v310 = ((v205 - 1) & v205);
                  v207 = *(*(v195 + 48) + ((v206 << 9) | (8 * __clz(__rbit64(v205)))));
                }

                if (!v207)
                {
LABEL_189:
                  sub_1A819529C(v307);
                  v212 = sub_1A8188ED4(v326);

                  v213 = v302;
                  v214 = swift_isUniquelyReferenced_nonNull_native();
                  *&v324 = v213;
                  sub_1A8182E00(v212, v186, v185, v214);

                  v302 = v324;
                  v171 = v299;
                  v20 = j;
                  goto LABEL_149;
                }

                v209 = v207[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert];
                v20 = *&v207[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID];
                v210 = sub_1A818FF60(v20, v316, v320, v209, v318, v319);
                if (v210)
                {
                  v211 = v210;
                  sub_1A8193988(&v324, v211);
                }

                else
                {
                }

                v198 = v206;
                v199 = v310;
                v195 = v307;
                v196 = v308;
              }
            }

            if (qword_1EB2E2608 != -1)
            {
              swift_once();
            }

            v187 = sub_1A81ACC64();
            __swift_project_value_buffer(v187, qword_1EB2E3378);

            v188 = sub_1A81ACC44();
            v189 = sub_1A81ACDE4();

            if (os_log_type_enabled(v188, v189))
            {
              v190 = v20;
              v191 = v179;
              v192 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              *&v326 = v193;
              *v192 = v312;
              v194 = sub_1A81911EC(v186, v185, &v326);

              *(v192 + 4) = v194;
              _os_log_impl(&dword_1A805E000, v188, v189, "EKRemoteUIObjectSerializer: cannot deserialize changeSet multiValueRemovals as a Set<EKObjectID> for key: %s", v192, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v193);
              MEMORY[0x1AC569C60](v193, -1, -1);
              MEMORY[0x1AC569C60](v192, -1, -1);

              v176 = v191;
              v20 = v190;
              v175 = v311;
              if (v16)
              {
                goto LABEL_152;
              }
            }

            else
            {

              v176 = v179;
              if (v16)
              {
                goto LABEL_152;
              }
            }

LABEL_153:
            if (v175 <= v176 + 1)
            {
              v178 = v176 + 1;
            }

            else
            {
              v178 = v175;
            }

            v179 = v178 - 1;
            while (1)
            {
              v177 = v176 + 1;
              if (__OFADD__(v176, 1))
              {
                goto LABEL_271;
              }

              if (v177 >= v175)
              {
                break;
              }

              v16 = *(v20 + 8 * v177);
              ++v176;
              if (v16)
              {
                goto LABEL_160;
              }
            }

            v16 = 0;
            v327 = 0u;
            v328 = 0u;
            v326 = 0u;
          }

          v20 = v301;
          v215 = v302;
          goto LABEL_194;
        }
      }

      else
      {
        sub_1A8188C34(&v329, &qword_1EB2E2830, &qword_1A81C4340);
      }

      v215 = MEMORY[0x1E69E7CC8];
LABEL_194:
      sub_1A81909D0(v314);

      sub_1A8190C98(v309);

      sub_1A8190C98(v215);

      v216 = objc_allocWithZone(EKChangeSet);
      v217 = sub_1A81ACC74();

      v218 = sub_1A81ACC74();

      v219 = sub_1A81ACC74();

      v220 = [v216 initWithSingleValueChanges:v217 multiValueAdditions:v218 multiValueRemovals:v219];

      v16 = v303;
      if (v220)
      {
        if ([v20 isTemporary])
        {
          [v220 setIsNew_];
        }

        [v305 setChangeSet_];
      }

      goto LABEL_198;
    }

    v141 = v329;
    sub_1A8183084(&v330, &v326);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
    if (swift_dynamicCast())
    {
      break;
    }

    if (qword_1EB2E2608 != -1)
    {
      swift_once();
    }

    v142 = sub_1A81ACC64();
    __swift_project_value_buffer(v142, qword_1EB2E3378);

    v143 = sub_1A81ACC44();
    v144 = sub_1A81ACDE4();

    if (os_log_type_enabled(v143, v144))
    {
      v145 = v20;
      v146 = v134;
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *&v326 = v148;
      *v147 = v312;
      v149 = sub_1A81911EC(v141, v140, &v326);

      *(v147 + 4) = v149;
      _os_log_impl(&dword_1A805E000, v143, v144, "EKRemoteUIObjectSerializer: cannot deserialize changeSet multiValueAdditions as a Set<EKObjectID> for key: %s", v147, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v148);
      MEMORY[0x1AC569C60](v148, -1, -1);
      MEMORY[0x1AC569C60](v147, -1, -1);

      v131 = v146;
      v20 = v145;
      v130 = v311;
      if (v16)
      {
        goto LABEL_101;
      }
    }

    else
    {

      v131 = v134;
      if (v16)
      {
        goto LABEL_101;
      }
    }

LABEL_102:
    if (v130 <= v131 + 1)
    {
      v133 = v131 + 1;
    }

    else
    {
      v133 = v130;
    }

    v134 = v133 - 1;
    while (1)
    {
      v132 = v131 + 1;
      if (__OFADD__(v131, 1))
      {
        goto LABEL_270;
      }

      if (v132 >= v130)
      {
        break;
      }

      v16 = *(v20 + 8 * v132);
      ++v131;
      if (v16)
      {
        goto LABEL_109;
      }
    }

    v16 = 0;
    v327 = 0u;
    v328 = 0u;
    v326 = 0u;
  }

  v150 = v336;
  *&v326 = MEMORY[0x1E69E7CD0];
  v299 = v20;
  if ((v336 & 0xC000000000000001) != 0)
  {
    sub_1A81ACE84();
    type metadata accessor for EKRemoteUIPersistentObjectPointer();
    sub_1A8195248();
    sub_1A81ACDA4();
    v151 = *(&v332 + 1);
    v150 = v332;
    v152 = v333;
    v153 = v334;
    v154 = v335;
  }

  else
  {
    v153 = 0;
    v155 = -1 << *(v336 + 32);
    v151 = v336 + 56;
    v152 = ~v155;
    v156 = -v155;
    if (v156 < 64)
    {
      v157 = ~(-1 << v156);
    }

    else
    {
      v157 = -1;
    }

    v154 = (v157 & *(v336 + 56));
  }

  v297[1] = v152;
  v158 = (v152 + 64) >> 6;
  v298 = v134;
  v302 = v150;
  v308 = v151;
  for (j = v158; ; v158 = j)
  {
    if (v150 < 0)
    {
      v161 = v153;
      v163 = sub_1A81ACEB4();
      if (!v163)
      {
        goto LABEL_138;
      }

      *&v324 = v163;
      type metadata accessor for EKRemoteUIPersistentObjectPointer();
      swift_dynamicCast();
      v162 = v336;
      v310 = v154;
      goto LABEL_135;
    }

    v159 = v153;
    v160 = v154;
    v161 = v153;
    if (!v154)
    {
      break;
    }

LABEL_132:
    v310 = ((v160 - 1) & v160);
    v162 = *(*(v150 + 48) + ((v161 << 9) | (8 * __clz(__rbit64(v160)))));
LABEL_135:
    if (!v162)
    {
LABEL_138:
      sub_1A819529C(v302);
      v167 = sub_1A8188ED4(v326);

      v168 = v309;
      v169 = swift_isUniquelyReferenced_nonNull_native();
      *&v336 = v168;
      sub_1A8182E00(v167, v141, v140, v169);

      v309 = v336;
      v126 = v298;
      v20 = v299;
      goto LABEL_98;
    }

    v164 = v162[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert];
    v20 = *&v162[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID];
    v165 = sub_1A818FF60(v20, v316, v320, v164, v318, v319);
    if (v165)
    {
      v166 = v165;
      sub_1A8193988(&v336, v166);
    }

    else
    {
    }

    v153 = v161;
    v154 = v310;
    v150 = v302;
    v151 = v308;
  }

  while (1)
  {
    v161 = v159 + 1;
    if (__OFADD__(v159, 1))
    {
      break;
    }

    if (v161 >= v158)
    {
      goto LABEL_138;
    }

    v160 = *(v151 + 8 * v161);
    ++v159;
    if (v160)
    {
      goto LABEL_132;
    }
  }

LABEL_276:
  __break(1u);
LABEL_277:
  swift_once();
LABEL_21:
  v37 = sub_1A81ACC64();
  __swift_project_value_buffer(v37, qword_1EB2E3378);
  v38 = sub_1A81ACC44();
  v39 = sub_1A81ACDE4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v20;
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1A805E000, v38, v39, "EKRemoteUIObjectSerializer: Cannot generate a Deserialized EKPersistentObject.", v41, 2u);
    MEMORY[0x1AC569C60](v41, -1, -1);
  }

  else
  {
  }

LABEL_19:

  return 0;
}

char *sub_1A818FF60(void *a1, uint64_t a2, void *a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v11 = a1;
  v12 = *a6;
  result = sub_1A8188DAC(a1, *a6);
  if (result)
  {
    return result;
  }

  if ([v11 isTemporary])
  {
    v14 = [v11 entityName];
    v15 = &selRef_insertedPersistentObjectWithEntityName_;
    if ((a4 & 1) == 0)
    {
      v15 = &selRef_persistentObjectWithEntityName_;
    }

    v16 = [a3 *v15];

    if (*a5)
    {
      if (v16)
      {
        v17 = [v16 objectID];
        if (v17)
        {
          v18 = v17;
          v19 = *a5;
          if ((*a5 & 0xC000000000000001) != 0)
          {
            if (v19 < 0)
            {
              v20 = *a5;
            }

            else
            {
              v20 = v19 & 0xFFFFFFFFFFFFFF8;
            }

            result = sub_1A81ACE94();
            if (__OFADD__(result, 1))
            {
              __break(1u);
LABEL_93:
              __break(1u);
              return result;
            }

            *a5 = sub_1A8191B4C(v20, (result + 1));
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v110 = *a5;
          sub_1A8182C58(v18, v11, isUniquelyReferenced_nonNull_native);
          *a5 = v110;
          v22 = v16;
          goto LABEL_16;
        }
      }

      v22 = v16;
      if (!v16)
      {
LABEL_81:
        if (qword_1EB2E2608 != -1)
        {
          goto LABEL_91;
        }

        goto LABEL_82;
      }
    }

    else
    {
      v22 = v16;
      if (!v16)
      {
        goto LABEL_81;
      }
    }
  }

  else
  {
    v22 = [a3 registerFetchedObjectWithID_];
    if (!v22)
    {
      goto LABEL_81;
    }
  }

LABEL_16:
  v90 = v22;
  v23 = v22;
  v94 = v23;
  if ((v12 & 0xC000000000000001) != 0)
  {
    if (v12 >= 0)
    {
      v12 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v24 = v90;
    v25 = v23;
    v26 = sub_1A81ACE94();
    if (__OFADD__(v26, 1))
    {
      goto LABEL_90;
    }

    *a6 = sub_1A81918F0(v12, v26 + 1);
  }

  else
  {
    v24 = v90;
    v27 = v23;
  }

  v28 = swift_isUniquelyReferenced_nonNull_native();
  *&v110 = *a6;
  sub_1A8182C18(v24, v11, v28);
  *a6 = v110;
  if (!*(a2 + 16) || (v29 = sub_1A8182524(v11), (v30 & 1) == 0))
  {

    return v90;
  }

  v89 = v24;
  v98 = a5;
  v99 = a3;
  v100 = a6;
  v97 = a2;
  v31 = *(*(a2 + 56) + 8 * v29);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v11 = v34 & *(v31 + 64);
  v35 = (v33 + 63) >> 6;
  v93 = v31;
  swift_bridgeObjectRetain_n();
  v36 = 0;
  v37 = v23;
  v91 = v35;
  v92 = v32;
  if (!v11)
  {
    goto LABEL_67;
  }

LABEL_66:
  while (2)
  {
    for (i = v36; ; v36 = i)
    {
      v77 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v78 = v77 | (i << 6);
      v79 = (*(v93 + 48) + 16 * v78);
      v81 = *v79;
      v80 = v79[1];
      sub_1A8182480(*(v93 + 56) + 32 * v78, v102);
      *&v107 = v81;
      *(&v107 + 1) = v80;
      sub_1A8183084(v102, &v108);

LABEL_76:
      v110 = v107;
      v111[0] = v108;
      v111[1] = v109;
      if (!*(&v107 + 1))
      {

        return v90;
      }

      sub_1A8183084(v111, &v105);
      sub_1A8182480(&v105, &v107);
      type metadata accessor for EKRemoteUIPersistentObjectPointer();
      if (!swift_dynamicCast())
      {
        break;
      }

      v38 = *&v102[0];
      v39 = *(*&v102[0] + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID);
      v40 = *(*&v102[0] + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert);
      ObjCClassFromObject = swift_getObjCClassFromObject();
      v42 = v39;
      result = [ObjCClassFromObject meltedClass];
      if (!result)
      {
        goto LABEL_93;
      }

      swift_getObjCClassMetadata();
      v43 = v37;
      v44 = sub_1A81ACCB4();
      v45 = [swift_getObjCClassFromMetadata() isWeakRelationObject:v43 forKey:v44];

      if (v45)
      {
        v46 = sub_1A81952A4(v42, v99, *v100);
        v32 = v92;
        if (!v46)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v46 = sub_1A818FF60(v42, v97, v99, v40, v98, v100);
        v32 = v92;
        if (!v46)
        {
LABEL_40:

          goto LABEL_41;
        }
      }

      v47 = v46;
      v48 = sub_1A81ACCB4();

      [v43 setValue:v47 forKey:v48];

LABEL_41:
      __swift_destroy_boxed_opaque_existential_0(&v105);
      v37 = v94;
LABEL_65:
      v35 = v91;
      if (v11)
      {
        goto LABEL_66;
      }

LABEL_67:
      if (v35 <= v36 + 1)
      {
        v75 = v36 + 1;
      }

      else
      {
        v75 = v35;
      }

      v76 = v75 - 1;
      do
      {
        i = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_89;
        }

        if (i >= v35)
        {
          v11 = 0;
          v108 = 0u;
          v109 = 0u;
          v36 = v76;
          v107 = 0u;
          goto LABEL_76;
        }

        v11 = *(v32 + 8 * i);
        ++v36;
      }

      while (!v11);
    }

    sub_1A8182480(&v105, &v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
    if (!swift_dynamicCast())
    {
      sub_1A8182480(&v105, &v107);
      sub_1A81831D0(0, &qword_1EB2E28B8, 0x1E695DFB0);
      if (swift_dynamicCast())
      {

        v54 = sub_1A81ACCB4();

        [v37 setValue:0 forKey:v54];
      }

      else
      {
        __swift_project_boxed_opaque_existential_0(&v105, v106);
        v55 = sub_1A81AD064();
        v56 = sub_1A81ACCB4();

        [v37 setValue:v55 forKey:v56];
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_0(&v105);
      if (v11)
      {
        continue;
      }

      goto LABEL_67;
    }

    break;
  }

  v49 = *&v102[0];
  v104 = MEMORY[0x1E69E7CD0];
  if ((*&v102[0] & 0xC000000000000001) != 0)
  {
    sub_1A81ACE84();
    sub_1A8195248();
    sub_1A81ACDA4();
    v49 = v112;
    v50 = v113;
    v51 = v114;
    v52 = v115;
    v53 = v116;
  }

  else
  {
    v52 = 0;
    v57 = -1 << *(*&v102[0] + 32);
    v50 = *&v102[0] + 56;
    v51 = ~v57;
    v58 = -v57;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v53 = v59 & *(*&v102[0] + 56);
  }

  v60 = (v51 + 64) >> 6;
  v95 = v50;
  v96 = v11;
  while (2)
  {
    if (v49 < 0)
    {
      v66 = sub_1A81ACEB4();
      if (!v66 || (*&v102[0] = v66, swift_dynamicCast(), v65 = v107, v63 = v52, v64 = v53, !v107))
      {
LABEL_64:
        sub_1A819529C(v49);
        v72 = sub_1A81ACD94();

        v73 = sub_1A81ACCB4();

        v37 = v94;
        [v94 setValue:v72 forKey:v73];

        __swift_destroy_boxed_opaque_existential_0(&v105);
        v32 = v92;
        goto LABEL_65;
      }

      goto LABEL_62;
    }

    v61 = v52;
    v62 = v53;
    v63 = v52;
    if (v53)
    {
LABEL_58:
      v64 = (v62 - 1) & v62;
      v65 = *(*(v49 + 48) + ((v63 << 9) | (8 * __clz(__rbit64(v62)))));
      if (!v65)
      {
        goto LABEL_64;
      }

LABEL_62:
      v101 = v64;
      v67 = v65[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert];
      v68 = *&v65[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID];
      v69 = sub_1A818FF60(v68, v97, v99, v67, v98, v100);
      if (v69)
      {
        v103 = v69;
        v70 = v69;
        sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
        sub_1A819550C(&qword_1EB2E2890, &unk_1EB2E2860, off_1E77FBA90);
        v71 = v70;
        v50 = v95;
        v11 = v96;
        sub_1A81ACEF4();
        sub_1A8194874(&v107, v102);
        sub_1A81ACEE4();

        sub_1A818242C(&v107);
        __swift_destroy_boxed_opaque_existential_0(v102);
      }

      else
      {
      }

      v52 = v63;
      v53 = v101;
      continue;
    }

    break;
  }

  while (1)
  {
    v63 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v63 >= v60)
    {
      goto LABEL_64;
    }

    v62 = *(v50 + 8 * v63);
    ++v61;
    if (v62)
    {
      goto LABEL_58;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  swift_once();
LABEL_82:
  v82 = sub_1A81ACC64();
  __swift_project_value_buffer(v82, qword_1EB2E3378);
  v83 = v11;
  v84 = sub_1A81ACC44();
  v85 = sub_1A81ACDE4();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v86 = 138412290;
    *(v86 + 4) = v83;
    *v87 = v83;
    v88 = v83;
    _os_log_impl(&dword_1A805E000, v84, v85, "EKRemoteUIObjectSerializer: Cannot create persistentObject from objectID: %@", v86, 0xCu);
    sub_1A8188C34(v87, &qword_1EB2E2870, &qword_1A81C4238);
    MEMORY[0x1AC569C60](v87, -1, -1);
    MEMORY[0x1AC569C60](v86, -1, -1);
  }

  return 0;
}

uint64_t sub_1A81909D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28A0, &qword_1A81C4380);
    v2 = sub_1A81AD044();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1A8182480(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1A8183084(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1A8183084(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1A8183084(v31, v32);
    result = sub_1A81ACEC4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1A8183084(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A8190C98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28A0, &qword_1A81C4380);
    v2 = sub_1A81AD044();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28A8, &qword_1A81C4388);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1A8183084(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1A8183084(v29, v30);
    result = sub_1A81ACEC4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1A8183084(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id EKRemoteUIObjectSerializer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EKRemoteUIObjectSerializer.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKIsPendingInsertKey];
  *v2 = 0xD000000000000015;
  *(v2 + 1) = 0x80000001A81CFC40;
  v3 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetKey];
  *v3 = 0x676E6168434B456BLL;
  *(v3 + 1) = 0xEF79654B74655365;
  v4 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKPersistentObjectKey];
  *v4 = 0xD000000000000016;
  *(v4 + 1) = 0x80000001A81CFC60;
  v5 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKCachedMeltedObjectsKey];
  *v5 = 0xD000000000000019;
  *(v5 + 1) = 0x80000001A81CFC80;
  v6 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetSingleValueChangesKey];
  *v6 = 0xD00000000000001FLL;
  *(v6 + 1) = 0x80000001A81CFCA0;
  v7 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueAdditionsKey];
  *v7 = 0xD000000000000020;
  *(v7 + 1) = 0x80000001A81CFCC0;
  v8 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueRemovalsKey];
  *v8 = 0xD00000000000001FLL;
  *(v8 + 1) = 0x80000001A81CFCF0;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id EKRemoteUIObjectSerializer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A81911EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A81912B8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1A8182480(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1A81912B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1A81913C4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1A81ACF64();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1A81913C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A8191410(a1, a2);
  sub_1A8191540(&unk_1F1B491C0);
  return v3;
}

void *sub_1A8191410(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A819162C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1A81ACF64();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1A81ACCE4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A819162C(v10, 0);
        result = sub_1A81ACF44();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A8191540(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A81916A0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1A819162C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2898, &qword_1A81C4378);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1A81916A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2898, &qword_1A81C4378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1A8191794(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1A8182524(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1A8192C50(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1A8193424(&qword_1EB2E28C0, &qword_1A81C4398);
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1A81ACFE4();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1A81ACE94();
  v8 = sub_1A8191B4C(v4, v7);

  v9 = sub_1A8182524(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1A8192C50(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1A81918F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28C8, &qword_1A81C43A0);
    v2 = sub_1A81AD034();
    v19 = v2;
    sub_1A81ACFC4();
    v3 = sub_1A81ACFF4();
    if (v3)
    {
      v4 = v3;
      sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A8192598(v12 + 1, 1, &qword_1EB2E28C8, &qword_1A81C43A0);
        }

        v2 = v19;
        result = sub_1A81ACE14();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1A81ACFF4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1A8191B4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28C0, &qword_1A81C4398);
    v2 = sub_1A81AD034();
    v19 = v2;
    sub_1A81ACFC4();
    v3 = sub_1A81ACFF4();
    if (v3)
    {
      v4 = v3;
      sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A8192598(v12 + 1, 1, &qword_1EB2E28C0, &qword_1A81C4398);
        }

        v2 = v19;
        result = sub_1A81ACE14();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1A81ACFF4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1A8191D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28A0, &qword_1A81C4380);
  result = sub_1A81AD024();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1A8183084((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1A8183394(v23, &v36);
        sub_1A8182480(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1A81ACEC4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1A8183084(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A8192048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28F8, &qword_1A81C43C8);
  result = sub_1A81AD024();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1A81ACE14();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A81922B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28B0, &qword_1A81C4390);
  v33 = v4;
  result = sub_1A81AD024();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1A8183084(v24, v34);
      }

      else
      {
        sub_1A8182480(v24, v34);
      }

      sub_1A81AD0C4();
      sub_1A81ACCD4();
      result = sub_1A81AD0E4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A8183084(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A8192598(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1A81AD024();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = sub_1A81ACE14();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_1A81927F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2880, &qword_1A81C4368);
  v34 = v4;
  result = sub_1A81AD024();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A81AD0C4();
      sub_1A81ACCD4();
      result = sub_1A81AD0E4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A8192AA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A81ACE64() + 1) & ~v5;
    do
    {
      sub_1A81AD0C4();

      sub_1A81ACCD4();
      v10 = sub_1A81AD0E4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1A8192C50(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A81ACE64() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1A81ACE14();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

_OWORD *sub_1A8192DDC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1A8183084(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1A8192E58(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1A8192E9C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A8183084(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1A8192F08(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void *sub_1A8192F50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28A0, &qword_1A81C4380);
  v2 = *v0;
  v3 = sub_1A81AD014();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_1A8183394(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1A8182480(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1A8183084(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_1A81930F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28F8, &qword_1A81C43C8);
  v2 = *v0;
  v3 = sub_1A81AD014();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_1A8193258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28B0, &qword_1A81C4390);
  v2 = *v0;
  v3 = sub_1A81AD014();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1A8182480(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A8183084(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1A8193424(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1A81AD014();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1A8193574()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2880, &qword_1A81C4368);
  v2 = *v0;
  v3 = sub_1A81AD014();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

unint64_t sub_1A81936E4(uint64_t a1, uint64_t a2)
{
  sub_1A81ACE14();
  result = sub_1A81ACE74();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1A8193768(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1A81ACEA4();

    if (v9)
    {

      type metadata accessor for EKRemoteUIPersistentObjectPointer();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1A81ACE94();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1A8193BD0(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1A8193FDC(v20 + 1, &qword_1EB2E2900, &qword_1A81C43D0);
    }

    v18 = v8;
    sub_1A81936E4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for EKRemoteUIPersistentObjectPointer();
  v11 = sub_1A81ACE14();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1A81941FC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1A81ACE24();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1A8193988(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1A81ACEA4();

    if (v9)
    {

      sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1A81ACE94();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1A8193DCC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1A8193FDC(v20 + 1, &qword_1EB2E2878, &qword_1A81C4360);
    }

    v18 = v8;
    sub_1A81936E4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
  v11 = sub_1A81ACE14();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1A8194388(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1A81ACE24();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1A8193BD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2900, &qword_1A81C43D0);
    v2 = sub_1A81ACF24();
    v15 = v2;
    sub_1A81ACE84();
    if (sub_1A81ACEB4())
    {
      type metadata accessor for EKRemoteUIPersistentObjectPointer();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1A8193FDC(v9 + 1, &qword_1EB2E2900, &qword_1A81C43D0);
        }

        v2 = v15;
        result = sub_1A81ACE14();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1A81ACEB4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A8193DCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2878, &qword_1A81C4360);
    v2 = sub_1A81ACF24();
    v15 = v2;
    sub_1A81ACE84();
    if (sub_1A81ACEB4())
    {
      sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1A8193FDC(v9 + 1, &qword_1EB2E2878, &qword_1A81C4360);
        }

        v2 = v15;
        result = sub_1A81ACE14();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1A81ACEB4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A8193FDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1A81ACF14();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_1A81ACE14();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

void sub_1A81941FC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A8193FDC(v6 + 1, &qword_1EB2E2900, &qword_1A81C43D0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A8194528(&qword_1EB2E2900, &qword_1A81C43D0);
      goto LABEL_12;
    }

    sub_1A8194668(v6 + 1, &qword_1EB2E2900, &qword_1A81C43D0);
  }

  v8 = *v3;
  v9 = sub_1A81ACE14();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for EKRemoteUIPersistentObjectPointer();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A81ACE24();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A81AD0A4();
  __break(1u);
}

void sub_1A8194388(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A8193FDC(v6 + 1, &qword_1EB2E2878, &qword_1A81C4360);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A8194528(&qword_1EB2E2878, &qword_1A81C4360);
      goto LABEL_12;
    }

    sub_1A8194668(v6 + 1, &qword_1EB2E2878, &qword_1A81C4360);
  }

  v8 = *v3;
  v9 = sub_1A81ACE14();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A81ACE24();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A81AD0A4();
  __break(1u);
}

id sub_1A8194528(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1A81ACF04();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1A8194668(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1A81ACF14();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_1A81ACE14();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1A8194874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1A81ACEC4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1A8183394(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1AC5687D0](v16, a2);
      sub_1A818242C(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1A818242C(a2);
    sub_1A8183394(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A8183394(a2, v16);
    v15 = *v3;
    sub_1A81949C0(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1A81949C0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v4;
  if (*(*v4 + 24) > *(*v4 + 16))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_68;
    }

    for (i = *v4; ; *v4 = i)
    {
LABEL_61:
      *(i + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v54 = *(i + 48) + 40 * a2;
      v55 = *(v6 + 16);
      *v54 = *v6;
      *(v54 + 16) = v55;
      *(v54 + 32) = *(v6 + 32);
      v56 = *(i + 16);
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (!v57)
      {
        *(i + 16) = v58;
        return result;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2888, &qword_1A81C4370);
      v59 = sub_1A81ACF04();
      i = v59;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_83:
    }

    v60 = (v59 + 56);
    v61 = v7 + 56;
    v62 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v7 || v60 >= v61 + 8 * v62)
    {
      memmove(v60, (v7 + 56), 8 * v62);
    }

    v63 = 0;
    *(i + 16) = *(v7 + 16);
    v64 = 1 << *(v7 + 32);
    v65 = *(v7 + 56);
    v66 = -1;
    if (v64 < 64)
    {
      v66 = ~(-1 << v64);
    }

    v67 = v66 & v65;
    v68 = (v64 + 63) >> 6;
    if ((v66 & v65) != 0)
    {
      do
      {
        v69 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
LABEL_81:
        v72 = 40 * (v69 | (v63 << 6));
        sub_1A8183394(*(v7 + 48) + v72, &v78);
        v73 = *(i + 48) + v72;
        v74 = v78;
        v75 = v79;
        *(v73 + 32) = v80;
        *v73 = v74;
        *(v73 + 16) = v75;
      }

      while (v67);
    }

    v70 = v63;
    while (1)
    {
      v63 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v63 >= v68)
      {
        goto LABEL_83;
      }

      v71 = *(v61 + 8 * v63);
      ++v70;
      if (v71)
      {
        v69 = __clz(__rbit64(v71));
        v67 = (v71 - 1) & v71;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2888, &qword_1A81C4370);
  if ((a3 & 1) == 0)
  {
    v30 = sub_1A81ACF14();
    i = v30;
    if (!*(v7 + 16))
    {
      goto LABEL_56;
    }

    v77 = v4;
    v31 = 0;
    a2 = v7 + 56;
    v32 = 1 << *(v7 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v7 + 56);
    v4 = (v32 + 63) >> 6;
    v35 = v30 + 56;
    while (1)
    {
      if (v34)
      {
        v40 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
      }

      else
      {
        v41 = v31;
        do
        {
          v31 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_64;
          }

          if (v31 >= v4)
          {

            v4 = v77;
            goto LABEL_57;
          }

          v42 = *(a2 + 8 * v31);
          ++v41;
        }

        while (!v42);
        v40 = __clz(__rbit64(v42));
        v34 = (v42 - 1) & v42;
      }

      sub_1A8183394(*(v7 + 48) + 40 * (v40 | (v31 << 6)), &v78);
      v43 = sub_1A81ACEC4();
      v44 = -1 << *(i + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v35 + 8 * (v45 >> 6))) != 0)
      {
        v36 = __clz(__rbit64((-1 << v45) & ~*(v35 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        do
        {
          if (++v46 == v48 && (v47 & 1) != 0)
          {
            goto LABEL_66;
          }

          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v35 + 8 * v46);
        }

        while (v50 == -1);
        v36 = __clz(__rbit64(~v50)) + (v46 << 6);
      }

      *(v35 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v37 = *(i + 48) + 40 * v36;
      v38 = v78;
      v39 = v79;
      *(v37 + 32) = v80;
      *v37 = v38;
      *(v37 + 16) = v39;
      ++*(i + 16);
    }
  }

  v10 = sub_1A81ACF14();
  i = v10;
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v76 = v4;
  v11 = 0;
  a2 = v7 + 56;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v4 = (v12 + 63) >> 6;
  v15 = v10 + 56;
LABEL_12:
  if (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    goto LABEL_19;
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v11 >= v4)
    {
      break;
    }

    v20 = *(a2 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
LABEL_19:
      v21 = *(v7 + 48) + 40 * (v18 | (v11 << 6));
      v78 = *v21;
      v79 = *(v21 + 16);
      v80 = *(v21 + 32);
      v22 = sub_1A81ACEC4();
      v23 = -1 << *(i + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        do
        {
          if (++v25 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_65;
          }

          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
        }

        while (v29 == -1);
        v16 = __clz(__rbit64(~v29)) + (v25 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(i + 48) + 40 * v16;
      *v17 = v78;
      *(v17 + 16) = v79;
      *(v17 + 32) = v80;
      ++*(i + 16);
      goto LABEL_12;
    }
  }

  v51 = 1 << *(v7 + 32);
  if (v51 >= 64)
  {
    bzero((v7 + 56), ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *a2 = -1 << v51;
  }

  v4 = v76;
  *(v7 + 16) = 0;
LABEL_56:

LABEL_57:
  *v4 = i;
  result = sub_1A81ACEC4();
  v52 = -1 << *(i + 32);
  a2 = result & ~v52;
  if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v7 = ~v52;
  while (1)
  {
    sub_1A8183394(*(i + 48) + 40 * a2, &v78);
    v53 = MEMORY[0x1AC5687D0](&v78, v6);
    result = sub_1A818242C(&v78);
    if (v53)
    {
      break;
    }

    a2 = (a2 + 1) & v7;
    if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

LABEL_85:
  result = sub_1A81AD0A4();
  __break(1u);
  return result;
}

void sub_1A8195010(void *a1)
{
  v3 = sub_1A81ACCB4();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_1A81ACE44();
    swift_unknownObjectRelease();
    sub_1A8183084(&v9, &v10);
    sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
    swift_dynamicCast();
    *&v1[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v8;
    v5 = sub_1A81ACCB4();
    v6 = [a1 decodeBoolForKey_];

    v1[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = v6;
    v7.receiver = v1;
    v7.super_class = type metadata accessor for EKRemoteUIPersistentObjectPointer();
    objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1A8195248()
{
  result = qword_1EB2E2858;
  if (!qword_1EB2E2858)
  {
    type metadata accessor for EKRemoteUIPersistentObjectPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E2858);
  }

  return result;
}

id sub_1A81952A4(void *a1, void *a2, uint64_t a3)
{
  if ([a1 entityType] == 1 && objc_msgSend(a1, sel_isVirtual))
  {
    result = [a2 defaultCalendarForNewEvents];
    if (result)
    {
      v7 = result;
      v8 = [result persistentObject];

      return v8;
    }
  }

  else
  {
    result = sub_1A8188DAC(a1, a3);
    if (!result)
    {
      if ([a1 isTemporary])
      {
        if (qword_1EB2E2608 != -1)
        {
          swift_once();
        }

        v9 = sub_1A81ACC64();
        __swift_project_value_buffer(v9, qword_1EB2E3378);
        v10 = a1;
        v11 = sub_1A81ACC44();
        v12 = sub_1A81ACDE4();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412290;
          *(v13 + 4) = v10;
          *v14 = v10;
          v15 = v10;
          _os_log_impl(&dword_1A805E000, v11, v12, "EKRemoteUIObjectSerializer: Attempting to fetch from the eventStore using a temporary objectID: %@", v13, 0xCu);
          sub_1A8188C34(v14, &qword_1EB2E2870, &qword_1A81C4238);
          MEMORY[0x1AC569C60](v14, -1, -1);
          MEMORY[0x1AC569C60](v13, -1, -1);
        }

        return 0;
      }

      else
      {
        return [a2 registerFetchedObjectWithID_];
      }
    }
  }

  return result;
}

uint64_t sub_1A819549C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E2810, &qword_1A81C4330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A819550C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A81831D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A81955C0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A8195628(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1A8195670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static MapSearchCompletionResolver.resolve(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A8195770;

  return sub_1A81960D0(a1);
}

uint64_t sub_1A8195770(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1A8195870(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2978, &qword_1A81C44C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = objc_opt_self();
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1A8196510;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A8195BC4;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  v14 = [v10 resolveMapSearchCompletion:a3 withCompletionHander:v13];
  _Block_release(v13);
  *a2 = v14;

  return swift_unknownObjectRelease();
}

uint64_t sub_1A8195ABC(void *a1, void *a2)
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2978, &qword_1A81C44C8);
    sub_1A81ACD54();
  }

  else
  {
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2978, &qword_1A81C44C8);
    sub_1A81ACD64();
  }
}

void sub_1A8195BC4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t static MapSearchCompletionResolver.resolveToStructuredLocation(_:)(uint64_t a1)
{
  v1[2] = sub_1A81ACD84();
  v1[3] = sub_1A81ACD74();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1A8195D14;

  return sub_1A81960D0(a1);
}

uint64_t sub_1A8195D14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  v5 = sub_1A81ACD44();
  if (v1)
  {
    v6 = sub_1A819606C;
  }

  else
  {
    v6 = sub_1A8195E74;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1A8195E74()
{
  v1 = *(v0 + 40);

  v2 = [objc_allocWithZone(EKStructuredLocation) init];
  if (!v1 || (v3 = [*(v0 + 40) title]) == 0)
  {
    v3 = 0;
  }

  v4 = *(v0 + 40);
  [v2 setTitle_];

  if (!v1 || (v5 = [v4 address]) == 0)
  {
    v5 = 0;
  }

  [v2 setAddress_];

  v6 = [v4 geoLocation];
  [v2 setGeoLocation_];

  if (v1)
  {
    [v4 radius];
    [v2 setRadius_];
    v7 = [v4 mapKitHandle];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1A81ACA24();
      v11 = v10;

      v12 = sub_1A81ACA14();
      sub_1A81964A4(v9, v11);
      goto LABEL_12;
    }
  }

  else
  {
    [v2 setRadius_];
  }

  v12 = 0;
LABEL_12:
  [v2 setMapKitHandle_];

  v13 = *(v0 + 8);

  return v13(v2);
}

uint64_t sub_1A819606C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A81960D0(uint64_t a1)
{
  v1[4] = a1;
  v1[5] = sub_1A81ACD84();
  v1[6] = sub_1A81ACD74();
  v3 = sub_1A81ACD44();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A819616C, v3, v2);
}

uint64_t sub_1A819616C()
{
  v1 = v0[4];
  v0[2] = 0;
  v2 = sub_1A81ACD74();
  v0[9] = v2;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v0 + 2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2970, &qword_1A81C44C0);
  *v4 = v0;
  v4[1] = sub_1A8196290;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 3, v2, v6, 0x2865766C6F736572, 0xEB00000000293A5FLL, sub_1A8196508, v3, v5);
}

uint64_t sub_1A8196290()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A8196424;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A81963B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A81963B4()
{

  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A8196424()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A81964A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1A8196510(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2978, &qword_1A81C44C8);

  return sub_1A8195ABC(a1, a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A81965B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t Autocompleter.AutocompleteResult.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Autocompleter.AutocompleteResult.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Autocompleter.AutocompleteResult.address.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1A81966A8(v2, v3);
}

uint64_t Autocompleter.AutocompleteResult.address.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1A81966F0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t Autocompleter.AutocompleteResult.contactIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Autocompleter.AutocompleteResult.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1A81967D4()
{
  v1 = *v0;
  sub_1A81AD0C4();
  MEMORY[0x1AC5689D0](v1);
  return sub_1A81AD0E4();
}

uint64_t sub_1A8196848(uint64_t a1)
{
  v2 = *v1;
  sub_1A81AD0C4();
  MEMORY[0x1AC5689D0](v2);
  return sub_1A81AD0E4();
}

BOOL sub_1A81968D0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1A8196900@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A819692C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1A8196A04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t static Autocompleter.results(for:inSource:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v5 = *a4;
  v4[8] = a3;
  v4[9] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1A8196A60, 0, 0);
}

uint64_t sub_1A8196A60()
{
  if (MEMORY[0x1E6996358])
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 48);
    v3 = type metadata accessor for Autocompleter.AutocompleterDelegate(0);
    v11 = *(v0 + 56);
    v4 = [objc_allocWithZone(v3) init];
    *(v0 + 80) = v4;
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;
    *(v5 + 32) = v2;
    *(v5 + 40) = v11;
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2980, &qword_1A81C44D8);
    *v6 = v0;
    v6[1] = sub_1A8196BF4;

    return MEMORY[0x1EEE6DDE0](v0 + 40, 0, 0, 0xD00000000000001ELL, 0x80000001A81D0120, sub_1A81970A4, v5, v7);
  }

  else
  {
    v8 = *(v0 + 8);
    v9 = MEMORY[0x1E69E7CC0];

    return v8(v9);
  }
}

uint64_t sub_1A8196BF4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A8196D0C, 0, 0);
}

uint64_t sub_1A8196D0C()
{
  v1 = v0[10];
  v2 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2988, &qword_1A81C44E0);
  v3 = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2990, &qword_1A81C44E8);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_continuation;
  swift_beginAccess();
  sub_1A81970B4(v3, v1 + v5);
  swift_endAccess();

  v6 = v0[1];

  return v6(v2);
}

uint64_t type metadata accessor for Autocompleter.AutocompleterDelegate(uint64_t a1)
{
  result = qword_1EB2E2A30;
  if (!qword_1EB2E2A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A8196E84(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2988, &qword_1A81C44E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2990, &qword_1A81C44E8);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v15 = OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_continuation;
  swift_beginAccess();
  sub_1A81970B4(v12, a2 + v15);
  swift_endAccess();
  v16 = [objc_allocWithZone(EKAutocompleter) initWithDelegate_];
  [v16 setFindGroups_];
  [v16 setFindPeople_];
  [v16 setFindRecents_];
  [v16 setUseDirectorySearch_];
  v17 = *(a2 + OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_autocompleter);
  *(a2 + OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_autocompleter) = v16;
  v18 = v16;

  v19 = sub_1A81ACCB4();
}

uint64_t sub_1A81970B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2988, &qword_1A81C44E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A8197128()
{
  result = qword_1EB2E29A0;
  if (!qword_1EB2E29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E29A0);
  }

  return result;
}

unint64_t sub_1A8197180()
{
  result = qword_1EB2E29A8;
  if (!qword_1EB2E29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E29A8);
  }

  return result;
}

unint64_t sub_1A81971D4()
{
  result = qword_1EB2E29B0;
  if (!qword_1EB2E29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E29B0);
  }

  return result;
}

unint64_t sub_1A819722C()
{
  result = qword_1EB2E29B8;
  if (!qword_1EB2E29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E29B8);
  }

  return result;
}

uint64_t sub_1A819729C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A81972E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A8197354(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A819739C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Autocompleter.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Autocompleter.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void sub_1A81974F8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2990, &qword_1A81C44E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2988, &qword_1A81C44E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v50 - v9;
  v10 = OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_autocompleter;
  v11 = *&v1[OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_autocompleter];
  if (v11)
  {
    sub_1A81831D0(0, &qword_1EB2E2A48, off_1E77FB7F8);
    v12 = a1;
    v13 = v11;
    v14 = sub_1A81ACE24();

    if ((v14 & 1) != 0 && ([v12 isRunning] & 1) == 0)
    {
      v15 = *&v2[v10];
      *&v2[v10] = 0;

      v16 = [v12 allResults];
      sub_1A81831D0(0, &qword_1EB2E2A50, 0x1E6996358);
      v17 = sub_1A81ACD14();

      v18 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v17 >> 62)
      {
LABEL_43:
        v19 = sub_1A81ACE94();
      }

      else
      {
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v53 = v7;
      v55 = v5;
      v56 = v4;
      if (!v19)
      {
        v57 = MEMORY[0x1E69E7CC0];
        goto LABEL_37;
      }

      v7 = 0;
      v4 = v17 & 0xC000000000000001;
      v57 = MEMORY[0x1E69E7CC0];
      v20 = &selRef_addOperation_;
      v54 = v2;
      v60 = v17 & 0xC000000000000001;
      while (1)
      {
        v2 = v7;
        while (1)
        {
          if (v4)
          {
            v21 = MEMORY[0x1AC568850](v2, v17);
          }

          else
          {
            if (v2 >= *(v18 + 16))
            {
              goto LABEL_42;
            }

            v21 = *(v17 + 8 * v2 + 32);
          }

          v5 = v21;
          v7 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v22 = [v21 value];
          if (!v22)
          {
            __break(1u);
LABEL_45:
            __break(1u);
            return;
          }

          v23 = v22;
          v24 = [v22 v20[14]];

          if (v24)
          {
            break;
          }

LABEL_10:
          sub_1A8197CC0(0, 0, 0, 0, 0, 0, 0);
          ++v2;
          if (v7 == v19)
          {
            v2 = v54;
            goto LABEL_37;
          }
        }

        v61 = sub_1A81ACCC4();
        v26 = v25;

        v27 = [v5 displayName];
        if (!v27)
        {

          goto LABEL_10;
        }

        v28 = v17;
        v29 = v27;
        v59 = sub_1A81ACCC4();
        v31 = v30;

        v32 = [v5 value];
        if (!v32)
        {
          goto LABEL_45;
        }

        v33 = v32;
        v34 = [v32 addressType];

        if (v34 == 1)
        {
          v35 = 0;
          goto LABEL_26;
        }

        if (v34 != 2)
        {
          break;
        }

        v35 = 1;
LABEL_26:
        v36 = [v5 identifier];
        if (v36)
        {
          v37 = v36;
          v38 = sub_1A81ACCC4();
          v51 = v39;
          v52 = v38;
        }

        else
        {

          v51 = 0;
          v52 = 0;
        }

        v2 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1A8197F68(0, *(v57 + 2) + 1, 1, v57);
        }

        v41 = *(v57 + 2);
        v40 = *(v57 + 3);
        v5 = (v41 + 1);
        if (v41 >= v40 >> 1)
        {
          v57 = sub_1A8197F68((v40 > 1), v41 + 1, 1, v57);
        }

        v42 = v57;
        *(v57 + 2) = v5;
        v43 = &v42[56 * v41];
        v4 = v60;
        *(v43 + 4) = v59;
        *(v43 + 5) = v31;
        *(v43 + 6) = v61;
        *(v43 + 7) = v26;
        v43[64] = v35;
        v44 = v51;
        *(v43 + 9) = v52;
        *(v43 + 10) = v44;
        v17 = v28;
        v20 = &selRef_addOperation_;
        if (v7 == v19)
        {
LABEL_37:

          v45 = OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_continuation;
          swift_beginAccess();
          v46 = v58;
          sub_1A8198090(&v2[v45], v58);
          v48 = v55;
          v47 = v56;
          if (v55[6](v46, 1, v56))
          {

            sub_1A8198100(v46);
          }

          else
          {
            v49 = v53;
            v48[2](v53, v46, v47);
            sub_1A8198100(v46);
            v62 = v57;
            sub_1A81ACD64();
            (v48[1])(v49, v47);
          }

          return;
        }
      }

      v17 = v28;
      v4 = v60;
      v20 = &selRef_addOperation_;
      goto LABEL_10;
    }
  }
}

id sub_1A8197B38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Autocompleter.AutocompleterDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A8197BC4(uint64_t a1)
{
  sub_1A8197C5C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A8197C5C(uint64_t a1)
{
  if (!qword_1EB2E2A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2E2990, &qword_1A81C44E8);
    v1 = sub_1A81ACE34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2E2A40);
    }
  }
}

void sub_1A8197CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_1A81966F0(a3, a4);
  }
}

char *sub_1A8197D28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2A60, &qword_1A81C4868);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1A8197E34(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2A68, &unk_1A81C4870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2820, &qword_1A81C4338);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A8197F68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2A58, &qword_1A81C4860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A8198090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2988, &qword_1A81C44E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8198100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2988, &qword_1A81C44E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __getREMListClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMListClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderCalendar.m" lineNumber:24 description:{@"Unable to find class %s", "REMList"}];

  __break(1u);
}

void ReminderKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKFrozenReminderCalendar.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMColorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMColorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderCalendar.m" lineNumber:25 description:{@"Unable to find class %s", "REMColor"}];

  __break(1u);
}

void __getREMReminderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMReminderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderReminder.m" lineNumber:22 description:{@"Unable to find class %s", "REMReminder"}];

  __break(1u);
}

void ReminderKitLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKFrozenReminderReminder.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMUserActivityClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMUserActivityClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderReminder.m" lineNumber:23 description:{@"Unable to find class %s", "REMUserActivity"}];

  __break(1u);
}

void __getREMReminderChangeItemClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMReminderChangeItemClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderReminder.m" lineNumber:24 description:{@"Unable to find class %s", "REMReminderChangeItem"}];

  __break(1u);
}

void __getREMStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:40 description:{@"Unable to find class %s", "REMStore"}];

  __break(1u);
}

void ReminderKitLibrary_cold_1_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKReminderStore.m" lineNumber:39 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMListClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMListClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:42 description:{@"Unable to find class %s", "REMList"}];

  __break(1u);
}

void __getREMReminderClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMReminderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:44 description:{@"Unable to find class %s", "REMReminder"}];

  __break(1u);
}

void __getREMSaveRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMSaveRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:43 description:{@"Unable to find class %s", "REMSaveRequest"}];

  __break(1u);
}

void __getREMAccountClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMAccountClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:41 description:{@"Unable to find class %s", "REMAccount"}];

  __break(1u);
}

void __getREMAlarmClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMAlarmClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:45 description:{@"Unable to find class %s", "REMAlarm"}];

  __break(1u);
}

void __getREMRecurrenceRuleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMRecurrenceRuleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:46 description:{@"Unable to find class %s", "REMRecurrenceRule"}];

  __break(1u);
}

void __getREMStructuredLocationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMStructuredLocationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:47 description:{@"Unable to find class %s", "REMStructuredLocation"}];

  __break(1u);
}

void __getCNAutocompleteStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAutocompleteStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKAutocompleter.m" lineNumber:44 description:{@"Unable to find class %s", "CNAutocompleteStore"}];

  __break(1u);
}

void ContactsAutocompleteLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsAutocompleteLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKAutocompleter.m" lineNumber:43 description:{@"%s", *a1}];

  __break(1u);
}

void __getCNAutocompleteFetchRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAutocompleteFetchRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKAutocompleter.m" lineNumber:45 description:{@"Unable to find class %s", "CNAutocompleteFetchRequest"}];

  __break(1u);
}

void __getCNAutocompleteNameComponentsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAutocompleteNameComponentsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKAutocompleter.m" lineNumber:47 description:{@"Unable to find class %s", "CNAutocompleteNameComponents"}];

  __break(1u);
}

void __getCNAutocompleteResultClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAutocompleteResultClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKAutocompleter.m" lineNumber:46 description:{@"Unable to find class %s", "CNAutocompleteResult"}];

  __break(1u);
}

void EKDescriptorForRequiredKeysForLabeledDisplayString_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNContactTypeKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"EKContactDescriptionGenerator.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getCNContactFormatterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNContactFormatterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKContactDescriptionGenerator.m" lineNumber:19 description:{@"Unable to find class %s", "CNContactFormatter"}];

  __break(1u);
}

void ContactsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKContactDescriptionGenerator.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void __getCNLabeledValueClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNLabeledValueClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKContactDescriptionGenerator.m" lineNumber:20 description:{@"Unable to find class %s", "CNLabeledValue"}];

  __break(1u);
}

void __getREMStructuredLocationClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMStructuredLocationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderStructuredLocation.m" lineNumber:23 description:{@"Unable to find class %s", "REMStructuredLocation"}];

  __break(1u);
}

void __getREMStructuredLocationClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKFrozenReminderStructuredLocation.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMRecurrenceEndClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMRecurrenceEndClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderRecurrenceRule.m" lineNumber:20 description:{@"Unable to find class %s", "REMRecurrenceEnd"}];

  __break(1u);
}

void ReminderKitLibrary_cold_1_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKFrozenReminderRecurrenceRule.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMRecurrenceRuleClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMRecurrenceRuleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderRecurrenceRule.m" lineNumber:19 description:{@"Unable to find class %s", "REMRecurrenceRule"}];

  __break(1u);
}

void __getREMRecurrenceDayOfWeekClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMRecurrenceDayOfWeekClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderRecurrenceRule.m" lineNumber:21 description:{@"Unable to find class %s", "REMRecurrenceDayOfWeek"}];

  __break(1u);
}

void EKObjectIDFromDictionary_cold_2(int *a1, int *a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Could not convert dictionary into EKObjectID. entityType = %d, rowID = %d", v5, 0xEu);
}

void __getREMReminderClass_block_invoke_cold_1_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMReminderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKEvent.m" lineNumber:97 description:{@"Unable to find class %s", "REMReminder"}];

  __break(1u);
}

void __getREMReminderClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKEvent.m" lineNumber:96 description:{@"%s", *a1}];

  __break(1u);
}

void __getkSuggestionsEKEventAvailabilityStateSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSuggestionsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKEvent.m" lineNumber:110 description:{@"%s", *a1}];

  __break(1u);
}

void __getMKMapItemClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKMapItemClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKLocationSearchModel.m" lineNumber:65 description:{@"Unable to find class %s", "MKMapItem"}];

  __break(1u);
}

void __getMKMapItemClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MapKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKLocationSearchModel.m" lineNumber:64 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMAlarmTimeIntervalTriggerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMAlarmTimeIntervalTriggerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderAlarm.m" lineNumber:22 description:{@"Unable to find class %s", "REMAlarmTimeIntervalTrigger"}];

  __break(1u);
}

void ReminderKitLibrary_cold_1_3(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKFrozenReminderAlarm.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMAlarmDateTriggerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMAlarmDateTriggerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderAlarm.m" lineNumber:23 description:{@"Unable to find class %s", "REMAlarmDateTrigger"}];

  __break(1u);
}

void __getREMAlarmLocationTriggerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMAlarmLocationTriggerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderAlarm.m" lineNumber:24 description:{@"Unable to find class %s", "REMAlarmLocationTrigger"}];

  __break(1u);
}

void EKUIAttendeeUtils_AttendeeHasResponded_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "EKUIAttendeeUtils_AttendeeHasResponded";
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "'nil' participant given to function: [%s].  Will not compute needs response state.", &v1, 0xCu);
}

void __EKDatabasePerformMigrationIfNeeded_block_invoke_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Migration returned error code %d", v2, 8u);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}