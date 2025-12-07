uint64_t sub_23156FA08(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v18 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_231562458(v18, v6, v7, v8);
    v18 = result;
  }

  v15 = v4;
  *v4 = v18;
  v9 = (v18 + 16);
  for (i = *(v18 + 16); ; *v9 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v15 = v18;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v18 + 16 * i);
    v11 = *v4;
    v12 = &v9[2 * i];
    v13 = v12[1];
    sub_23156FB40((*a3 + 24 * *v4), (*a3 + 24 * *v12), *a3 + 24 * v13, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v13 < v11)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v9)
    {
      goto LABEL_12;
    }

    *v4 = v11;
    v4[1] = v13;
    v14 = *v9 - i;
    if (*v9 < i)
    {
      goto LABEL_13;
    }

    i = *v9 - 1;
    result = memmove(v12, v12 + 2, 16 * v14);
  }

  *v15 = v18;
  __break(1u);
  return result;
}

uint64_t sub_23156FB40(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_2314F2764(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v4 + 2) >= *(v6 + 2))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_2314F2764(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 24;
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t sub_23156FCE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  v8 = MEMORY[0x28223BE20](v78);
  v71 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = &v62 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v69 = &v62 - v13;
  result = MEMORY[0x28223BE20](v12);
  v74 = &v62 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v18 = a2 - a1;
  v19 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v19)
  {
    goto LABEL_60;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v22 = v18 / v17;
  v81 = a1;
  v80 = a4;
  v23 = v20 / v17;
  if (v18 / v17 >= v20 / v17)
  {
    sub_2314F1918();
    v40 = a4 + v23 * v17;
    v41 = -v17;
    v42 = v40;
    v75 = a1;
    v76 = a4;
    v65 = v41;
LABEL_36:
    v43 = a2 + v41;
    v63 = v42;
    v77 = a2;
    v66 = a2 + v41;
    while (1)
    {
      if (v40 <= a4)
      {
        v81 = a2;
        v79 = v42;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v64 = v42;
      v72 = a3;
      v73 = a3 + v41;
      v44 = v40 + v41;
      v67 = v40 + v41;
      v45 = v74;
      sub_231570540(v44, v74, &qword_27DD5B640, &unk_23158AE80);
      v46 = v69;
      sub_231570540(v43, v69, &qword_27DD5B640, &unk_23158AE80);
      v47 = v70;
      sub_231570540(v45, v70, &qword_27DD5B640, &unk_23158AE80);

      v48 = v78;
      v49 = *(v78 + 48);
      v68 = sub_231585B84();
      v50 = sub_231585BA4();
      v51 = *(*(v50 - 8) + 8);
      v51(v47 + v49, v50);
      v52 = v71;
      sub_231570540(v46, v71, &qword_27DD5B640, &unk_23158AE80);

      v53 = *(v48 + 48);
      v54 = sub_231585B84();
      v51(v52 + v53, v50);
      sub_2314A2910(v46, &qword_27DD5B640, &unk_23158AE80);
      sub_2314A2910(v74, &qword_27DD5B640, &unk_23158AE80);
      if (v54 < v68)
      {
        a4 = v76;
        a3 = v73;
        if (v72 < v77 || v73 >= v77)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v42 = v64;
          v41 = v65;
          a1 = v75;
        }

        else
        {
          v41 = v65;
          v42 = v64;
          v60 = v66;
          a2 = v66;
          a1 = v75;
          if (v72 != v77)
          {
            v61 = v64;
            swift_arrayInitWithTakeBackToFront();
            a2 = v60;
            v42 = v61;
          }
        }

        goto LABEL_36;
      }

      v55 = v73;
      v56 = v72 < v40 || v73 >= v40;
      a4 = v76;
      a2 = v77;
      if (v56)
      {
        v57 = v67;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v55;
        v40 = v57;
        v42 = v57;
        a1 = v75;
        v41 = v65;
        v43 = v66;
      }

      else
      {
        v43 = v66;
        v58 = v67;
        v42 = v67;
        v19 = v40 == v72;
        a3 = v73;
        v40 = v67;
        a1 = v75;
        v41 = v65;
        if (!v19)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v55;
          v40 = v58;
          v42 = v58;
        }
      }
    }

    v81 = a2;
    v79 = v63;
  }

  else
  {
    sub_2314F1918();
    v67 = v17;
    v68 = a4 + v22 * v17;
    v79 = v68;
    v73 = a3;
    while (a4 < v68 && a2 < a3)
    {
      v75 = a1;
      v25 = v74;
      sub_231570540(a2, v74, &qword_27DD5B640, &unk_23158AE80);
      v26 = v69;
      sub_231570540(a4, v69, &qword_27DD5B640, &unk_23158AE80);
      v77 = a2;
      v27 = v70;
      sub_231570540(v25, v70, &qword_27DD5B640, &unk_23158AE80);

      v28 = v78;
      v29 = *(v78 + 48);
      v30 = sub_231585B84();
      v76 = a4;
      v72 = v30;
      v31 = sub_231585BA4();
      v32 = *(*(v31 - 8) + 8);
      v32(v27 + v29, v31);
      v33 = v71;
      sub_231570540(v26, v71, &qword_27DD5B640, &unk_23158AE80);

      v34 = *(v28 + 48);
      v35 = sub_231585B84();
      v32(v33 + v34, v31);
      sub_2314A2910(v26, &qword_27DD5B640, &unk_23158AE80);
      sub_2314A2910(v25, &qword_27DD5B640, &unk_23158AE80);
      if (v35 >= v72)
      {
        a2 = v77;
        v36 = v67;
        a4 = v76 + v67;
        v37 = v75;
        if (v75 < v76 || v75 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v73;
        }

        else
        {
          a3 = v73;
          if (v75 != v76)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v80 = a4;
      }

      else
      {
        v36 = v67;
        a4 = v76;
        a2 = v77 + v67;
        v37 = v75;
        if (v75 < v77 || v75 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v73;
        }

        else
        {
          a3 = v73;
          if (v75 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v37 + v36;
      v81 = a1;
    }
  }

LABEL_58:
  sub_231570354(&v81, &v80, &v79);
  return 1;
}

uint64_t sub_231570354(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_231570440(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_2315704F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_231570540(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_17_14(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_231570590(uint64_t a1)
{
  v1 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231585F64();
  OUTLINED_FUNCTION_4_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(type metadata accessor for SignalStore(0));
  v14 = sub_231563FA4(0xD000000000000024, 0x8000000231590600);
  v15 = sub_2315860C4();
  (*(v9 + 104))(v12, *MEMORY[0x277D5B330], v7);
  sub_231585874();
  sub_23156420C();

  (*(v3 + 8))(v6, v1);
  return (*(v9 + 8))(v12, v7);
}

id SiriSignalsService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSignalsService.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSignalsService();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SiriSignalsService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSignalsService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SiriSignalsSignpost(uint64_t a1)
{
  result = qword_280D6FBC0;
  if (!qword_280D6FBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231570B30(uint64_t a1)
{
  result = sub_231585FD4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231570BA4(char a1, void (*a2)(), uint64_t a3)
{
  sub_23157134C();
  v6 = sub_231570E7C(0xD000000000000020, 0x8000000231593630, 4096);
  v7 = [objc_opt_self() interfaceWithProtocol_];
  v8 = OUTLINED_FUNCTION_2_37();
  [v8 v9];

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v29 = sub_231571390;
  v30 = v10;
  OUTLINED_FUNCTION_0_82();
  *(&aBlock + 1) = 1107296256;
  v27 = sub_23149B484;
  v28 = &block_descriptor_19;
  v11 = _Block_copy(&aBlock);

  v12 = OUTLINED_FUNCTION_2_37();
  [v12 v13];
  _Block_release(v11);
  v29 = sub_231570F64;
  v30 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v27 = sub_23149B484;
  v28 = &block_descriptor_7;
  v14 = _Block_copy(&aBlock);
  v15 = OUTLINED_FUNCTION_2_37();
  [v15 v16];
  _Block_release(v14);
  [v6 resume];
  if (a1)
  {
    v29 = a2;
    v30 = a3;
    OUTLINED_FUNCTION_0_82();
    OUTLINED_FUNCTION_1_41();
    v27 = v17;
    v28 = &block_descriptor_13_1;
  }

  else
  {
    v29 = a2;
    v30 = a3;
    OUTLINED_FUNCTION_0_82();
    OUTLINED_FUNCTION_1_41();
    v27 = v19;
    v28 = &block_descriptor_10_1;
  }

  v18 = _Block_copy(&aBlock);

  v20 = OUTLINED_FUNCTION_2_37();
  v22 = [v20 v21];
  _Block_release(v18);
  sub_2315867A4();

  swift_unknownObjectRelease();
  sub_2314D6070(&aBlock, &v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0C0, &qword_23158EEF8);
  swift_dynamicCast();
  return v24;
}

id sub_231570E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_231586174();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_231570EF8(void (*a1)(void))
{
  sub_231571398();
  v2 = swift_allocError();
  *v3 = 0;
  a1();
}

void sub_231570F64()
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v0 = sub_231585FF4();
  __swift_project_value_buffer(v0, qword_280D72248);
  oslog = sub_231585FE4();
  v1 = sub_2315865E4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_231496000, oslog, v1, "XPC connection invalidated", v2, 2u);
    MEMORY[0x231931280](v2, -1, -1);
  }
}

void sub_23157104C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

SiriSignals::SiriSignalsXPCError_optional __swiftcall SiriSignalsXPCError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2315710DC()
{
  result = qword_27DD5C0A0;
  if (!qword_27DD5C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C0A0);
  }

  return result;
}

uint64_t sub_231571148@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSignalsXPCError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_231571170(uint64_t a1, uint64_t a2)
{
  v4 = sub_2315712A4();
  v5 = sub_2315712F8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

_BYTE *storeEnumTagSinglePayload for SiriSignalsXPCError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2315712A4()
{
  result = qword_27DD5C0A8;
  if (!qword_27DD5C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C0A8);
  }

  return result;
}

unint64_t sub_2315712F8()
{
  result = qword_27DD5C0B0;
  if (!qword_27DD5C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C0B0);
  }

  return result;
}

unint64_t sub_23157134C()
{
  result = qword_27DD5C0B8;
  if (!qword_27DD5C0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD5C0B8);
  }

  return result;
}

unint64_t sub_231571398()
{
  result = qword_27DD5C0C8;
  if (!qword_27DD5C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C0C8);
  }

  return result;
}

uint64_t sub_231571430(uint64_t a1, void (*a2)(void, void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_7_28();
  v6 = a3();
  OUTLINED_FUNCTION_6_26(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20);
  if (a3 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2315714B4(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_231571BB0(*(a1 + 16), 0);
  OUTLINED_FUNCTION_7_28();
  sub_2315726D0();
  OUTLINED_FUNCTION_6_26(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18);
  if (a1 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

size_t sub_231571528(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_9_22();
  v6 = sub_231571EB0(v2, 0, v3, v4, v5);
  v7 = *(sub_231585BA4() - 8);
  v8 = sub_2315727A0(v18, (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80))), v2, a1);
  OUTLINED_FUNCTION_6_26(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18[0], v18[1], v18[2], v18[3], v18[4]);
  if (a1 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_2315715F4(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_231571BB0(*(a1 + 16), 0);
  OUTLINED_FUNCTION_7_28();
  sub_231572A38();
  OUTLINED_FUNCTION_6_26(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18);
  if (a1 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_231571694@<X0>(uint64_t a3@<X8>)
{
  v15 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD80, &unk_23158EF40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = _s6RecordVMa(0);
  OUTLINED_FUNCTION_1_42(&qword_280D703D0);
  OUTLINED_FUNCTION_0_83(&qword_280D703D8);
  result = sub_231585BB4();
  if (!v3)
  {
    v12 = v15;
    sub_231572B08(v9, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
    {
      sub_231572B78(v7);
      sub_231572BE0();
      swift_allocError();
      *v13 = 3;
      swift_willThrow();
      return sub_231572B78(v9);
    }

    else
    {
      sub_231572B78(v9);
      return sub_23153713C(v7, v12);
    }
  }

  return result;
}

uint64_t sub_231571834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (sub_231571BB0(*(a1 + 16), 0), sub_231572A38(), v3 = v2, , result = sub_2314A4B70(v6), v3 != v1))
  {
    __break(1u);
  }

  else
  {
    _s6RecordVMa(0);
    OUTLINED_FUNCTION_1_42(&qword_280D703D0);
    OUTLINED_FUNCTION_0_83(&qword_280D703D8);
    v5 = sub_231585BE4();

    return v5;
  }

  return result;
}

uint64_t sub_231571968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s6RecordVMa(0);
  OUTLINED_FUNCTION_1_42(&qword_280D703D0);
  OUTLINED_FUNCTION_0_83(&qword_280D703D8);
  return sub_231585BC4();
}

uint64_t sub_231571A00(uint64_t a1)
{
  _s6RecordVMa(0);
  OUTLINED_FUNCTION_1_42(&qword_280D703D0);
  OUTLINED_FUNCTION_0_83(&qword_280D703D8);
  return sub_231585BF4();
}

uint64_t sub_231571A80()
{
  v1 = OBJC_IVAR____TtC11SiriSignals22SQLBackedCacheProvider_store;
  v2 = sub_231585C04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_231571B6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s6RecordVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

const void *sub_231571BB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_11_19((v4 - 32) / 16);
  return v3;
}

const void *sub_231571C64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  OUTLINED_FUNCTION_11_19((v6 - 32) / 24);
  return v5;
}

void *sub_231571CDC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_231571D5C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF30, &qword_23158EF50);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v6);
  if (v4)
  {
    if (result - v5 != 0x8000000000000000 || v4 != -1)
    {
      OUTLINED_FUNCTION_11_19((result - v5) / v4);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_231571EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = *(a5(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v10);
  if (v8)
  {
    if (result - v9 != 0x8000000000000000 || v8 != -1)
    {
      OUTLINED_FUNCTION_11_19((result - v9) / v8);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

const void *sub_231571FA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B668, &unk_23158E1A0);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_11_19((v4 - 32) / 56);
  return v3;
}

void sub_23157202C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_8_25();
  OUTLINED_FUNCTION_2_38();
  if (!v4)
  {
    OUTLINED_FUNCTION_14_11();
LABEL_17:
    OUTLINED_FUNCTION_4_31(v15);
    OUTLINED_FUNCTION_3_6();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_36();
    while (v7 < v5)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_15_14();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_17_15();
        }

        __break(1u);
        break;
      }

      v9 = v6;
      v10 = OUTLINED_FUNCTION_10_20();
      v13 = *(v12 + 8 * v11);
      v1 &= v1 - 1;
      *v0 = v14;
      v0[1] = v10;
      v0[2] = v13;
      if (v8 == v5)
      {

        v15 = v9;
        goto LABEL_17;
      }

      v0 += 3;

      OUTLINED_FUNCTION_16_15();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_231572114()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_8_25();
  OUTLINED_FUNCTION_2_38();
  if (!v4)
  {
    OUTLINED_FUNCTION_14_11();
LABEL_17:
    OUTLINED_FUNCTION_4_31(v15);
    OUTLINED_FUNCTION_3_6();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v15 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_36();
    while (v7 < v5)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_15_14();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_17_15();
        }

        __break(1u);
        break;
      }

      v9 = v6;
      v10 = OUTLINED_FUNCTION_10_20();
      v13 = *(v12 + 8 * v11);
      v1 &= v1 - 1;
      *v0 = v14;
      v0[1] = v10;
      v0[2] = v13;
      if (v8 == v5)
      {

        v15 = v9;
        goto LABEL_17;
      }

      v0 += 3;

      OUTLINED_FUNCTION_16_15();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_2315721FC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  if (!a2)
  {
    v11 = *(a4 + 16);
LABEL_12:
    *a1 = a4;
    a1[1] = v11;
    return;
  }

  if (!a3)
  {
    v11 = *(a4 + 16);
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = 0;
    v9 = a3 - 1;
    for (i = (a4 + 24 * v6 + 24); ; i -= 3)
    {
      v11 = v6 + v8;
      if (!(v6 + v8))
      {
        break;
      }

      if (v11 > *(a4 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v13 = *(i - 1);
      v12 = *i;
      *v7 = *(i - 2);
      v7[1] = v13;
      v7[2] = v12;
      if (!(v9 + v8))
      {

        v11 = v6 + v8 - 1;
        goto LABEL_12;
      }

      v7 += 3;

      --v8;
    }

    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
}

void *sub_2315722D8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
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
    while (v12 < v10)
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
            v10 = v12;
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_231572430()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  v38 = *(v41 - 8);
  v8 = MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v35 - v10;
  v11 = v1 + 64;
  v12 = -1 << *(v1 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v1 + 64);
  if (!v5)
  {
    v16 = 0;
LABEL_22:
    *v7 = v1;
    v7[1] = v11;
    v7[2] = ~v12;
    v7[3] = v16;
    v7[4] = v14;
    OUTLINED_FUNCTION_3_6();
    return;
  }

  if (!v3)
  {
    v16 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v1 + 32);
    v36 = v7;
    v15 = 0;
    v16 = 0;
    v17 = (63 - v12) >> 6;
    v37 = v3;
    while (1)
    {
      if (v15 >= v3)
      {
        goto LABEL_25;
      }

      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_26;
      }

      if (!v14)
      {
        while (1)
        {
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v19 >= v17)
          {
            v14 = 0;
            v7 = v36;
            goto LABEL_20;
          }

          v14 = *(v11 + 8 * v19);
          ++v16;
          if (v14)
          {
            v42 = v5;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v42 = v5;
      v19 = v16;
LABEL_16:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v19 << 6);
      v22 = v1;
      v23 = *(v1 + 48);
      v24 = *(v1 + 56);
      v25 = (v23 + 16 * v21);
      v26 = *v25;
      v27 = v25[1];
      v28 = sub_231585BA4();
      v29 = *(v28 - 8);
      v30 = v24 + *(v29 + 72) * v21;
      v31 = v40;
      (*(v29 + 16))(&v40[*(v41 + 48)], v30, v28);
      *v31 = v26;
      v31[1] = v27;
      v32 = v31;
      v33 = v39;
      sub_231572C34(v32, v39);
      v34 = v42;
      sub_231572C34(v33, v42);
      v3 = v37;
      if (v18 == v37)
      {
        break;
      }

      v5 = v34 + *(v38 + 72);

      v15 = v18;
      v16 = v19;
      v1 = v22;
    }

    v16 = v19;
    v7 = v36;
    v1 = v22;
LABEL_20:
    v12 = v35;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

void sub_2315726D0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_8_25();
  OUTLINED_FUNCTION_2_38();
  if (!v4)
  {
    OUTLINED_FUNCTION_14_11();
LABEL_17:
    OUTLINED_FUNCTION_4_31(v10);
    OUTLINED_FUNCTION_3_6();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_36();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_15_14();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_17_15();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_5_29();
      if (v9)
      {

        v10 = v8;
        goto LABEL_17;
      }

      v0 += 16;

      OUTLINED_FUNCTION_16_15();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_2315727A0(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_231585BA4();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v32 - v12;
  v14 = a4 + 64;
  v13 = *(a4 + 64);
  v38 = -1 << *(a4 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!a2)
  {
    v19 = 0;
    result = 0;
LABEL_22:
    v31 = ~v38;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v31;
    a1[3] = v19;
    a1[4] = v16;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a4 + 64;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = result;
    while (v18 < result)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            result = v18;
            a1 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 56);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(a2, v30, v26);
      result = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        a1 = v33;
        v14 = v34;
        a4 = v23;
        goto LABEL_22;
      }

      a2 += v27;
      v19 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_231572A38()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_8_25();
  OUTLINED_FUNCTION_2_38();
  if (!v4)
  {
    OUTLINED_FUNCTION_14_11();
LABEL_17:
    OUTLINED_FUNCTION_4_31(v10);
    OUTLINED_FUNCTION_3_6();
    return;
  }

  v5 = v3;
  if (!v3)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_36();
    while (v7 < v5)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (!__OFADD__(v6, 1))
        {
          if (v6 + 1 >= v2)
          {
            OUTLINED_FUNCTION_15_14();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_17_15();
        }

        __break(1u);
        break;
      }

      v8 = v6;
      OUTLINED_FUNCTION_5_29();
      if (v9)
      {

        v10 = v8;
        goto LABEL_17;
      }

      v0 += 16;

      OUTLINED_FUNCTION_16_15();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_231572B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD80, &unk_23158EF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231572B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD80, &unk_23158EF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231572BE0()
{
  result = qword_280D6E048;
  if (!qword_280D6E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E048);
  }

  return result;
}

uint64_t sub_231572C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_231572CA4(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v10 = 0;
LABEL_21:
    *a1 = a4;
    a1[1] = v4;
    a1[2] = ~v5;
    a1[3] = v10;
    a1[4] = v7;
    return;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v21 = -1 << *(a4 + 32);
    v22 = a1;
    v9 = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v23 = a4;
    while (1)
    {
      if (v9 >= a3)
      {
        goto LABEL_24;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v11)
          {
            v7 = 0;
            a1 = v22;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v12);
          ++v10;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v12 = v10;
LABEL_15:
      v13 = (*(a4 + 56) + 56 * (__clz(__rbit64(v7)) | (v12 << 6)));
      v14 = v13[1];
      v7 &= v7 - 1;
      v16 = v13[2];
      v15 = v13[3];
      v18 = v13[4];
      v17 = v13[5];
      v19 = v13[6];
      *v8 = *v13;
      v8[1] = v14;
      v8[2] = v16;
      v8[3] = v15;
      v8[4] = v18;
      v8[5] = v17;
      v8[6] = v19;
      v20 = a3;
      if (v9 + 1 == a3)
      {
        break;
      }

      v8 += 7;
      v24 = v9 + 1;

      a4 = v23;
      v9 = v24;
      v10 = v12;
      a3 = v20;
    }

    v10 = v12;
    a1 = v22;
    a4 = v23;
LABEL_19:
    v5 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

uint64_t StreamedEventsAggregator.AppEvent.init(appId:time:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X8>)
{
  v7 = *a4;
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  v9 = *(v8 + 20);
  sub_231585884();
  OUTLINED_FUNCTION_3_37();
  result = (*(v10 + 32))(&a5[v9], a3);
  a5[*(v8 + 24)] = v7;
  return result;
}

uint64_t static StreamedEventsAggregator.group(events:now:beginning:candidateAppIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v273 = a3;
  v293 = a2;
  v282 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v8 = OUTLINED_FUNCTION_19(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v9);
  v279 = &v272 - v10;
  v11 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  OUTLINED_FUNCTION_4_1();
  v302 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v16);
  v303 = &v272 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0E0, &qword_23158EF78);
  v19 = OUTLINED_FUNCTION_19(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v272 - v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v272 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = (&v272 - v29);
  v31 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_13();
  v306 = v37;
  MEMORY[0x28223BE20](v38);
  v301 = &v272 - v39;
  v290 = type metadata accessor for StreamedEventsAggregator.Event(0);
  OUTLINED_FUNCTION_4_1();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  v291 = &v272 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0E8, &qword_23158EF80);
  v45 = OUTLINED_FUNCTION_19(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v46);
  v47 = MEMORY[0x277D84F98];
  v312 = MEMORY[0x277D84F98];
  v284 = &v272 - v48;
  OUTLINED_FUNCTION_7_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v11);
  v52 = *(a1 + 16);
  v308 = v11;
  v295 = v23;
  v307 = v31;
  v286 = v52;
  v277 = v33;
  if (v52)
  {
    v288 = a1 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v283 = (v33 + 32);
    v304 = v33 + 16;
    v305 = (v33 + 8);
    v289 = a4;
    v285 = a4 + 56;
    v287 = *(v41 + 72);
    OUTLINED_FUNCTION_24_5();
    v309 = v30;
    v310 = v28;
    v54 = v291;
    while (1)
    {
      v292 = v53;
      sub_23157581C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      (*v283)(v301, v54, v31);
      v67 = (v312 + 64);
      OUTLINED_FUNCTION_13_13();
      v299 = v68;

      v23 = 0;
      v300 = v67;
      if (!a4)
      {
        goto LABEL_13;
      }

LABEL_12:
      v69 = v23;
LABEL_17:
      v70 = __clz(__rbit64(a4));
      a4 &= a4 - 1;
      v71 = (v299[6] + 16 * (v70 | (v69 << 6)));
      v73 = *v71;
      v72 = v71[1];
      OUTLINED_FUNCTION_14_12();
      OUTLINED_FUNCTION_1_43();
      sub_23157581C();
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
      v75 = v310;
      *v310 = v73;
      v75[1] = v72;
      OUTLINED_FUNCTION_0_84();
      sub_231576A78();
      OUTLINED_FUNCTION_37_2();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v74);

      v30 = v309;
      while (1)
      {
        v79 = OUTLINED_FUNCTION_7_0();
        sub_2315758C8(v79, v80);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
        if (__swift_getEnumTagSinglePayload(v30, 1, v81) == 1)
        {
          break;
        }

        v83 = *v30;
        v82 = v30[1];
        v84 = v30 + *(v81 + 48);
        v86 = v306;
        v85 = v307;
        (*v304)(v306, v84 + *(v11 + 20), v307);
        sub_23157586C(v84);
        sub_2315857A4();
        v88 = v87;
        (*v305)(v86, v85);
        OUTLINED_FUNCTION_38_2();
        if (v89)
        {
          sub_23149C888(v83, v82);
          if (v90)
          {
            OUTLINED_FUNCTION_36_3();
          }
        }

        swift_isUniquelyReferenced_nonNull_native();
        v311 = v47;
        sub_23149C888(v83, v82);
        OUTLINED_FUNCTION_9_23();
        if (v93)
        {
          goto LABEL_129;
        }

        v94 = v91;
        v95 = v92;
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
        if (OUTLINED_FUNCTION_21_8(v96))
        {
          sub_23149C888(v83, v82);
          OUTLINED_FUNCTION_30_4();
          v11 = v308;
          if (!v119)
          {
            goto LABEL_137;
          }

          v94 = v97;
        }

        else
        {
          v11 = v308;
        }

        v98 = v88 + v4;
        if (v95)
        {

          v47 = v311;
          *(*(v311 + 56) + 8 * v94) = v98;
        }

        else
        {
          v47 = v311;
          OUTLINED_FUNCTION_45_3();
          OUTLINED_FUNCTION_10_21(v99);
          v101 = (v100 + 16 * v94);
          *v101 = v83;
          v101[1] = v82;
          *(*(v47 + 56) + 8 * v94) = v98;
          v102 = *(v47 + 16);
          v93 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v93)
          {
            goto LABEL_130;
          }

          *(v47 + 16) = v103;
        }

        v30 = v309;
        v67 = v300;
        if (a4)
        {
          goto LABEL_12;
        }

        while (1)
        {
LABEL_13:
          v69 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (v69 >= v31)
          {
            break;
          }

          a4 = *(v67 + v69);
          ++v23;
          if (a4)
          {
            v23 = v69;
            goto LABEL_17;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
        OUTLINED_FUNCTION_7_1();
        __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
        a4 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C100, &qword_23158EFA0);
      sub_231586114();
      v31 = v307;
      (*v305)(v301, v307);
      OUTLINED_FUNCTION_44_3();
      OUTLINED_FUNCTION_24_5();
LABEL_99:
      v53 = v292 + 1;
      v54 = v291;
      if (v292 + 1 == v286)
      {
        goto LABEL_100;
      }
    }

    OUTLINED_FUNCTION_0_84();
    sub_231576A78();
    if (!*(a4 + *(v11 + 24)))
    {
      v108 = a4;
      v109 = *(a4 + 8);
      v110 = sub_2314A0560(*a4, v109, v289);
      if (v110)
      {
        OUTLINED_FUNCTION_1_43();
        v31 = v303;
        sub_23157581C();

        v111 = v312;
        swift_isUniquelyReferenced_nonNull_native();
        v311 = v111;
        v112 = OUTLINED_FUNCTION_23_7();
        sub_231575AFC(v112, v113, v109, v114);

        v312 = v311;
      }

      v129 = v282;
      v130 = v297;
      MEMORY[0x28223BE20](v110);
      *(&v272 - 2) = v108;
      v281 = v131;
      v132 = sub_231576550(sub_231575938, &v272 - 4, v131);
      v282 = v129;
      v23 = 0;
      v299 = v132;
      OUTLINED_FUNCTION_13_13();
      v300 = v133;
      if (v129)
      {
        goto LABEL_49;
      }

      do
      {
LABEL_50:
        v134 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_127;
        }

        if (v134 >= v31)
        {
          v175 = OUTLINED_FUNCTION_28();
          __swift_instantiateConcreteTypeFromMangledNameV2(v175, v176);
          OUTLINED_FUNCTION_7_1();
          __swift_storeEnumTagSinglePayload(v177, v178, v179, v180);
          v129 = 0;
          goto LABEL_55;
        }

        v129 = *(v133 + v134);
        ++v23;
      }

      while (!v129);
      v23 = v134;
      while (2)
      {
        v135 = __clz(__rbit64(v129));
        v129 &= v129 - 1;
        v136 = (v299[6] + 16 * (v135 | (v134 << 6)));
        v138 = *v136;
        v137 = v136[1];
        OUTLINED_FUNCTION_14_12();
        OUTLINED_FUNCTION_1_43();
        sub_23157581C();
        v139 = OUTLINED_FUNCTION_28();
        v141 = __swift_instantiateConcreteTypeFromMangledNameV2(v139, v140);
        v142 = v298;
        *v298 = v138;
        v142[1] = v137;
        OUTLINED_FUNCTION_0_84();
        sub_231576A78();
        OUTLINED_FUNCTION_37_2();
        __swift_storeEnumTagSinglePayload(v143, v144, v145, v141);

        v130 = v297;
LABEL_55:
        v146 = OUTLINED_FUNCTION_3_10();
        sub_2315758C8(v146, v147);
        v148 = OUTLINED_FUNCTION_28();
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(v148, v149);
        if (__swift_getEnumTagSinglePayload(v130, 1, v150) != 1)
        {
          v151 = v130 + *(v150 + 48);
          (*v304)(v306, v151 + *(v308 + 20), v307);
          sub_23157586C(v151);
          sub_2315857A4();
          v153 = v152;
          v154 = OUTLINED_FUNCTION_28();
          v155(v154);
          OUTLINED_FUNCTION_38_2();
          if (v156)
          {
            v157 = OUTLINED_FUNCTION_7_0();
            sub_23149C888(v157, v158);
            if (v159)
            {
              OUTLINED_FUNCTION_36_3();
            }
          }

          swift_isUniquelyReferenced_nonNull_native();
          v311 = v47;
          v160 = OUTLINED_FUNCTION_7_0();
          sub_23149C888(v160, v161);
          OUTLINED_FUNCTION_9_23();
          if (v93)
          {
            goto LABEL_131;
          }

          v164 = v162;
          v165 = v163;
          v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
          if (OUTLINED_FUNCTION_21_8(v166))
          {
            v167 = OUTLINED_FUNCTION_7_0();
            v169 = sub_23149C888(v167, v168);
            if ((v165 & 1) != (v170 & 1))
            {
              goto LABEL_137;
            }

            v164 = v169;
          }

          v171 = v153 + v4;
          if (v165)
          {

            v47 = v311;
            *(*(v311 + 56) + 8 * v164) = v171;
          }

          else
          {
            v47 = v311;
            OUTLINED_FUNCTION_45_3();
            OUTLINED_FUNCTION_10_21(v172);
            OUTLINED_FUNCTION_26_6(v173);
            if (v93)
            {
              goto LABEL_133;
            }

            *(v47 + 16) = v174;
          }

          v130 = v297;
          v133 = v300;
          if (!v129)
          {
            goto LABEL_50;
          }

LABEL_49:
          v134 = v23;
          continue;
        }

        break;
      }

      MEMORY[0x28223BE20](v181);
      v182 = v296;
      *(&v272 - 2) = v296;
      v183 = v282;
      v54 = sub_231576550(sub_2315766D4, &v272 - 4, v281);
      v282 = v183;
      a4 = v182;

      v312 = v54;
      OUTLINED_FUNCTION_44_3();
      v31 = v307;
      v11 = v308;
      OUTLINED_FUNCTION_41_1();
      v30 = v309;
      goto LABEL_98;
    }

    if (*(a4 + *(v11 + 24)) == 1)
    {
      v55 = *a4;
      a4 = *(a4 + 8);
      v54 = v312;
      if (!*(v312 + 16) || (v56 = OUTLINED_FUNCTION_42_3(), sub_23149C888(v56, v57), (v58 & 1) == 0))
      {
        if (v289[2])
        {
          sub_231586D14();
          sub_231586274();
          sub_231586D44();
          OUTLINED_FUNCTION_28_4();
          v54 = ~v116;
          while (1)
          {
            v117 = v115 & v54;
            if (((*(v285 + (((v115 & v54) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v115 & v54)) & 1) == 0)
            {
              break;
            }

            v118 = (v289[6] + 16 * v117);
            v119 = *v118 == v55 && v118[1] == a4;
            if (!v119)
            {
              v120 = sub_231586C44();
              v115 = v117 + 1;
              if ((v120 & 1) == 0)
              {
                continue;
              }
            }

            v121 = v284;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v284, 1, v11);
            v123 = v304;
            if (EnumTagSinglePayload)
            {
              v124 = v279;
              OUTLINED_FUNCTION_7_1();
              __swift_storeEnumTagSinglePayload(v125, v126, v127, v31);
              v128 = *v123;
            }

            else
            {
              v205 = *(v11 + 20);
              v300 = *v304;
              v206 = v121 + v205;
              v124 = v279;
              v300(v279, v206, v31);
              v128 = v300;
              OUTLINED_FUNCTION_37_2();
              __swift_storeEnumTagSinglePayload(v207, v208, v209, v31);
            }

            v128(v278, v296 + *(v11 + 20), v31);
            v210 = v124;
            v211 = v274;
            sub_231576B5C(v210, v274, &qword_27DD5BF60, &qword_231587FD0);
            if (__swift_getEnumTagSinglePayload(v211, 1, v31) == 1)
            {
              v212 = v128;
              v213 = v275;
              v212(v275, v273, v31);
              if (__swift_getEnumTagSinglePayload(v211, 1, v31) != 1)
              {
                sub_2314A2910(v211, &qword_27DD5BF60, &qword_231587FD0);
              }
            }

            else
            {
              v213 = v275;
              (*v283)(v275, v211, v31);
            }

            v214 = v278;
            sub_2315857A4();
            v215 = v213;
            v216 = *v305;
            (*v305)(v215, v31);
            v216(v214, v31);
            OUTLINED_FUNCTION_38_2();
            if (v217)
            {
              v218 = OUTLINED_FUNCTION_42_3();
              sub_23149C888(v218, v219);
              v54 = v279;
              if (v220)
              {
                OUTLINED_FUNCTION_36_3();
              }
            }

            else
            {
              v54 = v279;
            }

            swift_isUniquelyReferenced_nonNull_native();
            v311 = v47;
            v221 = OUTLINED_FUNCTION_42_3();
            sub_2315756F4(v221, v222, v223);
            sub_2314A2910(v54, &qword_27DD5BF60, &qword_231587FD0);
            v47 = v311;
            break;
          }
        }

        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_24_5();
        goto LABEL_98;
      }

      OUTLINED_FUNCTION_14_12();
      v300 = v59;
      OUTLINED_FUNCTION_1_43();
      sub_23157581C();
      OUTLINED_FUNCTION_0_84();
      sub_231576A78();
      sub_2315857A4();
      v61 = v60;
      OUTLINED_FUNCTION_38_2();
      if (v62)
      {
        v63 = v55;
        v64 = OUTLINED_FUNCTION_42_3();
        sub_23149C888(v64, v65);
        if (v66)
        {
          OUTLINED_FUNCTION_36_3();
        }
      }

      else
      {
        v63 = v55;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v311 = v47;
      v184 = OUTLINED_FUNCTION_23_7();
      sub_23149C888(v184, v185);
      OUTLINED_FUNCTION_9_23();
      if (v93)
      {
        goto LABEL_135;
      }

      v188 = v186;
      v189 = v187;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      if (sub_231586A64())
      {
        v190 = OUTLINED_FUNCTION_23_7();
        sub_23149C888(v190, v191);
        OUTLINED_FUNCTION_15_15();
        if (!v119)
        {
          goto LABEL_137;
        }

        v188 = v192;
      }

      v47 = v311;
      if (v189)
      {
        *(*(v311 + 56) + 8 * v188) = v61 + v4;
      }

      else
      {
        OUTLINED_FUNCTION_45_3();
        OUTLINED_FUNCTION_10_21(v193);
        v195 = (v194 + 16 * v188);
        *v195 = v63;
        v195[1] = a4;
        *(*(v47 + 56) + 8 * v188) = v196;
        v197 = *(v47 + 16);
        v93 = __OFADD__(v197, 1);
        v198 = v197 + 1;
        if (v93)
        {
          goto LABEL_136;
        }

        *(v47 + 16) = v198;
      }

      v30 = v309;
      v199 = OUTLINED_FUNCTION_23_7();
      sub_23149C888(v199, v200);
      if (v201)
      {
        v202 = v312;
        a4 = swift_isUniquelyReferenced_nonNull_native();
        v311 = v202;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F8, &qword_23158EF98);
        sub_231586A64();
        v203 = v311;

        OUTLINED_FUNCTION_0_84();
        v54 = v276;
        sub_231576A78();
        sub_231586A84();
        sub_23157586C(v280);
        v312 = v203;
        v31 = v307;
        OUTLINED_FUNCTION_24_5();
      }

      else
      {
        sub_23157586C(v280);
        v31 = v307;
        OUTLINED_FUNCTION_24_5();
        v54 = v276;
      }

      __swift_storeEnumTagSinglePayload(v54, v204, 1, v11);
      sub_2314A2910(v54, &qword_27DD5C0E8, &qword_23158EF80);
    }

    OUTLINED_FUNCTION_41_1();
LABEL_98:
    sub_2314A2910(v54, &qword_27DD5C0E8, &qword_23158EF80);
    OUTLINED_FUNCTION_1_43();
    sub_23157581C();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v224, v225, v226, v11);
    sub_23157586C(a4);
    goto LABEL_99;
  }

LABEL_100:
  v227 = (v312 + 64);
  v228 = 1 << *(v312 + 32);
  v229 = -1;
  if (v228 < 64)
  {
    v229 = ~(-1 << v228);
  }

  v230 = v229 & *(v312 + 64);
  v231 = (v228 + 63) >> 6;
  v309 = (v277 + 8);
  v310 = (v277 + 16);
  v304 = v312;

  v232 = 0;
  v305 = v227;
  if (v230)
  {
    while (1)
    {
      v233 = v232;
LABEL_108:
      v234 = __clz(__rbit64(v230));
      v230 &= v230 - 1;
      v23 = v303;
      v235 = (*(v304 + 48) + 16 * (v234 | (v233 << 6)));
      v237 = *v235;
      v236 = v235[1];
      OUTLINED_FUNCTION_14_12();
      OUTLINED_FUNCTION_1_43();
      sub_23157581C();
      v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
      v239 = v294;
      *v294 = v237;
      *(v239 + 8) = v236;
      OUTLINED_FUNCTION_0_84();
      sub_231576A78();
      OUTLINED_FUNCTION_37_2();
      __swift_storeEnumTagSinglePayload(v240, v241, v242, v238);

      OUTLINED_FUNCTION_44_3();
      v11 = v308;
LABEL_109:
      sub_2315758C8(v239, v23);
      v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
      if (__swift_getEnumTagSinglePayload(v23, 1, v243) == 1)
      {
        break;
      }

      v244 = v23 + *(v243 + 48);
      v246 = v306;
      v245 = v307;
      (*v310)(v306, v244 + *(v11 + 20), v307);
      sub_23157586C(v244);
      sub_2315857A4();
      v248 = v247;
      (*v309)(v246, v245);
      OUTLINED_FUNCTION_38_2();
      if (v249)
      {
        v250 = OUTLINED_FUNCTION_7_0();
        sub_23149C888(v250, v251);
        if (v252)
        {
          OUTLINED_FUNCTION_36_3();
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v311 = v47;
      v253 = OUTLINED_FUNCTION_7_0();
      sub_23149C888(v253, v254);
      OUTLINED_FUNCTION_9_23();
      if (v93)
      {
        goto LABEL_132;
      }

      v257 = v255;
      v23 = v256;
      v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      if (OUTLINED_FUNCTION_21_8(v258))
      {
        v259 = OUTLINED_FUNCTION_7_0();
        v261 = sub_23149C888(v259, v260);
        v11 = v308;
        if ((v23 & 1) != (v262 & 1))
        {
          goto LABEL_137;
        }

        v257 = v261;
      }

      else
      {
        v11 = v308;
      }

      v263 = v248 + v4;
      if (v23)
      {

        v47 = v311;
        *(*(v311 + 56) + 8 * v257) = v263;
      }

      else
      {
        v47 = v311;
        OUTLINED_FUNCTION_45_3();
        OUTLINED_FUNCTION_10_21(v264);
        OUTLINED_FUNCTION_26_6(v265);
        if (v93)
        {
          goto LABEL_134;
        }

        *(v47 + 16) = v266;
      }

      OUTLINED_FUNCTION_44_3();
      v227 = v305;
      if (!v230)
      {
        goto LABEL_104;
      }
    }

    sub_2314A2910(v284, &qword_27DD5C0E8, &qword_23158EF80);

    return v47;
  }

  else
  {
LABEL_104:
    while (1)
    {
      v233 = v232 + 1;
      if (__OFADD__(v232, 1))
      {
        break;
      }

      if (v233 >= v231)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
        v239 = v294;
        OUTLINED_FUNCTION_7_1();
        __swift_storeEnumTagSinglePayload(v267, v268, v269, v270);
        v230 = 0;
        goto LABEL_109;
      }

      v230 = v227[v233];
      ++v232;
      if (v230)
      {
        v232 = v233;
        goto LABEL_108;
      }
    }

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
    result = sub_231586C84();
    __break(1u);
  }

  return result;
}

uint64_t sub_231574518(char a1, void *a2)
{
  if (a2[2] && (sub_231586D14(), sub_231545524(v15, a1), sub_231586D44(), OUTLINED_FUNCTION_28_4(), v6 = v5 & ~v4, ((*(a2 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) != 0))
  {
    v7 = ~v4;
    while (1)
    {
      v8 = 0xE800000000000000;
      v9 = 0x6449656C646E7562;
      switch(*(a2[6] + v6))
      {
        case 1:
          v9 = 0x6449797469746E65;
          break;
        case 2:
          v9 = 0x73556E69616D6F64;
          v8 = 0xED00006573614365;
          break;
        case 3:
          v9 = 0x7355646572616873;
          v8 = 0xEC00000064497265;
          break;
        case 4:
          v8 = 0xE600000000000000;
          v9 = 0x746E65746E69;
          break;
        default:
          break;
      }

      v10 = 0xE800000000000000;
      v11 = 0x6449656C646E7562;
      switch(a1)
      {
        case 1:
          v11 = 0x6449797469746E65;
          break;
        case 2:
          v11 = 0x73556E69616D6F64;
          v10 = 0xED00006573614365;
          break;
        case 3:
          v11 = 0x7355646572616873;
          v10 = 0xEC00000064497265;
          break;
        case 4:
          v10 = 0xE600000000000000;
          v11 = 0x746E65746E69;
          break;
        default:
          break;
      }

      if (v9 == v11 && v8 == v10)
      {
        break;
      }

      v13 = sub_231586C44();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t StreamedEventsAggregator.AppEvent.EventType.hashValue.getter()
{
  v1 = *v0;
  sub_231586D14();
  MEMORY[0x231930A00](v1);
  return sub_231586D44();
}

uint64_t StreamedEventsAggregator.AppEvent.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StreamedEventsAggregator.AppEvent(0) + 20);
  sub_231585884();
  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t StreamedEventsAggregator.AppEvent.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_2315748C4(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (v21 - v10);
  v12 = *a1;
  v13 = a1[1];
  *v11 = v12;
  v11[1] = v13;
  sub_23157581C();
  sub_231576B5C(v11, v9, &qword_27DD5C0F0, &unk_23158EF88);

  v14 = &v9[*(v6 + 56)];
  v16 = *v14;
  v15 = *(v14 + 1);

  sub_23157586C(v14);
  if (v16 == *a3 && v15 == a3[1])
  {

    v19 = 0;
  }

  else
  {
    v18 = sub_231586C44();

    v19 = v18 ^ 1;
  }

  sub_2314A2910(v11, &qword_27DD5C0F0, &unk_23158EF88);
  return v19 & 1;
}

uint64_t sub_231574A60(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (v20 - v10);
  v12 = *a1;
  v13 = a1[1];
  *v11 = v12;
  v11[1] = v13;
  sub_23157581C();
  sub_231576B5C(v11, v9, &qword_27DD5C0F0, &unk_23158EF88);

  v14 = &v9[*(v6 + 56)];
  v16 = *v14;
  v15 = *(v14 + 1);

  sub_23157586C(v14);
  if (v16 == *a3 && v15 == a3[1])
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_231586C44();
  }

  sub_2314A2910(v11, &qword_27DD5C0F0, &unk_23158EF88);
  return v18 & 1;
}

unint64_t sub_231574BF0(uint64_t a1)
{
  v2 = sub_231586734();

  return sub_231574E54(a1, v2);
}

unint64_t sub_231574C34(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_48_1();
  sub_2314B5298(v1);
  sub_231586274();

  v2 = sub_231586D44();

  return sub_231574F14(v1, v2);
}

unint64_t sub_231574CB4(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_48_1();
  MEMORY[0x231930A00](v1);
  v2 = sub_231586D44();

  return sub_2315750E4(v1, v2);
}

unint64_t sub_231574D18(uint64_t a1)
{
  sub_2315861A4();
  sub_231586D14();
  sub_231586274();
  v2 = sub_231586D44();

  return sub_231575144(a1, v2);
}

unint64_t sub_231574DAC(uint64_t a1)
{
  OUTLINED_FUNCTION_48_1();
  MEMORY[0x231930A00](a1);
  v2 = sub_231586D44();

  return sub_23157523C(a1, v2);
}

unint64_t sub_231574E10(uint64_t a1)
{
  v2 = sub_2315868C4();

  return sub_23157529C(a1, v2);
}

unint64_t sub_231574E54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_231576B18();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_231586744();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231574F14(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE200000000000000;
      v8 = 27954;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE300000000000000;
          v8 = 7155761;
          break;
        case 2:
          v8 = 26673;
          break;
        case 3:
          v8 = 26678;
          break;
        case 4:
          v8 = 25649;
          break;
        case 5:
          v8 = 25655;
          break;
        case 6:
          v7 = 0xE300000000000000;
          v8 = 6567986;
          break;
        case 7:
          v7 = 0xE300000000000000;
          v8 = 6712937;
          break;
        default:
          break;
      }

      v9 = 0xE200000000000000;
      v10 = 27954;
      switch(a1)
      {
        case 1:
          v9 = 0xE300000000000000;
          v10 = 7155761;
          break;
        case 2:
          v10 = 26673;
          break;
        case 3:
          v10 = 26678;
          break;
        case 4:
          v10 = 25649;
          break;
        case 5:
          v10 = 25655;
          break;
        case 6:
          v9 = 0xE300000000000000;
          v10 = 6567986;
          break;
        case 7:
          v9 = 0xE300000000000000;
          v10 = 6712937;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_231586C44();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_2315750E4(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_231575144(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_2315861A4();
    v7 = v6;
    if (v5 == sub_2315861A4() && v7 == v8)
    {

      return i;
    }

    v10 = sub_231586C44();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_23157523C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_23157529C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_2314D6014(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x2319305B0](v8, a1);
    sub_2314D5E98(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231575360(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_5_30(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_231575394(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_12_16(a1, a4 + 8 * (a1 >> 6));
  v6 = (v5[6] + 16 * result);
  *v6 = v7;
  v6[1] = v8;
  *(v5[7] + 8 * result) = v9;
  v10 = v5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v12;
  }

  return result;
}

unint64_t sub_2315753DC(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
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

uint64_t sub_231575420(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_12_16(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

uint64_t sub_231575464(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_12_16(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = v7[7] + 16 * result;
  *v11 = v12;
  *(v11 + 8) = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_2315754B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_12_16(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = v7[7] + 16 * result;
  *v11 = v12;
  *(v11 + 8) = v13 & 1;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

unint64_t sub_231575508(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_23157554C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_30(a1, a2, a3, a4, a5);
  v7 = v6(0);
  OUTLINED_FUNCTION_19(v7);
  result = sub_231576A78();
  v9 = *(a5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v11;
  }

  return result;
}

uint64_t sub_2315755D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_12_16(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = v8[7] + 24 * result;
  *v12 = v13;
  *(v12 + 8) = v14 & 1;
  *(v12 + 16) = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

void sub_23157562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_8_26(v6, v7, v8);
  OUTLINED_FUNCTION_2_39();
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_231586C84();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
  OUTLINED_FUNCTION_11_20();
  if (sub_231586A64())
  {
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_24_1();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  if (v13)
  {
    *(*(*v5 + 56) + 8 * v12) = v4;
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_17_16();
    sub_231575360(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_12_3();
  }
}

void sub_2315756F4(uint64_t a1, uint64_t a2, double a3)
{
  sub_23149C888(a1, a2);
  OUTLINED_FUNCTION_2_39();
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_231586C84();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
  if (OUTLINED_FUNCTION_20_10(v12))
  {
    sub_23149C888(a1, a2);
    OUTLINED_FUNCTION_29_5();
    if (!v14)
    {
      goto LABEL_12;
    }

    v10 = v13;
  }

  v15 = *v3;
  if (v11)
  {
    *(*(v15 + 56) + 8 * v10) = a3;
  }

  else
  {
    sub_231575394(v10, a1, a2, v15);
  }
}

uint64_t sub_23157581C()
{
  v1 = OUTLINED_FUNCTION_32_4();
  v2(v1);
  OUTLINED_FUNCTION_3_37();
  v3 = OUTLINED_FUNCTION_3_10();
  v4(v3);
  return v0;
}

uint64_t sub_23157586C(uint64_t a1)
{
  v2 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315758C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0E0, &qword_23158EF78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231575958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_33_2(v8, v9);
  OUTLINED_FUNCTION_2_39();
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_231586C84();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B870, &qword_23158B4F8);
  if (OUTLINED_FUNCTION_20_10(v15))
  {
    sub_231574C34(v6);
    OUTLINED_FUNCTION_29_5();
    if (!v17)
    {
      goto LABEL_14;
    }

    v13 = v16;
  }

  if (v14)
  {
    *(*(*v7 + 56) + 8 * v13) = v5;
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    OUTLINED_FUNCTION_12_3();

    return sub_2315753DC(v20, v21, v22, v23);
  }
}

void sub_231575A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_33_2(v8, v9);
  OUTLINED_FUNCTION_2_39();
  if (v12)
  {
    __break(1u);
LABEL_12:
    sub_231586C84();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B310, &unk_231589340);
  if (OUTLINED_FUNCTION_20_10(v15))
  {
    sub_231574C34(v6);
    OUTLINED_FUNCTION_29_5();
    if (!v17)
    {
      goto LABEL_12;
    }

    v13 = v16;
  }

  if (v14)
  {
    *(*(*v7 + 56) + 8 * v13) = v5;
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    OUTLINED_FUNCTION_12_3();

    sub_231575420(v18, v19, v20, v21);
  }
}

void sub_231575AFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_23149C888(a2, a3);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F8, &qword_23158EF98);
  if ((sub_231586A64() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_23149C888(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_231586C84();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  if (v13)
  {
    type metadata accessor for StreamedEventsAggregator.AppEvent(0);
    sub_231576AC8();
  }

  else
  {
    sub_23157554C(v12, a2, a3, a1, *v5);
  }
}

void sub_231575C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23149C888(a3, a4);
  OUTLINED_FUNCTION_2_39();
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_231586C84();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
  if (OUTLINED_FUNCTION_47_2(v14))
  {
    v15 = OUTLINED_FUNCTION_23_7();
    sub_23149C888(v15, v16);
    OUTLINED_FUNCTION_15_15();
    if (!v18)
    {
      goto LABEL_14;
    }

    v12 = v17;
  }

  v19 = *v4;
  if (v13)
  {
    v20 = *(v19 + 56) + 16 * v12;
    *v20 = a1;
    *(v20 + 8) = a2;
    OUTLINED_FUNCTION_3_6();

    sub_2314A5EEC(v21, v22);
  }

  else
  {
    sub_231575464(v12, a3, a4, a1, a2, v19);
    OUTLINED_FUNCTION_3_6();
  }
}

void sub_231575D98(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_23149C888(a3, a4);
  OUTLINED_FUNCTION_2_39();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B200, &unk_23158E100);
  if ((OUTLINED_FUNCTION_47_2(v14) & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_23149C888(a3, a4);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_231586C84();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  v17 = *v4;
  if (v13)
  {
    v18 = *(v17 + 56) + 16 * v12;
    *v18 = a1;
    *(v18 + 8) = a2 & 1;
    OUTLINED_FUNCTION_3_6();
  }

  else
  {
    sub_2315754B4(v12, a3, a4, a1, a2 & 1, v17);
    OUTLINED_FUNCTION_3_6();
  }
}

unint64_t sub_231575EB4(uint64_t a1, char a2, double a3)
{
  sub_231574CB4(a1);
  OUTLINED_FUNCTION_2_39();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C150, &qword_23158F098);
  result = sub_231586A64();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_231574CB4(a1);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_231586C84();
    __break(1u);
    return result;
  }

  v9 = result;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a3;
  }

  else
  {

    return sub_231575508(v9, a1, v13, a3);
  }

  return result;
}

void sub_231575FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_49_1();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_18_11(v9, v7, v5);
  OUTLINED_FUNCTION_2_39();
  if (v13)
  {
    __break(1u);
LABEL_12:
    sub_231586C84();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEA8, &qword_23158E0C0);
  OUTLINED_FUNCTION_11_20();
  if (sub_231586A64())
  {
    sub_23149C888(v8, v6);
    OUTLINED_FUNCTION_15_15();
    if (!v17)
    {
      goto LABEL_12;
    }

    v14 = v16;
  }

  if (v15)
  {
    v18 = type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
    OUTLINED_FUNCTION_19(v18);
    sub_231576AC8();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    sub_23157554C(v14, v8, v6, v10, *v4);
    OUTLINED_FUNCTION_12_3();
  }
}

void sub_2315760F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_8_26(v6, v7, v8);
  OUTLINED_FUNCTION_2_39();
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_231586C84();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB60, &qword_23158C808);
  OUTLINED_FUNCTION_11_20();
  if (sub_231586A64())
  {
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_24_1();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  if (v13)
  {
    *(*(*v5 + 56) + 8 * v12) = v4;
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_17_16();
    sub_231575360(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_12_3();
  }
}

void sub_2315761FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_8_26(v6, v7, v8);
  OUTLINED_FUNCTION_2_39();
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_231586C84();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C148, &unk_23158F088);
  OUTLINED_FUNCTION_11_20();
  if (sub_231586A64())
  {
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_24_1();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  if (v13)
  {
    *(*(*v5 + 56) + 8 * v12) = v4;
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_17_16();
    sub_231575360(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_12_3();
  }
}

void sub_2315762D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_49_1();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_18_11(v9, v7, v5);
  OUTLINED_FUNCTION_2_39();
  if (v13)
  {
    __break(1u);
LABEL_12:
    sub_231586C84();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE68, &qword_23158E060);
  OUTLINED_FUNCTION_11_20();
  if (sub_231586A64())
  {
    sub_23149C888(v8, v6);
    OUTLINED_FUNCTION_15_15();
    if (!v17)
    {
      goto LABEL_12;
    }

    v14 = v16;
  }

  if (v15)
  {
    v18 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
    OUTLINED_FUNCTION_19(v18);
    sub_231576AC8();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    sub_23157554C(v14, v8, v6, v10, *v4);
    OUTLINED_FUNCTION_12_3();
  }
}

void sub_231576418(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_23149C888(a4, a5);
  OUTLINED_FUNCTION_2_39();
  if (v14)
  {
    __break(1u);
LABEL_12:
    sub_231586C84();
    __break(1u);
    return;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C140, &qword_23158F080);
  if (sub_231586A64())
  {
    sub_23149C888(a4, a5);
    OUTLINED_FUNCTION_30_4();
    if (!v18)
    {
      goto LABEL_12;
    }

    v15 = v17;
  }

  v19 = *v6;
  if (v16)
  {
    v20 = *(v19 + 56) + 24 * v15;
    *v20 = a1;
    *(v20 + 8) = a2 & 1;
    *(v20 + 16) = a3;
    OUTLINED_FUNCTION_34_5();
  }

  else
  {
    sub_2315755D0(v15, a4, a5, a1, a2 & 1, a3, v19);
    OUTLINED_FUNCTION_34_5();
  }
}

unint64_t *sub_231576550(uint64_t (*a1)(void *, uint64_t, __n128), unint64_t *a2, uint64_t a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a2 = sub_231576DE0(v12, v8, a3, v6);
      MEMORY[0x231931280](v12, -1, -1);
      return a2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = (v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_23149BEE0(0, v8, v9);
  v10 = sub_231576BB4(v9, v8, a3, v6);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a2;
}

unint64_t sub_2315766F8()
{
  result = qword_27DD5C108;
  if (!qword_27DD5C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C108);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreamedEventsAggregator(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_231576820(uint64_t a1)
{
  result = sub_231585884();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreamedEventsAggregator.AppEvent.EventType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_231576980(uint64_t a1)
{
  sub_231576A2C(319, &qword_27DD5C130, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_231576A2C(319, &qword_27DD5C138, type metadata accessor for StreamedEventsAggregator.AppEvent);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_231576A2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_231576A78()
{
  v1 = OUTLINED_FUNCTION_32_4();
  v2(v1);
  OUTLINED_FUNCTION_3_37();
  v3 = OUTLINED_FUNCTION_3_10();
  v4(v3);
  return v0;
}

uint64_t sub_231576AC8()
{
  v1 = OUTLINED_FUNCTION_32_4();
  v2(v1);
  OUTLINED_FUNCTION_3_37();
  v3 = OUTLINED_FUNCTION_3_10();
  v4(v3);
  return v0;
}

unint64_t sub_231576B18()
{
  result = qword_280D6FE80;
  if (!qword_280D6FE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D6FE80);
  }

  return result;
}

uint64_t sub_231576B5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_37();
  v5 = OUTLINED_FUNCTION_3_10();
  v6(v5);
  return a2;
}

uint64_t sub_231576BB4(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t, __n128))
{
  v32 = a4;
  v27 = a2;
  v28 = a1;
  v5 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  v31 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8);
  v29 = 0;
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v33 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v34 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = (v33[6] + 16 * v19);
    v21 = v20[1];
    v35[0] = *v20;
    v35[1] = v21;
    v22 = v30;
    v23 = v19;
    sub_23157581C();

    v24 = v36;
    v25 = (v32)(v35, v22);
    sub_23157586C(v22);

    v36 = v24;
    if (v24)
    {
      return result;
    }

    v14 = v34;
    if (v25)
    {
      *(v28 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_2314D4FB0(v28, v27, v29, v33);
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_2314D4FB0(v28, v27, v29, v33);
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_231576DE0(unint64_t *result, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_231576BB4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_47_2(uint64_t a1)
{

  return sub_231586A64();
}

uint64_t sub_231576F00()
{
  v1 = [objc_opt_self() sharedStore];
  v0[19] = v1;
  sub_2314A207C(0, &qword_280D6C650, 0x277CD3DD8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23157706C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C158, &qword_23158F0F8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231577338;
  v0[13] = &block_descriptor_20;
  v0[14] = v3;
  [v1 userContextOfClass:ObjCClassFromMetadata withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23157706C()
{

  return MEMORY[0x2822009F8](sub_23157714C, 0, 0);
}

void *sub_23157714C()
{
  v1 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C160, &qword_23158F100);
  result = sub_231586AC4();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v24 = result + 8;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v12 = v9 | (v4 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();

      result = v16 ? [v16 subscriptionStatus] : 0;
      *(v24 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v17 = (v3[6] + 16 * v12);
      *v17 = v15;
      v17[1] = v14;
      *(v3[7] + 8 * v12) = result;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      v3[2] = v20;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v4 >= v8)
      {
        break;
      }

      v11 = *(v1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_10;
      }
    }

    v21 = *(v23 + 152);

    v22 = *(v23 + 8);

    return v22(v3);
  }

  return result;
}

uint64_t sub_231577338(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_2314A207C(0, &qword_280D6C6B0, 0x277CD42D8);
  v3 = sub_2315860D4();

  return sub_231521DAC(v2, v3);
}

void sub_2315773B4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedStore];
  sub_2314A207C(0, &qword_280D6C650, 0x277CD3DD8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_231577680;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_231577890;
  v8[3] = &block_descriptor_4;
  v7 = _Block_copy(v8);

  [v4 userContextOfClass:ObjCClassFromMetadata withCompletion:v7];
  _Block_release(v7);
}

uint64_t sub_2315774E8(uint64_t a1, void (*a2)(void))
{
  sub_231577688(a1);
  if (v3)
  {
    v4 = sub_23157793C(v3);

    (a2)(v4);
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    v8 = sub_2315865E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_231496000, v7, v8, "SubscriptionStatusProvider: error coercing INMediaUserContext results to type", v9, 2u);
      MEMORY[0x231931280](v9, -1, -1);
    }

    type metadata accessor for SubscriptionStatus();
    sub_2315860F4();
    a2();
  }
}

void sub_231577688(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C168, &qword_23158F108);
    v2 = sub_231586AE4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(*(a1 + 56) + 8 * v9);
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      return;
    }

    v15 = v14;
    v5 &= v5 - 1;

    v16 = v13;
    v17 = sub_23149C888(v12, v11);
    v18 = v17;
    if (v19)
    {
      v20 = (v2[6] + 16 * v17);
      *v20 = v12;
      v20[1] = v11;

      v21 = v2[7];
      v22 = *(v21 + 8 * v18);
      *(v21 + 8 * v18) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      v23 = (v2[6] + 16 * v17);
      *v23 = v12;
      v23[1] = v11;
      *(v2[7] + 8 * v17) = v15;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_22;
      }

      v2[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_231577890(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_2314A207C(0, &qword_280D6C6B0, 0x277CD42D8);
  v3 = sub_2315860D4();

  v2(v3);
}

void *sub_23157793C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C160, &qword_23158F100);
  result = sub_231586AC4();
  v3 = result;
  v4 = 0;
  v25 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v12 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v16 = v13 | (v4 << 6);
      v17 = (*(v25 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v25 + 56) + 8 * v16);

      result = [v20 subscriptionStatus];
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v21 = (v3[6] + 16 * v16);
      *v21 = v18;
      v21[1] = v19;
      *(v3[7] + 8 * v16) = result;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v3[2] = v24;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v15 = *(v6 + 8 * v4);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_231577AAC(char a1)
{
  result = 0x6F63536567617375;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_231577B58(char a1)
{
  result = 0xD00000000000001CLL;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SupportedMediaCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231577CBC()
{
  result = qword_27DD5C170;
  if (!qword_27DD5C170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5C178, qword_23158F128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C170);
  }

  return result;
}

unint64_t sub_231577D34()
{
  result = qword_280D6D000;
  if (!qword_280D6D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6D000);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SyncedCompanionContextLookup(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t static TimeSinceAppLastInstalledSignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5C180 = a1;
  *(&xmmword_27DD5C180 + 1) = a2;
  byte_27DD5C190 = a3;
  return result;
}

double sub_231577F14@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5C190;
  result = *&xmmword_27DD5C180;
  *a1 = xmmword_27DD5C180;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_231577F68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5C180 = v1;
  *(&xmmword_27DD5C180 + 1) = v2;
  byte_27DD5C190 = v3;
  return result;
}

uint64_t sub_231577FC0(uint64_t a1)
{
  OUTLINED_FUNCTION_8_1(a1);
  result = sub_231586964();
  qword_280D6C960 = result;
  qword_280D6C968 = v2;
  return result;
}

uint64_t *sub_231578008()
{
  if (qword_280D6C958 != -1)
  {
    OUTLINED_FUNCTION_0_85(&qword_280D6C958);
  }

  return &qword_280D6C960;
}

uint64_t static TimeSinceAppLastInstalledSignal.signalName.getter(uint64_t a1)
{
  if (qword_280D6C958 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_85(&qword_280D6C958);
  }

  OUTLINED_FUNCTION_8_1(a1);
  v1 = qword_280D6C960;

  return v1;
}

uint64_t static TimeSinceAppLastInstalledSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6C958 != -1)
  {
    OUTLINED_FUNCTION_0_85(&qword_280D6C958);
  }

  swift_beginAccess();
  qword_280D6C960 = a1;
  qword_280D6C968 = a2;
}

uint64_t (*static TimeSinceAppLastInstalledSignal.signalName.modify())(uint64_t a1)
{
  if (qword_280D6C958 != -1)
  {
    OUTLINED_FUNCTION_0_85(&qword_280D6C958);
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

double sub_231578190@<D0>(void *a1@<X8>)
{
  sub_231578008();
  swift_beginAccess();
  v2 = qword_280D6C968;
  *a1 = qword_280D6C960;
  a1[1] = v2;

  return result;
}

uint64_t sub_2315781E4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231578008();
  swift_beginAccess();
  qword_280D6C960 = v2;
  qword_280D6C968 = v1;
}

uint64_t TimeSinceAppLastInstalledSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static TimeSinceAppLastInstalledSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 Install];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSinceAppLastInstalledSignal;
  *(v0 + 64) = &protocol witness table for TimeSinceAppLastInstalledSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6C958 != -1)
  {
    OUTLINED_FUNCTION_0_85(&qword_280D6C958);
  }

  swift_beginAccess();
  v4 = qword_280D6C968;
  *(v3 + 16) = qword_280D6C960;
  *(v3 + 24) = v4;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 32) = MEMORY[0x277D84F90];
  *(v3 + 40) = v2;
  *(v3 + 48) = sub_2314E03E4;
  *(v3 + 56) = 0;
  *(v3 + 64) = v5;
  *(v3 + 72) = -1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 1;

  return v0;
}

uint64_t static TimeSinceAppLastInstalledSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315793D4(v3, v1, v2);
}

uint64_t static TimeSinceAppLastInstalledSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2315791C8(v3);
}

uint64_t static TimeSinceAppLastInstalledSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612A90);
  *a1 = result;
  return result;
}

void TimeSinceAppLastInstalledSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  memcpy(__dst, v2, 0x51uLL);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2315860F4();
  v7 = [__dst[3] publisher];
  v8 = swift_allocObject();
  memcpy((v8 + 16), v3, 0x51uLL);
  aBlock[4] = sub_23157966C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2315226A0;
  aBlock[3] = &block_descriptor_21;
  v9 = _Block_copy(aBlock);
  sub_23155AA70(__dst, &v15);

  v10 = [v7 filterWithIsIncluded_];
  _Block_release(v9);
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = a1;
  v11[4] = a2;
  v19 = sub_231579674;
  v20 = v11;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2314B901C;
  v18 = &block_descriptor_12_0;
  v12 = _Block_copy(&v15);

  v19 = sub_231579680;
  v20 = v6;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2314B8374;
  v18 = &block_descriptor_15;
  v13 = _Block_copy(&v15);

  v14 = [v10 sinkWithCompletion:v12 receiveInput:v13];
  _Block_release(v13);
  _Block_release(v12);
}

BOOL sub_231578754(void *a1)
{
  v1 = [a1 eventBody];
  if (v1 && (v2 = sub_231579158(v1), v3))
  {
    v8[0] = v2;
    v8[1] = v3;
    MEMORY[0x28223BE20](v2);
    v7[2] = v8;
    v5 = sub_2314E62A8(sub_2314BB954, v7, v4);
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_231578814(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v5 = sub_231585FF4();
  __swift_project_value_buffer(v5, qword_280D72248);

  v6 = sub_231585FE4();
  v7 = sub_2315865D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_beginAccess();

    sub_2315860E4();

    v10 = sub_2314A22E8();

    *(v8 + 4) = v10;
    _os_log_impl(&dword_231496000, v6, v7, "TimeSinceAppLastInstalledSignal computed (absolute) %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x231931280](v9, -1, -1);
    MEMORY[0x231931280](v8, -1, -1);
  }

  swift_beginAccess();
  v12 = *(a2 + 16);
  v13 = 1;

  a3(&v12);
  return sub_2314A5EEC(v12, v13);
}

void sub_231578A0C(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x231930B10]();
  sub_231578A6C(a1, (a2 + 16));

  objc_autoreleasePoolPop(v4);
}

void sub_231578A6C(void *a1, uint64_t *a2)
{
  v4 = sub_231585884();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 eventBody];
  if (v8)
  {
    v9 = v8;
    if ([v8 isInstall])
    {
      v10 = sub_2314D752C(v9);
      if (v11)
      {
        v12 = v10;
        v13 = v11;
        swift_beginAccess();
        v30 = a2;
        v31 = v12;
        v14 = sub_23149CA24(v12, v13, *a2);
        v16 = v15;
        swift_endAccess();
        if (v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = v14;
        }

        [a1 timestamp];
        sub_231585774();
        sub_23149C774();
        v19 = v18;
        (*(v5 + 8))(v7, v4);
        if (qword_280D70420 != -1)
        {
          swift_once();
        }

        v20 = sub_231585FF4();
        __swift_project_value_buffer(v20, qword_280D72248);

        v21 = sub_231585FE4();
        v22 = sub_2315865D4();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = v17;
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v32 = v25;
          *v24 = 136315394;
          *(v24 + 4) = sub_2314A22E8();
          *(v24 + 12) = 2048;
          *(v24 + 14) = v19;
          _os_log_impl(&dword_231496000, v21, v22, "TimeSinceAppLastInstalledSignal: %s/%ld", v24, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v25);
          MEMORY[0x231931280](v25, -1, -1);
          v26 = v24;
          v17 = v23;
          MEMORY[0x231931280](v26, -1, -1);
        }

        if (v17 >= v19)
        {
        }

        else
        {
          v27 = v30;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = *v27;
          sub_23157562C(v19, v31, v13, isUniquelyReferenced_nonNull_native);
          *v27 = v33;

          swift_endAccess();
        }
      }
    }
  }
}

void TimeSinceAppLastInstalledSignal.derive(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = a2;
  switch(v4)
  {
    case 1:
      swift_retain_n();
      sub_2314EA928(*&v3, v5, v6);
      v40 = v39;

      *v7 = v40;
      goto LABEL_38;
    case 2:
      v10 = OUTLINED_FUNCTION_6_1(*a1);
      if (!(v12 ^ v13 | v11))
      {
        goto LABEL_44;
      }

      if (v10 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v10 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v14 = v10;
      if ((v10 & 0x8000000000000000) == 0)
      {

        v16 = v5(v15);

        if (v16 < v14)
        {
          v14 = -1;
        }

        else
        {
          v14 = v16 - v14;
        }
      }

      *v7 = v14;
      goto LABEL_38;
    case 3:
      v43 = *(v2 + 32);
      v41 = *(a1 + 8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v17 = sub_231586AC4();
      v18 = v17;
      v19 = *&v3 + 64;
      v20 = 1 << *(*&v3 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      i = v21 & *(*&v3 + 64);
      v23 = (v20 + 63) >> 6;
      v45 = v17 + 64;
      swift_retain_n();
      v24 = 0;
      v44 = v3;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((*&v3 & 0x8000000000000000) == 0)
      {

        v9 = v5(v8);

        if (v9 < *&v3)
        {
          v3 = NAN;
        }

        else
        {
          *&v3 = v9 - *&v3;
        }
      }

      *v7 = v3;
      goto LABEL_38;
  }

LABEL_20:
  v26 = v24;
  do
  {
    v24 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v24 >= v23)
    {

      v4 = v41;
      v7 = a2;
      *a2 = v18;
LABEL_38:
      *(v7 + 8) = v4;
      return;
    }

    v27 = *(v19 + 8 * v24);
    ++v26;
  }

  while (!v27);
  v25 = __clz(__rbit64(v27));
  for (i = (v27 - 1) & v27; ; i &= i - 1)
  {
    v28 = v25 | (v24 << 6);
    v29 = OUTLINED_FUNCTION_6_1(*(*(*&v3 + 56) + 8 * v28));
    if (!(v12 ^ v13 | v11))
    {
      break;
    }

    if (v29 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v29 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v30 = (*(*&v3 + 48) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = v29;

    if ((v33 & 0x8000000000000000) == 0)
    {
      v35 = v43(v34);
      if (v35 < v33)
      {
        v33 = -1;
      }

      else
      {
        v33 = v35 - v33;
      }
    }

    *(v45 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v36 = (v18[6] + 16 * v28);
    *v36 = v31;
    v36[1] = v32;
    *(v18[7] + 8 * v28) = v33;
    v37 = v18[2];
    v13 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v13)
    {
      goto LABEL_43;
    }

    v18[2] = v38;
    v3 = v44;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v25 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void TimeSinceAppLastInstalledSignal.adaptCached(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 64);
  v8 = *(v2 + 48);
  v9 = v5;
  v10 = *(v2 + 80);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

uint64_t sub_231579108(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315793D4(v3, v1, v2);
}

uint64_t sub_231579158(void *a1)
{
  v2 = [a1 bundleID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2315861A4();

  return v3;
}

uint64_t sub_2315791C8(uint64_t *a1)
{
  v15[3] = &type metadata for SignalComputationContext;
  v15[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v15[0] = v2;
  v3 = *a1;
  v16 = *a1;
  v4 = *(a1 + 1);
  v2[1] = *a1;
  v2[2] = v4;
  v2[3] = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v15, v14);
  sub_2314B5008(a1, v13);
  v6 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v7 = [v6 Install];
  swift_unknownObjectRelease();
  *(v5 + 56) = &type metadata for TimeSinceAppLastInstalledSignal;
  *(v5 + 64) = &protocol witness table for TimeSinceAppLastInstalledSignal;
  v8 = swift_allocObject();
  *(v5 + 32) = v8;
  if (qword_280D6C958 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_280D6C968;
  *(v8 + 16) = qword_280D6C960;
  *(v8 + 24) = v9;
  v10 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  *(v8 + 32) = v3;
  *(v8 + 40) = v7;
  *(v8 + 48) = sub_2314E03E4;
  *(v8 + 56) = 0;
  *(v8 + 64) = *v10;
  *(v8 + 72) = -1;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = 1;

  sub_2315075A0(&v16, &v12);

  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v5;
}

uint64_t sub_2315793D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[3] = a2;
  v17[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a2 - 8) + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v17, v14);
  v6 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v13 = [v6 Install];
  swift_unknownObjectRelease();
  *(v5 + 56) = &type metadata for TimeSinceAppLastInstalledSignal;
  *(v5 + 64) = &protocol witness table for TimeSinceAppLastInstalledSignal;
  v7 = swift_allocObject();
  *(v5 + 32) = v7;
  if (qword_280D6C958 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_280D6C968;
  *(v7 + 16) = qword_280D6C960;
  *(v7 + 24) = v8;
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = *(a3 + 8);

  *(v7 + 32) = v11(a2, a3);
  *(v7 + 40) = v13;
  *(v7 + 48) = sub_2314E03E4;
  *(v7 + 56) = 0;
  *(v7 + 64) = v11(v9, v10);
  *(v7 + 72) = -1;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 1;
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v5;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_231579690(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2315796D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *sub_231579748()
{
  if (qword_280D6F020 != -1)
  {
    OUTLINED_FUNCTION_0_86(&qword_280D6F020);
  }

  return &qword_280D6F028;
}

uint64_t sub_23157979C()
{
  result = sub_231586964();
  qword_280D6F028 = result;
  qword_280D6F030 = v1;
  return result;
}

uint64_t static TimeSinceAppLastLaunchedSignal.signalName.getter()
{
  if (qword_280D6F020 != -1)
  {
    OUTLINED_FUNCTION_0_86(&qword_280D6F020);
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v0 = qword_280D6F028;

  return v0;
}

uint64_t static TimeSinceAppLastLaunchedSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F020 != -1)
  {
    OUTLINED_FUNCTION_0_86(&qword_280D6F020);
  }

  swift_beginAccess();
  qword_280D6F028 = a1;
  qword_280D6F030 = a2;
}

uint64_t (*static TimeSinceAppLastLaunchedSignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280D6F020 != -1)
  {
    OUTLINED_FUNCTION_0_86(&qword_280D6F020);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_231579934@<D0>(void *a1@<X8>)
{
  sub_231579748();
  swift_beginAccess();
  v2 = qword_280D6F030;
  *a1 = qword_280D6F028;
  a1[1] = v2;

  return result;
}

uint64_t sub_231579988(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231579748();
  swift_beginAccess();
  qword_280D6F028 = v2;
  qword_280D6F030 = v1;
}

uint64_t TimeSinceAppLastLaunchedSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static TimeSinceAppLastLaunchedSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSinceAppLastLaunchedSignal;
  *(v0 + 64) = &protocol witness table for TimeSinceAppLastLaunchedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F020 != -1)
  {
    OUTLINED_FUNCTION_0_86(&qword_280D6F020);
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v4 = qword_280D6F030;
  *(v3 + 16) = qword_280D6F028;
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  *(v3 + 40) = sub_2314E03E4;
  *(v3 + 48) = 0;
  *(v3 + 56) = MEMORY[0x277D84F90];
  *(v3 + 64) = -1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;

  return v0;
}

uint64_t static TimeSinceAppLastLaunchedSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23157AC90(v3, v1, v2);
}

uint64_t static TimeSinceAppLastLaunchedSignal.instances(context:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  v3 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v4 = [v3 InFocus];
  swift_unknownObjectRelease();
  *(v2 + 56) = &type metadata for TimeSinceAppLastLaunchedSignal;
  *(v2 + 64) = &protocol witness table for TimeSinceAppLastLaunchedSignal;
  v5 = swift_allocObject();
  *(v2 + 32) = v5;
  if (qword_280D6F020 != -1)
  {
    OUTLINED_FUNCTION_0_86(&qword_280D6F020);
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v6 = qword_280D6F030;
  *(v5 + 16) = qword_280D6F028;
  *(v5 + 24) = v6;
  *(v5 + 32) = v4;
  *(v5 + 40) = sub_2314E03E4;
  *(v5 + 48) = 0;
  *(v5 + 56) = v1;
  *(v5 + 64) = -1;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 1;

  return v2;
}

uint64_t static TimeSinceAppLastLaunchedSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612A68);
  *a1 = result;
  return result;
}

void sub_231579D64(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  v34 = *a2;
  LOBYTE(v35) = v4;
  swift_unknownObjectRetain();
  sub_2315074D0(v34, v4);
  sub_2314D7108(&v34, &v29);
  v5 = v30;
  if (!v30)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v24 = sub_231585FF4();
    __swift_project_value_buffer(v24, qword_280D72248);
    v25 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_231496000, v25, v26, "TimeSinceAppLastLaunchedSignal: Invalid input", v27, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_19;
  }

  v6 = v29;
  v7 = v33;
  if ((v31 & 1) == 0)
  {
    v34 = v29;
    v35 = v30;
    sub_2315074E4(&v34);
    v36 = v7;
    sub_231507538(&v36);
LABEL_19:
    v14 = 0;
    v28 = -1;
    goto LABEL_22;
  }

  v8 = v32;

  v9 = sub_23149CA24(v6, v5, v7);
  v11 = v10;

  if (v11)
  {
    v12 = -1;
  }

  else
  {
    v12 = v9;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v7;
  sub_23157562C(v8, v6, v5, isUniquelyReferenced_nonNull_native);
  v14 = v34;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v15 = sub_231585FF4();
  __swift_project_value_buffer(v15, qword_280D72248);

  v16 = sub_231585FE4();
  v17 = sub_2315865D4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_2314A22E8();
    *(v18 + 12) = 2048;
    *(v18 + 14) = v12;
    *(v18 + 22) = 2048;
    v20 = sub_23149CA24(v6, v5, v14);
    v22 = v21;

    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = v20;
    }

    *(v18 + 24) = v23;

    _os_log_impl(&dword_231496000, v16, v17, "TimeSinceAppLastLaunchedSignal#accumulate - updated value for %s from %ld to %ld", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v28 = 1;
LABEL_22:
  *a3 = v14;
  *(a3 + 8) = v28;
}

void TimeSinceAppLastLaunchedSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock - v9;
  v11 = *(v2 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2315860F4();
  sub_231585794();
  v13 = sub_231585884();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
  v14 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_3_38();
  sub_2314B87DC(v15, v16, v17, v18, 0);
  v20 = v19;
  v21 = [v11 publisherWithOptions_];
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v22 = sub_231585FF4();
  __swift_project_value_buffer(v22, qword_280D72248);
  v23 = sub_231585FE4();
  v24 = sub_2315865D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_231496000, v23, v24, "TimeSinceAppLastLaunchedSignal starting computation", v25, 2u);
    OUTLINED_FUNCTION_10();
  }

  v26 = swift_allocObject();
  v26[2] = v12;
  v26[3] = a1;
  v26[4] = a2;
  v34 = sub_23157AED4;
  v35 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2314B901C;
  v33 = &block_descriptor_22;
  v27 = _Block_copy(&aBlock);

  v34 = sub_23157AEE0;
  v35 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2314B901C;
  v33 = &block_descriptor_11_0;
  v28 = _Block_copy(&aBlock);

  v29 = [v21 sinkWithCompletion:v27 receiveInput:v28];
  _Block_release(v28);
  _Block_release(v27);
}

uint64_t sub_23157A3F8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v5 = sub_231585FF4();
  __swift_project_value_buffer(v5, qword_280D72248);

  v6 = sub_231585FE4();
  v7 = sub_2315865D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_beginAccess();

    sub_2315860E4();

    v10 = sub_2314A22E8();

    *(v8 + 4) = v10;
    _os_log_impl(&dword_231496000, v6, v7, "TimeSinceAppLastLaunchedSignal computed (absolute) %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x231931280](v9, -1, -1);
    MEMORY[0x231931280](v8, -1, -1);
  }

  swift_beginAccess();
  v12 = *(a2 + 16);
  v13 = 1;

  a3(&v12);
  return sub_2314A5EEC(v12, v13);
}

void sub_23157A5F0(void *a1, uint64_t a2)
{
  v4 = sub_231585884();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = [a1 eventBody];
  if (!v11)
  {
    return;
  }

  v27 = v11;
  v12 = sub_2314D7528(v11);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v13;
  v16 = [v27 absoluteTimestamp];
  if (!v16)
  {

LABEL_10:
    v24 = v27;

    return;
  }

  v17 = v16;
  sub_231585834();

  (*(v5 + 32))(v10, v8, v4);
  if (([v27 starting] & 1) == 0)
  {
LABEL_8:
    (*(v5 + 8))(v10, v4);

    return;
  }

  sub_23149C774();
  v19 = v18;
  swift_beginAccess();
  v20 = *(a2 + 16);
  if (*(v20 + 16) && (v21 = sub_23149C888(v14, v15), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    swift_endAccess();
    if (v23 >= v19)
    {
      goto LABEL_8;
    }
  }

  else
  {
    swift_endAccess();
    if (v19 <= 0)
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a2 + 16);
  sub_23157562C(v19, v14, v15, isUniquelyReferenced_nonNull_native);
  *(a2 + 16) = v28;

  swift_endAccess();

  (*(v5 + 8))(v10, v4);
}

void TimeSinceAppLastLaunchedSignal.derive(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = a2;
  switch(v4)
  {
    case 1:
      swift_retain_n();
      sub_2314EA928(*&v3, v5, v6);
      v40 = v39;

      *v7 = v40;
      goto LABEL_38;
    case 2:
      v10 = OUTLINED_FUNCTION_6_1(*a1);
      if (!(v12 ^ v13 | v11))
      {
        goto LABEL_44;
      }

      if (v10 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v10 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v14 = v10;
      if ((v10 & 0x8000000000000000) == 0)
      {

        v16 = v5(v15);

        if (v16 < v14)
        {
          v14 = -1;
        }

        else
        {
          v14 = v16 - v14;
        }
      }

      *v7 = v14;
      goto LABEL_38;
    case 3:
      v43 = *(v2 + 24);
      v41 = *(a1 + 8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v17 = sub_231586AC4();
      v18 = v17;
      v19 = *&v3 + 64;
      v20 = 1 << *(*&v3 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      i = v21 & *(*&v3 + 64);
      v23 = (v20 + 63) >> 6;
      v45 = v17 + 64;
      swift_retain_n();
      v24 = 0;
      v44 = v3;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((*&v3 & 0x8000000000000000) == 0)
      {

        v9 = v5(v8);

        if (v9 < *&v3)
        {
          v3 = NAN;
        }

        else
        {
          *&v3 = v9 - *&v3;
        }
      }

      *v7 = v3;
      goto LABEL_38;
  }

LABEL_20:
  v26 = v24;
  do
  {
    v24 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v24 >= v23)
    {

      v4 = v41;
      v7 = a2;
      *a2 = v18;
LABEL_38:
      *(v7 + 8) = v4;
      return;
    }

    v27 = *(v19 + 8 * v24);
    ++v26;
  }

  while (!v27);
  v25 = __clz(__rbit64(v27));
  for (i = (v27 - 1) & v27; ; i &= i - 1)
  {
    v28 = v25 | (v24 << 6);
    v29 = OUTLINED_FUNCTION_6_1(*(*(*&v3 + 56) + 8 * v28));
    if (!(v12 ^ v13 | v11))
    {
      break;
    }

    if (v29 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v29 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v30 = (*(*&v3 + 48) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = v29;

    if ((v33 & 0x8000000000000000) == 0)
    {
      v35 = v43(v34);
      if (v35 < v33)
      {
        v33 = -1;
      }

      else
      {
        v33 = v35 - v33;
      }
    }

    *(v45 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v36 = (v18[6] + 16 * v28);
    *v36 = v31;
    v36[1] = v32;
    *(v18[7] + 8 * v28) = v33;
    v37 = v18[2];
    v13 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v13)
    {
      goto LABEL_43;
    }

    v18[2] = v38;
    v3 = v44;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v25 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void TimeSinceAppLastLaunchedSignal.adaptCached(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 56);
  v8 = *(v2 + 40);
  v9 = v5;
  v10 = *(v2 + 72);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

uint64_t sub_23157AC18(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23157AC90(v3, v1, v2);
}

uint64_t sub_23157AC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_231588340;
  v9 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v10 = [v9 InFocus];
  swift_unknownObjectRelease();
  *(v8 + 56) = &type metadata for TimeSinceAppLastLaunchedSignal;
  *(v8 + 64) = &protocol witness table for TimeSinceAppLastLaunchedSignal;
  v11 = swift_allocObject();
  *(v8 + 32) = v11;
  if (qword_280D6F020 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_280D6F030;
  *(v11 + 16) = qword_280D6F028;
  *(v11 + 24) = v12;
  *(v11 + 32) = v10;
  *(v11 + 40) = sub_2314E03E4;
  *(v11 + 48) = 0;
  v13 = *(a3 + 8);

  *(v11 + 56) = v13(a2, a3);
  *(v11 + 64) = -1;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 1;
  (*(v5 + 8))(v7, a2);
  return v8;
}

uint64_t sub_23157AF14()
{
  result = sub_231586964();
  qword_280D6C9B0 = result;
  qword_280D6C9B8 = v1;
  return result;
}

uint64_t *sub_23157AF48()
{
  if (qword_280D6C9A8 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_280D6C9A8);
  }

  return &qword_280D6C9B0;
}

uint64_t static TimeSpentInAppAffinityScore.signalName.getter()
{
  if (qword_280D6C9A8 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_280D6C9A8);
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v0 = qword_280D6C9B0;

  return v0;
}

uint64_t static TimeSpentInAppAffinityScore.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6C9A8 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_280D6C9A8);
  }

  swift_beginAccess();
  qword_280D6C9B0 = a1;
  qword_280D6C9B8 = a2;
}

uint64_t (*static TimeSpentInAppAffinityScore.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280D6C9A8 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_280D6C9A8);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_23157B0EC@<D0>(void *a1@<X8>)
{
  sub_23157AF48();
  swift_beginAccess();
  v2 = qword_280D6C9B8;
  *a1 = qword_280D6C9B0;
  a1[1] = v2;

  return result;
}

uint64_t sub_23157B140(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23157AF48();
  swift_beginAccess();
  qword_280D6C9B0 = v2;
  qword_280D6C9B8 = v1;
}

uint64_t TimeSpentInAppAffinityScore.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static TimeSpentInAppAffinityScore.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSpentInAppAffinityScore;
  *(v0 + 64) = &protocol witness table for TimeSpentInAppAffinityScore;
  if (qword_280D6C9A8 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_280D6C9A8);
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v3 = qword_280D6C9B8;
  *(v0 + 32) = qword_280D6C9B0;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;

  return v0;
}

uint64_t static TimeSpentInAppAffinityScore.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_23157BFCC();
}

uint64_t static TimeSpentInAppAffinityScore.instances(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSpentInAppAffinityScore;
  *(v0 + 64) = &protocol witness table for TimeSpentInAppAffinityScore;
  if (qword_280D6C9A8 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_280D6C9A8);
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v3 = qword_280D6C9B8;
  *(v0 + 32) = qword_280D6C9B0;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;

  return v0;
}

uint64_t static TimeSpentInAppAffinityScore.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612A40);
  *a1 = result;
  return result;
}

void TimeSpentInAppAffinityScore.value(completion:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v12 = swift_allocObject();
  type metadata accessor for Aggregation();
  *(v12 + 16) = sub_2315860F4();
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F8, &unk_231588F10);
  *(v13 + 16) = sub_2315860F4();
  sub_231585794();
  v14 = sub_231585884();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_3_38();
  sub_2314B87DC(v16, v17, v18, v19, 0);
  v34 = v20;
  v31 = [v11 publisherWithOptions_];
  v21 = swift_allocObject();
  v21[2] = v12;
  v21[3] = v10;
  v22 = v10;
  v21[4] = v9;
  v21[5] = v11;
  v23 = v33;
  v21[6] = v32;
  v21[7] = v23;
  v39 = sub_23157C0F0;
  v40 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_2314B901C;
  v38 = &block_descriptor_23;
  v24 = _Block_copy(&aBlock);

  v25 = v11;

  v26 = swift_allocObject();
  v26[2] = v22;
  v26[3] = v9;
  v26[4] = v25;
  v26[5] = v12;
  v26[6] = v13;
  v39 = sub_23157C100;
  v40 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_2314B901C;
  v38 = &block_descriptor_13_2;
  v27 = _Block_copy(&aBlock);

  v28 = v25;

  v29 = v31;
  v30 = [v31 sinkWithCompletion:v24 receiveInput:v27];
  _Block_release(v27);
  _Block_release(v24);
}

uint64_t sub_23157B804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t *))
{
  swift_beginAccess();

  v9 = sub_2314E40FC(v8);
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v10 = sub_231585FF4();
  __swift_project_value_buffer(v10, qword_280D72248);

  v11 = a5;

  v12 = sub_231585FE4();
  v13 = sub_2315865D4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_2314A22E8();
    *(v14 + 12) = 2080;
    sub_2315860E4();
    v16 = sub_2314A22E8();

    *(v14 + 14) = v16;
    _os_log_impl(&dword_231496000, v12, v13, "%s value: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v15, -1, -1);
    MEMORY[0x231931280](v14, -1, -1);
  }

  v18 = v9;
  v19 = 3;
  a6(&v18);
  return sub_2314A5EEC(v18, v19);
}

void sub_23157BA2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = MEMORY[0x231930B10]();
  swift_beginAccess();
  swift_beginAccess();
  sub_23157BAE4(a1, (a5 + 16), (a6 + 16));
  swift_endAccess();
  swift_endAccess();
  objc_autoreleasePoolPop(v9);
}

void sub_23157BAE4(void *a1, void *a2, void *a3)
{
  v7 = sub_231585884();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 16);
  v12 = [a1 eventBody];
  if (!v12)
  {
    return;
  }

  v43 = v8;
  v44 = v12;
  v13 = sub_2314D7528(v12);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v17 = [v44 absoluteTimestamp];
    if (v17)
    {
      v18 = v17;
      sub_231585834();

      v19 = *a3;
      v20 = 0.0;
      if (*(*a3 + 16) && (v21 = sub_23149C888(v15, v16), (v22 & 1) != 0))
      {
        v23 = *(v19 + 56) + 16 * v21;
        v20 = *v23;
        v24 = *(v23 + 8);
      }

      else
      {
        v24 = 1;
      }

      if ([v44 starting])
      {
        sub_231585784();
        v26 = v25;
        swift_isUniquelyReferenced_nonNull_native();
        v45 = *a3;
        sub_231575D98(v26, 0, v15, v16);

        *a3 = v45;
      }

      else
      {
        if (v24)
        {

          if (qword_280D70420 != -1)
          {
            swift_once();
          }

          v28 = sub_231585FF4();
          __swift_project_value_buffer(v28, qword_280D72248);

          v29 = v11;
          v30 = sub_231585FE4();
          v31 = sub_2315865D4();

          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v45 = v33;
            *v32 = 136315138;

            v34 = sub_2314A22E8();

            *(v32 + 4) = v34;
            _os_log_impl(&dword_231496000, v30, v31, "%s ignoring extra app close event", v32, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v33);
            MEMORY[0x231931280](v33, -1, -1);
            MEMORY[0x231931280](v32, -1, -1);
          }
        }

        else
        {
          v35 = *a2;
          if (*(*a2 + 16) && (v36 = sub_23149C888(v15, v16), (v37 & 1) != 0))
          {
            v38 = *(*(v35 + 56) + 8 * v36);
          }

          else
          {
            sub_2314B676C();
            v39 = sub_2315860F4();
            type metadata accessor for Aggregation();
            swift_allocObject();
            v38 = sub_2314B53E8(v39);
          }

          sub_231585784();
          sub_2314B59E4(v20, v40);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = *a2;
          sub_2315760F4(v38, v15, v16, isUniquelyReferenced_nonNull_native);
          *a2 = v45;
          sub_231561958(v15, v16);
        }
      }

      (*(v43 + 8))(v10, v7);
      return;
    }
  }

  v27 = v44;
}

uint64_t sub_23157BF6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_23157BFCC();
}

uint64_t sub_23157BFCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSpentInAppAffinityScore;
  *(v0 + 64) = &protocol witness table for TimeSpentInAppAffinityScore;
  if (qword_280D6C9A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_280D6C9B8;
  *(v0 + 32) = qword_280D6C9B0;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;

  return v0;
}

uint64_t *sub_23157C128()
{
  if (qword_27DD5AE50 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_27DD5AE50);
  }

  return &qword_27DD5C198;
}

uint64_t sub_23157C17C()
{
  result = sub_231586964();
  qword_27DD5C198 = result;
  qword_27DD5C1A0 = v1;
  return result;
}

uint64_t static TimeTodaySpentInApp.signalName.getter()
{
  if (qword_27DD5AE50 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_27DD5AE50);
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v0 = qword_27DD5C198;

  return v0;
}

uint64_t static TimeTodaySpentInApp.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27DD5AE50 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_27DD5AE50);
  }

  swift_beginAccess();
  qword_27DD5C198 = a1;
  qword_27DD5C1A0 = a2;
}

