uint64_t sub_26BC82EA8(CGPathRef path)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v6 = v2;
    MutableCopy = sub_26BC999B8();
    v4 = v6;
  }

  else
  {
    MutableCopy = CGPathCreateMutableCopy(path);
    v4 = *(v1 + 32);
    *(v1 + 32) = MutableCopy;
  }

  return MEMORY[0x2821F96F8](MutableCopy, v4);
}

void sub_26BC82F2C(uint64_t *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v45 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444410, &qword_26BC9A7C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v44 = v12 - v11;
  v13 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  OUTLINED_FUNCTION_5();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = (v18 - v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444418, &qword_26BC9A7D0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v44 - v21;
  Mutable = CGPathCreateMutable();
  v24 = *a1;
  v25 = *(*a1 + 16);
  if (v25)
  {
    v46 = Mutable;
    sub_26BC833E0(v24, v22);
    if (__swift_getEnumTagSinglePayload(v22, 1, v13) != 1)
    {
      OUTLINED_FUNCTION_2();
      sub_26BC83E58(v22, v26);
      v48 = 0x3FF0000000000000;
      v49 = 0;
      v50 = 0;
      v51 = 0x3FF0000000000000;
      v52 = 0;
      v53 = 0;
      sub_26BC999C8();

      sub_26BC83484(1, v24);
      v30 = (v29 >> 1) - v28;
      if (v29 >> 1 != v28)
      {
        if ((v29 >> 1) <= v28)
        {
          __break(1u);
          goto LABEL_25;
        }

        v31 = *(v15 + 72);
        v32 = v27 + v28 * v31;
        do
        {
          sub_26BC83CB8(v32, v19);
          sub_26BC999D8();
          OUTLINED_FUNCTION_2();
          sub_26BC83E58(v19, v33);
          v32 += v31;
          --v30;
        }

        while (v30);
      }

      swift_unknownObjectRelease();
      v34 = *(v4 + 40);
      v35 = v46;
      *(v4 + 40) = v46;
      v19 = v35;

      *(v4 + 48) = v25;
      *(v4 + 56) = 0;
      sub_26BC83D1C(v45, v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {

        sub_26BC83D8C(v8);
        return;
      }

      v36 = v44;
      sub_26BC83DF4(v8, v44);
      v37 = *v36;
      if (!*(*v36 + 16))
      {

        OUTLINED_FUNCTION_3();
        v43 = v36;
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_26BC9A6C0;
      sub_26BC83EB0(0, &unk_280444850, 0x277CCABB0);
      *(v38 + 32) = sub_26BC99AD8();
      v47 = v38;
      v39 = *(v37 + 16);
      if (v39)
      {
        v40 = (v37 + 32);
        do
        {
          if (*v40 > -1.0)
          {
            [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
            MEMORY[0x26D6931A0]();
            if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_26BC99958();
            }

            sub_26BC99968();
          }

          ++v40;
          --v39;
        }

        while (v39);
      }

      sub_26BC99AD8();
      MEMORY[0x26D6931A0]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_21:
        sub_26BC99968();
        v41 = v47;

        *(v4 + 80) = v41;

        OUTLINED_FUNCTION_3();
        v43 = v44;
LABEL_23:
        sub_26BC83E58(v43, v42);
        return;
      }

LABEL_25:
      sub_26BC99958();
      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_26BC833E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  v6 = v5;
  if (v4)
  {
    sub_26BC83CB8(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_26BC83484(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_26BC84048(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_26BC83FA0(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

double sub_26BC8351C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (*(v0 + 56))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v0 + 48);
  }

  v4 = sub_26BC98580(v1, v2, v3);

  return v4 / *(v0 + 96);
}

uint64_t sub_26BC83588()
{
  if (*(v0 + 120) == 1)
  {
    return 200;
  }

  v1 = *(v0 + 112);
  if (v1 <= -1.0)
  {
    return 200;
  }

  v2 = v1 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v2 > -9.22337204e18)
  {
    if (v2 < 9.22337204e18)
    {
      return v2;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26BC83600()
{

  sub_26BC840BC(*(v0 + 104), *(v0 + 112), *(v0 + 120));
  return v0;
}

uint64_t sub_26BC8364C()
{
  sub_26BC83600();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_26BC83680()
{
  v1 = [objc_opt_self() labelColor];
  v2 = [v1 CGColor];

  *(v0 + 16) = v2;
  sub_26BC90190();
  *(v0 + 24) = v3;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 200;
  *(v0 + 96) = 0x3FF0000000000000;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  return v0;
}

uint64_t variable initialization expression of _ProtoStrokeAnimationRepresentation._storage()
{
  if (qword_280444358 != -1)
  {
    swift_once();
  }
}

id variable initialization expression of StrokeView.backgroundView()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75D18]);

  return [v0 init];
}

id variable initialization expression of StrokeView.backgroundImageView()
{
  v0 = objc_allocWithZone(MEMORY[0x277D755E8]);

  return [v0 init];
}

uint64_t variable initialization expression of StrokeView.queue()
{
  v0 = sub_26BC99A18();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  sub_26BC999F8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v8 = sub_26BC99818();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_1();
  sub_26BC83EB0(0, &unk_2804443E0, 0x277D85C78);
  sub_26BC99808();
  sub_26BC83AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804443F0, &qword_26BC9A6E0);
  sub_26BC83B44();
  sub_26BC99B18();
  (*(v2 + 104))(v6, *MEMORY[0x277D85260], v0);
  return sub_26BC99A48();
}

unint64_t sub_26BC83AA4()
{
  result = qword_280444810;
  if (!qword_280444810)
  {
    sub_26BC999F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280444810);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26BC83B44()
{
  result = qword_280444820;
  if (!qword_280444820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804443F0, &qword_26BC9A6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280444820);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26BC83C48(uint64_t a1)
{
  type metadata accessor for CGPath(255);
  *(a1 + 16) = v2;
  return 0;
}

uint64_t sub_26BC83CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC83D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444410, &qword_26BC9A7C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC83D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444410, &qword_26BC9A7C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BC83DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC83E58(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26BC83EB0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26BC83FA0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26BC84048(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_26BC840BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26BC840E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BC84108(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26BC84160(uint64_t a1, int a2)
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

uint64_t sub_26BC84180(uint64_t result, int a2, int a3)
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

void sub_26BC841BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeAnimationRepresentation(from:)@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_26BC995A8();
  MEMORY[0x28223BE20](v4 - 8);
  sub_26BC99538();
  if (v5 >> 60 == 15)
  {
    v6 = type metadata accessor for _ProtoStrokeAnimationRepresentation(0);

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }

  else
  {
    v8 = type metadata accessor for _ProtoStrokeAnimationRepresentation(0);
    sub_26BC99598();
    sub_26BC843FC();
    sub_26BC99698();
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v8);
  }
}

unint64_t sub_26BC843FC()
{
  result = qword_2804449E0;
  if (!qword_2804449E0)
  {
    type metadata accessor for _ProtoStrokeAnimationRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804449E0);
  }

  return result;
}

UIColor_optional __swiftcall _ProtoStrokeAnimationRepresentation.Color.toUIColor()()
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 16) == 0.0)
  {
    v1 = 1.0;
  }

  else
  {
    v1 = *(v0 + 16);
  }

  v2 = *v0;
  v3 = *(v0 + 8);
  if (sub_26BC998B8() < 1 || (sub_26BC998F8() & 1) == 0)
  {
    if (*(v0 + 32) == 1)
    {
      v12 = *(v0 + 24);
      switch(v12)
      {
        case 1uLL:
          v12 = [objc_opt_self() clearColor];
          goto LABEL_23;
        case 2uLL:
          v10 = [objc_opt_self() blackColor];
          v13 = [v10 colorWithAlphaComponent_];
          goto LABEL_21;
        case 3uLL:
          v10 = [objc_opt_self() whiteColor];
          v13 = [v10 colorWithAlphaComponent_];
          goto LABEL_21;
        case 4uLL:
          v10 = [objc_opt_self() systemGrayColor];
          v13 = [v10 colorWithAlphaComponent_];
          goto LABEL_21;
        case 5uLL:
          v10 = [objc_opt_self() systemRedColor];
          v13 = [v10 colorWithAlphaComponent_];
          goto LABEL_21;
        case 6uLL:
          v10 = [objc_opt_self() systemGreenColor];
          v13 = [v10 colorWithAlphaComponent_];
          goto LABEL_21;
        case 7uLL:
          v10 = [objc_opt_self() systemBlueColor];
          v13 = [v10 colorWithAlphaComponent_];
LABEL_21:
          v11 = v13;
          goto LABEL_22;
        default:
          goto LABEL_23;
      }
    }

    goto LABEL_14;
  }

  v5 = sub_26BC998C8();
  v6 = sub_26BC847E4(v5, v2, v3);
  v7 = MEMORY[0x26D693130](v6);
  v9 = v8;

  if (sub_26BC998B8() != 6)
  {

LABEL_14:
    v12 = 0;
    goto LABEL_23;
  }

  sub_26BC84830();
  v10 = sub_26BC84874(v7, v9);
  v15[0] = 0;
  if (![v10 scanHexLongLong_])
  {

    goto LABEL_14;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:BYTE2(v15[0]) / 255.0 green:BYTE1(v15[0]) / 255.0 blue:LOBYTE(v15[0]) / 255.0 alpha:v1];
LABEL_22:
  v12 = v11;

LABEL_23:
  v14 = v12;
  result.value.super.isa = v14;
  result.is_nil = v4;
  return result;
}

uint64_t sub_26BC847E4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

unint64_t sub_26BC84830()
{
  result = qword_280444500;
  if (!qword_280444500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280444500);
  }

  return result;
}

id sub_26BC84874(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_26BC99878();

  v4 = [v2 initWithString_];

  return v4;
}

CFDataRef sub_26BC848E8(void *a1)
{
  result = CFDataCreate(*MEMORY[0x277CBECE8], [a1 bytes], objc_msgSend(a1, sel_length));
  if (result)
  {
    v2 = result;
    v3 = CGSVGDocumentCreateFromData();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_26BC84970(uint64_t a1)
{
  v1 = sub_26BC997A8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BC99AB8();
  if (qword_2804443C8 != -1)
  {
    swift_once();
  }

  sub_26BC99798();
  OUTLINED_FUNCTION_1_0(v5, &dword_26BC81000, v6, "parse strokeAnimation svg data");
  v7 = *(v2 + 8);
  v7(v4, v1);
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F90];
  v9 = CGSVGDocumentGetRootNode();
  if (v9)
  {
    v10 = v9;
    CGSVGViewBoxNodeGetViewbox();
    v11 = sub_26BC90204();
    v30.origin.x = OUTLINED_FUNCTION_0_0();
    v12 = v11 / CGRectGetWidth(v30);
    sub_26BC90204();
    v14 = v13;
    v31.origin.x = OUTLINED_FUNCTION_0_0();
    Height = CGRectGetHeight(v31);
    CGAffineTransformMakeScale(&v29, v12, v14 / Height);
    v16 = swift_allocObject();
    v16[2] = 0x3FF0000000000000;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0x3FF0000000000000;
    v16[6] = 0;
    v16[7] = 0;
    v17 = swift_allocObject();
    v18 = *&v29.c;
    *(v17 + 24) = *&v29.a;
    *(v17 + 16) = v16;
    *(v17 + 40) = v18;
    *(v17 + 56) = *&v29.tx;
    *(v17 + 72) = v8;
    aBlock[4] = sub_26BC85164;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BC85014;
    aBlock[3] = &block_descriptor;
    v19 = _Block_copy(aBlock);
    v27 = v4;

    CGSVGNodeEnumerate();

    _Block_release(v19);
    v4 = v27;
    swift_beginAccess();
  }

  else
  {
    if (qword_2804443B0 != -1)
    {
      swift_once();
    }

    v20 = sub_26BC997C8();
    __swift_project_value_buffer(v20, qword_280444AF0);
    v21 = sub_26BC997B8();
    v22 = sub_26BC999A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26BC81000, v21, v22, "invalid svg doc", v23, 2u);
      MEMORY[0x26D693B30](v23, -1, -1);
    }

    v12 = 1.0;
  }

  v24 = sub_26BC99AA8();
  sub_26BC99798();
  OUTLINED_FUNCTION_1_0(v24, &dword_26BC81000, v25, "parse strokeAnimation svg data");
  v7(v4, v1);
  return v12;
}

void sub_26BC84DA0(uint64_t a1, int a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v21 = *(a5 + 16);
    *v22 = *a5;
    v8 = *(a5 + 32);
    v9 = *(a5 + 40);
    if (CGSVGNodeGetType() == 1)
    {
      v10 = CGSVGNodeGetAttributeMap();
      if (v10)
      {
        v23 = v10;
        v11 = CGSVGAttributeMapGetAttribute();
        if (v11)
        {
          v12 = v11;
          swift_beginAccess();
          CGSVGAttributeGetTransform();
          swift_endAccess();
        }

        else
        {
        }
      }
    }

    else if (CGSVGNodeGetType() == 2)
    {
      Primitive = CGSVGShapeNodeGetPrimitive();
      swift_beginAccess();
      v14 = a4[2];
      *&t1.a = a4[1];
      *&t1.c = v14;
      *&t1.tx = a4[3];
      *&t2.a = *v22;
      *&t2.c = v21;
      t2.tx = v8;
      t2.ty = v9;
      CGAffineTransformConcat(&v26, &t1, &t2);
      if (Primitive == 42)
      {
        v15 = CGSVGShapeNodeGetPath();
        if (v15)
        {
          v16 = v15;
          CGPath = CGSVGPathCreateCGPath();
          v18 = MEMORY[0x26D6934C0](CGPath, &v26);
          type metadata accessor for StrokePathInfo();
          swift_allocObject();
          sub_26BC83680();
          if (v18)
          {
            v19 = v18;
            sub_26BC82EA8(v19);

            v20 = swift_beginAccess();
            MEMORY[0x26D6931A0](v20);
            sub_26BC97688(*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
            sub_26BC99968();
            swift_endAccess();
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_26BC85014(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_26BC85098()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26BC85124()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x282200C68](a1, a2, v5, a4, 30, 2, v4);
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeContours.getter()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19(*(v0 + v1) + 16, v2);
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeContours.setter()
{
  v3 = OUTLINED_FUNCTION_9();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v6 = OUTLINED_FUNCTION_2_0();
    v7 = sub_26BC87F6C(v6);
    OUTLINED_FUNCTION_37(v7);
  }

  OUTLINED_FUNCTION_18(v5 + 16, v4);
  *(v5 + 16) = v0;
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeContours.modify()
{
  v2 = OUTLINED_FUNCTION_20();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_1(v3);
  OUTLINED_FUNCTION_12(v0 + 16);
  *(v1 + 48) = *(v0 + 16);

  return OUTLINED_FUNCTION_17();
}

void sub_26BC85308()
{
  OUTLINED_FUNCTION_10();
  if (v4)
  {
    OUTLINED_FUNCTION_48();
    _ProtoStrokeAnimationRepresentation.strokeContours.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_26();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_6();
      v7 = OUTLINED_FUNCTION_2_0();
      v8 = sub_26BC87F6C(v7);
      OUTLINED_FUNCTION_31(v8);
    }

    OUTLINED_FUNCTION_21(v6 + 16);
    *(v6 + 16) = v2;
  }

  free(v0);
}

uint64_t _ProtoStrokeAnimationRepresentation.animationPoints.getter()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19(*(v0 + v1) + 24, v2);
}

uint64_t _ProtoStrokeAnimationRepresentation.animationPoints.setter()
{
  v3 = OUTLINED_FUNCTION_9();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v6 = OUTLINED_FUNCTION_2_0();
    v7 = sub_26BC87F6C(v6);
    OUTLINED_FUNCTION_37(v7);
  }

  OUTLINED_FUNCTION_18(v5 + 24, v4);
  *(v5 + 24) = v0;
}

uint64_t _ProtoStrokeAnimationRepresentation.animationPoints.modify()
{
  v2 = OUTLINED_FUNCTION_20();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_1(v3);
  OUTLINED_FUNCTION_12(v0 + 24);
  *(v1 + 48) = *(v0 + 24);

  return OUTLINED_FUNCTION_17();
}

void sub_26BC85494()
{
  OUTLINED_FUNCTION_10();
  if (v4)
  {
    OUTLINED_FUNCTION_48();
    _ProtoStrokeAnimationRepresentation.animationPoints.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_26();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_6();
      v7 = OUTLINED_FUNCTION_2_0();
      v8 = sub_26BC87F6C(v7);
      OUTLINED_FUNCTION_31(v8);
    }

    OUTLINED_FUNCTION_21(v6 + 24);
    *(v6 + 24) = v2;
  }

  free(v0);
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeFeatures.getter()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19(*(v0 + v1) + 32, v2);
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeFeatures.setter()
{
  v3 = OUTLINED_FUNCTION_9();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v6 = OUTLINED_FUNCTION_2_0();
    v7 = sub_26BC87F6C(v6);
    OUTLINED_FUNCTION_37(v7);
  }

  OUTLINED_FUNCTION_18(v5 + 32, v4);
  *(v5 + 32) = v0;
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeFeatures.modify()
{
  v2 = OUTLINED_FUNCTION_20();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_1(v3);
  OUTLINED_FUNCTION_12(v0 + 32);
  *(v1 + 48) = *(v0 + 32);

  return OUTLINED_FUNCTION_17();
}

void sub_26BC85620()
{
  OUTLINED_FUNCTION_10();
  if (v4)
  {
    OUTLINED_FUNCTION_48();
    _ProtoStrokeAnimationRepresentation.strokeFeatures.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_26();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_6();
      v7 = OUTLINED_FUNCTION_2_0();
      v8 = sub_26BC87F6C(v7);
      OUTLINED_FUNCTION_31(v8);
    }

    OUTLINED_FUNCTION_21(v6 + 32);
    *(v6 + 32) = v2;
  }

  free(v0);
}

double _ProtoStrokeAnimationRepresentation.speedRate.getter()
{
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_19(v2 + 40, v3);
  return *(v2 + 40);
}

uint64_t _ProtoStrokeAnimationRepresentation.speedRate.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v8 = OUTLINED_FUNCTION_2_0();
    v7 = sub_26BC87F6C(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_18((v7 + 5), v6);
  v7[5] = a1;
  return result;
}

void (*_ProtoStrokeAnimationRepresentation.speedRate.modify(uint64_t *a1))(char **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_5_0();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_12(v5 + 40);
  v3[9] = *(v5 + 40);
  return sub_26BC857D8;
}

void sub_26BC857D8(char **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 9);
  v5 = *(*a1 + 22);
  v6 = *(*a1 + 10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v9 = OUTLINED_FUNCTION_2_0();
    v10 = sub_26BC87F6C(v9);
    OUTLINED_FUNCTION_31(v10);
  }

  v11 = 6;
  if (a2)
  {
    v11 = 3;
  }

  OUTLINED_FUNCTION_30(v8 + 40, &v3[v11]);
  *(v8 + 40) = v4;

  free(v3);
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeWidth.getter()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19(*(v0 + v1) + 48, v2);
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeWidth.setter()
{
  v3 = OUTLINED_FUNCTION_9();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v6 = OUTLINED_FUNCTION_2_0();
    v7 = sub_26BC87F6C(v6);
    OUTLINED_FUNCTION_37(v7);
  }

  OUTLINED_FUNCTION_18(v5 + 48, v4);
  *(v5 + 48) = v0;
}

uint64_t _ProtoStrokeAnimationRepresentation.strokeWidth.modify()
{
  v2 = OUTLINED_FUNCTION_20();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_1(v3);
  OUTLINED_FUNCTION_12(v0 + 48);
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_17();
}

void sub_26BC8597C()
{
  OUTLINED_FUNCTION_10();
  if (v4)
  {
    OUTLINED_FUNCTION_48();
    _ProtoStrokeAnimationRepresentation.strokeWidth.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_26();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_6();
      v7 = OUTLINED_FUNCTION_2_0();
      v8 = sub_26BC87F6C(v7);
      OUTLINED_FUNCTION_31(v8);
    }

    OUTLINED_FUNCTION_21(v6 + 48);
    *(v6 + 48) = v2;
  }

  free(v0);
}

uint64_t _ProtoStrokeAnimationRepresentation.animationControlValues.getter()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19(*(v0 + v1) + 56, v2);
}

uint64_t _ProtoStrokeAnimationRepresentation.animationControlValues.setter()
{
  v3 = OUTLINED_FUNCTION_9();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v6 = OUTLINED_FUNCTION_2_0();
    v7 = sub_26BC87F6C(v6);
    OUTLINED_FUNCTION_37(v7);
  }

  OUTLINED_FUNCTION_18(v5 + 56, v4);
  *(v5 + 56) = v0;
}

uint64_t _ProtoStrokeAnimationRepresentation.animationControlValues.modify()
{
  v2 = OUTLINED_FUNCTION_20();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_1(v3);
  OUTLINED_FUNCTION_12(v0 + 56);
  *(v1 + 48) = *(v0 + 56);

  return OUTLINED_FUNCTION_17();
}

void sub_26BC85B08()
{
  OUTLINED_FUNCTION_10();
  if (v4)
  {
    OUTLINED_FUNCTION_48();
    _ProtoStrokeAnimationRepresentation.animationControlValues.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_26();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_6();
      v7 = OUTLINED_FUNCTION_2_0();
      v8 = sub_26BC87F6C(v7);
      OUTLINED_FUNCTION_31(v8);
    }

    OUTLINED_FUNCTION_21(v6 + 56);
    *(v6 + 56) = v2;
  }

  free(v0);
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  return _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

void (*_ProtoStrokeAnimationRepresentation.contourColor.modify())(uint64_t a1, uint64_t a2, float a3)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_34(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v1[4] = v5;
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  OUTLINED_FUNCTION_3_0();
  v7 = *(v6 + 64);
  v1[5] = __swift_coroFrameAllocStub(v7);
  v1[6] = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_5_0();
  v9 = *(v0 + v8);
  v10 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
  OUTLINED_FUNCTION_27(v9 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor, v1);
  sub_26BC885AC(v9 + v10, v5);
  OUTLINED_FUNCTION_7();
  if (v11)
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_7();
    if (!v11)
    {
      sub_26BC8F328(v5, &qword_280444520, &qword_26BC9A8B0);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_52();
    sub_26BC8863C(v12, v13);
  }

  return sub_26BC85D34;
}

uint64_t sub_26BC85D70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v5);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-v7 - 8];
  OUTLINED_FUNCTION_5_0();
  v10 = *(v2 + v9);
  v11 = *a1;
  OUTLINED_FUNCTION_27(v10 + v11, v15);
  sub_26BC885AC(v10 + v11, v8);
  v12 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) != 1)
  {
    return sub_26BC8863C(v8, a2);
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = __swift_getEnumTagSinglePayload(v8, 1, v12);
  if (result != 1)
  {
    return sub_26BC8F328(v8, &qword_280444520, &qword_26BC9A8B0);
  }

  return result;
}

