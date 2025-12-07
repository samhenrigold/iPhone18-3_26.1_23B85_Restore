uint64_t sub_1DADD0FC4()
{
  v1 = (type metadata accessor for InProcessListItemActivityInstanceView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C18, &qword_1DAEDBC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1DAECF0AC();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DADD10E0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C20, qword_1DAEDBCE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DADD119C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C20, qword_1DAEDBCE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADD124C()
{
  type metadata accessor for _InProcessActivityInstanceView(255);
  sub_1DAECF0AC();
  sub_1DAE537A8(&qword_1ECC09B58, type metadata accessor for _InProcessActivityInstanceView, &unk_1DAED6DC0);
  sub_1DAE537A8(&qword_1EE00ABA8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DADD132C()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD1368()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD13A0()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD13D8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1DADD1420()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD1460()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DADD1498()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD14D0()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD150C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF8BC();
  *a1 = result;
  return result;
}

uint64_t sub_1DADD1570()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1DADD15B8()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD15F0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DADD1628()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD1660()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD1698()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD16D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD1710()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DADD1758()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD17D8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1DAECF79C();
  *a2 = result;
  return result;
}

uint64_t sub_1DADD1830@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF83C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADD1888@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1DAECF60C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DADD1918(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DAED157C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DADD19C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DAED157C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADD1A68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DAECEDEC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DADD1B14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DAECEDEC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DADD1BCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
  swift_beginAccess();
  return sub_1DAD6495C(v3 + v4, a2, &unk_1ECC09EC0, &qword_1DAED7970);
}

uint64_t sub_1DADD1C48()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD1C80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF87C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADD1CD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD1D2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD1D64()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD1DE4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD1E1C()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD1E54()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD1E94()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD1ECC(__n128 a1)
{
  v2 = sub_1DAED182C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1DADD1F90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD207C()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD20B4()
{
  v1 = *(type metadata accessor for ActivityContentDidChangeEvent(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_1DAED0B1C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1DADD2188()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD21C4()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD2210()
{
  v1 = sub_1DAECE3DC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1DADD239C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD246C()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD2598()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADD267C()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD26CC()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD2704()
{
  v1 = sub_1DAED1B8C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD28D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD2908()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD2B80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DADD2BD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DADD2C70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1DADD2F90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1DADD31FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DADD3298()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1DADD32E0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1DADD3320()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD347C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DADD34D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_1DAEAB354();
}

id sub_1DADD352C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1DADD3598@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DADD35F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_1DAEAB354();
}

__n128 sub_1DADD3648@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1DADD36A0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return sub_1DAEAB354();
}

uint64_t sub_1DADD36FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1DADD3758(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return sub_1DAEAB354();
}

__n128 sub_1DADD3808@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1DADD3868()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD38A0()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD3968()
{
  v1 = sub_1DAED10DC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD3A34()
{
  v1 = sub_1DAECE3DC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADD3B30()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD3B68()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD3BF8()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD3C30()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD3C78()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADD3CB0()
{

  return swift_deallocObject();
}

uint64_t sub_1DADD3D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAED0B1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DADD3DF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DAED0B1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_1DADD3EF8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1DAEC7848();
}

uint64_t sub_1DADD3F5C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_1DADC68E4(v5);
}

id sub_1DADD3FC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1DADD4034@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result & 1;
  return result;
}

id sub_1DADD40EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id *sub_1DADD4B40()
{
  v1 = v0;
  if (qword_1EE005E88 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE0117D8);

  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED200C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
    v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

    v9 = sub_1DAD6482C(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DAD61000, v3, v4, "[%{public}s] Destroyed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E127F100](v6, -1, -1);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
  v11 = sub_1DAECE20C();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  sub_1DAD64398(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility, &qword_1ECC07CD0, &qword_1DAED6560);
  v12 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_environmentModifiers;
  v13 = sub_1DAED10DC();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client));

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__keybagStateProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__dataProtectionMonitor));
  sub_1DAD64398(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReasonDate, &qword_1ECC07CE8, &qword_1DAED6F60);

  return v1;
}

uint64_t sub_1DADD4E04()
{
  sub_1DADD4B40();

  return swift_deallocClassInstance();
}

uint64_t sub_1DADD4E5C(uint64_t result)
{
  if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) & 1) == 0)
  {
    v2 = v1;
    v3 = result;
    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v4 = sub_1DAECEDEC();
    __swift_project_value_buffer(v4, qword_1EE0117D8);

    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED203C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20[0] = v8;
      *v7 = 136446466;
      v9 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v10 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v11 = sub_1DAD6482C(v9, v10, v20);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      v12 = NSStringFromWRReloadReason(v3);
      v13 = sub_1DAED1CEC();
      v15 = v14;

      v16 = sub_1DAD6482C(v13, v15, v20);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] Reload widget if Failed for reason: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    sub_1DAD648F8(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v20);
    v17 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v18 = *(v17 + 120);
    v19 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
    v18();

    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return result;
}

uint64_t sub_1DADD50B0()
{
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) & 1) == 0)
  {
    v1 = v0;
    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v2 = sub_1DAECEDEC();
    __swift_project_value_buffer(v2, qword_1EE0117D8);

    v3 = sub_1DAECEDCC();
    v4 = sub_1DAED203C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14[0] = v6;
      *v5 = 136446210;
      v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v9 = sub_1DAD6482C(v8, v7, v14);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1DAD61000, v3, v4, "[%{public}s] Handle action", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1E127F100](v6, -1, -1);
      MEMORY[0x1E127F100](v5, -1, -1);
    }

    sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v14);
    v10 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v11 = *(v10 + 128);
    v12 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
    v11();

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  return result;
}

uint64_t sub_1DADD52BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - v3;
  if (qword_1EE005E88 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v5 = sub_1DAECEDEC();
    __swift_project_value_buffer(v5, qword_1EE0117D8);

    v6 = sub_1DAECEDCC();
    v7 = sub_1DAED203C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v41[0] = v9;
      *v8 = 136446210;
      v10 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v11 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v12 = sub_1DAD6482C(v10, v11, v41);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1DAD61000, v6, v7, "[%{public}s] Invalidated", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E127F100](v9, -1, -1);
      MEMORY[0x1E127F100](v8, -1, -1);
    }

    result = BSDispatchQueueAssertMain();
    v14 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated;
    if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated))
    {
      return result;
    }

    *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) = 0;
    *(v1 + v14) = 1;
    v15 = v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReason;
    *v15 = 0;
    *(v15 + 8) = 1;
    v16 = sub_1DAECDCEC();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    v17 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReasonDate;
    swift_beginAccess();
    sub_1DAD94438(v4, v1 + v17, &qword_1ECC07CE8, &qword_1DAED6F60);
    swift_endAccess();
    v18 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__cancellables;
    swift_beginAccess();
    v38 = v18;
    v4 = *(v1 + v18);
    if ((v4 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAECEE3C();
      sub_1DAD7D898(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      sub_1DAED1F9C();
      v20 = v41[0];
      v19 = v41[1];
      v21 = v41[2];
      v22 = v41[3];
      v23 = v41[4];
    }

    else
    {
      v24 = -1 << *(v4 + 32);
      v19 = v4 + 56;
      v21 = ~v24;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v23 = v26 & *(v4 + 56);
      swift_bridgeObjectRetain_n();
      v22 = 0;
      v20 = v4;
    }

    v37 = v21;
    for (i = (v21 + 64) >> 6; v20 < 0; v23 = v31)
    {
      v33 = sub_1DAED24BC();
      if (!v33)
      {
        goto LABEL_22;
      }

      v39 = v33;
      sub_1DAECEE3C();
      swift_dynamicCast();
      v30 = v22;
      v31 = v23;
      if (!v40[0])
      {
        goto LABEL_22;
      }

LABEL_20:
      sub_1DAECEE2C();

      v22 = v30;
    }

    v28 = v22;
    v29 = v23;
    v30 = v22;
    if (v23)
    {
LABEL_16:
      v31 = (v29 - 1) & v29;
      v32 = *(*(v20 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));

      if (v32)
      {
        goto LABEL_20;
      }

LABEL_22:
      sub_1DAD70B20(v20);

      *(v1 + v38) = MEMORY[0x1E69E7CD0];

      sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v40);
      v34 = v40[4];
      __swift_project_boxed_opaque_existential_1(v40, v40[3]);
      v35 = *(v34 + 40);
      v36 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID);
      v35(v36);

      return __swift_destroy_boxed_opaque_existential_1Tm(v40);
    }

    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= i)
      {
        goto LABEL_22;
      }

      v29 = *(v19 + 8 * v30);
      ++v28;
      if (v29)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t default argument 0 of LayerSnapshotter.init(renderBoxFormat:coreAnimationFormat:logger:screenshotManager:dataProtectionMonitor:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE00A940 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RBLayer.SnapshotFormat(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE00A948);
  return sub_1DAD93200(v3, a1, type metadata accessor for RBLayer.SnapshotFormat);
}

id default argument 3 of LayerSnapshotter.init(renderBoxFormat:coreAnimationFormat:logger:screenshotManager:dataProtectionMonitor:)()
{
  v0 = [objc_opt_self() sharedManager];

  return v0;
}

uint64_t default argument 1 of LayerSnapshotter.init(renderBoxFormat:coreAnimationFormat:logger:screenshotManager:dataProtectionMonitor:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC07A38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CALayer.SnapshotFormat(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECC09BF0);
  return sub_1DAD93200(v3, a1, type metadata accessor for CALayer.SnapshotFormat);
}

uint64_t default argument 1 of BugReportingObjectCounter.init(maximum:bugReporter:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BugReporter();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for BugReporter;
  *a1 = result;
  return result;
}

void sub_1DADD5988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DAED233C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DADD59E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DADD5A08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1DADD5C10(uint64_t a1, id *a2)
{
  result = sub_1DAED1CCC();
  *a2 = 0;
  return result;
}

uint64_t sub_1DADD5C88(uint64_t a1, id *a2)
{
  v3 = sub_1DAED1CDC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DADD5D08@<X0>(uint64_t *a2@<X8>)
{
  sub_1DAED1CEC();
  v3 = sub_1DAED1CBC();

  *a2 = v3;
  return result;
}

uint64_t sub_1DADD5D4C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1DAECE3EC();
}

uint64_t sub_1DADD5DB8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1DAECE3EC();
}

