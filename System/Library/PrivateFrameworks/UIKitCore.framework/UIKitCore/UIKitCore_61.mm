uint64_t sub_1890E7860@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_18A4A2B08();
  v6 = [a2 dataSourceIndexPathForPresentationIndexPath_];

  if (v6)
  {
    sub_18A4A2B18();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_18A4A2B48();
  v9 = *(*(v8 - 8) + 56);

  return v9(a3, v7, 1, v8);
}

uint64_t sub_1890E7928()
{
  sub_1890C3D10(v0 + 16);
  sub_188A3F5FC(v0 + 96, &unk_1EA93CA68, &unk_18A6662F0);

  return swift_deallocClassInstance();
}

uint64_t sub_1890E799C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1890E79E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1890E7A48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18A4A2B48();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1890E7A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CA68, &unk_18A6662F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890E7B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CA68, &unk_18A6662F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1890E7BAC()
{
  result = qword_1EA92F000[0];
  if (!qword_1EA92F000[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA937EF8, &qword_18A666300);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA92F000);
  }

  return result;
}

unint64_t sub_1890E7C24()
{
  result = qword_1EA93CA78;
  if (!qword_1EA93CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CA78);
  }

  return result;
}

id static UIVisualEffect.intelligenceLatency(mode:)(uint64_t a1)
{
  v2 = objc_allocWithZone(_UIIntelligenceLatencyEffect);

  return [v2 initWithMode_];
}

id _UIIntelligenceLatencyEffect.init(mode:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithMode_];
}

{
  *(v1 + OBJC_IVAR____UIIntelligenceLatencyEffect_mode) = a1;
  v3.super_class = _UIIntelligenceLatencyEffect;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t _UIIntelligenceLatencyEffect.init(coder:)(void *a1)
{
  type metadata accessor for _UIIntelligenceLatencyEffect();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t type metadata accessor for _UIIntelligenceLatencyEffect()
{
  result = qword_1EA93CA88;
  if (!qword_1EA93CA88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93CA88);
  }

  return result;
}

void _UIIntelligenceLatencyEffect._update(_:for:usage:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    if (a1)
    {
      type metadata accessor for _UILatencyEmitterViewEntry();
      v6 = [objc_allocWithZone(v5) init];
      [a1 addOverlay_];
    }

    else
    {
      __break(1u);
    }
  }
}

BOOL _UIIntelligenceLatencyEffect.isEqual(_:)(uint64_t a1)
{
  sub_188C85D28(a1, v6);
  if (v7)
  {
    type metadata accessor for _UIIntelligenceLatencyEffect();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR____UIIntelligenceLatencyEffect_mode);
      v3 = *&v5[OBJC_IVAR____UIIntelligenceLatencyEffect_mode];

      return v2 == v3;
    }
  }

  else
  {
    sub_188A553EC(v6);
  }

  return 0;
}

void __swiftcall _UIIntelligenceLatencyEffect.init()(_UIIntelligenceLatencyEffect *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_1890E81D0(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v7 = a3;
  v8 = a1;
  sub_1890E8C84(Strong, a4);
}

void sub_1890E82FC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____UIScrollPocketInteraction_implementation);
  v3 = *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_style);
  *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_style) = a1;
  if (v3 != a1)
  {
    v4 = *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8);
    if (v4)
    {
      v5 = *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);

      sub_1890A4410(v2, v5, v4);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      [Strong setNeedsUpdateProperties];
    }
  }
}

void sub_1890E8530(id a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____UIScrollPocketInteraction_implementation);
  if (a1)
  {
    [a1 _UIRectCornerRadiiValue];
    v2 = a1;
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  v8 = v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii;
  v9 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii);
  v10 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii + 8);
  v11 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii + 16);
  v12 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii + 24);
  v13 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii + 32);
  *v8 = v4;
  *(v8 + 8) = v5;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = v2 == 0;
  if (!v2)
  {
    if (v13)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((v13 & 1) != 0 || (v14 = UIRectCornerRadiiEqualToRectCornerRadii(v4, v5, v6, v7, v9, v10, v11, v12), v2 = a1, !v14))
  {
LABEL_9:
    v15 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8);
    if (v15)
    {
      v16 = *(v3 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers);
      swift_bridgeObjectRetain_n();
      sub_1890A4410(v3, v16, v15);
      swift_bridgeObjectRelease_n();
      v2 = a1;
    }
  }
}

uint64_t _UIScrollPocketInteraction.description.getter()
{
  v1 = [objc_opt_self() descriptionForRootObject_];
  v2 = sub_18A4A7288();

  return v2;
}

void sub_1890E873C(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1890EA064;
  *(v4 + 24) = v3;
  v20 = sub_188E3FE50;
  v21 = v4;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_188A4A968;
  v19 = &block_descriptor_32_1;
  v5 = _Block_copy(&v16);
  v6 = a1;
  v7 = v1;

  [v6 appendProem:v7 block:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v9 = [v6 style];
  v10 = [v9 verbosity];

  if (v10 == 2)
  {

    return;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1890EA06C;
  *(v12 + 24) = v11;
  v20 = sub_188E3FE50;
  v21 = v12;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_188A4A968;
  v19 = &block_descriptor_42_2;
  v13 = _Block_copy(&v16);
  v14 = v6;
  v15 = v7;

  [v14 appendBodySectionWithName:0 block:v13];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    goto LABEL_7;
  }
}

void sub_1890E8A14(void *a1, id a2)
{
  v3 = _NSStringFromUIRectEdge([a2 _edge]);
  v4 = sub_18A4A7258();
  [a1 appendString:v3 withName:v4];
}

void sub_1890E8AA4(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____UIScrollPocketInteraction_implementation);
  v4 = sub_18A4A7258();
}

void __swiftcall _UIScrollPocketInteraction.init()(_UIScrollPocketInteraction *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for _UIScrollPocketInteraction()
{
  result = qword_1EA93CAA0;
  if (!qword_1EA93CAA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93CAA0);
  }

  return result;
}

void sub_1890E8C84(void *a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    if (v4 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 setNeedsUpdateProperties];
  }
}

id sub_1890E8D28()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers];
  v3 = *&v0[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers];
  v4 = *&v0[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers + 8];
  *v2 = 0;
  *(v2 + 1) = 0;
  sub_188B025E0(v3, v4);

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void sub_1890E8E18(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    sub_188F8E240(a1[1], a2[1]);
  }
}

void sub_1890E8E3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

    v11 = v9;
LABEL_13:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    sub_188F8EA58(*(a1 + 56) + 16 * v14, &v20);
    v21 = v15;
    sub_188E8FC60(&v20, v22);
    v9 = v11;
LABEL_14:
    sub_188A3F704(&v21, &v23, &unk_1EA93CB10, &unk_18A656260);
    if (!v24[0] && v24[1] == 1)
    {

      return;
    }

    v16 = v23;
    sub_188E8FC60(v24, &v21);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v17 = sub_188A403F4(v16);
      if (v18)
      {
        v19 = v17;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_188FA2094();
        }

        sub_188E8FC60(*(a2 + 56) + 16 * v19, &v20);
        sub_188F9D5A4(v19, a2);
        sub_188F8EAB4(&v21);
      }

      else
      {
        sub_188F8EAB4(&v21);
        v20 = xmmword_18A64C520;
      }

      sub_188A3F5FC(&v20, &qword_1EA9352B8, &qword_18A64F0C8);
    }

    else
    {
      sub_188F8EAB4(&v21);
    }
  }

  if (v8 <= v9 + 1)
  {
    v12 = v9 + 1;
  }

  else
  {
    v12 = v8;
  }

  v9 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v7 = 0;
      v21 = 0;
      v22[0] = 0;
      v22[1] = 1;
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_1890E9064(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 descriptionForRootObject_];
  if (!v4)
  {
    sub_18A4A7288();
    v4 = sub_18A4A7258();
  }

  return v4;
}

void sub_1890E90F8(void *a1)
{
  v16 = signpost_c2_entryLock_start;
  v17 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_188A4A968;
  v15 = &block_descriptor_109;
  v3 = _Block_copy(&v12);

  [a1 appendProem:v1 block:v3];
  _Block_release(v3);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return;
  }

  v4 = [a1 style];
  v5 = [v4 verbosity];

  if (v5 != 2)
  {
    v6 = [objc_opt_self() succinctStyle];
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1890E9E7C;
    *(v8 + 24) = v7;
    v16 = sub_188A4B574;
    v17 = v8;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_188A4A968;
    v15 = &block_descriptor_12_9;
    v9 = _Block_copy(&v12);
    v10 = a1;
    v11 = v1;

    [v10 overlayStyle:v6 block:v9];

    _Block_release(v9);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      goto LABEL_6;
    }
  }
}

void sub_1890E9374(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1890E9E84;
  *(v5 + 24) = v4;
  v9[4] = sub_188E3FE50;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188A4A968;
  v9[3] = &block_descriptor_22_1;
  v6 = _Block_copy(v9);
  v7 = a1;
  v8 = a2;

  [v7 appendBodySectionWithName:0 block:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

void sub_1890E94D8(void *a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (Strong)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
  }

  else
  {
    v9 = @"(nil)";
    v10 = @"(nil)";
  }

  v11 = v9;
  v12 = sub_18A4A7258();
  [a1 appendString:v11 withName:v12];

  v13 = swift_unknownObjectWeakLoadStrong();
  v14 = sub_18A4A7258();

  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = sub_18A4A7258();

  v17 = *(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_requiresPocket);
  v18 = sub_18A4A7258();

  sub_1890E9918(*(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_style));
  v19 = sub_18A4A7258();

  v20 = sub_18A4A7258();
  [a1 appendString:v19 withName:v20];

  v21 = _NSStringFromUIRectEdge(*(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_edge));
  v22 = sub_18A4A7258();
  [a1 appendString:v21 withName:v22];

  v23 = (a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect);
  v24 = *(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect);
  v25 = *(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect + 8);
  v26 = *(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect + 16);
  v27 = *(a2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect + 24);
  v28 = sub_18A4A7258();

  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v46 = v29;
    v30 = [v29 _window];
    if (v30)
    {

      if (CGRectIsNull(*v23))
      {
        [v46 bounds];
      }

      else
      {
        x = v23->origin.x;
        y = v23->origin.y;
        width = v23->size.width;
        height = v23->size.height;
      }

      [v46 convertRect:0 toView:{x, y, width, height}];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v44 = sub_18A4A7258();
      v45 = [a1 appendRect:v44 withName:{v37, v39, v41, v43}];

      v35 = v44;
    }

    else
    {
      v35 = v46;
    }
  }
}

uint64_t sub_1890E9918(uint64_t a1)
{
  if (a1 <= 1)
  {
    switch(a1)
    {
      case -1:
        return 1701736302;
      case 0:
        return 0x676E6974616F6C66;
      case 1:
        return 0x7373616C67;
    }

LABEL_13:
    v2 = sub_18A4A8618();
    MEMORY[0x18CFE22D0](v2);

    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    return 0x286E776F6E6B6E75;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return 0x6E496D6574737973;
    }

    if (a1 == 5)
    {
      return 0x656E6961746E6F63;
    }

    goto LABEL_13;
  }

  if (a1 == 2)
  {
    return 7496034;
  }

  else
  {
    return 0x74656C6150726162;
  }
}

void sub_1890E9B70(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v6 = Strong;
  v7 = [Strong _window];
  if (!v7 || (v7, [v6 frame], CGRectIsNull(v27)) || (objc_msgSend(v6, sel_frame), CGRectIsEmpty(v28)))
  {

LABEL_6:
    [a2 invalidate];
    return;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8 || (v9 = v8, v8, v6 != v9) || !_UIScrollPocketFrameCacheEnabled())
  {
    [a2 invalidate];
    v10 = 0;
    goto LABEL_13;
  }

  [a2 getValueForCoordinateSpace_];
  if (CGRectEqualToRect(v29, *MEMORY[0x1E695F050]))
  {
    v10 = 1;
LABEL_13:
    v11 = (v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect);
    if (CGRectIsNull(*(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect)))
    {
      [v6 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
    }

    else
    {
      v13 = *v11;
      v15 = v11[1];
      v17 = v11[2];
      v19 = v11[3];
    }

    v30.origin.x = v13;
    v30.origin.y = v15;
    v30.size.width = v17;
    v30.size.height = v19;
    if (!CGRectIsEmpty(v30))
    {
      v13 = UIRectInset(v13, v15, v17, v19, *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets), *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets + 24), *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets + 16), *(v2 + OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets + 8));
      v15 = v20;
      v17 = v21;
      v19 = v22;
    }

    [v6 convertRect:a1 toCoordinateSpace:{v13, v15, v17, v19}];
    if (v10)
    {
      [a2 putValue:a1 forCoordinateSpace:{v23, v24, v25, v26}];
    }
  }
}

double sub_1890E9E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1890A28A4();
  if (v6)
  {
    v7 = v5;
    do
    {
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(a1, a2, ObjectType, v7);
      swift_unknownObjectRelease();
      sub_1890A28A4();
      v7 = v9;
    }

    while (v10);
  }

  return sub_188E036A4(a3);
}

double sub_1890E9F78(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1890A28A4();
  if (v6)
  {
    v7 = v5;
    do
    {
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(a1, a2, ObjectType, v7);
      swift_unknownObjectRelease();
      sub_1890A28A4();
      v7 = v9;
    }

    while (v10);
  }

  return sub_188E036A4(a3);
}

id sub_1890EA148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_requiresPocket] = 1;
  v7 = &v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_rect];
  v8 = *(MEMORY[0x1E695F050] + 16);
  *v7 = *MEMORY[0x1E695F050];
  v7[1] = v8;
  v9 = &v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_cornerRadii];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_isCapsular] = 0;
  *&v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_insets] = UIEdgeInsetsZero;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10 = &v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_targetedReceivers];
  *v10 = 0;
  v10[1] = 0;
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_edge] = a2;
  *&v3[OBJC_IVAR____TtC5UIKitP33_EC84B326E0A5500F8664F11F62EDB99314Implementation_style] = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

void static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, double a6, double a7, double a8, double a9)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v25 = sub_188A4B574;
  v26 = v18;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_188A4A968;
  v24 = &block_descriptor_110;
  v19 = _Block_copy(&v21);

  if (a4)
  {
    v25 = a4;
    v26 = a5;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_188ABD010;
    v24 = &block_descriptor_3_3;
    a4 = _Block_copy(&v21);
  }

  [objc_opt_self() animateWithSpringDuration:a1 bounce:v19 initialSpringVelocity:a4 delay:a6 options:a7 animations:a8 completion:a9];
  _Block_release(a4);
  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

_BYTE *static UIView.LayoutRegion.margins(cornerAdaptation:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[1] = 1;
  return result;
}

_BYTE *static UIView.LayoutRegion.readableContent(cornerAdaptation:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[1] = 2;
  return result;
}