uint64_t sub_26BC85E9C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v7);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v9 = *(OUTLINED_FUNCTION_63() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v12 = OUTLINED_FUNCTION_2_0();
    v11 = sub_26BC87F6C(v12);
    *(v5 + v9) = v11;
  }

  sub_26BC8863C(a1, v3);
  v13 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v13);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  sub_26BC886A0(v3, v11 + a2);
  return swift_endAccess();
}

void (*_ProtoStrokeAnimationRepresentation.backgroundColor.modify())(uint64_t a1, uint64_t a2, float a3)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_34(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v1[4] = v5;
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  OUTLINED_FUNCTION_3_0();
  v7 = *(v6 + 64);
  v1[5] = __swift_coroFrameAllocStub(v7);
  v1[6] = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_5_0();
  v9 = *(v0 + v8);
  v10 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
  OUTLINED_FUNCTION_27(v9 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor, v1);
  sub_26BC885AC(v9 + v10, v5);
  OUTLINED_FUNCTION_7();
  if (v11)
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_7();
    if (!v11)
    {
      sub_26BC8F328(v5, &qword_280444520, &qword_26BC9A8B0);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_52();
    sub_26BC8863C(v12, v13);
  }

  return sub_26BC860C4;
}

BOOL sub_26BC860E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v3);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  OUTLINED_FUNCTION_5_0();
  v8 = *(v1 + v7);
  v9 = OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_27(v9, v10);
  sub_26BC885AC(v8 + a1, v6);
  v11 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  v12 = __swift_getEnumTagSinglePayload(v6, 1, v11) != 1;
  v13 = OUTLINED_FUNCTION_52();
  sub_26BC8F328(v13, v14, &qword_26BC9A8B0);
  return v12;
}

uint64_t sub_26BC861C4(uint64_t a1)
{
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v5);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v6);
  v7 = *(OUTLINED_FUNCTION_63() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v10 = OUTLINED_FUNCTION_2_0();
    v9 = sub_26BC87F6C(v10);
    *(v4 + v7) = v9;
  }

  v11 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v11);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  sub_26BC886A0(v2, v9 + a1);
  return swift_endAccess();
}

uint64_t _ProtoStrokeAnimationRepresentation.compoundAnimationEffects.modify()
{
  v1 = OUTLINED_FUNCTION_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_1(v2);
  OUTLINED_FUNCTION_12(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects);
  OUTLINED_FUNCTION_39();

  return OUTLINED_FUNCTION_17();
}

uint64_t sub_26BC8634C(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_19(*(v1 + v3) + *a1, v4);
}

uint64_t sub_26BC8639C(uint64_t a1, uint64_t *a2)
{
  v5 = v3;
  v6 = OUTLINED_FUNCTION_14();
  v7 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation(v6) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v11 = OUTLINED_FUNCTION_2_0();
    v10 = sub_26BC87F6C(v11);
    *(v5 + v7) = v10;
  }

  v12 = *a2;
  OUTLINED_FUNCTION_18(v10 + v12, v9);
  *(v10 + v12) = v2;
}

uint64_t _ProtoStrokeAnimationRepresentation.animationDelays.modify()
{
  v1 = OUTLINED_FUNCTION_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_1(v2);
  OUTLINED_FUNCTION_12(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays);
  OUTLINED_FUNCTION_39();

  return OUTLINED_FUNCTION_17();
}

void (*_ProtoStrokeAnimationRepresentation.strokeColor.modify())(uint64_t a1, uint64_t a2, float a3)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_34(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  OUTLINED_FUNCTION_28(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v1[4] = v5;
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  OUTLINED_FUNCTION_3_0();
  v7 = *(v6 + 64);
  v1[5] = __swift_coroFrameAllocStub(v7);
  v1[6] = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_5_0();
  v9 = *(v0 + v8);
  v10 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
  OUTLINED_FUNCTION_27(v9 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor, v1);
  sub_26BC885AC(v9 + v10, v5);
  OUTLINED_FUNCTION_7();
  if (v11)
  {
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_7();
    if (!v11)
    {
      sub_26BC8F328(v5, &qword_280444520, &qword_26BC9A8B0);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_52();
    sub_26BC8863C(v12, v13);
  }

  return sub_26BC865FC;
}

void sub_26BC86614(uint64_t a1, char a2, void (*a3)(void *), float a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_26BC8EAE8(a4);
    a3(v6);
    sub_26BC8EB40();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t _ProtoStrokeAnimationRepresentation.backgroundURL.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0();
  v1 = OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_27(v1, v2);

  return OUTLINED_FUNCTION_23();
}

uint64_t _ProtoStrokeAnimationRepresentation.backgroundURL.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    v9 = OUTLINED_FUNCTION_2_0();
    v8 = sub_26BC87F6C(v9);
    *(v3 + v6) = v8;
  }

  v10 = (v8 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  OUTLINED_FUNCTION_30(v10, v12);
  *v10 = a1;
  v10[1] = a2;
}

uint64_t _ProtoStrokeAnimationRepresentation.backgroundURL.modify(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_5_0();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  OUTLINED_FUNCTION_12(v5);
  v6 = v5[1];
  v3[6] = *v5;
  v3[7] = v6;

  return OUTLINED_FUNCTION_17();
}

void sub_26BC86858(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {

    _ProtoStrokeAnimationRepresentation.backgroundURL.setter(v3, v4);
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 72);
      v10 = *(v2 + 64);
      OUTLINED_FUNCTION_6();
      v11 = OUTLINED_FUNCTION_2_0();
      v8 = sub_26BC87F6C(v11);
      *(v10 + v9) = v8;
    }

    v12 = (v8 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
    OUTLINED_FUNCTION_30(v12, v2 + 24);
    *v12 = v3;
    v12[1] = v4;
  }

  free(v2);
}

uint64_t _ProtoStrokeAnimationRepresentation.customEaseInValues.modify()
{
  v1 = OUTLINED_FUNCTION_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_1(v2);
  OUTLINED_FUNCTION_12(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues);
  OUTLINED_FUNCTION_39();

  return OUTLINED_FUNCTION_17();
}

uint64_t _ProtoStrokeAnimationRepresentation.customEaseOutValues.modify()
{
  v1 = OUTLINED_FUNCTION_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_1(v2);
  OUTLINED_FUNCTION_12(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues);
  OUTLINED_FUNCTION_39();

  return OUTLINED_FUNCTION_17();
}

uint64_t _ProtoStrokeAnimationRepresentation.customEaseInOutValues.modify()
{
  v1 = OUTLINED_FUNCTION_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_1(v2);
  OUTLINED_FUNCTION_12(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues);
  OUTLINED_FUNCTION_39();

  return OUTLINED_FUNCTION_17();
}

void sub_26BC86B04()
{
  OUTLINED_FUNCTION_10();
  if (v4)
  {
    v5 = v3;
    v6 = OUTLINED_FUNCTION_48();
    v5(v6);
  }

  else
  {
    v7 = v2;
    v8 = *(v0 + 64);
    v9 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v0 + 64);
      v13 = *(v0 + 56);
      OUTLINED_FUNCTION_6();
      v14 = OUTLINED_FUNCTION_2_0();
      v11 = sub_26BC87F6C(v14);
      *(v13 + v12) = v11;
    }

    v15 = *v7;
    OUTLINED_FUNCTION_21(v11 + v15);
    *(v11 + v15) = v1;
  }

  free(v0);
}

uint64_t _ProtoStrokeAnimationRepresentation.unknownFields.getter()
{
  OUTLINED_FUNCTION_54();
  sub_26BC99588();
  OUTLINED_FUNCTION_3_0();
  v0 = OUTLINED_FUNCTION_53();

  return v1(v0);
}

uint64_t _ProtoStrokeAnimationRepresentation.unknownFields.setter()
{
  OUTLINED_FUNCTION_14();
  sub_26BC99588();
  OUTLINED_FUNCTION_3_0();
  v0 = OUTLINED_FUNCTION_23();

  return v1(v0);
}

uint64_t sub_26BC86D54(uint64_t a1, char a2, uint64_t (*a3)(void *))
{
  v4 = sub_26BC99BE8();
  v5 = a3(v4);
  OUTLINED_FUNCTION_62(v5, v6);
  return sub_26BC99BF8();
}

uint64_t sub_26BC86DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8EA30();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26BC86E34(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void *))
{
  v5 = sub_26BC99BE8();
  v6 = a4(v5);
  OUTLINED_FUNCTION_62(v6, v7);
  return sub_26BC99BF8();
}

uint64_t _ProtoStrokeAnimationRepresentation.Point.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_54();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(v0);
  sub_26BC99588();
  OUTLINED_FUNCTION_3_0();
  v1 = OUTLINED_FUNCTION_22();

  return v2(v1);
}

uint64_t _ProtoStrokeAnimationRepresentation.Point.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_14();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(v0);
  sub_26BC99588();
  OUTLINED_FUNCTION_3_0();
  v1 = OUTLINED_FUNCTION_60();

  return v2(v1);
}

uint64_t _ProtoStrokeAnimationRepresentation.Point.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_14();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(v0);
  return OUTLINED_FUNCTION_57();
}

uint64_t _ProtoStrokeAnimationRepresentation.Point.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  return _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t _ProtoStrokeAnimationRepresentation.AnimationPoints.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_14();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints(v0);
  return OUTLINED_FUNCTION_57();
}

uint64_t _ProtoStrokeAnimationRepresentation.StrokeKeyTimes.value.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_26BC8717C()
{
  v0 = OUTLINED_FUNCTION_54();
  v1(v0);
  sub_26BC99588();
  OUTLINED_FUNCTION_3_0();
  v2 = OUTLINED_FUNCTION_22();

  return v3(v2);
}

uint64_t sub_26BC87204()
{
  v0 = OUTLINED_FUNCTION_14();
  v1(v0);
  sub_26BC99588();
  OUTLINED_FUNCTION_3_0();
  v2 = OUTLINED_FUNCTION_60();

  return v3(v2);
}

uint64_t _ProtoStrokeAnimationRepresentation.StrokeKeyTimes.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_14();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(v0);
  return OUTLINED_FUNCTION_57();
}

uint64_t sub_26BC872D0@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.rgb.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.name.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_54();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(v0);
  sub_26BC99588();
  OUTLINED_FUNCTION_3_0();
  v1 = OUTLINED_FUNCTION_22();

  return v2(v1);
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_14();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(v0);
  sub_26BC99588();
  OUTLINED_FUNCTION_3_0();
  v1 = OUTLINED_FUNCTION_60();

  return v2(v1);
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_14();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(v0);
  return OUTLINED_FUNCTION_57();
}

uint64_t sub_26BC87608(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8D7CC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t _ProtoStrokeAnimationRepresentation.init()@<X0>(uint64_t a1@<X8>)
{
  _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation(0) + 20);
  if (qword_280444358 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_280444518;
}

uint64_t static _ProtoStrokeAnimationRepresentation.AnimationEffect.allCases.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_27(v1, v2);
}

uint64_t (*static _ProtoStrokeAnimationRepresentation.AnimationEffect.allCases.modify(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static _ProtoStrokeAnimationRepresentation.Color.Name.allCases.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_27(v1, v2);
}

uint64_t sub_26BC87814()
{
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_30(v2, v3);
  *v0 = v1;
}

uint64_t (*static _ProtoStrokeAnimationRepresentation.Color.Name.allCases.modify(uint64_t a1))(uint64_t)
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_26BC878AC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_27(a1, v5);
  *a2 = *a1;
}

uint64_t sub_26BC87918()
{
  v0 = sub_26BC99778();
  __swift_allocate_value_buffer(v0, static _ProtoStrokeAnimationRepresentation._protobuf_nameMap);
  __swift_project_value_buffer(v0, static _ProtoStrokeAnimationRepresentation._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444710, &qword_26BC9B340);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444718, &qword_26BC9B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26BC9A850;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "strokeContours";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26BC99758();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "animationPoints";
  *(v8 + 8) = 15;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "strokeFeatures";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "speedRate";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "strokeWidth";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "animationControlValues";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "contourColor";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "backgroundColor";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "compoundAnimationEffects";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "animationDelays";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "strokeColor";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "backgroundUrl";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "customEaseInValues";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "customEaseOutValues";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "customEaseInOutValues";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v7();
  return sub_26BC99768();
}

void *sub_26BC87E50()
{
  OUTLINED_FUNCTION_6();
  result = sub_26BC87E80();
  qword_280444518 = result;
  return result;
}

void *sub_26BC87E80()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = v1;
  v0[4] = v1;
  v0[5] = 0;
  v0[6] = v1;
  v0[7] = v1;
  v2 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
  v3 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects) = v1;
  *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays) = v1;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues) = v1;
  *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues) = v1;
  *(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues) = v1;
  return v0;
}

