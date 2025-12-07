AVAudioPCMBuffer __swiftcall convert(int16AudioBytes:)(Swift::OpaquePointer int16AudioBytes)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0x40CF400000000000;
  v13 = xmmword_27237C4D0;
  v14 = xmmword_27237C4E0;
  v2 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithStreamDescription_];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = *(int16AudioBytes._rawValue + 2);
  if (HIDWORD(v3))
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v4 = v2;
  v5 = objc_allocWithZone(MEMORY[0x277CB83C8]);
  v6 = [v5 initWithPCMFormat:v4 frameCapacity:v3, v12, v13, v14, v15];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 int16ChannelData];
  if (v8)
  {
    v8 = *v8;
  }

  memcpy(v8, int16AudioBytes._rawValue + 32, 2 * v3);
  [v7 setFrameLength_];

  v10 = v7;
  result.super._impl = v9;
  result.super.super.isa = v10;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(AVAudioPCMBuffer buffer, Swift::OpaquePointer *floatBuffer)
{
  impl = buffer.super._impl;
  isa = buffer.super.super.isa;
  v4 = [(objc_class *)buffer.super.super.isa int16ChannelData];
  if (v4)
  {
    v5 = v4;
    v6 = [(objc_class *)isa frameLength];
    v7 = *v5;
    v8 = *impl;
    if (*(*impl + 16) != v6)
    {

      if (v6)
      {
        v8 = sub_272377B5C();
        *(v8 + 16) = v6;
        bzero((v8 + 32), 4 * v6);
      }

      else
      {
        v8 = MEMORY[0x277D84F90];
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2721FF8B4(0, *(v8 + 16), 0, v8);
    }

    *impl = v8;
    vDSP_vflt16(v7, 1, (v8 + 32), 1, v6);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v9 = 0xD000000000000012;
    v9[1] = 0x800000027238AC60;
    swift_willThrow();
  }
}

uint64_t sub_272254910(void *a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v4 setNumberStyle_];
  [v4 setMaximumFractionDigits_];
  [v4 setMinimumFractionDigits_];
  v5 = sub_2723777FC();
  [v4 setDecimalSeparator_];

  sub_27220300C(a1, a1[3]);
  sub_2723787BC();
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v7 = [v4 stringFromNumber_];

  if (v7)
  {
    sub_27237782C();
  }

  sub_2722581D4(v9, v9[3]);
  sub_27237866C();

  return sub_2722039C8(v9);
}

uint64_t sub_272254AC8(void *a1, float a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v4 setNumberStyle_];
  [v4 setMaximumFractionDigits_];
  [v4 setMinimumFractionDigits_];
  v5 = sub_2723777FC();
  [v4 setDecimalSeparator_];

  sub_27220300C(a1, a1[3]);
  sub_2723787BC();
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v7 = a2;
  v8 = [v6 initWithFloat_];
  v9 = [v4 stringFromNumber_];

  if (v9)
  {
    sub_27237782C();
  }

  sub_2722581D4(v11, v11[3]);
  sub_27237866C();

  return sub_2722039C8(v11);
}

uint64_t sub_272254C8C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_272254CBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void sub_272254CDC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_272254CEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_27237874C();
  sub_27237790C();
  sub_27237876C();
  if (v2 != 1)
  {
    MEMORY[0x2743C58B0](v1);
  }

  return sub_27237878C();
}

uint64_t sub_272254D78(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_27237790C();
  if (v3 == 1)
  {
    return sub_27237876C();
  }

  sub_27237876C();
  return MEMORY[0x2743C58B0](v2);
}

uint64_t sub_272254DDC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_27237874C();
  sub_27237790C();
  sub_27237876C();
  if (v3 != 1)
  {
    MEMORY[0x2743C58B0](v2);
  }

  return sub_27237878C();
}

