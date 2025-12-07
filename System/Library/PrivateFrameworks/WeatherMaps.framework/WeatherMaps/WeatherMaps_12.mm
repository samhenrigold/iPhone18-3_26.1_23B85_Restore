uint64_t sub_220F1FF38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SonifierDataState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F1FF9C(uint64_t a1)
{
  v2 = type metadata accessor for SonifierDataState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_220F1FFF8(uint64_t a1, double a2)
{
  v2[OBJC_IVAR____TtC11WeatherMaps16VariableBlurView_style] = a1 & 1;
  *&v2[OBJC_IVAR____TtC11WeatherMaps16VariableBlurView_blurRadius] = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for VariableBlurView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F20138();

  return v3;
}

void sub_220F20138()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps16VariableBlurView_style) == 1 && !UIAccessibilityIsReduceTransparencyEnabled();
  v3 = OUTLINED_FUNCTION_2_37();
  [v3 setAllowsHitTesting_];

  v4 = OUTLINED_FUNCTION_2_37();
  [v4 setMasksToBounds_];

  if (v2)
  {
    v5 = sub_220E1966C(0, &qword_27CF9EEE0, 0x277CD9EA0);
    v6 = sub_220FC2700();
    v8 = sub_220F203AC(v6, v7);
    v9 = sub_220FC2A20();
    OUTLINED_FUNCTION_1_54();

    sub_220F20420();
    v11 = v10;
    OUTLINED_FUNCTION_1_54();

    v12 = sub_220FC2A20();
    OUTLINED_FUNCTION_1_54();

    v13 = sub_220FC10D0();
    OUTLINED_FUNCTION_1_54();

    sub_220F20A54(0x656C626169726176, 0xEC00000072756C42, v8);
    [v1 setBackgroundColor_];
    v17 = OUTLINED_FUNCTION_2_37();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEA0, &qword_220FC9150);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_220FC8E30;
    *(v14 + 56) = v5;
    *(v14 + 32) = v8;
    v15 = v8;
    sub_220F20AB8(v14, v17);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_2_37();
    [v16 setFilters_];

    v17 = [objc_opt_self() tertiarySystemBackgroundColor];
    [v1 setBackgroundColor_];
  }
}

id sub_220F203AC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_220FC26C0();

  v4 = [v2 initWithType_];

  return v4;
}

void sub_220F20420()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v0 setScale_];
  [v0 setPreferredRange_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithBounds:v0 format:{0.0, 0.0, 100.0, 100.0}];
  v2 = swift_allocObject();
  v2[1].i64[0] = 0;
  v2[1].i64[1] = 0;
  v2[2] = vdupq_n_s64(0x4059000000000000uLL);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_220F20A08;
  *(v3 + 24) = v2;
  v6[4] = sub_220F20A14;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_220F20820;
  v6[3] = &block_descriptor_19;
  v4 = _Block_copy(v6);

  v5 = [v1 imageWithActions_];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    [v5 CGImage];
  }
}

void sub_220F20620(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  [v10 setBounds_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEA0, &qword_220FC9150);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_220FC8E10;
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = [v13 CGColor];

  type metadata accessor for CGColor(0);
  v16 = v15;
  *(v11 + 56) = v15;
  *(v11 + 32) = v14;
  v17 = [v12 whiteColor];
  v18 = [v17 colorWithAlphaComponent_];

  v19 = [v18 CGColor];
  *(v11 + 88) = v16;
  *(v11 + 64) = v19;
  sub_220F85FE0(v11, v10);
  v20 = [a1 CGContext];
  [v10 renderInContext_];
}

void sub_220F20820(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_220F2087C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VariableBlurView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for VariableBlurViewStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220F209B4()
{
  result = qword_27CF9EED8;
  if (!qword_27CF9EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EED8);
  }

  return result;
}

double block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_220F20A54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();

  [a3 setName_];
}

void sub_220F20AB8(uint64_t a1, void *a2)
{
  v3 = sub_220FC2960();

  [a2 setFilters_];
}

void sub_220F20B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v8 = [swift_unknownObjectRetain() blitCommandEncoder];
  if (!v8)
  {
    swift_unknownObjectRelease();
LABEL_6:
    sub_220F20DD0();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    return;
  }

  if ((a5 * a4) >> 64 == (a5 * a4) >> 63)
  {
    v9 = v8;
    OUTLINED_FUNCTION_0_61();
    [v10 v11];
    [v9 endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_220F20C34(void *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9 != a2 || [a1 pixelFormat] != a3)
  {
    LOBYTE(a5) = 2;
    goto LABEL_9;
  }

  if (a4 != 1)
  {
    LOBYTE(a5) = 1;
    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_9:
    sub_220F20DD0();
    swift_allocError();
    *v18 = a5;
    swift_willThrow();
    return;
  }

  v14 = [swift_unknownObjectRetain() blitCommandEncoder];
  if (!v14)
  {
    swift_unknownObjectRelease();
    LOBYTE(a5) = 0;
    goto LABEL_9;
  }

  if ((a8 * a7) >> 64 == (a8 * a7) >> 63)
  {
    v15 = v14;
    OUTLINED_FUNCTION_0_61();
    [v16 v17];
    [v15 endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_220F20DD0()
{
  result = qword_27CF9EEF0;
  if (!qword_27CF9EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EEF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StencilError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_220F20F00(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_220F20F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_220F20F94()
{
  result = qword_27CF9EEF8;
  if (!qword_27CF9EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EEF8);
  }

  return result;
}

uint64_t WeatherMapDisplayMode.isInteractiveWithAnimatedSnapshot.getter()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0 && (*(v0 + 8) & 1) == 0)
  {
    return OUTLINED_FUNCTION_27();
  }

  else
  {
    return OUTLINED_FUNCTION_4_1();
  }
}

uint64_t static WeatherMapDisplayMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v4)
      {
        if ((v7 & 1) == 0)
        {
          return OUTLINED_FUNCTION_4_1();
        }
      }

      else
      {
        if (v7)
        {
          return OUTLINED_FUNCTION_4_1();
        }

        if (v2 != v6 || v3 != v5)
        {
          return OUTLINED_FUNCTION_4_1();
        }
      }

      return *(a1 + 24) == *(a2 + 24);
    }

    return OUTLINED_FUNCTION_4_1();
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_4_1();
  }

  if (LOBYTE(v3))
  {
    if ((LOBYTE(v5) & 1) == 0)
    {
      return OUTLINED_FUNCTION_4_1();
    }
  }

  else if (LOBYTE(v5) & 1 | (v2 != v6))
  {
    return OUTLINED_FUNCTION_4_1();
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t static WeatherMapDisplayMode.SnapshotSizingBehavior.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return OUTLINED_FUNCTION_27();
    }

    return OUTLINED_FUNCTION_4_1();
  }

  if (*(a2 + 16))
  {
    return OUTLINED_FUNCTION_4_1();
  }

  return *(a1 + 8) == *(a2 + 8) && *a1 == *a2;
}

uint64_t static WeatherMapDisplayMode.SnapshotTransition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return OUTLINED_FUNCTION_27();
    }

    return OUTLINED_FUNCTION_4_1();
  }

  if (*(a2 + 8))
  {
    return OUTLINED_FUNCTION_4_1();
  }

  return *a1 == *a2;
}

uint64_t WeatherMapDisplayMode.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 2);
  if (v4 < 0)
  {
    MEMORY[0x223D9CFA0](1);
    if (LOBYTE(v3))
    {
      return MEMORY[0x223D9CFA0](0);
    }

    MEMORY[0x223D9CFA0](1);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0.0;
    }
  }

  else
  {
    v5 = v1[3];
    MEMORY[0x223D9CFA0](0);
    if (v4)
    {
      MEMORY[0x223D9CFA0](1);
    }

    else
    {
      MEMORY[0x223D9CFA0](0);
      sub_220F21618(v2, v3);
    }

    if ((*&v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0.0;
    }
  }

  return MEMORY[0x223D9CFD0](*&v7);
}

uint64_t WeatherMapDisplayMode.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_220FC3A40();
  WeatherMapDisplayMode.hash(into:)(v3);
  return sub_220FC3A90();
}

uint64_t sub_220F2122C(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_220FC3A40();
  WeatherMapDisplayMode.hash(into:)(v4);
  return sub_220FC3A90();
}

uint64_t WeatherMapDisplayMode.SnapshotSizingBehavior.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    return MEMORY[0x223D9CFA0](1);
  }

  v4 = *v1;
  v3 = *(v1 + 8);
  MEMORY[0x223D9CFA0](0);

  return sub_220F21618(v4, v3);
}

uint64_t WeatherMapDisplayMode.SnapshotSizingBehavior.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_220FC3A40();
  if (v3)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    MEMORY[0x223D9CFA0](0);
    sub_220F21618(v1, v2);
  }

  return sub_220FC3A90();
}

uint64_t sub_220F21368(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_220FC3A40();
  if (v4)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    MEMORY[0x223D9CFA0](0);
    sub_220F21618(v2, v3);
  }

  return sub_220FC3A90();
}

uint64_t WeatherMapDisplayMode.SnapshotTransition.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x223D9CFA0](0);
  }

  v2 = *v0;
  MEMORY[0x223D9CFA0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x223D9CFD0](v3);
}

uint64_t WeatherMapDisplayMode.SnapshotTransition.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_220FC3A40();
  if (v2)
  {
    MEMORY[0x223D9CFA0](0);
  }

  else
  {
    MEMORY[0x223D9CFA0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x223D9CFD0](v3);
  }

  return sub_220FC3A90();
}

uint64_t sub_220F214A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_220FC3A40();
  if (v3)
  {
    MEMORY[0x223D9CFA0](0);
  }

  else
  {
    MEMORY[0x223D9CFA0](1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x223D9CFD0](v4);
  }

  return sub_220FC3A90();
}

uint64_t WeatherMapDisplayMode.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EF00, &qword_220FD41E0);
  a1[4] = sub_220F21668();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220F215DC(uint64_t a1)
{
  sub_220F21948();

  return sub_220FC1290();
}

uint64_t sub_220F21618(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x223D9CFD0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x223D9CFD0](*&v3);
}

unint64_t sub_220F21668()
{
  result = qword_27CF9EF08;
  if (!qword_27CF9EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9EF00, &qword_220FD41E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EF08);
  }

  return result;
}

unint64_t sub_220F216D0()
{
  result = qword_2812C9F10;
  if (!qword_2812C9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9F10);
  }

  return result;
}

unint64_t sub_220F21728()
{
  result = qword_27CF9EF10;
  if (!qword_27CF9EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EF10);
  }

  return result;
}

unint64_t sub_220F21780()
{
  result = qword_27CF9EF18;
  if (!qword_27CF9EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EF18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherMapDisplayMode(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for WeatherMapDisplayMode(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherMapDisplayMode.SnapshotTransition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeatherMapDisplayMode.SnapshotTransition(uint64_t result, int a2, int a3)
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

uint64_t sub_220F21900(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220F2191C(uint64_t result, int a2)
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

unint64_t sub_220F21948()
{
  result = qword_27CF9EF20;
  if (!qword_27CF9EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EF20);
  }

  return result;
}

char *sub_220F21A10(const void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = sub_220E3D488(0, 1);
  }

  else
  {
    v8 = objc_allocWithZone(type metadata accessor for BackgroundEffectView());
    v7 = sub_220FADE6C(0, 0, 0, 0, 1);
  }

  *&v2[OBJC_IVAR____TtC11WeatherMaps9ScaleView_backgroundEffectView] = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  if (sub_220FC2300())
  {
    v9 = *&v2[OBJC_IVAR____TtC11WeatherMaps9ScaleView_backgroundEffectView];
    *&v9[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_cornerRadius] = 0x4030000000000000;
    v10 = v9;
    sub_220FADAEC();
  }

  memcpy(__dst, a1, 0x61uLL);
  v11 = objc_allocWithZone(type metadata accessor for MapScaleOverlayUIView());
  v12 = sub_220F762FC(__dst);
  v13 = OBJC_IVAR____TtC11WeatherMaps9ScaleView_scaleOverlayView;
  *&v3[OBJC_IVAR____TtC11WeatherMaps9ScaleView_scaleOverlayView] = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v3[v13] _setContinuousCornerRadius_];
  v26.receiver = v3;
  v26.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  if (DeviceSupportsMapsControlEffects())
  {
    [v14 addSubview_];
  }

  else
  {
    v15 = *&v14[OBJC_IVAR____TtC11WeatherMaps9ScaleView_scaleOverlayView];
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 tertiarySystemBackgroundColor];
    [v17 setBackgroundColor_];
  }

  [v14 addSubview_];
  v19 = qword_2812C5B30;
  v20 = v14;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_2812CE4B0;
  v22 = sub_220FBFF80();
  v24 = v23;

  sub_220FB51A4(v22, v24, v20);
  [v20 setAccessibilityContainerType_];
  [v20 setShouldGroupAccessibilityChildren_];

  return v20;
}

id sub_220F21D6C()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  return sub_220F21DC0(v1, v2);
}

id sub_220F21DC0(double a1, double a2)
{
  [*(v2 + OBJC_IVAR____TtC11WeatherMaps9ScaleView_backgroundEffectView) setFrame_];
  v5 = *(v2 + OBJC_IVAR____TtC11WeatherMaps9ScaleView_scaleOverlayView);

  return [v5 setFrame_];
}

void sub_220F21F90(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_220FC3480();
    sub_220EA9C1C();
    sub_220F2276C(&qword_2812C5B38, sub_220EA9C1C, MEMORY[0x277D85378]);
    sub_220FC2C40();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_220FC34F0() || (sub_220EA9C1C(), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_220EA9CB8(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x223D9BEA0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_220F22204()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 connectedScenes];

  sub_220EA9C1C();
  sub_220F2276C(&qword_2812C5B38, sub_220EA9C1C, MEMORY[0x277D85378]);
  v3 = sub_220FC2C10();

  sub_220F21F90(v3);
  v5 = v4;

  if (sub_220F43CDC())
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223D9CB30](0, v5);
      goto LABEL_5;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v5 + 32);
LABEL_5:
      v7 = v6;

      v8 = [v7 _systemUserInterfaceStyle];

      return v8;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_2812C5EC8 != -1)
  {
LABEL_13:
    swift_once();
  }

  v9 = sub_220FC17A0();
  __swift_project_value_buffer(v9, qword_2812C5ED0);
  v10 = sub_220FC1780();
  v11 = sub_220FC2E10();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_220E15000, v10, v11, "Expected a window scene, but don't have one. This is a serious error.", v12, 2u);
    MEMORY[0x223D9DDF0](v12, -1, -1);
  }

  v13 = [v0 sharedApplication];
  sub_220FC2DD0();

  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v14 = sub_220FC2520();
  v8 = [v14 userInterfaceStyle];

  __swift_destroy_boxed_opaque_existential_0(v16);
  return v8;
}

uint64_t sub_220F22474()
{
  result = sub_220FC26C0();
  qword_2812CE4B8 = result;
  return result;
}

uint64_t UIUserInterfaceStyle.shortDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    if (a1 == 2)
    {
      v3 = 0xE400000000000000;
      v4 = 1802658148;
    }

    else if (a1 == 1)
    {
      v3 = 0xE500000000000000;
      v4 = 0x746867696CLL;
    }

    else
    {
      v3 = 0xE700000000000000;
      v4 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v3 = 0xEB00000000646569;
    v4 = 0x6669636570736E75;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90, &qword_220FC8F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E30;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  sub_220FC2600();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EF38, &qword_220FD43F0);
  a2[4] = sub_220F22608();
  __swift_allocate_boxed_opaque_existential_1(a2);
  type metadata accessor for UIUserInterfaceStyle(0);
  return sub_220FC12A0();
}

unint64_t sub_220F22608()
{
  result = qword_2812C5F60;
  if (!qword_2812C5F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9EF38, &qword_220FD43F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5F60);
  }

  return result;
}

uint64_t sub_220F226BC(uint64_t a1)
{
  sub_220F2276C(&unk_2812C5C60, type metadata accessor for UIUserInterfaceStyle, &protocol conformance descriptor for UIUserInterfaceStyle);

  return sub_220FC1290();
}

unint64_t sub_220F22728(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_220F22748(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_220F2276C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL MapsConfiguration.windOverlayEnabled.getter()
{
  if (qword_2812CA0E8 != -1)
  {
    swift_once();
  }

  if ((sub_220FC0A50() & 1) == 0)
  {
    return (sub_220FC0DA0() & 1) == 0;
  }

  sub_220FC0AB0();
  sub_220FC0A90();
  if (qword_27CF9C150 != -1)
  {
    swift_once();
  }

  v0 = sub_220FC0A70();

  return v0 & 1;
}

id sub_220F22894(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_imageView] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_iconFontUsed] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_lowHighLabelsView] = 0;
  *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_footerLabel] = 0;
  v4 = &v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 24) = *(a1 + 48);
  sub_220F2322C(a1, v9);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F22970();
  sub_220F23288(a1);

  return v6;
}

void sub_220F22970()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 8];
  v5 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 16];
  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 24];
  v7 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 32];
  v6 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 40];
  v8 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 48];
  if (v8 >> 14)
  {
    if (v8 >> 14 == 1)
    {
      *&v38 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model];
      *(&v38 + 1) = v3;
      v39 = v5;
      v40 = v4;
      v41 = v7;
      v42 = v6;
      v9 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationLowHighLabelsView());
      sub_220F232DC(v2, v3, v5, v4, v7, *&v6, v8);

      v10 = v7;
      v11 = *&v6;
      v12 = sub_220F9607C(&v38);
      [v0 addSubview_];

      v13 = &OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_lowHighLabelsView;
    }

    else
    {
      v16 = objc_allocWithZone(MEMORY[0x277D756B8]);

      v17 = v5;
      v12 = [v16 init];
      v18 = sub_220FC26C0();
      [v12 setText_];

      sub_220E1966C(0, &qword_2812C5B80, 0x277D74300);
      v19 = sub_220FC3150();
      [v12 setFont_];
      [v12 setTextAlignment_];
      [v12 setTextColor_];
      [v12 setAdjustsFontSizeToFitWidth_];
      [v12 setMinimumScaleFactor_];
      [v1 addSubview_];

      v13 = &OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_footerLabel;
    }
  }

  else
  {
    v37 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 8];
    if (v7)
    {
      v14 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 32];
      v15 = v14;
    }

    else
    {
      v15 = *MEMORY[0x277D76938];
      v14 = 0;
    }

    if (v8)
    {
      v20 = *MEMORY[0x277D74418];
    }

    else
    {
      v20 = v6;
    }

    sub_220E1966C(0, &qword_2812C5B50, 0x277D755B8);
    sub_220F232DC(v2, v37, v5, v4, v7, *&v6, v8);
    v21 = v14;
    v22 = sub_220F6DF04(v2, v37, v15, -1, 0x8000, 0, v5, v20);
    v24 = v23;

    v36 = v22;
    v25 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
    v26 = v25;
    if (v4)
    {
      [v25 setTintColor_];
    }

    [v26 setContentMode_];
    [v26 sizeToFit];
    [v1 addSubview_];
    v27 = *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_imageView];
    *&v1[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_imageView] = v26;
    v35 = v26;

    if (v7)
    {
      v28 = sub_220FC2700();
      v30 = v29;
      if (v28 == sub_220FC2700() && v30 == v31)
      {
      }

      else
      {
        sub_220FC3940();
      }
    }

    sub_220E1966C(0, &qword_2812C5B80, 0x277D74300);
    v12 = sub_220FC3150();

    sub_220F233A4(v2, v37, v5, v4, v7, *&v6, v8);
    v13 = &OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_iconFontUsed;
  }

  v33 = *v13;
  v34 = *&v1[v33];
  *&v1[v33] = v12;
}

void sub_220F22E20()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_iconFontUsed) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_lowHighLabelsView) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_footerLabel) = 0;
  sub_220FC3740();
  __break(1u);
}

void sub_220F22EC4()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_imageView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_iconFontUsed];
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      v5 = sub_220F2309C();
      [v4 ascender];
      v7 = v5 - v6;
      v8 = sub_220F230C8();
      [v4 descender];
      v10 = v8 + v9;
      OUTLINED_FUNCTION_0_62();
      v11 = fmax(CGRectGetHeight(v19) - v10 - v7, 12.0);
      v12 = v3;
      OUTLINED_FUNCTION_0_62();
      CGRectGetWidth(v20);
      [v12 bounds];
      [v12 setBounds_];
      OUTLINED_FUNCTION_0_62();
      v13 = CGRectGetWidth(v21) * 0.5;
      OUTLINED_FUNCTION_0_62();
      [v12 setCenter_];

LABEL_7:
      return;
    }
  }

  v14 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_lowHighLabelsView];
  if (v14 || (v14 = *&v0[OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_footerLabel]) != 0)
  {
    v12 = v14;
    OUTLINED_FUNCTION_1_1();
    MinX = CGRectGetMinX(v23);
    OUTLINED_FUNCTION_1_1();
    v16 = CGRectGetMinY(v24) + -2.0;
    OUTLINED_FUNCTION_1_1();
    Width = CGRectGetWidth(v25);
    OUTLINED_FUNCTION_1_1();
    [v12 setFrame_];
    goto LABEL_7;
  }
}

double sub_220F2309C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 48);
  result = 14.0;
  if ((v1 & 0x100) == 0)
  {
    result = 18.0;
  }

  if (v1 >= 0x4000)
  {
    return 18.0;
  }

  return result;
}