void *sub_26BC87F6C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v43 - v4;
  v5 = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  v1[3] = v5;
  v1[4] = v5;
  v1[5] = 0;
  v44 = v1 + 5;
  v1[6] = v5;
  v1[7] = v5;
  v45 = v1 + 7;
  v6 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
  v7 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v47 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor, 1, 1, v7);
  v48 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects;
  *(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects) = v5;
  v49 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays;
  *(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays) = v5;
  v50 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor, 1, 1, v7);
  v8 = (v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v51 = v8;
  v52 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues;
  *(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues) = v5;
  v53 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues;
  *(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues) = v5;
  v54 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues;
  *(v1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues) = v5;
  swift_beginAccess();
  v9 = a1[2];
  swift_beginAccess();
  v1[2] = v9;
  swift_beginAccess();
  v10 = a1[3];
  swift_beginAccess();
  v1[3] = v10;

  swift_beginAccess();
  v11 = a1[4];
  swift_beginAccess();
  v1[4] = v11;

  swift_beginAccess();
  v12 = a1[5];
  v13 = v44;
  swift_beginAccess();
  *v13 = v12;
  swift_beginAccess();
  v14 = a1[6];
  swift_beginAccess();
  v1[6] = v14;

  swift_beginAccess();
  v15 = a1[7];
  v16 = v45;
  swift_beginAccess();
  *v16 = v15;

  v17 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
  swift_beginAccess();
  v18 = v46;
  sub_26BC885AC(a1 + v17, v46);
  swift_beginAccess();
  sub_26BC886A0(v18, v1 + v6);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
  swift_beginAccess();
  sub_26BC885AC(a1 + v19, v18);
  v20 = v47;
  swift_beginAccess();
  sub_26BC886A0(v18, v1 + v20);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects;
  swift_beginAccess();
  v22 = *(a1 + v21);
  v23 = v48;
  swift_beginAccess();
  *(v1 + v23) = v22;

  v24 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays;
  swift_beginAccess();
  v25 = *(a1 + v24);
  v26 = v49;
  swift_beginAccess();
  *(v1 + v26) = v25;

  v27 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
  swift_beginAccess();
  sub_26BC885AC(a1 + v27, v18);
  v28 = v50;
  swift_beginAccess();
  sub_26BC886A0(v18, v1 + v28);
  swift_endAccess();
  v29 = (a1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];
  v32 = v51;
  swift_beginAccess();
  *v32 = v31;
  v32[1] = v30;

  v33 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues;
  swift_beginAccess();
  v34 = *(a1 + v33);
  v35 = v52;
  swift_beginAccess();
  *(v1 + v35) = v34;

  v36 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues;
  swift_beginAccess();
  v37 = *(a1 + v36);
  v38 = v53;
  swift_beginAccess();
  *(v1 + v38) = v37;

  v39 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues;
  swift_beginAccess();
  v40 = *(a1 + v39);

  v41 = v54;
  swift_beginAccess();
  *(v1 + v41) = v40;

  return v1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_26BC885AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC8863C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC886A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BC88770(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_26BC887A8()
{

  sub_26BC8F328(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor, &qword_280444520, &qword_26BC9A8B0);
  sub_26BC8F328(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor, &qword_280444520, &qword_26BC9A8B0);

  sub_26BC8F328(v0 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor, &qword_280444520, &qword_26BC9A8B0);

  return v0;
}

uint64_t sub_26BC888B4()
{
  v0 = sub_26BC887A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _ProtoStrokeAnimationRepresentation.decodeMessage<A>(decoder:)(uint64_t a1)
{
  v2 = *(type metadata accessor for _ProtoStrokeAnimationRepresentation(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for _ProtoStrokeAnimationRepresentation._StorageClass(0);
    swift_allocObject();
    v3 = OUTLINED_FUNCTION_2_0();
    *(v1 + v2) = sub_26BC87F6C(v3);
  }

  OUTLINED_FUNCTION_58();
  return sub_26BC889A4(v4, v5, v6, v7);
}

uint64_t sub_26BC889A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26BC995E8();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26BC88C34(a2, a1, a3, a4);
        break;
      case 2:
        sub_26BC88CB8(a2, a1, a3, a4);
        break;
      case 3:
        sub_26BC88D84(a2, a1, a3, a4);
        break;
      case 4:
        sub_26BC88E08(a2, a1, a3, a4);
        break;
      case 5:
        sub_26BC88E8C(a2, a1, a3, a4);
        break;
      case 6:
        sub_26BC88F10(a2, a1, a3, a4);
        break;
      case 7:
      case 8:
      case 12:
        sub_26BC89078();
        break;
      case 10:
        sub_26BC88FDC(a2, a1, a3, a4);
        break;
      case 11:
      case 14:
      case 15:
      case 16:
        sub_26BC891C8();
        break;
      case 13:
        sub_26BC8913C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BC88C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_26BC99638();
  return swift_endAccess();
}

uint64_t sub_26BC88CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints(0);
  sub_26BC8ADE4(&qword_280444628, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.AnimationPoints);
  sub_26BC99668();
  return swift_endAccess();
}

uint64_t sub_26BC88D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_26BC99638();
  return swift_endAccess();
}

uint64_t sub_26BC88E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_26BC99648();
  return swift_endAccess();
}

uint64_t sub_26BC88E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_26BC99628();
  return swift_endAccess();
}

uint64_t sub_26BC88F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
  sub_26BC8ADE4(&qword_280444640, type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes);
  sub_26BC99668();
  return swift_endAccess();
}

uint64_t sub_26BC88FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_26BC8EA30();
  sub_26BC995F8();
  return swift_endAccess();
}

uint64_t sub_26BC89078()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  sub_26BC8ADE4(&qword_280444658, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.Color);
  sub_26BC99678();
  return swift_endAccess();
}

uint64_t sub_26BC8913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_26BC99658();
  return swift_endAccess();
}

uint64_t sub_26BC891C8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  OUTLINED_FUNCTION_15();
  sub_26BC99628();
  return swift_endAccess();
}

uint64_t _ProtoStrokeAnimationRepresentation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ProtoStrokeAnimationRepresentation(0);
  OUTLINED_FUNCTION_15();
  result = sub_26BC8929C(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_36();
    return sub_26BC99568();
  }

  return result;
}

uint64_t sub_26BC8929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v47 = &v43 - v13;
  MEMORY[0x28223BE20](v12);
  v48 = &v43 - v14;
  v49 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  v15 = MEMORY[0x28223BE20](v49);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v45 = &v43 - v19;
  MEMORY[0x28223BE20](v18);
  v46 = &v43 - v20;
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {

    sub_26BC99708();
    if (v4)
    {
    }

    v44 = v17;
    v21 = a4;
  }

  else
  {
    v44 = v17;
    v21 = a4;
  }

  swift_beginAccess();
  if (*(*(a1 + 24) + 16))
  {
    type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints(0);
    sub_26BC8ADE4(&qword_280444628, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.AnimationPoints);

    v22 = v21;
    sub_26BC99738();
    if (v4)
    {
    }
  }

  else
  {
    v22 = v21;
  }

  swift_beginAccess();
  if (*(*(a1 + 32) + 16))
  {

    sub_26BC99708();
    if (v4)
    {
    }

    v23 = v11;
  }

  else
  {
    v23 = v11;
  }

  swift_beginAccess();
  if (*(a1 + 40) != 0.0)
  {
    result = sub_26BC99718();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {

    sub_26BC996D8();
    if (!v4)
    {

      goto LABEL_17;
    }
  }

LABEL_17:
  swift_beginAccess();
  v24 = *(*(a1 + 56) + 16);
  v43 = v22;
  if (v24)
  {
    type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
    sub_26BC8ADE4(&qword_280444640, type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes);

    sub_26BC99738();
    if (v4)
    {
    }
  }

  v26 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
  swift_beginAccess();
  v27 = a1 + v26;
  v28 = v48;
  sub_26BC885AC(v27, v48);
  v29 = v49;
  if (__swift_getEnumTagSinglePayload(v28, 1, v49) == 1)
  {
    sub_26BC8F328(v28, &qword_280444520, &qword_26BC9A8B0);
  }

  else
  {
    sub_26BC8863C(v28, v46);
    sub_26BC8ADE4(&qword_280444658, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.Color);
    sub_26BC99748();
    if (v4)
    {
      return sub_26BC8EB40();
    }

    sub_26BC8EB40();
  }

  v30 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
  swift_beginAccess();
  v31 = a1 + v30;
  v32 = v47;
  sub_26BC885AC(v31, v47);
  if (__swift_getEnumTagSinglePayload(v32, 1, v29) == 1)
  {
    sub_26BC8F328(v32, &qword_280444520, &qword_26BC9A8B0);
  }

  else
  {
    sub_26BC8863C(v32, v45);
    sub_26BC8ADE4(&qword_280444658, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.Color);
    sub_26BC99748();
    result = sub_26BC8EB40();
    if (v4)
    {
      return result;
    }
  }

  v33 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects;
  swift_beginAccess();
  if (!*(*(a1 + v33) + 16) || (sub_26BC8EA30(), , sub_26BC996C8(), result = , !v4))
  {
    v34 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays;
    swift_beginAccess();
    if (!*(*(a1 + v34) + 16) || (, sub_26BC996D8(), result = , !v4))
    {
      v35 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
      swift_beginAccess();
      sub_26BC885AC(a1 + v35, v23);
      if (__swift_getEnumTagSinglePayload(v23, 1, v29) == 1)
      {
        sub_26BC8F328(v23, &qword_280444520, &qword_26BC9A8B0);
      }

      else
      {
        sub_26BC8863C(v23, v44);
        sub_26BC8ADE4(&qword_280444658, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.Color);
        sub_26BC99748();
        result = sub_26BC8EB40();
        if (v4)
        {
          return result;
        }
      }

      v36 = (a1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
      swift_beginAccess();
      v37 = *v36;
      v38 = v36[1];
      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (!v39 || (, sub_26BC99728(), result = , !v5))
      {
        v40 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues;
        swift_beginAccess();
        if (!*(*(a1 + v40) + 16) || (, sub_26BC996D8(), result = , !v5))
        {
          v41 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues;
          swift_beginAccess();
          if (!*(*(a1 + v41) + 16) || (, sub_26BC996D8(), result = , !v5))
          {
            v42 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues;
            result = swift_beginAccess();
            if (*(*(a1 + v42) + 16))
            {

              sub_26BC996D8();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static _ProtoStrokeAnimationRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_5_0();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_26BC89C90(v3, v4);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26BC99588();
  OUTLINED_FUNCTION_1_1();
  sub_26BC8ADE4(v6, v7, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_23();
  return sub_26BC99868() & 1;
}

uint64_t sub_26BC89C90(uint64_t a1, uint64_t a2)
{
  v102 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  v4 = MEMORY[0x28223BE20](v102);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v97 = &v93 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v93 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444720, qword_26BC9B350);
  v11 = MEMORY[0x28223BE20](v103);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v99 = &v93 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v93 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v96 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v100 = &v93 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v98 = &v93 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v101 = &v93 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v93 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v93 - v30;
  swift_beginAccess();
  v32 = *(a1 + 16);
  swift_beginAccess();
  if (sub_26BC8EB94(v32, *(a2 + 16)))
  {
    v94 = v6;
    v95 = v13;
    swift_beginAccess();
    v33 = *(a1 + 24);
    swift_beginAccess();
    v34 = *(a2 + 24);

    v35 = sub_26BC8EC20(v33, v34);

    if ((v35 & 1) == 0)
    {
      goto LABEL_44;
    }

    swift_beginAccess();
    v36 = *(a1 + 32);
    swift_beginAccess();
    if ((sub_26BC8EB94(v36, *(a2 + 32)) & 1) == 0)
    {
      goto LABEL_44;
    }

    swift_beginAccess();
    v37 = *(a1 + 40);
    swift_beginAccess();
    if (v37 != *(a2 + 40))
    {
      goto LABEL_44;
    }

    swift_beginAccess();
    v38 = *(a1 + 48);
    swift_beginAccess();
    if ((sub_26BC8D770(v38, *(a2 + 48)) & 1) == 0)
    {
      goto LABEL_44;
    }

    swift_beginAccess();
    v39 = *(a1 + 56);
    swift_beginAccess();
    v40 = *(a2 + 56);

    v41 = sub_26BC8F094(v39, v40);

    if ((v41 & 1) == 0)
    {
      goto LABEL_44;
    }

    v42 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
    swift_beginAccess();
    sub_26BC885AC(a1 + v42, v31);
    v43 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
    swift_beginAccess();
    v44 = *(v103 + 48);
    sub_26BC885AC(v31, v17);
    sub_26BC885AC(a2 + v43, &v17[v44]);
    v45 = v102;
    if (__swift_getEnumTagSinglePayload(v17, 1, v102) == 1)
    {
      sub_26BC8F328(v31, &qword_280444520, &qword_26BC9A8B0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v17[v44], 1, v45);
      v47 = v95;
      if (EnumTagSinglePayload != 1)
      {
LABEL_42:
        v81 = &qword_280444720;
        v82 = qword_26BC9B350;
        v80 = v17;
        goto LABEL_43;
      }

      sub_26BC8F328(v17, &qword_280444520, &qword_26BC9A8B0);
    }

    else
    {
      sub_26BC885AC(v17, v29);
      if (__swift_getEnumTagSinglePayload(&v17[v44], 1, v45) == 1)
      {
        sub_26BC8F328(v31, &qword_280444520, &qword_26BC9A8B0);
LABEL_41:
        sub_26BC8EB40();
        goto LABEL_42;
      }

      sub_26BC8863C(&v17[v44], v10);
      v78 = *v29 == *v10 && *(v29 + 1) == *(v10 + 1);
      if (!v78 && (sub_26BC99BD8() & 1) == 0 || *(v29 + 2) != *(v10 + 2) || !sub_26BC851C0(*(v29 + 3), v29[32], *(v10 + 3)))
      {
        sub_26BC8F328(v31, &qword_280444520, &qword_26BC9A8B0);
        sub_26BC8EB40();
        sub_26BC8EB40();
        v80 = v17;
        v81 = &qword_280444520;
        v82 = &qword_26BC9A8B0;
LABEL_43:
        sub_26BC8F328(v80, v81, v82);
        goto LABEL_44;
      }

      sub_26BC99588();
      sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v79 = sub_26BC99868();
      sub_26BC8F328(v31, &qword_280444520, &qword_26BC9A8B0);
      sub_26BC8EB40();
      sub_26BC8EB40();
      v45 = v102;
      sub_26BC8F328(v17, &qword_280444520, &qword_26BC9A8B0);
      v47 = v95;
      if ((v79 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v48 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
    swift_beginAccess();
    v49 = v101;
    sub_26BC885AC(a1 + v48, v101);
    v50 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
    swift_beginAccess();
    v51 = *(v103 + 48);
    v17 = v99;
    sub_26BC885AC(v49, v99);
    sub_26BC885AC(a2 + v50, &v17[v51]);
    if (__swift_getEnumTagSinglePayload(v17, 1, v45) == 1)
    {
      sub_26BC8F328(v49, &qword_280444520, &qword_26BC9A8B0);
      v52 = __swift_getEnumTagSinglePayload(&v17[v51], 1, v45);
      v53 = v100;
      if (v52 == 1)
      {
        sub_26BC8F328(v17, &qword_280444520, &qword_26BC9A8B0);
        goto LABEL_13;
      }

      goto LABEL_42;
    }

    v83 = v98;
    sub_26BC885AC(v17, v98);
    v84 = __swift_getEnumTagSinglePayload(&v17[v51], 1, v45);
    v53 = v100;
    if (v84 != 1)
    {
      v86 = v97;
      sub_26BC8863C(&v17[v51], v97);
      v87 = *v83 == *v86 && *(v83 + 8) == *(v86 + 8);
      if (!v87 && (sub_26BC99BD8() & 1) == 0 || *(v83 + 16) != *(v86 + 16) || !sub_26BC851C0(*(v83 + 24), *(v83 + 32), *(v86 + 24)))
      {
        sub_26BC8F328(v101, &qword_280444520, &qword_26BC9A8B0);
        sub_26BC8EB40();
        sub_26BC8EB40();
        v80 = v17;
LABEL_57:
        v81 = &qword_280444520;
        v82 = &qword_26BC9A8B0;
        goto LABEL_43;
      }

      sub_26BC99588();
      sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v88 = sub_26BC99868();
      sub_26BC8F328(v101, &qword_280444520, &qword_26BC9A8B0);
      sub_26BC8EB40();
      v47 = v95;
      sub_26BC8EB40();
      sub_26BC8F328(v17, &qword_280444520, &qword_26BC9A8B0);
      if ((v88 & 1) == 0)
      {
        goto LABEL_44;
      }

LABEL_13:
      v54 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects;
      swift_beginAccess();
      v55 = *(a1 + v54);
      v56 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects;
      swift_beginAccess();
      if ((sub_26BC8F380(v55, *(a2 + v56)) & 1) == 0)
      {
        goto LABEL_44;
      }

      v57 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays;
      swift_beginAccess();
      v58 = *(a1 + v57);
      v59 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays;
      swift_beginAccess();
      if ((sub_26BC8D770(v58, *(a2 + v59)) & 1) == 0)
      {
        goto LABEL_44;
      }

      v60 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
      swift_beginAccess();
      sub_26BC885AC(a1 + v60, v53);
      v61 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
      swift_beginAccess();
      v62 = *(v103 + 48);
      sub_26BC885AC(v53, v47);
      sub_26BC885AC(a2 + v61, v47 + v62);
      if (__swift_getEnumTagSinglePayload(v47, 1, v45) == 1)
      {
        sub_26BC8F328(v53, &qword_280444520, &qword_26BC9A8B0);
        if (__swift_getEnumTagSinglePayload(v47 + v62, 1, v45) == 1)
        {
          sub_26BC8F328(v47, &qword_280444520, &qword_26BC9A8B0);
LABEL_18:
          v63 = (a1 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
          swift_beginAccess();
          v64 = *v63;
          v65 = v63[1];
          v66 = (a2 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
          swift_beginAccess();
          v67 = v64 == *v66 && v65 == v66[1];
          if (v67 || (sub_26BC99BD8() & 1) != 0)
          {
            v68 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues;
            swift_beginAccess();
            v69 = *(a1 + v68);
            v70 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInValues;
            swift_beginAccess();
            if (sub_26BC8D770(v69, *(a2 + v70)))
            {
              v71 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues;
              swift_beginAccess();
              v72 = *(a1 + v71);
              v73 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseOutValues;
              swift_beginAccess();
              if (sub_26BC8D770(v72, *(a2 + v73)))
              {
                v74 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues;
                swift_beginAccess();
                v75 = *(a1 + v74);
                v76 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__customEaseInOutValues;
                swift_beginAccess();
                v77 = sub_26BC8D770(v75, *(a2 + v76));
LABEL_45:

                return v77 & 1;
              }
            }
          }

LABEL_44:
          v77 = 0;
          goto LABEL_45;
        }

        goto LABEL_60;
      }

      v89 = v96;
      sub_26BC885AC(v47, v96);
      if (__swift_getEnumTagSinglePayload(v47 + v62, 1, v45) == 1)
      {
        sub_26BC8F328(v53, &qword_280444520, &qword_26BC9A8B0);
        sub_26BC8EB40();
LABEL_60:
        v81 = &qword_280444720;
        v82 = qword_26BC9B350;
        v80 = v47;
        goto LABEL_43;
      }

      v90 = v94;
      sub_26BC8863C(v47 + v62, v94);
      v91 = *v89 == *v90 && *(v89 + 8) == *(v90 + 8);
      if (v91 || (sub_26BC99BD8()) && *(v89 + 16) == *(v90 + 16) && sub_26BC851C0(*(v89 + 24), *(v89 + 32), *(v90 + 24)))
      {
        sub_26BC99588();
        sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v92 = sub_26BC99868();
        sub_26BC8F328(v53, &qword_280444520, &qword_26BC9A8B0);
        sub_26BC8EB40();
        sub_26BC8EB40();
        sub_26BC8F328(v47, &qword_280444520, &qword_26BC9A8B0);
        if ((v92 & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      sub_26BC8F328(v53, &qword_280444520, &qword_26BC9A8B0);
      sub_26BC8EB40();
      sub_26BC8EB40();
      v80 = v47;
      goto LABEL_57;
    }

    sub_26BC8F328(v101, &qword_280444520, &qword_26BC9A8B0);
    goto LABEL_41;
  }

  v77 = 0;
  return v77 & 1;
}

uint64_t sub_26BC8AB38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BC99588();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_26BC8ABA0(uint64_t a1)
{
  v3 = sub_26BC99588();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_26BC8AC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8ADE4(&qword_280444700, type metadata accessor for _ProtoStrokeAnimationRepresentation, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BC8ACF8(uint64_t a1)
{
  sub_26BC8ADE4(&qword_2804449E0, type metadata accessor for _ProtoStrokeAnimationRepresentation, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation);

  return sub_26BC996A8();
}

uint64_t sub_26BC8AD68(uint64_t a1, uint64_t a2)
{
  sub_26BC8ADE4(&qword_2804449E0, type metadata accessor for _ProtoStrokeAnimationRepresentation, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation);

  return sub_26BC996B8();
}

uint64_t sub_26BC8ADE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BC8AE30()
{
  v0 = sub_26BC99778();
  __swift_allocate_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.AnimationEffect._protobuf_nameMap);
  __swift_project_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.AnimationEffect._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444710, &qword_26BC9B340);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444718, &qword_26BC9B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BC9A860;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BC99758();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLAIN";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EASEIN";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EASEOUT";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EASEINOUT";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  return sub_26BC99768();
}

uint64_t sub_26BC8B118(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  sub_26BC99778();
  OUTLINED_FUNCTION_3_0();
  v3 = OUTLINED_FUNCTION_53();

  return v4(v3);
}

void *_ProtoStrokeAnimationRepresentation.Point.protoMessageName.unsafeMutableAddressor()
{
  if (qword_280444368 != -1)
  {
    swift_once();
  }

  return &static _ProtoStrokeAnimationRepresentation.Point.protoMessageName;
}

uint64_t sub_26BC8B210()
{
  v0 = sub_26BC99778();
  __swift_allocate_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.Point._protobuf_nameMap);
  __swift_project_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.Point._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444710, &qword_26BC9B340);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444718, &qword_26BC9B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BC9A870;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BC99758();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  return sub_26BC99768();
}

uint64_t _ProtoStrokeAnimationRepresentation.Point.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_11();
  while (1)
  {
    OUTLINED_FUNCTION_36();
    result = sub_26BC995E8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_15();
      sub_26BC99618();
    }
  }

  return result;
}

uint64_t _ProtoStrokeAnimationRepresentation.Point.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_8();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_29(), OUTLINED_FUNCTION_15(), result = sub_26BC996F8(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_29(), OUTLINED_FUNCTION_15(), result = sub_26BC996F8(), !v1))
    {
      type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
      return OUTLINED_FUNCTION_13();
    }
  }

  return result;
}

uint64_t static _ProtoStrokeAnimationRepresentation.Point.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_33();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  sub_26BC99588();
  OUTLINED_FUNCTION_1_1();
  sub_26BC8ADE4(v4, v5, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_25() & 1;
}

uint64_t sub_26BC8B620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26BC99588();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BC8B694(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_26BC99588();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BC8B760(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8ADE4(&qword_2804446F8, type metadata accessor for _ProtoStrokeAnimationRepresentation.Point, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.Point);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BC8B7F4(uint64_t a1)
{
  sub_26BC8ADE4(&qword_280444588, type metadata accessor for _ProtoStrokeAnimationRepresentation.Point, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.Point);

  return sub_26BC996A8();
}

uint64_t sub_26BC8B864(uint64_t a1, uint64_t a2)
{
  sub_26BC8ADE4(&qword_280444588, type metadata accessor for _ProtoStrokeAnimationRepresentation.Point, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.Point);

  return sub_26BC996B8();
}

uint64_t sub_26BC8B8E8()
{
  result = MEMORY[0x26D693160](0xD000000000000010, 0x800000026BC9B960);
  static _ProtoStrokeAnimationRepresentation.AnimationPoints.protoMessageName = 0xD00000000000002DLL;
  *algn_280444A68 = 0x800000026BC9B720;
  return result;
}

uint64_t *_ProtoStrokeAnimationRepresentation.AnimationPoints.protoMessageName.unsafeMutableAddressor()
{
  if (qword_280444378 != -1)
  {
    swift_once();
  }

  return &static _ProtoStrokeAnimationRepresentation.AnimationPoints.protoMessageName;
}

uint64_t _ProtoStrokeAnimationRepresentation.AnimationPoints.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_11();
  while (1)
  {
    OUTLINED_FUNCTION_36();
    result = sub_26BC995E8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_58();
      sub_26BC8BA84(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_26BC8BA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  sub_26BC8ADE4(&qword_280444588, type metadata accessor for _ProtoStrokeAnimationRepresentation.Point, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.Point);
  return sub_26BC99668();
}

uint64_t _ProtoStrokeAnimationRepresentation.AnimationPoints.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_8();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0), sub_26BC8ADE4(&qword_280444588, type metadata accessor for _ProtoStrokeAnimationRepresentation.Point, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.Point), OUTLINED_FUNCTION_29(), result = sub_26BC99738(), !v1))
  {
    type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints(0);
    return OUTLINED_FUNCTION_13();
  }

  return result;
}

uint64_t sub_26BC8BCDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8ADE4(&qword_2804446F0, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.AnimationPoints);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BC8BD70(uint64_t a1)
{
  sub_26BC8ADE4(&qword_280444628, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.AnimationPoints);

  return sub_26BC996A8();
}

uint64_t sub_26BC8BDE0(uint64_t a1, uint64_t a2)
{
  sub_26BC8ADE4(&qword_280444628, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.AnimationPoints);

  return sub_26BC996B8();
}

void *_ProtoStrokeAnimationRepresentation.StrokeKeyTimes.protoMessageName.unsafeMutableAddressor()
{
  if (qword_280444388 != -1)
  {
    swift_once();
  }

  return &static _ProtoStrokeAnimationRepresentation.StrokeKeyTimes.protoMessageName;
}

uint64_t sub_26BC8BF18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26BC99778();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444710, &qword_26BC9B340);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444718, &qword_26BC9B348) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26BC9A880;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  sub_26BC99758();
  OUTLINED_FUNCTION_3_0();
  (*(v13 + 104))(v11, v12);
  return sub_26BC99768();
}

uint64_t _ProtoStrokeAnimationRepresentation.StrokeKeyTimes.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_11();
  while (1)
  {
    OUTLINED_FUNCTION_36();
    result = sub_26BC995E8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_15();
      sub_26BC99628();
    }
  }

  return result;
}

uint64_t _ProtoStrokeAnimationRepresentation.StrokeKeyTimes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_8();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), OUTLINED_FUNCTION_58(), result = sub_26BC996D8(), !v1))
  {
    type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
    return OUTLINED_FUNCTION_13();
  }

  return result;
}