void UIView.layoutGuide(for:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = [(UIView *)v1 _typedStorage];
  v6 = sub_18902B878();

  v52 = v3;
  if (*(v6 + 16))
  {
    sub_188E8B6A8(v3 | (v4 << 8));
    if (v7)
    {
      goto LABEL_19;
    }
  }

  v8 = [objc_allocWithZone(UILayoutGuide) init];
  [v2 addLayoutGuide_];
  v9 = 1;
  [v8 _setLockedToOwningView_];
  if (v4)
  {
    if (v4 == 1)
    {
      v9 = dyld_program_sdk_at_least();
    }

    else
    {
      v9 = 0;
    }
  }

  [v8 _setAllowsNegativeDimensions_];
  if (v4)
  {
    v10 = 0;
  }

  else
  {
    v10 = v3 == 2;
  }

  v11 = v10;
  [v8 _setShouldBeArchived_];
  sub_1890EB5A8();
  v12 = sub_18A4A7258();

  [v8 setIdentifier_];

  v13 = [v2 _frameLayoutItem];
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v13;
  v15 = [v8 topAnchor];
  v16 = [v14 topAnchor];
  if (!v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = v16;
  v18 = [v15 constraintEqualToAnchor_];

  v19 = [v8 leftAnchor];
  v20 = [v14 leftAnchor];
  if (!v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v20;
  v51 = v2;
  v22 = [v19 constraintEqualToAnchor_];

  v23 = [v14 bottomAnchor];
  if (!v23)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = v23;
  v25 = [v8 bottomAnchor];
  v49 = [v24 constraintEqualToAnchor_];

  v26 = [v14 rightAnchor];
  if (v26)
  {
    v27 = v26;
    v28 = [v8 rightAnchor];
    v45 = [v27 constraintEqualToAnchor_];

    sub_1890EB5A8();
    MEMORY[0x18CFE22D0](1886352429, 0xE400000000000000);
    v29 = sub_18A4A7258();

    [v18 setIdentifier_];

    sub_1890EB5A8();
    MEMORY[0x18CFE22D0](0x7466656C2DLL, 0xE500000000000000);
    v30 = sub_18A4A7258();

    [v22 setIdentifier_];

    sub_1890EB5A8();
    MEMORY[0x18CFE22D0](0x6D6F74746F622DLL, 0xE700000000000000);
    v31 = sub_18A4A7258();

    [v49 setIdentifier_];

    sub_1890EB5A8();
    MEMORY[0x18CFE22D0](0x74686769722DLL, 0xE600000000000000);
    v32 = sub_18A4A7258();

    [v45 setIdentifier_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18A64B810;
    *(v33 + 32) = v18;
    *(v33 + 40) = v22;
    *(v33 + 48) = v49;
    *(v33 + 56) = v45;
    sub_1890ECC04();
    v48 = v18;
    v47 = v22;
    v50 = v49;
    v46 = v45;
    v34 = sub_18A4A7518();
    [v8 _setSystemConstraints_];

    v35 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_188EA0D54(v35, v52 | (v4 << 8), isUniquelyReferenced_nonNull_native);

    v37 = [(UIView *)v51 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CB28, &qword_18A666448);
    v38 = swift_allocObject();
    *(v38 + 16) = v6;
    v39 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v53 = *(&v37->super.isa + v39);
    *(&v37->super.isa + v39) = 0x8000000000000000;
    sub_188A40430(v38, &_s24LayoutGuideDictionaryKeyVN, v40);
    *(&v37->super.isa + v39) = v53;
    swift_endAccess();

    [v51 _updateDynamicLayoutGuideConstraintsIfNeeded];
    v41 = objc_opt_self();
    v42 = sub_18A4A7518();

    [v41 activateConstraints_];

    swift_unknownObjectRelease();
LABEL_19:
    if (*(v6 + 16))
    {
      v43 = sub_188E8B6A8(v52 | (v4 << 8));
      if (v44)
      {
        *(*(v6 + 56) + 8 * v43);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
}

double UIView.edgeInsets(for:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = [(UIView *)v1 _typedStorage];
  v6 = sub_18901F3F8();

  if (!v6)
  {
    type metadata accessor for _UIViewDynamicLayoutGuideSupport(0);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    sub_18A4A2C38();

    v7 = [(UIView *)v2 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CB30, &qword_18A666450);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v9 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(&v7->super.isa + v9);
    *(&v7->super.isa + v9) = 0x8000000000000000;
    sub_188A40430(v8, &type metadata for _UIViewDynamicLayoutGuideSupport.Key, isUniquelyReferenced_nonNull_native);
    *(&v7->super.isa + v9) = v16;
    swift_endAccess();
  }

  swift_getKeyPath();
  sub_1890ECC9C();
  sub_18A4A2C08();

  if (!v4)
  {
    [v2 safeAreaInsets];
LABEL_7:
    v12 = v11;
    if (v3 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v4 == 1)
  {
    [v2 layoutMargins];
    goto LABEL_7;
  }

  [v2 layoutMargins];
  v12 = v13;
  _UIViewReadableWidthForView(v2);
  [v2 bounds];
  CGRectGetWidth(v17);
  if (v3 != 2)
  {
LABEL_10:
    sub_1890EB990();
    v12 = v14;
  }

LABEL_11:

  return v12;
}

void UIView.directionalEdgeInsets(for:)(__int16 *a1)
{
  v2 = *a1;
  UIView.edgeInsets(for:)(&v2);
  [v1 _shouldReverseLayoutDirection];

  _UIEdgeInsetsFromDirectionalEdgeInsets();
}

double sub_1890EB0E0(uint64_t a1, uint64_t a2, double a3, __n128 a4)
{
  v6 = a3 + 0.3;
  if (v6 <= -1.0)
  {
    a4.n128_u64[0] = 0x7FF0000000000000;
  }

  else
  {
    a4.n128_u64[0] = 1.0;
    if (v6 >= 0.0)
    {
      if (v6 != 0.0)
      {
        if (v6 > 1.0)
        {
          v6 = 1.0;
        }

        a4.n128_f64[0] = 1.0 - v6;
      }
    }

    else
    {
      a4.n128_f64[0] = 1.0 / (v6 + 1.0);
    }
  }

  v7 = MEMORY[0x18CFE1B90](0.5, a4, 0.0);
  static UIView.animate(bridgedAnimation:animations:completion:)(v7, a1, a2, signpost_c2_entryLock_start, 0);

  return result;
}

uint64_t sub_1890EB240()
{
  swift_getKeyPath();
  sub_1890ECC9C();
  sub_18A4A2C08();

  return *(v0 + 16);
}

void sub_1890EB2B0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1890ECC9C();
  sub_18A4A2C08();

  *a2 = *(v3 + 16);
}

double sub_1890EB328(uint64_t a1)
{
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1890ECC9C();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890EB3FC()
{
  v1 = OBJC_IVAR____TtC5UIKitP33_AADD5A9A7AC459E3971D298134A7167432_UIViewDynamicLayoutGuideSupport___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1890EB498()
{
  v1 = *v0;
  if (v0[1])
  {
    if (v0[1] == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x18CFE37E0](v2);
  if (v1 == 2)
  {
    return sub_18A4A88A8();
  }

  sub_18A4A88A8();
  return MEMORY[0x18CFE37E0](v1 & 1);
}

uint64_t sub_1890EB50C()
{
  sub_18A4A8888();
  sub_1890EB498();
  return sub_18A4A88E8();
}

uint64_t sub_1890EB55C()
{
  sub_18A4A8888();
  sub_1890EB498();
  return sub_18A4A88E8();
}

unint64_t sub_1890EB5A8()
{
  v1 = *v0;
  if (v0[1])
  {
    v2 = 0xD000000000000033;
    v3 = 0xD000000000000018;
    v4 = 0xD000000000000031;
    if ((v1 & 1) == 0)
    {
      v4 = 0xD000000000000033;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if ((v1 & 1) == 0)
    {
      v2 = 0xD000000000000035;
    }

    if (v1 == 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = v2;
    }

    if (v0[1] == 1)
    {
      return v3;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (v1)
    {
      v7 = 0xD000000000000032;
    }

    else
    {
      v7 = 0xD000000000000034;
    }

    if (v1 == 2)
    {
      return 0xD000000000000019;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t UIView.LayoutRegion.AdaptivityAxis.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t static UIView.LayoutRegion.== infix(_:_:)(__int16 *a1, __int16 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return sub_1890ECB3C(&v5, &v4) & 1;
}

uint64_t UIView.LayoutRegion.hashValue.getter()
{
  sub_18A4A8888();
  sub_1890EB498();
  return sub_18A4A88E8();
}

uint64_t sub_1890EB7F4()
{
  sub_18A4A8888();
  sub_1890EB498();
  return sub_18A4A88E8();
}

uint64_t sub_1890EB874()
{
  sub_18A4A8888();
  sub_1890EB498();
  return sub_18A4A88E8();
}

uint64_t sub_1890EB8BC(__int16 *a1, __int16 *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return sub_1890ECB3C(&v5, &v4) & 1;
}

unint64_t sub_1890EB8F8()
{
  result = sub_188E8D0B8(MEMORY[0x1E69E7CC0]);
  qword_1ED48FE28 = result;
  return result;
}

double sub_1890EB920@<D0>(void *a1@<X8>)
{
  if (qword_1ED48FE20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED48FE28;

  return result;
}

void sub_1890EB990()
{
  [v0 _safeAreaCornerInsets];
  [v0 _containerConcentricRadiusForCorner_];
  if (v1 > 0.0)
  {
    UIRoundToViewScale(v0);
  }

  [v0 _containerConcentricRadiusForCorner_];
  if (v2 > 0.0)
  {
    UIRoundToViewScale(v0);
  }

  [v0 _containerConcentricRadiusForCorner_];
  if (v3 > 0.0)
  {
    UIRoundToViewScale(v0);
  }

  [v0 _containerConcentricRadiusForCorner_];
  if (v4 > 0.0)
  {
    UIRoundToViewScale(v0);
  }
}

double sub_1890EC6BC()
{
  v1 = [(UIView *)v0 _typedStorage];
  v2 = sub_18901F3F8();

  if (v2)
  {
    swift_getKeyPath();
    sub_1890ECC9C();
    sub_18A4A2C08();

    swift_getKeyPath();
    sub_18A4A2C28();

    ++*(v2 + 16);
    swift_getKeyPath();
    sub_18A4A2C18();
  }

  return result;
}

void sub_1890EC80C()
{
  v1 = [(UIView *)v0 _typedStorage];
  v2 = sub_18902B878();

  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = &selRef__suffixFrame;
  while (v6)
  {
LABEL_11:
    v10 = __clz(__rbit64(v6)) | (v3 << 6);
    v11 = *(*(v2 + 48) + 2 * v10);
    v12 = *(*(v2 + 56) + 8 * v10);
    v33 = v11;
    v13 = v12;
    v14 = UIView.edgeInsets(for:)(&v33);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v13 v8[224]];
    if (v21)
    {
      v22 = v21;
      sub_1890ECC04();
      v23 = sub_18A4A7548();

      if (v23 >> 62)
      {
        if (sub_18A4A7F68() < 4)
        {
LABEL_4:

          goto LABEL_5;
        }
      }

      else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
      {
        goto LABEL_4;
      }

      v24 = v23 & 0xC000000000000001;
      if ((v23 & 0xC000000000000001) != 0)
      {
        v25 = sub_188E4A9EC(0, v23);
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          return;
        }

        v25 = *(v23 + 32);
      }

      v26 = v25;
      [v25 setConstant_];

      if (v24)
      {
        v27 = sub_188E4A9EC(1uLL, v23);
      }

      else
      {
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_38;
        }

        v27 = *(v23 + 40);
      }

      v28 = v27;
      [v27 setConstant_];

      if (v24)
      {
        v29 = sub_188E4A9EC(2uLL, v23);
      }

      else
      {
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
          goto LABEL_39;
        }

        v29 = *(v23 + 48);
      }

      v30 = v29;
      [v29 setConstant_];

      if (v24)
      {
        v31 = sub_188E4A9EC(3uLL, v23);
      }

      else
      {
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
        {
          goto LABEL_40;
        }

        v31 = *(v23 + 56);
      }

      v32 = v31;

      [v32 setConstant_];

      v8 = &selRef__suffixFrame;
    }

LABEL_5:
    v6 &= v6 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v9);
    ++v3;
    if (v6)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1890ECB3C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1])
  {
    if (a1[1] == 1)
    {
      if (v4 == 1)
      {
        if (v2 == 2)
        {
          if (v3 == 2)
          {
            return 1;
          }
        }

        else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
        {
          return 1;
        }
      }
    }

    else if (v4 == 2)
    {
      if (v2 == 2)
      {
        if (v3 == 2)
        {
          return 1;
        }
      }

      else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
      {
        return 1;
      }
    }
  }

  else if (!a2[1])
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1890ECC04()
{
  result = qword_1ED48CFF0;
  if (!qword_1ED48CFF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48CFF0);
  }

  return result;
}

uint64_t type metadata accessor for _UIViewDynamicLayoutGuideSupport(uint64_t a1)
{
  result = qword_1EA92F168;
  if (!qword_1EA92F168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1890ECC9C()
{
  result = qword_1EA92F178;
  if (!qword_1EA92F178)
  {
    type metadata accessor for _UIViewDynamicLayoutGuideSupport(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F178);
  }

  return result;
}

unint64_t sub_1890ECCF8()
{
  result = qword_1EA93CB38;
  if (!qword_1EA93CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CB38);
  }

  return result;
}

unint64_t sub_1890ECD50()
{
  result = qword_1EA93CB40;
  if (!qword_1EA93CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CB40);
  }

  return result;
}

uint64_t sub_1890ECDAC(uint64_t a1)
{
  result = sub_18A4A2C48();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1890ECE6C(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t sub_1890ECF04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1890ECFF8()
{
  result = qword_1EA93CB48;
  if (!qword_1EA93CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CB48);
  }

  return result;
}

void *UIBackgroundExtensionView.contentView.getter()
{
  v1 = OBJC_IVAR___UIBackgroundExtensionView_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void UIBackgroundExtensionView.contentView.setter(void *a1)
{
  v3 = OBJC_IVAR___UIBackgroundExtensionView_contentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1890ED1E4(v4);
}

void sub_1890ED1E4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___UIBackgroundExtensionView_contentView;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    if (v5 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  [v1 endContentViewObservation];
  v6 = [a1 superview];
  if (v6)
  {
    v7 = v6;
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    v8 = v1;
    v9 = sub_18A4A7C88();

    if (v9)
    {
      [a1 removeFromSuperview];
    }
  }

  v10 = *&v2[v4];
  if (v10)
  {
    v11 = *&v2[OBJC_IVAR___UIBackgroundExtensionView_effectsView];
    if (v11)
    {
      [v2 insertSubview:v10 belowSubview:v11];
    }

    else
    {
      [v2 addSubview_];
    }

    [v2 observeContentViewIfNeeded];
  }
}

uint64_t UIBackgroundExtensionView.automaticallyPlacesContentView.getter()
{
  v1 = OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView;
  swift_beginAccess();
  return *(v0 + v1);
}

void UIBackgroundExtensionView.automaticallyPlacesContentView.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    [v1 setNeedsLayout];
  }
}

void __swiftcall UIBackgroundExtensionView.init(frame:)(UIBackgroundExtensionView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id UIBackgroundExtensionView.init(frame:)()
{
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry) = 0;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_contentView) = 0;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView__disableBlurEffects) = 0;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView) = 1;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_effectsView) = 0;
  v5.super_class = UIBackgroundExtensionView;
  v1 = objc_msgSendSuper2(&v5, sel_initWithFrame_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480, &unk_18A653360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for UITraitLayoutDirection;
  *(inited + 40) = &protocol witness table for UITraitLayoutDirection;
  v3 = v1;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();
  swift_setDeallocating();
  return v3;
}

void UIBackgroundExtensionView.init(coder:)()
{
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_isObservingContentViewGeometry) = 0;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_contentView) = 0;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView__disableBlurEffects) = 0;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_automaticallyPlacesContentView) = 1;
  *(v0 + OBJC_IVAR___UIBackgroundExtensionView_effectsView) = 0;
  sub_18A4A8398();
  __break(1u);
}

void sub_1890ED7B8()
{
  v1 = v0;
  v2 = sub_18A4A4CD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v73[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v73[-v10];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v73[-v14];
  v16 = [v1 contentView];
  if (!v16)
  {
    return;
  }

  v77 = v16;
  [v16 bounds];
  if (v18 == 0.0 && v17 == 0.0)
  {
    v19 = v77;

    return;
  }

  v75 = [v77 layer];
  v74 = v1[OBJC_IVAR___UIBackgroundExtensionView__disableBlurEffects];
  [v1 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [v77 frame];
  v32 = _UIEdgeInsetsFromOuterToInnerRect(v21, v23, v25, v27, v28, v29, v30, v31);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v76 = v1;
  v39 = [v1 traitCollection];
  v40 = [v39 layoutDirection];

  v41 = v3[13];
  v42 = MEMORY[0x1E697E7D0];
  v43 = MEMORY[0x1E697E7D8];
  if (v40)
  {
    if (v40 != 1)
    {
      v41(v15, *MEMORY[0x1E697E7D0], v2);
      goto LABEL_12;
    }

    v42 = MEMORY[0x1E697E7D8];
  }

  v41(v8, *v42, v2);
  v44 = v3[4];
  v44(v11, v8, v2);
  v44(v15, v11, v2);
  v43 = MEMORY[0x1E697E7D8];
LABEL_12:
  v41(v5, *v43, v2);
  v45 = sub_18A4A4CC8();
  v46 = v3[1];
  v46(v5, v2);
  v46(v15, v2);
  if (v45)
  {
    v47 = v34;
  }

  else
  {
    v47 = v38;
  }

  if (v45)
  {
    v48 = v38;
  }

  else
  {
    v48 = v34;
  }

  v50 = v75;
  v49 = v76;
  *&v78 = v75;
  BYTE8(v78) = v74;
  *&v79 = v32;
  *(&v79 + 1) = v48;
  *&v80 = v36;
  *(&v80 + 1) = v47;
  v51 = OBJC_IVAR___UIBackgroundExtensionView_effectsView;
  v52 = *&v76[OBJC_IVAR___UIBackgroundExtensionView_effectsView];
  if (v52)
  {
    v53 = v52 + *((*MEMORY[0x1E69E7D40] & *v52) + 0x68);
    swift_beginAccess();
    v54 = *v53;
    v55 = v79;
    *v53 = v78;
    *(v53 + 1) = v55;
    *(v53 + 2) = v80;
    v56 = v52;
    v57 = v50;

    sub_18A4A5528();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF10, &unk_18A6670E0);
    sub_1890EE2B4();
    sub_18A4A58B8();
  }

  else
  {
    v58 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF10, &unk_18A6670E0));
    v59 = v50;
    v60 = sub_1890F8CE8(&v78);
    v61 = *&v49[v51];
    *&v49[v51] = v60;

    v62 = *&v49[v51];
    if (!v62)
    {
      goto LABEL_31;
    }

    v63 = *(v62 + *((*MEMORY[0x1E69E7D40] & *v62) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v65 = Strong;
      v66 = v62;
      v67 = v63;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v68 = v62;
      v69 = v63;
    }

    if (sub_18A4A46F8())
    {

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890EE2B4();
      v70 = v62;
      sub_18A4A4708();
    }

    v71 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
    swift_beginAccess();
    v72 = *&v63[v71];
    *&v63[v71] = 0;
    sub_188F2461C(v72);

    if (!*&v49[v51])
    {
LABEL_31:
      __break(1u);
      return;
    }

    [v49 addSubview_];
  }

  [v49 setNeedsLayout];
}

Swift::Void __swiftcall UIBackgroundExtensionView.layoutSubviews()()
{
  v31.super_class = UIBackgroundExtensionView;
  objc_msgSendSuper2(&v31, sel_layoutSubviews);
  if ([v0 automaticallyPlacesContentView])
  {
    v1 = [v0 contentView];
    if (v1)
    {
      v2 = v1;
      [v0 bounds];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      [v0 safeAreaInsets];
      [v2 setFrame_];
    }
  }

  v15 = [v0 contentView];
  v16 = *&v0[OBJC_IVAR___UIBackgroundExtensionView_effectsView];
  if (v15)
  {
    v17 = v15;
    if (v16)
    {
      v18 = v16;
      [v0 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [v17 frame];
      v34.origin.x = v27;
      v34.origin.y = v28;
      v34.size.width = v29;
      v34.size.height = v30;
      v32.origin.x = v20;
      v32.origin.y = v22;
      v32.size.width = v24;
      v32.size.height = v26;
      v33 = CGRectUnion(v32, v34);
      [v18 setFrame_];
    }
  }

  else
  {
    if (!v16)
    {
      return;
    }

    v17 = v16;
    [v0 bounds];
    [v17 setFrame_];
  }
}

double _UIEdgeInsetsFromOuterToInnerRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  v19 = MinY - CGRectGetMinY(v21);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetMinX(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetMaxY(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetMaxY(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMaxX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetMaxX(v27);
  return v19;
}

unint64_t sub_1890EE2B4()
{
  result = qword_1EA92F9E8;
  if (!qword_1EA92F9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93CF10, &unk_18A6670E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F9E8);
  }

  return result;
}

uint64_t sub_1890EE318(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1890EE360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1890EE3D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_18A4A3168();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = 0u;
  v15 = 0u;
  v16 = 1;
  v8 = v3;
  sub_18A4A3158();
  sub_18A4A5BC8();
  v9 = *(v1 + 16);
  v12 = *(v1 + 32);
  *&v11[8] = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CB80, &qword_18A666750);
  sub_18A4A57C8();
  return (*(v5 + 32))(a1, v7, v4);
}

unint64_t sub_1890EE51C()
{
  result = qword_1EA92F828;
  if (!qword_1EA92F828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93CB80, &qword_18A666750);
    sub_1890EE5A8();
    sub_1890EE5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F828);
  }

  return result;
}

unint64_t sub_1890EE5A8()
{
  result = qword_1EA92FAB0;
  if (!qword_1EA92FAB0)
  {
    sub_18A4A3168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FAB0);
  }

  return result;
}

