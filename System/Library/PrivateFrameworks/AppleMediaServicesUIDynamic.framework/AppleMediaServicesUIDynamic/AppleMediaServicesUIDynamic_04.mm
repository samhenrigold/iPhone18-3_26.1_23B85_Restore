BOOL sub_1CA1426B4(uint64_t a1)
{
  v70 = a1;
  v2 = sub_1CA19ADF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1CA19BDA8();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - v10;
  v12 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph];
  if (v12)
  {
    v55 = v3;
    v64 = v9;
    v66 = v4;
    v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = v8;
    sub_1CA0F2110(0, &qword_1EE03C130, 0x1E6959A28);

    sub_1CA19B7C8();
    v58 = v71[0];
    sub_1CA19B7D8();
    v69 = v5;
    sub_1CA19BE18();
    sub_1CA0F2110(0, &qword_1EE03C268, 0x1E698CAC8);
    sub_1CA19BE18();
    v63 = v71[0];
    sub_1CA19BE18();
    v57 = LOBYTE(v71[0]);
    v56 = v71[1];
    v67 = v11;
    v65 = [objc_allocWithZone(MEMORY[0x1E698CB70]) initWithBag_];
    swift_unknownObjectRelease();
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v13 = sub_1CA19AFF8();
    v61 = __swift_project_value_buffer(v13, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v72 = type metadata accessor for DynamicLabel();
    v71[0] = v1;
    v62 = v1;
    v14 = AMSLogKey();
    v60 = v12;
    if (v14)
    {
      v15 = v14;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v71);
    sub_1CA19AF18();
    v72 = v2;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v71);
    v21 = v55;
    v23 = v55 + 16;
    v22 = *(v55 + 16);
    v24 = v70;
    v22(boxed_opaque_existential_2Tm);
    v53 = v22;
    v54 = v23;
    sub_1CA19AF38();
    sub_1CA10BDC8(v71, &qword_1EC433830, qword_1CA1A0A30);
    sub_1CA19AFC8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339F0, &unk_1CA1A0C10);
    v25 = sub_1CA19AD88();
    v26 = [v65 typeForURL_];

    v61 = sub_1CA19BEE8();
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = v68;
    (*(v68 + 16))(v64, v67, v69);
    v28 = v59;
    (v22)(v59, v24, v2);
    v29 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v50 = v2;
    v30 = (v6 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = v21;
    v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = *(v21 + 80);
    v51 = v34 | 7;
    v35 = swift_allocObject();
    *(v35 + 16) = v52;
    (*(v27 + 32))(v35 + v29, v64, v69);
    v36 = v58;
    *(v35 + v30) = v58;
    *(v35 + v32) = v63;
    v37 = v35 + v33;
    *v37 = v57;
    *(v37 + 8) = v56;
    v38 = *(v31 + 32);
    v39 = v50;
    v38(v35 + ((v34 + v33 + 16) & ~v34), v28, v50);
    v53(v28, v70, v39);
    v40 = swift_allocObject();
    v41 = v62;
    *(v40 + 16) = v62;
    v38(v40 + ((v34 + 24) & ~v34), v28, v39);
    v42 = sub_1CA0F2110(0, &qword_1EE03C230, 0x1E69E9610);
    v43 = v36;
    v44 = v63;
    v45 = v41;
    v46 = sub_1CA19C598();
    v72 = v42;
    v73 = MEMORY[0x1E69AB720];
    v71[0] = v46;
    sub_1CA19BE68();

    v12 = v60;

    (*(v68 + 8))(v67, v69);
    __swift_destroy_boxed_opaque_existential_2(v71);
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v16 = sub_1CA19AFF8();
    v69 = __swift_project_value_buffer(v16, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v72 = type metadata accessor for DynamicLabel();
    v71[0] = v1;
    v17 = v1;
    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v71);
    sub_1CA19AF18();
    v72 = v2;
    v47 = __swift_allocate_boxed_opaque_existential_2Tm(v71);
    (*(v3 + 16))(v47, v70, v2);
    sub_1CA19AF38();
    sub_1CA10BDC8(v71, &qword_1EC433830, qword_1CA1A0A30);
    sub_1CA19AFB8();
  }

  return v12 != 0;
}

void sub_1CA142FD4(void **a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_1CA19ADF8();
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v51 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v44 = v15;
    v47 = a3;
    v48 = a5;
    v46 = a6;
    v49 = a7;
    v50 = a8;
    v20 = [v17 integerValue];
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v45 = a4;
    v21 = sub_1CA19AFF8();
    __swift_project_value_buffer(v21, qword_1EE040B90);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    sub_1CA19AF88();
    v43[1] = v22;
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v43[0] = type metadata accessor for DynamicLabel();
    v55 = v43[0];
    v54[0] = v19;
    v53 = v19;
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v54);
    sub_1CA19AF18();
    type metadata accessor for AMSParserURLType(0);
    v55 = v25;
    v54[0] = v20;
    sub_1CA19AF38();
    sub_1CA10BDC8(v54, &qword_1EC433830, qword_1CA1A0A30);
    sub_1CA19AFC8();

    if (v20 == 2)
    {
      v37 = sub_1CA19BD68();
      v38 = v51;
      (*(v52 + 16))(v51, v50, v44);
      v39 = objc_allocWithZone(MEMORY[0x1E698CCC8]);
      v32 = sub_1CA144220(v37, v38);
      [v32 setAnonymousMetrics_];
      [v32 setClientInfo_];
      v26 = v53;
      if (v49)
      {
        sub_1CA16C5C4(v49);
        v40 = sub_1CA19C008();
      }

      else
      {
        v40 = 0;
      }

      [v32 setMetricsOverlay_];
    }

    else
    {
      v26 = v53;
      if (v20 == 1)
      {
        *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
        v55 = v43[0];
        v54[0] = v26;
        v34 = v26;
        v35 = AMSLogKey();
        if (v35)
        {
          v36 = v35;
          sub_1CA19C118();
        }

        sub_1CA19AF58();

        __swift_destroy_boxed_opaque_existential_2(v54);
        sub_1CA19AF18();
        sub_1CA19AFB8();

        goto LABEL_22;
      }

      if (v20)
      {
        v41 = objc_opt_self();
        v42 = sub_1CA19AD88();
        [v41 openStandardURL_];

LABEL_22:
        return;
      }

      sub_1CA0F2110(0, &qword_1EC433A00, 0x1E698CD40);
      v27 = sub_1CA19BD68();
      v28 = v45;
      v29 = v45;
      v30 = v48;
      v31 = v48;
      v32 = sub_1CA143580(v27, v28, v30);
      if (v49)
      {
        v33 = sub_1CA19C008();
      }

      else
      {
        v33 = 0;
      }

      [v32 setMetricsOverlay_];

      v40 = sub_1CA19AD88();
    }

    sub_1CA1435EC(v32);
    goto LABEL_22;
  }
}

id sub_1CA143580(uint64_t a1, void *a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBag:a1 account:a2 clientInfo:a3];
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_1CA1435EC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph))
  {
    v2 = result;
    type metadata accessor for NavigationControllerList();
    sub_1CA19B7D8();

    sub_1CA19BE18();
    v3 = NavigationControllerList.topNavigationController.getter();
    v4 = [v3 topViewController];

    if (v4)
    {
      [v4 presentViewController:v2 animated:1 completion:0];
    }
  }

  return result;
}

void sub_1CA1436C8(uint64_t a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v12 = type metadata accessor for DynamicLabel();
  v11[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v11);
  sub_1CA19AF18();
  swift_getErrorValue();
  v12 = v10;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v11);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_2Tm);
  sub_1CA19AF38();
  sub_1CA10BDC8(v11, &qword_1EC433830, qword_1CA1A0A30);
  sub_1CA19AFB8();

  v8 = objc_opt_self();
  v9 = sub_1CA19AD88();
  [v8 openStandardURL_];
}

void (*DynamicLabel.numberOfLines.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DynamicLabel.numberOfLines.getter();
  return sub_1CA143994;
}

id sub_1CA1439C4(SEL *a1)
{
  result = [*(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) textContainer];
  if (result)
  {
    v4 = result;
    v5 = [result *a1];

    return v5;
  }

  return result;
}

void sub_1CA143A2C(uint64_t a1, SEL *a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) textContainer];
  [v5 *a2];
}

void (*DynamicLabel.lineBreakMode.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DynamicLabel.lineBreakMode.getter();
  return sub_1CA143AEC;
}

void DynamicLabel.font.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) setFont_];

  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount) = 0;
}

void (*DynamicLabel.font.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = DynamicLabel.font.getter();
  return sub_1CA143BA4;
}

void sub_1CA143BA4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    DynamicLabel.font.setter(v2);
  }

  else
  {
    DynamicLabel.font.setter(*a1);
  }
}

uint64_t DynamicLabel.isTextExtraTall.getter()
{
  v1 = sub_1CA19ABF8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = v6 - v5;
  v8 = [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) text];
  if (v8)
  {
    v9 = v8;
    sub_1CA19C118();

    sub_1CA19ABD8();
    sub_1CA0FB77C();
    OUTLINED_FUNCTION_6_10();
    sub_1CA19C718();
    LOBYTE(v9) = v10;
    (*(v3 + 8))(v7, v1);

    v11 = v9 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

id DynamicLabel.textLength.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) text];
  if (result)
  {
    v2 = result;
    sub_1CA19C118();

    v3 = sub_1CA19C1A8();

    return v3;
  }

  return result;
}

void DynamicLabel.measurements(fitting:in:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  OUTLINED_FUNCTION_23_3();
  sub_1CA140350(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_17_3();
  [v10 v11];
  if (DynamicLabel.isTextExtraTall.getter())
  {
    v12 = DynamicLabel.font.getter();
    if (v12)
    {
      v13 = v12;
      sub_1CA19C678();
    }

    else
    {
      __break(1u);
    }
  }
}

void (*sub_1CA14403C(id *a1))(uint64_t *a1)
{
  a1[1] = *v1;
  *a1 = DynamicLabel.numberOfLines.getter();
  return sub_1CA143994;
}

void (*sub_1CA1440D0(id *a1))(uint64_t *a1)
{
  a1[1] = *v1;
  *a1 = DynamicLabel.lineBreakMode.getter();
  return sub_1CA143AEC;
}

void (*sub_1CA144164(id *a1))(void **a1, char a2)
{
  a1[1] = *v1;
  *a1 = DynamicLabel.font.getter();
  return sub_1CA143BA4;
}

id sub_1CA144220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA19AD88();
  v7 = [v3 initWithBag:a1 URL:v6];
  swift_unknownObjectRelease();

  v8 = sub_1CA19ADF8();
  (*(*(v8 - 8) + 8))(a2, v8);
  return v7;
}

void sub_1CA1442BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA19C0E8();

  [a3 setAccessibilityLabel_];
}

id sub_1CA144320(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for DynamicLabel());
  (*(v13 + 16))(v15, a3, a6);
  v17 = sub_1CA1444A0(a1, a2, v15, v9, v16, a6, a7);
  (*(v13 + 8))(a3, a6);
  return v17;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id sub_1CA1444A0(uint64_t a1, void *a2, uint64_t a3, char a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a6;
  v20[4] = a7;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_2Tm, a3, a6);
  v14 = &a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_shrinkToFit] = 0;
  a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount] = 0;
  v15 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label;
  *&a5[v15] = [objc_allocWithZone(MEMORY[0x1E698CCA0]) init];
  *&a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph] = 0;
  *&a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment] = a1;
  *&a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultColor] = a2;
  sub_1CA0F2ACC(v20, &a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultCustomTextStyle]);
  a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_centerText] = a4;
  v19.receiver = a5;
  v19.super_class = type metadata accessor for DynamicLabel();
  v16 = a2;
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1CA1400BC();
  sub_1CA14010C();

  __swift_destroy_boxed_opaque_existential_2(v20);
  return v17;
}

uint64_t sub_1CA14461C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433918, &unk_1CA1A4280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CA144750()
{
  OUTLINED_FUNCTION_10_6();
  v2 = sub_1CA19BDA8();
  OUTLINED_FUNCTION_7_3(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_12_4(v9);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + 16);
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = v1 + ((*(v10 + 80) + v8 + 16) & ~*(v10 + 80));

  sub_1CA142FD4(v0, v13, v1 + v4, v11, v12, v14, v15, v16);
}

void sub_1CA144850()
{
  OUTLINED_FUNCTION_10_6();
  v2 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_12_4(v2);
  v3 = *(v1 + 16);

  sub_1CA1436C8(v0, v3);
}

unint64_t sub_1CA144A24()
{
  result = qword_1EC433A20;
  if (!qword_1EC433A20)
  {
    sub_1CA19AE98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433A20);
  }

  return result;
}

id OUTLINED_FUNCTION_11_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, v9, a3, a4, a5, a6, a7, a8, 0.0, 0.0, 0.0, 0.0);
}

uint64_t OUTLINED_FUNCTION_14_5(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_19_1@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1)
{

  return sub_1CA19AF58();
}

id OUTLINED_FUNCTION_21_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_28_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return sub_1CA19AF58();
}

uint64_t sub_1CA144C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CA19B148();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_3();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CB0, &qword_1CA1A3400);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1CA10BC7C(v2, &v17 - v12, &qword_1EC432CB0, &qword_1CA1A3400);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CA19B0E8();
    OUTLINED_FUNCTION_0_4();
    return (*(v14 + 32))(a1, v13);
  }

  else
  {
    sub_1CA19C4C8();
    v16 = sub_1CA19B238();
    sub_1CA19B058();

    sub_1CA19B138();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_1CA144DE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CA19B148();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_3();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CB8, &unk_1CA19F360);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v13 = type metadata accessor for DynamicLabelText(0);
  sub_1CA10BC7C(v1 + *(v13 + 20), v12, &qword_1EC432CB8, &unk_1CA19F360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CA12F3F0(v12, a1);
  }

  sub_1CA19C4C8();
  v15 = sub_1CA19B238();
  sub_1CA19B058();

  sub_1CA19B138();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v9, v3);
}

__n128 DynamicLabelText.init(text:objectGraph:)@<Q0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CB0, &qword_1CA1A3400);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for DynamicLabelText(0);
  v6 = v5[5];
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CB8, &unk_1CA19F360);
  swift_storeEnumTagMultiPayload();
  swift_weakInit();
  *(a3 + v5[8]) = 4;
  v7 = v5[9];
  *(a3 + v7) = [objc_opt_self() ams_primaryText];
  *(a3 + v5[10]) = 0;
  v8 = *MEMORY[0x1E69DDCF8];
  *(a3 + v5[11]) = *MEMORY[0x1E69DDCF8];
  swift_weakAssign();
  v9 = v8;

  v10 = a3 + v5[7];
  result = *a1;
  v12 = *(a1 + 16);
  *v10 = *a1;
  *(v10 + 1) = v12;
  *(v10 + 4) = *(a1 + 32);
  return result;
}

uint64_t type metadata accessor for DynamicLabelText(uint64_t a1)
{
  result = qword_1EC433A98;
  if (!qword_1EC433A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DynamicLabelText.alignment(_:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_18(a1);
  result = type metadata accessor for DynamicLabelText(0);
  *(v2 + *(result + 32)) = v1;
  return result;
}

void DynamicLabelText.font(_:)(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_18(a1);
  v3 = (v2 + *(type metadata accessor for DynamicLabelText(0) + 44));

  objc_storeStrong(v3, v1);
}

uint64_t DynamicLabelText.fontTraits(_:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  sub_1CA145838(v2, a2);
  result = type metadata accessor for DynamicLabelText(0);
  *(a2 + *(result + 40)) = a1;
  return result;
}

void DynamicLabelText.foregroundColor(_:)(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_18(a1);
  v3 = (v2 + *(type metadata accessor for DynamicLabelText(0) + 36));

  objc_storeStrong(v3, v1);
}

id DynamicLabelText.makeUIView(context:)()
{
  v1 = sub_1CA19B068();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for DynamicLabelText(0);
  v11 = *(v0 + v10[8]);
  v12 = *(v0 + v10[9]);
  v13 = *(v0 + v10[11]);
  v14 = *(v0 + v10[10]);
  *v9 = v13;
  *(v9 + 2) = v14;
  v15 = *MEMORY[0x1E69AB8C0];
  sub_1CA19B088();
  OUTLINED_FUNCTION_0_4();
  (*(v16 + 104))(v9, v15);
  (*(v3 + 104))(v9, *MEMORY[0x1E69AB860], v1);
  (*(v3 + 16))(v7, v9, v1);
  v17 = v12;
  v18 = v13;
  v19 = sub_1CA14589C(v11, v17, v7, 1);
  (*(v3 + 8))(v9, v1);
  return v19;
}

uint64_t DynamicLabelText.updateUIView(_:context:)()
{
  v1 = type metadata accessor for DynamicLabelText(0);
  sub_1CA10BC7C(v0 + *(v1 + 28), &v4, &qword_1EC433918, &unk_1CA1A4280);
  if (!v5)
  {
    return sub_1CA145AF0(&v4);
  }

  sub_1CA144A80(&v4, v6);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    DynamicLabel.apply(text:asPartOf:)(v6, Strong);
  }

  return __swift_destroy_boxed_opaque_existential_2(v6);
}

double DynamicLabelText.sizeThatFits(_:uiView:context:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v17 = a4;
  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336E0, &unk_1CA19FB00);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  sub_1CA19B0C8();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336F0, &unk_1CA1A33F0);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1CA144C0C(&v16 - v11);
  v13 = sub_1CA19B0E8();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1CA19C638();
  sub_1CA19C688();
  OUTLINED_FUNCTION_6_8();
  sub_1CA19B0B8();
  sub_1CA19C698();
  sub_1CA144DE4(v8);
  sub_1CA19C628();
  sub_1CA19C688();
  OUTLINED_FUNCTION_6_8();
  sub_1CA19B0A8();
  sub_1CA19C698();
  [a5 updateTraitsIfNeeded];
  CGSizeMake();
  [a5 sizeThatFits_];
  return v14 + 1.0;
}

uint64_t sub_1CA1456F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA145D78(&qword_1EC433AB0, &protocol conformance descriptor for DynamicLabelText);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1CA145774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA145D78(&qword_1EC433AB0, &protocol conformance descriptor for DynamicLabelText);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1CA1457F4(uint64_t a1)
{
  sub_1CA145D78(&qword_1EC433AB0, &protocol conformance descriptor for DynamicLabelText);
  sub_1CA19B1F8();
  __break(1u);
}

uint64_t sub_1CA145838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicLabelText(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CA14589C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = sub_1CA19B068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DynamicLabel();
  v13 = objc_allocWithZone(v12);
  (*(v9 + 16))(v11, a3, v8);
  v22[3] = v8;
  v22[4] = MEMORY[0x1E69AB870];
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v22);
  (*(v9 + 32))(boxed_opaque_existential_2Tm, v11, v8);
  v15 = &v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_shrinkToFit] = 0;
  v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount] = 0;
  v16 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label;
  *&v13[v16] = [objc_allocWithZone(MEMORY[0x1E698CCA0]) init];
  *&v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph] = 0;
  *&v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment] = a1;
  *&v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultColor] = a2;
  sub_1CA0F2ACC(v22, &v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultCustomTextStyle]);
  v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_centerText] = a4;
  v21.receiver = v13;
  v21.super_class = v12;
  v17 = a2;
  v18 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1CA1400BC();
  sub_1CA14010C();

  (*(v9 + 8))(a3, v8);
  __swift_destroy_boxed_opaque_existential_2(v22);
  return v18;
}