void *sub_272254E64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_272254E7C(uint64_t a1)
{
  v2 = sub_27223879C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272254EB8(uint64_t a1)
{
  v2 = sub_27223879C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_272254EF4(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_27237865C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_272254F78@<X0>(uint64_t a4@<X3>, void *a5@<X8>)
{
  v16[1] = a4;
  v17 = sub_272376D5C();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_2723777FC();
  v11 = [v9 isReadableFileAtPath_];

  if (v11)
  {
    sub_272376CAC();
    v12 = sub_272376D6C();
    v14 = v13;
    sub_272376ABC();
    swift_allocObject();
    sub_272376AAC();
    sub_272376A9C();
    (*(v6 + 8))(v8, v17);

    sub_2721F05C8(v12, v14);
    sub_272204304();
    sub_27237879C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a5 = 0x8000000000000000;
    sub_272204304();
    sub_27237879C();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_272255248()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_2722582E0;
  *(v2 + 24) = v0;
  v5[4] = sub_27225836C;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_27225537C;
  v5[3] = &unk_28817E5F8;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2722553A4()
{
  v1 = sub_27237728C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[2];
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2722583AC;
  *(v6 + 24) = v0;
  aBlock[4] = sub_272259128;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27225537C;
  aBlock[3] = &unk_28817E648;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v5, v7);
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v9 = *(*v0 + 96);
    if ((v9)(result) >= 2)
    {
      v10 = sub_2722C389C();
      (*(v2 + 16))(v4, v10, v1);

      v11 = sub_27237725C();
      v12 = sub_272377E8C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = v9();

        _os_log_impl(&dword_2721E4000, v11, v12, "!!!!! falling behind...LoopCount %ld", v13, 0xCu);
        MEMORY[0x2743C69C0](v13, -1, -1);
      }

      else
      {
      }

      (*(v2 + 8))(v4, v1);
    }
  }

  return result;
}

uint64_t sub_27225567C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2722556B4()
{
  v0 = swift_allocObject();
  sub_2722556EC();
  return v0;
}

uint64_t sub_2722556EC()
{
  v7[0] = sub_272377EDC();
  v1 = *(v7[0] - 8);
  MEMORY[0x28223BE20](v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_272377ECC();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2723776EC();
  MEMORY[0x28223BE20](v5 - 8);
  sub_27221982C(0, &qword_280881910, 0x277D85C78);
  sub_2723776CC();
  v7[1] = MEMORY[0x277D84F90];
  sub_272258224();
  sub_2721F065C(&qword_280881920, &qword_27237C500);
  sub_27225827C();
  sub_27237815C();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v7[0]);
  *(v0 + 16) = sub_272377F0C();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_272255908(uint64_t a1)
{
  result = swift_allocObject();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v3 = result;
      v4 = sub_272377B5C();
      *(v4 + 16) = a1;
      bzero((v4 + 32), 4 * a1);
      result = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    *(result + 16) = v4;
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_272255988(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 160))(a1);
  v5 = v2[3];
  v6 = __OFADD__(v5, a2);
  v7 = v5 + a2;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v2[2] + 16);
    if (v8)
    {
      v2[3] = v7 % v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2722559F8(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(result + 16);
  if (__OFADD__(v2, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(*(v1 + 16) + 16) >= (v2 + v3))
  {
    v4 = v2 + v3;
  }

  else
  {
    v4 = *(*(v1 + 16) + 16);
  }

  v5 = v4 - v2;
  if (__OFSUB__(v4, v2))
  {
    goto LABEL_16;
  }

  if (v4 < v2 || (v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (v3 < v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;

  result = sub_27225884C(v7, v7 + 32, 0, (2 * v5) | 1, v2, v4);
  if (v3 > v5)
  {
    if ((v3 - v5) >= 0)
    {
      sub_27225884C(v6, v6 + 32, v4 - v2, (2 * v3) | 1, 0, v3 - v5);
      goto LABEL_12;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_12:
}

uint64_t sub_272255ADC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v2 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v2)
  {

    v5 = 0;
    v6 = result;
    goto LABEL_5;
  }

LABEL_11:
  sub_272241D34(v1, v1 + 32, v2, (2 * v3) | 1);
  v5 = *(v0 + 24);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v6 = v8;
  result = *(v0 + 16);
  v3 = *(result + 16);
  if (v3 < v5)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  if (v3 == v5)
  {
  }

  else
  {
    sub_272241D34(result, result + 32, 0, (2 * v5) | 1);
  }

  sub_272207944(v7);
  return v6;
}

uint64_t sub_272255B9C()
{

  return swift_deallocClassInstance();
}

void sub_272255BD4()
{
  v0 = sub_2723777FC();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (!v1)
  {
    v2 = [objc_opt_self() processInfo];
    v3 = [v2 environment];

    v4 = sub_27237772C();
    if (*(v4 + 16) && (v5 = sub_27220038C(0xD000000000000013, 0x800000027238ACD0), (v6 & 1) != 0))
    {
      v7 = (*(v4 + 56) + 16 * v5);
      v8 = *v7;
      v9 = v7[1];

      v29 = 58;
      v30 = 0xE100000000000000;
      MEMORY[0x28223BE20](v10);
      v27[2] = &v29;
      v11 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272204258, v27, v8, v9, &v28);
      v12 = (v11 + 56);
      v28 = -*(v11 + 16);
      v13 = -1;
      while (1)
      {
        if (v28 + v13 == -1)
        {
LABEL_9:

          return;
        }

        if (++v13 >= *(v11 + 16))
        {
          break;
        }

        v14 = *(v12 - 3);
        v15 = *(v12 - 2);
        v17 = *(v12 - 1);
        v16 = *v12;
        v33 = 0;
        v34 = 0xE000000000000000;

        v18 = sub_27237791C();
        v19 = sub_27237806C();
        v20 = __OFADD__(v18, v19);
        v21 = v18 + v19;
        if (v20)
        {
          goto LABEL_14;
        }

        v12 += 4;
        MEMORY[0x2743C4A30](v21);
        v29 = v14;
        v30 = v15;
        v31 = v17;
        v32 = v16;
        sub_2722588D0();
        sub_27237795C();
        v29 = 0xD000000000000020;
        v30 = 0x800000027238AD40;
        sub_27237795C();

        v22 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
        v23 = sub_2723777FC();

        v24 = [v22 initWithPath_];

        if (v24)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    else
    {

      v25 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v26 = sub_2723777FC();
      [v25 initWithPath_];
    }
  }
}

uint64_t sub_272255F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for VAKeywordSpotter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_2723777FC();
  v7 = sub_2723777FC();
  v8 = [v5 pathForResource:v6 ofType:v7];

  if (v8)
  {
    v9 = sub_27237782C();
  }

  else
  {

    return 0;
  }

  return v9;
}

void sub_272256018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_272255BD4();
  if (v4)
  {
    v5 = v4;
    v6 = sub_2723777FC();
    v7 = sub_2723777FC();
    v8 = [v5 pathForResource:v6 ofType:v7];

    if (v8)
    {
      sub_27237782C();
    }
  }
}

void sub_2722560E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_272255F24(a1, a2, a3, a4);
  if (!v8)
  {
    sub_272256018(a1, a2, a3, a4);
  }
}

void static VABundleUtil.bundePathFallback(resource:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_272255F24(a1, a2, a3, a4);
  if (!v8)
  {
    sub_272256018(a1, a2, a3, a4);
  }
}

id VABundleUtil.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VABundleUtil.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VABundleUtil();
  return objc_msgSendSuper2(&v3, sel_init);
}

id VABundleUtil.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VABundleUtil();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_272256424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_30;
  }

  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 16);
  v4 = v1 * v3;
  if ((v1 * v3) >> 64 == (v1 * v3) >> 63)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      __M = *(*(a1 + 32) + 16);
      if (v4)
      {
        v5 = sub_272377B5C();
        *(v5 + 16) = v4;
        bzero((v5 + 32), 4 * v4);
      }

      else
      {
        v5 = MEMORY[0x277D84F90];
      }

      v6 = 0;
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v9 = *(v2 + 8 * v6);
        v10 = *(v9 + 16);
        v11 = *(v7 + 2);
        v12 = v11 + v10;
        if (__OFADD__(v11, v10))
        {
          goto LABEL_26;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v12 <= *(v7 + 3) >> 1)
        {
          if (*(v9 + 16))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v11 <= v12)
          {
            v14 = v11 + v10;
          }

          else
          {
            v14 = v11;
          }

          v7 = sub_2721FF8B4(isUniquelyReferenced_nonNull_native, v14, 1, v7);
          if (*(v9 + 16))
          {
LABEL_20:
            v15 = *(v7 + 2);
            if ((*(v7 + 3) >> 1) - v15 < v10)
            {
              goto LABEL_28;
            }

            memcpy(&v7[4 * v15 + 32], (v9 + 32), 4 * v10);

            if (v10)
            {
              v16 = *(v7 + 2);
              v17 = __OFADD__(v16, v10);
              v18 = v16 + v10;
              if (v17)
              {
                goto LABEL_29;
              }

              *(v7 + 2) = v18;
            }

            goto LABEL_9;
          }
        }

        if (v10)
        {
          goto LABEL_27;
        }

LABEL_9:
        ++v6;
        if (v8 == v1)
        {
          vDSP_mtrans(v7 + 8, 1, (v5 + 32), 1, __M, v1);

          return;
        }
      }
    }
  }

  else
  {
LABEL_31:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2722565E8(uint64_t result)
{
  if (!*(result + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v1 = *(result + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(*(v1 + 32) + 16);
    v4 = sub_272377B5C();
    *(v4 + 16) = v2;
    bzero((v4 + 32), 4 * v2);
    v5 = sub_272258594(v4, v3, &qword_280881858, &unk_27237C260);

    v6 = 0;
    while (!v3)
    {
LABEL_4:
      if (++v6 == v2)
      {
        return v5;
      }
    }

    v7 = 4;
    v8 = v3;
    while (v6 < *(v1 + 16))
    {
      v9 = *(v1 + 32 + 8 * v6);
      if ((v7 - 4) >= *(v9 + 16))
      {
        goto LABEL_20;
      }

      v10 = *(v9 + 8 * v7);
      if (!*(v10 + 16))
      {
        goto LABEL_21;
      }

      v11 = *(v10 + 32);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_272200344(v5);
        v5 = result;
      }

      if ((v7 - 4) >= v5[2])
      {
        goto LABEL_22;
      }

      v12 = v5[v7];
      result = swift_isUniquelyReferenced_nonNull_native();
      v5[v7] = v12;
      if ((result & 1) == 0)
      {
        result = sub_2722002AC(v12);
        v12 = result;
        v5[v7] = result;
      }

      if (v6 >= *(v12 + 16))
      {
        goto LABEL_23;
      }

      *(v12 + 4 * v6 + 32) = v11;
      ++v7;
      if (!--v8)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_27225677C(uint64_t a1, void **a2)
{
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v23 = *(a1 + 16);
    if (!v23)
    {
      break;
    }

    v5 = 0;
    v24 = a1 + 32;
    while (1)
    {
      v27 = v5;
      v2 = *(*(v24 + 8 * v5) + 16);

      if (v2)
      {
        break;
      }

LABEL_4:
      ++v5;

      if (v27 + 1 == v23)
      {
        return;
      }
    }

    v7 = 0;
    v25 = v6;
    v26 = v6 + 32;
    while (1)
    {
      if (v7 >= *(v6 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      a1 = *(v26 + 8 * v7);
      v8 = *(a1 + 16);

      if (v8)
      {
        break;
      }

LABEL_7:
      ++v7;

      v6 = v25;
      if (v7 == v2)
      {
        goto LABEL_4;
      }
    }

    v9 = 0;
    while (v9 < *(a1 + 16))
    {
      if (!v4)
      {
        goto LABEL_22;
      }

      v10 = v9 + 1;
      v11 = *(a1 + 32 + 4 * v9);
      sub_2721F065C(&qword_280882098, &qword_27237E8B0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_27237E4F0;
      *(v12 + 32) = sub_272377DBC();
      *(v12 + 40) = sub_272377DBC();
      *(v12 + 48) = sub_272377DBC();
      v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v14) = v11;
      v15 = [v13 initWithFloat_];
      sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
      v16 = sub_272377AEC();

      [v4 setObject:v15 forKeyedSubscript:v16];

      v9 = v10;
      if (v8 == v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_16:
    v17 = a2;
    sub_2721F065C(&qword_280882098, &qword_27237E8B0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_27237E4F0;
    v19 = *(a1 + 16);
    *(v18 + 32) = sub_272377DBC();
    if (!v19)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v20 = *(a1 + 32);
    *(v18 + 40) = sub_272377DBC();
    if (!*(v20 + 16))
    {
      goto LABEL_24;
    }

    *(v18 + 48) = sub_272377DBC();
    v21 = objc_allocWithZone(MEMORY[0x277CBFF40]);
    v22 = sub_272257FA4(v18, 65568);
    if (v2)
    {
      return;
    }

    v4 = v22;
    *v17 = v22;
  }
}

void sub_272256A38(uint64_t a1, void **a2)
{
  v4 = *a2;
  if (*a2)
  {
LABEL_2:
    v22 = *(a1 + 16);
    if (v22)
    {
      v5 = 0;
      v21 = a1 + 32;
      while (1)
      {
        v6 = *(v21 + 8 * v5);
        v7 = *(v6 + 16);

        if (v7)
        {
          break;
        }

LABEL_4:
        ++v5;

        if (v5 == v22)
        {
          return;
        }
      }

      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        if (!v4)
        {
          goto LABEL_16;
        }

        v9 = v8 + 1;
        v10 = *(v6 + 32 + 4 * v8);
        sub_2721F065C(&qword_280882098, &qword_27237E8B0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_27237E500;
        *(v11 + 32) = sub_272377DBC();
        *(v11 + 40) = sub_272377DBC();
        v12 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v13) = v10;
        v14 = [v12 initWithFloat_];
        sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
        v15 = sub_272377AEC();

        [v4 setObject:v14 forKeyedSubscript:v15];

        v8 = v9;
        if (v7 == v9)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    return;
  }

  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_27237E500;
  v18 = *(a1 + 16);
  *(v17 + 32) = sub_272377DBC();
  if (!v18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v17 + 40) = sub_272377DBC();
  v19 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v20 = sub_272257FA4(v17, 65568);
  if (!v2)
  {
    v4 = v20;
    *a2 = v20;
    goto LABEL_2;
  }
}

void sub_272256CA4(uint64_t a1, void (*a2)(uint64_t, id *))
{
  v3 = 0;
  a2(a1, &v3);
  if (v2)
  {
  }

  else if (!v3)
  {
    __break(1u);
  }
}

void sub_272256CF4(id a1, uint64_t *a2)
{
  v4 = &selRef_environment;
  if (*a2)
  {
    goto LABEL_16;
  }

  v5 = [a1 shape];
  sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
  v6 = sub_272377AFC();

  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_63;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
    goto LABEL_65;
  }

  for (i = *(v6 + 48); ; i = MEMORY[0x2743C5370](2, v6))
  {
    v5 = i;

    v8 = [v5 integerValue];

    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v8)
    {
      v6 = sub_272377B5C();
      *(v6 + 16) = v8;
      bzero((v6 + 32), 4 * v8);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v9 = [a1 v4[4]];
    v5 = sub_272377AFC();

    if ((v5 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_66:
    v10 = MEMORY[0x2743C5370](1, v5);
LABEL_12:
    v11 = v10;

    v12 = [v11 integerValue];

    v13 = sub_272258594(v6, v12, &qword_280881858, &unk_27237C260);

    v14 = [a1 v4[4]];
    v15 = sub_272377AFC();

    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x2743C5370](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v16 = *(v15 + 32);
    }

    v17 = v16;

    v18 = [v17 integerValue];

    v19 = sub_272258594(v13, v18, &qword_280881F28, &unk_272381E80);

    *a2 = v19;
LABEL_16:
    v20 = [a1 v4[4]];
    sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
    v6 = sub_272377AFC();

    if ((v6 & 0xC000000000000001) != 0)
    {
LABEL_59:
      v21 = MEMORY[0x2743C5370](0, v6);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v21 = *(v6 + 32);
    }

    v22 = v21;

    v6 = [v22 integerValue];

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (!v6)
    {
      return;
    }

    v23 = 0;
    for (j = [a1 v4[4]]; ; j = objc_msgSend(a1, v4[4], v42))
    {
      v25 = j;
      v6 = sub_272377AFC();

      if ((v6 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x2743C5370](1, v6);
      }

      else
      {
        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_58;
        }

        v26 = *(v6 + 40);
      }

      v27 = v26;

      v6 = [v27 integerValue];

      if ((v6 & 0x8000000000000000) != 0)
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if (v6)
      {
        break;
      }

LABEL_22:
      if (++v23 == v42)
      {
        return;
      }
    }

    v28 = 0;
    v43 = v6;
    while (1)
    {
      v29 = [a1 v4[4]];
      v6 = sub_272377AFC();

      if ((v6 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x2743C5370](2, v6);
      }

      else
      {
        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
          goto LABEL_56;
        }

        v30 = *(v6 + 48);
      }

      v31 = v30;

      v32 = [v31 integerValue];

      if ((v32 & 0x8000000000000000) != 0)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (v32)
      {
        break;
      }

LABEL_30:
      ++v28;
      v4 = &selRef_environment;
      if (v28 == v43)
      {
        goto LABEL_22;
      }
    }

    v6 = 0;
    while (1)
    {
      sub_2721F065C(&qword_280882098, &qword_27237E8B0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_27237E4F0;
      *(v33 + 32) = sub_272377DBC();
      *(v33 + 40) = sub_272377DBC();
      *(v33 + 48) = sub_272377DBC();
      v34 = sub_272377AEC();
      v4 = [a1 objectForKeyedSubscript_];

      [(SEL *)v4 floatValue];
      v36 = v35;

      if (!*a2)
      {
        break;
      }

      v37 = *a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_272258428(v37);
      }

      if (v23 >= v37[2])
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v4 = (v37 + 4);
      v38 = v37[v23 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37[v23 + 4] = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_272200344(v38);
        v4[v23] = v38;
      }

      if (v28 >= v38[2])
      {
        goto LABEL_53;
      }

      v4 = (v38 + 4);
      v40 = v38[v28 + 4];
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v4[v28] = v40;
      if ((v41 & 1) == 0)
      {
        v40 = sub_2722002AC(v40);
        v4[v28] = v40;
      }

      if (v6 >= *(v40 + 2))
      {
        goto LABEL_54;
      }

      *&v40[4 * v6 + 32] = v36;
      *a2 = v37;
      if (v32 == ++v6)
      {
        goto LABEL_30;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v10 = *(v5 + 40);
    goto LABEL_12;
  }

  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_27225730C(void *a1)
{
  v2 = 0;
  sub_272256CF4(a1, &v2);
  result = v2;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_272257340()
{
  v1 = [v0 strides];
  sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
  v2 = sub_272377AFC();

  v3 = [v0 strides];
  v4 = sub_272377AFC();

  if (v4 >> 62)
  {
    v5 = sub_2723783AC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v7 = MEMORY[0x2743C5370](result, v2);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v2 + 8 * result + 32);
LABEL_8:
    v8 = v7;

    v9 = sub_272377FAC();
    v10 = sub_272377FBC();

    return v10 & 1;
  }

  __break(1u);
  return result;
}

void *sub_272257490()
{
  v1 = v0;
  v20 = MEMORY[0x277D84F90];
  v2 = [v0 shape];
  sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
  v3 = sub_272377AFC();

  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  while (v4)
  {
    v5 = -v4;
    v6 = 1;
    v7 = 1;
    while (1)
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      MEMORY[0x2743C4C30]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_272377B2C();
      }

      sub_272377B7C();
      v8 = v20;
      v9 = [v1 shape];
      v10 = sub_272377AFC();

      v11 = [v1 shape];
      v12 = sub_272377AFC();

      v13 = v12 >> 62 ? sub_2723783AC() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v14 = v13 - v6;
      if (__OFSUB__(v13, v6))
      {
        break;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2743C5370](v14, v10);
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (v14 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v15 = *(v10 + 8 * v14 + 32);
      }

      v16 = v15;

      v17 = [v16 integerValue];

      if ((v7 * v17) >> 64 != (v7 * v17) >> 63)
      {
        goto LABEL_23;
      }

      ++v6;
      v7 *= v17;
      if (v5 + v6 == 1)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v4 = sub_2723783AC();

    if (v4 < 0)
    {
      __break(1u);
      return result;
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_20:
  v18 = sub_2722580A0(v8);

  return v18;
}

void sub_272257728(uint64_t *a1)
{
  v3 = v1;
  v4 = &selRef_environment;
  if (*a1)
  {
    goto LABEL_9;
  }

  v5 = [v1 shape];
  sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
  v6 = sub_272377AFC();

  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_72;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    for (i = *(v6 + 40); ; i = MEMORY[0x2743C5370](1, v6))
    {
      v8 = i;

      v9 = [v8 integerValue];

      v10 = sub_272258594(MEMORY[0x277D84F90], v9, &qword_280881858, &unk_27237C260);
      v11 = [v3 v4[4]];
      v12 = sub_272377AFC();

      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2743C5370](0, v12);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v13 = *(v12 + 32);
      }

      v14 = v13;

      v15 = [v14 integerValue];

      v16 = sub_272258594(v10, v15, &qword_280881F28, &unk_272381E80);

      *a1 = v16;
LABEL_9:
      if ((sub_272257340() & 1) != 0 && [v3 dataType] == 65568)
      {
        v17 = v3;
      }

      else
      {
        v18 = [v3 v4[4]];
        sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
        v19 = sub_272377AFC();

        v20 = objc_allocWithZone(MEMORY[0x277CBFF40]);
        v21 = sub_272257FA4(v19, 65568);
        if (v46)
        {
          return;
        }

        v17 = v21;
        v46 = 0;
        [v3 transferToMultiArray_];
      }

      v49 = [v17 dataPointer];
      v22 = &selRef_environment;
      v23 = [v17 strides];
      sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
      v24 = sub_272377AFC();

      if ((v24 & 0xC000000000000001) == 0)
      {
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v25 = *(v24 + 32);
          goto LABEL_17;
        }

        __break(1u);
LABEL_68:
        v30 = MEMORY[0x2743C5370](0, v24);
        goto LABEL_23;
      }

      while (1)
      {
        v25 = MEMORY[0x2743C5370](0, v24);
LABEL_17:
        v26 = v25;

        v47 = [v26 integerValue];

        v6 = [v17 *(v22 + 48)];
        v27 = sub_272377AFC();

        v45 = v17;
        if ((v27 & 0xC000000000000001) == 0)
        {
          break;
        }

        v28 = MEMORY[0x2743C5370](1, v27);
LABEL_20:
        v29 = v28;

        v2 = [v29 integerValue];

        v6 = [v3 v4[4]];
        v24 = sub_272377AFC();

        if ((v24 & 0xC000000000000001) != 0)
        {
          goto LABEL_68;
        }

        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v30 = *(v24 + 32);
LABEL_23:
        v6 = v30;

        v17 = [v6 integerValue];

        if (v17 < 0)
        {
          goto LABEL_70;
        }

        if (!v17)
        {
LABEL_55:

          return;
        }

        v22 = 0;
        v48 = v17;
        while (1)
        {
          v31 = [v3 v4[4]];
          v24 = sub_272377AFC();

          if ((v24 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x2743C5370](1, v24);
          }

          else
          {
            if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
            {
              goto LABEL_63;
            }

            v32 = *(v24 + 40);
          }

          v33 = v32;

          v34 = [v33 integerValue];

          if ((v34 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v34)
          {
            v50 = v22 * v47;
            if ((v22 * v47) >> 64 != (v22 * v47) >> 63)
            {
              goto LABEL_64;
            }

            v17 = 0;
            while (1)
            {
              v35 = v17 * v2;
              if ((v17 * v2) >> 64 != (v17 * v2) >> 63)
              {
                break;
              }

              v36 = v50 + v35;
              if (__OFADD__(v50, v35))
              {
                goto LABEL_58;
              }

              v37 = [v3 v4[4]];
              v24 = sub_272377AFC();

              if ((v24 & 0xC000000000000001) != 0)
              {
                v38 = MEMORY[0x2743C5370](2, v24);
              }

              else
              {
                if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
                {
                  goto LABEL_59;
                }

                v38 = *(v24 + 48);
              }

              v39 = v38;
              v4 = v3;

              v40 = [v39 integerValue];

              if (v40)
              {
                sub_2721F065C(&qword_280881848, &unk_27237C250);
                v3 = swift_allocObject();
                v41 = j__malloc_size(v3);
                v42 = v41 - 32;
                if (v41 < 32)
                {
                  v42 = v41 - 29;
                }

                v3[2] = v40;
                v3[3] = 2 * (v42 >> 2);
                memcpy(v3 + 4, &v49[4 * v36], 4 * v40);
              }

              else
              {
                v3 = MEMORY[0x277D84F90];
              }

              v24 = *a1;
              if (!*a1)
              {
                goto LABEL_76;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v24 = sub_272258428(v24);
              }

              if (v22 >= *(v24 + 16))
              {
                goto LABEL_60;
              }

              v43 = *(v24 + 32 + 8 * v22);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v24 + 32 + 8 * v22) = v43;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v43 = sub_272200344(v43);
                *(v24 + 32 + 8 * v22) = v43;
              }

              if (v17 >= v43[2])
              {
                goto LABEL_61;
              }

              v43[v17 + 4] = v3;

              *a1 = v24;
              ++v17;
              v3 = v4;
              v4 = &selRef_environment;
              if (v34 == v17)
              {
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            break;
          }

LABEL_26:
          ++v22;
          v17 = v48;
          if (v22 == v48)
          {
            goto LABEL_55;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
      {
        break;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      ;
    }

    v28 = *(v27 + 40);
    goto LABEL_20;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

void sub_272257E08(uint64_t *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = [v1 shape];
  if (!v3)
  {
    sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
    sub_272377AFC();
    v3 = sub_272377AEC();
  }

  sub_272257490();
  v4 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
  v5 = sub_272377AEC();

  v9[0] = 0;
  v6 = [v4 initWithDataPointer:v2 + 32 shape:v3 dataType:65568 strides:v5 deallocator:0 error:v9];

  if (v6)
  {
    v7 = v9[0];
    [v6 transferToMultiArray_];
  }

  else
  {
    v8 = v9[0];
    sub_272376C6C();

    swift_willThrow();
  }
}

id sub_272257FA4(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_27221982C(0, &qword_280881E98, 0x277CCABB0);
  v4 = sub_272377AEC();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v5;
}

void *sub_2722580A0(unint64_t *a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_27225814C(v2, 0);

    v1 = sub_272258470(&v5, v3 + 4, v2, v1);

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_2723783AC();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *sub_27225814C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2722581D4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_272258224()
{
  result = qword_280881918;
  if (!qword_280881918)
  {
    sub_272377ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881918);
  }

  return result;
}

unint64_t sub_27225827C()
{
  result = qword_280881928;
  if (!qword_280881928)
  {
    sub_2721F214C(&qword_280881920, &qword_27237C500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881928);
  }

  return result;
}

uint64_t (*sub_2722582E0())(_BYTE *, void)
{
  result = (*(*v0 + 112))(v3);
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v2;
    return result(v3, 0);
  }

  return result;
}

uint64_t sub_272258394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*sub_2722583AC())(_BYTE *, void)
{
  result = (*(*v0 + 112))(v3);
  if (__OFSUB__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    --*v2;
    return result(v3, 0);
  }

  return result;
}

unint64_t *sub_272258470(unint64_t *result, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!(a4 >> 62))
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = v8;
    v8 = 0;
    goto LABEL_25;
  }

LABEL_23:
  result = sub_2723783AC();
  v8 = result;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v10 = v8;
    v8 = 0;
LABEL_25:
    *v7 = a4;
    v7[1] = v10;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    v10 = v8;
    while (v10)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2743C5370](v10, a4);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(a4 + 32 + 8 * v10);
      }

      *v6 = v12;
      if (a3 == v9)
      {
        v8 = a3;
        goto LABEL_25;
      }

      ++v6;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_272258594(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = result;
    sub_2721F065C(a3, a4);
    v6 = sub_272377B5C();
    v7 = v6;
    *(v6 + 16) = a2;
    *(v6 + 32) = v5;
    v8 = a2 - 1;
    if (v8)
    {
      v9 = (v6 + 40);
      do
      {
        *v9++ = v5;

        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

unint64_t sub_272258628(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = *v7;
  v11 = (v10 + 32 + 4 * result);
  if (!v9)
  {
    goto LABEL_13;
  }

  v12 = *(v10 + 16);
  v13 = __OFSUB__(v12, a2);
  v14 = v12 - a2;
  if (v13)
  {
    goto LABEL_22;
  }

  result = v11 + 4 * a3;
  v15 = (v10 + 32 + 4 * a2);
  if (result != v15 || result >= v15 + 4 * v14)
  {
    v17 = a3;
    v18 = a6;
    v19 = a5;
    v20 = a7;
    result = memmove(result, v15, 4 * v14);
    a7 = v20;
    a5 = v19;
    a6 = v18;
    a3 = v17;
  }

  v21 = *(v10 + 16);
  v13 = __OFADD__(v21, v9);
  v22 = v21 + v9;
  if (v13)
  {
    goto LABEL_23;
  }

  *(v10 + 16) = v22;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (__OFSUB__(a7 >> 1, a6))
  {
    goto LABEL_24;
  }

  if ((a7 >> 1) - a6 != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v23 = 4 * a3;

  return memcpy(v11, (a5 + 4 * a6), v23);
}

unint64_t sub_272258744(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *v6;
  v9 = *(*v6 + 2);
  if (v9 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFSUB__(v13, v11);
  v15 = v13 - v11;
  if (v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v16 > *(v8 + 3) >> 1)
  {
    if (v9 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v9;
    }

    v8 = sub_2721FF8B4(isUniquelyReferenced_nonNull_native, v20, 1, v8);
    *v6 = v8;
  }

  result = sub_272258628(v10, a2, v13, a3, a4, a5, a6);
  *v6 = v8;
  return result;
}

uint64_t sub_27225884C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(*v6 + 16);
  if (v7 < a5 || v7 < a6)
  {
    goto LABEL_14;
  }

  if (a6 < 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (*v6 + 4 * a5 + 32 != a2 + 4 * a3)
  {
    return sub_272258744(a5, a6, result, a2, a3, a4);
  }

  if ((a4 >> 1) < a3)
  {
    goto LABEL_16;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    return sub_272258744(a5, a6, result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_2722588D0()
{
  result = qword_280882090;
  if (!qword_280882090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882090);
  }

  return result;
}

uint64_t sub_272258924(uint64_t a1, uint64_t a2)
{
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  v10 = sub_2723777FC();
  v11 = [v9 fileExistsAtPath_];

  if (!v11)
  {
    v48 = v6;
    v49 = v2;
    v50 = v5;
    v17 = sub_2723777FC();
    v18 = [v17 pathExtension];

    v19 = sub_27237782C();
    v21 = v20;

    v22 = sub_2723777FC();
    v23 = [v22 stringByDeletingPathExtension];

    v24 = sub_27237782C();
    v26 = v25;

    v27 = sub_272255F24(v24, v26, v19, v21);
    if (v28)
    {
      v16 = v27;
      v29 = v28;
    }

    else
    {
      sub_272256018(v24, v26, v19, v21);
      v16 = v30;
      v29 = v31;

      if (!v29)
      {
        v51 = 0;
        v52 = 0xE000000000000000;
        sub_27237820C();
        MEMORY[0x2743C4AD0](0x2068637573206F4ELL, 0xEF203A6C65646F6DLL);
        MEMORY[0x2743C4AD0](a1, a2);
        MEMORY[0x2743C4AD0](0xD00000000000003BLL, 0x800000027238ADF0);
        goto LABEL_11;
      }
    }

    v32 = [v8 defaultManager];
    v33 = sub_2723777FC();
    v34 = [v32 isReadableFileAtPath_];

    v35 = v50;
    if (v34)
    {
      return v16;
    }

    v36 = sub_2722C389C();
    v37 = v48;
    v38 = v53;
    (*(v48 + 16))(v53, v36, v35);

    v39 = sub_27237725C();
    v40 = sub_272377E8C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_2721FFD04(v16, v29, &v51);
      _os_log_impl(&dword_2721E4000, v39, v40, "File not readable in %s", v41, 0xCu);
      sub_2722039C8(v42);
      MEMORY[0x2743C69C0](v42, -1, -1);
      MEMORY[0x2743C69C0](v41, -1, -1);
    }

    (*(v37 + 8))(v38, v35);
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_27237820C();

    v51 = 0xD000000000000015;
    v52 = 0x800000027238AE30;
    MEMORY[0x2743C4AD0](v16, v29);

LABEL_11:
    v43 = v51;
    v44 = v52;
    sub_2722032B4();
    swift_allocError();
    *v45 = v43;
    v45[1] = v44;
    swift_willThrow();
    return v16;
  }

  v12 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v13 = sub_2723777FC();
  v14 = [v12 initWithString_];

  v15 = [v14 stringByStandardizingPath];
  v16 = sub_27237782C();

  return v16;
}

unint64_t sub_272258E2C()
{
  result = qword_2808820A0;
  if (!qword_2808820A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820A0);
  }

  return result;
}

unint64_t sub_272258E84()
{
  result = qword_2808820A8;
  if (!qword_2808820A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820A8);
  }

  return result;
}

unint64_t sub_272258EDC()
{
  result = qword_2808820B0;
  if (!qword_2808820B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820B0);
  }

  return result;
}

unint64_t sub_272258F34()
{
  result = qword_2808820B8;
  if (!qword_2808820B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820B8);
  }

  return result;
}

unint64_t sub_272258F98()
{
  result = qword_2808820C0;
  if (!qword_2808820C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820C0);
  }

  return result;
}

__n128 sub_272259024(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_272259038(uint64_t a1, int a2)
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

uint64_t sub_272259080(uint64_t result, int a2, int a3)
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

uint64_t sub_272259134()
{
  sub_2722032B4();
  swift_allocError();
  *v0 = 0xD00000000000001ELL;
  v0[1] = 0x800000027238AE50;
  return swift_willThrow();
}

void *sub_2722592C4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_272259308(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(char *a1)
{
  v2 = swift_allocObject();
  VAA2AAudioEncoderModelV3.init(computeUnits:)(a1);
  return v2;
}

uint64_t VAA2AAudioEncoderModelV3.init(computeUnits:)(char *a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  sub_2722595A4();
  sub_272377A8C();
  sub_272377A8C();
  if (v11 == v9 && v12 == v10)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_27237865C();

    if (v5)
    {
      v4 = 0;
    }

    else
    {
      sub_272377A8C();
      sub_272377A8C();
      if (v11 == v9 && v12 == v10)
      {
      }

      else
      {
        v6 = sub_27237865C();

        if ((v6 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v4 = 3;
    }
  }

  [v3 setComputeUnits_];
LABEL_12:
  type metadata accessor for aa_encoder_125141826();
  v7 = sub_272332068(v3);
  if (v2)
  {

    type metadata accessor for VAA2AAudioEncoderModelV3();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v7;
  }

  return v1;
}

unint64_t sub_2722595A4()
{
  result = qword_2808820C8;
  if (!qword_2808820C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820C8);
  }

  return result;
}

char *sub_27225961C(uint64_t a1)
{
  v3 = v1;
  v5 = ((*v1)[16])();
  if (!v5)
  {
    sub_2721F065C(&qword_280882098, &qword_27237E8B0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_27237E500;
    v22 = *(a1 + 16);
    result = sub_272377DBC();
    *(v21 + 32) = result;
    if (!v22)
    {
      goto LABEL_35;
    }

    *(v21 + 40) = sub_272377DBC();
    v23 = objc_allocWithZone(MEMORY[0x277CBFF40]);
    v24 = v21;
    v25 = v23;
    v5 = sub_272257FA4(v24, 65568);
    if (v2)
    {
      return v25;
    }
  }

  v6 = (*v3)[17];
  v7 = v5;
  v34 = v5;
  result = v6(v7);
  v9 = *(a1 + 16);
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_23:
    v36 = v11;
    v25 = v34;
    sub_272257E08(&v36);
    if (v2)
    {
    }

    else
    {

      type metadata accessor for aa_encoder_125141826Input();
      v26 = v34;
      sub_272276D68(v26);
      v27 = (*(*v3[2] + 136))();
      v28 = (*(*v27 + 88))(v27);

      v29 = ((*v3)[15])(v35);
      sub_272257728(v30);
      v31 = v29(v35, 0);
      v32 = ((*v3)[13])(v31);
      if (v32)
      {
        v25 = v32;
      }

      else
      {
        v25 = 0x800000027238AEC0;
        sub_2722032B4();
        swift_allocError();
        *v33 = 0xD00000000000001ELL;
        v33[1] = 0x800000027238AEC0;
        swift_willThrow();
      }
    }

    return v25;
  }

  v10 = (a1 + 32);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = *v10;
    v13 = *(*v10 + 16);
    v14 = *(v11 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v11 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_2721FF8B4(result, v16, 1, v11);
      v11 = result;
      if (*(v12 + 16))
      {
LABEL_15:
        v17 = *(v11 + 2);
        if ((*(v11 + 3) >> 1) - v17 < v13)
        {
          goto LABEL_33;
        }

        memcpy(&v11[4 * v17 + 32], (v12 + 32), 4 * v13);

        if (v13)
        {
          v18 = *(v11 + 2);
          v19 = __OFADD__(v18, v13);
          v20 = v18 + v13;
          if (v19)
          {
            goto LABEL_34;
          }

          *(v11 + 2) = v20;
        }

        goto LABEL_5;
      }
    }

    if (v13)
    {
      goto LABEL_32;
    }

LABEL_5:
    ++v10;
    if (!--v9)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t VAA2AAudioEncoderModelV3.deinit()
{

  return v0;
}

uint64_t VAA2AAudioEncoderModelV3.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t VAA2AAudioEncoderModelV3E1.__allocating_init(computeUnits:)(char *a1)
{
  v2 = swift_allocObject();
  VAA2AAudioEncoderModelV3E1.init(computeUnits:)(a1);
  return v2;
}

_OWORD *VAA2AAudioEncoderModelV3E1.init(computeUnits:)(char *a1)
{
  v3 = *a1;
  type metadata accessor for VAEspressoUtils();
  v11 = v3;
  v4 = sub_2722CBCD4();
  v6 = v5;
  v7 = sub_2721F7EE4();
  static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(0xD00000000000001DLL, 0x800000027238AEA0, &v11, v4, v6, v7 & 1, v12);

  if (v2)
  {
    type metadata accessor for VAA2AAudioEncoderModelV3E1();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v13[0];
    v1[3] = v12[2];
    v1[4] = v8;
    *(v1 + 73) = *(v13 + 9);
    v9 = v12[1];
    v1[1] = v12[0];
    v1[2] = v9;
  }

  return v1;
}

void *sub_272259C18(void *a1)
{
  sub_2722CB8B0();
  sub_2722CB8C8();
  result = sub_2722CB8D0(v5);
  if (!v2)
  {
    sub_2722CB5A8(a1);
    sub_2722CB8BC();
    sub_2722CB8C8();
    sub_2722CB8D0(v6);
    sub_2722CB800(*(v1 + 16));
    return sub_2722CB110();
  }

  return result;
}

void *VAA2AAudioEncoderModelV3E1.deinit()
{

  return v0;
}

uint64_t VAA2AAudioEncoderModelV3E1.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

_OWORD *VAA2AAudioEncoderModelV3E5.__allocating_init()()
{
  v1 = swift_allocObject();
  type metadata accessor for VAEspressoUtilsV2();
  v2 = sub_2721F7EE4();
  sub_2723195D0(0xD000000000000017, 0x800000027238AEE0, v2 & 1, v5);
  if (v0)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v3 = v5[1];
    v1[1] = v5[0];
    v1[2] = v3;
    v1[3] = v5[2];
  }

  return v1;
}

_OWORD *VAA2AAudioEncoderModelV3E5.init()()
{
  type metadata accessor for VAEspressoUtilsV2();
  v2 = sub_2721F7EE4();
  sub_2723195D0(0xD000000000000017, 0x800000027238AEE0, v2 & 1, v5);
  if (v1)
  {
    type metadata accessor for VAA2AAudioEncoderModelV3E5();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v3 = v5[1];
    v0[1] = v5[0];
    v0[2] = v3;
    v0[3] = v5[2];
  }

  return v0;
}

uint64_t sub_272259F80(uint64_t a1)
{
  result = sub_272319394(0x61775F7475706E69, 0xE900000000000076, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
  if (!v1)
  {
    (*(*result + 640))(a1);

    sub_272275B0C();
    v4 = sub_2723194B0(0x6F5F64335F636E65, 0xED00007475707475, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
    v5 = (*(*v4 + 744))(v4);

    return v5;
  }

  return result;
}

void *VAA2AAudioEncoderModelV3E5.deinit()
{

  return v0;
}

uint64_t VAA2AAudioEncoderModelV3E5.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_27225A3A0()
{
  sub_27221982C(0, &qword_280882130, 0x277D86200);
  result = OS_os_log.init(category:)(0x654E6C617275654ELL, 0xE900000000000074);
  qword_280893A48 = result;
  return result;
}

uint64_t sub_27225A430(float a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_27225A4A4(float a1)
{
  result = swift_beginAccess();
  *(v1 + 124) = a1;
  return result;
}

uint64_t sub_27225A570(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x78);
  v6 = v5();
  v7 = (*((*v4 & *v6) + 0x68))();
  v9 = v8;

  v10 = v34;
  sub_27225B344(v7, v9, 1, 0, v34);
  v11 = v35;
  if (v35)
  {
    goto LABEL_4;
  }

  if (qword_280887E20 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    OS_os_log.info(_:_:)("Failed to init neural net in normal flow, will init it on CPU directly", 70, 2, MEMORY[0x277D84F90]);
    v10 = v36;
    sub_27225B344(v7, v9, 0, 0, v36);
    v11 = v37;
    if (!v37)
    {
      break;
    }

LABEL_4:
    v28 = v5;
    v30 = *(v10 + 6);
    v12 = v10[2];
    v9 = *((*v4 & *a1) + 0x90);
    v5 = v4;
    v4 = ((*v4 & *a1) + 144);
    v29 = *v10;
    v13 = v9();
    v7 = (*((*v5 & *v13) + 0x100))();

    v14 = v9();
    v15 = (*((*v5 & *v14) + 0x118))();

    *(v2 + 104) = v7;
    *(v2 + 112) = v15;
    *(v2 + 16) = v29;
    *(v2 + 32) = v12;
    *(v2 + 40) = v30;
    if (!*(v11 + 16))
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v16 = sub_27220038C(0x4474757074754F3CLL, 0xEC0000003E617461);
    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }

    sub_2722041FC(*(v11 + 56) + 32 * v16, v32);
    sub_27221981C(v32, v33);
    v7 = MEMORY[0x277D84F70];
    swift_dynamicCast();
    *(v2 + 48) = v31;
    if (!*(v11 + 16))
    {
      goto LABEL_15;
    }

    v18 = sub_27220038C(0x61447475706E493CLL, 0xEB000000003E6174);
    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_2722041FC(*(v11 + 56) + 32 * v18, v32);
    sub_27221981C(v32, v33);
    swift_dynamicCast();
    *(v2 + 64) = v31;
    if (!*(v11 + 16))
    {
      goto LABEL_17;
    }

    v20 = sub_27220038C(0xD000000000000011, 0x800000027238B060);
    if (v21)
    {
      sub_2722041FC(*(v11 + 56) + 32 * v20, v32);

      sub_27221981C(v32, v33);
      sub_2721F065C(&qword_2808820D0, &qword_27237E9B0);
      v22 = swift_dynamicCast();
      *(v2 + 80) = v31;
      *(v2 + 96) = 54;
      v23 = (v28)(v22);
      v24 = (*((*v5 & *v23) + 0x80))();

      *(v2 + 120) = v24;
      v25 = v28();
      v26 = (*((*v5 & *v25) + 0x98))();

      *(v2 + 124) = v26;

      return v2;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  type metadata accessor for NeuralNet();
  OS_os_log.info(_:_:)("Failed to init neural net after two attempts", 44, 2, MEMORY[0x277D84F90]);

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_27225AA68()
{
  espresso_context_destroy();
  espresso_plan_destroy();

  return swift_deallocClassInstance();
}

uint64_t sub_27225AAB8(uint64_t *a1)
{
  v2 = v1;
  v3 = a1[2];
  if (v3 != v1[13])
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(a1[4] + 16) != v1[14])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_2722CB8B0();
  sub_2722CB8C8();
  sub_2722CB8D0(v10);
  sub_2722CB8BC();
  sub_2722CB8C8();
  v4 = sub_2722CB8D0(v11);
  MEMORY[0x28223BE20](v4);
  sub_2722CB3F0(sub_27225C6BC);
  sub_2722CB800(v1[2]);
  v5 = v1[11];
  if (v5 < 0)
  {
LABEL_12:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v5)
  {
    v6 = sub_272377B5C();
    *(v6 + 16) = v5;
    bzero((v6 + 32), 4 * v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = sub_27220392C(v6, v2[10]);

  MEMORY[0x28223BE20](v8);
  sub_2722CB3F0(sub_27225C768);
  return v7;
}

uint64_t sub_27225AD2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_280881A68, &unk_272382740);
  v33 = v4;
  result = sub_2723783DC();
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
        sub_27221981C(v24, v34);
      }

      else
      {
        sub_2722041FC(v24, v34);
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
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
      result = sub_27221981C(v34, (*(v7 + 56) + 32 * v15));
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

_OWORD *sub_27225AFE4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27220038C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_27225B1A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_27225AD2C(v16, a4 & 1);
    v11 = sub_27220038C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2723786BC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_2722039C8(v22);

    return sub_27221981C(a1, v22);
  }

  else
  {
    sub_27225B134(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_27225B134(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_27221981C(a4, (a5[7] + 32 * a1));
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

void *sub_27225B1A0()
{
  v1 = v0;
  sub_2721F065C(&qword_280881A68, &unk_272382740);
  v2 = *v0;
  v3 = sub_2723783CC();
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
        sub_2722041FC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_27221981C(v25, (*(v4 + 56) + v22));
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

void sub_27225B344(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  LODWORD(v5) = a4;
  v129[1] = *MEMORY[0x277D85DE8];
  v10 = sub_272376BCC();
  v116 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v115 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_27237788C();
  MEMORY[0x28223BE20](v12 - 8);
  v123 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &unk_280887000;
  if (a3)
  {
    context = espresso_create_context();
    v129[0] = context;
    if (context)
    {
      v16 = context;
      if (qword_280887E20 != -1)
      {
        goto LABEL_118;
      }

      goto LABEL_4;
    }

    if (qword_280887E20 != -1)
    {
      swift_once();
    }

    v17 = qword_280893A48;
    v20 = MEMORY[0x277D84F90];
    OS_os_log.info(_:_:)("Not able to utilized ANE; will use CPU instead", 46, 2, MEMORY[0x277D84F90]);
    v16 = espresso_create_context();
    v129[0] = v16;
    v19 = v20;
  }

  else
  {
    v16 = espresso_create_context();
    v129[0] = v16;
    if (qword_280887E20 != -1)
    {
LABEL_113:
      swift_once();
    }

    v17 = qword_280893A48;
    v19 = MEMORY[0x277D84F90];
  }

  OS_os_log.info(_:_:)("Will run acoustic model on CPU", 30, 2, v19);
  v120 = 0;
  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_14:
  if (v14[452] != -1)
  {
    swift_once();
  }

  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_27237AF80;
  *(v21 + 56) = sub_2721F065C(&qword_280882120, &qword_27237EA70);
  *(v21 + 64) = sub_27225CBBC(&qword_280882128, &qword_280882120, &qword_27237EA70);
  *(v21 + 32) = v129;
  OS_os_log.debug(_:_:)("Pointer of espresso_context_ref_t %@", 36, 2, v21);

  v113 = v129[0];
  plan = espresso_create_plan();
  if (!plan)
  {
LABEL_119:
    __break(1u);
  }

  v125 = plan;
LABEL_18:
  if (v14[452] != -1)
  {
LABEL_109:
    swift_once();
  }

  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_27237AF80;
  *(v23 + 56) = sub_2721F065C(&qword_280882110, &qword_272382F00);
  *(v23 + 64) = sub_27225CBBC(&qword_280882118, &qword_280882110, &qword_272382F00);
  *(v23 + 32) = &v125;
  OS_os_log.debug(_:_:)("Pointer of espresso_plan_ref_t", 30, 2, v23);

LABEL_20:
  v114 = v10;
  sub_27227BBF8();

  v24 = sub_2723779FC();

  if (v24)
  {
    sub_2722560E0(a1, a2, 7628142, 0xE300000000000000);
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    v122 = v27;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    sub_2722560E0(a1, a2, 0x666E6F632E74656ELL, 0xEA00000000006769);
    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0;
    }

    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0xE000000000000000;
    }

    if ((v5 & 1) == 0)
    {
      v34 = v28;
      goto LABEL_48;
    }

    if (v14[452] != -1)
    {
      swift_once();
    }

    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_27237AF80;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_27225CAF0();
    *(v33 + 32) = v122;
    *(v33 + 40) = v28;
    v34 = v28;

    OS_os_log.debug(_:_:)("Path for the model file is %@", 29, 2, v33);
  }

  else
  {
    v121 = v17;
    v119 = v5;
    v118 = a5;
    v35 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v36 = sub_2723777FC();
    v37 = [v35 initWithString_];

    v38 = [v37 stringByStandardizingPath];
    v39 = sub_27237782C();
    v41 = v40;

    *&v127 = v39;
    *(&v127 + 1) = v41;

    MEMORY[0x2743C4AD0](0x6E6F632E74656E2ELL, 0xEB00000000676966);
    v42 = *(&v127 + 1);
    v31 = v127;
    v43 = objc_opt_self();
    v44 = [v43 defaultManager];
    v32 = v42;
    v45 = sub_2723777FC();
    v46 = [v44 isReadableFileAtPath_];

    if ((v46 & 1) == 0)
    {
      if (qword_280887E20 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_27237AF80;
      *(v47 + 56) = MEMORY[0x277D837D0];
      *(v47 + 64) = sub_27225CAF0();
      *(v47 + 32) = v31;
      *(v47 + 40) = v32;
      OS_os_log.error(_:_:)("Network config not found in %@", 30, 2, v47);

      v31 = 0;
      v32 = 0xE000000000000000;
    }

    *&v127 = v39;
    *(&v127 + 1) = v41;

    MEMORY[0x2743C4AD0](1952804398, 0xE400000000000000);

    v48 = v127;

    v49 = [v43 defaultManager];
    v122 = v48;
    v50 = sub_2723777FC();

    v51 = [v49 isReadableFileAtPath_];

    if (v51)
    {
      a5 = v118;
      LODWORD(v5) = v119;
      v17 = v121;
      goto LABEL_48;
    }

    a5 = v118;
    LODWORD(v5) = v119;
    v17 = v121;
    if (qword_280887E20 != -1)
    {
      swift_once();
    }

    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_27237AF80;
    *(v52 + 56) = MEMORY[0x277D837D0];
    *(v52 + 64) = sub_27225CAF0();
    *(v52 + 32) = v122;
    *(v52 + 40) = v34;

    OS_os_log.error(_:_:)("Network not found in %@", 23, 2, v52);

    v122 = 0;
    v34 = 0xE000000000000000;
  }

LABEL_48:
  v53 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v53 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {
    goto LABEL_55;
  }

  v54 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v54 = v122 & 0xFFFFFFFFFFFFLL;
  }

  if (!v54)
  {
LABEL_55:

    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v10 = 0;
LABEL_103:
    *a5 = v106;
    a5[1] = v107;
    a5[2] = v108;
    a5[3] = v109;
    a5[4] = v10;
    return;
  }

  v117 = v34;
  sub_27237787C();
  v55 = sub_2723777EC();
  v121 = v17;
  v112 = v32;
  v111 = 0;
  v119 = v5;
  *&v127 = v55;
  *(&v127 + 1) = v56;
  v57 = v115;
  sub_272376BBC();
  v14 = sub_272203AC4();
  a1 = MEMORY[0x277D837D0];
  v17 = &v127;
  a2 = sub_2723780AC();
  (*(v116 + 8))(v57, v114);

  v123 = *(a2 + 16);
  if (v123)
  {
    v118 = a5;
    v16 = 0;
    v116 = 0x800000027238B060;
    a5 = (a2 + 40);
    v10 = MEMORY[0x277D84F98];
    LODWORD(v5) = 0;
    while (1)
    {
      if (v16 >= *(a2 + 16))
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v59 = *(a5 - 1);
      v58 = *a5;
      *&v127 = v59;
      *(&v127 + 1) = v58;
      strcpy(v126, "<OutputData>");
      BYTE13(v126[0]) = 0;
      HIWORD(v126[0]) = -5120;

      v17 = &v127;
      if (sub_27237813C())
      {
        break;
      }

      *&v127 = v59;
      *(&v127 + 1) = v58;
      strcpy(v126, "<InputData>");
      HIDWORD(v126[0]) = -352321536;
      if (sub_27237813C())
      {
        *&v127 = v59;
        *(&v127 + 1) = v58;
        *&v126[0] = 32;
        *(&v126[0] + 1) = 0xE100000000000000;
        v70 = sub_2723780BC();

        v128 = a1;
        if (v70[2] < 2uLL)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        v72 = v70[6];
        v71 = v70[7];

        *&v127 = v72;
        *(&v127 + 1) = v71;
        sub_27221981C(&v127, v126);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124[0] = v10;
        v17 = v10;
        v74 = sub_27220038C(0x61447475706E493CLL, 0xEB000000003E6174);
        v76 = v10[2];
        v77 = (v75 & 1) == 0;
        v78 = __OFADD__(v76, v77);
        v79 = v76 + v77;
        if (v78)
        {
          goto LABEL_111;
        }

        v80 = v75;
        if (v10[3] < v79)
        {
          sub_27225AD2C(v79, isUniquelyReferenced_nonNull_native);
          v17 = v124[0];
          v74 = sub_27220038C(0x61447475706E493CLL, 0xEB000000003E6174);
          if ((v80 & 1) != (v81 & 1))
          {
            goto LABEL_121;
          }

          goto LABEL_86;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_86:
          v10 = v124[0];
          if ((v80 & 1) == 0)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v17 = v124;
          v96 = v74;
          sub_27225B1A0();
          v74 = v96;
          v10 = v124[0];
          if ((v80 & 1) == 0)
          {
LABEL_90:
            v10[(v74 >> 6) + 8] |= 1 << v74;
            v97 = (v10[6] + 16 * v74);
            *v97 = 0x61447475706E493CLL;
            v97[1] = 0xEB000000003E6174;
            sub_27221981C(v126, (v10[7] + 32 * v74));
            v98 = v10[2];
            v78 = __OFADD__(v98, 1);
            v95 = v98 + 1;
            if (v78)
            {
              goto LABEL_117;
            }

            goto LABEL_91;
          }
        }

        v17 = (v10[7] + 32 * v74);
LABEL_88:
        sub_2722039C8(v17);
        sub_27221981C(v126, v17);
        goto LABEL_59;
      }

      *&v127 = v59;
      *(&v127 + 1) = v58;
      *&v126[0] = 0xD000000000000011;
      *(&v126[0] + 1) = v116;
      if (sub_27237813C())
      {
        *&v127 = v59;
        *(&v127 + 1) = v58;
        *&v126[0] = 32;
        *(&v126[0] + 1) = 0xE100000000000000;
        v82 = sub_2723780BC();

        if (v82[2] < 2uLL)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          swift_once();
LABEL_4:
          v17 = qword_280893A48;
          OS_os_log.info(_:_:)("Will run acoustic model on ANE", 30, 2, MEMORY[0x277D84F90]);
          v120 = 1;
          if ((v5 & 1) == 0)
          {
LABEL_5:
            v113 = v16;
            v18 = espresso_create_plan();
            if (!v18)
            {
              goto LABEL_119;
            }

            v125 = v18;
            if ((v5 & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_18;
          }

          goto LABEL_14;
        }

        v84 = v82[6];
        v83 = v82[7];

        *&v127 = v84;
        *(&v127 + 1) = v83;
        *&v126[0] = 44;
        *(&v126[0] + 1) = 0xE100000000000000;
        v85 = sub_2723780BC();

        v128 = sub_2721F065C(&qword_280882108, &unk_27237EA60);
        v86 = swift_allocObject();
        *&v127 = v86;
        if (v85[2] < 3uLL)
        {
          goto LABEL_115;
        }

        v87 = v86;
        v88 = v85[8];
        v5 = v85[9];

        *(v87 + 16) = sub_2721F58F8(v88, v5);
        *(v87 + 24) = v89 & 1;
        if (v85[2] < 4uLL)
        {
          goto LABEL_116;
        }

        v90 = v85[10];
        v5 = v85[11];

        *(v87 + 32) = sub_2721F58F8(v90, v5);
        *(v87 + 40) = v91 & 1;
        sub_27221981C(&v127, v126);
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v124[0] = v10;
        v17 = v124;
        sub_27225AFE4(v126, 0xD000000000000011, v116, v92);
        v10 = v124[0];
        LODWORD(v5) = 0;
      }

      else
      {
      }

LABEL_59:
      ++v16;
      a5 += 2;
      if (v123 == v16)
      {

        a5 = v118;
        goto LABEL_94;
      }
    }

    *&v126[0] = v59;
    *(&v126[0] + 1) = v58;
    v124[0] = 32;
    v124[1] = 0xE100000000000000;
    v17 = sub_2723780BC();

    v128 = a1;
    if (*(v17 + 2) < 2uLL)
    {
      goto LABEL_107;
    }

    v61 = *(v17 + 6);
    v60 = *(v17 + 7);

    *&v127 = v61;
    *(&v127 + 1) = v60;
    sub_27221981C(&v127, v126);
    v5 = swift_isUniquelyReferenced_nonNull_native();
    v124[0] = v10;
    v17 = v10;
    v63 = sub_27220038C(0x4474757074754F3CLL, 0xEC0000003E617461);
    v64 = v10[2];
    v65 = (v62 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      goto LABEL_108;
    }

    v67 = v62;
    if (v10[3] >= v66)
    {
      if ((v5 & 1) == 0)
      {
        v17 = v124;
        sub_27225B1A0();
      }
    }

    else
    {
      sub_27225AD2C(v66, v5);
      v17 = v124[0];
      v68 = sub_27220038C(0x4474757074754F3CLL, 0xEC0000003E617461);
      if ((v67 & 1) != (v69 & 1))
      {
        goto LABEL_121;
      }

      v63 = v68;
    }

    LODWORD(v5) = 0;
    v10 = v124[0];
    if ((v67 & 1) == 0)
    {
      *(v124[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
      v93 = v10[6] + 16 * v63;
      strcpy(v93, "<OutputData>");
      *(v93 + 13) = 0;
      *(v93 + 14) = -5120;
      sub_27221981C(v126, (v10[7] + 32 * v63));
      v94 = v10[2];
      v78 = __OFADD__(v94, 1);
      v95 = v94 + 1;
      if (v78)
      {
        goto LABEL_112;
      }

LABEL_91:
      v10[2] = v95;
      goto LABEL_59;
    }

    v17 = (*(v124[0] + 56) + 32 * v63);
    goto LABEL_88;
  }

  v10 = MEMORY[0x277D84F98];
LABEL_94:
  v99 = v119;
  v100 = v111;
  v106 = v125;
  v101 = v117;
  if (v120)
  {
    v102 = sub_2722CB6D0();
  }

  else
  {
    v102 = sub_2722CB59C();
  }

  v103 = sub_2722CB6DC(v122, v101, *v102, v106);
  if (!v100)
  {
    *&v127 = v103;
    DWORD2(v127) = v104;
    if (v99)
    {
      if (qword_280887E20 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_27237AF80;
      *(v105 + 56) = sub_2721F065C(&qword_2808820F8, &qword_27237EA58);
      *(v105 + 64) = sub_27225CBBC(&qword_280882100, &qword_2808820F8, &qword_27237EA58);
      *(v105 + 32) = &v127;
      OS_os_log.debug(_:_:)("Pointer of espresso_network_t %@", 32, 2, v105);
    }

    sub_2722CB7D4(v106);
    v107 = v113;
    if (v113)
    {

      v108 = v127;
      v109 = DWORD2(v127);
      goto LABEL_103;
    }

    __break(1u);
LABEL_121:
    sub_2723786BC();
    __break(1u);
  }

  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_27225C6BC(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 104);
  if (v3 < 0)
  {
    goto LABEL_19;
  }

  if (v3)
  {
    v4 = *(v2 + 112);
    if (v4 < 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = *(v1 + 24);
    while (!v4)
    {
LABEL_5:
      if (++v5 == v3)
      {
        return result;
      }
    }

    v7 = v5 * v4;
    if ((v5 * v4) >> 64 == (v5 * v4) >> 63)
    {
      if (v5 >= *(v6 + 16))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v8 = 0;
      v9 = *(v6 + 32 + 8 * v5);
      v10 = v9 + 32;
      v11 = *(v9 + 16);
      while (!__OFADD__(v7, v8))
      {
        if (v11 == v8)
        {
          goto LABEL_16;
        }

        *(result + 4 * (v7 + v8)) = *(v10 + 4 * v8);
        if (v4 == ++v8)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

void sub_27225C768(uint64_t a1)
{
  v4 = v1;
  v5 = *(v1 + 16);
  v6 = v5[10];
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if (v6)
  {
    v24 = v5[11];
    if (v24 < 0)
    {
      goto LABEL_44;
    }

    v3 = *(v4 + 24);
    v2 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v8 = 0;
      *v3 = v2;
      v23 = v6;
      while (1)
      {
        if (v8 >= v6)
        {
          goto LABEL_40;
        }

        if (__OFADD__(v8, 1))
        {
          goto LABEL_41;
        }

        v25 = v8 + 1;
        if (v24)
        {
          break;
        }

LABEL_6:
        ++v8;
        v6 = v23;
        if (v25 == v23)
        {
          return;
        }
      }

      v27 = v8 * v24;
      if ((v8 * v24) >> 64 == (v8 * v24) >> 63)
      {
        v2 = *v3;
        v9 = swift_isUniquelyReferenced_nonNull_native();
        *v3 = v2;
        if ((v9 & 1) == 0)
        {
          v2 = sub_272200344(v2);
        }

        v10 = *(*v5 + 160);
        v6 = *v5 + 160;
        *v3 = v2;
        v11 = 8;
        while (1)
        {
          v12 = v11 - 8;
          if (__OFADD__(v27, v11 - 8))
          {
            break;
          }

          v13 = *(a1 + 4 * (v27 + v11 - 8));
          v2 = *v3;
          v14 = swift_isUniquelyReferenced_nonNull_native();
          *v3 = v2;
          if ((v14 & 1) == 0)
          {
            v2 = sub_272200344(v2);
            *v3 = v2;
          }

          if (v8 >= v2[2])
          {
            goto LABEL_34;
          }

          v15 = v2 + 4;
          v2 = v2[v8 + 4];
          v16 = swift_isUniquelyReferenced_nonNull_native();
          v15[v8] = v2;
          if ((v16 & 1) == 0)
          {
            v2 = sub_2722002AC(v2);
            v15[v8] = v2;
          }

          if (v12 >= v2[2])
          {
            goto LABEL_35;
          }

          *(v2 + v11) = v13;
          if (v8 >= *(*v3 + 16))
          {
            goto LABEL_36;
          }

          v17 = *(*v3 + 8 * v8 + 32);
          if (v12 >= *(v17 + 16))
          {
            goto LABEL_37;
          }

          v18 = *(v17 + 4 * v11);
          if (v18 < v10())
          {
            v19 = (*(*v5 + 184))();
            v2 = *v3;
            v20 = swift_isUniquelyReferenced_nonNull_native();
            *v3 = v2;
            if ((v20 & 1) == 0)
            {
              v2 = sub_272200344(v2);
              *v3 = v2;
            }

            if (v8 >= v2[2])
            {
              goto LABEL_38;
            }

            v21 = v2 + 4;
            v2 = v2[v8 + 4];
            v22 = swift_isUniquelyReferenced_nonNull_native();
            v21[v8] = v2;
            if ((v22 & 1) == 0)
            {
              v2 = sub_2722002AC(v2);
              v21[v8] = v2;
            }

            if (v12 >= v2[2])
            {
              goto LABEL_39;
            }

            *(v2 + v11) = v19;
          }

          if (++v11 - v24 == 8)
          {
            goto LABEL_6;
          }
        }

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
LABEL_41:
        __break(1u);
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v2 = sub_272200344(v2);
    }
  }
}

uint64_t sub_27225CA58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27225CA78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for espresso_network_t()
{
  if (!qword_2808820D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2808820D8);
    }
  }
}

unint64_t sub_27225CAF0()
{
  result = qword_2808820E0;
  if (!qword_2808820E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820E0);
  }

  return result;
}

unint64_t sub_27225CB44()
{
  result = qword_2808820F0;
  if (!qword_2808820F0)
  {
    sub_27221982C(255, &qword_2808820E8, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808820F0);
  }

  return result;
}

uint64_t sub_27225CBBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27225CC10()
{
  result = sub_27225F0E4(MEMORY[0x277D84F90]);
  qword_280887F28 = result;
  return result;
}

id sub_27225CC38()
{
  v0 = sub_27237728C();
  MEMORY[0x28223BE20](v0);
  type metadata accessor for VAEspressoUtils();
  v27 = 0;
  v1 = sub_2722CBCD4();
  v3 = v2;
  v4 = sub_2721F7EE4();
  static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(0xD000000000000018, 0x800000027238B2B0, &v27, v1, v3, v4 & 1, v28);

  v25[1] = unk_280887E40;
  v25[2] = xmmword_280887E50;
  v26[0] = unk_280887E60;
  *(v26 + 9) = unk_280887E69;
  v25[0] = xmmword_280887E30;
  xmmword_280887E50 = v28[2];
  unk_280887E60 = v29[0];
  unk_280887E69 = *(v29 + 9);
  xmmword_280887E30 = v28[0];
  unk_280887E40 = v28[1];
  sub_2721F40F0(v25, &qword_280881808, &qword_27237BF30);
  v22 = 0;
  v5 = sub_2722CBCD4();
  v7 = v6;
  v8 = sub_2721F7EE4();
  static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(0xD000000000000018, 0x800000027238B2D0, &v22, v5, v7, v8 & 1, v23);

  v20[2] = xmmword_280887EA0;
  *v21 = unk_280887EB0;
  *&v21[9] = unk_280887EB9;
  v20[0] = xmmword_280887E80;
  v20[1] = *algn_280887E90;
  xmmword_280887EA0 = v23[2];
  unk_280887EB0 = v24[0];
  unk_280887EB9 = *(v24 + 9);
  xmmword_280887E80 = v23[0];
  *algn_280887E90 = v23[1];
  sub_2721F40F0(v20, &qword_280881808, &qword_27237BF30);
  v17 = 0;
  v9 = sub_2722CBCD4();
  v11 = v10;
  v12 = sub_2721F7EE4();
  static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(0xD000000000000017, 0x800000027238B2F0, &v17, v9, v11, v12 & 1, v18);

  v15[2] = xmmword_280887EF0;
  *v16 = unk_280887F00;
  *&v16[9] = unk_280887F09;
  v15[0] = xmmword_280887ED0;
  v15[1] = unk_280887EE0;
  xmmword_280887EF0 = v18[2];
  unk_280887F00 = v19[0];
  unk_280887F09 = *(v19 + 9);
  xmmword_280887ED0 = v18[0];
  unk_280887EE0 = v18[1];
  sub_2721F40F0(v15, &qword_280881808, &qword_27237BF30);
  if (qword_280887F20 != -1)
  {
    swift_once();
  }

  v13 = sub_27225F1E0();
  swift_beginAccess();
  qword_280887F28 = v13;

  return [objc_allocWithZone(type metadata accessor for G2PFactored()) init];
}

id G2PFactored.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_27225D0EC()
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x68))();
  if (!v2)
  {
    v0 = v3;
  }

  return v0;
}

uint64_t sub_27225D294()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
  if (!v1)
  {
    v3 = result;

    return v3;
  }

  return result;
}

char *sub_27225D42C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_27237728C();
  v110 = *(v6 - 8);
  v111 = v6;
  MEMORY[0x28223BE20](v6);
  v109 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27237788C();
  MEMORY[0x28223BE20](v8 - 8);
  v108 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a1;
  v118 = a2;
  v119 = 32;
  v120 = 0xE100000000000000;
  v10 = sub_272203AC4();
  v11 = MEMORY[0x277D837D0];
  if (sub_27237813C())
  {
    v117 = a1;
    v118 = a2;
    v119 = 32;
    v120 = 0xE100000000000000;
    v115 = 95;
    v116 = 0xE100000000000000;
    v102 = v10;
    v103 = v10;
    v101[0] = v11;
    v101[1] = v10;
    v12 = sub_2723780FC();
    v14 = v13;
  }

  else
  {

    v12 = a1;
    v14 = a2;
  }

  v117 = 0x3A3E53555F6E653CLL;
  v118 = 0xE800000000000000;
  MEMORY[0x2743C4AD0](v12, v14);

  v15 = sub_2721FFF28(v117, v118);

  v16 = v15[2];
  if (v16)
  {
    v121 = v2;
    v17 = a1;
    v117 = MEMORY[0x277D84F90];
    sub_2722005AC(0, v16, 0);
    v18 = 32;
    v19 = v117;
    do
    {
      v20 = *(v15 + v18) + 3;
      if (((*(v15 + v18) + 3) & 0x100) != 0)
      {
        goto LABEL_87;
      }

      v117 = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2722005AC((v21 > 1), v22 + 1, 1);
        v19 = v117;
      }

      *(v19 + 16) = v22 + 1;
      *(v19 + 4 * v22 + 32) = v20;
      ++v18;
      --v16;
    }

    while (v16);

    a1 = v17;
    v3 = v121;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v23 = sub_272377B5C();
  *(v23 + 16) = 48;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  *(v23 + 96) = 0u;
  *(v23 + 112) = 0u;
  *(v23 + 128) = 0u;
  *(v23 + 144) = 0u;
  *(v23 + 160) = 0u;
  *(v23 + 176) = 0u;
  *(v23 + 192) = 0u;
  *(v23 + 208) = 0u;
  v24 = sub_272377B5C();
  v25 = v24;
  *(v24 + 16) = 48;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0u;
  *(v24 + 96) = 0u;
  *(v24 + 112) = 0u;
  *(v24 + 128) = 0u;
  *(v24 + 144) = 0u;
  *(v24 + 160) = 0u;
  *(v24 + 176) = 0u;
  v26 = 8;
  *(v24 + 192) = 0u;
  *(v24 + 208) = 0u;
  v27 = *(v19 + 16);
  do
  {
    v28 = v26 - 8;
    v29 = 0;
    if (v26 - 8 < v27)
    {
      v29 = *(v19 + 4 * v26);
    }

    if (v28 >= *(v23 + 16))
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    *(v23 + 4 * v26) = v29;
    if (v28 >= *(v24 + 16))
    {
      goto LABEL_86;
    }

    if (v28 >= v27)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }

    *(v24 + 4 * v26++) = v30;
  }

  while (v26 != 56);

  v31 = v113;
  v32 = (*((*MEMORY[0x277D85000] & *v113) + 0x70))(v23, v25);
  v114 = v3;
  if (v3)
  {

LABEL_55:

    return a2;
  }

  v33 = v32;
  v106 = a1;
  v107 = a2;
  v34 = sub_272377B5C();
  *(v34 + 16) = 48;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0u;
  *(v34 + 64) = 0u;
  *(v34 + 80) = 0u;
  *(v34 + 96) = 0u;
  *(v34 + 112) = 0u;
  *(v34 + 128) = 0u;
  *(v34 + 144) = 0u;
  *(v34 + 160) = 0u;
  *(v34 + 176) = 0u;
  *(v34 + 192) = 0u;
  *(v34 + 208) = 0u;
  v35 = sub_272377B5C();
  v36 = 0;
  *(v35 + 16) = 48;
  *(v35 + 32) = 0u;
  *(v35 + 48) = 0u;
  *(v35 + 64) = 0u;
  *(v35 + 80) = 0u;
  *(v35 + 96) = 0u;
  *(v35 + 112) = 0u;
  *(v35 + 128) = 0u;
  *(v35 + 144) = 0u;
  *(v35 + 160) = 0u;
  *(v35 + 176) = 0u;
  v37 = MEMORY[0x277D84F90];
  *(v35 + 192) = 0u;
  *(v35 + 208) = 0u;
  v112 = v33;
  while (1)
  {
    v121 = v37;
    if (v36 == 48)
    {
      v105 = v35;
      goto LABEL_58;
    }

    v38 = v36;
    if (v36 > 0x2F)
    {
      goto LABEL_88;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_2722002AC(v35);
    }

    a2 = MEMORY[0x277D85000];
    v39 = v114;
    if (v38 >= *(v35 + 16))
    {
      goto LABEL_89;
    }

    *(v35 + 4 * v38 + 32) = 1065353216;
    (*((*a2 & *v31) + 0x78))(v34, v35, v33, v25);
    if (v39)
    {
      v114 = v39;

      goto LABEL_55;
    }

    v40 = (*((*a2 & *v31) + 0x80))();
    v114 = 0;
    v41 = v40;

    if (!*(v41 + 16))
    {
      goto LABEL_90;
    }

    v42 = *(v41 + 32);
    if (v38 >= *(v42 + 16))
    {
      goto LABEL_91;
    }

    v43 = *(v42 + 8 * v38 + 32);
    if (*(v43 + 16) < 0x180uLL)
    {
      goto LABEL_92;
    }

    v44 = 0;
    v45 = v43 + 32;
    v46 = -1;
    v47 = -100000.0;
    do
    {
      v48 = *(v45 + 4 * v44);
      if (v47 < v48)
      {
        v46 = v44;
      }

      v49 = v44 + 1;
      if (v47 < v48)
      {
        v47 = *(v45 + 4 * v44);
      }

      ++v44;
    }

    while (v49 != 384);

    if (v46 == 1)
    {
      break;
    }

    v50 = v46 - 3;
    if (__OFSUB__(v46, 3))
    {
      goto LABEL_93;
    }

    if ((v50 & 0x8000000000000000) != 0)
    {
      goto LABEL_94;
    }

    if (v50 > 0xFF)
    {
      goto LABEL_95;
    }

    v51 = v34;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v37 = v121;
    }

    else
    {
      v37 = sub_2722001B8(0, *(v121 + 2) + 1, 1, v121);
    }

    v53 = *(v37 + 2);
    v52 = *(v37 + 3);
    if (v53 >= v52 >> 1)
    {
      v37 = sub_2722001B8((v52 > 1), v53 + 1, 1, v37);
    }

    *(v37 + 2) = v53 + 1;
    v37[v53 + 32] = v50;
    v36 = 48;
    v34 = v51;
    v33 = v112;
    v31 = v113;
    if (v38 != 47)
    {
      v54 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_2722002AC(v34);
      }

      v36 = v38 + 1;
      if ((v38 + 1) >= *(v34 + 16))
      {
        goto LABEL_97;
      }

      *(v34 + 4 * v36 + 32) = v46;
      v37 = v54;
    }
  }

  v105 = v35;
LABEL_58:

  v117 = v121;

  sub_27237787C();
  sub_2721F065C(&qword_280882138, &qword_27237EA78);
  sub_27225FB78();
  v108 = sub_27237785C();
  v57 = v56;

  v59 = v110;
  v58 = v111;
  a2 = v109;
  if (!v57)
  {

    sub_27225FBDC();
    v70 = swift_allocError();
    *v71 = 0xD000000000000023;
    v71[1] = 0x800000027238B310;
    v114 = v70;
    swift_willThrow();
    return a2;
  }

  v60 = sub_2722C389C();
  (*(v59 + 16))(a2, v60, v58);
  v61 = v107;

  v62 = sub_27237725C();
  v63 = sub_272377E6C();

  v64 = os_log_type_enabled(v62, v63);
  v104 = v34;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v117 = v66;
    *v65 = 136315394;
    *(v65 + 4) = sub_2721FFD04(v106, v61, &v117);
    *(v65 + 12) = 2080;

    v67 = v108;
    v68 = sub_2721FFD04(v108, v57, &v117);

    *(v65 + 14) = v68;
    _os_log_impl(&dword_2721E4000, v62, v63, "Inferred pronounciation for %s is %s", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743C69C0](v66, -1, -1);
    MEMORY[0x2743C69C0](v65, -1, -1);

    v69 = (*(v110 + 8))(v109, v111);
  }

  else
  {

    v69 = (*(v59 + 8))(a2, v111);
    v67 = v108;
  }

  v117 = 32;
  v118 = 0xE100000000000000;
  MEMORY[0x28223BE20](v69);
  v102 = &v117;

  v111 = v57;
  v72 = v114;
  v74 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219A04, v101, v67, v57, v73);
  v114 = v72;
  v75 = *(v74 + 16);
  if (v75)
  {
    v117 = MEMORY[0x277D84F90];
    sub_27220056C(0, v75, 0);
    v76 = v117;
    v113 = v74;
    v77 = (v74 + 56);
    do
    {
      v78 = v76;
      v80 = *(v77 - 3);
      v79 = *(v77 - 2);
      v81 = *(v77 - 1);
      v82 = *v77;

      v83 = v79;
      v76 = v78;
      v84 = MEMORY[0x2743C4A20](v80, v83, v81, v82);
      v86 = v85;

      v117 = v78;
      v87 = *(v78 + 16);
      v88 = *(v76 + 24);
      if (v87 >= v88 >> 1)
      {
        sub_27220056C((v88 > 1), v87 + 1, 1);
        v76 = v117;
      }

      *(v76 + 16) = v87 + 1;
      v89 = v76 + 16 * v87;
      *(v89 + 32) = v84;
      *(v89 + 40) = v86;
      v77 += 4;
      --v75;
    }

    while (v75);
  }

  else
  {

    v76 = MEMORY[0x277D84F90];
  }

  v113 = *(v76 + 16);
  if (!v113)
  {
    a2 = MEMORY[0x277D84F90];
LABEL_84:

    return a2;
  }

  v90 = 0;
  a2 = MEMORY[0x277D84F90];
  v91 = (v76 + 40);
  v112 = v76;
  while (v90 < *(v76 + 16))
  {
    v92 = *(v91 - 1);
    v93 = *v91;
    v94 = qword_280887F20;

    if (v94 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v95 = qword_280887F28;
    if (!*(qword_280887F28 + 16))
    {
      goto LABEL_98;
    }

    v96 = sub_27220038C(v92, v93);
    if ((v97 & 1) == 0)
    {
      goto LABEL_98;
    }

    v98 = *(*(v95 + 56) + 8 * v96);
    swift_endAccess();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a2 = sub_27220897C(0, *(a2 + 2) + 1, 1, a2);
    }

    v100 = *(a2 + 2);
    v99 = *(a2 + 3);
    if (v100 >= v99 >> 1)
    {
      a2 = sub_27220897C((v99 > 1), v100 + 1, 1, a2);
    }

    v90 = (v90 + 1);
    *(a2 + 2) = v100 + 1;
    *&a2[8 * v100 + 32] = v98;
    v91 += 2;
    v76 = v112;
    if (v113 == v90)
    {
      goto LABEL_84;
    }
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_27225E0A8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_27220038C(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_272201D78();
        v13 = v16;
      }

      result = sub_27223CF60(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_27225EF80(a1, a3, a4, v15);

    *v4 = v17;
  }

  return result;
}

uint64_t sub_27225E194(uint64_t *a1, uint64_t *a2)
{
  swift_getObjectType();
  v16[0] = xmmword_280887E30;
  v16[1] = unk_280887E40;
  v16[2] = xmmword_280887E50;
  *v17 = unk_280887E60;
  *&v17[9] = unk_280887E69;
  if (xmmword_280887E50)
  {
    v3 = *&v16[0];

    sub_2722CB8B0();
    sub_2722CB8C8();
    v4 = sub_2722CB8D0(v13);
    if (v2)
    {
      return sub_2721F40F0(v16, &qword_280881808, &qword_27237BF30);
    }

    else
    {
      MEMORY[0x28223BE20](v4);
      sub_2722CB3F0(sub_27226026C);
      sub_2722CB8C8();
      v5 = sub_2722CB8D0(v14);
      MEMORY[0x28223BE20](v5);
      sub_2722CB3F0(sub_27226026C);
      v8 = sub_272377B5C();
      *(v8 + 16) = 128;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      *(v8 + 96) = 0u;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0u;
      *(v8 + 160) = 0u;
      *(v8 + 176) = 0u;
      *(v8 + 192) = 0u;
      *(v8 + 208) = 0u;
      *(v8 + 224) = 0u;
      *(v8 + 240) = 0u;
      *(v8 + 256) = 0u;
      *(v8 + 272) = 0u;
      *(v8 + 288) = 0u;
      *(v8 + 304) = 0u;
      *(v8 + 320) = 0u;
      *(v8 + 336) = 0u;
      *(v8 + 352) = 0u;
      *(v8 + 368) = 0u;
      *(v8 + 384) = 0u;
      *(v8 + 400) = 0u;
      *(v8 + 416) = 0u;
      *(v8 + 432) = 0u;
      *(v8 + 448) = 0u;
      *(v8 + 464) = 0u;
      *(v8 + 480) = 0u;
      *(v8 + 496) = 0u;
      *(v8 + 512) = 0u;
      *(v8 + 528) = 0u;
      sub_2721F065C(&qword_280881858, &unk_27237C260);
      v9 = sub_272377B5C();
      *(v9 + 16) = 48;
      *(v9 + 32) = v8;
      for (i = 40; i != 416; i += 8)
      {
        *(v9 + i) = v8;
      }

      sub_2721F065C(&qword_280881F28, &unk_272381E80);
      v11 = sub_272377B5C();
      *(v11 + 16) = 1;
      *(v11 + 32) = v9;
      v18 = v11;
      sub_2722CB8BC();
      sub_2722CB8C8();
      sub_2722CB8D0(v15);
      sub_2722CB800(v3);
      v12 = sub_2721F40F0(v16, &qword_280881808, &qword_27237BF30);
      MEMORY[0x28223BE20](v12);
      sub_2722CB3F0(sub_272260284);
      return v18;
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v7 = 0xD000000000000014;
    v7[1] = 0x800000027238B340;
    return swift_willThrow();
  }
}

uint64_t sub_27225E5D8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  swift_getObjectType();
  v23[0] = xmmword_280887E80;
  v23[1] = *algn_280887E90;
  v23[2] = xmmword_280887EA0;
  *v24 = unk_280887EB0;
  *&v24[9] = unk_280887EB9;
  if (xmmword_280887EA0)
  {
    v5 = *&v23[0];

    sub_2722CB8B0();
    sub_2722CB8C8();
    v6 = sub_2722CB8D0(v18);
    if (v4)
    {
      return sub_2721F40F0(v23, &qword_280881808, &qword_27237BF30);
    }

    else
    {
      v17 = v5;
      MEMORY[0x28223BE20](v6);
      sub_2722CB3F0(sub_27226026C);
      sub_2722CB8C8();
      v7 = sub_2722CB8D0(v19);
      MEMORY[0x28223BE20](v7);
      sub_2722CB3F0(sub_27225FC30);
      sub_2722CB8C8();
      v8 = sub_2722CB8D0(v20);
      MEMORY[0x28223BE20](v8);
      sub_2722CB3F0(sub_27226029C);
      sub_2722CB8C8();
      v9 = sub_2722CB8D0(v21);
      MEMORY[0x28223BE20](v9);
      sub_2722CB3F0(sub_27226026C);
      v12 = sub_272377B5C();
      *(v12 + 16) = 128;
      *(v12 + 32) = 0u;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 80) = 0u;
      *(v12 + 96) = 0u;
      *(v12 + 112) = 0u;
      *(v12 + 128) = 0u;
      *(v12 + 144) = 0u;
      *(v12 + 160) = 0u;
      *(v12 + 176) = 0u;
      *(v12 + 192) = 0u;
      *(v12 + 208) = 0u;
      *(v12 + 224) = 0u;
      *(v12 + 240) = 0u;
      *(v12 + 256) = 0u;
      *(v12 + 272) = 0u;
      *(v12 + 288) = 0u;
      *(v12 + 304) = 0u;
      *(v12 + 320) = 0u;
      *(v12 + 336) = 0u;
      *(v12 + 352) = 0u;
      *(v12 + 368) = 0u;
      *(v12 + 384) = 0u;
      *(v12 + 400) = 0u;
      *(v12 + 416) = 0u;
      *(v12 + 432) = 0u;
      *(v12 + 448) = 0u;
      *(v12 + 464) = 0u;
      *(v12 + 480) = 0u;
      *(v12 + 496) = 0u;
      *(v12 + 512) = 0u;
      *(v12 + 528) = 0u;
      sub_2721F065C(&qword_280881858, &unk_27237C260);
      v13 = sub_272377B5C();
      *(v13 + 16) = 48;
      *(v13 + 32) = v12;
      for (i = 40; i != 416; i += 8)
      {
        *(v13 + i) = v12;
      }

      sub_2721F065C(&qword_280881F28, &unk_272381E80);
      v15 = sub_272377B5C();
      *(v15 + 16) = 1;
      *(v15 + 32) = v13;
      v25 = v15;
      sub_2722CB8BC();
      sub_2722CB8C8();
      sub_2722CB8D0(v22);
      sub_2722CB800(v17);
      v16 = sub_2721F40F0(v23, &qword_280881808, &qword_27237BF30);
      MEMORY[0x28223BE20](v16);
      sub_2722CB3F0(sub_27225FDE0);
      return v25;
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v11 = 0xD000000000000014;
    v11[1] = 0x800000027238B360;
    return swift_willThrow();
  }
}

uint64_t sub_27225EB7C(uint64_t *a1)
{
  swift_getObjectType();
  v14[0] = xmmword_280887ED0;
  v14[1] = unk_280887EE0;
  v14[2] = xmmword_280887EF0;
  *v15 = unk_280887F00;
  *&v15[9] = unk_280887F09;
  if (xmmword_280887EF0)
  {
    v2 = *&v14[0];

    sub_2722CB8B0();
    sub_2722CB8C8();
    v3 = sub_2722CB8D0(v12);
    if (v1)
    {
      return sub_2721F40F0(v14, &qword_280881808, &qword_27237BF30);
    }

    else
    {
      MEMORY[0x28223BE20](v3);
      sub_2722CB3F0(sub_27225FF34);
      v6 = sub_272377B5C();
      *(v6 + 16) = 384;
      bzero((v6 + 32), 0x600uLL);
      sub_2721F065C(&qword_280881858, &unk_27237C260);
      v7 = sub_272377B5C();
      *(v7 + 16) = 48;
      *(v7 + 32) = v6;
      for (i = 40; i != 416; i += 8)
      {
        *(v7 + i) = v6;
      }

      sub_2721F065C(&qword_280881F28, &unk_272381E80);
      v9 = sub_272377B5C();
      *(v9 + 16) = 1;
      *(v9 + 32) = v7;
      v11 = v9;
      sub_2722CB8BC();
      sub_2722CB8C8();
      sub_2722CB8D0(v13);
      sub_2722CB800(v2);
      v10 = sub_2721F40F0(v14, &qword_280881808, &qword_27237BF30);
      MEMORY[0x28223BE20](v10);
      sub_2722CB3F0(sub_27225FFC8);
      return v11;
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v5 = 0xD000000000000012;
    v5[1] = 0x800000027238B3C0;
    return swift_willThrow();
  }
}

id G2PFactored.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for G2PFactored();
  return objc_msgSendSuper2(&v3, sel_init);
}

id G2PFactored.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for G2PFactored();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_27225EF80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_27220038C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_272201970(v16, a4 & 1);
      result = sub_27220038C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2723786BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_272201D78();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_27225F0E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280881878, &unk_27237C280);
    v3 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unsigned __int8 *sub_27225F1E0()
{
  v1 = sub_272376BCC();
  v94 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_27237788C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2723777FC();
  v6 = [v5 stringByDeletingPathExtension];

  v7 = sub_27237782C();
  v9 = v8;

  v10 = v9;
  v11 = sub_2723777FC();
  v12 = [v11 pathExtension];

  v13 = sub_27237782C();
  v15 = v14;

  v85 = v7;
  sub_2722560E0(v7, v10, v13, v15);
  v17 = v16;

  if (!v17)
  {

    sub_27225FBDC();
    swift_allocError();
    *v22 = 0xD00000000000001DLL;
    v22[1] = 0x800000027238B410;
    return swift_willThrow();
  }

  sub_27237787C();
  v18 = sub_2723777EC();
  v20 = v0;
  if (v0)
  {
  }

  v23 = v18;
  v24 = v19;
  v81 = v10;

  v99 = sub_27225F0E4(MEMORY[0x277D84F90]);
  *&v96 = v23;
  *(&v96 + 1) = v24;
  sub_272376BBC();
  v92 = sub_272203AC4();
  v25 = sub_2723780AC();
  v26 = v94 + 8;
  v27 = *(v94 + 8);
  v27(v3, v1);

  v91 = *(v25 + 16);
  if (!v91)
  {
LABEL_89:

    return v99;
  }

  v93 = v27;
  v94 = v26;
  v28 = 0;
  v90 = v25 + 32;
  v80 = &v96 + 1;
  v83 = v3;
  v84 = v25;
  v82 = v1;
  while (v28 < *(v25 + 16))
  {
    v29 = (v90 + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    *&v96 = *v29;
    *(&v96 + 1) = v30;

    sub_272376B8C();
    v32 = sub_2723780EC();
    v34 = v33;
    v93(v3, v1);
    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (!v35 || (sub_2722155A0(35, 0xE100000000000000, v32, v34) & 1) != 0)
    {
    }

    else
    {
      v36 = sub_2722155A0(12079, 0xE200000000000000, v32, v34);

      if ((v36 & 1) == 0)
      {
        *&v96 = 32;
        *(&v96 + 1) = 0xE100000000000000;
        MEMORY[0x28223BE20](v37);
        *(&v79 - 2) = &v96;

        v39 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219D88, (&v79 - 4), v31, v30, v38);
        if (*(v39 + 16) != 2)
        {

          *&v96 = 0;
          *(&v96 + 1) = 0xE000000000000000;
          sub_27237820C();

          strcpy(&v96, "Invalid line ");
          HIWORD(v96) = -4864;
          MEMORY[0x2743C4AD0](v31, v30);

          MEMORY[0x2743C4AD0](544106784, 0xE400000000000000);
          MEMORY[0x2743C4AD0](v85, v81);

          v77 = v96;
          sub_27225FBDC();
          swift_allocError();
          *v78 = v77;
          return swift_willThrow();
        }

        if (!*(v39 + 16))
        {
          goto LABEL_92;
        }

        v89 = v20;
        v40 = *(v39 + 48);
        v41 = *(v39 + 56);
        v96 = *(v39 + 32);
        v97 = v40;
        v98 = v41;

        sub_272376B4C();
        sub_272260218();
        v42 = sub_2723780EC();
        v88 = v43;
        v44 = v93;
        v93(v3, v1);

        if (*(v39 + 16) < 2uLL)
        {
          goto LABEL_93;
        }

        v86 = v42;
        v87 = *(v39 + 64);
        v45 = *(v39 + 80);
        v46 = *(v39 + 88);

        v96 = v87;
        v97 = v45;
        v98 = v46;
        sub_272376B4C();
        v47 = sub_2723780EC();
        v49 = v48;
        v50 = v82;
        v44(v3);
        v51 = v49;

        v52 = HIBYTE(v49) & 0xF;
        v53 = v47 & 0xFFFFFFFFFFFFLL;
        if ((v49 & 0x2000000000000000) != 0)
        {
          v54 = HIBYTE(v49) & 0xF;
        }

        else
        {
          v54 = v47 & 0xFFFFFFFFFFFFLL;
        }

        if (v54)
        {
          v20 = v89;
          if ((v49 & 0x1000000000000000) != 0)
          {
            v95 = 0;
            v56 = sub_272200A34(v47, v49, 10);
            v74 = v76;

            v3 = v83;
            v25 = v84;
            v1 = v50;
            goto LABEL_82;
          }

          v25 = v84;
          if ((v49 & 0x2000000000000000) != 0)
          {
            *&v96 = v47;
            *(&v96 + 1) = v49 & 0xFFFFFFFFFFFFFFLL;
            v1 = v50;
            v3 = v83;
            if (v47 == 43)
            {
              if (!v52)
              {
                goto LABEL_94;
              }

              if (--v52)
              {
                v56 = 0;
                v66 = v80;
                while (1)
                {
                  v67 = *v66 - 48;
                  if (v67 > 9)
                  {
                    break;
                  }

                  v68 = 10 * v56;
                  if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                  {
                    break;
                  }

                  v56 = v68 + v67;
                  if (__OFADD__(v68, v67))
                  {
                    break;
                  }

                  ++v66;
                  if (!--v52)
                  {
                    goto LABEL_81;
                  }
                }
              }
            }

            else if (v47 == 45)
            {
              if (!v52)
              {
                goto LABEL_97;
              }

              if (--v52)
              {
                v56 = 0;
                v60 = v80;
                while (1)
                {
                  v61 = *v60 - 48;
                  if (v61 > 9)
                  {
                    break;
                  }

                  v62 = 10 * v56;
                  if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                  {
                    break;
                  }

                  v56 = v62 - v61;
                  if (__OFSUB__(v62, v61))
                  {
                    break;
                  }

                  ++v60;
                  if (!--v52)
                  {
                    goto LABEL_81;
                  }
                }
              }
            }

            else if (v52)
            {
              v56 = 0;
              v71 = &v96;
              while (1)
              {
                v72 = *v71 - 48;
                if (v72 > 9)
                {
                  break;
                }

                v73 = 10 * v56;
                if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                {
                  break;
                }

                v56 = v73 + v72;
                if (__OFADD__(v73, v72))
                {
                  break;
                }

                ++v71;
                if (!--v52)
                {
                  goto LABEL_81;
                }
              }
            }
          }

          else
          {
            v1 = v50;
            v3 = v83;
            if ((v47 & 0x1000000000000000) != 0)
            {
              result = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              result = sub_27237825C();
            }

            v55 = *result;
            if (v55 == 43)
            {
              if (v53 < 1)
              {
                goto LABEL_95;
              }

              v52 = v53 - 1;
              if (v53 != 1)
              {
                v56 = 0;
                if (!result)
                {
                  goto LABEL_72;
                }

                v63 = result + 1;
                while (1)
                {
                  v64 = *v63 - 48;
                  if (v64 > 9)
                  {
                    break;
                  }

                  v65 = 10 * v56;
                  if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                  {
                    break;
                  }

                  v56 = v65 + v64;
                  if (__OFADD__(v65, v64))
                  {
                    break;
                  }

                  ++v63;
                  if (!--v52)
                  {
                    goto LABEL_81;
                  }
                }
              }
            }

            else if (v55 == 45)
            {
              if (v53 < 1)
              {
                goto LABEL_96;
              }

              v52 = v53 - 1;
              if (v53 != 1)
              {
                v56 = 0;
                if (result)
                {
                  v57 = result + 1;
                  while (1)
                  {
                    v58 = *v57 - 48;
                    if (v58 > 9)
                    {
                      goto LABEL_80;
                    }

                    v59 = 10 * v56;
                    if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                    {
                      goto LABEL_80;
                    }

                    v56 = v59 - v58;
                    if (__OFSUB__(v59, v58))
                    {
                      goto LABEL_80;
                    }

                    ++v57;
                    if (!--v52)
                    {
                      goto LABEL_81;
                    }
                  }
                }

LABEL_72:
                LOBYTE(v52) = 0;
LABEL_81:
                v95 = v52;
                v74 = v52;

LABEL_82:
                if (v74)
                {
                  v75 = 0;
                }

                else
                {
                  v75 = v56;
                }

LABEL_85:
                result = sub_27225E0A8(v75, v74 & 1, v86, v88);
                goto LABEL_10;
              }
            }

            else
            {
              if (!v53)
              {
                goto LABEL_80;
              }

              v56 = 0;
              if (!result)
              {
                goto LABEL_72;
              }

              while (1)
              {
                v69 = *result - 48;
                if (v69 > 9)
                {
                  break;
                }

                v70 = 10 * v56;
                if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                {
                  break;
                }

                v56 = v70 + v69;
                if (__OFADD__(v70, v69))
                {
                  break;
                }

                ++result;
                if (!--v53)
                {
                  goto LABEL_72;
                }
              }
            }
          }

LABEL_80:
          v56 = 0;
          LOBYTE(v52) = 1;
          goto LABEL_81;
        }

        v75 = 0;
        v74 = 1;
        v20 = v89;
        v3 = v83;
        v25 = v84;
        v1 = v50;
        goto LABEL_85;
      }
    }

LABEL_10:
    if (++v28 == v91)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

unint64_t sub_27225FB78()
{
  result = qword_280882140;
  if (!qword_280882140)
  {
    sub_2721F214C(&qword_280882138, &qword_27237EA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882140);
  }

  return result;
}

unint64_t sub_27225FBDC()
{
  result = qword_280882148;
  if (!qword_280882148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882148);
  }

  return result;
}

_DWORD *sub_27225FC48(_DWORD *result)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16) <= 0x2FuLL)
  {
    __break(1u);
  }

  else
  {
    *result = *(v2 + 32);
    result[1] = *(v2 + 36);
    result[2] = *(v2 + 40);
    result[3] = *(v2 + 44);
    result[4] = *(v2 + 48);
    result[5] = *(v2 + 52);
    result[6] = *(v2 + 56);
    result[7] = *(v2 + 60);
    result[8] = *(v2 + 64);
    result[9] = *(v2 + 68);
    result[10] = *(v2 + 72);
    result[11] = *(v2 + 76);
    result[12] = *(v2 + 80);
    result[13] = *(v2 + 84);
    result[14] = *(v2 + 88);
    result[15] = *(v2 + 92);
    result[16] = *(v2 + 96);
    result[17] = *(v2 + 100);
    result[18] = *(v2 + 104);
    result[19] = *(v2 + 108);
    result[20] = *(v2 + 112);
    result[21] = *(v2 + 116);
    result[22] = *(v2 + 120);
    result[23] = *(v2 + 124);
    result[24] = *(v2 + 128);
    result[25] = *(v2 + 132);
    result[26] = *(v2 + 136);
    result[27] = *(v2 + 140);
    result[28] = *(v2 + 144);
    result[29] = *(v2 + 148);
    result[30] = *(v2 + 152);
    result[31] = *(v2 + 156);
    result[32] = *(v2 + 160);
    result[33] = *(v2 + 164);
    result[34] = *(v2 + 168);
    result[35] = *(v2 + 172);
    result[36] = *(v2 + 176);
    result[37] = *(v2 + 180);
    result[38] = *(v2 + 184);
    result[39] = *(v2 + 188);
    result[40] = *(v2 + 192);
    result[41] = *(v2 + 196);
    result[42] = *(v2 + 200);
    result[43] = *(v2 + 204);
    result[44] = *(v2 + 208);
    result[45] = *(v2 + 212);
    result[46] = *(v2 + 216);
    result[47] = *(v2 + 220);
  }

  return result;
}

uint64_t sub_27225FDF8(uint64_t a1)
{
  v3 = 0;
  v4 = *(v1 + 16);
LABEL_3:
  v5 = 0;
  v6 = v3 + 1;
  while (1)
  {
    v7 = *(a1 + 4 * v5);
    v8 = *v4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v8;
    if (result)
    {
      if (!v8[2])
      {
        break;
      }

      goto LABEL_6;
    }

    result = sub_272258428(v8);
    v8 = result;
    *v4 = result;
    if (!*(result + 16))
    {
      break;
    }

LABEL_6:
    v10 = v8[4];
    result = swift_isUniquelyReferenced_nonNull_native();
    v8[4] = v10;
    if ((result & 1) == 0)
    {
      result = sub_272200344(v10);
      v10 = result;
      v8[4] = result;
    }

    if (v3 >= v10[2])
    {
      goto LABEL_18;
    }

    v11 = v10 + 4;
    v12 = v11[v3];
    result = swift_isUniquelyReferenced_nonNull_native();
    v11[v3] = v12;
    if ((result & 1) == 0)
    {
      result = sub_2722002AC(v12);
      v12 = result;
      v11[v3] = result;
    }

    if (v5 >= *(v12 + 16))
    {
      goto LABEL_19;
    }

    *(v12 + 4 * v5++ + 32) = v7;
    if (v5 == 128)
    {
      a1 += 512;
      ++v3;
      if (v6 == 48)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_27225FF4C(uint64_t result)
{
  v2 = *(v1 + 16);
  if (!*(v2 + 16))
  {
    goto LABEL_11;
  }

  v3 = 0;
  v4 = *(v2 + 32);
  v5 = v4 + 32;
  v6 = *(v4 + 16);
  while (2)
  {
    if (v3 == v6)
    {
LABEL_10:
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v7 = 0;
    v8 = v3 + 1;
    do
    {
      v9 = *(v5 + 8 * v3);
      if (v7 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_10;
      }

      *(result + 4 * v7) = *(v9 + 4 * v7 + 32);
      ++v7;
    }

    while (v7 != 128);
    result += 512;
    ++v3;
    if (v8 != 48)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_27225FFC8(uint64_t a1)
{
  v3 = 0;
  v4 = *(v1 + 16);
LABEL_3:
  v5 = 0;
  v6 = v3 + 1;
  while (1)
  {
    v7 = *(a1 + 4 * v5);
    v8 = *v4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v8;
    if (result)
    {
      if (!v8[2])
      {
        break;
      }

      goto LABEL_6;
    }

    result = sub_272258428(v8);
    v8 = result;
    *v4 = result;
    if (!*(result + 16))
    {
      break;
    }

LABEL_6:
    v10 = v8[4];
    result = swift_isUniquelyReferenced_nonNull_native();
    v8[4] = v10;
    if ((result & 1) == 0)
    {
      result = sub_272200344(v10);
      v10 = result;
      v8[4] = result;
    }

    if (v3 >= v10[2])
    {
      goto LABEL_18;
    }

    v11 = v10 + 4;
    v12 = v11[v3];
    result = swift_isUniquelyReferenced_nonNull_native();
    v11[v3] = v12;
    if ((result & 1) == 0)
    {
      result = sub_2722002AC(v12);
      v12 = result;
      v11[v3] = result;
    }

    if (v5 >= *(v12 + 16))
    {
      goto LABEL_19;
    }

    *(v12 + 4 * v5++ + 32) = v7;
    if (v5 == 384)
    {
      a1 += 1536;
      ++v3;
      if (v6 == 48)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_272260218()
{
  result = qword_280882150;
  if (!qword_280882150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882150);
  }

  return result;
}

uint64_t sub_2722602B4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_2723773DC();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_2721F065C(&qword_280881F88, qword_27237E340);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  sub_2721F065C(&qword_280881F80, &qword_27237E338);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272260488, v1, 0);
}

uint64_t sub_272260488()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  v0[18] = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  swift_beginAccess();
  sub_2721F07F4(v4 + v5, v1, &qword_280881F80, &qword_27237E338);
  v6 = *(v3 + 48);
  v0[19] = v6;
  if (v6(v1, 1, v2) == 1)
  {
    sub_2721F40F0(v0[17], &qword_280881F80, &qword_27237E338);
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_272260850;

    return MEMORY[0x282200490]();
  }

  else
  {
    v8 = v0[18];
    v9 = v0[16];
    v10 = v0[13];
    v11 = v0[6];
    sub_2721F40F0(v0[17], &qword_280881F80, &qword_27237E338);
    sub_2721F07F4(v11 + v8, v9, &qword_280881F80, &qword_27237E338);
    if (v6(v9, 1, v10) == 1)
    {
      v12 = v0[6];
      sub_2721F40F0(v0[16], &qword_280881F80, &qword_27237E338);
      v26 = (*(*v12 + 120) + **(*v12 + 120));
      v13 = swift_task_alloc();
      v0[21] = v13;
      *v13 = v0;
      v13[1] = sub_272260D08;
      v14 = v0[5];

      return v26(v14);
    }

    else
    {
      v16 = v0[14];
      v15 = v0[15];
      v18 = v0[12];
      v17 = v0[13];
      v19 = v0[11];
      v27 = v0[10];
      v20 = v0[8];
      v21 = v0[9];
      v22 = v0[7];
      v23 = v0[5];
      (*(v16 + 32))(v15, v0[16], v17);
      (*(v20 + 16))(v21, v23, v22);
      sub_272377C6C();
      (*(v19 + 8))(v18, v27);
      (*(v16 + 8))(v15, v17);

      v24 = v0[1];

      return v24();
    }
  }
}

uint64_t sub_272260850()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_272260960, v1, 0);
}

uint64_t sub_272260960()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[13];
  sub_2721F07F4(v0[6] + v0[18], v2, &qword_280881F80, &qword_27237E338);
  if (v1(v2, 1, v3) == 1)
  {
    sub_2721F40F0(v0[17], &qword_280881F80, &qword_27237E338);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_272260850;

    return MEMORY[0x282200490]();
  }

  else
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[16];
    v8 = v0[13];
    v9 = v0[6];
    sub_2721F40F0(v0[17], &qword_280881F80, &qword_27237E338);
    sub_2721F07F4(v9 + v6, v7, &qword_280881F80, &qword_27237E338);
    if (v5(v7, 1, v8) == 1)
    {
      v10 = v0[6];
      sub_2721F40F0(v0[16], &qword_280881F80, &qword_27237E338);
      v24 = (*(*v10 + 120) + **(*v10 + 120));
      v11 = swift_task_alloc();
      v0[21] = v11;
      *v11 = v0;
      v11[1] = sub_272260D08;
      v12 = v0[5];

      return v24(v12);
    }

    else
    {
      v14 = v0[14];
      v13 = v0[15];
      v16 = v0[12];
      v15 = v0[13];
      v17 = v0[11];
      v25 = v0[10];
      v18 = v0[8];
      v19 = v0[9];
      v20 = v0[7];
      v21 = v0[5];
      (*(v14 + 32))(v13, v0[16], v15);
      (*(v18 + 16))(v19, v21, v20);
      sub_272377C6C();
      (*(v17 + 8))(v16, v25);
      (*(v14 + 8))(v13, v15);

      v22 = v0[1];

      return v22();
    }
  }
}

uint64_t sub_272260D08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_272260E98()
{
  v1[5] = v0;
  sub_2721F065C(&qword_280881F80, &qword_27237E338);
  v1[6] = swift_task_alloc();
  v2 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_27237728C();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272261004, v0, 0);
}

uint64_t sub_272261004()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = sub_2722C3774();
  v29 = *(v2 + 16);
  v30 = v3;
  v29(v1);
  v4 = sub_27237725C();
  v5 = sub_272377E6C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2721E4000, v4, v5, "Trying to finish input strem", v6, 2u);
    MEMORY[0x2743C69C0](v6, -1, -1);
  }

  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  v11 = v0[7];
  v10 = v0[8];
  v13 = v0[5];
  v12 = v0[6];

  v14 = *(v9 + 8);
  v14(v7, v8);
  v15 = v14;
  v16 = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  swift_beginAccess();
  sub_2721F07F4(v13 + v16, v12, &qword_280881F80, &qword_27237E338);
  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
    sub_2721F40F0(v0[6], &qword_280881F80, &qword_27237E338);
  }

  else
  {
    v17 = v0[12];
    v18 = v0[10];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    (v29)(v17, v30, v18);
    v19 = sub_27237725C();
    v20 = sub_272377E6C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2721E4000, v19, v20, "Finishing input stream", v21, 2u);
      MEMORY[0x2743C69C0](v21, -1, -1);
    }

    v22 = v0[12];
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[7];
    v26 = v0[8];

    v15(v22, v23);
    sub_272377C7C();
    (*(v26 + 8))(v24, v25);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_2722612D0(uint64_t a1)
{
  v3 = sub_2721F065C(&qword_280881F80, &qword_27237E338);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_2721F065C(&qword_280882040, &unk_27237E470);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D837D0];
  *(v6 + 16) = xmmword_27237AF80;
  *(v6 + 56) = v7;
  *(v6 + 32) = 0x6B636F6C626E75;
  *(v6 + 40) = 0xE700000000000000;
  sub_27237872C();

  v8 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, a1, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  v10 = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  swift_beginAccess();
  sub_27226A7E8(v5, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_272261474()
{
  v1 = sub_2721F065C(&qword_280881F80, &qword_27237E338);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  sub_2721F065C(&qword_280882040, &unk_27237E470);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D837D0];
  *(v4 + 16) = xmmword_27237AF80;
  *(v4 + 56) = v5;
  *(v4 + 32) = 0x6B636F6C62;
  *(v4 + 40) = 0xE500000000000000;
  sub_27237872C();

  v6 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  swift_beginAccess();
  sub_27226A7E8(v3, v0 + v7);
  return swift_endAccess();
}

uint64_t sub_2722615D4()
{
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder, &qword_280881F80, &qword_27237E338);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_272261624()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  v2 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_2722616F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_inputStreamActor;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272261884(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

char *VASpeechAPISpotterV2.init(delegate:asrDelegate:speechDetectorDelegate:stringMatchingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a1;
  *&v4[OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechAnalyzer] = 0;
  v9 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_inputStreamActor;
  type metadata accessor for VAInputStreamActor(0);
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  v12 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *&v5[v9] = v10;
  *&v5[OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_processSpeechApiResultsTask] = 0;
  *&v5[OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_sendAudioToSpeechApiTask] = 0;
  v13 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_asrDelegate;
  *&v5[OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_asrDelegate] = 0;
  v14 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechDetectorDelegate;
  *&v5[OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechDetectorDelegate] = 0;
  v15 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechEnded;
  type metadata accessor for SharedBool();
  *&v5[v15] = sub_272244CEC(0, 0x6E45686365657073, 0xEB00000000646564);
  v20 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_gotFinalResult;
  *&v5[v20] = sub_272244CEC(0, 0x6C616E6946746F67, 0xEE00746C75736552);
  v19 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_gotPartialResult;
  *&v5[v19] = sub_272244CEC(0, 0xD000000000000010, 0x800000027238AA40);
  *&v5[v13] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v5[v14] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v5[OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_stringMatchingStrategy] = a4;
  type metadata accessor for VAConfiguration();

  v16 = static VAConfiguration.buildForSpeechApiV2()();
  if (v21)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    type metadata accessor for VASpeechAPISpotterV2();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v16;
    sub_272335304(v22);
    v5 = sub_272335390(v23, v17, v22);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_272261CD4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_272245878;
  v2 = swift_continuation_init();
  v0[17] = sub_2721F065C(&qword_280881F60, &qword_27237E308);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2722459C4;
  v0[13] = &unk_28817E8A8;
  v0[14] = v2;
  [v1 installedLanguagesForTaskHint:1009 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t static VASpeechAPISpotterV2.downloadGeneralASRModel(progress:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x2822009F8](sub_272261E20, 0, 0);
}

uint64_t sub_272261E20()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v1[20];
  v4 = v1[21];
  v6 = objc_allocWithZone(MEMORY[0x277CDCE88]);
  v7 = sub_2723777FC();
  v8 = [v6 initWithLanguage:v7 assetType:7];
  v1[22] = v8;

  v15 = objc_opt_self();
  v9 = sub_2723777FC();
  v1[23] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  v1[14] = sub_272252A2C;
  v1[15] = v10;
  v11 = MEMORY[0x277D85DD0];
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_272245EC4;
  v1[13] = &unk_28817E8F8;
  v12 = _Block_copy(v3);
  v1[24] = v12;

  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_272245CA4;
  v13 = swift_continuation_init();
  v1[17] = sub_2721F065C(&qword_280881F68, &qword_27237E318);
  v1[10] = v11;
  v1[11] = 1107296256;
  v1[12] = sub_272245F18;
  v1[13] = &unk_28817E920;
  v1[14] = v13;
  [v15 fetchAssetWithConfig:v8 clientIdentifier:v9 progress:v12 completion:v3];

  return MEMORY[0x282200938](v2);
}

unint64_t sub_272262090(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v53 - v5;
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for VARuntimeParameters(0);
  v10 = MEMORY[0x28223BE20](v56);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  type metadata accessor for VAStrategyLayerPassthrough(0);
  sub_272216374(a1, v14);
  v15 = swift_unknownObjectRetain();
  v55 = v14;
  v16 = sub_2723457E8(v15, &protocol witness table for VAKeywordSpotterBase, v14);
  v17 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x158))(v16);
  v18 = sub_2722C389C();
  v57 = v7;
  v58 = v6;
  (*(v7 + 16))(v9, v18, v6);
  v59 = a1;
  sub_272216374(a1, v12);
  v19 = sub_27237725C();
  v20 = sub_272377EAC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v61 = v22;
    *v21 = 136315138;
    sub_27226AC10(&qword_2808821A8, type metadata accessor for VARuntimeParameters, &protocol conformance descriptor for VARuntimeParameters);
    v23 = sub_27237862C();
    v25 = v24;
    sub_27226ABB0(v12, type metadata accessor for VARuntimeParameters);
    v26 = sub_2721FFD04(v23, v25, &v61);
    v17 = MEMORY[0x277D85000];

    *(v21 + 4) = v26;
    _os_log_impl(&dword_2721E4000, v19, v20, "start Flexibile spotter: %s", v21, 0xCu);
    sub_2722039C8(v22);
    MEMORY[0x2743C69C0](v22, -1, -1);
    MEMORY[0x2743C69C0](v21, -1, -1);
  }

  else
  {

    sub_27226ABB0(v12, type metadata accessor for VARuntimeParameters);
  }

  (*(v57 + 8))(v9, v58);
  v27 = v59;
  if ((VARuntimeParameters.allKeywordsAreValid.getter() & 1) == 0)
  {
    v44 = 0x80000002723888A0;
    sub_2722032B4();
    v45 = swift_allocError();
    v47 = 0xD00000000000006DLL;
LABEL_12:
    *v46 = v47;
    v46[1] = v44;
    v60 = v45;
    swift_willThrow();
    return v44;
  }

  v28 = (*((*v17 & *v2) + 0x78))();
  if (!v28)
  {
    v44 = 0x8000000272388910;
    sub_2722032B4();
    v45 = swift_allocError();
    v47 = 0xD000000000000011;
    goto LABEL_12;
  }

  v29 = v28;
  type metadata accessor for VARequestContext(0);
  v30 = v55;
  sub_272216374(v27, v55);
  v31 = v29;
  v32 = sub_272232E00(v31, v30);
  v33 = (*((*v17 & *v2) + 0x128))(v32);
  v34 = (*((*v17 & *v2) + 0x120))(v33);
  if (v34)
  {
    v35 = v17;
    v36 = v34;
    v37 = sub_272377C3C();
    v38 = v54;
    (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v39;
    v40[5] = v36;

    v41 = sub_272262CC0(0, 0, v38, &unk_27237EB50, v40);
    v42 = (*((*v35 & *v2) + 0x140))(v41);
    v43 = (*((*v35 & *v2) + 0x138))(v42);
    if (v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = 0x8000000272388930;
      sub_2722032B4();
      v51 = swift_allocError();
      *v52 = 0xD00000000000001DLL;
      v52[1] = 0x8000000272388930;
      v60 = v51;
      swift_willThrow();
    }
  }

  else
  {
    v44 = 0x800000027238B430;
    sub_2722032B4();
    v49 = swift_allocError();
    *v50 = 0xD00000000000001DLL;
    v50[1] = 0x800000027238B430;
    v60 = v49;
    swift_willThrow();
  }

  return v44;
}

uint64_t sub_2722627BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_27237728C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27226288C, 0, 0);
}

uint64_t sub_27226288C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_272262A68;
    v3 = v0[7];

    return sub_272262F64(v3);
  }

  else
  {
    v5 = v0[11];
    v6 = v0[8];
    v7 = v0[9];
    v8 = sub_2722C389C();
    (*(v7 + 16))(v5, v8, v6);
    v9 = sub_27237725C();
    v10 = sub_272377E6C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2721E4000, v9, v10, "startProcessingAudio() is done", v11, 2u);
      MEMORY[0x2743C69C0](v11, -1, -1);
    }

    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[5];

    (*(v14 + 8))(v12, v13);
    *v15 = 1;

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_272262A68()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_27226AE54;
  }

  else
  {

    v3 = sub_272262B84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_272262B84(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[8];
  v4 = v1[9];
  v5 = sub_2722C389C();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_27237725C();
  v7 = sub_272377E6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "startProcessingAudio() is done", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  v9 = v1[11];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[5];

  (*(v11 + 8))(v9, v10);
  *v12 = 1;

  v13 = v1[1];

  return v13();
}

uint64_t sub_272262CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2721F07F4(a3, v22 - v9, &qword_2808819D8, &qword_27237CB50);
  v11 = sub_272377C3C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2721F40F0(v10, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_272377BDC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2723778BC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_272262F64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272263000, 0, 0);
}

uint64_t sub_272263000()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_272377C3C();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = v3;

  v8 = sub_272262CC0(0, 0, v1, &unk_27237EC10, v7);
  v9 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x310))(v8);
  v5(v1, 1, 1, v4);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v3;

  v12 = sub_272262CC0(0, 0, v1, &unk_27237EC20, v11);
  v13 = (*((*v9 & *v2) + 0x2F8))(v12);
  v14 = (*((*v9 & *v2) + 0x308))(v13);
  v0[5] = v14;
  if (v14)
  {
    v15 = v14;
    v16 = swift_task_alloc();
    v0[6] = v16;
    v17 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    *v16 = v0;
    v16[1] = sub_272263458;
    v18 = MEMORY[0x277D839B0];
    v19 = MEMORY[0x277D84950];
    v20 = v0 + 11;
LABEL_5:

    return MEMORY[0x282200430](v20, v15, v18, v17, v19);
  }

  v21 = (*((*v9 & *v0[3]) + 0x2F0))();
  v0[8] = v21;
  if (v21)
  {
    v15 = v21;
    v22 = swift_task_alloc();
    v0[9] = v22;
    v17 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    *v22 = v0;
    v22[1] = sub_27226372C;
    v18 = MEMORY[0x277D839B0];
    v19 = MEMORY[0x277D84950];
    v20 = (v0 + 89);
    goto LABEL_5;
  }

  (*((*v9 & *v0[3]) + 0x220))();

  v23 = v0[1];

  return v23();
}

