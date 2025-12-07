uint64_t sub_1B40FFEA0(__n128 a1)
{
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v4 = *(v1 + 104);
  v5 = sub_1B410F8A0();
  (*(v3 + 16))(v2, v5, v4);
  sub_1B429F9A8();
  v6 = sub_1B429F9C8();
  v7 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if (result)
  {
    v9 = *(v1 + 32);
    if ((*(v1 + 160) & 1) == 0)
    {
      if (v9)
      {
LABEL_9:
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v6, v7, v11, v9, "", v10, 2u);
        MEMORY[0x1B8C74FA0](v10, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v9 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v9 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v9 >> 16 <= 0x10)
      {
        v9 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v13 = *(v1 + 112);
  v12 = *(v1 + 120);
  v15 = *(v1 + 96);
  v14 = *(v1 + 104);
  v16 = *(v1 + 80);
  v18 = *(v1 + 64);
  v17 = *(v1 + 72);
  v19 = *(v1 + 48);
  (*(v16 + 16))(*(v1 + 88), v15, v17);
  sub_1B429FA28();
  swift_allocObject();
  *(v1 + 128) = sub_1B429FA18();
  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v12, v14);
  *(v1 + 136) = [v18 _startMeasurement];
  v22 = (v19 + *v19);
  v20 = swift_task_alloc();
  *(v1 + 144) = v20;
  *v20 = v1;
  v20[1] = sub_1B410014C;
  v21 = *(v1 + 24);

  return v22(v21);
}

uint64_t sub_1B410014C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1B4100330;
  }

  else
  {
    v2 = sub_1B4100260;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4100260()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 32);
  v4 = *(v0 + 160);
  [*(v0 + 64) _endMeasurement_];

  sub_1B4100400(v3, v4, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B4100330()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 32);
  v4 = *(v0 + 160);
  [*(v0 + 64) _endMeasurement_];

  sub_1B4100400(v3, v4, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B4100400(const char *a1, int a2, uint64_t a3)
{
  v27 = a2;
  v28 = a1;
  v3 = sub_1B429F9F8();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B429F9B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B429F9E8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B410F8A0();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_1B429F9C8();
  sub_1B429FA08();
  v24 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  v23 = v6;
  if ((v27 & 1) == 0)
  {
    if (v28)
    {
LABEL_9:

      sub_1B429FA38();

      v18 = v25;
      v17 = v26;
      if ((*(v25 + 88))(v5, v26) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v5, v17);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v15, v24, v21, v28, v19, v20, 2u);
      MEMORY[0x1B8C74FA0](v20, -1, -1);
      v6 = v23;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v28 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::Double __swiftcall getTunableDouble(_:_:)(Swift::Double result, Swift::String a2)
{
  if (CRParameterTuningSupportEnabled == 1)
  {
    v2 = result;
    v3 = [objc_opt_self() sharedManager];
    v4 = sub_1B429FB88();
    v5 = [v3 parameterForKeyPath_];

    result = v2;
    if (v5)
    {
      [v5 doubleValue];
      v7 = v6;

      return v7;
    }
  }

  return result;
}

Swift::Int __swiftcall getTunableInt(_:_:)(Swift::Int result, Swift::String a2)
{
  if (CRParameterTuningSupportEnabled == 1)
  {
    v2 = result;
    v3 = [objc_opt_self() sharedManager];
    v4 = sub_1B429FB88();
    v5 = [v3 parameterForKeyPath_];

    result = v2;
    if (v5)
    {
      v6 = [v5 integerValue];

      return v6;
    }
  }

  return result;
}

uint64_t getTunableOverridenDictionary(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (CRParameterTuningSupportEnabled == 1)
  {
    v4 = [objc_opt_self() sharedManager];
    v5 = sub_1B429FAE8();
    v6 = sub_1B429FB88();
    v7 = [v4 overrideDictionary:v5 withParametersFromDictionaryAtKeyPath:v6];

    v8 = sub_1B429FAF8();
    return v8;
  }

  else
  {
  }
}

id sub_1B4100A28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90, &qword_1B42AC360);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B42ACE00;
  *(v0 + 32) = [objc_allocWithZone(CRFormAddTextBasedDetectionFieldsStep) init];
  *(v0 + 40) = [objc_allocWithZone(CRFormFieldTextOverlapCleanupStep) init];
  *(v0 + 48) = [objc_allocWithZone(CRFormFieldDedupingStep) init];
  *(v0 + 56) = [objc_allocWithZone(CRFormTextBasedFieldDedupingStep) init];
  *(v0 + 64) = [objc_allocWithZone(type metadata accessor for CRFormAdjustFieldHeightStep()) init];
  *(v0 + 72) = [objc_allocWithZone(CRFormUnderlinedFieldTextOverlapCleanupStep) init];
  *(v0 + 80) = [objc_allocWithZone(CRFormFieldLineHeightPredictionStep) init];
  *(v0 + 88) = [objc_allocWithZone(CRFormFilterSurfacedFieldsStep) initWithAssignGlobalOrder_];
  *(v0 + 96) = [objc_allocWithZone(CRFormFieldLabelAssociationStep) init];
  *(v0 + 104) = [objc_allocWithZone(CRFormFieldAutoFillGuardingStep) init];
  *(v0 + 112) = [objc_allocWithZone(CRFormFilterSurfacedFieldsStep) initWithAssignGlobalOrder_];
  *(v0 + 120) = [objc_allocWithZone(CRFormFieldLoggingStep) init];
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884EF8, &unk_1B42ACE20);
  v2 = sub_1B429FDE8();

  v3 = [v1 initWithSequence_];

  return v3;
}

uint64_t sub_1B4100CD0(uint64_t a1)
{
  sub_1B4100F14(a1);
}

id sub_1B4100DD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRFormAdjustFieldHeightStep();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B4100E08(uint64_t a1)
{
  v2 = sub_1B42A0398();

  return sub_1B4100E4C(a1, v2);
}

unint64_t sub_1B4100E4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B4101244(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8C72C50](v9, a1);
      sub_1B41012A0(v9);
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

uint64_t sub_1B4100F14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884F70, &qword_1B42ACE58);
  v3 = sub_1B41014EC(a1, v2);
  v4 = v3;
  if (v3 >> 62)
  {
    result = sub_1B42A0518();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_18:

    return a1;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  v6 = result - 1;
  if (result >= 1)
  {
    v7 = 0;
    v35 = OBJC_IVAR____TtC15TextRecognition27CRFormAdjustFieldHeightStep_effectiveUnderlinedSignatureFieldHeightScaling;
    v8 = &selRef_bytesPerPixelForColorSpace_;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B8C72CD0](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        goto LABEL_6;
      }

      v11 = v10;
      swift_unknownObjectRetain_n();
      if (([v11 v8[357]] & 1) != 0 || !objc_msgSend(v11, sel_hasBoundedWidth))
      {
        break;
      }

      v12 = 0.15;
      if ([v9 respondsToSelector_])
      {
        v12 = 0.15;
        if ([v9 textContentType] == 50)
        {
          v12 = *(v36 + v35) + -1.0;
        }
      }

      v13 = [v11 boundingQuad];
      [v13 topLeft];
      v38 = v14;
      [v13 topLeft];
      v16 = v15;
      [v13 size];
      v37 = v16 - v12 * v17;
      [v13 topRight];
      v19 = v18;
      [v13 topRight];
      v21 = v20;
      [v13 size];
      v23 = v21 - v12 * v22;
      [v13 bottomRight];
      v25 = v24;
      v27 = v26;
      [v13 bottomLeft];
      v29 = v28;
      v31 = v30;
      [v13 normalizationSize];
      v34 = [objc_allocWithZone(CRNormalizedQuad) initWithNormalizedTopLeft:v38 topRight:v37 bottomRight:v19 bottomLeft:v23 size:{v25, v27, v29, v31, v32, v33}];
      [v11 setBoundingQuad_];

      swift_unknownObjectRelease_n();
      v8 = &selRef_bytesPerPixelForColorSpace_;
      if (v6 == v7)
      {
        goto LABEL_18;
      }

LABEL_7:
      ++v7;
    }

    swift_unknownObjectRelease_n();
LABEL_6:
    swift_unknownObjectRelease();
    if (v6 == v7)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4101368(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B42A0518())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B8C72CD0](v3, a1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_13;
      }

LABEL_7:
      swift_dynamicCastObjCProtocolUnconditional();
      MEMORY[0x1B8C72680]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B429FE08();
      }

      sub_1B429FE38();
      ++v3;
      if (v5 == i)
      {
        v6 = v9;
        goto LABEL_17;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v4 = *(a1 + 8 * v3 + 32);
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v7 = sub_1B4101694(v6);

  return v7;
}

unint64_t sub_1B41014EC(uint64_t a1, uint64_t a2)
{
  sub_1B429FE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884F70, &qword_1B42ACE58);
  swift_getWitnessTable();
  v2 = sub_1B429FD88();
  v3 = sub_1B4101694(v2);

  return v3;
}

uint64_t sub_1B41015A8@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884F70, &qword_1B42ACE58);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a3 = 0;
  }

  return result;
}

unint64_t sub_1B4101694(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_53;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v31 = v1;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1B8C72CD0](v2, v30);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v2 >= *(v34 + 16))
        {
          goto LABEL_48;
        }

        v4 = *(v33 + 8 * v2);
        isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_47;
        }
      }

      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        if (![swift_unknownObjectRetain() fieldType])
        {
          v25 = [v7 formFieldRegions];
          if (v25)
          {
            v26 = v25;
            sub_1B4101FC4();
            v27 = sub_1B429FDF8();

            v8 = sub_1B4101368(v27);
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease_n();
            v8 = MEMORY[0x1E69E7CC0];
          }

          goto LABEL_13;
        }

        swift_unknownObjectRelease();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90, &qword_1B42AC360);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1B42AC090;
      *(v8 + 32) = v4;
LABEL_13:
      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_1B42A0518() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_46;
      }

LABEL_17:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_22:
        sub_1B42A0518();
        goto LABEL_23;
      }

      if (v11)
      {
        goto LABEL_22;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1B42A0438();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        v17 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1B42A0518();
        v13 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_28:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_50;
          }

          v37 = v2;
          v18 = v13 + 8 * v14 + 32;
          v32 = v13;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_52;
            }

            sub_1B4101F60();
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884F80, &qword_1B42ACE70);
              v20 = sub_1B4101ABC(v36, i, v8);
              v22 = *v21;
              swift_unknownObjectRetain();
              (v20)(v36, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884F70, &qword_1B42ACE58);
            swift_arrayInitWithCopy();
          }

          v1 = v31;
          v2 = v37;
          if (v10 >= 1)
          {
            v23 = *(v32 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_51;
            }

            *(v32 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_28;
        }
      }

      if (v10 > 0)
      {
        goto LABEL_49;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_1B42A0518();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_17;
    }

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
LABEL_53:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1B42A0518();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t (*sub_1B4101ABC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8C72CD0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1B4101B3C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4101B44(void *a1)
{
  if ([a1 fieldType] == 1)
  {
    if (([a1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(objc_opt_self(), sel_shortStringFromContentType_, objc_msgSend(a1, sel_textContentType))) != 0)
    {
      v3 = v2;
      v39 = sub_1B429FB98();
      v5 = v4;
    }

    else
    {
      v39 = 0;
      v5 = 0xE000000000000000;
    }

    v6 = 0;
    if ([a1 respondsToSelector_])
    {
      [a1 suggestedLineHeight];
      v6 = v7;
    }

    if ([a1 respondsToSelector_])
    {
      v38 = [a1 maxCharacterCount];
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v5 = 0xE000000000000000;
    v6 = 0;
  }

  v8 = sub_1B429F4D8();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    swift_unknownObjectRetain();
    v10 = [v9 indexInGlobalOrder];
    v11 = [v9 labelRegion];
    if (v11)
    {
      v12 = v11;
      v9 = [v11 text];

      if (v9)
      {
        sub_1B429FB98();

        v9 = sub_1B429FC68();
      }
    }

    else
    {
      v9 = 0;
    }

    v37 = v10;
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884F98, &qword_1B42ACE78);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B42ACE60;
  v14 = [a1 boundingQuad];
  [v14 topLeft];
  v16 = v15;

  v17 = MEMORY[0x1E69E7DE0];
  *(v13 + 56) = MEMORY[0x1E69E7DE0];
  v18 = sub_1B4102010();
  *(v13 + 64) = v18;
  *(v13 + 32) = v16;
  v19 = [a1 boundingQuad];
  [v19 topLeft];
  v21 = v20;

  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  *(v13 + 72) = v21;
  v22 = [a1 boundingQuad];
  [v22 size];
  v24 = v23;

  *(v13 + 136) = v17;
  *(v13 + 144) = v18;
  *(v13 + 112) = v24;
  v25 = [a1 boundingQuad];
  [v25 size];
  v27 = v26;

  *(v13 + 176) = v17;
  *(v13 + 184) = v18;
  *(v13 + 152) = v27;
  v28 = [a1 fieldType];
  v29 = MEMORY[0x1E69E6810];
  v30 = MEMORY[0x1E69E6870];
  *(v13 + 216) = MEMORY[0x1E69E6810];
  *(v13 + 224) = v30;
  *(v13 + 192) = v28;
  v31 = [a1 fieldSource];
  *(v13 + 256) = v29;
  *(v13 + 264) = v30;
  *(v13 + 232) = v31;
  *(v13 + 296) = MEMORY[0x1E69E6158];
  v32 = sub_1B4102064();
  *(v13 + 272) = v39;
  *(v13 + 280) = v5;
  v33 = MEMORY[0x1E69E6530];
  v34 = MEMORY[0x1E69E65A8];
  *(v13 + 336) = MEMORY[0x1E69E6530];
  *(v13 + 344) = v34;
  *(v13 + 304) = v32;
  *(v13 + 312) = v9;
  *(v13 + 376) = v33;
  *(v13 + 384) = v34;
  *(v13 + 352) = v37;
  *(v13 + 416) = v17;
  *(v13 + 424) = v18;
  *(v13 + 392) = v6;
  *(v13 + 456) = v33;
  *(v13 + 464) = v34;
  *(v13 + 432) = v38;

  v35 = sub_1B429FBB8();

  return v35;
}

unint64_t sub_1B4101F60()
{
  result = qword_1EB884F88;
  if (!qword_1EB884F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB884F80, &qword_1B42ACE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB884F88);
  }

  return result;
}

unint64_t sub_1B4101FC4()
{
  result = qword_1EB884810;
  if (!qword_1EB884810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB884810);
  }

  return result;
}

unint64_t sub_1B4102010()
{
  result = qword_1EB884FA0;
  if (!qword_1EB884FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB884FA0);
  }

  return result;
}

unint64_t sub_1B4102064()
{
  result = qword_1EB884FA8;
  if (!qword_1EB884FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB884FA8);
  }

  return result;
}

uint64_t dispatch thunk of CREngine.resultDocument(for:roi:configuration:trackingSession:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 16) + **(a8 + 16));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B410252C;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of CREngine.cancel()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B40E17D0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of static CREngine.preheatModels(forOptions:revision:extendedTimeoutBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 64) + **(a6 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B40E17D0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B41026C4(const void *a1)
{
  _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1B41061E0, 0, 0);
}

uint64_t sub_1B4102728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v9 + 72) = a7;
  *(v9 + 80) = v8;
  *(v9 + 64) = a6;
  *(v9 + 56) = a8;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_1B429FA68();
  *(v9 + 88) = v10;
  *(v9 + 96) = *(v10 - 8);
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B41027FC, 0, 0);
}

uint64_t sub_1B41027FC()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    v2 = sub_1B42A0518();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 <= v0[6])
  {
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];
    v14 = v0[7];
    v15 = v0[4];
    v16 = v0[5];
    v18 = v0[2];
    v17 = v0[3];
    v19 = swift_allocObject();
    v0[14] = v19;
    v19[2] = v16;
    v19[3] = v12;
    v19[4] = v13;
    v19[5] = v18;
    v19[6] = v17;
    v19[7] = v14;
    v19[8] = v11;
    v20 = v12;
    v21 = v13;
    v22 = v16;
    v23 = sub_1B41059A8(v15);
    v0[15] = v23;
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = &unk_1B42ACF10;
    v24[5] = v19;
    v25 = swift_allocObject();
    v0[16] = v25;
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = &unk_1B42ACF20;
    v25[5] = v24;
    sub_1B429FEC8();
    sub_1B4105D4C();
    v26 = swift_allocError();
    v0[17] = v26;

    sub_1B429FAD8();
    v27 = [v21 batchSize];
    v28 = swift_task_alloc();
    v0[18] = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FB0, &qword_1B42ACF38);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FB8, &qword_1B42ACF40);
    *v28 = v0;
    v28[1] = sub_1B4102BE4;

    return _sSa15TextRecognitions8SendableRzlE35cappedConcurrencyOrderPreservingMap_9didCancel18maxConcurrentTasksSayqd__Gqd__xYaYbKYAc_s5Error_pSitYaKsABRd__lF(&unk_1B42ACF30, v25, v26, v27, v23, v29, v30);
  }

  else
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    v6 = sub_1B41253CC();
    (*(v4 + 16))(v3, v6, v5);

    v7 = sub_1B429FA48();
    v8 = sub_1B42A0138();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      if (v1 >> 62)
      {
        v10 = sub_1B42A0518();
      }

      else
      {
        v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = v0[6];
      *(v9 + 4) = v10;

      *(v9 + 12) = 2048;
      *(v9 + 14) = v32;
      _os_log_impl(&dword_1B40D2000, v7, v8, "Too many regions! %ld > %ld", v9, 0x16u);
      MEMORY[0x1B8C74FA0](v9, -1, -1);
    }

    else
    {
    }

    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_1B40DF594();
    swift_allocError();
    *v33 = 5;
    *(v33 + 4) = 1;
    swift_willThrow();

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_1B4102BE4(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v4 = sub_1B410301C;
  }

  else
  {
    v5 = v3[17];

    v4 = sub_1B4102D1C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

id sub_1B4102D1C()
{
  v1 = 0;
  v2 = *(v0 + 152);
  v3 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v4 = *(v2 + 16);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5)
    {
      v6 = v5;
      MEMORY[0x1B8C72680]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B429FE08();
      }

      sub_1B429FE38();
      v3 = v21;
    }
  }

  if (!(v3 >> 62))
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_35:
  v7 = sub_1B42A0518();
LABEL_10:
  if (v7 >= *(v0 + 48))
  {
    goto LABEL_31;
  }

  result = [*(v0 + 64) inputHeight];
  if (v9 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v10 = *(v0 + 56);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v0 + 56) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_38;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v11 = v9;
  v12 = v10;
  v13 = v9 * v10;
  if ((v9 * v10) >> 64 != v13 >> 63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v14 = v13 * v7;
  if ((v13 * v7) >> 64 != (v13 * v7) >> 63)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  result = [*(v0 + 64) inputHeight];
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v16 = v15 * v12;
  if ((v15 * v12) >> 64 != v16 >> 63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v17 = *(v0 + 48);
  v18 = v16 * v17;
  if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v18 < v14)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v14 < 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v18 > *(v0 + 24))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v19 = *(v0 + 16);
  if (v19)
  {
    if (v18 - v14 >= 0)
    {
      if (v18 != v14)
      {
        bzero((v19 + 4 * v14), 4 * v12 * (v17 * v15 - v7 * v11));
      }

      goto LABEL_31;
    }

LABEL_51:
    __break(1u);
    return result;
  }

LABEL_31:

  v20 = *(v0 + 8);

  return v20(v3);
}

uint64_t sub_1B410301C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B41030AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v8 + 224) = a8;
  *(v8 + 208) = a6;
  *(v8 + 216) = a7;
  *(v8 + 192) = a4;
  *(v8 + 200) = a5;
  *(v8 + 176) = a2;
  *(v8 + 184) = a3;
  *(v8 + 168) = a1;
  v9 = sub_1B429FA68();
  *(v8 + 232) = v9;
  *(v8 + 240) = *(v9 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B41031C0, 0, 0);
}