uint64_t (*static TimeTodaySpentInApp.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27DD5AE50 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_27DD5AE50);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_23157C314@<D0>(void *a1@<X8>)
{
  sub_23157C128();
  swift_beginAccess();
  v2 = qword_27DD5C1A0;
  *a1 = qword_27DD5C198;
  a1[1] = v2;

  return result;
}

uint64_t sub_23157C368(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23157C128();
  swift_beginAccess();
  qword_27DD5C198 = v2;
  qword_27DD5C1A0 = v1;
}

uint64_t TimeTodaySpentInApp.id.getter()
{
  v1 = *v0;

  return v1;
}

double TimeTodaySpentInApp.cacheExpirationPolicy()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(24, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static TimeTodaySpentInApp.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeTodaySpentInApp;
  *(v0 + 64) = &protocol witness table for TimeTodaySpentInApp;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_27DD5AE50 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_27DD5AE50);
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v4 = qword_27DD5C1A0;
  *(v3 + 16) = qword_27DD5C198;
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  *(v3 + 40) = sub_2314E03E4;
  *(v3 + 48) = 0;
  *(v3 + 56) = MEMORY[0x277D84F90];
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;

  return v0;
}

uint64_t static TimeTodaySpentInApp.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23157DA08(v3, v1, v2);
}