uint64_t sub_272263458()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_272263920;
  }

  else
  {
    v2 = sub_27226358C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27226358C()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x2F0))();
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    v5 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    *v4 = v0;
    v4[1] = sub_27226372C;
    v6 = MEMORY[0x277D839B0];
    v7 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 89, v3, v6, v5, v7);
  }

  else
  {
    (*((*v1 & **(v0 + 24)) + 0x220))();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_27226372C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_272263984;
  }

  else
  {
    v2 = sub_272263860;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272263860()
{
  (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x220))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272263920()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272263984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722639E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  v6 = sub_27237728C();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272263AB8, 0, 0);
}

uint64_t sub_272263AB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 152) = v2;
    *v2 = v0;
    v2[1] = sub_272263EB0;
    v3 = *(v0 + 104);

    return sub_2722652D4(v3);
  }

  else
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = sub_2722C389C();
    (*(v7 + 16))(v5, v8, v6);
    v9 = sub_27237725C();
    v10 = sub_272377E6C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2721E4000, v9, v10, "sendAudioToSpeechApiTask() is done", v11, 2u);
      MEMORY[0x2743C69C0](v11, -1, -1);
    }

    v12 = *(v0 + 136);
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);

    (*(v14 + 8))(v12, v13);
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = (*((*MEMORY[0x277D85000] & *v15) + 0x2D8))();
      *(v0 + 168) = v17;

      v24 = (*(*v17 + 128) + **(*v17 + 128));
      v18 = swift_task_alloc();
      *(v0 + 176) = v18;
      *v18 = v0;
      v18[1] = sub_272264324;

      return v24();
    }

    else
    {
      swift_beginAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19 && (v20 = *(v19 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechAnalyzer), *(v0 + 192) = v20, v21 = v19, , v21, v20))
      {
        v22 = swift_task_alloc();
        *(v0 + 200) = v22;
        *v22 = v0;
        v22[1] = sub_272264568;

        return MEMORY[0x28212BBF0]();
      }

      else
      {
        **(v0 + 88) = 1;

        v23 = *(v0 + 8);

        return v23();
      }
    }
  }
}