uint64_t sub_1DADD5E24(uint64_t a1)
{
  v2 = sub_1DAD7D898(&qword_1ECC07EE8, type metadata accessor for LaunchOptionsKey, &unk_1DAED61AC);
  v3 = sub_1DAD7D898(&unk_1ECC07EF0, type metadata accessor for LaunchOptionsKey, &unk_1DAED5AB4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DADD5EE0(uint64_t a1)
{
  v2 = sub_1DAD7D898(&unk_1EE0055D8, type metadata accessor for RBLayerCopyImageKey, &unk_1DAED60FC);
  v3 = sub_1DAD7D898(&qword_1ECC07EE0, type metadata accessor for RBLayerCopyImageKey, &unk_1DAED5DA0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DADD5F9C(uint64_t a1)
{
  v2 = sub_1DAD7D898(&qword_1ECC07EB8, type metadata accessor for FileProtectionType, &unk_1DAED6028);
  v3 = sub_1DAD7D898(&unk_1ECC07EC0, type metadata accessor for FileProtectionType, &unk_1DAED5FC8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DADD6058(uint64_t a1)
{
  v2 = sub_1DAD7D898(&qword_1ECC07B88, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_1DAED540C);
  v3 = sub_1DAD7D898(&unk_1ECC07B90, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_1DAED53B4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DADD6114(uint64_t a1)
{
  v2 = sub_1DAD7D898(&qword_1EE005608, type metadata accessor for FileAttributeKey, &unk_1DAED60B8);
  v3 = sub_1DAD7D898(&unk_1ECC07ED0, type metadata accessor for FileAttributeKey, &unk_1DAED5EB4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DADD61D0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1DAED1CBC();

  *a2 = v3;
  return result;
}

uint64_t sub_1DADD6218(uint64_t a1)
{
  v2 = sub_1DAD7D898(&qword_1EE005568, type metadata accessor for RBDrawableStatisticsKey, &unk_1DAED5748);
  v3 = sub_1DAD7D898(&unk_1ECC07BA0, type metadata accessor for RBDrawableStatisticsKey, &unk_1DAED51CC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DADD64B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DAED294C();
  swift_getWitnessTable();
  sub_1DAECE3FC();
  return sub_1DAED297C();
}

uint64_t sub_1DADD6514()
{
  v0 = sub_1DAED1CEC();
  v1 = MEMORY[0x1E127DA80](v0);

  return v1;
}

uint64_t sub_1DADD6550(uint64_t a1)
{
  sub_1DAED1CEC();
  sub_1DAED1D9C();
}

uint64_t sub_1DADD65A4(uint64_t a1)
{
  sub_1DAED1CEC();
  sub_1DAED294C();
  sub_1DAED1D9C();
  v1 = sub_1DAED297C();

  return v1;
}

uint64_t sub_1DADD6618(void *a1, uint64_t *a2)
{
  v2 = sub_1DAED1CEC();
  v4 = v3;
  if (v2 == sub_1DAED1CEC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DAED289C();
  }

  return v7 & 1;
}

uint64_t sub_1DADD68E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07DF0, &qword_1DAED5870);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for WidgetRendererSession(0);
  v37 = v9;
  v38 = &off_1F56B01E8;
  v36[0] = a1;
  v10 = type metadata accessor for WidgetArchiveEntryAssertion(0);
  v34 = v10;
  v11 = sub_1DAD7D898(&qword_1EE008418, type metadata accessor for WidgetArchiveEntryAssertion, &unk_1DAED7188);
  v35 = v11;
  v33[0] = a2;
  v12 = sub_1DAED157C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DF8, &qword_1DAED5878);
  v13 = swift_allocObject();
  *(v13 + ((*(*v13 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DAD7C48C(v8, v13 + *(*v13 + *MEMORY[0x1E69E6B68] + 16), &qword_1ECC07DF0, &qword_1DAED5870);
  *(a3 + 104) = v13;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  v24 = *v17;
  v25 = *v22;
  v31 = v9;
  v32 = &off_1F56B01E8;
  v29 = v11;
  *&v30 = v24;
  v28 = v10;
  *&v27 = v25;
  sub_1DAD657D8(&v30, a3 + 56);
  *(a3 + 96) = 0;
  sub_1DAD657D8(&v27, a3 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return a3;
}

uint64_t sub_1DADD6C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07DF0, &qword_1DAED5870);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for WidgetRendererSession(0);
  v41 = v11;
  v42 = &off_1F56B01E8;
  v40[0] = a1;
  v12 = type metadata accessor for WidgetArchiveEntryAssertion(0);
  v38 = v12;
  v13 = sub_1DAD7D898(&qword_1EE008418, type metadata accessor for WidgetArchiveEntryAssertion, &unk_1DAED7188);
  v39 = v13;
  v37[0] = a2;
  v14 = sub_1DAED157C();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DF8, &qword_1DAED5878);
  v15 = swift_allocObject();
  *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1DAD7C48C(v10, v15 + *(*v15 + *MEMORY[0x1E69E6B68] + 16), &qword_1ECC07DF0, &qword_1DAED5870);
  *(a4 + 104) = v15;
  if (a3)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (&v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = (&v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  v27 = *v20;
  v28 = *v25;
  v35 = v11;
  v36 = &off_1F56B01E8;
  v33 = v13;
  *&v34 = v27;
  v32 = v12;
  *&v31 = v28;
  sub_1DAD657D8(&v34, a4 + 56);
  *(a4 + 96) = v16;
  sub_1DAD657D8(&v31, a4 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  return a4;
}

uint64_t sub_1DADD7008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = type metadata accessor for WidgetRendererSession(0);
  v24 = &off_1F56B01E8;
  v22[0] = a1;
  v20 = type metadata accessor for WidgetArchiveEntryAssertion(0);
  v21 = sub_1DAD7D898(&qword_1EE008418, type metadata accessor for WidgetArchiveEntryAssertion, &unk_1DAED7188);
  v19[0] = a2;
  type metadata accessor for LiveWidgetEntrySource();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = sub_1DADD6C60(*v10, *v15, a3, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v17;
}

uint64_t sub_1DADD721C(uint64_t a1, uint64_t a2)
{
  v21 = type metadata accessor for WidgetRendererSession(0);
  v22 = &off_1F56B01E8;
  v20[0] = a1;
  v18 = type metadata accessor for WidgetArchiveEntryAssertion(0);
  v19 = sub_1DAD7D898(&qword_1EE008418, type metadata accessor for WidgetArchiveEntryAssertion, &unk_1DAED7188);
  v17[0] = a2;
  type metadata accessor for PlaceholderWidgetEntrySource();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = sub_1DADD68E0(*v8, *v13, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v15;
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

uint64_t sub_1DADD7594(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DADD75B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

id sub_1DADD7B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08080, &qword_1DAED6210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DAED6200;
  *(inited + 32) = sub_1DAED1CEC();
  *(inited + 40) = v11;
  *(inited + 48) = sub_1DADD7D88(a1, a2, v7);
  *(inited + 56) = v12;
  v13 = sub_1DADDC83C(inited);
  swift_setDeallocating();
  sub_1DAD64398(inited + 32, &qword_1ECC08088, &qword_1DAED6218);
  if (a5)
  {
    v14 = sub_1DAED1CEC();
    sub_1DADD7EC0(a4, a5, v14, v15);
  }

  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = sub_1DAED1CBC();
  if (v7)
  {
    if (v7 == 1)
    {
      v18 = 5;
    }

    else
    {
      v18 = qword_1DAED6298[a1];
    }
  }

  else
  {
    v18 = 3;
  }

  sub_1DADDC950(a1, a2, v7);
  sub_1DADD862C(v13);

  v19 = sub_1DAED1C0C();

  v20 = [v16 initWithDomain:v17 code:v18 userInfo:v19];

  return v20;
}

unint64_t sub_1DADD7D88(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1DAED256C();

    v5 = 0xD000000000000017;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_1DAED256C();

    v5 = 0xD000000000000027;
LABEL_5:
    v8 = v5;
    MEMORY[0x1E127DA50](a1, a2);
    return v8;
  }

  if (a1 ^ 1 | a2)
  {
    v7 = 0xD000000000000025;
  }

  else
  {
    v7 = 0xD00000000000001DLL;
  }

  if (a1 | a2)
  {
    return v7;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1DADD7EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1DADDA908(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1DADBFD3C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1DADDB704();
        v16 = v18;
      }

      result = sub_1DADD9BD0(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1DADD7FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1DAD7FBFC(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1DAED0DDC();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1DAD805B0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1DADDB9D8();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1DAED0DDC();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1DADD9D80(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1DAED0DDC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1DADD8188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08108, &unk_1DAEDF840);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1DAD64398(a1, &qword_1ECC08108, &unk_1DAEDF840);
    sub_1DAEB90B8(a2, a3, v9);

    return sub_1DAD64398(v9, &qword_1ECC08108, &unk_1DAEDF840);
  }

  else
  {
    sub_1DADDCE6C(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1DADDAA90(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1DADD8350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1DADDAC00(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1DADBFD3C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1DADDBEA0();
        v14 = v16;
      }

      result = sub_1DADDA2A4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1DADD8448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1DADDAD78(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1DAECB0A8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1DADDC00C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1DADDA454(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

unint64_t sub_1DADD862C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08098, &qword_1DAED6228);
    v2 = sub_1DAED279C();
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_1DADDC968(&v22, v24);
        sub_1DADDC968(v24, v25);
        sub_1DADDC968(v25, &v23);
        result = sub_1DADBFD3C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_1DADDC968(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1DADDC968(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1DADD8884(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08090, &qword_1DAED6220);
  v38 = v4;
  v6 = sub_1DAED277C();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_1DAED294C();
      sub_1DAED1D9C();
      v28 = sub_1DAED297C();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1DADD8B44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08110, &qword_1DAED6288);
  v41 = v4;
  v8 = sub_1DAED277C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
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
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        sub_1DADDCE6C(v28, v42);
      }

      else
      {
        sub_1DAD6495C(v28, v42, &qword_1ECC07CD0, &qword_1DAED6560);
      }

      sub_1DAED294C();
      sub_1DAED1D9C();
      v29 = sub_1DAED297C();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_1DADDCE6C(v42, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1DADD8E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v36 - v7;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080D0, &qword_1DAED6258);
  v41 = v4;
  v9 = sub_1DAED277C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v45 = v5;
    v37 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v8;
    v40 = v6;
    v43 = (v6 + 32);
    v17 = v9 + 64;
    v18 = v42;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v44 = *(v40 + 72);
      v25 = v24 + v44 * v23;
      if (v41)
      {
        (*v43)(v18, v25, v45);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v38)(v18, v25, v45);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_1DADDCE08();
      v27 = sub_1DAED1C5C();
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v18 = v42;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v18 = v42;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v43)((*(v10 + 48) + v44 * v19), v18, v45);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1DADD924C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080F0, &qword_1DAED6278);
  v35 = v4;
  v6 = sub_1DAED277C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1DADDC968(v22, v36);
      }

      else
      {
        sub_1DAD642F8(v22, v36);
        v23 = v21;
      }

      sub_1DAED1CEC();
      sub_1DAED294C();
      sub_1DAED1D9C();
      v24 = sub_1DAED297C();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_1DADDC968(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
}

void sub_1DADD951C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080C8, &qword_1DAED6250);
  v32 = v4;
  v6 = sub_1DAED277C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v5;
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
      }

      sub_1DAED294C();
      sub_1DAED1D9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      sub_1DADDCE08();
      sub_1DAED1C6C();
      v22 = sub_1DAED297C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v31;
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1DADD97F4(unint64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v5 = a1;
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_1DAED23EC();
    v5 = a1;
    v13 = (v12 + 1) & v11;
    v14 = *(v4 + 72);
    v37 = a2 + 64;
    do
    {
      v39 = v5;
      v15 = v14;
      v16 = v14 * v10;
      sub_1DADAB8DC(*(a2 + 48) + v14 * v10, v7);
      v17 = a2;
      sub_1DAED294C();
      v18 = v13;
      sub_1DAECDCEC();
      sub_1DAD888A8(&qword_1EE00A6F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1DAED1C6C();
      sub_1DAED157C();
      sub_1DAD888A8(&qword_1EE005720, MEMORY[0x1E6985700], MEMORY[0x1E6985710]);
      sub_1DAED1C6C();
      v19 = v11;
      v21 = v7[3];
      v20 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v21);
      v22 = *(v20 + 24);
      v23 = v20;
      v11 = v19;
      v13 = v18;
      v22(&v40, v21, v23);
      MEMORY[0x1E127E5D0](v40);
      v24 = sub_1DAED297C();
      sub_1DADAB9A4(v7);
      v5 = v39;
      v25 = v24 & v11;
      if (v39 >= v18)
      {
        if (v25 < v18)
        {
          v8 = v37;
          v14 = v15;
          a2 = v17;
          goto LABEL_4;
        }

        v14 = v15;
        a2 = v17;
        if (v39 >= v25)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = v15;
        a2 = v17;
        if (v25 >= v13 || v39 >= v25)
        {
LABEL_11:
          if (v14 * v39 < v16 || *(a2 + 48) + v14 * v39 >= (*(a2 + 48) + v16 + v14))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v14 * v39 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = *(a2 + 56);
          v27 = *(*(sub_1DAED19AC() - 8) + 72);
          v28 = v27 * v39;
          v29 = v26 + v27 * v39;
          v30 = v27 * v10;
          v31 = v26 + v27 * v10 + v27;
          v32 = v28 < v30 || v29 >= v31;
          v8 = v37;
          if (v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v10;
          }

          else
          {
            v5 = v10;
            if (v28 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      v8 = v37;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_1DADD9BD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DAED23EC() + 1) & ~v5;
    do
    {
      sub_1DAED294C();

      sub_1DAED1D9C();
      v9 = sub_1DAED297C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DADD9D80(int64_t a1, uint64_t a2)
{
  v38 = sub_1DAED0DDC();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1DAED23EC();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1DAD888A8(&qword_1EE0057E0, MEMORY[0x1E6993D98], MEMORY[0x1E6993DA0]);
      v22 = sub_1DAED1C5C();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

unint64_t sub_1DADDA0A0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DAED23EC() + 1) & ~v5;
    while (1)
    {
      sub_1DAED294C();

      sub_1DAED1D9C();
      v9 = sub_1DAED297C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

  return result;
}

uint64_t sub_1DADDA2A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DAED23EC() + 1) & ~v5;
    do
    {
      sub_1DAED294C();

      sub_1DAED1D9C();
      v9 = sub_1DAED297C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1DADDA454(int64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_1DAED23EC();
    v13 = v11;
    v37 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = *(v14 + 56);
    v35 = (v14 - 8);
    v36 = v15;
    do
    {
      v16 = v8;
      v17 = v38 * v10;
      v18 = v13;
      v19 = v14;
      v36(v7, *(a2 + 48) + v38 * v10, v4);
      sub_1DADDCE08();
      v20 = sub_1DAED1C5C();
      (*v35)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v37)
      {
        if (v21 >= v37 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v38 * a1;
          v26 = v24 + v17 + v38;
          v27 = v38 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v38 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v37 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }
}

void sub_1DADDA714(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DAED23EC() + 1) & ~v5;
    do
    {
      sub_1DAED294C();

      sub_1DAED1D9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      sub_1DADDCE08();
      sub_1DAED1C6C();
      v9 = sub_1DAED297C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

uint64_t sub_1DADDA908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DADBFD3C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1DADD8884(v18, a5 & 1);
      v13 = sub_1DADBFD3C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1DAED28FC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1DADDB704();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_1DADDAA90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DADBFD3C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1DADDBC58();
      goto LABEL_7;
    }

    sub_1DADD8B44(v15, a4 & 1);
    v22 = sub_1DADBFD3C(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1DAED28FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560) - 8) + 72) * v12;

    return sub_1DADDCEDC(a1, v20);
  }

LABEL_13:
  sub_1DADDB1EC(v12, a2, a3, a1, v18);
}

uint64_t sub_1DADDAC00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DADBFD3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DADBFE6C(v16, a4 & 1);
      v11 = sub_1DADBFD3C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1DAED28FC();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1DADDBEA0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1DADDAD78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = *v3;
  v14 = sub_1DAECB0A8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1DADDC00C();
      goto LABEL_7;
    }

    sub_1DADD8E98(v17, a3 & 1);
    v21 = sub_1DAECB0A8(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1DADDB2D8(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1DAED28FC();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

_OWORD *sub_1DADDAF4C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1DAECB8D4();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1DADDC294();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1DADD924C(v13, a3 & 1);
    v8 = sub_1DAECB8D4();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for RBLayerCopyImageKey(0);
      result = sub_1DAED28FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);

    return sub_1DADDC968(a1, v19);
  }

  else
  {
    sub_1DADDB39C(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1DADDB08C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DAECB350(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1DADD951C(v14, a3 & 1);
      v9 = sub_1DAECB350(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for ActivityRendererSessionKey(0);
        sub_1DAED28FC();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1DADDC414();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v21;
}

uint64_t sub_1DADDB1EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  result = sub_1DADDCE6C(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

unint64_t sub_1DADDB290(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1DADDB2D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1DADDB39C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1DADDC968(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void sub_1DADDB404()
{
  v1 = v0;
  v2 = sub_1DAED19AC();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B8, &qword_1DAED6240);
  v7 = *v0;
  v8 = sub_1DAED276C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || v10 >= &v11[8 * v12])
    {
      memmove(v10, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = *(v36 + 72) * v23;
        sub_1DADAB8DC(*(v7 + 48) + v24, v19);
        v26 = v38;
        v25 = v39;
        v27 = *(v39 + 72) * v23;
        v28 = v37;
        (*(v39 + 16))(v37, *(v7 + 56) + v27, v38);
        v29 = v40;
        sub_1DADAB940(v19, *(v40 + 48) + v24);
        (*(v25 + 32))(*(v29 + 56) + v27, v28, v26);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

void sub_1DADDB704()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08090, &qword_1DAED6220);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void sub_1DADDB87C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080D8, &qword_1DAED6260);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

void sub_1DADDB9D8()
{
  v1 = v0;
  v33 = sub_1DAED0DDC();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080C0, &qword_1DAED6248);
  v3 = *v0;
  v4 = sub_1DAED276C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1DADDBC58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08110, &qword_1DAED6288);
  v4 = *v0;
  v5 = sub_1DAED276C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1DAD6495C(*(v4 + 56) + v26, v30, &qword_1ECC07CD0, &qword_1DAED6560);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1DADDCE6C(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    v6 = v32;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1DADDBEA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080A8, &qword_1DAED6238);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

        v22 = v20;
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
}

void sub_1DADDC00C()
{
  v1 = v0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080D0, &qword_1DAED6258);
  v3 = *v0;
  v4 = sub_1DAED276C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1DADDC294()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080F0, &qword_1DAED6278);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_1DAD642F8(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1DADDC968(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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
}

void sub_1DADDC414()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080C8, &qword_1DAED6250);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void sub_1DADDC578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9A0, qword_1DAEDF120);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v21 = v19;
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
}

void sub_1DADDC6D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9B0, &unk_1DAEDF140);
  v2 = *v0;
  v3 = sub_1DAED276C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
}

unint64_t sub_1DADDC83C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08090, &qword_1DAED6220);
    v3 = sub_1DAED279C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DADBFD3C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DADDC950(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

_OWORD *sub_1DADDC968(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1DADDC978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080E0, &qword_1DAED6268);
    v3 = sub_1DAED279C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAD6495C(v4, &v11, &qword_1ECC080E8, &qword_1DAED6270);
      v5 = v11;
      result = sub_1DAECB1C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DADDC968(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1DADDCAA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08118, qword_1DAEDB610);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08120, &qword_1DAED6290);
  v7 = sub_1DAED279C();
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = *(v3 + 72);
  v25 = *(v2 + 48);
  v26 = v9;

  sub_1DAD6495C(a1 + v8, v5, &qword_1ECC08118, qword_1DAEDB610);
  v10 = sub_1DAECB27C(v5);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  v24 = sub_1DAECFB8C();
  v13 = *(v24 - 8);
  v14 = *(v13 + 32);
  v15 = *(v13 + 72);
  v16 = a1 + v26 + v8;
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v14(v7[6] + v15 * v12, v5, v24);
    result = memmove((v7[7] + 80 * v12), &v5[v25], 0x50uLL);
    v18 = v7[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v7[2] = v20;
    if (!--v6)
    {
      goto LABEL_8;
    }

    v21 = v16 + v26;
    sub_1DAD6495C(v16, v5, &qword_1ECC08118, qword_1DAEDB610);
    v12 = sub_1DAECB27C(v5);
    v16 = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DADDCCE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080F8, &qword_1DAED6280);
    v3 = sub_1DAED279C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAD6495C(v4, &v11, &qword_1ECC08100, &qword_1DAEDF4D0);
      v5 = v11;
      result = sub_1DAECB8D4();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DADDC968(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DADDCE08()
{
  result = qword_1EE00AB58;
  if (!qword_1EE00AB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0A9C0, &unk_1DAED8030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00AB58);
  }

  return result;
}

uint64_t sub_1DADDCE6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADDCEDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1DADDCF4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Application();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DADDCF80(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_1EE00AC58 != -1)
  {
    swift_once();
  }

  v7 = sub_1DAECEDEC();
  __swift_project_value_buffer(v7, qword_1EE011B70);

  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED203C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1DAD6482C(a2, a3, v13);
    _os_log_impl(&dword_1DAD61000, v8, v9, "%{public}s: Received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E127F100](v11, -1, -1);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  result = swift_beginAccess();
  *(a4 + 16) = 0;
  return result;
}

double sub_1DADDD0EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_1DADDD140()
{
  sub_1DAD64398(v0 + 16, &qword_1ECC08380, &unk_1DAED6590);
  sub_1DAD64398(v0 + 56, &unk_1ECC0A170, &qword_1DAED6440);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t sub_1DADDD1C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1DADDD228()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

id sub_1DADDD278()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithScale:0 colorGamut:v2];
  qword_1ECC08130 = result;
  return result;
}

id static CHSWidgetDisplayProperties.default.getter()
{
  if (qword_1ECC07950 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC08130;

  return v1;
}

uint64_t sub_1DADDD4D0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v68 = a3;
  v69 = a5;
  v70 = a1;
  v66 = sub_1DAED208C();
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1DAED20DC();
  v58 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v63 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAED0A3C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DAECEDEC();
  v73 = *(v13 - 8);
  v74 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DAED0FBC();
  v75 = *(v15 - 8);
  v76 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DAED18CC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89[3] = sub_1DAECE6CC();
  v89[4] = sub_1DAD88900(qword_1EE00AC78, MEMORY[0x1E6994480], MEMORY[0x1E6994478]);
  v89[0] = a2;
  v22 = type metadata accessor for ActivityRendererClient(0);
  v88[3] = v22;
  v88[4] = sub_1DAD88900(&qword_1EE008C88, type metadata accessor for ActivityRendererClient, &unk_1DAEDD730);
  v88[0] = v68;
  v87[3] = sub_1DAED143C();
  v87[4] = MEMORY[0x1E6993F50];
  v87[0] = v69;
  v85 = v22;
  v86 = sub_1DAD88900(&qword_1EE008C60, type metadata accessor for ActivityRendererClient, &unk_1DAEDD7D8);
  v84[0] = v70;
  v70 = a6;
  *(a6 + 224) = MEMORY[0x1E69E7CD0];
  a6 += 224;
  v68 = (a6 - 208);
  sub_1DAD648F8(v84, a6 - 208);
  sub_1DAD648F8(v89, a6 - 160);
  sub_1DAD648F8(v88, a6 - 120);
  v23 = a6 - 80;
  v69 = a4;
  sub_1DAD648F8(a4, a6 - 80);
  v62 = a6;
  sub_1DAD648F8(v87, a6 - 40);
  v24 = sub_1DAED13AC();
  v25 = *MEMORY[0x1E6985998];
  v61 = v19;
  v26 = *(v19 + 104);
  v64 = v18;
  v55 = v26;
  v56 = v19 + 104;
  v26(v21, v25, v18);
  v27 = v85;
  v28 = v86;
  v29 = __swift_project_boxed_opaque_existential_1(v84, v85);
  v83[3] = v27;
  v83[4] = *(v28 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v29, v27);
  v60 = v21;
  v31 = sub_1DAED139C();
  v32 = sub_1DAED125C();
  v33 = sub_1DAED124C();
  sub_1DAD648F8(v87, v83);
  v82[3] = v32;
  v82[4] = MEMORY[0x1E6993EF0];
  v82[0] = v33;
  v81[3] = v24;
  v81[4] = MEMORY[0x1E6993F30];
  v81[0] = v31;
  v67 = v33;

  sub_1DAED0F2C();
  v34 = v17;
  sub_1DAED0F9C();
  if (qword_1EE005DD8 != -1)
  {
    swift_once();
  }

  v35 = v74;
  v36 = __swift_project_value_buffer(v74, qword_1EE011688);
  v37 = v72;
  v38 = *(v73 + 16);
  v38(v72, v36, v35);
  sub_1DAD648F8(v89, v83);
  sub_1DAD648F8(v88, v82);
  sub_1DAD648F8(v23, v81);
  v39 = v76;
  v80[3] = v76;
  v80[4] = MEMORY[0x1E6993E70];
  v40 = __swift_allocate_boxed_opaque_existential_1(v80);
  v41 = *(v75 + 16);
  v57 = v34;
  v41(v40, v34, v39);
  v79[3] = v24;
  v79[4] = MEMORY[0x1E6993F30];
  v79[0] = v31;
  type metadata accessor for ActivityArchiveServiceStore(0);
  v42 = swift_allocObject();
  v43 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock;
  type metadata accessor for UnfairLock();
  v44 = swift_allocObject();
  swift_retain_n();
  v45 = swift_slowAlloc();
  *v45 = 0;
  *(v44 + 16) = v45;
  *&v42[v43] = v44;
  *&v42[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage] = MEMORY[0x1E69E7CC8];
  *&v42[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__subscriptions] = MEMORY[0x1E69E7CD0];
  *(v42 + 3) = 0x6974697669746361;
  *(v42 + 4) = 0xEA00000000007365;
  v38(&v42[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__logger], v37, v35);
  v54 = sub_1DAD84C40();
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000036, 0x80000001DAEE0A70);
  MEMORY[0x1E127DA50](0x6974697669746361, 0xEA00000000007365);
  sub_1DAED0A0C();
  (*(v58 + 104))(v63, *MEMORY[0x1E69E8098], v71);
  v77 = MEMORY[0x1E69E7CC0];
  sub_1DAD88900(&qword_1EE00AA50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3F0, &qword_1DAED6480);
  v71 = v31;
  sub_1DAD64B94(&unk_1EE00AA90, &unk_1ECC0A3F0, &qword_1DAED6480, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  *(v42 + 2) = sub_1DAED210C();
  sub_1DAD648F8(v83, &v42[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__environmentFactory]);
  sub_1DAD648F8(v82, &v42[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__descriptorProvider]);
  sub_1DAD648F8(v79, &v42[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider]);
  sub_1DAD648F8(v81, &v42[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor]);
  v46 = v64;
  v55(&v42[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_currentDataProtectionLevel], *MEMORY[0x1E6985988], v64);
  sub_1DAD648F8(v80, &v42[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__cacheReader]);
  v47 = &v42[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor];
  __swift_project_boxed_opaque_existential_1(&v42[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor], *&v42[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor + 24]);
  v48 = v60;
  sub_1DAED127C();
  v49 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_currentDataProtectionLevel;
  swift_beginAccess();
  (*(v61 + 40))(&v42[v49], v48, v46);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(v47, *(v47 + 3));
  v77 = sub_1DAED126C();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08870, &qword_1DAED6488);
  v50 = MEMORY[0x1E695BED8];
  sub_1DAD64B94(&qword_1EE00AC08, &unk_1ECC08870, &qword_1DAED6488, MEMORY[0x1E695BED8]);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  (*(v73 + 8))(v72, v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  v51 = v70;
  *(v70 + 56) = v42;
  v52 = v68;
  __swift_project_boxed_opaque_existential_1(v68, *(v51 + 40));
  v83[0] = sub_1DAED0F8C();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08178, &qword_1DAED6490);
  sub_1DAD64B94(&qword_1EE005C68, &qword_1ECC08178, &qword_1DAED6490, v50);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(v52, *(v51 + 40));
  v83[0] = sub_1DAE7E950();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08180, &qword_1DAED6498);
  sub_1DAD64B94(&qword_1EE005CD8, &qword_1ECC08180, &qword_1DAED6498, v50);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  (*(v75 + 8))(v57, v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  __swift_destroy_boxed_opaque_existential_1Tm(v88);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  return v51;
}

void sub_1DADDE1D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityRendererClient(0);
  v5 = [objc_allocWithZone(v4) init];
  v2[2] = v5;
  sub_1DAECE6CC();
  v42 = v4;
  v43 = sub_1DAD88900(&unk_1EE008C90, type metadata accessor for ActivityRendererClient, &unk_1DAEDD7A0);
  *&aBlock = v5;
  v6 = v5;
  v2[3] = sub_1DAECE6AC();
  sub_1DAED143C();
  v7 = *(a1 + 96);
  v42 = sub_1DAED140C();
  v43 = MEMORY[0x1E6993F48];
  *&aBlock = v7;

  v8 = sub_1DAED0F2C();
  v39 = MEMORY[0x1E127D090](0xD000000000000010, 0x80000001DAEE0A30, &aBlock, v8);
  v10 = v2[2];
  v9 = v2[3];
  sub_1DAD648F8(a1 + 104, &aBlock);
  v48 = v4;
  v38 = sub_1DAD88900(&qword_1EE008C60, type metadata accessor for ActivityRendererClient, &unk_1DAEDD7D8);
  v49 = v38;
  *&v47 = v10;
  type metadata accessor for ActivityArchiveService();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(&v47, v4);
  v13 = *(v4 - 1);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v37 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = (&v36 - v37);
  v36 = *(v13 + 16);
  v36(&v36 - v37, v15);
  v17 = *v16;
  v18 = v10;

  v19 = v39;

  v20 = sub_1DADDD4D0(v17, v9, v18, &aBlock, v19, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(&v47);
  v2[9] = v20;
  v21 = v2[2];
  sub_1DAD648F8(a1 + 144, &aBlock);
  sub_1DAD648F8(a1 + 104, &v47);

  v22 = v21;

  sub_1DAECE6BC();

  v23 = v38;
  v45[3] = v4;
  v45[4] = v38;
  v45[0] = v22;
  v24 = type metadata accessor for _DefaultActivityRendererSessionFactory();
  v25 = swift_allocObject();
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v45, v4);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = (&v36 - v37);
  v36(&v36 - v37, v27);
  v29 = *v28;
  v25[5] = v4;
  v25[6] = v23;
  v25[2] = v29;
  v25[7] = v20;
  sub_1DAD657D8(&aBlock, (v25 + 8));
  sub_1DAD657D8(&v47, (v25 + 13));
  sub_1DAD657D8(&v46, (v25 + 18));
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  v2[7] = v24;
  v2[8] = &off_1F56B36D8;
  v2[4] = v25;
  v30 = v2[2];
  v31 = *&v30[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1DADDE6B8;
  *(v33 + 24) = v32;
  v43 = sub_1DAD93D04;
  v44 = v33;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v41 = sub_1DAD93EDC;
  v42 = &block_descriptor_0;
  v34 = _Block_copy(&aBlock);
  v35 = v30;

  dispatch_sync(v31, v34);
  _Block_release(v34);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }
}

id sub_1DADDE7D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DADDE808()
{
  result = [objc_opt_self() chs_isWatchFacesWidgetRendererProcess];
  byte_1ECC08188 = result;
  return result;
}

id sub_1DADDE884()
{
  sub_1DADE41FC();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DADDEA00(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1DAD7D8E0(a2);
  }
}

void sub_1DADDEA5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DAECF0AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v16 = sub_1DAECEDEC();
    __swift_project_value_buffer(v16, qword_1EE011748);
    v17 = a3;
    v18 = v15;
    v19 = sub_1DAECEDCC();
    v20 = sub_1DAED203C();

    if (os_log_type_enabled(v19, v20))
    {
      v44 = v7;
      v45 = v5;
      v46 = v10;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48[0] = v22;
      *v21 = 136446466;
      v23 = *&v18[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v23)
      {
        v24 = (v23 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v25 = *v24;
        v26 = v24[1];
      }

      else
      {
        v27 = v17;
        v43 = v13;
        v28 = v4;
        v29 = v27;
        v25 = sub_1DAD8CE78(v27);
        v26 = v30;

        v4 = v28;
        v13 = v43;
      }

      v31 = sub_1DAD6482C(v25, v26, v48);

      *(v21 + 4) = v31;
      *(v21 + 12) = 2082;
      v47 = [v17 colorScheme];
      type metadata accessor for CHSColorScheme(0);
      v32 = sub_1DAED1D4C();
      v34 = sub_1DAD6482C(v32, v33, v48);

      *(v21 + 14) = v34;
      _os_log_impl(&dword_1DAD61000, v19, v20, "[%{public}s] Widget color scheme changed to: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v22, -1, -1);
      MEMORY[0x1E127F100](v21, -1, -1);

      v5 = v45;
      v10 = v46;
      v7 = v44;
    }

    else
    {
    }

    sub_1DAD83EA8(v17);
    v35 = *&v18[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (!v35 || (v36 = *(v35 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController)) == 0)
    {

      return;
    }

    v37 = *(v36 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

    v38 = [v17 colorScheme];
    if (v38 == 1)
    {
      v39 = MEMORY[0x1E697DBB8];
    }

    else
    {
      if (v38 != 2)
      {
        v40 = 1;
        goto LABEL_19;
      }

      v39 = MEMORY[0x1E697DBA8];
    }

    (*(v5 + 104))(v7, *v39, v4);
    (*(v5 + 32))(v13, v7, v4);
    v40 = 0;
LABEL_19:
    (*(v5 + 56))(v13, v40, 1, v4);
    v41 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme;
    swift_beginAccess();
    sub_1DAD6495C(v37 + v41, v10, &qword_1ECC08370, &unk_1DAED6580);
    swift_beginAccess();
    sub_1DAD901C4(v13, v37 + v41, &qword_1ECC08370, &unk_1DAED6580);
    swift_endAccess();
    sub_1DAD99B74(v10);

    sub_1DAD64398(v10, &qword_1ECC08370, &unk_1DAED6580);
    sub_1DAD64398(v13, &qword_1ECC08370, &unk_1DAED6580);
  }
}

void sub_1DADDEF38(uint64_t a1, uint64_t a2, void *a3, SEL *a4, char *a5, void *a6, void (*a7)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v14 = sub_1DAECEDEC();
    __swift_project_value_buffer(v14, qword_1EE011748);
    v15 = a3;
    v16 = v13;
    v17 = sub_1DAECEDCC();
    v18 = sub_1DAED203C();

    if (os_log_type_enabled(v17, v18))
    {
      format = a5;
      v38 = a4;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39[0] = v20;
      *v19 = 136446466;
      v21 = *&v16[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v21)
      {
        v22 = (v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v24 = *v22;
        v23 = v22[1];
      }

      else
      {
        v36 = a6;
        v25 = a7;
        v26 = v15;
        v24 = sub_1DAD8CE78(v26);
        v23 = v27;

        a7 = v25;
        a6 = v36;
      }

      v28 = sub_1DAD6482C(v24, v23, v39);

      *(v19 + 4) = v28;
      *(v19 + 12) = 1026;
      a4 = v38;
      v29 = [v15 *v38];

      *(v19 + 14) = v29;
      _os_log_impl(&dword_1DAD61000, v17, v18, format, v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E127F100](v20, -1, -1);
      MEMORY[0x1E127F100](v19, -1, -1);
    }

    else
    {
    }

    sub_1DAD83EA8(v15);
    v30 = *&v16[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v30)
    {
      v31 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

        v33 = [v15 *a4];
        v34 = *a6;
        swift_beginAccess();
        v35 = *(v32 + v34);
        *(v32 + v34) = v33;
        a7(v35);
      }
    }
  }
}

void sub_1DADDF1F8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29[0] = v13;
      *v11 = 136446466;
      v14 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v14)
      {
        v15 = (v14 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v17 = *v15;
        v16 = v15[1];
      }

      else
      {
        v18 = v7;
        v17 = sub_1DAD8CE78(v18);
        v16 = v19;
      }

      v20 = sub_1DAD6482C(v17, v16, v29);

      *(v11 + 4) = v20;
      *(v11 + 12) = 2114;
      v21 = [v7 tintParameters];
      *(v11 + 14) = v21;
      *v12 = v21;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget tint parameters changed: %{public}@", v11, 0x16u);
      sub_1DAD64398(v12, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    v22 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v23)
      {
        v24 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

        v25 = [v7 tintParameters];
        v26 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
        swift_beginAccess();
        v27 = *(v24 + v26);
        *(v24 + v26) = v25;
        v28 = v25;
        sub_1DAD95C3C(v27);

        v8 = v27;
      }
    }
  }
}

void sub_1DADDF4DC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27[0] = v12;
      *v11 = 136446466;
      v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v16 = *v14;
        v15 = v14[1];
      }

      else
      {
        v17 = v7;
        v16 = sub_1DAD8CE78(v17);
        v15 = v18;
      }

      v19 = sub_1DAD6482C(v16, v15, v27);

      *(v11 + 4) = v19;
      *(v11 + 12) = 2050;
      v20 = [v7 widgetPriority];

      *(v11 + 14) = v20;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget priority changed: %{public}lu", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    sub_1DAD83970(v7);
    v21 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v21 && (v22 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController)) != 0)
    {
      v23 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v24 = [v7 widgetPriority];

      v25 = v24 == 1;
      v26 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference;
      swift_beginAccess();
      *(v23 + v26) = v25;
    }

    else
    {
    }
  }
}

void sub_1DADDF788(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136446466;
      v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v16 = *v14;
        v15 = v14[1];
      }

      else
      {
        v17 = v7;
        v16 = sub_1DAD8CE78(v17);
        v15 = v18;
      }

      v19 = sub_1DAD6482C(v16, v15, &v23);

      *(v11 + 4) = v19;
      *(v11 + 12) = 1026;
      v20 = [v7 isInteractionDisabled];

      *(v11 + 14) = v20;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget interaction disabled changed: %{BOOL,public}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v21 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v21)
    {
      if (*(v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController))
      {

        v22 = [v7 isInteractionDisabled];
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v23) = v22;
        sub_1DAECEF4C();
      }
    }
  }
}

