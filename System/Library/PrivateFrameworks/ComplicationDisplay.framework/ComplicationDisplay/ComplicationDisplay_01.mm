id sub_243D9FA18(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ComplicationCornerStackedTextViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_243D9FA9C()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for ComplicationCornerStackedTextViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_243D9FB08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243D9FB50(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_243D9FBAC()
{
  result = qword_27EDBB190;
  if (!qword_27EDBB190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB188, &unk_243DB2F00);
    sub_243D9FC38();
    sub_243D9735C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB190);
  }

  return result;
}

unint64_t sub_243D9FC38()
{
  result = qword_27EDBB198;
  if (!qword_27EDBB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB198);
  }

  return result;
}

id sub_243D9FC8C()
{
  v1 = [objc_allocWithZone(type metadata accessor for ComplicationCornerStackedTextViewRepresentable._CornerView()) initWithFontFallback_];
  sub_243D9F680(v1);
  return v1;
}

uint64_t sub_243D9FCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D9FE2C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243D9FD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D9FE2C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243D9FDB4(uint64_t a1)
{
  sub_243D9FE2C();
  sub_243DADBF0();
  __break(1u);
}

unint64_t sub_243D9FDE0()
{
  result = qword_27EDBAF30;
  if (!qword_27EDBAF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDBAF30);
  }

  return result;
}

unint64_t sub_243D9FE2C()
{
  result = qword_27EDBB1A0;
  if (!qword_27EDBB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB1A0);
  }

  return result;
}

uint64_t ComplicationCurvedTextConfiguration.color.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void *ComplicationCurvedTextConfiguration.path.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_243DA01DC()
{
  v1 = *v0;
  sub_243DAE320();
  MEMORY[0x245D51B40](v1);
  return sub_243DAE340();
}

uint64_t sub_243DA0224(uint64_t a1)
{
  v2 = *v1;
  sub_243DAE320();
  MEMORY[0x245D51B40](v2);
  return sub_243DAE340();
}

uint64_t ComplicationCurvedTextConfiguration.init(fontSize:color:interior:tracking:circleCenter:circleRadius:maximumAngularWidth:centerAngle:accessoryContentPlacement:accessoryContentPadding:accessoryContentMaxSize:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, double a7@<D2>, double a8@<D3>, float a9@<S4>, float a10@<S5>, float a11@<S6>, float a12@<S7>, uint64_t a13, uint64_t a14)
{
  v14 = *a3;
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *(a4 + 20) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a8;
  *(a4 + 40) = a9;
  *(a4 + 44) = a10;
  *(a4 + 48) = a11;
  *(a4 + 52) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 76) = a12;
  *(a4 + 72) = v14;
  *(a4 + 80) = a13;
  *(a4 + 88) = a14;
  return result;
}

__n128 ComplicationCurvedTextConfiguration.init(fontSize:color:path:accessoryContentPlacement:accessoryContentPadding:accessoryContentMaxSize:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, double a7@<D2>, double a8@<D3>)
{
  v8 = *a3;
  *a4 = a5;
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  *(a4 + 20) = 0;
  result = *MEMORY[0x277CBF348];
  *(a4 + 24) = *MEMORY[0x277CBF348];
  *(a4 + 40) = 0;
  *(a4 + 45) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = a2;
  *(a4 + 72) = v8;
  *(a4 + 76) = a6;
  *(a4 + 80) = a7;
  *(a4 + 88) = a8;
  return result;
}

__n128 ComplicationCurvedTextConfiguration.init(fontSize:color:tracking:textAlignment:baselineOffset:path:accessoryContentPlacement:accessoryContentPadding:accessoryContentMaxSize:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>, float a8@<S2>, float a9@<S3>, double a10@<D4>, double a11@<D5>)
{
  v11 = *a2;
  v12 = *a4;
  *a5 = a6;
  *(a5 + 8) = a1;
  *(a5 + 16) = 0;
  *(a5 + 20) = a7;
  result = *MEMORY[0x277CBF348];
  *(a5 + 24) = *MEMORY[0x277CBF348];
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 52) = v11;
  *(a5 + 56) = a8;
  *(a5 + 64) = a3;
  *(a5 + 76) = a9;
  *(a5 + 72) = v12;
  *(a5 + 80) = a10;
  *(a5 + 88) = a11;
  return result;
}

unint64_t sub_243DA033C()
{
  result = qword_27EDBB1A8;
  if (!qword_27EDBB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB1A8);
  }

  return result;
}

unint64_t sub_243DA0394()
{
  result = qword_27EDBB1B0;
  if (!qword_27EDBB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB1B0);
  }

  return result;
}

uint64_t sub_243DA03E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_243DA0430(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243DA04B4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_243DA0544(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_243DA0730(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_243DA0790(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_filterProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_243DA0828;
}

void sub_243DA0828(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_243DA09E4(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);

  v5(v6, a2, a3);
}

uint64_t sub_243DA0B20(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243DA0B30@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_renderStatsHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_243DA33F8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_243D76BF4(v4, v5);
}

uint64_t sub_243DA0BD0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_243DA33BC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_renderStatsHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_243D76BF4(v3, v4);
  return sub_243DA0B20(v8, v9);
}

uint64_t sub_243DA0D40()
{
  v1 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldCallRenderStatsHandlerOnMainQueue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243DA0DD8(char a1)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldCallRenderStatsHandlerOnMainQueue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243DA0ED0()
{
  v1 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldAccentDesaturatedView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243DA0F68(char a1)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldAccentDesaturatedView;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *sub_243DA1050(uint64_t a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(type metadata accessor for _ComplicationHosting());
  return _s19ComplicationDisplay01_A7HostingC5frame5asyncACSo6CGRectV_Sbtcfc_0(v1);
}

char *sub_243DA108C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = objc_allocWithZone(type metadata accessor for _ComplicationHosting());
  v5 = _s19ComplicationDisplay01_A7HostingC5frame5asyncACSo6CGRectV_Sbtcfc_0(v3);

  return v5;
}

char *_ComplicationHosting.__allocating_init(frame:async:)(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  return _s19ComplicationDisplay01_A7HostingC5frame5asyncACSo6CGRectV_Sbtcfc_0(v2);
}

void sub_243DA112C(void *a1, uint64_t a2)
{
  v3 = [a1 statistics];
  type metadata accessor for RBDrawableStatisticsKey(0);
  sub_243DA3498(&qword_27EDBABF8, type metadata accessor for RBDrawableStatisticsKey, &unk_243DB18FC);
  v4 = sub_243DAE120();

  if (!*(v4 + 16) || (v5 = sub_243DA2464(*MEMORY[0x277D462A0]), (v6 & 1) == 0))
  {

    goto LABEL_6;
  }

  sub_243DA34E0(*(v4 + 56) + 32 * v5, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v7 = 0.0;
    goto LABEL_7;
  }

  v7 = v15;
LABEL_7:
  v8 = [a1 statistics];
  v9 = sub_243DAE120();

  if (*(v9 + 16) && (v10 = sub_243DA2464(*MEMORY[0x277D462A8]), (v11 & 1) != 0))
  {
    sub_243DA34E0(*(v9 + 56) + 32 * v10, v16);

    if (swift_dynamicCast())
    {
      v12 = v15;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v12 = 0.0;
LABEL_13:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_243DA1C74(v12, v7);
  }
}

uint64_t sub_243DA132C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id _ComplicationHosting.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController];
  swift_getObjectType();
  v3 = v2;
  sub_243DAE080();
  sub_243DADB30();

  v5.receiver = v1;
  v5.super_class = type metadata accessor for _ComplicationHosting();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_243DA1730(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_243DA184C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

double sub_243DA18B0@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_viewData);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_243DA2BA4(v4, v5);
}

uint64_t sub_243DA1908(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_viewData);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_243DA2BA4(v2, v3);
  return sub_243DA2C0C(v5, v6);
}

uint64_t sub_243DA1A2C()
{
  v1 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_paused;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243DA1AC4(char a1)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_paused;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_243DA1B74()
{
  if (*(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_rendersAsynchronously) == 1)
  {
    [objc_opt_self() flush];
    swift_getObjectType();
    if (sub_243DADB00())
    {
      objc_opt_self();
      v1 = swift_dynamicCastObjCClass();
      if (v1)
      {
        [v1 waitUntilAsyncRenderingCompleted];
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_243DA1C74(double a1, double a2)
{
  v5 = sub_243DAE0E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_243DAE100();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_renderStatsHandler;
  result = swift_beginAccess();
  v15 = *v13;
  if (*v13)
  {
    v16 = *(v13 + 8);
    v17 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldCallRenderStatsHandlerOnMainQueue;
    swift_beginAccess();
    if (*(v2 + v17) == 1)
    {
      sub_243D96A78(0, &qword_27EDBB290, 0x277D85C78);

      v23 = sub_243DAE200();
      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v16;
      *(v18 + 32) = a1;
      *(v18 + 40) = a2;
      aBlock[4] = sub_243DA31EC;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243DA6020;
      aBlock[3] = &block_descriptor_3;
      v19 = _Block_copy(aBlock);

      sub_243DAE0F0();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_243DA3498(&qword_27EDBB298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v22 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB2A0, &qword_243DB3370);
      sub_243DA3234();
      sub_243DAE250();
      v20 = v23;
      MEMORY[0x245D51A20](0, v12, v8, v19);
      _Block_release(v19);

      sub_243DA0B20(v15, v16);
      (*(v6 + 8))(v8, v5);
      return (*(v10 + 8))(v12, v22);
    }

    else
    {

      v15(v21, a1, a2);
      return sub_243DA0B20(v15, v16);
    }
  }

  return result;
}

id _ComplicationHosting.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void _ComplicationHosting.transitionToMonochrome(withFraction:)(double a1)
{
  *(v1 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_isMonochrome) = CLKFloatEqualsFloat();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong colorForView:*(v1 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_view) accented:1];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_model);
      v3 = v3;
      sub_243DADF20();
      swift_getKeyPath();
      swift_getKeyPath();
      v5 = v4;

      sub_243DAD870();
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = [v6 colorForView:*(v1 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_view) accented:0];
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_model);
      v7 = v7;
      sub_243DADF20();
      swift_getKeyPath();
      swift_getKeyPath();
      v9 = v8;

      sub_243DAD870();
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *(v1 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_model);
  sub_243DA2324();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  sub_243DAD870();
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  sub_243DAD870();
}

uint64_t sub_243DA2324()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong respondsToSelector_])
    {
      v3 = [v2 viewShouldIgnoreTwoPieceImage_];
      swift_unknownObjectRelease();
      if (v3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (*(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_supportsComplicationForeground))
  {
    return 0;
  }

LABEL_8:
  v5 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldAccentDesaturatedView;
  swift_beginAccess();
  if (*(v0 + v5))
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_243DA2464(uint64_t a1)
{
  sub_243DAE160();
  sub_243DAE320();
  sub_243DAE170();
  v2 = sub_243DAE340();

  return sub_243DA24F8(a1, v2);
}

unint64_t sub_243DA24F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_243DAE160();
      v8 = v7;
      if (v6 == sub_243DAE160() && v8 == v9)
      {
        break;
      }

      v11 = sub_243DAE310();

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

char *_s19ComplicationDisplay01_A7HostingC5frame5asyncACSo6CGRectV_Sbtcfc_0(char a1)
{
  v2 = v1;
  v45 = sub_243DADC80();
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_243DADCD0();
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_model;
  *&v2[v10] = [objc_allocWithZone(type metadata accessor for MonochromeModel(0)) init];
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_isMonochrome] = 0;
  v11 = &v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_renderStatsHandler];
  *v11 = 0;
  v11[1] = 0;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldCallRenderStatsHandlerOnMainQueue] = 1;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldAccentDesaturatedView] = 0;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_supportsComplicationForeground] = 0;
  *&v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_viewData] = xmmword_243DB31F0;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_paused] = 0;
  v12 = CLKIsUVPreviewApp();
  v44[1] = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_inPreview;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_inPreview] = v12;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_rendersAsynchronously] = a1;
  sub_243DAE080();
  v13 = sub_243DADD10();

  ObjectType = swift_getObjectType();
  v15 = sub_243D96A78(0, &qword_27EDBB2B0, 0x277D75D28);
  v16 = dynamic_cast_existential_1_superclass_unconditional(v13, ObjectType, v15, MEMORY[0x277CDDEC0]);
  v17 = &v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController];
  *v17 = v16;
  *(v17 + 1) = v18;
  sub_243DADCC0();
  sub_243DADCA0();
  sub_243DADCB0();
  v19 = *v17;
  swift_getObjectType();
  v20 = swift_allocBox();
  v21 = *(v46 + 16);
  v44[0] = v7;
  v21(v22, v9, v7);
  *v6 = v20;
  (*(v4 + 104))(v6, *MEMORY[0x277CE05C8], v45);
  v23 = v19;
  v24 = sub_243DADB20();
  sub_243DADCE0();
  v24(aBlock, 0);

  v25 = *v17;
  swift_getObjectType();
  v26 = v25;
  v27 = sub_243DADB20();
  sub_243DADC90();
  v27(aBlock, 0);

  v28 = *v17;
  swift_getObjectType();
  v29 = v28;
  sub_243DADB10();

  result = [*v17 view];
  if (result)
  {
    v31 = result;
    *&v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_view] = result;
    v32 = objc_opt_self();
    v33 = v31;
    v34 = [v32 clearColor];
    [v33 setBackgroundColor_];

    v35 = type metadata accessor for _ComplicationHosting();
    v48.receiver = v2;
    v48.super_class = v35;
    v36 = objc_msgSendSuper2(&v48, sel_init);
    v37 = *&v36[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController];
    swift_getObjectType();
    v38 = v37;
    v39 = sub_243DADB00();

    if (v39)
    {
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        [v40 resetStatistics:6 alpha:0.0];
        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_243DA3490;
        aBlock[5] = v42;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_243DA132C;
        aBlock[3] = &block_descriptor_60;
        v43 = _Block_copy(aBlock);

        [v41 setStatisticsHandler_];
        _Block_release(v43);
      }

      swift_unknownObjectRelease();
    }

    (*(v46 + 8))(v9, v44[0]);
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_243DA2BA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243DA2BB8(result, a2);
  }

  return v2;
}