uint64_t sub_1CA145AF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433918, &unk_1CA1A4280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CA145BB4(uint64_t a1)
{
  sub_1CA12EC3C(319);
  if (v1 <= 0x3F)
  {
    sub_1CA145D14(319, &qword_1EC4336D8, &qword_1EC4336E0, &unk_1CA19FB00, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1CA145D14(319, &qword_1EC433AA8, &qword_1EC433950, &qword_1CA1A4290, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for NSTextAlignment(319);
        if (v4 <= 0x3F)
        {
          sub_1CA12CA28();
          if (v5 <= 0x3F)
          {
            type metadata accessor for SymbolicTraits(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for TextStyle(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CA145D14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1CA145D78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DynamicLabelText(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_18@<X0>(uint64_t a1@<X8>)
{

  return sub_1CA145838(v1, a1);
}

uint64_t DynamicMarkdownText.Artwork.Alignment.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CA19CA48();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t DynamicMarkdownText.Artwork.Alignment.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7265746E6563;
  }

  else
  {
    return 0x656E696C65736162;
  }
}

uint64_t sub_1CA145E94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = DynamicMarkdownText.Artwork.Alignment.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1CA145EC4@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicMarkdownText.Artwork.Alignment.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t DynamicMarkdownText.Artwork.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ColorFactory();
  swift_allocObject();
  v4 = sub_1CA0FEE40();
  v5 = sub_1CA0FCB08(0x6E656D6E67696C61, 0xE900000000000074, &type metadata for DynamicMarkdownText.Artwork);
  MEMORY[0x1EEE9AC00](v5);
  sub_1CA0FEE40();
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  (*(v7 + 8))(a1);

  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v8 + 8))(a2);
  return v4;
}

uint64_t sub_1CA14619C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1CA19B5C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1CA19B4D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Artwork();
  (*(v11 + 16))(v13, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  result = Artwork.__allocating_init(deserializing:using:)(v13, v9);
  *a3 = result;
  return result;
}

unint64_t sub_1CA146354()
{
  result = qword_1EC433AB8;
  if (!qword_1EC433AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433AB8);
  }

  return result;
}

uint64_t sub_1CA1463A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = DynamicMarkdownText.Artwork.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
    *(a3 + 16) = v7;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CA1463F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1CA146434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s7ArtworkV9AlignmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

UIFont_optional __swiftcall DynamicMarkdownText.font(compatibleWith:)(UITraitCollection compatibleWith)
{
  sub_1CA1465F8(v1 + 72, v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_2(v5, v6);
    v2 = sub_1CA19B098();
    __swift_destroy_boxed_opaque_existential_2(v5);
  }

  else
  {
    sub_1CA132B60(v5, &qword_1EC433AC0, &unk_1CA1A46A0);
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1CA1465F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433AC0, &unk_1CA1A46A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA146668(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CA19CA48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CA1466B4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x74754F68737570;
  }

  return 0x647261646E617473;
}

unint64_t sub_1CA146734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA146668(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1CA146764@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA1466B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t DynamicMarkdownText.accessibilityText.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *DynamicMarkdownText.color.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t DynamicMarkdownText.maximumLineCount.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

void *DynamicMarkdownText.strikeThroughColor.getter()
{
  v1 = *(v0 + 168);
  v2 = v1;
  return v1;
}

uint64_t DynamicMarkdownText.text.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

double DynamicMarkdownText.init(text:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433A08, &qword_1CA1A7240);
  v6 = sub_1CA19C038();
  v7 = sub_1CA19C038();
  result = 0.0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *a3 = 5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v6;
  *(a3 + 32) = 5;
  *(a3 + 40) = v7;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  *(a3 + 112) = 1280;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  *(a3 + 136) = 0;
  *(a3 + 144) = 1;
  *(a3 + 152) = 0;
  *(a3 + 160) = 1;
  *(a3 + 168) = 0;
  *(a3 + 176) = a1;
  *(a3 + 184) = a2;
  return result;
}

uint64_t DynamicMarkdownText.init(accessibilityAlignment:accessibilityText:actions:alignment:artworks:baselineSpacing:color:customTextStyle:landscapeAlignment:lineBreakStrategy:maximumLineCount:preferredLineCount:strikeThroughColor:text:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, __int128 a19, uint64_t a20)
{
  v20 = *(a11 + 16);
  *(a9 + 72) = *a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  result = a8 & 1;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 88) = v20;
  *(a9 + 104) = *(a11 + 32);
  *(a9 + 112) = 0;
  *(a9 + 113) = a12;
  *(a9 + 120) = a13;
  *(a9 + 128) = a14 & 1;
  *(a9 + 136) = a15;
  *(a9 + 144) = a16 & 1;
  *(a9 + 152) = a17;
  *(a9 + 160) = a18 & 1;
  *(a9 + 168) = a19;
  *(a9 + 184) = a20;
  return result;
}

uint64_t sub_1CA146A70()
{
  v1 = *(v0 + 8);

  return v1;
}

void *sub_1CA146AA8()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_1CA146AF8()
{
  v1 = *(v0 + 176);

  return v1;
}

void DynamicMarkdownText.init(deserializing:using:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v6 = sub_1CA19B4D8();
  MEMORY[0x1EEE9AC00](v6);
  v57 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ActionFactory();
  inited = swift_initStackObject();
  type metadata accessor for ColorFactory();
  v60 = swift_allocObject();
  type metadata accessor for DynamicFontFactory();
  v8 = swift_initStackObject();
  sub_1CA0FC68C(0xD000000000000016, 0x80000001CA1AC5F0, &type metadata for DynamicMarkdownText, v9, v10, v11, v12, v13, v53, v54, v55, v56, v57, v58, v8, v60);
  if (v3)
  {

    v14 = 5;
  }

  v15 = a2;
  v65[0] = v14;
  v56 = 0xD000000000000011;
  v16 = sub_1CA161FD8();
  v17 = inited;
  v66 = v16;
  v67 = v18;
  v58 = v18;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_17();
  *(v19 - 16) = v17;
  *(v19 - 8) = a2;
  v20 = sub_1CA0FEE40();
  v54 = v6;
  v68 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_3_17();
  *(v21 - 16) = a2;
  v53 = 0;
  v70 = sub_1CA0FEE40();
  sub_1CA0FC68C(0x6E656D6E67696C61, 0xE900000000000074, &type metadata for DynamicMarkdownText, v22, v23, v24, v25, v26, v53, v54, v55, v56, v57, v58, v59, v60);
  v27 = v57;
  v69 = v28;
  v71 = 0;
  v72 = 1;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_3_17();
  *(v29 - 16) = v30;
  *(v29 - 8) = a2;
  v73 = sub_1CA0FEE40();
  sub_1CA19B4E8();
  if (sub_1CA19B498())
  {
    v31 = sub_1CA19BFA8();
    sub_1CA12C890();
    v32 = swift_allocError();
    *v33 = 1953394534;
    v33[1] = 0xE400000000000000;
    v33[2] = &type metadata for DynamicMarkdownText;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69AB690], v31);
    swift_willThrow();
    v34 = OUTLINED_FUNCTION_2_19();
    v35(v34);

    v64 = 0;
    v62 = 0u;
    v63 = 0u;
  }

  else
  {
    DynamicFontFactory.font(deserializing:using:)(v27, a2, v61);
    v47 = OUTLINED_FUNCTION_2_19();
    v48(v47);
    sub_1CA0EBE94(v61, &v62);
  }

  v74 = v62;
  v75 = v63;
  v76 = v64;
  v36 = sub_1CA0FC7E4(0x74616D726F66, 0xE600000000000000, &type metadata for DynamicMarkdownText);
  v37 = v60;
  v77 = v36 & 1;
  v38 = OUTLINED_FUNCTION_0_24();
  sub_1CA0FC68C(v38, v39, v40, v41, v42, v43, v44, v45, v53, v54, v55, v56, v57, v58, v59, v60);
  v78 = v46;
  v79 = qword_1CA1A4848[sub_1CA0FCB3C(v56, 0x80000001CA1AC650, &type metadata for DynamicMarkdownText)];
  v80 = 0;
  v81 = sub_1CA161EA4();
  v82 = 0;
  OUTLINED_FUNCTION_0_24();
  v83 = sub_1CA161EA4();
  v84 = 0;
  MEMORY[0x1EEE9AC00](v83);
  *(&v53 - 2) = v37;
  *(&v53 - 1) = v15;
  OUTLINED_FUNCTION_0_24();
  v85 = sub_1CA0FEE40();
  v49 = sub_1CA161FD8();
  v51 = v50;

  (v57)(a1, 0xE400000000000000);
  v86 = v49;
  v87 = v51;
  sub_1CA1448BC(v65, v55);
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v52 + 8))(v15);
  sub_1CA1446E0(v65);
}

uint64_t sub_1CA147408@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433778, &qword_1CA1A55B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13[-v7];
  sub_1CA19B408();
  v9 = sub_1CA19B758();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v9);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_1CA132B60(v8, &qword_1EC433778, &qword_1CA1A55B0);
    v12 = 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
    *&v13[-16] = a1;
    *&v13[-8] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433A08, &qword_1CA1A7240);
    v12 = sub_1CA19B738();
    result = (*(*(v9 - 8) + 8))(v8, v9);
  }

  *a3 = v12;
  return result;
}

void sub_1CA1475A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  ActionFactory.action(deserializing:using:)(v9);
  if (v5)
  {

    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1CA132B60(v9, &unk_1EC433730, qword_1CA1A0830);
    *(a5 + 48) = 0;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  else
  {
    sub_1CA0EBE94(v9, v11);
    *a5 = a1;
    *(a5 + 8) = a2;
    sub_1CA0EBE94(v11, a5 + 16);
  }
}

uint64_t sub_1CA147664@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433778, &qword_1CA1A55B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-v5];
  sub_1CA19B408();
  v7 = sub_1CA19B758();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_1CA132B60(v6, &qword_1EC433778, &qword_1CA1A55B0);
    v10 = 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
    *&v11[-16] = a1;
    v10 = sub_1CA19B738();
    result = (*(*(v7 - 8) + 8))(v6, v7);
  }

  *a2 = v10;
  return result;
}

void sub_1CA1477E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a1;
  v10 = sub_1CA19B5C8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CA19B4D8();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a3);
  (*(v11 + 16))(v13, a4, v10);
  v18 = DynamicMarkdownText.Artwork.init(deserializing:using:)(v16, v13);
  if (v5)
  {

    v21 = 0;
    a2 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v22 = v18;
    v24 = v20;
    v23 = v19 & 1;

    v21 = v26;
  }

  *a5 = v21;
  a5[1] = a2;
  a5[2] = v22;
  a5[3] = v23;
  a5[4] = v24;
}

uint64_t get_enum_tag_for_layout_string_5JetUI15CustomTextStyle_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CA147A0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1CA147A4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DynamicMarkdownText.LineBreakStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA147BE4()
{
  result = qword_1EC433AC8;
  if (!qword_1EC433AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433AC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_19()
{
  result = v2;
  *(v0 + 32) = *(v1 + 8);
  return result;
}

UIFont_optional __swiftcall DynamicPlainText.font(compatibleWith:)(UITraitCollection compatibleWith)
{
  sub_1CA1465F8(v1 + 40, v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_2(v5, v6);
    v2 = sub_1CA19B098();
    __swift_destroy_boxed_opaque_existential_2(v5);
  }

  else
  {
    sub_1CA147D08(v5);
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1CA147D08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433AC0, &unk_1CA1A46A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DynamicPlainText.accessibilityText.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *DynamicPlainText.color.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t DynamicPlainText.maximumLineCount.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t DynamicPlainText.text.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

double DynamicPlainText.init(text:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 72) = 0;
  result = 0.0;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *a3 = 5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 5;
  *(a3 + 32) = 0;
  *(a3 + 80) = 1281;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  *(a3 + 120) = a1;
  *(a3 + 128) = a2;
  return result;
}

void DynamicPlainText.init(accessibilityAlignment:accessibilityText:alignment:color:customTextStyle:landscapeAlignment:maximumLineCount:preferredLineCount:text:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *(a6 + 16);
  *(a9 + 40) = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 56) = v9;
  *(a9 + 72) = *(a6 + 32);
  *(a9 + 80) = 1;
  *(a9 + 81) = a7;
  *(a9 + 88) = a8;
  OUTLINED_FUNCTION_0_25(a9);
}

void DynamicPlainText.init(accessibilityAlignment:accessibilityText:alignment:color:customTextStyle:maximumLineCount:preferredLineCount:text:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a6 + 16);
  *(a8 + 40) = *a6;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 56) = v8;
  *(a8 + 72) = *(a6 + 32);
  *(a8 + 80) = 1281;
  *(a8 + 88) = a7;
  OUTLINED_FUNCTION_0_25(a8);
}

void *sub_1CA147F4C()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1CA147F9C()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t DynamicPlainText.init(deserializing:using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_1CA19B4D8();
  v46 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ColorFactory();
  v7 = swift_allocObject();
  type metadata accessor for DynamicFontFactory();
  inited = swift_initStackObject();
  sub_1CA0FC68C(0xD000000000000016, 0x80000001CA1AC5F0, &type metadata for DynamicPlainText, v9, v10, v11, v12, v13, v42, v43, v44, v45, v46, inited, *&v48[0], *(&v48[0] + 1));
  if (v2)
  {

    v14 = 5;
  }

  v52[0] = v14;
  v53 = sub_1CA161FD8();
  v54 = v15;
  sub_1CA0FC68C(0x6E656D6E67696C61, 0xE900000000000074, &type metadata for DynamicPlainText, v16, v17, v18, v19, v20, v42, v43, v15, v45, v46, v47, *&v48[0], *(&v48[0] + 1));
  v55 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v45 = v7;
  *(&v42 - 2) = v7;
  *(&v42 - 1) = a1;
  v68 = a1;
  v43 = sub_1CA0FEE40();
  v56 = v43;
  sub_1CA19B4E8();
  if (sub_1CA19B498())
  {
    v22 = sub_1CA19BFA8();
    sub_1CA12C890();
    v23 = swift_allocError();
    *v24 = 1953394534;
    v24[1] = 0xE400000000000000;
    v24[2] = &type metadata for DynamicPlainText;
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69AB690], v22);
    swift_willThrow();
    v25 = OUTLINED_FUNCTION_1_25();
    (type metadata for DynamicPlainText.Kind)(v25);

    v51 = 0;
    v50 = 0u;
    v49 = 0u;
  }

  else
  {
    DynamicFontFactory.font(deserializing:using:)(v6, v68, v48);
    v35 = OUTLINED_FUNCTION_1_25();
    (type metadata for DynamicPlainText.Kind)(v35);
    sub_1CA144A80(v48, &v49);
  }

  v57 = v49;
  v58 = v50;
  v59 = v51;
  v60 = sub_1CA0FC7E4(0x74616D726F66, 0xE600000000000000, &type metadata for DynamicPlainText) & 1;
  v26 = OUTLINED_FUNCTION_4_14();
  sub_1CA0FC68C(v26, v27, v28, v29, v30, v31, v32, v33, v42, v43, v44, v45, v46, v47, *&v48[0], *(&v48[0] + 1));
  v61 = v34;
  v62 = sub_1CA161EA4();
  v63 = 0;
  OUTLINED_FUNCTION_4_14();
  v64 = sub_1CA161EA4();
  v65 = 0;
  v36 = sub_1CA161FD8();
  v38 = v37;

  v39 = OUTLINED_FUNCTION_2_20();
  (type metadata for DynamicPlainText.Kind)(v39);
  v66 = v36;
  v67 = v38;
  sub_1CA1449C8(v52, v42);
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v40 + 8))(v68);
  return sub_1CA14468C(v52);
}

uint64_t sub_1CA14860C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 128);
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

uint64_t sub_1CA14864C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_25(uint64_t a1@<X8>)
{
  *(a1 + 96) = v5;
  *(a1 + 104) = v4;
  *(a1 + 112) = v3 & 1;
  *(a1 + 120) = v2;
  *(a1 + 128) = v1;
}

AppleMediaServicesUIDynamic::DynamicTextAlignment_optional __swiftcall DynamicTextAlignment.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1CA19CA48();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t DynamicTextAlignment.rawValue.getter(char a1)
{
  result = 1952867692;
  switch(a1)
  {
    case 1:
      result = 0x7265746E6563;
      break;
    case 2:
      result = 0x7468676972;
      break;
    case 3:
      result = 0x656966697473756ALL;
      break;
    case 4:
      result = 0x6C61727574616ELL;
      break;
    default:
      return result;
  }

  return result;
}

AppleMediaServicesUIDynamic::DynamicTextAlignment_optional sub_1CA14881C@<W0>(Swift::String *a1@<X0>, AppleMediaServicesUIDynamic::DynamicTextAlignment_optional *a2@<X8>)
{
  result.value = DynamicTextAlignment.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1CA14884C@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicTextAlignment.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

AppleMediaServicesUIDynamic::DynamicTextFormat_optional __swiftcall DynamicTextFormat.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1CA19CA48();

  if (v1 == 1)
  {
    v2.value = AppleMediaServicesUIDynamic_DynamicTextFormat_plain;
  }

  else
  {
    v2.value = AppleMediaServicesUIDynamic_DynamicTextFormat_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t DynamicTextFormat.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E69616C70;
  }

  else
  {
    return 0x6E776F646B72616DLL;
  }
}

unint64_t sub_1CA148904()
{
  result = qword_1EC433AD0;
  if (!qword_1EC433AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433AD0);
  }

  return result;
}

unint64_t sub_1CA148968()
{
  result = qword_1EC433AD8;
  if (!qword_1EC433AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433AD8);
  }

  return result;
}

AppleMediaServicesUIDynamic::DynamicTextFormat_optional sub_1CA1489D4@<W0>(Swift::String *a1@<X0>, AppleMediaServicesUIDynamic::DynamicTextFormat_optional *a2@<X8>)
{
  result.value = DynamicTextFormat.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1CA148A04@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicTextFormat.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DynamicTextAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DynamicTextFormat(_BYTE *result, unsigned int a2, unsigned int a3)
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

void DynamicTextFactory.dynamicText(deserializing:using:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a2;
  v34 = a3;
  v5 = sub_1CA19B5C8();
  OUTLINED_FUNCTION_1_0();
  v32 = v6;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  v22 = v35;
  v23 = sub_1CA0FC7E4(0x74616D726F66, 0xE600000000000000, *v3);
  if (!v22)
  {
    v35 = v12;
    v24 = *(v15 + 16);
    v25 = (v32 + 16);
    if (v23)
    {
      v24(v19, a1, v13);
      (*v25)(v10, v33, v5);
      v26 = v34;
      v34[3] = &type metadata for DynamicPlainText;
      v26[4] = &protocol witness table for DynamicPlainText;
      v27 = swift_allocObject();
      *v26 = v27;
      DynamicPlainText.init(deserializing:using:)(v10, v27 + 16);
    }

    else
    {
      v24(v21, a1, v13);
      v28 = v35;
      (*v25)(v35, v33, v5);
      v29 = v34;
      v34[3] = &type metadata for DynamicMarkdownText;
      v29[4] = &protocol witness table for DynamicMarkdownText;
      v30 = swift_allocObject();
      *v29 = v30;
      DynamicMarkdownText.init(deserializing:using:)(v21, v28, v30 + 16);
    }
  }
}

id sub_1CA148F10()
{
  ObjectType = swift_getObjectType();
  [swift_getObjCClassFromMetadata() setUsesSecondGenerationControls_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1CA149110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_14_2();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_30_1(v8);
  swift_weakInit();
  OUTLINED_FUNCTION_8_4();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = a1;
  sub_1CA10BC7C(a2, &v15, &unk_1EC433C80, &qword_1CA1A2A30);
  if (v16)
  {
    sub_1CA0EBE94(&v15, v17);
    __swift_project_boxed_opaque_existential_2(v17, v17[3]);
    v10 = OUTLINED_FUNCTION_55();
    sub_1CA19B6F8();

    return __swift_destroy_boxed_opaque_existential_2(v17);
  }

  else
  {
    v12 = a1;

    sub_1CA10BDC8(&v15, &unk_1EC433C80, &qword_1CA1A2A30);
    v13 = OUTLINED_FUNCTION_12_9();
    sub_1CA152FBC(v13, v14);
  }
}

uint64_t sub_1CA149234()
{
  result = sub_1CA19C0E8();
  qword_1EE03C220 = result;
  return result;
}

uint64_t sub_1CA14926C()
{
  v0 = sub_1CA19B298();
  __swift_allocate_value_buffer(v0, qword_1EE03D088);
  *__swift_project_value_buffer(v0, qword_1EE03D088) = 2;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

id DynamicViewController.__allocating_init(bag:bagValue:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_0_12();
  return DynamicViewController.init(bag:bagValue:)(v2, v3);
}

id DynamicViewController.init(bag:bagValue:)(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433AE0, &qword_1CA1A4B20);
  v3 = [a2 valuePromise];
  sub_1CA19BEE8();
  OUTLINED_FUNCTION_16_2();
  v10[3] = sub_1CA19B8B8();
  v10[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(v10);
  sub_1CA19B8A8();
  sub_1CA19ADF8();
  v4 = sub_1CA19BE58();

  __swift_destroy_boxed_opaque_existential_2(v10);
  v5 = objc_allocWithZone(type metadata accessor for DynamicViewController());
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = sub_1CA149890(v6, v4);

  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_59(ObjectType);
  return v7;
}

id DynamicViewController.__allocating_init(bag:URL:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_0_12();
  return DynamicViewController.init(bag:URL:)(v2, v3);
}

id DynamicViewController.init(bag:URL:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_5();
  v4 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_3();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433AE8, qword_1CA1A4B28);
  (*(v6 + 16))(v10, a2, v4);
  v11 = sub_1CA19BE88();
  v12 = objc_allocWithZone(type metadata accessor for DynamicViewController());
  v13 = sub_1CA149890(v2, v11);
  (*(v6 + 8))(a2, v4);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_59(ObjectType);
  return v13;
}

void sub_1CA1496E8()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_account) = 0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics) = 0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_clientInfo) = 0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_clientOptions) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_internalClientOptions) = 0;
  v2 = (v0 + OBJC_IVAR___AMSUIDDynamicViewController_mediaClientIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_metricsOverlay) = 0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_automaticErrorRetry) = 1;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_child) = 0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_didInitialSetup) = 0;
  v3 = OBJC_IVAR___AMSUIDDynamicViewController_preferredSizingModel;
  type metadata accessor for PreferredSizing();
  *(v1 + v3) = swift_allocObject();
  *(v1 + OBJC_IVAR___AMSUIDDynamicViewController____lazy_storage___childNavigationController) = 0;
  *(v1 + OBJC_IVAR___AMSUIDDynamicViewController_objectGraph) = 0;
  v4 = OBJC_IVAR___AMSUIDDynamicViewController_preloadingCompletionPromise;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0, &unk_1CA1A2A20);
  *(v1 + v4) = sub_1CA19BF08();
  *(v1 + OBJC_IVAR___AMSUIDDynamicViewController_loadState) = 0x8000000000000000;
  *(v1 + OBJC_IVAR___AMSUIDDynamicViewController_loadPromise) = 0;
  sub_1CA19C9F8();
  __break(1u);
}