void sub_1DADDFA20(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31[0] = v13;
      *v11 = 136446466;
      v14 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v14)
      {
        v15 = (v14 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v17 = *v15;
        v16 = v15[1];
      }

      else
      {
        v18 = v7;
        v17 = sub_1DAD8CE78(v18);
        v16 = v19;
      }

      v20 = sub_1DAD6482C(v17, v16, v31);

      *(v11 + 4) = v20;
      *(v11 + 12) = 2114;
      v21 = [v7 renderScheme];
      *(v11 + 14) = v21;
      *v12 = v21;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget renderScheme changed: %{public}@", v11, 0x16u);
      sub_1DAD64398(v12, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    sub_1DAD83EA8(v7);
    v22 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v22)
    {
      v23 = *&v22[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
      if (v23)
      {
        v24 = *&v23[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
        v25 = v22;
        v26 = v23;

        v27 = [v7 renderScheme];
        v28 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
        swift_beginAccess();
        v29 = *(v24 + v28);
        *(v24 + v28) = v27;
        v30 = v27;
        sub_1DAD9A058(v29);

        v8 = v29;
      }
    }
  }
}

void sub_1DADDFD28(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 supportedColorSchemes];
    v6 = NSStringFromCHSColorSchemes();
    v7 = sub_1DAED1CEC();
    v9 = v8;

    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v10 = sub_1DAECEDEC();
    __swift_project_value_buffer(v10, qword_1EE011748);
    v11 = v5;
    v12 = a3;

    v13 = sub_1DAECEDCC();
    v14 = sub_1DAED203C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446466;
      v17 = *&v11[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v17)
      {
        v18 = (v17 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v20 = *v18;
        v19 = v18[1];
      }

      else
      {
        v25 = v7;
        v21 = v12;
        v20 = sub_1DAD8CE78(v21);
        v19 = v22;

        v7 = v25;
      }

      v23 = sub_1DAD6482C(v20, v19, &v26);

      *(v15 + 4) = v23;
      *(v15 + 12) = 2082;
      v24 = sub_1DAD6482C(v7, v9, &v26);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_1DAD61000, v13, v14, "[%{public}s] Supported color schemes changed: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v16, -1, -1);
      MEMORY[0x1E127F100](v15, -1, -1);
    }

    else
    {
    }

    sub_1DAD83EA8(v12);
  }
}