uint64_t sub_272263EB0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_2722646FC;
  }

  else
  {

    v3 = sub_272263FCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_272263FCC(uint64_t a1)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = sub_2722C389C();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_27237725C();
  v7 = sub_272377E6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "sendAudioToSpeechApiTask() is done", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  v9 = *(v1 + 136);
  v10 = *(v1 + 112);
  v11 = *(v1 + 120);

  (*(v11 + 8))(v9, v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = (*((*MEMORY[0x277D85000] & *Strong) + 0x2D8))();
    *(v1 + 168) = v14;

    v22 = (*(*v14 + 128) + **(*v14 + 128));
    v15 = swift_task_alloc();
    *(v1 + 176) = v15;
    *v15 = v1;
    v15[1] = sub_272264324;

    return v22();
  }

  else
  {
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17 && (v18 = *(v17 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechAnalyzer), *(v1 + 192) = v18, v19 = v17, , v19, v18))
    {
      v20 = swift_task_alloc();
      *(v1 + 200) = v20;
      *v20 = v1;
      v20[1] = sub_272264568;

      return MEMORY[0x28212BBF0]();
    }

    else
    {
      **(v1 + 88) = 1;

      v21 = *(v1 + 8);

      return v21();
    }
  }
}

uint64_t sub_272264324()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2722648B0;
  }

  else
  {

    v2 = sub_272264440;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272264440()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechAnalyzer), *(v0 + 192) = v2, v3 = Strong, , v3, v2))
  {
    v4 = swift_task_alloc();
    *(v0 + 200) = v4;
    *v4 = v0;
    v4[1] = sub_272264568;

    return MEMORY[0x28212BBF0]();
  }

  else
  {
    **(v0 + 88) = 1;

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_272264568()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_272264A64;
  }

  else
  {

    v2 = sub_272264684;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272264684()
{
  **(v0 + 88) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722646FC()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error processing audio: %@", v9, 0xCu);
    sub_2721F40F0(v10, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v10, -1, -1);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v13 = *(v0 + 128);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);

  (*(v15 + 8))(v13, v14);
  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2722648B0()
{

  v1 = v0[23];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error processing audio: %@", v9, 0xCu);
    sub_2721F40F0(v10, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v10, -1, -1);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v13 = v0[16];
  v14 = v0[14];
  v15 = v0[15];

  (*(v15 + 8))(v13, v14);
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_272264A64()
{

  v1 = v0[26];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error processing audio: %@", v9, 0xCu);
    sub_2721F40F0(v10, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v10, -1, -1);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v13 = v0[16];
  v14 = v0[14];
  v15 = v0[15];

  (*(v15 + 8))(v13, v14);
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_272264C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_27237728C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272264CE8, 0, 0);
}

uint64_t sub_272264CE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_272264EC4;
    v3 = v0[7];

    return sub_272266018(v3);
  }

  else
  {
    v5 = v0[11];
    v6 = v0[8];
    v7 = v0[9];
    v8 = sub_2722C389C();
    (*(v7 + 16))(v5, v8, v6);
    v9 = sub_27237725C();
    v10 = sub_272377E6C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2721E4000, v9, v10, "processSpeechApiResults() is done", v11, 2u);
      MEMORY[0x2743C69C0](v11, -1, -1);
    }

    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[5];

    (*(v14 + 8))(v12, v13);
    *v15 = 1;

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_272264EC4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_27226511C;
  }

  else
  {

    v3 = sub_272264FE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_272264FE0(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[8];
  v4 = v1[9];
  v5 = sub_2722C389C();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_27237725C();
  v7 = sub_272377E6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "processSpeechApiResults() is done", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  v9 = v1[11];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[5];

  (*(v11 + 8))(v9, v10);
  *v12 = 1;

  v13 = v1[1];

  return v13();
}

uint64_t sub_27226511C()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error processing audio: %@", v10, 0xCu);
    sub_2721F40F0(v11, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v11, -1, -1);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);

  (*(v16 + 8))(v14, v15);
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2722652D4(uint64_t *a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = sub_2723773DC();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v5 = sub_27237728C();
  v2[7] = v5;
  v2[8] = *(v5 - 8);
  v2[9] = swift_task_alloc();
  v6 = *a1;
  v7 = *(*a1 + 368);
  v2[10] = v7;
  v2[11] = (v6 + 368) & 0xFFFFFFFFFFFFLL | 0x454C000000000000;
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v2[12] = v8;
  *v8 = v2;
  v8[1] = sub_2722654C4;

  return v10();
}