uint64_t static TimeTodaySpentInApp.instances(context:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  v3 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v4 = [v3 InFocus];
  swift_unknownObjectRelease();
  *(v2 + 56) = &type metadata for TimeTodaySpentInApp;
  *(v2 + 64) = &protocol witness table for TimeTodaySpentInApp;
  v5 = swift_allocObject();
  *(v2 + 32) = v5;
  if (qword_27DD5AE50 != -1)
  {
    OUTLINED_FUNCTION_0_88(&qword_27DD5AE50);
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v6 = qword_27DD5C1A0;
  *(v5 + 16) = qword_27DD5C198;
  *(v5 + 24) = v6;
  *(v5 + 32) = v4;
  *(v5 + 40) = sub_2314E03E4;
  *(v5 + 48) = 0;
  *(v5 + 56) = v1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 1;

  return v2;
}

uint64_t static TimeTodaySpentInApp.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846129F0);
  *a1 = result;
  return result;
}

uint64_t TimeTodaySpentInApp.value(completion:)(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = &v56 - v7;
  v8 = sub_231585884();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  memcpy(__dst, v2, 0x49uLL);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2315860F4();
  v18 = (__dst[3])();
  v19 = sub_2314A1DFC(24, 2);

  if (__OFSUB__(v18, v19))
  {
    __break(1u);
  }

  else
  {
    v60 = v10;
    v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = a1;
    sub_231585774();
    if (qword_280D70420 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v62 = v17;
  v20 = sub_231585FF4();
  __swift_project_value_buffer(v20, qword_280D72248);
  v21 = *(v9 + 16);
  v22 = v14;
  v21(v14, v16, v8);
  v23 = sub_231585FE4();
  v24 = sub_2315865D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock = v57;
    *v25 = 136315138;
    v26 = v59;
    v21(v59, v22, v8);
    sub_2314E0124(v26);
    v56 = v21;
    v58 = v16;
    v27 = OUTLINED_FUNCTION_1_44(v9);
    v28(v27, v8);
    v29 = sub_2314A22E8();
    v16 = v58;

    *(v25 + 4) = v29;
    _os_log_impl(&dword_231496000, v23, v24, "Filtering start time to [%s]", v25, 0xCu);
    v30 = v57;
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x231931280](v30, -1, -1);
    v31 = v25;
    v32 = v26;
    v33 = v56;
    MEMORY[0x231931280](v31, -1, -1);
  }

  else
  {

    v34 = OUTLINED_FUNCTION_1_44(v9);
    v35(v34, v8);
    v32 = v59;
    v33 = v21;
  }

  v36 = v63;
  v33(v63, v16, v8);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v8);
  __swift_storeEnumTagSinglePayload(v64, 1, 1, v8);
  v37 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_3_38();
  sub_2314B87DC(v38, v39, v40, v41, 0);
  v43 = v42;
  v44 = [__dst[2] publisherWithOptions_];
  v33(v32, v16, v8);
  v45 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v46 = swift_allocObject();
  (*(v9 + 32))(v46 + v45, v32, v8);
  v70 = sub_23157DC48;
  v71 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_2315226A0;
  v69 = &block_descriptor_24;
  v47 = _Block_copy(&aBlock);

  v48 = [v44 filterWithIsIncluded_];
  _Block_release(v47);
  v49 = swift_allocObject();
  v50 = v62;
  v51 = v61;
  v49[2] = v62;
  v49[3] = v51;
  v49[4] = v65;
  memcpy(v49 + 5, __dst, 0x49uLL);
  v72[4] = sub_23157DCB8;
  v72[5] = v49;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 1107296256;
  v72[2] = sub_2314B901C;
  v72[3] = &block_descriptor_14;
  v52 = _Block_copy(v72);

  sub_23155A900(__dst, &aBlock);

  v70 = sub_23157DCC8;
  v71 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = sub_2314B901C;
  v69 = &block_descriptor_17_0;
  v53 = _Block_copy(&aBlock);

  v54 = [v48 sinkWithCompletion:v52 receiveInput:v53];
  _Block_release(v53);
  _Block_release(v52);

  (*(v9 + 8))(v16, v8);
}