void sub_1DADDFFA0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a3 supportedRenderSchemes];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1DAD674D4(0, &unk_1EE005598, 0x1E6994420);
      v9 = sub_1DAED1E7C();

      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v10 = sub_1DAECEDEC();
      __swift_project_value_buffer(v10, qword_1EE011748);
      v11 = v5;
      v12 = a3;

      v13 = sub_1DAECEDCC();
      v14 = sub_1DAED203C();

      if (!os_log_type_enabled(v13, v14))
      {

LABEL_19:

        sub_1DAD83EA8(a3);
        return;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v43 = v16;
      *v15 = 136446466;
      v17 = *&v11[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v17)
      {
        v18 = (v17 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v20 = *v18;
        v19 = v18[1];
      }

      else
      {
        v42 = v8;
        v31 = v12;
        v20 = sub_1DAD8CE78(v31);
        v19 = v32;

        v8 = v42;
      }

      v33 = sub_1DAD6482C(v20, v19, &v43);

      *(v15 + 4) = v33;
      *(v15 + 12) = 2082;
      v34 = MEMORY[0x1E127DB00](v9, v8);
      v36 = v35;

      v37 = sub_1DAD6482C(v34, v36, &v43);

      *(v15 + 14) = v37;
      _os_log_impl(&dword_1DAD61000, v13, v14, "[%{public}s] Supported render schemes changed: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v16, -1, -1);
      v38 = v15;
    }

    else
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v21 = sub_1DAECEDEC();
      __swift_project_value_buffer(v21, qword_1EE011748);
      v22 = v5;
      v23 = a3;
      v13 = sub_1DAECEDCC();
      v24 = sub_1DAED203C();

      if (!os_log_type_enabled(v13, v24))
      {
        goto LABEL_19;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136446210;
      v27 = *&v22[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v27)
      {
        v28 = (v27 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v30 = *v28;
        v29 = v28[1];
      }

      else
      {
        v39 = v23;
        v30 = sub_1DAD8CE78(v39);
        v29 = v40;
      }

      v41 = sub_1DAD6482C(v30, v29, &v43);

      *(v25 + 4) = v41;
      _os_log_impl(&dword_1DAD61000, v13, v24, "[%{public}s] Supported render schemes changed to nil", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1E127F100](v26, -1, -1);
      v38 = v25;
    }

    MEMORY[0x1E127F100](v38, -1, -1);
    goto LABEL_19;
  }
}

void sub_1DADE03AC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136446466;
      v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v16 = *v14;
        v15 = v14[1];
      }

      else
      {
        v17 = v7;
        v16 = sub_1DAD8CE78(v17);
        v15 = v18;
      }

      v19 = sub_1DAD6482C(v16, v15, &v27);

      *(v11 + 4) = v19;
      *(v11 + 12) = 2082;
      [v7 clipBehavior];
      v20 = NSStringFromCHSWidgetClipBehavior();
      v21 = sub_1DAED1CEC();
      v23 = v22;

      v24 = sub_1DAD6482C(v21, v23, &v27);

      *(v11 + 14) = v24;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget clipBehavior changed: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    v25 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v25)
    {
      if (*(v25 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController))
      {

        v26 = [v7 clipBehavior] == 1;
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v27) = v26;
        sub_1DAECEF4C();
      }
    }
  }
}

double sub_1DADE0678(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [a3 _FBSScene];
    v10 = [v9 settings];

    v11 = [v10 displayConfiguration];
    if (v11)
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithDisplayConfiguration_];
      if ([v11 isCarDisplay])
      {
        v13 = 1;
      }

      else
      {
        v13 = [v11 isCarInstrumentsDisplay];
      }

      v15 = [v11 identity];
      v14 = [v15 isContinuityDisplay];
    }

    else
    {
      v14 = 0;
      v13 = 0;
      v12 = 0;
    }

    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v16 = sub_1DAECEDEC();
    __swift_project_value_buffer(v16, qword_1EE011748);
    v17 = v12;
    v18 = v8;
    v19 = a4;
    v20 = sub_1DAECEDCC();
    v21 = sub_1DAED203C();

    if (os_log_type_enabled(v20, v21))
    {
      v45 = v12;
      v46 = v19;
      v44 = v14;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47[0] = v24;
      *v22 = 136446466;
      v25 = *&v18[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v25)
      {
        v26 = (v25 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v27 = *v26;
        v28 = v26[1];
      }

      else
      {
        v43 = v13;
        v29 = v46;
        v27 = sub_1DAD8CE78(v29);
        v28 = v30;

        v13 = v43;
      }

      v31 = sub_1DAD6482C(v27, v28, v47);

      *(v22 + 4) = v31;
      *(v22 + 12) = 2114;
      *(v22 + 14) = v17;
      v12 = v45;
      *v23 = v45;
      v32 = v17;
      _os_log_impl(&dword_1DAD61000, v20, v21, "[%{public}s] Widget displayProperties changed: %{public}@", v22, 0x16u);
      sub_1DAD64398(v23, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E127F100](v24, -1, -1);
      MEMORY[0x1E127F100](v22, -1, -1);

      v14 = v44;
      v19 = v46;
    }

    else
    {
    }

    v33 = *&v18[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v33)
    {
      v34 = *(v33 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v34)
      {
        v35 = *(v34 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
        v36 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
        swift_beginAccess();
        v37 = *(v35 + v36);
        *(v35 + v36) = v12;
        swift_retain_n();
        v38 = v17;
        sub_1DAD996A0(v37);

        v39 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
        swift_beginAccess();
        v40 = *(v35 + v39);
        *(v35 + v39) = v13;
        sub_1DAE9CDC4(v40);
        v41 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay;
        swift_beginAccess();
        v42 = *(v35 + v41);
        *(v35 + v41) = v14;
        sub_1DAE9D090(v42);
      }
    }

    sub_1DAD83EA8(v19);
  }

  return result;
}

void sub_1DADE0AD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08368, &unk_1DAEDE2B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v34 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v12 = sub_1DAECEDEC();
    __swift_project_value_buffer(v12, qword_1EE011748);
    v13 = a3;
    v14 = v11;
    v15 = sub_1DAECEDCC();
    v16 = sub_1DAED203C();

    if (os_log_type_enabled(v15, v16))
    {
      v34[0] = v6;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35[0] = v18;
      *v17 = 136446466;
      v19 = *&v14[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v19)
      {
        v20 = (v19 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v22 = *v20;
        v21 = v20[1];
      }

      else
      {
        v23 = v13;
        v22 = sub_1DAD8CE78(v23);
        v21 = v24;
      }

      v25 = sub_1DAD6482C(v22, v21, v35);

      *(v17 + 4) = v25;
      *(v17 + 12) = 2080;
      v34[1] = [v13 proximity];
      type metadata accessor for CHSWidgetProximity(0);
      v26 = sub_1DAED1D4C();
      v28 = sub_1DAD6482C(v26, v27, v35);

      *(v17 + 14) = v28;
      _os_log_impl(&dword_1DAD61000, v15, v16, "[%{public}s] Widget proximity changed to: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v18, -1, -1);
      MEMORY[0x1E127F100](v17, -1, -1);

      v6 = v34[0];
    }

    else
    {
    }

    v29 = *&v14[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v29)
    {
      v30 = *(v29 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v30)
      {
        v31 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

        [v13 proximity];
        sub_1DAED170C();
        v32 = sub_1DAED16FC();
        (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
        v33 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
        swift_beginAccess();
        sub_1DAD6495C(v31 + v33, v6, &qword_1ECC08368, &unk_1DAEDE2B0);
        swift_beginAccess();
        sub_1DAD901C4(v9, v31 + v33, &qword_1ECC08368, &unk_1DAEDE2B0);
        swift_endAccess();
        sub_1DAD9A254(v6);

        sub_1DAD64398(v6, &qword_1ECC08368, &unk_1DAEDE2B0);
        sub_1DAD64398(v9, &qword_1ECC08368, &unk_1DAEDE2B0);
      }
    }

    sub_1DAD83EA8(v13);
  }
}

void sub_1DADE0ED0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136446466;
      v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v16 = *v14;
        v15 = v14[1];
      }

      else
      {
        v17 = v7;
        v16 = sub_1DAD8CE78(v17);
        v15 = v18;
      }

      v19 = sub_1DAD6482C(v16, v15, &v23);

      *(v11 + 4) = v19;
      *(v11 + 12) = 2080;
      [v7 supportedProximities];
      type metadata accessor for CHSWidgetProximities(0);
      v20 = sub_1DAED1D4C();
      v22 = sub_1DAD6482C(v20, v21, &v23);

      *(v11 + 14) = v22;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Supported widget proximities changed to: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    sub_1DAD83EA8(v7);
  }
}

void sub_1DADE1118(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = a3;
    v8 = v5;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28[0] = v12;
      *v11 = 136446466;
      v13 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v13)
      {
        v14 = (v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v16 = *v14;
        v15 = v14[1];
      }

      else
      {
        v17 = v7;
        v16 = sub_1DAD8CE78(v17);
        v15 = v18;
      }

      v19 = sub_1DAD6482C(v16, v15, v28);

      *(v11 + 4) = v19;
      *(v11 + 12) = 1024;
      v20 = [v7 separateLayers];

      *(v11 + 14) = v20;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Separated layers changed to: %{BOOL}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v21 = *&v8[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v21 && (v22 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController)) != 0)
    {
      v23 = *(v22 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v24 = [v7 separateLayers];
      v25 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_separateLayers;
      swift_beginAccess();
      v26 = *(v23 + v25);
      *(v23 + v25) = v24;
      v27 = BSDispatchQueueAssertMain();
      if (v26 != *(v23 + v25))
      {
        sub_1DAEA1F7C(v27);
      }
    }

    else
    {
    }
  }
}