double sub_220F230C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps37WeatherMapAnnotationFooterSectionView_model + 48);
  result = 8.0;
  if ((v1 & 0x100) == 0)
  {
    result = 5.0;
  }

  if (v1 >= 0x4000)
  {
    return 5.0;
  }

  return result;
}

void sub_220F232DC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, unsigned __int16 a7)
{
  switch(a7 >> 14)
  {
    case 1:

      v12 = a5;
      v9 = a6;
      goto LABEL_5;
    case 2:

      v9 = a3;
      goto LABEL_5;
    case 3:
      return;
    default:
      v8 = a5;

      v9 = a4;
LABEL_5:

      v13 = v9;
      return;
  }
}

void sub_220F233A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, unsigned __int16 a7)
{
  switch(a7 >> 14)
  {
    case 1:

      v8 = a6;
      goto LABEL_5;
    case 2:

      v8 = a3;
      goto LABEL_5;
    case 3:
      return;
    default:

      v8 = a5;
LABEL_5:

      return;
  }
}

void sub_220F2346C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a1 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      sub_220F24E74(v16, a2, a3);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_220F235B4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v9 = 0;
  v10 = *(a1 + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = *(type metadata accessor for WeatherMapAnnotatedLocationData(0) - 8);
    sub_220F2531C(a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a2, a3, a4);
  }

  while (!v4);
}

void sub_220F23694()
{
  type metadata accessor for WeatherMapAnnotation(0);
  v1 = sub_220FC2600();
  swift_beginAccess();
  *(v0 + 224) = v1;

  sub_220F23708();
}

void sub_220F23708()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v115 = v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220FC1070();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v123 = v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  v9 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v10);
  v12 = v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v120 = v110 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = v110 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v110 - v22;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v118 = v9;
  v124 = v19;
  v116 = v6;
  v119 = v12;
  v122 = v5;
  swift_unknownObjectRelease();
  v131 = MEMORY[0x277D84FA0];
  v24 = MEMORY[0x277D84F90];
  v129 = MEMORY[0x277D84F90];
  v130 = MEMORY[0x277D84F90];
  swift_beginAccess();

  sub_220F2346C(v25, v1, &v131);

  sub_220F235B4(v26, v1, &v130, &v129);

  v111 = v24;
  v127[0] = v24;
  v27 = v131 + 56;
  v28 = 1 << *(v131 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v131 + 56);
  v31 = (v28 + 63) >> 6;
  v112 = v131;

  v32 = 0;
  v125 = v1;
LABEL_5:
  if (v30)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {
      v45 = v112;

      v46 = 1 << *(v45 + 32);
      v47 = -1;
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      v48 = v47 & *(v45 + 56);
      v49 = (v46 + 63) >> 6;

      v50 = 0;
      if (v48)
      {
        goto LABEL_23;
      }

      while (1)
      {
        v51 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_68;
        }

        if (v51 >= v49)
        {
          break;
        }

        v48 = *(v27 + 8 * v51);
        ++v50;
        if (v48)
        {
          v50 = v51;
          do
          {
LABEL_23:
            v52 = (*(v112 + 48) + ((v50 << 10) | (16 * __clz(__rbit64(v48)))));
            v54 = *v52;
            v53 = v52[1];
            swift_beginAccess();

            v55 = sub_220F19120(v54, v53);
            if (v56)
            {
              v57 = v55;
              swift_isUniquelyReferenced_nonNull_native();
              v127[0] = *(v1 + 224);
              *(v1 + 224) = 0x8000000000000000;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EF88, &unk_220FD4670);
              v1 = v125;
              sub_220FC3710();
              v58 = v127[0];

              type metadata accessor for WeatherMapAnnotation(0);
              sub_220FC3730();
              *(v1 + 224) = v58;
            }

            v48 &= v48 - 1;
            swift_endAccess();
          }

          while (v48);
        }
      }

      v59 = v130;
      v60 = *(v130 + 16);
      v61 = MEMORY[0x277D84F90];
      v110[1] = v130;
      if (v60)
      {
        v128 = MEMORY[0x277D84F90];
        sub_220FC3670();
        v62 = v59 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
        v63 = *(v118 + 72);
        v64 = v124;
        do
        {
          sub_220F26AD4(v62, v23, type metadata accessor for WeatherMapAnnotatedLocationData);
          sub_220F26AD4(v23, v64, type metadata accessor for WeatherMapAnnotatedLocationData);
          LOBYTE(v127[0]) = *(v1 + 256);
          v65 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotation(0));
          sub_220FBF76C(v64, v127);
          sub_220F280A8(v23, type metadata accessor for WeatherMapAnnotatedLocationData);
          sub_220FC3640();
          sub_220FC3680();
          sub_220FC3690();
          sub_220FC3650();
          v62 += v63;
          --v60;
        }

        while (v60);
        v61 = v128;
      }

      v124 = sub_220F43CDC();
      v66 = 0;
      v118 = v61 & 0xC000000000000001;
      v117 = v61 & 0xFFFFFFFFFFFFFF8;
      v114 = (v116 + 32);
      v113 = (v116 + 16);
      v67 = (v116 + 8);
      v68 = v122;
      v69 = v123;
      v116 = v61;
      while (2)
      {
        if (v124 == v66)
        {
          v97 = v111;
          if (sub_220F43CDC() && swift_unknownObjectWeakLoadStrong())
          {
            v98 = sub_220F2B970(v97);
            sub_220F26B34(v1, v98);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          if (v124 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
          {
            v100 = Strong;
            v101 = sub_220F2B970(v61);
            sub_220F26D1C(v1, v101, v100);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          sub_220F245E4();
          sub_220F2482C();
          v102 = v129;
          if (sub_220F43CDC())
          {
            v103 = swift_unknownObjectWeakLoadStrong();
            if (v103)
            {
              sub_220F2707C(v1, v102, v103);
              swift_unknownObjectRelease();
            }
          }

          v104 = *(v1 + 184);
          if (v104 && (v105 = v104, v106 = sub_220FBF098(), v108 = sub_220F282CC(v106, v107, v112), , v105, v108))
          {
            v109 = *(v1 + 184);
            *(v1 + 184) = 0;
          }

          else
          {
          }

          return;
        }

        if (v118)
        {
          v70 = MEMORY[0x223D9CB30](v66, v61);
        }

        else
        {
          if (v66 >= *(v117 + 16))
          {
            goto LABEL_70;
          }

          v70 = *(v61 + 8 * v66 + 32);
        }

        v71 = v70;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_69;
        }

        v72 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
        swift_beginAccess();
        v73 = v71 + v72;
        v74 = v120;
        sub_220F26AD4(v73, v120, type metadata accessor for WeatherMapAnnotatedLocationData);
        v75 = v74;
        v76 = v119;
        sub_220F28100(v75, v119, type metadata accessor for WeatherMapAnnotatedLocationData);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v77 = v76;
          v78 = v115;
          sub_220F28100(v77, v115, type metadata accessor for WeatherMapAnnotatedLocation);
          (*v113)(v69, v78, v68);
          sub_220F280A8(v78, type metadata accessor for WeatherMapAnnotatedLocation);
        }

        else
        {
          (*v114)(v69, v76, v68);
        }

        v79 = sub_220FC1020();
        v81 = v80;
        (*v67)(v69, v68);
        swift_beginAccess();
        v82 = v71;
        swift_isUniquelyReferenced_nonNull_native();
        v126 = *(v1 + 224);
        v83 = v126;
        *(v1 + 224) = 0x8000000000000000;
        v84 = sub_220F19120(v79, v81);
        if (__OFADD__(v83[2], (v85 & 1) == 0))
        {
          goto LABEL_71;
        }

        v86 = v84;
        v87 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EF88, &unk_220FD4670);
        if (sub_220FC3710())
        {
          v88 = sub_220F19120(v79, v81);
          v1 = v125;
          if ((v87 & 1) != (v89 & 1))
          {
            goto LABEL_73;
          }

          v86 = v88;
          if ((v87 & 1) == 0)
          {
LABEL_44:
            v90 = v126;
            v126[(v86 >> 6) + 8] |= 1 << v86;
            v91 = (v90[6] + 16 * v86);
            *v91 = v79;
            v91[1] = v81;
            *(v90[7] + 8 * v86) = v82;
            v92 = v90[2];
            v93 = __OFADD__(v92, 1);
            v94 = v92 + 1;
            if (v93)
            {
              goto LABEL_72;
            }

            v90[2] = v94;
            goto LABEL_48;
          }
        }

        else
        {
          v1 = v125;
          if ((v87 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        v90 = v126;
        v95 = v126[7];
        v96 = *(v95 + 8 * v86);
        *(v95 + 8 * v86) = v82;

LABEL_48:
        *(v1 + 224) = v90;
        swift_endAccess();

        ++v66;
        v68 = v122;
        v69 = v123;
        v61 = v116;
        continue;
      }
    }

    v30 = *(v27 + 8 * v33);
    ++v32;
    if (v30)
    {
      v32 = v33;
LABEL_10:
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v35 = (*(v112 + 48) + ((v32 << 10) | (16 * v34)));
      v37 = *v35;
      v36 = v35[1];
      swift_beginAccess();
      v38 = *(v1 + 224);
      v39 = *(v38 + 16);

      if (v39 && (v40 = sub_220F19120(v37, v36), (v41 & 1) != 0))
      {
        v42 = *(*(v38 + 56) + 8 * v40);
        swift_endAccess();
        v43 = v42;

        MEMORY[0x223D9BEA0](v44);
        if (*((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_220FC29C0();
        }

        sub_220FC29F0();
        v111 = v127[0];
        v1 = v125;
      }

      else
      {
        swift_endAccess();

        v1 = v125;
      }

      goto LABEL_5;
    }
  }

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
  sub_220FC3990();
  __break(1u);
}

double sub_220F2425C(uint64_t a1, uint64_t a2)
{
  *(v2 + 216) = a2;
  swift_unknownObjectWeakAssign();
  sub_220F23694();

  swift_unknownObjectRelease();
  return result;
}

void sub_220F242A4(uint64_t a1)
{

  sub_220F355D4();
  v2 = v1;

  if ((v2 & 1) == 0)
  {

    sub_220F23708();
  }
}

double sub_220F24314(uint64_t a1)
{
  v2 = *(v1 + 232);
  *(v1 + 232) = a1;
  sub_220F242A4(v2);

  return result;
}

void sub_220F24354(void *a1)
{
  v2 = *(v1 + 240);
  if (a1)
  {
    if (v2)
    {
      v3 = a1;
      sub_220E1966C(0, &unk_2812C5CB0, 0x277CCAE48);
      v4 = v2;
      v5 = v3;
      LOBYTE(v3) = sub_220FC3250();

      if (v3)
      {
        return;
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  sub_220F23708();
}

void sub_220F24404(void *a1)
{
  v3 = *(v1 + 240);
  *(v1 + 240) = a1;
  v2 = a1;
  sub_220F24354(v3);
}

void sub_220F2445C(void *a1)
{
  v2 = *(v1 + 248);
  if (a1)
  {
    if (v2)
    {
      v3 = a1;
      sub_220E1966C(0, &qword_2812C5D00, 0x277CCAE40);
      v4 = v2;
      v5 = v3;
      LOBYTE(v3) = sub_220FC3250();

      if (v3)
      {
        return;
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  sub_220F23708();
}

void sub_220F2450C(void *a1)
{
  v3 = *(v1 + 248);
  *(v1 + 248) = a1;
  v2 = a1;
  sub_220F2445C(v3);
}

void sub_220F24564(unsigned __int8 *result, __n128 a2)
{
  v3 = *result;
  v4 = *(v2 + 256);
  switch(v3)
  {
    case 5:
      if (v4 == 5)
      {
        return;
      }

      goto LABEL_9;
    case 4:
      if (v4 == 4)
      {
        return;
      }

      goto LABEL_9;
    case 3:
      if (v4 == 3)
      {
        return;
      }

      goto LABEL_9;
  }

  if (v3 != v4 || (v4 - 6) >= 0xFFFFFFFD)
  {
LABEL_9:
    sub_220F245E4();

    sub_220F2482C();
  }
}

void sub_220F245E4()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeatherMapAnnotationViewModel(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_zoomLevel);
  if (v10 >= 4.0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v10 >= 16.0)
  {
    v11 = 0;
  }

  *(v0 + 176) = v11;
  sub_220F2571C();
  v13 = v12;
  v14 = sub_220F43CDC();
  v15 = 0;
  v20 = v13 & 0xC000000000000001;
  while (1)
  {
    if (v14 == v15)
    {

      return;
    }

    if (v20)
    {
      v16 = MEMORY[0x223D9CB30](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v18 = *&v16[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation];
    v19 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
    swift_beginAccess();
    sub_220F26AD4(v18 + v19, v5, type metadata accessor for WeatherMapAnnotatedLocationData);
    sub_220F2587C(v5, [v17 isSelected], v9);
    sub_220F280A8(v5, type metadata accessor for WeatherMapAnnotatedLocationData);
    __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
    sub_220EE695C(v17, v9, 1);
    sub_220F280A8(v9, type metadata accessor for WeatherMapAnnotationViewModel);

    ++v15;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_220F2482C()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapAnnotationContentViewModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v33[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v33[-1] - v8);
  v10 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v33[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WeatherMapAnnotationViewModel(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v33[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 184);
  if (v18)
  {
    v32 = v5;
    v19 = *(v1 + 256);
    v20 = v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay;
    swift_beginAccess();
    v21 = type metadata accessor for WeatherMapOverlay(0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21))
    {
      if (v19 != 6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v22 = *(v20 + 200);
      if (v19 == 6)
      {
        if (v22 != 6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v22 == 6)
        {
          goto LABEL_10;
        }

        switch(v19)
        {
          case 5:
            if (v22 != 5)
            {
              goto LABEL_10;
            }

            break;
          case 4:
            if (v22 != 4)
            {
              goto LABEL_10;
            }

            break;
          case 3:
            if (v22 != 3)
            {
              goto LABEL_10;
            }

            break;
          default:
            if ((v22 - 6) > 0xFFFFFFFC || v19 != v22)
            {
              goto LABEL_10;
            }

            break;
        }
      }
    }

    if (!__swift_getEnumTagSinglePayload(v20, 1, v21))
    {
      memcpy(v36, (v20 + 16), 0xB8uLL);
      v23 = v18;
      sub_220E56868(v36, v33);
      sub_220F1505C(v33);
      sub_220E56918(v36);
      memcpy(v35, v33, 0x60uLL);
LABEL_11:
      memcpy(v33, v35, 0x60uLL);
      __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
      v25 = OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView_annotation;
      v26 = *&v18[OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView_annotation];
      v27 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
      swift_beginAccess();
      sub_220F26AD4(v26 + v27, v13, type metadata accessor for WeatherMapAnnotatedLocationData);
      v34[0] = *(v1 + 256);
      v28 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle;
      sub_220F6E0C4(v13, v34, v33, *(v1 + 176), *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle), v17);
      sub_220F280A8(v13, type metadata accessor for WeatherMapAnnotatedLocationData);
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      v29 = *&v18[v25];
      v34[0] = *(v1 + 256);
      sub_220ED1C58(v29, v17, v34, v33, *(v1 + v28), v9);
      sub_220E3B2DC(v35, &qword_27CF9EF78, &unk_220FD4660);
      v30 = v32;
      sub_220F26AD4(v9, v32, type metadata accessor for WeatherMapAnnotationContentViewModel);
      sub_220E3CBBC(v30);

      sub_220F280A8(v9, type metadata accessor for WeatherMapAnnotationContentViewModel);
      sub_220F280A8(v17, type metadata accessor for WeatherMapAnnotationViewModel);
      return;
    }

LABEL_10:
    memset(v35, 0, 96);
    v24 = v18;
    goto LABEL_11;
  }
}

void sub_220F24C14(_BYTE *a1, __n128 a2)
{
  v3 = *(v2 + 256);
  *(v2 + 256) = *a1;
  v4 = v3;
  sub_220F24564(&v4, a2);
}

void sub_220F24C48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80, &unk_220FC9670);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v7 - v3;
  v5 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay;
  swift_beginAccess();
  sub_220ED6038(v0 + v5, v4, &unk_27CF9EB80, &unk_220FC9670);
  v6 = type metadata accessor for WeatherMapOverlay(0);
  __swift_getEnumTagSinglePayload(v4, 1, v6);
  sub_220E3B2DC(v4, &unk_27CF9EB80, &unk_220FC9670);
  sub_220F245E4();
  sub_220F2482C();
}

uint64_t sub_220F24D30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay;
  swift_beginAccess();
  sub_220F26628(a1, v1 + v3);
  swift_endAccess();
  sub_220F24C48();
  return sub_220E3B2DC(a1, &unk_27CF9EB80, &unk_220FC9670);
}

void sub_220F24DAC(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle) != a1)
  {
    sub_220F245E4();

    sub_220F2482C();
  }
}

void sub_220F24DF0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle) = a1;
  sub_220F24DAC(v2);
}

void sub_220F24E08(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_zoomLevel);
  if (v2 != a1)
  {
    v3 = *(v1 + 176);
    if (v2 >= 16.0)
    {
      if (!*(v1 + 176))
      {
        return;
      }
    }

    else if (v2 >= 4.0)
    {
      if (v3 == 1)
      {
        return;
      }
    }

    else if (v3 == 2)
    {
      return;
    }

    sub_220F245E4();
  }
}

void sub_220F24E5C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_zoomLevel);
  *(v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_zoomLevel) = a1;
  sub_220F24E08(v2);
}

void sub_220F24E74(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220FC1070();
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  v14 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EBA0, qword_220FD28A0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v41 - v24;
  v26 = *a1;
  v51 = a1[1];
  v52 = v26;
  v27 = *(a2 + 232);
  v47 = *(v27 + 16);
  if (v47)
  {
    v41 = a3;
    v42 = v25;
    v49 = v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v45 = (v48 + 4);
    v43 = v3;
    v44 = (v48 + 2);
    ++v48;

    v29 = 0;
    v50 = v28;
    while (v29 < *(v28 + 16))
    {
      v30 = v14;
      sub_220F26AD4(v49 + *(v14 + 72) * v29, v21, type metadata accessor for WeatherMapAnnotatedLocationData);
      sub_220F26AD4(v21, v17, type metadata accessor for WeatherMapAnnotatedLocationData);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v46;
        sub_220F28100(v17, v46, type metadata accessor for WeatherMapAnnotatedLocation);
        (*v44)(v13, v31, v10);
        sub_220F280A8(v31, type metadata accessor for WeatherMapAnnotatedLocation);
      }

      else
      {
        (*v45)(v13, v17, v10);
      }

      v32 = v10;
      v33 = sub_220FC1020();
      v35 = v34;
      (*v48)(v13, v32);
      if (v33 == v52 && v35 == v51)
      {

LABEL_16:

        v40 = v42;
        sub_220F28100(v21, v42, type metadata accessor for WeatherMapAnnotatedLocationData);
        __swift_storeEnumTagSinglePayload(v40, 0, 1, v54);
        sub_220E3B2DC(v40, &unk_27CF9EBA0, qword_220FD28A0);
        return;
      }

      v37 = sub_220FC3940();

      if (v37)
      {
        goto LABEL_16;
      }

      ++v29;
      sub_220F280A8(v21, type metadata accessor for WeatherMapAnnotatedLocationData);
      v10 = v32;
      v14 = v30;
      v28 = v50;
      if (v47 == v29)
      {

        v25 = v42;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v38 = v25;
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v54);
    v39 = v51;

    sub_220E4A3E0(&v53, v52, v39);

    sub_220E3B2DC(v38, &unk_27CF9EBA0, qword_220FD28A0);
  }
}

void sub_220F2531C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v36 = a4;
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8, &unk_220FD08F0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v37 = &v36 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  v39 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_220FC1070();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220F05E6C(v23);
  sub_220FC1020();
  (*(v20 + 8))(v23, v19);
  swift_beginAccess();
  v24 = sub_220F6DAB0();

  if (v24)
  {
    swift_endAccess();
    v25 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
    swift_beginAccess();
    sub_220F26AD4(v24 + v25, v18, type metadata accessor for WeatherMapAnnotatedLocationData);
    LOBYTE(v25) = sub_220F05FB8(v18, a1);
    sub_220F280A8(v18, type metadata accessor for WeatherMapAnnotatedLocationData);
    if ((v25 & 1) == 0)
    {
      sub_220FBEEAC(v14);
      v26 = sub_220FC0760();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v26);
      sub_220E3B2DC(v14, &qword_27CF9CEE8, &unk_220FD08F0);
      if (EnumTagSinglePayload == 1)
      {
        v28 = v37;
        sub_220F05D10(v37);
        v29 = __swift_getEnumTagSinglePayload(v28, 1, v26);
        sub_220E3B2DC(v28, &qword_27CF9CEE8, &unk_220FD08F0);
        if (v29 != 1)
        {
          v30 = v24;
          MEMORY[0x223D9BEA0]();
          sub_220F09670();
          sub_220FC29F0();
        }
      }

      v31 = v38;
      sub_220F05D10(v38);
      sub_220FBF1BC(v31);
    }
  }

  else
  {
    swift_endAccess();
    v32 = v40;
    sub_220E45260(v33);
    v34 = *(*v32 + 16);
    sub_220F095EC(v34);
    v35 = *v32;
    *(v35 + 16) = v34 + 1;
    sub_220F26AD4(a1, v35 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v34, type metadata accessor for WeatherMapAnnotatedLocationData);
  }
}