id sub_1CA149890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR___AMSUIDDynamicViewController_account] = 0;
  v2[OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics] = 0;
  *&v2[OBJC_IVAR___AMSUIDDynamicViewController_clientInfo] = 0;
  *&v2[OBJC_IVAR___AMSUIDDynamicViewController_clientOptions] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___AMSUIDDynamicViewController_internalClientOptions] = 0;
  v6 = &v2[OBJC_IVAR___AMSUIDDynamicViewController_mediaClientIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR___AMSUIDDynamicViewController_metricsOverlay] = 0;
  v2[OBJC_IVAR___AMSUIDDynamicViewController_automaticErrorRetry] = 1;
  *&v2[OBJC_IVAR___AMSUIDDynamicViewController_child] = 0;
  v2[OBJC_IVAR___AMSUIDDynamicViewController_didInitialSetup] = 0;
  v7 = OBJC_IVAR___AMSUIDDynamicViewController_preferredSizingModel;
  type metadata accessor for PreferredSizing();
  *&v3[v7] = swift_allocObject();
  *&v3[OBJC_IVAR___AMSUIDDynamicViewController____lazy_storage___childNavigationController] = 0;
  *&v3[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph] = 0;
  v8 = OBJC_IVAR___AMSUIDDynamicViewController_preloadingCompletionPromise;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0, &unk_1CA1A2A20);
  *&v3[v8] = sub_1CA19BF08();
  *&v3[OBJC_IVAR___AMSUIDDynamicViewController_loadState] = 0x8000000000000000;
  *&v3[OBJC_IVAR___AMSUIDDynamicViewController_loadPromise] = 0;
  *&v3[OBJC_IVAR___AMSUIDDynamicViewController_bag] = a1;
  *&v3[OBJC_IVAR___AMSUIDDynamicViewController_urlPromise] = a2;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for DynamicViewController();
  return objc_msgSendSuper2(&v10, sel_init);
}

id DynamicViewController.__deallocating_deinit()
{
  sub_1CA152600();
  sub_1CA150AD0();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DynamicViewController.account.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___AMSUIDDynamicViewController_account;
  OUTLINED_FUNCTION_1_5(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void DynamicViewController.account.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSUIDDynamicViewController_account;
  OUTLINED_FUNCTION_13(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DynamicViewController.anonymousMetrics.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics;
  OUTLINED_FUNCTION_1_5(a1);
  return *(v1 + v2);
}

uint64_t DynamicViewController.anonymousMetrics.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics;
  result = OUTLINED_FUNCTION_13(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t DynamicViewController.bag.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSUIDDynamicViewController_bag;
  OUTLINED_FUNCTION_13(a1);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

void *DynamicViewController.clientInfo.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___AMSUIDDynamicViewController_clientInfo;
  OUTLINED_FUNCTION_1_5(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void DynamicViewController.clientInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSUIDDynamicViewController_clientInfo;
  OUTLINED_FUNCTION_13(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*DynamicViewController.delegate.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_45_0(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1CA153B2C;
}

uint64_t sub_1CA14A38C(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_13(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*DynamicViewController.mediaContentDelegate.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_45_0(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1CA14A448;
}

void sub_1CA14A44C(void **a1, char a2)
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

id sub_1CA14A4E4(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v3 = a1;
  if (a3(a1, a2))
  {
    sub_1CA19C008();
    OUTLINED_FUNCTION_55();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1CA14A57C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_1CA19C018();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

uint64_t DynamicViewController.mediaClientIdentifier.getter()
{
  OUTLINED_FUNCTION_4_5(v0 + OBJC_IVAR___AMSUIDDynamicViewController_mediaClientIdentifier, v2);

  return OUTLINED_FUNCTION_12_9();
}

uint64_t DynamicViewController.mediaClientIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AMSUIDDynamicViewController_mediaClientIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1CA14A86C()
{
  result = [v0 navigationController];
  if (!result)
  {

    return sub_1CA14A8B4();
  }

  return result;
}

id sub_1CA14A8B4()
{
  v1 = OBJC_IVAR___AMSUIDDynamicViewController____lazy_storage___childNavigationController;
  v2 = *(v0 + OBJC_IVAR___AMSUIDDynamicViewController____lazy_storage___childNavigationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AMSUIDDynamicViewController____lazy_storage___childNavigationController);
  }

  else
  {
    v4 = sub_1CA14A914();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1CA14A914()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
  v1 = [v0 navigationBar];
  v2 = [v0 navigationBar];
  v3 = [v2 standardAppearance];

  [v1 setStandardAppearance_];
  return v0;
}

BOOL sub_1CA14A9C0()
{
  if (*(v0 + OBJC_IVAR___AMSUIDDynamicViewController_objectGraph))
  {
    type metadata accessor for DelegateController();
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();
    OUTLINED_FUNCTION_29_2();

    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_60();
    v1 = DelegateController.shouldDismiss()();
  }

  else
  {
    return 1;
  }

  return v1;
}

id sub_1CA14AA4C()
{
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_loadPromise) = sub_1CA14C2E0();

  v1 = [objc_allocWithZone(MEMORY[0x1E698CA48]) init];
  OUTLINED_FUNCTION_14_2();
  *(swift_allocObject() + 16) = v1;
  OUTLINED_FUNCTION_14_2();
  *(swift_allocObject() + 16) = v1;
  v2 = sub_1CA0F2110(0, &qword_1EE03C230, 0x1E69E9610);
  v3 = v1;
  v4 = sub_1CA19C598();
  v6[3] = v2;
  v6[4] = MEMORY[0x1E69AB720];
  v6[0] = v4;
  sub_1CA19BE68();

  __swift_destroy_boxed_opaque_existential_2(v6);
  return v3;
}

void sub_1CA14AB90(uint64_t a1, void *a2)
{
  v3 = sub_1CA19AD18();
  [a2 finishWithError_];
}

void sub_1CA14AC2C()
{
  if (*(v0 + OBJC_IVAR___AMSUIDDynamicViewController_objectGraph))
  {
    type metadata accessor for DelegateController();
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();
    OUTLINED_FUNCTION_29_2();

    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_60();
    sub_1CA19B3E8();
  }
}

void DynamicViewController.dismiss(animated:completion:)(char a1, void *a2, uint64_t a3)
{
  if (sub_1CA14A9C0())
  {
    if (a2)
    {
      v8[4] = a2;
      v8[5] = a3;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_1CA0F4068;
      v8[3] = &block_descriptor_11;
      a2 = _Block_copy(v8);
    }

    v7 = type metadata accessor for DynamicViewController();
    v9.receiver = v3;
    v9.super_class = v7;
    objc_msgSendSuper2(&v9, sel_dismissViewControllerAnimated_completion_, a1 & 1, a2);
    _Block_release(a2);
  }
}

id DynamicViewController.navigationItem.getter()
{
  if (sub_1CA1334C4())
  {
    v1 = sub_1CA14A86C();
    v2 = [v1 navigationItem];
LABEL_3:
    v3 = v2;

    return v3;
  }

  v5 = [v0 parentViewController];
  if (v5)
  {
    v1 = v5;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v2 = [v1 navigationItem];
      goto LABEL_3;
    }
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for DynamicViewController();
  v6 = objc_msgSendSuper2(&v7, sel_navigationItem);

  return v6;
}

void *DynamicViewController.title.getter()
{
  v1 = [v0 parentViewController];
  if (!v1)
  {
    v7.receiver = v0;
    v7.super_class = type metadata accessor for DynamicViewController();
    v5 = objc_msgSendSuper2(&v7, sel_title);
    if (v5)
    {
      v2 = v5;
      sub_1CA19C118();
      OUTLINED_FUNCTION_41_1();
      goto LABEL_6;
    }

    return 0;
  }

  v2 = v1;
  v3 = [v1 title];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  sub_1CA19C118();
  OUTLINED_FUNCTION_41_1();

LABEL_6:
  return v0;
}

void sub_1CA14B108(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1CA19C118();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

void DynamicViewController.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = [v2 parentViewController];
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      OUTLINED_FUNCTION_53();
      v7 = sub_1CA19C0E8();
    }

    else
    {
      v7 = 0;
    }

    [v6 setTitle_];
  }

  else
  {
    if (a2)
    {
      OUTLINED_FUNCTION_53();
      sub_1CA19C0E8();
      OUTLINED_FUNCTION_29_2();
    }

    else
    {
      v3 = 0;
    }

    v8.receiver = v2;
    v8.super_class = type metadata accessor for DynamicViewController();
    objc_msgSendSuper2(&v8, sel_setTitle_, v3);
  }
}

Swift::Void __swiftcall DynamicViewController.loadView()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DynamicViewController();
  objc_msgSendSuper2(&v4, sel_loadView);
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_defaultPlatformBackgroundColor];
  [v1 setBackgroundColor_];

  v3 = [v0 view];
  sub_1CA153684(0x616E79442E534D41, 0xEB0000000063696DLL, v3);
}

void sub_1CA14B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, ValueMetadata *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_57();
  a25 = v27;
  a26 = v29;
  v30 = v26;
  if (!*&v26[OBJC_IVAR___AMSUIDDynamicViewController_loadPromise])
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
    }

    v35 = sub_1CA19AFF8();
    __swift_project_value_buffer(v35, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    OUTLINED_FUNCTION_40_1();
    v36 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v36);
    OUTLINED_FUNCTION_4_8();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    a13 = type metadata accessor for DynamicViewController();
    a10 = v26;
    v37 = v26;
    v38 = AMSLogKey();
    if (v38)
    {
      v39 = v38;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&a10);
    sub_1CA19AF18();
    sub_1CA19AFB8();
LABEL_14:

    goto LABEL_26;
  }

  v31 = OBJC_IVAR___AMSUIDDynamicViewController_didInitialSetup;
  if ((v26[OBJC_IVAR___AMSUIDDynamicViewController_didInitialSetup] & 1) == 0)
  {
    v32 = v28;

    if (v32)
    {
      sub_1CA14C0BC();
    }

    v33 = OBJC_IVAR___AMSUIDDynamicViewController_loadState;
    v34 = *&v30[OBJC_IVAR___AMSUIDDynamicViewController_loadState] >> 62;
    if (!v34)
    {
      OUTLINED_FUNCTION_14_2();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_14_2();
      *(swift_allocObject() + 16) = v30;
      v40 = sub_1CA0F2110(0, &qword_1EE03C230, 0x1E69E9610);

      v41 = v30;
      v42 = sub_1CA19C598();
      a13 = v40;
      a14 = MEMORY[0x1E69AB720];
      a10 = v42;
      sub_1CA19BE68();

      __swift_destroy_boxed_opaque_existential_2(&a10);
      goto LABEL_25;
    }

    if (v34 != 1)
    {
      if (qword_1EE03B230 != -1)
      {
        OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
      }

      v43 = sub_1CA19AFF8();
      __swift_project_value_buffer(v43, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
      OUTLINED_FUNCTION_28_3();
      v44 = sub_1CA19AF88();
      OUTLINED_FUNCTION_7_3(v44);
      OUTLINED_FUNCTION_2_8();
      v45 = OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_24_4(v45, xmmword_1CA1A0930);
      a13 = type metadata accessor for DynamicViewController();
      a10 = v30;
      v46 = v30;
      v47 = AMSLogKey();
      if (v47)
      {
        v48 = v47;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&a10);
      v55 = *&v30[v33];
      a13 = &type metadata for DynamicViewController.LoadState;
      a10 = v55;

      sub_1CA19AF38();
      sub_1CA10BDC8(&a10, &qword_1EC433830, qword_1CA1A0A30);
      sub_1CA19AF18();
      sub_1CA19AFC8();

      goto LABEL_25;
    }

    if (*&v30[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph])
    {

      sub_1CA14BDE4();

LABEL_25:
      sub_1CA14CBF4();

      v30[v31] = 1;
      goto LABEL_26;
    }

    v49 = qword_1EE03B230;

    if (v49 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
    }

    v50 = sub_1CA19AFF8();
    __swift_project_value_buffer(v50, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    OUTLINED_FUNCTION_10_5();
    v51 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v51);
    OUTLINED_FUNCTION_4_8();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    a13 = type metadata accessor for DynamicViewController();
    a10 = v30;
    v52 = v30;
    v53 = AMSLogKey();
    if (v53)
    {
      v54 = v53;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&a10);
    sub_1CA19AF18();
    sub_1CA19AFB8();

    goto LABEL_14;
  }

LABEL_26:
  OUTLINED_FUNCTION_56();
}

void sub_1CA14BACC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1CA14BDE4();
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v4 = sub_1CA19AFF8();
    __swift_project_value_buffer(v4, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0C20;
    sub_1CA19AF18();
    sub_1CA19AFC8();
  }
}

uint64_t sub_1CA14BC38(uint64_t a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v8[3] = type metadata accessor for DynamicViewController();
  v8[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v8);
  sub_1CA19AF18();
  sub_1CA19AFB8();
}

void sub_1CA14BDE4()
{
  OUTLINED_FUNCTION_16_2();
  type metadata accessor for NavigationControllerList();
  OUTLINED_FUNCTION_40_1();
  sub_1CA19B7D8();
  sub_1CA19BE18();

  v0 = sub_1CA14A86C();
  sub_1CA16DE94(v0);
}

Swift::Void __swiftcall DynamicViewController.viewWillLayoutSubviews()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for DynamicViewController();
  objc_msgSendSuper2(&v15, sel_viewWillLayoutSubviews);
  if (!sub_1CA1334C4())
  {
    v4 = *&v0[OBJC_IVAR___AMSUIDDynamicViewController_child];
    if (!v4)
    {
      return;
    }

    v5 = [v4 view];
    if (v5)
    {
      v2 = v5;
      v3 = [v0 view];
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v1 = sub_1CA14A86C();
  v2 = [v1 view];

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = [v0 view];
LABEL_7:
  v6 = v3;
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v2 setFrame_];
}

Swift::Void __swiftcall DynamicViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DynamicViewController();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  if (sub_1CA1334C4() && (sub_1CA150A2C() & 1) != 0)
  {
    sub_1CA152600();
    sub_1CA150B74();
    sub_1CA150BD0();
    sub_1CA14C11C();
  }
}

uint64_t sub_1CA14C084()
{
  sub_1CA14C178();
  sub_1CA14C224();
  sub_1CA150540();
  sub_1CA14C11C();
  sub_1CA14C2E0();
}

void sub_1CA14C0BC()
{
  if (sub_1CA1334C4())
  {
    v1 = sub_1CA14A86C();
    [v0 setChildViewController_];
  }
}

void sub_1CA14C11C()
{
  if (!sub_1CA1334C4())
  {
    v1 = sub_1CA14A86C();
    [v1 setTransitioningDelegate_];
  }
}

void sub_1CA14C178()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_didEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];
  [v1 addObserver:v0 selector:sel_willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
}

void sub_1CA14C224()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_1EE03C218 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 addObserver:v0 selector:sel_legacyPurchaseDidSucceed_ name:qword_1EE03C220 object:0 suspensionBehavior:4];
}

uint64_t sub_1CA14C2E0()
{
  v1 = OBJC_IVAR___AMSUIDDynamicViewController_loadPromise;
  v2 = *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_loadPromise);
  if (!v2)
  {
    goto LABEL_4;
  }

  if (sub_1CA19BE28())
  {

LABEL_4:
    sub_1CA14D8F4();
    OUTLINED_FUNCTION_14_2();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4[3] = sub_1CA19B8B8();
    v4[4] = MEMORY[0x1E69AB218];
    __swift_allocate_boxed_opaque_existential_2Tm(v4);
    sub_1CA19B8A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C90, &qword_1CA1A4C78);
    sub_1CA10B7BC(&qword_1EE03C2D8, &qword_1EC433C90, &qword_1CA1A4C78, MEMORY[0x1E69AB658]);
    v2 = sub_1CA19BEB8();

    __swift_destroy_boxed_opaque_existential_2(v4);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1CA14C444(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v5 = sub_1CA19AFF8();
    __swift_project_value_buffer(v5, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v15 = type metadata accessor for DynamicViewController();
    v14[0] = v4;
    v6 = v4;
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v14);
    sub_1CA19AF18();
    sub_1CA19AFC8();

    sub_1CA14E6D4();
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = v2;
    v15 = sub_1CA19B8B8();
    v16 = MEMORY[0x1E69AB218];
    __swift_allocate_boxed_opaque_existential_2Tm(v14);
    v12 = v6;

    sub_1CA19B8A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433838, &qword_1CA1A4C70);
    v10 = sub_1CA19BE58();

    __swift_destroy_boxed_opaque_existential_2(v14);
    *&v12[OBJC_IVAR___AMSUIDDynamicViewController_loadState] = v10 | 0x4000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C90, &qword_1CA1A4C78);
    sub_1CA153804();
    swift_allocError();
    *v9 = 0;
    return sub_1CA19BE78();
  }

  return v10;
}

void sub_1CA14C754(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = sub_1CA19C158();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1CA19AFF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() devMode])
  {
    v39 = v11;
    v40 = v10;
    v37 = v4;
    sub_1CA19AFD8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    v14 = *(sub_1CA19AF88() - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v38 = *(v14 + 72);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1CA1A0B80;
    v41 = v16 + v15;
    *(&v43 + 1) = type metadata accessor for DynamicViewController();
    *&v42 = a2;
    v17 = a2;
    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v42);
    sub_1CA19B4B8();
    if (*(&v43 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433588, &qword_1CA1A39D0);
      if (swift_dynamicCast())
      {
        v20 = objc_opt_self();
        v21 = sub_1CA19C008();

        *&v42 = 0;
        v22 = [v20 dataWithJSONObject:v21 options:1 error:&v42];

        v23 = v42;
        if (v22)
        {
          v36 = a1;
          v24 = sub_1CA19AE18();
          v26 = v25;

          sub_1CA19C148();
          v27 = sub_1CA19C128();
          v29 = v28;
          sub_1CA0F76A8(v24, v26);
          if (v29)
          {
            *(&v43 + 1) = MEMORY[0x1E69E6158];
            *&v42 = v27;
            *(&v42 + 1) = v29;
            a1 = v36;
LABEL_11:
            v30 = v40;
            sub_1CA19AF38();
            sub_1CA10BDC8(&v42, &qword_1EC433830, qword_1CA1A0A30);
            sub_1CA19AF98();

            (*(v39 + 8))(v13, v30);
            goto LABEL_12;
          }

          a1 = v36;
        }

        else
        {
          v33 = v23;
          v34 = sub_1CA19AD28();

          swift_willThrow();
        }
      }
    }

    else
    {
      sub_1CA10BDC8(&v42, &qword_1EC433830, qword_1CA1A0A30);
    }

    v42 = 0u;
    v43 = 0u;
    goto LABEL_11;
  }

LABEL_12:
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433838, &qword_1CA1A4C70) + 48);
  v32 = sub_1CA19B4D8();
  (*(*(v32 - 8) + 16))(a4, a1, v32);
  *(a4 + v31) = a3;
}

uint64_t sub_1CA14D094(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433838, &qword_1CA1A4C70);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21[-1] - v5;
  v7 = sub_1CA19B4D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA10BC7C(a1, v6, &unk_1EC433838, &qword_1CA1A4C70);

  (*(v8 + 32))(v10, v6, v7);
  sub_1CA10BC7C(a1, v6, &unk_1EC433838, &qword_1CA1A4C70);
  v11 = *&v6[*(v4 + 56)];
  v12 = *(v8 + 8);
  v12(v6, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v20 = sub_1CA150D98(v10, v11);

    swift_allocObject();
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    v16 = swift_unknownObjectWeakLoadStrong();

    swift_unknownObjectWeakInit();
    v17 = sub_1CA0F2110(0, &qword_1EE03C230, 0x1E69E9610);

    v18 = sub_1CA19C598();
    v21[3] = v17;
    v21[4] = MEMORY[0x1E69AB720];
    v21[0] = v18;
    sub_1CA19BE68();

    v12(v10, v7);
    __swift_destroy_boxed_opaque_existential_2(v21);
  }

  else
  {

    return (v12)(v10, v7);
  }
}

void *sub_1CA14D3B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_1CA14D448(v4);

    return sub_1CA10BDC8(v4, &unk_1EC433C80, &qword_1CA1A2A30);
  }

  return result;
}

uint64_t sub_1CA14D448(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_30_1(v3);
  swift_weakInit();
  OUTLINED_FUNCTION_14_2();
  *(swift_allocObject() + 16) = v1;
  sub_1CA10BC7C(a1, &v5, &unk_1EC433C80, &qword_1CA1A2A30);
  if (v6)
  {
    sub_1CA0EBE94(&v5, v7);
    __swift_project_boxed_opaque_existential_2(v7, v7[3]);
    sub_1CA19B6F8();

    return __swift_destroy_boxed_opaque_existential_2(v7);
  }

  else
  {

    sub_1CA10BDC8(&v5, &unk_1EC433C80, &qword_1CA1A2A30);
    sub_1CA153018(v1);
  }
}

uint64_t sub_1CA14D564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_2();
  v6 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_16_0();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  sub_1CA10BC7C(a3, &v17, &unk_1EC433C80, &qword_1CA1A2A30);
  if (v18)
  {
    sub_1CA0EBE94(&v17, v19);
    __swift_project_boxed_opaque_existential_2(v19, v19[3]);
    v8 = OUTLINED_FUNCTION_12_9();
    sub_1CA0F763C(v8, v9);
    sub_1CA19B6F8();

    return __swift_destroy_boxed_opaque_existential_2(v19);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_12_9();
    sub_1CA0F763C(v11, v12);

    v13 = OUTLINED_FUNCTION_12_9();
    sub_1CA0F763C(v13, v14);
    sub_1CA10BDC8(&v17, &unk_1EC433C80, &qword_1CA1A2A30);
    sub_1CA153078(v6, a1, a2);

    v15 = OUTLINED_FUNCTION_12_9();
    return sub_1CA0F76A8(v15, v16);
  }
}

void *sub_1CA14D6C4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1CA149110(a1, v5, &unk_1F49D04E8, &unk_1F49D0510, sub_1CA153B24);

    return sub_1CA10BDC8(v5, &unk_1EC433C80, &qword_1CA1A2A30);
  }

  return result;
}

void *sub_1CA14D794(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1CA1514FC(a1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;

    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1CA149110(a1, v7, &unk_1F49D04E8, &unk_1F49D0510, sub_1CA153B24);

    return sub_1CA10BDC8(v7, &unk_1EC433C80, &qword_1CA1A2A30);
  }

  return result;
}