id sub_1B41031C0()
{
  v1 = [*(v0 + 176) boundingQuad];
  if (!v1)
  {
    goto LABEL_159;
  }

  v2 = v1;
  v3 = *(v0 + 176);
  [v1 baselineAngle];
  v5 = v4;
  *(v0 + 272) = v4;

  v6 = [v3 boundingQuad];
  if (!v6)
  {
    goto LABEL_160;
  }

  v7 = v6;
  v8 = *(v0 + 184);
  v9 = [v6 denormalizedQuad];

  [v9 boundingBox];
  v11 = v10;

  v12 = CRRoundCGRect(v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v8 width];
  v20 = [v8 height];
  v140.size.width = v19;
  v140.size.height = v20;
  v140.origin.x = 0.0;
  v140.origin.y = 0.0;
  v138.origin.x = v12;
  v138.origin.y = v14;
  v138.size.width = v16;
  v138.size.height = v18;
  v139 = CGRectIntersection(v138, v140);
  x = v139.origin.x;
  y = v139.origin.y;
  width = v139.size.width;
  height = v139.size.height;
  *(v0 + 112) = v139;
  if (CGRectIsEmpty(v139))
  {
    goto LABEL_78;
  }

  v25 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90, &qword_1B42AC360);
  inited = swift_initStackObject();
  *(v0 + 280) = inited;
  *(inited + 16) = xmmword_1B42ACEF0;
  result = [v25 boundingQuad];
  if (!result)
  {
    __break(1u);
    goto LABEL_162;
  }

  v28 = result;
  v29 = *(v0 + 176);
  [result topLeft];

  *(inited + 32) = sub_1B42A0208();
  result = [v29 boundingQuad];
  if (!result)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v30 = result;
  v31 = *(v0 + 176);
  [result topRight];

  *(inited + 40) = sub_1B42A0208();
  result = [v31 boundingQuad];
  if (!result)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v32 = result;
  v33 = *(v0 + 176);
  [result bottomRight];

  *(inited + 48) = sub_1B42A0208();
  result = [v33 boundingQuad];
  if (!result)
  {
LABEL_164:
    __break(1u);
    return result;
  }

  v34 = result;
  v35 = *(v0 + 176);
  [result bottomLeft];

  *(inited + 56) = sub_1B42A0208();
  v36 = [v35 polygon];
  *(v0 + 288) = v36;
  if (v36)
  {
    v37 = v36;
    v38 = *(v0 + 192);
    if ([v36 pointCount] >= 4 && v38)
    {
      v39 = *(v0 + 200);
      v40 = *(v0 + 192);
      if ([v39 rectifyPolygons])
      {
        v41 = *(v0 + 200);
        v42 = swift_allocObject();
        *(v0 + 296) = v42;
        *(v42 + 16) = 0;
        *(v0 + 304) = *sub_1B40E75F0();
        v43 = swift_allocObject();
        *(v0 + 312) = v43;
        v43[2] = v42;
        v43[3] = v40;
        v43[4] = v37;
        v43[5] = v41;
        v44 = v40;

        v45 = v37;
        v46 = v41;
        v47 = swift_task_alloc();
        *(v0 + 320) = v47;
        *v47 = v0;
        v47[1] = sub_1B4104150;
        v48 = MEMORY[0x1E69E7CA8] + 8;

        return sub_1B40E7640(v47, sub_1B41060AC, v43, v48);
      }
    }

    else
    {
      v40 = v37;
    }
  }

  v49 = v5;
  [*(v0 + 200) angleThresholdForRotatedCrops];
  *&v50 = v50;
  if (fabsf(v49) > *&v50)
  {
    v51 = *(v0 + 184);
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1B41050FC(inited);

    v52 = sub_1B429FDE8();

    *&v53 = -v49;
    v54 = [v51 imageByCroppingRectangle:v52 textFeaturePoints:v0 + 80 radians:x rotatedRoi:{y, width, height, v53}];

    v55 = *(v0 + 96);
    v56 = *(v0 + 104);
    v57 = *(v0 + 80);
    v58 = *(v0 + 88);
    if ([v54 width] < 1 || objc_msgSend(v54, sel_height) < 1)
    {
      v92 = *(v0 + 256);
      v93 = *(v0 + 232);
      v94 = *(v0 + 240);
      v95 = sub_1B41253CC();
      (*(v94 + 16))(v92, v95, v93);
      v54 = v54;
      p_super = sub_1B429FA48();
      v96 = sub_1B42A0138();
      if (os_log_type_enabled(p_super, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 134218240;
        *(v97 + 4) = [v54 width];

        *(v97 + 12) = 2048;
        *(v97 + 14) = [v54 height];

        _os_log_impl(&dword_1B40D2000, p_super, v96, "Unexpected crop dimensions (%ld, %ld)", v97, 0x16u);
        MEMORY[0x1B8C74FA0](v97, -1, -1);
      }

      else
      {
      }

      v98 = *(v0 + 256);
      goto LABEL_77;
    }

    v133 = v57;
    v59 = *(v0 + 224);
    v60 = v59;
    v61 = *(v0 + 200);
    v62 = *(v0 + 176);
    v132 = v58;
    v63 = v59 / [v54 width];
    [v61 inputHeight];
    v65 = v64 / [v54 height];
    if (v65 >= v63)
    {
      v65 = v63;
    }

    v66 = v65;
    v67 = objc_opt_self();
    v69 = [(CRFeatureSequenceRecognitionInfo *)v67 infoForRegion:v62 scale:v66 bounds:x featureImageSize:y rotatedROI:width, height, v55, v56, v68, v133, v132, v55, v56];
    if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v70 = *(v0 + 224);
      if (v70 > -9.22337204e18)
      {
        if (v70 < 9.22337204e18)
        {
          p_super = &v69->super;
          v72 = v70;
          if ([v54 width] == v70)
          {
            [*(v0 + 200) inputHeight];
            if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_133:
              __break(1u);
              goto LABEL_134;
            }

            if (v73 <= -9.22337204e18)
            {
LABEL_134:
              __break(1u);
              goto LABEL_135;
            }

            if (v73 >= 9.22337204e18)
            {
LABEL_135:
              __break(1u);
              goto LABEL_136;
            }

            if ([v54 height] == v73)
            {
              v74 = v54;
              goto LABEL_56;
            }
          }

          [*(v0 + 200) inputHeight];
          if ((*&v105 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v105 > -9.22337204e18)
            {
              if (v105 < 9.22337204e18)
              {
                v74 = [v54 imageByPaddingToRatioAndScalingToWidth:v72 height:v105 paddingMode:objc_msgSend(*(v0 + 200) alignCenter:{sel_paddingMode), 0}];
LABEL_56:
                v106 = v74;
                [v74 createFloatBuffer];
                v107 = v134;
                if (v134)
                {
                  if (is_mul_ok(v136, v135))
                  {
                    v108 = v136 * v135;
                    if (((v136 * v135) & 0x8000000000000000) == 0)
                    {
                      if (!(v108 >> 61))
                      {
                        [*(v0 + 200) inputHeight];
                        if ((*&v109 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                        {
                          if (v109 > -9.22337204e18)
                          {
                            if (v109 < 9.22337204e18)
                            {
                              v110 = v109 * v72;
                              if ((v109 * v72) >> 64 == v110 >> 63)
                              {
                                v111 = *(v0 + 168);
                                v112 = v110 * v111;
                                if ((v110 * v111) >> 64 == (v110 * v111) >> 63)
                                {
                                  [*(v0 + 200) inputHeight];
                                  if ((*&v113 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                                  {
                                    if (v113 > -9.22337204e18)
                                    {
                                      if (v113 < 9.22337204e18)
                                      {
                                        v114 = v113 * v72;
                                        if ((v113 * v72) >> 64 == v114 >> 63)
                                        {
                                          v115 = *(v0 + 168);
                                          v116 = v115 + 1;
                                          if (!__OFADD__(v115, 1))
                                          {
                                            v117 = v114 * v116;
                                            if ((v114 * v116) >> 64 == (v114 * v116) >> 63)
                                            {
                                              if (v117 >= v112)
                                              {
                                                if ((v112 & 0x8000000000000000) == 0)
                                                {
                                                  if (v117 > *(v0 + 216))
                                                  {
                                                    __break(1u);
                                                    goto LABEL_75;
                                                  }

LABEL_104:
                                                  v130 = *(v0 + 208);
                                                  if (v130)
                                                  {
                                                    memmove((v130 + 4 * v112), v107, 4 * v108);
                                                  }

                                                  v131 = p_super;
                                                  free(v107);

                                                  goto LABEL_79;
                                                }

                                                goto LABEL_132;
                                              }

LABEL_131:
                                              __break(1u);
LABEL_132:
                                              __break(1u);
                                              goto LABEL_133;
                                            }

LABEL_130:
                                            __break(1u);
                                            goto LABEL_131;
                                          }

LABEL_129:
                                          __break(1u);
                                          goto LABEL_130;
                                        }

LABEL_128:
                                        __break(1u);
                                        goto LABEL_129;
                                      }

LABEL_127:
                                      __break(1u);
                                      goto LABEL_128;
                                    }

LABEL_126:
                                    __break(1u);
                                    goto LABEL_127;
                                  }

LABEL_125:
                                  __break(1u);
                                  goto LABEL_126;
                                }

LABEL_124:
                                __break(1u);
                                goto LABEL_125;
                              }

LABEL_123:
                              __break(1u);
                              goto LABEL_124;
                            }

LABEL_122:
                            __break(1u);
                            goto LABEL_123;
                          }

LABEL_121:
                          __break(1u);
                          goto LABEL_122;
                        }

LABEL_120:
                        __break(1u);
                        goto LABEL_121;
                      }

LABEL_119:
                      __break(1u);
                      goto LABEL_120;
                    }

LABEL_118:
                    __break(1u);
                    goto LABEL_119;
                  }

LABEL_117:
                  __break(1u);
                  goto LABEL_118;
                }

LABEL_107:

                goto LABEL_78;
              }

              goto LABEL_113;
            }

LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

LABEL_110:
        __break(1u);
        goto LABEL_111;
      }
    }

    __break(1u);
    goto LABEL_110;
  }

  v75 = *(v0 + 184);
  swift_setDeallocating();
  swift_arrayDestroy();
  v76 = [v75 imageByCroppingRectangle_];
  if (v76)
  {
    v54 = v76;
    if ([v76 width] < 1 || objc_msgSend(v54, sel_height) < 1)
    {
      v100 = *(v0 + 240);
      v99 = *(v0 + 248);
      v101 = *(v0 + 232);
      v102 = sub_1B41253CC();
      (*(v100 + 16))(v99, v102, v101);
      v54 = v54;
      p_super = sub_1B429FA48();
      v103 = sub_1B42A0138();
      if (os_log_type_enabled(p_super, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 134218240;
        *(v104 + 4) = [v54 width];

        *(v104 + 12) = 2048;
        *(v104 + 14) = [v54 height];

        _os_log_impl(&dword_1B40D2000, p_super, v103, "Unexpected crop dimensions (%ld, %ld)", v104, 0x16u);
        MEMORY[0x1B8C74FA0](v104, -1, -1);
LABEL_76:
        v98 = *(v0 + 248);
LABEL_77:
        v118 = *(v0 + 232);
        v119 = *(v0 + 240);

        (*(v119 + 8))(v98, v118);
        goto LABEL_78;
      }

LABEL_75:

      goto LABEL_76;
    }

    v77 = *(v0 + 224);
    v78 = v77;
    v79 = *(v0 + 200);
    v80 = *(v0 + 176);
    v81 = v77 / [v54 width];
    [v79 inputHeight];
    v83 = v82 / [v54 height];
    if (v83 >= v81)
    {
      v83 = v81;
    }

    v84 = v83;
    v85 = objc_opt_self();
    v87 = [(CRFeatureSequenceRecognitionInfo *)v85 infoForRegion:v80 scale:v84 bounds:x featureImageSize:y rotatedROI:width, height, width, height, v86, 0.0, 0.0, 0.0, 0.0];
    if ((*&v78 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v88 = *(v0 + 224);
      if (v88 > -9.22337204e18)
      {
        if (v88 < 9.22337204e18)
        {
          p_super = &v87->super;
          v89 = v88;
          if ([v54 width] != v88)
          {
            goto LABEL_82;
          }

          [*(v0 + 200) inputHeight];
          if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          if (v90 <= -9.22337204e18)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          if (v90 >= 9.22337204e18)
          {
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
          }

          if ([v54 height] == v90)
          {
            v91 = v54;
          }

          else
          {
LABEL_82:
            [*(v0 + 200) inputHeight];
            if ((*&v121 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_136:
              __break(1u);
              goto LABEL_137;
            }

            if (v121 <= -9.22337204e18)
            {
LABEL_137:
              __break(1u);
              goto LABEL_138;
            }

            if (v121 >= 9.22337204e18)
            {
LABEL_138:
              __break(1u);
              goto LABEL_139;
            }

            v91 = [v54 imageByPaddingToRatioAndScalingToWidth:v89 height:v121 paddingMode:objc_msgSend(*(v0 + 200) alignCenter:{sel_paddingMode), 0}];
          }

          v106 = v91;
          [v91 createFloatBuffer];
          v107 = v134;
          if (v134)
          {
            if (is_mul_ok(v136, v135))
            {
              v108 = v136 * v135;
              if (((v136 * v135) & 0x8000000000000000) == 0)
              {
                if (!(v108 >> 61))
                {
                  [*(v0 + 200) inputHeight];
                  if ((*&v122 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                  {
                    if (v122 > -9.22337204e18)
                    {
                      if (v122 < 9.22337204e18)
                      {
                        v123 = v122 * v89;
                        if ((v122 * v89) >> 64 == v123 >> 63)
                        {
                          v124 = *(v0 + 168);
                          v112 = v123 * v124;
                          if ((v123 * v124) >> 64 == (v123 * v124) >> 63)
                          {
                            [*(v0 + 200) inputHeight];
                            if ((*&v125 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                            {
                              if (v125 > -9.22337204e18)
                              {
                                if (v125 < 9.22337204e18)
                                {
                                  v126 = v125 * v89;
                                  if ((v125 * v89) >> 64 == v126 >> 63)
                                  {
                                    v127 = *(v0 + 168);
                                    v128 = v127 + 1;
                                    if (!__OFADD__(v127, 1))
                                    {
                                      v129 = v126 * v128;
                                      if ((v126 * v128) >> 64 == (v126 * v128) >> 63)
                                      {
                                        if (v129 >= v112)
                                        {
                                          if ((v112 & 0x8000000000000000) == 0)
                                          {
                                            if (v129 <= *(v0 + 216))
                                            {
                                              goto LABEL_104;
                                            }

                                            goto LABEL_155;
                                          }

LABEL_154:
                                          __break(1u);
LABEL_155:
                                          __break(1u);
                                          goto LABEL_156;
                                        }

LABEL_153:
                                        __break(1u);
                                        goto LABEL_154;
                                      }

LABEL_152:
                                      __break(1u);
                                      goto LABEL_153;
                                    }

LABEL_151:
                                    __break(1u);
                                    goto LABEL_152;
                                  }

LABEL_150:
                                  __break(1u);
                                  goto LABEL_151;
                                }

LABEL_149:
                                __break(1u);
                                goto LABEL_150;
                              }

LABEL_148:
                              __break(1u);
                              goto LABEL_149;
                            }

LABEL_147:
                            __break(1u);
                            goto LABEL_148;
                          }

LABEL_146:
                          __break(1u);
                          goto LABEL_147;
                        }

LABEL_145:
                        __break(1u);
                        goto LABEL_146;
                      }

LABEL_144:
                      __break(1u);
                      goto LABEL_145;
                    }

LABEL_143:
                    __break(1u);
                    goto LABEL_144;
                  }

LABEL_142:
                  __break(1u);
                  goto LABEL_143;
                }

LABEL_141:
                __break(1u);
                goto LABEL_142;
              }

LABEL_140:
              __break(1u);
              goto LABEL_141;
            }

LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          goto LABEL_107;
        }

LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

LABEL_78:
  p_super = 0;
LABEL_79:

  v120 = *(v0 + 8);

  return v120(p_super);
}

uint64_t sub_1B4104150()
{
  *(*v1 + 328) = v0;

  if (v0)
  {

    v2 = sub_1B4104A20;
  }

  else
  {
    v2 = sub_1B41042EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B41042EC()
{
  v1 = *(v0 + 296);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_76;
  }

  v3 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 184);
  v10 = *(v0 + 272);
  [v2 size];
  v12 = v11;
  v14 = v13;
  sub_1B41050FC(v4);
  v15 = sub_1B429FDE8();

  *&v16 = -v10;
  [v9 rotatedRoiByCroppingRectangle:v15 textFeaturePoints:v5 radians:{v6, v7, v8, v16}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = *(v3 + 16);
  if (!v25)
  {
    goto LABEL_77;
  }

  swift_setDeallocating();
  v26 = v25;
  swift_arrayDestroy();
  if ([v26 width] < 1 || objc_msgSend(v26, sel_height) < 1)
  {
    v44 = *(v0 + 264);
    v45 = *(v0 + 232);
    v46 = *(v0 + 240);
    v47 = sub_1B41253CC();
    (*(v46 + 16))(v44, v47, v45);
    v48 = v26;
    v49 = sub_1B429FA48();
    v50 = sub_1B42A0138();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 288);
    v53 = *(v0 + 264);
    v54 = *(v0 + 232);
    v55 = *(v0 + 240);
    v56 = *(v0 + 192);
    if (v51)
    {
      v57 = swift_slowAlloc();
      *v57 = 134218240;
      *(v57 + 4) = [v48 &selRef_detectorInferenceStats];

      *(v57 + 12) = 2048;
      *(v57 + 14) = [v48 height];

      _os_log_impl(&dword_1B40D2000, v49, v50, "Unexpected crop dimensions (%ld, %ld)", v57, 0x16u);
      MEMORY[0x1B8C74FA0](v57, -1, -1);
    }

    else
    {
    }

    (*(v55 + 8))(v53, v54);

    goto LABEL_20;
  }

  v79 = *(v0 + 120);
  v80 = *(v0 + 112);
  v77 = *(v0 + 136);
  v78 = *(v0 + 128);
  v27 = *(v0 + 224);
  v28 = v27;
  v29 = *(v0 + 200);
  v30 = *(v0 + 176);
  v31 = v12;
  v32 = v27 / [v26 width];
  [v29 inputHeight];
  v34 = v33 / [v26 height];
  if (v34 >= v32)
  {
    v34 = v32;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v38 = [(CRFeatureSequenceRecognitionInfo *)v36 infoForRegion:v30 scale:v35 bounds:v80 featureImageSize:v79 rotatedROI:v78, v77, v31, v14, v37, v18, v20, v22, v24];
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_51;
  }

  v39 = *(v0 + 224);
  if (v39 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v40 = v38;
  v41 = v39;
  if ([v26 width] == v39)
  {
    [*(v0 + 200) inputHeight];
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v42 <= -9.22337204e18)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v42 >= 9.22337204e18)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
    }

    if ([v26 height] == v42)
    {
      v43 = v26;
      goto LABEL_25;
    }
  }

  [*(v0 + 200) inputHeight];
  if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_53;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v43 = [v26 imageByPaddingToRatioAndScalingToWidth:v41 height:v58 paddingMode:objc_msgSend(*(v0 + 200) alignCenter:{sel_paddingMode), 0}];
LABEL_25:
  v59 = v43;
  [v43 createFloatBuffer];
  if (!v81)
  {
    v76 = *(v0 + 192);

LABEL_20:
    v40 = 0;
    goto LABEL_46;
  }

  if (!is_mul_ok(v83, v82))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v60 = v83 * v82;
  if (((v83 * v82) & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v60 >> 61)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  [*(v0 + 200) inputHeight];
  if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v61 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v61 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v62 = v61 * v41;
  if ((v61 * v41) >> 64 != v62 >> 63)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v63 = *(v0 + 168);
  v64 = v62 * v63;
  if ((v62 * v63) >> 64 != (v62 * v63) >> 63)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  [*(v0 + 200) inputHeight];
  if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v65 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v65 >= 9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v66 = v65 * v41;
  if ((v65 * v41) >> 64 != v66 >> 63)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v67 = *(v0 + 168);
  v68 = v67 + 1;
  if (__OFADD__(v67, 1))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v69 = v66 * v68;
  if ((v66 * v68) >> 64 != (v66 * v68) >> 63)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v69 < v64)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v64 < 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v69 > *(v0 + 216))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v70 = *(v0 + 208);
  if (v70)
  {
    memmove((v70 + 4 * v64), v81, 4 * v60);
  }

  v71 = *(v0 + 288);
  v72 = *(v0 + 192);
  v73 = v40;
  free(v81);

LABEL_46:

  v74 = *(v0 + 8);

  return v74(v40);
}

uint64_t sub_1B4104A20()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B4104AF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70, &qword_1B42ACAB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_1B429FEE8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;

  v13 = a2;
  v14 = a3;
  v15 = a4;
  sub_1B40E6C14(v10, &unk_1B42ACF88, v12, MEMORY[0x1E69E7CA8] + 8);
  sub_1B4105F8C(v10);
}

uint64_t sub_1B4104C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FC8, &unk_1B42ACF90);
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4104D14, 0, 0);
}

uint64_t sub_1B4104D14()
{
  v1 = [*(v0 + 200) inputHeight];
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v1);
  }

  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  v9 = *(v0 + 192);
  v10 = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_1B4104F28;
  swift_continuation_init();
  *(v0 + 136) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  sub_1B40E27B4(0, &unk_1EB8847F0, off_1E7BC0E98);
  sub_1B429FE88();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B410509C;
  *(v0 + 104) = &block_descriptor_2;
  [v6 rectifyPolygonAsync:v9 imageHeight:v10 completionHandler:v0 + 80];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);
  v1 = (v0 + 16);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1B4104F28()
{

  return MEMORY[0x1EEE6DFA0](sub_1B4105008, 0, 0);
}

uint64_t sub_1B4105008()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B410509C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FC8, &unk_1B42ACF90);
  return sub_1B429FEA8();
}

char *sub_1B41050FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B42A0518();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1B40DF748(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B8C72CD0](i, a1);
        sub_1B40E27B4(0, &qword_1ED95E050, 0x1E696B098);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1B40DF748((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1B40E28EC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1B40E27B4(0, &qword_1ED95E050, 0x1E696B098);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B40DF748((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1B40E28EC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B41052F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1B40DD740;

  return v10(a1, a2);
}

uint64_t sub_1B41053F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a1;
  v6 = *a2;
  v7 = a2[1];
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1B41054F8;

  return v10(v6, v7);
}

uint64_t sub_1B41054F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1B4105608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70, &qword_1B42ACAB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1B4105F1C(a3, v23 - v10);
  v12 = sub_1B429FEE8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B4105F8C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B429FED8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B429FE78();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1B429FC08() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1B4105F8C(a3);

    return v21;
  }

LABEL_8:
  sub_1B4105F8C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B41058C4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *(v2 + 5);
  v10 = *(v2 + 6);
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B410252C;

  return sub_1B41030AC(a1, a2, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_1B41059A8(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x1B8C72CD0](v4, v1);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1B42A0518();
          v2 = result;
          goto LABEL_3;
        }

        result = *(v1 + 8 * v4 + 32);
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v10 = v3[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v11 = v2;
        v12 = result;
        v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FC0, &qword_1B42ACF78);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        result = v12;
        v2 = v11;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = result;
      v7 += 2;
      ++v4;
      if (v9 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4105B98(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B40E6368;

  return sub_1B41052F8(a1, a2, v6, v7, v8);
}

uint64_t sub_1B4105C70(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B40E17D0;

  return sub_1B41053F8(a1, a2, v6, v7, v8);
}

unint64_t sub_1B4105D4C()
{
  result = qword_1ED95E720;
  if (!qword_1ED95E720)
  {
    sub_1B429FEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E720);
  }

  return result;
}

uint64_t sub_1B4105DA4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B40E6828;

  return sub_1B41026C4(v2);
}

uint64_t sub_1B4105E50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B40E17D0;

  return sub_1B40F97CC(a1, v4, v5, v6);
}

uint64_t sub_1B4105F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70, &qword_1B42ACAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4105F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70, &qword_1B42ACAB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4105FF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B40E6828;

  return sub_1B40E5AEC(a1, v4);
}

uint64_t objectdestroy_44Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B410611C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B40E6828;

  return sub_1B4104C44(v6, v2, v3, v5, v4);
}

uint64_t type metadata accessor for ImageReaderConfiguration(uint64_t a1)
{
  result = qword_1ED95F9C0;
  if (!qword_1ED95F9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageReaderConfiguration.computeDevice.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ImageReaderConfiguration(0) + 28);

  return sub_1B40FC3A8(a1, v3);
}

uint64_t ImageReaderConfiguration.keepResourcesLoaded.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.preloadResources.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.debugOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImageReaderConfiguration(0) + 40);
  v4 = *(v3 + 1);
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
}