uint64_t sub_2722654C4(char a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_2722655C4, 0, 0);
}

uint64_t sub_2722655C4()
{
  if (*(v0 + 184))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = sub_27222CD4C();
    v6 = (*(*v3 + 384) + **(*v3 + 384));
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_272265754;

    return v6(0, 1, v4 & 1);
  }
}

uint64_t sub_272265754(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;

    return MEMORY[0x2822009F8](sub_2722658C4, 0, 0);
  }
}

uint64_t sub_2722658C4()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 112);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3._rawValue = *(v0 + 120);
  }

  else
  {
    v3._rawValue = MEMORY[0x277D84F90];
  }

  if (*(v3._rawValue + 2))
  {
    v4 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x2D8))();
    *(v0 + 136) = v4;
    convert(audioBytes:)(v3);

    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      CMTimeMake((v0 + 160), v2, 1);
      sub_2723773BC();
      v20 = (*(*v4 + 120) + **(*v4 + 120));
      v6 = swift_task_alloc();
      *(v0 + 144) = v6;
      *v6 = v0;
      v6[1] = sub_272265D94;
      v7 = *(v0 + 48);

      return v20(v7);
    }
  }

  else
  {
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v10 = *(v0 + 56);

    v11 = sub_2722C389C();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_27237725C();
    v13 = sub_272377EAC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2721E4000, v12, v13, "Stop(): processing was stopped, break out of sendAudioToSpeechApi()", v14, 2u);
      MEMORY[0x2743C69C0](v14, -1, -1);
    }

    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 56);
    v18 = *(v0 + 16);

    (*(v16 + 8))(v15, v17);
    v21 = (*(*v18 + 360) + **(*v18 + 360));
    v19 = swift_task_alloc();
    *(v0 + 128) = v19;
    *v19 = v0;
    v19[1] = sub_272265C64;

    return v21();
  }

  return result;
}