unint64_t sub_1890EE5F4()
{
  result = qword_1EA92F808;
  if (!qword_1EA92F808)
  {
    sub_18A4A57D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F808);
  }

  return result;
}

uint64_t sub_1890EE674(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + v9;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_30;
  }

  v13 = ((v11 + ((v11 + ((v9 + 8) & ~v9)) & ~v9) + 1) & ~v9) + v10;
  v14 = 8 * v13;
  if (v13 > 3)
  {
    goto LABEL_12;
  }

  v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
  if (HIWORD(v16))
  {
    v15 = *(a1 + v13);
    if (v15)
    {
      goto LABEL_19;
    }

LABEL_30:
    v18 = (a1 + v9 + 8) & ~v9;
    if (v7 >= 0xFE)
    {
      v19 = (*(v5 + 48))(v18);
      if (v19 >= 2)
      {
        return v19 - 1;
      }

      else
      {
        return 0;
      }
    }

    v21 = *(((v11 + v18) & ~v9) + v10);
    if (v21 >= 2)
    {
      return ((v21 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

  if (v16 > 0xFF)
  {
    v15 = *(a1 + v13);
    if (*(a1 + v13))
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  if (v16 < 2)
  {
    goto LABEL_30;
  }

LABEL_12:
  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_19:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v17) + 1;
}

void sub_1890EE858(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v12 + v11 + ((v12 + v11 + ((v11 + 8) & ~v11)) & ~v11) + 1) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = (&a1[v11 + 8] & ~v11);
  if (v9 < 0xFE)
  {
    *((&v21[v12 + v11] & ~v11) + v12) = a2 + 1;
  }

  else if (v9 >= a2)
  {
    v25 = *(v7 + 56);
    v26 = a2 + 1;
    v27 = &a1[v11 + 8] & ~v11;

    v25(v27, v26);
  }

  else
  {
    if (v12 <= 3)
    {
      v22 = ~(-1 << (8 * v12));
    }

    else
    {
      v22 = -1;
    }

    if (v12)
    {
      v23 = v22 & (~v9 + a2);
      if (v12 <= 3)
      {
        v24 = v12;
      }

      else
      {
        v24 = 4;
      }

      bzero(v21, v12);
      if (v24 > 2)
      {
        if (v24 == 3)
        {
          *v21 = v23;
          v21[2] = BYTE2(v23);
        }

        else
        {
          *v21 = v23;
        }
      }

      else if (v24 == 1)
      {
        *v21 = v23;
      }

      else
      {
        *v21 = v23;
      }
    }
  }
}

uint64_t sub_1890EEB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, double a8@<D0>)
{
  v274 = a4;
  v272 = a2;
  v268 = a1;
  v270 = a7;
  v13 = *(a6 + 16);
  v12 = *(a6 + 24);
  v242 = _s14FrictionBounceVMa(0, v13, v12, a4);
  v241 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v240 = &v218 - v14;
  v16 = type metadata accessor for RunningInProcessAnimation(0, v13, v12, v15);
  v267 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v246 = &v218 - v17;
  v251 = _s15InstantlyStableVMa(0, v13, v12, v18);
  v250 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v251);
  v239 = &v218 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v247 = &v218 - v21;
  v271 = a6;
  v233 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v231 = &v218 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = _s6SpringVMa(0, v13, v12, v24);
  v248 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v238 = &v218 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v244 = &v218 - v27;
  v269 = sub_18A4A7D38();
  v28 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v255 = &v218 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v236 = &v218 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v259 = &v218 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v235 = &v218 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v265 = &v218 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v218 - v39;
  v41 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v245 = &v218 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v232 = &v218 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v234 = &v218 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v243 = &v218 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v260 = &v218 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v261 = &v218 - v53;
  v266 = v16;
  v54 = a5;
  v264 = sub_18A4A7D38();
  v263 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v258 = &v218 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v254 = &v218 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v256 = &v218 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v218 - v61;
  v253 = _s7SwiftUIVMa(0, v13, v12, v63);
  v252 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v237 = &v218 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v65);
  v68 = &v218 - v67;
  v69 = *(a6 + 44);
  v257 = a3;
  v70 = v273;
  *(v273 + v69) = a3;
  v71 = v70;
  v72 = *(v12 + 40);
  v262 = v12;
  if ((v72(v54, v13, v12, v66) & 1) == 0)
  {
    v81 = v271;
    v82 = *(v271 + 48);
    v83 = *(v28 + 8);
    v84 = v54;
    v85 = v269;
    v83(v71 + v82, v269);
    v86 = *(v41 + 56);
    v86(v71 + v82, 1, 1, v13);
    v87 = *(v81 + 36);
    v83(v71 + v87, v85);
    v86(v71 + v87, 1, 1, v13);
    *v71 = 0.0;
    v88 = *(v81 + 40);
    v83(v71 + v88, v85);
    v86(v71 + v88, 1, 1, v13);
    v89 = v265;
    v86(v265, 1, 1, v13);
    sub_1890F0E24(v272, v84, v89, v84, v81, v270);
    return (v83)(v89, v85);
  }

  v230 = v41;
  v73 = v271;
  v229 = v28;
  v74 = v272;
  sub_188AA72A8(v272, &v276);
  if (v278 == 2)
  {
    v75 = v276;
    v76 = BYTE8(v276);
    v77 = v263;
    (*(v263 + 16))(v62, v268, v264);
    v78 = v267;
    v79 = v266;
    if ((*(v267 + 48))(v62, 1, v266) == 1)
    {
      v80 = v264;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v93 = *(v252 + 32);
        v94 = v253;
        v93(v68, v62, v253);
        sub_188FBB134(v75, v54, v94);

        v93(v270, v68, v94);
        return swift_storeEnumTagMultiPayload();
      }

      v77 = v78;
      v80 = v79;
    }

    (*(v77 + 8))(v62, v80);
    v105 = *(v230 + 16);
    v106 = v261;
    v105(v261, v274, v13);
    v107 = v260;
    v105(v260, v54, v13);
    sub_188FBB008(v75, v106, v107, v76, v13, v262, v270);
    return swift_storeEnumTagMultiPayload();
  }

  sub_188AA7808(&v276);
  sub_188AA72A8(v74, &v276);
  if (v278 == 1)
  {
    v281 = *&v277[16];
    v282 = *&v277[32];
    v283 = *&v277[48];
    v279 = v276;
    v280 = *v277;
    sub_188A8F66C(&v279, &v276);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936558, &qword_18A650D08);
    v91 = v261;
    swift_dynamicCast();
    sub_188A8F66C((&v281 + 8), v275);
    v92 = v260;
    swift_dynamicCast();
    sub_188FB5D30(v91, v92, v13, v262, v270);
    return swift_storeEnumTagMultiPayload();
  }

  v95 = v40;
  sub_188AA7808(&v276);
  v96 = v269;
  v97 = v229;
  v98 = v273;
  v99 = v73;
  v228 = v13;
  if (v257)
  {
    v100 = CACurrentMediaTime();
    v101 = *v98;
    if (a8 * 0.9 < v100 - *v98)
    {
      if (v101 == 0.0)
      {
        v102 = *(v97 + 8);
        v103 = v13;
        v104 = v230;
      }

      else
      {
        v108 = *(v97 + 16);
        v226 = *(v73 + 48);
        v222 = v108;
        v221 = v97 + 16;
        (v108)(v95, v98 + v226, v96, v101, a8 * 0.9);
        v109 = v230 + 48;
        v224 = *(v230 + 48);
        LODWORD(v223) = v224(v95, 1, v13);
        v110 = *(v97 + 8);
        v225 = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v227 = v110;
        v110(v95, v96);
        v111 = v265;
        if (v223 == 1)
        {
          v103 = v228;
          sub_18A4A8408();
          v104 = v230;
          (*(v230 + 56))(v111, 0, 1, v103);
          (*(v97 + 40))(v98 + v226, v111, v96);
          v99 = v271;
        }

        else
        {
          v112 = *(v230 + 16);
          v113 = v228;
          v220 = v230 + 16;
          v219 = v112;
          v112(v243, v54, v228);
          v114 = v235;
          v222(v235, v98 + *(v271 + 40), v96);
          v223 = v109;
          v115 = v224(v114, 1, v113);
          if (v115 == 1)
          {
            v227(v114, v96);
            v116 = *(*(v262 + 8) + 8);
            v97 = v229;
            v117 = v228;
          }

          else
          {
            v118 = v230;
            v119 = v234;
            v120 = v228;
            (*(v230 + 32))(v234, v114, v228);
            v116 = *(*(v262 + 8) + 8);
            sub_18A4A83F8();
            (*(v118 + 8))(v119, v120);
            v97 = v229;
            v117 = v120;
          }

          v235 = v116;
          sub_18A4A4E98();
          v98 = v273;
          v121 = v117;
          v122 = v226;
          v123 = v224;
          v99 = v73;
          v103 = v121;
          if (!v224(v273 + v226, 1, v121))
          {
            sub_18A4A4E98();
          }

          v124 = v123(v98 + v122, 1, v121);
          v96 = v269;
          if (v124)
          {
            v104 = v230;
            (*(v230 + 8))(v243, v103);
          }

          else
          {
            v125 = v261;
            v219(v261, v243, v121);
            sub_18A4A4E98();
            sub_18A4A83E8();
            v126 = *(v230 + 8);
            v127 = v125;
            v99 = v271;
            v126(v127, v103);
            v126(v243, v103);
            v104 = v230;
          }
        }

        v102 = v227;
      }

      v128 = *(v99 + 36);
      v102(v98 + v128, v96);
      (*(v104 + 16))(v98 + v128, v274, v103);
      (*(v104 + 56))(v98 + v128, 0, 1, v103);
      *v98 = v100;
    }
  }

  v129 = *(v99 + 40);
  (*(v97 + 32))(v259, v98 + v129, v96);
  v130 = *(v230 + 16);
  v243 = v54;
  v131 = v230;
  v227 = v130;
  (v130)(v98 + v129, v54, v13);
  v132 = *(v131 + 56);
  v235 = (v131 + 56);
  v234 = v132;
  (v132)(v98 + v129, 0, 1, v13);
  v133 = v263;
  v134 = *(v263 + 16);
  v135 = v256;
  v136 = v264;
  v134(v256, v268, v264);
  v137 = *(v267 + 48);
  v138 = v266;
  if (v137(v135, 1, v266) == 1)
  {
    (*(v133 + 8))(v135, v136);
    v139 = v258;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v139 = v258;
    if (EnumCaseMultiPayload)
    {
      (*(v267 + 8))(v135, v138);
    }

    else
    {
      v141 = v244;
      (*(v248 + 32))(v244, v135, v249);
      sub_188AA72A8(v272, &v276);
      if (v278 == 3 && v276 == 1)
      {
        v142 = vorrq_s8(vorrq_s8(*&v277[8], *&v277[40]), vorrq_s8(*&v277[24], *&v277[56]));
        if (!(*&vorr_s8(*v142.i8, *&vextq_s8(v142, v142, 8uLL)) | *v277 | *(&v276 + 1)))
        {
          sub_188AA7808(&v276);
          v143 = v249;
          (*(v230 + 24))(&v141[*(v249 + 44)], v243, v228);
          v144 = v248;
          (*(v248 + 16))(v270, v141, v143);
          swift_storeEnumTagMultiPayload();
          (*(v144 + 8))(v141, v143);
          return (*(v229 + 8))(v259, v269);
        }
      }

      sub_188AA7808(&v276);
      sub_188AA72A8(v272, &v276);
      v138 = v266;
      if (!v278)
      {
        v281 = *&v277[16];
        v282 = *&v277[32];
        v283 = *&v277[48];
        v284 = *&v277[64];
        v279 = v276;
        v280 = *v277;
        v190 = v269;
        v191 = v236;
        v192 = v230;
        if ((v257 & 1) == 0)
        {
          if ((*(&v281 + 1) & 0x8000000000000000) != 0)
          {
            v193 = *(&v283 + 1);
            if (*(&v283 + 1) > 0.0)
            {
              v194 = v233;
              v195 = v231;
              v196 = v271;
              (*(v233 + 16))(v231, v273, v271);
              sub_1890F0BA0(&v141[*(v249 + 56)], v196, v193);
              (*(v194 + 8))(v195, v196);
            }
          }

          v197 = *(v271 + 48);
          v198 = v273;
          (*(v229 + 8))(v273 + v197, v190);
          (v234)(v198 + v197, 1, 1, v228);
          *v198 = 0.0;
        }

        if ((*(&v281 + 1) & 0x8000000000000000) != 0 && v284 > 0.0)
        {
          v199 = *(v192 + 48);
          if (v199(v259, 1, v228) != 1)
          {
            v200 = v192;
            v201 = v229;
            (*(v229 + 16))(v191, v259, v190);
            v202 = v228;
            if (v199(v191, 1, v228) == 1)
            {
              (*(v201 + 8))(v191, v190);
              v192 = v200;
            }

            else
            {
              (*(v200 + 32))(v232, v191, v202);
              v274 = *(*(*(v262 + 8) + 8) + 8);
              v209 = v260;
              sub_18A4A83D8();
              v210 = v261;
              (v227)(v261, v209, v202);
              sub_18A4A4E98();
              v211 = v200;
              v212 = *(v200 + 8);
              v213 = v209;
              v192 = v211;
              v212(v213, v202);
              sub_18A4A83E8();
              v212(v210, v202);
              v212(v232, v202);
            }
          }
        }

        v214 = v192;
        v215 = v249;
        v216 = sub_188F41B18(&v279, v249, v145, v146);
        (*(v214 + 24))(&v141[*(v215 + 44)], v243, v228, v216);
        v217 = v248;
        (*(v248 + 16))(v270, v141, v215);
        swift_storeEnumTagMultiPayload();
        (*(v217 + 8))(v141, v215);
        return (*(v229 + 8))(v259, v190);
      }

      sub_188AA7808(&v276);
      (*(v248 + 8))(v141, v249);
      v136 = v264;
    }
  }

  v147 = v254;
  v134(v254, v268, v136);
  v148 = v137(v147, 1, v138);
  v149 = v255;
  if (v148 == 1)
  {
    (*(v263 + 8))(v147, v136);
    goto LABEL_53;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v267 + 8))(v147, v138);
    goto LABEL_53;
  }

  (*(v250 + 32))(v247, v147, v251);
  sub_188AA72A8(v272, &v276);
  if (v278 == 3 && (v150 = vorrq_s8(vorrq_s8(*&v277[8], *&v277[40]), vorrq_s8(*&v277[24], *&v277[56])), !(*&vorr_s8(*v150.i8, *&vextq_s8(v150, v150, 8uLL)) | *v277 | *(&v276 + 1) | v276)) || (sub_188AA7808(&v276), sub_188AA72A8(v272, &v276), v278 == 3) && v276 == 1 && (v151 = vorrq_s8(vorrq_s8(*&v277[8], *&v277[40]), vorrq_s8(*&v277[24], *&v277[56])), !(*&vorr_s8(*v151.i8, *&vextq_s8(v151, v151, 8uLL)) | *v277 | *(&v276 + 1))))
  {
    sub_188AA7808(&v276);
    v152 = v247;
    (*(v230 + 24))(v247, v243, v228);
    v153 = v250;
    v154 = v251;
    (*(v250 + 16))(v270, v152, v251);
    swift_storeEnumTagMultiPayload();
    (*(v153 + 8))(v152, v154);
    return (*(v229 + 8))(v259, v269);
  }

  sub_188AA7808(&v276);
  v155 = v272;
  sub_188AA72A8(v272, &v276);
  if (v278)
  {
    sub_188AA7808(&v276);
    (*(v250 + 8))(v247, v251);
    v149 = v255;
LABEL_53:
    v134(v139, v268, v136);
    v156 = 1;
    if (v137(v139, 1, v138) == 1)
    {
      v157 = v263;
      v138 = v136;
      v158 = v270;
      v159 = v269;
      v160 = v229;
      v161 = v272;
      v162 = v228;
LABEL_65:
      (*(v157 + 8))(v139, v138);
      (v234)(v149, v156, 1, v162);
      sub_1890F0E24(v161, v274, v149, v243, v271, v158);
      v189 = *(v160 + 8);
      v189(v149, v159);
      return (v189)(v259, v159);
    }

    v163 = v246;
    (*(v267 + 16))(v246, v139, v138);
    v164 = swift_getEnumCaseMultiPayload();
    v159 = v269;
    v160 = v229;
    if (v164 > 1)
    {
      if (v164 != 2)
      {
        v183 = v250;
        v184 = v239;
        v185 = v163;
        v186 = v251;
        (*(v250 + 32))(v239, v185, v251);
        v187 = v245;
        v162 = v228;
        (v227)(v245, &v184[*(v186 + 36)], v228);
        v188 = v186;
        v172 = v187;
        v139 = v258;
        (*(v183 + 8))(v184, v188);
        goto LABEL_63;
      }

      v173 = v252;
      v174 = v237;
      v175 = v253;
      (*(v252 + 32))(v237, v163, v253);
      v172 = v245;
      sub_188FBAC58(v175, v245);
      (*(v173 + 8))(v174, v175);
    }

    else
    {
      if (!v164)
      {
        v165 = v248;
        v166 = v238;
        v167 = v163;
        v168 = v249;
        (*(v248 + 32))(v238, v167, v249);
        v169 = v245;
        v162 = v228;
        (v227)(v245, &v166[*(v168 + 48)], v228);
        v170 = v166;
        v139 = v258;
        v171 = v168;
        v172 = v169;
        (*(v165 + 8))(v170, v171);
LABEL_63:
        v158 = v270;
        v161 = v272;
        goto LABEL_64;
      }

      v176 = v241;
      v177 = v240;
      v178 = v163;
      v179 = v242;
      v180 = (*(v241 + 32))(v240, v178, v242);
      v181 = v245;
      sub_188FB5CFC(v180);
      v182 = v179;
      v172 = v181;
      (*(v176 + 8))(v177, v182);
    }

    v158 = v270;
    v161 = v272;
    v162 = v228;
LABEL_64:
    (*(v230 + 32))(v149, v172, v162);
    v156 = 0;
    v157 = v267;
    goto LABEL_65;
  }

  v203 = v251;
  v204 = v247;
  v205 = v265;
  v206 = v228;
  (v227)(v265, &v247[*(v251 + 36)], v228);
  (v234)(v205, 0, 1, v206);
  sub_1890F0E24(v155, v274, v205, v243, v271, v270);
  v207 = *(v229 + 8);
  v208 = v269;
  v207(v205, v269);
  (*(v250 + 8))(v204, v203);
  return (v207)(v259, v208);
}