void ImageReaderConfiguration.debugOptions.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = v1 + *(type metadata accessor for ImageReaderConfiguration(0) + 40);

  *v6 = v2;
  *(v6 + 1) = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
}

uint64_t ImageReaderConfiguration.coreMode.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.detectionOnly.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.scriptDetection.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.textTypeDetection.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.detectTables.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.detectForms.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.languageCorrection.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.maximumCandidateCount.setter(uint64_t a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.filterFalsePositives.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.includeVerticalText.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.detectorMaxInputSize.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  v6 = v2 + *(result + 84);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ImageReaderConfiguration.minimumTextHeight.setter(double a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.dynamicLexicon.getter()
{
  type metadata accessor for ImageReaderConfiguration(0);
}

void ImageReaderConfiguration.dynamicLexicon.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ImageReaderConfiguration(0) + 92);

  *(v1 + v3) = a1;
}

uint64_t ImageReaderConfiguration.preferredLanguages.getter()
{
  type metadata accessor for ImageReaderConfiguration(0);
}

void ImageReaderConfiguration.preferredLanguages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ImageReaderConfiguration(0) + 96);

  *(v1 + v3) = a1;
}

uint64_t ImageReaderConfiguration.optimizeGroupsForStability.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.rectifyPolygons.setter(char a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.inputImageOrientation.setter(int a1)
{
  result = type metadata accessor for ImageReaderConfiguration(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t ImageReaderConfiguration.optionsDict.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80, &qword_1B42ACAE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v99 - v3;
  v5 = sub_1B429FA88();
  v6 = *(v5 - 8);
  v102 = v5;
  v103 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FD0, &qword_1B42AE850);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B42ACFA0;
  *(v8 + 32) = sub_1B429FB98();
  v101 = v8 + 32;
  v9 = *v0;
  v10 = MEMORY[0x1E69E6530];
  *(v8 + 72) = MEMORY[0x1E69E6530];
  *(v8 + 40) = v11;
  *(v8 + 48) = v9;
  *(v8 + 80) = sub_1B429FB98();
  *(v8 + 88) = v12;
  v13 = sub_1B429FB98();
  v14 = MEMORY[0x1E69E6158];
  *(v8 + 120) = MEMORY[0x1E69E6158];
  *(v8 + 96) = v13;
  *(v8 + 104) = v15;
  *(v8 + 128) = sub_1B429FB98();
  *(v8 + 136) = v16;
  v17 = type metadata accessor for ImageReaderConfiguration(0);
  v18 = *(v1 + v17[8]);
  v19 = MEMORY[0x1E69E6370];
  *(v8 + 168) = MEMORY[0x1E69E6370];
  *(v8 + 144) = v18;
  *(v8 + 176) = sub_1B429FB98();
  *(v8 + 184) = v20;
  v21 = *(v1 + v17[11]);
  *(v8 + 216) = v19;
  *(v8 + 192) = v21;
  *(v8 + 224) = sub_1B429FB98();
  *(v8 + 232) = v22;
  v23 = *(v1 + v17[12]);
  *(v8 + 264) = v19;
  *(v8 + 240) = v23;
  *(v8 + 272) = sub_1B429FB98();
  *(v8 + 280) = v24;
  v25 = *(v1 + v17[13]);
  *(v8 + 312) = v19;
  *(v8 + 288) = (v25 & 1) == 0;
  *(v8 + 320) = sub_1B429FB98();
  *(v8 + 328) = v26;
  v27 = *(v1 + v17[14]);
  *(v8 + 360) = v19;
  *(v8 + 336) = (v27 & 1) == 0;
  *(v8 + 368) = sub_1B429FB98();
  *(v8 + 376) = v28;
  v29 = *(v1 + v17[16]);
  *(v8 + 408) = v19;
  *(v8 + 384) = v29;
  *(v8 + 416) = sub_1B429FB98();
  *(v8 + 424) = v30;
  v31 = *(v1 + v17[17]);
  *(v8 + 456) = v19;
  *(v8 + 432) = (v31 & 1) == 0;
  *(v8 + 464) = sub_1B429FB98();
  *(v8 + 472) = v32;
  v33 = *(v1 + v17[18]);
  *(v8 + 504) = v10;
  *(v8 + 480) = v33;
  *(v8 + 512) = sub_1B429FB98();
  *(v8 + 520) = v34;
  v35 = *(v1 + v17[19]);
  *(v8 + 552) = v19;
  *(v8 + 528) = (v35 & 1) == 0;
  *(v8 + 560) = sub_1B429FB98();
  *(v8 + 568) = v36;
  v37 = *(v1 + v17[20]);
  *(v8 + 600) = v19;
  *(v8 + 576) = (v37 & 1) == 0;
  *(v8 + 608) = sub_1B429FB98();
  *(v8 + 616) = v38;
  v39 = v1 + v17[21];
  v40 = *v39;
  v41 = v39[8];
  *(v8 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FD8, &qword_1B42ACFD0);
  *(v8 + 624) = v40;
  *(v8 + 632) = v41;
  *(v8 + 656) = sub_1B429FB98();
  *(v8 + 664) = v42;
  v43 = *(v1 + v17[22]);
  *(v8 + 696) = MEMORY[0x1E69E63B0];
  *(v8 + 672) = v43;
  *(v8 + 704) = sub_1B429FB98();
  *(v8 + 712) = v44;
  v45 = *(v1 + v17[25]);
  *(v8 + 744) = v19;
  *(v8 + 720) = v45;
  *(v8 + 752) = sub_1B429FB98();
  *(v8 + 760) = v46;
  v47 = *(v1 + v17[26]);
  *(v8 + 792) = v19;
  *(v8 + 768) = v47;
  *(v8 + 800) = sub_1B429FB98();
  *(v8 + 808) = v48;
  v49 = *(v1 + v17[27]);
  *(v8 + 840) = MEMORY[0x1E69E7668];
  *(v8 + 816) = v49;
  *(v8 + 848) = sub_1B429FB98();
  *(v8 + 856) = v50;
  LOBYTE(v107) = *(v1 + 8);
  v51 = v107;
  LOBYTE(v105) = 1;
  sub_1B4107AD0();
  sub_1B429FB58();
  v52 = sub_1B429FB98();
  *(v8 + 888) = v14;
  *(v8 + 864) = v52;
  *(v8 + 872) = v53;
  *(v8 + 896) = sub_1B429FB98();
  *(v8 + 904) = v54;
  LOBYTE(v107) = v51;
  LOBYTE(v105) = 1;
  v55 = v102;
  sub_1B429FB58();
  v56 = sub_1B429FB98();
  *(v8 + 936) = v14;
  *(v8 + 912) = v56;
  *(v8 + 920) = v57;
  *(v8 + 944) = sub_1B429FB98();
  *(v8 + 952) = v58;
  v59 = v1 + v17[10];
  v60 = *v59;
  *(v8 + 984) = v19;
  *(v8 + 960) = v60;
  *(v8 + 992) = sub_1B429FB98();
  *(v8 + 1000) = v61;
  v62 = v59[1];
  *(v8 + 1032) = v19;
  *(v8 + 1008) = v62;
  *(v8 + 1040) = sub_1B429FB98();
  *(v8 + 1048) = v63;
  v65 = *(v59 + 1);
  v64 = *(v59 + 2);
  *(v8 + 1080) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FE0, &qword_1B42ACFD8);
  *(v8 + 1056) = v65;
  *(v8 + 1064) = v64;

  v66 = sub_1B40FC7D4(v8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885600, &qword_1B42ACD50);
  v67 = v103;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B40E6464(v1 + v17[7], v4, &unk_1EB884C80, &qword_1B42ACAE0);
  if ((*(v67 + 48))(v4, 1, v55) == 1)
  {
    sub_1B40E26E8(v4, &unk_1EB884C80, &qword_1B42ACAE0);
  }

  else
  {
    v68 = v100;
    (*(v67 + 32))(v100, v4, v55);
    v101 = sub_1B429FB98();
    v70 = v69;
    v108 = v55;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v107);
    (*(v67 + 16))(boxed_opaque_existential_0, v68, v55);
    sub_1B40E28EC(&v107, &v105);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v66;
    v73 = __swift_mutable_project_boxed_opaque_existential_0(&v105, v106);
    v74 = MEMORY[0x1EEE9AC00](v73);
    v76 = &v99 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v77 + 16))(v76, v74);
    sub_1B410B220(v76, v101, v70, isUniquelyReferenced_nonNull_native, &v104);

    (*(v67 + 8))(v68, v55);
    __swift_destroy_boxed_opaque_existential_0(&v105);
    v66 = v104;
  }

  v78 = *(v1 + v17[23]);
  if (v78)
  {
    v79 = sub_1B429FB98();
    v81 = v80;
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80, &unk_1B42AD910);
    *&v107 = v78;
    sub_1B40E28EC(&v107, &v105);

    v82 = swift_isUniquelyReferenced_nonNull_native();
    v104 = v66;
    v83 = __swift_mutable_project_boxed_opaque_existential_0(&v105, v106);
    v84 = MEMORY[0x1EEE9AC00](v83);
    v86 = (&v99 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v87 + 16))(v86, v84);
    sub_1B410B444(*v86, v79, v81, v82, &v104);

    __swift_destroy_boxed_opaque_existential_0(&v105);
    v66 = v104;
  }

  v88 = *(v1 + v17[24]);
  if (*(v88 + 16))
  {
    v89 = sub_1B429FB98();
    v91 = v90;
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80, &unk_1B42AD910);
    *&v107 = v88;
    sub_1B40E28EC(&v107, &v105);

    v92 = swift_isUniquelyReferenced_nonNull_native();
    v104 = v66;
    v93 = __swift_mutable_project_boxed_opaque_existential_0(&v105, v106);
    v94 = MEMORY[0x1EEE9AC00](v93);
    v96 = (&v99 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v97 + 16))(v96, v94);
    sub_1B410B444(*v96, v89, v91, v92, &v104);

    __swift_destroy_boxed_opaque_existential_0(&v105);
    return v104;
  }

  return v66;
}

unint64_t sub_1B4107AD0()
{
  result = qword_1ED95EC38;
  if (!qword_1ED95EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95EC38);
  }

  return result;
}

uint64_t ImageReaderConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 3;
  *(a1 + 8) = 0;
  v2 = type metadata accessor for ImageReaderConfiguration(0);
  v3 = v2[7];
  v4 = sub_1B429FA88();
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = 0;
  v6 = a1 + v2[10];
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 1;
  *(a1 + v2[14]) = 1;
  *(a1 + v2[15]) = 1;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 1;
  *(a1 + v2[18]) = 3;
  *(a1 + v2[19]) = 1;
  *(a1 + v2[20]) = 1;
  v7 = a1 + v2[21];
  *v7 = 0;
  *(v7 + 8) = 1;
  *(a1 + v2[22]) = 0;
  *(a1 + v2[23]) = 0;
  *(a1 + v2[24]) = &unk_1F2BB0E70;
  *(a1 + v2[25]) = 0;
  *(a1 + v2[26]) = 1;
  *(a1 + v2[27]) = 1;
  return result;
}

double ImageReaderConfiguration.init(options:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ImageReaderConfiguration.init()(a2);
  sub_1B4107CB0(a1);

  return result;
}

void sub_1B4107CB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B429F658();
  v211 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v208 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C90, &qword_1B42ACB40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v210 = &v208 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v208 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80, &qword_1B42ACAE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v208 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v208 - v16;
  v18 = sub_1B429FB98();
  if (*(a1 + 16))
  {
    v20 = sub_1B40F0030(v18, v19);
    v22 = v21;

    if (v22)
    {
      sub_1B40E2888(*(a1 + 56) + 32 * v20, &v216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
      if (swift_dynamicCast())
      {
        v23 = v214;
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v23 = *v2;
LABEL_7:
  *v2 = v23;
  v24 = sub_1B429FB98();
  if (*(a1 + 16))
  {
    v26 = sub_1B40F0030(v24, v25);
    v28 = v27;

    if (v28)
    {
      sub_1B40E2888(*(a1 + 56) + 32 * v26, &v216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
      if (swift_dynamicCast())
      {
        v29 = v214;
        v30 = v215;
        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  v29 = sub_1B429FB98();
  v30 = v31;
LABEL_13:
  sub_1B41092A0(v29, v30, &v216);

  if (v216 != 3)
  {
    *(v2 + 9) = v216;
    v32 = sub_1B429FB98();
    v34 = *(a1 + 16);
    v209 = v6;
    if (v34)
    {
      v35 = sub_1B40F0030(v32, v33);
      v37 = v36;

      if (v37)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v35, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v38 = v214;
          goto LABEL_20;
        }
      }
    }

    else
    {
    }

    v38 = *(v2 + *(type metadata accessor for ImageReaderConfiguration(0) + 32));
LABEL_20:
    v212 = v17;
    v39 = type metadata accessor for ImageReaderConfiguration(0);
    *(v2 + v39[8]) = v38;
    v40 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v42 = sub_1B40F0030(v40, v41);
      v44 = v43;

      if (v44)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v42, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v45 = v214;
          v46 = v39[11];
          goto LABEL_26;
        }
      }
    }

    else
    {
    }

    v46 = v39[11];
    v45 = *(v2 + v46);
LABEL_26:
    *(v2 + v46) = v45;
    v47 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v49 = sub_1B40F0030(v47, v48);
      v51 = v50;

      if (v51)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v49, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v52 = v214;
          v53 = v39[12];
          goto LABEL_32;
        }
      }
    }

    else
    {
    }

    v53 = v39[12];
    v52 = *(v2 + v53);
LABEL_32:
    *(v2 + v53) = v52;
    v54 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v56 = sub_1B40F0030(v54, v55);
      v58 = v57;

      if (v58)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v56, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v59 = v214 ^ 1;
          v60 = v39[13];
          goto LABEL_38;
        }
      }
    }

    else
    {
    }

    v60 = v39[13];
    v59 = *(v2 + v60);
LABEL_38:
    *(v2 + v60) = v59 & 1;
    v61 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v63 = sub_1B40F0030(v61, v62);
      v65 = v64;

      if (v65)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v63, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v66 = v214 ^ 1;
          v67 = v39[14];
          goto LABEL_44;
        }
      }
    }

    else
    {
    }

    v67 = v39[14];
    v66 = *(v2 + v67);
LABEL_44:
    *(v2 + v67) = v66 & 1;
    v68 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v70 = sub_1B40F0030(v68, v69);
      v72 = v71;

      if (v72)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v70, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v73 = v214;
          v74 = v39[16];
          goto LABEL_50;
        }
      }
    }

    else
    {
    }

    v74 = v39[16];
    v73 = *(v2 + v74);