id sub_23157CF1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  result = [a1 eventBody];
  if (result)
  {
    v9 = result;
    v10 = [result absoluteTimestamp];

    if (v10)
    {
      sub_231585834();

      v11 = sub_231585884();
      v12 = 0;
    }

    else
    {
      v11 = sub_231585884();
      v12 = 1;
    }

    __swift_storeEnumTagSinglePayload(v5, v12, 1, v11);
    sub_2314A0710(v5, v7);
    sub_231585884();
    if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
    {
      sub_2314BA0FC(v7);
      return 0;
    }

    else
    {
      sub_231585784();
      v14 = v13;
      (*(*(v11 - 8) + 8))(v7, v11);
      sub_231585784();
      return (v15 <= v14);
    }
  }

  return result;
}

uint64_t sub_23157D0D4(uint64_t a1, uint64_t a2, void (*a3)(void **), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
  v8 = sub_231586AC4();
  v9 = v8;
  v10 = 0;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = v8 + 64;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v19 = v16 | (v10 << 6);
      v20 = (*(v7 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v7 + 56) + 24 * v19 + 16);
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = (v9[6] + 16 * v19);
      *v24 = v22;
      v24[1] = v21;
      *(v9[7] + 8 * v19) = v23;
      v25 = v9[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v9[2] = v27;

      if (!v13)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  else
  {
LABEL_5:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v10 >= v14)
      {
        break;
      }

      v18 = *(v7 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    if (qword_280D70420 != -1)
    {
      goto LABEL_19;
    }
  }

  v28 = sub_231585FF4();
  __swift_project_value_buffer(v28, qword_280D72248);

  v29 = sub_231585FE4();
  v30 = sub_2315865D4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v41 = v32;
    *v31 = 136315138;
    sub_2315860E4();
    v33 = sub_2314A22E8();

    *(v31 + 4) = v33;
    _os_log_impl(&dword_231496000, v29, v30, "TimeTodaySpentInApp computed (absolute) %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x231931280](v32, -1, -1);
    MEMORY[0x231931280](v31, -1, -1);
  }

  v34 = *(a5 + 56);
  v41 = *(a5 + 40);
  v42 = v34;
  v43 = *(a5 + 72);
  v37 = v9;
  v38 = 1;
  sub_231566F38(&v37, &v39);

  v37 = v39;
  v38 = v40;
  a3(&v37);
  return sub_2314A5EEC(v37, v38);
}

void TimeTodaySpentInApp.adaptCached(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 56);
  v8 = *(v2 + 40);
  v9 = v5;
  v10 = *(v2 + 72);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

void sub_23157D438(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x231930B10]();
  sub_23157D498(a1, (a2 + 16));

  objc_autoreleasePoolPop(v4);
}