uint64_t sub_1890F0BA0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 16);
  v6 = sub_18A4A7D38();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  (*(v7 + 16))(v9, v3 + *(a2 + 48), v6, v15);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  (*(v10 + 32))(v17, v9, v5);
  (*(v10 + 16))(v13, v17, v5);
  sub_18A4A4E98();
  sub_18A4A83E8();
  v19 = *(v10 + 8);
  v19(v13, v5);
  return (v19)(v17, v5);
}

uint64_t sub_1890F0E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v67 = a4;
  v59 = a3;
  v62 = a2;
  v64 = a1;
  v65 = a6;
  v7 = *(a5 + 16);
  v63 = sub_18A4A7D38();
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  v68 = *(a5 + 24);
  v14 = _s6SpringVMa(0, v7, v68, v13);
  v58 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v66 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v56 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v61 = &v56 - v30;
  sub_188AA72A8(v64, v69);
  if (v71)
  {
    if (v71 == 2)
    {
      v31 = *&v69[0];
      v32 = *(v66 + 16);
      v33 = BYTE8(v69[0]);
      v34 = v61;
      v32(v61, v62, v7);
      v32(v28, v67, v7);
      v35 = v28;
      v36 = v68;
      sub_188FBB008(v31, v34, v35, v33, v7, v68, v65);
      type metadata accessor for RunningInProcessAnimation(0, v7, v36, v37);
    }

    else
    {
      sub_188AA7808(v69);
      v45 = v66;
      (*(v66 + 16))(v22, v67, v7);
      v46 = v60;
      (*(v60 + 16))(v9, v59, v63);
      v47 = *(v45 + 48);
      if (v47(v9, 1, v7) == 1)
      {
        sub_18A4A8408();
        if (v47(v9, 1, v7) != 1)
        {
          (*(v46 + 8))(v9, v63);
        }
      }

      else
      {
        (*(v45 + 32))(v19, v9, v7);
      }

      v54 = v68;
      sub_188E6A004(v22, v19, v7, v68, v65);
      type metadata accessor for RunningInProcessAnimation(0, v7, v54, v55);
    }

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v57 = a5;
    v64 = v14;
    v73 = v69[2];
    v74 = v69[3];
    v75 = v69[4];
    v76 = v70;
    v72[0] = v69[0];
    v72[1] = v69[1];
    v38 = v66;
    v39 = *(v66 + 16);
    v40 = v61;
    v39(v61, v62, v7);
    v56 = v39;
    v39(v28, v67, v7);
    v41 = v68;
    sub_188F3D738(v72, v40, v28, v7, v68, v16);
    v42 = v60;
    v43 = v63;
    (*(v60 + 16))(v12, v59, v63);
    if ((*(v38 + 48))(v12, 1, v7) == 1)
    {
      (*(v42 + 8))(v12, v43);
      v44 = v64;
    }

    else
    {
      (*(v38 + 32))(v25, v12, v7);
      v44 = v64;
      (*(v38 + 40))(&v16[*(v64 + 48)], v25, v7);
    }

    v48 = v58;
    if ((*(&v73 + 1) & 0x8000000000000000) != 0)
    {
      v49 = v76;
      if (*(&v75 + 1) > 0.0)
      {
        sub_1890F0BA0(&v16[*(v44 + 56)], v57, *(&v75 + 1));
      }

      if (v49 > 0.0)
      {
        sub_18A4A83D8();
        v50 = v61;
        v56(v61, v28, v7);
        sub_18A4A4E98();
        v51 = *(v66 + 8);
        v51(v28, v7);
        v44 = v64;
        sub_18A4A83E8();
        v51(v50, v7);
        v41 = v68;
      }
    }

    (*(v48 + 16))(v65, v16, v44);
    type metadata accessor for RunningInProcessAnimation(0, v7, v41, v52);
    swift_storeEnumTagMultiPayload();
    return (*(v48 + 8))(v16, v44);
  }
}

id sub_1890F1664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_18A4A7258();
  v11[4] = a3;
  v11[5] = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_188DF2768;
  v11[3] = a4;
  v8 = _Block_copy(v11);
  v9 = [v6 initWithIdentifier:v7 lightSourceViewProvider:v8];

  _Block_release(v8);

  return v9;
}

id sub_1890F17EC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18A4A7258();
  v5[4] = sub_1890F18E0;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_188DF2768;
  v5[3] = &block_descriptor_3_4;
  v2 = _Block_copy(v5);
  v3 = [v0 initWithIdentifier:v1 lightSourceViewProvider:v2];

  _Block_release(v2);

  return v3;
}

id sub_1890F1944()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18A4A7258();
  v5[4] = sub_1890F1A38;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_188DF2768;
  v5[3] = &block_descriptor_112;
  v2 = _Block_copy(v5);
  v3 = [v0 initWithIdentifier:v1 lightSourceViewProvider:v2];

  _Block_release(v2);

  return v3;
}

char *sub_1890F1A9C(int *a1, double a2, double a3, double a4, double a5)
{
  v9 = *a1;
  type metadata accessor for _UIIntelligenceNoisyLightView();
  v11 = objc_allocWithZone(v10);
  v12 = sub_18912B9B8(v9 & 1, a2, a3, a4, a5);
  [*&v12[OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_noiseView] _setVisibilityExternallyManaged_];
  [*&v12[OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_lightView] _setVisibilityExternallyManaged_];
  return v12;
}

char *sub_1890F1B48(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18A64B810;
  *(v8 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.2 green:0.58 blue:0.905 alpha:1.0];
  *(v8 + 40) = [objc_allocWithZone(UIColor) initWithRed:0.69 green:0.415 blue:0.901 alpha:1.0];
  *(v8 + 48) = [objc_allocWithZone(UIColor) initWithRed:0.89 green:0.243 blue:0.352 alpha:1.0];
  *(v8 + 56) = [objc_allocWithZone(UIColor) initWithRed:0.929 green:0.588 blue:0.223 alpha:1.0];
  *&v20 = v8;
  *(&v20 + 1) = 60;
  v21 = xmmword_18A655620;
  v23 = 0;
  v24 = 0;
  v22 = 0x3FE0000000000000;
  LOBYTE(v25) = 0;
  v26 = 0x4040000000000000;
  LODWORD(v27) = 0;
  type metadata accessor for _UICloudChamber();
  v10 = objc_allocWithZone(v9);

  v11 = _UICloudChamber.init(frame:configuration:)(&v20, a1, a2, a3, a4);
  v12 = v11;
  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v19 = v11;
      v15 = sub_188E48DA0(0, v8);
    }

    else
    {
      v13 = *(v8 + 32);
      v14 = v11;
      v15 = v13;
    }

    v16 = v15;
  }

  else
  {
    v17 = v11;
    v16 = 0;
  }

  [v12 setBackgroundColor_];

  return v12;
}

unint64_t sub_1890F1D8C()
{
  result = qword_1EA93CB88;
  if (!qword_1EA93CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CB88);
  }

  return result;
}

unint64_t sub_1890F1DE0()
{
  result = qword_1EA93CB90;
  if (!qword_1EA93CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CB90);
  }

  return result;
}

unint64_t sub_1890F1E58()
{
  result = qword_1EA93CB98;
  if (!qword_1EA93CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CB98);
  }

  return result;
}

unint64_t sub_1890F1EB0()
{
  result = qword_1EA93CBA0;
  if (!qword_1EA93CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CBA0);
  }

  return result;
}

unint64_t sub_1890F1F08()
{
  result = qword_1EA93CBA8;
  if (!qword_1EA93CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CBA8);
  }

  return result;
}

uint64_t sub_1890F1F8C(uint64_t a1)
{
  v2 = sub_18A4A2D48();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_18A4A4F48();
}

uint64_t sub_1890F2054@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18A4A4F78();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1890F20AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18A4A2D68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = *MEMORY[0x1E6999C48];
  v8 = *(v3 + 104);
  v9 = v8(v20 - v6, v7, v2, v5);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v8(v20 - v6, v7, v2, v10);
  sub_18A4A31E8();
  v11 = type metadata accessor for DesignLibraryStepper(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v3 + 16))(v20 - v6, v20[1] + v13, v2, v12);
  sub_18A4A3208();
  sub_18A4A31F8();
  sub_18A4A31D8();
  sub_18A4A31C8();
  LOBYTE(v2) = dyld_program_sdk_at_least() ^ 1;
  KeyPath = swift_getKeyPath();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CCF0, &qword_18A666B18) + 36));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9394D8, &qword_18A666B20);
  sub_1890534C0(v15 + *(v16 + 28));
  *v15 = KeyPath;
  v17 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CD00, &qword_18A666B58);
  v19 = a1 + *(result + 36);
  *v19 = v17;
  *(v19 + 8) = v2;
  return result;
}

void sub_1890F2668()
{
  v1 = v0;
  v2 = type metadata accessor for DesignLibraryStepper(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 _shouldReverseLayoutDirection];
  *(v1 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_isRTL) = v6;
  v7 = *(v1 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed);
  v8 = *(v1 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled);
  v9 = *(v1 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled);
  v10 = sub_18A4A2D68();
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v7 & 1) != 0 || *(v1 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed) == 1)
  {
    v15 = MEMORY[0x1E6999C50];
  }

  else
  {
    v15 = MEMORY[0x1E6999C48];
  }

  (*(v11 + 104))(v14, *v15, v10, v12);
  *v5 = v7;
  v5[1] = v8;
  v5[2] = v9;
  (*(v11 + 32))(&v5[*(v2 + 28)], v14, v10);
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CD10, &unk_18A666B60));
  v17 = sub_1890F8FB4(v5);
  sub_1890F3FD8(v17);
}

id sub_1890F2860(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl] = 0;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_isEnabled] = 1;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_value] = 0;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minimumValue] = 0;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_maximumValue] = 0x4024000000000000;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepValue] = 0x3FF0000000000000;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_isContinuous] = 0;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_wraps] = 0;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_autorepeat] = 1;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_isRTL] = 0;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView] = 0;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed] = 0;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed] = 0;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled] = 1;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled] = 1;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer] = 0;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_timerDelay] = 0x3FE0000000000000;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_fastTimerDelay] = 0x3FB999999999999ALL;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_superFastTimerDelay] = 0x3FA999999999999ALL;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_fastStartRepeatCount] = 5;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_superFastStartRepeatCount] = 20;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount] = 0;
  v3 = xmmword_1EA93CBB0;
  type metadata accessor for UIStepperDesignLibraryVisualElement();
  v7.receiver = v2;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, v3);
  sub_1890F2668();

  return v5;
}

id sub_1890F2A34(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl] = 0;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_isEnabled] = 1;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_value] = 0;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minimumValue] = 0;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_maximumValue] = 0x4024000000000000;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepValue] = 0x3FF0000000000000;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_isContinuous] = 0;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_wraps] = 0;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_autorepeat] = 1;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_isRTL] = 0;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView] = 0;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed] = 0;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed] = 0;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled] = 1;
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled] = 1;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer] = 0;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_timerDelay] = 0x3FE0000000000000;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_fastTimerDelay] = 0x3FB999999999999ALL;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_superFastTimerDelay] = 0x3FA999999999999ALL;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_fastStartRepeatCount] = 5;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_superFastStartRepeatCount] = 20;
  *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount] = 0;
  v4 = type metadata accessor for UIStepperDesignLibraryVisualElement();
  v10.receiver = v2;
  v10.super_class = v5;
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1, v4);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1890F2668();
  }

  return v7;
}

double sub_1890F2C00()
{
  v1 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled;
  v2 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_value);
  v3 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepValue);
  if (*(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minimumValue) <= v2 - v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_wraps);
  }

  v5 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled);
  v6 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled);
  *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled) = v4;
  result = v2 + v3;
  if (result <= *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_maximumValue))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_wraps);
  }

  *(v0 + v1) = v8;
  if (v5 != v4 || v6 != v8)
  {
    return sub_1890F2CA4();
  }

  return result;
}

double sub_1890F2CA4()
{
  v1 = v0;
  v2 = type metadata accessor for DesignLibraryStepper(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27[-v6];
  v30 = 0;
  sub_18A4A4468();
  v8 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed);
    v28 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled);
    v10 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled);
    v11 = sub_18A4A2D68();
    v29 = v27;
    v12 = *(v11 - 8);
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
    v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    if ((v9 & 1) != 0 || *(v1 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed) == 1)
    {
      v16 = MEMORY[0x1E6999C50];
    }

    else
    {
      v16 = MEMORY[0x1E6999C48];
    }

    (*(v12 + 104))(v15, *v16, v11, v13);
    *v7 = v9;
    v7[1] = v28;
    v7[2] = v10;
    (*(v12 + 32))(&v7[*(v2 + 28)], v15, v11);
    sub_1890F3EB4(v7, v4);
    v18 = MEMORY[0x1E69E7D40];
    v19 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x68);
    swift_beginAccess();
    v20 = v8;
    sub_1890F3F18(v4, v8 + v19);
    swift_endAccess();
    v21 = *(v20 + *((*v18 & *v20) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = v21;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v25 = v21;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_188A34360(&unk_1EA93CF00, &qword_1EA93CD10, &unk_18A666B60, &unk_18A64C020);
      v26 = v20;
      sub_18A4A4708();
    }

    sub_18A4A4668();

    sub_1890F3F7C(v7);
  }

  else
  {
  }

  return result;
}

void sub_1890F30BC()
{
  if (*(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_autorepeat) == 1)
  {
    v1 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_updateCount_ selector:0 userInfo:1 repeats:0.5];
    v2 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer);
    *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer) = v1;
  }

  *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount) = 0;
}

void sub_1890F313C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18A4A2968();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188A55598(a1, v30);
  sub_1890F3E68();
  if (swift_dynamicCast())
  {
    v8 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer);
    if (v8)
    {
      v9 = v29;
      v10 = v8;
      LODWORD(v8) = sub_18A4A7C88();
    }

    else
    {
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusEnabled) == 1)
  {
    v11 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed);
  }

  else
  {
    v11 = 0;
  }

  if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusEnabled) == 1)
  {
    v12 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed);
    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v8)
    {
      if (!v11)
      {
        goto LABEL_36;
      }

      v12 = 0;
      v13 = (v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_value);
      v14 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_value);
      goto LABEL_19;
    }

    v12 = 0;
  }

  if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount))
  {
    goto LABEL_31;
  }

LABEL_17:
  if (((v11 | v12) & 1) == 0)
  {
    goto LABEL_36;
  }

  v13 = (v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_value);
  v14 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_value);
  if (!v11)
  {
    v15 = -*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepValue);
    v12 = 1;
    goto LABEL_21;
  }

LABEL_19:
  v15 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepValue);
LABEL_21:
  v16 = v14 + v15;
  if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_wraps) == 1)
  {
    if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_maximumValue) < v16)
    {
      v16 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minimumValue);
    }

    if (v16 < *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minimumValue))
    {
      v16 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_maximumValue);
    }
  }

  *v13 = v16;
  v17 = sub_1890F2C00();
  v18 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl;
  v19 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl);
  if (v19)
  {
    [v19 visualElementDidSetValue_];
  }

  if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_isContinuous) == 1)
  {
    v20 = *(v2 + v18);
    if (v20)
    {
      [v20 visualElementSendValueChangedEvent_];
    }
  }

LABEL_31:
  if (((v11 | v12) & 1) == 0)
  {
LABEL_36:
    v12 = 0;
    if (*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount) >= 1)
    {
      *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount) = 1;
    }

    if ((v8 & v11 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v21 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    return;
  }

  *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatCount) = v23;
  if (v8)
  {
    if ((v11 & 1) == 0)
    {
      v12 = 1;
    }

LABEL_39:
    v24 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer);
    if (v24)
    {
      v25 = v24;
      sub_18A4A2958();
      v26 = sub_18A4A2948();
      (*(v5 + 8))(v7, v4);
      [v25 setFireDate_];
    }

    goto LABEL_42;
  }

  v12 |= v11 ^ 1;
LABEL_42:
  if ((*(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_isContinuous) | v8) & 1) == 0 && ((v11 | v12))
  {
    v27 = *(v2 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl);
    if (v27)
    {
      [v27 visualElementSendValueChangedEvent_];
    }
  }
}

double sub_1890F374C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed;
  v8 = v3[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed];
  v9 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed;
  v10 = v3[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed];
  [v3 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v3 _touchInsets];
  v23 = UIRectInset(v12, v14, v16, v18, v19, v22, v21, v20);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = _UIControlMostlyInsideEdgeInsets();
  v46.origin.x = UIRectInset(v23, v25, v27, v29, v30, v33, v32, v31);
  v43.x = a2;
  v43.y = a3;
  if (CGRectContainsPoint(v46, v43) || (v34 = [v3 pointInside:a1 withEvent:{a2, a3}]) != 0)
  {
    sub_1890F398C(MEMORY[0x1EEE86B98], &qword_1EA93CD20, MEMORY[0x1EEE86B90], MEMORY[0x1EEE86B88], &v38);
    if (v39)
    {
      v36 = 0;
    }

    else
    {
      v44.x = a2;
      v44.y = a3;
      v36 = CGRectContainsPoint(v38, v44);
    }

    v3[v9] = v36;
    sub_1890F398C(MEMORY[0x1EEE86B78], &qword_1EA93CD18, MEMORY[0x1EEE86B80], MEMORY[0x1EEE86B70], &v40);
    if (v41)
    {
      LOBYTE(v34) = 0;
      v37 = 0;
    }

    else
    {
      v45.x = a2;
      v45.y = a3;
      v34 = CGRectContainsPoint(v40, v45);
      v37 = v34;
    }
  }

  else
  {
    v37 = 0;
    v3[v9] = 0;
  }

  v3[v7] = v34;
  if (v8 != v37 || ((v10 ^ v3[v9]) & 1) != 0)
  {

    return sub_1890F2CA4();
  }

  return result;
}