void sub_1CA14D894(uint64_t a1, uint64_t a2)
{
  if ((sub_1CA19BE28() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1CA151CC8();
    }
  }
}

void sub_1CA14D8F4()
{
  OUTLINED_FUNCTION_19_0();
  v1 = sub_1CA19BDA8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17_4();
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v48 - v6;
  v8 = *&v0[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph];
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C60, &qword_1CA1A4C68);
    v58[0] = v8;

    sub_1CA19BE88();
  }

  else
  {
    v55 = v5;
    v57 = v4;
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
    }

    v56 = v7;
    v9 = sub_1CA19AFF8();
    __swift_project_value_buffer(v9, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    v10 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_7_3(v10);
    OUTLINED_FUNCTION_4_8();
    *(OUTLINED_FUNCTION_34_1() + 16) = xmmword_1CA1A0B80;
    v59 = type metadata accessor for DynamicViewController();
    v58[0] = v0;
    v11 = v0;
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v58);
    sub_1CA19AF18();
    sub_1CA19AFC8();

    OUTLINED_FUNCTION_4_5(&v11[OBJC_IVAR___AMSUIDDynamicViewController_bag], &v68);
    swift_unknownObjectRetain();
    v14 = v56;
    sub_1CA19BD78();
    v15 = OBJC_IVAR___AMSUIDDynamicViewController_clientInfo;
    OUTLINED_FUNCTION_4_5(&v11[OBJC_IVAR___AMSUIDDynamicViewController_clientInfo], &v67);
    v16 = *&v11[v15];
    if (v16)
    {
      v17 = *&v11[v15];
    }

    else
    {
      v17 = [objc_opt_self() currentProcess];
    }

    v18 = &v11[OBJC_IVAR___AMSUIDDynamicViewController_mediaClientIdentifier];
    OUTLINED_FUNCTION_4_5(&v11[OBJC_IVAR___AMSUIDDynamicViewController_mediaClientIdentifier], &v66);
    v19 = v18[1];
    if (v19)
    {
      v54 = *v18;
      v53 = v19;
    }

    else
    {
      OUTLINED_FUNCTION_20_3();
      v53 = v20;
      v54 = 0xD00000000000001CLL;
    }

    v21 = OBJC_IVAR___AMSUIDDynamicViewController_metricsOverlay;
    OUTLINED_FUNCTION_4_5(&v11[OBJC_IVAR___AMSUIDDynamicViewController_metricsOverlay], &v65);
    v22 = *&v11[v21];

    if (v22)
    {

      v23 = v16;
      sub_1CA14DFA0(v22);
      v51 = v24;
    }

    else
    {
      v25 = v16;
      v51 = 0;
    }

    v26 = OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics;
    OUTLINED_FUNCTION_4_5(&v11[OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics], &v64);
    v50 = v11[v26];
    v27 = OBJC_IVAR___AMSUIDDynamicViewController_account;
    OUTLINED_FUNCTION_4_5(&v11[OBJC_IVAR___AMSUIDDynamicViewController_account], &v63);
    v28 = *&v11[v27];
    v29 = v55;
    (*(v57 + 16))(v55, v14, v1);
    v30 = *&v11[OBJC_IVAR___AMSUIDDynamicViewController_urlPromise];
    v31 = v28;
    v49 = v17;

    v48 = sub_1CA14A86C();
    v32 = *&v11[OBJC_IVAR___AMSUIDDynamicViewController_preferredSizingModel];
    type metadata accessor for BridgedDestinationViewProvider();
    OUTLINED_FUNCTION_8_4();
    swift_allocObject();
    v33 = OUTLINED_FUNCTION_16_2();
    v34 = sub_1CA11514C(v33, 0);
    OUTLINED_FUNCTION_4_5(&v11[OBJC_IVAR___AMSUIDDynamicViewController_delegate], &v62);
    Strong = swift_unknownObjectWeakLoadStrong();
    v52 = v1;
    v36 = Strong;
    OUTLINED_FUNCTION_4_5(&v11[OBJC_IVAR___AMSUIDDynamicViewController_mediaContentDelegate], &v61);
    swift_unknownObjectWeakLoadStrong();
    v37 = OUTLINED_FUNCTION_40_1();
    type metadata accessor for ClientBootstrap(v37);
    swift_allocObject();
    v38 = v11;

    v47 = v16;
    v39 = v49;
    sub_1CA1167D0(v28, v29, v49, v54, v53, v50, v51, v30, v48, v32, v34, v11, v36, v47);
    sub_1CA116B44();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C60, &qword_1CA1A4C68);
    v41 = sub_1CA19BF08();
    OUTLINED_FUNCTION_14_2();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v42);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_8_4();
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = v41;
    OUTLINED_FUNCTION_8_4();
    v44 = swift_allocObject();
    *(v44 + 16) = v38;
    *(v44 + 24) = v41;
    sub_1CA0F2110(0, &qword_1EE03C230, 0x1E69E9610);
    OUTLINED_FUNCTION_22_3();
    swift_retain_n();
    v45 = v38;
    v46 = sub_1CA19C598();
    v60 = MEMORY[0x1E69AB720];
    v59 = v40;
    v58[0] = v46;
    sub_1CA19BE68();

    (*(v57 + 8))(v56, v52);
    __swift_destroy_boxed_opaque_existential_2(v58);
    *&v45[OBJC_IVAR___AMSUIDDynamicViewController_loadState] = v41;
  }

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA14DFA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C08, &qword_1CA1A6400);
    v2 = sub_1CA19CA28();
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

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1CA10BCDC(*(a1 + 48) + 40 * v9, __src);
    sub_1CA0F1200(*(a1 + 56) + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1CA10BCDC(__dst, v19);
    if (!swift_dynamicCast())
    {
      sub_1CA10BDC8(__dst, &qword_1EC433C10, &unk_1CA1A2CD0);

      return;
    }

    v5 &= v5 - 1;
    sub_1CA0F1200(&__dst[40], v20);
    sub_1CA10BDC8(__dst, &qword_1EC433C10, &unk_1CA1A2CD0);
    v21 = v18;
    sub_1CA0F11E8(v20, v22);
    v10 = v21;
    sub_1CA0F11E8(v22, v23);
    sub_1CA0F11E8(v23, &v21);
    v11 = sub_1CA184158(v10, *(&v10 + 1));
    v12 = v11;
    if (v13)
    {
      *(v2[6] + 16 * v11) = v10;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_2(v14);
      sub_1CA0F11E8(&v21, v14);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
      *(v2[6] + 16 * v11) = v10;
      sub_1CA0F11E8(&v21, (v2[7] + 32 * v11));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_22;
      }

      v2[2] = v17;
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

void sub_1CA14E258(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v5 = sub_1CA19AFF8();
    __swift_project_value_buffer(v5, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v9[3] = type metadata accessor for DynamicViewController();
    v9[0] = v4;
    v6 = v4;
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v9);
    sub_1CA19AF18();
    sub_1CA19AFC8();

    *&v6[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph] = v2;

    v9[0] = v2;
    sub_1CA19BEC8();
  }
}

uint64_t sub_1CA14E470(uint64_t a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v11 = type metadata accessor for DynamicViewController();
  v10[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v10);
  sub_1CA19AF18();
  swift_getErrorValue();
  v11 = v9;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v10);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_2Tm);
  sub_1CA19AF38();
  sub_1CA10BDC8(v10, &qword_1EC433830, qword_1CA1A0A30);
  sub_1CA19AFB8();

  *&v4[OBJC_IVAR___AMSUIDDynamicViewController_loadState] = 0x8000000000000000;

  return sub_1CA19BEA8();
}

void sub_1CA14E6D4()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v101 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_3();
  v100 = v8 - v7;
  v9 = OUTLINED_FUNCTION_39_1();
  v102 = type metadata accessor for JSServiceRequest(v9);
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  v103 = (v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C20, &qword_1CA1A4C38);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v105 = v93 - v14;
  OUTLINED_FUNCTION_39_1();
  v98 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v95 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_4();
  v94 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v96 = v93 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170, &qword_1CA1A1230);
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_17_4();
  v99 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v93 - v25;
  v27 = sub_1CA19B7D8();
  sub_1CA19BE18();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v4);
  type metadata accessor for BridgedDestinationViewProvider();
  OUTLINED_FUNCTION_51();
  *(v28 - 256) = v27;
  sub_1CA19BE18();
  v29 = v114;
  v30 = DynamicViewController.clientOptions.modify();
  if (!*v31)
  {
    v30(v117, 0);
    v118 = 0u;
    v119 = 0u;
    goto LABEL_6;
  }

  v109 = 0x726574756F72;
  v110 = 0xE600000000000000;
  sub_1CA19C898();
  sub_1CA17A79C(&v118);
  sub_1CA103038(&v114);
  v30(v117, 0);
  if (!*(&v119 + 1))
  {
LABEL_6:
    sub_1CA10BDC8(&v118, &qword_1EC433830, qword_1CA1A0A30);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C48, &qword_1CA1A4C50);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_8_4();
    v32 = swift_allocObject();
    *(v32 + 16) = v114;
    swift_beginAccess();
    v33 = *(v29 + 16);
    v34 = *(v29 + 24);
    *(v29 + 16) = sub_1CA1539A8;
    *(v29 + 24) = v32;
    sub_1CA0EBE84(v33, v34);
  }

LABEL_7:
  v35 = sub_1CA19C038();
  v36 = OBJC_IVAR___AMSUIDDynamicViewController_internalClientOptions;
  OUTLINED_FUNCTION_4_5(&v1[OBJC_IVAR___AMSUIDDynamicViewController_internalClientOptions], &v118);
  if (*&v1[v36])
  {
    v30 = *&v1[v36];
  }

  else
  {
    sub_1CA19C038();
    OUTLINED_FUNCTION_40_1();
  }

  v107 = v29;

  swift_isUniquelyReferenced_nonNull_native();
  *&v114 = v35;
  OUTLINED_FUNCTION_3_18();
  sub_1CA15339C(v30, v37, 0, v38, v39);
  v40 = v114;
  v41 = OBJC_IVAR___AMSUIDDynamicViewController_clientOptions;
  OUTLINED_FUNCTION_4_5(&v1[OBJC_IVAR___AMSUIDDynamicViewController_clientOptions], v117);
  if (*&v1[v41])
  {
    v29 = *&v1[v41];
  }

  else
  {
    sub_1CA19C038();
    OUTLINED_FUNCTION_10_5();
  }

  swift_isUniquelyReferenced_nonNull_native();
  *&v114 = v40;
  OUTLINED_FUNCTION_3_18();
  sub_1CA15339C(v29, v42, 0, v43, v44);
  v45 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C30, &qword_1CA1A2980);
  sub_1CA19B7C8();
  v46 = BYTE8(v114);
  v47 = &unk_1EE03B000;
  v108 = v26;
  v106 = v4;
  v104 = 0;
  if (BYTE8(v114) == 255)
  {
    goto LABEL_16;
  }

  v48 = v114;
  if (BYTE8(v114))
  {
    v111 = v114;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433480, &qword_1CA1A2A10);
    swift_willThrowTypedImpl();
    sub_1CA118CF4(v48, v46);
LABEL_16:
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
    }

    v49 = sub_1CA19AFF8();
    __swift_project_value_buffer(v49, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    v50 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_7_3(v50);
    OUTLINED_FUNCTION_4_8();
    *(OUTLINED_FUNCTION_34_1() + 16) = xmmword_1CA1A0B80;
    v115 = type metadata accessor for DynamicViewController();
    *&v114 = v1;
    v51 = v1;
    v52 = AMSLogKey();
    if (v52)
    {
      v53 = v52;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v114);
    sub_1CA19AF18();
    sub_1CA19AFA8();

    v4 = v106;
    v58 = v108;
    v59 = v104;
    goto LABEL_32;
  }

  v93[2] = v3;
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
  }

  v97 = v45;
  v54 = sub_1CA19AFF8();
  v93[1] = __swift_project_value_buffer(v54, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  v55 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_7_3(v55);
  OUTLINED_FUNCTION_4_8();
  *(OUTLINED_FUNCTION_34_1() + 16) = xmmword_1CA1A0B80;
  v115 = type metadata accessor for DynamicViewController();
  *&v114 = v1;
  v56 = v1;
  v57 = AMSLogKey();
  if (v57)
  {
    v47 = v57;
    v58 = sub_1CA19C118();
  }

  else
  {
    v58 = 0;
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v114);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  v60 = [v48 URL];
  if (v60)
  {
    v47 = v60;
    v61 = v99;
    sub_1CA19ADA8();

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
    v61 = v99;
  }

  v59 = v104;
  __swift_storeEnumTagSinglePayload(v61, v62, 1, v4);
  sub_1CA1538CC(v61, v58);
  if (!sub_1CA15393C(v48))
  {
    sub_1CA19C038();
  }

  OUTLINED_FUNCTION_55();
  swift_isUniquelyReferenced_nonNull_native();
  *&v114 = v47;
  OUTLINED_FUNCTION_3_18();
  sub_1CA15339C(v61, v63, 0, v64, v65);
  sub_1CA118CF4(v48, v46);
  v45 = v114;
LABEL_32:
  IsRunningInternalBuild = deviceIsRunningInternalBuild();
  v67 = v105;
  if (!IsRunningInternalBuild)
  {
LABEL_41:
    if (__swift_getEnumTagSinglePayload(v58, 1, v4))
    {
      v77 = 0;
      v59 = 0;
    }

    else
    {
      v78 = v101;
      v79 = v100;
      (*(v101 + 16))(v100, v58, v4);
      v77 = v79;
      sub_1CA19ADE8();
      OUTLINED_FUNCTION_41_1();
      (*(v78 + 8))(v79, v4);
    }

    v80 = v103;
    sub_1CA10BC7C(v58, v103 + *(v102 + 24), &qword_1EC433170, &qword_1CA1A1230);
    *v80 = v77;
    v80[1] = v59;
    v80[2] = v45;
    OUTLINED_FUNCTION_51();
    sub_1CA19BE18();
    JSService.perform(request:)();
    OUTLINED_FUNCTION_14_2();
    *(swift_allocObject() + 16) = v1;
    OUTLINED_FUNCTION_14_2();
    *(swift_allocObject() + 16) = v1;
    v81 = sub_1CA0F2110(0, &qword_1EE03C230, 0x1E69E9610);
    v82 = v1;
    v83 = sub_1CA19C598();
    v115 = v81;
    v116 = MEMORY[0x1E69AB720];
    *&v114 = v83;
    sub_1CA19BE68();

    sub_1CA153870(v80);
    __swift_destroy_boxed_opaque_existential_2(&v114);
    goto LABEL_45;
  }

  sub_1CA14F63C(v45, v105);
  if (v59)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
    }

    v97 = v45;
    v68 = sub_1CA19AFF8();
    v105 = __swift_project_value_buffer(v68, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    v69 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_7_3(v69);
    OUTLINED_FUNCTION_4_8();
    *(OUTLINED_FUNCTION_34_1() + 16) = xmmword_1CA1A0930;
    v115 = type metadata accessor for DynamicViewController();
    *&v114 = v1;
    v70 = v1;
    v71 = AMSLogKey();
    if (v71)
    {
      v72 = v71;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v114);
    sub_1CA19AF18();
    swift_getErrorValue();
    v74 = v112;
    v75 = v113;
    v115 = v113;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v114);
    (*(*(v75 - 8) + 16))(boxed_opaque_existential_2Tm, v74, v75);
    sub_1CA19AF38();
    sub_1CA10BDC8(&v114, &qword_1EC433830, qword_1CA1A0A30);
    sub_1CA19AFB8();

    v58 = v108;
    v4 = v106;
    v45 = v97;
    goto LABEL_41;
  }

  v73 = v98;
  if (__swift_getEnumTagSinglePayload(v67, 1, v98) == 1)
  {
    sub_1CA10BDC8(v67, &unk_1EC433C20, &qword_1CA1A4C38);
    goto LABEL_41;
  }

  v84 = v95;
  (*(v95 + 32))(v96, v67, v73);
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
  }

  v85 = sub_1CA19AFF8();
  __swift_project_value_buffer(v85, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  v86 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_7_3(v86);
  OUTLINED_FUNCTION_2_8();
  v87 = OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_24_4(v87, xmmword_1CA1A0B80);
  v115 = type metadata accessor for DynamicViewController();
  *&v114 = v1;
  v88 = v1;
  v89 = AMSLogKey();
  if (v89)
  {
    v90 = v89;
    sub_1CA19C118();
    OUTLINED_FUNCTION_37_1();
  }

  else
  {
    OUTLINED_FUNCTION_36_1();
  }

  OUTLINED_FUNCTION_47(&v114);

  __swift_destroy_boxed_opaque_existential_2(&v114);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C38, &unk_1CA1A4C40);
  (*(v84 + 16))(v94, v96, v98);
  sub_1CA19BE88();

  v91 = OUTLINED_FUNCTION_53();
  v92(v91);
LABEL_45:
  sub_1CA10BDC8(v58, &qword_1EC433170, &qword_1CA1A1230);
  OUTLINED_FUNCTION_20_0();
}

void *sub_1CA14F5EC(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, void *, uint64_t *))
{
  v7[1] = a2;
  v7[0] = a1;
  v8 = a3;
  result = a4(&v6, v7, &v8);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1CA14F63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_1CA19C898();
  sub_1CA181E38(v14, a1);
  sub_1CA103038(v14);
  if (!v16)
  {
    sub_1CA10BDC8(v15, &qword_1EC433830, qword_1CA1A0A30);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433588, &qword_1CA1A39D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = sub_1CA19B4D8();
    v11 = a2;
    v12 = 1;
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  }

  v5 = objc_opt_self();
  v6 = sub_1CA19C008();

  v14[0] = 0;
  v7 = [v5 dataWithJSONObject:v6 options:0 error:{v14, 0x7473654465676170, 0xEF6E6F6974616E69}];

  v8 = v14[0];
  if (!v7)
  {
    v13 = v8;
    sub_1CA19AD28();

    return swift_willThrow();
  }

  sub_1CA19AE18();

  OUTLINED_FUNCTION_50();
  result = sub_1CA19B428();
  if (!v2)
  {
    v10 = sub_1CA19B4D8();
    v11 = a2;
    v12 = 0;
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  }

  return result;
}

uint64_t sub_1CA14F850(uint64_t a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v8[3] = type metadata accessor for DynamicViewController();
  v8[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v8);
  sub_1CA19AF18();
  sub_1CA19AFC8();
}

uint64_t sub_1CA14F9FC(uint64_t a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v11 = type metadata accessor for DynamicViewController();
  v10[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v10);
  sub_1CA19AF18();
  swift_getErrorValue();
  v11 = v9;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v10);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_2Tm);
  sub_1CA19AF38();
  sub_1CA10BDC8(v10, &qword_1EC433830, qword_1CA1A0A30);
  sub_1CA19AFB8();
}