uint64_t sub_272265C64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_272265D94()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    return MEMORY[0x2822009F8](sub_272265FA8, 0, 0);
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v5 = (v2[10] + *v2[10]);
    v3 = swift_task_alloc();
    v2[12] = v3;
    *v3 = v2;
    v3[1] = sub_2722654C4;

    return v5();
  }
}

uint64_t sub_272265FA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272266018(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = sub_272376C2C();
  v2[27] = swift_task_alloc();
  v3 = sub_272376C3C();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v4 = sub_2723773FC();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v5 = sub_27237736C();
  v2[35] = v5;
  v2[36] = *(v5 - 8);
  v2[37] = swift_task_alloc();
  sub_2721F065C(&qword_280882018, &unk_27237EBF0);
  v2[38] = swift_task_alloc();
  v2[39] = sub_2721F065C(&qword_280882020, &unk_27237E460);
  v2[40] = swift_task_alloc();
  v6 = sub_2721F065C(&qword_280882028, &qword_27237EC00);
  v2[41] = v6;
  v2[42] = *(v6 - 8);
  v2[43] = swift_task_alloc();
  v7 = sub_27237728C();
  v2[44] = v7;
  v2[45] = *(v7 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v8 = sub_27237768C();
  v2[54] = v8;
  v2[55] = *(v8 - 8);
  v2[56] = swift_task_alloc();
  v9 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v2[57] = v9;
  v2[58] = *(v9 - 8);
  v2[59] = swift_task_alloc();
  type metadata accessor for VASpeechBiasData(0);
  v2[60] = swift_task_alloc();
  v10 = sub_272376EBC();
  v2[61] = v10;
  v2[62] = *(v10 - 8);
  v2[63] = swift_task_alloc();
  v2[64] = type metadata accessor for VARuntimeParameters(0);
  v2[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722664D4, 0, 0);
}

char *sub_2722664D4()
{
  v1 = *(v0 + 520);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 488);
  v5 = *(v0 + 496);
  v6 = *(v0 + 200);
  (*(**(v0 + 192) + 312))();
  v7 = *(v6 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_stringMatchingStrategy);
  *(v0 + 528) = v7;
  v8 = *(v2 + 108);
  *(v0 + 856) = v8;
  (*(v5 + 16))(v3, v1 + v8, v4);
  (*(*v7 + 264))(v3);
  v9 = *(v1 + 80);
  if (*(v9 + 16))
  {
    v10 = v9 + 64;
    v11 = -1;
    v12 = -1 << *(v9 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v9 + 64);
    v14 = (63 - v12) >> 6;

    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    v45 = result;
    while (v13)
    {
LABEL_11:
      v19 = *(*(result + 7) + ((v16 << 9) | (8 * __clz(__rbit64(v13)))));
      v20 = *(v19 + 16);
      v21 = *(v17 + 2);
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        goto LABEL_37;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v22 > *(v17 + 3) >> 1)
      {
        if (v21 <= v22)
        {
          v23 = v21 + v20;
        }

        else
        {
          v23 = v21;
        }

        result = sub_2721FFBF8(result, v23, 1, v17);
        v17 = result;
      }

      v13 &= v13 - 1;
      if (*(v19 + 16))
      {
        if ((*(v17 + 3) >> 1) - *(v17 + 2) < v20)
        {
          goto LABEL_39;
        }

        swift_arrayInitWithCopy();

        result = v45;
        if (v20)
        {
          v24 = *(v17 + 2);
          v25 = __OFADD__(v24, v20);
          v26 = v24 + v20;
          if (v25)
          {
            goto LABEL_40;
          }

          *(v17 + 2) = v26;
        }
      }

      else
      {

        result = v45;
        if (v20)
        {
          goto LABEL_38;
        }
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        goto LABEL_24;
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v16 = v18;
        goto LABEL_11;
      }
    }

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

  else
  {
    v32 = *(v0 + 520);
    v33 = *v32;
    v34 = *(*v32 + 16);
    if (v34)
    {
      sub_272203AC4();
      v17 = MEMORY[0x277D84F90];
      v35 = (v33 + 40);
      do
      {
        v36 = *v35;
        *(v0 + 120) = *(v35 - 1);
        *(v0 + 128) = v36;
        *(v0 + 136) = 95;
        *(v0 + 144) = 0xE100000000000000;
        *(v0 + 152) = 32;
        *(v0 + 160) = 0xE100000000000000;
        v37 = sub_2723780FC();
        v39 = sub_2722D6FA4(v37, v38);
        v41 = v40;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_2721FFBF8(0, *(v17 + 2) + 1, 1, v17);
        }

        v43 = *(v17 + 2);
        v42 = *(v17 + 3);
        if (v43 >= v42 >> 1)
        {
          v17 = sub_2721FFBF8((v42 > 1), v43 + 1, 1, v17);
        }

        *(v17 + 2) = v43 + 1;
        v44 = &v17[16 * v43];
        *(v44 + 4) = v39;
        *(v44 + 5) = v41;
        v35 += 2;
        --v34;
      }

      while (v34);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

LABEL_24:
    *(v0 + 536) = v17;
    v27 = *(v0 + 192);
    *(v0 + 869) = *(*(v0 + 520) + 89);
    *(v0 + 544) = VARuntimeParameters.asrMatchToKeywords()();
    v28 = *v27;
    v29 = *(*v27 + 368);
    *(v0 + 552) = v29;
    *(v0 + 560) = (v28 + 368) & 0xFFFFFFFFFFFFLL | 0x454C000000000000;
    *(v0 + 568) = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechAnalyzer;
    *(v0 + 576) = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_gotPartialResult;
    *(v0 + 584) = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_gotFinalResult;
    *(v0 + 592) = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_asrDelegate;
    *(v0 + 600) = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechEnded;
    v30 = MEMORY[0x277CDCBA0];
    *(v0 + 860) = *MEMORY[0x277CDCBB8];
    *(v0 + 864) = *v30;
    v46 = (v29 + *v29);
    v31 = swift_task_alloc();
    *(v0 + 608) = v31;
    *v31 = v0;
    v31[1] = sub_2722669D4;

    return v46();
  }

  return result;
}