void sub_1890F398C(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  a1(0);
  v10 = *(v5 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView);
  v11 = 0uLL;
  if (v10)
  {
    v12 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x60);
    v13 = *(v10 + v12);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = v10;
      v17 = v13;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v20 = v10;
      v21 = v13;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_188A34360(&unk_1EA93CF00, &qword_1EA93CD10, &unk_18A666B60, &unk_18A64C020);
      v22 = v10;
      sub_18A4A4708();
    }

    sub_1890F437C(a2, a3, a4);
    sub_18A4A4718();

    if (v29)
    {
      v23 = *(v10 + v12);
      swift_beginAccess();
      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v25 = v24;
        v26 = v23;
      }

      else
      {
        swift_unknownObjectWeakAssign();
        v27 = v23;
      }

      if (sub_18A4A46F8())
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_188A34360(&unk_1EA93CF00, &qword_1EA93CD10, &unk_18A666B60, &unk_18A64C020);
        v28 = v10;
        sub_18A4A4708();
      }

      type metadata accessor for CGRect(0);
      sub_18A4A46B8();

      v18 = 0;
      v11 = v29;
      v19 = v30;
    }

    else
    {

      v18 = 1;
      v19 = 0uLL;
      v11 = 0uLL;
    }
  }

  else
  {
    v18 = 1;
    v19 = 0uLL;
  }

  *a5 = v11;
  *(a5 + 16) = v19;
  *(a5 + 32) = v18;
}

id sub_1890F3CA0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UIStepperDesignLibraryVisualElement();
  v6.receiver = v2;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_dealloc, v3);
}

uint64_t type metadata accessor for DesignLibraryStepper(uint64_t a1)
{
  result = qword_1EA93CCE0;
  if (!qword_1EA93CCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1890F3DC8(uint64_t a1)
{
  result = sub_18A4A2D68();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1890F3E68()
{
  result = qword_1EA93CD28;
  if (!qword_1EA93CD28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93CD28);
  }

  return result;
}

uint64_t sub_1890F3EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignLibraryStepper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890F3F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignLibraryStepper(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890F3F7C(uint64_t a1)
{
  v2 = type metadata accessor for DesignLibraryStepper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1890F3FD8(void *a1)
{
  v3 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView;
  v4 = *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView];
  *&v1[OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView] = a1;
  v9 = v4;
  if (v4)
  {
    v5 = a1;
    [v9 removeFromSuperview];
    a1 = *&v1[v3];
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  if (a1)
  {
LABEL_3:
    v6 = a1;
    v7 = [v6 layer];
    [v1 _currentScreenScale];
    [v7 setContentsScale_];

    [v6 setUserInteractionEnabled_];
    [v1 addSubview_];
  }

LABEL_4:
  [v1 setNeedsLayout];
}

void sub_1890F40E4()
{
  type metadata accessor for UIStepperDesignLibraryVisualElement();
  v9[3] = v1;
  v9[0] = v0;
  v2 = v0;
  sub_1890F313C(v9);
  v3 = __swift_destroy_boxed_opaque_existential_0Tm(v9);
  v4 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed;
  v5 = v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed];
  v6 = v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed];
  v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed] = 0;
  v2[v4] = 0;
  if ((v5 & 1) != 0 || v6)
  {
    v3 = sub_1890F2CA4();
  }

  v7 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer;
  [*&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer] invalidate];
  v8 = *&v2[v7];
  *&v2[v7] = 0;
}

void sub_1890F417C()
{
  v1 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed;
  v2 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minusPressed);
  v3 = *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed);
  *(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_plusPressed) = 0;
  *(v0 + v1) = 0;
  if ((v2 & 1) != 0 || v3)
  {
    sub_1890F2CA4();
  }

  v4 = OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer;
  [*(v0 + OBJC_IVAR___UIStepperDesignLibraryVisualElement_repeatTimer) invalidate];
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;
}

unint64_t sub_1890F41F4()
{
  result = qword_1EA93CD30;
  if (!qword_1EA93CD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93CD00, &qword_18A666B58);
    sub_1890F42AC();
    sub_188A34360(&unk_1EA92F7F0, &qword_1EA939510, qword_18A65A1B8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CD30);
  }

  return result;
}

unint64_t sub_1890F42AC()
{
  result = qword_1EA93CD38;
  if (!qword_1EA93CD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93CCF0, &qword_18A666B18);
    sub_1890F437C(&qword_1EA93CD40, MEMORY[0x1EEE86BA8], MEMORY[0x1EEE86BA0]);
    sub_188A34360(&qword_1EA92F800, &qword_1EA9394D8, &qword_18A666B20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CD38);
  }

  return result;
}

uint64_t sub_1890F437C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t UIViewController._intelligenceCollectContent(in:collector:)(double a1)
{
  v1 = sub_18A4A3BA8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x1E69DBBC0], v1, v3);
  sub_18A4A3418();
  return (*(v2 + 8))(v5, v1);
}

id sub_1890F4618(uint64_t a1)
{
  v2 = type metadata accessor for _UIDebouncingAnimatableFloat();
  v5.receiver = v1;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc, v2);
}

double sub_1890F46F8()
{
  result = *(v0 + 8) * 2.8;
  if (*(v0 + 16) != 1)
  {
    return 0.0;
  }

  return result;
}

id sub_1890F4720()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  type metadata accessor for _UIShadowEdgeMask();
  v4 = v3;
  v5 = objc_allocWithZone(v3);
  *&v5[OBJC_IVAR____TtC5UIKit17_UIShadowEdgeMask_radius] = v1;
  *&v5[OBJC_IVAR____TtC5UIKit17_UIShadowEdgeMask_region] = v2;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

id sub_1890F47A8()
{
  __swift_project_boxed_opaque_existential_0((v0 + 8), *(v0 + 32));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
  [v3 setMatchesPosition_];
  [v3 setMatchesTransform_];
  [v3 setForwardsClientHitTestingToSourceView_];

  return v3;
}

double sub_1890F4858()
{
  result = 0.0;
  if (*(v0 + 56) == 1)
  {
    return *(v0 + 48) * 2.8;
  }

  return result;
}

id sub_1890F4880()
{
  __swift_project_boxed_opaque_existential_0(v0 + 1, *(v0 + 4));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 7);
    v4 = v0[6];
    type metadata accessor for _UIBlurredEdgeMask();
    v6 = objc_allocWithZone(v5);
    return sub_188ECACFC(v3, v2, v4);
  }

  return result;
}

uint64_t sub_1890F48FC(void *a1)
{
  type metadata accessor for _UISurfaceLightEffectEntry();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = v1 + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration;
    v5 = result + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration;
    if (*(v1 + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration + 88) == *(result + OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration + 88))
    {
      sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
      v6 = a1;
      if (sub_18A4A7C88() & 1) != 0 && (sub_1890F4EE0(v4 + 8, v5 + 8))
      {
        v7 = sub_1890F4EE0(v4 + 48, v5 + 48);

        if (v7)
        {
          return 1;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

id sub_1890F4A74(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1890F4B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a1;
  v6 = sub_18A4A7D38();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188A3F29C(a2, v19, &qword_1EA934050, qword_18A64CA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050, qword_18A64CA10);
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v9, 0, 1, a3);
    (*(v10 + 32))(v13, v9, a3);
    v16 = sub_18A4A7248();
    (*(v10 + 8))(v13, a3);
  }

  else
  {
    v15(v9, 1, 1, a3);
    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1890F4D74()
{
  sub_18A4A8888();
  sub_188DF18A8(v1);
  return sub_18A4A88E8();
}

uint64_t sub_1890F4DB8()
{
  sub_18A4A8888();
  sub_188DF18A8(v1);
  return sub_18A4A88E8();
}

BOOL sub_1890F4DF4(void *a1, void *a2)
{
  result = 0;
  if (a1[11] == a2[11])
  {
    sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
    if (sub_18A4A7C88() & 1) != 0 && (sub_1890F4EE0((a1 + 1), (a2 + 1)) & 1) != 0 && (sub_1890F4EE0((a1 + 6), (a2 + 6)))
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1890F4E8C()
{
  result = qword_1EA93CD70;
  if (!qword_1EA93CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CD70);
  }

  return result;
}

uint64_t sub_1890F4EE0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24) && !*(a2 + 24))
  {
    v9 = 1;
    return v9 & 1;
  }

  sub_188A3F29C(a1, &v13, &qword_1EA93A978, &qword_18A666DE0);
  if (!v14)
  {
    sub_188A3F5FC(&v13, &qword_1EA93A978, &qword_18A666DE0);
LABEL_8:
    v9 = 0;
    return v9 & 1;
  }

  sub_188A5EBAC(&v13, v15);
  sub_188A3F29C(a2, &v11, &qword_1EA93A978, &qword_18A666DE0);
  if (!v12)
  {
    sub_188A3F5FC(&v11, &qword_1EA93A978, &qword_18A666DE0);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    goto LABEL_8;
  }

  sub_188A5EBAC(&v11, &v13);
  v3 = v16;
  v4 = v17;
  v5 = __swift_project_boxed_opaque_existential_0(v15, v16);
  v6 = v14;
  v7 = __swift_project_boxed_opaque_existential_0(&v13, v14);
  v12 = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v7, v6);
  v9 = sub_1890F4B38(v5, &v11, v3, v4);
  sub_188A3F5FC(&v11, &qword_1EA934050, qword_18A64CA10);
  __swift_destroy_boxed_opaque_existential_0Tm(&v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return v9 & 1;
}

uint64_t getEnumTagSinglePayload for _UILightEffectContainerEdgeSurface(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _UILightEffectContainerEdgeSurface(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1890F5120(uint64_t a1)
{
  sub_188C85D28(a1, &v6);
  if (v7)
  {
    sub_188A55538(&v6, &v8);
    *&v6 = 60;
    *(&v6 + 1) = 0xE100000000000000;
    __swift_project_boxed_opaque_existential_0(&v8, v9);
    sub_18A4A86A8();
    ObjCClassFromObject = swift_getObjCClassFromObject();
    swift_unknownObjectRelease();
    class_getName(ObjCClassFromObject);
    v2 = sub_18A4A7398();
    MEMORY[0x18CFE22D0](v2);

    MEMORY[0x18CFE22D0](8250, 0xE200000000000000);
    __swift_project_boxed_opaque_existential_0(&v8, v9);
    sub_18A4A86A8();
    sub_188F9257C();
    swift_unknownObjectRetain();
    v3 = sub_18A4A7418();
    MEMORY[0x18CFE22D0](v3);
    swift_unknownObjectRelease_n();

    MEMORY[0x18CFE22D0](30768, 0xE200000000000000);

    MEMORY[0x18CFE22D0](62, 0xE100000000000000);
    v4 = v6;
    __swift_destroy_boxed_opaque_existential_0Tm(&v8);
  }

  else
  {
    sub_188A553EC(&v6);
    return 0x296C696E28;
  }

  return v4;
}

id _UIDebugTypeName(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  sub_18A4A86A8();
  ObjCClassFromObject = swift_getObjCClassFromObject();
  swift_unknownObjectRelease();
  class_getName(ObjCClassFromObject);
  sub_18A4A7398();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  v2 = sub_18A4A7258();

  return v2;
}

id _UIBriefDescription(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  sub_1890F5120(v3);
  sub_188A553EC(v3);
  v1 = sub_18A4A7258();

  return v1;
}

void sub_1890F53E0(char a1, void *a2)
{
  v3 = v2;
  v19 = a1 & 1;
  swift_beginAccess();
  v5 = *(v2 + 48);
  if (*(v5 + 16) && (v6 = sub_188E906F4(), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    v9 = *(v3 + 16);
    if (v9)
    {
      v10 = *(v3 + 24);

      sub_188A52E38(v9, v10);
      v11 = v9(v3, &v19);
      sub_188A55B8C(v9, v10);
    }

    else
    {

      v11 = 0;
    }

    swift_beginAccess();
    if (*(*(v8 + 16) + 16) && (v12 = [objc_opt_self() diffFromSettings:a2 toSettings:v11]) != 0)
    {
      v13 = v12;
      v14 = swift_allocObject();
      v14[2] = v8;
      v14[3] = a2;
      v14[4] = v11;
      v18[4] = sub_1890F6C88;
      v18[5] = v14;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 1107296256;
      v18[2] = sub_1890F56BC;
      v18[3] = &block_descriptor_52;
      v15 = _Block_copy(v18);

      v16 = a2;
      v17 = v11;

      [v13 inspectChangesWithBlock_];

      _Block_release(v15);
    }

    else
    {
    }
  }

  else
  {
    swift_endAccess();
  }
}

double sub_1890F55EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a3 + 16);
  if (*(v10 + 16))
  {
    v11 = sub_188C4585C(a1);
    if (v12)
    {
      sub_188A53994(*(v10 + 56) + 40 * v11, v15);
      sub_188A8F66C(v15, v16);
      v13 = v17;
      v14 = v18;
      __swift_project_boxed_opaque_existential_0(v16, v17);
      (*(v14 + 16))(a4, a5, v13, v14);
      return __swift_destroy_boxed_opaque_existential_0Tm(v16);
    }
  }

  return result;
}

double sub_1890F56BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

uint64_t sub_1890F5720()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9395A0, &unk_18A666F00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  [objc_opt_self() extensionForProtocol_];
  *(v0 + 32) = swift_getObjCClassMetadata();
  return v0;
}

uint64_t _sSo32_UISceneKeyValueStorageExtensionC5UIKitE14hostComponentsSayyXlXpGSgyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9395A0, &unk_18A666F00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  type metadata accessor for _UISceneKeyValueStorageComponent();
  *(v0 + 32) = v1;
  return v0;
}

id sub_1890F5818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9395A0, &unk_18A666F00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  type metadata accessor for _UISceneKeyValueStorageComponent();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9395B0, &qword_18A666FB0);
  v2 = sub_18A4A7518();

  return v2;
}

_UISceneKeyValueStorageExtension __swiftcall _UISceneKeyValueStorageExtension.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void *sub_1890F5968()
{
  v1 = OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___controller;
  if (*(v0 + OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___controller))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___controller);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CD98, &qword_18A666FA8);
    v2 = swift_allocObject();
    v5 = MEMORY[0x1E69E7CC8];
    v2[6] = MEMORY[0x1E69E7CC8];
    v2[7] = v5;
    v2[2] = sub_1890F6C70;
    v2[3] = v3;
    v2[4] = sub_1890F6C78;
    v2[5] = v4;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1890F5A6C(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = sub_1890F5C20(v3);

  return v6;
}

void sub_1890F5AD8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1890F5D28(v5, a3);
  }
}

uint64_t sub_1890F5B68(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    sub_1890F5968();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CDA0, &qword_18A666FB8);
    v5 = swift_allocObject();
    swift_weakInit();
    *(v5 + 16) = a2;
    swift_weakAssign();

    *(v2 + v3) = v5;
  }

  return v5;
}

id sub_1890F5C20(char a1)
{
  result = [v1 scene];
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    v4 = [result clientSettings];
    swift_unknownObjectRelease();
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v4 = [result settings];
    swift_unknownObjectRelease();
  }

  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = [v6 _uiTypedKeyStorage];
    swift_unknownObjectRelease_n();
    return v8;
  }

  else
  {

    return 0;
  }
}

void sub_1890F5D28(char a1, uint64_t isEscapingClosureAtFileLocation)
{
  if (a1)
  {
    v4 = [v2 clientScene];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v2 = swift_allocObject();
    v2[2] = isEscapingClosureAtFileLocation;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1890F6D08;
    *(v6 + 24) = v2;
    v22 = sub_188E36B9C;
    v23 = v6;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_188FDF218;
    v21 = &block_descriptor_24_3;
    v7 = _Block_copy(&v18);
    v8 = isEscapingClosureAtFileLocation;
    v9 = v5;

    [v9 updateClientSettingsWithBlock_];

    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v10 = [v2 hostScene];
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = isEscapingClosureAtFileLocation;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1890F6B54;
    *(v13 + 24) = v12;
    v22 = sub_188A86D18;
    v23 = v13;
    v18 = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_188FDF218;
    v21 = &block_descriptor_33_3;
    v14 = _Block_copy(&v18);
    v15 = v11;
    v16 = isEscapingClosureAtFileLocation;

    [v15 updateSettingsWithBlock_];

    _Block_release(v14);
    v17 = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }
  }
}

void sub_1890F5FFC(void *a1, void *a2)
{
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 _uiTypedKeyStorage];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1890F6B70(a2);
    }

    else if ([a2 isEmpty])
    {
      v9 = 0;
    }

    else
    {
      v10 = [objc_allocWithZone(MEMORY[0x1E698E700]) init];
      [a2 applyToSettings_];
      [v10 copy];
      sub_18A4A7DE8();

      swift_unknownObjectRelease();
      sub_188A34624(0, &qword_1EA930800, 0x1E698E768);
      if (swift_dynamicCast())
      {
        v9 = v11;
      }

      else
      {
        v9 = 0;
      }
    }

    [v5 set:v9 uiTypedKeyStorage:?];
  }
}

void sub_1890F616C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_1890F6560(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___controller] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___hostInterface] = 0;
  *&v1[OBJC_IVAR____TtC5UIKit32_UISceneKeyValueStorageComponent____lazy_storage___clientInterface] = 0;
  v3 = type metadata accessor for _UISceneKeyValueStorageComponent();
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithScene_, a1, v3);
  swift_unknownObjectRelease();
  if (v5)
  {
  }

  return v5;
}

id sub_1890F6624()
{
  v1 = type metadata accessor for _UISceneKeyValueStorageComponent();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

void sub_1890F66B4(uint64_t a1, uint64_t a2)
{
  sub_188A34624(0, &qword_1EA931250, 0x1E699FC78);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1890F6B24;
  *(v6 + 24) = v5;
  v9[4] = sub_1890F6B2C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1890F697C;
  v9[3] = &block_descriptor_114;
  v7 = _Block_copy(v9);

  [v2 inspect_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1890F6820(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(id, id))
{
  if (a3)
  {
    v16 = a3;
    if ([v16 containsProperty_])
    {
      v8 = swift_dynamicCastObjCProtocolConditional();
      if (v8)
      {
        v9 = v8;
        v10 = swift_dynamicCastObjCProtocolConditional();
        if (v10)
        {
          v11 = v10;
          v12 = a2;
          v13 = a1;
          v14 = [v9 _uiTypedKeyStorage];
          v15 = [v11 _uiTypedKeyStorage];
          a5(v14, v15);

          return;
        }
      }
    }
  }
}

void sub_1890F697C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + 32);
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v8(v12, v9, a4, a5);
}

void sub_1890F6A20(void *a1, uint64_t a2, const void *a3)
{
  sub_188A34624(0, &qword_1EA931250, 0x1E699FC78);
  v5 = _Block_copy(a3);
  v7[2] = v5;
  v6 = a1;
  sub_1890F66B4(sub_1890F6B0C, v7);
  _Block_release(v5);
}

unint64_t sub_1890F6AB8()
{
  result = qword_1EA92FEF8;
  if (!qword_1EA92FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FEF8);
  }

  return result;
}