double sub_243DA2BB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_243DA2C0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243DA2C20(a1, a2);
  }

  return a1;
}

uint64_t sub_243DA2C20(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t keypath_get_27Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_28Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_243DA3234()
{
  result = qword_27EDBB2A8;
  if (!qword_27EDBB2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB2A0, &qword_243DB3370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB2A8);
  }

  return result;
}

void sub_243DA3298()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_model;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for MonochromeModel(0)) init];
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_isMonochrome) = 0;
  v2 = (v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_renderStatsHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldCallRenderStatsHandlerOnMainQueue) = 1;
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldAccentDesaturatedView) = 0;
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_supportsComplicationForeground) = 0;
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_viewData) = xmmword_243DB31F0;
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_paused) = 0;
  sub_243DAE2D0();
  __break(1u);
}

uint64_t sub_243DA33BC(double a1, double a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t dynamic_cast_existential_1_superclass_unconditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243DA3498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243DA34E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243DA3554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_243DADC20();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_243DADC30();
}

uint64_t sub_243DA364C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_243DADC20();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_243DADC30();
}

uint64_t ComplicationCircularBezelView.curvedLabelViewConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v13 = v1[5];
  v2 = v13;
  v14 = v3;
  v15 = v1[7];
  v4 = v15;
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  v6 = v1[4];
  v11 = v1[3];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_243D91EF8(v10, &v9);
}

uint64_t ComplicationCircularBezelView.circularContent.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t ComplicationCircularBezelView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB2B8, &unk_243DB3390);
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v20[0] = a1[5];
  *&v21 = v5;
  *(&v21 + 1) = v4;
  *&v22 = v6;
  *(&v22 + 1) = v20[0];
  type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier(255, &v21);
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EDBB2C0, &qword_243DB33A0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getTupleTypeMetadata2();
  sub_243DAE0A0();
  swift_getWitnessTable();
  v7 = sub_243DAE070();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - v12;
  v14 = v2[7];
  v27 = v2[6];
  v28 = v14;
  v29 = v2[8];
  v15 = v2[3];
  v23 = v2[2];
  v24 = v15;
  v16 = v2[5];
  v25 = v2[4];
  v26 = v16;
  v17 = v2[1];
  v21 = *v2;
  v22 = v17;
  v20[4] = v5;
  v20[5] = v4;
  v20[6] = v6;
  v20[7] = v20[0];
  v20[8] = &v21;
  sub_243DAE090();
  sub_243DAE060();
  swift_getWitnessTable();
  sub_243D9EE08();
  v18 = *(v8 + 8);
  v18(v11, v7);
  sub_243D9EE08();
  return (v18)(v13, v7);
}

uint64_t sub_243DA3AD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a6;
  v58 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  v56 = sub_243DAD9E0();
  v61 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v66 = &v49 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EDBB2C0, &qword_243DB33A0);
  v59 = sub_243DAD9E0();
  v63 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v49 - v13;
  v62 = sub_243DAD9E0();
  v64 = *(v62 - 8);
  v14 = MEMORY[0x28223BE20](v62);
  v57 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v49 - v16;
  v17 = *(a1 + 64);
  v18 = *(a1 + 96);
  v77 = *(a1 + 80);
  v78 = v18;
  v19 = *(a1 + 96);
  v79 = *(a1 + 112);
  v20 = *(a1 + 32);
  v73 = *(a1 + 16);
  v74 = v20;
  v21 = *(a1 + 64);
  v23 = *(a1 + 16);
  v22 = *(a1 + 32);
  v75 = *(a1 + 48);
  v76 = v21;
  v86[4] = v77;
  v86[5] = v19;
  v86[6] = *(a1 + 112);
  v86[0] = v23;
  v86[1] = v22;
  v86[3] = v17;
  v86[2] = v75;
  sub_243D91EF8(&v73, v85);
  sub_243D91EF8(&v73, v85);
  ComplicationCurvedLabelView<>.init(configuration:)(v86, v84);
  v86[4] = v77;
  v86[5] = v78;
  v86[6] = v79;
  v86[0] = v73;
  v86[1] = v74;
  v86[3] = v76;
  v86[2] = v75;
  memset(v83, 0, 32);
  v83[32] = 2;
  sub_243DA43B4(v86, v85);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB2B8, &unk_243DB3390);
  v86[0].n128_u64[0] = a2;
  v86[0].n128_u64[1] = a3;
  v86[1].n128_u64[0] = a4;
  v86[1].n128_u64[1] = a5;
  v25 = a5;
  v26 = type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier(0, v86);
  v27 = sub_243D90C40(&qword_27EDBB3D8, &qword_27EDBB2B8, &unk_243DB3390, &protocol conformance descriptor for ComplicationCurvedLabelView<A>);
  MEMORY[0x245D516E0](v86, v85, v24, v26, v27);
  v80[6] = *&v85[96];
  v80[7] = *&v85[112];
  v80[8] = *&v85[128];
  v80[9] = *&v85[144];
  v80[2] = *&v85[32];
  v80[3] = *&v85[48];
  v80[4] = *&v85[64];
  v80[5] = *&v85[80];
  v80[0] = *v85;
  v80[1] = *&v85[16];
  (*(*(v26 - 8) + 8))(v80, v26);
  v81[6] = *&v84[96];
  v81[7] = *&v84[112];
  v82 = *&v84[128];
  v81[2] = *&v84[32];
  v81[3] = *&v84[48];
  v81[5] = *&v84[80];
  v81[4] = *&v84[64];
  v81[1] = *&v84[16];
  v81[0] = *v84;
  sub_243DA5C7C(v81);
  memcpy(v85, v86, sizeof(v85));
  v28 = sub_243DAD9E0();
  WitnessTable = swift_getWitnessTable();
  v71[8] = v27;
  v71[9] = WitnessTable;
  v51 = swift_getWitnessTable();
  sub_243D9EE08();
  memcpy(v83, v85, 0x128uLL);
  v50 = *(v28 - 8);
  v30 = *(v50 + 8);
  v52 = v50 + 8;
  v53 = v30;
  v31 = v30(v83, v28);
  v32 = v54;
  (*(a1 + 128))(v31);
  sub_243D90BEC();
  sub_243DADEF0();
  (*(v58 + 8))(v32, a3);
  sub_243DAE090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB3E0, &qword_243DB35B8);
  v33 = sub_243D90C40(&qword_27EDBABB8, &qword_27EDBAB88, &unk_243DB16C0, MEMORY[0x277CDF4F0]);
  v71[6] = v25;
  v71[7] = v33;
  v34 = v56;
  v35 = swift_getWitnessTable();
  sub_243D90C40(&qword_27EDBB3E8, &qword_27EDBB3E0, &qword_243DB35B8, MEMORY[0x277CDF7D8]);
  v36 = v55;
  v37 = v66;
  sub_243DADEC0();
  (*(v61 + 8))(v37, v34);
  v38 = sub_243D90C40(&qword_27EDBB3F0, qword_27EDBB2C0, &qword_243DB33A0, MEMORY[0x277CDFC88]);
  v71[4] = v35;
  v71[5] = v38;
  v39 = v59;
  v40 = swift_getWitnessTable();
  v41 = v57;
  sub_243DADEE0();
  (*(v63 + 8))(v36, v39);
  v71[2] = v40;
  v71[3] = MEMORY[0x277CDFB28];
  v42 = v62;
  v43 = swift_getWitnessTable();
  v44 = v60;
  sub_243D9EE08();
  v45 = v64;
  v46 = *(v64 + 8);
  v46(v41, v42);
  memcpy(v84, v72, sizeof(v84));
  memcpy(v70, v72, sizeof(v70));
  v71[0] = v70;
  (*(v45 + 16))(v41, v44, v42);
  v71[1] = v41;
  (*(v50 + 16))(v86, v84, v28);
  v69[0] = v28;
  v69[1] = v42;
  v67 = v51;
  v68 = v43;
  sub_243D94ED4(v71, 2uLL, v69);
  v46(v44, v42);
  memcpy(v85, v72, sizeof(v85));
  v47 = v53;
  v53(v85, v28);
  v46(v41, v42);
  memcpy(v86, v70, 0x128uLL);
  return v47(v86, v28);
}