uint64_t sub_1CA14FC70(uint64_t a1)
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
  }

  v4 = sub_1CA19AFF8();
  v148 = __swift_project_value_buffer(v4, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  OUTLINED_FUNCTION_40_1();
  v5 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v5);
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v146 = type metadata accessor for DynamicViewController();
  v155 = v146;
  v154[0] = v1;
  v6 = v1;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v154);
  sub_1CA19AF18();
  v9 = sub_1CA19AC38();
  v155 = v9;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v154);
  v11 = (*(*(v9 - 8) + 16))(boxed_opaque_existential_2Tm, a1, v9);
  OUTLINED_FUNCTION_52(v11, v12, v13, v14, v15, v16, v17, v18, v117, v123, v130, v136, v2, v146, v148, v150, v152, v154[0]);
  sub_1CA19AF38();
  sub_1CA10BDC8(v154, &qword_1EC433830, qword_1CA1A0A30);
  sub_1CA19AFC8();

  if (!*&v6[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph])
  {
    v62 = OUTLINED_FUNCTION_21_3(v19, v20, v21, v22, v23, v24, v25, v26, v118, v124, v131, v137, v142);
    OUTLINED_FUNCTION_16_5(v62, xmmword_1CA1A0B80);
    v63 = AMSLogKey();
    if (v63)
    {
      v71 = v63;
      sub_1CA19C118();
    }

    OUTLINED_FUNCTION_52(v63, v64, v65, v66, v67, v68, v69, v70, v120, v127, v133, v139, v143, v147, v149, v151, v153, v154[0]);
    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v154);
    OUTLINED_FUNCTION_43_0();
    sub_1CA19AFC8();
  }

  v27 = sub_1CA19AC28();
  if (!v27)
  {
    *v156 = 0u;
    v157 = 0u;
    goto LABEL_23;
  }

  v28 = v27;
  OUTLINED_FUNCTION_20_3();
  v151 = 0xD000000000000014;
  v153 = v29;
  sub_1CA19C898();
  sub_1CA181E38(v154, v28);

  sub_1CA103038(v154);
  if (!*(&v157 + 1))
  {
LABEL_23:
    v30 = sub_1CA10BDC8(v156, &qword_1EC433830, qword_1CA1A0A30);
    goto LABEL_24;
  }

  v30 = swift_dynamicCast();
  if ((v30 & 1) == 0)
  {
LABEL_24:
    v72 = OUTLINED_FUNCTION_21_3(v30, v31, v32, v33, v34, v35, v36, v37, v118, v124, v131, v137, v142);
    OUTLINED_FUNCTION_16_5(v72, xmmword_1CA1A0B80);
    v73 = AMSLogKey();
    if (v73)
    {
      v74 = v73;
      sub_1CA19C118();
      OUTLINED_FUNCTION_37_1();
    }

    else
    {
      OUTLINED_FUNCTION_36_1();
    }

    v83 = OUTLINED_FUNCTION_52(v75, v76, v77, v78, v79, v80, v81, v82, v121, v128, v134, v140, v144, v147, v149, v151, v153, v154[0]);
    OUTLINED_FUNCTION_47(v83);

    __swift_destroy_boxed_opaque_existential_2(v154);
    sub_1CA19AF18();
    sub_1CA19AFB8();
  }

  v38 = v154[1];
  v132 = v154[0];
  type metadata accessor for DelegateController();
  OUTLINED_FUNCTION_10_5();
  sub_1CA19B7D8();
  sub_1CA19BE18();
  v138 = v154[0];
  v39 = *(v154[0] + 24);
  if (v39 == 1 || (v40 = v39, !v39))
  {

    v93 = OUTLINED_FUNCTION_21_3(v85, v86, v87, v88, v89, v90, v91, v92, v118, v124, v132, v138, v142);
    OUTLINED_FUNCTION_16_5(v93, xmmword_1CA1A0B80);
    v94 = AMSLogKey();
    if (v94)
    {
      v95 = v94;
      sub_1CA19C118();
      OUTLINED_FUNCTION_37_1();
    }

    else
    {
      OUTLINED_FUNCTION_36_1();
    }

    v104 = OUTLINED_FUNCTION_52(v96, v97, v98, v99, v100, v101, v102, v103, v122, v129, v135, v141, v145, v147, v149, 0xD000000000000014, v153, v154[0]);
    OUTLINED_FUNCTION_47(v104);

    __swift_destroy_boxed_opaque_existential_2(v154);
    OUTLINED_FUNCTION_43_0();
    sub_1CA19AFC8();
  }

  v125 = v39;
  v41 = sub_1CA19AD18();
  v42 = [v41 userInfo];

  v43 = sub_1CA19C018();
  sub_1CA181D40(0x6573616863727570, 0xE800000000000000, v43);

  if (!v155)
  {

    v105 = sub_1CA10BDC8(v154, &qword_1EC433830, qword_1CA1A0A30);
LABEL_36:
    v113 = OUTLINED_FUNCTION_21_3(v105, v106, v107, v108, v109, v110, v111, v112, v118, v125, v132, v138, v142);
    OUTLINED_FUNCTION_44_0(v113, xmmword_1CA1A0B80);
    v114 = AMSLogKey();
    if (v114)
    {
      v115 = v114;
      sub_1CA19C118();
      OUTLINED_FUNCTION_37_1();
    }

    else
    {
      OUTLINED_FUNCTION_36_1();
    }

    OUTLINED_FUNCTION_47(v154);

    __swift_destroy_boxed_opaque_existential_2(v154);
    sub_1CA19AF18();
    sub_1CA19AFC8();
    goto LABEL_40;
  }

  sub_1CA0F2110(0, &qword_1EC433C18, 0x1E698CAE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_36;
  }

  v119 = v156[0];
  v44 = [v156[0] clientCorrelationKey];
  v45 = sub_1CA19C118();
  v47 = v46;

  if (v132 == v45 && v38 == v47)
  {

    goto LABEL_42;
  }

  v49 = sub_1CA19CAF8();

  if (v49)
  {
LABEL_42:
    v116 = [objc_allocWithZone(MEMORY[0x1E698CAF0]) init];
    DelegateController.didFinishPurchase(withResult:error:)();
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  v58 = v119;
  v59 = OUTLINED_FUNCTION_21_3(v50, v51, v52, v53, v54, v55, v56, v57, v119, v125, v132, v138, v142);
  OUTLINED_FUNCTION_44_0(v59, xmmword_1CA1A0B80);
  v60 = AMSLogKey();
  if (v60)
  {
    v61 = v60;
    sub_1CA19C118();
    OUTLINED_FUNCTION_37_1();
  }

  else
  {
    OUTLINED_FUNCTION_36_1();
  }

  OUTLINED_FUNCTION_47(v154);

  __swift_destroy_boxed_opaque_existential_2(v154);
  sub_1CA19AF18();
  sub_1CA19AFB8();

LABEL_40:
}

void sub_1CA150540()
{
  OUTLINED_FUNCTION_19_0();
  v1 = sub_1CA19AFF8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = v6 - v5;
  v8 = OBJC_IVAR___AMSUIDDynamicViewController_metricsOverlay;
  OUTLINED_FUNCTION_4_5(&v0[OBJC_IVAR___AMSUIDDynamicViewController_metricsOverlay], &v42);
  if (*&v0[v8])
  {

    sub_1CA14DFA0(v9);
    v31 = v10;
  }

  else
  {
    v31 = 0;
  }

  v11 = OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics;
  OUTLINED_FUNCTION_4_5(&v0[OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics], &v41);
  v30 = v0[v11];
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
  }

  v12 = __swift_project_value_buffer(v1, qword_1EE040B90);
  (*(v3 + 16))(v7, v12, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  OUTLINED_FUNCTION_28_3();
  v13 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v13);
  OUTLINED_FUNCTION_2_8();
  v14 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_24_4(v14, xmmword_1CA1A4B10);
  ObjectType = type metadata accessor for DynamicViewController();
  v37 = v0;
  v15 = v0;
  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v37);
  sub_1CA19AF18();
  sub_1CA19AF18();
  v18 = OBJC_IVAR___AMSUIDDynamicViewController_account;
  OUTLINED_FUNCTION_4_5(&v15[OBJC_IVAR___AMSUIDDynamicViewController_account], &v36);
  v19 = *&v15[v18];
  v32 = v1;
  if (v19)
  {
    v20 = sub_1CA0F2110(0, &qword_1EE03C130, 0x1E6959A28);
  }

  else
  {
    v20 = 0;
    v38 = 0;
    v39 = 0;
  }

  v37 = v19;
  ObjectType = v20;
  v21 = v19;
  sub_1CA19AF78();
  OUTLINED_FUNCTION_26_2();
  sub_1CA19AF18();
  v22 = OBJC_IVAR___AMSUIDDynamicViewController_bag;
  OUTLINED_FUNCTION_4_5(&v15[OBJC_IVAR___AMSUIDDynamicViewController_bag], &v35);
  v23 = *&v15[v22];
  ObjectType = swift_getObjectType();
  v37 = v23;
  swift_unknownObjectRetain();
  sub_1CA19AF38();
  OUTLINED_FUNCTION_26_2();
  sub_1CA19AF18();
  v24 = OBJC_IVAR___AMSUIDDynamicViewController_clientInfo;
  OUTLINED_FUNCTION_4_5(&v15[OBJC_IVAR___AMSUIDDynamicViewController_clientInfo], &v34);
  v25 = *&v15[v24];
  if (v25)
  {
    v26 = sub_1CA0F2110(0, &qword_1EE03C268, 0x1E698CAC8);
  }

  else
  {
    v26 = 0;
    v38 = 0;
    v39 = 0;
  }

  v37 = v25;
  ObjectType = v26;
  v27 = v25;
  sub_1CA19AF38();
  OUTLINED_FUNCTION_26_2();
  sub_1CA19AF18();
  LOBYTE(v37) = v30;
  ObjectType = &type metadata for MetricsContext;
  v38 = v31;
  sub_1CA19AF78();
  OUTLINED_FUNCTION_26_2();
  sub_1CA19AF18();
  OUTLINED_FUNCTION_4_5(&v15[OBJC_IVAR___AMSUIDDynamicViewController_delegate], &v33);
  Strong = swift_unknownObjectWeakLoadStrong();
  v29 = Strong;
  if (Strong)
  {
    Strong = swift_getObjectType();
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v37 = v29;
  ObjectType = Strong;
  sub_1CA19AF38();
  sub_1CA10BDC8(&v37, &qword_1EC433830, qword_1CA1A0A30);
  sub_1CA19AFC8();

  (*(v3 + 8))(v7, v32);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA150A2C()
{
  if ([v0 isBeingDismissed] & 1) != 0 || (objc_msgSend(v0, sel_isMovingFromParentViewController))
  {
    return 1;
  }

  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    if ([v1 isBeingDismissed])
    {

      return 1;
    }

    v3 = [v2 isMovingFromParentViewController];

    if (v3)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1CA150AD0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
}

void sub_1CA150B74()
{
  if (!sub_1CA1334C4())
  {
    v0 = sub_1CA14A86C();
    [v0 setTransitioningDelegate_];
  }
}

uint64_t sub_1CA150BD0()
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
  }

  v1 = sub_1CA19AFF8();
  __swift_project_value_buffer(v1, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  v2 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_7_3(v2);
  OUTLINED_FUNCTION_4_8();
  *(OUTLINED_FUNCTION_34_1() + 16) = xmmword_1CA1A0B80;
  v14[3] = type metadata accessor for DynamicViewController();
  v14[0] = v0;
  v3 = v0;
  v4 = AMSLogKey();
  if (v4)
  {
    v12 = v4;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_23_4(v4, v5, v6, v7, v8, v9, v10, v11, v14[0]);

  __swift_destroy_boxed_opaque_existential_2(v14);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  if (*&v3[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph])
  {
    type metadata accessor for DelegateController();
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();
    OUTLINED_FUNCTION_29_2();

    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_60();
    sub_1CA137A44();
  }

  return result;
}

uint64_t sub_1CA150D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1CA1355D8();
  sub_1CA19BE08();
  v4 = OUTLINED_FUNCTION_12_9();
  v6 = sub_1CA192E7C(v4, v5);
  if (!v6)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
    }

    v19 = sub_1CA19AFF8();
    __swift_project_value_buffer(v19, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    OUTLINED_FUNCTION_28_3();
    v20 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v20);
    OUTLINED_FUNCTION_2_8();
    v21 = OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_24_4(v21, xmmword_1CA1A0B80);
    OUTLINED_FUNCTION_20_3();
    v47 = MEMORY[0x1E69E6158];
    v44 = 0xD000000000000015;
    v45 = v22;
    sub_1CA19AF38();
    sub_1CA10BDC8(&v44, &qword_1EC433830, qword_1CA1A0A30);
    sub_1CA19AF18();
    sub_1CA19AFA8();

    sub_1CA153804();
    OUTLINED_FUNCTION_49();
    v23 = swift_allocError();
    *v24 = 1;
    sub_1CA1514FC(v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0, &unk_1CA1A2A20);
    OUTLINED_FUNCTION_49();
    swift_allocError();
    *v25 = 1;
    v13 = sub_1CA19BE78();
    goto LABEL_10;
  }

  v7 = v6;
  v43 = v6;
  v8 = sub_1CA0F2110(0, &unk_1EE03C240, 0x1E69DD258);
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433820, &qword_1CA1A38F8);
  if (!swift_dynamicCast())
  {

    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1CA10BDC8(&v39, &qword_1EC433828, &unk_1CA1A3900);
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
    }

    v26 = sub_1CA19AFF8();
    __swift_project_value_buffer(v26, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    v27 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v27);
    OUTLINED_FUNCTION_4_8();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    OUTLINED_FUNCTION_20_3();
    v47 = MEMORY[0x1E69E6158];
    v44 = 0xD000000000000015;
    v45 = v28;
    sub_1CA19AF38();
    sub_1CA10BDC8(&v44, &qword_1EC433830, qword_1CA1A0A30);
    sub_1CA19AF18();
    v47 = v8;
    v44 = v9;
    v29 = v9;
    sub_1CA19AF38();
    sub_1CA10BDC8(&v44, &qword_1EC433830, qword_1CA1A0A30);
    sub_1CA19AFA8();

    sub_1CA151668(v29, v30, v31, v32, v33, v34, v35, v36, v38, v3, v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0, &unk_1CA1A2A20);
    v13 = sub_1CA19BE88();

LABEL_10:

    return v13;
  }

  sub_1CA0EBE94(&v39, &v44);
  v10 = __swift_project_boxed_opaque_existential_2(&v44, v47);
  v11 = OUTLINED_FUNCTION_50();
  v13 = v12(v11);
  OUTLINED_FUNCTION_14_2();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_30_1(v14);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_4();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v10;
  v16 = sub_1CA0F2110(0, &qword_1EE03C230, 0x1E69E9610);
  v17 = v9;
  v18 = sub_1CA19C598();
  *(&v40 + 1) = v16;
  v41 = MEMORY[0x1E69AB720];
  *&v39 = v18;
  sub_1CA19BE98();

  __swift_destroy_boxed_opaque_existential_2(&v39);
  __swift_destroy_boxed_opaque_existential_2(&v44);
  return v13;
}

void *sub_1CA1515F8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    *(result + OBJC_IVAR___AMSUIDDynamicViewController_automaticErrorRetry) = 0;
    sub_1CA14C2E0();
    sub_1CA14CBF4();
  }

  return result;
}

void sub_1CA151668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_57();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  sub_1CA151B78();
  if (sub_1CA1334C4())
  {
    v31 = sub_1CA14A86C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810, &qword_1CA1A1A20);
    OUTLINED_FUNCTION_16_0();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1CA1A0C40;
    *(v32 + 32) = v30;
    sub_1CA0F2110(0, &unk_1EE03C240, 0x1E69DD258);
    v33 = v30;
    v34 = sub_1CA19C2A8();

    [v31 setViewControllers:v34 animated:0];

    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
    }

    v35 = sub_1CA19AFF8();
    __swift_project_value_buffer(v35, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    OUTLINED_FUNCTION_28_3();
    v36 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v36);
    OUTLINED_FUNCTION_2_8();
    v37 = OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_24_4(v37, xmmword_1CA1A0B80);
    a14 = type metadata accessor for DynamicViewController();
    a11 = v26;
    v26;
    v38 = AMSLogKey();
    if (v38)
    {
      v39 = v38;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&a11);
    a11 = 0;
    a12 = 0xE000000000000000;
    sub_1CA19C8F8();

    OUTLINED_FUNCTION_20_3();
    a11 = 0xD000000000000012;
    a12 = v45;
    v46 = sub_1CA14A86C();
    v47 = [v46 viewControllers];

    sub_1CA19C2B8();
    sub_1CA0F04EC();

    v48 = sub_1CA19CAB8();
    MEMORY[0x1CCA99820](v48);

    MEMORY[0x1CCA99820](2112093, 0xE300000000000000);
    v49 = sub_1CA14A86C();
    v50 = [v49 viewControllers];

    sub_1CA19C2B8();
    v51 = OUTLINED_FUNCTION_12_9();
    v52 = MEMORY[0x1CCA99930](v51);
    v54 = v53;

    MEMORY[0x1CCA99820](v52, v54);

    a14 = MEMORY[0x1E69E6158];
    sub_1CA19AF38();
    sub_1CA10BDC8(&a11, &qword_1EC433830, qword_1CA1A0A30);
    sub_1CA19AFA8();
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
    }

    v40 = sub_1CA19AFF8();
    __swift_project_value_buffer(v40, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    OUTLINED_FUNCTION_28_3();
    v41 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v41);
    OUTLINED_FUNCTION_4_8();
    *(OUTLINED_FUNCTION_46() + 16) = xmmword_1CA1A0B80;
    a14 = type metadata accessor for DynamicViewController();
    a11 = v26;
    v42 = v26;
    v43 = AMSLogKey();
    if (v43)
    {
      v44 = v43;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&a11);
    OUTLINED_FUNCTION_20_3();
    a14 = MEMORY[0x1E69E6158];
    a11 = 0xD000000000000021;
    a12 = v55;
    sub_1CA19AF38();
    sub_1CA10BDC8(&a11, &qword_1EC433830, qword_1CA1A0A30);
    sub_1CA19AFA8();

    v56 = OBJC_IVAR___AMSUIDDynamicViewController_child;
    if (*&v42[OBJC_IVAR___AMSUIDDynamicViewController_child])
    {
      [v42 unsetChildViewController_];
    }

    [v42 setChildViewController_];
    v57 = *&v42[v56];
    *&v42[v56] = v30;
    v58 = v30;
  }

  OUTLINED_FUNCTION_56();
}

void sub_1CA151B78()
{
  v1 = sub_1CA14A86C();
  v2 = [v1 viewControllers];

  sub_1CA0F2110(0, &unk_1EE03C240, 0x1E69DD258);
  sub_1CA19C2B8();

  sub_1CA0F04EC();
  OUTLINED_FUNCTION_29_2();

  if (v2 < 2 || (v3 = [v0 navigationItem], v4 = objc_msgSend(v3, sel_hidesBackButton), v3, v4))
  {
    v5 = [v0 navigationItem];
    v6 = MEMORY[0x1E69E7CC0];
    v7 = OUTLINED_FUNCTION_0_12();
    sub_1CA1535F8(v7, v8, v9);

    v10 = [v0 navigationItem];
    sub_1CA1535F8(v6, v10, &selRef_setRightBarButtonItems_);
  }
}

void sub_1CA151CC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90, &unk_1CA1A0C50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v43 - v3;
  v5 = sub_1CA19B018();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v11 = v10 - v9;
  v12 = sub_1CA14A86C();
  v13 = [v12 viewControllers];

  sub_1CA0F2110(0, &unk_1EE03C240, 0x1E69DD258);
  sub_1CA19C2B8();

  v14 = sub_1CA0F04EC();

  if (v14 < 2 || (v15 = [v1 navigationItem], v16 = objc_msgSend(v15, sel_hidesBackButton), v15, v16))
  {
    v17 = [v1 navigationItem];
    sub_1CA1535F8(MEMORY[0x1E69E7CC0], v17, &selRef_setRightBarButtonItems_);

    if (_UISolariumEnabled() && ((*(v7 + 104))(v11, *MEMORY[0x1E698C478], v5), v18 = sub_1CA19B008(), v19 = OUTLINED_FUNCTION_49(), v20(v19), (v18 & 1) != 0))
    {
      v44 = type metadata accessor for DynamicViewController();
      v43 = v1;
      objc_allocWithZone(MEMORY[0x1E69DC708]);
      v21 = v1;
      sub_1CA1530E0();
      v23 = v22;
      v24 = [v21 navigationController];
      if (v24 && (v25 = v24, v26 = [v24 navigationBar], v25, v27 = objc_msgSend(v26, sel_backItem), v26, v27) && (v27, v28 = objc_msgSend(v21, sel_traitCollection), v29 = objc_msgSend(v28, sel_userInterfaceIdiom), v28, v29 != 5))
      {
        v30 = [v21 navigationItem];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810, &qword_1CA1A1A20);
        OUTLINED_FUNCTION_16_0();
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1CA1A0C40;
        *(v31 + 32) = v23;
        v32 = &selRef_setLeftBarButtonItems_;
      }

      else
      {
        v30 = [v21 navigationItem];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810, &qword_1CA1A1A20);
        OUTLINED_FUNCTION_16_0();
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1CA1A0C40;
        *(v31 + 32) = v23;
        v32 = &selRef_setRightBarButtonItems_;
      }

      sub_1CA1535F8(v31, v30, v32);
    }

    else
    {
      if (*&v1[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph])
      {
        sub_1CA19BDA8();
        OUTLINED_FUNCTION_28_3();
        sub_1CA19B7D8();

        sub_1CA19BE18();

        v33 = v4;
        v34 = 0;
        v35 = v5;
      }

      else
      {
        v35 = sub_1CA19BDA8();
        v33 = v4;
        v34 = 1;
      }

      __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
      v36 = [v1 navigationItem];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810, &qword_1CA1A1A20);
      OUTLINED_FUNCTION_16_0();
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1CA1A0C40;
      type metadata accessor for Localizations();
      sub_1CA166B54(0x415F4C45434E4143, 0xED00004E4F495443, v4);
      v44 = type metadata accessor for DynamicViewController();
      v43 = v1;
      objc_allocWithZone(MEMORY[0x1E69DC708]);
      v38 = v1;
      sub_1CA153220();
      *(v37 + 32) = v39;
      v40 = OUTLINED_FUNCTION_49();
      sub_1CA1535F8(v40, v41, v42);

      sub_1CA10BDC8(v4, &qword_1EC433D90, &unk_1CA1A0C50);
    }
  }
}