uint64_t sub_26BC8C1B4(float a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  OUTLINED_FUNCTION_33();
  if ((v8(*v6, *v7) & 1) == 0)
  {
    return 0;
  }

  a5(0);
  sub_26BC99588();
  OUTLINED_FUNCTION_1_1();
  sub_26BC8ADE4(v9, v10, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_25() & 1;
}

uint64_t sub_26BC8C2B8()
{
  sub_26BC99588();
  OUTLINED_FUNCTION_3_0();
  v0 = OUTLINED_FUNCTION_22();

  return v1(v0);
}

uint64_t sub_26BC8C320()
{
  sub_26BC99588();
  OUTLINED_FUNCTION_3_0();
  v0 = OUTLINED_FUNCTION_60();

  return v1(v0);
}

uint64_t sub_26BC8C3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8ADE4(&qword_2804446E8, type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BC8C474(uint64_t a1)
{
  sub_26BC8ADE4(&qword_280444640, type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes);

  return sub_26BC996A8();
}

uint64_t sub_26BC8C4E4(uint64_t a1, uint64_t a2)
{
  sub_26BC8ADE4(&qword_280444640, type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes);

  return sub_26BC996B8();
}

uint64_t sub_26BC8C584(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D693160](a2, a3);
  *a4 = 0xD00000000000002DLL;
  *a5 = 0x800000026BC9B720;
  return result;
}

void *_ProtoStrokeAnimationRepresentation.Color.protoMessageName.unsafeMutableAddressor()
{
  if (qword_280444398 != -1)
  {
    swift_once();
  }

  return &static _ProtoStrokeAnimationRepresentation.Color.protoMessageName;
}

uint64_t sub_26BC8C660(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_26BC8C6B0()
{
  v0 = sub_26BC99778();
  __swift_allocate_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.Color._protobuf_nameMap);
  __swift_project_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.Color._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444710, &qword_26BC9B340);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444718, &qword_26BC9B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BC9A890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rgb";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BC99758();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "alpha";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "name";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_26BC99768();
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_11();
  while (1)
  {
    OUTLINED_FUNCTION_36();
    result = sub_26BC995E8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_58();
        sub_26BC8C990(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_15();
        sub_26BC99648();
        break;
      case 1:
        OUTLINED_FUNCTION_15();
        sub_26BC99658();
        break;
    }
  }

  return result;
}

uint64_t _ProtoStrokeAnimationRepresentation.Color.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_8();
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (OUTLINED_FUNCTION_29(), result = sub_26BC99728(), !v1))
  {
    if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_29(), OUTLINED_FUNCTION_15(), result = sub_26BC99718(), !v1))
    {
      if (!*(v2 + 24) || (sub_26BC8D7CC(), OUTLINED_FUNCTION_29(), result = sub_26BC996E8(), !v1))
      {
        type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
        return OUTLINED_FUNCTION_13();
      }
    }
  }

  return result;
}

uint64_t static _ProtoStrokeAnimationRepresentation.Color.== infix(_:_:)(float a1)
{
  OUTLINED_FUNCTION_33();
  v4 = *v3 == *v1 && *(v2 + 8) == *(v1 + 8);
  if (!v4 && (sub_26BC99BD8() & 1) == 0 || *(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  v5 = *(v2 + 24);
  v6 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    switch(v6)
    {
      case 1:
        if (v5 != 1)
        {
          return 0;
        }

        goto LABEL_10;
      case 2:
        if (v5 != 2)
        {
          return 0;
        }

        goto LABEL_10;
      case 3:
        if (v5 != 3)
        {
          return 0;
        }

        goto LABEL_10;
      case 4:
        if (v5 != 4)
        {
          return 0;
        }

        goto LABEL_10;
      case 5:
        if (v5 != 5)
        {
          return 0;
        }

        goto LABEL_10;
      case 6:
        if (v5 != 6)
        {
          return 0;
        }

        goto LABEL_10;
      case 7:
        if (v5 != 7)
        {
          return 0;
        }

        goto LABEL_10;
      default:
        break;
    }
  }

  if (v5 != v6)
  {
    return 0;
  }

LABEL_10:
  type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  sub_26BC99588();
  OUTLINED_FUNCTION_1_1();
  sub_26BC8ADE4(v7, v8, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_25() & 1;
}

uint64_t sub_26BC8CC88(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_26BC99BE8();
  a1(0);
  sub_26BC8ADE4(a2, a3, a4);
  sub_26BC99858();
  return sub_26BC99BF8();
}

uint64_t sub_26BC8CD38(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, void *a5)
{
  a3(a1, a2);

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_26BC8CD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_26BC99588();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BC8CDEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_26BC99588();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BC8CEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BC8ADE4(&qword_2804446E0, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.Color);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BC8CF4C(uint64_t a1)
{
  sub_26BC8ADE4(&qword_280444658, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.Color);

  return sub_26BC996A8();
}

uint64_t sub_26BC8CFBC(uint64_t a1, uint64_t a2)
{
  sub_26BC8ADE4(&qword_280444658, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation.Color);

  return sub_26BC996B8();
}

uint64_t sub_26BC8D038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26BC99BE8();
  sub_26BC99858();
  return sub_26BC99BF8();
}

uint64_t sub_26BC8D090()
{
  v0 = sub_26BC99778();
  __swift_allocate_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.Color.Name._protobuf_nameMap);
  __swift_project_value_buffer(v0, static _ProtoStrokeAnimationRepresentation.Color.Name._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444710, &qword_26BC9B340);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444718, &qword_26BC9B348) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26BC9A8A0;
  v4 = v22 + v3 + v1[14];
  *(v22 + v3) = 0;
  *v4 = "DEFAULT";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26BC99758();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v22 + v3 + v2 + v1[14];
  *(v22 + v3 + v2) = 1;
  *v8 = "CLEAR";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v22 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "BLACK";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v22 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "WHITE";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v22 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "GRAY";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v22 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "RED";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v22 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "GREEN";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v22 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "BLUE";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v7();
  return sub_26BC99768();
}

uint64_t sub_26BC8D3E0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_26BC99778();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_26BC8D45C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_26BC99778();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_26BC8D50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v8 + 72);
    while (1)
    {
      sub_26BC8EAE8(v9);
      sub_26BC8EAE8(v17);
      if (*v11 != *v7 || v11[1] != v7[1])
      {
        break;
      }

      sub_26BC99588();
      sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_26BC99868();
      sub_26BC8EB40();
      sub_26BC8EB40();
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_26BC8EB40();
    sub_26BC8EB40();
    goto LABEL_12;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_26BC8D770(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26BC8D7CC()
{
  result = qword_2804445A0;
  if (!qword_2804445A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445A0);
  }

  return result;
}

unint64_t sub_26BC8D824()
{
  result = qword_2804445B0;
  if (!qword_2804445B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445B0);
  }

  return result;
}

unint64_t sub_26BC8D87C()
{
  result = qword_2804445B8;
  if (!qword_2804445B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445B8);
  }

  return result;
}

unint64_t sub_26BC8D8D4()
{
  result = qword_2804445C0;
  if (!qword_2804445C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445C0);
  }

  return result;
}

unint64_t sub_26BC8D92C()
{
  result = qword_2804445C8;
  if (!qword_2804445C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445C8);
  }

  return result;
}

unint64_t sub_26BC8D984()
{
  result = qword_2804445D0;
  if (!qword_2804445D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445D0);
  }

  return result;
}

unint64_t sub_26BC8D9DC()
{
  result = qword_2804445D8;
  if (!qword_2804445D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804445D8);
  }

  return result;
}