void *sub_1890F6B70(void *a1)
{
  [v1 mutableCopy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA92FBF0, 0x1E698E700);
  swift_dynamicCast();
  [a1 applyToSettings_];
  [v4 copy];
  sub_18A4A7DE8();

  swift_unknownObjectRelease();
  sub_188A34624(0, &qword_1EA930800, 0x1E698E768);
  swift_dynamicCast();
  return v4;
}

double sub_1890F6C9C(void *a1, uint64_t a2, char a3)
{
  sub_1890F5968();
  sub_1890F53E0(a3, a1);

  return result;
}

_UIViewInProcessAnimationManager __swiftcall _UIViewInProcessAnimationManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for _UIViewInProcessAnimationManager()
{
  result = qword_1EA93CDC0;
  if (!qword_1EA93CDC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93CDC0);
  }

  return result;
}

uint64_t sub_1890F6EC4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1890F6F20(void *a1)
{
  v2 = *__swift_project_boxed_opaque_existential_0(a1, a1[3]);

  return sub_1890F703C(v2, v1);
}

double sub_1890F703C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InProcessAnimationManager();
  v29[3] = v4;
  v29[4] = &off_1EFAF6BF8;
  v29[0] = a1;
  v5 = *(a2 + 16);
  sub_188A53994(v29, v28);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v28, v28[3]);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9, v7);
  v11 = *v9;
  v26 = v4;
  v27 = &off_1EFAF6BF8;
  v25[0] = v11;
  type metadata accessor for ManagerShim();
  v13 = v12;
  v14 = objc_allocWithZone(v12);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = *v18;
  v24[3] = v4;
  v24[4] = &off_1EFAF6BF8;
  v24[0] = v20;
  sub_188A53994(v24, v14 + OBJC_IVAR____TtC5UIKitP33_3F2359D4CD32AF8D101770CCFE86694711ManagerShim_implementation);
  v23.receiver = v14;
  v23.super_class = v13;

  v21 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  [v5 startAdvancingAnimationManager_];

  return __swift_destroy_boxed_opaque_existential_0Tm(v29);
}

double sub_1890F7280(char a1)
{
  LOBYTE(v1) = a1;
  byte_1EA93CDB0 = a1;
  if (qword_1ED48EFD0 != -1)
  {
LABEL_20:
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EA9951B0;
  v3 = 1 << *(qword_1EA9951B0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(qword_1EA9951B0 + 64);
  v6 = (v3 + 63) >> 6;
  if (v1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 256;
  }

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = *(v10 + 16);

    os_unfair_lock_lock((v11 + 20));
    *(v11 + 16) = v7;
    os_unfair_lock_unlock((v11 + 20));
    v1 = *(v10 + 280);
    sub_18A4A7A78();
    if (v14)
    {
      v1 = *(v10 + 16);
      os_unfair_lock_lock((v1 + 20));
      v12 = *(v1 + 16);
      if (v12 != 2)
      {
        *(v1 + 18) = v12 & 1;
        *(v1 + 19) = HIBYTE(v12) & 1;
        *(v1 + 16) = 2;
      }

      os_unfair_lock_unlock((v1 + 20));
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1890F7AC0()
{
  if (qword_1ED48EFD0 != -1)
  {
LABEL_15:
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EA9951B0;
  v1 = 1 << *(qword_1EA9951B0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(qword_1EA9951B0 + 64);
  v4 = (v1 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v5 = 0;
  do
  {
    if (!v3)
    {
      while (1)
      {
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v6 >= v4)
        {
          v7 = 1;
          goto LABEL_13;
        }

        v3 = *(v0 + 64 + 8 * v6);
        ++v5;
        if (v3)
        {
          v5 = v6;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

LABEL_10:
    v3 &= v3 - 1;

    sub_18A4A7A78();
  }

  while ((v9 & 1) != 0);
  v7 = 0;
LABEL_13:

  return v7;
}

void sub_1890F806C(char a1)
{
  if (qword_1ED48EFD0 != -1)
  {
LABEL_14:
    swift_once();
  }

  swift_beginAccess();
  v2 = 0;
  v3 = qword_1EA9951B0;
  v4 = 1 << *(qword_1EA9951B0 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = qword_1EA9951B0 + 64;
  v7 = v5 & *(qword_1EA9951B0 + 64);
  v8 = (v4 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = v2;
LABEL_10:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *(*(*(v3 + 56) + ((v9 << 9) | (8 * v10))) + 24) = a1 & 1;
      if (!v7)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v6 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_10;
    }
  }
}

void *sub_1890F8190()
{
  v1 = v0;
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    sub_1890FA7D8();
    sub_18A4A4678();
    v17[0] = 0;
    v17[1] = 0;
    v3 = objc_allocWithZone(type metadata accessor for UIHostingViewBase(0));

    v5 = UIHostingViewBase.init(viewGraph:configuration:)(v4, v17);
    v6 = MEMORY[0x1E69E7D40];
    *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60)) = v5;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344A8, &unk_18A64C130);
    v18.receiver = v1;
    v18.super_class = v7;
    v8 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v9 = *(v8 + *((*v6 & *v8) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v8;
      v13 = v9;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v14 = v8;
      v15 = v9;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&qword_1EA93CF50, &qword_1EA9344A8, &unk_18A64C130);
      v16 = v8;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1890F8428(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    sub_1890FA784();
    sub_18A4A4678();
    v10 = MEMORY[0x1E69E7D40];
    v11 = v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x68);
    *v11 = a1;
    v11[8] = a2;
    *(v11 + 2) = a3;
    *(v11 + 3) = a4;
    v24[0] = 0;
    v24[1] = 0;
    v12 = objc_allocWithZone(type metadata accessor for UIHostingViewBase(0));

    *(v4 + *((*v10 & *v4) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v13, v24);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF30, &qword_18A656400);
    v25.receiver = v4;
    v25.super_class = v14;
    v15 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v16 = *(v15 + *((*v10 & *v15) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = v15;
      v20 = v16;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v21 = v15;
      v22 = v16;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&qword_1EA930310, &unk_1EA93CF30, &qword_18A656400);
      v23 = v15;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1890F86FC(uint64_t a1)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    type metadata accessor for DesignLibrarySwitch(0);
    sub_1890FA674(&qword_1EA92F9E0, type metadata accessor for DesignLibrarySwitch, &unk_18A65A0CC);
    sub_18A4A4678();
    v4 = MEMORY[0x1E69E7D40];
    sub_1890FA6BC(a1, v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68), type metadata accessor for DesignLibrarySwitch);
    v17[0] = 0;
    v17[1] = 0;
    v5 = objc_allocWithZone(type metadata accessor for UIHostingViewBase(0));

    *(v1 + *((*v4 & *v1) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v6, v17);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9394F8, &qword_18A65A1A0);
    v18.receiver = v1;
    v18.super_class = v7;
    v8 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v9 = *(v8 + *((*v4 & *v8) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v8;
      v13 = v9;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v14 = v8;
      v15 = v9;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&unk_1EA939500, &qword_1EA9394F8, &qword_18A65A1A0);
      v16 = v8;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    sub_1890FA724(a1, type metadata accessor for DesignLibrarySwitch);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1890F8A2C(uint64_t a1)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    sub_1890FA620();
    sub_18A4A4678();
    v4 = MEMORY[0x1E69E7D40];
    *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68)) = a1;
    v17[0] = 0;
    v17[1] = 0;
    v5 = objc_allocWithZone(type metadata accessor for UIHostingViewBase(0));

    *(v1 + *((*v4 & *v1) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v6, v17);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF20, &unk_18A6670F0);
    v18.receiver = v1;
    v18.super_class = v7;
    v8 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v9 = *(v8 + *((*v4 & *v8) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v8;
      v13 = v9;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v14 = v8;
      v15 = v9;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&qword_1EA93BB60, &unk_1EA93CF20, &unk_18A6670F0);
      v16 = v8;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *sub_1890F8CE8(_OWORD *a1)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    sub_1890FA5CC();
    sub_18A4A4678();
    v4 = MEMORY[0x1E69E7D40];
    v5 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68));
    v6 = a1[1];
    *v5 = *a1;
    v5[1] = v6;
    v5[2] = a1[2];
    v19[0] = 0;
    v19[1] = 0;
    v7 = objc_allocWithZone(type metadata accessor for UIHostingViewBase(0));

    *(v1 + *((*v4 & *v1) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v8, v19);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CF10, &unk_18A6670E0);
    v20.receiver = v1;
    v20.super_class = v9;
    v10 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v11 = *(v10 + *((*v4 & *v10) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = v10;
      v15 = v11;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v16 = v10;
      v17 = v11;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&qword_1EA92F9E8, &unk_1EA93CF10, &unk_18A6670E0);
      v18 = v10;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1890F8FB4(uint64_t a1)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    type metadata accessor for DesignLibraryStepper(0);
    sub_1890FA674(&unk_1EA93CEF0, type metadata accessor for DesignLibraryStepper, &unk_18A666A98);
    sub_18A4A4678();
    v4 = MEMORY[0x1E69E7D40];
    sub_1890FA6BC(a1, v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68), type metadata accessor for DesignLibraryStepper);
    v17[0] = 0;
    v17[1] = 0;
    v5 = objc_allocWithZone(type metadata accessor for UIHostingViewBase(0));

    *(v1 + *((*v4 & *v1) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v6, v17);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CD10, &unk_18A666B60);
    v18.receiver = v1;
    v18.super_class = v7;
    v8 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v9 = *(v8 + *((*v4 & *v8) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v8;
      v13 = v9;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v14 = v8;
      v15 = v9;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&unk_1EA93CF00, &qword_1EA93CD10, &unk_18A666B60);
      v16 = v8;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    sub_1890FA724(a1, type metadata accessor for DesignLibraryStepper);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1890F92E4(uint64_t a1)
{
  MEMORY[0x18CFE0450]();
  sub_18A4A5718();
  sub_188AF7A44();
  result = sub_18A4A5708();
  if (result)
  {
    sub_18A4A4958();
    type metadata accessor for DesignLibraryTextFieldBackgroundView(0);
    sub_1890FA674(&qword_1EA93CEE8, type metadata accessor for DesignLibraryTextFieldBackgroundView, &unk_18A667078);
    sub_18A4A4678();
    v4 = MEMORY[0x1E69E7D40];
    sub_1890FA6BC(a1, v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68), type metadata accessor for DesignLibraryTextFieldBackgroundView);
    v17[0] = 0;
    v17[1] = 0;
    v5 = objc_allocWithZone(type metadata accessor for UIHostingViewBase(0));

    *(v1 + *((*v4 & *v1) + 0x60)) = UIHostingViewBase.init(viewGraph:configuration:)(v6, v17);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93CED8, &unk_18A6670D0);
    v18.receiver = v1;
    v18.super_class = v7;
    v8 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v9 = *(v8 + *((*v4 & *v8) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = v8;
      v13 = v9;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v14 = v8;
      v15 = v9;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&qword_1EA93CED0, &unk_1EA93CED8, &unk_18A6670D0);
      v16 = v8;
      sub_18A4A4708();
    }

    sub_1890FA674(&qword_1ED48FBE0, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A46D8();
    sub_1890FA674(&qword_1ED48E490, type metadata accessor for UIHostingViewBase, &protocol conformance descriptor for UIHostingViewBase);
    swift_unknownObjectRetain();
    sub_18A4A4938();
    sub_18A4A4928();
    sub_188AFBD9C();

    sub_18A4A54E8();
    sub_1890FA724(a1, type metadata accessor for DesignLibraryTextFieldBackgroundView);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890F9614()
{
  v1 = sub_18A4A2D68();
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v5 = MEMORY[0x1E6999C58];
  if (*v0)
  {
    v5 = MEMORY[0x1E6999C48];
  }

  (*(v3 + 104))(&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *v5, v4);
  return sub_18A4A3218();
}

uint64_t sub_1890F9838@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18A4A4438();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 textField];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 isEnabled];
    v12 = [v10 borderStyle];
    v13 = [v10 controlSize];

    if (v13 > 2)
    {
      v14 = MEMORY[0x1E697DC28];
    }

    else
    {
      v14 = qword_1E70F2588[v13];
    }

    (*(v5 + 104))(v8, *v14, v4);
    *a1 = v11;
    *(a1 + 8) = v12;
    v18 = type metadata accessor for DesignLibraryTextFieldBackgroundView(0);
    (*(v5 + 32))(a1 + *(v18 + 24), v8, v4);
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    v15 = type metadata accessor for DesignLibraryTextFieldBackgroundView(0);
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }
}

void sub_1890F9B40(double a1, double a2, double a3, double a4)
{
  v9 = [v4 textField];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 borderStyle];

    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    if (v11 <= 1)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          v15 = 0.0;
          v14 = 2.0;
          v12 = 2.0;
          v13 = 0.0;
        }

        goto LABEL_12;
      }

      v16 = 0.0;
LABEL_13:
      _UIEdgeInsetsInsetRectZeroClamped(a1, a2, a3, a4, v12, v13 + v16, v14, v15 + v16);
      return;
    }

    if (v11 == 2)
    {
      v12 = 3.0;
      v14 = 2.0;
      v15 = 2.0;
      v13 = 2.0;
    }

    else if (v11 == 3)
    {
      v16 = 2.0;
      v15 = 9.0;
      v14 = 1.0;
      v12 = 1.0;
      v13 = 9.0;
      goto LABEL_13;
    }

LABEL_12:
    v16 = 2.0;
    goto LABEL_13;
  }
}

double sub_1890F9D74()
{
  v1 = sub_18A4A4438();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DesignLibraryTextFieldBackgroundView(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 textField];
  if (!v9)
  {
    return -1.0;
  }

  v10 = v9;
  if ([v9 borderStyle] != 3)
  {

    return -1.0;
  }

  v11 = [v10 traitCollection];
  v12 = [(UITraitCollection *)v11 _semanticContext];

  if (v12 == 3)
  {
    sub_1890F9A5C();
  }

  v13 = *&v0[OBJC_IVAR____UITextFieldDesignLibraryBackgroundProvider_hostingView];
  v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x68);
  swift_beginAccess();
  sub_1890FA6BC(v13 + v14, v8, type metadata accessor for DesignLibraryTextFieldBackgroundView);
  (*(v2 + 32))(v4, &v8[*(v5 + 24)], v1);
  v15 = (*(v2 + 88))(v4, v1);
  result = 18.0;
  if (v15 != *MEMORY[0x1E697DC20])
  {
    result = 20.0;
    if (v15 != *MEMORY[0x1E697DC28])
    {
      result = 30.0;
      if (v15 != *MEMORY[0x1E697DC10])
      {
        (*(v2 + 8))(v4, v1, 30.0);
        return 20.0;
      }
    }
  }

  return result;
}

id sub_1890FA00C()
{
  v1 = type metadata accessor for _UITextFieldDesignLibraryBackgroundProvider();
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

uint64_t type metadata accessor for DesignLibraryTextFieldBackgroundView(uint64_t a1)
{
  result = qword_1EA93CEB8;
  if (!qword_1EA93CEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1890FA0E8(uint64_t a1)
{
  type metadata accessor for BorderStyle(319);
  if (v1 <= 0x3F)
  {
    sub_18A4A4438();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1890FA198(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CEC8, &qword_18A6670C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1890FA200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignLibraryTextFieldBackgroundView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890FA264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignLibraryTextFieldBackgroundView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1890FA2C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CEC8, &qword_18A6670C8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22[-v2];
  v4 = type metadata accessor for DesignLibraryTextFieldBackgroundView(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  sub_1890F9838(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1890FA198(v3);
  }

  else
  {
    sub_1890FA200(v3, v10);
    v23 = 0;
    sub_18A4A4468();
    v12 = *(v0 + OBJC_IVAR____UITextFieldDesignLibraryBackgroundProvider_hostingView);
    sub_1890FA6BC(v10, v7, type metadata accessor for DesignLibraryTextFieldBackgroundView);
    v13 = MEMORY[0x1E69E7D40];
    v14 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x68);
    swift_beginAccess();
    v15 = v12;
    sub_1890FA264(v7, v12 + v14);
    swift_endAccess();
    v16 = *(v15 + *((*v13 & *v15) + 0x60));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = v16;
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v20 = v16;
    }

    if (sub_18A4A46F8())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1890FA82C(&qword_1EA93CED0, &unk_1EA93CED8, &unk_18A6670D0);
      v21 = v15;
      sub_18A4A4708();
    }

    sub_18A4A4668();

    sub_1890FA724(v10, type metadata accessor for DesignLibraryTextFieldBackgroundView);
  }

  return result;
}

unint64_t sub_1890FA5CC()
{
  result = qword_1EA92F9A8;
  if (!qword_1EA92F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F9A8);
  }

  return result;
}

unint64_t sub_1890FA620()
{
  result = qword_1ED48C928;
  if (!qword_1ED48C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C928);
  }

  return result;
}

uint64_t sub_1890FA674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1890FA6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1890FA724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1890FA784()
{
  result = qword_1EA930538[0];
  if (!qword_1EA930538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA930538);
  }

  return result;
}

unint64_t sub_1890FA7D8()
{
  result = qword_1EA93CF40;
  if (!qword_1EA93CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CF40);
  }

  return result;
}

uint64_t sub_1890FA82C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1890FA880()
{
  result = qword_1EA93CF58;
  if (!qword_1EA93CF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA93CF60, &qword_18A667100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93CF58);
  }

  return result;
}

uint64_t sub_1890FA8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1890FA954(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v15 - v8;
  v10 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v15 - v11;
  if (sub_18A4A7118() >= 6)
  {
    sub_1890FB194(a2);
  }

  v13 = sub_18A4A86A8();
  swift_unknownObjectRelease();
  (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
  (*(v5 + 32))(v9, v4, v5);
  (*(*(v4 - 8) + 56))(v12, 0, 1, v4);
  v15[1] = v13;
  sub_18A4A7158();
  return sub_18A4A7188();
}

unint64_t sub_1890FAB6C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E5FE0];
  swift_getTupleTypeMetadata2();
  v3 = sub_18A4A75C8();
  v4 = sub_188FD2A3C(v3, v2, a1, MEMORY[0x1E69E5FE8]);

  return v4;
}

double sub_1890FABE8@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  v4 = -v2;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  *a2 = a1;
  a2[1] = a1 + 64;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v6;

  return result;
}