uint64_t sub_1CA1521DC()
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
  }

  v1 = sub_1CA19AFF8();
  __swift_project_value_buffer(v1, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  v2 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_7_3(v2);
  OUTLINED_FUNCTION_2_8();
  v3 = OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_24_4(v3, xmmword_1CA1A0B80);
  v15[3] = type metadata accessor for DynamicViewController();
  v15[0] = v0;
  v4 = v0;
  v5 = AMSLogKey();
  if (v5)
  {
    v13 = v5;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_23_4(v5, v6, v7, v8, v9, v10, v11, v12, v15[0]);

  __swift_destroy_boxed_opaque_existential_2(v15);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  if (*&v4[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph])
  {
    sub_1CA19B998();
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();

    sub_1CA19BE18();
    sub_1CA19B978();
    sub_1CA152600();
  }

  return result;
}

uint64_t sub_1CA1523F8()
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
  }

  v1 = sub_1CA19AFF8();
  __swift_project_value_buffer(v1, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  v2 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_7_3(v2);
  OUTLINED_FUNCTION_4_8();
  *(OUTLINED_FUNCTION_34_1() + 16) = xmmword_1CA1A0B80;
  v14[3] = type metadata accessor for DynamicViewController();
  v14[0] = v0;
  v3 = v0;
  v4 = AMSLogKey();
  if (v4)
  {
    v12 = v4;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_23_4(v4, v5, v6, v7, v8, v9, v10, v11, v14[0]);

  __swift_destroy_boxed_opaque_existential_2(v14);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  if (*&v3[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph])
  {
    sub_1CA19B998();
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();
    OUTLINED_FUNCTION_29_2();

    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_60();
    sub_1CA19B968();
  }

  return result;
}

void sub_1CA152600()
{
  sub_1CA19B868();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_3();
  if (*(v0 + OBJC_IVAR___AMSUIDDynamicViewController_objectGraph))
  {
    sub_1CA19B7D8();
    OUTLINED_FUNCTION_22_3();

    sub_1CA19BE18();
    sub_1CA19B858();
    __swift_project_boxed_opaque_existential_2(v4, v4[3]);
    OUTLINED_FUNCTION_50();
    sub_1CA19B9C8();
    OUTLINED_FUNCTION_22_3();

    v2 = OUTLINED_FUNCTION_0_12();
    v3(v2);
    __swift_destroy_boxed_opaque_existential_2(v4);
  }
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void static DynamicViewController.setupPageRenderPresenter(with:bag:)()
{
  OUTLINED_FUNCTION_19_0();
  v19 = *MEMORY[0x1E69E9840];
  sub_1CA19B868();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1_3();
  v1 = sub_1CA19BD68();
  v2 = OUTLINED_FUNCTION_58();
  v3 = [v1 BOOLForKey_];

  swift_unknownObjectRelease();
  v16 = 0;
  v4 = [v3 valueWithError_];

  if (v4)
  {
    v5 = v16;
    v6 = [v4 BOOLValue];
  }

  else
  {
    v7 = v16;
    v8 = sub_1CA19AD28();

    swift_willThrow();
    v6 = 0;
  }

  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
  }

  v9 = sub_1CA19AFF8();
  __swift_project_value_buffer(v9, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  OUTLINED_FUNCTION_16_2();
  v10 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v10);
  OUTLINED_FUNCTION_4_8();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v11 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  type metadata accessor for DynamicViewController();
  sub_1CA19AF48();

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1CA19C8F8();

  OUTLINED_FUNCTION_20_3();
  v16 = 0xD00000000000001CLL;
  v17 = v12;
  if (v6)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v6)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1CCA99820](v13, v14);

  v18 = MEMORY[0x1E69E6158];
  sub_1CA19AF38();
  sub_1CA10BDC8(&v16, &qword_1EC433830, qword_1CA1A0A30);
  sub_1CA19AF98();

  OUTLINED_FUNCTION_48();
  if (v15)
  {

    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_41_1();
    sub_1CA19B7D8();
    sub_1CA19BE18();
    sub_1CA19BCA8();
    swift_allocObject();
    OUTLINED_FUNCTION_14_6();
    sub_1CA19BC98();
    OUTLINED_FUNCTION_55();
  }

  OUTLINED_FUNCTION_20_0();
}

void static DynamicViewController.setupPageRenderPresenterWrapper(with:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_57();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  a14 = *MEMORY[0x1E69E9840];
  v30 = sub_1CA19BD68();
  v31 = OUTLINED_FUNCTION_58();
  v32 = [v30 BOOLForKey_];

  swift_unknownObjectRelease();
  a10 = 0;
  v33 = [v32 valueWithError_];

  if (v33)
  {
    v34 = a10;
    v35 = [v33 BOOLValue];
  }

  else
  {
    v36 = a10;
    v37 = sub_1CA19AD28();

    swift_willThrow();
    v35 = 0;
  }

  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
  }

  v38 = sub_1CA19AFF8();
  __swift_project_value_buffer(v38, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  OUTLINED_FUNCTION_16_2();
  v39 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v39);
  OUTLINED_FUNCTION_4_8();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v40 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  type metadata accessor for DynamicViewController();
  sub_1CA19AF48();

  a10 = 0;
  a11 = 0xE000000000000000;
  sub_1CA19C8F8();

  OUTLINED_FUNCTION_20_3();
  a10 = 0xD00000000000001CLL;
  a11 = v41;
  if (v35)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v35)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  MEMORY[0x1CCA99820](v42, v43);

  a13 = MEMORY[0x1E69E6158];
  sub_1CA19AF38();
  sub_1CA10BDC8(&a10, &qword_1EC433830, qword_1CA1A0A30);
  sub_1CA19AF98();

  OUTLINED_FUNCTION_48();
  if (v44)
  {

    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_41_1();
    type metadata accessor for PageRenderMetricsPresenterWrapper();
    OUTLINED_FUNCTION_8_4();
    swift_allocObject();
    v45 = OUTLINED_FUNCTION_14_6();
    sub_1CA172074(v45, v46, v47, v48, v29);
  }

  OUTLINED_FUNCTION_56();
}

id DynamicViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    sub_1CA19C0E8();
    OUTLINED_FUNCTION_22_3();
  }

  else
  {
    v3 = 0;
  }

  v6 = [objc_allocWithZone(v4) initWithNibName:v3 bundle:a3];

  return v6;
}

uint64_t DynamicViewController.animationController(forDismissed:)()
{
  if (!sub_1CA1334C4())
  {
    sub_1CA152600();
    sub_1CA150B74();
    sub_1CA150BD0();
    sub_1CA14C11C();
  }

  return 0;
}

uint64_t sub_1CA152FBC(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_30_1(a1);
  OUTLINED_FUNCTION_4_5(v2, v4);
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((sub_1CA19BE28() & 1) == 0)
    {
      sub_1CA19BEA8();
    }
  }

  return result;
}

uint64_t sub_1CA153018(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((sub_1CA19BE28() & 1) == 0)
    {
      sub_1CA19BEC8();
    }
  }

  return result;
}

uint64_t sub_1CA153078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((sub_1CA19BE28() & 1) == 0)
    {
      sub_1CA19BEC8();
    }
  }

  return result;
}

void sub_1CA1530E0()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v5 = v4;
  v6 = v1[3];
  if (v6)
  {
    v7 = v1;
    v8 = __swift_project_boxed_opaque_existential_2(v1, v1[3]);
    v9 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_3();
    v12 = v11 - v10;
    (*(v9 + 16))(v11 - v10);
    v13 = sub_1CA19CAE8();
    (*(v9 + 8))(v12, v6);
    __swift_destroy_boxed_opaque_existential_2(v7);
  }

  else
  {
    v13 = 0;
  }

  [v0 initWithBarButtonSystemItem:v5 target:v13 action:v3];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA153220()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v8)
  {
    v9 = sub_1CA19C0E8();
  }

  else
  {
    v9 = 0;
  }

  v10 = v5[3];
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_50();
    v13 = __swift_project_boxed_opaque_existential_2(v11, v12);
    v14 = *(v10 - 8);
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_1_3();
    v17 = v16 - v15;
    (*(v14 + 16))(v16 - v15);
    v18 = sub_1CA19CAE8();
    (*(v14 + 8))(v17, v10);
    __swift_destroy_boxed_opaque_existential_2(v5);
  }

  else
  {
    v18 = 0;
  }

  [v1 initWithTitle:v9 style:v7 target:v18 action:v3];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA15339C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1CA177408();
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;

  while (1)
  {
    sub_1CA17727C(&v31);
    if (!*(&v32 + 1))
    {
      sub_1CA0F11F8(v35);
    }

    v28 = v31;
    v29 = v32;
    v30 = v33;
    sub_1CA0F11E8(&v34, v27);
    v7 = *a5;
    v9 = sub_1CA184118();
    v10 = v7[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v7[3] >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C50, &unk_1CA1A4C58);
        sub_1CA19C9B8();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1CA17621C(v12, a4 & 1);
      v14 = sub_1CA184118();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1CA0F1200(v27, v26);
        __swift_destroy_boxed_opaque_existential_2(v27);
        sub_1CA103038(&v28);
        v17 = (v16[7] + 32 * v9);
        __swift_destroy_boxed_opaque_existential_2(v17);
        sub_1CA0F11E8(v26, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    v19 = v18[6] + 40 * v9;
    v20 = v28;
    v21 = v29;
    *(v19 + 32) = v30;
    *v19 = v20;
    *(v19 + 16) = v21;
    sub_1CA0F11E8(v27, (v18[7] + 32 * v9));
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v18[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1CA19CB58();
  __break(1u);
  return result;
}

void sub_1CA1535F8(uint64_t a1, void *a2, SEL *a3)
{
  sub_1CA0F2110(0, &qword_1EE03C260, 0x1E69DC708);
  v5 = sub_1CA19C2A8();

  [a2 *a3];
}

void sub_1CA153684(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA19C0E8();

  [a3 setAccessibilityIdentifier_];
}

unint64_t get_enum_tag_for_layout_string_27AppleMediaServicesUIDynamic21DynamicViewControllerC9LoadStateO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1CA153710(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1CA153764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1CA1537C4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_1CA153804()
{
  result = qword_1EC433C00;
  if (!qword_1EC433C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433C00);
  }

  return result;
}

uint64_t sub_1CA153870(uint64_t a1)
{
  v2 = type metadata accessor for JSServiceRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA1538CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170, &qword_1CA1A1230);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA15393C(void *a1)
{
  v1 = [a1 clientData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA19C018();

  return v3;
}

uint64_t objectdestroy_32Tm()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_45Tm(void (*a1)(void))
{

  a1(*(v1 + 24));
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

id OUTLINED_FUNCTION_16_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1CA19AF58();
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return sub_1CA10BDC8(v2 - 168, v0, v1);
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return sub_1CA19B608();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return sub_1CA19AF88();
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return sub_1CA19AF18();
}

id OUTLINED_FUNCTION_44_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_46()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{

  return sub_1CA19AF58();
}

uint64_t OUTLINED_FUNCTION_58()
{

  return sub_1CA19C0E8();
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

void *OUTLINED_FUNCTION_60()
{

  return sub_1CA19BE18();
}

unint64_t DynamicViewControllerPresentationError.failureReason.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t DynamicViewControllerPresentationError.hashValue.getter(char a1)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a1 & 1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA153F74(uint64_t a1)
{
  v2 = *v1;
  sub_1CA19CBD8();
  DynamicViewControllerPresentationError.hash(into:)(v4, v2);
  return sub_1CA19CC18();
}

unint64_t sub_1CA153FBC()
{
  result = qword_1EC433C98;
  if (!qword_1EC433C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433C98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DynamicViewControllerPresentationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1CA1540F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!deviceIsRunningInternalBuild())
  {
    return 0;
  }

  if (a2)
  {
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_1CA19C8F8();

    strcpy(v37, "INTERNAL ONLY\n");
    HIBYTE(v37[1]) = -18;
    MEMORY[0x1CCA99820](a1, a2);
  }

  else
  {
    (*(v8 + 16))(v10, v4, a3);
    v12 = sub_1CA19CAC8();
    if (v12)
    {
      v13 = v12;
      (*(v8 + 8))(v10, a3);
    }

    else
    {
      v13 = swift_allocError();
      (*(v8 + 32))(v14, v10, a3);
    }

    v15 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v16 = v13;
      v17 = sub_1CA19AD18();

      v18 = [v17 localizedFailureReason];
      if (!v18)
      {
        v18 = [v17 description];
      }

      v19 = sub_1CA19C118();
      v21 = v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA16B3F4();
        v15 = v31;
      }

      v22 = *(v15 + 16);
      if (v22 >= *(v15 + 24) >> 1)
      {
        sub_1CA16B3F4();
        v15 = v32;
      }

      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v21;
      v24 = [v17 userInfo];
      v25 = sub_1CA19C018();

      v26 = sub_1CA19C118();
      if (!*(v25 + 16))
      {

        goto LABEL_21;
      }

      v28 = sub_1CA184158(v26, v27);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        break;
      }

      sub_1CA0F1200(*(v25 + 56) + 32 * v28, v37);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433480, &qword_1CA1A2A10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      v13 = v36[1];
    }

LABEL_21:

LABEL_22:
    v37[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433CA0, qword_1CA1A4DA8);
    sub_1CA154530();
    v33 = sub_1CA19C078();
    v35 = v34;

    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_1CA19C8F8();

    strcpy(v37, "INTERNAL ONLY\n");
    HIBYTE(v37[1]) = -18;
    MEMORY[0x1CCA99820](v33, v35);
  }

  return v37[0];
}

unint64_t sub_1CA154530()
{
  result = qword_1EE03B208;
  if (!qword_1EE03B208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC433CA0, qword_1CA1A4DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03B208);
  }

  return result;
}

uint64_t sub_1CA154594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1CA161FD8();
  if (v3)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = sub_1CA161FD8();
  v12 = v11;
  v13 = sub_1CA161FD8();
  v15 = v14;
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v16 + 8))(a2);
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  result = (*(v17 + 8))(a1);
  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v12;
  a3[4] = v13;
  a3[5] = v15;
  return result;
}

double sub_1CA154724@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1CA154594(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
    result = *&v8;
    a3[2] = v8;
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

uint64_t sub_1CA15477C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1CA1547D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1CA154850@<X0>(void *a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_objectGraph))
  {
    v3 = sub_1CA19BDA8();
    sub_1CA19B7D8();

    sub_1CA19BE18();

    v4 = a1;
    v5 = 0;
    v6 = v3;
  }

  else
  {
    v6 = sub_1CA19BDA8();
    v4 = a1;
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
}

id sub_1CA154904()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView;
  v2 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView);
LABEL_5:
    v8 = v2;
    return v3;
  }

  v4 = v0;
  v5 = objc_allocWithZone(MEMORY[0x1E69DD418]);
  result = sub_1CA1576D0(0, 0xE000000000000000, 0, 0.0, 0.0, 0.0, 0.0);
  if (result)
  {
    v7 = *(v0 + v1);
    *(v4 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1CA15499C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_automaticRetry] = 1;
  v12 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_airplaneModeInquiry;
  *&v6[v12] = [objc_allocWithZone(AMSUIDAirplaneModeInquiry) init];
  v13 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_cellularDataInquiry;
  *&v6[v13] = [objc_allocWithZone(AMSUIDCellularDataInquiry) init];
  v14 = &v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry];
  v15 = type metadata accessor for NWPathNetworkInquiry();
  v16 = sub_1CA16F030();
  v14[3] = v15;
  v14[4] = &off_1F49D1A98;
  *v14 = v16;
  v17 = &v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkObservation];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  *&v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView] = 0;
  *&v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_error] = a1;
  *&v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_objectGraph] = a2;
  v18 = &v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_retryAction];
  *v18 = a4;
  v18[1] = a5;
  v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_isNavigationControllerEmbedded] = a3;
  v19 = a1;

  sub_1CA10FCD4(a4, a5);
  v20 = type metadata accessor for ErrorViewController();
  v32.receiver = v6;
  v32.super_class = v20;
  v21 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
  v22 = qword_1EE03B230;
  v23 = v21;
  if (v22 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
  }

  v24 = sub_1CA19AFF8();
  __swift_project_value_buffer(v24, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v31 = v20;
  v30[0] = v23;
  v25 = AMSLogKey();
  if (v25)
  {
    v26 = v25;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v30);
  sub_1CA19AF18();
  swift_getErrorValue();
  v27 = sub_1CA19CB88();
  v31 = MEMORY[0x1E69E6158];
  v30[0] = v27;
  v30[1] = v28;
  sub_1CA19AF38();
  sub_1CA132B60(v30, &qword_1EC433830, qword_1CA1A0A30);
  sub_1CA19AFB8();

  sub_1CA153B20(a4, a5);

  return v23;
}

void sub_1CA154CF4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_automaticRetry) = 1;
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_airplaneModeInquiry;
  *(v1 + v2) = [objc_allocWithZone(AMSUIDAirplaneModeInquiry) init];
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_cellularDataInquiry;
  *(v1 + v3) = [objc_allocWithZone(AMSUIDCellularDataInquiry) init];
  v4 = (v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry);
  v5 = type metadata accessor for NWPathNetworkInquiry();
  v6 = sub_1CA16F030();
  v4[3] = v5;
  v4[4] = &off_1F49D1A98;
  *v4 = v6;
  v7 = v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkObservation;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView) = 0;
  sub_1CA19C9F8();
  __break(1u);
}

id sub_1CA154E1C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkObservation;
  swift_beginAccess();
  if (*(v2 + 24))
  {
    sub_1CA0F2ACC(v2, v7);
    __swift_project_boxed_opaque_existential_2(v7, v7[3]);
    v3 = OUTLINED_FUNCTION_6_12();
    v4(v3);
    __swift_destroy_boxed_opaque_existential_2(v7);
  }

  v5 = type metadata accessor for ErrorViewController();
  v8.receiver = v1;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id sub_1CA154FEC()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_isNavigationControllerEmbedded) == 1)
    {
      v3 = [v2 navigationItem];

      return v3;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for ErrorViewController();
  v5 = objc_msgSendSuper2(&v6, sel_navigationItem);

  return v5;
}

void sub_1CA1550C4()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v0;
  v3 = sub_1CA19B2E8();
  OUTLINED_FUNCTION_1_0();
  v63 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170, &qword_1CA1A1230);
  OUTLINED_FUNCTION_12_4(v9);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_13();
  v11 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v62 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_3();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90, &unk_1CA1A0C50);
  OUTLINED_FUNCTION_12_4(v17);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v59 - v19);
  v21 = type metadata accessor for ErrorViewController();
  v69.receiver = v0;
  v69.super_class = v21;
  objc_msgSendSuper2(&v69, sel_loadView);
  v22 = [v0 view];
  v23 = [objc_opt_self() ams_defaultPlatformBackgroundColor];
  [v22 setBackgroundColor_];

  sub_1CA154850(v20);
  v24 = sub_1CA19BDA8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v24) != 1)
  {
    v61 = v3;
    v29 = 0x6C6172656E6567;
    v60 = sub_1CA19BD68();
    (*(*(v24 - 8) + 8))(v20, v24);
    v30 = *&v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_error];
    v64[0] = v30;
    v31 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433480, &qword_1CA1A2A10);
    if (swift_dynamicCast())
    {
      if (v68)
      {
        v33 = 0xE700000000000000;
      }

      else
      {
        v29 = 0x61727473746F6F62;
        v33 = 0xE900000000000070;
      }
    }

    else
    {
      v33 = 0xE700000000000000;
    }

    v34 = sub_1CA19C118();
    v36 = v35;
    v37 = objc_allocWithZone(MEMORY[0x1E698CA38]);
    v38 = sub_1CA15776C(v34, v36, v29, v33, v30);
    if (*&v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_objectGraph])
    {
      sub_1CA19B7C8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v11);
      v40 = v61;
      if (EnumTagSinglePayload != 1)
      {
        v41 = v62;
        (*(v62 + 32))(v16, v1, v11);
        sub_1CA19AD78();
        v42 = sub_1CA19C0E8();

        [v38 setUrl_];

        v43 = sub_1CA19AD78();
        v45 = sub_1CA17C1F4(0xD000000000000013, 0x80000001CA1AD420, v43, v44);

        if (*(v45 + 16))
        {

          v46 = sub_1CA19C0E8();

          [v38 setEventServiceType_];
        }

        else
        {
        }

        v47 = sub_1CA19AD78();
        v49 = sub_1CA17C1F4(0xD000000000000011, 0x80000001CA1AD440, v47, v48);

        if (*(v49 + 16))
        {

          v50 = sub_1CA19C0E8();

          [v38 setEventPlacement_];

          (*(v41 + 8))(v16, v11);
        }

        else
        {
          (*(v41 + 8))(v16, v11);
        }

        goto LABEL_22;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v1, 1, 1, v11);
      v40 = v61;
    }

    sub_1CA132B60(v1, &qword_1EC433170, &qword_1CA1A1230);
LABEL_22:
    v51 = [objc_opt_self() internalInstanceUsingBag_];
    sub_1CA0F78AC();
    v52 = v63;
    (*(v63 + 104))(v8, *MEMORY[0x1E69E7F98], v40);
    v53 = sub_1CA19C5E8();
    (*(v52 + 8))(v8, v40);
    v54 = swift_allocObject();
    *(v54 + 16) = v51;
    *(v54 + 24) = v38;
    v66 = sub_1CA157A24;
    v67 = v54;
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 1107296256;
    OUTLINED_FUNCTION_3_6();
    v64[2] = v55;
    v65 = &block_descriptor_32;
    v56 = _Block_copy(v64);
    v57 = v51;
    v58 = v38;

    AMSDispatchAsync(v53, v56);
    swift_unknownObjectRelease();
    _Block_release(v56);

    goto LABEL_23;
  }

  sub_1CA132B60(v20, &qword_1EC433D90, &unk_1CA1A0C50);
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
  }

  v25 = sub_1CA19AFF8();
  __swift_project_value_buffer(v25, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v65 = v21;
  v64[0] = v2;
  v26 = v2;
  v27 = AMSLogKey();
  if (v27)
  {
    v28 = v27;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v64);
  sub_1CA19AF18();
  sub_1CA19AFB8();

LABEL_23:
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA15592C(uint64_t a1)
{
  v2.receiver = v1;
  v2.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_1CA155AAC();
  sub_1CA156F14();
}

void sub_1CA1559B0(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v12, sel_viewWillLayoutSubviews);
  v2 = sub_1CA154904();
  v3 = [v1 view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame_];
}

void sub_1CA155AAC()
{
  v1 = [v0 navigationItem];
  [v1 ams_configureWithTransparentBackground];

  sub_1CA155B08();

  sub_1CA155B7C();
}

void sub_1CA155B08()
{
  v1 = [v0 view];
  v2 = sub_1CA154904();
  [v1 addSubview_];
}

void sub_1CA155B7C()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_airplaneModeInquiry) setDelegate_];
  v2 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry + 24);
  v3 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry + 32);
  __swift_project_boxed_opaque_existential_2((v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry), v2);
  v4 = sub_1CA0F78AC();
  v5 = sub_1CA19C598();
  v9[3] = v4;
  v9[4] = MEMORY[0x1E69AB720];
  v9[0] = v5;
  OUTLINED_FUNCTION_14_2();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v3 + 40);

  v7(v10, v9, sub_1CA1579AC, v6, v2, v3);

  __swift_destroy_boxed_opaque_existential_2(v9);
  v8 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkObservation;
  swift_beginAccess();
  sub_1CA1579B4(v10, v1 + v8);
  swift_endAccess();
  sub_1CA15674C();
}

void sub_1CA155CC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1CA156E88();
  }
}