void sub_220F2571C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x277D84F90];
  if (Strong)
  {
    v2 = sub_220F26998();
    swift_unknownObjectRelease();
    v3 = sub_220F43CDC();
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223D9CB30](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      type metadata accessor for WeatherMapAnnotationView(0);
      if (swift_dynamicCastClass())
      {
        MEMORY[0x223D9BEA0]();
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_220FC29C0();
        }

        sub_220FC29F0();
        ++v4;
      }

      else
      {

        ++v4;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_220F2587C@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v61 = a2;
  v7 = type metadata accessor for WeatherMapAnnotationViewModel(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 256);
  v12 = v3 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay;
  swift_beginAccess();
  v13 = type metadata accessor for WeatherMapOverlay(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    if (v11 != 6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = *(v12 + 200);
    if (v11 == 6)
    {
      if (v14 != 6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v14 == 6)
      {
        goto LABEL_9;
      }

      switch(v11)
      {
        case 5:
          if (v14 != 5)
          {
            goto LABEL_9;
          }

          break;
        case 4:
          if (v14 != 4)
          {
            goto LABEL_9;
          }

          break;
        case 3:
          if (v14 != 3)
          {
            goto LABEL_9;
          }

          break;
        default:
          if ((v14 - 6) > 0xFFFFFFFC || v11 != v14)
          {
            goto LABEL_9;
          }

          break;
      }
    }
  }

  if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    memcpy(v65, (v12 + 16), 0xB8uLL);
    sub_220E56868(v65, v62);
    sub_220F1505C(v62);
    sub_220E56918(v65);
    memcpy(v64, v62, 0x60uLL);
    goto LABEL_10;
  }

LABEL_9:
  memset(v64, 0, 96);
LABEL_10:
  memcpy(v62, v64, 0x60uLL);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v63 = *(v4 + 256);
  v15 = *(v4 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_zoomLevel);
  if (v15 >= 4.0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 16.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_220F6E0C4(a1, &v63, v62, v17, *(v4 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle), v10);
  sub_220E3B2DC(v64, &qword_27CF9EF78, &unk_220FD4660);
  v18 = *v10;
  v49 = *(v10 + 1);
  v19 = v49;
  v50 = v18;
  v47 = *(v10 + 2);
  v20 = v10[24];
  v21 = v10[25];
  v60 = v10[27];
  v22 = *(v10 + 4);
  v23 = *(v10 + 5);
  v24 = *(v10 + 7);
  v58 = *(v10 + 6);
  v59 = v22;
  v52 = v24;
  v53 = v23;
  v25 = v10[64];
  v56 = v21;
  v57 = v25;
  sub_220F26AD4(&v10[v7[9]], a3 + v7[9], type metadata accessor for WeatherMapAnnotationBackground);
  v26 = v7[11];
  v51 = *&v10[v7[10]];
  v48 = *&v10[v26];
  v27 = v7[13];
  v46 = *&v10[v7[12]];
  v28 = *&v10[v27];
  v29 = *&v10[v27 + 8];
  v30 = &v10[v7[14]];
  v31 = *(v30 + 1);
  v54 = *v30;
  v55 = v28;
  v32 = v19;
  v33 = v47;
  sub_220E5696C(v18, v32);

  v51 = v51;
  v48 = v48;
  v34 = v46;
  v35 = v29;

  v36 = v53;

  result = sub_220F280A8(v10, type metadata accessor for WeatherMapAnnotationViewModel);
  v38 = v49;
  *a3 = v50;
  *(a3 + 8) = v38;
  *(a3 + 16) = v33;
  *(a3 + 24) = v20;
  *(a3 + 25) = v56;
  *(a3 + 26) = v61 & 1;
  *(a3 + 27) = v60;
  v39 = v58;
  *(a3 + 32) = v59;
  *(a3 + 40) = v36;
  v41 = v51;
  v40 = v52;
  *(a3 + 48) = v39;
  *(a3 + 56) = v40;
  *(a3 + 64) = v57;
  *(a3 + v7[10]) = v41;
  *(a3 + v7[11]) = v48;
  *(a3 + v7[12]) = v34;
  v42 = (a3 + v7[13]);
  v43 = v54;
  *v42 = v55;
  v42[1] = v35;
  v44 = (a3 + v7[14]);
  *v44 = v43;
  v44[1] = v31;
  return result;
}

uint64_t sub_220F25C58()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  sub_220E22990(v0 + 192);
  sub_220E22990(v0 + 208);

  sub_220E3B2DC(v0 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay, &unk_27CF9EB80, &unk_220FC9670);
  return v0;
}

uint64_t sub_220F25CE8()
{
  sub_220F25C58();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for WeatherMapAnnotationManager(uint64_t a1)
{
  result = qword_27CF9EF68;
  if (!qword_27CF9EF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220F25D94(uint64_t a1)
{
  sub_220F25E80(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_220F25E80(uint64_t a1)
{
  if (!qword_2812CA010)
  {
    type metadata accessor for WeatherMapOverlay(255);
    v1 = sub_220FC33A0();
    if (!v2)
    {
      atomic_store(v1, &qword_2812CA010);
    }
  }
}

char *sub_220F25ED8(char *a1)
{
  v4 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x28223BE20](v5, v6);
  v7 = OUTLINED_FUNCTION_1_55();
  v8 = type metadata accessor for WeatherMapAnnotationViewModel(v7);
  v9 = OUTLINED_FUNCTION_8_0(v8);
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_6_21();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v23[-v13 - 8];
  v15 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  OUTLINED_FUNCTION_5_1(&a1[OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation], v23);
  OUTLINED_FUNCTION_4_34();
  sub_220F26AD4(&a1[v15], v2, v16);
  sub_220F2587C(v2, 0, v14);
  OUTLINED_FUNCTION_5_24();
  OUTLINED_FUNCTION_3_33();
  sub_220F26AD4(v14, v1, v17);
  v18 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationView(0));
  v19 = sub_220F86A3C(a1, v1, 0, 0, 0);
  OUTLINED_FUNCTION_0_63();
  sub_220F280A8(v14, v20);
  *&v19[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_dataSource + 8] = &off_283484958;
  swift_unknownObjectWeakAssign();
  *&v19[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_delegate + 8] = &off_283484930;
  swift_unknownObjectWeakAssign();
  return v19;
}

void sub_220F26060(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 184);
  v5 = 0uLL;
  if (v4)
  {
    v7 = v4;
    v8 = [v7 superview];
    if (v8)
    {
      v9 = v8;
      [v7 frame];
      [v9 convertRect:a1 toCoordinateSpace:?];
      v17 = v10;
      v18 = v11;
      v16 = v12;
      v19 = v13;

      *&v15 = v16;
      *&v5 = v17;
      v14 = 0;
      *(&v5 + 1) = v18;
      *(&v15 + 1) = v19;
    }

    else
    {

      v14 = 1;
      v15 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    v14 = 1;
    v15 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = v15;
  *(a2 + 32) = v14;
}

id sub_220F26138(uint64_t a1)
{
  v4 = v1;
  v6 = type metadata accessor for WeatherMapAnnotationViewModel(0);
  v7 = OUTLINED_FUNCTION_8_0(v6);
  MEMORY[0x28223BE20](v7, v8);
  v9 = OUTLINED_FUNCTION_1_55();
  v10 = type metadata accessor for WeatherMapAnnotationContentViewModel(v9);
  v11 = OUTLINED_FUNCTION_8_0(v10);
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_6_21();
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v32[-1] - v15);
  v17 = *(v1 + 256);
  v18 = v1 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay;
  OUTLINED_FUNCTION_5_1(v18, &v36);
  v19 = type metadata accessor for WeatherMapOverlay(0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19))
  {
    if (v17 != 6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = *(v18 + 200);
    if (v17 == 6)
    {
      if (v20 != 6)
      {
LABEL_9:
        memset(v35, 0, sizeof(v35));
        goto LABEL_10;
      }
    }

    else
    {
      if (v20 == 6)
      {
        goto LABEL_9;
      }

      switch(v17)
      {
        case 5:
          if (v20 != 5)
          {
            goto LABEL_9;
          }

          break;
        case 4:
          if (v20 != 4)
          {
            goto LABEL_9;
          }

          break;
        case 3:
          if (v20 != 3)
          {
            goto LABEL_9;
          }

          break;
        default:
          if ((v20 - 6) > 0xFFFFFFFC || v17 != v20)
          {
            goto LABEL_9;
          }

          break;
      }
    }
  }

  if (__swift_getEnumTagSinglePayload(v18, 1, v19))
  {
    goto LABEL_9;
  }

  memcpy(v37, (v18 + 16), 0xB8uLL);
  sub_220E56868(v37, v32);
  sub_220F1505C(v32);
  sub_220E56918(v37);
  memcpy(v35, v32, sizeof(v35));
LABEL_10:
  memcpy(v32, v35, 0x60uLL);
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v21 = *(a1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation);
  v22 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel;
  OUTLINED_FUNCTION_5_1(a1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_viewModel, &v34);
  OUTLINED_FUNCTION_3_33();
  sub_220F26AD4(a1 + v22, v3, v23);
  v33 = *(v4 + 256);
  sub_220ED1C58(v21, v3, &v33, v32, *(v4 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle), v16);
  sub_220E3B2DC(v35, &qword_27CF9EF78, &unk_220FD4660);
  OUTLINED_FUNCTION_0_63();
  sub_220F280A8(v3, v24);
  sub_220F26AD4(v16, v2, type metadata accessor for WeatherMapAnnotationContentViewModel);
  v25 = objc_allocWithZone(type metadata accessor for WeatherMapAnnotationContentView(0));
  v26 = sub_220E3CD30(v21, v2);
  sub_220F280A8(v16, type metadata accessor for WeatherMapAnnotationContentViewModel);
  v27 = *(v4 + 184);
  *(v4 + 184) = v26;
  v28 = v26;

  return v28;
}

void sub_220F2643C(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    goto LABEL_8;
  }

  v11 = v2;
  type metadata accessor for WeatherMapAnnotationContentView(0);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

LABEL_8:
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v8 = sub_220FC17A0();
    __swift_project_value_buffer(v8, qword_2812C5ED0);
    v11 = sub_220FC1780();
    v9 = sub_220FC2E10();
    if (os_log_type_enabled(v11, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_220E15000, v11, v9, "Tap recognizer on annotation has incorrect view", v10, 2u);
      MEMORY[0x223D9DDF0](v10, -1, -1);
    }

    goto LABEL_12;
  }

  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(v4 + OBJC_IVAR____TtC11WeatherMaps31WeatherMapAnnotationContentView_annotation);
    sub_220F2788C(v1, v7, v6);

    swift_unknownObjectRelease();
    return;
  }

LABEL_12:
}

uint64_t sub_220F26628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80, &unk_220FC9670);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_220F26698(uint64_t a1)
{
  v3 = *(v1 + 184);
  *(v1 + 184) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_220F27BBC(v1, *(a1 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation), Strong);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_220F2671C(void *a1)
{
  type metadata accessor for WeatherMapAnnotationContentView(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v5 = *(v1 + 184);
    *(v1 + 184) = v3;
    v4 = a1;
  }
}

uint64_t sub_220F26790(char *a1, int a2, char a3)
{
  v8 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  v9 = OUTLINED_FUNCTION_8_0(v8);
  MEMORY[0x28223BE20](v9, v10);
  v11 = OUTLINED_FUNCTION_1_55();
  v12 = type metadata accessor for WeatherMapAnnotationViewModel(v11);
  v13 = OUTLINED_FUNCTION_8_0(v12);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v17 = *&a1[OBJC_IVAR____TtC11WeatherMaps24WeatherMapAnnotationView_mapAnnotation];
  v18 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  OUTLINED_FUNCTION_5_1(v17 + OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation, v23);
  OUTLINED_FUNCTION_4_34();
  sub_220F26AD4(v17 + v18, v4, v19);
  sub_220F2587C(v4, a2, v16);
  OUTLINED_FUNCTION_5_24();
  __swift_project_boxed_opaque_existential_1((v3 + 136), *(v3 + 160));
  sub_220EE695C(a1, v16, a3);
  OUTLINED_FUNCTION_0_63();
  return sub_220F280A8(v16, v20);
}

BOOL sub_220F268BC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_overlayKind);
  v3 = *(v1 + 256);
  switch(v2)
  {
    case 5:
      return v3 != 5;
    case 4:
      return v3 != 4;
    case 3:
      return v3 != 3;
  }

  if ((v3 - 3) < 3)
  {
    return 1;
  }

  return v2 != v3;
}

uint64_t sub_220F26930(void *a1)
{
  v2 = [a1 _annotationViews];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_220FC2970();

  return v3;
}

uint64_t sub_220F26998()
{
  v0 = sub_220EF8494();
  v1 = sub_220F26930(v0);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = v1 + 32;
      do
      {
        sub_220E21408(v4, v8);
        sub_220E5D784(v8, &v6);
        sub_220E1966C(0, &qword_2812C5CE0, 0x277CD4D98);
        if ((swift_dynamicCast() & 1) != 0 && v7)
        {
          MEMORY[0x223D9BEA0]();
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_220FC29C0();
          }

          sub_220FC29F0();
          v2 = v9;
        }

        v4 += 32;
        --v3;
      }

      while (v3);
    }
  }

  return v2;
}

uint64_t sub_220F26AD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_220F26B34(uint64_t a1, unint64_t a2)
{
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v3 = sub_220FC17A0();
  __swift_project_value_buffer(v3, qword_2812C5ED0);

  v4 = sub_220FC1780();
  v5 = sub_220FC2E30();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = sub_220F43CDC();

    _os_log_impl(&dword_220E15000, v4, v5, "Removing annotations. count=%{public}ld", v6, 0xCu);
    MEMORY[0x223D9DDF0](v6, -1, -1);
  }

  else
  {
  }

  v7 = sub_220EF8494();

  if (a2 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EF90, &unk_220FD4680);
    sub_220FC3750();
  }

  else
  {
    sub_220FC3960();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EF90, &unk_220FD4680);
  v8 = sub_220FC2960();

  [v7 removeAnnotations_];
}

uint64_t sub_220F26D1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0, &unk_220FCB0C0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v22 - v7;
  v9 = sub_220FC1070();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v14 = sub_220FC17A0();
  __swift_project_value_buffer(v14, qword_2812C5ED0);

  v15 = sub_220FC1780();
  v16 = sub_220FC2E30();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = sub_220F43CDC();

    _os_log_impl(&dword_220E15000, v15, v16, "Adding new annotations. count=%{public}ld", v17, 0xCu);
    MEMORY[0x223D9DDF0](v17, -1, -1);
  }

  else
  {
  }

  v18 = sub_220EF8494();

  if (a2 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EF90, &unk_220FD4680);
    sub_220FC3750();
  }

  else
  {
    sub_220FC3960();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EF90, &unk_220FD4680);
  v19 = sub_220FC2960();

  [v18 addAnnotations_];

  v20 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_selectedLocation;
  swift_beginAccess();
  sub_220ED6038(a3 + v20, v8, &unk_27CF9D6D0, &unk_220FCB0C0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_220E3B2DC(v8, &unk_27CF9D6D0, &unk_220FCB0C0);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_220EFE698(v13, 0);
  return (*(v10 + 8))(v13, v9);
}

void sub_220F2707C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v78 = a3;
  v80 = sub_220FC1070();
  v4 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v5);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC10, &unk_220FD28E0);
  MEMORY[0x28223BE20](v73, v7);
  v9 = &v58 - v8;
  v10 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v72, v13);
  v58 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v71 = &v58 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v70 = &v58 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0, &unk_220FCB0C0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v64 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v58 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v79 = &v58 - v30;
  v76 = a2;
  if (a2 >> 62)
  {
    goto LABEL_28;
  }

  v75 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v75)
  {
    v31 = v76;
    v74 = v76 & 0xC000000000000001;
    v69 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_selectedLocation;
    swift_beginAccess();
    v32 = 0;
    v66 = v31 & 0xFFFFFFFFFFFFFF8;
    v67 = (v4 + 32);
    v61 = (v4 + 16);
    v63 = (v4 + 8);
    v62 = v27;
    while (1)
    {
      if (v74)
      {
        v33 = MEMORY[0x223D9CB30](v32, v76);
      }

      else
      {
        if (v32 >= *(v66 + 16))
        {
          goto LABEL_27;
        }

        v33 = *(v76 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        v75 = sub_220FC34C0();
        goto LABEL_3;
      }

      v4 = sub_220EF8494();
      v36 = [v4 viewForAnnotation_];

      if (v36)
      {
        break;
      }

LABEL_23:

      ++v32;
      if (v35 == v75)
      {
        return;
      }
    }

    sub_220ED6038(v78 + v69, v79, &unk_27CF9D6D0, &unk_220FCB0C0);
    v37 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
    swift_beginAccess();
    v38 = v70;
    sub_220F26AD4(v34 + v37, v70, type metadata accessor for WeatherMapAnnotatedLocationData);
    v39 = v38;
    v40 = v71;
    sub_220F28100(v39, v71, type metadata accessor for WeatherMapAnnotatedLocationData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v77 = v36;
    v68 = v37;
    if (EnumCaseMultiPayload == 1)
    {
      v42 = v40;
      v43 = v65;
      sub_220F28100(v42, v65, type metadata accessor for WeatherMapAnnotatedLocation);
      (*v61)(v27, v43, v80);
      sub_220F280A8(v43, type metadata accessor for WeatherMapAnnotatedLocation);
    }

    else
    {
      (*v67)(v27, v40, v80);
    }

    v44 = v80;
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v80);
    v45 = *(v73 + 48);
    sub_220ED6038(v79, v9, &unk_27CF9D6D0, &unk_220FCB0C0);
    sub_220ED6038(v27, &v9[v45], &unk_27CF9D6D0, &unk_220FCB0C0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v44) == 1)
    {
      sub_220E3B2DC(v27, &unk_27CF9D6D0, &unk_220FCB0C0);
      sub_220E3B2DC(v79, &unk_27CF9D6D0, &unk_220FCB0C0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v9[v45], 1, v80);
      v4 = v77;
      if (EnumTagSinglePayload == 1)
      {
        sub_220E3B2DC(v9, &unk_27CF9D6D0, &unk_220FCB0C0);
        goto LABEL_21;
      }
    }

    else
    {
      v47 = v64;
      sub_220ED6038(v9, v64, &unk_27CF9D6D0, &unk_220FCB0C0);
      if (__swift_getEnumTagSinglePayload(&v9[v45], 1, v80) != 1)
      {
        v50 = &v9[v45];
        v51 = v80;
        v52 = v59;
        (*v67)(v59, v50, v80);
        sub_220F28050();
        v60 = sub_220FC26B0();
        v53 = *v63;
        (*v63)(v52, v51);
        v54 = v47;
        v27 = v62;
        sub_220E3B2DC(v62, &unk_27CF9D6D0, &unk_220FCB0C0);
        sub_220E3B2DC(v79, &unk_27CF9D6D0, &unk_220FCB0C0);
        v53(v54, v51);
        sub_220E3B2DC(v9, &unk_27CF9D6D0, &unk_220FCB0C0);
        v4 = v77;
        if (v60)
        {
LABEL_21:
          if (([v4 isSelected] & 1) == 0)
          {
            v55 = v4;
            sub_220EF836C();
            v56 = v58;
            sub_220F26AD4(v34 + v68, v58, type metadata accessor for WeatherMapAnnotatedLocationData);
            v57 = v59;
            sub_220F05E6C(v59);
            sub_220F280A8(v56, type metadata accessor for WeatherMapAnnotatedLocationData);
            sub_220EFE698(v57, 1);

            (*v63)(v57, v80);
            return;
          }
        }

LABEL_22:

        goto LABEL_23;
      }

      v48 = v62;
      sub_220E3B2DC(v62, &unk_27CF9D6D0, &unk_220FCB0C0);
      sub_220E3B2DC(v79, &unk_27CF9D6D0, &unk_220FCB0C0);
      v49 = v47;
      v27 = v48;
      (*v63)(v49, v80);
      v4 = v77;
    }

    sub_220E3B2DC(v9, &qword_27CF9EC10, &unk_220FD28E0);
    goto LABEL_22;
  }
}

void sub_220F2788C(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  swift_beginAccess();
  sub_220F26AD4(&a2[v12], v7, type metadata accessor for WeatherMapAnnotatedLocationData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220F28100(v7, v11, type metadata accessor for WeatherMapAnnotatedLocation);
    if (swift_unknownObjectWeakLoadStrong())
    {

      v13 = sub_220FC1020();
      v15 = v14;
      MEMORY[0x28223BE20](v13, v14);
      *(&v24 - 4) = v16;
      *(&v24 - 3) = v15;
      *(&v24 - 8) = 257;
      sub_220F32B5C(sub_220E81A10);
      swift_unknownObjectRelease();
    }

    sub_220F280A8(v11, type metadata accessor for WeatherMapAnnotatedLocation);
  }

  else
  {
    sub_220F280A8(v7, type metadata accessor for WeatherMapAnnotatedLocationData);
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v17 = sub_220FC17A0();
    __swift_project_value_buffer(v17, qword_2812C5ED0);
    v18 = a2;
    v19 = sub_220FC1780();
    v20 = sub_220FC2E10();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_220E15000, v19, v20, "Tapped location annotation that was still loading. annotation=%{public}@", v21, 0xCu);
      sub_220E3B2DC(v22, &qword_27CF9EF80, &qword_220FC9AE0);
      MEMORY[0x223D9DDF0](v22, -1, -1);
      MEMORY[0x223D9DDF0](v21, -1, -1);
    }
  }
}