void sub_1890FAC24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v49 = a1;
  v53 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_18A4A7D38();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v46 - v7;
  v8 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = *(TupleTypeMetadata2 - 8);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v51 = v18;
  v52 = &v46 - v19;
  v20 = *v2;
  v21 = v2[1];
  v23 = v2[2];
  v22 = v2[3];
  v24 = v2[4];
  v59 = a2;
  v60 = v23;
  v50 = v25;
  if (v24)
  {
    v56 = v15;
    v26 = v22;
LABEL_11:
    v31 = __clz(__rbit64(v24)) | (v26 << 6);
    v32 = *(v20 + 56);
    v33 = *(*(v20 + 48) + 8 * v31);
    v55 = (v24 - 1) & v24;
    v34 = v57;
    v35 = v61;
    v36 = v20;
    (*(v8 + 16))(v57, v32 + *(v8 + 72) * v31, v61, v17);
    v37 = *(TupleTypeMetadata2 + 48);
    *v14 = v33;
    (*(v8 + 32))(&v14[v37], v34, v35);
    v15 = v56;
    (*(v56 + 56))(v14, 0, 1, TupleTypeMetadata2);
    v38 = v55;
    v30 = v26;
LABEL_12:
    *v2 = v36;
    v2[1] = v21;
    v2[2] = v60;
    v2[3] = v30;
    v2[4] = v38;
    if ((*(v15 + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      (*(v50 + 8))(v14, v51);
      (*(*(AssociatedTypeWitness - 8) + 56))(v59, 1, 1);
    }

    else
    {
      v39 = v52;
      (*(v15 + 32))(v52, v14, TupleTypeMetadata2);
      v40 = v54;
      (*(v53 + 24))(v61);
      v41 = v15;
      v42 = AssociatedTypeWitness;
      v43 = *(AssociatedTypeWitness - 8);
      v44 = (*(v43 + 48))(v40, 1, AssociatedTypeWitness);
      v45 = v59;
      if (v44 == 1)
      {
        (*(v47 + 8))(v40, v48);
        sub_1890FAC24(v49, v45);
        (*(v41 + 8))(v39, TupleTypeMetadata2);
      }

      else
      {
        (*(v41 + 8))(v39, TupleTypeMetadata2);
        (*(v43 + 32))(v45, v40, v42);
        (*(v43 + 56))(v45, 0, 1, v42);
      }
    }
  }

  else
  {
    v27 = v8;
    v28 = (v23 + 64) >> 6;
    if (v28 <= v22 + 1)
    {
      v29 = v22 + 1;
    }

    else
    {
      v29 = (v23 + 64) >> 6;
    }

    v30 = v29 - 1;
    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v26 >= v28)
      {
        v36 = v20;
        (*(v15 + 56))(v14, 1, 1, TupleTypeMetadata2, v17);
        v38 = 0;
        goto LABEL_12;
      }

      v24 = *(v21 + 8 * v26);
      ++v22;
      if (v24)
      {
        v56 = v15;
        v8 = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1890FB194(uint64_t a1)
{

  v2 = sub_18A4A7138();

  *v1 = v2;
}

BOOL sub_1890FB238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_18A4A7D38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  (*(a4 + 24))(a3, a4, v9);
  v12 = (*(*(AssociatedTypeWitness - 8) + 48))(v11, 1, AssociatedTypeWitness) != 1;
  (*(v8 + 8))(v11, v7);
  return v12;
}

double sub_1890FB390@<D0>(uint64_t a1@<X8>)
{
  sub_1890FABE8(*v1, v5);

  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void sub_1890FB418(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = sub_1890FB978(a1, *(a2 + 16), *(a2 + 24));

  *a3 = v4;
}

unint64_t sub_1890FB460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (**a5)(void, uint64_t, void))
{
  v43 = a5;
  AssociatedConformanceWitness = a1;
  v46 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18A4A7D38();
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v37 - v9;
  v49 = AssociatedTypeWitness;
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v37 - v11;
  v12 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - v13;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  v38 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v22 = MEMORY[0x1E69E5FE0];
  swift_getTupleTypeMetadata2();
  v23 = sub_18A4A75C8();
  v45 = a2;
  v24 = sub_188FD2A3C(v23, v22, a2, MEMORY[0x1E69E5FE8]);
  v25 = v21;

  v50 = v24;
  v26 = v19;
  (*(v15 + 16))(v18, AssociatedConformanceWitness, a3);
  v27 = v47;
  sub_18A4A7458();
  v28 = v37;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_18A4A7D78();
  v29 = v27[6];
  if (v29(v14, 1, v8) != 1)
  {
    v31 = v27[4];
    v32 = v40;
    v47 = (v40 + 6);
    ++v40;
    v41 = (v32 + 4);
    v39 = (v27 + 1);
    v42 = v31;
    v43 = (v27 + 6);
    v31(v28, v14, v8);
    while (1)
    {
      v33 = v49;
      if ((*v47)(v28, 1, v49) == 1)
      {
        (*v39)(v28, v8);
      }

      else
      {
        v34 = v44;
        (*v41)(v44, v28, v33);
        v36 = type metadata accessor for CompactableSet(0, v45, v46, v35);
        sub_1890FA954(v34, v36);
        v31 = v42;
        (*v40)(v34, v33);
      }

      sub_18A4A7D78();
      if (v29(v14, 1, v8) == 1)
      {
        break;
      }

      v31(v28, v14, v8);
    }
  }

  (*(v38 + 8))(v25, v26);
  return v50;
}

unint64_t sub_1890FB978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  swift_getAssociatedTypeWitness();
  sub_18A4A7D38();
  v5 = sub_18A4A7648();
  WitnessTable = swift_getWitnessTable();
  return sub_1890FB460(&v8, a2, v5, a3, WitnessTable);
}

uint64_t sub_1890FBA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1890FBAD0(uint64_t a1)
{
  v2 = v1;
  v3 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 6) == 1)
  {
    v3[6] = 0;
    if (v3[7] == 1)
    {
      v3[7] = 0;
      sub_1890FC8B4();
      sub_1890FBCCC(v4);
    }

    sub_1890FC8B4();
  }

  if (v3[11] == 1)
  {
    v3[11] = 0;
    sub_1890FBCCC(a1);
    sub_188E0F52C();
  }

  sub_1890FDB10();
  sub_1890FBCCC(v5);
  sub_188E0F52C();
  sub_1890FBE4C(v6, v7);
  sub_1890FBFEC();
  if (v3[38] == 1)
  {
    v3[38] = 0;
    sub_1890FEBD0();
    sub_1890FCB68();
  }

  sub_1890FC0A4();
  sub_1890FC154(v8);
  if (v3[34] == 1)
  {
    v3[34] = 0;
    v9 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
    if (v9)
    {
      v10 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated + 8);

      v9(v11);
      sub_188A55B8C(v9, v10);
    }
  }

  if (v3[35] == 1)
  {
    v3[35] = 0;
    v12 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
    if (v12)
    {
      v13 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated + 8);

      v12(v14);
      sub_188A55B8C(v12, v13);
    }
  }

  sub_1890FC3FC();
  sub_1890FC4C4();
  sub_1890FC58C();
  if (v3[50] == 1)
  {
    v3[50] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  sub_1890FC690();
  if (v3[63] == 1)
  {
    v3[63] = 0;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      [v17 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1890FBCCC(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 17) == 1)
  {
    v3 = v1;
    v2[17] = 0;
    sub_1890FC8B4();
    if (v2[13] == 1)
    {
      v2[13] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        sub_1890FE7C8();
      }

      sub_1890FDD9C();
      sub_188E0F618();
    }

    sub_188E0F618();
    v7 = sub_1890FCEE8(v6);
    sub_1890FD530(v7);
    sub_188E0F52C();
    if (v2[36] == 1)
    {
      v2[36] = 0;
      v8 = sub_1890FC154(v8);
    }

    sub_1890FC154(v8);
    sub_1890FCB68();
    sub_1890FC4C4();
    sub_1890FC690();
    sub_1890FC58C();
    if (v2[57] == 1)
    {
      v2[57] = 0;
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        [v9 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v2[63] == 1)
    {
      v2[63] = 0;
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        [v10 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v2[40] == 1)
    {
      v2[40] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();

      sub_1890FC690();
    }
  }
}

double sub_1890FBE4C(uint64_t a1, double result)
{
  v3 = (v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 27) == 1)
  {
    v4 = v2;
    v3[27] = 0;
    v5 = sub_1890FEE30();
    if (v3[38] == 1)
    {
      v3[38] = 0;
      sub_1890FEBD0();
      v5 = sub_1890FCB68();
    }

    sub_1890FC154(v5);
    if (v3[34] == 1)
    {
      v3[34] = 0;
      v6 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
      if (v6)
      {
        v7 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated + 8);

        v6(v8);
        sub_188A55B8C(v6, v7);
      }
    }

    if (v3[35] == 1)
    {
      v3[35] = 0;
      v9 = *(v4 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
      if (v9)
      {
        v10 = *(v4 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated + 8);

        v9(v11);
        sub_188A55B8C(v9, v10);
      }
    }

    sub_1890FC58C();
    if (v3[50] == 1)
    {
      v3[50] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    sub_1890FCB68();
    result = sub_1890FC4C4();
    if (v3[63] == 1)
    {
      v3[63] = 0;
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        [v13 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1890FBFEC()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 29) == 1)
  {
    v1[29] = 0;
    sub_1890FCCC4();
    sub_1890FC154(v2);
    sub_1890FEBD0();
    if (v1[43] == 1)
    {
      v1[43] = 0;
      sub_1890FC690();
      if (v1[58] == 1)
      {
        v1[58] = 0;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    sub_1890FC4C4();

    sub_1890FE94C();
  }
}

void sub_1890FC0A4()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 41) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 41) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1890FC0A4();
      v2 = v3;
      if (*(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 42) == 1)
      {
        *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 42) = 0;
        sub_1890FCB68();
        sub_1890FC4C4();
        v2 = v3;
      }
    }
  }
}

double sub_1890FC154(double result)
{
  v2 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 30) != 1)
  {
    return v16;
  }

  v3 = v1;
  v2[30] = 0;
  sub_1890FC0A4();
  if (v2[31] != 1)
  {
    if (v2[32] != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v2[31] = 0;
  if (v2[32])
  {
LABEL_6:
    v2[32] = 0;
  }

LABEL_7:
  if (v2[33] == 1)
  {
    v2[33] = 0;
    v4 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__indexOfCurrentActiveOrDismissDetentWasInvalidated);
    if (v4)
    {
      v5 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__indexOfCurrentActiveOrDismissDetentWasInvalidated + 8);

      v4(v6);
      sub_188A55B8C(v4, v5);
    }
  }

  sub_1890FCCC4();
  if (v2[37] == 1)
  {
    v2[37] = 0;
    sub_1890FEBD0();
    if (v2[42] == 1)
    {
      v2[42] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
    }

    sub_1890FC4C4();
  }

  if (v2[43] == 1)
  {
    v2[43] = 0;
    sub_1890FC690();
    if (v2[58] == 1)
    {
      v2[58] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }
  }

  if (v2[34] == 1)
  {
    v2[34] = 0;
    v8 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
    if (v8)
    {
      v9 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated + 8);

      v8(v10);
      sub_188A55B8C(v8, v9);
    }
  }

  if (v2[35] == 1)
  {
    v2[35] = 0;
    v11 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
    if (v11)
    {
      v12 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated + 8);

      v11(v13);
      sub_188A55B8C(v11, v12);
    }
  }

  sub_1890FCB68();
  sub_1890FC4C4();
  sub_1890FE94C();
  if (v2[60] == 1)
  {
    v2[60] = 0;
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      [v14 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v2[40] == 1)
  {
    v2[40] = 0;
    sub_1890FCB68();
    sub_1890FC4C4();
    sub_1890FC690();
  }

  sub_1890FEB18();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    [v15 _sheetLayoutInfoDidInvalidateDetentValues_];

    swift_unknownObjectRelease();
  }

  return v16;
}

double sub_1890FC3FC()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 48) == 1)
  {
    *(v1 + 48) = 0;
    if (*(v1 + 51) == 1)
    {
      *(v1 + 51) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1890FC4C4()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 49) == 1)
  {
    *(v1 + 49) = 0;
    if (*(v1 + 50) == 1)
    {
      *(v1 + 50) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1890FC58C()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 55) == 1)
  {
    v1[55] = 0;
    if (v1[62] == 1)
    {
      v1[62] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[47] == 1)
    {
      v1[47] = 0;
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        [v3 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1890FC690()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 52) == 1)
  {
    *(v1 + 52) = 0;
    if (*(v1 + 54) == 1)
    {
      *(v1 + 54) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      sub_1890FC690();
    }
  }
}

double sub_1890FC754(uint64_t a1)
{
  v2 = v1;
  v3 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7) == 1)
  {
    v3[7] = 0;
    sub_1890FC8B4();
    sub_1890FBCCC(v4);
  }

  v5 = sub_1890FC8B4();
  result = sub_1890FC154(v5);
  if (v3[34] == 1)
  {
    v3[34] = 0;
    v7 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated + 8);

      v7(v9);
      result = sub_188A55B8C(v7, v8);
    }
  }

  if (v3[35] == 1)
  {
    v3[35] = 0;
    v10 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
    if (v10)
    {
      v11 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated + 8);

      v10(v12);
      result = sub_188A55B8C(v10, v11);
    }
  }

  if (v3[40] == 1)
  {
    v3[40] = 0;
    sub_1890FCB68();
    sub_1890FC4C4();
    sub_1890FC690();
  }

  if (v3[62] == 1)
  {
    v3[62] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1890FC8B4()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 8) == 1)
  {
    v1[8] = 0;
    sub_188E0F52C();
    if (v1[63] == 1)
    {
      v1[63] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    result = sub_1890FC58C();
    if (v1[50] == 1)
    {
      v1[50] = 0;
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        [v4 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

double sub_1890FC994()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7) == 1)
  {
    v1[7] = 0;
    sub_1890FC8B4();
    sub_1890FBCCC(v2);
  }

  sub_1890FC8B4();
  if (v1[9] == 1)
  {
    v1[9] = 0;
    sub_1890FDE98();
    sub_1890FDB10();
    sub_1890FDF88();
  }

  if (v1[11] == 1)
  {
    v1[11] = 0;
    sub_1890FBCCC(v3);
    sub_188E0F52C();
  }

  sub_1890FDB10();
  sub_1890FBCCC(v4);
  v7 = sub_1890FCA98(v5, v6);
  if (v1[36] == 1)
  {
    v1[36] = 0;
    v7 = sub_1890FC154(v7);
  }

  sub_1890FC154(v7);
  sub_188E0F52C();
  sub_1890FCB68();
  sub_1890FC4C4();
  sub_1890FCCC4();
  if (v1[60] == 1)
  {
    v1[60] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1890FCA98(uint64_t result, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 21) == 1)
  {
    v3[21] = 0;
    if (v3[22] == 1)
    {
      v3[22] = 0;
      sub_1890FDE98();
      sub_1890FCCC4();
      v6 = sub_1890FBE4C(v4, v5);
      sub_1890FC154(v6);
      if (v3[40] == 1)
      {
        v3[40] = 0;
        sub_1890FCB68();
        sub_1890FC4C4();
        sub_1890FC690();
      }

      sub_1890FDB10();
      v7 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v7)
      {
        v8 = v7;
        sub_1890FBE4C(v8, v9);
      }
    }

    return sub_1890FD1DC();
  }

  return v10;
}

double sub_1890FCB68()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 46) == 1)
  {
    v1[46] = 0;
    sub_1890FC3FC();
    if (v1[51] == 1)
    {
      v1[51] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[53] == 1)
    {
      v1[53] = 0;
      sub_1890FC690();
    }

    sub_1890FC58C();
    if (v1[47] == 1)
    {
      v1[47] = 0;
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        [v3 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[62] == 1)
    {
      v1[62] = 0;
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        [v4 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      [v5 _sheetLayoutInfoDidInvalidateUntransformedFrame_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1890FCCC4()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 12) == 1)
  {
    v2 = v0;
    v1[12] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1890FE7C8();
    }

    sub_188E0F618();
    sub_1890FC0A4();
    if (v1[42] == 1)
    {
      v1[42] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
    }

    sub_1890FDF88();
    if (v1[5] == 1)
    {
      v1[5] = 0;
      sub_1890FC690();
      sub_1890FDF88();
      if (v1[59] == 1)
      {
        v1[59] = 0;
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          [v5 _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    sub_1890FC690();
  }
}

double sub_1890FCDD4(uint64_t a1)
{
  v2 = v1;
  result = sub_1890FCEE8(a1);
  v4 = v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 25) == 1)
  {
    *(v4 + 25) = 0;
    sub_1890FCCC4();
    sub_1890FE48C();
    v5 = sub_1890FE854();
    sub_1890FBE4C(v6, v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_1890FE854();
    }

    v9 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v9)
    {
      v10 = v9;
      sub_1890FE48C();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        [v11 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    result = sub_1890FC58C();
  }

  if (*(v4 + 38) == 1)
  {
    *(v4 + 38) = 0;
    sub_1890FEBD0();

    return sub_1890FCB68();
  }

  return result;
}

double sub_1890FCEE8(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 18) == 1)
  {
    v3 = v1;
    v2[18] = 0;
    if (v2[19] == 1)
    {
      v2[19] = 0;
      sub_1890FEBD0();
      sub_1890FC0A4();
      sub_1890FC154(v4);
    }

    if (v2[38] == 1)
    {
      v2[38] = 0;
      sub_1890FEBD0();
      sub_1890FCB68();
    }

    if (v2[33] == 1)
    {
      v2[33] = 0;
      v5 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__indexOfCurrentActiveOrDismissDetentWasInvalidated);
      if (v5)
      {
        v6 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__indexOfCurrentActiveOrDismissDetentWasInvalidated + 8);

        v5(v7);
        sub_188A55B8C(v5, v6);
      }
    }

    if (v2[34] == 1)
    {
      v2[34] = 0;
      v8 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
      if (v8)
      {
        v9 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated + 8);

        v8(v10);
        sub_188A55B8C(v8, v9);
      }
    }

    if (v2[35] == 1)
    {
      v2[35] = 0;
      v11 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
      if (v11)
      {
        v12 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated + 8);

        v11(v13);
        sub_188A55B8C(v11, v12);
      }
    }

    sub_1890FCB68();
    result = sub_1890FC4C4();
    if (v2[60] == 1)
    {
      v2[60] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1890FD09C()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 24) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 24) = 0;
    sub_188E0F52C();
    sub_1890FC154(v1);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1890FD09C();
    }
  }
}