double sub_243DA43B4@<D0>(_OWORD *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = a1[5];
  *(a3 + 64) = a1[4];
  *(a3 + 80) = v4;
  *(a3 + 96) = a1[6];
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAD08, &unk_243DB35C0);
  sub_243DADFE0();
  result = *&v8;
  *(a3 + 112) = v8;
  *(a3 + 128) = v9;
  *(a3 + 144) = v10;
  *(a3 + 152) = v11;
  return result;
}

double sub_243DA4460@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_243DADC50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243DADCF0();
  sub_243DAD910();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.width = v11;
  v20.size.height = v13;
  CGRectInset(v20, -5.0, -5.0);
  v14 = sub_243DADF30();
  sub_243DADE10();
  v15 = v19;
  *a1 = v14;
  result = *v18;
  v17 = v18[1];
  *(a1 + 8) = v18[0];
  *(a1 + 24) = v17;
  *(a1 + 40) = v15;
  return result;
}

__n128 ComplicationCircularBezelView<>.init(curvedLabelViewConfiguration:contentCenter:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = *(a1 + 104);
  if (v12)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v12;
    sub_243DAD870();
  }

  *a4 = a5;
  *(a4 + 8) = a6;
  v14 = *(a1 + 80);
  *(a4 + 80) = *(a1 + 64);
  *(a4 + 96) = v14;
  v15 = *(a1 + 96);
  v16 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v16;
  result = *(a1 + 48);
  *(a4 + 48) = *(a1 + 32);
  *(a4 + 64) = result;
  *(a4 + 112) = v15;
  *(a4 + 120) = v12;
  *(a4 + 128) = a2;
  *(a4 + 136) = a3;
  return result;
}

uint64_t sub_243DA46B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_243DA46EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243DA4734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243DA47B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_243DA4818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_243DA4860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243DA4974(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADE0, &qword_243DB35B0);
  sub_243DAE000();
}

double sub_243DA49F4@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  sub_243DADE20();
  sub_243DADDE0();
  v25 = 0x3FF0000000000000;
  v26 = 0;
  v27 = 0;
  v28 = 0x3FF0000000000000;
  v29 = 0;
  v30 = 0;
  sub_243DADDF0();
  sub_243DADDD0();
  v6 = objc_opt_self();
  v7 = objc_opt_self();
  v8 = [v7 sharedRenderingContext];
  v9 = [v8 device];

  [v6 hitTestCarveOutWithDialCenter:1 leftSide:v9 forDevice:{v4, v5}];
  sub_243DADE10();
  v10 = [v7 sharedRenderingContext];
  v11 = [v10 device];

  [v6 hitTestCarveOutWithDialCenter:0 leftSide:v11 forDevice:{v4, v5}];
  sub_243DADE10();
  v23[0] = v14;
  v23[1] = v15;
  v24 = v16;
  sub_243DADDC0();
  sub_243DADDC0();
  sub_243D93CA4(v19);
  sub_243D93CA4(v18);
  sub_243D93CA4(v17);
  sub_243D93CA4(v23);
  result = *&v20;
  v13 = v21;
  *a2 = v20;
  *(a2 + 16) = v13;
  *(a2 + 32) = v22;
  return result;
}

uint64_t sub_243DA4C60(unsigned int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 32);
  v10 = v2[7];
  v54 = v2[6];
  v55 = v10;
  v11 = v2[9];
  v56 = v2[8];
  v57 = v11;
  v12 = v2[3];
  v50 = v2[2];
  v51 = v12;
  v13 = v2[5];
  v52 = v2[4];
  v53 = v13;
  v14 = v2[1];
  v48 = *v2;
  v49 = v14;
  sub_243DA4914();
  if (v40 == 2 || (v28 = v38, v29 = v39, LOBYTE(v30) = v40, v23 = __PAIR64__(v5, v4), v24 = v6, v25 = v7, v26 = v8, v27 = v9, result = _s19ComplicationDisplay0A17CurvedTextMetricsV2eeoiySbAC_ACtFZ_0(&v28, &v23, *&v38, *&v39, v15, v16, v17, v18, v19, v20), (result & 1) == 0))
  {
    v34 = v54;
    v35 = v55;
    v36 = v56;
    v37 = v57;
    v30 = v50;
    v31 = v51;
    v32 = v52;
    v33 = v53;
    v28 = v48;
    v29 = v49;
    v23 = v4 | (v5 << 32);
    v24 = v6;
    v25 = v7;
    v26 = v8;
    v27 = v9;
    v22 = *(a2 - 8);
    (*(v22 + 16))(&v38, &v48, a2);
    sub_243DA4974(&v23);
    v44 = v34;
    v45 = v35;
    v46 = v36;
    v47 = v37;
    v40 = v30;
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v38 = v28;
    v39 = v29;
    return (*(v22 + 8))(&v38, a2);
  }

  return result;
}