uint64_t sub_2722669D4(char a1)
{
  *(*v1 + 870) = a1;

  return MEMORY[0x2822009F8](sub_272266AD4, 0, 0);
}

uint64_t sub_272266AD4()
{
  if (*(v0 + 870))
  {
    v1 = *(v0 + 520);

    sub_27226ABB0(v1, type metadata accessor for VARuntimeParameters);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v8 = (*((*MEMORY[0x277D85000] & **(v0 + 200)) + 0x258) + **((*MEMORY[0x277D85000] & **(v0 + 200)) + 0x258));
    v4 = swift_task_alloc();
    *(v0 + 616) = v4;
    *v4 = v0;
    v4[1] = sub_272266DB0;
    v5 = *(v0 + 536);
    v6 = *(v0 + 520);
    v7 = *(v0 + 480);

    return v8(v7, v5, v6);
  }
}

uint64_t sub_272266DB0()
{
  *(*v1 + 624) = v0;

  if (v0)
  {

    v2 = sub_272269664;
  }

  else
  {
    v2 = sub_272266ED8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272266ED8()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 520);
  v3 = *(v0 + 448);
  type metadata accessor for VASpeechAPI();
  VATaskHintCommand.speechTaskHint()(v3);
  *(v0 + 868) = *(v2 + 88);
  v4 = swift_task_alloc();
  *(v0 + 632) = v4;
  *v4 = v0;
  v4[1] = sub_272266FC8;
  v5 = *(v0 + 536);
  v6 = *(v0 + 472);
  v7 = *(v0 + 480);
  v8 = *(v0 + 448);

  return static VASpeechAPI.prepareTranscriber(taskHint:uniqueNames:locale:biasOptions:biasData:)(v6, v8, v5, v2 + v1, (v0 + 868), v7);
}

uint64_t sub_272266FC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[80] = a1;
  v4[81] = a2;
  v4[82] = v2;

  (*(v4[55] + 8))(v4[56], v4[54]);
  if (v2)
  {

    v5 = sub_2722697FC;
  }

  else
  {
    v5 = sub_272267134;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_272267134()
{
  v1 = v0[25];
  *(v1 + v0[71]) = v0[80];

  v2 = sub_272377C5C();
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + 0x2D8);
  v0[83] = v4;
  v0[84] = (v3 + 728) & 0xFFFFFFFFFFFFLL | 0x2DD4000000000000;
  v5 = v4(v2);
  v0[85] = v5;
  v6 = *v5 + 136;
  v0[86] = *v6;
  v0[87] = v6 & 0xFFFFFFFFFFFFLL | 0x65F000000000000;

  return MEMORY[0x2822009F8](sub_272267264, v5, 0);
}

uint64_t sub_272267264()
{
  (*(v0 + 688))(*(v0 + 472));

  return MEMORY[0x2822009F8](sub_2722672E0, 0, 0);
}

uint64_t sub_2722672E0(uint64_t a1)
{
  v2 = v1[53];
  v3 = v1[44];
  v4 = v1[45];
  v5 = sub_2722C389C();
  v1[88] = v5;
  v6 = *(v4 + 16);
  v1[89] = v6;
  v1[90] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_27237725C();
  v8 = sub_272377E7C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2721E4000, v7, v8, "Speech API actively listening", v9, 2u);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v10 = v1[53];
  v11 = v1[44];
  v12 = v1[45];

  v13 = *(v12 + 8);
  v1[91] = v13;
  v13(v10, v11);
  sub_27237738C();
  v1[92] = swift_getOpaqueTypeConformance2();
  sub_272377D0C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_task_alloc();
  v1[93] = v15;
  *v15 = v1;
  v15[1] = sub_2722674E0;
  v16 = v1[41];
  v17 = v1[38];

  return MEMORY[0x282200310](v17, 0, 0, v1 + 21, v16, AssociatedConformanceWitness);
}

uint64_t sub_2722674E0()
{
  *(*v1 + 752) = v0;

  if (v0)
  {

    v2 = sub_2722699B0;
  }

  else
  {
    v2 = sub_272267608;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272267608()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[59];
    v4 = v0[60];
    v6 = v0[57];
    v7 = v0[58];
    v9 = v0[42];
    v8 = v0[43];
    v10 = v0[41];

    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v5, v6);
    sub_27226ABB0(v4, type metadata accessor for VASpeechBiasData);
    v17 = (v0[69] + *v0[69]);
    v11 = swift_task_alloc();
    v0[76] = v11;
    *v11 = v0;
    v11[1] = sub_2722669D4;

    return v17();
  }

  else
  {
    v13 = v0[83];
    v14 = (*(v3 + 32))(v0[37], v1, v2);
    v15 = v13(v14);
    v0[95] = v15;
    v16 = *v15 + 144;
    v0[96] = *v16;
    v0[97] = v16 & 0xFFFFFFFFFFFFLL | 0x4D8B000000000000;

    return MEMORY[0x2822009F8](sub_272267848, v15, 0);
  }
}

uint64_t sub_272267848()
{
  (*(v0 + 768))();

  return MEMORY[0x2822009F8](sub_2722678C0, 0, 0);
}