void sub_1CA155D1C()
{
  OUTLINED_FUNCTION_19_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90, &unk_1CA1A0C50);
  OUTLINED_FUNCTION_12_4(v1);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v18 - v3);
  v29 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_error);
  v5 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433480, &qword_1CA1A2A10);
  if (swift_dynamicCast())
  {
    v6 = v24;
    v8 = v25;
    v7 = v26;
    v9 = v28;
    v18 = v23;
    if (v28)
    {
      v20 = v27;

      v19 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 1;
  }

  type metadata accessor for Localizations();
  sub_1CA154850(v4);
  v20 = sub_1CA166B54(0xD000000000000015, 0x80000001CA1AD360, v4);
  v9 = v10;
  sub_1CA132B60(v4, &qword_1EC433D90, &unk_1CA1A0C50);

  v19 = 0;
LABEL_6:
  swift_getErrorValue();
  v11 = v21;
  v12 = v22;
  if (v6 == 1)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
  }

  v13 = sub_1CA1540F8(v8, v7, v11, v12);
  v15 = v14;

  if (v6 == 1 || (, , !v6))
  {
    type metadata accessor for Localizations();
    sub_1CA154850(v4);
    v16 = sub_1CA166B54(0xD000000000000014, 0x80000001CA1AD380, v4);
    v6 = v17;
    sub_1CA132B60(v4, &qword_1EC433D90, &unk_1CA1A0C50);
  }

  else
  {
    v16 = v18;
  }

  sub_1CA156348(v20, v9, v13, v15, v16, v6);

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA155FB0()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90, &unk_1CA1A0C50);
  OUTLINED_FUNCTION_12_4(v4);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v33 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170, &qword_1CA1A1230);
  OUTLINED_FUNCTION_12_4(v8);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - v10;
  v12 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v33 - v20;
  sub_1CA177C14(v3, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1CA132B60(v11, &qword_1EC433170, &qword_1CA1A1230);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v33[1] = v1;
    v26 = v3;
    v27 = *(v14 + 32);
    v27(v21, v11, v12);
    (*(v14 + 16))(v19, v21, v12);
    v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v25 = swift_allocObject();
    v27((v25 + v28), v19, v12);
    v3 = v26;
    type metadata accessor for Localizations();
    sub_1CA154850(v7);
    v22 = sub_1CA166B54(0x53474E4954544553, 0xEF4E4F495443415FLL, v7);
    v23 = v29;
    sub_1CA132B60(v7, &qword_1EC433D90, &unk_1CA1A0C50);
    (*(v14 + 8))(v21, v12);
    v24 = sub_1CA157950;
  }

  sub_1CA154850(v7);
  v30 = sub_1CA177DD8(v7, v3);
  v32 = v31;
  sub_1CA132B60(v7, &qword_1EC433D90, &unk_1CA1A0C50);
  sub_1CA156348(v30, v32, 0, 0, v22, v23);

  sub_1CA153B20(v24, v25);
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA1562E0()
{
  v0 = objc_opt_self();
  v1 = sub_1CA19AD88();
  [v0 openStandardURL_];
}

void sub_1CA156348(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v12 = sub_1CA154904();
  v13 = sub_1CA1578B0(v12, &selRef_buttonTitle);
  if (v14)
  {
    if (!a6)
    {
LABEL_31:

      goto LABEL_32;
    }

    if (v13 == a5 && v14 == a6)
    {
    }

    else
    {
      v16 = sub_1CA19CAF8();

      if ((v16 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (a6)
  {
    goto LABEL_32;
  }

  v17 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView;
  v18 = sub_1CA1578B0(*(v6 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView), &selRef_message);
  if (!v19)
  {
    if (!a4)
    {
      goto LABEL_23;
    }

LABEL_32:
    v26 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView;
    v27 = *(v6 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView);
    OUTLINED_FUNCTION_14_2();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1CA157948;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_3_6();
    aBlock[2] = v29;
    aBlock[3] = &block_descriptor_22;
    v30 = _Block_copy(aBlock);
    v31 = v27;

    [v31 setButtonAction_];
    _Block_release(v30);

    v32 = *(v6 + v26);
    if (a6)
    {
      a6 = sub_1CA19C0E8();
    }

    [v32 setButtonTitle_];

    v33 = *(v6 + v26);
    if (a4)
    {
      a4 = sub_1CA19C0E8();
    }

    [v33 setMessage_];

    v34 = *(v6 + v26);
    if (a2)
    {
      a2 = sub_1CA19C0E8();
    }

    [v34 setTitle_];

    return;
  }

  if (!a4)
  {
    goto LABEL_31;
  }

  if (v18 == a3 && v19 == a4)
  {
  }

  else
  {
    v21 = sub_1CA19CAF8();

    if ((v21 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_23:
  v22 = sub_1CA1578B0(*(v6 + v17), &selRef_title);
  if (!v23)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  if (v22 != a1 || v23 != a2)
  {
    v25 = sub_1CA19CAF8();

    if (v25)
    {
      return;
    }

    goto LABEL_32;
  }
}

void sub_1CA156694(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1CA157190();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_retryAction);
    v6 = *(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_retryAction + 8);
    sub_1CA10FCD4(v5, v6);

    if (v5)
    {
      v5();
      sub_1CA153B20(v5, v6);
    }
  }
}

void sub_1CA15674C()
{
  OUTLINED_FUNCTION_19_0();
  v2 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v8 = v7 - v6;
  v23 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_3();
  v14 = v13 - v12;
  v15 = sub_1CA19B2E8();
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5_13();
  sub_1CA0F78AC();
  (*(v17 + 104))(v1, *MEMORY[0x1E69E7F88], v15);
  v19 = sub_1CA19C5E8();
  (*(v17 + 8))(v1, v15);
  OUTLINED_FUNCTION_14_2();
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  v24[4] = sub_1CA15791C;
  v24[5] = v20;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1CA0F4068;
  v24[3] = &block_descriptor_12;
  v21 = _Block_copy(v24);
  v22 = v0;
  sub_1CA19B2F8();
  sub_1CA0F7938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70, &qword_1CA1A0D40);
  sub_1CA0F40C4();
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v14, v8, v21);
  _Block_release(v21);

  (*(v4 + 8))(v8, v2);
  (*(v10 + 8))(v14, v23);

  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA156A34(uint64_t a1)
{
  v2 = sub_1CA19B2D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CA19B318();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry);
  v10 = *(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry + 24);
  v11 = *(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry + 32);
  __swift_project_boxed_opaque_existential_2((a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry), v10);
  if ((*(v11 + 8))(v10, v11))
  {
    v12 = 4;
  }

  else if ([*(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_airplaneModeInquiry) isEnabled])
  {
    v12 = 1;
  }

  else
  {
    v13 = *(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_cellularDataInquiry);
    if ([v13 isSupported] && !objc_msgSend(v13, sel_isEnabledForDevice))
    {
      v12 = 2;
    }

    else if ([v13 isSupported] && (v15 = v9[3], v14 = v9[4], __swift_project_boxed_opaque_existential_2(v9, v15), (*(v14 + 16))(v15, v14) == 3) && !objc_msgSend(v13, sel_isEnabledForBundle))
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }
  }

  sub_1CA0F78AC();
  v16 = sub_1CA19C598();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1CA15793C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA0F4068;
  aBlock[3] = &block_descriptor_18_0;
  v19 = _Block_copy(aBlock);

  sub_1CA19B2F8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CA0F7938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70, &qword_1CA1A0D40);
  sub_1CA0F40C4();
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v8, v5, v19);
  _Block_release(v19);

  (*(v3 + 8))(v5, v2);
  return (*(v6 + 8))(v8, v22);
}

void sub_1CA156DEC(char a1, uint64_t a2)
{
  if (a1 == 4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    sub_1CA155D1C();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      return;
    }

    v3 = v4;
    sub_1CA155FB0();
  }
}

void sub_1CA156E88()
{
  sub_1CA15674C();
  if (*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_automaticRetry) == 1)
  {
    __swift_project_boxed_opaque_existential_2((v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry), *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry + 24));
    v1 = OUTLINED_FUNCTION_6_12();
    if (v2(v1))
    {
      v3 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_retryAction);
      if (v3)
      {
        v3();
      }
    }
  }
}

void sub_1CA156F14()
{
  v0 = sub_1CA19AD18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D78, &qword_1CA1A4F28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA1A0930;
  *(inited + 32) = 0x707954726F727265;
  *(inited + 40) = 0xE900000000000065;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433D80, &unk_1CA1A4F30);
  *(inited + 48) = sub_1CA19C168();
  *(inited + 56) = v2;
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x80000001CA1AD320;
  v3 = [v0 description];
  v4 = sub_1CA19C118();
  v6 = v5;

  *(inited + 80) = v4;
  *(inited + 88) = v6;
  *(inited + 96) = 0x707954746E657665;
  *(inited + 104) = 0xE900000000000065;
  *(inited + 112) = 1701273968;
  *(inited + 120) = 0xE400000000000000;
  v7 = sub_1CA19C038();
  sub_1CA15784C(v0);
  if (v8)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1CA17AD30();
  }

  else
  {
    sub_1CA184158(0xD000000000000012, 0x80000001CA1AD340);
    if (v9)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4332C8, &unk_1CA1A7220);
      sub_1CA19C9A8();

      sub_1CA19C9C8();
    }
  }

  sub_1CA16C888(v7);

  sub_1CA157204();
}

uint64_t sub_1CA157190()
{
  v0 = sub_1CA19C038();
  sub_1CA16C888(v0);

  sub_1CA157204();
}

void sub_1CA157204()
{
  OUTLINED_FUNCTION_19_0();
  v2 = sub_1CA19B5F8();
  OUTLINED_FUNCTION_1_0();
  v24 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = v6 - v5;
  v8 = sub_1CA19B868();
  OUTLINED_FUNCTION_1_0();
  v23 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5_13();
  v11 = sub_1CA19BA68();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_3();
  v17 = v16 - v15;
  if (*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_objectGraph))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D68, &unk_1CA1A4F18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA1A0B80;
    *(inited + 32) = 1701273968;
    *(inited + 40) = 0xE400000000000000;
    v22 = v2;
    v19 = MEMORY[0x1E69E6158];
    *(inited + 48) = 0x726F727245;
    *(inited + 56) = 0xE500000000000000;
    *(inited + 72) = v19;
    *(inited + 80) = 0x6570795465676170;
    *(inited + 120) = v19;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = 0x726F727245534D41;
    *(inited + 104) = 0xE800000000000000;

    v20 = sub_1CA19C038();

    sub_1CA15752C(v21, v20);
    sub_1CA19B7D8();
    sub_1CA19BE18();
    sub_1CA19BE18();
    sub_1CA19B5E8();
    sub_1CA19B848();

    (*(v24 + 8))(v7, v22);
    (*(v23 + 8))(v1, v8);
    (*(v13 + 8))(v17, v11);
  }

  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA15752C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1CA0F0FB8(a1, sub_1CA157814, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

id sub_1CA1576D0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  if (a2)
  {
    v13 = sub_1CA19C0E8();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithFrame:v13 title:a3 style:{a4, a5, a6, a7}];

  return v14;
}

id sub_1CA15776C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_1CA19C0E8();

  v8 = sub_1CA19C0E8();

  v9 = sub_1CA19AD18();
  v10 = [v5 initWithSubsystem:v7 category:v8 error:v9];

  return v10;
}

uint64_t sub_1CA157814@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA176704((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1CA15784C(void *a1)
{
  v1 = [a1 localizedFailureReason];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA19C118();

  return v3;
}

uint64_t sub_1CA1578B0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1CA19C118();

  return v4;
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1CA157950()
{
  v0 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_12_4(v0);

  sub_1CA1562E0();
}

uint64_t sub_1CA1579B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D98, &unk_1CA1A4F40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void AMSDispatchAsync(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = AMSLogKey();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __AMSDispatchAsync_block_invoke;
  v9[3] = &unk_1E83668D0;
  v10 = v5;
  v11 = v4;
  v6 = v5;
  v7 = v4;
  dispatch_async(v3, v9);

  v8 = v10;
}

uint64_t __AMSDispatchAsync_block_invoke(uint64_t a1)
{
  v2 = AMSSetLogKey();
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

id sub_1CA157B88(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1CA19C0E8();

  v4 = [v2 initWithContentsOfFile_];

  return v4;
}

id sub_1CA157BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[qword_1EE03B0C8];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[qword_1EE03B0C0];
  *v15 = a5;
  v15[1] = a6;
  v16 = &v6[qword_1EE03B0D0];
  *v16 = a3;
  *(v16 + 1) = a4;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

void sub_1CA157C9C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1CA19AEF8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v38 = ObjectType;
  v42 = ObjectType;
  v40 = v0;
  v4 = v0;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v40);
  sub_1CA19AF68();
  sub_1CA19AEE8();
  sub_1CA19AED8();
  v7 = *&v4[qword_1EE03B0C8];
  v8 = *&v4[qword_1EE03B0C8 + 8];
  v42 = MEMORY[0x1E69E6158];
  v40 = v7;
  v41 = v8;
  swift_bridgeObjectRetain_n();
  sub_1CA19AEB8();
  sub_1CA0F0440(&v40);
  sub_1CA19AED8();
  sub_1CA19AF08();
  sub_1CA19AFC8();

  sub_1CA115CA0();
  v9 = sub_1CA157B88(v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = *&v4[qword_1EE03B0C0];
    v12 = *&v4[qword_1EE03B0C0 + 8];
    v13 = OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_1_26(v13);
    v42 = v38;
    v40 = v4;
    v14 = v4;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    OUTLINED_FUNCTION_2_21();
    sub_1CA19AF68();
    sub_1CA19AEE8();
    sub_1CA19AED8();
    v21 = *&v14[qword_1EE03B0D0];
    v20 = *&v14[qword_1EE03B0D0 + 8];
    v42 = &type metadata for Artwork.Crop;
    v40 = v21;
    v41 = v20;

    sub_1CA19AEB8();
    sub_1CA0F0440(&v40);
    sub_1CA19AED8();
    type metadata accessor for CGSize(0);
    v42 = v22;
    v40 = v11;
    v41 = v12;
    sub_1CA19AEB8();
    sub_1CA0F0440(&v40);
    sub_1CA19AED8();
    sub_1CA19AF08();
    sub_1CA19AFC8();

    v23 = sub_1CA158424(v10);
    v25 = v24;
    if (v24)
    {
      v37 = v10;
      v26 = OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_1_26(v26);
      v42 = v38;
      v40 = v14;
      v27 = v14;
      sub_1CA10B888(v23);
      v28 = AMSLogKey();
      if (v28)
      {
        v29 = v28;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      OUTLINED_FUNCTION_2_21();
      sub_1CA19AF68();
      sub_1CA19AEE8();
      sub_1CA19AED8();
      swift_getErrorValue();
      v42 = v39;
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v40);
      (*(v39[-1].Description + 2))(boxed_opaque_existential_2Tm);
      sub_1CA19AEB8();
      sub_1CA0F0440(&v40);
      sub_1CA19AED8();
      sub_1CA19AF08();
      sub_1CA19AFB8();

      sub_1CA10B868(v23);
      v10 = v37;
    }

    else
    {
      v30 = OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_1_26(v30);
      v42 = v38;
      v40 = v14;
      v31 = v14;
      v32 = AMSLogKey();
      if (v32)
      {
        v33 = v32;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      OUTLINED_FUNCTION_2_21();
      sub_1CA19AF68();
      sub_1CA19AF18();
      sub_1CA19AFC8();
    }

    sub_1CA17D778(v23, v25 & 1);

    sub_1CA10B868(v23);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_1_26(v17);
    v42 = v38;
    v40 = v4;
    v4;
    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    OUTLINED_FUNCTION_2_21();
    sub_1CA19AF68();
    sub_1CA19AF18();
    sub_1CA19AFB8();

    sub_1CA10BD74();
    v34 = swift_allocError();
    *v35 = xmmword_1CA1A4F50;
    *(v35 + 16) = 3;
    sub_1CA17D778(v34, 1);
  }
}

id sub_1CA158424(void *a1)
{
  v4 = *(v1 + qword_1EE03B0D0);
  v3 = *(v1 + qword_1EE03B0D0 + 8);
  v5 = v4 == 26479 && v3 == 0xE200000000000000;
  if (v5 || (sub_1CA19CAF8() & 1) != 0)
  {
    return sub_1CA1585A0(a1);
  }

  v9 = v4 == 26223 && v3 == 0xE200000000000000;
  if (v9 || (sub_1CA19CAF8() & 1) != 0)
  {
    return sub_1CA158670(a1);
  }

  v10 = v4 == 29299 && v3 == 0xE200000000000000;
  if (!v10 && (sub_1CA19CAF8() & 1) == 0)
  {
    sub_1CA10BD74();
    v7 = swift_allocError();
    *v11 = v4;
    *(v11 + 8) = v3;
    *(v11 + 16) = 2;

    return v7;
  }

  return sub_1CA158740(a1);
}

void sub_1CA158558(void *a1)
{
  v1 = a1;
  sub_1CA157C9C();
}

uint64_t sub_1CA1585A0(void *a1)
{
  [a1 size];
  v4 = [a1 ams:0.0 imageCroppedTo:{344.0, v3, v2 + -344.0 + -772.0}];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1CA158740(v4);
  }

  else
  {
    sub_1CA10BD74();
    v6 = swift_allocError();
    *v7 = xmmword_1CA1A3570;
    *(v7 + 16) = 3;
  }

  return v6;
}

uint64_t sub_1CA158670(void *a1)
{
  [a1 size];
  v4 = [a1 ams:0.0 imageCroppedTo:{296.0, v3, v2 + -296.0 + -1602.0}];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1CA158740(v4);
  }

  else
  {
    sub_1CA10BD74();
    v6 = swift_allocError();
    *v7 = xmmword_1CA1A3570;
    *(v7 + 16) = 3;
  }

  return v6;
}

id sub_1CA158740(void *a1)
{
  [a1 size];
  v3 = *(v1 + qword_1EE03B0C0);
  v4 = *(v1 + qword_1EE03B0C0 + 8);
  v6 = v5 / v3;
  v8 = v7 / v4;
  if (v8 < v6)
  {
    v6 = v8;
  }

  v9 = [a1 ams:v6 imageScaledTo:?];
  [v9 size];
  v12 = [v9 ams:(v10 - v3) * 0.5 imageCroppedTo:{(v11 - v4) * 0.5, v3, v4}];
  if (!v12)
  {
    sub_1CA10BD74();
    v12 = swift_allocError();
    *v13 = xmmword_1CA1A3570;
    *(v13 + 16) = 3;
  }

  return v12;
}

uint64_t sub_1CA158888()
{
}

uint64_t sub_1CA1588D0()
{
}