uint64_t sub_243DA4DFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a1;
  v90 = a3;
  v5 = sub_243DADA20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v83 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v8 = sub_243DADC70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAE20, &unk_243DB35A0);
  v94 = v8;
  v9 = sub_243DAD9E0();
  v86 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = &v74 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0C8, &unk_243DB2A00);
  v14 = sub_243DAD9E0();
  v82 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v81 = &v74 - v15;
  v93 = v16;
  v17 = sub_243DAD9E0();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = &v74 - v22;
  v92 = v23;
  v24 = sub_243DADC40();
  v88 = *(v24 - 8);
  v89 = v24;
  MEMORY[0x28223BE20](v24);
  v87 = &v74 - v25;
  sub_243DA4914();
  if (v102 == 2)
  {
    v26 = v3[7];
    v106 = v3[6];
    v107 = v26;
    v27 = v3[9];
    v108 = v3[8];
    v109 = v27;
    v28 = v3[3];
    v102 = v3[2];
    v103 = v28;
    v29 = v3[5];
    v104 = v3[4];
    v105 = v29;
    v30 = v3[1];
    v100 = *v3;
    v101 = v30;
    sub_243DA5940(&v100, a2[2], a2[3], a2[4], a2[5]);
    WitnessTable = swift_getWitnessTable();
    sub_243DA5AF8();
    sub_243DA5B4C();
    sub_243DADEA0();

    v32 = sub_243D90C40(&qword_27EDBAE18, &qword_27EDBAE20, &unk_243DB35A0, MEMORY[0x277CE07C8]);
    v99[19] = WitnessTable;
    v99[20] = v32;
    v33 = swift_getWitnessTable();
    sub_243D9EE08();
    v34 = v92;
    v35 = *(v86 + 8);
    v35(v12, v9);
    sub_243D9EE08();
    v36 = sub_243D90C40(qword_27EDBB0E0, &qword_27EDBB0C8, &unk_243DB2A00, MEMORY[0x277CE07A8]);
    v99[17] = v33;
    v99[18] = v36;
    v37 = swift_getWitnessTable();
    v38 = sub_243D940EC();
    v99[15] = v37;
    v99[16] = v38;
    v39 = swift_getWitnessTable();
    v40 = v87;
    sub_243DA364C(v12, v34, v9, v39, v33);
    v35(v12, v9);
    v35(v91, v9);
  }

  else
  {
    LOBYTE(v102) = v102 & 1;
    sub_243DA49F4(&v110);
    v79 = v112;
    v41 = v3[7];
    v106 = v3[6];
    v107 = v41;
    v42 = v3[9];
    v108 = v3[8];
    v109 = v42;
    v43 = v3[3];
    v102 = v3[2];
    v103 = v43;
    v44 = v3[5];
    v104 = v3[4];
    v105 = v44;
    v45 = v3[1];
    v100 = *v3;
    v101 = v45;
    v46 = a2[2];
    v47 = a2[3];
    v48 = a2[4];
    v49 = a2[5];
    v76 = v111;
    v77 = v110;
    sub_243DA5820(&v100, v46, v47, v48, v49);
    v78 = v21;
    v50 = swift_getWitnessTable();
    v80 = v18;
    v51 = v91;
    v52 = v50;
    sub_243DA5AF8();
    v75 = v5;
    sub_243DA5B4C();
    sub_243DADEA0();

    v53 = v83;
    sub_243DADA10();
    v100 = v110;
    v101 = v111;
    LOBYTE(v102) = v112;
    v54 = sub_243D90C40(&qword_27EDBAE18, &qword_27EDBAE20, &unk_243DB35A0, MEMORY[0x277CE07C8]);
    v99[5] = v52;
    v99[6] = v54;
    v55 = swift_getWitnessTable();
    sub_243D9EDB4();
    v56 = v81;
    v85 = v55;
    sub_243DADE80();
    (*(v6 + 8))(v53, v75);
    (*(v86 + 8))(v51, v9);
    v100 = v77;
    v101 = v76;
    LOBYTE(v102) = v79;
    v113[0] = v110;
    v113[1] = v111;
    v114 = v112;
    sub_243DA5BA0(v113, v99);
    v57 = sub_243D90C40(qword_27EDBB0E0, &qword_27EDBB0C8, &unk_243DB2A00, MEMORY[0x277CE07A8]);
    v97 = v55;
    v98 = v57;
    v58 = v93;
    v59 = swift_getWitnessTable();
    v60 = v78;
    View.complicationContainerPath(_:)(&v100, v58, v59);
    sub_243D93CA4(&v110);
    (*(v82 + 8))(v56, v58);
    v61 = sub_243D940EC();
    v95 = v59;
    v96 = v61;
    v62 = v92;
    v63 = swift_getWitnessTable();
    v64 = v84;
    sub_243D9EE08();
    v65 = *(v80 + 8);
    v65(v60, v62);
    sub_243D9EE08();
    v40 = v87;
    sub_243DA3554(v60, v62, v9, v63, v85);
    sub_243D93CA4(&v110);
    v65(v60, v62);
    v65(v64, v62);
  }

  v66 = swift_getWitnessTable();
  v67 = sub_243D90C40(&qword_27EDBAE18, &qword_27EDBAE20, &unk_243DB35A0, MEMORY[0x277CE07C8]);
  v99[13] = v66;
  v99[14] = v67;
  v68 = swift_getWitnessTable();
  v69 = sub_243D90C40(qword_27EDBB0E0, &qword_27EDBB0C8, &unk_243DB2A00, MEMORY[0x277CE07A8]);
  v99[11] = v68;
  v99[12] = v69;
  v70 = swift_getWitnessTable();
  v71 = sub_243D940EC();
  v99[9] = v70;
  v99[10] = v71;
  v99[7] = swift_getWitnessTable();
  v99[8] = v68;
  v72 = v89;
  swift_getWitnessTable();
  sub_243D9EE08();
  return (*(v88 + 8))(v40, v72);
}

uint64_t (*sub_243DA5820(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = a1[7];
  v24[6] = a1[6];
  v24[7] = v10;
  v11 = a1[9];
  v24[8] = a1[8];
  v24[9] = v11;
  v12 = a1[3];
  v24[2] = a1[2];
  v24[3] = v12;
  v13 = a1[5];
  v24[4] = a1[4];
  v24[5] = v13;
  v14 = a1[1];
  v24[0] = *a1;
  v24[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  v16 = a1[7];
  *(v15 + 144) = a1[6];
  *(v15 + 160) = v16;
  v17 = a1[9];
  *(v15 + 176) = a1[8];
  *(v15 + 192) = v17;
  v18 = a1[3];
  *(v15 + 80) = a1[2];
  *(v15 + 96) = v18;
  v19 = a1[5];
  *(v15 + 112) = a1[4];
  *(v15 + 128) = v19;
  v20 = a1[1];
  *(v15 + 48) = *a1;
  *(v15 + 64) = v20;
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v21 = type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier(0, v23);
  (*(*(v21 - 8) + 16))(v23, v24, v21);
  return sub_243DA5CE4;
}

uint64_t (*sub_243DA5940(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = a1[7];
  v24[6] = a1[6];
  v24[7] = v10;
  v11 = a1[9];
  v24[8] = a1[8];
  v24[9] = v11;
  v12 = a1[3];
  v24[2] = a1[2];
  v24[3] = v12;
  v13 = a1[5];
  v24[4] = a1[4];
  v24[5] = v13;
  v14 = a1[1];
  v24[0] = *a1;
  v24[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  v16 = a1[7];
  *(v15 + 144) = a1[6];
  *(v15 + 160) = v16;
  v17 = a1[9];
  *(v15 + 176) = a1[8];
  *(v15 + 192) = v17;
  v18 = a1[3];
  *(v15 + 80) = a1[2];
  *(v15 + 96) = v18;
  v19 = a1[5];
  *(v15 + 112) = a1[4];
  *(v15 + 128) = v19;
  v20 = a1[1];
  *(v15 + 48) = *a1;
  *(v15 + 64) = v20;
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v21 = type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier(0, v23);
  (*(*(v21 - 8) + 16))(v23, v24, v21);
  return sub_243DA5C54;
}

uint64_t sub_243DA5A60(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = a2[7];
  v26 = a2[6];
  v27 = v8;
  v9 = a2[9];
  v28 = a2[8];
  v29 = v9;
  v10 = a2[3];
  v22 = a2[2];
  v23 = v10;
  v11 = a2[5];
  v24 = a2[4];
  v25 = v11;
  v12 = a2[1];
  v20 = *a2;
  v21 = v12;
  v16 = *a1;
  v17 = *(a1 + 1);
  v18 = v6;
  v19 = v7;
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier(0, v15);
  return sub_243DA4C60(&v16, v13);
}

unint64_t sub_243DA5AF8()
{
  result = qword_27EDBB3C8;
  if (!qword_27EDBB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB3C8);
  }

  return result;
}

unint64_t sub_243DA5B4C()
{
  result = qword_27EDBB3D0;
  if (!qword_27EDBB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB3D0);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_243DA5C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB2B8, &unk_243DB3390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues._complicationInvertsAccentFilterStyle.getter()
{
  sub_243DA5D24();
  sub_243DADAD0();
  return v1;
}

unint64_t sub_243DA5D24()
{
  result = qword_27EDBB3F8;
  if (!qword_27EDBB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB3F8);
  }

  return result;
}

void *sub_243DA5D78@<X0>(_BYTE *a1@<X8>)
{
  sub_243DA5D24();
  result = sub_243DADAD0();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues._complicationInvertsAccentFilterStyle.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_243DA5D24();
  sub_243DADAD0();
  *(a1 + 16) = *(a1 + 17);
  return sub_243DA5ECC;
}

void ComplicationCurvedTextConfiguration.ContentProvider.init(_:)(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 textProvider];
  v4 = [v3 imageProvider];

  a2[1] = v4;
}

id ComplicationCurvedTextConfiguration.ContentProvider.labelProvider.getter@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:*v1 imageProvider:v1[1]];
  *a1 = result;
  return result;
}