void sub_23157D498(void *a1, uint64_t *a2)
{
  v5 = sub_231585884();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = [a1 eventBody];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v52 = sub_2314D7528(v15);
  if (!v17)
  {
LABEL_9:

    return;
  }

  v18 = v17;
  v51 = a2;
  v19 = [v16 absoluteTimestamp];
  if (!v19)
  {

    goto LABEL_9;
  }

  v20 = v19;
  sub_231585834();

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v21 = sub_231585FF4();
  __swift_project_value_buffer(v21, qword_280D72248);
  v48 = v6;
  v46 = *(v6 + 16);
  v46(v12, v14, v5);

  v22 = v16;
  v23 = sub_231585FE4();
  v47 = v5;
  v24 = v23;
  v25 = sub_2315865D4();

  v55 = v25;
  v26 = v25;
  v27 = v24;
  v28 = os_log_type_enabled(v24, v26);
  v49 = v22;
  v50 = v2;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53[0] = v45;
    *v29 = 136315650;
    *(v29 + 4) = sub_2314A22E8();
    *(v29 + 12) = 1024;
    *(v29 + 14) = [v22 starting];

    *(v29 + 18) = 2080;
    v30 = v47;
    v46(v9, v12, v47);
    sub_2314E0124(v9);
    v31 = v12;
    v32 = *(v48 + 8);
    v32(v31, v30);
    v33 = sub_2314A22E8();

    *(v29 + 20) = v33;
    v34 = v52;
    _os_log_impl(&dword_231496000, v27, v55, "TimeTodaySpentInApp: %s/%{BOOL}d/%s", v29, 0x1Cu);
    v35 = v45;
    swift_arrayDestroy();
    MEMORY[0x231931280](v35, -1, -1);
    MEMORY[0x231931280](v29, -1, -1);
  }

  else
  {

    v30 = v47;
    v36 = v12;
    v32 = *(v48 + 8);
    v32(v36, v47);
    v34 = v52;
  }

  v37 = v51;
  swift_beginAccess();
  sub_231566BF0(v34, v18, *v37);
  v39 = v38;
  swift_endAccess();
  if (v39)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *v37;
    sub_231576418(0, 1, 0, v34, v18, isUniquelyReferenced_nonNull_native);
    *v51 = v54;
    swift_endAccess();
  }

  swift_beginAccess();
  v41 = sub_23157DD30(v53, v34, v18);
  if (*(v42 + 24) == 1)
  {
    (v41)(v53, 0);
    v43 = v49;
  }

  else
  {
    v43 = v49;
    sub_2314B9F0C(v49);
    (v41)(v53, 0);
  }

  swift_endAccess();

  v32(v14, v30);
}