uint64_t sub_26BC8DA90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BC8E098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14();
  v6 = sub_26BC99588();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_24(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_26BC8E148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_38();
  result = sub_26BC99588();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s15StrokeAnimation35_ProtoStrokeAnimationRepresentationV5ColorV4NameOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_49(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15StrokeAnimation35_ProtoStrokeAnimationRepresentationV5ColorV4NameOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26BC8E274(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_49(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BC8E28C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_26BC8E2D0()
{
  OUTLINED_FUNCTION_38();
  v3 = *(v2 + 24);
  v4 = sub_26BC99588();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_26BC8E334()
{
  OUTLINED_FUNCTION_38();
  v3 = *(v2 + 24);
  v4 = sub_26BC99588();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_26BC8E388(uint64_t a1)
{
  result = sub_26BC99588();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26BC8E434(uint64_t a1)
{
  sub_26BC8E9CC(319, &qword_280444698, type metadata accessor for _ProtoStrokeAnimationRepresentation.Point, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26BC99588();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_30Tm(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_24(*a1);
  }

  sub_26BC99588();
  v5 = OUTLINED_FUNCTION_56(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_index_31Tm()
{
  OUTLINED_FUNCTION_38();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BC99588();
    v5 = OUTLINED_FUNCTION_56(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26BC8E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26BC8E6BC()
{
  if (!qword_2804446B0)
  {
    v0 = sub_26BC99978();
    if (!v1)
    {
      atomic_store(v0, &qword_2804446B0);
    }
  }
}

uint64_t sub_26BC8E720(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_24(*(a1 + 8));
  }

  sub_26BC99588();
  v5 = OUTLINED_FUNCTION_56(*(a3 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_26BC8E7AC()
{
  OUTLINED_FUNCTION_38();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BC99588();
    v5 = OUTLINED_FUNCTION_56(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_26BC8E824(uint64_t a1)
{
  result = sub_26BC99588();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26BC8E8D4(uint64_t a1)
{
  sub_26BC8E9CC(319, &qword_2804446D8, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26BC8E9CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26BC8EA30()
{
  result = qword_280444708;
  if (!qword_280444708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280444708);
  }

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

uint64_t sub_26BC8EAE8(float a1)
{
  OUTLINED_FUNCTION_33();
  v2(0);
  OUTLINED_FUNCTION_3_0();
  v3 = OUTLINED_FUNCTION_53();
  v4(v3);
  return v1;
}

uint64_t sub_26BC8EB40()
{
  v1 = OUTLINED_FUNCTION_14();
  v2(v1);
  OUTLINED_FUNCTION_3_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26BC8EB94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_26BC99BD8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_26BC8EC20(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Point(0);
  v4 = *(v40 - 8);
  v5 = MEMORY[0x28223BE20](v40);
  v7 = (v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (v35 - v8);
  v10 = type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v17 = v35 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_20:
    v34 = 0;
    return v34 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v35[0] = v4;
  v19 = 0;
  v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v38 = v13;
  v39 = a2 + v20;
  v21 = *(v14 + 72);
  v36 = v18;
  v37 = v10;
  v35[1] = v21;
  v35[2] = a1 + v20;
  while (1)
  {
    result = sub_26BC8EAE8(v15);
    if (v19 == v18)
    {
      break;
    }

    sub_26BC8EAE8(v23);
    v25 = *v17;
    v26 = *v13;
    v27 = *(*v17 + 16);
    if (v27 != *(*v13 + 16))
    {
      goto LABEL_19;
    }

    if (v27 && v25 != v26)
    {
      v28 = (*(v35[0] + 80) + 32) & ~*(v35[0] + 80);
      v29 = v25 + v28;
      v30 = v26 + v28;
      v31 = *(v35[0] + 72);
      while (1)
      {
        sub_26BC8EAE8(v24);
        sub_26BC8EAE8(v32);
        if (*v9 != *v7 || v9[1] != v7[1])
        {
          break;
        }

        sub_26BC99588();
        sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v33 = sub_26BC99868();
        sub_26BC8EB40();
        sub_26BC8EB40();
        if ((v33 & 1) == 0)
        {
          goto LABEL_19;
        }

        v30 += v31;
        v29 += v31;
        if (!--v27)
        {
          goto LABEL_14;
        }
      }

      sub_26BC8EB40();
      sub_26BC8EB40();
LABEL_19:
      sub_26BC8EB40();
      sub_26BC8EB40();
      goto LABEL_20;
    }

LABEL_14:
    sub_26BC99588();
    sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v13 = v38;
    v34 = sub_26BC99868();
    sub_26BC8EB40();
    sub_26BC8EB40();
    if (v34)
    {
      ++v19;
      v18 = v36;
      if (v19 != v36)
      {
        continue;
      }
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BC8F094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = 0;
  while (1)
  {
    result = sub_26BC8EAE8(v8);
    if (v12 == v11)
    {
      break;
    }

    result = sub_26BC8EAE8(v14);
    v15 = *v10;
    v16 = *v7;
    v17 = *(*v10 + 16);
    if (v17 != *(*v7 + 16))
    {
LABEL_19:
      sub_26BC8EB40();
      sub_26BC8EB40();
      goto LABEL_20;
    }

    if (v17)
    {
      v18 = v15 == v16;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = (v15 + 32);
      v20 = (v16 + 32);
      while (v17)
      {
        if (*v19 != *v20)
        {
          goto LABEL_19;
        }

        ++v19;
        ++v20;
        if (!--v17)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    sub_26BC99588();
    sub_26BC8ADE4(&qword_280444570, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v21 = sub_26BC99868();
    sub_26BC8EB40();
    sub_26BC8EB40();
    if ((v21 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BC8F328(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26BC8F380(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        switch(v7)
        {
          case 1:
            if (v5 != 1)
            {
              return 0;
            }

            goto LABEL_10;
          case 2:
            if (v5 != 2)
            {
              return 0;
            }

            goto LABEL_10;
          case 3:
            if (v5 != 3)
            {
              return 0;
            }

            goto LABEL_10;
          case 4:
            if (v5 != 4)
            {
              return 0;
            }

            goto LABEL_10;
          default:
            if (v5)
            {
              return 0;
            }

            goto LABEL_10;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_10:
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for _ProtoStrokeAnimationRepresentation(0);
  *(a1 + 64) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{
  type metadata accessor for _ProtoStrokeAnimationRepresentation._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9()
{
  type metadata accessor for _ProtoStrokeAnimationRepresentation(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return sub_26BC99568();
}

uint64_t OUTLINED_FUNCTION_16()
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = v0;

  return _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_25()
{

  return sub_26BC99868();
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_39()
{
  result = *(v0 + v2);
  *(v1 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_48()
{
}

uint64_t OUTLINED_FUNCTION_55(uint64_t result, __int16 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 9) = HIBYTE(a2) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_62(uint64_t a1, uint64_t a2, ...)
{

  return sub_26BC99858();
}

uint64_t OUTLINED_FUNCTION_63()
{

  return type metadata accessor for _ProtoStrokeAnimationRepresentation(0);
}

id sub_26BC8FA1C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_26BC97CF4(a1, a2, v4);
  [v4 setTextAlignment_];
  v5 = [objc_opt_self() systemFontOfSize_];
  [v4 setFont_];

  return v4;
}

id StrokeData.init(characters:strokeAnimationRepresention:strokeNames:pronunciations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OBJC_IVAR___SAStrokeDataInternal_characters;
  *&v5[OBJC_IVAR___SAStrokeDataInternal_characters] = 0;
  v7 = OBJC_IVAR___SAStrokeDataInternal_strokeNames;
  *&v5[OBJC_IVAR___SAStrokeDataInternal_strokeNames] = 0;
  v8 = OBJC_IVAR___SAStrokeDataInternal_pronunciations;
  *&v5[OBJC_IVAR___SAStrokeDataInternal_pronunciations] = 0;
  *&v5[v6] = a1;
  v9 = &v5[OBJC_IVAR___SAStrokeDataInternal_strokeAnimationRepresention];
  *v9 = a2;
  *(v9 + 1) = a3;
  *&v5[v7] = a4;
  *&v5[v8] = a5;

  v11.receiver = v5;
  v11.super_class = type metadata accessor for StrokeData();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_26BC8FC88()
{
  strcpy(v4, "character is:");
  HIWORD(v4[1]) = -4864;
  if (*(v0 + OBJC_IVAR___SAStrokeDataInternal_characters))
  {

    MEMORY[0x26D6931D0](v1, MEMORY[0x277D837D0]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444748, &qword_26BC9B378);
  v2 = sub_26BC99898();
  MEMORY[0x26D693160](v2);

  return v4[0];
}

id StrokeData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StrokeData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StrokeData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BC8FE80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BC8FED4(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_26BC8FF38(uint64_t a1, int64_t a2)
{
  v5 = *(a1 + *(type metadata accessor for _ProtoStrokeAnimationRepresentation(0) + 20));
  v6 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__compoundAnimationEffects;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (*(v7 + 16) <= a2 || (v8 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__animationDelays, swift_beginAccess(), *(*(v5 + v8) + 16) <= a2))
  {
    v2 = -100.0;
    goto LABEL_9;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (*(v7 + 16) <= a2)
  {
LABEL_21:
    __break(1u);
    JUMPOUT(0x26BC900F4);
  }

  v9 = v7 + 16 * a2;
  v10 = *(v9 + 32);
  if (*(v9 + 40) == 1)
  {
    switch(v10)
    {
      case 2:
        OUTLINED_FUNCTION_1_2();
        goto LABEL_19;
      case 3:
        OUTLINED_FUNCTION_1_2();
        goto LABEL_19;
      case 4:
        OUTLINED_FUNCTION_1_2();
        goto LABEL_19;
      default:
        OUTLINED_FUNCTION_1_2();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    if (v10 == 4 || v10 == 3 || v10 == 2)
    {
LABEL_19:
      OUTLINED_FUNCTION_0_2(v12);
    }
  }

LABEL_9:
  sub_26BC90108(a1);
  return v2;
}

uint64_t sub_26BC90108(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoStrokeAnimationRepresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void sub_26BC90190()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];
}

double sub_26BC90204()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 200.0;
  if (!v1)
  {
    return 140.0;
  }

  return result;
}

uint64_t sub_26BC9027C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26BC99BB8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_26BC902A0()
{
  OUTLINED_FUNCTION_1_3();
  v2 = v1;
  *&v0[OBJC_IVAR____TtC15StrokeAnimation20StrokeAnimatingLayer_strokePathData] = v1;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for StrokeAnimatingLayer();

  v3 = objc_msgSendSuper2(&v9, sel_init);
  sub_26BC90B24(0x6E41656B6F727453, 0xEF6E6F6974616D69, v3);
  v4 = v3;
  OUTLINED_FUNCTION_2_1(v4, sel_setFrame_);
  [v4 setPath_];
  [v4 setStrokeColor_];
  [v4 setLineWidth_];
  [v4 setLineCap_];
  [v4 setLineJoin_];
  [v4 setFillColor_];
  result = [v4 setBackgroundColor_];
  v6 = *(v2 + 32);
  if (v6)
  {
    v7 = v6;
    v8 = sub_26BC90604(v7);

    [v4 setMask_];
    [v4 setStrokeEnd_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26BC904B4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15StrokeAnimation20StrokeAnimatingLayer_strokePathData];
  v3 = *(v2 + 80);
  if (v3)
  {
    v4 = sub_26BC9027C(*(v2 + 80));
    v5 = v4 - 2;
    if (v4 > 2)
    {

      v6 = 0;
      v7 = 1;
      goto LABEL_6;
    }

    v3 = 0;
  }

  v5 = 0;
  v7 = 0;
  v6 = 2;
LABEL_6:
  sub_26BC90AFC(v3, v5, v6);
  v8 = sub_26BC8351C();
  v9 = *(v2 + 40);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    if (v7)
    {
      v12 = sub_26BC9879C(v10, v11, v3, v3, v5, 0);
      sub_26BC90B10(v3, v5, 0);

      sub_26BC90B10(v3, v5, 0);
    }

    else
    {
      v12 = sub_26BC985F8(v10, v11, v3, v5, 2);
    }

    sub_26BC97DC8(v12, 0x656B6F7274535253, 0xE800000000000000, v1);
  }

  else
  {
    __break(1u);
  }
}

id sub_26BC90604(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v1 frame];
  [v3 setFrame_];

  [v3 setPath_];
  return v3;
}

void sub_26BC90760()
{
  OUTLINED_FUNCTION_1_3();
  v14 = v1;
  v3 = v2;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for StrokeContourLayer();
  v15 = objc_msgSendSuper2(&v16, sel_init);
  OUTLINED_FUNCTION_2_1(v15, sel_setFrame_);
  Mutable = CGPathCreateMutable();
  v5 = sub_26BC97660(v3);
  for (i = 0; v5 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D6933C0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
    if (!v8)
    {
      goto LABEL_16;
    }

    v18 = 0;
    v19 = 0;
    v17 = 0x3FF0000000000000;
    v20 = 0x3FF0000000000000;
    v21 = 0;
    v22 = 0;
    v9 = v8;
    sub_26BC999B8();
  }

  [v15 setPath_];
  if (v14)
  {
    v10 = v14;
  }

  else
  {
    v11 = [objc_opt_self() systemRedColor];
    v12 = [v11 colorWithAlphaComponent_];

    v10 = [v12 CGColor];
  }

  v13 = v14;
  [v15 setFillColor_];
}

void sub_26BC90A44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  sub_26BC99B08();
  v5 = swift_unknownObjectRelease();
  a4(v5);
  __break(1u);
}

id sub_26BC90AA0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26BC90AFC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return v3;
}

uint64_t sub_26BC90B10(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return v3;
}

void sub_26BC90B24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26BC99878();

  [a3 setName_];
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return sub_26BC99BA8();
}

id OUTLINED_FUNCTION_2_1(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t sub_26BC90BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_26BC99508();
  OUTLINED_FUNCTION_0_4();
  v29 = v7;
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444758, &qword_26BC9B440);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_26BC99528();
  OUTLINED_FUNCTION_0_4();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  [v4 setImage_];
  sub_26BC99518();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return sub_26BC9187C(v12, &qword_280444758, &qword_26BC9B440);
  }

  (*(v15 + 32))(v21, v12, v13);
  (*(v15 + 16))(v19, v21, v13);
  sub_26BC994F8();
  sub_26BC994E8();
  v23 = [objc_opt_self() sharedSession];
  v24 = sub_26BC994D8();
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  aBlock[4] = sub_26BC9150C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BC9158C;
  aBlock[3] = &block_descriptor_0;
  v26 = _Block_copy(aBlock);
  v27 = v4;

  v28 = [v23 dataTaskWithRequest:v24 completionHandler:v26];
  _Block_release(v26);

  [v28 resume];
  (*(v29 + 8))(v9, v30);
  return (*(v15 + 8))(v21, v13);
}

void sub_26BC90F6C(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = sub_26BC997F8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26BC99818();
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if (qword_2804443B0 != -1)
    {
      swift_once();
    }

    v18 = sub_26BC997C8();
    __swift_project_value_buffer(v18, qword_280444AF0);
    v19 = a4;
    v42 = sub_26BC997B8();
    v20 = sub_26BC999A8();

    if (!os_log_type_enabled(v42, v20))
    {
      goto LABEL_21;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = a4;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_26BC81000, v42, v20, "download Image failed:%@", v21, 0xCu);
    sub_26BC9187C(v22, &qword_280444770, &qword_26BC9B450);
    MEMORY[0x26D693B30](v22, -1, -1);
    goto LABEL_20;
  }

  v41 = v15;
  v42 = v11;
  if (a3)
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      v27 = a3;
      if ([v26 statusCode] - 300 >= 0xFFFFFFFFFFFFFF9CLL && a2 >> 60 != 15)
      {
        sub_26BC91730(0, &qword_280444760, 0x277D755B8);
        sub_26BC916D8(a1, a2);
        sub_26BC916D8(a1, a2);
        v29 = sub_26BC91514(a1, a2);
        if (v29)
        {
          v30 = v29;
          sub_26BC91730(0, &unk_2804443E0, 0x277D85C78);
          v40 = sub_26BC99A28();
          v31 = swift_allocObject();
          *(v31 + 16) = a5;
          *(v31 + 24) = v30;
          aBlock[4] = sub_26BC917B0;
          aBlock[5] = v31;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_26BC91B2C;
          aBlock[3] = &block_descriptor_6;
          v39 = _Block_copy(aBlock);
          v32 = a5;
          v33 = v30;

          sub_26BC99808();
          aBlock[0] = MEMORY[0x277D84F90];
          sub_26BC917C0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444768, &qword_26BC9B448);
          sub_26BC91818();
          sub_26BC99B18();
          v35 = v39;
          v34 = v40;
          MEMORY[0x26D6932C0](0, v17, v13, v39);

          _Block_release(v35);
          sub_26BC9166C(a1, a2);
          (v42[1].isa)(v13, v10);
          (*(v41 + 8))(v17, v14);
          return;
        }

        sub_26BC9166C(a1, a2);
      }
    }
  }

  if (qword_2804443B0 != -1)
  {
    swift_once();
  }

  v36 = sub_26BC997C8();
  __swift_project_value_buffer(v36, qword_280444AF0);
  v42 = sub_26BC997B8();
  v37 = sub_26BC999A8();
  if (os_log_type_enabled(v42, v37))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26BC81000, v42, v37, "image is nil or invalid image data.", v21, 2u);
LABEL_20:
    MEMORY[0x26D693B30](v21, -1, -1);
  }

LABEL_21:
  v38 = v42;
}

uint64_t sub_26BC914D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_26BC91514(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_26BC99548();
  v6 = [v4 initWithData_];

  sub_26BC91680(a1, a2);
  return v6;
}

uint64_t sub_26BC9158C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_26BC99558();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_26BC9166C(v6, v10);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BC9166C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26BC91680(result, a2);
  }

  return result;
}

uint64_t sub_26BC91680(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_26BC916D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_26BC91730(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26BC91770()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_26BC917C0()
{
  result = qword_280444830;
  if (!qword_280444830)
  {
    sub_26BC997F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280444830);
  }

  return result;
}

unint64_t sub_26BC91818()
{
  result = qword_280444840;
  if (!qword_280444840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280444768, &qword_26BC9B448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280444840);
  }

  return result;
}

uint64_t sub_26BC9187C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26BC918F8()
{
  v0 = sub_26BC997C8();
  __swift_allocate_value_buffer(v0, qword_280444AF0);
  v1 = __swift_project_value_buffer(v0, qword_280444AF0);
  if (qword_2804443C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280444B08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26BC919E0()
{
  v0 = sub_26BC997C8();
  __swift_allocate_value_buffer(v0, qword_280444B08);
  __swift_project_value_buffer(v0, qword_280444B08);
  if (qword_2804443B8 != -1)
  {
    swift_once();
  }

  v1 = qword_280444778;
  return sub_26BC997D8();
}

uint64_t sub_26BC91A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_26BC91AE8();
  result = sub_26BC99AF8();
  *a4 = result;
  return result;
}

unint64_t sub_26BC91AE8()
{
  result = qword_280444780;
  if (!qword_280444780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280444780);
  }

  return result;
}

uint64_t sub_26BC91B2C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *StrokeView.__allocating_init(with:frame:)()
{
  OUTLINED_FUNCTION_4_1();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_3_1();
  return StrokeView.init(with:frame:)();
}

char *StrokeView.init(with:frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_4_1();
  v37 = v2;
  swift_getObjectType();
  sub_26BC99A18();
  OUTLINED_FUNCTION_1_4();
  v35 = v4;
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_1();
  v34 = v5;
  sub_26BC999F8();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  v7 = OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_6_0();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers) = 0;
  v8 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v9 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageView;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v11 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData;
  v12 = objc_allocWithZone(type metadata accessor for StrokeData());
  *(v1 + v11) = OUTLINED_FUNCTION_8_0(&unk_287CA76B0);
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeContourLayer) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_colorForbackgroundView) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor) = 0;
  v13 = (v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_queue;
  sub_26BC983CC(0, &unk_2804443E0, 0x277D85C78);
  sub_26BC99808();
  v38 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_2();
  sub_26BC98218(v15, v16, MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804443F0, &qword_26BC9A6E0);
  sub_26BC9816C(&qword_280444820, &qword_2804443F0);
  sub_26BC99B18();
  (*(v35 + 104))(v34, *MEMORY[0x277D85260], v36);
  *(v1 + v14) = sub_26BC99A48();
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_timers) = MEMORY[0x277D84F90];
  v17 = *(v1 + v11);
  *(v1 + v11) = v37;
  v18 = v37;

  if (qword_2804443B0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_2804443B0);
  }

  v19 = sub_26BC997C8();
  __swift_project_value_buffer(v19, qword_280444AF0);
  v20 = v18;
  v21 = sub_26BC997B8();
  v22 = sub_26BC99998();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38 = v24;
    *v23 = 136315138;
    v25 = sub_26BC8FC88();
    v27 = sub_26BC976C8(v25, v26, &v38);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_26BC81000, v21, v22, "strokeData is:%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_14_0();
  }

  v28 = OUTLINED_FUNCTION_3_1();
  v31 = objc_msgSendSuper2(v29, v30, v28);
  sub_26BC920A4();
  sub_26BC921D8();
  sub_26BC93554();
  if (*&v31[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos])
  {

    sub_26BC936D4(v32);
  }

  sub_26BC93AE4();

  return v31;
}

void sub_26BC920A4()
{
  v1 = v0;
  sub_26BC9473C(1);
  sub_26BC983CC(0, &unk_2804449F0, 0x277D756B8);
  v2 = sub_26BC8FA1C(0, 0xE000000000000000);
  [v2 setFrame_];
  [v1 addSubview_];
  v3 = *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel];
  *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel] = v2;
  v8 = v2;

  v4 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView;
  v5 = *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView];
  v6 = sub_26BC90204();
  sub_26BC90204();
  [v5 setFrame_];

  [v1 addSubview_];
}

void sub_26BC921D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444520, &qword_26BC9A8B0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v163 = &v147 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v162 = &v147 - v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v147 - v5;
  v7 = type metadata accessor for _ProtoStrokeAnimationRepresentation.Color(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v147 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v147 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444410, &qword_26BC9A7C8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v147 - v17;
  v19 = type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints(0);
  v179 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_26BC995A8();
  MEMORY[0x28223BE20](v22 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804449D8, &qword_26BC9B4D0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v147 - v24;
  v26 = type metadata accessor for _ProtoStrokeAnimationRepresentation(0);
  v27 = MEMORY[0x28223BE20](v26);
  v28 = MEMORY[0x28223BE20](v27);
  v29 = MEMORY[0x28223BE20](v28);
  if (*(v177 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos))
  {
    return;
  }

  v175 = v18;
  v176 = v32;
  v178 = v29;
  v173 = v31;
  v174 = v15;
  v155 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos;
  v156 = v13;
  v180 = v21;
  v157 = v10;
  v158 = v6;
  v160 = v7;
  v161 = &v147 - v30;

  v33 = sub_26BC99538();
  if (v34 >> 60 == 15)
  {

    if (qword_2804443B0 != -1)
    {
LABEL_91:
      swift_once();
    }

    v35 = sub_26BC997C8();
    __swift_project_value_buffer(v35, qword_280444AF0);
    v180 = sub_26BC997B8();
    v36 = sub_26BC999A8();
    if (os_log_type_enabled(v180, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26BC81000, v180, v36, "invalid strokeData", v37, 2u);
      MEMORY[0x26D693B30](v37, -1, -1);
    }

    v38 = v180;

    return;
  }

  v39 = v34;
  v182 = 0;
  memset(v181, 0, sizeof(v181));
  v40 = v33;
  sub_26BC916D8(v33, v34);
  sub_26BC99598();
  v41 = sub_26BC98218(&qword_2804449E0, type metadata accessor for _ProtoStrokeAnimationRepresentation, &protocol conformance descriptor for _ProtoStrokeAnimationRepresentation);
  v153 = v40;
  v154 = v39;
  v42 = v178;
  sub_26BC99698();
  v172 = v41;
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v42);
  v43 = v161;
  sub_26BC9836C(v25, v161, type metadata accessor for _ProtoStrokeAnimationRepresentation);
  if (qword_2804443B0 != -1)
  {
    swift_once();
  }

  v44 = sub_26BC997C8();
  __swift_project_value_buffer(v44, qword_280444AF0);
  v45 = v176;
  sub_26BC98260(v43, v176, type metadata accessor for _ProtoStrokeAnimationRepresentation);
  v46 = sub_26BC997B8();
  v47 = sub_26BC99998();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v158;
  if (v48)
  {
    v50 = swift_slowAlloc();
    v170 = v50;
    v171 = swift_slowAlloc();
    *&v181[0] = v171;
    *v50 = 136315138;
    v51 = v178;
    v172 = sub_26BC996A8();
    v53 = v52;
    sub_26BC98314(v45, type metadata accessor for _ProtoStrokeAnimationRepresentation);
    v54 = sub_26BC976C8(v172, v53, v181);

    v55 = v170;
    *(v170 + 4) = v54;
    _os_log_impl(&dword_26BC81000, v46, v47, "strokeAnimation is:%s", v55, 0xCu);
    v56 = v171;
    __swift_destroy_boxed_opaque_existential_0(v171);
    MEMORY[0x26D693B30](v56, -1, -1);
    MEMORY[0x26D693B30](v55, -1, -1);
  }

  else
  {

    sub_26BC98314(v45, type metadata accessor for _ProtoStrokeAnimationRepresentation);
    v51 = v178;
  }

  v57 = *(v43 + *(v51 + 20));
  swift_beginAccess();
  v172 = v57;
  if (!*(*(v57 + 16) + 16))
  {
    __break(1u);
    goto LABEL_93;
  }

  v58 = sub_26BC99538();
  if (v59 >> 60 == 15)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v60 = v58;
  v61 = v59;
  sub_26BC983CC(0, &qword_2804449E8, 0x277CBEA90);
  sub_26BC916D8(v60, v61);
  v151 = v60;
  v62 = sub_26BC95278(v60, v61);
  v63 = sub_26BC848E8(v62);

  if (!v63)
  {
LABEL_94:
    __break(1u);
    return;
  }

  v64 = v63;

  v65 = sub_26BC84970(v64);
  v67 = v66;
  v68 = v65;
  v150 = v64;

  v69 = v172;
  swift_beginAccess();
  v70 = v69[3];
  v71 = v160;
  if (!*(v70 + 16))
  {

    v80 = sub_26BC997B8();
    v81 = sub_26BC99988();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = v43;
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_26BC81000, v80, v81, "no animation points, so just render contour path", v83, 2u);
      MEMORY[0x26D693B30](v83, -1, -1);

      sub_26BC9166C(v151, v61);
      sub_26BC9166C(v153, v154);
      v84 = v82;
    }

    else
    {
      sub_26BC9166C(v153, v154);
      sub_26BC9166C(v151, v61);

      v84 = v43;
    }

    goto LABEL_86;
  }

  v148 = v61;
  swift_beginAccess();
  v72 = v69[4];
  swift_beginAccess();
  v73 = v69[6];
  swift_beginAccess();
  v74 = v69[7];
  v75 = objc_opt_self();
  v149 = v67;

  v169 = v70;

  v176 = v72;

  v171 = v73;

  v178 = v74;

  v152 = v75;
  v76 = [v75 sharedPreferences];
  v77 = [v76 outputVoice];

  if (v77)
  {
    v78 = [v77 VSSpeechGender];

    v79 = 150;
    if (v78 == 1)
    {
      v79 = 100;
    }

    if (v78 == 2)
    {
      v79 = 200;
    }
  }

  else
  {
    v79 = 150;
  }

  v165 = v79;
  v85 = v175;
  v86 = v149;
  v170 = sub_26BC97664(v149);
  v87 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__strokeColor;
  swift_beginAccess();
  v164 = v87;
  swift_beginAccess();
  v88 = 0;
  v167 = v86 & 0xFFFFFFFFFFFFFF8;
  v168 = v86 & 0xC000000000000001;
  v166 = v86 + 32;
  v159 = v171 + 4;
  v89 = (v176 + 56);
  while (v170 != v88)
  {
    if (v168)
    {
      v90 = MEMORY[0x26D6933C0](v88, v149);
    }

    else
    {
      if (v88 >= *(v167 + 16))
      {
        goto LABEL_88;
      }

      v90 = *(v166 + 8 * v88);
    }

    if (v88 >= *(v169 + 16))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    sub_26BC98260(v169 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v88, v180, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints);
    v91 = *(v178 + 16);
    if (v91)
    {
      if (v88 >= v91)
      {
        goto LABEL_89;
      }

      v92 = type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
      sub_26BC98260(v178 + ((*(*(v92 - 8) + 80) + 32) & ~*(*(v92 - 8) + 80)) + *(*(v92 - 8) + 72) * v88, v85, type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes);
      v93 = v85;
      v94 = 0;
      v95 = v92;
    }

    else
    {
      v95 = type metadata accessor for _ProtoStrokeAnimationRepresentation.StrokeKeyTimes(0);
      v93 = v85;
      v94 = 1;
    }

    __swift_storeEnumTagSinglePayload(v93, v94, 1, v95);
    v96 = v180;
    sub_26BC82F2C(v180, v85, v68);
    sub_26BC982C0(v85, &qword_280444410);
    sub_26BC98314(v96, type metadata accessor for _ProtoStrokeAnimationRepresentation.AnimationPoints);
    *(v90 + 88) = v165;
    v97 = *(v176 + 16);
    if (v88 < v97)
    {
      v98 = *(v89 - 2);
      *(v90 + 64) = *(v89 - 3);
      *(v90 + 72) = v98;

      if (v88 < v97 - 1)
      {
        if (v88 + 1 >= *(v176 + 16))
        {
          goto LABEL_90;
        }

        v99 = *(v89 - 1) == 68 && *v89 == 0xE100000000000000;
        if (v99 || (sub_26BC99BD8() & 1) != 0)
        {
          v100 = 50;
        }

        else
        {
          v100 = 0;
        }

        v101 = [v152 sharedPreferences];
        v102 = [v101 outputVoice];

        if (v102)
        {
          v103 = [v102 VSSpeechGender];

          if (v103 != 1)
          {
            v71 = v160;
            if (v103 == 2)
            {
              v104 = 200;
            }

            else
            {
              v104 = 150;
            }

            v105 = v104 - v100;
            goto LABEL_56;
          }

          v105 = 100 - v100;
        }

        else
        {

          v105 = 150;
        }

        v71 = v160;
LABEL_56:
        *(v90 + 88) = v105;
        v43 = v161;
      }
    }

    if (v88 < v171[2])
    {
      v106 = *&v159[v88];
      if (v106 > 0.0)
      {
        v107 = [objc_opt_self() currentDevice];
        v108 = [v107 userInterfaceIdiom];

        v109 = v106 * 1.42857143;
        if (!v108)
        {
          v109 = v106;
        }

        *(v90 + 24) = v109;
      }
    }

    v110 = v172;
    v111 = *(v172 + 40);
    if (v111 > 0.0)
    {
      *(v90 + 96) = v111;
    }

    sub_26BC885AC(v110 + v164, v49);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v71);
    v113 = v174;
    if (EnumTagSinglePayload == 1)
    {
      *v174 = 0;
      v113[1] = 0xE000000000000000;
      v113[2] = 0;
      v113[3] = 0;
      *(v113 + 32) = 1;
      _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
      if (__swift_getEnumTagSinglePayload(v49, 1, v71) != 1)
      {
        sub_26BC982C0(v49, &qword_280444520);
      }
    }

    else
    {
      sub_26BC9836C(v49, v174, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
    }

    v114 = _ProtoStrokeAnimationRepresentation.Color.toUIColor()();
    sub_26BC98314(v113, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
    if (v114)
    {
      v115 = [v114 CGColor];

      v116 = *(v90 + 16);
      *(v90 + 16) = v115;
    }

    v117 = v173;
    sub_26BC98260(v43, v173, type metadata accessor for _ProtoStrokeAnimationRepresentation);
    v118 = sub_26BC8FF38(v117, v88);
    v119 = *(v90 + 104);
    v120 = *(v90 + 112);
    v121 = *(v90 + 120);
    *(v90 + 104) = v122;
    *(v90 + 112) = v118;
    *(v90 + 120) = v123;
    sub_26BC840BC(v119, v120, v121);

    v89 += 2;
    ++v88;
    v85 = v175;
  }

  v124 = v149;

  v125 = v177;
  *(v177 + v155) = v124;

  v126 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__contourColor;
  v127 = v172;
  swift_beginAccess();
  v128 = v162;
  sub_26BC885AC(v127 + v126, v162);
  if (__swift_getEnumTagSinglePayload(v128, 1, v71) == 1)
  {
    v129 = v156;
    *v156 = 0;
    v129[1] = 0xE000000000000000;
    v129[2] = 0;
    v129[3] = 0;
    *(v129 + 32) = 1;
    _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v130 = __swift_getEnumTagSinglePayload(v128, 1, v71);
    v131 = v157;
    v132 = v163;
    v134 = v150;
    v133 = v151;
    if (v130 != 1)
    {
      sub_26BC982C0(v128, &qword_280444520);
    }
  }

  else
  {
    v129 = v156;
    sub_26BC9836C(v128, v156, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
    v131 = v157;
    v132 = v163;
    v134 = v150;
    v133 = v151;
  }

  v135 = _ProtoStrokeAnimationRepresentation.Color.toUIColor()();
  sub_26BC98314(v129, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
  v136 = *(v125 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor);
  *(v125 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor) = v135;

  v137 = OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundColor;
  v138 = v172;
  swift_beginAccess();
  sub_26BC885AC(v138 + v137, v132);
  v139 = v160;
  if (__swift_getEnumTagSinglePayload(v132, 1, v160) == 1)
  {
    *v131 = 0;
    *(v131 + 8) = 0xE000000000000000;
    *(v131 + 16) = 0;
    *(v131 + 24) = 0;
    *(v131 + 32) = 1;
    _s15StrokeAnimation06_ProtoaB14RepresentationV0A8KeyTimesV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    if (__swift_getEnumTagSinglePayload(v132, 1, v139) != 1)
    {
      sub_26BC982C0(v132, &qword_280444520);
    }
  }

  else
  {
    sub_26BC9836C(v132, v131, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
  }

  v140 = _ProtoStrokeAnimationRepresentation.Color.toUIColor()();

  sub_26BC9166C(v133, v148);
  sub_26BC9166C(v153, v154);
  sub_26BC98314(v131, type metadata accessor for _ProtoStrokeAnimationRepresentation.Color);
  v141 = *(v125 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_colorForbackgroundView);
  *(v125 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_colorForbackgroundView) = v140;

  v142 = (v172 + OBJC_IVAR____TtCV15StrokeAnimation35_ProtoStrokeAnimationRepresentationP33_82C5B650B8A7FC58B8A66A8F009C914D13_StorageClass__backgroundURL);
  swift_beginAccess();
  v144 = *v142;
  v143 = v142[1];
  v145 = HIBYTE(v143) & 0xF;
  if ((v143 & 0x2000000000000000) == 0)
  {
    v145 = v144 & 0xFFFFFFFFFFFFLL;
  }

  if (v145)
  {

    sub_26BC98314(v161, type metadata accessor for _ProtoStrokeAnimationRepresentation);
    v146 = (v125 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl);
    *v146 = v144;
    v146[1] = v143;

    return;
  }

  v84 = v161;
LABEL_86:
  sub_26BC98314(v84, type metadata accessor for _ProtoStrokeAnimationRepresentation);
}

void sub_26BC93554()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData) + OBJC_IVAR___SAStrokeDataInternal_pronunciations);
  if (v1 && v1[2])
  {
    v2 = *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel);
    if (v2)
    {
      v4 = v1[4];
      v3 = v1[5];

      v5 = v2;
      sub_26BC97CF4(v4, v3, v5);
    }
  }

  else
  {
    sub_26BC94AD4();
    v6 = *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView);
    v7 = sub_26BC90204();
    sub_26BC90204();
    [v6 setFrame_];
  }

  v9 = *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_colorForbackgroundView);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer);
    if (v10)
    {
      v13 = v9;
      v11 = v10;
      v12 = [v13 CGColor];
      [v11 setFillColor_];
    }
  }
}

uint64_t sub_26BC936D4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView;
  v5 = sub_26BC97ECC([*(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView) layer]);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = sub_26BC97664(v5);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

LABEL_11:
      sub_26BC90204();
      sub_26BC90204();
      v11 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor;
      v12 = *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor);
      if (v12)
      {
        sub_26BC983CC(0, &qword_2804449A0, 0x277D75348);
        v13 = objc_opt_self();
        v7 = v12;
        v14 = [v13 clearColor];
        LOBYTE(v13) = sub_26BC99AE8();

        if (v13)
        {
          if (qword_2804443B0 == -1)
          {
            goto LABEL_14;
          }

          goto LABEL_34;
        }

        v19 = *(v2 + v11);
        if (v19)
        {
          v20 = [v19 CGColor];
        }
      }

      v21 = objc_allocWithZone(type metadata accessor for StrokeContourLayer());

      sub_26BC90760();
      v23 = v22;
      v24 = [*(v2 + v4) layer];
      [v24 addSublayer_];

      v7 = *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeContourLayer);
      *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeContourLayer) = v23;
      goto LABEL_20;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D6933C0](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v9 removeFromSuperlayer];
  }

  __break(1u);
LABEL_32:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_34:
    swift_once();
LABEL_14:
    v15 = sub_26BC997C8();
    __swift_project_value_buffer(v15, qword_280444AF0);
    v16 = sub_26BC997B8();
    v17 = sub_26BC99988();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26BC81000, v16, v17, "no contour color for stroke animation!", v18, 2u);
      MEMORY[0x26D693B30](v18, -1, -1);
    }

LABEL_20:
    v25 = sub_26BC90B8C();
    v26 = MEMORY[0x277D84F90];
    if (!v25)
    {
      break;
    }

    v7 = v25;
    v32 = MEMORY[0x277D84F90];
    sub_26BC99B78();
    if ((v7 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D6933C0](v27, a1);
        }

        else
        {
        }

        ++v27;
        v28 = objc_allocWithZone(type metadata accessor for StrokeAnimatingLayer());

        v29 = sub_26BC902A0();
        v30 = [*(v2 + v4) layer];
        [v30 addSublayer_];

        sub_26BC99B58();
        sub_26BC99B88();
        sub_26BC99B98();
        sub_26BC99B68();
      }

      while (v7 != v27);
      v26 = v32;
      break;
    }
  }

  *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers) = v26;
}