uint64_t sub_243DA6020(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

char *sub_243DA6064()
{
  v1 = type metadata accessor for ComplicationCurvedTextViewRepresentable(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = [objc_allocWithZone(type metadata accessor for CenteringCurvedTextView()) init];
  v5 = OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView;
  v6 = *&v4[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_243DA7AE0(v0, aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  sub_243D93564(aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  aBlock[4] = sub_243DA7B44;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243DA6020;
  aBlock[3] = &block_descriptor_4;
  v10 = _Block_copy(aBlock);
  v11 = v6;

  [v11 setNeedsResizeHandler_];
  _Block_release(v10);

  [*&v4[v5] setUppercase_];
  [*&v4[v5] setUsesLegibility_];
  return v4;
}

void sub_243DA625C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong layoutSubviews];
    sub_243DA62C4(v2);
  }
}

uint64_t sub_243DA62C4(char *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView];
  v4 = [v3 path];
  if (v4)
  {

    v5 = *(v1 + 112);
    goto LABEL_12;
  }

  v50.a = 0.0;
  v50.b = 0.0;
  v46 = 0.0;
  *&v44[0] = 0;
  [v3 getTextCenter:&v50 startAngle:&v46 endAngle:v44];
  v6 = v46;
  v7 = *v44;
  if (v46 >= *v44)
  {
    goto LABEL_6;
  }

  v8 = v46;
  v9 = *v44;
  if (v8 > v9)
  {
    __break(1u);
LABEL_6:
    v8 = v7;
    v9 = v6;
    if (v8 > v9)
    {
      __break(1u);
    }
  }

  v5 = *(v1 + 112);
  swift_getKeyPath();
  v51 = v5;
  sub_243DA7A28(&qword_27EDBB090, type metadata accessor for ComplicationCurvedTextMetricsObservable, &unk_243DB2944);
  sub_243DAD7C0();

  if (*(*&v5 + 16) != v8 || *(*&v5 + 20) != v9)
  {
    swift_getKeyPath();
    v51 = v5;
    sub_243DAD7C0();

    v51 = v5;
    swift_getKeyPath();
    sub_243DAD7E0();

    *(*&v5 + 16) = v8;
    *(*&v5 + 20) = v9;
    v51 = v5;
    swift_getKeyPath();
    sub_243DAD7D0();
  }

LABEL_12:
  swift_getKeyPath();
  v50.a = v5;
  sub_243DA7A28(&qword_27EDBB090, type metadata accessor for ComplicationCurvedTextMetricsObservable, &unk_243DB2944);
  sub_243DAD7C0();

  v11 = *(*&v5 + 16);
  v12 = *(*&v5 + 20);
  v13 = *(*&v5 + 48);
  [v3 centerForImage];
  v15 = v14;
  v17 = v16;
  [v3 transformForImage];
  v53.x = v15;
  v53.y = v17;
  v18 = CGPointApplyAffineTransform(v53, &v50);
  [a1 convertPoint:v3 fromCoordinateSpace:{v18.x, v18.y}];
  v20 = v19;
  v22 = v21;
  [v3 transformForImage];
  v23 = atan2(v50.b, v50.a);
  *&v50.a = __PAIR64__(v12, v11);
  v50.b = v20;
  v50.c = v22;
  v50.d = v23;
  LOBYTE(v50.tx) = v13;
  swift_getKeyPath();
  v46 = v5;
  sub_243DAD7C0();

  v24 = *(*&v5 + 40);
  v25 = *(*&v5 + 48);
  v46 = *(*&v5 + 16);
  v47 = *(*&v5 + 24);
  v48 = v24;
  v49 = v25;
  result = _s19ComplicationDisplay0A17CurvedTextMetricsV2eeoiySbAC_ACtFZ_0(&v50, &v46, v24, *&v47, v26, v27, v28, v29, v30, v31);
  if ((result & 1) == 0)
  {
    *&v50.a = __PAIR64__(v12, v11);
    v50.b = v20;
    v50.c = v22;
    v50.d = v23;
    LOBYTE(v50.tx) = v13;
    v39 = *(*&v5 + 40);
    v40 = *(*&v5 + 48);
    v46 = *(*&v5 + 16);
    v47 = *(*&v5 + 24);
    v48 = v39;
    v49 = v40;
    v44[0] = *&v50.a;
    v44[1] = *&v50.c;
    v45 = v13;
    result = _s19ComplicationDisplay0A17CurvedTextMetricsV2eeoiySbAC_ACtFZ_0(&v46, v44, COERCE_DOUBLE(__PAIR64__(v12, v11)), v22, v33, v34, v35, v36, v37, v38);
    if (result)
    {
      tx_low = LOBYTE(v50.tx);
      v42 = *&v50.c;
      *(*&v5 + 16) = *&v50.a;
      *(*&v5 + 32) = v42;
      *(*&v5 + 48) = tx_low;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v46 = v5;
      sub_243DAD7B0();
    }
  }

  return result;
}

void sub_243DA675C(char *a1)
{
  v3 = [objc_opt_self() systemFontOfSize:*MEMORY[0x277CBB6C0] weight:*v1 design:*MEMORY[0x277D74410]];
  v4 = [v3 CLKFontWithAlternativePunctuation];

  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = [v4 CLKFontWithLooplessThaiFallback];

  if (!v9)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView];
  [v5 setTracking_];
  [v5 setFont_];
  v6 = sub_243DA696C();
  [v5 setTextColor_];

  if (*(v1 + 64))
  {
    [v5 setPath_];
    [v5 setTextAlignment_];
    v7 = &selRef_setBaselineOffset_;
    v8 = 56;
  }

  else
  {
    *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_circleCenter] = *(v1 + 24);
    [v5 setInterior_];
    [v5 setImagePlacement_];
    [v5 setCircleRadius_];
    [v5 setMaxAngularWidth_];
    v7 = &selRef_setCenterAngle_;
    v8 = 48;
  }

  [v5 *v7];
  sub_243DA6AC4(a1);
  sub_243DA62C4(a1);
}

id sub_243DA696C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  if (v4 == 0.0)
  {
    v0 = sub_243DADF10();
    if (v0)
    {
LABEL_3:
      v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

      return v1;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243DAD860();

    v0 = sub_243DADF10();

    if (v0)
    {
      goto LABEL_3;
    }
  }

  v3 = [objc_opt_self() whiteColor];

  return v3;
}

void sub_243DA6AC4(char *a1)
{
  v2 = a1;
  v3 = *(v1 + 96);
  v4 = *(v3 + 16);
  v5 = &selRef__setupShapeLayer_;
  if (v4)
  {
    v6 = objc_opt_self();
    v7 = 0;
    v45 = *&v2[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView];
    v41 = v4 - 1;
    v42 = v3 + 32;
    v37 = v2;
    v38 = v1;
    v43 = v6;
    v39 = v3;
    while (v7 < *(v3 + 16))
    {
      v44 = *(v42 + 8 * v7);
      v8 = [v44 imageProvider];
      if (v8)
      {
        type metadata accessor for WidgetNamedImageProvider(0);
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          v10 = v9;
          v11 = v8;
          v12 = [v45 font];
          v13 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
          swift_beginAccess();
          v14 = *(v10 + v13);
          *(v10 + v13) = v12;
          v5 = &selRef__setupShapeLayer_;
          v1 = v38;

          v15 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
          swift_beginAccess();
          *(v10 + v15) = 2;

          v6 = v43;
        }
      }

      v16 = v45;
      v17 = [v45 imageView];
      if (v17)
      {
        v18 = v17;
        v19 = swift_dynamicCastObjCProtocolConditional();
        if (!v19)
        {
        }
      }

      else
      {
        v19 = 0;
      }

      if (([v6 existingImageView:v19 supportsImageProvider:v8] & 1) == 0)
      {
        v20 = [v6 viewForImageProvider_];
        [v45 setImageView_];

        v19 = v20;
      }

      if (v19)
      {
        type metadata accessor for WidgetNamedImageView();
        v21 = swift_dynamicCastClass();
        if (v21)
        {
          v22 = v21;
          swift_getKeyPath();
          swift_getKeyPath();
          v40 = v19;
          sub_243DAD860();

          *(v22 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_monochromeFraction) = v46;
          v23 = *(v22 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider);
          if (v23)
          {
            type metadata accessor for WidgetNamedImageProvider(0);
            v24 = swift_dynamicCastClass();
            if (v24)
            {
              v25 = *&v24;
              v26 = *(v22 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color);
              v27 = v23;
              if (v26)
              {
                v28 = v26;
                sub_243DADF20();
              }

              swift_getObjectType();
              v46 = v25;
              sub_243DA7A8C();
              v29 = v23;

              sub_243DAE080();
              sub_243DADB30();

              v1 = v38;
              v5 = &selRef__setupShapeLayer_;
            }
          }

          v2 = v37;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_243DAD860();

        if (v46 == 0.0)
        {
          v30 = sub_243DADF10();
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_243DAD860();

          v30 = sub_243DADF10();
        }

        v3 = v39;
        v6 = v43;
        if (v30)
        {
          v31 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
        }

        else
        {
          v31 = [objc_opt_self() whiteColor];
        }

        [v19 setColor_];

        [v19 setImageProvider_];
        v16 = v45;
      }

      v32 = [v44 textProvider];
      [v16 v5[290]];
      if (!v8 || v32)
      {
        v34 = *(v1 + 76);
      }

      else
      {
        v33 = sub_243DAE130();
        [v45 setText_];

        v16 = v45;
        v34 = 0.0;
      }

      [v16 setImagePadding_];
      [v2 layoutSubviews];
      v35 = [v16 isTextTruncated];

      if (v41 != v7)
      {
        ++v7;
        if (v35)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }

  else
  {
    v36 = *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView];

    [v36 setTextProvider_];
  }
}

uint64_t sub_243DA70AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243DA7A28(&unk_27EDBB450, type metadata accessor for ComplicationCurvedTextViewRepresentable, &unk_243DB36D0);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243DA7140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243DA7A28(&unk_27EDBB450, type metadata accessor for ComplicationCurvedTextViewRepresentable, &unk_243DB36D0);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243DA71D4(uint64_t a1)
{
  sub_243DA7A28(&unk_27EDBB450, type metadata accessor for ComplicationCurvedTextViewRepresentable, &unk_243DB36D0);
  sub_243DADBF0();
  __break(1u);
}

id sub_243DA7354(char *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v11.receiver = a1;
  v11.super_class = type metadata accessor for CenteringCurvedTextView();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v2 = *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView];
  v3 = [v2 path];
  if (v3)
  {
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
    v7 = 0;
    v8 = 0;
    [v2 getTextCenter:&v9 startAngle:&v8 endAngle:&v7];
    v4 = *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_circleCenter] - v9;
    v5 = *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_circleCenter + 8] - v10;
    [v2 frame];
    [v2 setFrame_];
  }

  return [v2 sizeToFit];
}

id sub_243DA75E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CenteringCurvedTextView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id ComplicationCurvedTextConfiguration.ContentProvider.textProvider.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *ComplicationCurvedTextConfiguration.ContentProvider.imageProvider.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t ComplicationCurvedTextConfiguration.ContentProvider.init(textProvider:imageProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_243DA7738(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_243DA7794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for ComplicationCurvedTextViewRepresentable(uint64_t a1)
{
  result = qword_27EDBB428;
  if (!qword_27EDBB428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243DA7868(uint64_t a1)
{
  sub_243DA792C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MonochromeModel(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ComplicationCurvedTextMetricsObservable(319);
      if (v3 <= 0x3F)
      {
        sub_243DA797C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243DA792C()
{
  if (!qword_27EDBB438)
  {
    v0 = sub_243DAE1C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDBB438);
    }
  }
}

void sub_243DA797C(uint64_t a1)
{
  if (!qword_27EDBB440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBADF0, &qword_243DB1E68);
    v1 = sub_243DAD8B0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDBB440);
    }
  }
}

uint64_t sub_243DA7A28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243DA7A8C()
{
  result = qword_27EDBB460;
  if (!qword_27EDBB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB460);
  }

  return result;
}

uint64_t sub_243DA7AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComplicationCurvedTextViewRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_243DA7B44()
{
  type metadata accessor for ComplicationCurvedTextViewRepresentable(0);
  v1 = *(v0 + 16);

  sub_243DA625C(v1);
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id ApricotNamedImageProvider.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_243DADD80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  (*(v4 + 16))(v6, a1, v3);
  v8 = WidgetNamedImageProvider.init(_:)(v6);
  (*(v4 + 8))(a1, v3);
  return v8;
}

id ApricotNamedImageProvider.init(_:)(uint64_t a1)
{
  v2 = sub_243DADD80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = WidgetNamedImageProvider.init(_:)(v5);
  (*(v3 + 8))(a1, v2);
  return v6;
}

id WidgetNamedImageProvider.init(_:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font] = 0;
  *&v1[OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale] = 2;
  v1[OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized] = 0;
  v3 = &v1[OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize];
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  v5 = sub_243DADD80();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for WidgetNamedImageProvider(0);
  v7 = objc_msgSendSuper2(&v12, sel_initPrivate);
  v11[4] = sub_243DA8D94;
  v11[5] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_243DA8DD8;
  v11[3] = &block_descriptor_5;
  v8 = _Block_copy(v11);
  v9 = v7;
  [v9 setImageViewCreationHandler_];
  _Block_release(v8);

  (*(v6 + 8))(a1, v5);
  return v9;
}