uint64_t sub_220F27BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_220FC1070();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC10, &unk_220FD28E0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v38 - v11;
  v13 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0, &unk_220FCB0C0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v40 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v38 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v38 - v26;
  v28 = OBJC_IVAR____TtC11WeatherMaps20WeatherMapAnnotation_annotatedLocation;
  swift_beginAccess();
  sub_220F26AD4(a2 + v28, v16, type metadata accessor for WeatherMapAnnotatedLocationData);
  sub_220F05E6C(v27);
  sub_220F280A8(v16, type metadata accessor for WeatherMapAnnotatedLocationData);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
  v29 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_selectedLocation;
  swift_beginAccess();
  v30 = *(v9 + 56);
  sub_220ED6038(v27, v12, &unk_27CF9D6D0, &unk_220FCB0C0);
  v41 = a3;
  sub_220ED6038(a3 + v29, &v12[v30], &unk_27CF9D6D0, &unk_220FCB0C0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) != 1)
  {
    sub_220ED6038(v12, v23, &unk_27CF9D6D0, &unk_220FCB0C0);
    if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v5) != 1)
    {
      v32 = v42;
      v33 = v39;
      (*(v42 + 32))(v39, &v12[v30], v5);
      sub_220F28050();
      v34 = sub_220FC26B0();
      v35 = *(v32 + 8);
      v35(v33, v5);
      sub_220E3B2DC(v27, &unk_27CF9D6D0, &unk_220FCB0C0);
      v35(v23, v5);
      result = sub_220E3B2DC(v12, &unk_27CF9D6D0, &unk_220FCB0C0);
      if ((v34 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_220E3B2DC(v27, &unk_27CF9D6D0, &unk_220FCB0C0);
    (*(v42 + 8))(v23, v5);
    return sub_220E3B2DC(v12, &qword_27CF9EC10, &unk_220FD28E0);
  }

  sub_220E3B2DC(v27, &unk_27CF9D6D0, &unk_220FCB0C0);
  if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v5) != 1)
  {
    return sub_220E3B2DC(v12, &qword_27CF9EC10, &unk_220FD28E0);
  }

  sub_220E3B2DC(v12, &unk_27CF9D6D0, &unk_220FCB0C0);
LABEL_8:
  v36 = v40;
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v5);
  v37 = v41;
  swift_beginAccess();
  sub_220EA01C0(v36, v37 + v29);
  return swift_endAccess();
}

unint64_t sub_220F28050()
{
  result = qword_2812CA078;
  if (!qword_2812CA078)
  {
    sub_220FC1070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CA078);
  }

  return result;
}

uint64_t sub_220F280A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220F28100(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

__n128 *sub_220F281A0(__n128 *result, __n128 *a2, double a3, double a4, float a5, __n128 a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v6 = a2;
      do
      {
        v6->n128_f64[0] = a3;
        v6->n128_f64[1] = a4;
        v6[1].n128_f32[0] = a5;
        v6[2] = a6;
        v6 += 3;
        result = (result - 1);
      }

      while (result);
    }

    return a2;
  }

  return result;
}