uint64_t sub_2722678C0(uint64_t a1)
{
  v231 = v1;
  v225 = *(v1 + 864);
  v2 = *(v1 + 860);
  v4 = *(v1 + 264);
  v3 = *(v1 + 272);
  v5 = *(v1 + 248);
  v6 = *(v1 + 256);
  sub_27237734C();
  v7 = *(v6 + 104);
  v7(v4, v2, v5);
  v8 = sub_2723773EC();
  v9 = *(v6 + 8);
  v9(v4, v5);
  v9(v3, v5);
  sub_27237734C();
  v7(v4, v225, v5);
  v10 = sub_2723773EC();
  v9(v4, v5);
  v11 = (v9)(v3, v5);
  LOBYTE(v197) = v10;
  BYTE4(v197) = v8;
  v12 = v8 | v10;
  if (((v8 | v10) & 1) == 0)
  {
    v13 = *(**(*(v1 + 200) + *(v1 + 576)) + 168);

    v13(1);
  }

  v14 = *(MEMORY[0x2743C44B0](v11) + 16);

  if (!v14)
  {
    (*(*(v1 + 288) + 8))(*(v1 + 296), *(v1 + 280));
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = swift_task_alloc();
    *(v1 + 744) = v32;
    *v32 = v1;
    v32[1] = sub_2722674E0;
    v33 = *(v1 + 328);
    v34 = *(v1 + 304);

    return MEMORY[0x282200310](v34, 0, 0, v1 + 168, v33, AssociatedConformanceWitness);
  }

  v221 = v12;
  *(v1 + 176) = MEMORY[0x277D84F90];
  v16 = MEMORY[0x2743C44B0](v15);
  v17 = *(v16 + 16);
  v208 = v1;
  if (v17)
  {
    v18 = *(v1 + 232);
    v19 = v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v226 = *(v18 + 72);
    v20 = *(v18 + 16);
    v21 = MEMORY[0x277D84F90];
    do
    {
      v23 = *(v1 + 232);
      v22 = *(v1 + 240);
      v24 = *(v1 + 224);
      v20(v22, v19, v24);
      sub_272376C1C();
      (*(v23 + 8))(v22, v24);
      sub_27226AC10(&qword_280882030, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
      v25 = sub_272377A3C();
      v27 = v26;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2721FFBF8(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_2721FFBF8((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;
      v1 = v208;
      *(v208 + 176) = v21;
      swift_endAccess();
      v19 += v226;
      --v17;
    }

    while (v17);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  *(v1 + 784) = v21;
  (*(v1 + 712))(*(v1 + 416), *(v1 + 704), *(v1 + 352));
  v35 = sub_27237725C();
  v36 = sub_272377E6C();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v1 + 728);
  v39 = *(v1 + 416);
  v40 = *(v1 + 352);
  if (v37)
  {
    v41 = swift_slowAlloc();
    v218 = v38;
    v42 = swift_slowAlloc();
    *&v230[0] = v42;
    *v41 = 67109634;
    *(v41 + 4) = BYTE4(v197) & 1;
    *(v41 + 8) = 1024;
    *(v41 + 10) = v197 & 1;
    *(v41 + 14) = 2080;

    v44 = MEMORY[0x2743C4C60](v43, MEMORY[0x277D837D0]);
    v46 = v45;
    v47 = v21;

    v48 = sub_2721FFD04(v44, v46, v230);

    *(v41 + 16) = v48;
    _os_log_impl(&dword_2721E4000, v35, v36, "nBest[isFinal %{BOOL}d isFinalTerminal: %{BOOL}d]: %s", v41, 0x18u);
    sub_2722039C8(v42);
    MEMORY[0x2743C69C0](v42, -1, -1);
    MEMORY[0x2743C69C0](v41, -1, -1);

    v218(v39, v40);
  }

  else
  {
    v47 = v21;

    v38(v39, v40);
  }

  v49 = v208;
  v50 = v47;
  if ((v221 & 1) == 0)
  {
    if (*(*(v208 + 520) + 77) != 1)
    {
      v162 = *(**(*(v208 + 200) + *(v208 + 576)) + 160);

      v164 = v162(v163);

      if ((v164 & 1) == 0)
      {
        (*(v208 + 712))(*(v208 + 368), *(v208 + 704), *(v208 + 352));
        v166 = sub_27237725C();
        v167 = sub_272377E7C();
        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          *v168 = 0;
          _os_log_impl(&dword_2721E4000, v166, v167, "Got first partial result after speech ended", v168, 2u);
          MEMORY[0x2743C69C0](v168, -1, -1);
        }

        v169 = *(v208 + 728);
        v170 = *(v208 + 584);
        v171 = *(v208 + 576);
        v172 = *(v208 + 368);
        v173 = *(v208 + 352);
        v174 = *(v208 + 200);

        v169(v172, v173);
        v175 = *(**(v174 + v171) + 168);

        v175(1);

        v176 = *(**(v174 + v170) + 168);

        v176(0);
      }

      v177 = (*(v208 + 664))(v165);
      *(v208 + 832) = v177;
      v178 = *v177 + 136;
      *(v208 + 840) = *v178;
      *(v208 + 848) = v178 & 0xFFFFFFFFFFFFLL | 0x65F000000000000;

      return MEMORY[0x2822009F8](sub_2722694F0, v177, 0);
    }

    v197 = 0;
  }

  v51 = *(v47 + 2);
  v199 = v51;
  if (v51)
  {
    v198 = v47 + 32;
    v196 = *(v208 + 752);

    v195 = 0;
    v52 = 0;
    while (2)
    {
      if (v52 >= *(v50 + 2))
      {
        __break(1u);
        return MEMORY[0x28212BBF0]();
      }

      v201 = v50;
      v53 = *(v49 + 544);
      v54 = &v198[16 * v52];
      v55 = v54[1];
      v219 = *v54;
      v200 = (v52 + 1);
      v56 = -1 << *(v53 + 32);
      if (-v56 < 64)
      {
        v57 = ~(-1 << -v56);
      }

      else
      {
        v57 = -1;
      }

      v58 = v57 & *(v53 + 64);
      v59 = (63 - v56) >> 6;

      v60 = 0;
      v202 = v59;
      v203 = v55;
      if (v58)
      {
        while (1)
        {
          while (1)
          {
            v61 = *(v49 + 544);
LABEL_38:
            v63 = (v60 << 10) | (16 * __clz(__rbit64(v58)));
            v64 = (*(v61 + 48) + v63);
            v66 = *v64;
            v65 = v64[1];
            v67 = (*(v61 + 56) + v63);
            v68 = v67[1];
            v227 = *v67;
            (*(v49 + 712))(*(v49 + 408), *(v49 + 704), *(v49 + 352));
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();

            v69 = sub_27237725C();
            v70 = sub_272377E7C();

            v222 = v68;

            v71 = os_log_type_enabled(v69, v70);
            v210 = *(v49 + 408);
            v215 = *(v49 + 728);
            v72 = *(v49 + 352);
            if (v71)
            {
              v204 = v65;
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              *&v230[0] = v74;
              *v73 = 136315650;
              *(v73 + 4) = sub_2721FFD04(v66, v204, v230);
              *(v73 + 12) = 2080;
              *(v73 + 14) = sub_2721FFD04(v227, v222, v230);
              *(v73 + 22) = 2080;
              v75 = sub_2723778AC();
              v77 = sub_2721FFD04(v75, v76, v230);
              v55 = v203;

              *(v73 + 24) = v77;
              _os_log_impl(&dword_2721E4000, v69, v70, "Looking for %s - would match keyword %s - in %s", v73, 0x20u);
              swift_arrayDestroy();
              v78 = v74;
              v49 = v208;
              MEMORY[0x2743C69C0](v78, -1, -1);
              v79 = v73;
              v65 = v204;
              MEMORY[0x2743C69C0](v79, -1, -1);
            }

            v215(v210, v72);
            v216 = (v58 - 1) & v58;
            v80 = *(v49 + 528);
            v211 = (*(*v80 + 288))(v66, v65, v219, v55);
            v81 = (*(*v80 + 296))(v66, v65, v219, v55);

            v82 = sub_272241A18();
            v83 = sub_272241A18();
            v84 = sub_272324094();
            v85 = sub_272324094();
            sub_27232409C(v227, v222, v84, v85, v211 & 1, v81 & 1, 1, 0, v230, 1.0, v82, v83, 0);
            v86 = v230[3];
            *(v49 + 48) = v230[2];
            *(v49 + 64) = v86;
            *(v49 + 80) = v230[4];
            v87 = v230[1];
            *(v49 + 16) = v230[0];
            *(v49 + 32) = v87;
            v205 = v66;
            v88 = v66;
            v89 = v65;
            v90 = (*(*v80 + 280))(v88, v65, v219, v55);
            v91 = v55;
            v92 = *(v49 + 712);
            v93 = *(v49 + 704);
            v94 = *(v49 + 352);
            if (v90)
            {
              break;
            }

            v95 = *(v49 + 384);
            sub_27226AC58(v49 + 16);
            v92(v95, v93, v94);
            v55 = v91;

            v96 = v89;

            v97 = sub_27237725C();
            v98 = sub_272377E7C();

            v99 = os_log_type_enabled(v97, v98);
            v100 = *(v49 + 728);
            v212 = *(v49 + 384);
            v101 = *(v49 + 352);
            if (v99)
            {
              v102 = swift_slowAlloc();
              v103 = swift_slowAlloc();
              *&v230[0] = v103;
              *v102 = 136315650;
              v104 = sub_2721FFD04(v205, v96, v230);

              *(v102 + 4) = v104;
              *(v102 + 12) = 2080;
              v105 = sub_2721FFD04(v227, v222, v230);

              *(v102 + 14) = v105;
              v55 = v203;
              *(v102 + 22) = 2080;
              *(v102 + 24) = sub_2721FFD04(v219, v203, v230);
              _os_log_impl(&dword_2721E4000, v97, v98, "Did not match %s from keyword %s in %s", v102, 0x20u);
              swift_arrayDestroy();
              v106 = v103;
              v49 = v208;
              MEMORY[0x2743C69C0](v106, -1, -1);
              MEMORY[0x2743C69C0](v102, -1, -1);
            }

            else
            {
            }

            v100(v212, v101);
            v59 = v202;
            v58 = v216;
            if (!v216)
            {
              goto LABEL_34;
            }
          }

          v92(*(v49 + 400), *(v49 + 704), *(v49 + 352));
          v107 = v91;

          v108 = v65;

          v109 = sub_27237725C();
          v110 = sub_272377E7C();

          v111 = os_log_type_enabled(v109, v110);
          v112 = *(v49 + 728);
          v213 = *(v49 + 400);
          v113 = *(v49 + 352);
          if (v111)
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            *&v230[0] = v115;
            *v114 = 136315650;
            v116 = sub_2721FFD04(v205, v108, v230);

            *(v114 + 4) = v116;
            v117 = v112;
            *(v114 + 12) = 2080;
            v118 = sub_2721FFD04(v227, v222, v230);

            *(v114 + 14) = v118;
            v107 = v203;
            *(v114 + 22) = 2080;
            v119 = v219;
            *(v114 + 24) = sub_2721FFD04(v219, v203, v230);
            _os_log_impl(&dword_2721E4000, v109, v110, "Did match %s from keyword %s in %s", v114, 0x20u);
            swift_arrayDestroy();
            v120 = v115;
            v49 = v208;
            MEMORY[0x2743C69C0](v120, -1, -1);
            MEMORY[0x2743C69C0](v114, -1, -1);

            v117(v213, v113);
          }

          else
          {

            v112(v213, v113);
            v119 = v219;
          }

          v58 = v216;
          v121 = *(v49 + 200);
          if (*(v121 + *(v49 + 592)))
          {
            if (!*(v201 + 2) || (v119 != *(v201 + 4) || v107 != *(v201 + 5)) && (sub_27237865C() & 1) == 0)
            {
              (*(v49 + 712))(*(v49 + 392), *(v49 + 704), *(v49 + 352));

              v122 = sub_27237725C();
              v123 = sub_272377E7C();

              v124 = os_log_type_enabled(v122, v123);
              v125 = *(v49 + 728);
              v126 = *(v49 + 392);
              v127 = v107;
              v228 = *(v49 + 352);
              if (v124)
              {
                v128 = swift_slowAlloc();
                v129 = swift_slowAlloc();
                *&v230[0] = v129;
                *v128 = 136315394;
                *(v128 + 4) = sub_2721FFD04(v119, v127, v230);
                *(v128 + 12) = 2080;

                v131 = MEMORY[0x2743C4C60](v130, MEMORY[0x277D837D0]);
                v206 = v126;
                v133 = v132;

                v134 = sub_2721FFD04(v131, v133, v230);

                *(v128 + 14) = v134;
                v119 = v219;
                _os_log_impl(&dword_2721E4000, v122, v123, "Picked final %s from n-best: %s", v128, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x2743C69C0](v129, -1, -1);
                v135 = v128;
                v49 = v208;
                MEMORY[0x2743C69C0](v135, -1, -1);

                v125(v206, v228);
              }

              else
              {

                v125(v126, v228);
              }

              v107 = v127;
            }

            type metadata accessor for VAASRResult();

            v136 = sub_2722E2418(v119, v107, BYTE4(v197) & 1, v197 & 1, 0, 0, 0);

            v121 = *(v49 + 200);
            v195 = v136;
          }

          type metadata accessor for VAKeywordResult();
          sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
          v137 = swift_allocObject();
          v138 = *(v49 + 48);
          v139 = *(v49 + 64);
          v140 = *(v49 + 16);
          v137[3] = *(v49 + 32);
          v137[4] = v138;
          v141 = *(v49 + 80);
          v137[5] = v139;
          v137[6] = v141;
          v137[1] = xmmword_27237AF80;
          v137[2] = v140;
          v142 = VAKeywordResult.__allocating_init(detections:)(v137);
          *(v49 + 184) = v201;

          sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
          sub_272203B18();
          v143 = sub_2723777CC();
          v145 = v144;

          (*((*MEMORY[0x277D85000] & *v121) + 0x3B8))(v142, v119, v203, v143, v145, 1);
          if (v196)
          {
            break;
          }

          v196 = 0;
          v59 = v202;
          v55 = v203;
          if (!v216)
          {
            goto LABEL_34;
          }
        }

LABEL_79:
        v220 = *(v49 + 472);
        v224 = *(v49 + 480);
        v189 = *(v49 + 464);
        v190 = *(v49 + 336);
        v214 = *(v49 + 344);
        v217 = *(v49 + 456);
        v191 = *(v49 + 288);
        v207 = *(v49 + 296);
        v209 = *(v49 + 328);
        v192 = *(v49 + 280);

        (*(v191 + 8))(v207, v192);
        (*(v190 + 8))(v214, v209);
        (*(v189 + 8))(v220, v217);
        sub_27226ABB0(v224, type metadata accessor for VASpeechBiasData);

        sub_27226ABB0(*(v49 + 520), type metadata accessor for VARuntimeParameters);

        v193 = *(v49 + 8);

        return v193();
      }

      while (1)
      {
LABEL_34:
        v62 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          __break(1u);
          goto LABEL_79;
        }

        v61 = *(v49 + 544);
        if (v62 >= v59)
        {
          break;
        }

        v58 = *(v61 + 8 * v62 + 64);
        ++v60;
        if (v58)
        {
          v60 = v62;
          goto LABEL_38;
        }
      }

      v52 = v200;
      v50 = v201;
      if (v200 != v199)
      {
        continue;
      }

      break;
    }

    v51 = v195;
  }

  *(v49 + 800) = v50;
  v146 = v51;
  *(v49 + 792) = v51;
  v147 = *(v49 + 600);
  v148 = *(v49 + 200);
  v149 = *(**(v148 + *(v49 + 584)) + 168);

  v149(1);

  v150 = *(**(v148 + v147) + 160);

  LOBYTE(v148) = v150(v151);

  if ((v148 & 1) == 0)
  {
    (*(v49 + 712))(*(v49 + 376), *(v49 + 704), *(v49 + 352));
    v152 = sub_27237725C();
    v153 = sub_272377E7C();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&dword_2721E4000, v152, v153, "Got final result before speech ended", v154, 2u);
      MEMORY[0x2743C69C0](v154, -1, -1);
    }

    v155 = *(v49 + 728);
    v156 = *(v49 + 376);
    v157 = *(v49 + 352);

    v155(v156, v157);
  }

  v158 = *(v49 + 568);
  v159 = *(v49 + 200);
  sub_272377C7C();
  v160 = *(v159 + v158);
  *(v49 + 808) = v160;
  if (v160)
  {

    v161 = swift_task_alloc();
    *(v49 + 816) = v161;
    *v161 = v49;
    v161[1] = sub_2722691EC;

    return MEMORY[0x28212BBF0]();
  }

  v179 = *(v49 + 472);
  v223 = *(v49 + 480);
  v181 = *(v49 + 456);
  v180 = *(v49 + 464);
  v182 = *(v49 + 336);
  v183 = *(v49 + 344);
  v184 = *(v49 + 328);
  v185 = *(v49 + 288);
  v186 = *(v49 + 296);
  v187 = *(v49 + 280);

  (*(v185 + 8))(v186, v187);
  (*(v182 + 8))(v183, v184);
  (*(v180 + 8))(v179, v181);
  sub_27226ABB0(v223, type metadata accessor for VASpeechBiasData);

  v229 = (*(v49 + 552) + **(v49 + 552));
  v188 = swift_task_alloc();
  *(v49 + 608) = v188;
  *v188 = v49;
  v188[1] = sub_2722669D4;

  return v229();
}

uint64_t sub_2722691EC()
{
  *(*v1 + 824) = v0;

  if (v0)
  {

    v2 = sub_272269BB8;
  }

  else
  {

    v2 = sub_272269340;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272269340()
{
  v1 = v0[99];

  v2 = v0[59];
  v13 = v0[60];
  v3 = v0[57];
  v4 = v0[58];
  v5 = v0[42];
  v6 = v0[43];
  v7 = v0[41];
  v8 = v0[36];
  v9 = v0[37];
  v10 = v0[35];

  (*(v8 + 8))(v9, v10);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v2, v3);
  sub_27226ABB0(v13, type metadata accessor for VASpeechBiasData);

  v14 = (v0[69] + *v0[69]);
  v11 = swift_task_alloc();
  v0[76] = v11;
  *v11 = v0;
  v11[1] = sub_2722669D4;

  return v14();
}

uint64_t sub_2722694F0()
{
  (*(v0 + 840))(*(v0 + 472));

  return MEMORY[0x2822009F8](sub_27226956C, 0, 0);
}

uint64_t sub_27226956C()
{
  (*(v0[36] + 8))(v0[37], v0[35]);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[93] = v2;
  *v2 = v0;
  v2[1] = sub_2722674E0;
  v3 = v0[41];
  v4 = v0[38];

  return MEMORY[0x282200310](v4, 0, 0, v0 + 21, v3, AssociatedConformanceWitness);
}

uint64_t sub_272269664()
{
  sub_27226ABB0(*(v0 + 520), type metadata accessor for VARuntimeParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722697FC()
{
  sub_27226ABB0(v0[60], type metadata accessor for VASpeechBiasData);
  sub_27226ABB0(v0[65], type metadata accessor for VARuntimeParameters);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2722699B0()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[57];
  v4 = v0[58];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[41];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  sub_27226ABB0(v1, type metadata accessor for VASpeechBiasData);
  sub_27226ABB0(v0[65], type metadata accessor for VARuntimeParameters);

  v8 = v0[1];

  return v8();
}

uint64_t sub_272269BB8()
{
  v1 = v0[99];
  v12 = v0[59];
  v13 = v0[60];
  v2 = v0[58];
  v11 = v0[57];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[41];
  v6 = v0[36];
  v7 = v0[37];
  v8 = v0[35];

  (*(v6 + 8))(v7, v8);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v12, v11);
  sub_27226ABB0(v13, type metadata accessor for VASpeechBiasData);

  sub_27226ABB0(v0[65], type metadata accessor for VARuntimeParameters);

  v9 = v0[1];

  return v9();
}

uint64_t sub_272269DFC(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = sub_2721F065C(&qword_280882010, &unk_27237E450);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  (*(v13 + 16))(&v32 - v14, a1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x277D85738])
  {
    v17 = sub_2722C389C();
    (*(v3 + 16))(v11, v17, v2);
    v18 = sub_27237725C();
    v19 = sub_272377E7C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2721E4000, v18, v19, "Speech API Input stream finished successfully.", v20, 2u);
      MEMORY[0x2743C69C0](v20, -1, -1);
    }

    return (*(v3 + 8))(v11, v2);
  }

  else
  {
    v22 = v16;
    v23 = *MEMORY[0x277D85740];
    v24 = sub_2722C389C();
    v25 = *(v3 + 16);
    if (v22 == v23)
    {
      v25(v9, v24, v2);
      v26 = sub_27237725C();
      v27 = sub_272377E7C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2721E4000, v26, v27, "Speech API Input stream was cancelled.", v28, 2u);
        MEMORY[0x2743C69C0](v28, -1, -1);
      }

      return (*(v3 + 8))(v9, v2);
    }

    else
    {
      v25(v6, v24, v2);
      v29 = sub_27237725C();
      v30 = sub_272377E7C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2721E4000, v29, v30, "Speech API Unknown termination reason.", v31, 2u);
        MEMORY[0x2743C69C0](v31, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return (*(v13 + 8))(v15, v12);
    }
  }
}