uint64_t sub_243DA803C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  v4 = sub_243DADD80();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_243DA80C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  v4 = sub_243DADD80();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *sub_243DA81B4()
{
  v1 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_243DA8200(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_243DA82B8()
{
  v1 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243DA82FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_243DA83AC(double a1, double a2)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
  if ((*(v2 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
  {
    v4 = (v2 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
    *v4 = a1;
    v4[1] = a2;
    *(v2 + v3) = 1;
  }
}

id sub_243DA83D8()
{
  v50 = sub_243DAD780();
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_243DADD60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243DADD80();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  v16 = *(v7 + 16);
  v48 = v0;
  v51 = v16;
  v16(v14, v0 + v15, v6);
  sub_243DADD70();
  v17 = v2;
  v18 = *(v7 + 8);
  v18(v14, v6);
  v19 = (*(v3 + 88))(v5, v17);
  if (v19 == *MEMORY[0x277CDE3D0])
  {
    (*(v3 + 96))(v5, v17);
    v20 = v47;
    (*(v47 + 32))(v49, v5, v50);
    v21 = sub_243DAD770();
    v22 = CLKUniqueBundle();

    v51(v12, v48 + v15, v6);
    sub_243DADD30();
    v18(v12, v6);
    v23 = sub_243DAE130();

    v24 = [objc_opt_self() imageNamed:v23 inBundle:v22 compatibleWithTraitCollection:0];

    (*(v20 + 8))(v49, v50);
    return v24;
  }

  else
  {
    v47 = v15;
    v49 = (v7 + 16);
    v50 = v6;
    v26 = v48;
    if (v19 == *MEMORY[0x277CDE3D8])
    {
      (*(v3 + 96))(v5, v17);
      v27 = *v5;
      v28 = v26;
      v29 = v26 + v47;
      v30 = v46;
      v31 = v50;
      v51(v46, v29, v50);
      v32 = sub_243DADD40();
      v33 = v18;
      v18(v30, v31);
      if ((v32 & 0x100000000) != 0)
      {
        v34 = 1.0;
      }

      else
      {
        v34 = *&v32;
      }

      v35 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
      swift_beginAccess();
      v36 = *(v28 + v35);
      if (v36)
      {
        v37 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
        swift_beginAccess();
        v38 = [objc_opt_self() configurationWithFont:v36 scale:*(v28 + v37)];
      }

      else
      {
        v39 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
        swift_beginAccess();
        v38 = [objc_opt_self() configurationWithScale_];
      }

      v40 = v38;
      v41 = v50;
      if (v27)
      {
        v42 = objc_opt_self();
        v51(v12, v28 + v47, v41);
        sub_243DADD30();
        v33(v12, v41);
        v43 = sub_243DAE130();

        v44 = [v42 cd:v43 internalSystemName:v40 variableValue:v34 withConfiguration:?];

        return v44;
      }

      else
      {
        sub_243D96A78(0, &qword_27EDBB540, 0x277D755B8);
        v51(v12, v28 + v47, v41);
        sub_243DADD30();
        v33(v12, v41);
        return sub_243DAE230();
      }
    }

    else
    {
      (*(v3 + 8))(v5, v17);
      return 0;
    }
  }
}

uint64_t sub_243DA8A14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  v5 = sub_243DADD80();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_243DA8AA0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_243DADD80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

void sub_243DA8C64(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

char *sub_243DA8D94(uint64_t a1, double a2, double a3)
{
  v5 = objc_allocWithZone(type metadata accessor for WidgetNamedImageView());
  v6.n128_f64[0] = a2;
  return sub_243DAA090(v5, v6, a3);
}

id sub_243DA8DD8(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);

  v7 = v5(v6, a2, a3);

  return v7;
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_243DA8E78(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_243DA8F5C@<Q0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_243DADD80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v8, v4);
  v9 = type metadata accessor for WidgetNamedImageProvider(0);
  v10 = objc_allocWithZone(v9);
  v11 = WidgetNamedImageProvider.init(_:)(v7);
  v12 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v13 = *(v2 + v12);
  v14 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v15 = *&v11[v14];
  *&v11[v14] = v13;
  v16 = v13;

  v17 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  swift_beginAccess();
  v18 = *(v2 + v17);
  v19 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  swift_beginAccess();
  *&v11[v19] = v18;
  v11[OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized] = *(v2 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized);
  result = *(v2 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
  *&v11[OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize] = result;
  a1[3] = v9;
  *a1 = v11;
  return result;
}

id WidgetNamedImageProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WidgetNamedImageProvider.__allocating_init(jsonObjectRepresentation:bundle:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_243DAE110();

  v6 = [v4 initWithJSONObjectRepresentation:v5 bundle:a2];

  return v6;
}

id WidgetNamedImageProvider.__allocating_init(private:)()
{
  v1 = objc_allocWithZone(v0);

  return [v1 initPrivate];
}

id WidgetNamedImageProvider.__allocating_init(foregroundAccentImage:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithForegroundAccentImage_];

  return v3;
}

id sub_243DA9468(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_243DA9564(uint64_t a1)
{
  result = sub_243DADD80();
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

uint64_t sub_243DA9890@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v50 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6B0, &qword_243DB3BE0);
  MEMORY[0x28223BE20](v49);
  v5 = &v41 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6B8, &qword_243DB3BE8);
  MEMORY[0x28223BE20](v46);
  v7 = &v41 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6C0, &qword_243DB3BF0);
  MEMORY[0x28223BE20](v42);
  v9 = &v41 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6C8, &qword_243DB3BF8);
  MEMORY[0x28223BE20](v43);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6D0, &qword_243DB3C00);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6D8, &qword_243DB3C08);
  MEMORY[0x28223BE20](v44);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6E0, &qword_243DB3C10);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6E8, &qword_243DB3C18);
  MEMORY[0x28223BE20](v48);
  v45 = &v41 - v20;
  if (a2 && (v21 = a2[2]) != 0)
  {
    if (v21 == 2)
    {
      v32 = a2[4];
      v33 = a2[5];
      v41 = v33;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6F0, &qword_243DB3C20);
      (*(*(v34 - 8) + 16))(v9, v47, v34);
      v35 = &v9[*(v42 + 36)];
      *v35 = v32;
      *(v35 + 1) = v33;
      sub_243D93F14(v9, v14, &qword_27EDBB6C0, &qword_243DB3BF0);
      swift_storeEnumTagMultiPayload();
      sub_243DACBC8();
      sub_243DACCAC();

      sub_243DADC30();
      sub_243D93F14(v16, v11, &qword_27EDBB6D8, &qword_243DB3C08);
      swift_storeEnumTagMultiPayload();
      sub_243DACB3C();
      sub_243DACD90();
      v26 = v45;
      sub_243DADC30();
      sub_243DACF58(v16, &qword_27EDBB6D8, &qword_243DB3C08);
      v27 = v9;
      v28 = &qword_27EDBB6C0;
      v29 = &qword_243DB3BF0;
    }

    else if (v21 == 1)
    {
      v22 = a2[4];
      KeyPath = swift_getKeyPath();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6F0, &qword_243DB3C20);
      (*(*(v24 - 8) + 16))(v19, v47, v24);
      v25 = &v19[*(v17 + 36)];
      *v25 = KeyPath;
      v25[1] = v22;
      sub_243D93F14(v19, v14, &qword_27EDBB6E0, &qword_243DB3C10);
      swift_storeEnumTagMultiPayload();
      sub_243DACBC8();
      sub_243DACCAC();

      sub_243DADC30();
      sub_243D93F14(v16, v11, &qword_27EDBB6D8, &qword_243DB3C08);
      swift_storeEnumTagMultiPayload();
      sub_243DACB3C();
      sub_243DACD90();
      v26 = v45;
      sub_243DADC30();
      sub_243DACF58(v16, &qword_27EDBB6D8, &qword_243DB3C08);
      v27 = v19;
      v28 = &qword_27EDBB6E0;
      v29 = &qword_243DB3C10;
    }

    else
    {
      v36 = a2[4];
      v37 = a2[5];
      v38 = a2[6];
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6F0, &qword_243DB3C20);
      (*(*(v39 - 8) + 16))(v7, v47, v39);
      v40 = &v7[*(v46 + 36)];
      *v40 = v36;
      *(v40 + 1) = v37;
      *(v40 + 2) = v38;
      sub_243D93F14(v7, v11, &qword_27EDBB6B8, &qword_243DB3BE8);
      swift_storeEnumTagMultiPayload();
      sub_243DACB3C();
      sub_243DACD90();

      v26 = v45;
      sub_243DADC30();
      v27 = v7;
      v28 = &qword_27EDBB6B8;
      v29 = &qword_243DB3BE8;
    }

    sub_243DACF58(v27, v28, v29);
    sub_243D93F14(v26, v5, &qword_27EDBB6E8, &qword_243DB3C18);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6F0, &qword_243DB3C20);
    sub_243DACAB0();
    sub_243D90C40(&qword_27EDBB710, &qword_27EDBB6F0, &qword_243DB3C20, MEMORY[0x277CE04B0]);
    sub_243DADC30();
    return sub_243DACF58(v26, &qword_27EDBB6E8, &qword_243DB3C18);
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6F0, &qword_243DB3C20);
    (*(*(v30 - 8) + 16))(v5, v47, v30);
    swift_storeEnumTagMultiPayload();
    sub_243DACAB0();
    sub_243D90C40(&qword_27EDBB710, &qword_27EDBB6F0, &qword_243DB3C20, MEMORY[0x277CE04B0]);
    return sub_243DADC30();
  }
}