uint64_t sub_220F281D0(uint64_t a1, void *a2)
{
  if (!a2[2])
  {
    return 0;
  }

  sub_220FC3A40();
  sub_220EB33C0(v15, v4);
  sub_220FC3A90();
  OUTLINED_FUNCTION_3_34();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = a2[6] + 48 * v6;
    v11 = *v10 == *a1 && *(v10 + 8) == *(a1 + 8);
    v12 = v11 && *(v10 + 16) == *(a1 + 16);
    v13 = v12 && *(v10 + 24) == *(a1 + 24);
    if (v13 && *(v10 + 32) == *(a1 + 32) && *(v10 + 40) == *(a1 + 40))
    {
      break;
    }

    v6 = (v6 + 1) & v9;
    if (((*(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_220F282CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_220FC3A40();
  OUTLINED_FUNCTION_20_12();
  sub_220FC27D0();
  v6 = sub_220FC3A90();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_220FC3940();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_220F283B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (*(a4 + 16))
  {
    sub_220FC3A40();
    OUTLINED_FUNCTION_20_12();
    sub_220EEBB30(a5, v9, v10, v11, a3);
    sub_220FC3A90();
    OUTLINED_FUNCTION_3_34();
    if (v12)
    {
      do
      {
        v15 = OUTLINED_FUNCTION_21_9();
        v19 = v16 == a1 && v13 == a2 && v14 == a3;
        if (v15 == a5 && v19)
        {
          break;
        }

        OUTLINED_FUNCTION_8_21();
      }

      while ((v21 & 1) != 0);
    }
  }
}

void sub_220F28488(uint64_t a1, int a2, void *a3, uint64_t a4, float a5)
{
  v6 = v5;
  v79 = *MEMORY[0x277D85DE8];
  v9 = sub_220FC1160();
  MEMORY[0x28223BE20](v9 - 8, v10);
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  *(v5 + 40) = sub_220FC1170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D960, &qword_220FD47E0);
  sub_220E304BC();
  v11 = MEMORY[0x277D84F90];
  *(v5 + 48) = OUTLINED_FUNCTION_22_11();
  *(v5 + 56) = OUTLINED_FUNCTION_22_11();
  *(v5 + 72) = 0;
  v73 = v5 + 72;
  *(v5 + 80) = 0;
  *(v5 + 88) = 1;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 1;
  *(v5 + 120) = 0;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0;
  *(v5 + 216) = 1;
  *(v5 + 232) = 0;
  *(v5 + 240) = 0;
  *(v5 + 224) = 0;
  *(v5 + 248) = 1;
  *(v5 + 256) = v11;
  *(v5 + 264) = 0;
  *(v5 + 272) = v11;
  *(v5 + 280) = 0;
  *(v5 + 288) = dispatch_semaphore_create(2);
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  *(v5 + 160) = (*(v13 + 40))(v12, v13);
  v14 = OUTLINED_FUNCTION_0_64();
  v15(v14);
  OUTLINED_FUNCTION_5_25();
  *(v5 + 128) = *(v16 + 16);
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(&v77);
  if (DeviceIsVerySlow())
  {
    v17 = 0;
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_220F44860();
    swift_unknownObjectRelease();
  }

  *(v6 + 168) = v17;
  v18 = *(v6 + 128);
  v19 = a3[3];
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v19);
  v21 = *(v20 + 40);
  swift_unknownObjectRetain();
  v22 = v21(v19, v20);
  MTLSizeMake(a4, a4, &v77);
  v23 = v77;
  v24 = v78;
  type metadata accessor for OverlayTexturePool();
  swift_allocObject();
  *(v6 + 64) = sub_220F412B8(v18, v22, v23, *(&v23 + 1), v24, 16, 7, 5, 0x7261702D646E6977, 0xED0000656C636974, 0, 0);
  *(v6 + 16) = a1;
  OUTLINED_FUNCTION_12_15();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EFA0, &qword_220FD47E8);
  swift_allocObject();

  *(v6 + 24) = sub_220FC13C0();
  swift_endAccess();
  *(v6 + 32) = a4;
  v25 = OUTLINED_FUNCTION_0_64();
  v26(v25);
  OUTLINED_FUNCTION_5_25();
  *(v6 + 144) = *(v27 + 24);
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(&v77);
  sub_220E1E2A8(a3, &v77);
  type metadata accessor for TrailEffectRenderer();
  swift_allocObject();
  v28 = sub_220E45424(&v77);
  if (v75)
  {

LABEL_6:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v75)
    {
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (!v75)
    {
    }

    swift_deallocPartialClassInstance();
    goto LABEL_11;
  }

  *(v6 + 296) = v28;
  v29 = [objc_opt_self() sharedCaptureManager];
  v30 = [v29 newCaptureScopeWithCommandQueue_];

  *(v6 + 136) = v30;
  swift_unknownObjectRetain();
  v31 = sub_220FC26C0();
  [v30 setLabel_];
  swift_unknownObjectRelease();

  v32 = OUTLINED_FUNCTION_0_64();
  v33(v32);
  OUTLINED_FUNCTION_5_25();
  v35 = *(v34 + 72);
  swift_unknownObjectRetain();
  v36 = sub_220FC26C0();
  v37 = [v35 newFunctionWithName_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v77);
  v38 = OUTLINED_FUNCTION_0_64();
  v39(v38);
  OUTLINED_FUNCTION_5_25();
  v41 = *(v40 + 72);
  swift_unknownObjectRetain();
  v42 = sub_220FC26C0();
  v43 = [v41 newFunctionWithName_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v77);
  v44 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  sub_220EF50DC(0xD00000000000001BLL, 0x8000000220FE3400, v44);
  [v44 setVertexFunction_];
  [v44 setFragmentFunction_];
  v45 = [v44 colorAttachments];
  v46 = [v45 objectAtIndexedSubscript_];

  if (v46)
  {
    [v46 setPixelFormat_];

    v47 = [v44 vertexBuffers];
    v48 = [v47 objectAtIndexedSubscript_];

    if (v48)
    {
      [v48 setMutability_];

      if (*(v6 + 168))
      {
        v49 = sub_220FC3940();

        if ((v49 & 1) == 0)
        {
          [v44 setRasterSampleCount_];
        }
      }

      else
      {
      }

      v50 = *(v6 + 128);
      *&v77 = 0;
      v51 = [v50 newRenderPipelineStateWithDescriptor:v44 error:&v77];
      v52 = v77;
      if (!v51)
      {
        v53 = v77;
        sub_220FBFFE0();

        swift_willThrow();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_6;
      }

      *(v6 + 152) = v51;
      if (*(v6 + 168))
      {
        if (*(v6 + 168) != 1)
        {
          v56 = v52;

          goto LABEL_27;
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_2();
        OUTLINED_FUNCTION_3_2();
      }

      OUTLINED_FUNCTION_16_11();
      v54 = sub_220FC3940();
      v55 = v52;

      if ((v54 & 1) == 0)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_36:
        *v73 = 0;
        *(v73 + 8) = 0;
        *(v73 + 16) = 0;
        __swift_destroy_boxed_opaque_existential_0(a3);
        return;
      }

LABEL_27:
      v57 = OUTLINED_FUNCTION_0_64();
      v58(v57);
      OUTLINED_FUNCTION_5_25();
      v60 = *(v59 + 72);
      swift_unknownObjectRetain();
      v61 = sub_220FC26C0();
      v62 = [v60 newFunctionWithName_];

      swift_unknownObjectRelease();
      if (!v62)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_0(&v77);
        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_0(&v77);
      v63 = *(v6 + 128);
      *&v77 = 0;
      v64 = [v63 newComputePipelineStateWithFunction:v62 error:&v77];
      v65 = v77;
      if (!v64)
      {
        v72 = v77;
        sub_220FBFFE0();

        swift_willThrow();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
LABEL_11:
        __swift_destroy_boxed_opaque_existential_0(a3);
        return;
      }

      v66 = v64;
      *(v6 + 184) = v64;
      v67 = v65;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v68 = [v66 maxTotalThreadsPerThreadgroup];
      v69 = [v66 threadExecutionWidth];
      if (v69)
      {
        if (v68 != 0x8000000000000000 || v69 != -1)
        {
          MTLSizeMake([v66 threadExecutionWidth], v68 / v69, &v77);
          v74 = v77;
          v71 = v78;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          *(v6 + 192) = v74;
          *(v6 + 208) = v71;
          *(v6 + 216) = 0;
          goto LABEL_36;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_220F28F64()
{
  v1 = v0;
  v2 = 2;
  do
  {
    v3 = *(v1 + 288);
    sub_220FC30B0();

    --v2;
  }

  while (v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_220F29038()
{
  sub_220F28F64();

  return MEMORY[0x2821FE8D8](v0, 304, 7);
}

void sub_220F29090(uint64_t a1, uint64_t a2, char **a3, char *a4)
{
  v146 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12, v13);
  v148 = v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v145 = v142 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v21 = v142 - v20;
  v167.origin.x = OUTLINED_FUNCTION_0_0();
  Width = CGRectGetWidth(v167);
  v150 = *(v4 + 32);
  v168.origin.x = OUTLINED_FUNCTION_0_0();
  Height = CGRectGetHeight(v168);
  v24 = *(*(v4 + 16) + 32);
  if (!v24)
  {
    if (*&a3 != 0.0)
    {
      (a3)(Height);
    }

    return;
  }

  v25 = Height;
  v26 = *(v4 + 288);
  v151 = v4;
  v27 = v26;
  sub_220FC30A0();

  OUTLINED_FUNCTION_7_19();
  v28 = *(v27 + 280);
  v114 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v114)
  {
    goto LABEL_138;
  }

  v30 = v150;
  Width = Width * v150;
  v7 = v25 * v150;
  v6 = v29 % 2;
  *(v27 + 280) = v29 % 2;
  v31 = *(v27 + 120);
  v144 = a4;
  v149 = v24;
  if (v31 && (*(v27 + 112) & 1) == 0 && *(v27 + 96) == Width && *(v27 + 104) == v7 && *(v27 + 264) == v24)
  {
    goto LABEL_25;
  }

  if (qword_27CF9C000 != -1)
  {
    OUTLINED_FUNCTION_0_39(&qword_27CF9C000);
  }

  v32 = v11;
  v33 = __swift_project_value_buffer(v11, qword_27CF9CBE0);
  sub_220E335D0(v33, v21);
  v11 = sub_220FC17A0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v11);
  v27 = v151;
  if (EnumTagSinglePayload != 1)
  {

    v27 = sub_220FC1780();
    v35 = sub_220FC2E30();

    if (!os_log_type_enabled(v27, v35))
    {

LABEL_23:
      OUTLINED_FUNCTION_12();
      (*(v42 + 8))(v21, v11);
      OUTLINED_FUNCTION_7_19();
      goto LABEL_24;
    }

    v147 = *&a3;
    *&a3 = COERCE_DOUBLE(swift_slowAlloc());
    v36 = swift_slowAlloc();
    aBlock = v36;
    *a3 = 134218754;
    *(a3 + 4) = v24;
    *(a3 + 6) = 2048;
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_146:
      __break(1u);
    }

    else if (Width > -9.22337204e18)
    {
      if (Width < 9.22337204e18)
      {
        *(a3 + 14) = Width;
        *(a3 + 11) = 2048;
        if (COERCE_UNSIGNED_INT64(fabs(v25 * v30)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v7 > -9.22337204e18)
          {
            if (v7 >= 9.22337204e18)
            {
              __break(1u);
              return;
            }

            v37 = v36;
            a3[3] = v7;
            *(a3 + 16) = 2080;
            OUTLINED_FUNCTION_13_15();
            v159 = *(v38 + 168);
            v39 = sub_220FC2750();
            v41 = sub_220E20FF8(v39, v40, &aBlock);

            *(a3 + 34) = v41;
            _os_log_impl(&dword_220E15000, v27, v35, "[wind particle] making buffers: particles=%ld (%ldx%ld) [msaa=%s]", a3, 0x2Au);
            __swift_destroy_boxed_opaque_existential_0(v37);
            MEMORY[0x223D9DDF0](v37, -1, -1);
            MEMORY[0x223D9DDF0](a3, -1, -1);

            *&a3 = v147;
            v24 = v149;
            goto LABEL_23;
          }

LABEL_150:
          __break(1u);
LABEL_151:
          OUTLINED_FUNCTION_0_39(&qword_27CF9C000);
LABEL_51:
          v83 = __swift_project_value_buffer(v11, qword_27CF9CBE0);
          v84 = v145;
          sub_220E335D0(v83, v145);
          v85 = sub_220FC17A0();
          if (__swift_getEnumTagSinglePayload(v84, 1, v85) == 1)
          {
            v86 = sub_220E45DAC(v84);
            if (*&a3 == 0.0)
            {
              goto LABEL_120;
            }
          }

          else
          {
            v137 = sub_220FC1780();
            v138 = sub_220FC2E30();
            if (os_log_type_enabled(v137, v138))
            {
              v6 = swift_slowAlloc();
              *v6 = 0;
              OUTLINED_FUNCTION_58_0(&dword_220E15000, v139, v140, "[wind particle] could not create render pass descriptor");
              OUTLINED_FUNCTION_25_12();
            }

            OUTLINED_FUNCTION_12();
            v86 = (*(v141 + 8))(v84, v85);
            if (*&a3 == 0.0)
            {
              goto LABEL_120;
            }
          }

          (a3)(v86);
LABEL_120:
          swift_unknownObjectRelease();
          goto LABEL_121;
        }

LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    __break(1u);
    goto LABEL_148;
  }

  sub_220E45DAC(v21);
LABEL_24:
  sub_220F2A084(v24, Width, v25 * v30);
  *(v27 + 96) = Width;
  *(v27 + 104) = v7;
  *(v27 + 112) = 0;
  *(v27 + 264) = v24;
  v6 = *(v27 + 280);
  v11 = v32;
LABEL_25:
  swift_beginAccess();
  v5 = *(v27 + 272);
  sub_220F227B4();
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_139;
  }

  v43 = *(v5 + 8 * v6 + 32);
  swift_unknownObjectRetain();
  while (1)
  {
    swift_endAccess();
    OUTLINED_FUNCTION_19_11();
    swift_beginAccess();

    sub_220FC13E0();

    if (BYTE1(aBlock) == 1)
    {
      v44 = [swift_unknownObjectRetain() contents];
      v45 = v43;
      if (qword_27CF9C0E8 != -1)
      {
        swift_once();
      }

      v46 = sub_220F281A0(v149, v44, *&qword_27CFAF5F0, *algn_27CFAF5F8, *&dword_27CFAF600, xmmword_27CFAF610);
      OUTLINED_FUNCTION_19_11();
      v47 = *(v21 + 16);
      swift_beginAccess();
      v48 = *(v47 + 16);
      v49 = sub_220F43CDC();
      if (v49)
      {
        v50 = v49;
        v143 = v11;
        v147 = Width;
        if (v49 < 1)
        {
          __break(1u);
          goto LABEL_146;
        }

        v51 = v7;
        v52 = a3;
        v53 = v147;
        v54 = v51;

        v55 = 0;
        v21 = &v46[1];
        do
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v56 = MEMORY[0x223D9CB30](v55, v48);
          }

          else
          {
          }

          v57 = *(v56 + OBJC_IVAR____TtC11WeatherMaps8Particle_bucket);
          if (v57)
          {
            v58 = *(v57 + 32);
            v59 = *(v57 + 16);
          }

          else
          {
            v58 = 0;
            v59 = 0uLL;
          }

          ++v55;
          *&v60 = v56[27] * v53;
          *(&v60 + 1) = v56[28] * v54;
          *&v61 = v56[25] * v53;
          *(&v61 + 1) = v56[26] * v54;
          *(v21 - 16) = v60;
          *(v21 - 8) = v61;
          *v21 = v58;
          *(v21 + 16) = v59;

          v21 += 48;
        }

        while (v50 != v55);

        OUTLINED_FUNCTION_19_11();
        a3 = v52;
        HIDWORD(Width) = HIDWORD(v147);
        v11 = v143;
      }
    }

    v6 = *(v21 + 136);
    [v6 beginScope];
    v147 = COERCE_DOUBLE([*(v21 + 144) commandBuffer]);
    if (v147 == 0.0)
    {
      if (qword_27CF9C000 != -1)
      {
        goto LABEL_144;
      }

      goto LABEL_47;
    }

    v62 = *(v21 + 120);
    if (!v62)
    {
      if (qword_27CF9C000 != -1)
      {
        goto LABEL_151;
      }

      goto LABEL_51;
    }

    v143 = v6;
    v63 = v62;
    swift_unknownObjectRetain();
    v64 = sub_220FC26C0();
    v65 = v147;
    [*&v147 setLabel_];

    v66 = swift_allocObject();
    swift_weakInit();
    v157 = sub_220F2B700;
    v158 = v66;
    aBlock = MEMORY[0x277D85DD0];
    v154 = 1107296256;
    v155 = sub_220F2A93C;
    v156 = &block_descriptor_20;
    v67 = _Block_copy(&aBlock);

    v68 = a3;
    *&a3 = COERCE_DOUBLE(&selRef_handleVoiceOverStatusDidChangeWithNotification_);
    [*&v65 addCompletedHandler_];
    _Block_release(v67);
    v69 = swift_allocObject();
    v11 = v144;
    *(v69 + 16) = v68;
    *(v69 + 24) = v11;
    v157 = sub_220F1B1C0;
    v158 = v69;
    aBlock = MEMORY[0x277D85DD0];
    v154 = 1107296256;
    v155 = sub_220F2A93C;
    v156 = &block_descriptor_14_1;
    v70 = _Block_copy(&aBlock);
    sub_220E1AADC(v68, v11);

    [*&v65 addCompletedHandler_];
    _Block_release(v70);
    swift_unknownObjectRetain();
    v145 = v63;
    OUTLINED_FUNCTION_7_19();
    sub_220F2A99C(v71, v72, v73, v74, v75, v76);
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_13_15();
    v78 = *(v77 + 168);
    v142[1] = v43;
    if (!v78)
    {
      OUTLINED_FUNCTION_3_2();
LABEL_59:
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_16_11();
      v92 = sub_220FC3940();

      if ((v92 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_62;
    }

    if (v78 == 1)
    {
      goto LABEL_59;
    }

LABEL_62:
    OUTLINED_FUNCTION_13_15();
    v94 = *(v93 + 184);
    if (v94)
    {
      OUTLINED_FUNCTION_13_15();
      if ((*(v95 + 248) & 1) == 0)
      {
        OUTLINED_FUNCTION_13_15();
        if ((*(v96 + 216) & 1) == 0)
        {
          OUTLINED_FUNCTION_19_11();
          v97 = v164;
          a3 = vars0;
          v98 = vars8;
          v99 = v161;
          v11 = v162;
          v100 = v163;
          swift_unknownObjectRetain();
          v101 = [*&v147 computeCommandEncoder];
          if (v101)
          {
            v102 = v101;
            v103 = sub_220FC26C0();
            v149 = v100;
            v104 = v103;
            [v102 setLabel_];

            [v102 setComputePipelineState_];
            [v102 setTexture:v160 atIndex:0];
            [v102 setTexture:v145 atIndex:1];
            aBlock = v97;
            v154 = a3;
            v155 = v98;
            v152[0] = v99;
            v152[1] = v11;
            v152[2] = v149;
            [v102 dispatchThreadgroups:&aBlock threadsPerThreadgroup:v152];
            [v102 endEncoding];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }
      }
    }

LABEL_68:
    LODWORD(Width) = *(a1 + 128);
    v6 = *(a1 + 112);
    v149 = *(a1 + 120);
    v169.origin.x = OUTLINED_FUNCTION_0_0();
    v105 = CGRectGetWidth(v169);
    if ((*&v105 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    v7 = -9.22337204e18;
    p_aBlock = v151;
    if (v105 <= -9.22337204e18)
    {
      goto LABEL_141;
    }

    if (v105 >= 9.22337204e18)
    {
      goto LABEL_142;
    }

    v107 = v105;
    if (v105 < 0)
    {
      goto LABEL_143;
    }

    if (!v107)
    {
LABEL_115:
      [*&v147 commit];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      [v143 endScope];
      goto LABEL_122;
    }

    v21 = 0;
    v108 = 0.0;
    if (*&Width != 0.0)
    {
      v108 = *&Width;
    }

    *&v148 = v108;
    v5 = 0x7FEFFFFFFFFFFFFFLL;
    v144 = v107;
    while (1)
    {
      v170.origin.x = OUTLINED_FUNCTION_0_0();
      CGRectGetHeight(v170);
      OUTLINED_FUNCTION_10_17();
      if (!(v110 ^ v114 | v120))
      {
        break;
      }

      if (v109 <= -9.22337204e18)
      {
        goto LABEL_134;
      }

      if (v109 >= 9.22337204e18)
      {
        goto LABEL_135;
      }

      a3 = v109;
      if (v109 < 0)
      {
        goto LABEL_136;
      }

      if (*&a3 != 0.0)
      {
        if ((v21 * v150) >> 64 != (v21 * v150) >> 63)
        {
          goto LABEL_137;
        }

        v111 = 0;
        while (1)
        {
          v171.origin.x = OUTLINED_FUNCTION_0_0();
          CGRectGetMinX(v171);
          OUTLINED_FUNCTION_10_17();
          if (!(v110 ^ v114 | v120))
          {
            break;
          }

          if (v112 <= -9.22337204e18)
          {
            goto LABEL_124;
          }

          if (v112 >= 9.22337204e18)
          {
            goto LABEL_125;
          }

          a1 = v21 + v112;
          if (__OFADD__(v21, v112))
          {
            goto LABEL_126;
          }

          v172.origin.x = OUTLINED_FUNCTION_0_0();
          CGRectGetMinY(v172);
          OUTLINED_FUNCTION_10_17();
          if (!(v110 ^ v114 | v120))
          {
            goto LABEL_127;
          }

          if (v113 <= -9.22337204e18)
          {
            goto LABEL_128;
          }

          if (v113 >= 9.22337204e18)
          {
            goto LABEL_129;
          }

          v11 = (v111 + v113);
          if (__OFADD__(v111, v113))
          {
            goto LABEL_130;
          }

          v114 = __OFSUB__(a1, v149);
          if (a1 >= v149)
          {
            a1 -= v149;
            if (v114)
            {
              goto LABEL_132;
            }
          }

          if ((v111 * v150) >> 64 != (v111 * v150) >> 63)
          {
            goto LABEL_131;
          }

          if (*(*(p_aBlock[2] + 176) + 16))
          {
            sub_220FC3A40();
            p_aBlock = &aBlock;
            MEMORY[0x223D9CFA0](a1);
            MEMORY[0x223D9CFA0](v11);
            MEMORY[0x223D9CFA0](v6);
            sub_220FC3A70();
            sub_220FC3A90();
            OUTLINED_FUNCTION_7_19();
            OUTLINED_FUNCTION_3_34();
            if (v115)
            {
              while (1)
              {
                v118 = OUTLINED_FUNCTION_21_9();
                v120 = v119 == a1 && v116 == v11;
                v121 = v120 && v117 == v6;
                if (v121 && v118 == *&Width)
                {
                  break;
                }

                OUTLINED_FUNCTION_8_21();
                if ((v123 & 1) == 0)
                {
                  goto LABEL_113;
                }
              }

              OUTLINED_FUNCTION_7_19();
              sub_220F2ACD8();
              OUTLINED_FUNCTION_7_19();
              if (v124)
              {
                OUTLINED_FUNCTION_7_19();
                sub_220F2AE08(v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
                OUTLINED_FUNCTION_7_19();
                swift_unknownObjectRelease();
              }
            }
          }

LABEL_113:
          ++v111;
          v5 = 0x7FEFFFFFFFFFFFFFLL;
          if (v111 == a3)
          {
            goto LABEL_114;
          }
        }

        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
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
        break;
      }

LABEL_114:
      if (++v21 == v144)
      {
        goto LABEL_115;
      }
    }

    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    v43 = MEMORY[0x223D9CB30](v6, v5);
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  OUTLINED_FUNCTION_0_39(&qword_27CF9C000);
LABEL_47:
  v79 = __swift_project_value_buffer(v11, qword_27CF9CBE0);
  v80 = v148;
  sub_220E335D0(v79, v148);
  v81 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v80, 1, v81) == 1)
  {
    v82 = sub_220E45DAC(v80);
    if (*&a3 == 0.0)
    {
      goto LABEL_121;
    }

    goto LABEL_57;
  }

  v87 = sub_220FC1780();
  v88 = sub_220FC2E30();
  if (os_log_type_enabled(v87, v88))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    OUTLINED_FUNCTION_58_0(&dword_220E15000, v89, v90, "[wind particle] could not create command buffer");
    OUTLINED_FUNCTION_25_12();
  }

  OUTLINED_FUNCTION_12();
  v82 = (*(v91 + 8))(v80, v81);
  if (*&a3 != 0.0)
  {
LABEL_57:
    (a3)(v82);
  }

LABEL_121:
  [v6 endScope];
LABEL_122:
  swift_unknownObjectRelease();
}

void sub_220F2A084(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = *(v3 + 168);
  v9 = &unk_220FC8000;
  if ((v8 - 1) > 1)
  {
    v11 = objc_opt_self();
    if (a2 <= -9.22337204e18)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (a2 >= 9.22337204e18)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_77;
    }

    if (a3 <= -9.22337204e18)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (a3 >= 9.22337204e18)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v12 = [v11 texture2DDescriptorWithPixelFormat:*(v3 + 160) width:a2 height:a3 mipmapped:0];
    [v12 setUsage_];
    v50 = *(v4 + 128);
    v13 = [v50 newTextureWithDescriptor_];

    *(v4 + 120) = v13;
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v50 = *(v3 + 128);
  if ([v50 supportsFamily_])
  {
    v10 = *(v3 + 160);
  }

  else
  {
    v10 = 70;
  }

  v14 = objc_opt_self();
  if (a2 <= -9.22337204e18)
  {
    goto LABEL_74;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_78;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v49 = a1;
  v15 = v14;
  v16 = [v14 &selRef:v10 setDepthStencilState:{a2, a3, 0} + 3];
  [v16 setStorageMode_];
  [v16 setTextureType_];
  if (v8 == 2)
  {
    v17 = sub_220FC3940();

    if (v17)
    {
      v18 = 5;
    }

    else
    {
      v18 = 3;
    }
  }

  else
  {

    v18 = 5;
  }

  [v16 setUsage_];
  *(v3 + 120) = [v50 newTextureWithDescriptor_];
  swift_unknownObjectRelease();
  v19 = *(v3 + 120);
  if (v19)
  {
    swift_unknownObjectRetain();
    v20 = sub_220FC26C0();
    [v19 setLabel_];
    swift_unknownObjectRelease();
  }

  v21 = [v15 texture2DDescriptorWithPixelFormat:*(v4 + 160) width:a2 height:a3 mipmapped:0];
  [v21 setTextureType_];
  [v21 setSampleCount_];
  if (v8 == 2)
  {
    v22 = sub_220FC3940();

    if (v22)
    {
      v23 = 4;
    }

    else
    {
      v23 = 5;
    }

    [v21 setUsage_];
    v24 = sub_220FC3940();

    if ((v24 & 1) == 0)
    {
      v25 = 2;
      goto LABEL_33;
    }
  }

  else
  {

    [v21 setUsage_];
  }

  v25 = 3;
LABEL_33:
  [v21 setStorageMode_];
  *(v4 + 176) = [v50 &off_278456310 + 7];
  swift_unknownObjectRelease();
  v26 = *(v4 + 176);
  if (v26)
  {
    swift_unknownObjectRetain();
    v27 = sub_220FC26C0();
    [v26 setLabel_];
    swift_unknownObjectRelease();
  }

  if (!v8)
  {
    v9 = &unk_220FC8000;
    a1 = v49;
    goto LABEL_39;
  }

  v9 = &unk_220FC8000;
  a1 = v49;
  if (v8 == 1)
  {
LABEL_39:
    v28 = sub_220FC3940();

    if ((v28 & 1) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_42;
  }

LABEL_42:
  if ((*(v4 + 216) & 1) == 0)
  {
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v29 = v9[419];
    if (a2 <= v29)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (a2 >= 9.22337204e18)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v30 = *(v4 + 192);
    v31 = a2 + v30;
    if (__OFADD__(a2, v30))
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v32)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (!v30)
    {
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v33 == 0x8000000000000000 && v30 == -1)
    {
      goto LABEL_95;
    }

    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_89;
    }

    if (a3 <= v29)
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (a3 >= 9.22337204e18)
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v35 = *(v4 + 200);
    v36 = a3 + v35;
    if (__OFADD__(a3, v35))
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v32 = __OFSUB__(v36, 1);
    v37 = v36 - 1;
    if (v32)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (!v35)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return;
    }

    if (v37 == 0x8000000000000000 && v35 == -1)
    {
      goto LABEL_96;
    }

    MTLSizeMake(v33 / v30, v37 / v35, &v51);
    v39 = v52;
    *(v4 + 224) = v51;
    *(v4 + 240) = v39;
    *(v4 + 248) = 0;
  }

LABEL_64:
  v40 = *(v4 + 296);
  *(v40 + 40) = a2;
  *(v40 + 48) = a3;
  *(v40 + 56) = 0;
  v41 = 48 * a1;
  if ((a1 * 48) >> 64 != (48 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_73;
  }

  swift_beginAccess();
  *(v4 + 272) = MEMORY[0x277D84F90];

  v42 = 0;
  do
  {
    v43 = v42;
    v44 = [v50 newBufferWithLength:v41 options:0];
    if (v44)
    {
      v45 = v44;
      sub_220FC35C0();

      v46 = sub_220FC38F0();
      MEMORY[0x223D9BD60](v46);

      v47 = sub_220FC26C0();

      [v45 setLabel_];

      swift_beginAccess();
      v48 = swift_unknownObjectRetain();
      MEMORY[0x223D9BEA0](v48);
      if (*((*(v4 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 272) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    v42 = 1;
  }

  while ((v43 & 1) == 0);
}

void sub_220F2A8D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 288);

    sub_220FC30B0();
  }
}

double sub_220F2A93C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  return result;
}

void sub_220F2A99C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v27 - v15;
  sub_220F2B214(a3);
  v18 = v17;
  v19 = [a1 renderCommandEncoderWithDescriptor_];
  if (!v19)
  {
    if (qword_27CF9C000 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  v20 = v19;
  [v19 setRenderPipelineState_];
  [v20 setVertexBuffer:a2 offset:0 atIndex:1];
  if (a5 <= -1.0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a5 >= 4294967300.0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (a6 > -1.0)
  {
    if (a6 < 4294967300.0)
    {
      LODWORD(v21) = a5;
      HIDWORD(v21) = a6;
      v27[0] = v21;
      [v20 setVertexBytes:v27 length:8 atIndex:2];
      [v20 drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:a4];
      [v20 endEncoding];
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  swift_once();
LABEL_10:
  v22 = __swift_project_value_buffer(v13, qword_27CF9CBE0);
  sub_220E335D0(v22, v16);
  v23 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v16, 1, v23) == 1)
  {

    sub_220E45DAC(v16);
  }

  else
  {
    v24 = sub_220FC1780();
    v25 = sub_220FC2E30();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_220E15000, v24, v25, "[wind particle] could not create render command encoder", v26, 2u);
      MEMORY[0x223D9DDF0](v26, -1, -1);
    }

    (*(*(v23 - 8) + 8))(v16, v23);
  }
}

uint64_t sub_220F2ACD8()
{
  v1 = v0;
  OUTLINED_FUNCTION_14_13();
  v2 = sub_220FC1130();
  OUTLINED_FUNCTION_26_10(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_6_22();
  sub_220F62AB8(v6, v7, v8, v9, v5);
  v11 = v10;
  swift_endAccess();
  if (v11)
  {
    v12 = swift_unknownObjectRelease();
    OUTLINED_FUNCTION_26_10(v12, v13, v14);
    v15 = OUTLINED_FUNCTION_6_22();
    sub_220F62AB8(v16, v17, v18, v19, v15);
    v21 = v20;
    swift_endAccess();
  }

  else
  {

    v23 = sub_220F40E94(v22);

    OUTLINED_FUNCTION_12_15();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_24_11(v23, v25, v26, v27, isUniquelyReferenced_nonNull_native, v28, v29, v30, v37, *(v1 + 48), v39, v40, v41, v42);
    *(v1 + 48) = v38;
    swift_endAccess();
    v31 = OUTLINED_FUNCTION_6_22();
    sub_220F62AB8(v32, v33, v34, v38, v31);
    v21 = v35;
  }

  sub_220FC1140();
  return v21;
}

double sub_220F2AE08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, float a11, float a12)
{
  v24 = sub_220F2B120(a3);
  v25 = *(v12 + 32);

  v26.n128_f64[0] = a7;
  v27.n128_f64[0] = a8;
  v28.n128_f32[0] = v25;
  sub_220E4586C(a1, a2, v24, a6, v26, v27, a9, a10, v28, a12);

  sub_220F2B074(a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_220F2AF28(uint64_t a1)
{
  sub_220FC1130();
  OUTLINED_FUNCTION_9_18(v1 + 48, v2);
  v3 = OUTLINED_FUNCTION_4_35();
  sub_220F62AB8(v4, v5, v6, v7, v3);
  if (v8)
  {
    v9 = v8;
    swift_endAccess();
    OUTLINED_FUNCTION_12_15();
    swift_beginAccess();
    OUTLINED_FUNCTION_4_35();
    sub_220E96CB8(v10, v11, v12, v13, v14, v15, v16, v17, v35, v36);
    swift_endAccess();
    swift_unknownObjectRelease();

    sub_220F40D8C(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  OUTLINED_FUNCTION_9_18(v1 + 56, v18);
  v19 = OUTLINED_FUNCTION_4_35();
  sub_220F62AB8(v20, v21, v22, v23, v19);
  v25 = v24;
  swift_endAccess();
  if (v25)
  {
    OUTLINED_FUNCTION_12_15();
    swift_beginAccess();
    OUTLINED_FUNCTION_4_35();
    sub_220E96CB8(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return sub_220FC1140();
}

uint64_t sub_220F2B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_13();
  sub_220FC1130();
  OUTLINED_FUNCTION_12_15();
  swift_beginAccess();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_24_11(a4, v7, v8, v9, isUniquelyReferenced_nonNull_native, v10, v11, v12, *(v4 + 56), v15, v16, v17, v18, v19);
  *(v4 + 56) = v14;
  swift_endAccess();
  return sub_220FC1140();
}

uint64_t sub_220F2B120(uint64_t a1)
{
  OUTLINED_FUNCTION_11_15(a1);
  OUTLINED_FUNCTION_9_18(v1 + 56, v3);
  OUTLINED_FUNCTION_20_12();
  sub_220F62AB8(v4, v5, v6, v7, v2);
  v9 = v8;
  swift_endAccess();
  sub_220FC1140();
  return v9;
}

BOOL sub_220F2B190(uint64_t a1)
{
  OUTLINED_FUNCTION_11_15(a1);
  OUTLINED_FUNCTION_9_18(v1 + 48, v3);
  OUTLINED_FUNCTION_20_12();
  sub_220F62AB8(v4, v5, v6, v7, v2);
  v9 = v8;
  swift_endAccess();
  if (v9)
  {
    swift_unknownObjectRelease();
  }

  sub_220FC1140();
  return v9 != 0;
}

void sub_220F2B214(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v4 = *(v1 + 168);
  v5 = [v3 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript_];

  if ((v4 - 1) > 1)
  {
    if (v6)
    {
      [v6 setTexture_];

      v13 = [v3 colorAttachments];
      v14 = [v13 objectAtIndexedSubscript_];

      if (v14)
      {
        [v14 setLoadAction_];

        v15 = [v3 colorAttachments];
        v16 = [v15 objectAtIndexedSubscript_];

        if (v16)
        {
          [v16 setClearColor_];

          v17 = [v3 colorAttachments];
          v18 = [v17 objectAtIndexedSubscript_];

          if (v18)
          {
            [v18 setStoreAction_];

            return;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (!v6)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v6 setLoadAction_];

  v7 = [v3 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript_];

  if (!v8)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v8 setClearColor_];

  v9 = [v3 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript_];

  if (!v10)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 == 2)
  {
    v11 = sub_220FC3940();

    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {

    v12 = 2;
  }

  [v10 setStoreAction_];

  v19 = [v3 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
    goto LABEL_34;
  }

  v21 = *(v1 + 176);
  swift_unknownObjectRetain();
  [v20 setTexture_];
  swift_unknownObjectRelease();

  v22 = [v3 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_35:
    __break(1u);
    return;
  }

  if (v4 == 2)
  {
    v24 = sub_220FC3940();

    if ((v24 & 1) == 0)
    {
      v25 = 0;
      goto LABEL_22;
    }
  }

  else
  {
  }

  v25 = *(v1 + 120);
  swift_unknownObjectRetain();
LABEL_22:
  [v23 setResolveTexture_];

  swift_unknownObjectRelease();
  if (v4 == 1)
  {
  }

  else
  {
    v26 = sub_220FC3940();

    if ((v26 & 1) == 0)
    {
      return;
    }
  }

  [v3 setTileWidth_];
  [v3 setTileHeight_];
  [v3 setImageblockSampleLength_];
}

void sub_220F2B6E8()
{
  xmmword_27CFAF610 = 0uLL;
  qword_27CFAF5F0 = 0;
  *algn_27CFAF5F8 = 0;
  dword_27CFAF600 = 0;
}

double block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t OUTLINED_FUNCTION_11_15(uint64_t a1)
{

  return sub_220FC1130();
}

uint64_t OUTLINED_FUNCTION_22_11()
{

  return sub_220FC2600();
}

void OUTLINED_FUNCTION_24_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  sub_220E97818(a1, v16, v15, v14, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

double OUTLINED_FUNCTION_26_10(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  swift_beginAccess();
  return result;
}

unint64_t sub_220F2B804(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_220FC2800();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_220FC28D0();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220F2B8D8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_220F439F8(0, result, *(a2 + 16), a2);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      sub_220F30E20(result, v3, a2);
      v6 = v5;

      return v6;
    }
  }

  __break(1u);
  return result;
}

void *sub_220F2B970(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_220FC34C0();
    if (v4)
    {
      v5 = v4;
      v2 = sub_220F2F4F0(v4, 0);
      sub_220F38418((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

void *sub_220F2BA04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_220F2F420(*(a1 + 16), 0);
  sub_220F30E8C(&v7, v3 + 4, v2, a1);
  v5 = v4;
  sub_220EA9CB8(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_220F2BA94(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(*a1 + 16);
  v70 = a1;
  if (!v5)
  {
    v78 = MEMORY[0x277D84F90];
LABEL_20:
    v61 = *(a1 + 9);
    v62 = *(a1 + 7);
    v55 = *(a1 + 88);
    v75 = a1[12];
    v68 = a1[13];
    v65 = a1[14];
    v50 = *(a1 + 120);
    v22 = a1[16];
    v60 = *(a1 + 10);
    v44 = *(a1 + 9);
    v23 = *(a1 + 176);
    v73 = a1[23];
    v67 = a1[24];
    v24 = *(a1 + 208);
    v25 = a1[27];
    v26 = a1[28];
    v63 = a1[29];
    v64 = a1[25];
    v83 = a1[30];
    v77 = a1[31];
    v69 = a1[32];
    v66 = a1[33];
    v46 = a1[34];
    v27 = a1[35];
    v53 = *(a1 + 353);
    if (a1[6])
    {
      v80 = a1[28];
      v28 = a1[27];
      v29 = a1[35];
      v30 = *(a1 + 208);
      v31 = *(a1 + 176);
      v57 = a1[2];
      v58 = a1[1];
      v32 = a1[5];

      OUTLINED_FUNCTION_9_19();
      v33 = sub_220FC25E0();
      v59 = v32;
      if (!v32)
      {

        v59 = sub_220F2BA04(v34);
      }

      v23 = v31;
      v24 = v30;
      v27 = v29;
      v25 = v28;
      v26 = v80;
    }

    else
    {
      v57 = 0;
      v58 = 0;
      v33 = 0;
      v59 = 0;
    }

    v81 = 0u;
    if (v22)
    {
      OUTLINED_FUNCTION_9_19();
      LOBYTE(v87) = v55 & 1;
      v49 = v55 & 1;
      v51 = v50 & 1;
      v52 = sub_220FC25E0();
    }

    else
    {
      v75 = 0;
      v68 = 0;
      v65 = 0;
      v51 = 0;
      v52 = 0;
      v49 = 0;
      v61 = 0uLL;
      v62 = 0uLL;
    }

    v56 = v33;
    if (v26)
    {
      OUTLINED_FUNCTION_9_19();
      v48 = sub_220FC25E0();
      LOBYTE(v87) = v23 & 1;
      v35 = v23 & 1;
      v36 = v24 & 1;
      if (v25)
      {
        v37 = v25;
      }

      else
      {
        v37 = MEMORY[0x277D84F90];
      }

      v81 = v44;
      if (v27)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v73 = 0;
      v67 = 0;
      v63 = 0;
      v64 = 0;
      v48 = 0;
      v37 = 0;
      v83 = 0;
      v36 = 0;
      v35 = 0;
      v60 = 0u;
      if (v27)
      {
LABEL_33:
        sub_220F30094();

        OUTLINED_FUNCTION_9_19();
        v38 = sub_220FC25F0();
        sub_220F2DAE8(v38);
        v40 = v39;

        v41 = v46 & 1;
LABEL_36:
        if (v53)
        {
          v42 = 0;
          v43 = 0;
          v71 = 0u;
          v54 = 0u;
          v45 = 0u;
          v47 = 0u;
        }

        else
        {
          sub_220F2C230(v70 + 288, v84);
          v54 = v84[1];
          v71 = v84[0];
          v45 = v84[3];
          v47 = v84[2];
          v42 = v85;
          v43 = v86;
        }

        *a2 = sub_220F2D4B0(v78);
        *(a2 + 8) = v58;
        *(a2 + 16) = v57;
        *(a2 + 24) = v56;
        *(a2 + 32) = v59;
        *(a2 + 56) = v61;
        *(a2 + 40) = v62;
        *(a2 + 72) = v49;
        *(a2 + 80) = v75;
        *(a2 + 88) = v68;
        *(a2 + 96) = v65;
        *(a2 + 104) = v51;
        *(a2 + 112) = v52;
        *(a2 + 136) = v60;
        *(a2 + 120) = v81;
        *(a2 + 152) = v35;
        *(a2 + 160) = v73;
        *(a2 + 168) = v67;
        *(a2 + 176) = v64;
        *(a2 + 184) = v36;
        *(a2 + 192) = v48;
        *(a2 + 200) = v37;
        *(a2 + 208) = v63;
        *(a2 + 216) = v83;
        *(a2 + 224) = v77;
        *(a2 + 232) = v69;
        *(a2 + 240) = v66;
        *(a2 + 248) = v41;
        *(a2 + 256) = v40;
        *(a2 + 264) = v71;
        *(a2 + 280) = v54;
        *(a2 + 296) = v47;
        *(a2 + 312) = v45;
        *(a2 + 328) = v42;
        *(a2 + 336) = v43;
        return;
      }
    }

    v77 = 0;
    v69 = 0;
    v66 = 0;
    v41 = 0;
    v40 = 0;
    goto LABEL_36;
  }

  v87 = MEMORY[0x277D84F90];
  sub_220F0B238(0, v5, 0);
  v6 = 0;
  v74 = v5;
  v76 = v4 + 32;
  v7 = v87;
  while (1)
  {
    v8 = (v76 + 40 * v6);
    v9 = v8[1];
    v10 = v8[3];
    v82 = *v8;
    v79 = *(v8 + 32);
    if (v79 != 1)
    {
      break;
    }

    sub_220F2EC0C(v11);
    if (v3)
    {

      return;
    }

    v13 = v12;

LABEL_14:
    v87 = v7;
    v20 = *(v7 + 16);
    v19 = *(v7 + 24);

    if (v20 >= v19 >> 1)
    {
      sub_220F0B238((v19 > 1), v20 + 1, 1);
      v7 = v87;
    }

    ++v6;
    *(v7 + 16) = v20 + 1;
    v21 = v7 + 48 * v20;
    *(v21 + 32) = v82;
    *(v21 + 40) = v9;
    *(v21 + 48) = v82;
    *(v21 + 56) = v9;
    *(v21 + 64) = v13;
    *(v21 + 72) = v79 ^ 1;
    if (v6 == v74)
    {
      v78 = v7;
      a1 = v70;
      goto LABEL_20;
    }
  }

  v14 = *(v10 + 16);
  if (!v14)
  {

LABEL_13:
    v17 = objc_allocWithZone(MEMORY[0x277CD4ED8]);
    sub_220E1966C(0, &qword_2812C5AE0, 0x277CD4F18);
    v18 = sub_220FC2960();

    v13 = [v17 initWithPolygons_];

    goto LABEL_14;
  }

  sub_220FC3670();
  v15 = 0;
  while (v15 < *(v10 + 16))
  {

    sub_220F2EC0C(v16);
    if (v3)
    {

      return;
    }

    ++v15;

    sub_220FC3640();
    sub_220FC3680();
    OUTLINED_FUNCTION_45_4();
    sub_220FC3690();
    sub_220FC3650();
    if (v14 == v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_220F2C230@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v220 = a1;
  v221 = a2;
  v267 = sub_220FC0040();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_1();
  v266 = v6;
  v7 = sub_220FC03E0();
  MEMORY[0x28223BE20](v7 - 8, v8);
  OUTLINED_FUNCTION_1();
  v265 = v9;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E568, &unk_220FD5B40);
  OUTLINED_FUNCTION_6();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_3_3();
  v263 = v14;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v15, v16);
  v262 = &v218[-v17];
  v261 = sub_220FC3910();
  OUTLINED_FUNCTION_6();
  v19 = v18;
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_1();
  v260 = v22;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048, &unk_220FC9CA0);
  OUTLINED_FUNCTION_6();
  v24 = v23;
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_3_3();
  v235 = v27;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_8_22();
  v234 = v30;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v31, v32);
  OUTLINED_FUNCTION_8_22();
  v250 = v33;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v218[-v36];
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_8_22();
  v251 = v40;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v218[-v43];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC28, &qword_220FD4F30);
  OUTLINED_FUNCTION_6();
  v231 = v46;
  v232 = v45;
  MEMORY[0x28223BE20](v45, v47);
  OUTLINED_FUNCTION_3_3();
  v230 = v48;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v218[-v51];
  v241 = sub_220FC0EA0();
  OUTLINED_FUNCTION_6();
  v54 = v53;
  MEMORY[0x28223BE20](v55, v56);
  OUTLINED_FUNCTION_3_3();
  v236 = v57;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v58, v59);
  OUTLINED_FUNCTION_8_22();
  v239 = v60;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v61, v62);
  OUTLINED_FUNCTION_8_22();
  v233 = v63;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v64, v65);
  v243 = &v218[-v66];
  v67 = sub_220FC0E90();
  v245 = *(v67 + 16);
  if (!v245)
  {

    v208 = MEMORY[0x277D84F90];
LABEL_64:
    sub_220F06C58();
    v209 = sub_220FC2600();
    v210 = sub_220F2D564(v208);
    result = sub_220F2EB88(v210, v209);
    v213 = v220;
    v212 = v221;
    v215 = *(v220 + 56);
    v216 = *(v220 + 64);
    LOBYTE(__dst[0]) = *(v220 + 32);
    v214 = __dst[0];
    LOBYTE(v279) = v216;
    v217 = *(v220 + 16);
    *v221 = *v220;
    v212[1] = v217;
    *(v212 + 32) = v214;
    *(v212 + 33) = v282[0];
    *(v212 + 9) = *(v282 + 3);
    *(v212 + 40) = *(v213 + 40);
    *(v212 + 7) = v215;
    *(v212 + 64) = v216;
    *(v212 + 65) = v280;
    *(v212 + 17) = *(&v280 + 3);
    *(v212 + 9) = result;
    return result;
  }

  v249 = v37;
  v68 = 0;
  v244 = v67 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
  v247 = v54 + 16;
  v238 = (v54 + 88);
  v246 = (v54 + 8);
  v259 = (v19 + 104);
  v258 = v19 + 8;
  v229 = *MEMORY[0x277D7AA98];
  v256 = (v11 + 8);
  v257 = v3 + 8;
  v271 = (v24 + 8);
  v225 = (v54 + 32);
  v223 = *MEMORY[0x277D7AAB8];
  p_vtable = _TtC11WeatherMaps28WeatherMapCameraFocusFactory.vtable;
  v222 = *MEMORY[0x277D7AAB0];
  v240 = *MEMORY[0x277D7AAC8];
  v219 = *MEMORY[0x277D7AAC0];
  v255 = *MEMORY[0x277D84670];
  v242 = MEMORY[0x277D84F90];
  v70 = v241;
  v71 = v243;
  v72 = v67;
  v252 = v44;
  v227 = v54;
  v228 = v52;
  v226 = v67;
  while (v68 < *(v72 + 16))
  {
    v73 = *(v54 + 72);
    v248 = v68;
    v74 = *(v54 + 16);
    v74(v71, v244 + v73 * v68, v70);
    if (p_vtable[502] != -1)
    {
      swift_once();
    }

    v75 = qword_2812CE5D8;
    if (qword_2812C9FA0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v70, qword_2812CE5C0);
    if (!*(v75 + 16) || (v76 = sub_220F1914C(), (v77 & 1) == 0))
    {
      v86 = OUTLINED_FUNCTION_5_26();
      v87(v86, v70);
      goto LABEL_61;
    }

    memcpy(__dst, (*(v75 + 56) + 96 * v76), 0x60uLL);
    v78 = objc_opt_self();
    sub_220E31B58(__dst, v282);
    v79 = [v78 metersPerSecond];
    v80 = v71;
    v81 = v79;
    v82 = v233;
    v74(v233, v80, v70);
    v83 = *v238;
    v84 = (*v238)(v82, v70);
    if (v84 == v229)
    {
      v85 = [v78 milesPerHour];
LABEL_21:
      v88 = v85;
      goto LABEL_22;
    }

    if (v84 == v223)
    {
      v85 = [v78 kilometersPerHour];
      goto LABEL_21;
    }

    if (v84 == v222)
    {
      v85 = [v78 metersPerSecond];
      goto LABEL_21;
    }

    if (v84 != v240)
    {
      if (v84 != v219)
      {
        goto LABEL_67;
      }

      v85 = [v78 knots];
      goto LABEL_21;
    }

    sub_220E1966C(0, &qword_2812C5D00, 0x277CCAE40);
    v88 = sub_220FC2D80();
LABEL_22:
    v273 = v88;
    v89 = v243;
    v74(v239, v243, v70);
    v90 = v236;
    v74(v236, v89, v70);
    v237 = v83(v90, v70);
    if (v237 != v240)
    {
      (*v246)(v236, v70);
    }

    memcpy(v282, __dst, sizeof(v282));
    v283 = v81;
    sub_220E1966C(0, &qword_2812C5B20, 0x277D82BB8);
    sub_220EE5BFC(v282, &v280, &qword_27CF9EFC0, &unk_220FD4830);
    v91 = v81;
    sub_220FC3250();
    v272 = v91;

    v92 = __dst[7];
    v93 = *(__dst[7] + 16);
    v94 = v268;
    if (v93)
    {
      v270 = sub_220E1966C(0, &qword_2812C5D00, 0x277CCAE40);
      v95 = v92 + 64;
      v278 = MEMORY[0x277D84F90];
      v96 = v251;
      do
      {
        v98 = *(v95 - 32);
        v97 = *(v95 - 24);
        v99 = *(v95 - 8);
        v275 = *(v95 - 16);
        v100 = v272;
        v277 = v99;

        sub_220FBFC70();
        sub_220FBFCD0();
        v101 = sub_220FBFC60();
        LOBYTE(v99) = sub_220FC2D70();

        v276 = v93;
        if (v99)
        {

          v274 = v97;
        }

        else
        {
          sub_220FBFC80();
          v102 = OUTLINED_FUNCTION_5_26();
          v103 = v261;
          v104(v102, v255, v261);
          sub_220FC2BC0();
          v106 = v105;
          v107 = OUTLINED_FUNCTION_5_26();
          v108(v107, v103);
          v279 = v106;
          sub_220FC0380();
          sub_220ED192C();
          v109 = v263;
          sub_220FC0000();
          v110 = v266;
          sub_220FC0030();
          v111 = v262;
          v112 = v264;
          MEMORY[0x223D99560](v110, v264);
          v113 = OUTLINED_FUNCTION_5_26();
          v114(v113, v267);
          v115 = *v256;
          v116 = v109;
          v96 = v251;
          (*v256)(v116, v112);
          sub_220ED1980();
          sub_220FC25A0();
          v117 = v112;
          v94 = v268;
          v115(v111, v117);
          v98 = v280;
          v274 = v281;
        }

        sub_220FBFC80();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_6_1();
          sub_220F3799C();
          v278 = v128;
        }

        v119 = *(v278 + 16);
        v118 = *(v278 + 24);
        if (v119 >= v118 >> 1)
        {
          OUTLINED_FUNCTION_3_35(v118);
          sub_220F3799C();
          v278 = v129;
        }

        v120 = *v271;
        (*v271)(v96, v94);
        v121 = OUTLINED_FUNCTION_45_4();
        (v120)(v121);
        v122 = v278;
        *(v278 + 16) = v119 + 1;
        v123 = (v122 + 56 * v119);
        v124 = v274;
        v125 = v275;
        v123[4] = v98;
        v123[5] = v124;
        v127 = v276;
        v126 = v277;
        v123[6] = v125;
        v123[7] = v126;
        OUTLINED_FUNCTION_10_18(v123);
        v95 += 56;
        v93 = v127 - 1;
      }

      while (v93);
    }

    else
    {
      v278 = MEMORY[0x277D84F90];
    }

    v130 = __dst[8];
    if (__dst[8])
    {
      v131 = *(__dst[8] + 16);
      if (v131)
      {

        v253 = sub_220E1966C(0, &qword_2812C5D00, 0x277CCAE40);
        v224 = v130;
        v132 = v130 + 64;
        v133 = MEMORY[0x277D84F90];
        v134 = v249;
        v135 = v250;
        do
        {
          v136 = *(v132 - 24);
          v276 = *(v132 - 32);
          v137 = *(v132 - 8);
          v274 = *(v132 - 16);
          v138 = v272;

          v270 = v136;

          sub_220FBFC70();
          v139 = v134;
          sub_220FBFCD0();
          v140 = sub_220FBFC60();
          v141 = sub_220FC2D70();

          v275 = v131;
          v277 = v137;
          if (v141)
          {

            v134 = v139;
          }

          else
          {
            sub_220FBFC80();
            v142 = *v259;
            v254 = v133;
            v143 = v261;
            v142(v260, v255, v261);
            sub_220FC2BC0();
            v145 = v144;
            v146 = OUTLINED_FUNCTION_5_26();
            v147(v146, v143);
            v279 = v145;
            sub_220FC0380();
            v276 = sub_220ED192C();
            v148 = v263;
            sub_220FC0000();
            v149 = v266;
            sub_220FC0030();
            v150 = v262;
            v151 = v264;
            MEMORY[0x223D99560](v149, v264);
            v152 = OUTLINED_FUNCTION_5_26();
            v153(v152, v267);
            v154 = *v256;
            v135 = v250;
            (*v256)(v148, v151);
            sub_220ED1980();
            sub_220FC25A0();
            v155 = v150;
            v134 = v249;
            v154(v155, v151);
            v133 = v254;
            v276 = v280;
            v269 = v281;
          }

          sub_220FBFC80();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_6_1();
            sub_220F3799C();
            v133 = v165;
          }

          v157 = *(v133 + 16);
          v156 = *(v133 + 24);
          if (v157 >= v156 >> 1)
          {
            OUTLINED_FUNCTION_3_35(v156);
            sub_220F3799C();
            v158 = v166;
          }

          else
          {
            v158 = v133;
          }

          v159 = *v271;
          v160 = v268;
          (*v271)(v135, v268);
          v159(v134, v160);
          v133 = v158;
          *(v158 + 16) = v157 + 1;
          v161 = (v158 + 56 * v157);
          v162 = v275;
          v163 = v269;
          v161[4] = v276;
          v161[5] = v163;
          v164 = v277;
          v161[6] = v274;
          v161[7] = v164;
          OUTLINED_FUNCTION_10_18(v161);
          v132 += 56;
          v131 = v162 - 1;
        }

        while (v131);

        v94 = v160;
      }

      else
      {
        v133 = MEMORY[0x277D84F90];
      }

      v254 = v133;
    }

    else
    {
      v254 = 0;
    }

    sub_220E1966C(0, &qword_2812C5D00, 0x277CCAE40);
    v167 = v272;
    sub_220FBFC70();
    v168 = v234;
    sub_220FBFCD0();
    v169 = *v271;
    v170 = OUTLINED_FUNCTION_45_4();
    v169(v170);
    sub_220FBFC80();
    v172 = v171;
    (v169)(v168, v94);
    v277 = v167;
    sub_220FBFC70();
    sub_220FBFCD0();
    v173 = OUTLINED_FUNCTION_45_4();
    v169(v173);
    sub_220FBFC80();
    v175 = v174;
    (v169)(v168, v94);
    v176 = __dst[5];
    if (__dst[6])
    {
      v280 = __dst[5];
      v281 = __dst[6];

      MEMORY[0x223D9BD60](10272, 0xE200000000000000);
      v177 = v239;
      v178 = sub_220FC0E80();
      MEMORY[0x223D9BD60](v178);

      MEMORY[0x223D9BD60](41, 0xE100000000000000);
      v176 = v280;
      v179 = v281;
      v180 = v241;
    }

    else
    {
      v179 = 0;
      v180 = v241;
      v177 = v239;
    }

    v181 = v273;
    v182 = [v273 symbol];
    v183 = sub_220FC2700();
    v185 = v184;
    (*v246)(v177, v180);
    v186 = v277;

    sub_220E31784(__dst);
    sub_220E31784(__dst);
    if (v172 > v175)
    {
      goto LABEL_66;
    }

    v187 = v237 != v240;
    v188 = __dst[9];
    v189 = v180;
    v190 = v179;
    v191 = __dst[4];
    v192 = v230;
    v193 = v230 + *(v232 + 48);
    (*v225)(v230, v243, v189);
    *v193 = v183;
    *(v193 + 8) = v185;
    *(v193 + 16) = 0;
    *(v193 + 24) = 0;
    *(v193 + 32) = v191;
    *(v193 + 33) = v187;
    *(v193 + 34) = v279;
    *(v193 + 38) = WORD2(v279);
    *(v193 + 40) = v176;
    *(v193 + 48) = v190;
    v194 = v254;
    *(v193 + 56) = v278;
    *(v193 + 64) = v194;
    *(v193 + 72) = v188;
    *(v193 + 76) = *(&v280 + 3);
    *(v193 + 73) = v280;
    *(v193 + 80) = v172;
    *(v193 + 88) = v175;
    v195 = v228;
    sub_220EEECFC(v192, v228, &qword_27CF9EC28, &qword_220FD4F30);
    v196 = v242;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v200 = OUTLINED_FUNCTION_6_1();
      sub_220F37A60(v200, v201, v202, v196);
      v196 = v203;
    }

    v72 = v226;
    v54 = v227;
    p_vtable = (_TtC11WeatherMaps28WeatherMapCameraFocusFactory + 24);
    v198 = *(v196 + 16);
    v197 = *(v196 + 24);
    v242 = v196;
    v71 = v243;
    v70 = v241;
    if (v198 >= v197 >> 1)
    {
      v204 = OUTLINED_FUNCTION_3_35(v197);
      sub_220F37A60(v204, v205, v206, v242);
      v242 = v207;
    }

    v199 = v242;
    *(v242 + 16) = v198 + 1;
    sub_220EEECFC(v195, v199 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v198, &qword_27CF9EC28, &qword_220FD4F30);
LABEL_61:
    v68 = v248 + 1;
    if (v248 + 1 == v245)
    {

      v208 = v242;
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_220FC3930();
  __break(1u);
  return result;
}

uint64_t sub_220F2D4B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFE0, &qword_220FD4860);
    v1 = sub_220FC3780();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_220F30118(v2, 1, &v4);

  return v4;
}

uint64_t sub_220F2D564(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFD8, &qword_220FD4858);
    v2 = sub_220FC3780();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_220F307F0(a1, 1, &v4);
  return v4;
}

void sub_220F2D60C(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v7 = a4;
  v8 = *(a1 + 56);
  v9 = *(a1 + 8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    goto LABEL_24;
  }

  v33 = *(a1 + 56);
  v38 = MEMORY[0x277D84F90];
  v12 = sub_220F0B140(0, v10, 0);
  v11 = v38;
  v14 = (v9 + 64);
  do
  {
    v16 = *(v14 - 4);
    v15 = *(v14 - 3);
    v17 = *(v14 - 2);
    v18 = *(v14 - 1);
    v19 = *v14;
    if (!v15)
    {

      goto LABEL_19;
    }

    MEMORY[0x28223BE20](v12, v13);
    if ((v15 & 0x1000000000000000) == 0)
    {
      if ((v15 & 0x2000000000000000) != 0)
      {
        *&v39 = v16;
        *(&v39 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
        swift_bridgeObjectRetain_n();

        if (v16 < 0x21u && ((0x100003E01uLL >> v16) & 1) != 0)
        {
          goto LABEL_15;
        }

LABEL_13:
        v21 = _swift_stdlib_strtod_clocale();
        if (v21)
        {
          v22 = *v21 == 0;
LABEL_16:
          v37 = v22;
          goto LABEL_17;
        }

LABEL_15:
        v22 = 0;
        goto LABEL_16;
      }

      if ((v16 & 0x1000000000000000) != 0)
      {
        v20 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        swift_bridgeObjectRetain_n();

        if (v20 < 0x21 && ((0x100003E01uLL >> v20) & 1) != 0)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    swift_bridgeObjectRetain_n();

    sub_220FC35B0();
LABEL_17:

    if (v37)
    {
      *&v39 = 0;
      sub_220ED192C();
      v16 = sub_220FC2590();
      v24 = v23;

      v15 = v24;
    }

LABEL_19:
    v38 = v11;
    v26 = *(v11 + 16);
    v25 = *(v11 + 24);
    if (v26 >= v25 >> 1)
    {
      v12 = sub_220F0B140((v25 > 1), v26 + 1, 1);
      v11 = v38;
    }

    *(v11 + 16) = v26 + 1;
    v27 = v11 + 56 * v26;
    *(v27 + 32) = v16;
    *(v27 + 40) = v15;
    *(v27 + 48) = v17;
    *(v27 + 56) = v18;
    *(v27 + 64) = v19;
    *(v27 + 72) = 0;
    *(v27 + 80) = 1;
    v14 += 5;
    --v10;
  }

  while (v10);
  v7 = a4;
  v4 = a3;
  v5 = a2;
  v8 = v33;
  v6 = a1;
LABEL_24:
  v28 = v6[5];
  v29 = v6[6];
  if (v28 > v29)
  {
    __break(1u);
  }

  else
  {
    v39 = *v6;
    v31 = *(v6 + 2);
    v30 = *(v6 + 3);
    sub_220F30FE8(&v39, &v38);
    *v7 = *v6;
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    *(v7 + 32) = v8;
    *(v7 + 33) = 0;
    *(v7 + 40) = v31;
    *(v7 + 48) = v30;
    *(v7 + 56) = v11;
    *(v7 + 64) = 0;
    *(v7 + 72) = 0;
    *(v7 + 80) = v28;
    *(v7 + 88) = v29;
  }
}

void *sub_220F2D920(uint64_t *a1, void *a2, uint64_t *a3, void *__src)
{
  v6 = *a3;
  v7 = a3[1];
  memcpy(__dst, __src, sizeof(__dst));
  *a1 = v6;
  a1[1] = v7;

  sub_220F2D60C(__dst, v6, v7, __srca);
  return memcpy(a2, __srca, 0x60uLL);
}

void *sub_220F2D9A8(void *a1, void *a2, uint64_t *a3, void *__src)
{
  v7 = *a3;
  v6 = a3[1];
  memcpy(__dst, __src, sizeof(__dst));
  *a1 = v7;
  a1[1] = v6;

  sub_220F2D60C(__dst, 0, 0, __srca);
  return memcpy(a2, __srca, 0x60uLL);
}

void *sub_220F2DA30(_BYTE *a1, _OWORD *a2, uint64_t *a3, void *__src)
{
  v6 = *a3;
  v7 = a3[1];
  memcpy(__dst, __src, sizeof(__dst));

  result = sub_220FB9938(v6, v7);
  if (result == 4)
  {
    *a1 = 4;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
  }

  else
  {
    *a1 = result;
    sub_220F2D60C(__dst, 0, 0, __srca);
    return memcpy(a2, __srca, 0x60uLL);
  }

  return result;
}

void sub_220F2DAE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D050, &unk_220FD08E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v183 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v183 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v190 = &v183 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v183 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v183 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v183 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v189 = &v183 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v192 = &v183 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v203 = &v183 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v196 = (&v183 - v37);
  if (!*(a1 + 16) || (sub_220F2F218(a1, __src), !__src[1]))
  {

    return;
  }

  v232 = __src[0];
  v233 = __src[1];
  memcpy(v234, &__src[2], sizeof(v234));
  v38 = *(a1 + 16);

  v204 = v2;
  v186 = v21;
  v187 = v25;
  v191 = v10;
  v188 = v3;
  v184 = v6;
  v195 = v17;
  if (!v38 || (sub_220F191E0(1), v39 = a1, (v40 & 1) == 0))
  {
    v185 = a1;
    v41 = v234[10];
    v42 = objc_opt_self();
    memcpy(v231, __src, sizeof(v231));
    sub_220EE5BFC(v231, &v219, &qword_27CF9EFB0, &qword_220FD4818);
    v43 = [v42 celsius];
    sub_220E1966C(0, &qword_2812C5B20, 0x277D82BB8);
    sub_220EE5BFC(__src, &v219, &qword_27CF9EFB8, &unk_220FD4820);
    v44 = v41;
    LOBYTE(v42) = sub_220FC3250();

    if (v42)
    {

      sub_220E31784(&v232);
      v45 = *&v234[8];
      v46 = *&v234[9];
      v47 = v234[7];
      v48 = v234[6];
      v49 = v234[5];
      v201 = v234[3];
      v202 = v234[4];
      v50 = BYTE1(v234[2]);
      v51 = v234[2];
      v52 = v234[0];
      v53 = v234[1];
      v54 = v232;
      v55 = v233;
      sub_220E31B58(&v232, &v219);
    }

    else
    {
      v197 = v44;
      v198 = v43;
      v56 = v234[5];
      v57 = *(v234[5] + 16);
      if (v57)
      {
        v194 = (v3 + 8);
        v193 = sub_220E1966C(0, &unk_2812C5CB0, 0x277CCAE48);
        v58 = v56 + 64;
        v59 = MEMORY[0x277D84F90];
        v60 = v203;
        do
        {
          v202 = *(v58 - 16);
          v203 = v57;
          v61 = *(v58 - 8);
          v62 = v197;

          sub_220FBFC70();
          sub_220FBFCD0();
          v63 = sub_220FBFCE0();
          v200 = v64;
          v201 = v63;

          sub_220FBFC80();
          v66 = v65;
          v199 = v61;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_220F3799C();
            v59 = v74;
          }

          v67 = *(v59 + 16);
          if (v67 >= *(v59 + 24) >> 1)
          {
            sub_220F3799C();
            v59 = v75;
          }

          v68 = *v194;
          v69 = v204;
          (*v194)(v60, v204);
          v68(v196, v69);
          *(v59 + 16) = v67 + 1;
          v70 = v59 + 56 * v67;
          v71 = v200;
          *(v70 + 32) = v201;
          *(v70 + 40) = v71;
          v72 = v203;
          v73 = v199;
          *(v70 + 48) = v202;
          *(v70 + 56) = v73;
          *(v70 + 64) = v66;
          *(v70 + 72) = 0;
          *(v70 + 80) = 1;
          v58 += 56;
          v57 = v72 - 1;
        }

        while (v57);
      }

      else
      {
        v59 = MEMORY[0x277D84F90];
      }

      v193 = v59;
      v76 = v234[6];
      if (v234[6])
      {
        v77 = *(v234[6] + 16);
        if (v77)
        {
          v196 = (v188 + 8);

          v194 = sub_220E1966C(0, &unk_2812C5CB0, 0x277CCAE48);
          v183 = v76;
          v78 = v76 + 64;
          v79 = MEMORY[0x277D84F90];
          v80 = v189;
          v81 = v196;
          do
          {
            v201 = *(v78 - 16);
            v202 = v77;
            v82 = *(v78 - 8);
            v83 = v197;

            sub_220FBFC70();
            sub_220FBFCD0();
            v84 = sub_220FBFCE0();
            v199 = v85;
            v200 = v84;

            sub_220FBFC80();
            v87 = v86;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_220F3799C();
              v79 = v94;
            }

            v88 = *(v79 + 2);
            if (v88 >= *(v79 + 3) >> 1)
            {
              sub_220F3799C();
              v203 = v95;
            }

            else
            {
              v203 = v79;
            }

            v89 = *v81;
            v90 = v204;
            (*v81)(v80, v204);
            v89(v192, v90);
            v79 = v203;
            *(v203 + 2) = v88 + 1;
            v91 = &v79[56 * v88];
            v92 = v199;
            *(v91 + 4) = v200;
            *(v91 + 5) = v92;
            v93 = v202;
            *(v91 + 6) = v201;
            *(v91 + 7) = v82;
            *(v91 + 8) = v87;
            *(v91 + 9) = 0;
            v91[80] = 1;
            v78 += 56;
            v77 = v93 - 1;
          }

          while (v77);

          v96 = v90;
        }

        else
        {
          v203 = MEMORY[0x277D84F90];
          v96 = v204;
        }

        v99 = v197;
        v98 = v186;
        v97 = v187;
      }

      else
      {
        v203 = 0;
        v96 = v204;
        v98 = v186;
        v97 = v187;
        v99 = v197;
      }

      sub_220E1966C(0, &unk_2812C5CB0, 0x277CCAE48);
      v100 = v99;
      sub_220FBFC70();
      v101 = v198;
      sub_220FBFCD0();
      v102 = *(v188 + 8);
      v102(v98, v96);
      sub_220FBFC80();
      v45 = v103;
      v102(v97, v96);
      v104 = v100;
      v105 = v96;
      v106 = v104;
      sub_220FBFC70();
      sub_220FBFCD0();
      v102(v98, v105);
      sub_220FBFC80();
      v46 = v107;
      v102(v97, v105);
      v108 = v234[3];
      v202 = v234[4];

      v109 = [v101 symbol];
      v54 = sub_220FC2700();
      v55 = v110;

      sub_220E31784(&v232);
      sub_220E31784(&v232);
      if (v45 > v46)
      {
        __break(1u);
        goto LABEL_64;
      }

      v47 = v234[7];
      v51 = v234[2];
      v219 = v54;
      v220 = v55;
      v221 = 0;
      v222 = 0;
      v223 = LOBYTE(v234[2]);
      v201 = v108;
      v224 = v108;
      v225 = v202;
      v49 = v193;
      v48 = v203;
      v226 = v193;
      v227 = v203;
      v228 = v234[7];
      v229 = v45;
      v230 = v46;
      sub_220E31B58(&v219, &v206);
      v52 = 0;
      v53 = 0;
      v50 = 0;
    }

    v219 = v54;
    v220 = v55;
    v221 = v52;
    v222 = v53;
    LOBYTE(v223) = v51;
    HIBYTE(v223) = v50;
    v224 = v201;
    v225 = v202;
    v226 = v49;
    v227 = v48;
    v228 = v47;
    v229 = v45;
    v230 = v46;
    v206 = v54;
    v207 = v55;
    v208 = v52;
    v209 = v53;
    v210 = v51;
    v211 = v50;
    v212 = v201;
    v213 = v202;
    v214 = v49;
    v215 = v48;
    v216 = v47;
    v217 = v45;
    v218 = v46;
    sub_220E31784(&v206);
    a1 = v185;
    swift_isUniquelyReferenced_nonNull_native();
    v205 = a1;
    sub_220E98014(&v219);
    v39 = v205;
    v3 = v188;
  }

  if (*(a1 + 16))
  {
    sub_220F191E0(2);
    if (v111)
    {
      sub_220E3B2DC(__src, &qword_27CF9EFB8, &unk_220FD4820);
      return;
    }
  }

  v193 = v39;
  v112 = v234[10];
  v113 = objc_opt_self();
  sub_220EE5BFC(__src, v231, &qword_27CF9EFB8, &unk_220FD4820);
  v114 = [v113 fahrenheit];
  sub_220E1966C(0, &qword_2812C5B20, 0x277D82BB8);
  sub_220EE5BFC(__src, v231, &qword_27CF9EFB8, &unk_220FD4820);
  v115 = v112;
  LOBYTE(v113) = sub_220FC3250();

  if (v113)
  {

    sub_220E31784(&v232);
    v116 = *&v234[8];
    v117 = *&v234[9];
    v118 = v234[7];
    v119 = v234[6];
    v120 = v234[5];
    v202 = v234[3];
    v204 = v234[4];
    v121 = BYTE1(v234[2]);
    v122 = v234[2];
    v123 = v234[0];
    v124 = v234[1];
    v125 = v232;
    v126 = v233;
    sub_220E31B58(&v232, v231);
LABEL_62:
    v231[0] = v125;
    v231[1] = v126;
    v231[2] = v123;
    v231[3] = v124;
    LOBYTE(v231[4]) = v122;
    BYTE1(v231[4]) = v121;
    v231[5] = v202;
    v231[6] = v204;
    v231[7] = v120;
    v231[8] = v119;
    LOBYTE(v231[9]) = v118;
    *&v231[10] = v116;
    *&v231[11] = v117;
    v206 = v125;
    v207 = v126;
    v208 = v123;
    v209 = v124;
    v210 = v122;
    v211 = v121;
    v212 = v202;
    v213 = v204;
    v214 = v120;
    v215 = v119;
    v216 = v118;
    v217 = v116;
    v218 = v117;
    sub_220E31784(&v206);
    v182 = v193;
    swift_isUniquelyReferenced_nonNull_native();
    v205 = v182;
    sub_220E98014(v231);
    sub_220E3B2DC(__src, &qword_27CF9EFB8, &unk_220FD4820);
    return;
  }

  v197 = v115;
  v198 = v114;
  v127 = v234[5];
  v128 = *(v234[5] + 16);
  if (v128)
  {
    v196 = (v3 + 8);
    v194 = sub_220E1966C(0, &unk_2812C5CB0, 0x277CCAE48);
    v129 = v127 + 64;
    v130 = MEMORY[0x277D84F90];
    v131 = v190;
    do
    {
      v202 = *(v129 - 16);
      v203 = v128;
      v132 = *(v129 - 8);
      v133 = v115;

      sub_220FBFC70();
      sub_220FBFCD0();
      v134 = sub_220FBFCE0();
      v200 = v135;

      sub_220FBFC80();
      v137 = v136;
      v199 = v132;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F3799C();
        v130 = v147;
      }

      v139 = *(v130 + 16);
      v138 = *(v130 + 24);
      v201 = v134;
      if (v139 >= v138 >> 1)
      {
        sub_220F3799C();
        v140 = v148;
      }

      else
      {
        v140 = v130;
      }

      v141 = *v196;
      v142 = v204;
      (*v196)(v131, v204);
      v141(v195, v142);
      v130 = v140;
      *(v140 + 16) = v139 + 1;
      v143 = v140 + 56 * v139;
      v144 = v200;
      *(v143 + 32) = v201;
      *(v143 + 40) = v144;
      v145 = v203;
      v146 = v199;
      *(v143 + 48) = v202;
      *(v143 + 56) = v146;
      *(v143 + 64) = v137;
      *(v143 + 72) = 0;
      *(v143 + 80) = 1;
      v129 += 56;
      v128 = v145 - 1;
      v115 = v197;
    }

    while (v128);
  }

  else
  {
    v130 = MEMORY[0x277D84F90];
  }

  v149 = v234[6];
  v194 = v130;
  if (v234[6])
  {
    v150 = *(v234[6] + 16);
    if (v150)
    {
      v196 = (v188 + 8);

      v195 = sub_220E1966C(0, &unk_2812C5CB0, 0x277CCAE48);
      v192 = v149;
      v151 = v149 + 64;
      v152 = MEMORY[0x277D84F90];
      v153 = v184;
      do
      {
        v201 = *(v151 - 2);
        v154 = *(v151 - 1);
        v155 = v197;

        sub_220FBFC70();
        sub_220FBFCD0();
        v156 = sub_220FBFCE0();
        v199 = v157;

        sub_220FBFC80();
        v159 = v158;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_220F3799C();
          v152 = v168;
        }

        v161 = *(v152 + 2);
        v160 = *(v152 + 3);
        v202 = v150;
        v203 = v152;
        v200 = v156;
        if (v161 >= v160 >> 1)
        {
          sub_220F3799C();
          v203 = v169;
        }

        v162 = *v196;
        v163 = v204;
        (*v196)(v153, v204);
        v162(v191, v163);
        v165 = v202;
        v164 = v203;
        *(v203 + 2) = v161 + 1;
        v152 = v164;
        v166 = &v164[56 * v161];
        v167 = v199;
        *(v166 + 4) = v200;
        *(v166 + 5) = v167;
        *(v166 + 6) = v201;
        *(v166 + 7) = v154;
        *(v166 + 8) = v159;
        *(v166 + 9) = 0;
        v166[80] = 1;
        v151 += 56;
        v150 = v165 - 1;
      }

      while (v150);

      v170 = v163;
    }

    else
    {
      v203 = MEMORY[0x277D84F90];
      v170 = v204;
    }

    v115 = v197;
  }

  else
  {
    v203 = 0;
    v170 = v204;
  }

  v172 = v186;
  v171 = v187;
  sub_220E1966C(0, &unk_2812C5CB0, 0x277CCAE48);
  v173 = v115;
  sub_220FBFC70();
  v174 = v198;
  sub_220FBFCD0();
  v175 = *(v188 + 8);
  v175(v172, v170);
  sub_220FBFC80();
  v116 = v176;
  v175(v171, v170);
  v202 = v173;
  sub_220FBFC70();
  sub_220FBFCD0();
  v175(v172, v170);
  sub_220FBFC80();
  v117 = v177;
  v175(v171, v170);
  v178 = v234[3];
  v204 = v234[4];

  v179 = [v174 symbol];
  v125 = sub_220FC2700();
  v126 = v180;
  v181 = v202;

  sub_220E31784(&v232);
  sub_220E31784(&v232);
  if (v116 <= v117)
  {
    v118 = v234[7];
    v122 = v234[2];
    v231[0] = v125;
    v231[1] = v126;
    v231[2] = 0;
    v231[3] = 0;
    LOWORD(v231[4]) = LOBYTE(v234[2]);
    v202 = v178;
    v231[5] = v178;
    v231[6] = v204;
    v120 = v194;
    v119 = v203;
    v231[7] = v194;
    v231[8] = v203;
    LOBYTE(v231[9]) = v234[7];
    *&v231[10] = v116;
    *&v231[11] = v117;
    sub_220E31B58(v231, &v206);
    v123 = 0;
    v124 = 0;
    v121 = 0;
    goto LABEL_62;
  }

LABEL_64:
  __break(1u);
}

uint64_t sub_220F2EB88(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_220F3043C(a1, sub_220F30D2C, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_220F2EC0C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    [objc_allocWithZone(MEMORY[0x277CD4F18]) init];
    return;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v42 = MEMORY[0x277D84F90];

    sub_220F0B180(0, v3, 0);
    v5 = 0;
    v6 = v42;
    while (v5 < *(v2 + 16))
    {
      v7 = *(v2 + 8 * v5 + 32);
      if (v7[1].i64[0] != 2)
      {

        sub_220FC35C0();

        v11 = sub_220FC38F0();
        MEMORY[0x223D9BD60](v11);

        MEMORY[0x223D9BD60](0x64616574736E6920, 0xE800000000000000);
        sub_220F31444();
        swift_allocError();
        *v12 = 0xD000000000000028;
        v12[1] = 0x8000000220FE3480;
        swift_willThrow();

        return;
      }

      v8 = v7[2];
      v10 = *(v42 + 16);
      v9 = *(v42 + 24);
      if (v10 >= v9 >> 1)
      {
        v40 = v8;
        sub_220F0B180((v9 > 1), v10 + 1, 1);
        v8 = v40;
      }

      ++v5;
      *(v42 + 16) = v10 + 1;
      *(v42 + 16 * v10 + 32) = vextq_s8(v8, v8, 8uLL);
      if (v3 == v5)
      {

        goto LABEL_13;
      }
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
    goto LABEL_45;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_13:

  sub_220F2B8D8(1, a1);
  v16 = v15 >> 1;
  v17 = (v15 >> 1) - v14;
  if (__OFSUB__(v15 >> 1, v14))
  {
    goto LABEL_44;
  }

  if (v17)
  {
    v18 = v13;
    v19 = v14;
    v43 = v4;
    sub_220FC3670();
    if ((v17 & 0x8000000000000000) != 0)
    {
LABEL_45:
      __break(1u);
      return;
    }

    v20 = 0;
    v37 = v16;
    v38 = v18;
    v39 = v17;
    while (!__OFADD__(v20, 1))
    {
      if (v19 >= v16 || v20 >= v17)
      {
        goto LABEL_42;
      }

      v41 = v20 + 1;
      v22 = *(v18 + 8 * v19);
      v23 = *(v22 + 16);
      if (v23)
      {

        sub_220F0B180(0, v23, 0);
        v24 = 0;
        while (v24 < *(v22 + 16))
        {
          v25 = *(v22 + 8 * v24 + 32);
          if (v25[1].i64[0] != 2)
          {

            sub_220FC35C0();

            v33 = sub_220FC38F0();
            MEMORY[0x223D9BD60](v33);

            MEMORY[0x223D9BD60](0x64616574736E6920, 0xE800000000000000);
            sub_220F31444();
            swift_allocError();
            *v34 = 0xD000000000000028;
            v34[1] = 0x8000000220FE3480;
            swift_willThrow();

            swift_unknownObjectRelease();

            return;
          }

          v26 = v25[2];
          v28 = *(v4 + 16);
          v27 = *(v4 + 24);
          v29 = v28 + 1;
          if (v28 >= v27 >> 1)
          {
            v36 = v26;
            sub_220F0B180((v27 > 1), v28 + 1, 1);
            v26 = v36;
          }

          ++v24;
          *(v4 + 16) = v29;
          *(v4 + 16 * v28 + 32) = vextq_s8(v26, v26, 8uLL);
          if (v23 == v24)
          {
            v16 = v37;
            v18 = v38;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

      v29 = *(v4 + 16);
LABEL_31:
      v30 = [objc_opt_self() polygonWithCoordinates:v4 + 32 count:v29];

      sub_220FC3640();
      sub_220FC3680();
      sub_220FC3690();
      sub_220FC3650();
      if (__OFADD__(v19++, 1))
      {
        goto LABEL_43;
      }

      v20 = v41;
      v17 = v39;
      v4 = MEMORY[0x277D84F90];
      if (v41 == v39)
      {
        swift_unknownObjectRelease();
        v32 = v43;
        goto LABEL_36;
      }
    }

    goto LABEL_41;
  }

  swift_unknownObjectRelease();
  v32 = MEMORY[0x277D84F90];
LABEL_36:
  v35 = *(v6 + 16);
  if (!sub_220F43CDC())
  {

    v32 = 0;
  }

  sub_220E1966C(0, &qword_2812C5AE0, 0x277CD4F18);
  sub_220F2F16C(v6 + 32, v35, v32);
}

id sub_220F2F16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_220E1966C(0, &qword_2812C5AE0, 0x277CD4F18);
    v5 = sub_220FC2960();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() polygonWithCoordinates:a1 count:a2 interiorPolygons:v5];

  return v6;
}

id sub_220F2F218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  if (*(a1 + 16))
  {
    v5 = sub_220F191E0(0);
    if (v6)
    {
LABEL_3:
      memcpy(__dst, (*(a1 + 56) + 96 * v5), sizeof(__dst));
      v7 = objc_opt_self();
      sub_220E31B58(__dst, v22);
      v8 = [v7 celsius];
LABEL_13:
      result = v8;
      v3 = __dst[0];
      v10 = __dst[1];
      v11 = __dst[2];
      v12 = __dst[3];
      v13 = __dst[4];
      v14 = __dst[5];
      goto LABEL_15;
    }

    if (*(a1 + 16))
    {
      v15 = sub_220F191E0(2);
      if (v16)
      {
        memcpy(__dst, (*(a1 + 56) + 96 * v15), sizeof(__dst));
        v17 = objc_opt_self();
        sub_220E31B58(__dst, v22);
        v8 = [v17 fahrenheit];
        goto LABEL_13;
      }

      if (*(a1 + 16))
      {
        v5 = sub_220F191E0(1);
        if (v18)
        {
          goto LABEL_3;
        }

        if (*(a1 + 16))
        {
          v19 = sub_220F191E0(3);
          if (v20)
          {
            memcpy(__dst, (*(a1 + 56) + 96 * v19), sizeof(__dst));
            v21 = objc_opt_self();
            sub_220E31B58(__dst, v22);
            v8 = [v21 kelvin];
            goto LABEL_13;
          }
        }
      }
    }

    result = 0;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v3 = 0uLL;
    goto LABEL_15;
  }

  result = 0;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
LABEL_15:
  *a2 = v3;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  *(a2 + 96) = result;
  return result;
}

void *sub_220F2F420(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D070, &unk_220FC9CD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_220F2F4F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0, &unk_220FC9110);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_220F2F5BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220F2F6DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_220F2F7DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFE0, &qword_220FD4860);
  v38 = v4;
  v6 = sub_220FC3770();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v37 = v5;
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
  v14 = v6 + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      sub_220E49DD8(0, (v36 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(v5 + 56) + 32 * v18;
    v22 = *(v21 + 8);
    v40 = *v21;
    v41 = *v19;
    v23 = *(v21 + 16);
    v39 = *(v21 + 24);
    if ((v38 & 1) == 0)
    {
      v24 = v23;
    }

    sub_220FC3A40();
    sub_220FC27D0();
    v25 = sub_220FC3A90();
    v26 = -1 << *(v7 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v7 + 48) + 16 * v29);
    *v34 = v41;
    v34[1] = v20;
    v35 = *(v7 + 56) + 32 * v29;
    *v35 = v40;
    *(v35 + 8) = v22;
    *(v35 + 16) = v23;
    *(v35 + 24) = v39;
    ++*(v7 + 16);
    v5 = v37;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v14 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_220F2FAB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_220FC0EA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFD8, &qword_220FD4858);
  v50 = v4;
  v11 = sub_220FC3770();
  v12 = v11;
  if (!*(v10 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v12;
    return;
  }

  v64 = v9;
  v47[0] = v2;
  v13 = 0;
  v14 = (v10 + 64);
  v15 = 1 << *(v10 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v10 + 64);
  v18 = (v15 + 63) >> 6;
  v47[1] = v6 + 16;
  v49 = v6;
  v51 = (v6 + 32);
  v19 = v11 + 64;
  v48 = v10;
  if (!v17)
  {
LABEL_7:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v47[0];
      goto LABEL_33;
    }

    v46 = 1 << *(v10 + 32);
    v3 = v47[0];
    if (v46 >= 64)
    {
      sub_220E49DD8(0, (v46 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v46;
    }

    *(v10 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v13 << 6);
    v24 = *(v10 + 48);
    v63 = *(v49 + 72);
    if (v50)
    {
      (*(v49 + 32))(v64, v24 + v63 * v23, v5);
      v25 = *(v10 + 56) + 96 * v23;
      v26 = *(v25 + 8);
      v54 = *v25;
      v52 = v26;
      v27 = *(v25 + 24);
      v56 = *(v25 + 16);
      v53 = v27;
      v55 = *(v25 + 32);
      v57 = *(v25 + 33);
      v28 = *(v25 + 48);
      v60 = *(v25 + 40);
      v58 = v28;
      v29 = *(v25 + 64);
      v59 = *(v25 + 56);
      v61 = v29;
      v62 = *(v25 + 72);
      v30 = *(v25 + 80);
      v31 = *(v25 + 88);
    }

    else
    {
      (*(v49 + 16))(v64, v24 + v63 * v23, v5);
      memcpy(__dst, (*(v10 + 56) + 96 * v23), sizeof(__dst));
      v30 = __dst[10];
      v31 = __dst[11];
      v62 = LOBYTE(__dst[9]);
      v61 = __dst[8];
      v59 = __dst[7];
      v60 = __dst[5];
      v58 = __dst[6];
      v57 = BYTE1(__dst[4]);
      v55 = LOBYTE(__dst[4]);
      v56 = __dst[2];
      v53 = __dst[3];
      v54 = __dst[0];
      v52 = __dst[1];
      sub_220E31B58(__dst, &v65);
    }

    sub_220F06C58();
    v32 = sub_220FC2640();
    v33 = -1 << *(v12 + 32);
    v34 = v32 & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
    {
      break;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v19 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    (*v51)(*(v12 + 48) + v63 * v36, v64, v5);
    v41 = *(v12 + 56) + 96 * v36;
    v42 = v52;
    *v41 = v54;
    *(v41 + 8) = v42;
    v43 = v53;
    *(v41 + 16) = v56;
    *(v41 + 24) = v43;
    *(v41 + 32) = v55;
    *(v41 + 33) = v57;
    *(v41 + 38) = v66;
    *(v41 + 34) = v65;
    v44 = v58;
    *(v41 + 40) = v60;
    *(v41 + 48) = v44;
    v45 = v61;
    *(v41 + 56) = v59;
    *(v41 + 64) = v45;
    *(v41 + 72) = v62;
    *(v41 + 73) = __dst[0];
    *(v41 + 76) = *(__dst + 3);
    *(v41 + 80) = v30;
    *(v41 + 88) = v31;
    ++*(v12 + 16);
    v10 = v48;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  v37 = 0;
  v38 = (63 - v33) >> 6;
  while (++v35 != v38 || (v37 & 1) == 0)
  {
    v39 = v35 == v38;
    if (v35 == v38)
    {
      v35 = 0;
    }

    v37 |= v39;
    v40 = *(v19 + 8 * v35);
    if (v40 != -1)
    {
      v36 = __clz(__rbit64(~v40)) + (v35 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

unint64_t sub_220F30094()
{
  result = qword_2812C7DF8[0];
  if (!qword_2812C7DF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812C7DF8);
  }

  return result;
}

void sub_220F30118(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 72); ; i += 48)
  {
    if (v29 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_220FC3990();
      __break(1u);
      goto LABEL_22;
    }

    v31 = v4;
    v7 = *(i - 5);
    v6 = *(i - 4);
    v9 = *(i - 3);
    v8 = *(i - 2);
    v10 = *(i - 1);
    v32 = *i;
    v11 = *a3;
    v28 = v10;

    v33 = v8;

    v13 = sub_220F19120(v7, v6);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_19;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFE8, &qword_220FD4868);
      sub_220FC3720();
      if (v17)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v21 = (v20[6] + 16 * v13);
    *v21 = v7;
    v21[1] = v6;
    v22 = v20[7] + 32 * v13;
    *v22 = v9;
    *(v22 + 8) = v33;
    *(v22 + 16) = v10;
    *(v22 + 24) = v32;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v31 + 1;
    a2 = 1;
  }

  sub_220F2F7DC(v16, a2 & 1);
  v18 = sub_220F19120(v7, v6);
  if ((v17 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v13 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0, &qword_220FCA4D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_220FC35C0();
  MEMORY[0x223D9BD60](0xD00000000000001BLL, 0x8000000220FE3460);
  sub_220FC3700();
  MEMORY[0x223D9BD60](39, 0xE100000000000000);
  sub_220FC3740();
  __break(1u);
}

void sub_220F3043C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
  v40 = sub_220FC0EA0();
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFC8, &qword_220FD4848);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v37 - v15;
  sub_220F31060(a1, a2, a3, v48);
  v44 = v48[0];
  v45 = v48[1];
  v46 = v48[2];
  v47 = v49;
  v17 = (v9 + 32);
  v38 = (v9 + 8);
  v39 = v9;
  v37[1] = a1;

  v37[0] = a3;

  while (1)
  {
    sub_220F3109C(v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC28, &qword_220FD4F30);
    if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
    {
      sub_220EA9CB8(v44);

      return;
    }

    v19 = *(v18 + 48);
    v20 = *v17;
    (*v17)(v12, v16, v40);
    memcpy(v43, &v16[v19], sizeof(v43));
    v21 = *v50;
    v23 = sub_220F1914C();
    v24 = *(v21 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (*(v21 + 24) >= v26)
    {
      if (a4)
      {
        if (v22)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFD0, &qword_220FD4850);
        sub_220FC3720();
        if (v27)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_220F2FAB0(v26, a4 & 1);
      v28 = sub_220F1914C();
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_18;
      }

      v23 = v28;
      if (v27)
      {
LABEL_10:
        v30 = *v50;
        v31 = 3 * v23;
        memcpy(v41, (*(*v50 + 56) + 32 * v31), sizeof(v41));
        sub_220E31B58(v41, v42);
        sub_220E31784(v43);
        (*v38)(v12, v40);
        v32 = (*(v30 + 56) + 32 * v31);
        memcpy(v42, v32, sizeof(v42));
        memcpy(v32, v41, 0x60uLL);
        sub_220E31784(v42);
        goto LABEL_14;
      }
    }

    v33 = *v50;
    *(*v50 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v20((v33[6] + *(v39 + 72) * v23), v12, v40);
    memcpy((v33[7] + 96 * v23), v43, 0x60uLL);
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_17;
    }

    v33[2] = v36;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_220FC3990();
  __break(1u);
}

void sub_220F307F0(uint64_t a1, char a2, void *a3)
{
  v46 = a3;
  v6 = sub_220FC0EA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC28, &qword_220FD4F30);
  MEMORY[0x28223BE20](v10, v11);
  v44 = &v39 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
LABEL_17:

    return;
  }

  v39 = v3;
  v16 = 0;
  v43 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v17 = *(v12 + 48);
  v41 = v7;
  v42 = v17;
  v45 = (v7 + 32);
  v40 = v15 - 1;
  while (1)
  {
    if (v16 >= v15)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_220FC3990();
      __break(1u);
      goto LABEL_22;
    }

    v18 = a2;
    v19 = v13;
    v20 = v44;
    sub_220EE5BFC(v43 + *(v13 + 72) * v16, v44, &qword_27CF9EC28, &qword_220FD4F30);
    v21 = *v45;
    v22 = v6;
    (*v45)(v47, v20, v6);
    memcpy(__dst, (v20 + v42), 0x60uLL);
    v23 = *v46;
    v25 = sub_220F1914C();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    if (v18)
    {
      if (v24)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EFD0, &qword_220FD4850);
      sub_220FC3720();
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v32 = v47;
    v33 = *v46;
    *(*v46 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v6 = v22;
    v21((v33[6] + *(v41 + 72) * v25), v32, v22);
    memcpy((v33[7] + 96 * v25), __dst, 0x60uLL);
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_20;
    }

    v33[2] = v36;
    if (v40 == v16)
    {
      goto LABEL_17;
    }

    v15 = *(a1 + 16);
    ++v16;
    a2 = 1;
    v13 = v19;
  }

  sub_220F2FAB0(v28, v18 & 1);
  v30 = sub_220F1914C();
  if ((v29 & 1) != (v31 & 1))
  {
    goto LABEL_21;
  }

  v25 = v30;
  if ((v29 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v37 = swift_allocError();
  swift_willThrow();

  v51 = v37;
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0, &qword_220FCA4D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_220E31784(__dst);
    (*(v41 + 8))(v47, v22);

    return;
  }

LABEL_22:
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_220FC35C0();
  MEMORY[0x223D9BD60](0xD00000000000001BLL, 0x8000000220FE3460);
  sub_220FC3700();
  MEMORY[0x223D9BD60](39, 0xE100000000000000);
  sub_220FC3740();
  __break(1u);
}

uint64_t sub_220F30C98(uint64_t a1, void *a2, uint64_t a3, const void *a4)
{
  v8 = sub_220FC0EA0();
  (*(*(v8 - 8) + 16))(a1, a3, v8);
  memcpy(a2, a4, 0x60uLL);
  return sub_220E31B58(a4, &v10);
}

uint64_t sub_220F30D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE00, &qword_220FD4840) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC28, &qword_220FD4F30) + 48);
  memcpy(v7, (a1 + v4), sizeof(v7));
  return sub_220F30C98(a2, (a2 + v5), a1, v7);
}

_BYTE *sub_220F30DB4@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v5 = *result;
  v6 = v5 > 0x20;
  v7 = (1 << v5) & 0x100003E01;
  v8 = v6 || v7 == 0;
  v9 = v8 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a3 = v9;
  return result;
}

void sub_220F30E20(unint64_t a1, uint64_t a2, uint64_t a3)
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

    return;
  }

LABEL_10:
  __break(1u);
}

void sub_220F30E8C(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
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
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

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
    while (v12 < a3)
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
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_220F31060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_220F3109C(uint64_t a1@<X8>)
{
  v42 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE00, &qword_220FD4840);
  MEMORY[0x28223BE20](v40, v2);
  v4 = &v36 - v3;
  v5 = sub_220FC0EA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EDF8, &qword_220FD3CE0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v36 - v16;
  v20 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v22 = v1[3];
  v23 = v1[4];
  v37 = v4;
  v41 = v21;
  if (v23)
  {
    v39 = v13;
    v24 = v22;
LABEL_7:
    v38 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v24 << 6);
    (*(v6 + 16))(v9, *(v20 + 48) + *(v6 + 72) * v25, v5, v17);
    memcpy(__dst, (*(v20 + 56) + 96 * v25), 0x60uLL);
    v26 = v40;
    v27 = *(v40 + 48);
    (*(v6 + 32))(v18, v9, v5);
    memcpy(&v18[v27], __dst, 0x60uLL);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v26);
    sub_220E31B58(__dst, v43);
    v28 = v38;
    v13 = v39;
LABEL_8:
    *v1 = v20;
    v1[1] = v19;
    v1[2] = v41;
    v1[3] = v22;
    v1[4] = v28;
    v29 = v1[5];
    sub_220EEECFC(v18, v13, &qword_27CF9EDF8, &qword_220FD3CE0);
    v30 = 1;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v26);
    v32 = v42;
    if (EnumTagSinglePayload != 1)
    {
      v33 = v13;
      v34 = v37;
      sub_220EEECFC(v33, v37, &qword_27CF9EE00, &qword_220FD4840);
      v29(v34);
      sub_220E3B2DC(v34, &qword_27CF9EE00, &qword_220FD4840);
      v30 = 0;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC28, &qword_220FD4F30);
    __swift_storeEnumTagSinglePayload(v32, v30, 1, v35);
  }

  else
  {
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= ((v21 + 64) >> 6))
      {
        v26 = v40;
        __swift_storeEnumTagSinglePayload(&v36 - v16, 1, 1, v40);
        v28 = 0;
        goto LABEL_8;
      }

      v23 = *(v19 + 8 * v24);
      ++v22;
      if (v23)
      {
        v39 = v13;
        v22 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

unint64_t sub_220F31444()
{
  result = qword_27CF9EFF0;
  if (!qword_27CF9EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EFF0);
  }

  return result;
}

uint64_t sub_220F314C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F038, &unk_220FD49C0);
  sub_220E453D4(&qword_2812C5E90, &qword_27CF9F038, &unk_220FD49C0, MEMORY[0x277CBCE20]);
  return sub_220FC19D0();
}