void sub_1890FD128(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 22) == 1)
  {
    *(v2 + 22) = 0;
    sub_1890FDE98();
    sub_1890FCCC4();
    v5 = sub_1890FBE4C(v3, v4);
    sub_1890FC154(v5);
    if (*(v2 + 40) == 1)
    {
      *(v2 + 40) = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
      sub_1890FC690();
    }

    sub_1890FDB10();
    v6 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v6)
    {
      v8 = v6;
      sub_1890FBE4C(v8, v7);
    }
  }
}

double sub_1890FD1DC()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 23) == 1)
  {
    v1[23] = 0;
    sub_1890FC690();
    if (v1[66] == 1)
    {
      v1[66] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[60] == 1)
    {
      v1[60] = 0;
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        [v4 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[57] == 1)
    {
      v1[57] = 0;
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        [v5 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v6 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v6)
    {
      if (*(v6 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) == 1)
      {
        *(v6 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) = 0;
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          [v7 _sheetLayoutInfoDidInvalidateOutput_];

          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

double sub_1890FD354()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 45) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 45) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1890FD354();
      if (v2[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 59] == 1)
      {
        v2[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 59] = 0;
        v3 = swift_unknownObjectWeakLoadStrong();
        if (v3)
        {
          [v3 _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1890FD45C(uint64_t a1)
{
  sub_1890FBCCC(a1);
  v3 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 21) == 1)
  {
    v3[21] = 0;
    if (v3[22] == 1)
    {
      v3[22] = 0;
      sub_1890FDE98();
      sub_1890FCCC4();
      v6 = sub_1890FBE4C(v4, v5);
      sub_1890FC154(v6);
      if (v3[40] == 1)
      {
        v3[40] = 0;
        sub_1890FCB68();
        sub_1890FC4C4();
        sub_1890FC690();
      }

      sub_1890FDB10();
      v7 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v7)
      {
        v8 = v7;
        sub_1890FBE4C(v8, v9);
      }
    }

    return sub_1890FD1DC();
  }

  return result;
}

double sub_1890FD530(double result)
{
  v2 = (v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 20) == 1)
  {
    v3 = v1;
    v2[20] = 0;
    sub_1890FCCC4();
    sub_188E0F52C();
    sub_1890FBFEC();
    if (v2[38] == 1)
    {
      v2[38] = 0;
      sub_1890FEBD0();
      sub_1890FCB68();
    }

    sub_1890FC0A4();
    if (v2[42] == 1)
    {
      v2[42] = 0;
      sub_1890FCB68();
      v4 = sub_1890FC4C4();
    }

    sub_1890FC154(v4);
    if (v2[34] == 1)
    {
      v2[34] = 0;
      v5 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
      if (v5)
      {
        v6 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated + 8);

        v5(v7);
        sub_188A55B8C(v5, v6);
      }
    }

    if (v2[35] == 1)
    {
      v2[35] = 0;
      v8 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
      if (v8)
      {
        v9 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated + 8);

        v8(v10);
        sub_188A55B8C(v8, v9);
      }
    }

    sub_1890FCB68();
    sub_1890FC4C4();
    sub_1890FC690();
    if (v2[61] == 1)
    {
      v2[61] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v2[63] == 1)
    {
      v2[63] = 0;
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        [v12 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      sub_1890FC0A4();
      if (v14[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 42] == 1)
      {
        v14[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 42] = 0;
        sub_1890FCB68();
        sub_1890FC4C4();
      }
    }

    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      [v15 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1890FD770()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean) == 1)
  {
    v2 = v0;
    *v1 = 0;
    sub_188E0F618();
    if (v1[38] == 1)
    {
      v1[38] = 0;
      sub_1890FEBD0();
      sub_1890FCB68();
    }

    sub_1890FEBD0();
    sub_1890FC0A4();
    if (v1[42] == 1)
    {
      v1[42] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
    }

    if (v1[33] == 1)
    {
      v1[33] = 0;
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__indexOfCurrentActiveOrDismissDetentWasInvalidated);
      if (v3)
      {
        v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__indexOfCurrentActiveOrDismissDetentWasInvalidated + 8);

        v3(v5);
        sub_188A55B8C(v3, v4);
      }
    }

    sub_1890FCB68();
    sub_1890FD354();
    if (v1[60] == 1)
    {
      v1[60] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    sub_1890FEB18();
    sub_1890FC58C();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      sub_1890FE118();
    }
  }
}

void sub_1890FD8E8()
{
  sub_1890FD9A8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1890FD8E8();
    v1 = v3;
    if (*(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 59) == 1)
    {
      *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 59) = 0;
      v2 = swift_unknownObjectWeakLoadStrong();
      v1 = v3;
      if (v2)
      {
        [v2 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
        v1 = v3;
      }
    }
  }
}

void sub_1890FD9A8()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 1) == 1)
  {
    *(v1 + 1) = 0;
    if (*(v1 + 42) == 1)
    {
      *(v1 + 42) = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1890FD9A8();
    }
  }
}

double sub_1890FDA44()
{
  sub_1890FD770();
  v2 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 49) == 1)
  {
    *(v2 + 49) = 0;
    if (*(v2 + 50) == 1)
    {
      *(v2 + 50) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1890FDB10()
{
  sub_1890FDD9C();
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
  if (v1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57] == 1)
    {
      v1[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      v3 = v5;
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        v3 = swift_unknownObjectRelease();
      }
    }

    else
    {
      v3 = v1;
    }

    sub_1890FBE4C(v3, v4);
  }
}

double sub_1890FDBD8()
{
  sub_1890FDD9C();
  sub_1890FD09C();
  sub_1890FC154(v1);
  sub_1890FC3FC();
  sub_1890FC4C4();
  v2 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 54) == 1)
  {
    v2[54] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  sub_1890FC58C();
  if (v2[66] == 1)
  {
    v2[66] = 0;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v2[60] == 1)
  {
    v2[60] = 0;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      [v5 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v2[57] == 1)
  {
    v2[57] = 0;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      [v6 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v2[58] == 1)
  {
    v2[58] = 0;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      [v7 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v2[62] == 1)
  {
    v2[62] = 0;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      [v8 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  return sub_1890FDE98();
}

double sub_1890FDD9C()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 15) == 1)
  {
    v2 = v0;
    *(v1 + 15) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      sub_1890FDD9C();
    }

    if (*(v1 + 16) == 1)
    {
      *(v1 + 16) = 0;
      v6 = *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
      if (v6)
      {
        v7 = v6;
        sub_1890FE48C();
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          [v8 _sheetLayoutInfoDidInvalidateOutput_];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      sub_1890FD1DC();
      sub_1890FEE30();
      sub_1890FC690();

      return sub_1890FC58C();
    }
  }

  return result;
}

double sub_1890FDE98()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 10) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 10) = 0;
    sub_1890FDD9C();
    sub_1890FC690();
    v1 = sub_1890FC58C();
    sub_1890FBE4C(v2, v1);
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v3)
    {
      if (*(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) == 1)
      {
        *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) = 0;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      [v5 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1890FDF88()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 67) == 1)
  {
    v1[67] = 0;
    if (v1[58] == 1)
    {
      v1[58] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[57] == 1)
    {
      v1[57] = 0;
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        [v3 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1890FE08C()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 2) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 2) = 0;
    v1 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v1)
    {
      v2 = v1;
      sub_1890FE08C();
    }

    sub_1890FECEC();
  }
}

void sub_1890FE118()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 3) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 3) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1890FE118();
    }

    sub_1890FECEC();
  }
}

double sub_1890FE1A4()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 44) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 44) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1890FE1A4();
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1890FE25C()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 29) == 1)
  {
    v1[29] = 0;
    sub_1890FCCC4();
    sub_1890FC154(v2);
    sub_1890FEBD0();
    if (v1[43] == 1)
    {
      v1[43] = 0;
      sub_1890FC690();
      if (v1[58] == 1)
      {
        v1[58] = 0;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    sub_1890FC4C4();
    sub_1890FE94C();
  }

  return sub_1890FCB68();
}

double sub_1890FE30C(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 16) == 1)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 16) = 0;
    v3 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v3)
    {
      v4 = v3;
      sub_1890FE48C();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    sub_1890FD1DC();
    sub_1890FEE30();
    sub_1890FC690();
    sub_1890FC58C();
  }

  return sub_1890FE48C();
}

double sub_1890FE3C4()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 28) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 28) = 0;
    v1 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v1)
    {
      v2 = v1;
      sub_1890FE3C4();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return sub_1890FC58C();
  }

  return result;
}

double sub_1890FE48C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 16) == 1)
  {
    *(v2 + 16) = 0;
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v3)
    {
      v4 = v3;
      sub_1890FE48C();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    sub_1890FD1DC();
    sub_1890FEE30();
    sub_1890FC690();
    result = sub_1890FC58C();
  }

  if (*(v2 + 28) == 1)
  {
    *(v2 + 28) = 0;
    v7 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v7)
    {
      v8 = v7;
      sub_1890FE3C4();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        [v9 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return sub_1890FC58C();
  }

  return result;
}

double sub_1890FE5CC()
{
  sub_188E0F618();
  sub_1890FE08C();
  sub_1890FE48C();
  sub_1890FE48C();
  v2 = sub_1890FE3C4();
  v3 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) == 1)
  {
    *(v3 + 57) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];
      Strong = swift_unknownObjectRelease();
    }
  }

  result = sub_1890FBE4C(Strong, v2);
  if (*(v3 + 68) == 1)
  {
    *(v3 + 68) = 0;

    return sub_1890FDF88();
  }

  return result;
}

double sub_1890FE684()
{
  sub_1890FD9A8();
  sub_1890FE118();
  sub_1890FE7C8();
  sub_1890FDD9C();
  sub_1890FD09C();
  sub_1890FE854();
  sub_1890FC0A4();
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 42) == 1)
  {
    v1[42] = 0;
    sub_1890FCB68();
    sub_1890FC4C4();
  }

  sub_1890FE1A4();
  sub_1890FD354();
  sub_1890FC690();
  sub_1890FC58C();
  sub_1890FE94C();
  if (v1[57] == 1)
  {
    v1[57] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v1[66] == 1)
  {
    v1[66] = 0;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  if (v1[59] == 1)
  {
    v1[59] = 0;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 _sheetLayoutInfoDidInvalidateOutput_];
      swift_unknownObjectRelease();
    }
  }

  sub_1890FEB18();

  return sub_1890FDF88();
}

double sub_1890FE7C8()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 14) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 14) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1890FE7C8();
    }

    return sub_1890FDD9C();
  }

  return result;
}

double sub_1890FE854()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 26) == 1)
  {
    *(v1 + 26) = 0;
    result = sub_1890FDD9C();
    if (*(v1 + 57) == 1)
    {
      *(v1 + 57) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v4 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v4)
    {
      if (*(v4 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) == 1)
      {
        *(v4 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57) = 0;
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          [v5 _sheetLayoutInfoDidInvalidateOutput_];

          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

double sub_1890FE94C()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 56) == 1)
  {
    v1[56] = 0;
    if (v1[57] == 1)
    {
      v1[57] = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v5 = v3;
      sub_1890FE94C();
      v6 = &v5[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean];
      if (v5[OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 57] == 1)
      {
        v6[57] = 0;
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          [v7 _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }

      if (v6[66] == 1)
      {
        v6[66] = 0;
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          [v8 _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    if (v1[58] == 1)
    {
      v1[58] = 0;
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        [v9 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[65] == 1)
    {
      v1[65] = 0;
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        [v10 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

double sub_1890FEB18()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 64) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 64) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1890FEB18();
    }

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 _sheetLayoutInfoDidInvalidateOutput_];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1890FEBD0()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 39) == 1)
  {
    v1[39] = 0;
    sub_1890FC0A4();
    sub_1890FCCC4();
    if (v1[43] == 1)
    {
      v1[43] = 0;
      sub_1890FC690();
      if (v1[58] == 1)
      {
        v1[58] = 0;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong _sheetLayoutInfoDidInvalidateOutput_];
          swift_unknownObjectRelease();
        }
      }
    }

    sub_1890FCB68();
    sub_1890FE94C();
    if (v1[63] == 1)
    {
      v1[63] = 0;
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        [v3 _sheetLayoutInfoDidInvalidateOutput_];
        swift_unknownObjectRelease();
      }
    }

    if (v1[40] == 1)
    {
      v1[40] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();

      sub_1890FC690();
    }
  }
}

double sub_1890FECEC()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 4) == 1)
  {
    v2 = v0;
    v1[4] = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1890FE7C8();
    }

    if (v1[13] == 1)
    {
      v1[13] = 0;
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        sub_1890FE7C8();
      }

      sub_1890FDD9C();
      sub_188E0F618();
    }

    sub_1890FC0A4();
    if (v1[42] == 1)
    {
      v1[42] = 0;
      sub_1890FCB68();
      sub_1890FC4C4();
    }

    sub_1890FE94C();
    sub_1890FEB18();
    sub_1890FC690();
    if (v1[5] == 1)
    {
      v1[5] = 0;
      sub_1890FC690();
      result = sub_1890FDF88();
      if (v1[59] == 1)
      {
        v1[59] = 0;
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          [v8 _sheetLayoutInfoDidInvalidateOutput_];

          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

double sub_1890FEE30()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 28) == 1)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 28) = 0;
    v1 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v1)
    {
      v2 = v1;
      sub_1890FE3C4();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return sub_1890FC58C();
  }

  return result;
}

void sub_1890FEFF4(void *a1)
{
  v2 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView;
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView) = a1;
  if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_tucksIntoUnsafeAreaInCompactHeight) == 1)
  {
    if (v3)
    {
      v4 = a1;
      [v3 _removeBoundingPathChangeObserver_];
      v5 = *(v1 + v2);
      if (!v5)
      {
LABEL_5:

        v7 = a1;
        goto LABEL_7;
      }
    }

    else
    {
      v8 = a1;
      v5 = a1;
      if (!a1)
      {
        goto LABEL_5;
      }
    }

    v6 = v5;
    [v6 _addBoundingPathChangeObserver_];

    goto LABEL_5;
  }

  v7 = v3;
LABEL_7:
}

void sub_1890FF248(uint64_t a1, double a2, double a3)
{
  v4 = (v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_screenSize);
  v5 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_screenSize);
  v6 = *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_screenSize + 8);
  *v4 = a2;
  v4[1] = a3;
  v7 = v5 == a2 && v6 == a3;
  if (!v7 && *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 11) == 1)
  {
    *(v3 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 11) = 0;
    sub_1890FBCCC(a1);

    sub_188E0F52C();
  }
}

float64_t sub_1890FF344(uint64_t a1, float64x2_t a2, float64_t a3, float64x2_t a4, float64_t a5)
{
  v6 = (v5 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
  v7 = *(v5 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
  v8 = *(v5 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 16);
  *v6 = a2.f64[0];
  v6[1] = a3;
  v6[2] = a4.f64[0];
  v6[3] = a5;
  a2.f64[1] = a3;
  a4.f64[1] = a5;
  *&a2.f64[0] = vmovn_s32(vuzp1q_s32(vceqq_f64(v7, a2), vceqq_f64(v8, a4)));
  LOWORD(a2.f64[0]) = vminv_u16(*&a2.f64[0]);
  if ((LOBYTE(a2.f64[0]) & 1) == 0)
  {
    a2.f64[0] = sub_1890FC754(a1);
  }

  return a2.f64[0];
}

uint64_t sub_1890FF470()
{
  v1 = (v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean);
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 10) & 1) == 0)
  {
    if ((v1[9] & 1) == 0)
    {
      v2 = (_UISolariumEnabled() & 1) != 0 && [*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) userInterfaceIdiom] != 6;
      *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___solariumInsetsAndCornerRadiusEnabled) = v2;
      v1[9] = 1;
    }

    if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___solariumInsetsAndCornerRadiusEnabled) & 1) != 0 && (*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) & 1) == 0)
    {
      if ((v1[22] & 1) == 0)
      {
        v4 = sub_189105CC0();
        v5 = 1;
        if ((v4 & 1) == 0)
        {
          v5 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen);
        }

        *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) = v5;
        v1[22] = 1;
      }

      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) ^ 1;
    }

    else
    {
      v3 = 0;
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveSolariumInsetsAndCornerRadiusEnabled) = v3 & 1;
    v1[10] = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___effectiveSolariumInsetsAndCornerRadiusEnabled);
}

uint64_t sub_1890FF578()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 22) & 1) == 0)
  {
    v2 = sub_189105CC0();
    v3 = 1;
    if ((v2 & 1) == 0)
    {
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen);
    }

    *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen) = v3;
    *(v1 + 22) = 1;
  }

  return *(v0 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isFunctionallyFullScreen);
}

double sub_1890FF5E4(double result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_additionalMinimumTopInset);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_additionalMinimumTopInset) = result;
  if (v2 != result && (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 25) & 1) != 0)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 25) = 0;
    sub_1890FCCC4();
    sub_1890FE48C();
    v3 = sub_1890FE854();
    sub_1890FBE4C(v4, v3);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_1890FE854();
    }

    v7 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_child);
    if (v7)
    {
      v8 = v7;
      sub_1890FE48C();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        [v9 _sheetLayoutInfoDidInvalidateOutput_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return sub_1890FC58C();
  }

  return result;
}

void sub_1890FF7C4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_mode);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_mode) = a1;
  if (v2 != a1 && (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 11) & 1) != 0)
  {
    *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 11) = 0;
    sub_1890FBCCC(a1);

    sub_188E0F52C();
  }
}

double sub_1890FF9B8(void *a1, double result)
{
  v3 = *(v2 + *a1);
  *(v2 + *a1) = result;
  if (v3 != result)
  {
    if (*(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7))
    {
      *(v2 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7) = 0;
      sub_1890FC8B4();
      sub_1890FBCCC(v4);
    }

    return sub_1890FC8B4();
  }

  return result;
}

id sub_1890FFA18(id result)
{
  v2 = OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_tucksIntoUnsafeAreaInCompactHeight;
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_tucksIntoUnsafeAreaInCompactHeight);
  *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_tucksIntoUnsafeAreaInCompactHeight) = result;
  if (v3 != (result & 1))
  {
    if (*(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7))
    {
      *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 7) = 0;
      sub_1890FC8B4();
      sub_1890FBCCC(v4);
    }

    v5 = sub_1890FC8B4();
    result = *(v1 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerView);
    if (result)
    {
      if (*(v1 + v2))
      {
        v6 = &selRef__addBoundingPathChangeObserver_;
      }

      else
      {
        v6 = &selRef__removeBoundingPathChangeObserver_;
      }

      v7 = *v6;

      return [result v7];
    }
  }

  return result;
}