char *sub_243DAA090(uint64_t a1, __n128 a2, double a3)
{
  v5 = a2.n128_f64[0];
  *&v3[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_baseline] = 0;
  *&v3[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider] = 0;
  *&v3[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_monochromeFraction] = 0;
  *&v3[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color] = 0;
  v3[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_usesLegibility] = 0;
  *&v3[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_overrideColor] = 0;
  v6 = &v3[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_maxSize];
  *v6 = a2.n128_f64[0];
  v6[1] = a3;
  sub_243DAE080();
  v7 = sub_243DADD10();

  ObjectType = swift_getObjectType();
  v9 = sub_243D96A78(0, &qword_27EDBB2B0, 0x277D75D28);
  v10 = dynamic_cast_existential_1_superclass_unconditional(v7, ObjectType, v9, MEMORY[0x277CDDEC0]);
  v11 = &v3[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController];
  *v11 = v10;
  v11[1] = v12;
  result = [v10 view];
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];

    v20.receiver = v3;
    v20.super_class = type metadata accessor for WidgetNamedImageView();
    v16 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, v5, a3);
    v17 = *&v16[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController];
    v18 = v16;
    result = [v17 view];
    if (result)
    {
      v19 = result;
      [v18 addSubview_];

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_243DAA31C(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for WidgetNamedImageView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v2 = [*&v1[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController] view];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    v6 = CGRectOffset(v5, 0.0, *&v1[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_baseline]);
    [v3 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_243DAA490(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider];
  if (a1)
  {
    if (v3 == a1 || v3 == 0)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  type metadata accessor for WidgetNamedImageProvider(0);
  if (swift_dynamicCastClass())
  {
    v11 = v3;
    sub_243DAA5D8();
    swift_getObjectType();
    sub_243DADAF0();
    v5 = 0;
    [v2 setBounds_];
    v8 = sub_243DA83D8();
    if (v8)
    {
      v9 = v8;
      [v8 cd_baselineOffsetFromBottom];
      v5 = v10;
    }

    *&v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_baseline] = v5;
    [v2 setNeedsLayout];
  }
}

void sub_243DAA5D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider);
  if (v1)
  {
    type metadata accessor for WidgetNamedImageProvider(0);
    if (swift_dynamicCastClass())
    {
      v2 = *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color);
      v3 = v1;
      if (v2)
      {
        v4 = v2;
        sub_243DADF20();
      }

      swift_getObjectType();
      sub_243DA7A8C();
      v5 = v1;

      sub_243DAE080();
      sub_243DADB30();
    }
  }
}

void sub_243DAA750(void *a1)
{
  v2 = OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color;
  v3 = *(v1 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color);
  *(v1 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color) = a1;
  v9 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider);
  if (v4 && (type metadata accessor for WidgetNamedImageProvider(0), swift_dynamicCastClass()))
  {
    v5 = *(v1 + v2);
    v6 = v4;
    if (v5)
    {
      v7 = v5;
      sub_243DADF20();
    }

    swift_getObjectType();
    sub_243DA7A8C();
    v8 = v4;

    sub_243DAE080();
    sub_243DADB30();
  }

  else
  {
  }
}

uint64_t sub_243DAA920@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v113 = a3;
  v107 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB610, &qword_243DB3A00);
  MEMORY[0x28223BE20](v6);
  v8 = &v93 - v7;
  v9 = sub_243DADD60();
  v112 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_243DADFB0();
  v116 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB618, &qword_243DB3A08);
  MEMORY[0x28223BE20](v13 - 8);
  v103 = &v93 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB620, &qword_243DB3A10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v93 - v16;
  v118 = sub_243DADD80();
  v114 = *(v118 - 8);
  v18 = MEMORY[0x28223BE20](v118);
  v111 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v101 = &v93 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v93 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v93 - v25;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB628, &qword_243DB3A18);
  MEMORY[0x28223BE20](v102);
  v115 = (&v93 - v27);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB630, &qword_243DB3A20);
  MEMORY[0x28223BE20](v104);
  v106 = &v93 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB638, &qword_243DB3A28);
  v30 = MEMORY[0x28223BE20](v29);
  v105 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v109 = &v93 - v32;
  if (!sub_243DABFD0(a1))
  {
    swift_storeEnumTagMultiPayload();
    sub_243DAC4EC();
    return sub_243DADC30();
  }

  v95 = v29;
  v96 = v11;
  v97 = v9;
  v98 = v6;
  v99 = v8;
  v100 = a4;
  v33 = v113;
  if ((v113 & 1) == 0)
  {
    v34 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
    swift_beginAccess();
    v35 = v114;
    v36 = &a1[v34];
    v37 = v17;
    v38 = v33;
    v39 = a1;
    v40 = v118;
    v94 = *(v114 + 16);
    v94(v26, v36, v118);
    v41 = sub_243DADD50();
    v42 = v40;
    a1 = v39;
    v33 = v38;
    v17 = v37;
    v43 = *(v35 + 8);
    v43(v26, v42);
    if (!v41)
    {
      goto LABEL_9;
    }

    v44 = &a1[v34];
    v45 = v118;
    v94(v24, v44, v118);
    v46 = sub_243DADD50();
    result = (v43)(v24, v45);
    if (!v46)
    {
      __break(1u);
      return result;
    }

    v48 = *(v46 + 16);

    if (!v48)
    {
LABEL_9:

      goto LABEL_10;
    }
  }

  v49 = *MEMORY[0x277CE1020];
  v50 = sub_243DADFA0();
  v51 = *(v50 - 8);
  (*(v51 + 104))(v17, v49, v50);
  (*(v51 + 56))(v17, 0, 1, v50);
  sub_243DADF70();
  sub_243DACF58(v17, &qword_27EDBB620, &qword_243DB3A10);
  if ((v33 & 1) == 0)
  {
LABEL_10:
    v54 = v114;
    v52 = v103;
    v55 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
    swift_beginAccess();
    v56 = &a1[v55];
    v57 = v101;
    v58 = v118;
    (*(v54 + 16))(v101, v56, v118);
    sub_243DADD20();
    (*(v54 + 8))(v57, v58);
    goto LABEL_11;
  }

  v52 = v103;
  sub_243DADB40();
  v53 = sub_243DADB50();
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  v54 = v114;
LABEL_11:
  v114 = sub_243DADF90();

  sub_243DACF58(v52, &qword_27EDBB618, &qword_243DB3A08);
  v59 = sub_243DAB438(a1, v107, v33 & 1);
  v60 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  swift_beginAccess();
  v61 = *&a1[v60] - 1;
  if (v61 > 2)
  {
    v62 = MEMORY[0x277CE1058];
  }

  else
  {
    v62 = qword_278DF3A50[v61];
  }

  v63 = v112;
  v64 = v96;
  v65 = v108;
  v66 = v110;
  (*(v116 + 104))(v108, *v62, v110);
  KeyPath = swift_getKeyPath();
  v68 = v115;
  v69 = (v115 + *(v102 + 36));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB678, &qword_243DB3A38);
  (*(v116 + 32))(v69 + *(v70 + 28), v65, v66);
  *v69 = KeyPath;
  *v68 = v114;
  v68[1] = v59;
  v71 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v72 = *&a1[v71];
  if (v72)
  {
    v73 = v72;
    v74 = sub_243DADD90();
  }

  else
  {
    v74 = 0;
  }

  v75 = v99;
  v76 = v95;
  v77 = swift_getKeyPath();
  v78 = v106;
  sub_243DAC81C(v115, v106, &qword_27EDBB628, &qword_243DB3A18);
  v79 = (v78 + *(v104 + 36));
  *v79 = v77;
  v79[1] = v74;
  v80 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  v81 = &a1[v80];
  v82 = v111;
  v83 = v118;
  (*(v54 + 16))(v111, v81, v118);
  sub_243DADD70();
  (*(v54 + 8))(v82, v83);
  v84 = v97;
  LOBYTE(v83) = (*(v63 + 88))(v64, v97) != *MEMORY[0x277CDE3D0];
  (*(v63 + 8))(v64, v84);
  [a1 maxSize];
  v86 = v85;
  v88 = v87;
  v89 = v105;
  sub_243DAC81C(v78, v105, &qword_27EDBB630, &qword_243DB3A20);
  v90 = v89 + *(v76 + 36);
  *v90 = v83;
  *(v90 + 8) = v86;
  *(v90 + 16) = v88;
  *(v90 + 24) = 0;
  v91 = v89;
  v92 = v109;
  sub_243DAC81C(v91, v109, &qword_27EDBB638, &qword_243DB3A28);
  sub_243D93F14(v92, v75, &qword_27EDBB638, &qword_243DB3A28);
  swift_storeEnumTagMultiPayload();
  sub_243DAC4EC();
  sub_243DADC30();
  sub_243DACF58(v92, &qword_27EDBB638, &qword_243DB3A28);
}