void sub_220F31554()
{
  if (*(*(v0 + *(type metadata accessor for WeatherMapStore.ViewModel(0) + 52)) + 16))
  {
    sub_220F1908C(*v0, v0[1], v0[2], v0[3]);
    if (v1)
    {
    }
  }
}

void sub_220F315B4()
{
  OUTLINED_FUNCTION_29_2();
  v3 = v2;
  v4 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_3();
  v9 = OUTLINED_FUNCTION_17_11();
  v10 = (v0 + *(type metadata accessor for WeatherMapStore.ViewModel(v9) + 36));
  v11 = v10[1];
  if (v11)
  {
    v12 = 0;
    v13 = *v10;
    v14 = *(v0 + 40);
    v26 = *(v14 + 16);
    while (1)
    {
      if (v26 == v12)
      {
        v24 = v3;
        v25 = 1;
        goto LABEL_17;
      }

      if (v12 >= *(v14 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_26_11();
      (*(v6 + 16))(v1, v14 + v15 + *(v6 + 72) * v12, v4);
      if (sub_220FC1020() == v13 && v11 == v16)
      {

LABEL_16:
        (*(v6 + 32))(v3, v1, v4);
        v24 = v3;
        v25 = 0;
LABEL_17:
        __swift_storeEnumTagSinglePayload(v24, v25, 1, v4);
        OUTLINED_FUNCTION_22();
        return;
      }

      v18 = sub_220FC3940();

      if (v18)
      {
        goto LABEL_16;
      }

      (*(v6 + 8))(v1, v4);
      ++v12;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }
}

void sub_220F317A4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = v1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  v4 = *(v3 + 48);
  switch(v2)
  {
    case 3:
      if (v4 == 3)
      {
        return;
      }

      break;
    case 4:
      if (v4 == 4)
      {
        return;
      }

      break;
    case 5:
      if (v4 == 5)
      {
        return;
      }

      break;
    default:
      if ((v4 - 3) >= 3)
      {
        return;
      }

      break;
  }

  if ((*(v3 + 16) & 0x8000000000000000) == 0 || (*(v1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_overlayIsTransitioning) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_overlayIsTransitioning) = 1;
    *(v3 + 48) = v2;
    sub_220F318B0();
  }
}

uint64_t sub_220F31868()
{
  result = sub_220F32B5C(sub_220F346EC);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_overlayIsTransitioning) = 0;
  return result;
}

void sub_220F318B0()
{
  v1 = type metadata accessor for WeatherMapStore.ViewModel(0);
  v2 = OUTLINED_FUNCTION_8_0(v1);
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  if ((*(v0 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_isViewModelSubjectPaused) & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
    OUTLINED_FUNCTION_5_1(v0 + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel, v10);
    OUTLINED_FUNCTION_1_56();
    sub_220F34790(v0 + v7, v6, v8);
    sub_220FC1980();
    OUTLINED_FUNCTION_0_65();
    sub_220F34738(v6, v9);
  }
}

uint64_t sub_220F3196C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
  swift_beginAccess();
  sub_220F34854(a1, v1 + v3);
  swift_endAccess();
  sub_220F318B0();
  OUTLINED_FUNCTION_0_65();
  return sub_220F34738(a1, v4);
}

void sub_220F319DC()
{
  OUTLINED_FUNCTION_29_2();
  v3 = v2;
  v5 = v4;
  v6 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_4();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v35 - v16;
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_10_19();
  v20 = (v0 + *(type metadata accessor for WeatherMapStore.ViewModel(0) + 36));
  v21 = v20[1];
  if (v21)
  {
    v35 = v17;
    v36 = v1;
    v37 = v3;
    v22 = 0;
    v23 = *v20;
    v24 = *(v0 + 40);
    v40 = *(v24 + 16);
    v38 = v5;
    v39 = v8 + 16;
    while (v40 != v22)
    {
      if (v22 >= *(v24 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_26_11();
      (*(v8 + 16))(v13, v24 + v25 + *(v8 + 72) * v22, v6);
      if (sub_220FC1020() == v23 && v21 == v26)
      {

LABEL_14:
        v29 = *(v8 + 32);
        v30 = v35;
        v29(v35, v13, v6);
        v31 = v36;
        v29(v36, v30, v6);
        v32 = (v37 & 1) == 0;
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC08, &qword_220FD28D8);
        v34 = &v38[*(v33 + 48)];
        v29(v38, v31, v6);
        *v34 = v32;
        v34[8] = 1;
        break;
      }

      v28 = sub_220FC3940();

      if (v28)
      {
        goto LABEL_14;
      }

      (*(v8 + 8))(v13, v6);
      ++v22;
    }
  }

  type metadata accessor for InteractiveFocus(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_22();
}