LABEL_50:
    *(v2 + v74) = v73;
    v75 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v77 = sub_1B40F0030(v75, v76);
      v79 = v78;

      if (v79)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v77, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v80 = v214 ^ 1;
          v81 = v39[17];
          goto LABEL_56;
        }
      }
    }

    else
    {
    }

    v81 = v39[17];
    v80 = *(v2 + v81);
LABEL_56:
    *(v2 + v81) = v80 & 1;
    v82 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v84 = sub_1B40F0030(v82, v83);
      v86 = v85;

      if (v86)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v84, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v87 = v214;
          v88 = v39[18];
          goto LABEL_62;
        }
      }
    }

    else
    {
    }

    v88 = v39[18];
    v87 = *(v2 + v88);
LABEL_62:
    *(v2 + v88) = v87;
    v89 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v91 = sub_1B40F0030(v89, v90);
      v93 = v92;

      if (v93)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v91, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v94 = v214 ^ 1;
          v95 = v39[19];
          goto LABEL_68;
        }
      }
    }

    else
    {
    }

    v95 = v39[19];
    v94 = *(v2 + v95);
LABEL_68:
    *(v2 + v95) = v94 & 1;
    v96 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v98 = sub_1B40F0030(v96, v97);
      v100 = v99;

      if (v100)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v98, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v101 = v214 ^ 1;
          v102 = v39[20];
          goto LABEL_74;
        }
      }
    }

    else
    {
    }

    v102 = v39[20];
    v101 = *(v2 + v102);
LABEL_74:
    *(v2 + v102) = v101 & 1;
    v103 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v105 = sub_1B40F0030(v103, v104);
      v107 = v106;

      if (v107)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v105, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v108 = 0;
          v109 = v214;
          v110 = v39[21];
          goto LABEL_80;
        }
      }
    }

    else
    {
    }

    v110 = v39[21];
    v109 = *(v2 + v110);
    v108 = *(v2 + v110 + 8);
LABEL_80:
    v111 = v2 + v110;
    *v111 = v109;
    *(v111 + 8) = v108;
    v112 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v114 = sub_1B40F0030(v112, v113);
      v116 = v115;

      if (v116)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v114, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v117 = v214;
          v118 = v39[22];
          goto LABEL_86;
        }
      }
    }

    else
    {
    }

    v118 = v39[22];
    v117 = *(v2 + v118);
LABEL_86:
    *(v2 + v118) = v117;
    v119 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v121 = sub_1B40F0030(v119, v120);
      v123 = v122;

      if (v123)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v121, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v124 = v214;
          v125 = v39[25];
          goto LABEL_92;
        }
      }
    }

    else
    {
    }

    v125 = v39[25];
    v124 = *(v2 + v125);
LABEL_92:
    *(v2 + v125) = v124;
    v126 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v128 = sub_1B40F0030(v126, v127);
      v130 = v129;

      if (v130)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v128, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v131 = v214;
          v132 = v39[26];
          goto LABEL_98;
        }
      }
    }

    else
    {
    }

    v132 = v39[26];
    v131 = *(v2 + v132);
LABEL_98:
    *(v2 + v132) = v131;
    v133 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v135 = sub_1B40F0030(v133, v134);
      v137 = v136;

      if (v137)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v135, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        if (swift_dynamicCast())
        {
          v138 = v214;
          v139 = v39[27];
          goto LABEL_104;
        }
      }
    }

    else
    {
    }

    v139 = v39[27];
    v138 = *(v2 + v139);
LABEL_104:
    *(v2 + v139) = v138;
    v140 = sub_1B429FB98();
    v142 = *(a1 + 16);
    v213 = v11;
    if (v142)
    {
      v143 = sub_1B40F0030(v140, v141);
      v145 = v144;

      if (v145)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v143, &v216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
        v146 = sub_1B429FA88();
        v147 = swift_dynamicCast();
        v148 = *(v146 - 8);
        v149 = *(v148 + 56);
        v149(v14, v147 ^ 1u, 1, v146);
        if ((*(v148 + 48))(v14, 1, v146) != 1)
        {
          v151 = v212;
          (*(v148 + 32))(v212, v14, v146);
          v150 = v151;
          v149(v151, 0, 1, v146);
          goto LABEL_113;
        }

LABEL_110:
        v150 = v212;
        sub_1B40E6464(v2 + v39[7], v212, &unk_1EB884C80, &qword_1B42ACAE0);
        sub_1B429FA88();
        if ((*(*(v146 - 8) + 48))(v14, 1, v146) != 1)
        {
          sub_1B40E26E8(v14, &unk_1EB884C80, &qword_1B42ACAE0);
        }

LABEL_113:
        sub_1B40FC3A8(v150, v2 + v39[7]);
        v152 = sub_1B429FB98();
        if (*(a1 + 16) && (v154 = sub_1B40F0030(v152, v153), (v155 & 1) != 0))
        {
          sub_1B40E2888(*(a1 + 56) + 32 * v154, &v216);
        }

        else
        {
          v216 = 0u;
          v217 = 0u;
        }

        if (*(&v217 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80, &unk_1B42AD910);
          if (swift_dynamicCast())
          {
            v156 = v214;
            v157 = v39[23];
LABEL_122:

            *(v2 + v157) = v156;
            v158 = sub_1B429FB98();
            if (*(a1 + 16) && (v160 = sub_1B40F0030(v158, v159), (v161 & 1) != 0))
            {
              sub_1B40E2888(*(a1 + 56) + 32 * v160, &v216);
            }

            else
            {
              v216 = 0u;
              v217 = 0u;
            }

            if (*(&v217 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80, &unk_1B42AD910);
              if (swift_dynamicCast())
              {
                v162 = v214;
LABEL_139:
                v169 = v39[24];

                *(v2 + v169) = v162;
                v170 = sub_1B429FB98();
                if (*(a1 + 16) && (v172 = sub_1B40F0030(v170, v171), (v173 & 1) != 0))
                {
                  sub_1B40E2888(*(a1 + 56) + 32 * v172, &v216);
                }

                else
                {
                  v216 = 0u;
                  v217 = 0u;
                }

                if (*(&v217 + 1))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
                  if (swift_dynamicCast())
                  {
                    v175 = v214;
                    v174 = v215;
LABEL_148:
                    if (v175 == sub_1B429FB98() && v174 == v177)
                    {
                      v178 = 1;
                    }

                    else
                    {
                      v178 = sub_1B42A0678();
                    }

                    *(v2 + 8) = v178 & 1;
                    v179 = sub_1B429FB98();
                    if (*(a1 + 16) && (v181 = sub_1B40F0030(v179, v180), (v182 & 1) != 0))
                    {
                      sub_1B40E2888(*(a1 + 56) + 32 * v181, &v216);
                    }

                    else
                    {
                      v216 = 0u;
                      v217 = 0u;
                    }

                    if (*(&v217 + 1))
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
                      v183 = swift_dynamicCast();
                      v184 = v213;
                      if (v183)
                      {
                        v185 = v214;
                      }

                      else
                      {
                        v185 = 0;
                      }
                    }

                    else
                    {
                      sub_1B40E26E8(&v216, &qword_1EB884FE8, &qword_1B42AE710);
                      v185 = 0;
                      v184 = v213;
                    }

                    v186 = v2 + v39[10];
                    *v186 = v185;
                    v187 = sub_1B429FB98();
                    if (*(a1 + 16) && (v189 = sub_1B40F0030(v187, v188), (v190 & 1) != 0))
                    {
                      sub_1B40E2888(*(a1 + 56) + 32 * v189, &v216);
                    }

                    else
                    {
                      v216 = 0u;
                      v217 = 0u;
                    }

                    if (*(&v217 + 1))
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
                      if (swift_dynamicCast())
                      {
                        v191 = v214;
LABEL_170:
                        *(v186 + 1) = v191;
                        v192 = sub_1B429FB98();
                        if (*(a1 + 16) && (v194 = sub_1B40F0030(v192, v193), (v195 & 1) != 0))
                        {
                          sub_1B40E2888(*(a1 + 56) + 32 * v194, &v216);
                        }

                        else
                        {
                          v216 = 0u;
                          v217 = 0u;
                        }

                        if (*(&v217 + 1))
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
                          if (swift_dynamicCast())
                          {
                            v196 = v214;
                            v197 = v215;
LABEL_189:

                            *(v186 + 8) = v196;
                            *(v186 + 16) = v197;
                            return;
                          }
                        }

                        else
                        {
                          sub_1B40E26E8(&v216, &qword_1EB884FE8, &qword_1B42AE710);
                        }

                        v198 = sub_1B429FB98();
                        if (*(a1 + 16) && (v200 = sub_1B40F0030(v198, v199), (v201 & 1) != 0))
                        {
                          sub_1B40E2888(*(a1 + 56) + 32 * v200, &v216);
                        }

                        else
                        {
                          v216 = 0u;
                          v217 = 0u;
                        }

                        v202 = v211;
                        v203 = (v211 + 56);
                        if (*(&v217 + 1))
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
                          v204 = swift_dynamicCast();
                          (*v203)(v184, v204 ^ 1u, 1, v4);
                        }

                        else
                        {
                          sub_1B40E26E8(&v216, &qword_1EB884FE8, &qword_1B42AE710);
                          (*v203)(v184, 1, 1, v4);
                        }

                        v205 = v210;
                        sub_1B40E6464(v184, v210, &unk_1EB884C90, &qword_1B42ACB40);
                        if ((*(v202 + 48))(v205, 1, v4) == 1)
                        {
                          v196 = 0;
                          v197 = 0;
                        }

                        else
                        {
                          v206 = v209;
                          (*(v202 + 32))(v209, v205, v4);
                          v196 = sub_1B429F638();
                          v197 = v207;
                          (*(v202 + 8))(v206, v4);
                        }

                        sub_1B40E26E8(v184, &unk_1EB884C90, &qword_1B42ACB40);
                        goto LABEL_189;
                      }
                    }

                    else
                    {
                      sub_1B40E26E8(&v216, &qword_1EB884FE8, &qword_1B42AE710);
                    }

                    v191 = 0;
                    goto LABEL_170;
                  }
                }

                else
                {
                  sub_1B40E26E8(&v216, &qword_1EB884FE8, &qword_1B42AE710);
                }

                v175 = sub_1B429FB98();
                v174 = v176;
                goto LABEL_148;
              }
            }

            else
            {
              sub_1B40E26E8(&v216, &qword_1EB884FE8, &qword_1B42AE710);
            }

            v163 = sub_1B429FB98();
            if (*(a1 + 16) && (v165 = sub_1B40F0030(v163, v164), (v166 & 1) != 0))
            {
              sub_1B40E2888(*(a1 + 56) + 32 * v165, &v216);
            }

            else
            {
              v216 = 0u;
              v217 = 0u;
            }

            if (*(&v217 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
              if (swift_dynamicCast())
              {
                v167 = v214;
                v168 = v215;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0, &qword_1B42AD920);
                v162 = swift_allocObject();
                *(v162 + 16) = xmmword_1B42ACFB0;
                *(v162 + 32) = v167;
                *(v162 + 40) = v168;
                goto LABEL_139;
              }
            }

            else
            {
              sub_1B40E26E8(&v216, &qword_1EB884FE8, &qword_1B42AE710);
            }

            v162 = *(v2 + v39[24]);

            goto LABEL_139;
          }
        }

        else
        {
          sub_1B40E26E8(&v216, &qword_1EB884FE8, &qword_1B42AE710);
        }

        v157 = v39[23];

        goto LABEL_122;
      }
    }

    else
    {
    }

    v146 = sub_1B429FA88();
    (*(*(v146 - 8) + 56))(v14, 1, 1, v146);
    goto LABEL_110;
  }

  __break(1u);
}

void sub_1B41092A0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1B429FB98() == a1 && v6 == a2)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v8 = sub_1B42A0678();

  v9 = 0;
  if (v8)
  {
    goto LABEL_14;
  }

  if (sub_1B429FB98() == a1 && v10 == a2)
  {
    v9 = 1;
    goto LABEL_13;
  }

  v12 = sub_1B42A0678();

  if (v12)
  {
    v9 = 1;
    goto LABEL_14;
  }

  v9 = 2;
  if (sub_1B429FB98() == a1 && v13 == a2)
  {
LABEL_13:

    goto LABEL_14;
  }

  v15 = sub_1B42A0678();

  if (v15)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

LABEL_14:
  *a3 = v9;
}

uint64_t ImageReaderConfiguration.debugDescription.getter()
{
  v5 = ImageReaderConfiguration.optionsDict.getter();
  v0 = sub_1B429FB98();
  sub_1B410AB70(v0, v1, v4);

  sub_1B40E26E8(v4, &qword_1EB884FE8, &qword_1B42AE710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
  v2 = sub_1B429FB18();

  return v2;
}

uint64_t sub_1B41094A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B42A0678() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B41098C0(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 84);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

void sub_1B4109944(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 92);

  *(v2 + v4) = a1;
}

void sub_1B41099AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);

  *(v2 + v4) = a1;
}

uint64_t sub_1B4109ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 40);
  v4 = *(v3 + 1);
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 1) = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
}

double sub_1B4109AE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ImageReaderConfiguration.init()(a2);
  sub_1B4107CB0(a1);

  return result;
}

uint64_t sub_1B4109B2C()
{
  v5 = ImageReaderConfiguration.optionsDict.getter();
  v0 = sub_1B429FB98();
  sub_1B410AB70(v0, v1, v4);

  sub_1B40E26E8(v4, &qword_1EB884FE8, &qword_1B42AE710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990, &qword_1B42ACB60);
  v2 = sub_1B429FB18();

  return v2;
}

uint64_t ImageReaderDebugOptions.detectorModelPath.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void ImageReaderDebugOptions.detectorModelPath.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_1B4109CDC(void *a1)
{
  v3 = sub_1B429FA68();
  v134 = *(v3 - 8);
  v135 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v128 = (&v121 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v125 = &v121 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v121 - v11;
  v127 = sub_1B429FA88();
  v131 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v122 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FF0, &qword_1B42ACFE0);
  MEMORY[0x1EEE9AC00](v126);
  v132 = &v121 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80, &qword_1B42ACAE0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v124 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v129 = &v121 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v130 = &v121 - v19;
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v21);
  v22 = (*(v20 + 24))(v21, v20);
  v23 = *(*v1 + 112);
  v24 = *v1 + 112;
  v23(v140);
  v26 = v141;
  v25 = v142;
  __swift_project_boxed_opaque_existential_0(v140, v141);
  v27 = (*(v25 + 24))(v26, v25);
  __swift_destroy_boxed_opaque_existential_0(v140);
  v133 = v23;
  if (v22 != v27)
  {
    v132 = v24;
    v51 = sub_1B41252AC();
    v53 = v134;
    v52 = v135;
    (*(v134 + 16))(v5, v51, v135);
    sub_1B40E33EC(a1, v140);

    v54 = sub_1B429FA48();
    v55 = sub_1B42A0138();
    v56 = v52;
    v57 = v5;
    if (os_log_type_enabled(v54, v55))
    {
      v58 = swift_slowAlloc();
      LODWORD(v131) = v55;
      v59 = v58;
      *v58 = 134218240;
      v60 = v141;
      v61 = v142;
      __swift_project_boxed_opaque_existential_0(v140, v141);
      v62 = v56;
      v63 = (*(v61 + 24))(v60, v61);
      v64 = __swift_destroy_boxed_opaque_existential_0(v140);
      *(v59 + 1) = v63;
      *(v59 + 6) = 2048;
      (v133)(v140, v64);
      v65 = v141;
      v66 = v142;
      __swift_project_boxed_opaque_existential_0(v140, v141);
      v67 = (*(v66 + 24))(v65, v66);
      __swift_destroy_boxed_opaque_existential_0(v140);
      *(v59 + 14) = v67;
      v56 = v62;

      _os_log_impl(&dword_1B40D2000, v54, v131, "ImageReader config mismatch. Request revision: %ld, current revision: %ld", v59, 0x16u);
      MEMORY[0x1B8C74FA0](v59, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v140);
    }

    (*(v53 + 8))(v57, v56);
    goto LABEL_26;
  }

  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v28);
  v30 = (*(v29 + 72))(v136, v28, v29);
  LOBYTE(v139) = v136[0];
  (v23)(v140, v30);
  v31 = v141;
  v32 = v142;
  __swift_project_boxed_opaque_existential_0(v140, v141);
  (*(v32 + 72))(&v144, v31, v32);
  LOBYTE(v31) = v144;
  __swift_destroy_boxed_opaque_existential_0(v140);
  v143 = v31;
  sub_1B4107AD0();
  v33 = v1;
  if ((sub_1B429FB58() & 1) == 0)
  {
    v132 = v24;
    v68 = sub_1B41252AC();
    v70 = v134;
    v69 = v135;
    v71 = v128;
    (*(v134 + 16))(v128, v68, v135);
    sub_1B40E33EC(a1, v140);

    v72 = sub_1B429FA48();
    v73 = sub_1B42A0138();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v121 = v33;
      v76 = v75;
      v139 = v75;
      *v74 = 136315394;
      v77 = v71;
      v78 = v141;
      v79 = v142;
      __swift_project_boxed_opaque_existential_0(v140, v141);
      (*(v79 + 72))(v136, v78, v79);
      LOBYTE(v144) = v136[0];
      v80 = ImageReader.Pipeline.debugDescription.getter();
      v82 = v81;
      __swift_destroy_boxed_opaque_existential_0(v140);
      v83 = sub_1B40DDE8C(v80, v82, &v139);

      *(v74 + 4) = v83;
      *(v74 + 12) = 2080;
      (v133)(v136, v84);
      v85 = v137;
      v86 = v138;
      __swift_project_boxed_opaque_existential_0(v136, v137);
      (*(v86 + 72))(&v144, v85, v86);
      LOBYTE(v83) = v144;
      __swift_destroy_boxed_opaque_existential_0(v136);
      v143 = v83;
      v87 = ImageReader.Pipeline.debugDescription.getter();
      v89 = sub_1B40DDE8C(v87, v88, &v139);

      *(v74 + 14) = v89;
      _os_log_impl(&dword_1B40D2000, v72, v73, "ImageReader pipeline mismatch. Request pipeline: %s, current pipeline: %s", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C74FA0](v76, -1, -1);
      MEMORY[0x1B8C74FA0](v74, -1, -1);

      (*(v70 + 8))(v77, v135);
    }

    else
    {

      (*(v70 + 8))(v71, v69);
      __swift_destroy_boxed_opaque_existential_0(v140);
    }

    goto LABEL_26;
  }

  v34 = a1[3];
  v35 = a1[4];
  v128 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v34);
  v36 = v130;
  v37 = (*(v35 + 96))(v34, v35);
  v121 = v1;
  (v23)(v140, v37);
  v38 = v141;
  v39 = v142;
  __swift_project_boxed_opaque_existential_0(v140, v141);
  v40 = v129;
  (*(v39 + 96))(v38, v39);
  __swift_destroy_boxed_opaque_existential_0(v140);
  v41 = *(v126 + 48);
  v42 = v132;
  sub_1B40E6464(v36, v132, &unk_1EB884C80, &qword_1B42ACAE0);
  v43 = v42;
  sub_1B40E6464(v40, v42 + v41, &unk_1EB884C80, &qword_1B42ACAE0);
  v44 = *(v131 + 48);
  v45 = v42;
  v46 = v127;
  if (v44(v45, 1, v127) == 1)
  {
    sub_1B40E26E8(v40, &unk_1EB884C80, &qword_1B42ACAE0);
    v47 = v132;
    sub_1B40E26E8(v36, &unk_1EB884C80, &qword_1B42ACAE0);
    v48 = v44(v47 + v41, 1, v46);
    v50 = v134;
    v49 = v135;
    if (v48 == 1)
    {
      sub_1B40E26E8(v47, &unk_1EB884C80, &qword_1B42ACAE0);
LABEL_20:
      v103 = v128;
      v104 = v128[3];
      v105 = v128[4];
      __swift_project_boxed_opaque_existential_0(v128, v104);
      LOBYTE(v104) = (*(v105 + 120))(v104, v105);
      v132 = v24;
      v133(v140);
      v106 = v141;
      v107 = v142;
      __swift_project_boxed_opaque_existential_0(v140, v141);
      v108 = (*(v107 + 120))(v106, v107);
      result = __swift_destroy_boxed_opaque_existential_0(v140);
      if (((v104 ^ v108) & 1) == 0)
      {
        return result;
      }

      v110 = sub_1B41252AC();
      (*(v50 + 16))(v123, v110, v49);
      sub_1B40E33EC(v103, v140);

      v111 = sub_1B429FA48();
      v112 = sub_1B42A0138();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 67109376;
        v114 = v141;
        v115 = v142;
        __swift_project_boxed_opaque_existential_0(v140, v141);
        v116 = (*(v115 + 120))(v114, v115) & 1;
        v117 = __swift_destroy_boxed_opaque_existential_0(v140);
        *(v113 + 4) = v116;
        *(v113 + 8) = 1024;
        (v133)(v140, v117);
        v118 = v141;
        v119 = v142;
        __swift_project_boxed_opaque_existential_0(v140, v141);
        LOBYTE(v116) = (*(v119 + 120))(v118, v119);
        __swift_destroy_boxed_opaque_existential_0(v140);
        *(v113 + 10) = v116 & 1;

        _os_log_impl(&dword_1B40D2000, v111, v112, "ImageReader config mismatch. Request keepResourcesLoaded: %{BOOL}d, current keepResourcesLoaded: %{BOOL}d", v113, 0xEu);
        MEMORY[0x1B8C74FA0](v113, -1, -1);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v140);
      }

      v96 = *(v50 + 8);
      v97 = v123;
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v90 = v124;
  sub_1B40E6464(v43, v124, &unk_1EB884C80, &qword_1B42ACAE0);
  if (v44(v43 + v41, 1, v46) == 1)
  {
    sub_1B40E26E8(v129, &unk_1EB884C80, &qword_1B42ACAE0);
    v47 = v132;
    sub_1B40E26E8(v130, &unk_1EB884C80, &qword_1B42ACAE0);
    (*(v131 + 8))(v90, v46);
    v50 = v134;
    v49 = v135;
LABEL_14:
    sub_1B40E26E8(v47, &qword_1EB884FF0, &qword_1B42ACFE0);
    goto LABEL_15;
  }

  v98 = v131;
  v99 = v43 + v41;
  v100 = v122;
  (*(v131 + 32))(v122, v99, v46);
  sub_1B410BF44(&qword_1EB884FF8, MEMORY[0x1E695FD20], MEMORY[0x1E695FD30]);
  v101 = sub_1B429FB58();
  v102 = *(v98 + 8);
  v102(v100, v46);
  sub_1B40E26E8(v129, &unk_1EB884C80, &qword_1B42ACAE0);
  sub_1B40E26E8(v130, &unk_1EB884C80, &qword_1B42ACAE0);
  v102(v90, v46);
  sub_1B40E26E8(v43, &unk_1EB884C80, &qword_1B42ACAE0);
  v50 = v134;
  v49 = v135;
  if (v101)
  {
    goto LABEL_20;
  }