void sub_1DADE13C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08360, &unk_1DAED6570);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v37 - v8 + 16;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v37 - v11 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v15 = sub_1DAECEDEC();
    __swift_project_value_buffer(v15, qword_1EE011748);
    v16 = a3;
    v17 = sub_1DAECEDCC();
    v18 = sub_1DAED203C();

    if (os_log_type_enabled(v17, v18))
    {
      v36 = v6;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37[0] = v20;
      *v19 = 136315138;
      v21 = [v16 idealizedDateComponents];
      if (v21)
      {
        v22 = v21;
        sub_1DAECDA4C();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = sub_1DAECDA5C();
      (*(*(v24 - 8) + 56))(v12, v23, 1, v24);
      v25 = sub_1DAED1D4C();
      v27 = sub_1DAD6482C(v25, v26, v37);

      *(v19 + 4) = v27;
      _os_log_impl(&dword_1DAD61000, v17, v18, "scene delegate idealizedDateComponents changed to: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E127F100](v20, -1, -1);
      MEMORY[0x1E127F100](v19, -1, -1);

      v6 = v36;
    }

    else
    {
    }

    v28 = *&v14[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v28)
    {
      v29 = *(v28 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v29)
      {
        v30 = *(v29 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

        v31 = [v16 idealizedDateComponents];
        if (v31)
        {
          v32 = v31;
          sub_1DAECDA4C();

          v33 = 0;
        }

        else
        {
          v33 = 1;
        }

        v34 = sub_1DAECDA5C();
        (*(*(v34 - 8) + 56))(v9, v33, 1, v34);
        v35 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_idealizedDateComponents;
        swift_beginAccess();
        sub_1DAD6495C(v30 + v35, v6, &qword_1ECC08360, &unk_1DAED6570);
        swift_beginAccess();
        sub_1DAD901C4(v9, v30 + v35, &qword_1ECC08360, &unk_1DAED6570);
        swift_endAccess();
        sub_1DAD9A5B0(v6);

        sub_1DAD64398(v6, &qword_1ECC08360, &unk_1DAED6570);
        sub_1DAD64398(v9, &qword_1ECC08360, &unk_1DAED6570);
      }
    }

    sub_1DAD83EA8(v16);
  }
}

void sub_1DADE17E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1DAE09410(Strong);
  }

  if (*(a3 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration) == a2)
  {
    *(a3 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration) = 0;
    if (!*(a3 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene) && *(a3 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_invalidateAfterSnapshot) == 1)
    {
      *(a3 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_invalidateAfterSnapshot) = 0;
      sub_1DADE2B7C(0xD000000000000019, 0x80000001DAEE0F20);
    }
  }
}

void sub_1DADE18A8(void *a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v56 = a1;
    v6 = [v5 nullableWidget];
    if (v6)
    {

      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v7 = sub_1DAECEDEC();
      __swift_project_value_buffer(v7, qword_1EE011748);
      v8 = v56;
      v9 = v2;
      v10 = sub_1DAECEDCC();
      v11 = sub_1DAED203C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v57 = v13;
        *v12 = 136446210;
        v14 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
        if (v14)
        {
          v15 = (v14 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v17 = *v15;
          v16 = v15[1];
        }

        else
        {
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18)
          {
            v19 = v18;
            v54 = v8;
            v20 = sub_1DAD8CE78(v19);
          }

          else
          {
            v22 = [v8 _FBSScene];
            v54 = [v22 identifier];

            v20 = sub_1DAED1CEC();
          }

          v17 = v20;
          v16 = v21;
        }

        v23 = sub_1DAD6482C(v17, v16, &v57);

        *(v12 + 4) = v23;
        _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] Scene for widget did disconnect", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x1E127F100](v13, -1, -1);
        MEMORY[0x1E127F100](v12, -1, -1);
      }

      else
      {
      }

      if (*&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene])
      {
        v24 = v8;
        v25 = v9;
        v26 = sub_1DAECEDCC();
        v27 = sub_1DAED203C();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v57 = v55;
          *v28 = 136446210;
          v29 = *&v25[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
          if (v29)
          {
            v30 = (v29 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
            v31 = *v30;
            v32 = v30[1];
          }

          else
          {
            objc_opt_self();
            v33 = swift_dynamicCastObjCClass();
            if (v33)
            {
              v34 = v33;
              v53 = v24;
              v35 = sub_1DAD8CE78(v34);
            }

            else
            {
              v37 = [v24 _FBSScene];
              v53 = [v37 identifier];

              v35 = sub_1DAED1CEC();
            }

            v31 = v35;
            v32 = v36;
          }

          v38 = sub_1DAD6482C(v31, v32, &v57);

          *(v28 + 4) = v38;
          _os_log_impl(&dword_1DAD61000, v26, v27, "[%{public}s] Detected foreground -> disconnected.  Bouncing through backgrounded first.", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          MEMORY[0x1E127F100](v55, -1, -1);
          MEMORY[0x1E127F100](v28, -1, -1);
        }

        sub_1DADC63C0(v24);
      }

      sub_1DADE2B7C(0xD000000000000014, 0x80000001DAEE0ED0);
      v39 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window;
      v40 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window];
      if (v40)
      {
        [v40 setRootViewController_];
        v41 = *&v9[v39];
      }

      else
      {
        v41 = 0;
      }

      *&v9[v39] = 0;

      v42 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneDiffActionKey];
      v43 = v8;
      [v5 _unregisterSettingsDiffActionArrayForKey_];
      v44 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector;
      v45 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_sceneSettingsDiffInspector];
      if (v45)
      {
        [v45 removeAllObservers];
        v46 = *&v9[v44];
      }

      else
      {
        v46 = 0;
      }

      *&v9[v44] = 0;

      v47 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_configurationChangedSubscription;
      if (*&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_configurationChangedSubscription])
      {

        sub_1DAECEE2C();
      }

      *&v9[v47] = 0;

      v49 = &v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_visibilityPolicyController];
      v50 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_visibilityPolicyController];
      *v49 = 0;
      *(v49 + 1) = 0;
      if (v50)
      {
        sub_1DAE0CC08(v48);
        swift_unknownObjectRelease();
      }

      if (qword_1EE005478 != -1)
      {
        swift_once();
      }

      v51 = qword_1EE005480;
      [v51 removeObjectForKey_];

      v52 = *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession];
      *&v9[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession] = 0;
      if (v52)
      {
        sub_1DADD52BC();
      }

      if (qword_1EE005F98 != -1)
      {
        swift_once();
      }

      [v43 _unregisterSceneComponentForKey_];
      if (qword_1EE008AE0 != -1)
      {
        swift_once();
      }

      [v43 _unregisterSceneActionsHandlerArray_];
    }
  }
}

void sub_1DADE1F7C(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
  v3 = *&v1[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v3)
  {
    if (*&v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction])
    {
      v4 = qword_1EE005E48;
      oslog = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v5 = sub_1DAECEDEC();
      __swift_project_value_buffer(v5, qword_1EE011748);
      v6 = sub_1DAECEDCC();
      v7 = sub_1DAED1FFC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1DAD61000, v6, v7, "Scene received memory warning - action: none, content is live.", v8, 2u);
        MEMORY[0x1E127F100](v8, -1, -1);
      }
    }

    else
    {
      if (*&v1[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene])
      {
        __break(1u);
        return;
      }

      v12 = qword_1EE005E48;
      v13 = v3;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = sub_1DAECEDEC();
      __swift_project_value_buffer(v14, qword_1EE011748);
      oslog = v13;
      v15 = v1;
      v16 = v1;
      v17 = sub_1DAECEDCC();
      v18 = sub_1DAED203C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v29 = v20;
        *v19 = 136446210;
        v21 = *&v15[v2];
        if (v21)
        {
          v22 = (v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v24 = *v22;
          v23 = v22[1];
        }

        else
        {
          v25 = *(&oslog->isa + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene);
          v24 = sub_1DAD8CE78(v25);
          v23 = v26;
        }

        v27 = sub_1DAD6482C(v24, v23, &v29);

        *(v19 + 4) = v27;
        _os_log_impl(&dword_1DAD61000, v17, v18, "[%{public}s] Scene received memory warning - action: invalidating because background.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x1E127F100](v20, -1, -1);
        MEMORY[0x1E127F100](v19, -1, -1);
      }

      sub_1DADE2B7C(0x772079726F6D654DLL, 0xEE00676E696E7261);
    }
  }

  else
  {
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v9 = sub_1DAECEDEC();
    __swift_project_value_buffer(v9, qword_1EE011748);
    oslog = sub_1DAECEDCC();
    v10 = sub_1DAED1FFC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DAD61000, oslog, v10, "Scene received memory warning - action: none, because already inactive (no content).", v11, 2u);
      MEMORY[0x1E127F100](v11, -1, -1);
    }
  }
}

unint64_t sub_1DADE23D8()
{
  v1 = v0;
  v2 = 7104878;
  sub_1DAED256C();

  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DAE09500();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1E127DA50](v5, v7);

  MEMORY[0x1E127DA50](0xD000000000000013, 0x80000001DAEE0F80);
  v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene);
  if (v8)
  {
    v9 = [v8 description];
    v2 = sub_1DAED1CEC();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x1E127DA50](v2, v11);

  MEMORY[0x1E127DA50](62, 0xE100000000000000);
  return 0xD000000000000017;
}

void sub_1DADE2530(char *a1)
{
  BSDispatchQueueAssertMain();
  if (!*(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_originalBackgroundColor;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_originalBackgroundColor))
  {
    v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window);
    if (v4)
    {
      [v4 setBackgroundColor_];
      v5 = *(v1 + v3);
      *(v1 + v3) = 0;

      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:
  v6 = *&a1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];

  sub_1DAD8830C(v6, a1);
}

uint64_t sub_1DADE25E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1DAED09DC();
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DAED0A3C();
  v13 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v22 = sub_1DAED20EC();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_1DADE6400;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_158;
  v17 = _Block_copy(aBlock);

  v18 = a2;

  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAD8E1BC(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  v19 = v22;
  MEMORY[0x1E127DD70](0, v15, v12, v17);
  _Block_release(v17);

  (*(v24 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v23);
}

double sub_1DADE2908(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v12 = sub_1DAECEDEC();
    __swift_project_value_buffer(v12, qword_1EE011748);
    v13 = v11;
    v14 = a2;

    v15 = sub_1DAECEDCC();
    v16 = sub_1DAED203C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136446466;
      v19 = *&v13[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v19)
      {
        v20 = (v19 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v22 = *v20;
        v21 = v20[1];
      }

      else
      {
        v26 = a3;
        v23 = v14;
        v22 = sub_1DAD8CE78(v23);
        v21 = v24;

        a3 = v26;
      }

      v25 = sub_1DAD6482C(v22, v21, v27);

      *(v17 + 4) = v25;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1DAD6482C(a3, a4, v27);
      _os_log_impl(&dword_1DAD61000, v15, v16, "[%{public}s] Content confirmation action %{public}s invalidated - likely by timeout", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v18, -1, -1);
      MEMORY[0x1E127F100](v17, -1, -1);
    }

    sub_1DAECEE2C();
    swift_beginAccess();
    sub_1DADB8820(a5);
    swift_endAccess();
  }

  return result;
}

void sub_1DADE2B7C(uint64_t a1, unint64_t a2)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
  v4 = *&v2[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v4)
  {
    v5 = v2;
    v7 = *&v2[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_snapshotGeneration];
    v8 = qword_1EE005E48;
    v9 = v4;
    if (v7)
    {
      if (v8 != -1)
      {
        swift_once();
      }

      v10 = sub_1DAECEDEC();
      __swift_project_value_buffer(v10, qword_1EE011748);
      v11 = v9;
      v12 = v5;

      v13 = sub_1DAECEDCC();
      v14 = sub_1DAED203C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v39 = v16;
        *v15 = 136446466;
        v17 = *&v5[v3];
        if (v17)
        {
          v18 = (v17 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v20 = *v18;
          v19 = v18[1];
        }

        else
        {
          v31 = *&v11[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];
          v20 = sub_1DAD8CE78(v31);
          v19 = v32;
        }

        v33 = sub_1DAD6482C(v20, v19, &v39);

        *(v15 + 4) = v33;
        *(v15 + 12) = 2082;
        *(v15 + 14) = sub_1DAD6482C(a1, a2, &v39);
        _os_log_impl(&dword_1DAD61000, v13, v14, "[%{public}s] Delaying connection invalidate for snapshot - reason: %{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v16, -1, -1);
        MEMORY[0x1E127F100](v15, -1, -1);
      }

      else
      {
      }

      v12[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_invalidateAfterSnapshot] = 1;
    }

    else
    {
      if (v8 != -1)
      {
        swift_once();
      }

      v21 = sub_1DAECEDEC();
      __swift_project_value_buffer(v21, qword_1EE011748);
      v38 = v9;
      v22 = v5;

      v23 = sub_1DAECEDCC();
      v24 = sub_1DAED203C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v39 = v26;
        *v25 = 136446466;
        v27 = *&v5[v3];
        if (v27)
        {
          v28 = (v27 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
          v30 = *v28;
          v29 = v28[1];
        }

        else
        {
          v34 = *&v38[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];
          v30 = sub_1DAD8CE78(v34);
          v29 = v35;
        }

        v36 = sub_1DAD6482C(v30, v29, &v39);

        *(v25 + 4) = v36;
        *(v25 + 12) = 2082;
        *(v25 + 14) = sub_1DAD6482C(a1, a2, &v39);
        _os_log_impl(&dword_1DAD61000, v23, v24, "[%{public}s] Invalidate connection - reason: %{public}s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v26, -1, -1);
        MEMORY[0x1E127F100](v25, -1, -1);
      }

      sub_1DAE09798();
    }
  }
}

double sub_1DADE2FAC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1DAED0A3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED0A1C();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1DADE4448(a2, v7, sub_1DADE6390, v8);

  (*(v5 + 8))(v7, v4);

  return result;
}

void sub_1DADE30E8(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
    if (v3)
    {
      v4 = v3;
      sub_1DADB4204(0);
    }

    v5 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_debugOverlayViewController];
    *(v5 + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_isSnapshotting) = 0;
    v6 = *(v5 + OBJC_IVAR____TtC14WidgetRenderer26DebugOverlayViewController_debugView);
    v6[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshotting] = 0;
    [v6 setNeedsLayout];
  }
}