void sub_26BC93AE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers);
  if (v1)
  {
    v19 = 150;
    v20 = 0;
    v2 = sub_26BC97664(v1);
    if (v2)
    {
      v16 = v2 - 1;
      if (v2 >= 1)
      {
        queue = *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_queue);

        v3 = 0;
        v4 = 0;
        for (i = 0; ; ++i)
        {
          v6 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x26D6933C0](i, v1) : *(v1 + 8 * i + 32);
          v7 = v6;
          OUTLINED_FUNCTION_13_0();
          v8 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v9 = swift_allocObject();
          v9[2] = v8;
          v9[3] = &v20;
          v9[4] = &v19;
          v9[5] = v7;
          v9[6] = v1;

          v10 = v7;
          sub_26BC98124(v3, v4);
          v11 = swift_allocObject();
          *(v11 + 16) = sub_26BC98114;
          *(v11 + 24) = v9;
          aBlock[4] = sub_26BC98144;
          aBlock[5] = v11;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_26BC95DC8;
          aBlock[3] = &block_descriptor_15;
          v12 = _Block_copy(aBlock);

          dispatch_sync(queue, v12);
          _Block_release(v12);
          LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

          if (v12)
          {
            break;
          }

          v13 = sub_26BC8351C();

          v14 = v13 * 1000.0;
          if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_19;
          }

          if (v14 <= -9.22337204e18)
          {
            goto LABEL_20;
          }

          if (v14 >= 9.22337204e18)
          {
            goto LABEL_21;
          }

          if (__OFADD__(v20, v14))
          {
            goto LABEL_22;
          }

          v20 += v14;

          v15 = sub_26BC83588();

          if (__OFADD__(v19, v15))
          {
            goto LABEL_23;
          }

          v19 += v15;
          if (v16 == i)
          {

            return;
          }

          v3 = sub_26BC98114;
          v4 = v9;
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
      }

      __break(1u);
    }
  }
}