LABEL_15:
  v91 = sub_1B41252AC();
  v92 = v125;
  (*(v50 + 16))(v125, v91, v49);
  v93 = sub_1B429FA48();
  v94 = sub_1B42A0138();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_1B40D2000, v93, v94, "ImageReader config mismatch. computeDevice", v95, 2u);
    MEMORY[0x1B8C74FA0](v95, -1, -1);
  }

  v96 = *(v50 + 8);
  v97 = v92;
LABEL_25:
  v96(v97, v49);
LABEL_26:
  sub_1B40DF594();
  swift_allocError();
  *v120 = 1;
  *(v120 + 4) = 1;
  return swift_willThrow();
}

uint64_t ImageReader.Pipeline.engineClass.getter()
{
  if (*v0)
  {
    return type metadata accessor for CREngineFast();
  }

  else
  {
    return type metadata accessor for CREngineAccurate(0);
  }
}

_DWORD *sub_1B410AB54@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

double sub_1B410AB70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B40F0030(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B410B07C();
      v10 = v12;
    }

    sub_1B40E28EC((*(v10 + 56) + 32 * v8), a3);
    sub_1B410AECC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1B410AC14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884D20, &unk_1B42AD220);
  v33 = v4;
  result = sub_1B42A05D8();
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
        sub_1B40E28EC(v24, v34);
      }

      else
      {
        sub_1B40E2888(v24, v34);
      }

      sub_1B42A0778();
      sub_1B429FC48();
      result = sub_1B42A07A8();
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
      result = sub_1B40E28EC(v34, (*(v7 + 56) + 32 * v15));
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

void sub_1B410AECC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B42A0388() + 1) & ~v5;
    do
    {
      sub_1B42A0778();

      sub_1B429FC48();
      v10 = sub_1B42A07A8();

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
}