double sub_1DADE31A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083A0, &unk_1DAED6758);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v61 - v9;
  v11 = sub_1DAECE47C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v61 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = *&Strong[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession];
    if (!v21)
    {

      return result;
    }

    v22 = *(a4 + 56);
    if (v22)
    {

      v23 = [v22 effectiveContainerBundleIdentifier];
      if (v23)
      {
        v65 = a2;
        v63 = a5;
        v24 = v23;
        v64 = sub_1DAED1CEC();
        v26 = v25;

        if (qword_1EE005E88 != -1)
        {
          swift_once();
        }

        v27 = sub_1DAECEDEC();
        v28 = __swift_project_value_buffer(v27, qword_1EE0117D8);

        v61[1] = v28;
        v29 = sub_1DAECEDCC();
        v30 = sub_1DAED200C();

        v31 = os_log_type_enabled(v29, v30);
        v66 = v26;
        if (v31)
        {
          v32 = swift_slowAlloc();
          v61[0] = v21;
          v33 = v32;
          v34 = swift_slowAlloc();
          v62 = v12;
          v35 = v34;
          v67 = v34;
          *v33 = 136446210;
          *(v33 + 4) = sub_1DAD6482C(v64, v26, &v67);
          _os_log_impl(&dword_1DAD61000, v29, v30, "CHUISWidgetLaunchRequest will use effectiveContainerBundleIdentifier: %{public}s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v35);
          v36 = v35;
          v12 = v62;
          MEMORY[0x1E127F100](v36, -1, -1);
          v37 = v33;
          v21 = v61[0];
          MEMORY[0x1E127F100](v37, -1, -1);
        }

        type metadata accessor for LaunchRequestBuilder();
        sub_1DAE50D14(v21, v65, v10);
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {

          sub_1DAD64398(v10, &qword_1ECC083A0, &unk_1DAED6758);
        }

        else
        {
          (*(v12 + 32))(v17, v10, v11);
          sub_1DAD674D4(0, &qword_1EE005548, 0x1E6994538);
          (*(v12 + 16))(v14, v17, v11);
          v46 = sub_1DADE3964(v14, v64, v66);
          if (v46)
          {
            v47 = v46;
            v48 = v12;
            v49 = [objc_allocWithZone(MEMORY[0x1E6994540]) initWithLaunchRequest:v46 responder:0];
            v66 = [v63 _FBSScene];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1DAED64D0;
            *(inited + 32) = v49;
            v65 = v49;
            sub_1DAE89C08(inited);
            swift_setDeallocating();
            swift_arrayDestroy();
            sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
            sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0, MEMORY[0x1E69E81B8]);
            v51 = sub_1DAED1F5C();

            v52 = v66;
            [v66 sendActions_];

            (*(v48 + 8))(v17, v11);
          }

          else
          {

            v53 = sub_1DAECEDCC();
            v54 = sub_1DAED201C();

            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v62 = v12;
              v57 = v56;
              v67 = v56;
              *v55 = 136446210;
              v58 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
              v59 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

              v60 = sub_1DAD6482C(v58, v59, &v67);

              *(v55 + 4) = v60;
              _os_log_impl(&dword_1DAD61000, v53, v54, "%{public}s Unable to create CHUISWidgetLaunchRequest from LaunchRequest", v55, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v57);
              MEMORY[0x1E127F100](v57, -1, -1);
              MEMORY[0x1E127F100](v55, -1, -1);

              (*(v62 + 8))(v17, v11);
            }

            else
            {

              (*(v12 + 8))(v17, v11);
            }
          }
        }

        sub_1DADE3FD4();

LABEL_24:

        return result;
      }
    }

    else
    {
    }

    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v38 = sub_1DAECEDEC();
    __swift_project_value_buffer(v38, qword_1EE0117D8);

    v39 = sub_1DAECEDCC();
    v40 = sub_1DAED201C();

    if (!os_log_type_enabled(v39, v40))
    {

      return result;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v67 = v42;
    *v41 = 136446210;
    v43 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
    v44 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

    v45 = sub_1DAD6482C(v43, v44, &v67);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1DAD61000, v39, v40, "%{public}s Unable to create CHUISWidgetLaunchRequest without a effectiveContainerBundleIdentifier", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x1E127F100](v42, -1, -1);
    MEMORY[0x1E127F100](v41, -1, -1);

    goto LABEL_24;
  }

  return result;
}

id sub_1DADE3964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1DAECE43C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  sub_1DAECE45C();
  v14 = sub_1DAECE42C();
  v23[1] = v4;
  v23[2] = a2;
  v15 = *(v8 + 8);
  v15(v13, v7);
  v16 = v14;
  sub_1DAECE45C();
  v17 = (*(v8 + 88))(v10, v7) == *MEMORY[0x1E6994430];
  v15(v10, v7);
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v19 = sub_1DAED1CBC();

  v20 = [v18 initWithLaunchAction:v16 effectiveContainerBundleIdentifier:v19 isEntitledToOpenSystemProcesses:v17];

  v21 = sub_1DAECE47C();
  (*(*(v21 - 8) + 8))(a1, v21);
  return v20;
}

void sub_1DADE3CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DAECE3DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v7 = sub_1DAECEDEC();
  __swift_project_value_buffer(v7, qword_1EE011748);
  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED200C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DAD61000, v8, v9, "Received interaction event with LinkAction; executing...", v10, 2u);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = *(v4 + 104);
      v15(v6, *MEMORY[0x1E6994178], v3);
      v16 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
      swift_beginAccess();
      if ((*(v14 + v16) & 1) != 0 || (v17 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContinuityDisplay, swift_beginAccess(), *(v14 + v17) == 1))
      {
        (*(v4 + 8))(v6, v3);
        v15(v6, *MEMORY[0x1E6994180], v3);
      }

      if (*&v12[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession])
      {

        sub_1DADD50B0();
      }

      else
      {
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
    }
  }
}

void sub_1DADE3FD4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
  v2 = *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v2)
  {
    v3 = v0;
    v4 = qword_1EE005E48;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v19 = v5;
    v7 = v3;
    v8 = sub_1DAECEDCC();
    v9 = sub_1DAED203C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136446210;
      v12 = *&v3[v1];
      if (v12)
      {
        v13 = (v12 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v15 = *v13;
        v14 = v13[1];
      }

      else
      {
        v16 = *&v19[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];
        v15 = sub_1DAD8CE78(v16);
        v14 = v17;
      }

      v18 = sub_1DAD6482C(v15, v14, &v20);

      *(v10 + 4) = v18;
      _os_log_impl(&dword_1DAD61000, v8, v9, "[%{public}s] User interacted - attempted to reload content.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E127F100](v11, -1, -1);
      MEMORY[0x1E127F100](v10, -1, -1);
    }

    if (*&v7[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession])
    {

      sub_1DADD4E5C(1);
    }
  }
}