uint64_t sub_23157D9A8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23157DA08(v3, v1, v2);
}

uint64_t sub_23157DA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_231588340;
  v9 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v10 = [v9 InFocus];
  swift_unknownObjectRelease();
  *(v8 + 56) = &type metadata for TimeTodaySpentInApp;
  *(v8 + 64) = &protocol witness table for TimeTodaySpentInApp;
  v11 = swift_allocObject();
  *(v8 + 32) = v11;
  if (qword_27DD5AE50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_27DD5C1A0;
  *(v11 + 16) = qword_27DD5C198;
  *(v11 + 24) = v12;
  *(v11 + 32) = v10;
  *(v11 + 40) = sub_2314E03E4;
  *(v11 + 48) = 0;
  v13 = *(a3 + 8);

  *(v11 + 56) = v13(a2, a3);
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 1;
  (*(v5 + 8))(v7, a2);
  return v8;
}

id sub_23157DC48(void *a1)
{
  sub_231585884();

  return sub_23157CF1C(a1);
}

uint64_t *sub_23157DCF0()
{
  if (qword_280D6D5F8 != -1)
  {
    OUTLINED_FUNCTION_0_89(&qword_280D6D5F8);
  }

  return &qword_280D6D600;
}

uint64_t (*sub_23157DD30(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23157ECA4(v6, a2, a3);
  return sub_23157DDA4;
}

void sub_23157DDA4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_23157DE04()
{
  result = sub_231586964();
  qword_280D6D600 = result;
  qword_280D6D608 = v1;
  return result;
}

uint64_t static TotalTimeSpentInApp.signalName.getter()
{
  if (qword_280D6D5F8 != -1)
  {
    OUTLINED_FUNCTION_0_89(&qword_280D6D5F8);
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v0 = qword_280D6D600;

  return v0;
}

uint64_t static TotalTimeSpentInApp.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6D5F8 != -1)
  {
    OUTLINED_FUNCTION_0_89(&qword_280D6D5F8);
  }

  swift_beginAccess();
  qword_280D6D600 = a1;
  qword_280D6D608 = a2;
}

uint64_t (*static TotalTimeSpentInApp.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280D6D5F8 != -1)
  {
    OUTLINED_FUNCTION_0_89(&qword_280D6D5F8);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_23157DF9C@<D0>(void *a1@<X8>)
{
  sub_23157DCF0();
  swift_beginAccess();
  v2 = qword_280D6D608;
  *a1 = qword_280D6D600;
  a1[1] = v2;

  return result;
}

uint64_t sub_23157DFF0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23157DCF0();
  swift_beginAccess();
  qword_280D6D600 = v2;
  qword_280D6D608 = v1;
}

uint64_t TotalTimeSpentInApp.id.getter()
{
  v1 = *v0;

  return v1;
}

double TotalTimeSpentInApp.cacheExpirationPolicy()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(24, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static TotalTimeSpentInApp.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TotalTimeSpentInApp;
  *(v0 + 64) = &protocol witness table for TotalTimeSpentInApp;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6D5F8 != -1)
  {
    OUTLINED_FUNCTION_0_89(&qword_280D6D5F8);
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v4 = qword_280D6D608;
  *(v3 + 16) = qword_280D6D600;
  *(v3 + 24) = v4;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 32) = v2;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;

  return v0;
}

uint64_t static TotalTimeSpentInApp.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23157F014(v3, v1, v2);
}

uint64_t static TotalTimeSpentInApp.instances(context:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  v3 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v4 = [v3 InFocus];
  swift_unknownObjectRelease();
  *(v2 + 56) = &type metadata for TotalTimeSpentInApp;
  *(v2 + 64) = &protocol witness table for TotalTimeSpentInApp;
  v5 = swift_allocObject();
  *(v2 + 32) = v5;
  if (qword_280D6D5F8 != -1)
  {
    OUTLINED_FUNCTION_0_89(&qword_280D6D5F8);
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v6 = qword_280D6D608;
  *(v5 + 16) = qword_280D6D600;
  *(v5 + 24) = v6;
  *(v5 + 32) = v4;
  *(v5 + 40) = v1;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;

  return v2;
}

uint64_t static TotalTimeSpentInApp.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612A18);
  *a1 = result;
  return result;
}

void TotalTimeSpentInApp.value(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = v2[1];
  v29 = *v2;
  v30 = v11;
  v31[0] = v2[2];
  *(v31 + 9) = *(v2 + 41);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2315860F4();
  sub_231585794();
  v13 = sub_231585884();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
  v14 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_3_38();
  sub_2314B87DC(v15, v16, v17, v18, 0);
  v20 = v19;
  v21 = [v30 publisherWithOptions_];
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 40) = v29;
  *(v22 + 16) = v12;
  *(v22 + 24) = a1;
  *(v22 + 32) = a2;
  *(v22 + 56) = v23;
  *(v22 + 72) = v31[0];
  *(v22 + 81) = *(v31 + 9);
  aBlock[4] = sub_23157F240;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2314B901C;
  aBlock[3] = &block_descriptor_25;
  v24 = _Block_copy(aBlock);

  sub_23155A898(&v29, v27);

  v27[4] = sub_23157F250;
  v27[5] = v12;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 1107296256;
  v27[2] = sub_2314B901C;
  v27[3] = &block_descriptor_11_1;
  v25 = _Block_copy(v27);

  v26 = [v21 sinkWithCompletion:v24 receiveInput:v25];
  _Block_release(v25);
  _Block_release(v24);
}