uint64_t sub_243DAB438(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_243DADD80();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  (*(v7 + 16))(v9, a1 + v10, v6);
  v11 = sub_243DADD50();
  (*(v7 + 8))(v9, v6);
  if (a3)
  {
    if (!a2)
    {
      return v11;
    }

    goto LABEL_12;
  }

  if (!v11)
  {
    if (!a2)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (*(v11 + 16))
  {
    v12 = 1;
  }

  else
  {
    v12 = a2 == 0;
  }

  if (!v12)
  {
LABEL_12:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB698, &qword_243DB3AA8);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_243DB1AE0;
    *(v11 + 32) = a2;
  }

  return v11;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_243DAB758(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_243DAB7A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243DAB80C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB758, &qword_243DB3C70);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB760, &qword_243DB3C78);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  if (a2)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB768, &qword_243DB3C80);
    (*(*(v16 - 8) + 16))(v12, a1, v16);
    swift_storeEnumTagMultiPayload();
    sub_243DACE74();
    sub_243D90C40(&qword_27EDBB788, &qword_27EDBB768, &qword_243DB3C80, MEMORY[0x277CE04B0]);
    return sub_243DADC30();
  }

  else
  {
    *v15 = a3;
    *(v15 + 1) = a4;
    v15[16] = a5 & 1;
    v18 = *(v13 + 44);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB768, &qword_243DB3C80);
    (*(*(v19 - 8) + 16))(&v15[v18], a1, v19);
    sub_243D93F14(v15, v12, &qword_27EDBB760, &qword_243DB3C78);
    swift_storeEnumTagMultiPayload();
    sub_243DACE74();
    sub_243D90C40(&qword_27EDBB788, &qword_27EDBB768, &qword_243DB3C80, MEMORY[0x277CE04B0]);
    sub_243DADC30();
    return sub_243DACF58(v15, &qword_27EDBB760, &qword_243DB3C78);
  }
}

uint64_t sub_243DABAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[1] = a6;
  v6 = sub_243DAD940();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243DAD9B0();
  sub_243DADA00();
  v15 = v10 & 1;
  v14 = v11 & 1;
  sub_243DAD920();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_243DABC74(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  sub_243DAD9A0();
  sub_243DAD404();
  sub_243DAE1D0();
  sub_243DAE1F0();
  result = sub_243DAE1E0();
  if (result == 1)
  {
    return sub_243DABAB8(a1, a2 & 1, a3, a4 & 1, a5, v12);
  }

  return result;
}

uint64_t (*sub_243DABE24(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_243DAD890();
  return sub_243DABEAC;
}

void sub_243DABEAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_243DABF08(uint64_t a1)
{
  v2 = sub_243DADFB0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_243DADA40();
}

uint64_t sub_243DABFD0(uint64_t a1)
{
  v2 = sub_243DADF60();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_243DAD780();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_243DADD60();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243DADD80();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  v18 = *(v9 + 16);
  v18(v16, a1 + v17, v8);
  v48 = sub_243DADD30();
  v49 = v19;
  v20 = *(v9 + 8);
  v20(v16, v8);
  v41 = a1;
  v18(v14, a1 + v17, v8);
  sub_243DADD70();
  v21 = v14;
  v23 = v50;
  v22 = v51;
  v20(v21, v8);
  v24 = (*(v23 + 88))(v7, v22);
  if (v24 == *MEMORY[0x277CDE3D0])
  {
    (*(v23 + 96))(v7, v22);
    v26 = v42;
    v25 = v43;
    v27 = v45;
    (*(v43 + 32))(v42, v7, v45);
    v28 = sub_243DAD770();
    v29 = CLKUniqueBundle();

    v30 = v29;
    sub_243DADFD0();
    v32 = v46;
    v31 = v47;
    v33 = v44;
    (*(v46 + 104))(v44, *MEMORY[0x277CE0FE0], v47);
    v34 = sub_243DADFC0();

    (*(v32 + 8))(v33, v31);
    (*(v25 + 8))(v26, v27);
    return v34;
  }

  else if (v24 == *MEMORY[0x277CDE3D8])
  {
    (*(v23 + 96))(v7, v22);
    v36 = *v7;
    v37 = v41 + v17;
    v38 = v40;
    v18(v40, v37, v8);
    sub_243DADD40();
    v20(v38, v8);
    if (v36 == 1)
    {
      return sub_243DADF80();
    }

    else
    {
      return sub_243DADF50();
    }
  }

  else
  {

    (*(v23 + 8))(v7, v22);
    return 0;
  }
}

unint64_t sub_243DAC4EC()
{
  result = qword_27EDBB640;
  if (!qword_27EDBB640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB638, &qword_243DB3A28);
    sub_243DAC578();
    sub_243DAC7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB640);
  }

  return result;
}

unint64_t sub_243DAC578()
{
  result = qword_27EDBB648;
  if (!qword_27EDBB648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB630, &qword_243DB3A20);
    sub_243DAC630();
    sub_243D90C40(&qword_27EDBB680, &qword_27EDBB688, &qword_243DB3A40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB648);
  }

  return result;
}

unint64_t sub_243DAC630()
{
  result = qword_27EDBB650;
  if (!qword_27EDBB650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB628, &qword_243DB3A18);
    sub_243DAC6E8();
    sub_243D90C40(&qword_27EDBB670, &qword_27EDBB678, &qword_243DB3A38, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB650);
  }

  return result;
}

unint64_t sub_243DAC6E8()
{
  result = qword_27EDBB658;
  if (!qword_27EDBB658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB660, &qword_243DB3A30);
    sub_243DAC774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB658);
  }

  return result;
}

unint64_t sub_243DAC774()
{
  result = qword_27EDBB668;
  if (!qword_27EDBB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB668);
  }

  return result;
}

unint64_t sub_243DAC7C8()
{
  result = qword_27EDBB690;
  if (!qword_27EDBB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB690);
  }

  return result;
}

uint64_t sub_243DAC81C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_243DAC884(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_243DAC8D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_243DAC930(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_243DAC98C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_243DAC9EC()
{
  result = qword_27EDBB6A0;
  if (!qword_27EDBB6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB6A8, "  ");
    sub_243DAC4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB6A0);
  }

  return result;
}

unint64_t sub_243DACAB0()
{
  result = qword_27EDBB6F8;
  if (!qword_27EDBB6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB6E8, &qword_243DB3C18);
    sub_243DACB3C();
    sub_243DACD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB6F8);
  }

  return result;
}

unint64_t sub_243DACB3C()
{
  result = qword_27EDBB700;
  if (!qword_27EDBB700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB6D8, &qword_243DB3C08);
    sub_243DACBC8();
    sub_243DACCAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB700);
  }

  return result;
}

unint64_t sub_243DACBC8()
{
  result = qword_27EDBB708;
  if (!qword_27EDBB708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB6E0, &qword_243DB3C10);
    sub_243D90C40(&qword_27EDBB710, &qword_27EDBB6F0, &qword_243DB3C20, MEMORY[0x277CE04B0]);
    sub_243D90C40(&qword_27EDBB718, &qword_27EDBB720, &qword_243DB3C28, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB708);
  }

  return result;
}

unint64_t sub_243DACCAC()
{
  result = qword_27EDBB728;
  if (!qword_27EDBB728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB6C0, &qword_243DB3BF0);
    sub_243D90C40(&qword_27EDBB710, &qword_27EDBB6F0, &qword_243DB3C20, MEMORY[0x277CE04B0]);
    sub_243D90C40(&qword_27EDBB730, &qword_27EDBB738, &qword_243DB3C30, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB728);
  }

  return result;
}

unint64_t sub_243DACD90()
{
  result = qword_27EDBB740;
  if (!qword_27EDBB740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB6B8, &qword_243DB3BE8);
    sub_243D90C40(&qword_27EDBB710, &qword_27EDBB6F0, &qword_243DB3C20, MEMORY[0x277CE04B0]);
    sub_243D90C40(&qword_27EDBB748, &qword_27EDBB750, &qword_243DB3C38, MEMORY[0x277CE07B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB740);
  }

  return result;
}

unint64_t sub_243DACE74()
{
  result = qword_27EDBB770;
  if (!qword_27EDBB770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB760, &qword_243DB3C78);
    sub_243D90C40(&qword_27EDBB778, &qword_27EDBB780, &qword_243DB3C88, MEMORY[0x277CDF510]);
    sub_243D90C40(&qword_27EDBB788, &qword_27EDBB768, &qword_243DB3C80, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB770);
  }

  return result;
}

uint64_t sub_243DACF58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShrinkToFitModifier._ShrinkToFitLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ShrinkToFitModifier._ShrinkToFitLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_243DAD014()
{
  result = qword_27EDBB790;
  if (!qword_27EDBB790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB798, "j ");
    sub_243DACAB0();
    sub_243D90C40(&qword_27EDBB710, &qword_27EDBB6F0, &qword_243DB3C20, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB790);
  }

  return result;
}

unint64_t sub_243DAD0CC()
{
  result = qword_27EDBB7A0;
  if (!qword_27EDBB7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB7A8, "0 ");
    sub_243DACE74();
    sub_243D90C40(&qword_27EDBB788, &qword_27EDBB768, &qword_243DB3C80, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB7A0);
  }

  return result;
}

unint64_t sub_243DAD188()
{
  result = qword_27EDBB7B0;
  if (!qword_27EDBB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB7B0);
  }

  return result;
}

unint64_t sub_243DAD1E0()
{
  result = qword_27EDBB7B8;
  if (!qword_27EDBB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB7B8);
  }

  return result;
}

uint64_t sub_243DAD234(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_243DAD940();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243DAD9A0();
  sub_243DAD404();
  sub_243DAE1D0();
  sub_243DAE1F0();
  result = sub_243DAE1E0();
  if (result == 1)
  {
    sub_243DAD9B0();
    sub_243DAE0C0();
    LOBYTE(v17) = 0;
    LOBYTE(v16) = 0;
    sub_243DABAB8(*&a4, 0, *&a5, 0, a1, a7);
    LOBYTE(v17) = 0;
    LOBYTE(v16) = 0;
    sub_243DAD930();
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

unint64_t sub_243DAD404()
{
  result = qword_27EDBB7C0;
  if (!qword_27EDBB7C0)
  {
    sub_243DAD9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB7C0);
  }

  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x282111538](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}