void sub_1DADE41FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_confirmationActionSubscribers;
  swift_beginAccess();
  v18 = v2;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAD8E1BC(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    sub_1DAED1F9C();
    v5 = v20;
    v4 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v3;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_18:
      sub_1DAD70B20(v5);

      *(v1 + v18) = MEMORY[0x1E69E7CD0];

      return;
    }

    while (1)
    {
      sub_1DAECEE2C();

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DAED24BC())
      {
        sub_1DAECEE3C();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1DADE4448(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v122 = sub_1DAECED2C();
  v124 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v104[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08330, &unk_1DAED6540);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v125 = &v104[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v104[-v13];
  v14 = sub_1DAED18CC();
  v127 = *(v14 - 8);
  v128 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v104[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1DAECDA5C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v104[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  MEMORY[0x1EEE9AC00](v126);
  v21 = &v104[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v104[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v129 = &v104[-v25];
  v26 = BSDispatchQueueAssertMain();
  v27 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
  if (v27 && (v28 = *&v27[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController]) != 0)
  {
    v114 = a1;
    v115 = a2;
    v117 = a4;
    v29 = v28[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_shouldVisibleEntrySnapshot];
    v30 = qword_1EE005E48;
    v31 = v27;
    v118 = v28;
    if (v29 == 1)
    {
      v107 = v4;
      if (v30 != -1)
      {
        swift_once();
      }

      v32 = sub_1DAECEDEC();
      __swift_project_value_buffer(v32, qword_1EE011748);
      v33 = v31;
      v34 = sub_1DAECEDCC();
      v35 = sub_1DAED203C();

      v36 = os_log_type_enabled(v34, v35);
      v112 = v33;
      v106 = a3;
      if (v36)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v130 = v38;
        *v37 = 136446210;
        v39 = *&v33[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
        v40 = *&v33[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

        v41 = sub_1DAD6482C(v39, v40, &v130);
        v33 = v112;

        *(v37 + 4) = v41;
        _os_log_impl(&dword_1DAD61000, v34, v35, "[%{public}s] Snapshot", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x1E127F100](v38, -1, -1);
        MEMORY[0x1E127F100](v37, -1, -1);
      }

      v42 = v129;
      sub_1DADC8A98(v129);
      v43 = [objc_allocWithZone(MEMORY[0x1E6994300]) init];
      v44 = *(v42 + 1);
      [v43 setColorScheme_];
      [v43 setAllowsPrivacySensitiveContent_];
      [v43 setUserWantsWidgetDataWhenPasscodeLocked_];
      v45 = [*&v33[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene] additionalSnapshotPresentationContext];
      [v43 setAdditionalSettingsContext_];

      v46 = [v44 tintParameters];
      v47 = v43;
      [v43 setTintParameters_];

      v48 = [v44 idealizedDateComponents];
      v49 = v127;
      v111 = v21;
      if (v48)
      {
        v50 = v48;
        sub_1DAECDA4C();

        v51 = sub_1DAECDA3C();
        (*(v17 + 8))(v19, v16);
      }

      else
      {
        v51 = 0;
      }

      v63 = v47;
      [v47 setIdealizedDateComponents_];

      v64 = v129;
      v116 = *v129;
      v65 = *(v129 + 3);
      v109 = *(v129 + 2);
      v66 = v126;
      v67 = *(v126 + 36);
      v108 = *(v49 + 16);
      v68 = v120;
      v69 = v128;
      v108(v120, &v129[v67], v128);
      v71 = v123;
      v70 = v124;
      v72 = v122;
      (*(v124 + 16))(v123, &v64[v66[10]], v122);
      (*(v70 + 56))(v71, 0, 1, v72);
      v73 = &v64[v66[11]];
      v113 = *v73;
      v105 = v73[8];
      v74 = v111;
      *v111 = v116;
      *(v74 + 1) = v63;
      v110 = v63;
      *(v74 + 2) = v109;
      *(v74 + 3) = v65;
      v109 = v65;
      v75 = v66[9];
      v76 = v68;
      v108(&v74[v75], v68, v69);
      v77 = v125;
      sub_1DAD6495C(v71, v125, &qword_1ECC08330, &unk_1DAED6540);
      v78 = *(v70 + 48);
      if (v78(v77, 1, v72) != 1)
      {
        v90 = v113;
        v91 = v113;
        v92 = v116;
        v81 = v110;
        v93 = v110;

        sub_1DAD64398(v71, &qword_1ECC08330, &unk_1DAED6540);
        (*(v127 + 8))(v76, v128);
        v85 = v121;
        (*(v70 + 32))(v121, v77, v72);
        goto LABEL_29;
      }

      sub_1DAED298C();
      v79 = v113;
      v80 = v116;
      v81 = v110;
      v82 = v110;

      sub_1DAED229C();

      v83 = v125;
      v84 = sub_1DAED296C();
      v85 = v121;
      v86 = v128;
      if (v84 < 0)
      {
        v87 = __OFSUB__(0, v84);
        v88 = -v84;
        if (!v87)
        {
          if ((v88 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_26:
      sub_1DAECED3C();
      sub_1DAD64398(v123, &qword_1ECC08330, &unk_1DAED6540);
      (*(v127 + 8))(v76, v86);
      v89 = v78(v83, 1, v72);
      v70 = v124;
      v90 = v113;
      if (v89 != 1)
      {
        sub_1DAD64398(v83, &qword_1ECC08330, &unk_1DAED6540);
      }

LABEL_29:
      v94 = v126;
      (*(v70 + 32))(&v74[*(v126 + 40)], v85, v72);
      v95 = &v74[*(v94 + 44)];
      *v95 = v90;
      v95[8] = v105;
      v96 = v119;
      sub_1DADCA3D0(v74, v119);
      v97 = v106;
      if (*(v107 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_layerSnapshotter))
      {
        v98 = swift_allocObject();
        v99 = v112;
        v98[2] = v112;
        v98[3] = v97;
        v100 = v117;
        v101 = v114;
        v98[4] = v117;
        v98[5] = v101;
        v102 = v99;

        sub_1DADCA8EC(v97, v100);
        v103 = v101;
        sub_1DADCA440(v96, v115, sub_1DADE6290, v98);

        sub_1DAD64398(v96, &qword_1ECC08338, &unk_1DAEDB980);
        sub_1DAD64398(v129, &qword_1ECC08338, &unk_1DAEDB980);
        return;
      }

LABEL_34:
      __break(1u);
      return;
    }

    if (v30 != -1)
    {
      swift_once();
    }

    v52 = sub_1DAECEDEC();
    __swift_project_value_buffer(v52, qword_1EE011748);
    v53 = v31;
    v54 = sub_1DAECEDCC();
    v55 = sub_1DAED203C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v130 = v57;
      *v56 = 136446210;
      v58 = a3;
      v59 = *&v53[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v60 = *&v53[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v61 = sub_1DAD6482C(v59, v60, &v130);
      a3 = v58;

      *(v56 + 4) = v61;
      _os_log_impl(&dword_1DAD61000, v54, v55, "[%{public}s] Current entry isn't snapshottable.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x1E127F100](v57, -1, -1);
      MEMORY[0x1E127F100](v56, -1, -1);
    }

    if (a3)
    {
      a3();
    }

    v62 = v118;
  }

  else if (a3)
  {
    (a3)(v26);
  }
}

void sub_1DADE5034(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v47 = a4;
  v9 = sub_1DAED09DC();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1DAED0A3C();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v15 = sub_1DAECEDEC();
  __swift_project_value_buffer(v15, qword_1EE011748);
  v16 = a2;
  sub_1DADE629C(v12, v13, v14);
  v17 = sub_1DAECEDCC();
  v18 = sub_1DAED203C();

  sub_1DADE62C4(v12, v13, v14);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v48 = v21;
    *v20 = 136446466;
    v22 = *&v16[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
    v23 = *&v16[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

    v24 = sub_1DAD6482C(v22, v23, &v48);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    aBlock = v12;
    v50 = v13;
    LOBYTE(v51) = v14;
    sub_1DADE629C(v12, v13, v14);
    v25 = LayerSnapshotter.Result.description.getter();
    v27 = v26;
    sub_1DADE62C4(aBlock, v50, v51);
    v28 = sub_1DAD6482C(v25, v27, &v48);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_1DAD61000, v17, v18, "[%{public}s] Snapshot finished %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v21, -1, -1);
    v29 = v20;
    a5 = v40;
    MEMORY[0x1E127F100](v29, -1, -1);
  }

  if (a3)
  {
    sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v30 = a3;
    v31 = v47;

    v40 = sub_1DAED20EC();
    v32 = swift_allocObject();
    *(v32 + 16) = v12;
    *(v32 + 24) = v13;
    *(v32 + 32) = v14;
    *(v32 + 40) = a5;
    *(v32 + 48) = v30;
    *(v32 + 56) = v31;
    v53 = sub_1DADE62EC;
    v54 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1DAD751C0;
    v52 = &block_descriptor_1;
    v33 = _Block_copy(&aBlock);
    sub_1DADE629C(v12, v13, v14);
    sub_1DADCA8EC(v30, v31);
    v34 = a5;

    v35 = v41;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1DAD8E1BC(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
    v36 = v43;
    v37 = v46;
    sub_1DAED23CC();
    v38 = v40;
    MEMORY[0x1E127DD70](0, v35, v36, v33);
    _Block_release(v33);

    sub_1DAD660D8(v30, v31);
    (*(v45 + 8))(v36, v37);
    (*(v42 + 8))(v35, v44);
  }
}

uint64_t sub_1DADE5560(int a1, int a2, char a3, id a4, uint64_t (*a5)(void))
{
  if (a3 == 1)
  {
    v6 = [a4 _FBSScene];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAED64D0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69944F0]) init];
    sub_1DAE89EF8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
    sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0, MEMORY[0x1E69E81B8]);
    v8 = sub_1DAED1F5C();

    [v6 sendActions_];
  }

  return a5();
}

void sub_1DADE56D0(char *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v9 = sub_1DAECED2C();
  v77 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1DAECEDEC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1DAECED6C();
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*&a1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction])
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, qword_1EE011748);
  v20 = *(v13 + 16);
  v73 = v19;
  v20(v15);
  sub_1DAECED4C();
  v21 = a1;

  v22 = v11;
  sub_1DAECED1C();
  v23 = sub_1DAECED5C();
  v24 = sub_1DAED21BC();

  v25 = sub_1DAED230C();
  v72 = v5;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v70 = v22;
    v27 = v26;
    v28 = swift_slowAlloc();
    v78 = v28;
    *v27 = 136446466;
    v71 = v9;
    v69 = v24;
    v29 = *&v21[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
    v30 = *&v21[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

    v31 = sub_1DAD6482C(v29, v30, &v78);
    v32 = v76;

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_1DAD6482C(v32, a4, &v78);
    v33 = v70;
    v34 = sub_1DAECED0C();
    _os_signpost_emit_with_name_impl(&dword_1DAD61000, v23, v69, v34, "RebuildWidgetViewController", "identifier=%{public}s, reason=%{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v28, -1, -1);
    MEMORY[0x1E127F100](v27, -1, -1);

    (*(v77 + 8))(v33, v71);
  }

  else
  {

    (*(v77 + 8))(v22, v9);
  }

  (*(v74 + 8))(v18, v75);
  v35 = v21;

  v36 = a2;
  v37 = sub_1DAECEDCC();
  v38 = sub_1DAED203C();

  v39 = &off_1E85EB000;
  if (!os_log_type_enabled(v37, v38))
  {

LABEL_11:
    v53 = [v36 widget];
    v54 = [v36 metrics];
    v55 = sub_1DAD810E0(v53, v54, v36);

    v56 = [v55 view];
    if (v56)
    {
      v57 = v56;
      v58 = [v36 _FBSScene];
      v59 = [v58 v39[430]];

      [v59 frame];
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;

      [v57 setFrame_];
      return;
    }

    goto LABEL_14;
  }

  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v78 = v41;
  *v40 = 136446722;
  v42 = &v35[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
  v43 = *&v35[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
  v44 = *(v42 + 1);

  v45 = sub_1DAD6482C(v43, v44, &v78);

  *(v40 + 4) = v45;
  *(v40 + 12) = 2082;
  *(v40 + 14) = sub_1DAD6482C(v76, a4, &v78);
  *(v40 + 22) = 2082;
  v46 = [v36 _FBSScene];
  v47 = [v46 settings];

  [v47 &_OBJC_LABEL_PROTOCOL___SBUISystemApertureElement];
  v48 = BSNSStringFromCGSize();

  if (v48)
  {
    v49 = sub_1DAED1CEC();
    v51 = v50;

    v52 = sub_1DAD6482C(v49, v51, &v78);

    *(v40 + 24) = v52;
    _os_log_impl(&dword_1DAD61000, v37, v38, "[%{public}s] Rebuild view controller for reason: %{public}s - size: %{public}s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v41, -1, -1);
    MEMORY[0x1E127F100](v40, -1, -1);

    v39 = &off_1E85EB000;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_1DADE5DC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection) = 0;
}

uint64_t sub_1DADE5DD8(uint64_t a1)
{
  v3 = sub_1DAED1D3C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1DAECDBFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 32);
  v9 = *a1;
  v10 = v8;
  v11 = [v9 widget];
  v12 = [v9 metrics];
  v13 = [v10 URLForWidget:v11 metrics:v12 attributes:*(a1 + 8) createIntermediateDirectories:0];

  sub_1DAECDBBC();
  v14 = *(a1 + 24);
  if (v14 && (v15 = *(a1 + 16), sub_1DADBCF28(), sub_1DAECDB4C(), v18 = v24[1], v19 = v24[2], sub_1DAED1D2C(), v20 = sub_1DAED1D0C(), v22 = v21, sub_1DAD70BB4(v18, v19), v22))
  {
    if (v20 == v15 && v22 == v14)
    {

      v16 = 0;
    }

    else
    {
      v23 = sub_1DAED289C();

      v16 = v23 ^ 1;
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v16 = 1;
  }

  return v16 & 1;
}

uint64_t sub_1DADE608C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DADE615C(uint64_t a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  sub_1DADE2B7C(0xD000000000000031, 0x80000001DAEE0E10);
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v3 = sub_1DAECE19C();

  if ((v3 & 1) == 0)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window;
  v5 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window);
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = [v5 backgroundColor];
  v7 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_originalBackgroundColor);
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_originalBackgroundColor) = v6;

  v8 = *(v2 + v4);
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemDarkOrangeColor];
  [v10 setBackgroundColor_];
}

id sub_1DADE629C(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_1DADE62C4(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

unint64_t sub_1DADE6330()
{
  result = qword_1EE0056A8;
  if (!qword_1EE0056A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0056A8);
  }

  return result;
}

uint64_t objectdestroy_148Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_160Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_174Tm()
{

  return swift_deallocObject();
}

char *sub_1DADE66B8()
{
  v1 = sub_1DAECEDEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CarPlayActivitySceneDelegate(0);
  v19.receiver = v0;
  v19.super_class = v5;
  v6 = objc_msgSendSuper2(&v19, sel_init);
  v7 = qword_1ECC079C8;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_1ECC0DDC0);
  v10 = *(v2 + 16);
  v10(v4, v9, v1);
  v11 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v12 = *(v2 + 40);
  v12(&v8[v11], v4, v1);
  swift_endAccess();
  if (qword_1ECC079D0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v1, qword_1ECC0DDD8);
  v10(v4, v13, v1);
  v14 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v12(&v8[v14], v4, v1);
  swift_endAccess();
  if (qword_1ECC07A00 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v1, qword_1ECC0DE38);
  v10(v4, v15, v1);
  v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v12(&v8[v16], v4, v1);
  swift_endAccess();

  return v8;
}

uint64_t sub_1DADE6A20(unint64_t a1)
{
  v3 = sub_1DAECEDEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v51 - v11;
  v12 = sub_1DAED182C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_14:
    v46 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
    swift_beginAccess();
    (*(v4 + 16))(v6, v1 + v46, v3);
    v47 = sub_1DAECEDCC();
    v48 = sub_1DAED202C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = v4;
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DAD61000, v47, v48, "Cannot create root view without at least one view model", v50, 2u);
      MEMORY[0x1E127F100](v50, -1, -1);

      (*(v49 + 8))(v6, v3);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    return 0;
  }

  if (sub_1DAED247C() < 1)
  {
    goto LABEL_14;
  }

LABEL_3:
  v52 = v9;
  v54 = v1;
  v55 = v4;
  v18 = *(v13 + 104);
  v19 = (v18)(v16, *MEMORY[0x1E6985918], v12, v14);
  MEMORY[0x1EEE9AC00](v19);
  *(&v51 - 2) = v16;
  v20 = a1;
  v21 = sub_1DADF6174(sub_1DADE8F04, (&v51 - 4), a1);
  v22 = *(v13 + 8);
  v22(v16, v12);
  v53 = v21;
  if (!v21)
  {
    swift_beginAccess();
    v41 = v55;
    v42 = v52;
    (*(v55 + 16))();
    v43 = sub_1DAECEDCC();
    v44 = sub_1DAED202C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1DAD61000, v43, v44, "Cannot find a list item view model", v45, 2u);
      MEMORY[0x1E127F100](v45, -1, -1);
    }

    (*(v41 + 8))(v42, v3);
    return 0;
  }

  v52 = v3;
  *v16 = 1;
  v23 = *MEMORY[0x1E6985910];
  v24 = v18(v16, v23, v12);
  MEMORY[0x1EEE9AC00](v24);
  *(&v51 - 2) = v16;
  v25 = sub_1DADF6174(sub_1DADEA35C, (&v51 - 4), v20);
  v22(v16, v12);
  *v16 = 2;
  v26 = v18(v16, v23, v12);
  MEMORY[0x1EEE9AC00](v26);
  *(&v51 - 2) = v16;
  v27 = sub_1DADF6174(sub_1DADEA35C, (&v51 - 4), v20);
  v22(v16, v12);
  if (!v25 || !v27)
  {
    v28 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
    v29 = v54;
    swift_beginAccess();
    v30 = v55;
    v31 = v56;
    v32 = v29 + v28;
    v33 = v52;
    (*(v55 + 16))(v56, v32, v52);
    v34 = sub_1DAECEDCC();
    v35 = sub_1DAED202C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DAD61000, v34, v35, "Unable to find leading or trailing view models", v36, 2u);
      MEMORY[0x1E127F100](v36, -1, -1);
    }

    (*(v30 + 8))(v31, v33);
  }

  v60 = 0;

  v37 = v53;

  sub_1DAED076C();
  v38 = v57;
  *&v57 = v37;
  *(&v57 + 1) = v25;
  v58 = v27;
  v59 = v38;
  sub_1DADE8F48();
  v39 = sub_1DAED087C();

  return v39;
}

id sub_1DADE70A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayActivitySceneDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CarPlayActivitySceneDelegate(uint64_t a1)
{
  result = qword_1ECC084B0;
  if (!qword_1ECC084B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DADE7164@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v95 = a2;
  v3 = sub_1DAECDE4C();
  v86 = *(v3 - 8);
  v87 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v84 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084E8, &qword_1DAED68C8);
  MEMORY[0x1EEE9AC00](v94);
  v89 = (v79 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E80, &qword_1DAED68D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v79 - v7;
  v9 = sub_1DAED1ABC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084F0, &qword_1DAED68D8);
  MEMORY[0x1EEE9AC00](v91);
  v92 = v79 - v13;
  v14 = sub_1DAED1B8C();
  v93 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v90 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v88 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v85 = v79 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v79 - v21;
  v23 = type metadata accessor for ActivityView(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  if (sub_1DAE64458())
  {
    *&v96 = 0;
    sub_1DAED076C();
    *(v25 + 2) = v98;
    v27 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
    v28 = *(v23 + 28);
    v29 = sub_1DAECEDEC();
    (*(*(v29 - 8) + 16))(&v25[v28], v26 + v27, v29);
    type metadata accessor for ActivityViewModel(0);
    sub_1DADE9A50(&qword_1EE007808, type metadata accessor for ActivityViewModel, &unk_1DAEDC81C);

    v30 = sub_1DAECF21C();
    v32 = v31;
    *v25 = v30;
    *(v25 + 1) = v31;
    *&v98 = sub_1DAED064C();
    *(v25 + 2) = sub_1DAED087C();
    *(v25 + 3) = 0;
    v33 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v32 + v33, v22, &unk_1ECC09E40, &qword_1DAED68E0);
    v34 = v93;
    if ((*(v93 + 48))(v22, 1, v14))
    {
      sub_1DAD64398(v22, &unk_1ECC09E40, &qword_1DAED68E0);
      v35 = *(v32 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
    }

    else
    {
      v41 = v90;
      (*(v34 + 16))(v90, v22, v14);
      sub_1DAD64398(v22, &unk_1ECC09E40, &qword_1DAED68E0);
      v35 = sub_1DAED1B5C();
      (*(v34 + 8))(v41, v14);
    }

    v40 = v95;

    *(v25 + 2) = v35;
    *(v25 + 3) = 0;
    sub_1DADE9A98(v25, v92);
    swift_storeEnumTagMultiPayload();
    sub_1DADE9A50(qword_1EE007DA0, type metadata accessor for ActivityView, &unk_1DAEDCE94);
    sub_1DAD64B94(qword_1ECC08500, &qword_1ECC084E8, &qword_1DAED68C8, &unk_1DAED6918);
    sub_1DAECFB1C();
    sub_1DADE9AFC(v25);
LABEL_11:
    v39 = 0;
    goto LABEL_12;
  }

  v83 = v23;
  v36 = a1[1];
  if (v36)
  {
    v37 = a1[2];
    if (v37)
    {
      (*(v10 + 16))(v12, v37 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_metricsDefinition, v9);

      sub_1DAED1A9C();
      (*(v10 + 8))(v12, v9);
      v38 = sub_1DAED19EC();
      if (!(*(*(v38 - 8) + 48))(v8, 1, v38))
      {
        v82 = v37;
        sub_1DAED19DC();
        v45 = v44;
        sub_1DAD64398(v8, &unk_1ECC09E80, &qword_1DAED68D0);
        v47 = v86;
        v46 = v87;
        v48 = v84;
        (*(v86 + 16))(v84, v36 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor, v87);
        v81 = sub_1DAECDE2C();
        v80 = v49;
        (*(v47 + 8))(v48, v46);
        v50 = v89 + v94[13];
        *&v96 = 0;

        sub_1DAED076C();
        *(v50 + 2) = v98;
        v51 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
        v52 = *(v83 + 28);
        v53 = sub_1DAECEDEC();
        v54 = *(v53 - 8);
        v86 = *(v54 + 16);
        v84 = (v54 + 16);
        (v86)(&v50[v52], v36 + v51, v53);
        v55 = type metadata accessor for ActivityViewModel(0);
        v56 = sub_1DADE9A50(&qword_1EE007808, type metadata accessor for ActivityViewModel, &unk_1DAEDC81C);

        v87 = v36;
        v79[1] = v55;
        v79[0] = v56;
        v57 = sub_1DAECF21C();
        v59 = v58;
        *v50 = v57;
        *(v50 + 1) = v58;
        *&v98 = sub_1DAED064C();
        *(v50 + 2) = sub_1DAED087C();
        *(v50 + 3) = 0;
        v60 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
        swift_beginAccess();
        v61 = v85;
        sub_1DAD6495C(v59 + v60, v85, &unk_1ECC09E40, &qword_1DAED68E0);
        v62 = v93;
        v63 = *(v93 + 48);
        v64 = v14;
        if (v63(v61, 1, v14))
        {
          sub_1DAD64398(v61, &unk_1ECC09E40, &qword_1DAED68E0);
          v65 = *(v59 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
        }

        else
        {
          v66 = v90;
          (*(v62 + 16))(v90, v61, v64);
          sub_1DAD64398(v61, &unk_1ECC09E40, &qword_1DAED68E0);
          v65 = sub_1DAED1B5C();
          (*(v62 + 8))(v66, v64);
        }

        *(v50 + 2) = v65;
        *(v50 + 3) = 0;
        v67 = v89 + v94[14];
        v97 = 0;
        v68 = v82;

        sub_1DAED076C();
        *(v67 + 2) = v96;
        (v86)(&v67[*(v83 + 28)], v68 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v53);

        v69 = sub_1DAECF21C();
        v71 = v70;
        *v67 = v69;
        *(v67 + 1) = v70;
        *&v96 = sub_1DAED064C();
        *(v67 + 2) = sub_1DAED087C();
        *(v67 + 3) = 0;
        v72 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
        swift_beginAccess();
        v73 = v88;
        sub_1DAD6495C(v71 + v72, v88, &unk_1ECC09E40, &qword_1DAED68E0);
        if (v63(v73, 1, v64))
        {
          sub_1DAD64398(v73, &unk_1ECC09E40, &qword_1DAED68E0);
          v74 = *(v71 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
        }

        else
        {
          v75 = v93;
          v76 = v90;
          (*(v93 + 16))(v90, v73, v64);
          sub_1DAD64398(v73, &unk_1ECC09E40, &qword_1DAED68E0);
          v74 = sub_1DAED1B5C();
          (*(v75 + 8))(v76, v64);
        }

        v40 = v95;

        *(v67 + 2) = v74;
        *(v67 + 3) = 0;
        v77 = v89;
        v78 = v80;
        *v89 = v81;
        *(v77 + 8) = v78;
        *(v77 + v94[15]) = v45;
        sub_1DAD6495C(v77, v92, &qword_1ECC084E8, &qword_1DAED68C8);
        swift_storeEnumTagMultiPayload();
        sub_1DADE9A50(qword_1EE007DA0, type metadata accessor for ActivityView, &unk_1DAEDCE94);
        sub_1DAD64B94(qword_1ECC08500, &qword_1ECC084E8, &qword_1DAED68C8, &unk_1DAED6918);
        sub_1DAECFB1C();

        sub_1DAD64398(v77, &qword_1ECC084E8, &qword_1DAED68C8);
        goto LABEL_11;
      }

      sub_1DAD64398(v8, &unk_1ECC09E80, &qword_1DAED68D0);
    }
  }

  v39 = 1;
  v40 = v95;
LABEL_12:
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084F8, &qword_1DAED68E8);
  return (*(*(v42 - 8) + 56))(v40, v39, 1, v42);
}

void *sub_1DADE7E98(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v3[1] = *(a2 + 24);
  v6 = *(&v5 + 1);
  sub_1DAD6495C(&v6, v3, &qword_1ECC084E0, &qword_1DAED68C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084C8, &qword_1DAED68A8);
  result = sub_1DAED077C();
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v3[0] = v5;
    sub_1DAED078C();
    return sub_1DAD64398(&v5, &qword_1ECC084C8, &qword_1DAED68A8);
  }

  return result;
}

uint64_t sub_1DADE7F58@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v11 = *v1;
  v12 = v3;
  v13 = *(v1 + 4);
  v14 = *(v1 + 24);
  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084C8, &qword_1DAED68A8);
  sub_1DAED077C();
  sub_1DADE7164(&v11, a1);
  v4 = *(v11 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);
  v15 = *(&v11 + 1);
  v16 = v12;
  v5 = swift_allocObject();
  v6 = v12;
  *(v5 + 16) = v11;
  *(v5 + 32) = v6;
  *(v5 + 48) = v13;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084D0, &qword_1DAED68B0);
  *(a1 + *(v7 + 52)) = v4;
  v8 = (a1 + *(v7 + 56));
  *v8 = sub_1DADE9A48;
  v8[1] = v5;

  sub_1DAD6495C(&v15, &v10, &qword_1ECC084D8, &qword_1DAED68B8);
  sub_1DAD6495C(&v16, &v10, &qword_1ECC084D8, &qword_1DAED68B8);
  sub_1DAD6495C(&v14, &v10, &qword_1ECC084C8, &qword_1DAED68A8);
}

uint64_t sub_1DADE80BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08590, &qword_1DAED6968);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED07DC();
  sub_1DAECF2AC();
  swift_getTupleTypeMetadata2();
  sub_1DAED097C();
  swift_getWitnessTable();
  v6 = sub_1DAED084C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  v17 = v4;
  v18 = v5;
  v19 = *(a1 + 32);
  v20 = v2;
  sub_1DAECFA1C();
  sub_1DAED083C();
  swift_getWitnessTable();
  sub_1DADB6258(v9, v6, v12);
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_1DADB6258(v12, v6, v16);
  return (v13)(v12, v6);
}