id StrokeView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_4_1();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_1();

  return [v2 v3];
}

id StrokeView.init(frame:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  swift_getObjectType();
  sub_26BC99A18();
  OUTLINED_FUNCTION_1_4();
  v23 = v4;
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_1();
  v22 = v5;
  sub_26BC999F8();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  v7 = OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_6_0();
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers) = 0;
  v8 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView;
  *(v2 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v9 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView;
  *(v2 + v9) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageView;
  *(v2 + v10) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v11 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData;
  v12 = objc_allocWithZone(type metadata accessor for StrokeData());
  *(v2 + v11) = OUTLINED_FUNCTION_8_0(&unk_287CA76E0);
  *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos) = 0;
  *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel) = 0;
  *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating) = 0;
  *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeContourLayer) = 0;
  *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer) = 0;
  *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_colorForbackgroundView) = 0;
  *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor) = 0;
  v13 = (v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_queue;
  sub_26BC983CC(0, &unk_2804443E0, 0x277D85C78);
  sub_26BC99808();
  OUTLINED_FUNCTION_2_2();
  sub_26BC98218(v15, v16, MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804443F0, &qword_26BC9A6E0);
  sub_26BC9816C(&qword_280444820, &qword_2804443F0);
  sub_26BC99B18();
  (*(v23 + 104))(v22, *MEMORY[0x277D85260], v24);
  *(v2 + v14) = sub_26BC99A48();
  *(v2 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_timers) = MEMORY[0x277D84F90];
  v17 = OUTLINED_FUNCTION_3_1();
  v20 = objc_msgSendSuper2(v18, v19, v17);
  sub_26BC920A4();
  sub_26BC9426C();

  return v20;
}

void sub_26BC9426C()
{
  v3[3] = swift_getObjectType();
  v3[0] = v0;
  objc_allocWithZone(MEMORY[0x277D75B80]);
  v1 = v0;
  v2 = sub_26BC974B0(v3, sel__didTapView_);
  [v1 addGestureRecognizer_];
}

id StrokeView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void StrokeView.init(coder:)()
{
  v1 = v0;
  sub_26BC99A18();
  OUTLINED_FUNCTION_1_4();
  v17 = v3;
  v18 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_1();
  v16 = v4;
  sub_26BC999F8();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_1();
  v6 = OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_6_0();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers) = 0;
  v7 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v8 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v9 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageView;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v10 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData;
  v11 = objc_allocWithZone(type metadata accessor for StrokeData());
  *(v1 + v10) = OUTLINED_FUNCTION_8_0(&unk_287CA7710);
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeContourLayer) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_colorForbackgroundView) = 0;
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_contourColor) = 0;
  v12 = (v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_queue;
  sub_26BC983CC(0, &unk_2804443E0, 0x277D85C78);
  sub_26BC99808();
  OUTLINED_FUNCTION_2_2();
  sub_26BC98218(v14, v15, MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804443F0, &qword_26BC9A6E0);
  sub_26BC9816C(&qword_280444820, &qword_2804443F0);
  sub_26BC99B18();
  (*(v17 + 104))(v16, *MEMORY[0x277D85260], v18);
  *(v1 + v13) = sub_26BC99A48();
  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_timers) = MEMORY[0x277D84F90];
  sub_26BC99BA8();
  __break(1u);
}

void sub_26BC9473C(char a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView;
  v6 = *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView];
  v7 = sub_26BC90204();
  sub_26BC90204();
  v9 = v8 + 40.0;
  if ((a1 & 1) == 0)
  {
    v9 = v8;
  }

  [v6 setFrame_];

  [*&v2[v5] bounds];
  v14 = [objc_opt_self() bezierPathWithRoundedRect:v10 cornerRadius:{v11, v12, v13, 5.0}];
  v15 = [v14 CGPath];

  MutableCopy = CGPathCreateMutableCopy(v15);
  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
  [*&v2[v5] bounds];
  MinX = CGRectGetMinX(v32);
  [*&v2[v5] bounds];
  [v16 moveToPoint_];
  [*&v2[v5] bounds];
  MaxX = CGRectGetMaxX(v34);
  [*&v2[v5] bounds];
  [v16 addLineToPoint_];
  if (MutableCopy)
  {
    v19 = MutableCopy;
    v20 = [v16 CGPath];
    sub_26BC999B8();

LABEL_6:
    v21 = MutableCopy;
    goto LABEL_7;
  }

  v21 = 0;
LABEL_7:
  [v4 setPath_];
  v22 = [objc_opt_self() tertiaryLabelColor];
  v23 = [v22 CGColor];

  [v4 setStrokeColor_];
  v24 = [v2 layer];
  v25 = [v24 backgroundColor];

  [v4 setFillColor_];
  v26 = [*&v2[v5] layer];
  [v26 addSublayer_];

  v27 = *&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer];
  *&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer] = v4;
  v28 = v4;

  v29 = 40.0;
  if ((a1 & 1) == 0)
  {
    v29 = 0.0;
  }

  sub_26BC94EE0(v29);
  [v2 addSubview_];
}

void sub_26BC94AD4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl + 8];
  if (!v2)
  {
    v14 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView;
    v15 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView];
    v16 = sub_26BC90204();
    sub_26BC90204();
    [v15 setFrame_];

    [*&v1[v14] bounds];
    v22 = [objc_opt_self() bezierPathWithRoundedRect:v18 cornerRadius:{v19, v20, v21, 5.0}];
    v23 = [v22 CGPath];

    MutableCopy = CGPathCreateMutableCopy(v23);
    v24 = sub_26BC97ECC([*&v1[v14] layer]);
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = v24;
    v26 = *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer];
    if (v26)
    {
      [v26 setPath_];
    }

    v27 = sub_26BC97664(v25);
    if (!v27)
    {
LABEL_21:

LABEL_24:
      sub_26BC94EE0(0.0);
      goto LABEL_25;
    }

    v28 = v27;
    v29 = 0;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x26D6933C0](v29, v25);
      }

      else
      {
        if (v29 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v30 = *(v25 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = sub_26BC97F44(v30);
      if (v34)
      {
        if (v33 == 0x645F656B6F727473 && v34 == 0xEA0000000000746FLL)
        {

LABEL_23:

          [v31 removeFromSuperlayer];

          goto LABEL_24;
        }

        v36 = sub_26BC99BD8();

        if (v36)
        {
          goto LABEL_23;
        }
      }

      ++v29;
      if (v32 == v28)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v3 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageUrl];
  swift_getObjectType();
  v4 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView];

  [v4 removeFromSuperview];
  v5 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageView;
  v6 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageView];
  sub_26BC983CC(0, &qword_280444760, 0x277D755B8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = v6;
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_26BC951F4(26466, 0xE200000000000000, v9, 0);
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = v10;
  sub_26BC90BF0(v3, v2, v10);

  [*&v1[v5] setContentMode_];
  [v1 insertSubview:*&v1[v5] belowSubview:*&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView]];
  MutableCopy = *&v1[v5];
  v12 = sub_26BC90204() + 60.0;
  sub_26BC90204();
  [(CGPath *)MutableCopy setFrame:0.0, 10.0, v12, v13 + 60.0];
LABEL_25:
}

void sub_26BC94EE0(double a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  Mutable = CGPathCreateMutable();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804449D0, &qword_26BC9B4C8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26BC9A870;
  v7 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView;
  [*(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView) bounds];
  MinX = CGRectGetMinX(v22);
  [*(v1 + v7) bounds];
  MidY = CGRectGetMidY(v23);
  *(v6 + 32) = MinX;
  *(v6 + 40) = a1 * 0.5 + MidY;
  [*(v1 + v7) bounds];
  MaxX = CGRectGetMaxX(v24);
  [*(v1 + v7) bounds];
  v11 = CGRectGetMidY(v25);
  *(v6 + 48) = MaxX;
  *(v6 + 56) = a1 * 0.5 + v11;
  sub_26BC999E8();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26BC9A870;
  [*(v1 + v7) bounds];
  MidX = CGRectGetMidX(v26);
  [*(v1 + v7) bounds];
  MinY = CGRectGetMinY(v27);
  *(v12 + 32) = MidX;
  *(v12 + 40) = MinY + a1;
  [*(v1 + v7) bounds];
  v15 = CGRectGetMidX(v28);
  [*(v1 + v7) bounds];
  MaxY = CGRectGetMaxY(v29);
  *(v12 + 48) = v15;
  *(v12 + 56) = MaxY;
  sub_26BC999E8();

  [v4 setPath_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26BC9B470;
  sub_26BC983CC(0, &unk_280444850, 0x277CCABB0);
  *(v17 + 32) = sub_26BC99AD8();
  *(v17 + 40) = sub_26BC99AD8();
  sub_26BC97E40(v17, v4, &selRef_setLineDashPattern_);
  v18 = [objc_opt_self() tertiaryLabelColor];
  v19 = [v18 CGColor];

  [v4 setStrokeColor_];
  sub_26BC90B24(0x645F656B6F727473, 0xEA0000000000746FLL, v4);
  v20 = [*(v2 + v7) layer];
  [v20 addSublayer_];
}

id sub_26BC951F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_26BC99878();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

id sub_26BC95278(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_26BC99548();
  v6 = [v4 initWithData_];

  sub_26BC91680(a1, a2);
  return v6;
}

void sub_26BC952F0(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), void *a4, uint64_t a5)
{
  v60 = a5;
  v58 = a4;
  v66 = a2;
  v67 = a3;
  v6 = sub_26BC997F8();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_26BC99818();
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_26BC997E8();
  v55 = *(v56 - 8);
  v9 = MEMORY[0x28223BE20](v56);
  v54 = (v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v51 = (v49 - v11);
  v53 = sub_26BC99838();
  v52 = *(v53 - 8);
  v12 = MEMORY[0x28223BE20](v53);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = v49 - v15;
  v16 = sub_26BC99A58();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v65 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = MEMORY[0x277D84F90];
  if (Strong)
  {
    v22 = Strong;
    v23 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_timers;
    swift_beginAccess();
    *&v22[v23] = v21;
  }

  sub_26BC983CC(0, &qword_2804449A8, 0x277D85CA0);
  sub_26BC983CC(0, &unk_2804443E0, 0x277D85C78);
  v24 = sub_26BC99A28();
  aBlock[0] = v21;
  sub_26BC98218(&qword_2804449B0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804449B8, &qword_26BC9B4C0);
  sub_26BC9816C(&unk_2804449C0, &qword_2804449B8);
  sub_26BC99B18();
  v25 = sub_26BC99A68();

  (*(v17 + 8))(v19, v16);
  ObjectType = swift_getObjectType();
  v27 = v14;
  sub_26BC99828();
  if (__OFADD__(*v66, *v67))
  {
    __break(1u);
  }

  else
  {
    v28 = v51;
    *v51 = *v66 + *v67;
    v29 = v55;
    v30 = v56;
    (*(v55 + 104))(v28, *MEMORY[0x277D85178], v56);
    v31 = v50;
    MEMORY[0x26D6930D0](v27, v28);
    v32 = *(v29 + 8);
    v32(v28, v30);
    v67 = *(v52 + 8);
    v33 = v27;
    v34 = v53;
    v67(v33, v53);
    sub_26BC95AA0(v28);
    v35 = ObjectType;
    v36 = v54;
    v37 = v35;
    v49[1] = v35;
    sub_26BC95B14(v54);
    MEMORY[0x26D693350](v31, v28, v36, v37);
    v32(v36, v30);
    v32(v28, v30);
    v67(v31, v34);
    v38 = swift_allocObject();
    v39 = v58;
    v38[2] = v58;
    v38[3] = v25;
    v40 = v65;
    v38[4] = v60;
    v38[5] = v40;
    aBlock[4] = sub_26BC9820C;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BC91B2C;
    aBlock[3] = &block_descriptor_21;
    v41 = _Block_copy(aBlock);
    v42 = v39;
    swift_unknownObjectRetain();

    v43 = v57;
    sub_26BC99808();
    v44 = v61;
    sub_26BC95CF0();
    sub_26BC99A78();
    _Block_release(v41);
    (*(v63 + 8))(v44, v64);
    (*(v59 + 8))(v43, v62);

    sub_26BC99A98();
    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45)
    {
      v46 = v45;
      v47 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_timers;
      v48 = swift_beginAccess();
      MEMORY[0x26D6931A0](v48);
      sub_26BC9768C(*((*(v46 + v47) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_26BC99968();
      swift_endAccess();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_26BC95AA0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_26BC997E8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_26BC95B14@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_26BC997E8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_26BC95B8C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_26BC904B4();
  swift_getObjectType();
  sub_26BC99A88();
  v6 = sub_26BC95C5C(a3);
  if (v6)
  {
    v7 = v6;
    type metadata accessor for StrokeAnimatingLayer();
    v8 = a1;
    v9 = sub_26BC99AE8();

    if (v9)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        Strong[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating] = 0;
      }
    }
  }
}

char *sub_26BC95C5C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_26BC9763C((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x26D6933C0](v3, a1);
  }

  result = sub_26BC99BB8();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_26BC95CF0()
{
  sub_26BC997F8();
  sub_26BC98218(&qword_280444830, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444768, &qword_26BC9B448);
  sub_26BC9816C(&qword_280444840, &qword_280444768);
  return sub_26BC99B18();
}

void sub_26BC95DF0(void *a1)
{
  [a1 locationInView_];
  v3 = v2;
  v5 = v4;
  [*(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView) frame];
  v19.x = v3;
  v19.y = v5;
  if (CGRectContainsPoint(v20, v19) && (*(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating) & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers);
    if (v6)
    {
      v7 = sub_26BC97664(*(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers));
      v8 = v6 & 0xC000000000000001;

      v9 = 0;
      do
      {
        if (v7 == v9)
        {
          for (i = 0; v7 != i; ++i)
          {
            if (v8)
            {
              v15 = MEMORY[0x26D6933C0](i, v6);
            }

            else
            {
              if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_31;
              }

              v15 = *(v6 + 8 * i + 32);
            }

            v16 = v15;
            if (__OFADD__(i, 1))
            {
              goto LABEL_30;
            }

            [v15 removeAllAnimations];
          }

          goto LABEL_25;
        }

        if (v8)
        {
          v10 = MEMORY[0x26D6933C0](v9, v6);
        }

        else
        {
          if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v10 = *(v6 + 8 * v9 + 32);
        }

        v11 = v10;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }

        v12 = sub_26BC99878();
        v13 = [v11 animationForKey_];

        ++v9;
      }

      while (!v13);

      v17 = *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos);
      if (!v17)
      {
        goto LABEL_32;
      }

      sub_26BC936D4(v17);
LABEL_25:

      StrokeView.startAnimationRepeating(_:)(0);
    }
  }
}