uint64_t sub_23157E6EC(uint64_t a1, uint64_t a2, void (*a3)(void **), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
  v8 = sub_231586AC4();
  v9 = v8;
  v10 = 0;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = v8 + 64;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v19 = v16 | (v10 << 6);
      v20 = (*(v7 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v7 + 56) + 24 * v19 + 16);
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = (v9[6] + 16 * v19);
      *v24 = v22;
      v24[1] = v21;
      *(v9[7] + 8 * v19) = v23;
      v25 = v9[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v9[2] = v27;

      if (!v13)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  else
  {
LABEL_5:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v10 >= v14)
      {
        break;
      }

      v18 = *(v7 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    if (qword_280D70420 != -1)
    {
      goto LABEL_19;
    }
  }

  v28 = sub_231585FF4();
  __swift_project_value_buffer(v28, qword_280D72248);

  v29 = sub_231585FE4();
  v30 = sub_2315865D4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v41 = v32;
    *v31 = 136315138;
    sub_2315860E4();
    v33 = sub_2314A22E8();

    *(v31 + 4) = v33;
    _os_log_impl(&dword_231496000, v29, v30, "TotalTimeSpentInApp computed %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x231931280](v32, -1, -1);
    MEMORY[0x231931280](v31, -1, -1);
  }

  v34 = *(a5 + 40);
  v41 = *(a5 + 24);
  v42 = v34;
  v43 = *(a5 + 56);
  v37 = v9;
  v38 = 1;
  sub_231566F38(&v37, &v39);

  v37 = v39;
  v38 = v40;
  a3(&v37);
  return sub_2314A5EEC(v37, v38);
}

void TotalTimeSpentInApp.adaptCached(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 40);
  v8 = *(v2 + 24);
  v9 = v5;
  v10 = *(v2 + 56);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

void sub_23157EA50(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x231930B10]();
  sub_23157EAB0(a1, (a2 + 16));

  objc_autoreleasePoolPop(v4);
}

void sub_23157EAB0(void *a1, uint64_t *a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2314D7528(v3);
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      swift_beginAccess();
      sub_231566BF0(v7, v8, *a2);
      v10 = v9;
      swift_endAccess();
      if (v10)
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *a2;
        sub_231576418(0, 1, 0, v7, v8, isUniquelyReferenced_nonNull_native);
        *a2 = v15;
        swift_endAccess();
      }

      swift_beginAccess();
      v12 = sub_23157DD30(v14, v7, v8);
      if (*(v13 + 24) != 1)
      {
        sub_2314B9F0C(v4);
      }

      (v12)(v14, 0);
      swift_endAccess();
    }
  }
}

uint64_t sub_23157EC44(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23157F014(v3, v1, v2);
}

void (*sub_23157ECA4(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_23157EFE0(v6);
  v6[9] = sub_23157ED9C(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_23157ED3C;
}

void sub_23157ED3C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_23157ED9C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v9;
  v9[5] = a3;
  v9[6] = v4;
  v9[4] = a2;
  v10 = *v4;
  v11 = sub_23149C888(a2, a3);
  *(v9 + 25) = v12 & 1;
  v13 = v12 ^ 1;
  if (__OFADD__(*(v10 + 16), (v12 ^ 1) & 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C140, &qword_23158F080);
  if (sub_231586A64())
  {
    v16 = sub_23149C888(a2, a3);
    if ((v15 & 1) == (v17 & 1))
    {
      v14 = v16;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_231586C84();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[7] = v14;
  if (v15)
  {
    v18 = *(*v5 + 56) + 24 * v14;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  *v9 = v19;
  v9[1] = v20;
  v9[2] = v21;
  *(v9 + 24) = v13 & 1;
  return sub_23157EF00;
}

void sub_23157EF00(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[2];
  v4 = *(*a1 + 25);
  if ((*a1)[3])
  {
    if (*(*a1 + 25))
    {
      sub_2315074E4(*(*v1[6] + 48) + 16 * v1[7]);
      sub_231586A84();
    }
  }

  else
  {
    v5 = *(v1 + 2);
    v6 = v1[7];
    v7 = *v1[6];
    if (v4)
    {
      v8 = *(v7 + 56) + 24 * v6;
      *v8 = v2;
      *(v8 + 8) = v5 & 1;
      *(v8 + 16) = v3;
    }

    else
    {
      sub_2315755D0(v6, v1[4], v1[5], v2, v5 & 1, v3, v7);
    }
  }

  free(v1);
}

uint64_t (*sub_23157EFE0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_23157F008;
}

uint64_t sub_23157F014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_231588340;
  v9 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v10 = [v9 InFocus];
  swift_unknownObjectRelease();
  *(v8 + 56) = &type metadata for TotalTimeSpentInApp;
  *(v8 + 64) = &protocol witness table for TotalTimeSpentInApp;
  v11 = swift_allocObject();
  *(v8 + 32) = v11;
  if (qword_280D6D5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_280D6D608;
  *(v11 + 16) = qword_280D6D600;
  *(v11 + 24) = v12;
  *(v11 + 32) = v10;
  v13 = *(a3 + 8);

  *(v11 + 40) = v13(a2, a3);
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 1;
  (*(v5 + 8))(v7, a2);
  return v8;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23157F274(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23157F2B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TrainingMessageBuilder.__allocating_init(using:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TrainingMessageBuilder.init(using:)(a1);
  return v2;
}

void *TrainingMessageBuilder.init(using:)(uint64_t a1)
{
  v3 = type metadata accessor for TrainingMessageProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v1[5] = v3;
  v1[6] = &protocol witness table for TrainingMessageProvider;
  v1[2] = v4;
  return v1;
}

uint64_t sub_23157F3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t TrainingMessageBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t TrainingMessageProvider.__allocating_init(using:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_23157F544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v24 = a1;
  v25 = a4;
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_231586774();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  __swift_storeEnumTagSinglePayload(&v23 - v17, 1, 1, AssociatedTypeWitness);
  (*(v7 + 16))(v11, v24, a2);
  v19 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v21 = v23;
  *(v20 + 2) = a2;
  *(v20 + 3) = v21;
  *(v20 + 4) = v4;
  *(v20 + 5) = v18;
  (*(v7 + 32))(&v20[v19], v11, a2);

  sub_23153CBA4(0, 0, 0, 3, sub_23157FB60, v20);

  swift_beginAccess();
  (*(v15 + 16))(v25, v18, v13);
  return (*(v15 + 8))(v18, v13);
}

void sub_23157F79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v11 = sub_231586774();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  if (*(a1 + 24))
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v15 = sub_231585FF4();
    __swift_project_value_buffer(v15, qword_280D72248);
    v34 = sub_231585FE4();
    v16 = sub_2315865E4();
    if (os_log_type_enabled(v34, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_231496000, v34, v16, "TrainingMessageBuilder: Error gathering signals", v17, 2u);
      MEMORY[0x231931280](v17, -1, -1);
    }

    v18 = v34;
  }

  else
  {
    v32 = a3;
    v20 = *a1;
    v19 = *(a1 + 8);
    v33 = *(a1 + 16);
    v34 = v19;
    v21 = *(*(a2 + 16) + 24);
    v36[0] = v20;
    v36[1] = v21;
    v22 = *(a6 + 32);

    v22(v36, a5, a6);

    v23 = v32;
    swift_beginAccess();
    (*(v12 + 40))(v23, v14, v11);
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v24 = sub_231585FF4();
    __swift_project_value_buffer(v24, qword_280D72248);

    v25 = v34;

    v26 = sub_231585FE4();
    v27 = sub_2315865D4();
    sub_231540A60(v20, v25, v33, 0);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136315138;
      sub_23152A204();
      sub_2315860E4();
      v30 = sub_2314A22E8();

      *(v28 + 4) = v30;
      _os_log_impl(&dword_231496000, v26, v27, "TrainingMessageBuilder: signal timings: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x231931280](v29, -1, -1);
      MEMORY[0x231931280](v28, -1, -1);
    }
  }
}

uint64_t TrainingMessageProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23157FCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_2314C2020(a3, v24 - v10);
  v12 = sub_2315864A4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2314CC1C4(v11, &qword_27DD5B1D0, &qword_231588B10);
  }

  else
  {
    sub_231586494();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_231586464();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_231586234() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_2314CC1C4(a3, &qword_27DD5B1D0, &qword_231588B10);

      return v22;
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

  sub_2314CC1C4(a3, &qword_27DD5B1D0, &qword_231588B10);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23157FF78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C1A8, &qword_23158F5E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23158F550;
  *(inited + 32) = sub_231586204();
  *(inited + 40) = v1;
  *(inited + 48) = sub_2314A1DFC(45, 1);
  *(inited + 56) = v2;
  *(inited + 64) = v3;
  *(inited + 72) = sub_231586204();
  *(inited + 80) = v4;
  *(inited + 88) = sub_2314A1DFC(4, 2);
  *(inited + 96) = v5;
  *(inited + 104) = v6;
  *(inited + 112) = 0x74756F656D6974;
  *(inited + 120) = 0xE700000000000000;
  *(inited + 128) = sub_2314A1DFC(10, 1);
  *(inited + 136) = v7;
  *(inited + 144) = v8;
  result = sub_2315860F4();
  qword_280D6E148 = result;
  return result;
}

uint64_t sub_231580090()
{
  if (*(v0 + 32) == 0x4C72656767697274 && *(v0 + 40) == 0xEF7374756F6B636FLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_231586C44() ^ 1;
  }

  return v2 & 1;
}

void sub_2315800EC(uint64_t a1)
{
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v1 = sub_231585FF4();
  __swift_project_value_buffer(v1, qword_280D72248);

  v2 = sub_231585FE4();
  v3 = sub_2315865D4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v4 = 136315138;
    sub_2315860E4();
    v5 = sub_2314A22E8();

    *(v4 + 4) = v5;
    _os_log_impl(&dword_231496000, v2, v3, "RestartLockout: saving %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_23149C7D4(0xD000000000000024, 0x80000002315922C0);
  if (v7)
  {
    v8 = v7;
    v9 = sub_2315860C4();

    v10 = sub_231586174();
    [v8 setObject:v9 forKey:v10];
  }

  else
  {
  }
}

uint64_t sub_231580314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_231580334, 0, 0);
}

uint64_t sub_231580334()
{
  OUTLINED_FUNCTION_9_24();
  swift_beginAccess();

  sub_2315800EC(v0);
  OUTLINED_FUNCTION_10_22();

  return v1();
}

void sub_2315803A8()
{
  v1 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23149C4FC();
  (*(v0 + 16))();
  sub_23149C774();
  v9 = v8;
  (*(v3 + 8))(v6, v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v7;
  sub_23157562C(v9, 0x74756F656D6974, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  sub_2315800EC(v12);
}

uint64_t sub_2315804CC()
{

  return v0;
}

uint64_t sub_2315804F4()
{
  sub_2315804CC();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_231580528(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_231580620;

  return v6(a1);
}

uint64_t sub_231580620()
{
  OUTLINED_FUNCTION_9_24();
  v1 = *v0;
  OUTLINED_FUNCTION_5_31();
  *v2 = v1;

  OUTLINED_FUNCTION_10_22();

  return v3();
}

uint64_t sub_231580708(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_39(v7);
  *v8 = v9;
  v8[1] = sub_2315807C0;

  return sub_231580314(a1, v3, v4, v6, v5);
}

uint64_t sub_2315807C0()
{
  OUTLINED_FUNCTION_9_24();
  v1 = *v0;
  OUTLINED_FUNCTION_5_31();
  *v2 = v1;

  OUTLINED_FUNCTION_10_22();

  return v3();
}

uint64_t sub_2315808A4()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_40(v1);

  return v4(v3);
}

uint64_t sub_23158093C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_40(v1);

  return v4(v3);
}

uint64_t sub_2315809D8@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 directoryValue];
  if (v3 && (v4 = sub_231580A90(v3), v5))
  {
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      sub_2315856F4();
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_231585724();

  return __swift_storeEnumTagSinglePayload(a1, v7, 1, v8);
}

uint64_t sub_231580A90(void *a1)
{
  v2 = [a1 path];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2315861A4();

  return v3;
}

uint64_t sub_231580B00(uint64_t a1, uint64_t *a2)
{
  v23 = sub_231585BA4();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v22 = v2;
    v24 = MEMORY[0x277D84F90];
    sub_23152D698(0, v8, 0);
    v9 = v24;
    v10 = (v5 + 8);
    for (i = (a1 + 40); ; i += 2)
    {
      v12 = *i;
      v13 = *a2;
      if (!*(*a2 + 16))
      {
        break;
      }

      v14 = *(i - 1);

      v15 = sub_23149C888(v14, v12);
      if ((v16 & 1) == 0)
      {
        goto LABEL_7;
      }

      v17 = *(*(v13 + 56) + 8 * v15);
LABEL_8:

      v24 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_23152D698(v19 > 1, v20 + 1, 1);
        v9 = v24;
      }

      *(v9 + 16) = v20 + 1;
      *(v9 + 8 * v20 + 32) = v17;
      if (!--v8)
      {
        return v9;
      }
    }

LABEL_7:
    sub_231585B94();
    sub_231585B54();
    v17 = v18;
    (*v10)(v7, v23);
    goto LABEL_8;
  }

  return v9;
}

Swift::Double __swiftcall Double.rounded(to:)(Swift::Int to)
{
  v2 = v1;
  v4 = sub_231585954();
  OUTLINED_FUNCTION_4_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_2315858B4();
  v12 = sub_2315858E4();
  (*(v6 + 8))(v10, v4);
  [v11 setLocale_];

  [v11 setUsesSignificantDigits_];
  [v11 setMaximumSignificantDigits_];
  sub_231583A88(46, 0xE100000000000000, v11);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v14 = [v11 stringFromNumber_];

  if (!v14)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v25 = sub_231585FF4();
    __swift_project_value_buffer(v25, qword_280D72248);
    v21 = sub_231585FE4();
    v26 = sub_2315865E4();
    if (!os_log_type_enabled(v21, v26))
    {
      goto LABEL_14;
    }

    v27 = OUTLINED_FUNCTION_22_0();
    *v27 = 134349312;
    *(v27 + 4) = v2;
    *(v27 + 12) = 2050;
    *(v27 + 14) = to;
    _os_log_impl(&dword_231496000, v21, v26, "Double#rounded error converting %{public}f to %{public}ld sig figs", v27, 0x16u);
    goto LABEL_11;
  }

  v15 = sub_2315861A4();
  v17 = v16;

  v18 = sub_2315839BC(v15, v17);
  if (v19)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);

    v21 = sub_231585FE4();
    v22 = sub_2315865E4();

    if (!os_log_type_enabled(v21, v22))
    {

      goto LABEL_14;
    }

    v23 = OUTLINED_FUNCTION_22();
    v30 = OUTLINED_FUNCTION_47();
    *v23 = 136446210;
    v24 = sub_2314A22E8();

    *(v23 + 4) = v24;
    _os_log_impl(&dword_231496000, v21, v22, "Double#rounded error converting rounded result %{public}s back to Double", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_10();
LABEL_11:
    OUTLINED_FUNCTION_10();
LABEL_14:

    return v2;
  }

  v28 = v18;

  return *&v28;
}

uint64_t sub_2315810AC()
{
  v1 = sub_23152041C(*(v0 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_bucket));
  MEMORY[0x23192FF80](v1);

  return 0x6F63536567617375;
}

double sub_231581114@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(65, 1);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_231581158()
{
  v1 = sub_2315810AC();
  MEMORY[0x23192FF80](0x65746F6D6552, 0xE600000000000000);
  return v1;
}

uint64_t sub_2315811D0(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 24);
  if (!v3)
  {
    return (a1)();
  }

  v4 = *(v1 + 16);

  v7 = a1(v5);
  MEMORY[0x23192FF80](1029990703, 0xE400000000000000);
  MEMORY[0x23192FF80](v4, v3);

  return v7;
}

uint64_t sub_23158125C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588FE0;
  *(inited + 32) = sub_2315810AC();
  *(inited + 40) = v1;
  *(inited + 48) = sub_2315811A0();
  *(inited + 56) = v2;
  *(inited + 64) = sub_231581158();
  *(inited + 72) = v3;
  *(inited + 80) = sub_2315811B8();
  *(inited + 88) = v4;
  return sub_2315860F4();
}

uint64_t static UsageScoreSignal.instances(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_231583DB4(v4, v1, v2, v3);
}

uint64_t static UsageScoreSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846129C8);
  *a1 = result;
  return result;
}

void *sub_231581368@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v20 = a3;
  v21 = a4;
  v8 = sub_231585D34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_231585B34();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_2314A2C74(a2, v22);
  (*(v13 + 16))(v15, v20, v12);
  (*(v9 + 16))(v11, v21, v8);
  v16 = type metadata accessor for UsageScoreSignal(0);
  v17 = swift_allocObject();
  result = sub_23158153C(a1, v22, v15, v11);
  a5[3] = v16;
  a5[4] = &protocol witness table for UsageScoreSignal;
  *a5 = v17;
  return result;
}

void *sub_23158153C(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v4[2] = (*(v11 + 16))(v10, v11);
  v4[3] = v12;
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v4[4] = (*(v14 + 8))(v13, v14);
  *(v4 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_bucket) = a1;
  v15 = OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_user;
  v16 = sub_231585B34();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v5 + v15, a3, v16);
  v18 = OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_interactionStore;
  v19 = sub_231585D34();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v5 + v18, a4, v19);
  type metadata accessor for MediaItemsBucketProvider();
  v21 = sub_2315203BC(a1);
  v22 = sub_23151FE7C(v21);
  v24 = v23;

  (*(v20 + 8))(a4, v19);
  (*(v17 + 8))(a3, v16);
  v25 = (v5 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_query);
  *v25 = v22;
  v25[1] = v24;
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

uint64_t sub_23158173C(void (*a1)(uint64_t *), uint64_t a2)
{

  v5 = MEMORY[0x277D84F90];

  return sub_231581874(v5, v2, a1, a2, v2);
}