uint64_t sub_1DADE8328@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v80 = a5;
  v78 = a4;
  v84 = a6;
  v75 = a2;
  v76 = a3;
  swift_getTupleTypeMetadata3();
  v7 = sub_1DAED097C();
  WitnessTable = swift_getWitnessTable();
  v73 = v7;
  v71 = WitnessTable;
  v9 = sub_1DAED07DC();
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v72 = v69 - v10;
  v77 = v11;
  v83 = sub_1DAECF2AC();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v79 = v69 - v14;
  v70 = sub_1DAED018C();
  v15 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v17 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08598, &qword_1DAED6970);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v69 - v19;
  v21 = sub_1DAED01DC();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[1])
  {
    v69[1] = *a1;
    (*(v22 + 104))(v25, *MEMORY[0x1E6980F30], v21, v23);
    v26 = sub_1DAED00EC();
    (*(*(v26 - 8) + 56))(v20, 1, 1, v26);

    sub_1DAED016C();
    sub_1DAD64398(v20, &qword_1ECC08598, &qword_1DAED6970);
    (*(v22 + 8))(v25, v21);
    v27 = v70;
    (*(v15 + 104))(v17, *MEMORY[0x1E6980EA8], v70);
    sub_1DAED01AC();

    (*(v15 + 8))(v17, v27);
    v28 = sub_1DAED026C();
    v30 = v29;
    v32 = v31;

    sub_1DAED00FC();
    v33 = sub_1DAED020C();
    v35 = v34;
    v37 = v36;
    sub_1DADEA34C(v28, v30, v32 & 1);

    LODWORD(v117) = sub_1DAECFB9C();
    v38 = sub_1DAED023C();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_1DADEA34C(v33, v35, v37 & 1);

    sub_1DAED092C();
    sub_1DAECF35C();
    v42 &= 1u;
    LOBYTE(v85) = v42;
    v45 = sub_1DAED005C();
    sub_1DAECF06C();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    LOBYTE(v87[0]) = 0;
    v54 = sub_1DAED006C();
    sub_1DAECF06C();
    LOBYTE(v102[0]) = 0;
    *&v103 = v38;
    *(&v103 + 1) = v40;
    LOBYTE(v104) = v42;
    *(&v104 + 1) = v44;
    v109 = v92;
    v110 = v93;
    v111 = v94;
    v105 = v88;
    v106 = v89;
    v107 = v90;
    v108 = v91;
    LOBYTE(v112) = v45;
    *(&v112 + 1) = v47;
    *&v113 = v49;
    *(&v113 + 1) = v51;
    *&v114 = v53;
    BYTE8(v114) = 0;
    LOBYTE(v115) = v54;
    *(&v115 + 1) = v55;
    *&v116[0] = v56;
    *(&v116[0] + 1) = v57;
    *&v116[1] = v58;
    BYTE8(v116[1]) = 0;
    nullsub_1();
    v128 = v114;
    v129 = v115;
    v130[0] = v116[0];
    *(v130 + 9) = *(v116 + 9);
    v125 = v111;
    v126 = v112;
    v127 = v113;
    v121 = v107;
    v122 = v108;
    v123 = v109;
    v124 = v110;
    v117 = v103;
    v118 = v104;
    v119 = v105;
    v120 = v106;
  }

  else
  {
    sub_1DADEA10C(&v117);
  }

  MEMORY[0x1EEE9AC00](v59);
  sub_1DAECF8FC();
  v60 = v72;
  sub_1DAED07CC();
  sub_1DAED003C();
  v61 = v77;
  v62 = swift_getWitnessTable();
  v63 = v82;
  sub_1DAED058C();
  (*(v74 + 8))(v60, v61);
  v102[2] = v62;
  v102[3] = MEMORY[0x1E697E5D8];
  v64 = v83;
  v80 = swift_getWitnessTable();
  v65 = v79;
  sub_1DADB6258(v63, v64, v79);
  v66 = v81;
  v67 = *(v81 + 8);
  v67(v63, v64);
  v99 = v128;
  v100 = v129;
  v101[0] = v130[0];
  *(v101 + 9) = *(v130 + 9);
  v95 = v124;
  v96 = v125;
  v97 = v126;
  v98 = v127;
  v93 = v122;
  v94 = v123;
  v88 = v117;
  v89 = v118;
  v91 = v120;
  v92 = v121;
  v90 = v119;
  v102[0] = &v88;
  (*(v66 + 16))(v63, v65, v64);
  v102[1] = v63;
  sub_1DAD6495C(&v117, &v103, &qword_1ECC08590, &qword_1DAED6968);
  v87[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08590, &qword_1DAED6968);
  v87[1] = v64;
  v85 = sub_1DADEA164();
  v86 = v80;
  sub_1DADB7ABC(v102, 2uLL, v87);
  sub_1DAD64398(&v117, &qword_1ECC08590, &qword_1DAED6968);
  v67(v65, v64);
  v67(v63, v64);
  v115 = v100;
  v116[0] = v101[0];
  *(v116 + 9) = *(v101 + 9);
  v111 = v96;
  v112 = v97;
  v113 = v98;
  v114 = v99;
  v107 = v92;
  v108 = v93;
  v109 = v94;
  v110 = v95;
  v103 = v88;
  v104 = v89;
  v105 = v90;
  v106 = v91;
  return sub_1DAD64398(&v103, &qword_1ECC08590, &qword_1DAED6968);
}

uint64_t sub_1DADE8C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = a5;
  v37 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  v45 = v21;
  v46 = v22;
  v35 = v23;
  v47 = v23;
  v48 = v24;
  v25 = type metadata accessor for CarPlayExpandedView(0, &v45);
  sub_1DADB6258(a1 + v25[13], a2, v20);
  v26 = v25[14];
  v27 = *(a1 + v25[15]);
  v28 = a1 + v26;
  v29 = a4;
  sub_1DADB6258(v28, a3, v12);
  (*(v14 + 16))(v17, v20, a2);
  v43 = v27;
  v44 = 0;
  v45 = v17;
  v46 = &v43;
  v31 = v36;
  v30 = v37;
  (*(v37 + 16))(v36, v12, a3);
  v47 = v31;
  v42[0] = a2;
  v42[1] = MEMORY[0x1E6981840];
  v42[2] = a3;
  v39 = v35;
  v40 = MEMORY[0x1E6981838];
  v41 = v29;
  sub_1DADB7ABC(&v45, 3uLL, v42);
  v32 = *(v30 + 8);
  v32(v12, a3);
  v33 = *(v14 + 8);
  v33(v20, a2);
  v32(v31, a3);
  return (v33)(v17, a2);
}

unint64_t sub_1DADE8F48()
{
  result = qword_1ECC084C0;
  if (!qword_1ECC084C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC084C0);
  }

  return result;
}

double sub_1DADE8F9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v57 - v6;
  v80 = sub_1DAED17AC();
  v7 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED182C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a1;
  sub_1DAE9150C(a1);
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_1DAED256C();
  v61 = (v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  v81 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  v13 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);

  v86 = v14;
  v87 = v13;
  MEMORY[0x1E127DA50](0xD000000000000015, 0x80000001DAEE1020);
  v15 = v86;
  v16 = v87;
  v17 = *MEMORY[0x1E6985918];
  v18 = *(v10 + 104);
  v78 = v10 + 104;
  v79 = v18;
  v19 = v9;
  (v18)(v12, v17, v9);
  v74 = *MEMORY[0x1E69858D0];
  v20 = *(v7 + 104);
  v75 = v7 + 104;
  v77 = v20;
  v21 = v63;
  v22 = v80;
  v20(v63);
  v23 = v15;
  v24 = v21;
  v25 = sub_1DAE770FC(v23, v16, v12, a1, v21);

  v26 = *(v7 + 8);
  v72 = v7 + 8;
  v73 = v26;
  v26(v24, v22);
  v65 = *(v10 + 8);
  v71 = v10 + 8;
  v27 = v19;
  v65(v12, v19);
  v69 = *MEMORY[0x1E697DBA8];
  v28 = v69;
  v29 = sub_1DAECF0AC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 104);
  v68 = v30 + 104;
  v70 = v31;
  v32 = v57;
  v31(v57, v28, v29);
  v33 = *(v30 + 56);
  v66 = v30 + 56;
  v67 = v33;
  v33(v32, 0, 1, v29);
  v34 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  v35 = v64;
  sub_1DAD6495C(v25 + v34, v64, &qword_1ECC08370, &unk_1DAED6580);
  swift_beginAccess();
  v62 = v25;
  sub_1DADE9908(v32, v25 + v34);
  swift_endAccess();
  sub_1DAE62CC4(v35);
  sub_1DAD64398(v35, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v32, &qword_1ECC08370, &unk_1DAED6580);
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1DAED256C();
  v37 = *v61;
  v36 = v61[1];
  v38 = v61;

  v84 = v37;
  v85 = v36;
  MEMORY[0x1E127DA50](0xD000000000000016, 0x80000001DAEE1040);
  v39 = v84;
  v40 = v85;
  *v12 = 1;
  v60 = *MEMORY[0x1E6985910];
  v58 = v19;
  v79(v12);
  v41 = v63;
  v42 = v80;
  v77(v63, v74, v80);
  v43 = sub_1DAE770FC(v39, v40, v12, v76, v41);

  v73(v41, v42);
  v65(v12, v27);
  v59 = v29;
  v70(v32, v69, v29);
  v67(v32, 0, 1, v29);
  v44 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  v45 = v64;
  sub_1DAD6495C(v43 + v44, v64, &qword_1ECC08370, &unk_1DAED6580);
  swift_beginAccess();
  sub_1DADE9908(v32, v43 + v44);
  swift_endAccess();
  sub_1DAE62CC4(v45);
  sub_1DAD64398(v45, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v32, &qword_1ECC08370, &unk_1DAED6580);
  v82 = 0;
  v83 = 0xE000000000000000;
  sub_1DAED256C();
  v46 = *v38;
  v47 = v38[1];

  v82 = v46;
  v83 = v47;
  MEMORY[0x1E127DA50](0xD000000000000017, 0x80000001DAEE1060);
  v48 = v82;
  v49 = v83;
  *v12 = 2;
  v50 = v58;
  (v79)(v12, v60, v58);
  v51 = v80;
  v77(v41, v74, v80);
  v52 = sub_1DAE770FC(v48, v49, v12, v76, v41);

  v73(v41, v51);
  v65(v12, v50);
  v53 = v59;
  v70(v32, v69, v59);
  v67(v32, 0, 1, v53);
  v54 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD6495C(v52 + v54, v45, &qword_1ECC08370, &unk_1DAED6580);
  swift_beginAccess();
  sub_1DADE9908(v32, v52 + v54);
  swift_endAccess();
  sub_1DAE62CC4(v45);
  sub_1DAD64398(v45, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v32, &qword_1ECC08370, &unk_1DAED6580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1DAED67C0;
  *(v55 + 32) = v62;
  *(v55 + 40) = v43;
  *(v55 + 48) = v52;
  *(v81 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels) = v55;

  sub_1DAE8B590(0x7463656E6E6F63uLL, 0xE700000000000000);

  return result;
}

uint64_t sub_1DADE9908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DADE998C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DADE99D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}