Swift::Void __swiftcall StrokeView.startAnimationRepeating(_:)(Swift::Bool a1)
{
  v2 = v1;
  v3 = sub_26BC997F8();
  OUTLINED_FUNCTION_1_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  v50 = v7;
  v8 = OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_1_4();
  v49 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v13 = v12 - v11;
  v14 = sub_26BC997E8();
  OUTLINED_FUNCTION_1_4();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v20 = (v19 - v18);
  sub_26BC99838();
  OUTLINED_FUNCTION_1_4();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v28 = &v43 - v27;
  if ((v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating] & 1) == 0)
  {
    v48 = v8;
    v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating] = 1;
    v29 = *(*&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData] + OBJC_IVAR___SAStrokeDataInternal_strokeNames);
    if (v29)
    {
      v44 = v26;
      v45 = v25;
      v46 = v5;
      v47 = v3;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v31 = Strong;
        v32 = [Strong respondsToSelector_];

        if (v32)
        {
          [v31 animationDidStart];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v33 = *(v29 + 16);

      v34 = 3090;
      if (v33 > 0x14)
      {
        v34 = 3400;
      }

      if (v33 >= 0xA)
      {
        v35 = v34;
      }

      else
      {
        v35 = 2450;
      }

      sub_26BC983CC(0, &unk_2804443E0, 0x277D85C78);
      v43 = sub_26BC99A28();
      sub_26BC99828();
      *v20 = v35;
      (*(v16 + 104))(v20, *MEMORY[0x277D85178], v14);
      MEMORY[0x26D6930D0](v24, v20);
      (*(v16 + 8))(v20, v14);
      v36 = v45;
      v44 = *(v44 + 8);
      (v44)(v24, v45);
      OUTLINED_FUNCTION_13_0();
      v37 = swift_allocObject();
      *(v37 + 16) = v2;
      aBlock[4] = sub_26BC9780C;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26BC91B2C;
      aBlock[3] = &block_descriptor_1;
      v38 = _Block_copy(aBlock);
      v39 = v2;

      sub_26BC99808();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_26BC98218(&qword_280444830, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444768, &qword_26BC9B448);
      sub_26BC9816C(&qword_280444840, &qword_280444768);
      v40 = v50;
      v41 = v47;
      sub_26BC99B18();
      v42 = v43;
      MEMORY[0x26D693290](v28, v13, v40, v38);
      _Block_release(v38);

      (*(v46 + 8))(v40, v41);
      (*(v49 + 8))(v13, v48);
      (v44)(v28, v36);
    }

    else
    {

      sub_26BC93AE4();
    }
  }
}

Swift::Void __swiftcall StrokeView.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView];
  [v0 center];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();

  v2 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundImageView];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();

  v3 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel];
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
  }

  v5 = *&v0[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationView];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_10_0();

  sub_26BC9426C();
}

CGSize __swiftcall StrokeView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  sub_26BC90204();
  v4 = v3 + 40.0 + 10.0;
  v5 = *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_pronunciationLabel);
  if (v5)
  {
    v6 = v5;
    [v6 bounds];
    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 0.0;
    v12.size.height = 0.0;
    v7 = CGRectEqualToRect(v11, v12);

    if (!v7)
    {
      v4 = v4 + 40.0;
    }
  }

  v8 = width;
  v9 = v4;
  result.height = v9;
  result.width = v8;
  return result;
}

Swift::Void __swiftcall StrokeView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v43.receiver = v1;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_traitCollectionDidChange_, isa);
  v4 = [v1 traitCollection];
  LODWORD(isa) = [v4 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (isa)
  {
    v5 = *&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers];
    if (v5)
    {
      v6 = sub_26BC97664(*&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationLayers]);
      if (v6)
      {
        v7 = v6;
        v42 = v2;
        if (v6 < 1)
        {
          goto LABEL_37;
        }

        sub_26BC983CC(0, &qword_280444848, 0x277CD9EC8);
        sub_26BC983CC(0, &unk_280444850, 0x277CCABB0);

        v8 = objc_opt_self();
        v9 = 0;
        v10 = *MEMORY[0x277CDA238];
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x26D6933C0](v9, v5);
          }

          else
          {
            v11 = *(v5 + 8 * v9 + 32);
          }

          v12 = v11;
          ++v9;
          v13 = sub_26BC97440(0x6F43656B6F727473, 0xEB00000000726F6CLL);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_26BC9A6C0;
          *(v14 + 32) = sub_26BC99AD8();
          sub_26BC97E40(v14, v13, &selRef_setKeyTimes_);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444860, &qword_26BC9B480);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_26BC9A880;
          v16 = [v8 labelColor];
          v17 = [v16 CGColor];

          type metadata accessor for CGColor(0);
          *(v15 + 56) = v18;
          *(v15 + 32) = v17;
          sub_26BC97D4C(v15, v13);
          v19 = v13;
          [v19 setFillMode_];
          [v19 setRemovedOnCompletion_];

          sub_26BC97DC8(v19, 0x656B6F7274535253, 0xED0000726F6C6F43, v12);
        }

        while (v7 != v9);

        v2 = v42;
      }

      v20 = *&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundLayer];
      if (v20)
      {
        v21 = objc_opt_self();
        v22 = v20;
        v23 = [v21 tertiaryLabelColor];
        v24 = [v23 CGColor];

        [v22 setStrokeColor_];
      }

      v25 = sub_26BC97ECC([*&v2[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_backgroundView] layer]);
      if (v25)
      {
        v26 = v25;
        v27 = sub_26BC97664(v25);
        if (!v27)
        {
LABEL_32:

          return;
        }

        v28 = v27;
        v29 = 0;
        while (1)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x26D6933C0](v29, v26);
          }

          else
          {
            if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v30 = *(v26 + 8 * v29 + 32);
          }

          v31 = v30;
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            return;
          }

          v33 = sub_26BC97F44(v30);
          if (v34)
          {
            if (v33 == 0x645F656B6F727473 && v34 == 0xEA0000000000746FLL)
            {
            }

            else
            {
              v36 = sub_26BC99BD8();

              if ((v36 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            objc_opt_self();
            v37 = swift_dynamicCastObjCClass();
            if (!v37)
            {

              return;
            }

            v38 = v37;
            v39 = objc_opt_self();
            v40 = v31;
            v41 = [v39 tertiaryLabelColor];
            v31 = [v41 CGColor];

            [v38 setStrokeColor_];
          }

LABEL_31:

          ++v29;
          if (v32 == v28)
          {
            goto LABEL_32;
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall StrokeView.updateStrokeAnimation(with:)(Swift::String with)
{
  sub_26BC921D8();
  if (*(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos))
  {

    sub_26BC936D4(v2);

    sub_26BC93AE4();
  }
}

id StrokeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall StrokeView.update(with:)(SAStrokeData with)
{
  v2 = [(objc_class *)with.super.isa underlyingObject];
  v3 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData;
  v4 = *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData];
  *&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokeData] = v2;

  v5 = (*&v1[v3] + OBJC_IVAR___SAStrokeDataInternal_strokeAnimationRepresention);
  v7 = *v5;
  v6 = v5[1];
  v8 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    sub_26BC921D8();
    sub_26BC93554();
    if (*&v1[OBJC_IVAR____TtC15StrokeAnimation10StrokeView_strokePathInfos])
    {

      sub_26BC936D4(v10);
    }

    [v1 setNeedsLayout];

    StrokeView.startAnimationRepeating(_:)(0);
  }

  else
  {
    if (qword_2804443B0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_2804443B0);
    }

    v11 = sub_26BC997C8();
    __swift_project_value_buffer(v11, qword_280444AF0);
    oslog = sub_26BC997B8();
    v12 = sub_26BC999A8();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26BC81000, oslog, v12, "strokeAnimationRepresention is empty,so can't render animation!", v13, 2u);
      OUTLINED_FUNCTION_14_0();
    }
  }
}

uint64_t StrokeView.interactionDelegate.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*StrokeView.interactionDelegate.modify(uint64_t *a1))()
{
  v2 = OBJC_IVAR____TtC15StrokeAnimation10StrokeView_animationDelegate;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_26BC97250;
}

uint64_t sub_26BC97250(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall StrokeView.endAnimation()()
{
  v1 = v0;
  if (qword_2804443B0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_2804443B0);
  }

  v2 = sub_26BC997C8();
  __swift_project_value_buffer(v2, qword_280444AF0);
  v3 = sub_26BC997B8();
  v4 = sub_26BC99988();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26BC81000, v3, v4, "stop stroke animation and tell the delegate to cancel tts readout.", v5, 2u);
    OUTLINED_FUNCTION_14_0();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v7 animationDidEnd];
    }

    swift_unknownObjectRelease();
  }

  *(v1 + OBJC_IVAR____TtC15StrokeAnimation10StrokeView_isAnimating) = 0;
}

id sub_26BC97440(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_26BC99878();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

id sub_26BC974B0(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v7 = *(v4 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_26BC99BC8();
    (*(v7 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_26BC975F4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_26BC9763C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26BC97664(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26BC99BB8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_26BC9768C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_26BC99958();
  }

  return result;
}

_BYTE **sub_26BC976B8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_26BC976C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26BC97848(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26BC98038(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26BC977D8()
{
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_26BC97848(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26BC97948(a5, a6);
    *a1 = v9;
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
    result = sub_26BC99B48();
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

uint64_t sub_26BC97948(uint64_t a1, unint64_t a2)
{
  v3 = sub_26BC97994(a1, a2);
  sub_26BC97AAC(&unk_287CA7688);
  return v3;
}

uint64_t sub_26BC97994(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26BC998E8())
  {
    result = sub_26BC97B90(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26BC99B28();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26BC99B48();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26BC97AAC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_26BC97C00(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26BC97B90(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444998, &qword_26BC9B4B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26BC97C00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280444998, &qword_26BC9B4B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_26BC97CF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26BC99878();
  [a3 setText_];
}

void sub_26BC97D4C(uint64_t a1, void *a2)
{
  v3 = sub_26BC99928();

  [a2 setValues_];
}

void sub_26BC97DC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_12_0(a1, a2);
  v6 = sub_26BC99878();

  [a4 addAnimation:a1 forKey:v6];
}

void sub_26BC97E40(uint64_t a1, void *a2, SEL *a3)
{
  sub_26BC983CC(0, &unk_280444850, 0x277CCABB0);
  v5 = sub_26BC99928();

  [a2 *a3];
}

uint64_t sub_26BC97ECC(void *a1)
{
  v2 = [a1 sublayers];

  if (!v2)
  {
    return 0;
  }

  sub_26BC983CC(0, &qword_280444990, 0x277CD9ED0);
  v3 = sub_26BC99938();

  return v3;
}

uint64_t sub_26BC97F44(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26BC99888();

  return v3;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26BC98038(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26BC98098()
{
  MEMORY[0x26D693B80](v0 + 16);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26BC980CC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26BC98124(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26BC9816C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_12_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BC981BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BC98218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BC98260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26BC982C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_26BC98314(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26BC9836C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_26BC983CC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_8_0(uint64_t a1)
{

  return StrokeData.init(characters:strokeAnimationRepresention:strokeNames:pronunciations:)(a1, 0, 0xE000000000000000, 0, 0);
}

id OUTLINED_FUNCTION_9_0()
{

  return [v0 (v1 + 1925)];
}

id OUTLINED_FUNCTION_10_0()
{

  return [v0 (v1 + 2424)];
}

id OUTLINED_FUNCTION_11_0()
{

  return [v0 (v1 + 1925)];
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x26D693B30);
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return sub_26BC99818();
}

double sub_26BC98580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = sub_26BC998B8();
    if ((v3 - 1) >= 5)
    {
      return 0.9;
    }

    else
    {
      return dbl_26BC9B538[v3 - 1];
    }
  }

  else
  {
    result = a3 * 0.06;
    if (result <= 0.55)
    {
      result = 0.55;
    }

    if (result > 1.1)
    {
      return 1.1;
    }
  }

  return result;
}

id sub_26BC985F8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  sub_26BC993E4(0, &qword_280444848, 0x277CD9EC8);
  v9 = OUTLINED_FUNCTION_2_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444860, &qword_26BC9B480);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D83B88];
  *(v10 + 16) = xmmword_26BC9A870;
  *(v10 + 32) = 0;
  *(v10 + 88) = v11;
  *(v10 + 56) = v11;
  *(v10 + 64) = 1;
  sub_26BC97D4C(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26BC9B470;
  sub_26BC993E4(0, &unk_280444850, 0x277CCABB0);
  *(v12 + 32) = sub_26BC99AD8();
  *(v12 + 40) = sub_26BC99AD8();
  sub_26BC97DBC(v12, v9);
  v13 = v9;
  [v13 setDuration_];
  [v13 setFillMode_];
  [v13 setRemovedOnCompletion_];

  v14 = sub_26BC988A4(a3, a4, v5);
  sub_26BC992E4(v14, v13);
  [v13 setCalculationMode_];
  return v13;
}

id sub_26BC9879C(double a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  sub_26BC993E4(0, &qword_280444848, 0x277CD9EC8);
  v11 = OUTLINED_FUNCTION_2_3();
  v12 = sub_26BC98D20(a3);
  sub_26BC97D4C(v12, v11);
  sub_26BC99368(a3, v11);
  v13 = v11;
  [v13 setDuration_];
  [v13 setFillMode_];
  [v13 setRemovedOnCompletion_];

  v14 = sub_26BC988A4(a4, a5, v6);
  sub_26BC992E4(v14, v13);
  [v13 setCalculationMode_];
  return v13;
}

uint64_t sub_26BC988A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = *(a1 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9A6C0;
      if (v4 == 4)
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        v9 = *(a1 + 56);
        v10 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
        *&v11 = v6;
        *&v12 = v7;
        *&v13 = v8;
        *&v14 = v9;
        v15 = [v10 initWithControlPoints__:v11 :{v12, v13, v14}];
LABEL_27:
        *(v5 + 32) = v15;
        return v5;
      }

      v21 = [objc_opt_self() functionWithName_];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9A6C0;
      v21 = [objc_opt_self() functionWithName_];
    }

LABEL_26:
    v15 = v21;
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444420, &qword_26BC9A7D8);
  switch(a2)
  {
    case 2:
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9B470;
      if (qword_2804443D8 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_2804443D8);
      }

      v17 = qword_280444B30;
      *(v5 + 32) = qword_280444B30;
      v18 = qword_2804443D0;
      v19 = v17;
      if (v18 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_2804443D0);
      }

      v20 = qword_280444B28;
      *(v5 + 40) = qword_280444B28;
      break;
    case 3:
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9B510;
      if (qword_2804443D8 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_29;
    case 4:
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9B510;
      if (qword_2804443D8 == -1)
      {
        goto LABEL_21;
      }

LABEL_29:
      OUTLINED_FUNCTION_0_6(&qword_2804443D8);
LABEL_21:
      v26 = qword_280444B30;
      *(v5 + 32) = qword_280444B30;
      v27 = *MEMORY[0x277CDA7C8];
      v28 = objc_opt_self();
      v29 = v26;
      *(v5 + 40) = [v28 functionWithName_];
      if (qword_2804443D0 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_2804443D0);
      }

      v20 = qword_280444B28;
      *(v5 + 48) = qword_280444B28;
      break;
    case 5:
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9B500;
      if (qword_2804443D8 != -1)
      {
        OUTLINED_FUNCTION_0_6(&qword_2804443D8);
      }

      v22 = qword_280444B30;
      *(v5 + 32) = qword_280444B30;
      v23 = *MEMORY[0x277CDA7C8];
      v24 = objc_opt_self();
      v25 = v22;
      *(v5 + 40) = [v24 functionWithName_];
      *(v5 + 48) = v25;
      if (qword_2804443D0 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_2804443D0);
      }

      v20 = qword_280444B28;
      *(v5 + 56) = qword_280444B28;
      break;
    default:
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_26BC9A6C0;
      v21 = [objc_opt_self() functionWithName_];
      goto LABEL_26;
  }

  v30 = v20;
  return v5;
}

char *sub_26BC98D20(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_26BC99BB8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_26BC991B8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D6933C0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_26BC993E4(0, &unk_280444850, 0x277CCABB0);
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_26BC991B8((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_26BC99424(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BC98EB0(char a1)
{
  result = 68;
  switch(a1)
  {
    case 1:
      result = 72;
      break;
    case 2:
      result = 83;
      break;
    case 3:
      result = 84;
      break;
    case 4:
      result = 80;
      break;
    case 5:
      result = 78;
      break;
    case 6:
      result = 23112;
      break;
    case 7:
      result = 18248;
      break;
    case 8:
      result = 20552;
      break;
    case 9:
      result = 4676168;
      break;
    case 10:
      result = 5921352;
      break;
    case 11:
      result = 5724744;
      break;
    case 12:
      result = 5528136;
      break;
    case 13:
      result = 4675656;
      break;
    case 14:
      result = 1196907080;
      break;
    case 15:
      result = 1197103688;
      break;
    case 16:
      result = 1348098632;
      break;
    case 17:
      result = 1515870792;
      break;
    case 18:
      result = 1196904520;
      break;
    case 19:
      result = 17488;
      break;
    case 20:
      result = 23120;
      break;
    case 21:
      result = 18256;
      break;
    case 22:
      result = 18259;
      break;
    case 23:
      result = 20563;
      break;
    case 24:
      result = 21587;
      break;
    case 25:
      result = 22355;
      break;
    case 26:
      result = 5921363;
      break;
    case 27:
      result = 4675411;
      break;
    case 28:
      result = 5266003;
      break;
    case 29:
      result = 1197103699;
      break;
    case 30:
      result = 18263;
      break;
    case 31:
      result = 18264;
      break;
    case 32:
      result = 4681559;
      break;
    default:
      return result;
  }

  return result;
}

id sub_26BC99118()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v1) = 1055957975;
  LODWORD(v2) = 1061075026;
  LODWORD(v3) = 1060571709;
  result = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  qword_280444B28 = result;
  return result;
}

id sub_26BC99168()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v1) = 1053273620;
  LODWORD(v2) = 1058222899;
  LODWORD(v3) = 1058055127;
  LODWORD(v4) = 1.0;
  result = [v0 initWithControlPoints__:v1 :{v2, v3, v4}];
  qword_280444B30 = result;
  return result;
}

char *sub_26BC991B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26BC991D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BC991D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280444860, &qword_26BC9B480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26BC992E4(uint64_t a1, void *a2)
{
  sub_26BC993E4(0, &qword_280444A00, 0x277CD9EF8);
  v3 = sub_26BC99928();

  [a2 setTimingFunctions_];
}

void sub_26BC99368(uint64_t a1, void *a2)
{
  sub_26BC993E4(0, &unk_280444850, 0x277CCABB0);
  v3 = sub_26BC99928();
  [a2 setKeyTimes_];
}

uint64_t sub_26BC993E4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_26BC99424(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_2_3()
{

  return sub_26BC97440(0x6E45656B6F727473, 0xE900000000000064);
}