uint64_t sub_2315817A0(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = sub_2315810AC();
  if (*(a1 + 16))
  {
    v6 = sub_23149C888(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(a1 + 56) + 16 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      sub_2314A5168(*v9, v11);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = 0;
  v10 = -1;
LABEL_6:
  v15 = v10;
  v16 = v11;
  a2(&v15);
  v12 = v15;
  v13 = v16;

  return sub_2314A5EEC(v12, v13);
}

uint64_t sub_231581874(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v53 = a4;
  v49 = a3;
  v48 = sub_231585FD4();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231585AE4();
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v12);
  v52 = &v45 - v15;
  v16 = sub_231585E04();
  MEMORY[0x28223BE20](v16);
  v18 = (&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a2 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_query + 8);
  *v18 = *(a2 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_query);
  v18[1] = v19;
  v45 = v20;
  v21 = *(v20 + 104);
  v54 = v18;
  v46 = v22;
  v21();
  v23 = qword_280D70420;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_231585FF4();
  __swift_project_value_buffer(v24, qword_280D72248);

  v25 = sub_231585FE4();
  v26 = sub_2315865D4();

  v27 = os_log_type_enabled(v25, v26);
  v51 = a2;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v58 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v25, v26, "UsageScoreSignal: query : %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x231931280](v29, -1, -1);
    a2 = v51;
    MEMORY[0x231931280](v28, -1, -1);
  }

  sub_231585AD4();
  sub_231585AC4();
  v30 = v56;
  v31 = v57 + 8;
  v32 = *(v57 + 8);
  v32(v11, v56);
  v33 = v52;
  sub_231585A94();
  v57 = v31;
  v32(v14, v30);
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v34 = qword_280D72240;
  v35 = v50;
  sub_231585FC4();
  sub_2315866D4();
  sub_231585FA4();
  v36 = sub_231582954(a2 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_interactionStore, v33);
  sub_2315866C4();
  sub_231585FA4();

  v37 = sub_231585FE4();
  v38 = sub_2315865D4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v58 = v40;
    *v39 = 136315394;
    sub_23152041C(*(a2 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_bucket));
    v41 = sub_2314A22E8();

    *(v39 + 4) = v41;
    *(v39 + 12) = 2080;
    sub_231585BA4();
    sub_2315860E4();
    v42 = sub_2314A22E8();

    *(v39 + 14) = v42;
    _os_log_impl(&dword_231496000, v37, v38, "UsageScoreSignal: %s Entity Agg %s", v39, 0x16u);
    swift_arrayDestroy();
    v35 = v50;
    MEMORY[0x231931280](v40, -1, -1);
    MEMORY[0x231931280](v39, -1, -1);
  }

  v43 = sub_231582C6C(v36);

  sub_2315817A0(v43, v49);

  (*(v47 + 8))(v35, v48);
  v32(v52, v56);
  (*(v45 + 8))(v54, v46);
}

uint64_t sub_23158218C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v62 = a2;
  v60 = sub_231585FD4();
  OUTLINED_FUNCTION_4_1();
  v59 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v63 = sub_231585AE4();
  OUTLINED_FUNCTION_4_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_0();
  v15 = v13 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v57 - v18;
  MEMORY[0x28223BE20](v17);
  v64 = v57 - v20;
  sub_231585E04();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  v24 = (v23 - v22);
  v25 = *(v3 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_query + 8);
  *v24 = *(v3 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_query);
  v24[1] = v25;
  v57[1] = v26;
  v27 = *(v26 + 104);
  v65 = v24;
  v57[2] = v28;
  v27();
  v29 = qword_280D70420;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v30 = sub_231585FF4();
  v31 = __swift_project_value_buffer(v30, qword_280D72248);

  v57[0] = v31;
  v32 = sub_231585FE4();
  v33 = sub_2315865D4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_22();
    v35 = OUTLINED_FUNCTION_47();
    v58 = v9;
    v36 = v4;
    v37 = v11;
    v38 = v35;
    v66 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v32, v33, "UsageScoreSignal: query : %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v11 = v37;
    v4 = v36;
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  sub_231585AD4();
  sub_231585AC4();
  v39 = *(v11 + 8);
  v40 = v63;
  v39(v15, v63);
  v41 = v64;
  sub_231585A94();
  v58 = v11 + 8;
  v39(v19, v40);
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v42 = qword_280D72240;
  sub_231585FC4();
  v43 = sub_2315866D4();
  OUTLINED_FUNCTION_10_23(v43);
  v44 = sub_231582954(v4 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_interactionStore, v41);
  v45 = sub_2315866C4();
  OUTLINED_FUNCTION_10_23(v45);

  v46 = sub_231585FE4();
  v47 = sub_2315865D4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_22_0();
    v66 = swift_slowAlloc();
    *v48 = 136315394;
    sub_23152041C(*(v4 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_bucket));
    v49 = sub_2314A22E8();

    *(v48 + 4) = v49;
    *(v48 + 12) = 2080;
    sub_231585BA4();
    sub_2315860E4();
    v50 = sub_2314A22E8();

    *(v48 + 14) = v50;
    v40 = v63;
    _os_log_impl(&dword_231496000, v46, v47, "UsageScoreSignal: %s Entity Agg %s", v48, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  sub_231582C6C(v44);

  OUTLINED_FUNCTION_8_27();
  v51();

  v52 = OUTLINED_FUNCTION_6_27();
  v53(v52);
  v39(v64, v40);
  v54 = OUTLINED_FUNCTION_7_29();
  return v55(v54);
}

uint64_t sub_231582954(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v33 = sub_231585C24();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_231585D14();
  OUTLINED_FUNCTION_4_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_0();
  v14 = v12 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v32 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - v22;
  sub_231585D04();
  sub_231585C64();
  v24 = *(v10 + 8);
  v24(v14, v8);
  sub_231585CB4();
  v24(v18, v8);
  sub_231585B24();
  sub_231585C74();
  (*(v3 + 8))(v7, v33);
  v24(v21, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7D8, &qword_23158AFB8);
  v25 = sub_231585C14();
  OUTLINED_FUNCTION_4_1();
  v27 = v26;
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_231588340;
  (*(v27 + 104))(v29 + v28, *MEMORY[0x277D5FF90], v25);
  v30 = sub_231585C34();
  v24(v23, v8);

  return v30;
}

uint64_t sub_231582C6C(uint64_t a1)
{
  v2 = sub_231585BA4();
  OUTLINED_FUNCTION_4_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v68 = v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_11_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v73 = (v65 - v16);
  v17 = sub_2315860F4();
  v18 = *(a1 + 64);
  v74 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v66 = (v19 + 63) >> 6;
  v67 = v4 + 16;
  v76 = (v4 + 32);
  v69 = v4;
  v70 = a1;
  v71 = v4 + 8;

  v22 = 0;
  v75 = v14;
  v72 = v2;
  while (1)
  {
    v77 = v17;
    if (!v21)
    {
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v66)
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
          __swift_storeEnumTagSinglePayload(v14, 1, 1, v54);
          v21 = 0;
          goto LABEL_11;
        }

        v21 = *(v74 + 8 * v23);
        ++v22;
        if (v21)
        {
          v22 = v23;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v23 = v22;
LABEL_10:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v25 = v24 | (v23 << 6);
    v26 = v69;
    v27 = (*(v70 + 48) + 16 * v25);
    v29 = *v27;
    v28 = v27[1];
    v30 = v68;
    (*(v69 + 16))(v68, *(v70 + 56) + *(v69 + 72) * v25, v2);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    v32 = *(v31 + 48);
    v33 = v75;
    *v75 = v29;
    *(v33 + 1) = v28;
    v14 = v33;
    (*(v26 + 32))(&v33[v32], v30, v2);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v31);

LABEL_11:
    v34 = v73;
    sub_2314F56B8(v14, v73);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
    {
      break;
    }

    v36 = v34;
    v38 = *v34;
    v37 = v34[1];
    (*v76)(v8, v36 + *(v35 + 48), v2);
    sub_231585B54();
    v39 = v77;
    swift_isUniquelyReferenced_nonNull_native();
    v78 = v39;
    v40 = sub_23149C888(v38, v37);
    v42 = *(v39 + 16);
    v43 = (v41 & 1) == 0;
    v17 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_26;
    }

    v8 = v40;
    v2 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
    if (sub_231586A64())
    {
      v44 = sub_23149C888(v38, v37);
      if ((v2 & 1) != (v45 & 1))
      {
        result = sub_231586C84();
        __break(1u);
        return result;
      }

      v8 = v44;
    }

    if (v2)
    {

      v17 = v78;
      v46 = OUTLINED_FUNCTION_4_33();
      v47(v46);
      v14 = v75;
    }

    else
    {
      v17 = v78;
      *(v78 + 8 * (v8 >> 6) + 64) |= 1 << v8;
      v48 = (*(v17 + 48) + 16 * v8);
      *v48 = v38;
      v48[1] = v37;
      v49 = OUTLINED_FUNCTION_4_33();
      v50(v49);
      v51 = *(v17 + 16);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_27;
      }

      *(v17 + 16) = v53;
      v14 = v75;
    }
  }

  v17 = v77;
  if (qword_280D70420 == -1)
  {
    goto LABEL_22;
  }

LABEL_28:
  OUTLINED_FUNCTION_6_0(&qword_280D70420);
LABEL_22:
  v55 = sub_231585FF4();
  __swift_project_value_buffer(v55, qword_280D72248);
  v56 = v65[1];

  v57 = sub_231585FE4();
  v58 = sub_2315865D4();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = OUTLINED_FUNCTION_22_0();
    v78 = swift_slowAlloc();
    *v59 = 136315394;
    sub_23152041C(*(v56 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_bucket));
    v60 = sub_2314A22E8();

    *(v59 + 4) = v60;
    *(v59 + 12) = 2080;
    sub_2315860E4();
    v61 = sub_2314A22E8();

    *(v59 + 14) = v61;
    _os_log_impl(&dword_231496000, v57, v58, "UsageScoreSignal: %s unnormalized score %s", v59, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = sub_2315810AC();
  *(inited + 40) = v63;
  *(inited + 48) = v17;
  *(inited + 56) = 3;
  return sub_2315860F4();
}

void sub_231583304(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = MEMORY[0x277D84F90];
  v30 = sub_2315860F4();
  if (v6 == 3)
  {

    v30 = v5;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v8 = sub_231585FF4();
    __swift_project_value_buffer(v8, qword_280D72248);

    v9 = sub_231585FE4();
    v10 = sub_2315865E4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_22();
      v29 = OUTLINED_FUNCTION_47();
      *v11 = 136315138;
      sub_2315810AC();
      v12 = sub_2314A22E8();

      *(v11 + 4) = v12;
      _os_log_impl(&dword_231496000, v9, v10, "%s: Received unexpected type of signal value in derive", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v7 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  v13 = sub_231580B00(*(v3 + 32), &v30);
  v14 = static PriorDistributionUtils.normalize(scores:)(v13);

  v15 = *(v14 + 16);
  if (v15)
  {
    sub_23152D698(0, v15, 0);
    v16 = 32;
    v17 = v7;
    do
    {
      v18 = Double.rounded(to:)(3);
      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_23152D698(v19 > 1, v20 + 1, 1);
      }

      *(v7 + 16) = v20 + 1;
      *(v7 + 8 * v20 + 32) = v18;
      v16 += 8;
      --v15;
    }

    while (v15);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v22 = sub_231507720(v21, v17);
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v23 = sub_231585FF4();
  __swift_project_value_buffer(v23, qword_280D72248);

  v24 = sub_231585FE4();
  v25 = sub_2315865D4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_22_0();
    swift_slowAlloc();
    *v26 = 136315394;
    sub_2315810AC();
    v27 = sub_2314A22E8();

    *(v26 + 4) = v27;
    *(v26 + 12) = 2080;
    sub_2315860E4();
    v28 = sub_2314A22E8();

    *(v26 + 14) = v28;
    _os_log_impl(&dword_231496000, v24, v25, "%s Derived dirichlet score %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  *a2 = v22;
  *(a2 + 8) = 3;
}

uint64_t UsageScoreSignal.deinit()
{

  v1 = OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_user;
  sub_231585B34();
  OUTLINED_FUNCTION_4_28();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_interactionStore;
  sub_231585D34();
  OUTLINED_FUNCTION_4_28();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t UsageScoreSignal.__deallocating_deinit()
{
  UsageScoreSignal.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2315838E0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_231583DB4(v4, v1, v2, v3);
}

uint64_t sub_2315839BC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_231584330(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_231583A1C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

void sub_231583A88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231586174();

  [a3 setDecimalSeparator_];
}

uint64_t _s11SiriSignals16UsageScoreSignalC9instancesSayAA0E9Providing_pGyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15[-1] - v1;
  v3 = sub_231585D34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231585B34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = &type metadata for NoParameters;
  v15[4] = &protocol witness table for NoParameters;
  sub_231514674(v15, v10);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v15, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2314B5064(v2);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = (*(v4 + 32))(v6, v2, v3);
    MEMORY[0x28223BE20](v12);
    *(&v14 - 4) = v15;
    *(&v14 - 3) = v10;
    *(&v14 - 2) = v6;
    v11 = sub_23150466C(sub_231584444, (&v14 - 6), &unk_2846101A0);
    (*(v4 + 8))(v6, v3);
  }

  (*(v8 + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v11;
}

uint64_t sub_231583DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23[-1] - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_231585B34();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = a3;
  v23[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_231514674(v23, v17);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v23, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = (*(v11 + 32))(v13, v9, v10);
    MEMORY[0x28223BE20](v20);
    *(&v22 - 4) = v23;
    *(&v22 - 3) = v17;
    *(&v22 - 2) = v13;
    v19 = sub_23150466C(sub_23158430C, (&v22 - 6), &unk_2846101A0);
    (*(v11 + 8))(v13, v10);
  }

  (*(v15 + 8))(v17, v14);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v19;
}

uint64_t type metadata accessor for UsageScoreSignal(uint64_t a1)
{
  result = qword_280D6DAF0;
  if (!qword_280D6DAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231584104(uint64_t a1)
{
  result = sub_231585B34();
  if (v2 <= 0x3F)
  {
    result = sub_231585D34();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

BOOL sub_231584330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_231586944();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t sub_231584470()
{
  result = sub_231586964();
  qword_27DD5C1B0 = result;
  qword_27DD5C1B8 = v1;
  return result;
}

uint64_t *sub_2315844A4()
{
  if (qword_27DD5AE58 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_27DD5AE58);
  }

  return &qword_27DD5C1B0;
}

uint64_t static WifiStateSignal.signalName.getter()
{
  if (qword_27DD5AE58 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_27DD5AE58);
  }

  swift_beginAccess();
  v0 = qword_27DD5C1B0;

  return v0;
}

uint64_t static WifiStateSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27DD5AE58 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_27DD5AE58);
  }

  swift_beginAccess();
  qword_27DD5C1B0 = a1;
  qword_27DD5C1B8 = a2;
}

uint64_t (*static WifiStateSignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27DD5AE58 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_27DD5AE58);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_23158464C@<D0>(void *a1@<X8>)
{
  sub_2315844A4();
  swift_beginAccess();
  v2 = qword_27DD5C1B8;
  *a1 = qword_27DD5C1B0;
  a1[1] = v2;

  return result;
}

uint64_t sub_2315846A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_2315844A4();
  swift_beginAccess();
  qword_27DD5C1B0 = v2;
  qword_27DD5C1B8 = v1;
}

uint64_t WifiStateSignal.id.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

double WifiStateSignal.init()@<D0>(void *a2@<X8>)
{
  v3 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v4 = [v3 Wireless];
  swift_unknownObjectRelease();
  v5 = [v4 WiFi];
  swift_unknownObjectRelease();
  if (qword_27DD5AE58 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_27DD5AE58);
  }

  swift_beginAccess();
  v7 = qword_27DD5C1B0;
  v6 = qword_27DD5C1B8;
  *a2 = v5;
  a2[1] = sub_23151532C;
  a2[2] = 0;
  a2[3] = v7;
  a2[4] = v6;

  return result;
}

uint64_t static WifiStateSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for WifiStateSignal;
  *(v0 + 64) = &protocol witness table for WifiStateSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  v2 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v3 = [v2 Wireless];
  swift_unknownObjectRelease();
  v4 = [v3 WiFi];
  swift_unknownObjectRelease();
  if (qword_27DD5AE58 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_27DD5AE58);
  }

  swift_beginAccess();
  v6 = qword_27DD5C1B0;
  v5 = qword_27DD5C1B8;
  v1[2] = v4;
  v1[3] = sub_23151532C;
  v1[4] = 0;
  v1[5] = v6;
  v1[6] = v5;

  return v0;
}

uint64_t sub_2315849EC(void *a1)
{
  v3 = sub_231585724();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_231585030();
  sub_2314C78E4();
  (*(v4 + 16))(v7, v9, v3);
  v10 = sub_2314C7928(v7, a1);
  if (v1)
  {
    return (*(v4 + 8))(v9, v3);
  }

  v12 = v10;
  (*(v4 + 8))(v9, v3);
  type metadata accessor for AudioMegamodel();
  OUTLINED_FUNCTION_18_0();
  result = swift_allocObject();
  *(result + 16) = v12;
  return result;
}

id sub_231584BD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x737475706E69 && a2 == 0xE600000000000000;
  if (v3 || (sub_231586C44() & 1) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

void sub_231584C88()
{
  v0 = sub_231586174();
  v1 = OUTLINED_FUNCTION_1_46(v0, sel_featureValueForName_);

  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = [v1 multiArrayValue];

  if (!v2)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_231584D18()
{
  v0 = sub_231586174();
  v1 = OUTLINED_FUNCTION_1_46(v0, sel_featureValueForName_);

  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = [v1 multiArrayValue];

  if (!v2)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_231584DA8()
{
  v0 = sub_231586174();
  v1 = OUTLINED_FUNCTION_1_46(v0, sel_featureValueForName_);

  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = [v1 multiArrayValue];

  if (!v2)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_231584EA4()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_231586514();

  return v2;
}

id sub_231584EFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_231586174();
  v3 = OUTLINED_FUNCTION_1_46(v2, sel_featureValueForName_);

  return v3;
}

id sub_231584F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_2315861A4();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_231584FD8()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_18_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_231585030()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2315852F4(0x67654D6F69647541, 0xEE006C65646F6D61, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_231585714();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2315850F4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
  v3 = sub_231585160(a1, v2);

  return v3;
}

uint64_t sub_231585160(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for AudioMegamodelOutput();
    OUTLINED_FUNCTION_18_0();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_2315856D4();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_231585234(void *a1)
{
  type metadata accessor for AudioMegamodelInput();
  OUTLINED_FUNCTION_18_0();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = sub_2315850F4(v2);

  return v4;
}

uint64_t sub_23158529C()
{
  OUTLINED_FUNCTION_18_0();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

id sub_2315852F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_231586174();

  v7 = sub_231586174();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

id sub_2315854AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_231586174();
  v5 = [v3 featureValueForName_];

  return v5;
}

id sub_231585514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_2315861A4();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_231585590()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}