uint64_t type metadata accessor for FileImageFetchOperation(uint64_t a1)
{
  result = qword_1EE03B0B0;
  if (!qword_1EE03B0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_1_26(__n128 *a1)
{
  result = *(v1 - 224);
  a1[1] = result;
  return result;
}

unint64_t sub_1CA158A10(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CA19CA48();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1CA158A5C(char a1)
{
  result = 0x7373696D736964;
  switch(a1)
  {
    case 1:
      result = 7368560;
      break;
    case 2:
      result = 0x6F6F526F54706F70;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x746E6573657270;
      break;
    case 5:
      result = 1752397168;
      break;
    case 6:
      result = 0x6563616C706572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1CA158B3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA158A10(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1CA158B6C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1CA158A5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1CA158B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1CA19B4D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1CA158C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1CA19B6E8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double sub_1CA158C98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v33 = a2;
  v58 = a3;
  v5 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433778, &qword_1CA1A55B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_1CA161EA4();
  if (v3)
  {

    v32 = 0;
  }

  else
  {
    v32 = v15;
  }

  v57 = v3 != 0;
  v31 = sub_1CA162250() & 1;
  v30 = sub_1CA162250();
  v29 = sub_1CA161EA4();
  v54 = 0;
  v16 = sub_1CA161FD8();
  v18 = v17;
  v28 = v16;
  sub_1CA19B4E8();
  sub_1CA19B408();
  v19 = *(v7 + 8);
  v19(v11, v5);
  v20 = sub_1CA19B758();
  if (__swift_getEnumTagSinglePayload(v14, 1, v20) == 1)
  {
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_7_6();
    (*(v21 + 8))(v33);
    v19(a1, v5);
    sub_1CA11FF84(v14, &qword_1EC433778, &qword_1CA1A55B0);
    v22 = 0;
  }

  else
  {
    v22 = sub_1CA19B748();
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_7_6();
    (*(v23 + 8))(v33);
    v19(a1, v5);
    OUTLINED_FUNCTION_7_6();
    (*(v24 + 8))(v14, v20);
  }

  *&v35 = v32;
  BYTE8(v35) = v57;
  BYTE9(v35) = v30 & 1;
  *(&v35 + 10) = v55;
  HIWORD(v35) = v56;
  *&v36 = v29;
  BYTE8(v36) = v54;
  BYTE9(v36) = v31;
  *(&v36 + 10) = v52;
  HIWORD(v36) = v53;
  *&v37 = v28;
  *(&v37 + 1) = v18;
  v38 = v22;
  v39 = v32;
  v40 = v57;
  v41 = v30 & 1;
  v42 = v55;
  v43 = v56;
  v44 = v29;
  v45 = v54;
  v46 = v31;
  v47 = v52;
  v48 = v53;
  v49 = v28;
  v50 = v18;
  v51 = v22;
  sub_1CA15A070(&v35, v34);
  sub_1CA15A0A8(&v39);
  v25 = v36;
  v26 = v58;
  *v58 = v35;
  v26[1] = v25;
  result = *&v37;
  v26[2] = v37;
  *(v26 + 6) = v38;
  return result;
}

double sub_1CA1591A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1CA158C98(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

uint64_t sub_1CA1591F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v144 = a2;
  v117 = a3;
  v131 = sub_1CA19B5C8();
  OUTLINED_FUNCTION_1_0();
  v130 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v116 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DA0, &unk_1CA1A5040);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v127 = &v111 - v9;
  v132 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v111 - v18;
  v129 = sub_1CA19B6E8();
  OUTLINED_FUNCTION_1_0();
  v128 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_3();
  v124 = v23 - v22;
  v24 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_7_6();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1_3();
  v28 = v27 - v26;
  *(v28 + 24) = 0u;
  *(v28 + 8) = 0u;
  *(v28 + 40) = 0;
  *(v28 + 48) = 1;
  type metadata accessor for ActionFactory();
  *(v28 + 56) = 0u;
  *(v28 + 72) = 0u;
  *(v28 + 88) = 0u;
  inited = swift_initStackObject();
  sub_1CA19B4E8();
  if (sub_1CA19B498())
  {
    goto LABEL_4;
  }

  v122 = inited;
  v120 = v11;
  v119 = v24;
  v126 = a1;
  v30 = v127;
  sub_1CA159EA4(v19, v144, v127);
  v31 = v129;
  if (__swift_getEnumTagSinglePayload(v30, 1, v129) == 1)
  {
    sub_1CA11FF84(v30, &qword_1EC433DA0, &unk_1CA1A5040);
    a1 = v126;
    v24 = v119;
    v11 = v120;
LABEL_4:
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_27();
    v34 = sub_1CA15A67C(v32, v33, MEMORY[0x1E69AB6B0]);
    OUTLINED_FUNCTION_11_10(v34);
    strcpy(v35, "actionMetrics");
    *(v35 + 7) = -4864;
    *(v35 + 2) = v24;
    OUTLINED_FUNCTION_7_6();
    (*(v36 + 104))();
    swift_willThrow();

    v37 = *(v11 + 8);
    v38 = a1;
    v39 = v132;
    v37(v38, v132);
    v37(v19, v39);
    v40 = 0;
    goto LABEL_5;
  }

  v44 = v120 + 8;
  v45 = *(v120 + 8);
  v45(v19, v132);
  v46 = *(v128 + 32);
  v47 = v124;
  v46(v124, v30, v31);
  v48 = v45;
  v49 = v119;
  v46(v28 + *(v119 + 28), v47, v31);
  OUTLINED_FUNCTION_10_11();
  v50 = v125;
  sub_1CA19B4E8();
  if (sub_1CA19B498())
  {
    goto LABEL_11;
  }

  v46 = v48;
  v51 = v121;
  ActionFactory.action(deserializing:using:)(v133);
  if (v51)
  {

    v134 = 0;
    memset(v133, 0, sizeof(v133));
    sub_1CA11FF84(v133, &unk_1EC433730, qword_1CA1A0830);
    OUTLINED_FUNCTION_10_11();
LABEL_11:
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_27();
    v54 = sub_1CA15A67C(v52, v53, MEMORY[0x1E69AB6B0]);
    v55 = OUTLINED_FUNCTION_11_10(v54);
    *v56 = v46;
    v56[1] = 0xEA00000000006E6FLL;
    v56[2] = v49;
    OUTLINED_FUNCTION_7_6();
    (*(v57 + 104))();
    swift_willThrow();
    v58 = v50;
    v59 = v132;
    v46 = v48;
    v48(v58, v132);

    v137 = 0;
    v135 = 0u;
    v136 = 0u;
    v60 = v59;
    goto LABEL_12;
  }

  v60 = v132;
  (v46)(v50, v132);
  sub_1CA0EBE94(v133, &v135);
LABEL_12:
  sub_1CA15A16C(&v135, v28 + 64);
  v61 = sub_1CA0FC3A8(0x65707954776F6C66, 0xE800000000000000, v49);
  v127 = v44;
  LODWORD(v121) = v61;
  *v28 = v61;
  sub_1CA19B4E8();
  v62 = sub_1CA19B498();
  v113 = v46;
  if (v62)
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_27();
    v67 = sub_1CA15A67C(v65, v66, MEMORY[0x1E69AB6B0]);
    v68 = OUTLINED_FUNCTION_8_2(v67);
    *v69 = 0x6974704F776F6C66;
    v69[1] = 0xEB00000000736E6FLL;
    v69[2] = v49;
    OUTLINED_FUNCTION_7_6();
    (*(v70 + 104))();
    swift_willThrow();
    v71 = OUTLINED_FUNCTION_6_13();
    (v46)(v71);

    v125 = 0;
    v97 = 0;
    v98 = 0;
    v104 = 0;
    v100 = 0;
    v103 = 0;
    v105 = 1;
  }

  else
  {
    v63 = v115;
    (*(v120 + 16))(v115, v123, v60);
    v64 = v116;
    (*(v130 + 16))(v116, v144, v131);
    sub_1CA158C98(v63, v64, &v138);
    v97 = *(&v138 + 1);
    v125 = v138;
    v98 = v139;
    v124 = v140;
    v100 = v141;
    v99 = v142;
    v101 = v143;
    v102 = OUTLINED_FUNCTION_6_13();
    (v46)(v102);
    v103 = v101;
    v104 = v124;
    v105 = v99;
  }

  v73 = *(v28 + 8);
  v72 = *(v28 + 16);
  v74 = *(v28 + 32);
  v123 = *(v28 + 24);
  v116 = v74;
  v75 = *(v28 + 48);
  v115 = *(v28 + 40);
  v112 = v75;
  v111 = *(v28 + 56);
  v76 = v125;
  *(v28 + 8) = v125;
  *(v28 + 16) = v97;
  *(v28 + 24) = v98;
  *(v28 + 32) = v104;
  *(v28 + 40) = v100;
  *(v28 + 48) = v105;
  *(v28 + 56) = v103;
  v77 = v104;
  v124 = v105;
  sub_1CA15A1DC(v76, v97, v98, v104, v100, v105, v103);
  sub_1CA15A124(v73, v72, v123, v116, v115, v112);
  v78 = v118;
  if (v121 <= 3u)
  {
    v79 = OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_13_6(v79, v80, v81, v77);
    v135 = 0u;
    v136 = 0u;
    sub_1CA19B4C8();
    OUTLINED_FUNCTION_7_12();
    v82 = v126;
    v83 = v132;
LABEL_21:
    v113(v82, v83);
LABEL_25:
    sub_1CA15A224(v28, v117);
    v109 = OUTLINED_FUNCTION_5_14();
    v110(v109);
    return sub_1CA15A288(v28);
  }

  v84 = v77;
  v85 = v132;
  v24 = v119;
  if (v124 != 1)
  {

    v86 = OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_13_6(v86, v87, v88, v84);
    if (v124)
    {

      v135 = 0u;
      v136 = 0u;
      sub_1CA19B4C8();
      OUTLINED_FUNCTION_7_12();
      v82 = v126;
      v83 = v85;
      goto LABEL_21;
    }
  }

  v89 = v85;
  v90 = v126;
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_12();
    v106 = v120;
    v107 = v114;
    (*(v120 + 16))(v114, v78, v89);
    v108 = v113;
    v113(v90, v89);
    v108(v78, v89);
    (*(v106 + 32))(v28 + *(v24 + 32), v107, v89);
    goto LABEL_25;
  }

  sub_1CA19BFA8();
  OUTLINED_FUNCTION_0_27();
  v93 = sub_1CA15A67C(v91, v92, MEMORY[0x1E69AB6B0]);
  OUTLINED_FUNCTION_8_2(v93);
  *v94 = 0x74616E6974736564;
  v94[1] = 0xEB000000006E6F69;
  v94[2] = v24;
  OUTLINED_FUNCTION_7_6();
  (*(v95 + 104))();
  swift_willThrow();
  OUTLINED_FUNCTION_7_12();
  v96 = v113;
  v113(v90, v85);
  v96(v78, v85);
  v40 = 1;
LABEL_5:
  v41 = OUTLINED_FUNCTION_5_14();
  v42(v41);
  sub_1CA15A124(*(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32), *(v28 + 40), *(v28 + 48));
  result = sub_1CA11FF84(v28 + 64, &unk_1EC433730, qword_1CA1A0830);
  if (v40)
  {
    return (*(v128 + 8))(v28 + *(v24 + 28), v129);
  }

  return result;
}

uint64_t sub_1CA159EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CA19B5C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1CA19B4D8();
  MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_1CA19B6B8();
  v13 = sub_1CA19B6E8();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
}

uint64_t type metadata accessor for FlowAction(uint64_t a1)
{
  result = qword_1EE03E9A8;
  if (!qword_1EE03E9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA15A124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

uint64_t sub_1CA15A16C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433730, qword_1CA1A0830);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1CA15A1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6 != 1)
  {
  }

  return result;
}

uint64_t sub_1CA15A224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA15A288(uint64_t a1)
{
  v2 = type metadata accessor for FlowAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for FlowAction.FlowType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CA15A3C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_1CA15A414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void sub_1CA15A4AC(uint64_t a1)
{
  sub_1CA15A570();
  if (v1 <= 0x3F)
  {
    sub_1CA15A5C0(319);
    if (v2 <= 0x3F)
    {
      sub_1CA19B6E8();
      if (v3 <= 0x3F)
      {
        sub_1CA19B4D8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CA15A570()
{
  if (!qword_1EE03BD10)
  {
    v0 = sub_1CA19C6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE03BD10);
    }
  }
}

void sub_1CA15A5C0(uint64_t a1)
{
  if (!qword_1EE03B4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC433A08, &qword_1CA1A7240);
    v1 = sub_1CA19C6F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE03B4A8);
    }
  }
}

uint64_t sub_1CA15A624(uint64_t a1)
{
  result = sub_1CA15A67C(&qword_1EE03E9C0, type metadata accessor for FlowAction, &unk_1CA1A4FB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA15A67C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CA15A710()
{
  result = qword_1EC433DA8;
  if (!qword_1EC433DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433DA8);
  }

  return result;
}

uint64_t sub_1CA15A764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433730, qword_1CA1A0830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_12()
{
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v5 - 328);

  return sub_1CA15A124(a1, a2, a3, a4, v4, v7);
}

uint64_t sub_1CA15A8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v63 = a1;
  v64 = v5;
  v6 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v66 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_1_0();
  v61 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NavigationControllerList();
  sub_1CA19B7D8();
  sub_1CA19BE18();
  v22 = aBlock[0];
  type metadata accessor for BridgedDestinationViewProvider();
  v65 = a3;
  sub_1CA19BE18();
  v23 = aBlock[0];
  v24 = NavigationControllerList.topNavigationController.getter();
  if (v24)
  {
    v52 = v24;
    v53 = v23;
    v54 = v22;
    v56 = v11;
    v58 = v8;
    v59 = v6;
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_1EE03B230);
    }

    v57 = v12;
    v25 = sub_1CA19AFF8();
    v60 = __swift_project_value_buffer(v25, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
    v26 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v26);
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v69 = type metadata accessor for FlowActionImplementation();
    aBlock[0] = v67;

    v27 = AMSLogKey();
    v55 = v16;
    if (v27)
    {
      v28 = v27;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(aBlock);
    sub_1CA19AF18();
    v69 = v17;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(aBlock);
    v31 = v63;
    sub_1CA15A224(v63, boxed_opaque_existential_2Tm);
    sub_1CA19AF38();
    sub_1CA132B60(aBlock, &qword_1EC433830, qword_1CA1A0A30);
    sub_1CA19AFC8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DB0, &unk_1CA1A7070);
    v51 = sub_1CA19BF08();
    sub_1CA0F2110(0, &qword_1EE03C230, 0x1E69E9610);
    v60 = sub_1CA19C598();
    v32 = v31;
    v33 = v62;
    sub_1CA15A224(v32, v62);
    v34 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v35 = (v20 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    sub_1CA15EA60(v33, v41 + v34);
    *(v41 + v35) = v54;
    *(v41 + v36) = v65;
    *(v41 + v37) = v67;
    v42 = v52;
    *(v41 + v38) = v52;
    v43 = v51;
    *(v41 + v39) = v51;
    *(v41 + v40) = v53;
    *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v64;
    v70 = sub_1CA15EAC4;
    v71 = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA0F4068;
    v69 = &block_descriptor_13;
    v44 = _Block_copy(aBlock);
    v29 = v43;

    v45 = v42;

    v46 = v55;
    sub_1CA19B2F8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CA15EBA8(&qword_1EE03C350, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70, &qword_1CA1A0D40);
    sub_1CA0F40C4();
    v47 = v56;
    v48 = v59;
    sub_1CA19C788();
    v49 = v60;
    MEMORY[0x1CCA99C20](0, v46, v47, v44);
    _Block_release(v44);

    (*(v58 + 8))(v47, v48);
    (*(v66 + 8))(v46, v57);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DB0, &unk_1CA1A7070);
    sub_1CA15EA0C();
    swift_allocError();
    v29 = sub_1CA19BE78();
  }

  return v29;
}

void sub_1CA15AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(*a1)
  {
    case 1:
      if (*(a1 + 48) == 1 || (*(a1 + 32) & 1) != 0)
      {
        goto LABEL_17;
      }

      v54 = *(a1 + 24);
      v55 = [a5 viewControllers];
      v56 = sub_1CA0F2110(0, &unk_1EE03C240, 0x1E69DD258);
      v57 = sub_1CA19C2B8();

      v58 = sub_1CA0F041C(v57);

      if (v58 < 0)
      {
        __break(1u);
      }

      else
      {
        if (v54 < 0 || v54 >= v58)
        {
LABEL_17:
          v28 = [a5 popViewControllerAnimated_];
          v73 = 0;
LABEL_18:

          v29 = [a5 transitionCoordinator];
          if (!v29)
          {
            goto LABEL_44;
          }

          v30 = v29;
          v78 = sub_1CA15F0DC;
          v79 = a6;
          aBlock = MEMORY[0x1E69E9820];
          v75 = 1107296256;
          v31 = &block_descriptor_13;
          goto LABEL_20;
        }

        v59 = [a5 viewControllers];
        v56 = sub_1CA19C2B8();

        sub_1CA17EBD4();
        if ((v56 & 0xC000000000000001) == 0)
        {
          v60 = *(v56 + 8 * v54 + 32);
LABEL_52:
          v73 = v60;

          v28 = [a5 popToViewController:v73 animated:1];
          goto LABEL_18;
        }
      }

      v60 = MEMORY[0x1CCA99FB0](v54, v56);
      goto LABEL_52;
    case 2:

      v22 = [a5 transitionCoordinator];
      if (!v22)
      {
        return;
      }

      v23 = v22;
      v78 = sub_1CA15F0DC;
      v79 = a6;
      aBlock = MEMORY[0x1E69E9820];
      v75 = 1107296256;
      v24 = &block_descriptor_4_0;
      goto LABEL_11;
    case 3:
      if (*(a1 + 48) == 1 || (*(a1 + 16) & 1) != 0 || (v45 = *(a1 + 8), v45 < 1))
      {
        v26 = sub_1CA19C0E8();
        v27 = sub_1CA19C0E8();
        v73 = AMSError();

        sub_1CA19BEA8();
LABEL_44:

        return;
      }

      v46 = [a5 viewControllers];
      sub_1CA0F2110(0, &unk_1EE03C240, 0x1E69DD258);
      v47 = sub_1CA19C2B8();

      v48 = sub_1CA0F041C(v47);

      if (v45 < v48)
      {
        v49 = v48 + ~v45;
        v50 = [a5 viewControllers];
        v51 = sub_1CA19C2B8();

        sub_1CA17EBD4();
        if ((v51 & 0xC000000000000001) != 0)
        {
          v52 = MEMORY[0x1CCA99FB0](v49, v51);
        }

        else
        {
          v52 = *(v51 + 8 * v49 + 32);
        }

        v73 = v52;

        v53 = [a5 transitionCoordinator];
        if (v53)
        {
          v30 = v53;
          v78 = sub_1CA15F0DC;
          v79 = a6;
          aBlock = MEMORY[0x1E69E9820];
          v75 = 1107296256;
          v31 = &block_descriptor_10;
LABEL_20:
          v76 = sub_1CA15C08C;
          v77 = v31;
          v25 = _Block_copy(&aBlock);

          [v30 animateAlongsideTransition:0 completion:v25];

LABEL_21:
          _Block_release(v25);
          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_44;
      }

      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v68 = sub_1CA19AFF8();
      __swift_project_value_buffer(v68, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
      v77 = type metadata accessor for FlowActionImplementation();
      aBlock = a4;

      v69 = AMSLogKey();
      if (v69)
      {
        v70 = v69;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&aBlock);
      sub_1CA19AF18();
      sub_1CA19AFC8();

      v71 = [a5 transitionCoordinator];
      if (v71)
      {
        v23 = v71;
        v78 = sub_1CA15F0DC;
        v79 = a6;
        aBlock = MEMORY[0x1E69E9820];
        v75 = 1107296256;
        v24 = &block_descriptor_7;
LABEL_11:
        v76 = sub_1CA15C08C;
        v77 = v24;
        v25 = _Block_copy(&aBlock);

        [v23 animateAlongsideTransition:0 completion:v25];
        goto LABEL_21;
      }

      return;
    case 4:
      sub_1CA1355D8();
      sub_1CA19BE08();
      v19 = sub_1CA15D6D8(a1, a7, a4, aBlock);
      v20 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
      if (*(a1 + 48) == 1)
      {
        v21 = 0;
      }

      else if ((*(a1 + 32) & 0xFF00) == 0x200)
      {
        v21 = 0;
      }

      else
      {
        v21 = BYTE1(*(a1 + 32)) & 1;
      }

      v37 = v19;
      v38 = a5;
      v39 = v20;

      sub_1CA15C424(v21, v37, a8, a4, v37, v38, v39, a2, a6);

      return;
    case 5:
      sub_1CA1355D8();
      sub_1CA19BE08();
      v32 = sub_1CA15D6D8(a1, a7, a4, aBlock);
      if (*(a1 + 48) == 1)
      {
        goto LABEL_23;
      }

      v72 = *(a1 + 16);
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v40 = sub_1CA19AFF8();
      __swift_project_value_buffer(v40, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
      v77 = type metadata accessor for FlowActionImplementation();
      aBlock = a4;

      v41 = AMSLogKey();
      if (v41)
      {
        v42 = v41;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&aBlock);
      sub_1CA19AF18();
      sub_1CA19AF98();

      v66 = [v32 navigationItem];
      [v66 setHidesBackButton_];

      if (*(a1 + 48) == 1)
      {
        LOBYTE(v33) = 0;
      }

      else if ((*(a1 + 32) & 0xFF00) == 0x200)
      {
LABEL_23:
        LOBYTE(v33) = 0;
      }

      else
      {
        v33 = (*(a1 + 32) >> 8) & 1;
      }

      v67 = a5;
      v44 = v32;
      sub_1CA15CBB8(v33, v44, a8, a4, v44, v67, a6);
LABEL_64:

      return;
    case 6:
      sub_1CA1355D8();
      sub_1CA19BE08();
      v34 = sub_1CA15D6D8(a1, a7, a4, aBlock);
      v35 = [a5 navigationItem];
      [v35 setHidesBackButton_];

      if (*(a1 + 48) == 1)
      {
        v36 = 0;
      }

      else if ((*(a1 + 32) & 0xFF00) == 0x200)
      {
        v36 = 0;
      }

      else
      {
        v36 = BYTE1(*(a1 + 32)) & 1;
      }

      v43 = a5;
      v44 = v34;
      sub_1CA15D150(v36, v44, a8, v43, a4, v44, a6);
      goto LABEL_64;
    default:
      NavigationControllerList.count.getter();
      if (v15 != 1)
      {
        goto LABEL_54;
      }

      type metadata accessor for DelegateController();
      sub_1CA19B7D8();
      sub_1CA19BE18();
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v16 = sub_1CA19AFF8();
      __swift_project_value_buffer(v16, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
      v77 = type metadata accessor for FlowActionImplementation();
      aBlock = a4;

      v17 = AMSLogKey();
      if (v17)
      {
        v18 = v17;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&aBlock);
      v77 = MEMORY[0x1E69E6158];
      aBlock = 0xD000000000000016;
      v75 = 0x80000001CA1AD6E0;
      sub_1CA19AF38();
      sub_1CA132B60(&aBlock, &qword_1EC433830, qword_1CA1A0A30);
      sub_1CA19AFC8();

      v61 = DelegateController.shouldDismiss()();

      if (v61)
      {
LABEL_54:
        if (qword_1EE03B230 != -1)
        {
          swift_once();
        }

        v62 = sub_1CA19AFF8();
        __swift_project_value_buffer(v62, qword_1EE040B90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960, &qword_1CA1A0B60);
        sub_1CA19AF88();
        *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
        v77 = type metadata accessor for FlowActionImplementation();
        aBlock = a4;

        v63 = AMSLogKey();
        if (v63)
        {
          v64 = v63;
          sub_1CA19C118();
        }

        sub_1CA19AF58();

        __swift_destroy_boxed_opaque_existential_2(&aBlock);
        v77 = MEMORY[0x1E69E6158];
        aBlock = 0xD000000000000026;
        v75 = 0x80000001CA1AD6B0;
        sub_1CA19AF38();
        sub_1CA132B60(&aBlock, &qword_1EC433830, qword_1CA1A0A30);
        sub_1CA19AFC8();

        v78 = sub_1CA15ECEC;
        v79 = a6;
        aBlock = MEMORY[0x1E69E9820];
        v75 = 1107296256;
        v76 = sub_1CA0F4068;
        v77 = &block_descriptor_16;
        v65 = _Block_copy(&aBlock);

        [a5 dismissViewControllerAnimated:1 completion:v65];
        _Block_release(v65);
      }

      return;
  }
}