void *sub_1B410B07C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884D20, &unk_1B42AD220);
  v2 = *v0;
  v3 = sub_1B42A05C8();
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
        sub_1B40E2888(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B40E28EC(v25, (*(v4 + 56) + v22));
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

_OWORD *sub_1B410B220(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = sub_1B429FA88();
  v31 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
  (*(*(v10 - 8) + 32))(boxed_opaque_existential_0, a1, v10);
  v12 = *a5;
  v14 = sub_1B40F0030(a2, a3);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a4 & 1) != 0)
  {
LABEL_7:
    v20 = *a5;
    if (v18)
    {
LABEL_8:
      v21 = (v20[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_0(v21);
      return sub_1B40E28EC(&v30, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a4 & 1) == 0)
  {
    sub_1B410B07C();
    goto LABEL_7;
  }

  sub_1B410AC14(v17, a4 & 1);
  v23 = sub_1B40F0030(a2, a3);
  if ((v18 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1B42A06E8();
    __break(1u);
    return result;
  }

  v14 = v23;
  v20 = *a5;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v31);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v28, v26);
  sub_1B410B6EC(v14, a2, a3, v28, v20);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_1B410B444(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80, &unk_1B42AD910);
  v30 = v10;
  *&v29 = a1;
  v11 = *a5;
  v13 = sub_1B40F0030(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_1B40E28EC(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_1B410B07C();
    goto LABEL_7;
  }

  sub_1B410AC14(v16, a4 & 1);
  v22 = sub_1B40F0030(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1B42A06E8();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_0(&v29, v10);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  sub_1B410B63C(v13, a2, a3, *v27, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

_OWORD *sub_1B410B63C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80, &unk_1B42AD910);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_1B40E28EC(&v15, (a5[7] + 32 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_1B410B6EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1B429FA88();
  v18 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  (*(*(v10 - 8) + 32))(boxed_opaque_existential_0, a4, v10);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = (a5[6] + 16 * a1);
  *v12 = a2;
  v12[1] = a3;
  result = sub_1B40E28EC(&v17, (a5[7] + 32 * a1));
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t _s15TextRecognition23ImageReaderDebugOptionsV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v4 = *(a1 + 2);
    v5 = *(a2 + 2);
    if (v4)
    {
      if (v5)
      {
        if (*(a1 + 1) == *(a2 + 1) && v4 == v5)
        {
          return 1;
        }

        if (sub_1B42A0678())
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s15TextRecognition24ImageReaderConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B429FA88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C80, &qword_1B42ACAE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884FF0, &qword_1B42ACFE0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = v12;
  v44 = *(a1 + 8);
  v43 = *(a2 + 8);
  sub_1B4107AD0();
  if ((sub_1B429FB58() & 1) == 0)
  {
    return 0;
  }

  v42 = *(a1 + 9);
  v41 = *(a2 + 9);
  sub_1B410C85C();
  if ((sub_1B429FB58() & 1) == 0)
  {
    return 0;
  }

  v39 = type metadata accessor for ImageReaderConfiguration(0);
  v16 = v39[7];
  v17 = *(v15 + 48);
  sub_1B40E6464(a1 + v16, v14, &unk_1EB884C80, &qword_1B42ACAE0);
  v40 = v17;
  sub_1B40E6464(a2 + v16, &v14[v17], &unk_1EB884C80, &qword_1B42ACAE0);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v40], 1, v4) == 1)
    {
      sub_1B40E26E8(v14, &unk_1EB884C80, &qword_1B42ACAE0);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B40E26E8(v14, &qword_1EB884FF0, &qword_1B42ACFE0);
    return 0;
  }

  sub_1B40E6464(v14, v10, &unk_1EB884C80, &qword_1B42ACAE0);
  v19 = v40;
  if (v18(&v14[v40], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  (*(v5 + 32))(v7, &v14[v19], v4);
  sub_1B410BF44(&qword_1EB884FF8, MEMORY[0x1E695FD20], MEMORY[0x1E695FD30]);
  v20 = sub_1B429FB58();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_1B40E26E8(v14, &unk_1EB884C80, &qword_1B42ACAE0);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v22 = v39;
  if (*(a1 + v39[8]) != *(a2 + v39[8]) || *(a1 + v39[9]) != *(a2 + v39[9]))
  {
    return 0;
  }

  result = 0;
  v24 = v39[10];
  v25 = a1 + v24;
  v26 = *(a1 + v24);
  v27 = (a2 + v24);
  if (v26 == *v27 && ((*(v25 + 1) ^ v27[1]) & 1) == 0)
  {
    v28 = *(v25 + 16);
    v29 = *(v27 + 2);
    if (v28)
    {
      if (!v29 || (*(v25 + 8) != *(v27 + 1) || v28 != v29) && (sub_1B42A0678() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    if (*(a1 + v22[11]) != *(a2 + v22[11]) || *(a1 + v22[12]) != *(a2 + v22[12]) || *(a1 + v22[13]) != *(a2 + v22[13]) || *(a1 + v22[14]) != *(a2 + v22[14]) || *(a1 + v22[15]) != *(a2 + v22[15]) || *(a1 + v22[16]) != *(a2 + v22[16]) || *(a1 + v39[17]) != *(a2 + v39[17]) || *(a1 + v39[18]) != *(a2 + v39[18]) || *(a1 + v39[19]) != *(a2 + v39[19]) || *(a1 + v39[20]) != *(a2 + v39[20]))
    {
      return 0;
    }

    v30 = v39[21];
    v31 = (a1 + v30);
    v32 = *(a1 + v30 + 8);
    v33 = (a2 + v30);
    v34 = *(a2 + v30 + 8);
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

    if (*(a1 + v39[22]) == *(a2 + v39[22]))
    {
      v35 = v39[23];
      v36 = *(a1 + v35);
      v37 = *(a2 + v35);
      if (v36)
      {
        if (v37 && (sub_1B41094A4(v36, v37) & 1) != 0)
        {
LABEL_46:
          if ((sub_1B41094A4(*(a1 + v39[24]), *(a2 + v39[24])) & 1) != 0 && *(a1 + v39[25]) == *(a2 + v39[25]) && *(a1 + v39[26]) == *(a2 + v39[26]))
          {
            return *(a1 + v39[27]) == *(a2 + v39[27]);
          }
        }
      }

      else if (!v37)
      {
        goto LABEL_46;
      }
    }

    return 0;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1B410BEC0(uint64_t a1)
{
  *(a1 + 8) = sub_1B410BF44(&qword_1ED95E858, type metadata accessor for ImageReaderConfiguration, &protocol conformance descriptor for ImageReaderConfiguration);
  result = sub_1B410BF44(qword_1ED95E860, type metadata accessor for ImageReaderConfiguration, &protocol conformance descriptor for ImageReaderConfiguration);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B410BF44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B410C53C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E6530];
  sub_1B40FCC58(319);
  if (v2 <= 0x3F)
  {
    sub_1B410C74C(319, &qword_1ED95E0B0, v1, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1B410C6C0(319);
      if (v4 <= 0x3F)
      {
        sub_1B410C74C(319, &qword_1ED95E0D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        if (v5 <= 0x3F)
        {
          type metadata accessor for CGImagePropertyOrientation(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B410C6C0(uint64_t a1)
{
  if (!qword_1ED95E0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB884E80, &unk_1B42AD910);
    v1 = sub_1B42A0288();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED95E0C8);
    }
  }
}

void sub_1B410C74C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B410C79C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B410C7F8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B410C85C()
{
  result = qword_1ED95E390;
  if (!qword_1ED95E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E390);
  }

  return result;
}

uint64_t sub_1B410C8B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0, &qword_1B42AD920);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B42AD230;
  *(v0 + 32) = sub_1B429FB98();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1B429FB98();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1B429FB98();
  *(v0 + 72) = v3;
  result = sub_1B429FB98();
  *(v0 + 80) = result;
  *(v0 + 88) = v5;
  qword_1ED95F600 = v0;
  return result;
}

uint64_t sub_1B410CB00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = sub_1B429FB98();
  v6 = v5;
  if (v4 == sub_1B429FB98() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B42A0678();
  }

  return v9 & 1;
}

uint64_t sub_1B410CB9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v5 = sub_1B429FB98();
  v7 = v6;
  if (v5 == sub_1B429FB98() && v7 == v8)
  {
    v11 = 1;
LABEL_8:

    goto LABEL_9;
  }

  v10 = sub_1B42A0678();

  if ((v10 & 1) == 0)
  {
    if (v5 == sub_1B429FB98() && v7 == v13)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1B42A0678();
    }

    goto LABEL_8;
  }

  v11 = 1;
LABEL_9:

  return v11 & 1;
}

uint64_t sub_1B410CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_1B429FB98();
  LOBYTE(a4) = a4(v5);

  return a4 & 1;
}

uint64_t sub_1B410CD54(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B410CE1C(uint64_t a1, uint64_t a2)
{
  if (sub_1B429FB98() == a1 && v4 == a2)
  {
    goto LABEL_19;
  }

  v6 = sub_1B42A0678();

  if ((v6 & 1) == 0)
  {
    if (sub_1B429FB98() != a1 || v8 != a2)
    {
      v10 = sub_1B42A0678();

      if (v10)
      {
        goto LABEL_6;
      }

      if (sub_1B429FB98() != a1 || v11 != a2)
      {
        v13 = sub_1B42A0678();

        if (v13)
        {
          goto LABEL_6;
        }

        if (sub_1B429FB98() != a1 || v14 != a2)
        {
          v16 = sub_1B42A0678();

          if (v16)
          {
            goto LABEL_6;
          }

          if (sub_1B429FB98() != a1 || v17 != a2)
          {
            v18 = sub_1B42A0678();

            if (v18)
            {
              goto LABEL_6;
            }

            if (sub_1B429FB98() != a1 || v19 != a2)
            {
              v20 = sub_1B42A0678();

              if (v20)
              {
                goto LABEL_6;
              }

              if (sub_1B429FB98() != a1 || v21 != a2)
              {
                v22 = sub_1B42A0678();

                if (v22)
                {
                  goto LABEL_6;
                }

                if (sub_1B429FB98() != a1 || v23 != a2)
                {
                  v24 = sub_1B42A0678();

                  if (v24)
                  {
                    goto LABEL_6;
                  }

                  if (sub_1B429FB98() != a1 || v25 != a2)
                  {
                    v26 = sub_1B42A0678();

                    if (v26)
                    {
                      goto LABEL_6;
                    }

                    if (sub_1B429FB98() != a1 || v27 != a2)
                    {
                      v28 = sub_1B42A0678();

                      if (v28)
                      {
                        goto LABEL_6;
                      }

                      if (sub_1B429FB98() != a1 || v29 != a2)
                      {
                        v30 = sub_1B42A0678();

                        if (v30)
                        {
                          goto LABEL_6;
                        }

                        if (sub_1B429FB98() != a1 || v31 != a2)
                        {
                          v32 = sub_1B42A0678();

                          if (v32)
                          {
                            goto LABEL_6;
                          }

                          if (sub_1B429FB98() != a1 || v33 != a2)
                          {
                            v34 = sub_1B42A0678();

                            if (v34)
                            {
                              goto LABEL_6;
                            }

                            if (sub_1B429FB98() != a1 || v35 != a2)
                            {
                              v36 = sub_1B42A0678();

                              if (v36)
                              {
                                goto LABEL_6;
                              }

                              if (sub_1B429FB98() != a1 || v37 != a2)
                              {
                                v38 = sub_1B42A0678();

                                if (v38)
                                {
                                  goto LABEL_6;
                                }

                                if (sub_1B429FB98() != a1 || v39 != a2)
                                {
                                  v40 = sub_1B42A0678();

                                  if (v40)
                                  {
                                    goto LABEL_6;
                                  }

                                  if (sub_1B429FB98() != a1 || v41 != a2)
                                  {
                                    v42 = sub_1B42A0678();

                                    if (v42)
                                    {
                                      goto LABEL_6;
                                    }

                                    if (sub_1B429FB98() != a1 || v43 != a2)
                                    {
                                      v44 = sub_1B42A0678();

                                      if (v44)
                                      {
                                        goto LABEL_6;
                                      }

                                      if (sub_1B429FB98() != a1 || v45 != a2)
                                      {
                                        v7 = sub_1B42A0678();
                                        goto LABEL_20;
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

LABEL_19:
    v7 = 1;
LABEL_20:

    return v7 & 1;
  }

LABEL_6:
  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1B410D3F0(uint64_t a1, uint64_t a2)
{
  if (sub_1B429FB98() == a1 && v4 == a2)
  {
    goto LABEL_17;
  }

  v6 = sub_1B42A0678();

  if ((v6 & 1) == 0)
  {
    if (sub_1B429FB98() != a1 || v8 != a2)
    {
      v10 = sub_1B42A0678();

      if (v10)
      {
        goto LABEL_6;
      }

      if (sub_1B429FB98() != a1 || v11 != a2)
      {
        v7 = sub_1B42A0678();
LABEL_18:

        return v7 & 1;
      }
    }

LABEL_17:
    v7 = 1;
    goto LABEL_18;
  }

LABEL_6:
  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1B410D504(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B42A0678() & 1;
  }
}

uint64_t CRScript.hashValue.getter()
{
  v1 = *v0;
  sub_1B42A0778();
  MEMORY[0x1B8C73030](v1);
  return sub_1B42A07A8();
}

unint64_t sub_1B410D624()
{
  result = qword_1ED95EE80;
  if (!qword_1ED95EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95EE80);
  }

  return result;
}

unint64_t sub_1B410D67C()
{
  result = qword_1EB885000;
  if (!qword_1EB885000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB885008, &qword_1B42AD2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB885000);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRScript(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CRScript(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B410D840()
{
  swift_beginAccess();
  v1 = *(v0 + 120);

  return v1;
}

double sub_1B410D88C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;

  return result;
}

uint64_t sub_1B410D8E0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 136);
  return result;
}

uint64_t sub_1B410D924(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 136) = v2;
  return result;
}

uint64_t CRLanguageRecognitionContext.__allocating_init(script:defaultLocale:)(uint64_t a1, _BYTE *a2)
{
  v4 = swift_allocObject();
  LOBYTE(a2) = *a2;
  swift_defaultActor_initialize();
  *(v4 + 112) = MEMORY[0x1E69E7CC0];
  *(v4 + 120) = 0;
  *(v4 + 128) = 0xE000000000000000;
  *(v4 + 136) = 30;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  return v4;
}

uint64_t CRLanguageRecognitionContext.init(script:defaultLocale:)(uint64_t a1, char *a2, __n128 a3)
{
  v5 = *a2;
  swift_defaultActor_initialize();
  *(v3 + 112) = MEMORY[0x1E69E7CC0];
  *(v3 + 120) = 0;
  *(v3 + 128) = 0xE000000000000000;
  *(v3 + 136) = 30;
  *(v3 + 144) = a1;
  *(v3 + 152) = v5;
  return v3;
}

void sub_1B410DA80(void *a1, uint64_t a2)
{
  v3 = v2;
  (*(*v2 + 176))(&v36);
  if (v36 == 30)
  {
    v7 = (*(*v2 + 144))(&v36);
    v9 = v8;
    v10 = a1;
    MEMORY[0x1B8C72680]();
    if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B429FE08();
    }

    sub_1B429FE38();
    v7(&v36, 0);
    if (![(CRFeatureSequenceRecognitionInfo *)v10 transientDecodingResult])
    {
      goto LABEL_30;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    type metadata accessor for EmptyPromise(0);
    [v12 setLanguageRecognitionPromise_];

    v13 = [v12 greedyDecodingResult];
    if (!v13)
    {
LABEL_25:
      (*(*v3 + 152))(v13);
      v35 = sub_1B429FC68();

      if (v35 >= 51)
      {
        (*(*v3 + 216))(a2, 0);
      }

      swift_unknownObjectRelease();
      return;
    }

    v14 = v13;
    v15 = [v13 candidates];

    sub_1B410DEF0();
    v16 = sub_1B429FDF8();

    if (v16 >> 62)
    {
      if (sub_1B42A0518())
      {
        goto LABEL_8;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1B8C72CD0](0, v16);
LABEL_11:
        v18 = v17;

        v19 = [v18 fullString];

        v20 = sub_1B429FB98();
        v22 = v21;

        v23 = sub_1B410DFAC(v20, v22);
        v25 = v24;

        v27 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v27 = v23 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v28 = (*(*v3 + 152))(v26);
          v30 = v29;

          v31 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v31 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (v31)
          {
            v36 = 32;
            v37 = 0xE100000000000000;
            MEMORY[0x1B8C72530](v23, v25);

            v32 = v36;
            v33 = v37;
            v34 = (*(*v3 + 168))(&v36);
            MEMORY[0x1B8C72530](v32, v33);

            v13 = v34(&v36, 0);
          }

          else
          {
            v13 = (*(*v3 + 160))(v23, v25);
          }

          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v16 + 32);
        goto LABEL_11;
      }

      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

LABEL_24:

    goto LABEL_25;
  }

  sub_1B410E8C4(a1, v6);
}

unint64_t sub_1B410DEF0()
{
  result = qword_1ED95E058;
  if (!qword_1ED95E058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED95E058);
  }

  return result;
}

void *sub_1B410DF3C(uint64_t a1)
{
  v2 = sub_1B42A0378();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1B410F768(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

uint64_t sub_1B410DFAC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885010, qword_1B42AD320);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;
  v6 = sub_1B429FB88();
  if (qword_1ED95F198 != -1)
  {
    swift_once();
  }

  v7 = sub_1B429F578();
  __swift_project_value_buffer(v7, qword_1ED95F1A0);
  v8 = sub_1B429F528();
  v9 = sub_1B429FB88();
  v10 = [v6 _crStringByReplacingCharactersInSet_withString_];

  v11 = sub_1B429FB98();
  v13 = v12;

  v15[2] = v11;
  v15[3] = v13;
  sub_1B429F988();
  v15[0] = 32;
  v15[1] = 0xE100000000000000;
  sub_1B410F110();
  sub_1B410F164();
  sub_1B410F1B8();
  sub_1B42A00E8();
  (*(v3 + 8))(v5, v2);

  return v15[4];
}

void sub_1B410E1E0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(*v2 + 176);
  v7 = v6(v37);
  if (LOBYTE(v37[0]) != 30)
  {
    return;
  }

  v8 = *(*v2 + 152);
  v8(v7);
  v9 = sub_1B429FC68();

  if (v9 >= 16)
  {
    os_unfair_lock_lock(a1);
    isCurrentExecutor = swift_task_isCurrentExecutor();
    if ((isCurrentExecutor & 1) == 0)
    {
      isCurrentExecutor = swift_task_reportUnexpectedExecutor();
    }

    v8(isCurrentExecutor);
    String._predictedCRLocale(recognizer:resetContext:)(*(a1 + 8), 1);

    (*(*v2 + 184))(v37);
    os_unfair_lock_unlock(a1);
  }

  v11 = v6(v37);
  if (LOBYTE(v37[0]) == 30 && (a2 & 1) != 0)
  {
    LOBYTE(v37[0]) = v2[152];
    v11 = (*(*v2 + 184))(v37);
  }

  v12 = (v6)(v37, v11);
  if (LOBYTE(v37[0]) == 30)
  {
    return;
  }

  v13 = (*(*v2 + 128))(v12);
  v14 = v13;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_12;
    }

LABEL_34:

    return;
  }

LABEL_33:
  v15 = sub_1B42A0518();
  if (!v15)
  {
    goto LABEL_34;
  }

LABEL_12:
  v16 = 0;
  v17 = v14 & 0xC000000000000001;
  v18 = v14 & 0xFFFFFFFFFFFFFF8;
  v32 = v14 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v17)
    {
      v21 = MEMORY[0x1B8C72CD0](v16, v14);
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v16 >= *(v18 + 16))
      {
        goto LABEL_32;
      }

      v21 = *(v14 + 8 * v16 + 32);
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    v33 = v23;
    v34 = v21;
    if (![(CRFeatureSequenceRecognitionInfo *)v21 transientDecodingResult])
    {
      break;
    }

    objc_opt_self();
    v24 = swift_dynamicCastObjCClassUnconditional();
    v6(v37);
    if (LOBYTE(v37[0]) == 30)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v35) = v37[0];
      CRLocale.rawValue.getter();
      v26 = v17;
      v27 = v3;
      v28 = v14;
      v29 = v15;
      v30 = v6;
      v31 = sub_1B429FB88();

      [v24 setDecodingLocale_];
      swift_unknownObjectRelease();

      v6 = v30;
      v15 = v29;
      v14 = v28;
      v3 = v27;
      v17 = v26;
      v18 = v32;
    }

    if (![(CRFeatureSequenceRecognitionInfo *)v34 transientDecodingResult])
    {
      goto LABEL_37;
    }

    objc_opt_self();
    if ([swift_dynamicCastObjCClassUnconditional() languageRecognitionPromise])
    {
      sub_1B42A0348();
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
    }

    v37[0] = v35;
    v37[1] = v36;
    if (*(&v36 + 1))
    {
      type metadata accessor for EmptyPromise(0);
      if (swift_dynamicCast())
      {
        sub_1B40E7ED4();
      }
    }

    else
    {
      sub_1B410F21C(v37);
    }

    v19 = (*(*v3 + 144))(v37);
    *v20 = MEMORY[0x1E69E7CC0];

    v19(v37, 0);

    swift_unknownObjectRelease();
    ++v16;
    if (v33 == v15)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

TextRecognition::CRLocale_optional __swiftcall String._predictedCRLocale(recognizer:resetContext:)(NLLanguageRecognizer recognizer, Swift::Bool resetContext)
{
  v5 = v2;
  v6 = sub_1B429F578();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B429FB88();
  sub_1B429F518();
  v11 = sub_1B429F528();
  (*(v7 + 8))(v9, v6);
  LOBYTE(v9) = [v10 _crContainsCharactersInSet_];

  if ((v9 & 1) == 0)
  {
    sub_1B429FBF8();
    if (!resetContext)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (resetContext)
  {
LABEL_5:
    [(objc_class *)recognizer.super.isa reset];
  }

LABEL_6:
  v12 = sub_1B429FB88();

  [(objc_class *)recognizer.super.isa processString:v12];

  v13 = sub_1B42A01D8();
  v14 = sub_1B410DF3C(v13);
  if (v14)
  {
    v16 = v14;
    if (*(v13 + 16) && (v17 = sub_1B410F284(v14, v15), (v18 & 1) != 0))
    {
      v19 = *(*(v13 + 56) + 8 * v17);

      if (v19 > 0.5)
      {
        sub_1B413E0AC(v5);

        return result;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  *v5 = 30;
  return result;
}

void sub_1B410E8C4(void *a1, const char *a2)
{
  if ([(CRFeatureSequenceRecognitionInfo *)a1 transientDecodingResult])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();
    (*(*v2 + 176))(&v5);
    if (v5 == 30)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      CRLocale.rawValue.getter();
      v4 = sub_1B429FB88();

      [v3 setDecodingLocale_];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRLanguageRecognitionContext.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CRLanguageRecognitionContext.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

double sub_1B410EA58()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1B410EA90(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

id sub_1B410EAD8()
{
  result = [objc_allocWithZone(MEMORY[0x1E6977A58]) init];
  dword_1ED95F5B8 = 0;
  qword_1ED95F5C0 = result;
  return result;
}

uint64_t CRLanguageRecognitionSession.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_1ED95F5B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F5B8);
  os_unfair_lock_unlock(&dword_1ED95F5B8);
  return v0;
}

uint64_t CRLanguageRecognitionSession.init()(__n128 a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  if (qword_1ED95F5B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED95F5B8);
  os_unfair_lock_unlock(&dword_1ED95F5B8);
  return v1;
}

uint64_t sub_1B410EC0C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B410EC2C, v2, 0);
}

uint64_t sub_1B410EC2C()
{
  if (qword_1ED95F5B0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = (*v1 + 208) & 0xFFFFFFFFFFFFLL | 0x274B000000000000;
  v0[4] = *(*v1 + 208);
  v0[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B410ECD8, v1, 0);
}

uint64_t sub_1B410ECD8()
{
  (*(v0 + 32))(*(v0 + 16), &dword_1ED95F5B8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B410ED64()
{
  v1 = (*(**(v0 + 16) + 96))();
  *(v0 + 24) = v1;
  if (v1)
  {
    if (qword_1ED95F5B0 != -1)
    {
      v4 = v1;
      swift_once();
      v1 = v4;
    }

    v2 = (*v1 + 216) & 0xFFFFFFFFFFFFLL | 0x820C000000000000;
    *(v0 + 32) = *(*v1 + 216);
    *(v0 + 40) = v2;

    return MEMORY[0x1EEE6DFA0](sub_1B410EE7C, v1, 0);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1B410EE7C()
{
  (*(v0 + 32))(&dword_1ED95F5B8, 1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B410EEF4(uint64_t a1)
{
  v4 = *(*v1 + 104);

  return v4(v2);
}

uint64_t CRLanguageRecognitionSession.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CRLanguageRecognitionSession.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B410EFA8()
{
  v0 = sub_1B429F578();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  __swift_allocate_value_buffer(v7, qword_1ED95F1A0);
  __swift_project_value_buffer(v0, qword_1ED95F1A0);
  sub_1B429F558();
  sub_1B429F508();
  sub_1B429F548();
  v8 = *(v1 + 8);
  v8(v3, v0);
  return (v8)(v6, v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1B410F110()
{
  result = qword_1ED95E0F0;
  if (!qword_1ED95E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E0F0);
  }

  return result;
}

unint64_t sub_1B410F164()
{
  result = qword_1ED95E0F8;
  if (!qword_1ED95E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E0F8);
  }

  return result;
}

unint64_t sub_1B410F1B8()
{
  result = qword_1ED95E100;
  if (!qword_1ED95E100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB885010, qword_1B42AD320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E100);
  }

  return result;
}

uint64_t sub_1B410F21C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885330, &qword_1B42ADA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B410F284(uint64_t a1, uint64_t a2)
{
  sub_1B429FB98();
  sub_1B42A0778();
  sub_1B429FC48();
  v3 = sub_1B42A07A8();

  return sub_1B410F664(a1, v3);
}

uint64_t dispatch thunk of CRLanguageRecognitionSession.process(feature:context:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B40E17D0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CRLanguageRecognitionSession.complete()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B40E6828;

  return v4();
}

void type metadata accessor for CRDisambiguatedScript()
{
  if (!qword_1ED95E090)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED95E090);
    }
  }
}

unint64_t sub_1B410F664(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1B429FB98();
      v8 = v7;
      if (v6 == sub_1B429FB98() && v8 == v9)
      {
        break;
      }

      v11 = sub_1B42A0678();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1B410F768(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1B410F824(__n128 a1)
{
  v1 = sub_1B429F9E8();
  __swift_allocate_value_buffer(v1, qword_1ED9603C0);
  __swift_project_value_buffer(v1, qword_1ED9603C0);
  return sub_1B429F9D8();
}

uint64_t sub_1B410F8A0()
{
  if (qword_1ED95FB68 != -1)
  {
    swift_once();
  }

  v0 = sub_1B429F9E8();

  return __swift_project_value_buffer(v0, qword_1ED9603C0);
}

id sub_1B410FA4C(void *a1, double a2, double a3)
{
  v47 = sub_1B429F6D8();
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v12 = [objc_allocWithZone(CRMutableDetectedLineRegion) init];
  v13 = [a1 subFeatures];
  v48 = a3;
  v49 = a2;
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  sub_1B40E27B4(0, &qword_1ED95E6D8, off_1E7BC10E8);
  v15 = sub_1B429FDF8();

  if (v15 >> 62)
  {
    result = sub_1B42A0518();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

LABEL_10:
    v18 = a1;
    goto LABEL_11;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1B8C72CD0](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v17 = *(v15 + 32);
  }

  v18 = v17;

LABEL_11:
  [v18 topLeft];
  v20 = v19;
  v22 = v21;
  [v18 topRight];
  v24 = v23;
  v26 = v25;
  [v18 bottomRight];
  v28 = v27;
  v30 = v29;
  [v18 bottomLeft];
  v32 = v31;
  v34 = v33;
  v35 = objc_allocWithZone(CRNormalizedQuad);
  v36 = [v35 initWithNormalizedTopLeft:v20 topRight:v22 bottomRight:v24 bottomLeft:v26 size:{v28, v30, v32, v34, *&v49, *&v48}];
  [v12 setBoundingQuad_];

  [v12 setIsCurved_];
  v37 = [v18 polygon];
  [v12 setPolygon_];

  v38 = [v18 scriptCategoryResults];
  if (!v38)
  {
    sub_1B40E27B4(0, &unk_1ED95E660, off_1E7BC1068);
    sub_1B429FDF8();
    v38 = sub_1B429FDE8();
  }

  [v12 setScriptCategoryResults_];

  [v12 setTopScriptCategory_];
  swift_unknownObjectRelease();
  v39 = [v18 scriptCounts];
  sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
  sub_1B429FAF8();

  v40 = sub_1B429FAE8();

  [v12 setScriptCategoryCounts_];

  [v12 setShouldRunSequenceScript_];
  [v12 setNmsOutputScale_];
  if ([v18 isVerticalLayout])
  {
    v41 = 5;
  }

  else
  {
    v41 = 1;
  }

  [v12 setLayoutDirection_];
  if ([v18 shouldRotate180])
  {
    [v12 rotate180];
  }

  [v12 setShouldRotate180DetectorOrientationFallback_];
  [v12 setShouldRunSequenceOrientation_];
  [v12 setTextType_];
  v42 = [v18 uuid];
  if (v42)
  {
    v43 = v42;
    sub_1B429F6B8();

    v44 = v47;
    (*(v6 + 32))(v11, v8, v47);
    v45 = sub_1B429F6A8();
    [v12 setUuid_];

    (*(v6 + 8))(v11, v44);
  }

  else
  {
  }

  return v12;
}

uint64_t sub_1B411003C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v10 = *(v7 + 8 * v6);

    v8 = a1(&v10);

    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_1B41100F0(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = a3 + 24;
  do
  {
    v7 = v5;
    if (!v5)
    {
      break;
    }

    v9 = *(v6 + 8 * v5);

    v8 = a1(&v9);

    if (v3)
    {
      break;
    }

    v5 = v7 - 1;
  }

  while ((v8 & 1) == 0);
}

void sub_1B4110184(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1B4110440(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = (v9 - v11);
  v13 = sub_1B4110678(&v26, &v4[v11 + 4], v9 - v11, a1);
  if (v13 < v3)
  {
    goto LABEL_15;
  }

  if (v13)
  {
    v14 = v4[2];
    v15 = __OFADD__(v14, v13);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
      goto LABEL_32;
    }

    v4[2] = v16;
  }

  if (v13 != v12)
  {
LABEL_13:

    *v1 = v4;
    return;
  }

LABEL_16:
  if (!v27)
  {
    goto LABEL_13;
  }

  v17 = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
LABEL_34:
    __break(1u);
  }

  else if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = v26;
    if (v17 < *(v26 + 16))
    {
      v19 = v4[2];
      v20 = *(v26 + 8 * v17 + 32);

      while (1)
      {
LABEL_22:
        v21 = v4[3];
        v22 = v21 >> 1;
        if ((v21 >> 1) < v19 + 1)
        {
          v4 = sub_1B4110440((v21 > 1), v19 + 1, 1, v4);
          v22 = v4[3] >> 1;
          v23 = v19 - v22;
          if (v19 < v22)
          {
LABEL_24:
            v2 = 0;
            v25 = v19;
            v24 = 8 * v19 + 32;
            while (1)
            {
              *(v4 + v24) = v20;
              if (!(v17 + v2))
              {
                break;
              }

              if ((v17 + v2 - 1) >= *(v18 + 16))
              {
                __break(1u);
                goto LABEL_34;
              }

              v20 = *(v18 + 24 + 8 * v17 + 8 * v2);

              --v2;
              v24 += 8;
              if (v23 == v2)
              {
                v17 += v2;
                v19 = v22;
                v4[2] = v22;
                goto LABEL_22;
              }
            }

LABEL_32:
            v4[2] = v25 - v2 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v23 = v19 - v22;
          if (v19 < v22)
          {
            goto LABEL_24;
          }
        }

        v4[2] = v19;
      }
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

id sub_1B41103C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_1B429FB98();
  a5(v6);

  v7 = sub_1B429FB88();

  return v7;
}

void *sub_1B4110440(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885038, &unk_1B42AD490);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885030, &qword_1B42AD488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4110574(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885028, &qword_1B42AD480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B4110678(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 8 * v6 + 24);
      while (1)
      {
        *(a2 + 8 * v9) = *v11;
        if (v10 == v9)
        {
          break;
        }

        ++v9;
        --v11;
        if (v6 == v9)
        {
          goto LABEL_8;
        }
      }

      v12 = ~v9 + v6;
      goto LABEL_12;
    }

LABEL_8:
    v12 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  __break(1u);
  return result;
}

void sub_1B411073C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885030, &qword_1B42AD488);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885038, &unk_1B42AD490);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1B4110828(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > v7[3] >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v12 = v8 + v6;
      }

      else
      {
        v12 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1B4110440(isUniquelyReferenced_nonNull_native, v12, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((v7[3] >> 1) - v7[2] < v6)
  {
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885030, &qword_1B42AD488);
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v13 = v7[2];
  v14 = __OFADD__(v13, v6);
  v15 = v13 + v6;
  if (!v14)
  {
    v7[2] = v15;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

void sub_1B411093C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1B429F578();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    return;
  }

  sub_1B429F4F8();

  sub_1B429F4F8();
  sub_1B429F548();
  v77 = a1;
  v78 = a2;
  sub_1B40EEE90();
  v16 = sub_1B42A0318();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {

    v20 = *(v6 + 8);
    v20(v8, v5);
    v20(v11, v5);

    v20(v14, v5);
    return;
  }

  v67 = v8;
  v68 = v6;
  v69 = v5;
  v21 = 0;
  v73 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v74 = a2 & 0xFFFFFFFFFFFFFFLL;
  v22 = 1;
  v70 = xmmword_1B42ACFB0;
  v71 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v72 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v26 = sub_1B42A03F8();
      goto LABEL_23;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v77 = a1;
      v78 = v74;
      v24 = &v77 + v21;
    }

    else
    {
      v23 = v73;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v23 = sub_1B42A0448();
      }

      v24 = (v23 + v21);
    }

    v26 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
LABEL_22:
      v25 = 1;
      goto LABEL_23;
    }

    v31 = (__clz(v26 ^ 0xFF) - 24);
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v26 = ((v26 & 0xF) << 12) | ((v24[1] & 0x3F) << 6) | v24[2] & 0x3F;
        v25 = 3;
      }

      else
      {
        v26 = ((v26 & 0xF) << 18) | ((v24[1] & 0x3F) << 12) | ((v24[2] & 0x3F) << 6) | v24[3] & 0x3F;
        v25 = 4;
      }
    }

    else
    {
      if (v31 == 1)
      {
        goto LABEL_22;
      }

      v26 = v24[1] & 0x3F | ((v26 & 0x1F) << 6);
      v25 = 2;
    }

LABEL_23:
    v21 += v25;
    v27 = sub_1B429F568();
    if (v27)
    {
      break;
    }

    if (sub_1B429F568())
    {
      if ((v22 & 1) == 0 && *(v72 + 2))
      {

        v43 = v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1B4110440(0, v43[2] + 1, 1, v43);
        }

        v45 = v43[2];
        v44 = v43[3];
        if (v45 >= v44 >> 1)
        {
          v43 = sub_1B4110440((v44 > 1), v45 + 1, 1, v43);
        }

        v43[2] = v45 + 1;
        v43[v45 + 4] = v72;

        v71 = v43;
        if (v21 >= v15)
        {
          goto LABEL_81;
        }

LABEL_49:
        v22 = v27 ^ 1;
        goto LABEL_11;
      }

      v28 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1B4110574(0, *(v28 + 2) + 1, 1, v28);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1B4110574((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v72 = v28;
      *&v28[4 * v30 + 32] = v26;
      v22 = 1;
    }

    if (v21 >= v15)
    {
      v46 = v72;
      goto LABEL_57;
    }
  }

  if (*(v72 + 2))
  {

    v32 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1B4110440(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v33 = v32[3];
    v35 = v32;
    if (v34 >= v33 >> 1)
    {
      v35 = sub_1B4110440((v33 > 1), v34 + 1, 1, v32);
    }

    v35[2] = v34 + 1;
    v36 = &v35[v34];
    v37 = v35;
    v36[4] = v72;
  }

  else
  {
    v37 = v71;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885028, &qword_1B42AD480);
  v38 = swift_allocObject();
  *(v38 + 16) = v70;
  *(v38 + 32) = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1B4110440(0, v37[2] + 1, 1, v37);
  }

  v39 = v37;
  v40 = v37[2];
  v71 = v39;
  v41 = v39[3];
  if (v40 >= v41 >> 1)
  {
    v71 = sub_1B4110440((v41 > 1), v40 + 1, 1, v71);
  }

  v42 = v71;
  v71[2] = v40 + 1;
  v42[v40 + 4] = v38;

  if (v21 < v15)
  {
    goto LABEL_49;
  }

LABEL_81:
  v46 = MEMORY[0x1E69E7CC0];
LABEL_57:

  if (*(v46 + 2))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1B4110440(0, v71[2] + 1, 1, v71);
      v71 = isUniquelyReferenced_nonNull_native;
    }

    v49 = v71[2];
    v48 = v71[3];
    if (v49 >= v48 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1B4110440((v48 > 1), v49 + 1, 1, v71);
      v71 = isUniquelyReferenced_nonNull_native;
    }

    v50 = v71;
    v71[2] = v49 + 1;
    v50[v49 + 4] = v46;
  }

  else
  {
    v50 = v71;
  }

  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  *(&v66 - 2) = v14;
  v51 = sub_1B411003C(sub_1B411150C, (&v66 - 4), v50);
  if (v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = v51;
  }

  MEMORY[0x1EEE9AC00](v51);
  *(&v66 - 2) = v14;
  sub_1B41100F0(sub_1B41114AC, (&v66 - 4), v50);
  if ((v55 & 1) == 0)
  {
    v57 = v54;
    v56 = v50;
    if (v53 == v54)
    {
      goto LABEL_80;
    }

LABEL_69:
    v76 = MEMORY[0x1E69E7CC0];
    if (v53 < 0)
    {
      __break(1u);
    }

    else if (*(v56 + 16) >= v53)
    {
      swift_bridgeObjectRetain_n();
      sub_1B4110828(v56, v56 + 32, 0, (2 * v53) | 1);
      a1 = v56;

      if (v57 >= v53)
      {
        if (!__OFADD__(v57++, 1))
        {
          v59 = *(v56 + 16);
          if (v59 >= v57)
          {
            if ((v57 & 0x8000000000000000) == 0)
            {
              if (v59 == v57 - v53)
              {

                goto LABEL_77;
              }

LABEL_88:
              sub_1B411073C(a1, a1 + 32, v53, (2 * v57) | 1);
LABEL_77:
              sub_1B4110184(v60);
              v61 = *(a1 + 16);
              if (v61 < v57)
              {
                __break(1u);
              }

              else
              {
                sub_1B4110828(a1, a1 + 32, v57, (2 * v61) | 1);

                v75 = v76;
                v77 = 0;
                v78 = 0xE000000000000000;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885018, "DD");
                sub_1B40E27FC(&qword_1EB885020, &qword_1EB885018, "DD", MEMORY[0x1E69E6C68]);
                sub_1B429FC38();

                v62 = *(v68 + 8);
                v63 = v69;
                v62(v67, v69);
                v62(v11, v63);

                v62(v14, v63);
              }

              return;
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    __break(1u);
    goto LABEL_84;
  }

  v56 = v50;
  v57 = v50[2] - 1;
  if (v53 != v57)
  {
    goto LABEL_69;
  }

LABEL_80:
  v64 = *(v68 + 8);
  v65 = v69;
  v64(v67, v69);
  v64(v11, v65);

  v64(v14, v65);
}

uint64_t sub_1B41112A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B40EEE90();
  v4 = sub_1B42A0308();
  v5 = *(v4 + 16);
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1B40FE1A8(0, v5, 0);
    v6 = objc_opt_self();
    v7 = v4 + 40;
    do
    {

      v8 = sub_1B429FB88();
      v9 = [v6 _rearrangeNumericRunsInLogicalToken_layoutDirection_];

      v10 = sub_1B429FB98();
      v12 = v11;

      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1B40FE1A8((v13 > 1), v14 + 1, 1);
      }

      *(v18 + 16) = v14 + 1;
      v15 = v18 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v7 += 16;
      --v5;
    }

    while (v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80, &unk_1B42AD910);
  sub_1B40E27FC(&qword_1ED95E0D0, &unk_1EB884E80, &unk_1B42AD910, MEMORY[0x1E69E6310]);
  v16 = sub_1B429FB48();

  return v16;
}

uint64_t sub_1B41114C8(uint64_t result)
{
  if (*(*result + 16))
  {
    return sub_1B429F568() & 1;
  }

  __break(1u);
  return result;
}

uint64_t CRRecognizerBatchedByWidthsFeatureProvider.inputProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 8));

  return sub_1B40D5F90(a1, v1 + 8);
}

uint64_t CRRecognizerBatchedByWidthsFeatureProvider.recognizerFeatures(for:lineRegions:rectifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70, &qword_1B42ACAB0);
  v5[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885048, &qword_1B42AD4B8);
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050, &qword_1B42AD4C0);
  v5[27] = v7;
  v8 = *(v7 - 8);
  v5[28] = v8;
  v5[29] = *(v8 + 64);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v9 = sub_1B429F9B8();
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v10 = sub_1B429F9E8();
  v5[36] = v10;
  v5[37] = *(v10 - 8);
  v5[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4111844, 0, 0);
}

void sub_1B4111844(__n128 a1)
{
  v213 = v1;
  v4 = v1[37];
  v5 = v1[38];
  v6 = v1[36];
  v7 = sub_1B410F8A0();
  (*(v4 + 16))(v5, v7, v6);
  v8 = sub_1B410F958();
  v9 = *v8;
  v10 = *(v8 + 16);
  sub_1B429F9A8();
  v11 = sub_1B429F9C8();
  v12 = sub_1B42A01C8();
  v196 = v1;
  if ((sub_1B42A0278() & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v10 & 1) == 0)
  {
    if (v9)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_194;
  }

  if (v9 >> 32)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  if ((v9 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
    return;
  }

  if (v9 >> 16 > 0x10)
  {
LABEL_195:
    __break(1u);
    v176 = v200;
    goto LABEL_196;
  }

  v9 = (v1 + 17);
LABEL_9:
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = sub_1B429F998();
  _os_signpost_emit_with_name_impl(&dword_1B40D2000, v11, v12, v14, v9, "", v13, 2u);
  MEMORY[0x1B8C74FA0](v13, -1, -1);
LABEL_10:

  v15 = v1[37];
  v16 = v1[38];
  v18 = v1[35];
  v17 = v1[36];
  v19 = v1[33];
  v20 = v1[32];
  (*(v19 + 16))(v1[34], v18, v20);
  sub_1B429FA28();
  swift_allocObject();
  v21 = sub_1B429FA18();
  (*(v19 + 8))(v18, v20);
  (*(v15 + 8))(v16, v17);

  v211 = sub_1B4118400(v22);
  sub_1B41161B4(&v211);
  v23 = v211;
  v210 = MEMORY[0x1E69E7CC8];
  if ((v211 & 0x8000000000000000) != 0 || (v211 & 0x4000000000000000) != 0)
  {
    v10 = sub_1B42A0518();
  }

  else
  {
    v10 = *(v211 + 16);
  }

  v193 = v21;
  if (!v10)
  {
    goto LABEL_51;
  }

  v24 = 0;
  v206 = 0;
  v25 = (v1 + 13);
  x = 0.0;
  y = 0.0;
  width = 0.0;
  height = 0.0;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1B8C72CD0](v24, v23);
    }

    else
    {
      if (v24 >= *(v23 + 16))
      {
        goto LABEL_163;
      }

      v30 = *(v23 + 8 * v24 + 32);
    }

    v31 = v30;
    v32 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
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

LABEL_168:

      v160 = 0;
      v161 = -1;
      v162 = -1 << *(v10 + 32);
      if (-v162 < 64)
      {
        v161 = ~(-1 << -v162);
      }

      v163 = v161 & *(v10 + 64);
      v164 = (63 - v162) >> 6;
      if (!v163)
      {
        goto LABEL_173;
      }

      do
      {
LABEL_171:
        while (1)
        {
          v165 = __clz(__rbit64(v163));
          v163 &= v163 - 1;
          if (*(*(v10 + 56) + ((v160 << 9) | (8 * v165))) >> 62)
          {
            break;
          }

          if (!v163)
          {
            goto LABEL_173;
          }
        }

        sub_1B42A0518();
      }

      while (v163);
LABEL_173:
      while (1)
      {
        v166 = v160 + 1;
        if (__OFADD__(v160, 1))
        {
          goto LABEL_200;
        }

        if (v166 >= v164)
        {
          v63 = v196;
          v9 = v196[21];

          if ((v9 != 0) | v192 & 1)
          {
            goto LABEL_185;
          }

          v196[11] = &type metadata for CRFeatureFlags;
          v196[12] = sub_1B4118C60();
          *(v196 + 64) = 0;
          v167 = sub_1B429F898();
          __swift_destroy_boxed_opaque_existential_0(v196 + 8);
          if (v167)
          {
            v9 = [objc_allocWithZone(CRMetalPolygonRectifier) initWithDevice:objc_msgSend(*v196[22] sourceImage:sel_metalDevice) regionOfInterest:{v196[19], x, y, width, height}];
            swift_unknownObjectRelease();
            goto LABEL_186;
          }

          goto LABEL_184;
        }

        v163 = *(v10 + 64 + 8 * v166);
        ++v160;
        if (v163)
        {
          v160 = v166;
          goto LABEL_171;
        }
      }
    }

    v33 = [v30 polygon];
    if (v33)
    {
      v34 = v33;
      if ([v33 pointCount] >= 4)
      {
        v35 = *v196[22];
        if ([v35 rectifyPolygons])
        {
          v36 = [v34 denormalizedPolyline];
          [v36 boundingRect];
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;

          v215.origin.x = x;
          v215.origin.y = y;
          v215.size.width = width;
          v215.size.height = height;
          v219.origin.x = v38;
          v219.origin.y = v40;
          v219.size.width = v42;
          v219.size.height = v44;
          v216 = CGRectUnion(v215, v219);
          x = v216.origin.x;
          y = v216.origin.y;
          width = v216.size.width;
          height = v216.size.height;

LABEL_31:
          v206 = 1;
          goto LABEL_32;
        }
      }
    }

    v45 = [v31 boundingQuad];
    if (!v45)
    {
      goto LABEL_201;
    }

    v46 = v45;
    v47 = v196[22];
    [v45 baselineAngle];
    v49 = v48;

    v35 = *v47;
    [*v47 angleThresholdForRotatedCrops];
    if (v50 < fabs(v49))
    {
      v51 = [v31 boundingQuad];
      if (!v51)
      {
        goto LABEL_204;
      }

      v52 = v51;
      v53 = [v51 denormalizedQuad];

      [v53 boundingBox];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v217.origin.x = x;
      v217.origin.y = y;
      v217.size.width = width;
      v217.size.height = height;
      v220.origin.x = v55;
      v220.origin.y = v57;
      v220.size.width = v59;
      v220.size.height = v61;
      v218 = CGRectUnion(v217, v220);
      x = v218.origin.x;
      y = v218.origin.y;
      width = v218.size.width;
      height = v218.size.height;
      goto LABEL_31;
    }

LABEL_32:
    [v31 aspectRatio];
    v62 = [v35 bestFitWidthIndexForAspectRatio_];
    v63 = v62;
    v64 = v210;
    if (*(v210 + 2))
    {
      sub_1B41163E0(v62);
      if (v65)
      {
        goto LABEL_45;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v211 = v210;
    v67 = sub_1B41163E0(v63);
    v69 = *(v210 + 2);
    v70 = (v68 & 1) == 0;
    v71 = __OFADD__(v69, v70);
    v72 = v69 + v70;
    if (v71)
    {
      goto LABEL_161;
    }

    v73 = v68;
    if (*(v210 + 3) >= v72)
    {
      break;
    }

    sub_1B41166A8(v72, isUniquelyReferenced_nonNull_native);
    v64 = v211;
    v67 = sub_1B41163E0(v63);
    if ((v73 & 1) != (v74 & 1))
    {

      sub_1B42A06E8();
      return;
    }

LABEL_39:
    if ((v73 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_40:
    *(*(v64 + 7) + 8 * v67) = MEMORY[0x1E69E7CC0];

LABEL_44:
    v210 = v64;
LABEL_45:
    v79 = sub_1B4112C84(v25, v63);
    if (*v78)
    {
      v80 = v78;
      v81 = v31;
      MEMORY[0x1B8C72680]();
      if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B429FE08();
      }

      sub_1B429FE38();
    }

    (v79)(v25, 0);

    ++v24;
    if (v32 == v10)
    {

      LOBYTE(v192) = v206 ^ 1;
      v10 = v210;
      v82 = *(v210 + 2);
      if (v82)
      {
        while (1)
        {
          v83 = sub_1B4116C50(v82, 0);
          v84 = sub_1B41186E8(&v211, v83 + 4, v82, v10);
          v85 = v211;
          swift_bridgeObjectRetain_n();
          sub_1B41187E8(v85);
          if (v84 == v82)
          {
            break;
          }

          __break(1u);
LABEL_51:

          LOBYTE(v192) = 1;
          x = 0.0;
          v10 = MEMORY[0x1E69E7CC8];
          y = 0.0;
          width = 0.0;
          height = 0.0;
          v82 = *(MEMORY[0x1E69E7CC8] + 16);
          if (!v82)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
LABEL_52:

        v83 = MEMORY[0x1E69E7CC0];
      }

      v212[0] = v83;
      sub_1B4116080(v212);

      v86 = 0;
      v87 = v212[0];
      v88 = -1;
      v89 = -1 << *(v10 + 32);
      if (-v89 < 64)
      {
        v88 = ~(-1 << -v89);
      }

      v90 = v88 & *(v10 + 64);
      v91 = (63 - v89) >> 6;
      if (!v90)
      {
        goto LABEL_58;
      }

      do
      {
LABEL_56:
        while (1)
        {
          v92 = __clz(__rbit64(v90));
          v90 &= v90 - 1;
          if (*(*(v10 + 56) + ((v86 << 9) | (8 * v92))) >> 62)
          {
            break;
          }

          if (!v90)
          {
            goto LABEL_58;
          }
        }

        sub_1B42A0518();
      }

      while (v90);
      while (1)
      {
LABEL_58:
        v93 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_162;
        }

        if (v93 >= v91)
        {
          break;
        }

        v90 = *(v10 + 64 + 8 * v93);
        ++v86;
        if (v90)
        {
          v86 = v93;
          goto LABEL_56;
        }
      }

      v63 = *(v87 + 2);
      if (v63)
      {
        v94 = *v196[22];
        v201 = v87 + 32;

        v204 = 0;
        v95 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
        v96 = MEMORY[0x1E69E7CC0];
        v97 = v63;
        v198 = v87;
        v199 = v94;
        v194 = v63;
        while (1)
        {
          if (v97 == v63)
          {
            v204 = *(v87 + 2);
          }

          v71 = __OFSUB__(v204--, 1);
          if (v71)
          {
            goto LABEL_164;
          }

          if (v97 > *(v87 + 2))
          {
            goto LABEL_165;
          }

          v98 = v97 - 1;
          v207 = *&v201[8 * v98];
          if (*(v10 + 16) && (v99 = sub_1B41163E0(*&v201[8 * v98]), (v100 & 1) != 0))
          {
            v101 = *(*(v10 + 56) + 8 * v99);
            if (v101 >> 62)
            {
              v102 = sub_1B42A0518();
            }

            else
            {
              v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }
          }

          else
          {
            v102 = 0;
          }

          v103 = [v94 v95[480]];
          if (!v103)
          {
            goto LABEL_166;
          }

          if (v102 == 0x8000000000000000 && v103 == -1)
          {
            goto LABEL_183;
          }

          v195 = v98;
          v104 = v102 % v103;
          v105 = 1;
          while (v104 >= 1)
          {
            v106 = v204 - v105;
            if (__OFSUB__(v204, v105))
            {
              __break(1u);
LABEL_148:
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
              goto LABEL_156;
            }

            if ((v106 & 0x8000000000000000) != 0)
            {
              break;
            }

            if (v106 >= *(v87 + 2))
            {
              goto LABEL_148;
            }

            v107 = *&v201[8 * v106];
            if (*(v10 + 16) && (v108 = sub_1B41163E0(v107), (v109 & 1) != 0))
            {
              v110 = *(*(v10 + 56) + 8 * v108);
              if (v110 >> 62)
              {
                v111 = sub_1B42A0518();
              }

              else
              {
                v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }
            }

            else
            {
              v111 = 0;
            }

            v112 = [v94 v95[480]];
            v113 = &v112[-v104];
            if (__OFSUB__(v112, v104))
            {
              goto LABEL_149;
            }

            if (v111 >= v113)
            {
              v114 = &v112[-v104];
            }

            else
            {
              v114 = v111;
            }

            v209 = v107;
            if (*(v10 + 16) && (v115 = sub_1B41163E0(v107), (v116 & 1) != 0))
            {
              if (v114 < 0)
              {
                goto LABEL_154;
              }

              v117 = *(*(v10 + 56) + 8 * v115);
              if (v117 >> 62)
              {
                if (sub_1B42A0518() < 0)
                {
                  goto LABEL_203;
                }

                if (sub_1B42A0518() < v114)
                {
                  goto LABEL_155;
                }
              }

              else if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) < v114)
              {
                goto LABEL_155;
              }

              sub_1B41165B0(0, v114, v117);
              v119 = v118;
              v121 = v120;
              v123 = v122;

              if (!*(v10 + 16))
              {
                goto LABEL_105;
              }
            }

            else
            {
              if (v96 >> 62)
              {
                v154 = sub_1B42A0518();
                if (v154)
                {
                  v155 = v154;
                  v156 = sub_1B40DDE04(v154, 0);
                  v157 = v96;
                  v96 = v156;
                  sub_1B4118494((v156 + 4), v155, v157);
                  v159 = v158;

                  if (v159 != v155)
                  {
                    goto LABEL_202;
                  }
                }
              }

              v121 = 0;
              v119 = v96 + 32;
              v123 = (2 * *(v96 + 16)) | 1;
              if (!*(v10 + 16))
              {
                goto LABEL_105;
              }
            }

            sub_1B41163E0(v207);
            if (v124)
            {

              goto LABEL_106;
            }

LABEL_105:
            v125 = MEMORY[0x1E69E7CC0];
LABEL_106:
            v211 = v125;
            v126 = swift_unknownObjectRetain();
            sub_1B4118CC8(v126, v119, v121, v123);
            swift_unknownObjectRelease();
            v127 = v211;
            v128 = swift_isUniquelyReferenced_nonNull_native();
            v211 = v210;
            v129 = v127;
            v130 = v207;
            sub_1B4116F70(v129, v207, v128);
            v131 = v211;
            v210 = v211;
            if (__OFSUB__(v111, v114))
            {
              goto LABEL_150;
            }

            if (v111 <= v113)
            {
              sub_1B4116424(v209);

              v94 = v199;
              v95 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
            }

            else
            {
              v94 = v199;
              if (*(v211 + 16) && (v132 = sub_1B41163E0(v209), (v133 & 1) != 0))
              {
                v134 = *(*(v131 + 56) + 8 * v132);
                if (v134 >> 62)
                {
                  if (sub_1B42A0518() < v114)
                  {
                    goto LABEL_157;
                  }
                }

                else if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) < v114)
                {
                  goto LABEL_157;
                }

                if (v114 < 0)
                {
                  goto LABEL_158;
                }

                if (v134 >> 62)
                {
                  v135 = sub_1B42A0518();
                }

                else
                {
                  v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v135 < v111)
                {
                  goto LABEL_159;
                }

                if (v111 < 0)
                {
                  goto LABEL_160;
                }

                v136 = sub_1B41165B0(v114, v111, v134);
                v138 = v143;
                v140 = v144;
                v142 = v145;
              }

              else
              {
                v136 = sub_1B4112D48(MEMORY[0x1E69E7CC0]);
                v138 = v137;
                v140 = v139;
                v142 = v141;
              }

              v146 = swift_unknownObjectRetain();
              v147 = sub_1B4118624(v146, v138, v140, v142);
              if (!v147)
              {
                sub_1B4116230(v136, v138, v140, v142);
              }

              v148 = v147;
              swift_unknownObjectRelease();
              v95 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
              sub_1B4112BC4(v148, v209);
              swift_unknownObjectRelease();
              v130 = v207;
            }

            v10 = v210;
            if (*(v210 + 2) && (v149 = sub_1B41163E0(v130), (v150 & 1) != 0))
            {
              v151 = *(*(v210 + 7) + 8 * v149);
              if (v151 >> 62)
              {
                v152 = sub_1B42A0518();
              }

              else
              {
                v152 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }
            }

            else
            {
              v152 = 0;
            }

            v153 = [v94 v95[480]];
            swift_unknownObjectRelease();
            if (!v153)
            {
              goto LABEL_151;
            }

            if (v152 == 0x8000000000000000 && v153 == -1)
            {
              goto LABEL_153;
            }

            v104 = v152 % v153;
            v71 = __OFADD__(v105++, 1);
            v87 = v198;
            v96 = MEMORY[0x1E69E7CC0];
            if (v71)
            {
              goto LABEL_152;
            }
          }

          v63 = v194;
          v97 = v195;
          if (!v195)
          {
            goto LABEL_167;
          }
        }
      }

      goto LABEL_168;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_39;
  }

  v75 = v67;
  sub_1B4116AF4();
  v67 = v75;
  v64 = v211;
  if (v73)
  {
    goto LABEL_40;
  }

LABEL_42:
  *&v64[8 * (v67 >> 6) + 64] |= 1 << v67;
  *(*(v64 + 6) + 8 * v67) = v63;
  *(*(v64 + 7) + 8 * v67) = MEMORY[0x1E69E7CC0];
  v76 = *(v64 + 2);
  v71 = __OFADD__(v76, 1);
  v77 = v76 + 1;
  if (!v71)
  {
    *(v64 + 2) = v77;
    goto LABEL_44;
  }

  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  v9 = *(v63 + 168);
LABEL_185:
  v168 = v9;
LABEL_186:

  v211 = sub_1B4116324(v169);
  sub_1B4116080(&v211);
  v190 = v196[29];
  v192 = v196[28];
  v202 = v196[30];
  v203 = v196[27];
  v2 = v196[25];
  v205 = v196[26];
  v208 = v196[31];
  v11 = v196[24];
  v197 = v196[23];
  v3 = v196[22];
  v191 = v196[19];

  v170 = v211;
  v171 = swift_task_alloc();
  *(v171 + 16) = v10;
  *(v171 + 24) = v3;
  v211 = 0;
  v172 = *(v170 + 16);
  v189 = v170;
  if (v172)
  {
    v173 = (v170 + 32);
    do
    {
      v174 = *v173++;
      v212[0] = v174;
      sub_1B41187F0(&v211, v212);
      --v172;
    }

    while (v172);
    v175 = v211;
  }

  else
  {
    v175 = 0;
  }

  v187 = v175;
  v176 = v202;
LABEL_196:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885058, &qword_1B42AD4C8);
  (*(v2 + 104))(v205, *MEMORY[0x1E69E8650], v11);
  sub_1B429FEF8();
  (*(v2 + 8))(v205, v11);
  v177 = [*v3 inputWidths];
  sub_1B40E27B4(0, &qword_1ED95EE90, 0x1E696AD98);
  v188 = sub_1B429FDF8();

  sub_1B4118908(v3, (v196 + 2));
  (*(v192 + 16))(v176, v208, v203);
  v178 = (*(v192 + 80) + 104) & ~*(v192 + 80);
  v179 = swift_allocObject();
  *(v179 + 16) = v189;
  *(v179 + 24) = v10;
  v180 = *(v196 + 2);
  *(v179 + 32) = *(v196 + 1);
  *(v179 + 48) = v180;
  *(v179 + 64) = *(v196 + 3);
  *(v179 + 80) = v191;
  *(v179 + 88) = v188;
  *(v179 + 96) = v9;
  (*(v192 + 32))(v179 + v178, v176, v203);
  *(v179 + ((v190 + v178 + 7) & 0xFFFFFFFFFFFFFFF8)) = v193;
  v181 = sub_1B429FEE8();
  (*(*(v181 - 8) + 56))(v197, 1, 1, v181);
  v182 = swift_allocObject();
  v182[2] = 0;
  v182[3] = 0;
  v182[4] = &unk_1B42AD4D8;
  v182[5] = v179;
  v183 = swift_allocObject();
  v183[2] = 0;
  v183[3] = 0;
  v183[4] = &unk_1B42AD4E8;
  v183[5] = v182;
  v184 = v9;

  v185 = v191;

  sub_1B4115CC4(0, 0, v197, &unk_1B42AD4F8, v183);
  sub_1B429FF08();

  (*(v192 + 8))(v208, v203);

  v186 = v196[1];

  v186(v187);
}

void sub_1B4112BC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1B4116F70(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1B41163E0(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1B4116AF4();
        v11 = v13;
      }

      sub_1B4116918(v9, v11);
      *v3 = v11;
    }
  }
}

uint64_t (*sub_1B4112C84(uint64_t **a1, uint64_t a2))()
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
  v4[4] = sub_1B41164AC(v4, a2);
  return sub_1B4112CFC;
}

void sub_1B4112CFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void *sub_1B4112D48(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1B42A0518();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1B40DDE04(v3, 0);
  sub_1B4118494((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B4112DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[15] = a3;
  v8[16] = a4;
  v8[13] = a1;
  v8[14] = a2;
  v9 = sub_1B429F9F8();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB885070, &unk_1B42AD5B0);
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v11 = sub_1B429F9B8();
  v8[27] = v11;
  v8[28] = *(v11 - 8);
  v8[29] = swift_task_alloc();
  v12 = sub_1B429F9E8();
  v8[30] = v12;
  v8[31] = *(v12 - 8);
  v8[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4112FDC, 0, 0);
}

uint64_t sub_1B4112FDC()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  v2 = (v0 + 80);
  *(v0 + 88) = v1;
  v3 = (v0 + 88);
  v4 = *(*(v0 + 104) + 16);
  *(v0 + 264) = v4;
  if (!v4)
  {
LABEL_114:
    v79 = *(v0 + 248);
    v78 = *(v0 + 256);
    v80 = *(v0 + 240);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050, &qword_1B42AD4C0);
    sub_1B429FF28();
    v81 = sub_1B410F8A0();
    (*(v79 + 16))(v78, v81, v80);
    v82 = sub_1B410F958();
    v50 = *v82;
    v83 = *(v82 + 16);
    v23 = sub_1B429F9C8();
    sub_1B429FA08();
    v84 = sub_1B42A01B8();
    result = sub_1B42A0278();
    if (result)
    {
      v104 = v84;
      if (v83)
      {
        goto LABEL_122;
      }

      if (v50)
      {
LABEL_126:
        v92 = *(v0 + 176);
        v91 = *(v0 + 184);
        v93 = *(v0 + 168);

        sub_1B429FA38();

        if ((*(v92 + 88))(v91, v93) == *MEMORY[0x1E69E93E8])
        {
          v94 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
          v94 = "";
        }

        v95 = *(v0 + 248);
        v103 = *(v0 + 256);
        v96 = *(v0 + 232);
        v97 = *(v0 + 240);
        v99 = *(v0 + 216);
        v98 = *(v0 + 224);
        v100 = swift_slowAlloc();
        *v100 = 0;
        v101 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v23, v104, v101, v50, v94, v100, 2u);
        MEMORY[0x1B8C74FA0](v100, -1, -1);

        (*(v98 + 8))(v96, v99);
        (*(v95 + 8))(v103, v97);
        goto LABEL_98;
      }

      __break(1u);
    }

    v86 = *(v0 + 248);
    v85 = *(v0 + 256);
    v88 = *(v0 + 232);
    v87 = *(v0 + 240);
    v89 = *(v0 + 216);
    v90 = *(v0 + 224);

    (*(v90 + 8))(v88, v89);
    (*(v86 + 8))(v85, v87);
LABEL_98:

    v68 = *(v0 + 8);

    return v68();
  }

  v5 = 0;
  v104 = v0 + 16;
  v102 = v0 + 48;
  *(v0 + 272) = v4;
  *(v0 + 280) = v4;
  *(v0 + 288) = v4 - 1;
  v6 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
  v7 = v4;
  while (1)
  {
    if (v5 && v4 < v7)
    {
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v8 = *(*(v0 + 104) + 8 * v7 + 24);
    *(v0 + 296) = v8;
    sub_1B429FF98();
    if (!*(*(v0 + 112) + 16) || (v9 = sub_1B41163E0(v8), (v10 & 1) == 0))
    {

      goto LABEL_98;
    }

    v11 = *(*(*(v0 + 112) + 56) + 8 * v9);
    *(v0 + 304) = v11;
    v12 = v11 >> 62 ? sub_1B42A0518() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 312) = v12;

    if (v12)
    {
      break;
    }

    v23 = *v3;
LABEL_58:
    *(v0 + 352) = v23;

    if (v23 >> 62)
    {
      if (sub_1B42A0518())
      {
LABEL_101:
        v69 = *(v0 + 120);
        v70 = *(v0 + 136) & 0xC000000000000001;
        v2 = v69[4];
        v50 = v69[5];
        __swift_project_boxed_opaque_existential_0(v69 + 1, v2);
        result = *(v0 + 296);
        if (!v70)
        {
          if (result < 0)
          {
            __break(1u);
          }

          else
          {
            v71 = *(v0 + 136);
            if (result < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v72 = *(v71 + 8 * result + 32);
LABEL_105:
              v73 = v72;
              *(v0 + 48) = 0;
              *(v0 + 56) = 1;
              result = MEMORY[0x1B8C72130]();
              if (*(v0 + 56))
              {
                goto LABEL_140;
              }

              v74 = *(v0 + 120);
              v75 = *(v0 + 48);

              v76 = *v74;
              v105 = (*(v50 + 8) + **(v50 + 8));
              v77 = swift_task_alloc();
              *(v0 + 384) = v77;
              *v77 = v0;
              v77[1] = sub_1B4114CC0;
              v63 = *(v0 + 144);
              v64 = *(v0 + 128);
              v65 = v23;
              v66.n128_u64[0] = v75;
              v67 = v76;
              goto LABEL_94;
            }
          }

          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

LABEL_132:
        v72 = MEMORY[0x1B8C72CD0](result, *(v0 + 136));
        goto LABEL_105;
      }
    }

    else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_101;
    }

    v23 = *v2;
    v45 = *v2 >> 62;
    if (v45)
    {
      if (!sub_1B42A0518())
      {
        goto LABEL_74;
      }

LABEL_62:
      v47 = *(v0 + 200);
      v46 = *(v0 + 208);
      v48 = *(v0 + 192);
      v49 = *(v0 + 288) == 0;
      *(v0 + 64) = v23;
      *(v0 + 72) = v49;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050, &qword_1B42AD4C0);
      sub_1B429FF18();
      (*(v47 + 8))(v46, v48);
      if (!v45)
      {
        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          sub_1B41192EC(0, *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10), sub_1B40FB7FC, sub_1B41191E0);
          goto LABEL_74;
        }

        v51 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_73:
        v52 = sub_1B40DDE04(0, v51);

        *v2 = v52;
        goto LABEL_74;
      }

      if (v23 < 0)
      {
        v50 = v23;
      }

      else
      {
        v50 = v23 & 0xFFFFFFFFFFFFFF8;
      }

      v51 = sub_1B42A0518();
      result = sub_1B42A0518();
      if ((result & 0x8000000000000000) == 0)
      {
        result = sub_1B42A0518();
        if (v51 < 0 || result < v51)
        {
          goto LABEL_131;
        }

        goto LABEL_73;
      }

      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_62;
    }

LABEL_74:
    v53 = *(v0 + 272);
    v7 = v53 - 1;
    if (v53 == 1)
    {
      goto LABEL_114;
    }

    v54 = *(v0 + 288);
    v55 = *(v0 + 264);
    if (v53 == v55)
    {
      v4 = *(v0 + 264);
    }

    else
    {
      v4 = *(v0 + 280);
    }

    *(v0 + 272) = v7;
    *(v0 + 280) = v4;
    v5 = v7 != v55;
    if (v7 == v55)
    {
      v54 = v55;
    }

    *(v0 + 288) = v54 - 1;
    if (__OFSUB__(v54, 1))
    {
      goto LABEL_113;
    }
  }

  v13 = 0;
  while (1)
  {
    v14 = *(v0 + 304);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1B8C72CD0](v13);
    }

    else
    {
      if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_108;
      }

      v15 = *(v14 + 8 * v13 + 32);
    }

    *(v0 + 320) = v15;
    *(v0 + 328) = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    if (*(v0 + 288))
    {
      v16 = 0;
    }

    else
    {
      v17 = *(v0 + 304);
      if (v17 >> 62)
      {
        v19 = v15;
        v18 = sub_1B42A0518();
        v15 = v19;
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = __OFSUB__(v18, 1);
      v21 = v18 - 1;
      if (v20)
      {
        goto LABEL_109;
      }

      v16 = v13 == v21;
    }

    *(v0 + 25) = v16;
    v22 = v15;
    MEMORY[0x1B8C72680]();
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B429FE08();
    }

    sub_1B429FE38();
    v23 = *(v0 + 88);
    *(v0 + 336) = v23;
    v24 = v23 >> 62 ? sub_1B42A0518() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = *(v0 + 120);
    v26 = *v25;
    *(v0 + 344) = *v25;
    if (v24 == [v26 v6[480]])
    {
      break;
    }

    v27 = *v2;
    v28 = *v2 >> 62;
    if (v28)
    {
      v29 = sub_1B42A0518();
    }

    else
    {
      v29 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v29 == [*(v0 + 344) maxConcurrentBatches])
    {
      v30 = v2;
      v2 = v6;
      v31 = *(v0 + 25);
      v32 = *(v0 + 200);
      v33 = *(v0 + 208);
      v34 = *(v0 + 192);
      *(v0 + 16) = v27;
      *(v0 + 24) = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885050, &qword_1B42AD4C0);
      sub_1B429FF18();
      (*(v32 + 8))(v33, v34);
      v35 = v27 & 0xFFFFFFFFFFFFFF8;
      if (v28)
      {
        v38 = sub_1B42A0518();
        if (sub_1B42A0518() < 0)
        {
          goto LABEL_110;
        }

        v39 = sub_1B42A0518();
        if (v38 < 0 || v39 < v38)
        {
          goto LABEL_111;
        }

        v40 = *(v0 + 320);
        if (v38)
        {
          goto LABEL_46;
        }

LABEL_50:

        v41 = MEMORY[0x1E69E7CC0];
LABEL_51:
        v6 = v2;

        v2 = v30;
        *v30 = v41;
        v3 = (v0 + 88);
        goto LABEL_12;
      }

      if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
      {
        v40 = *(v0 + 320);
        if (!(*((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
        {
          goto LABEL_50;
        }

LABEL_46:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90, &qword_1B42AC360);
        v41 = swift_allocObject();
        v42 = _swift_stdlib_malloc_size(v41);

        v43 = v42 - 32;
        if (v42 < 32)
        {
          v43 = v42 - 25;
        }

        v41[2] = 0;
        v41[3] = (2 * (v43 >> 3)) | 1;
        goto LABEL_51;
      }

      v36 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
      {
        v27 = sub_1B42A0438();
        v35 = v27 & 0xFFFFFFFFFFFFFF8;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884950, &qword_1B42AC368);
      swift_arrayDestroy();
      if (v36)
      {
        if (v27 >> 62)
        {
          result = sub_1B42A0518();
          if (__OFSUB__(result, v36))
          {
            goto LABEL_136;
          }

          memmove((v35 + 32), (v35 + 8 * v36 + 32), 8 * (result - v36));
          v37 = sub_1B42A0518();
        }

        else
        {
          v37 = *(v35 + 16);
          memmove((v35 + 32), (v35 + 8 * v36 + 32), 8 * (v37 - v36));
        }

        if (__OFADD__(v37, -v36))
        {
          goto LABEL_113;
        }

        *(v35 + 16) = v37 - v36;
      }

      *(v0 + 80) = v27;
      v6 = v2;
      v2 = v30;
      v3 = (v0 + 88);
    }

    else
    {
    }

LABEL_12:
    v13 = *(v0 + 328);
    if (v13 == *(v0 + 312))
    {
      goto LABEL_58;
    }
  }

  v56 = *(v0 + 120);
  v57 = *(v0 + 136) & 0xC000000000000001;
  v2 = v56[4];
  v50 = v56[5];
  __swift_project_boxed_opaque_existential_0(v56 + 1, v2);
  result = *(v0 + 296);
  if (v57)
  {
    v59 = MEMORY[0x1B8C72CD0](result, *(v0 + 136));
LABEL_92:
    v60 = v59;
    *(v0 + 32) = 0;
    *(v0 + 40) = 1;
    result = MEMORY[0x1B8C72130]();
    if (*(v0 + 40))
    {
      goto LABEL_135;
    }

    v61 = *(v0 + 32);

    v105 = (*(v50 + 8) + **(v50 + 8));
    v62 = swift_task_alloc();
    *(v0 + 360) = v62;
    *v62 = v0;
    v62[1] = sub_1B4113C9C;
    v63 = *(v0 + 144);
    v64 = *(v0 + 128);
    v65 = v23;
    v66.n128_u64[0] = v61;
    v67 = v26;
LABEL_94:

    return v105(v65, v64, v67, v63, v2, v50, v66);
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v58 = *(v0 + 136);
    if (result < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v59 = *(v58 + 8 * result + 32);
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_122:
  if (HIDWORD(v50))
  {
    goto LABEL_137;
  }

  if ((v50 & 0xFFFFF800) != 0xD800)
  {
    if (v50 >> 16 <= 0x10)
    {
      v50 = (v2 + 2);
      goto LABEL_126;
    }

LABEL_138:
    __break(1u);
  }

  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}