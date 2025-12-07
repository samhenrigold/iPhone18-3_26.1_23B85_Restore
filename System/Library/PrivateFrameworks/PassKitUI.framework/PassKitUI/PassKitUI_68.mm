double sub_1BD728F64@<D0>(void *a1@<X8>)
{
  sub_1BD7273EC(a1);
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD515E0, &qword_1BE0F3248) + 36);
  result = 16.0;
  *v2 = xmmword_1BE0F30A0;
  *(v2 + 1) = xmmword_1BE0F0E90;
  v2[32] = 0;
  return result;
}

uint64_t sub_1BD728FC0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v11 = a1[1];
  v12 = v4;
  v10 = a1[2];
  v5 = *(a1 + 48);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38880, &qword_1BE0B71D0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for FinanceKitTransactionCell(0);
  v7 = a1[1];
  *(a2 + v6[5]) = *a1;
  *(a2 + v6[6]) = v7;
  *(a2 + v6[7]) = a1[2];
  *(a2 + v6[8]) = v5;
  sub_1BD206260(&v12, v9);
  sub_1BD0DE19C(&v11, v9, &qword_1EBD3A5C8, &qword_1BE0BAA50);
  return sub_1BD206260(&v10, v9);
}

double sub_1BD7290A0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for FinanceKitTransactionCell(0);
  sub_1BD729208();
  sub_1BE048964();
  sub_1BE051704();
  v2 = sub_1BE051464();
  KeyPath = swift_getKeyPath();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD515A0, &qword_1BE0F3190) + 36));
  *v4 = KeyPath;
  v4[1] = v2;
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD515A8, &qword_1BE0F3198) + 36);
  result = 16.0;
  *v5 = xmmword_1BE0F30A0;
  *(v5 + 16) = xmmword_1BE0F0E90;
  *(v5 + 32) = 0;
  return result;
}

uint64_t type metadata accessor for FinanceKitTransactionCell(uint64_t a1)
{
  result = qword_1EBD515B0;
  if (!qword_1EBD515B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD729208()
{
  result = qword_1EBD51598;
  if (!qword_1EBD51598)
  {
    type metadata accessor for FinanceKitTransactionCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51598);
  }

  return result;
}

void sub_1BD729288(uint64_t a1)
{
  sub_1BD25EFF4(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BD729324()
{
  result = qword_1EBD515C0;
  if (!qword_1EBD515C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD515A8, &qword_1BE0F3198);
    sub_1BD7293DC();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD515C0);
  }

  return result;
}

unint64_t sub_1BD7293DC()
{
  result = qword_1EBD515C8;
  if (!qword_1EBD515C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD515A0, &qword_1BE0F3190);
    sub_1BD0DE4F4(&qword_1EBD515D0, &qword_1EBD515D8, &qword_1BE0F31F0, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD515C8);
  }

  return result;
}

unint64_t sub_1BD7294DC()
{
  result = qword_1EBD51608;
  if (!qword_1EBD51608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD515F8, &qword_1BE0F3260);
    sub_1BD0DE4F4(&qword_1EBD51610, &qword_1EBD51618, &qword_1BE0F3270, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51608);
  }

  return result;
}

unint64_t sub_1BD7295C0()
{
  result = qword_1EBD51688;
  if (!qword_1EBD51688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51680, &qword_1BE0F3370);
    sub_1BD166FEC();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51688);
  }

  return result;
}

unint64_t sub_1BD729678()
{
  result = qword_1EBD516C8;
  if (!qword_1EBD516C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD515E0, &qword_1BE0F3248);
    sub_1BD729730();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD516C8);
  }

  return result;
}

unint64_t sub_1BD729730()
{
  result = qword_1EBD516D0;
  if (!qword_1EBD516D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD516D8, &qword_1BE0F33E0);
    sub_1BD7297B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD516D0);
  }

  return result;
}

unint64_t sub_1BD7297B4()
{
  result = qword_1EBD516E0;
  if (!qword_1EBD516E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD516E8, qword_1BE0F33E8);
    sub_1BD7294DC();
    sub_1BD0DE4F4(&qword_1EBD51620, &qword_1EBD515E8, &qword_1BE0F3250, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD516E0);
  }

  return result;
}

void sub_1BD72986C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BE04B8D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B944();
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v72 - v13;
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, sel_loadView, v12);
  v15 = [v1 explanationView];
  if (!v15)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v17 systemBackgroundColor];
  [v16 setTopBackgroundColor_];

  [v16 setShowPrivacyView_];
  [v1 setShowDoneButton_];
  v79 = v1;
  [v1 setShowCancelButton_];
  v19 = [objc_opt_self() systemFontOfSize_];
  v20 = [objc_opt_self() configurationWithFont_];

  v21 = v20;
  v22 = sub_1BE052404();
  v23 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  v74 = v21;
  v80 = v3;
  if (v23 && (v24 = [v17 systemBlueColor], v25 = objc_msgSend(v23, sel_imageWithTintColor_, v24), v23, v24, v25))
  {
    v26 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v27 = v25;
    v28 = [v26 initWithImage_];
    [v16 setHeroView_];

    [v16 setTopLogoPadding_];
    v73 = v27;
  }

  else
  {
    v73 = 0;
  }

  v29 = *(v9 + 104);
  v78 = *MEMORY[0x1E69B80D8];
  v77 = v29;
  v29(v14);
  v30 = PKPassKitBundle();
  if (!v30)
  {
    goto LABEL_22;
  }

  v31 = v30;
  v32 = v8;
  sub_1BE04B6F4();
  v34 = v33;

  v35 = *(v9 + 8);
  v75 = v9 + 8;
  v76 = v32;
  v35(v14, v32);
  v36 = sub_1BE052404();
  v34, v37, v38, v39, v40, v41, v42, v43;
  [v16 setTitleText_];

  v44 = v81;
  sub_1BE04BB94();
  v45 = v84;
  sub_1BE04B924();
  (*(v82 + 8))(v44, v83);
  v46 = (*(v4 + 88))(v45, v80);
  if (v46 == *MEMORY[0x1E69B7F78])
  {
    v47 = "IFICATION_NOTICE_BODY_WATCH";
    v48 = v85;
    goto LABEL_17;
  }

  v48 = v85;
  if (v46 == *MEMORY[0x1E69B7F80])
  {
    v47 = "IFICATION_NOTICE_BODY_PAD";
    goto LABEL_17;
  }

  if (v46 == *MEMORY[0x1E69B7F70])
  {
    v47 = "IFICATION_NOTICE_BODY_MAC";
    goto LABEL_17;
  }

  if (v46 == *MEMORY[0x1E69B7F68])
  {
    v47 = "IFICATION_NOTICE_BODY_VISION";
    goto LABEL_17;
  }

  if (v46 == *MEMORY[0x1E69B7F88])
  {
    v47 = "onNoticeViewController.swift";
LABEL_17:
    v49 = v76;
    v77(v48, v78, v76);
    v50 = PKPassKitBundle();
    if (v50)
    {
      v51 = v50;
      sub_1BE04B6F4();
      v53 = v52;
      (v47 | 0x8000000000000000), v52, v54, v55, v56, v57, v58, v59;

      v35(v48, v49);
      v60 = sub_1BE052404();
      v53, v61, v62, v63, v64, v65, v66, v67;
      [v16 setBodyText_];

      v68 = [v16 dockView];
      if (v68)
      {
        v69 = v68;
        v70 = [v68 footerView];
        if (v70)
        {
          v71 = v70;
          [v70 setSetUpLaterButton_];

          return;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_26:
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD72A1A0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v1, &off_1F3BB6830, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD72A248(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v3[16] = *(v5 + 64);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD72A358, v2, 0);
}

uint64_t sub_1BD72A358()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_1BD72B040(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v4 = MEMORY[0x1BFB3FC10](v1, v3);
  v5 = OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_cache;
  v0[19] = v4;
  v0[20] = v5;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1BD149084(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v0[21] = v9;
    sub_1BE048964();
    v10 = swift_task_alloc();
    v0[22] = v10;
    v11 = sub_1BE049814();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    *v10 = v0;
    v10[1] = sub_1BD72A6C4;
    v13 = v0[11];
    v14 = MEMORY[0x1E69E7288];
    v15 = v9;
    v16 = v11;
  }

  else
  {
    v18 = v0[17];
    v17 = v0[18];
    v19 = v0[15];
    v21 = v0[12];
    v20 = v0[13];
    v22 = sub_1BE0528D4();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    sub_1BD36E78C(v21, v18);
    v23 = sub_1BD72B040(&qword_1EBD51728, type metadata accessor for FinanceKitSpendingSummaryFetcher, &unk_1BE0F34B8);
    v24 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v25 = swift_allocObject();
    v25[2] = v20;
    v25[3] = v23;
    v25[4] = v20;
    sub_1BD36E854(v18, v25 + v24);
    swift_retain_n();
    v26 = sub_1BDA548A4(0, 0, v17, &unk_1BE0F34F0, v25);
    v0[24] = v26;
    swift_beginAccess();
    sub_1BE048964();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    sub_1BD1DBDD4(v26, v4, isUniquelyReferenced_nonNull_native);
    *(v2 + v5) = v31;
    swift_endAccess();
    v28 = swift_task_alloc();
    v0[25] = v28;
    v29 = sub_1BE049814();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    *v28 = v0;
    v28[1] = sub_1BD72A868;
    v13 = v0[11];
    v14 = MEMORY[0x1E69E7288];
    v15 = v26;
    v16 = v29;
  }

  return MEMORY[0x1EEE6DA10](v13, v15, v16, v12, v14);
}

uint64_t sub_1BD72A6C4()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1BD72AA0C;
  }

  else
  {
    v4 = sub_1BD72A7F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD72A7F0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 168), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD72A868()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1BD72AA8C;
  }

  else
  {
    v4 = sub_1BD72A994;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BD72A994(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 192), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD72AA0C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 168), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD72AA8C()
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = sub_1BD6B1EE0(v1);
  swift_endAccess();
  v2, v3, v4, v5, v6, v7, v8, v9;
  swift_willThrow();
  *(v0 + 192), v10, v11, v12, v13, v14, v15, v16;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1BD72AB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BD72AB7C, a4, 0);
}

uint64_t sub_1BD72AB7C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_accountID;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1BD72AC3C;
  v4 = v0[4];
  v5 = v0[2];

  return MEMORY[0x1EEDC14A8](v5, v1 + v2, v4);
}

uint64_t sub_1BD72AC3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1BD72AD30()
{
  v1 = OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_cache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  while (v5)
  {
    v15 = v14;
LABEL_9:
    v16 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v17 = *(*(v2 + 56) + ((v15 << 9) | (8 * v16)));
    sub_1BE049814();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
    sub_1BE052944();
    v17, v18, v19, v20, v21, v22, v23, v24;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v6)
    {
      v2, v7, v8, v9, v10, v11, v12, v13;
      v2, v25, v26, v27, v28, v29, v30, v31;
      v32 = *(v0 + v1);
      *(v0 + v1) = MEMORY[0x1E69E7CC8];
      v32, v33, v34, v35, v36, v37, v38, v39;
      return;
    }

    v5 = *(v2 + 64 + 8 * v15);
    ++v14;
    if (v5)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1BD72AE9C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_accountID;
  v2 = sub_1BE04AFE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  *(v0 + OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_store), v3, v4, v5, v6, v7, v8, v9;
  *(v0 + OBJC_IVAR____TtC9PassKitUI32FinanceKitSpendingSummaryFetcher_cache), v10, v11, v12, v13, v14, v15, v16;
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for FinanceKitSpendingSummaryFetcher(uint64_t a1)
{
  result = qword_1EBD51718;
  if (!qword_1EBD51718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD72AF88(uint64_t a1)
{
  result = sub_1BE04AFE4();
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

uint64_t sub_1BD72B040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD72B088(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD72AB58(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1BD72B1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE04F504();
  sub_1BD72B2F4(a1, a2, a4, &v24);
  v8 = v26;
  LOBYTE(a2) = BYTE2(v26);
  v20 = v25;
  v21 = v24;
  LOBYTE(v24) = BYTE2(v26);
  v9 = sub_1BE051234();
  v22[0] = 1;
  *&v22[24] = v20;
  *&v22[8] = v21;
  *&v22[40] = v8;
  v22[42] = a2;
  *&v23 = swift_getKeyPath();
  *(&v23 + 1) = v9;
  sub_1BE052434();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51730, &qword_1BE0F35D0);
  sub_1BD72B5A4();
  sub_1BE050DE4();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v26 = *&v22[16];
  v27 = *&v22[32];
  v28 = v23;
  v24 = v7;
  v25 = *v22;
  return sub_1BD72B688(&v24);
}

double sub_1BD72B2F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1BE04F614();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (a4)
  {
    sub_1BE048C84();
    sub_1BE04F604();
    sub_1BE04F5F4();
    v10 = sub_1BE051574();
    sub_1BE04F5D4();
    v10, v11, v12, v13, v14, v15, v16, v17;
    sub_1BE04F5F4();
    sub_1BE04F5E4();
    sub_1BE04F5F4();
    sub_1BE04F634();
    v21 = sub_1BE050694();
  }

  else
  {
    *&v46 = a1;
    *(&v46 + 1) = a2;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v21 = sub_1BE0506C4();
  }

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = sub_1BE0502A4();
  sub_1BE0505F4();
  v25, v26, v27, v28, v29, v30, v31, v32;
  sub_1BD0DDF10(v21, v22, (v23 & 1), v33, v34, v35, v36, v37);
  v24, v38, v39, v40, v41, v42, v43, v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48340, &unk_1BE0DBE70);
  sub_1BD4E2C64();
  sub_1BE04F9A4();
  result = *&v46;
  *a5 = v46;
  *(a5 + 16) = v47;
  *(a5 + 32) = v48;
  *(a5 + 34) = v49;
  return result;
}

unint64_t sub_1BD72B5A4()
{
  result = qword_1EBD51738;
  if (!qword_1EBD51738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51730, &qword_1BE0F35D0);
    sub_1BD0DE4F4(&qword_1EBD51740, &qword_1EBD51748, &qword_1BE0F35D8, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51738);
  }

  return result;
}

uint64_t sub_1BD72B688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51730, &qword_1BE0F35D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD72B6F0()
{
  result = qword_1EBD51750;
  if (!qword_1EBD51750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51758, &unk_1BE0F35E0);
    sub_1BD72B5A4();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51750);
  }

  return result;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_1BD72B7C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD72B810(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
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
      *(result + 232) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD72B8B4@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51760, &qword_1BE0F3710);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51768, &unk_1BE0F3718);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-v11];
  sub_1BD72BC10(v13);
  v14 = *(v1 + 184);
  *&v27[160] = *(v1 + 168);
  *&v27[176] = v14;
  v15 = *(v1 + 216);
  *&v27[192] = *(v1 + 200);
  *&v27[208] = v15;
  v16 = *(v1 + 120);
  *&v27[96] = *(v1 + 104);
  *&v27[112] = v16;
  v17 = *(v1 + 152);
  *&v27[128] = *(v1 + 136);
  *&v27[144] = v17;
  v18 = *(v1 + 56);
  *&v27[32] = *(v1 + 40);
  *&v27[48] = v18;
  v19 = *(v1 + 88);
  *&v27[64] = *(v1 + 72);
  *&v27[80] = v19;
  v20 = *(v1 + 24);
  *v27 = *(v1 + 8);
  *&v27[16] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18, &unk_1BE0DE6B0);
  MEMORY[0x1BFB3E970](v26, v21);
  v29[10] = *&v26[160];
  v29[11] = *&v26[176];
  v30 = *&v26[192];
  v29[6] = *&v26[96];
  v29[7] = *&v26[112];
  v29[9] = *&v26[144];
  v29[8] = *&v26[128];
  v29[2] = *&v26[32];
  v29[3] = *&v26[48];
  v29[5] = *&v26[80];
  v29[4] = *&v26[64];
  v29[1] = *&v26[16];
  v29[0] = *v26;
  sub_1BD4FBC18(v29);
  if (BYTE2(v30) == 1)
  {
    sub_1BD72C688(v6);
    sub_1BD72E360(v6, v12);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  (*(v4 + 56))(v12, v22, 1, v3);
  memcpy(v25, v28, sizeof(v25));
  sub_1BD0DE19C(v12, v9, &qword_1EBD51768, &unk_1BE0F3718);
  memcpy(v26, v25, sizeof(v26));
  memcpy(a1, v25, 0x1E1uLL);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51770, &qword_1BE0F3728);
  sub_1BD0DE19C(v9, a1 + *(v23 + 48), &qword_1EBD51768, &unk_1BE0F3718);
  sub_1BD0DE19C(v26, v27, &qword_1EBD51778, &unk_1BE0F3730);
  sub_1BD0DE53C(v12, &qword_1EBD51768, &unk_1BE0F3718);
  sub_1BD0DE53C(v9, &qword_1EBD51768, &unk_1BE0F3718);
  memcpy(v27, v25, sizeof(v27));
  return sub_1BD0DE53C(v27, &qword_1EBD51778, &unk_1BE0F3730);
}

void *sub_1BD72BC10(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = *(v1 + 184);
  v122[10] = *(v1 + 168);
  v122[11] = v4;
  v5 = *(v1 + 216);
  v122[12] = *(v1 + 200);
  v122[13] = v5;
  v6 = *(v1 + 120);
  v122[6] = *(v1 + 104);
  v122[7] = v6;
  v7 = *(v1 + 152);
  v122[8] = *(v1 + 136);
  v122[9] = v7;
  v8 = *(v1 + 56);
  v122[2] = *(v1 + 40);
  v122[3] = v8;
  v9 = *(v1 + 88);
  v122[4] = *(v1 + 72);
  v122[5] = v9;
  v10 = *(v1 + 24);
  v122[0] = *(v1 + 8);
  v122[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18, &unk_1BE0DE6B0);
  MEMORY[0x1BFB3E970](__dst, v11);
  v123[10] = *&__dst[160];
  v123[11] = *&__dst[176];
  v124 = *&__dst[192];
  v123[6] = *&__dst[96];
  v123[7] = *&__dst[112];
  v123[9] = *&__dst[144];
  v123[8] = *&__dst[128];
  v123[2] = *&__dst[32];
  v123[3] = *&__dst[48];
  v123[5] = *&__dst[80];
  v123[4] = *&__dst[64];
  v123[1] = *&__dst[16];
  v123[0] = *__dst;
  sub_1BD4FBC18(v123);
  if (*(&v124 + 1) == 1)
  {
    sub_1BD72CAC4(sub_1BD72D060, sub_1BD72D568, &v31);
    sub_1BD72CAC4(sub_1BD72D9A8, sub_1BD72DEB4, &v46);
    v28 = v43;
    v29 = v44;
    v30 = v45;
    v24 = v39;
    v25 = v40;
    v27 = v42;
    v26 = v41;
    v20 = v35;
    v21 = v36;
    v23 = v38;
    v22 = v37;
    v16 = v31;
    v17 = v32;
    v19 = v34;
    v18 = v33;
    v103 = v58;
    v104 = v59;
    v105 = v60;
    v99 = v54;
    v100 = v55;
    v102 = v57;
    v101 = v56;
    v95 = v50;
    v96 = v51;
    v98 = v53;
    v97 = v52;
    v91 = v46;
    v92 = v47;
    v94 = v49;
    v93 = v48;
    v73 = v43;
    v74 = v44;
    v75 = v45;
    v69 = v39;
    v70 = v40;
    v72 = v42;
    v71 = v41;
    v65 = v35;
    v66 = v36;
    v68 = v38;
    v67 = v37;
    v61 = v31;
    v62 = v32;
    v64 = v34;
    v63 = v33;
    v13[12] = v43;
    v13[13] = v44;
    v13[8] = v39;
    v13[9] = v40;
    v13[10] = v41;
    v13[11] = v42;
    v13[4] = v35;
    v13[5] = v36;
    v13[6] = v37;
    v13[7] = v38;
    v13[0] = v31;
    v13[1] = v32;
    v13[2] = v33;
    v13[3] = v34;
    v88 = v58;
    v89 = v59;
    v90 = v60;
    v84 = v54;
    v85 = v55;
    v87 = v57;
    v86 = v56;
    v80 = v50;
    v81 = v51;
    v83 = v53;
    v82 = v52;
    v76 = v46;
    v77 = v47;
    v79 = v49;
    v78 = v48;
    v13[26] = v57;
    v13[27] = v58;
    v13[28] = v59;
    v13[29] = v60;
    v13[22] = v53;
    v13[23] = v54;
    v13[24] = v55;
    v13[25] = v56;
    v13[18] = v49;
    v13[19] = v50;
    v13[20] = v51;
    v13[21] = v52;
    v13[14] = v45;
    v13[15] = v46;
    v13[16] = v47;
    v13[17] = v48;
    sub_1BD0DE19C(&v31, v122, &qword_1EBD51780, &qword_1BE0F3788);
    sub_1BD0DE19C(&v46, v122, &qword_1EBD51780, &qword_1BE0F3788);
    sub_1BD0DE19C(&v61, v122, &qword_1EBD51780, &qword_1BE0F3788);
    sub_1BD0DE19C(&v76, v122, &qword_1EBD51780, &qword_1BE0F3788);
    sub_1BD0DE53C(&v91, &qword_1EBD51780, &qword_1BE0F3788);
    v118 = v28;
    v119 = v29;
    v120 = v30;
    v114 = v24;
    v115 = v25;
    v117 = v27;
    v116 = v26;
    v110 = v20;
    v111 = v21;
    v113 = v23;
    v112 = v22;
    v106 = v16;
    v107 = v17;
    v109 = v19;
    v108 = v18;
    sub_1BD0DE53C(&v106, &qword_1EBD51780, &qword_1BE0F3788);
    memcpy(__dst, v13, 0x1E0uLL);
    sub_1BD72E3DC(__dst);
  }

  else
  {
    sub_1BD72CAC4(sub_1BD72D9A8, sub_1BD72DEB4, &v31);
    sub_1BD72CAC4(sub_1BD72D060, sub_1BD72D568, &v46);
    v28 = v43;
    v29 = v44;
    v30 = v45;
    v24 = v39;
    v25 = v40;
    v27 = v42;
    v26 = v41;
    v20 = v35;
    v21 = v36;
    v23 = v38;
    v22 = v37;
    v16 = v31;
    v17 = v32;
    v19 = v34;
    v18 = v33;
    v103 = v58;
    v104 = v59;
    v105 = v60;
    v99 = v54;
    v100 = v55;
    v102 = v57;
    v101 = v56;
    v95 = v50;
    v96 = v51;
    v98 = v53;
    v97 = v52;
    v91 = v46;
    v92 = v47;
    v94 = v49;
    v93 = v48;
    v73 = v43;
    v74 = v44;
    v75 = v45;
    v69 = v39;
    v70 = v40;
    v72 = v42;
    v71 = v41;
    v65 = v35;
    v66 = v36;
    v68 = v38;
    v67 = v37;
    v61 = v31;
    v62 = v32;
    v64 = v34;
    v63 = v33;
    __src[12] = v43;
    __src[13] = v44;
    __src[8] = v39;
    __src[9] = v40;
    __src[11] = v42;
    __src[10] = v41;
    __src[4] = v35;
    __src[5] = v36;
    __src[7] = v38;
    __src[6] = v37;
    __src[0] = v31;
    __src[1] = v32;
    __src[2] = v33;
    __src[3] = v34;
    v88 = v58;
    v89 = v59;
    v90 = v60;
    v84 = v54;
    v85 = v55;
    v87 = v57;
    v86 = v56;
    v80 = v50;
    v81 = v51;
    v83 = v53;
    v82 = v52;
    v76 = v46;
    v77 = v47;
    v79 = v49;
    v78 = v48;
    __src[26] = v57;
    __src[27] = v58;
    __src[28] = v59;
    __src[29] = v60;
    __src[22] = v53;
    __src[23] = v54;
    __src[24] = v55;
    __src[25] = v56;
    __src[18] = v49;
    __src[19] = v50;
    __src[20] = v51;
    __src[21] = v52;
    __src[14] = v45;
    __src[15] = v46;
    __src[16] = v47;
    __src[17] = v48;
    sub_1BD0DE19C(&v31, v122, &qword_1EBD51780, &qword_1BE0F3788);
    sub_1BD0DE19C(&v46, v122, &qword_1EBD51780, &qword_1BE0F3788);
    sub_1BD0DE19C(&v61, v122, &qword_1EBD51780, &qword_1BE0F3788);
    sub_1BD0DE19C(&v76, v122, &qword_1EBD51780, &qword_1BE0F3788);
    sub_1BD0DE53C(&v91, &qword_1EBD51780, &qword_1BE0F3788);
    v118 = v28;
    v119 = v29;
    v120 = v30;
    v114 = v24;
    v115 = v25;
    v117 = v27;
    v116 = v26;
    v110 = v20;
    v111 = v21;
    v113 = v23;
    v112 = v22;
    v106 = v16;
    v107 = v17;
    v109 = v19;
    v108 = v18;
    sub_1BD0DE53C(&v106, &qword_1EBD51780, &qword_1BE0F3788);
    memcpy(__dst, __src, 0x1E0uLL);
    sub_1BD72E3D0(__dst);
  }

  memcpy(v122, __dst, 0x1E1uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51788, &qword_1BE0F3790);
  sub_1BD0DE4F4(&qword_1EBD51790, &qword_1EBD51788, &qword_1BE0F3790, MEMORY[0x1E6981F48]);
  sub_1BE04F9A4();
  sub_1BD0DE53C(&v46, &qword_1EBD51780, &qword_1BE0F3788);
  sub_1BD0DE53C(&v31, &qword_1EBD51780, &qword_1BE0F3788);
  memcpy(v122, v14, 0x1E1uLL);
  return memcpy(v3, v122, 0x1E1uLL);
}

id sub_1BD72C688@<X0>(uint64_t a1@<X8>)
{
  v47[1] = a1;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590, &qword_1BE0CA980);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v47 - v9;
  (*(v3 + 104))(v5, *MEMORY[0x1E69B8068], v2, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v12 = result;
    v47[0] = sub_1BE04B6F4();
    v14 = v13;

    (*(v3 + 8))(v5, v2);
    v15 = *(v1 + 184);
    v70 = *(v1 + 168);
    v71 = v15;
    v16 = *(v1 + 216);
    v72 = *(v1 + 200);
    v73 = v16;
    v17 = *(v1 + 120);
    v66 = *(v1 + 104);
    v67 = v17;
    v18 = *(v1 + 152);
    v68 = *(v1 + 136);
    v69 = v18;
    v19 = *(v1 + 56);
    v62 = *(v1 + 40);
    v63 = v19;
    v20 = *(v1 + 88);
    v64 = *(v1 + 72);
    v65 = v20;
    v21 = *(v1 + 24);
    v60 = *(v1 + 8);
    v61 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18, &unk_1BE0DE6B0);
    sub_1BE051914();
    KeyPath = swift_getKeyPath();
    v70 = v74[10];
    v71 = v74[11];
    v72 = v74[12];
    v73 = v74[13];
    v66 = v74[6];
    v67 = v74[7];
    v68 = v74[8];
    v69 = v74[9];
    v62 = v74[2];
    v63 = v74[3];
    v64 = v74[4];
    v65 = v74[5];
    v60 = v74[0];
    v61 = v74[1];
    sub_1BE051904();
    KeyPath, v23, v24, v25, v26, v27, v28, v29;
    sub_1BD0DE53C(v74, &qword_1EBD48C18, &unk_1BE0DE6B0);
    v77 = v56;
    v78 = v57;
    v79 = v58;
    v80 = v59;
    v75 = v54;
    v76 = v55;
    v30 = swift_getKeyPath();
    v50 = v77;
    v51 = v78;
    v52 = v79;
    v53 = v80;
    v48 = v75;
    v49 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20, &qword_1BE0F3780);
    sub_1BE051904();
    v30, v31, v32, v33, v34, v35, v36, v37;
    sub_1BD0DE53C(&v75, &unk_1EBD48C20, &qword_1BE0F3780);
    v47[2] = v47[0];
    v47[3] = v14;
    sub_1BD0DDEBC();
    sub_1BE051E14();
    sub_1BE052434();
    v39 = v38;
    sub_1BD0DE4F4(&qword_1EBD415D8, &qword_1EBD41590, &qword_1BE0CA980, MEMORY[0x1E697D7E0]);
    sub_1BE050DE4();
    v39, v40, v41, v42, v43, v44, v45, v46;
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD72CAC4@<X0>(void (*a1)(__int128 *__return_ptr, uint64_t)@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(v3 + 184);
  v128 = *(v3 + 168);
  v129 = v7;
  v8 = *(v3 + 216);
  v130 = *(v3 + 200);
  v131 = v8;
  v9 = *(v3 + 120);
  v124 = *(v3 + 104);
  v125 = v9;
  v10 = *(v3 + 152);
  v126 = *(v3 + 136);
  v127 = v10;
  v11 = *(v3 + 56);
  v120 = *(v3 + 40);
  v121 = v11;
  v12 = *(v3 + 88);
  v122 = *(v3 + 72);
  v123 = v12;
  v13 = *(v3 + 24);
  v118 = *(v3 + 8);
  v119 = v13;
  v14 = *(v3 + 184);
  v114 = *(v3 + 168);
  v115 = v14;
  v15 = *(v3 + 216);
  v116 = *(v3 + 200);
  v117 = v15;
  v16 = *(v3 + 120);
  v110 = *(v3 + 104);
  v111 = v16;
  v17 = *(v3 + 152);
  v112 = *(v3 + 136);
  v113 = v17;
  v18 = *(v3 + 56);
  v106 = *(v3 + 40);
  v107 = v18;
  v19 = *(v3 + 88);
  v108 = *(v3 + 72);
  v109 = v19;
  v20 = *(v3 + 24);
  v104 = *(v3 + 8);
  v105 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18, &unk_1BE0DE6B0);
  MEMORY[0x1BFB3E970](&v91);
  v132[10] = v101;
  v132[11] = v102;
  v133 = v103;
  v132[6] = v97;
  v132[7] = v98;
  v132[9] = v100;
  v132[8] = v99;
  v132[2] = v93;
  v132[3] = v94;
  v132[5] = v96;
  v132[4] = v95;
  v132[1] = v92;
  v132[0] = v91;
  v22 = sub_1BD4FBC18(v132);
  if (v133 == 1)
  {
    a1(&v104, v22);
    v47 = *(&v104 + 1);
    v48 = v104;
    v45 = *(&v105 + 1);
    v46 = v105;
    v43 = v107;
    v44 = *(&v106 + 1);
    v54 = v108;
    v55 = v106;
    v52 = v109;
    v53 = *(&v108 + 1);
    v50 = v110;
    v51 = *(&v109 + 1);
    v49 = *(&v110 + 1);
    v41 = v111;
    v42 = *(&v107 + 1);
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v54 = 0;
    v55 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
  }

  v114 = v128;
  v115 = v129;
  v116 = v130;
  v117 = v131;
  v110 = v124;
  v111 = v125;
  v112 = v126;
  v113 = v127;
  v106 = v120;
  v107 = v121;
  v108 = v122;
  v109 = v123;
  v104 = v118;
  v105 = v119;
  MEMORY[0x1BFB3E970](&v78, v21);
  v101 = v88;
  v102 = v89;
  v103 = v90;
  v97 = v84;
  v98 = v85;
  v99 = v86;
  v100 = v87;
  v93 = v80;
  v94 = v81;
  v95 = v82;
  v96 = v83;
  v91 = v78;
  v92 = v79;
  v23 = sub_1BD4FBC18(&v91);
  if (BYTE1(v103) == 1)
  {
    a2(&v104, v23);
    v24 = *(&v104 + 1);
    v25 = v104;
    v27 = *(&v105 + 1);
    v26 = v105;
    v28 = *(&v106 + 1);
    v29 = v106;
    v30 = *(&v107 + 1);
    v31 = v107;
    v32 = *(&v108 + 1);
    v33 = v108;
    v34 = *(&v109 + 1);
    v35 = v109;
    v36 = *(&v110 + 1);
    v37 = v110;
    v38 = v111;
  }

  else
  {
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v26 = 0;
    v24 = 0;
    v25 = 0;
    v36 = 0;
    v38 = 0;
  }

  *&v70 = v25;
  *(&v70 + 1) = v24;
  *&v71 = v26;
  *(&v71 + 1) = v27;
  *&v72 = v29;
  *(&v72 + 1) = v28;
  *&v73 = v31;
  *(&v73 + 1) = v30;
  *&v74 = v33;
  *(&v74 + 1) = v32;
  *&v75 = v35;
  *(&v75 + 1) = v34;
  *&v76 = v37;
  *(&v76 + 1) = v36;
  *&v61[56] = v73;
  *&v61[40] = v72;
  *&v61[24] = v71;
  *&v61[104] = v76;
  *&v61[88] = v75;
  *&v61[72] = v74;
  *&v62 = v48;
  *(&v62 + 1) = v47;
  *&v63 = v46;
  *(&v63 + 1) = v45;
  *&v64 = v55;
  *(&v64 + 1) = v44;
  *&v65 = v43;
  *(&v65 + 1) = v42;
  *&v66 = v54;
  *(&v66 + 1) = v53;
  *&v67 = v52;
  *(&v67 + 1) = v51;
  *&v68 = v50;
  *(&v68 + 1) = v49;
  v56 = v64;
  v57 = v65;
  *v61 = v41;
  v59 = v67;
  v60 = v68;
  v58 = v66;
  *&v61[8] = v70;
  *&v61[120] = v38;
  v39 = v63;
  *a3 = v62;
  a3[1] = v39;
  a3[4] = v58;
  a3[5] = v59;
  a3[2] = v56;
  a3[3] = v57;
  a3[8] = *&v61[16];
  a3[9] = *&v61[32];
  a3[6] = v60;
  a3[7] = *v61;
  a3[13] = *&v61[96];
  a3[14] = *&v61[112];
  a3[11] = *&v61[64];
  a3[12] = *&v61[80];
  a3[10] = *&v61[48];
  *&v78 = v25;
  *(&v78 + 1) = v24;
  *&v79 = v26;
  *(&v79 + 1) = v27;
  *&v80 = v29;
  *(&v80 + 1) = v28;
  *&v81 = v31;
  *(&v81 + 1) = v30;
  *&v82 = v33;
  *(&v82 + 1) = v32;
  *&v83 = v35;
  *(&v83 + 1) = v34;
  *&v84 = v37;
  *(&v84 + 1) = v36;
  v77 = v38;
  *&v85 = v38;
  v69 = v41;
  sub_1BD0DE19C(&v62, &v104, &qword_1EBD51798, &qword_1BE0F3798);
  sub_1BD0DE19C(&v70, &v104, &qword_1EBD51798, &qword_1BE0F3798);
  sub_1BD0DE53C(&v78, &qword_1EBD51798, &qword_1BE0F3798);
  *&v104 = v48;
  *(&v104 + 1) = v47;
  *&v105 = v46;
  *(&v105 + 1) = v45;
  *&v106 = v55;
  *(&v106 + 1) = v44;
  *&v107 = v43;
  *(&v107 + 1) = v42;
  *&v108 = v54;
  *(&v108 + 1) = v53;
  *&v109 = v52;
  *(&v109 + 1) = v51;
  *&v110 = v50;
  *(&v110 + 1) = v49;
  *&v111 = v41;
  return sub_1BD0DE53C(&v104, &qword_1EBD51798, &qword_1BE0F3798);
}

id sub_1BD72D060@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8068], v4, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v121 = *v2;
    v11 = sub_1BE04B6F4();
    v68 = v12;
    v69 = v11;

    (*(v5 + 8))(v8, v4);
    v13 = *(v2 + 184);
    v106 = *(v2 + 168);
    v107 = v13;
    v14 = *(v2 + 216);
    v108 = *(v2 + 200);
    v109 = v14;
    v15 = *(v2 + 120);
    v102 = *(v2 + 104);
    v103 = v15;
    v16 = *(v2 + 152);
    v104 = *(v2 + 136);
    v105 = v16;
    v17 = *(v2 + 56);
    v98 = *(v2 + 40);
    v99 = v17;
    v18 = *(v2 + 88);
    v100 = *(v2 + 72);
    v101 = v18;
    v19 = *(v2 + 24);
    v96 = *(v2 + 8);
    v97 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18, &unk_1BE0DE6B0);
    sub_1BE051914();
    KeyPath = swift_getKeyPath();
    v106 = v110[10];
    v107 = v110[11];
    v108 = v110[12];
    v109 = v110[13];
    v102 = v110[6];
    v103 = v110[7];
    v104 = v110[8];
    v105 = v110[9];
    v98 = v110[2];
    v99 = v110[3];
    v100 = v110[4];
    v101 = v110[5];
    v96 = v110[0];
    v97 = v110[1];
    sub_1BE051904();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    sub_1BD0DE53C(v110, &qword_1EBD48C18, &unk_1BE0DE6B0);
    v113 = v70[2];
    v114 = v70[3];
    v115 = v70[4];
    v116 = v70[5];
    v111 = v70[0];
    v112 = v70[1];
    v29 = swift_getKeyPath();
    v92 = v113;
    v93 = v114;
    v94 = v115;
    v95 = v116;
    v90 = v111;
    v91 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20, &qword_1BE0F3780);
    sub_1BE051904();
    v29, v30, v31, v32, v33, v34, v35, v36;
    sub_1BD0DE53C(&v111, &unk_1EBD48C20, &qword_1BE0F3780);
    v37 = v86;
    v38 = v87;
    v39 = v88;
    v67 = v89;
    v40 = *(v2 + 184);
    v82 = *(v2 + 168);
    v83 = v40;
    v41 = *(v2 + 216);
    v84 = *(v2 + 200);
    v85 = v41;
    v42 = *(v2 + 120);
    v78 = *(v2 + 104);
    v79 = v42;
    v43 = *(v2 + 152);
    v80 = *(v2 + 136);
    v81 = v43;
    v44 = *(v2 + 56);
    v74 = *(v2 + 40);
    v75 = v44;
    v45 = *(v2 + 88);
    v76 = *(v2 + 72);
    v77 = v45;
    v46 = *(v2 + 24);
    v72 = *(v2 + 8);
    v73 = v46;
    MEMORY[0x1BFB3E970](v122, v20);
    v47 = sub_1BD4F79E0();
    sub_1BD4FBC18(v122);
    v48 = *MEMORY[0x1E69B9838];
    v71 = 0;
    v49 = v48;
    sub_1BE051694();
    LOBYTE(v29) = v72;
    v50 = *(&v72 + 1);
    v71 = 0;
    sub_1BE051694();
    v51 = v72;
    v52 = *(&v72 + 1);
    v53 = v121;
    v54 = *MEMORY[0x1E69DE4C8];
    *&v72 = v37;
    *(&v72 + 1) = v38;
    v55 = v67;
    v56 = v68;
    *&v73 = v39;
    *(&v73 + 1) = v67;
    LOBYTE(v74) = v121;
    *(&v74 + 1) = *v120;
    DWORD1(v74) = *&v120[3];
    v57 = v69;
    *(&v74 + 1) = v69;
    *&v75 = v68;
    BYTE8(v75) = v47;
    HIDWORD(v75) = *&v119[3];
    *(&v75 + 9) = *v119;
    *&v76 = v49;
    *(&v76 + 1) = v54;
    *&v77 = 2;
    BYTE8(v77) = v29;
    HIDWORD(v77) = *&v118[3];
    *(&v77 + 9) = *v118;
    *&v78 = v50;
    BYTE8(v78) = v51;
    HIDWORD(v78) = *&v117[3];
    v58 = *v117;
    *(&v78 + 9) = *v117;
    *&v79 = v52;
    v60 = v76;
    v59 = v77;
    v61 = v78;
    *(a1 + 112) = v52;
    *(a1 + 80) = v59;
    *(a1 + 96) = v61;
    v62 = v72;
    v63 = v73;
    v64 = v74;
    *(a1 + 48) = v75;
    *(a1 + 64) = v60;
    *(a1 + 16) = v63;
    *(a1 + 32) = v64;
    *a1 = v62;
    *&v96 = v37;
    *(&v96 + 1) = v38;
    *&v97 = v39;
    *(&v97 + 1) = v55;
    LOBYTE(v98) = v53;
    DWORD1(v98) = *&v120[3];
    *(&v98 + 1) = *v120;
    *(&v98 + 1) = v57;
    *&v99 = v56;
    BYTE8(v99) = v47;
    HIDWORD(v99) = *&v119[3];
    *(&v99 + 9) = *v119;
    *&v100 = v49;
    *(&v100 + 1) = v54;
    *&v101 = 2;
    BYTE8(v101) = v29;
    HIDWORD(v101) = *&v118[3];
    *(&v101 + 9) = *v118;
    *&v102 = v50;
    BYTE8(v102) = v51;
    HIDWORD(v102) = *&v117[3];
    *(&v102 + 9) = v58;
    *&v103 = v52;
    v65 = v54;
    sub_1BD5C75CC(&v72, v70);
    return sub_1BD5C7604(&v96);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD72D568@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8068], v4, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v110 = *v2;
    v11 = sub_1BE04B6F4();
    v57 = v12;
    v58 = v11;

    (*(v5 + 8))(v8, v4);
    v13 = *(v2 + 184);
    v99 = *(v2 + 168);
    v100 = v13;
    v14 = *(v2 + 216);
    v101 = *(v2 + 200);
    v102 = v14;
    v15 = *(v2 + 120);
    v95 = *(v2 + 104);
    v96 = v15;
    v16 = *(v2 + 152);
    v97 = *(v2 + 136);
    v98 = v16;
    v17 = *(v2 + 56);
    v91 = *(v2 + 40);
    v92 = v17;
    v18 = *(v2 + 88);
    v93 = *(v2 + 72);
    v94 = v18;
    v19 = *(v2 + 24);
    v89 = *(v2 + 8);
    v90 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18, &unk_1BE0DE6B0);
    sub_1BE051914();
    KeyPath = swift_getKeyPath();
    v99 = v103[10];
    v100 = v103[11];
    v101 = v103[12];
    v102 = v103[13];
    v95 = v103[6];
    v96 = v103[7];
    v97 = v103[8];
    v98 = v103[9];
    v91 = v103[2];
    v92 = v103[3];
    v93 = v103[4];
    v94 = v103[5];
    v89 = v103[0];
    v90 = v103[1];
    sub_1BE051904();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    sub_1BD0DE53C(v103, &qword_1EBD48C18, &unk_1BE0DE6B0);
    v106 = v85;
    v107 = v86;
    v108 = v87;
    v109 = v88;
    v104 = v83;
    v105 = v84;
    v29 = swift_getKeyPath();
    v79 = v106;
    v80 = v107;
    v81 = v108;
    v82 = v109;
    v77 = v104;
    v78 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20, &qword_1BE0F3780);
    sub_1BE051904();
    v29, v30, v31, v32, v33, v34, v35, v36;
    sub_1BD0DE53C(&v104, &unk_1EBD48C20, &qword_1BE0F3780);
    v56 = v74;
    v37 = v76;
    v55 = v75;
    v38 = *(v2 + 184);
    v70 = *(v2 + 168);
    v71 = v38;
    v39 = *(v2 + 216);
    v72 = *(v2 + 200);
    v73 = v39;
    v40 = *(v2 + 120);
    v66 = *(v2 + 104);
    v67 = v40;
    v41 = *(v2 + 152);
    v68 = *(v2 + 136);
    v69 = v41;
    v42 = *(v2 + 56);
    v62 = *(v2 + 40);
    v63 = v42;
    v43 = *(v2 + 88);
    v64 = *(v2 + 72);
    v65 = v43;
    v44 = *(v2 + 24);
    v60 = *(v2 + 8);
    v61 = v44;
    MEMORY[0x1BFB3E970](v111, v20);
    v45 = sub_1BD4F7BC8();
    sub_1BD4FBC18(v111);
    v46 = *MEMORY[0x1E69B9AA8];
    v59 = 0;
    v47 = v46;
    sub_1BE051694();
    LOBYTE(KeyPath) = v60;
    v48 = *(&v60 + 1);
    v59 = 0;
    result = sub_1BE051694();
    v49 = v60;
    v50 = *(&v60 + 1);
    v51 = v110;
    *a1 = v56;
    *(a1 + 16) = v55;
    *(a1 + 24) = v37;
    *(a1 + 32) = v51;
    *(a1 + 33) = v89;
    *(a1 + 36) = *(&v89 + 3);
    *(a1 + 40) = v58;
    *(a1 + 48) = v57;
    *(a1 + 56) = v45;
    *(a1 + 57) = v60;
    *(a1 + 60) = *(&v60 + 3);
    *(a1 + 64) = v47;
    *(a1 + 72) = xmmword_1BE0BBAF0;
    *(a1 + 88) = KeyPath;
    v52 = v83;
    *(a1 + 92) = *(&v83 + 3);
    *(a1 + 89) = v52;
    *(a1 + 96) = v48;
    *(a1 + 104) = v49;
    v53 = v77;
    *(a1 + 108) = *(&v77 + 3);
    *(a1 + 105) = v53;
    *(a1 + 112) = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD72D9A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8068], v4, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v121 = *v2;
    v11 = sub_1BE04B6F4();
    v68 = v12;
    v69 = v11;

    (*(v5 + 8))(v8, v4);
    v13 = *(v2 + 184);
    v106 = *(v2 + 168);
    v107 = v13;
    v14 = *(v2 + 216);
    v108 = *(v2 + 200);
    v109 = v14;
    v15 = *(v2 + 120);
    v102 = *(v2 + 104);
    v103 = v15;
    v16 = *(v2 + 152);
    v104 = *(v2 + 136);
    v105 = v16;
    v17 = *(v2 + 56);
    v98 = *(v2 + 40);
    v99 = v17;
    v18 = *(v2 + 88);
    v100 = *(v2 + 72);
    v101 = v18;
    v19 = *(v2 + 24);
    v96 = *(v2 + 8);
    v97 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18, &unk_1BE0DE6B0);
    sub_1BE051914();
    KeyPath = swift_getKeyPath();
    v106 = v110[10];
    v107 = v110[11];
    v108 = v110[12];
    v109 = v110[13];
    v102 = v110[6];
    v103 = v110[7];
    v104 = v110[8];
    v105 = v110[9];
    v98 = v110[2];
    v99 = v110[3];
    v100 = v110[4];
    v101 = v110[5];
    v96 = v110[0];
    v97 = v110[1];
    sub_1BE051904();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    sub_1BD0DE53C(v110, &qword_1EBD48C18, &unk_1BE0DE6B0);
    v113 = v70[2];
    v114 = v70[3];
    v115 = v70[4];
    v116 = v70[5];
    v111 = v70[0];
    v112 = v70[1];
    v29 = swift_getKeyPath();
    v92 = v113;
    v93 = v114;
    v94 = v115;
    v95 = v116;
    v90 = v111;
    v91 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20, &qword_1BE0F3780);
    sub_1BE051904();
    v29, v30, v31, v32, v33, v34, v35, v36;
    sub_1BD0DE53C(&v111, &unk_1EBD48C20, &qword_1BE0F3780);
    v37 = v86;
    v38 = v87;
    v39 = v88;
    v67 = v89;
    v40 = *(v2 + 184);
    v82 = *(v2 + 168);
    v83 = v40;
    v41 = *(v2 + 216);
    v84 = *(v2 + 200);
    v85 = v41;
    v42 = *(v2 + 120);
    v78 = *(v2 + 104);
    v79 = v42;
    v43 = *(v2 + 152);
    v80 = *(v2 + 136);
    v81 = v43;
    v44 = *(v2 + 56);
    v74 = *(v2 + 40);
    v75 = v44;
    v45 = *(v2 + 88);
    v76 = *(v2 + 72);
    v77 = v45;
    v46 = *(v2 + 24);
    v72 = *(v2 + 8);
    v73 = v46;
    MEMORY[0x1BFB3E970](v122, v20);
    v47 = sub_1BD4F7AD4();
    sub_1BD4FBC18(v122);
    v48 = *MEMORY[0x1E69B97C8];
    v71 = 0;
    v49 = v48;
    sub_1BE051694();
    LOBYTE(v29) = v72;
    v50 = *(&v72 + 1);
    v71 = 0;
    sub_1BE051694();
    v51 = v72;
    v52 = *(&v72 + 1);
    v53 = v121;
    v54 = *MEMORY[0x1E69DE4B0];
    *&v72 = v37;
    *(&v72 + 1) = v38;
    v55 = v67;
    v56 = v68;
    *&v73 = v39;
    *(&v73 + 1) = v67;
    LOBYTE(v74) = v121;
    *(&v74 + 1) = *v120;
    DWORD1(v74) = *&v120[3];
    v57 = v69;
    *(&v74 + 1) = v69;
    *&v75 = v68;
    BYTE8(v75) = v47;
    HIDWORD(v75) = *&v119[3];
    *(&v75 + 9) = *v119;
    *&v76 = v49;
    *(&v76 + 1) = v54;
    *&v77 = 2;
    BYTE8(v77) = v29;
    HIDWORD(v77) = *&v118[3];
    *(&v77 + 9) = *v118;
    *&v78 = v50;
    BYTE8(v78) = v51;
    HIDWORD(v78) = *&v117[3];
    v58 = *v117;
    *(&v78 + 9) = *v117;
    *&v79 = v52;
    v60 = v76;
    v59 = v77;
    v61 = v78;
    *(a1 + 112) = v52;
    *(a1 + 80) = v59;
    *(a1 + 96) = v61;
    v62 = v72;
    v63 = v73;
    v64 = v74;
    *(a1 + 48) = v75;
    *(a1 + 64) = v60;
    *(a1 + 16) = v63;
    *(a1 + 32) = v64;
    *a1 = v62;
    *&v96 = v37;
    *(&v96 + 1) = v38;
    *&v97 = v39;
    *(&v97 + 1) = v55;
    LOBYTE(v98) = v53;
    DWORD1(v98) = *&v120[3];
    *(&v98 + 1) = *v120;
    *(&v98 + 1) = v57;
    *&v99 = v56;
    BYTE8(v99) = v47;
    HIDWORD(v99) = *&v119[3];
    *(&v99 + 9) = *v119;
    *&v100 = v49;
    *(&v100 + 1) = v54;
    *&v101 = 2;
    BYTE8(v101) = v29;
    HIDWORD(v101) = *&v118[3];
    *(&v101 + 9) = *v118;
    *&v102 = v50;
    BYTE8(v102) = v51;
    HIDWORD(v102) = *&v117[3];
    *(&v102 + 9) = v58;
    *&v103 = v52;
    v65 = v54;
    sub_1BD5C75CC(&v72, v70);
    return sub_1BD5C7604(&v96);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD72DEB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8068], v4, v6);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v110 = *v2;
    v11 = sub_1BE04B6F4();
    v57 = v12;
    v58 = v11;

    (*(v5 + 8))(v8, v4);
    v13 = *(v2 + 184);
    v99 = *(v2 + 168);
    v100 = v13;
    v14 = *(v2 + 216);
    v101 = *(v2 + 200);
    v102 = v14;
    v15 = *(v2 + 120);
    v95 = *(v2 + 104);
    v96 = v15;
    v16 = *(v2 + 152);
    v97 = *(v2 + 136);
    v98 = v16;
    v17 = *(v2 + 56);
    v91 = *(v2 + 40);
    v92 = v17;
    v18 = *(v2 + 88);
    v93 = *(v2 + 72);
    v94 = v18;
    v19 = *(v2 + 24);
    v89 = *(v2 + 8);
    v90 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48C18, &unk_1BE0DE6B0);
    sub_1BE051914();
    KeyPath = swift_getKeyPath();
    v99 = v103[10];
    v100 = v103[11];
    v101 = v103[12];
    v102 = v103[13];
    v95 = v103[6];
    v96 = v103[7];
    v97 = v103[8];
    v98 = v103[9];
    v91 = v103[2];
    v92 = v103[3];
    v93 = v103[4];
    v94 = v103[5];
    v89 = v103[0];
    v90 = v103[1];
    sub_1BE051904();
    KeyPath, v22, v23, v24, v25, v26, v27, v28;
    sub_1BD0DE53C(v103, &qword_1EBD48C18, &unk_1BE0DE6B0);
    v106 = v85;
    v107 = v86;
    v108 = v87;
    v109 = v88;
    v104 = v83;
    v105 = v84;
    v29 = swift_getKeyPath();
    v79 = v106;
    v80 = v107;
    v81 = v108;
    v82 = v109;
    v77 = v104;
    v78 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD48C20, &qword_1BE0F3780);
    sub_1BE051904();
    v29, v30, v31, v32, v33, v34, v35, v36;
    sub_1BD0DE53C(&v104, &unk_1EBD48C20, &qword_1BE0F3780);
    v56 = v74;
    v37 = v76;
    v55 = v75;
    v38 = *(v2 + 184);
    v70 = *(v2 + 168);
    v71 = v38;
    v39 = *(v2 + 216);
    v72 = *(v2 + 200);
    v73 = v39;
    v40 = *(v2 + 120);
    v66 = *(v2 + 104);
    v67 = v40;
    v41 = *(v2 + 152);
    v68 = *(v2 + 136);
    v69 = v41;
    v42 = *(v2 + 56);
    v62 = *(v2 + 40);
    v63 = v42;
    v43 = *(v2 + 88);
    v64 = *(v2 + 72);
    v65 = v43;
    v44 = *(v2 + 24);
    v60 = *(v2 + 8);
    v61 = v44;
    MEMORY[0x1BFB3E970](v111, v20);
    v45 = sub_1BD4F7CBC();
    sub_1BD4FBC18(v111);
    v46 = *MEMORY[0x1E69B9AA0];
    v59 = 0;
    v47 = v46;
    sub_1BE051694();
    LOBYTE(KeyPath) = v60;
    v48 = *(&v60 + 1);
    v59 = 0;
    result = sub_1BE051694();
    v49 = v60;
    v50 = *(&v60 + 1);
    v51 = v110;
    *a1 = v56;
    *(a1 + 16) = v55;
    *(a1 + 24) = v37;
    *(a1 + 32) = v51;
    *(a1 + 33) = v89;
    *(a1 + 36) = *(&v89 + 3);
    *(a1 + 40) = v58;
    *(a1 + 48) = v57;
    *(a1 + 56) = v45;
    *(a1 + 57) = v60;
    *(a1 + 60) = *(&v60 + 3);
    *(a1 + 64) = v47;
    *(a1 + 72) = xmmword_1BE0BBAF0;
    *(a1 + 88) = KeyPath;
    v52 = v83;
    *(a1 + 92) = *(&v83 + 3);
    *(a1 + 89) = v52;
    *(a1 + 96) = v48;
    *(a1 + 104) = v49;
    v53 = v77;
    *(a1 + 108) = *(&v77 + 3);
    *(a1 + 105) = v53;
    *(a1 + 112) = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD72E360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51760, &qword_1BE0F3710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PaymentPassRow.init(pass:model:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 1;
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t PaymentPassRow.init(pass:model:includeContactButtons:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = a3;
  *a4 = result;
  *(a4 + 8) = a2;
  return result;
}

uint64_t PaymentPassRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = sub_1BE04FF64();
  v2 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD517B0, &qword_1BE0F3830);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD517B8, &qword_1BE0F3838);
  v8 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v27 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  *v7 = sub_1BE04F504();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD517C0, &qword_1BE0F3840);
  sub_1BD72E6DC(v11, v12, v13, &v7[*(v14 + 44)]);
  sub_1BE04FF44();
  v15 = sub_1BD0DE4F4(&qword_1EBD517C8, &qword_1EBD517B0, &qword_1BE0F3830, MEMORY[0x1E69817F8]);
  sub_1BE050D14();
  (*(v2 + 8))(v4, v29);
  sub_1BD0DE53C(v7, &qword_1EBD517B0, &qword_1BE0F3830);
  sub_1BE052434();
  v17 = v16;
  v31 = v5;
  v32 = v15;
  swift_getOpaqueTypeConformance2();
  v18 = v28;
  sub_1BE050DE4();
  v17, v19, v20, v21, v22, v23, v24, v25;
  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_1BD72E6DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v57 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD517F0, &qword_1BE0F39B8);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = (&v45 - v8);
  v49 = sub_1BE04FB64();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD517F8, &qword_1BE0F39C0);
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51800, &qword_1BE0F39C8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v45 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51808, &unk_1BE0F39D0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v62 = a1;
  v63 = a2;
  v64 = a3;
  v59 = a1;
  v60 = a2;
  v61 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CCB8, &qword_1BE0E7408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51810, &qword_1BE0F39E0);
  sub_1BD0DE4F4(&qword_1EBD4CCC0, &qword_1EBD4CCB8, &qword_1BE0E7408, MEMORY[0x1E6981F48]);
  sub_1BD7309A8();
  v52 = v23;
  sub_1BE051614();
  v24 = 1;
  if (a3)
  {
    v65 = a1;
    v25 = a1;
    v26 = v45;
    sub_1BE04FB54();
    sub_1BD730A5C();
    sub_1BD730AB0(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    v27 = v13;
    v28 = v49;
    sub_1BE050894();
    (*(v48 + 8))(v26, v28);

    v29 = v46;
    v30 = *(v46 + 16);
    v31 = v47;
    v32 = v50;
    v30(v47, v27, v50);
    v33 = v51;
    *v51 = 0;
    *(v33 + 8) = 1;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51830, &unk_1BE0F39F0);
    v30((v33 + *(v34 + 48)), v31, v32);
    v35 = *(v29 + 8);
    v35(v27, v32);
    v35(v31, v32);
    sub_1BD0A84E0(v33, v58);
    v24 = 0;
  }

  v36 = v58;
  (*(v55 + 56))(v58, v24, 1, v56);
  v37 = *(v19 + 16);
  v38 = v52;
  v39 = v53;
  v37(v53, v52, v18);
  v40 = v54;
  sub_1BD0A8470(v36, v54);
  v41 = v57;
  v37(v57, v39, v18);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51820, &qword_1BE0F39E8);
  sub_1BD0A8470(v40, &v41[*(v42 + 48)]);
  sub_1BD0DE53C(v36, &qword_1EBD51800, &qword_1BE0F39C8);
  v43 = *(v19 + 8);
  v43(v38, v18);
  sub_1BD0DE53C(v40, &qword_1EBD51800, &qword_1BE0F39C8);
  return (v43)(v39, v18);
}

uint64_t sub_1BD72ED30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a2;
  v135 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60, &qword_1BE0C4580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v136 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v128 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  v132 = *(v9 - 8);
  v133 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v134 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v128 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v128 - v15;
  v17 = [a1 organizationName];
  v18 = sub_1BE052434();
  v20 = v19;

  v137 = v18;
  v138 = v20;
  sub_1BD0DDEBC();
  v21 = sub_1BE0506C4();
  v23 = v22;
  v25 = v24;
  v137 = v21;
  v138 = v22;
  v27 = (v26 & 1);
  v139 = v26 & 1;
  v140 = v24;
  sub_1BE052434();
  v29 = v28;
  sub_1BE050DE4();
  v29, v30, v31, v32, v33, v34, v35, v36;
  sub_1BD0DDF10(v21, v23, v27, v37, v38, v39, v40, v41);
  v25, v42, v43, v44, v45, v46, v47, v48;
  v49 = sub_1BD408D0C(a1);
  if (v50)
  {
    v137 = v49;
    v138 = v50;
    v51 = sub_1BE0506C4();
    v53 = v52;
    v55 = v54;
    v129 = v56;
    v57 = [a1 isAppleCardPass];
    v128 = v16;
    if (v57 && (v58 = WalletSettingsModel.transactionsModelForPass(pass:)(a1), KeyPath = swift_getKeyPath(), v137 = v58, sub_1BD730AB0(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel, &protocol conformance descriptor for TransactionsModel), sub_1BE04B594(), KeyPath, v60, v61, v62, v63, v64, v65, v66, v67 = *&v58[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__account], v68 = v67, v58, v67) && (v69 = [v68 state], v68, (v69 - 2) <= 2))
    {
      v70 = sub_1BE0513B4();
    }

    else
    {
      v70 = sub_1BE051494();
    }

    v71 = v70;
    v137 = v70;
    v72 = v53;
    v73 = v51;
    v74 = v129;
    v75 = sub_1BE050574();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    sub_1BD0DDF10(v73, v72, (v55 & 1), v80, v82, v83, v84, v85);
    v71, v86, v87, v88, v89, v90, v91, v92;
    v74, v93, v94, v95, v96, v97, v98, v99;
    v137 = v75;
    v138 = v77;
    v139 = v79 & 1;
    v140 = v81;
    sub_1BE052434();
    v101 = v100;
    v102 = v130;
    sub_1BE050DE4();
    v101, v103, v104, v105, v106, v107, v108, v109;
    sub_1BD0DDF10(v75, v77, (v79 & 1), v110, v111, v112, v113, v114);
    v81, v115, v116, v117, v118, v119, v120, v121;
    sub_1BD133260(v102, v8);
    v122 = 0;
    v16 = v128;
  }

  else
  {
    v122 = 1;
  }

  (*(v132 + 56))(v8, v122, 1, v133);
  v123 = v134;
  sub_1BD0DE19C(v16, v134, &qword_1EBD452C0, &qword_1BE0B7620);
  v124 = v136;
  sub_1BD0DE19C(v8, v136, &unk_1EBD5BB60, &qword_1BE0C4580);
  v125 = v135;
  sub_1BD0DE19C(v123, v135, &qword_1EBD452C0, &qword_1BE0B7620);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47228, &qword_1BE0D9270);
  sub_1BD0DE19C(v124, v125 + *(v126 + 48), &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v8, &unk_1EBD5BB60, &qword_1BE0C4580);
  sub_1BD0DE53C(v16, &qword_1EBD452C0, &qword_1BE0B7620);
  sub_1BD0DE53C(v124, &unk_1EBD5BB60, &qword_1BE0C4580);
  return sub_1BD0DE53C(v123, &qword_1EBD452C0, &qword_1BE0B7620);
}

uint64_t sub_1BD72F264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PassImage(0);
  v14 = *(v4 - 1);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 paymentPass];
  if (v8)
  {
    *&v7[v4[6]] = v8;
    type metadata accessor for WrappedPass(0);
    swift_storeEnumTagMultiPayload();
    PKPassFrontFaceContentSize();
    *(v7 + 3) = 0x4049000000000000;
    *(v7 + 4) = v10 / v9 * 50.0;
    *v7 = sub_1BD70C870;
    *(v7 + 1) = 0;
    v7[16] = 0;
    v7[v4[7]] = 1;
    *&v7[v4[8]] = 1911;
    sub_1BD5A57BC(v7, a2);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v12 = *(v14 + 56);

    return v12(a2, 1, 1, v4);
  }
}

uint64_t sub_1BD72F414@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v113 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v102 - v7;
  v9 = sub_1BE04AA64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v102 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v102 - v15;
  v17 = type metadata accessor for WalletSettingsModel(0);
  v107 = a1;
  v18 = [a1 paymentPass];
  v106 = v17;
  if (v18)
  {
    v19 = v18;
    v20 = sub_1BE052434();
    v21 = v9;
    v23 = v22;
    sub_1BD4089F0(v19, v20, v22, v8);

    v24 = v23;
    v9 = v21;
    v24, v25, v26, v27, v28, v29, v30, v31;
    v32 = v10;
    if ((*(v10 + 48))(v8, 1, v21) != 1)
    {
      v33 = *(v10 + 32);
      v33(v16, v8, v21);
      v104 = 0x80000001BE12D840;
      v34 = v102;
      (*(v10 + 16))(v102, v16, v21);
      v35 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v109 = swift_allocObject();
      v33((v109 + v35), v34, v21);
      v9 = v21;
      *(&v112 + 1) = sub_1BE051494();
      *&v112 = swift_getKeyPath();
      v36 = sub_1BE050224();
      sub_1BE04E1F4();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      (*(v10 + 8))(v16, v21);
      v110 = sub_1BD730BDC;
      v111 = v36;
      v108 = 0xE400000000000000;
      v45 = 0xD000000000000011;
      v114 = 1280065859;
      goto LABEL_6;
    }
  }

  else
  {
    v32 = v10;
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_1BD0DE53C(v8, &unk_1EBD3CF70, &qword_1BE0BA000);
  v45 = 0;
  v104 = 0;
  v114 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0uLL;
  v38 = 0;
  v40 = 0;
  v42 = 0;
  v44 = 0;
  v10 = v32;
LABEL_6:
  v46 = [v107 paymentPass];
  v47 = v113;
  if (!v46)
  {
    (*(v10 + 56))(v113, 1, 1, v9);
    goto LABEL_10;
  }

  v48 = v46;
  v107 = v11;
  v49 = sub_1BE052434();
  v50 = v9;
  v52 = v51;
  sub_1BD4089F0(v48, v49, v51, v47);
  v47 = v113;

  v52, v53, v54, v55, v56, v57, v58, v59;
  if ((*(v10 + 48))(v47, 1, v50) == 1)
  {
LABEL_10:
    sub_1BD0DE53C(v47, &unk_1EBD3CF70, &qword_1BE0BA000);
    v84 = 0;
    v83 = 0;
    v82 = 0;
    v81 = 0;
    v80 = 0;
    v78 = 0;
    v77 = 0;
    v67 = 0;
    v79 = 0;
    v70 = 0;
    v72 = 0;
    v74 = 0;
    v76 = 0;
    goto LABEL_11;
  }

  v60 = *(v10 + 32);
  v61 = v103;
  v60(v103, v47, v50);
  v62 = v102;
  (*(v10 + 16))(v102, v61, v50);
  v63 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v64 = swift_allocObject();
  v65 = v64 + v63;
  v66 = v64;
  v60(v65, v62, v50);
  v67 = sub_1BE051494();
  KeyPath = swift_getKeyPath();
  LOBYTE(v60) = sub_1BE050224();
  sub_1BE04E1F4();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  (*(v10 + 8))(v103, v50);
  v77 = KeyPath;
  v78 = v66;
  v79 = v60;
  v80 = sub_1BD7308B0;
  v81 = 0xE700000000000000;
  v82 = 0x45544953424557;
  v83 = 0xEB000000006C6C69;
  v84 = 0x662E697261666173;
LABEL_11:
  v105 = v45;
  *&v127 = v45;
  v85 = v104;
  *(&v127 + 1) = v104;
  *&v128 = v114;
  v86 = v108;
  v87 = v109;
  v88 = v110;
  v89 = v111;
  *(&v128 + 1) = v108;
  *&v129 = v110;
  v90 = v112;
  *(&v129 + 1) = v109;
  v130 = v112;
  *&v131 = v111;
  *(&v131 + 1) = v38;
  *&v132[0] = v40;
  *(&v132[0] + 1) = v42;
  *&v132[1] = v44;
  BYTE8(v132[1]) = 0;
  v115 = v127;
  v116 = v128;
  *(v120 + 9) = *(v132 + 9);
  v119 = v131;
  v120[0] = v132[0];
  v117 = v129;
  v118 = v112;
  *&v133 = v84;
  *(&v133 + 1) = v83;
  *&v134 = v82;
  *(&v134 + 1) = v81;
  *&v135 = v80;
  *(&v135 + 1) = v78;
  *&v136 = v77;
  *(&v136 + 1) = v67;
  *&v137 = v79;
  *(&v137 + 1) = v70;
  *&v138[0] = v72;
  *(&v138[0] + 1) = v74;
  *&v138[1] = v76;
  BYTE8(v138[1]) = 0;
  v121 = v133;
  v122 = v134;
  *(v126 + 9) = *(v138 + 9);
  v125 = v137;
  v126[0] = v138[0];
  v123 = v135;
  v124 = v136;
  v91 = v128;
  *a2 = v127;
  a2[1] = v91;
  v92 = v117;
  v93 = v118;
  v94 = v120[0];
  a2[4] = v119;
  a2[5] = v94;
  a2[2] = v92;
  a2[3] = v93;
  v95 = v120[1];
  v96 = v121;
  v97 = v123;
  a2[8] = v122;
  a2[9] = v97;
  a2[6] = v95;
  a2[7] = v96;
  v98 = v124;
  v99 = v125;
  v100 = v126[0];
  *(a2 + 201) = *(v126 + 9);
  a2[11] = v99;
  a2[12] = v100;
  a2[10] = v98;
  v139[0] = v84;
  v139[1] = v83;
  v139[2] = v82;
  v139[3] = v81;
  v139[4] = v80;
  v139[5] = v78;
  v139[6] = v77;
  v139[7] = v67;
  v139[8] = v79;
  v139[9] = v70;
  v139[10] = v72;
  v139[11] = v74;
  v139[12] = v76;
  v140 = 0;
  sub_1BD0DE19C(&v127, v141, &qword_1EBD517E8, &qword_1BE0F3980);
  sub_1BD0DE19C(&v133, v141, &qword_1EBD517E8, &qword_1BE0F3980);
  sub_1BD0DE53C(v139, &qword_1EBD517E8, &qword_1BE0F3980);
  v141[0] = v105;
  v141[1] = v85;
  v141[2] = v114;
  v141[3] = v86;
  v141[4] = v88;
  v141[5] = v87;
  v142 = v90;
  v143 = v89;
  v144 = v38;
  v145 = v40;
  v146 = v42;
  v147 = v44;
  v148 = 0;
  return sub_1BD0DE53C(v141, &qword_1EBD517E8, &qword_1BE0F3980);
}

void _s9PassKitUI7openURL3urly10Foundation0E0V_tF_0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_1BE04A9C4();
  v2 = sub_1BD1ABAC0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1BD730AB0(&qword_1EBD37B90, type metadata accessor for OpenExternalURLOptionsKey, &unk_1BE0B3A4C);
  v10 = sub_1BE052224();
  v2, v3, v4, v5, v6, v7, v8, v9;
  [v0 openURL:v1 options:v10 completionHandler:0];
}

double sub_1BD72FCD4@<D0>(void *a4@<X3>, uint64_t a5@<X8>)
{
  v15 = sub_1BE04F7B4();
  v28 = 1;
  sub_1BD72FFAC(a4, &v17);
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v30 = v17;
  v31 = v18;
  v40[6] = v23;
  v40[7] = v24;
  v40[8] = v25;
  v40[2] = v19;
  v40[3] = v20;
  v40[4] = v21;
  v40[5] = v22;
  v39 = v26;
  v41 = v26;
  v40[0] = v17;
  v40[1] = v18;
  sub_1BD0DE19C(&v30, v16, &qword_1EBD51848, &unk_1BE0F3AC0);
  sub_1BD0DE53C(v40, &qword_1EBD51848, &unk_1BE0F3AC0);
  *&v27[103] = v36;
  *&v27[119] = v37;
  *&v27[135] = v38;
  v27[151] = v39;
  *&v27[39] = v32;
  *&v27[55] = v33;
  *&v27[71] = v34;
  *&v27[87] = v35;
  *&v27[7] = v30;
  *&v27[23] = v31;
  LOBYTE(a4) = v28;
  sub_1BE051CD4();
  sub_1BE04EE54();
  *&v29[55] = v20;
  *&v29[71] = v21;
  *&v29[87] = v22;
  *&v29[103] = v23;
  *&v29[7] = v17;
  *&v29[23] = v18;
  *&v29[39] = v19;
  v7 = *&v27[112];
  *(a5 + 113) = *&v27[96];
  *(a5 + 129) = v7;
  *(a5 + 145) = *&v27[128];
  v8 = *&v27[48];
  *(a5 + 49) = *&v27[32];
  *(a5 + 65) = v8;
  v9 = *&v27[80];
  *(a5 + 81) = *&v27[64];
  *(a5 + 97) = v9;
  v10 = *&v27[16];
  *(a5 + 17) = *v27;
  *(a5 + 33) = v10;
  v11 = *&v29[80];
  *(a5 + 233) = *&v29[64];
  *(a5 + 249) = v11;
  *(a5 + 265) = *&v29[96];
  v12 = *&v29[16];
  *(a5 + 169) = *v29;
  *(a5 + 185) = v12;
  result = *&v29[32];
  v14 = *&v29[48];
  *(a5 + 201) = *&v29[32];
  *a5 = v15;
  *(a5 + 8) = 0;
  *(a5 + 16) = a4;
  *(a5 + 161) = *&v27[144];
  *(a5 + 280) = *&v29[111];
  *(a5 + 217) = v14;
  return result;
}

id sub_1BD72FFAC@<X0>(void *a4@<X3>, _OWORD *a5@<X8>)
{
  v72 = a4;
  v74 = a5;
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v72 - v10;
  sub_1BE048C84();
  v73 = sub_1BE051574();
  v12 = sub_1BE050354();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v77 = sub_1BE0503B4();
  sub_1BD0DE53C(v11, &qword_1EBD49130, &qword_1BE0C7180);
  KeyPath = swift_getKeyPath();
  v75 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LOBYTE(v100) = 0;
  (*(v6 + 104))(v8, *MEMORY[0x1E69B80F0], v5);
  result = PKPassKitBundle();
  if (result)
  {
    v22 = result;
    v23 = sub_1BE04B6F4();
    v25 = v24;

    (*(v6 + 8))(v8, v5);
    v100 = v23;
    v101 = v25;
    sub_1BD0DDEBC();
    v26 = sub_1BE0506C4();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = sub_1BE050454();
    v34 = sub_1BE0505F4();
    v36 = v35;
    v38 = v37;
    v72 = v39;
    v33, v35, v37, v39, v40, v41, v42, v43;
    sub_1BD0DDF10(v26, v28, (v30 & 1), v44, v45, v46, v47, v48);
    v32, v49, v50, v51, v52, v53, v54, v55;
    LOBYTE(v28) = sub_1BE0501F4();
    sub_1BE04E1F4();
    v56 = v38 & 1;
    v115 = v38 & 1;
    v112 = 0;
    v57 = v73;
    *&v91 = v73;
    *(&v91 + 1) = KeyPath;
    *&v92 = v77;
    BYTE8(v92) = v75;
    HIDWORD(v92) = *(v116 + 3);
    *(&v92 + 9) = v116[0];
    *&v93 = v14;
    *(&v93 + 1) = v16;
    *&v94 = v18;
    *(&v94 + 1) = v20;
    v95 = 0;
    LOBYTE(v90[0]) = 0;
    v88 = v93;
    v89 = v94;
    v86 = v91;
    v87 = v92;
    *&v96 = v34;
    *(&v96 + 1) = v36;
    v58 = v36;
    LOBYTE(v97) = v56;
    DWORD1(v97) = *&v114[3];
    *(&v97 + 1) = *v114;
    v59 = v72;
    *(&v97 + 1) = v72;
    LOBYTE(v98) = v28;
    DWORD1(v98) = *&v113[3];
    *(&v98 + 1) = *v113;
    *(&v98 + 1) = v60;
    *&v99[0] = v61;
    *(&v99[0] + 1) = v62;
    *&v99[1] = v63;
    BYTE8(v99[1]) = 0;
    *(v90 + 8) = v96;
    *(&v90[4] + 1) = *(v99 + 9);
    *(&v90[3] + 8) = v99[0];
    *(&v90[2] + 8) = v98;
    *(&v90[1] + 8) = v97;
    v64 = v92;
    v65 = v74;
    *v74 = v91;
    v65[1] = v64;
    v66 = v88;
    v67 = v89;
    v68 = v90[1];
    v65[4] = v90[0];
    v65[5] = v68;
    v65[2] = v66;
    v65[3] = v67;
    v69 = v90[2];
    v70 = v90[3];
    v71 = v90[4];
    *(v65 + 144) = v90[5];
    v65[7] = v70;
    v65[8] = v71;
    v65[6] = v69;
    v100 = v34;
    v101 = v58;
    v102 = v56;
    *v103 = *v114;
    *&v103[3] = *&v114[3];
    v104 = v59;
    v105 = v28;
    *v106 = *v113;
    *&v106[3] = *&v113[3];
    v107 = v60;
    v108 = v61;
    v109 = v62;
    v110 = v63;
    v111 = 0;
    sub_1BD0DE19C(&v91, v78, &qword_1EBD51850, &unk_1BE0F3B00);
    sub_1BD0DE19C(&v96, v78, &unk_1EBD3DF90, &qword_1BE0C2E90);
    sub_1BD0DE53C(&v100, &unk_1EBD3DF90, &qword_1BE0C2E90);
    v78[0] = v57;
    v78[1] = KeyPath;
    v78[2] = v77;
    v79 = v75;
    *v80 = v116[0];
    *&v80[3] = *(v116 + 3);
    v81 = v14;
    v82 = v16;
    v83 = v18;
    v84 = v20;
    v85 = 0;
    return sub_1BD0DE53C(v78, &qword_1EBD51850, &unk_1BE0F3B00);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BD730470@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = sub_1BE04F504();
  v30 = 1;
  sub_1BD72F414(v4, &v16);
  v41 = v26;
  v42 = v27;
  v43[0] = v28[0];
  *(v43 + 9) = *(v28 + 9);
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v31 = v16;
  v32 = v17;
  v44[10] = v26;
  v44[11] = v27;
  v45[0] = v28[0];
  *(v45 + 9) = *(v28 + 9);
  v44[6] = v22;
  v44[7] = v23;
  v44[8] = v24;
  v44[9] = v25;
  v44[2] = v18;
  v44[3] = v19;
  v44[4] = v20;
  v44[5] = v21;
  v44[0] = v16;
  v44[1] = v17;
  sub_1BD0DE19C(&v31, &v15, &qword_1EBD517E0, &unk_1BE0F3970);
  sub_1BD0DE53C(v44, &qword_1EBD517E0, &unk_1BE0F3970);
  *(&v29[10] + 7) = v41;
  *(&v29[11] + 7) = v42;
  *(&v29[12] + 7) = v43[0];
  v29[13] = *(v43 + 9);
  *(&v29[6] + 7) = v37;
  *(&v29[7] + 7) = v38;
  *(&v29[8] + 7) = v39;
  *(&v29[9] + 7) = v40;
  *(&v29[2] + 7) = v33;
  *(&v29[3] + 7) = v34;
  *(&v29[4] + 7) = v35;
  *(&v29[5] + 7) = v36;
  *(v29 + 7) = v31;
  *(&v29[1] + 7) = v32;
  v6 = v29[11];
  *(a2 + 177) = v29[10];
  *(a2 + 193) = v6;
  v7 = v29[13];
  *(a2 + 209) = v29[12];
  *(a2 + 225) = v7;
  v8 = v29[7];
  *(a2 + 113) = v29[6];
  *(a2 + 129) = v8;
  v9 = v29[9];
  *(a2 + 145) = v29[8];
  *(a2 + 161) = v9;
  v10 = v29[3];
  *(a2 + 49) = v29[2];
  *(a2 + 65) = v10;
  v11 = v29[5];
  *(a2 + 81) = v29[4];
  *(a2 + 97) = v11;
  result = *v29;
  v13 = v29[1];
  *(a2 + 17) = v29[0];
  v14 = v30;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v14;
  *(a2 + 33) = v13;
  return result;
}

unint64_t sub_1BD730758()
{
  result = qword_1EBD517D0;
  if (!qword_1EBD517D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD517D8, &qword_1BE0F38E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD517B0, &qword_1BE0F3830);
    sub_1BD0DE4F4(&qword_1EBD517C8, &qword_1EBD517B0, &qword_1BE0F3830, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD730AB0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD517D0);
  }

  return result;
}

uint64_t objectdestroyTm_84()
{
  v1 = sub_1BE04AA64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_1BD7309A8()
{
  result = qword_1EBD51818;
  if (!qword_1EBD51818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51810, &qword_1BE0F39E0);
    sub_1BD730AB0(&qword_1EBD39FE0, type metadata accessor for PassImage, &protocol conformance descriptor for PassImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51818);
  }

  return result;
}

unint64_t sub_1BD730A5C()
{
  result = qword_1EBD51828;
  if (!qword_1EBD51828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51828);
  }

  return result;
}

uint64_t sub_1BD730AB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD730B24()
{
  result = qword_1EBD51858;
  if (!qword_1EBD51858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51860, &qword_1BE0F3B10);
    sub_1BD0DE4F4(&qword_1EBD51868, &unk_1EBD51870, qword_1BE0F3B18, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51858);
  }

  return result;
}

uint64_t sub_1BD730CB4()
{
  v1 = v0;
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04C384();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04C3A4();
  if (!v10[2])
  {
    v10, v11, v12, v13, v14, v15, v16, v17;
    return 2;
  }

  v18 = v10;
  (*(v7 + 16))(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26 = sub_1BE04C2E4();
  (*(v7 + 8))(v9, v6);
  if (!v26)
  {
    return 2;
  }

  v27 = sub_1BE04C3C4();
  v35 = v27;
  v36 = *(v27 + 2);
  if (v36)
  {
    v82 = v26;
    v83 = v1;
    v85 = MEMORY[0x1E69E7CC0];
    sub_1BE0538E4();
    v38 = *(v3 + 16);
    v37 = v3 + 16;
    v84 = v38;
    v39 = *(v37 + 64);
    v81 = v35;
    v40 = &v35[(v39 + 32) & ~v39];
    v41 = *(v37 + 56);
    do
    {
      v84(v5, v40, v2);
      sub_1BE04B8E4();
      (*(v37 - 8))(v5, v2);
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
      v40 += v41;
      --v36;
    }

    while (v36);
    v81, v42, v43, v44, v45, v46, v47, v48;
    v56 = v85;
    v26 = v82;
    v1 = v83;
  }

  else
  {
    v27, v28, v29, v30, v31, v32, v33, v34;
    v56 = MEMORY[0x1E69E7CC0];
  }

  v58 = sub_1BD3F059C(v56, v49, v50, v51, v52, v53, v54, v55);
  v56, v59, v60, v61, v62, v63, v64, v65;
  v66 = *(v1 + OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_reporter);
  v67 = objc_allocWithZone(PKAddPaymentPassDevicePickerViewController);
  v68 = v26;
  v69 = sub_1BE052724();
  v58, v70, v71, v72, v73, v74, v75, v76;
  v77 = [v67 initWithPaymentWebServices:v69 configuration:v68 reporter:v66];

  if (v77)
  {
    v78 = v77;
    v79 = v77;
    [v79 setDelegate_];

    return v78;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1BD731028()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD731064(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD7310B0(uint64_t (*a1)(BOOL, unint64_t, unint64_t, uint64_t))
{
  v2 = sub_1BE04C3C4();
  v3 = v2[2];
  v2, v4, v5, v6, v7, v8, v9, v10;
  return a1(v3 > 1, 0xD000000000000035, 0x80000001BE1378D0, 2);
}

id sub_1BD7311A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_identifier];
  *v7 = 0xD000000000000014;
  *(v7 + 1) = 0x80000001BE137910;
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_configuration] = a2;
  sub_1BE052434();
  v9 = v8;
  sub_1BE048964();
  sub_1BE048964();
  v10 = sub_1BE04BB74();
  v9, v11, v12, v13, v14, v15, v16, v17;
  *&v3[OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_reporter] = v10;
  v19.receiver = v3;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_1BD7312A8(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04B944();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v72 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v72 - v14;
  v15 = sub_1BE04C3C4();
  v23 = v15;
  v78 = v15[2];
  if (v78)
  {
    v72 = v7;
    v24 = 0;
    v77 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v79 = v5 + 16;
    v75 = v1;
    v76 = (v5 + 8);
    v25 = a1;
    while (v24 < v23[2])
    {
      v33 = *(v5 + 16);
      v33(v10, &v77[*(v5 + 72) * v24], v4);
      v34 = sub_1BE04B8E4();
      v35 = v34;
      if (a1)
      {
        sub_1BD731728();
        v36 = a1;
        v37 = v4;
        v38 = v36;
        v39 = sub_1BE053074();

        v4 = v37;
        if (v39)
        {
          v23, v40, v41, v42, v43, v44, v45, v46;
          v47 = *(v5 + 32);
          v48 = v73;
          v47(v73, v10, v37);
          v49 = v74;
          v47(v74, v48, v37);
          v2 = v75;
          v33(v72, v49, v37);
          sub_1BE04BBA4();
          v50 = sub_1BE04B8E4();
          v51 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService_];

          if (v51)
          {
            sub_1BE04BBE4();
            v52 = *(v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_reporter);
            if (v52)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1BE0B6CA0;
              v54 = *MEMORY[0x1E69BA680];
              *(inited + 32) = *MEMORY[0x1E69BA680];
              *(inited + 40) = sub_1BE052434();
              *(inited + 48) = v55;
              v56 = *MEMORY[0x1E69BA5F8];
              *(inited + 56) = *MEMORY[0x1E69BA5F8];
              v57 = v54;
              v58 = v56;
              *(inited + 64) = sub_1BE04B904();
              *(inited + 72) = v59;
              v60 = sub_1BD1AAF50(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
              swift_arrayDestroy();
              type metadata accessor for PKAnalyticsKey(0);
              sub_1BD1F0E18();
              v61 = sub_1BE052224();
              v60, v62, v63, v64, v65, v66, v67, v68;
              [v52 reportEvent_];
            }

            (*v76)(v49, v37);
            goto LABEL_14;
          }

LABEL_18:
          __break(1u);
          return;
        }
      }

      else
      {
      }

      ++v24;
      (*v76)(v10, v4);
      a1 = v25;
      if (v78 == v24)
      {
        v23, v26, v27, v28, v29, v30, v31, v32;
        v2 = v75;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v15, v16, v17, v18, v19, v20, v21, v22;
LABEL_14:
  v69 = v2 + OBJC_IVAR____TtC9PassKitUI32ProvisioningDevicePickerFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v70 = *(v69 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v2, &off_1F3BB8EE0, ObjectType, v70);
    swift_unknownObjectRelease();
  }
}

unint64_t sub_1BD731728()
{
  result = qword_1EBD45630;
  if (!qword_1EBD45630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45630);
  }

  return result;
}

uint64_t sub_1BD731794()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  PKOBKHeaderSymbolImagePointSize();
  v3 = sub_1BE050354();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_1BE0503B4();
  result = sub_1BD3FA0F4(v2);
  qword_1EBDAB4C0 = v4;
  return result;
}

uint64_t sub_1BD731878(uint64_t a1)
{
  result = sub_1BE0513C4();
  qword_1EBDAB4C8 = result;
  return result;
}

void sub_1BD7318FC()
{
  v0 = PKOBKHeaderIconImageSize();
  v1 = PKOBKHeaderIconImageSize();
  qword_1EBDAB4E8 = *&v0;
  unk_1EBDAB4F0 = *&v1;
}

uint64_t sub_1BD731990(uint64_t a1)
{
  v1 = PKOBKHeaderTitleFont(a1);
  result = sub_1BE050484();
  qword_1EBDAB510 = result;
  return result;
}

uint64_t sub_1BD7319BC()
{
  v0 = PKOBKHeaderTitleTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB518 = result;
  return result;
}

uint64_t sub_1BD7319E8(uint64_t a1)
{
  v1 = PKOBKHeaderSubtitleFont(a1);
  result = sub_1BE050484();
  qword_1EBDAB520 = result;
  return result;
}

uint64_t sub_1BD731A14(uint64_t a1)
{
  v1 = PKOBKHeaderSubtitleTextColor(a1);
  result = sub_1BE0511C4();
  qword_1EBDAB528 = result;
  return result;
}

uint64_t sub_1BD731AA4(uint64_t a1)
{
  v1 = PKOBKListSubtitleCellTitleFont(a1);
  result = sub_1BE050484();
  qword_1EBDAB548 = result;
  return result;
}

uint64_t sub_1BD731AD0()
{
  v0 = PKOBKListSubtitleCellTitleTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB550 = result;
  return result;
}

uint64_t sub_1BD731AFC()
{
  v0 = PKOBKListSubtitleCellSubtitleTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB558 = result;
  return result;
}

id sub_1BD731B28(uint64_t a1)
{
  result = PKOBKListInlineCellSubtitleFont(a1);
  qword_1EBDAB560 = result;
  return result;
}

id sub_1BD731B50()
{
  result = PKOBKListInlineCellSubtitleColor();
  qword_1EBDAB568 = result;
  return result;
}

uint64_t sub_1BD731B78(uint64_t a1)
{
  v1 = PKOBKListInlineCellTitleFont(a1);
  result = sub_1BE050484();
  qword_1EBDAB570 = result;
  return result;
}

uint64_t sub_1BD731BA4()
{
  v0 = PKOBKListInlineCellTitleColor();
  result = sub_1BE0511C4();
  qword_1EBDAB578 = result;
  return result;
}

uint64_t sub_1BD731BD0(uint64_t a1)
{
  v1 = PKOBKListInlineCellSubtitleFont(a1);
  result = sub_1BE050484();
  qword_1EBDAB580 = result;
  return result;
}

uint64_t sub_1BD731BFC()
{
  v0 = PKOBKListInlineCellSubtitleColor();
  result = sub_1BE0511C4();
  qword_1EBDAB588 = result;
  return result;
}

uint64_t sub_1BD731C28()
{
  v0 = PKOBKLearnMoreButtonFont();
  result = sub_1BE050484();
  qword_1EBDAB590 = result;
  return result;
}

uint64_t sub_1BD731C54()
{
  v0 = PKOBKLearnMoreButtonColor();
  result = sub_1BE0511C4();
  qword_1EBDAB598 = result;
  return result;
}

double sub_1BD731C80()
{
  result = 6.0;
  qword_1EBDAB5A0 = 0x4018000000000000;
  return result;
}

uint64_t sub_1BD731C98(uint64_t a1)
{
  result = sub_1BE051CE4();
  *&xmmword_1EBDAB5A8 = result;
  *(&xmmword_1EBDAB5A8 + 1) = v2;
  return result;
}

uint64_t sub_1BD731CBC()
{
  v0 = PKOBKBulletTitleTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB5B8 = result;
  return result;
}

uint64_t sub_1BD731CE8()
{
  v0 = PKOBKBulletSubtitleFont();
  result = sub_1BE050484();
  qword_1EBDAB5C0 = result;
  return result;
}

uint64_t sub_1BD731D14()
{
  v0 = PKOBKBulletSubtitleTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB5C8 = result;
  return result;
}

double sub_1BD731D40()
{
  result = 26.0;
  qword_1EBDAB5D0 = 0x403A000000000000;
  return result;
}

double sub_1BD731D78()
{
  result = 17.0;
  qword_1EBDAB5E0 = 0x4031000000000000;
  return result;
}

double sub_1BD731D90()
{
  result = 14.0;
  qword_1EBDAB5E8 = 0x402C000000000000;
  return result;
}

double sub_1BD731DA8()
{
  result = 28.0;
  qword_1EBDAB5F0 = 0x403C000000000000;
  return result;
}

double sub_1BD731DC0()
{
  result = 4.0;
  qword_1EBDAB5F8 = 0x4010000000000000;
  return result;
}

double sub_1BD731DD8()
{
  result = 58.0;
  qword_1EBDAB600 = 0x404D000000000000;
  return result;
}

uint64_t sub_1BD731DF0()
{
  v0 = PKOBKFooterCaptionFont();
  result = sub_1BE050484();
  qword_1EBDAB608 = result;
  return result;
}

uint64_t sub_1BD731E1C()
{
  v0 = PKOBKFooterCaptionTextColor();
  result = sub_1BE0511C4();
  qword_1EBDAB610 = result;
  return result;
}

uint64_t sub_1BD731E88(uint64_t a1)
{
  v1 = PKOBKDockPrimaryButtonFont(a1);
  result = sub_1BE050484();
  qword_1EBDAB628 = result;
  return result;
}

uint64_t sub_1BD731F14(uint64_t a1)
{
  result = sub_1BE051424();
  qword_1EBDAB648 = result;
  return result;
}

uint64_t sub_1BD731F34(uint64_t a1)
{
  result = sub_1BE0513C4();
  qword_1EBDAB650 = result;
  return result;
}

uint64_t sub_1BD731F54(uint64_t a1)
{
  result = sub_1BE051464();
  qword_1EBDAB658 = result;
  return result;
}

uint64_t sub_1BD731F74()
{
  v0 = [objc_opt_self() systemGray6Color];
  result = sub_1BE0511C4();
  qword_1EBDAB660 = result;
  return result;
}

uint64_t View.pkOBKLinkStyle(symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = PKNaturalUIEnabled();
  if (PKNaturalUIEnabled())
  {
    v9 = sub_1BE051CE4();
  }

  else
  {
    v9 = sub_1BE051CD4();
  }

  v12[0] = a1;
  v12[1] = a2;
  v13 = v8 ^ 1;
  v14 = v9;
  v15 = v10;
  return MEMORY[0x1BFB3E0D0](v12, a3, &type metadata for PKOBKLinkModifier, a4);
}

uint64_t View.pkOBKBulletLinkStyle()(uint64_t a1, uint64_t a2)
{
  if (qword_1EBD36E40 != -1)
  {
    swift_once();
  }

  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  v7 = xmmword_1EBDAB5A8;
  return MEMORY[0x1BFB3E0D0](v5, a1, &type metadata for PKOBKLinkModifier, a2);
}

uint64_t sub_1BD7321C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    if (qword_1EBD36D68 != -1)
    {
      swift_once();
    }

    v5 = qword_1EBDAB4C8;
    sub_1BE048964();
  }

  v6 = qword_1EBD36D60;
  sub_1BE048964();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBDAB4C0;
  KeyPath = swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51940, &qword_1BE0F4000);
  (*(*(v9 - 8) + 16))(a3, a1, v9);
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51948, &qword_1BE0F4008) + 36));
  *v10 = KeyPath;
  v10[1] = v7;
  sub_1BE048964();
  v11 = sub_1BE051484();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51950, &qword_1BE0F4010) + 36)) = v11;
  v12 = sub_1BE0501E4();
  if (qword_1EBD36D70 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51958, &qword_1BE0F4018) + 36);
  *v21 = v12;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = sub_1BE0501F4();
  if (qword_1EBD36D78 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v5, v31, v32, v33, v34, v35, v36, v37;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51960, &qword_1BE0F4020);
  v39 = a3 + *(result + 36);
  *v39 = v22;
  *(v39 + 8) = v24;
  *(v39 + 16) = v26;
  *(v39 + 24) = v28;
  *(v39 + 32) = v30;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_1BD73244C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EBD36D80 != -1)
  {
    swift_once();
  }

  sub_1BE051CD4();
  sub_1BE04E5E4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51968, &qword_1BE0F4028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51970, &qword_1BE0F4030) + 36));
  *v5 = v33;
  v5[1] = v34;
  v5[2] = v35;
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51978, &qword_1BE0F4038) + 36);
  *v6 = 0;
  *(v6 + 8) = 1;
  if (qword_1EBD36D90 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBDAB4F8;
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51980, &unk_1BE0F4040) + 36));
  v9 = *(sub_1BE04EDE4() + 20);
  v10 = *MEMORY[0x1E697F468];
  v11 = sub_1BE04F684();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = v7;
  v8[1] = v7;
  *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)) = 256;
  v12 = sub_1BE0501E4();
  if (qword_1EBD36D98 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51988, &qword_1BE0F4050) + 36);
  *v21 = v12;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = sub_1BE0501F4();
  if (qword_1EBD36DA0 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51990, &qword_1BE0F4058);
  v32 = a2 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

__n128 sub_1BD732758@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51998, &qword_1BE0F4060);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519A0, &qword_1BE0F4068);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519A8, &qword_1BE0F4070);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519B0, &qword_1BE0F4078);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v35 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519B8, &qword_1BE0F4080);
  MEMORY[0x1EEE9AC00](v38);
  v16 = &v35 - v15;
  v17 = PKNaturalUIEnabled() ^ 1;
  KeyPath = swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519C0, &unk_1BE0F40B8);
  (*(*(v19 - 8) + 16))(v5, v36, v19);
  v20 = &v5[*(v3 + 44)];
  *v20 = KeyPath;
  v20[8] = v17;
  v21 = &v9[*(v7 + 44)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
  v23 = sub_1BE0505C4();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *v21 = swift_getKeyPath();
  sub_1BD0DE204(v5, v9, &qword_1EBD51998, &qword_1BE0F4060);
  if (qword_1EBD36DA8 != -1)
  {
    swift_once();
  }

  v24 = qword_1EBDAB510;
  v25 = swift_getKeyPath();
  sub_1BD0DE204(v9, v12, &qword_1EBD519A0, &qword_1BE0F4068);
  v26 = &v12[*(v10 + 36)];
  *v26 = v25;
  v26[1] = v24;
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v12, v14, &qword_1EBD519A8, &qword_1BE0F4070);
  v27 = &v14[*(v37 + 36)];
  v28 = v41;
  *v27 = v40;
  *(v27 + 1) = v28;
  *(v27 + 2) = v42;
  if (qword_1EBD36DB0 != -1)
  {
    swift_once();
  }

  v29 = qword_1EBDAB518;
  sub_1BD0DE204(v14, v16, &qword_1EBD519B0, &qword_1BE0F4078);
  *&v16[*(v38 + 36)] = v29;
  sub_1BE048964();
  if (PKNaturalUIEnabled())
  {
    sub_1BE051CE4();
  }

  else
  {
    sub_1BE051CD4();
  }

  sub_1BE04EE54();
  v30 = v39;
  sub_1BD0DE204(v16, v39, &qword_1EBD519B8, &qword_1BE0F4080);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519C8, &qword_1BE0F40F8) + 36);
  v32 = v48;
  *(v31 + 64) = v47;
  *(v31 + 80) = v32;
  *(v31 + 96) = v49;
  v33 = v44;
  *v31 = v43;
  *(v31 + 16) = v33;
  result = v46;
  *(v31 + 32) = v45;
  *(v31 + 48) = result;
  return result;
}

__n128 sub_1BD732C5C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519D0, &qword_1BE0F4100);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519D8, &qword_1BE0F4108);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519E0, &qword_1BE0F4110);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519E8, &qword_1BE0F4118);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v35 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519F0, &qword_1BE0F4120);
  MEMORY[0x1EEE9AC00](v38);
  v16 = &v35 - v15;
  v17 = PKNaturalUIEnabled() ^ 1;
  KeyPath = swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD519F8, &qword_1BE0F4128);
  (*(*(v19 - 8) + 16))(v5, v36, v19);
  v20 = &v5[*(v3 + 44)];
  *v20 = KeyPath;
  v20[8] = v17;
  v21 = &v9[*(v7 + 44)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
  v23 = sub_1BE0505C4();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *v21 = swift_getKeyPath();
  sub_1BD0DE204(v5, v9, &qword_1EBD519D0, &qword_1BE0F4100);
  if (qword_1EBD36DB8 != -1)
  {
    swift_once();
  }

  v24 = qword_1EBDAB520;
  v25 = swift_getKeyPath();
  sub_1BD0DE204(v9, v12, &qword_1EBD519D8, &qword_1BE0F4108);
  v26 = &v12[*(v10 + 36)];
  *v26 = v25;
  v26[1] = v24;
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v12, v14, &qword_1EBD519E0, &qword_1BE0F4110);
  v27 = &v14[*(v37 + 36)];
  v28 = v41;
  *v27 = v40;
  *(v27 + 1) = v28;
  *(v27 + 2) = v42;
  if (qword_1EBD36DC0 != -1)
  {
    swift_once();
  }

  v29 = qword_1EBDAB528;
  sub_1BD0DE204(v14, v16, &qword_1EBD519E8, &qword_1BE0F4118);
  *&v16[*(v38 + 36)] = v29;
  sub_1BE048964();
  if (PKNaturalUIEnabled())
  {
    sub_1BE051CE4();
  }

  else
  {
    sub_1BE051CD4();
  }

  sub_1BE04EE54();
  v30 = v39;
  sub_1BD0DE204(v16, v39, &qword_1EBD519F0, &qword_1BE0F4120);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A00, &qword_1BE0F4130) + 36);
  v32 = v48;
  *(v31 + 64) = v47;
  *(v31 + 80) = v32;
  *(v31 + 96) = v49;
  v33 = v44;
  *v31 = v43;
  *(v31 + 16) = v33;
  result = v46;
  *(v31 + 32) = v45;
  *(v31 + 48) = result;
  return result;
}

void *sub_1BD733160@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51918, &qword_1BE0F3FB0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51920, &qword_1BE0F3FB8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  if (PKIsVision())
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51928, &unk_1BE0F3FC0);
    (*(*(v13 - 8) + 16))(v12, a1, v13);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD51930, &qword_1EBD51928, &unk_1BE0F3FC0, MEMORY[0x1E697FDF8]);
    sub_1BD7344C4();
    return sub_1BE04F9A4();
  }

  else
  {
    v17[0] = a2;
    result = PKProvisioningSecondaryBackgroundColor();
    if (result)
    {
      v17[1] = sub_1BE0511C4();
      v15 = sub_1BE0518D4();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51928, &unk_1BE0F3FC0);
      (*(*(v16 - 8) + 16))(v6, a1, v16);
      *&v6[*(v4 + 36)] = v15;
      sub_1BD0DE204(v6, v9, &qword_1EBD51918, &qword_1BE0F3FB0);
      sub_1BD0DE19C(v9, v12, &qword_1EBD51918, &qword_1BE0F3FB0);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD51930, &qword_1EBD51928, &unk_1BE0F3FC0, MEMORY[0x1E697FDF8]);
      sub_1BD7344C4();
      sub_1BE04F9A4();
      return sub_1BD0DE53C(v9, &qword_1EBD51918, &qword_1BE0F3FB0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

__n128 sub_1BD733474@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A08, &qword_1BE0F4138);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A10, &qword_1BE0F4140);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - v8;
  if (qword_1EBD36E98 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBDAB608;
  KeyPath = swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A18, &qword_1BE0F4148);
  (*(*(v12 - 8) + 16))(v6, a1, v12);
  v13 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A20, &qword_1BE0F4150) + 36)];
  *v13 = KeyPath;
  v13[1] = v10;
  v14 = qword_1EBD36EA0;
  sub_1BE048964();
  if (v14 != -1)
  {
    swift_once();
  }

  *&v6[*(v4 + 36)] = qword_1EBDAB610;
  sub_1BE048964();
  v15 = PKNaturalUIEnabled() ^ 1;
  v16 = swift_getKeyPath();
  sub_1BD0DE204(v6, v9, &qword_1EBD51A08, &qword_1BE0F4138);
  v17 = &v9[*(v7 + 36)];
  *v17 = v16;
  v17[8] = v15;
  if (PKNaturalUIEnabled())
  {
    sub_1BE051CE4();
  }

  else
  {
    sub_1BE051CD4();
  }

  sub_1BE04EE54();
  sub_1BD0DE204(v9, a2, &qword_1EBD51A10, &qword_1BE0F4140);
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A28, &qword_1BE0F4158) + 36);
  v19 = v22[5];
  *(v18 + 64) = v22[4];
  *(v18 + 80) = v19;
  *(v18 + 96) = v22[6];
  v20 = v22[1];
  *v18 = v22[0];
  *(v18 + 16) = v20;
  result = v22[3];
  *(v18 + 32) = v22[2];
  *(v18 + 48) = result;
  return result;
}

void sub_1BD733758(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A38, &qword_1BE0F4168);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v42 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A40, &qword_1BE0F4170);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v42 - v12;
  v13 = a1[1];
  if (v13)
  {
    sub_1BE048C84();
    v13 = sub_1BE051574();
    if (qword_1EBD36E28 != -1)
    {
      swift_once();
    }

    v14 = qword_1EBDAB590;
    KeyPath = swift_getKeyPath();
    v16 = qword_1EBD36E30;
    sub_1BE048964();
    if (v16 != -1)
    {
      swift_once();
    }

    v17 = qword_1EBDAB598;
    swift_retain_n();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
  }

  else
  {
    KeyPath = 0;
    v14 = 0;
    v17 = 0;
  }

  if (qword_1EBD36E28 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBDAB590;
  v19 = swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A48, &qword_1BE0F4178);
  (*(*(v20 - 8) + 16))(v6, v42, v20);
  v21 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A50, &qword_1BE0F4180) + 36)];
  *v21 = v19;
  v21[1] = v18;
  v22 = qword_1EBD36E30;
  sub_1BE048964();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_1EBDAB598;
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A58, &qword_1BE0F4188) + 36)] = v23;
  v24 = *(a1 + 16);
  v25 = swift_getKeyPath();
  v26 = &v6[*(v43 + 36)];
  *v26 = v25;
  v26[8] = v24;
  sub_1BE048964();
  sub_1BE04EE54();
  sub_1BD0DE204(v6, v10, &qword_1EBD51A38, &qword_1BE0F4168);
  v27 = &v10[*(v44 + 36)];
  v28 = v52;
  *(v27 + 4) = v51;
  *(v27 + 5) = v28;
  *(v27 + 6) = v53;
  v29 = v48;
  *v27 = v47;
  *(v27 + 1) = v29;
  v30 = v50;
  *(v27 + 2) = v49;
  *(v27 + 3) = v30;
  v31 = v45;
  sub_1BD0DE204(v10, v45, &qword_1EBD51A40, &qword_1BE0F4170);
  v32 = v46;
  sub_1BD0DE19C(v31, v46, &qword_1EBD51A40, &qword_1BE0F4170);
  *a3 = v13;
  a3[1] = KeyPath;
  a3[2] = v14;
  a3[3] = v17;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A60, &qword_1BE0F4190);
  sub_1BD0DE19C(v32, a3 + *(v33 + 48), &qword_1EBD51A40, &qword_1BE0F4170);
  sub_1BD7345A8(v13);
  sub_1BD73460C(v13, KeyPath, v14, v17, v34, v35, v36, v37);
  sub_1BD0DE53C(v31, &qword_1EBD51A40, &qword_1BE0F4170);
  sub_1BD0DE53C(v32, &qword_1EBD51A40, &qword_1BE0F4170);
  sub_1BD73460C(v13, KeyPath, v14, v17, v38, v39, v40, v41);
}

void sub_1BD733C1C(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  v9 = *(v6 + 16);
  v14[0] = *v6;
  v14[1] = v9;
  v15 = *(v6 + 32);
  v10 = sub_1BE04F4D4();
  if (qword_1EBD36E38 != -1)
  {
    v13 = v10;
    swift_once();
    v10 = v13;
  }

  v11 = qword_1EBDAB5A0;
  *a6 = v10;
  *(a6 + 8) = v11;
  *(a6 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A30, &qword_1BE0F4160);
  sub_1BD733758(v14, a1, (a6 + *(v12 + 44)));
}

__n128 sub_1BD733CD8@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A68, &qword_1BE0F4198);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  v9 = PKOBKBulletTitleFont(a2 & 1);
  v10 = sub_1BE050484();
  KeyPath = swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A70, &qword_1BE0F41A0);
  (*(*(v12 - 8) + 16))(v8, a1, v12);
  v13 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A78, &qword_1BE0F41A8) + 36)];
  *v13 = KeyPath;
  v13[1] = v10;
  if (qword_1EBD36E48 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBDAB5B8;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A80, &qword_1BE0F41B0) + 36)] = v14;
  v15 = swift_getKeyPath();
  v16 = &v8[*(v6 + 36)];
  *v16 = v15;
  v16[8] = 0;
  v17 = qword_1EBD36E40;
  sub_1BE048964();
  if (v17 != -1)
  {
    swift_once();
  }

  sub_1BE04EE54();
  sub_1BD0DE204(v8, a3, &qword_1EBD51A68, &qword_1BE0F4198);
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A88, &qword_1BE0F41B8) + 36);
  v19 = v22[5];
  *(v18 + 64) = v22[4];
  *(v18 + 80) = v19;
  *(v18 + 96) = v22[6];
  v20 = v22[1];
  *v18 = v22[0];
  *(v18 + 16) = v20;
  result = v22[3];
  *(v18 + 32) = v22[2];
  *(v18 + 48) = result;
  return result;
}

__n128 sub_1BD733F58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A90, &qword_1BE0F41C0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - v5;
  if (qword_1EBD36E50 != -1)
  {
    swift_once();
  }

  v7 = qword_1EBDAB5C0;
  KeyPath = swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51A98, &qword_1BE0F41C8);
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  v10 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51AA0, &qword_1BE0F41D0) + 36)];
  *v10 = KeyPath;
  v10[1] = v7;
  v11 = qword_1EBD36E58;
  sub_1BE048964();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBDAB5C8;
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51AA8, &qword_1BE0F41D8) + 36)] = v12;
  v13 = swift_getKeyPath();
  v14 = &v6[*(v4 + 36)];
  *v14 = v13;
  v14[8] = 0;
  v15 = qword_1EBD36E40;
  sub_1BE048964();
  if (v15 != -1)
  {
    swift_once();
  }

  sub_1BE04EE54();
  sub_1BD0DE204(v6, a2, &qword_1EBD51A90, &qword_1BE0F41C0);
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51AB0, &qword_1BE0F41E0) + 36);
  v17 = v20[5];
  *(v16 + 64) = v20[4];
  *(v16 + 80) = v17;
  *(v16 + 96) = v20[6];
  v18 = v20[1];
  *v16 = v20[0];
  *(v16 + 16) = v18;
  result = v20[3];
  *(v16 + 32) = v20[2];
  *(v16 + 48) = result;
  return result;
}

unint64_t sub_1BD734220()
{
  result = qword_1EBD541F0;
  if (!qword_1EBD541F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD541F0);
  }

  return result;
}

unint64_t sub_1BD734274()
{
  result = qword_1EBD51910;
  if (!qword_1EBD51910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51910);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx07PassKitB030PKOBKHeaderSymbolImageModifier33_AB9F32A9D32F8DF5F2C195D64B5628C9LLVGAaBHPxAaBHD1__AhA0cK0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1BE04EBD4();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1BD7344C4()
{
  result = qword_1EBD51938;
  if (!qword_1EBD51938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51918, &qword_1BE0F3FB0);
    sub_1BD0DE4F4(&qword_1EBD51930, &qword_1EBD51928, &unk_1BE0F3FC0, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0, &unk_1BE0C6C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51938);
  }

  return result;
}

uint64_t sub_1BD7345A8(uint64_t result)
{
  if (result)
  {
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();

    return sub_1BE048964();
  }

  return result;
}

void sub_1BD73460C(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
    a2, v11, v12, v13, v14, v15, v16, v17;
    a4, v18, v19, v20, v21, v22, v23, v24;

    a3, v25, v26, v27, v28, v29, v30, v31;
  }
}

unint64_t sub_1BD73466C()
{
  result = qword_1EBD51AB8;
  if (!qword_1EBD51AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51AC0, &unk_1BE0F41E8);
    sub_1BD0DE4F4(&qword_1EBD51930, &qword_1EBD51928, &unk_1BE0F3FC0, MEMORY[0x1E697FDF8]);
    sub_1BD7344C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51AB8);
  }

  return result;
}

unint64_t sub_1BD734724()
{
  result = qword_1EBD51AC8;
  if (!qword_1EBD51AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51960, &qword_1BE0F4020);
    sub_1BD7347B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51AC8);
  }

  return result;
}

unint64_t sub_1BD7347B0()
{
  result = qword_1EBD51AD0;
  if (!qword_1EBD51AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51958, &qword_1BE0F4018);
    sub_1BD73483C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51AD0);
  }

  return result;
}

unint64_t sub_1BD73483C()
{
  result = qword_1EBD51AD8;
  if (!qword_1EBD51AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51950, &qword_1BE0F4010);
    sub_1BD7348F4();
    sub_1BD0DE4F4(&qword_1EBD51AF0, &qword_1EBD51AF8, &qword_1BE0F41F8, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51AD8);
  }

  return result;
}

unint64_t sub_1BD7348F4()
{
  result = qword_1EBD51AE0;
  if (!qword_1EBD51AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51948, &qword_1BE0F4008);
    sub_1BD0DE4F4(&qword_1EBD51AE8, &qword_1EBD51940, &qword_1BE0F4000, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51AE0);
  }

  return result;
}

unint64_t sub_1BD7349D8()
{
  result = qword_1EBD51B00;
  if (!qword_1EBD51B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51990, &qword_1BE0F4058);
    sub_1BD734A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B00);
  }

  return result;
}

unint64_t sub_1BD734A64()
{
  result = qword_1EBD51B08;
  if (!qword_1EBD51B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51988, &qword_1BE0F4050);
    sub_1BD734AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B08);
  }

  return result;
}

unint64_t sub_1BD734AF0()
{
  result = qword_1EBD51B10;
  if (!qword_1EBD51B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51980, &unk_1BE0F4040);
    sub_1BD734BA8();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B10);
  }

  return result;
}

unint64_t sub_1BD734BA8()
{
  result = qword_1EBD51B18;
  if (!qword_1EBD51B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51978, &qword_1BE0F4038);
    sub_1BD734C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B18);
  }

  return result;
}

unint64_t sub_1BD734C34()
{
  result = qword_1EBD51B20;
  if (!qword_1EBD51B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51970, &qword_1BE0F4030);
    sub_1BD0DE4F4(&qword_1EBD51B28, &qword_1EBD51968, &qword_1BE0F4028, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B20);
  }

  return result;
}

unint64_t sub_1BD734CEC()
{
  result = qword_1EBD51B30;
  if (!qword_1EBD51B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519C8, &qword_1BE0F40F8);
    sub_1BD734D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B30);
  }

  return result;
}

unint64_t sub_1BD734D78()
{
  result = qword_1EBD51B38;
  if (!qword_1EBD51B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519B8, &qword_1BE0F4080);
    sub_1BD734E30();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B38);
  }

  return result;
}

unint64_t sub_1BD734E30()
{
  result = qword_1EBD51B40;
  if (!qword_1EBD51B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519B0, &qword_1BE0F4078);
    sub_1BD734EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B40);
  }

  return result;
}

unint64_t sub_1BD734EBC()
{
  result = qword_1EBD51B48;
  if (!qword_1EBD51B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519A8, &qword_1BE0F4070);
    sub_1BD734F74();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B48);
  }

  return result;
}

unint64_t sub_1BD734F74()
{
  result = qword_1EBD51B50;
  if (!qword_1EBD51B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519A0, &qword_1BE0F4068);
    sub_1BD73502C();
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0, &qword_1BE0B6C50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B50);
  }

  return result;
}

unint64_t sub_1BD73502C()
{
  result = qword_1EBD51B58;
  if (!qword_1EBD51B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51998, &qword_1BE0F4060);
    sub_1BD0DE4F4(&qword_1EBD51B60, &qword_1EBD519C0, &unk_1BE0F40B8, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B58);
  }

  return result;
}

unint64_t sub_1BD735110()
{
  result = qword_1EBD51B68;
  if (!qword_1EBD51B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A00, &qword_1BE0F4130);
    sub_1BD73519C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B68);
  }

  return result;
}

unint64_t sub_1BD73519C()
{
  result = qword_1EBD51B70;
  if (!qword_1EBD51B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519F0, &qword_1BE0F4120);
    sub_1BD735254();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B70);
  }

  return result;
}

unint64_t sub_1BD735254()
{
  result = qword_1EBD51B78;
  if (!qword_1EBD51B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519E8, &qword_1BE0F4118);
    sub_1BD7352E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B78);
  }

  return result;
}

unint64_t sub_1BD7352E0()
{
  result = qword_1EBD51B80;
  if (!qword_1EBD51B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519E0, &qword_1BE0F4110);
    sub_1BD735398();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B80);
  }

  return result;
}

unint64_t sub_1BD735398()
{
  result = qword_1EBD51B88;
  if (!qword_1EBD51B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519D8, &qword_1BE0F4108);
    sub_1BD735450();
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0, &qword_1BE0B6C50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B88);
  }

  return result;
}

unint64_t sub_1BD735450()
{
  result = qword_1EBD51B90;
  if (!qword_1EBD51B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD519D0, &qword_1BE0F4100);
    sub_1BD0DE4F4(&qword_1EBD51B98, &qword_1EBD519F8, &qword_1BE0F4128, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51B90);
  }

  return result;
}

unint64_t sub_1BD735534()
{
  result = qword_1EBD51BA0;
  if (!qword_1EBD51BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A28, &qword_1BE0F4158);
    sub_1BD7355C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BA0);
  }

  return result;
}

unint64_t sub_1BD7355C0()
{
  result = qword_1EBD51BA8;
  if (!qword_1EBD51BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A10, &qword_1BE0F4140);
    sub_1BD735678();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BA8);
  }

  return result;
}

unint64_t sub_1BD735678()
{
  result = qword_1EBD51BB0;
  if (!qword_1EBD51BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A08, &qword_1BE0F4138);
    sub_1BD735730();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BB0);
  }

  return result;
}

unint64_t sub_1BD735730()
{
  result = qword_1EBD51BB8;
  if (!qword_1EBD51BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A20, &qword_1BE0F4150);
    sub_1BD0DE4F4(&qword_1EBD51BC0, &qword_1EBD51A18, &qword_1BE0F4148, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BB8);
  }

  return result;
}

unint64_t sub_1BD735814()
{
  result = qword_1EBD51BD8;
  if (!qword_1EBD51BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A88, &qword_1BE0F41B8);
    sub_1BD7358A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BD8);
  }

  return result;
}

unint64_t sub_1BD7358A0()
{
  result = qword_1EBD51BE0;
  if (!qword_1EBD51BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A68, &qword_1BE0F4198);
    sub_1BD735958();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BE0);
  }

  return result;
}

unint64_t sub_1BD735958()
{
  result = qword_1EBD51BE8;
  if (!qword_1EBD51BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A80, &qword_1BE0F41B0);
    sub_1BD735A10();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BE8);
  }

  return result;
}

unint64_t sub_1BD735A10()
{
  result = qword_1EBD51BF0;
  if (!qword_1EBD51BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A78, &qword_1BE0F41A8);
    sub_1BD0DE4F4(&qword_1EBD51BF8, &qword_1EBD51A70, &qword_1BE0F41A0, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51BF0);
  }

  return result;
}

unint64_t sub_1BD735AF4()
{
  result = qword_1EBD51C00;
  if (!qword_1EBD51C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51AB0, &qword_1BE0F41E0);
    sub_1BD735B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51C00);
  }

  return result;
}

unint64_t sub_1BD735B80()
{
  result = qword_1EBD51C08;
  if (!qword_1EBD51C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51A90, &qword_1BE0F41C0);
    sub_1BD735C38();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51C08);
  }

  return result;
}

unint64_t sub_1BD735C38()
{
  result = qword_1EBD51C10;
  if (!qword_1EBD51C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51AA8, &qword_1BE0F41D8);
    sub_1BD735CF0();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51C10);
  }

  return result;
}

unint64_t sub_1BD735CF0()
{
  result = qword_1EBD51C18;
  if (!qword_1EBD51C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51AA0, &qword_1BE0F41D0);
    sub_1BD0DE4F4(&qword_1EBD51C20, &qword_1EBD51A98, &qword_1BE0F41C8, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51C18);
  }

  return result;
}

uint64_t sub_1BD735E48@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, int *a3@<X2>, uint64_t (*a4)(BOOL, uint64_t, uint64_t, void *)@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v48 - v14;
  v15 = sub_1BE049204();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v29 = &v48 - v27;
  v30 = *(a1 + 16);
  if (v30)
  {
    v48 = a4;
    v32 = *(v16 + 16);
    v31 = v16 + 16;
    v33 = a1 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v61 = *(v31 + 56);
    v62 = v32;
    v59 = (v31 + 72);
    v60 = (v31 + 16);
    v58 = *a3;
    v50 = (v31 + 80);
    v51 = (v31 - 8);
    v34 = (v9 + 32);
    v35 = MEMORY[0x1E69E7CC0];
    v54 = v9;
    v55 = v8;
    v52 = &v48 - v27;
    v53 = v31;
    v32(v29, v33, v15, v28);
    while (1)
    {
      (*v60)(v18, v29, v15);
      v36 = (*v59)(v18, v15);
      if (v36 == v58)
      {
        (*v50)(v18, v15);
        v37 = *v34;
        v38 = v57;
        (*v34)(v57, v18, v8);
        v39 = v8;
        v40 = v56;
        v37(v56, v38, v39);
        v37(v63, v40, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = v48(0, v35[2] + 1, 1, v35);
        }

        v42 = v35[2];
        v41 = v35[3];
        if (v42 >= v41 >> 1)
        {
          v35 = v48(v41 > 1, v42 + 1, 1, v35);
        }

        v35[2] = v42 + 1;
        v9 = v54;
        v43 = v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v54 + 72) * v42;
        v8 = v55;
        v37(v43, v63, v55);
        v29 = v52;
      }

      else
      {
        (*v51)(v18, v15);
      }

      v33 += v61;
      if (!--v30)
      {
        break;
      }

      v62(v29, v33, v15, v28);
    }
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  if (v35[2])
  {
    v44 = v49;
    (*(v9 + 16))(v49, v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8, v28);
    v45 = v9;
    v46 = 0;
  }

  else
  {
    v45 = v9;
    v46 = 1;
    v44 = v49;
  }

  v35, v20, v21, v22, v23, v24, v25, v26;
  return (*(v45 + 56))(v44, v46, 1, v8);
}

uint64_t sub_1BD736290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48360, &unk_1BE0DF0B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358, &qword_1BE0DBE98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1BE0491B4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v10, &qword_1EBD3F7C0, &unk_1BE0D6570);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BD0DE53C(v10, &qword_1EBD3F7C0, &unk_1BE0D6570);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_1BE0491A4();
    v15 = sub_1BE049294();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v7, 1, v15) == 1)
    {
      sub_1BD0DE53C(v7, &qword_1EBD48358, &qword_1BE0DBE98);
    }

    else
    {
      v17 = sub_1BE049284();
      v19 = v18;
      (*(v16 + 8))(v7, v15);
      if (v19)
      {
        (*(v12 + 8))(v14, v11);
        return v17;
      }
    }

    sub_1BE049194();
    v21 = sub_1BE04A0D4();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v4, 1, v21) == 1)
    {
      (*(v12 + 8))(v14, v11);
      sub_1BD0DE53C(v4, &qword_1EBD48360, &unk_1BE0DF0B0);
    }

    else
    {
      v23 = sub_1BE04A0B4();
      v25 = v24;
      (*(v12 + 8))(v14, v11);
      (*(v22 + 8))(v4, v21);
      if (v25)
      {
        return v23;
      }
    }
  }

  return sub_1BE0499B4();
}

BOOL sub_1BD736680()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358, &qword_1BE0DBE98);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48360, &unk_1BE0DF0B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0, &unk_1BE0D6570);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_1BE0491B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TransactionContext(0);
  if ((sub_1BE049124() & 1) == 0)
  {
    return 0;
  }

  sub_1BD0DE19C(v0 + *(v14 + 28), v9, &qword_1EBD3F7C0, &unk_1BE0D6570);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD3F7C0, &unk_1BE0D6570);
    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_1BE049194();
  v16 = sub_1BE04A0D4();
  v17 = (*(*(v16 - 8) + 48))(v6, 1, v16);
  sub_1BD0DE53C(v6, &qword_1EBD48360, &unk_1BE0DF0B0);
  if (v17 == 1)
  {
    sub_1BE0491A4();
    (*(v11 + 8))(v13, v10);
    v18 = sub_1BE049294();
    v19 = (*(*(v18 - 8) + 48))(v3, 1, v18) != 1;
    sub_1BD0DE53C(v3, &qword_1EBD48358, &qword_1BE0DBE98);
    return v19;
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    return 1;
  }
}

uint64_t sub_1BD7369D4()
{
  v1[19] = v0;
  v2 = sub_1BE04D214();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358, &qword_1BE0DBE98);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD736AD8, 0, 0);
}

uint64_t sub_1BD736AD8(uint64_t a1)
{
  v2 = v1[24];
  sub_1BE0491A4();
  v3 = sub_1BE049294();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v6 = v5(v2, 1, v3);
  v7 = v1[24];
  if (v6 == 1)
  {
    sub_1BD0DE53C(v1[24], &qword_1EBD48358, &qword_1BE0DBE98);
LABEL_6:

    v23 = v1[1];

    return v23(0);
  }

  v8 = sub_1BE049274();
  v9 = *(v4 + 8);
  v9(v7, v3);
  if (!v8)
  {
    goto LABEL_6;
  }

  v28 = v9;
  v10 = v1[23];
  v11 = [objc_allocWithZone(MEMORY[0x1E696F260]) init];
  v1[25] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BE0B69E0;
  *(v12 + 56) = MEMORY[0x1E69E76D8];
  *(v12 + 32) = v8;
  v13 = sub_1BE052724();
  v12, v14, v15, v16, v17, v18, v19, v20;
  [v11 _setMuids_];

  sub_1BE0491A4();
  v21 = v5(v10, 1, v3);
  v22 = v1[23];
  if (v21 == 1)
  {
    sub_1BD0DE53C(v1[23], &qword_1EBD48358, &qword_1BE0DBE98);
  }

  else
  {
    v25 = sub_1BE049264();
    v28(v22, v3);
    if ((v25 & 0x100000000) == 0 && v25 >= 1)
    {
      [v11 _setResultProviderID_];
    }
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E696F248]) initWithRequest_];
  v1[26] = v26;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1BD736E64;
  v27 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51C88, &unk_1BE0F4270);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1BD16F63C;
  v1[13] = &block_descriptor_169;
  v1[14] = v27;
  [v26 startWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1BD736E64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1BD7370CC;
  }

  else
  {
    v2 = sub_1BD736F74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD736F74()
{
  v1 = v0[18];
  v2 = [v1 mapItems];
  sub_1BD73A8A8();
  v3 = sub_1BE052744();

  if (v3 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v17 = v0[25];
    v16 = v0[26];

    v3, v18, v19, v20, v21, v22, v23, v24;
    v13 = 0;
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1BFB40900](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v13 = v5;
  v15 = v0[25];
  v14 = v0[26];
  v3, v6, v7, v8, v9, v10, v11, v12;

LABEL_9:

  v25 = v0[1];

  return v25(v13);
}

uint64_t sub_1BD7370CC(uint64_t a1)
{
  v2 = v1[27];
  swift_willThrow();
  sub_1BE04D114();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v4, v5, "MapKit error: %@", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    v11 = (v1 + 26);
    v12 = v4;
    v4 = v1[25];
  }

  else
  {
    v12 = v1[26];
    v11 = (v1 + 25);
  }

  v13 = v1[27];
  v15 = v1[21];
  v14 = v1[22];
  v16 = v1[20];

  (*(v15 + 8))(v14, v16);

  v17 = v1[1];

  return v17(0);
}

uint64_t sub_1BD7372C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8, &qword_1BE0F4280);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v6, v5, &qword_1EBD3F7D8, &qword_1BE0F4280);
  v7 = sub_1BD73A94C(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD3F7D8, &qword_1BE0F4280);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3, &unk_1BE0F4244);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BD0DE19C(a1, v5, &qword_1EBD3F7D8, &qword_1BE0F4280);
    swift_beginAccess();
    sub_1BD2C7C4C(v5, v1 + v6, &qword_1EBD3F7D8, &qword_1BE0F4280);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD3F7D8, &qword_1BE0F4280);
}

uint64_t sub_1BD7374EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__account;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v6, v5, &qword_1EBD498C8, &unk_1BE0DF580);
  v7 = sub_1BD73AC6C(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD498C8, &unk_1BE0DF580);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3, &unk_1BE0F4244);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BD0DE19C(a1, v5, &qword_1EBD498C8, &unk_1BE0DF580);
    swift_beginAccess();
    sub_1BD2C7C4C(v5, v1 + v6, &qword_1EBD498C8, &unk_1BE0DF580);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD498C8, &unk_1BE0DF580);
}

double sub_1BD7376F4()
{
  KeyPath = swift_getKeyPath();
  sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3, &unk_1BE0F4244);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  sub_1BE048C84();
  return result;
}

void sub_1BD7377A0(void *a1)
{
  v3 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights;
  v4 = *(v1 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights);
  v5 = sub_1BE048C84();
  v6 = sub_1BD400C98(v5, a1);
  v4, v7, v8, v9, v10, v11, v12, v13;
  if (v6)
  {
    v21 = *(v1 + v3);
    *(v1 + v3) = a1;

    v21, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3, &unk_1BE0F4244);
    sub_1BE04B584();
    KeyPath, v23, v24, v25, v26, v27, v28, v29;
    a1, v30, v31, v32, v33, v34, v35, v36;
  }
}

uint64_t sub_1BD737920@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v20 = v5;
  sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3, &unk_1BE0F4244);
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = *a2;
  swift_beginAccess();
  return sub_1BD0DE19C(v20 + v18, a5, a3, a4);
}

uint64_t sub_1BD737A00(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__historyToken;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v6, v5, &qword_1EBD3F788, &unk_1BE0E2970);
  v7 = sub_1BD73AF8C(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD3F788, &unk_1BE0E2970);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3, &unk_1BE0F4244);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    sub_1BD0DE19C(a1, v5, &qword_1EBD3F788, &unk_1BE0E2970);
    swift_beginAccess();
    sub_1BD2C7C4C(v5, v1 + v6, &qword_1EBD3F788, &unk_1BE0E2970);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD3F788, &unk_1BE0E2970);
}

uint64_t sub_1BD737C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8, &qword_1BE0F4280);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  v13 = sub_1BE049A94();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v4 + v12, 1, 1, v13);
  v16 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__account;
  v17 = sub_1BE0495A4();
  (*(*(v17 - 8) + 56))(v4 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__historyToken;
  v19 = sub_1BE048F54();
  (*(*(v19 - 8) + 56))(v4 + v18, 1, 1, v19);
  sub_1BE04B5C4();
  (*(v14 + 16))(v11, a1, v13);
  v15(v11, 0, 1, v13);
  sub_1BD0DE53C(v4 + v12, &qword_1EBD3F7D8, &qword_1BE0F4280);
  sub_1BD0DE204(v11, v4 + v12, &qword_1EBD3F7D8, &qword_1BE0F4280);
  sub_1BE049A14();
  v20 = sub_1BE04AFE4();
  (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  sub_1BD0DE204(v8, v4 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID, &qword_1EBD39980, &qword_1BE0BF3C0);
  v21 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_institution;
  v22 = sub_1BE049184();
  v23 = *(v22 - 8);
  v24 = v4 + v21;
  v25 = v27;
  (*(v23 + 16))(v24, v27, v22);
  *(v4 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_style) = v28;
  (*(v23 + 8))(v25, v22);
  (*(v14 + 8))(a1, v13);
  *(v4 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights) = MEMORY[0x1E69E7CC0];
  return v4;
}

uint64_t sub_1BD737F84()
{
  v1[14] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  v1[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8, &unk_1BE1091B0);
  v1[17] = swift_task_alloc();
  v2 = sub_1BE049B64();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = sub_1BE049C24();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0, &unk_1BE0B7DD0);
  v1[27] = swift_task_alloc();
  v5 = sub_1BE049D74();
  v1[28] = v5;
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  v1[31] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v1[32] = v6;
  v1[33] = *(v6 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8, &qword_1BE0F4280);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v7 = sub_1BE04D214();
  v1[39] = v7;
  v1[40] = *(v7 - 8);
  v1[41] = swift_task_alloc();
  sub_1BE0528A4();
  v1[42] = sub_1BE052894();
  v9 = sub_1BE052844();
  v1[43] = v9;
  v1[44] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BD7383B8, v9, v8);
}

uint64_t sub_1BD7383B8()
{
  sub_1BE04D044();
  v1 = sub_1BE04D204();
  v2 = sub_1BE052C34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BD026000, v1, v2, "Load view model", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  v8 = *(v0 + 192);
  v9 = *(v0 + 200);
  v10 = *(v0 + 112);

  (*(v5 + 8))(v4, v7);
  KeyPath = swift_getKeyPath();
  *(v0 + 360) = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel___observationRegistrar;
  *(v0 + 80) = v10;
  *(v0 + 368) = sub_1BD73A904(&qword_1EBD51C98, _s9ViewModelCMa_3, &unk_1BE0F4244);
  sub_1BE04B594();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  *(v0 + 376) = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
  swift_beginAccess();
  sub_1BD0DE19C(v10 + v19, v6, &qword_1EBD3F7D8, &qword_1BE0F4280);
  v20 = *(v9 + 48);
  *(v0 + 384) = v20;
  *(v0 + 392) = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v8) = v20(v6, 1, v8);
  sub_1BD0DE53C(v6, &qword_1EBD3F7D8, &qword_1BE0F4280);
  if (v8 != 1)
  {
    goto LABEL_6;
  }

  v21 = *(v0 + 256);
  v22 = *(v0 + 264);
  v23 = *(v0 + 248);
  sub_1BD0DE19C(*(v0 + 112) + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID, v23, &qword_1EBD39980, &qword_1BE0BF3C0);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    sub_1BD0DE53C(*(v0 + 248), &qword_1EBD39980, &qword_1BE0BF3C0);
LABEL_6:
    v24 = *(v0 + 384);
    v25 = *(v0 + 376);
    v26 = *(v0 + 288);
    v27 = *(v0 + 192);
    v28 = *(v0 + 112);
    v29 = swift_getKeyPath();
    *(v0 + 88) = v28;
    sub_1BE04B594();
    v29, v30, v31, v32, v33, v34, v35, v36;
    sub_1BD0DE19C(v28 + v25, v26, &qword_1EBD3F7D8, &qword_1BE0F4280);
    if (v24(v26, 1, v27) == 1)
    {
      v44 = *(v0 + 288);
      *(v0 + 336), v37, v38, v39, v40, v41, v42, v43;
      sub_1BD0DE53C(v44, &qword_1EBD3F7D8, &qword_1BE0F4280);

      v45 = *(v0 + 8);

      return v45();
    }

    else
    {
      v47 = *(v0 + 208);
      v48 = *(v0 + 136);
      (*(*(v0 + 200) + 32))(v47, *(v0 + 288), *(v0 + 192));
      *(v0 + 432) = sub_1BE0490F4();
      *(v0 + 440) = sub_1BE0490B4();
      v49 = swift_task_alloc();
      *(v0 + 448) = v49;
      *(v49 + 16) = v47;
      v50 = sub_1BE0495A4();
      *(v0 + 456) = v50;
      *(v0 + 96) = v50;
      sub_1BE04B444();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8, &unk_1BE0DF620);
      (*(*(v51 - 8) + 56))(v48, 0, 1, v51);
      sub_1BE049B54();
      v52 = swift_task_alloc();
      *(v0 + 464) = v52;
      *v52 = v0;
      v52[1] = sub_1BD738FF8;
      v53 = *(v0 + 184);
      v54 = *(v0 + 160);

      return MEMORY[0x1EEDC14B8](v53, v54);
    }
  }

  v55 = *(v0 + 280);
  v56 = *(v0 + 216);
  v57 = *(v0 + 192);
  (*(*(v0 + 264) + 32))(v55, *(v0 + 248), *(v0 + 256));
  sub_1BE0490F4();
  *(v0 + 400) = sub_1BE0490B4();
  v58 = swift_task_alloc();
  *(v0 + 408) = v58;
  *(v58 + 16) = v55;
  *(v0 + 104) = v57;
  sub_1BE04B444();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  (*(*(v59 - 8) + 56))(v56, 0, 1, v59);
  v60 = sub_1BE049CE4();
  v61 = MEMORY[0x1E6967BC8];
  *(v0 + 40) = v60;
  *(v0 + 48) = v61;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1BE049CD4();
  v62 = swift_task_alloc();
  *(v0 + 416) = v62;
  *v62 = v0;
  v62[1] = sub_1BD738A98;
  v63 = *(v0 + 240);

  return MEMORY[0x1EEDC14D8](v63, v0 + 16);
}

uint64_t sub_1BD738A98()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  *(*v1 + 424) = v0;

  v3, v4, v5, v6, v7, v8, v9, v10;
  if (v0)
  {
    v18 = *(v2 + 344);
    v19 = *(v2 + 352);
    v20 = sub_1BD7396CC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16), v11, v12, v13, v14, v15, v16, v17);
    v18 = *(v2 + 344);
    v19 = *(v2 + 352);
    v20 = sub_1BD738BD8;
  }

  return MEMORY[0x1EEE6DFA0](v20, v18, v19);
}

uint64_t sub_1BD738BD8(uint64_t a1)
{
  v2 = sub_1BE049D54();
  if (v2[2])
  {
    v10 = v2;
    (*(*(v1 + 200) + 16))(*(v1 + 296), v2 + ((*(*(v1 + 200) + 80) + 32) & ~*(*(v1 + 200) + 80)), *(v1 + 192));
    v2 = v10;
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(v1 + 296);
  v51 = *(v1 + 280);
  v13 = *(v1 + 264);
  v50 = *(v1 + 256);
  v14 = *(v1 + 232);
  v15 = *(v1 + 240);
  v16 = *(v1 + 224);
  v18 = *(v1 + 192);
  v17 = *(v1 + 200);
  v2, v3, v4, v5, v6, v7, v8, v9;
  (*(v17 + 56))(v12, v11, 1, v18);
  sub_1BD7372C0(v12);
  (*(v14 + 8))(v15, v16);
  (*(v13 + 8))(v51, v50);

  v19 = *(v1 + 384);
  v20 = *(v1 + 376);
  v21 = *(v1 + 288);
  v22 = *(v1 + 192);
  v23 = *(v1 + 112);
  KeyPath = swift_getKeyPath();
  *(v1 + 88) = v23;
  sub_1BE04B594();
  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  sub_1BD0DE19C(v23 + v20, v21, &qword_1EBD3F7D8, &qword_1BE0F4280);
  if (v19(v21, 1, v22) == 1)
  {
    v39 = *(v1 + 288);
    *(v1 + 336), v32, v33, v34, v35, v36, v37, v38;
    sub_1BD0DE53C(v39, &qword_1EBD3F7D8, &qword_1BE0F4280);

    v40 = *(v1 + 8);

    return v40();
  }

  else
  {
    v42 = *(v1 + 208);
    v43 = *(v1 + 136);
    (*(*(v1 + 200) + 32))(v42, *(v1 + 288), *(v1 + 192));
    *(v1 + 432) = sub_1BE0490F4();
    *(v1 + 440) = sub_1BE0490B4();
    v44 = swift_task_alloc();
    *(v1 + 448) = v44;
    *(v44 + 16) = v42;
    v45 = sub_1BE0495A4();
    *(v1 + 456) = v45;
    *(v1 + 96) = v45;
    sub_1BE04B444();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8, &unk_1BE0DF620);
    (*(*(v46 - 8) + 56))(v43, 0, 1, v46);
    sub_1BE049B54();
    v47 = swift_task_alloc();
    *(v1 + 464) = v47;
    *v47 = v1;
    v47[1] = sub_1BD738FF8;
    v48 = *(v1 + 184);
    v49 = *(v1 + 160);

    return MEMORY[0x1EEDC14B8](v48, v49);
  }
}

uint64_t sub_1BD738FF8()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 144);
  *(*v1 + 472) = v0;

  (*(v5 + 8))(v4, v6);
  v3, v7, v8, v9, v10, v11, v12, v13;
  v14 = *(v2 + 352);
  v15 = *(v2 + 344);
  if (v0)
  {
    v16 = sub_1BD739830;
  }

  else
  {
    v16 = sub_1BD7391B4;
  }

  return MEMORY[0x1EEE6DFA0](v16, v15, v14);
}

uint64_t sub_1BD7391B4()
{
  v1 = sub_1BE049C14();
  v9 = v0[57];
  if (v1[2])
  {
    v10 = *(v9 - 8);
    v11 = v1;
    (*(v10 + 16))(v0[16], v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);
    v11, v12, v13, v14, v15, v16, v17, v18;
    v19 = 0;
  }

  else
  {
    v1, v2, v3, v4, v5, v6, v7, v8;
    v10 = *(v9 - 8);
    v19 = 1;
  }

  v20 = v0[16];
  (*(v10 + 56))(v20, v19, 1, v0[57]);
  sub_1BD7374EC(v20);
  v0[60] = sub_1BE0490B4();
  sub_1BE049A14();
  v21 = swift_task_alloc();
  v0[61] = v21;
  *v21 = v0;
  v21[1] = sub_1BD73937C;
  v22 = v0[34];

  return MEMORY[0x1EEDC1500](v22);
}

uint64_t sub_1BD73937C(uint64_t a1)
{
  v4 = *v2;
  v4[62] = v1;

  v5 = v4[60];
  v6 = v4[34];
  v7 = v4[33];
  v8 = v4[32];
  if (v1)
  {
    (*(v7 + 8))(v6, v8);
    v5, v9, v10, v11, v12, v13, v14, v15;
    v16 = v4[43];
    v17 = v4[44];
    v18 = sub_1BD73998C;
  }

  else
  {
    v4[63] = a1;
    (*(v7 + 8))(v6, v8);
    v5, v19, v20, v21, v22, v23, v24, v25;
    v16 = v4[43];
    v17 = v4[44];
    v18 = sub_1BD739528;
  }

  return MEMORY[0x1EEE6DFA0](v18, v16, v17);
}

uint64_t sub_1BD739528(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 504);
  v11 = *(v8 + 200);
  v10 = *(v8 + 208);
  v13 = *(v8 + 184);
  v12 = *(v8 + 192);
  v15 = *(v8 + 168);
  v14 = *(v8 + 176);
  v16 = *(v8 + 120);
  *(v8 + 336), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD7377A0(v9);
  sub_1BE049C04();
  sub_1BD737A00(v16);
  (*(v14 + 8))(v13, v15);
  (*(v11 + 8))(v10, v12);

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_1BD7396CC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 280);
  v10 = *(v8 + 256);
  v11 = *(v8 + 264);
  *(v8 + 336), a2, a3, a4, a5, a6, a7, a8;
  __swift_destroy_boxed_opaque_existential_0((v8 + 16), v12, v13, v14, v15, v16, v17, v18);
  (*(v11 + 8))(v9, v10);

  v19 = *(v8 + 8);

  return v19();
}

uint64_t sub_1BD739830(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 200);
  v9 = *(v8 + 208);
  v11 = *(v8 + 192);
  *(v8 + 336), a2, a3, a4, a5, a6, a7, a8;
  (*(v10 + 8))(v9, v11);

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1BD73998C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 200);
  v9 = *(v8 + 208);
  v12 = *(v8 + 184);
  v11 = *(v8 + 192);
  v13 = *(v8 + 168);
  v14 = *(v8 + 176);
  *(v8 + 336), a2, a3, a4, a5, a6, a7, a8;
  (*(v14 + 8))(v12, v13);
  (*(v10 + 8))(v9, v11);

  v15 = *(v8 + 8);

  return v15();
}

uint64_t sub_1BD739B04@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828, &unk_1BE0E8C00);
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8, &qword_1BE0DF8F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0, &qword_1BE0B7F50);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  (*(v9 + 8))(v11, v8);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830, &qword_1BE0E29F0);
  a3[4] = sub_1BD58197C();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0, &qword_1BE0B7F50, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828, &unk_1BE0E8C00, MEMORY[0x1E6968D20]);
  sub_1BD73A904(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v24 = v27;
  sub_1BE04A714();
  (*(v28 + 8))(v7, v24);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1BD739EA0@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v43 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E60, &unk_1BE0F42F0);
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E68, &unk_1BE0B7EC0);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70, &unk_1BE0F4300);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E78, &qword_1BE0B7ED0);
  v14 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v40 - v15;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70, &unk_1BE0F4300, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  (*(v11 + 8))(v13, v10);
  sub_1BE049A94();
  sub_1BE04A7B4();
  v25 = swift_getKeyPath();
  sub_1BD0DE4F4(&qword_1EBD38E88, &qword_1EBD38E60, &unk_1BE0F42F0, MEMORY[0x1E6968D20]);
  v26 = v42;
  sub_1BE04A724();
  v25, v27, v28, v29, v30, v31, v32, v33;
  (*(v3 + 8))(v5, v26);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E90, &qword_1BE0F4370);
  v35 = v43;
  v43[3] = v34;
  v35[4] = sub_1BD0F9E9C();
  __swift_allocate_boxed_opaque_existential_1(v35);
  v36 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD38ED0, &qword_1EBD38E78, &qword_1BE0B7ED0, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD38ED8, &qword_1EBD38E68, &unk_1BE0B7EC0, v36);
  sub_1BD73A904(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v37 = v41;
  v38 = v44;
  sub_1BE04A714();
  (*(v45 + 8))(v9, v38);
  return (*(v14 + 8))(v16, v37);
}

uint64_t sub_1BD73A334()
{
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction, &qword_1EBD3F7D8, &qword_1BE0F4280);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__account, &qword_1EBD498C8, &unk_1BE0DF580);
  *(v0 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights), v1, v2, v3, v4, v5, v6, v7;
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__historyToken, &qword_1EBD3F788, &unk_1BE0E2970);
  v8 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_institution;
  v9 = sub_1BE049184();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID, &qword_1EBD39980, &qword_1BE0BF3C0);
  v10 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel___observationRegistrar;
  v11 = sub_1BE04B5D4();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return swift_deallocClassInstance();
}

void sub_1BD73A4C8(uint64_t a1)
{
  sub_1BD73A854(319, &qword_1EBD51C68, MEMORY[0x1E6967A40]);
  if (v1 <= 0x3F)
  {
    sub_1BD73A854(319, &qword_1EBD4D598, MEMORY[0x1E6967810]);
    if (v2 <= 0x3F)
    {
      sub_1BD73A854(319, &qword_1EBD3F768, MEMORY[0x1E69675F8]);
      if (v3 <= 0x3F)
      {
        sub_1BE049184();
        if (v4 <= 0x3F)
        {
          sub_1BD73A854(319, &qword_1EBD36A28, MEMORY[0x1E69695A8]);
          if (v5 <= 0x3F)
          {
            sub_1BE04B5D4();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1BD73A750(uint64_t a1)
{
  sub_1BE049A94();
  if (v1 <= 0x3F)
  {
    sub_1BE0495A4();
    if (v2 <= 0x3F)
    {
      sub_1BE049184();
      if (v3 <= 0x3F)
      {
        sub_1BD73A854(319, &qword_1EBD46190, MEMORY[0x1E69676D0]);
        if (v4 <= 0x3F)
        {
          sub_1BD73A854(319, &qword_1EBD51C80, MEMORY[0x1E6967C18]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD73A854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BD73A8A8()
{
  result = qword_1EBD51C90;
  if (!qword_1EBD51C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD51C90);
  }

  return result;
}

uint64_t sub_1BD73A904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD73A94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049A94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7D8, &qword_1BE0F4280);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CA0, &unk_1BE0F4400);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v21 - v12, &qword_1EBD3F7D8, &qword_1BE0F4280);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD3F7D8, &qword_1BE0F4280);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BD0DE19C(v13, v10, &qword_1EBD3F7D8, &qword_1BE0F4280);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1BD73A904(&qword_1EBD459C0, MEMORY[0x1E6967A40], MEMORY[0x1E6967A50]);
      v18 = sub_1BE052334();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1BD0DE53C(v13, &qword_1EBD3F7D8, &qword_1BE0F4280);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v13, &qword_1EBD51CA0, &unk_1BE0F4400);
    v17 = 1;
    return v17 & 1;
  }

  sub_1BD0DE53C(v13, &qword_1EBD3F7D8, &qword_1BE0F4280);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1BD73AC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0495A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8, &unk_1BE0DF580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D840, &qword_1BE0E8F10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v21 - v12, &qword_1EBD498C8, &unk_1BE0DF580);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD498C8, &unk_1BE0DF580);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BD0DE19C(v13, v10, &qword_1EBD498C8, &unk_1BE0DF580);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1BD73A904(&qword_1EBD4D848, MEMORY[0x1E6967810], MEMORY[0x1E6967820]);
      v18 = sub_1BE052334();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1BD0DE53C(v13, &qword_1EBD498C8, &unk_1BE0DF580);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v13, &qword_1EBD4D840, &qword_1BE0E8F10);
    v17 = 1;
    return v17 & 1;
  }

  sub_1BD0DE53C(v13, &qword_1EBD498C8, &unk_1BE0DF580);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1BD73AF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE048F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788, &unk_1BE0E2970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F950, &unk_1BE0E2AB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v21 - v12, &qword_1EBD3F788, &unk_1BE0E2970);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD3F788, &unk_1BE0E2970);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BD0DE19C(v13, v10, &qword_1EBD3F788, &unk_1BE0E2970);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1BD73A904(&qword_1EBD3F958, MEMORY[0x1E69675F8], MEMORY[0x1E6967600]);
      v18 = sub_1BE052334();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1BD0DE53C(v13, &qword_1EBD3F788, &unk_1BE0E2970);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v13, &qword_1EBD3F950, &unk_1BE0E2AB0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1BD0DE53C(v13, &qword_1EBD3F788, &unk_1BE0E2970);
  v17 = 0;
  return v17 & 1;
}

void sub_1BD73B2E0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights) = *(v0 + 24);
  sub_1BE048C84();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD73B3C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CA8, &qword_1BE0F4530);
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v89 - v3;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CB0, &qword_1BE0F4538);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v89 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37288, &qword_1BE0F4540);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v102 = &v89 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CB8, &qword_1BE0F4548);
  v6 = *(v93 - 1);
  MEMORY[0x1EEE9AC00](v93);
  v8 = &v89 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CC0, &qword_1BE0F4550);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v89 - v10;
  sub_1BD73BDB0(v2, (&v89 - v10));
  v12 = sub_1BE04F434();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x1E697C438], v12, v14);
  v17 = sub_1BD73FB5C();
  sub_1BE050E84();
  (*(v13 + 8))(v16, v12);
  sub_1BD0DE53C(v11, &qword_1EBD51CC0, &qword_1BE0F4550);
  v103 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D18, &qword_1BE0F4588);
  *&v105[0] = v9;
  *(&v105[0] + 1) = v17;
  swift_getOpaqueTypeConformance2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51D20, &qword_1BE0F4590);
  v19 = sub_1BD0DE4F4(&qword_1EBD51D28, &qword_1EBD51D20, &qword_1BE0F4590, MEMORY[0x1E697BEF0]);
  *&v105[0] = v18;
  *(&v105[0] + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v93;
  sub_1BE051024();
  (*(v6 + 8))(v8, v20);
  sub_1BE0528A4();
  sub_1BD73FF48(v2, v105);
  v21 = sub_1BE052894();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  v24 = *(v2 + 80);
  *(v22 + 96) = *(v2 + 64);
  *(v22 + 112) = v24;
  *(v22 + 128) = *(v2 + 96);
  v25 = *(v2 + 16);
  *(v22 + 32) = *v2;
  *(v22 + 48) = v25;
  v26 = *(v2 + 48);
  *(v22 + 64) = *(v2 + 32);
  *(v22 + 80) = v26;
  v27 = sub_1BE0528D4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v89 - v30;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v92 = sub_1BE04EAA4();
    v93 = &v89;
    v91 = *(v92 - 8);
    MEMORY[0x1EEE9AC00](v92);
    v90 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v105[0] = 0;
    *(&v105[0] + 1) = 0xE000000000000000;
    sub_1BE053834();
    *(&v105[0] + 1), v33, v34, v35, v36, v37, v38, v39;
    *&v105[0] = 0xD00000000000003CLL;
    *(&v105[0] + 1) = 0x80000001BE137A20;
    v104 = 53;
    v40 = sub_1BE053B24();
    v42 = v41;
    MEMORY[0x1BFB3F610](v40);
    v42, v43, v44, v45, v46, v47, v48, v49;
    v51 = MEMORY[0x1EEE9AC00](v50);
    (*(v28 + 16))(&v89 - v30, &v89 - v30, v27, v51);
    v52 = v90;
    sub_1BE04EA94();
    (*(v28 + 8))(v31, v27);
    v53 = v96;
    (*(v94 + 32))(v96, v102, v95);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37290, &unk_1BE0B12B0);
    (*(v91 + 32))(&v53[*(v54 + 36)], v52, v92);
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37298, &unk_1BE0F45E0);
    v53 = v96;
    v56 = &v96[*(v55 + 36)];
    v57 = sub_1BE04E7B4();
    (*(v28 + 32))(&v56[*(v57 + 20)], &v89 - v30, v27);
    *v56 = &unk_1BE0F45A0;
    *(v56 + 1) = v22;
    (*(v94 + 32))(v53, v102, v95);
  }

  v58 = v100;
  (*(v97 + 32))(v100, v53, v98);
  v59 = (v58 + *(v99 + 36));
  *v59 = sub_1BD73D408;
  v59[1] = 0;
  v59[2] = 0;
  v59[3] = 0;
  v105[0] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30, &qword_1BE0F45B0);
  sub_1BE0516A4();
  v60 = v104;
  KeyPath = swift_getKeyPath();
  *&v105[0] = v60;
  sub_1BD7407B8(&qword_1EBD402C0, _s9ViewModelCMa_0, &unk_1BE0C7C70);
  sub_1BE04B594();
  KeyPath, v62, v63, v64, v65, v66, v67, v68;
  v69 = v60[OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriod];
  v60, v70, v71, v72, v73, v74, v75, v76;
  LOBYTE(v104) = v69;
  v77 = swift_allocObject();
  v78 = *(v2 + 80);
  *(v77 + 80) = *(v2 + 64);
  *(v77 + 96) = v78;
  *(v77 + 112) = *(v2 + 96);
  v79 = *(v2 + 16);
  *(v77 + 16) = *v2;
  *(v77 + 32) = v79;
  v80 = *(v2 + 48);
  *(v77 + 48) = *(v2 + 32);
  *(v77 + 64) = v80;
  sub_1BD73FF48(v2, v105);
  sub_1BD74002C();
  sub_1BD296BD8();
  sub_1BE051064();
  v77, v81, v82, v83, v84, v85, v86, v87;
  return sub_1BD0DE53C(v58, &qword_1EBD51CA8, &qword_1BE0F4530);
}

uint64_t sub_1BD73BDB0@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D50, &qword_1BE0F4618);
  v3 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v5 = &v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D58, &qword_1BE0F4620);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v56 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v9 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v11 = &v56 - v10;
  v60 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30, &qword_1BE0F45B0);
  sub_1BE0516A4();
  v12 = v63;
  KeyPath = swift_getKeyPath();
  *&v60 = v12;
  sub_1BD7407B8(&qword_1EBD402C0, _s9ViewModelCMa_0, &unk_1BE0C7C70);
  sub_1BE04B594();
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v21 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriodSpendingSummaries;
  swift_beginAccess();
  v22 = *&v12[v21];
  sub_1BE048C84();
  v12, v23, v24, v25, v26, v27, v28, v29;
  if (v22)
  {
    sub_1BD73C2E0(v22, v5);
    v22, v30, v31, v32, v33, v34, v35, v36;
    v37 = v59;
    (*(v3 + 16))(v8, v5, v59);
    swift_storeEnumTagMultiPayload();
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE0, &qword_1BE0F4560);
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE8, &qword_1BE0F4568);
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CF0, &unk_1BE0F4570);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    v42 = sub_1BD73FD5C();
    v43 = sub_1BD73FE40();
    *&v60 = v40;
    *(&v60 + 1) = v41;
    v61 = v42;
    v62 = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = sub_1BD73FEBC();
    *&v60 = v38;
    *(&v60 + 1) = v39;
    v61 = OpaqueTypeConformance2;
    v62 = v45;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BE04F9A4();
    return (*(v3 + 8))(v5, v37);
  }

  else
  {
    sub_1BE04E4F4();
    v47 = v57;
    (*(v9 + 16))(v8, v11, v57);
    swift_storeEnumTagMultiPayload();
    v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE0, &qword_1BE0F4560);
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE8, &qword_1BE0F4568);
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CF0, &unk_1BE0F4570);
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    v52 = sub_1BD73FD5C();
    v53 = sub_1BD73FE40();
    *&v60 = v50;
    *(&v60 + 1) = v51;
    v61 = v52;
    v62 = v53;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = sub_1BD73FEBC();
    *&v60 = v48;
    *(&v60 + 1) = v49;
    v61 = v54;
    v62 = v55;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    sub_1BE04F9A4();
    return (*(v9 + 8))(v11, v47);
  }
}

uint64_t sub_1BD73C2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v178 = a2;
  v5 = _s31SpendingSummaryDetailsViewModelVMa(0);
  v154 = *(v5 - 8);
  v155 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v156 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04FF24();
  v170 = *(v7 - 8);
  v171 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v181 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030, &qword_1BE0B7570);
  v162 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v10 = &v153 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D60, &qword_1BE0F4658);
  v12 = *(v11 - 8);
  v160 = v11;
  v161 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v157 = &v153 - v13;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D68, &qword_1BE0F4660);
  v165 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v15 = &v153 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D70, &qword_1BE0F4668);
  v168 = *(v16 - 8);
  v169 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v166 = &v153 - v17;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D78, &qword_1BE0F4670);
  MEMORY[0x1EEE9AC00](v164);
  v179 = &v153 - v18;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D08, &qword_1BE0F4580);
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v153 - v19;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CF0, &unk_1BE0F4570);
  MEMORY[0x1EEE9AC00](v174);
  v182 = &v153 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CE0, &qword_1BE0F4560);
  v176 = *(v21 - 8);
  v177 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v175 = &v153 - v22;
  v183 = a1;
  v184 = v3;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D80, &qword_1BE0F4678);
  sub_1BD740364();
  sub_1BE04E304();
  sub_1BE051C64();
  v23 = MEMORY[0x1E6981CD0];
  v24 = MEMORY[0x1E6981CD8];
  sub_1BE04F694();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DC0, &qword_1BE0F46A8);
  v26 = sub_1BD0DE4F4(&qword_1EBD51DC8, &qword_1EBD51D60, &qword_1BE0F4658, MEMORY[0x1E697BE60]);
  *&v185 = v24;
  *(&v185 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_1BD740598();
  v29 = v160;
  *&v185 = v160;
  *(&v185 + 1) = &type metadata for MinimalNavigationItemAdaptor;
  v186 = v26;
  v187 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v163 = v15;
  v31 = v29;
  v32 = v10;
  v33 = v180;
  v158 = OpaqueTypeConformance2;
  v159 = v25;
  v34 = v157;
  sub_1BE0510C4();
  (*(v162 + 8))(v32, v33);
  (*(v161 + 8))(v34, v31);
  sub_1BE04FA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DD8, &unk_1BE0F46B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  LOBYTE(v25) = sub_1BE0501B4();
  *(inited + 32) = v25;
  v36 = sub_1BE050194();
  *(inited + 33) = v36;
  sub_1BE0501A4();
  sub_1BE0501A4();
  if (sub_1BE0501A4() != v25)
  {
    sub_1BE0501A4();
  }

  inited, v37, v38, v39, v40, v41, v42, v43;
  sub_1BE0501A4();
  if (sub_1BE0501A4() != v36)
  {
    sub_1BE0501A4();
  }

  v44 = v174;
  *&v185 = v31;
  *(&v185 + 1) = v180;
  v186 = v159;
  v187 = v26;
  v188 = v158;
  v189 = v30;
  swift_getOpaqueTypeConformance2();
  v46 = v166;
  v45 = v167;
  v47 = v181;
  v48 = v163;
  sub_1BE050BC4();
  (*(v170 + 8))(v47, v171);
  (*(v165 + 8))(v48, v45);
  v49 = [objc_opt_self() systemGroupedBackgroundColor];
  v50 = sub_1BE0511C4();
  LOBYTE(v47) = sub_1BE0501D4();
  v51 = v179;
  (*(v168 + 32))(v179, v46, v169);
  v52 = v51 + *(v164 + 36);
  *v52 = v50;
  *(v52 + 8) = v47;
  v193 = *v3;
  v185 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30, &qword_1BE0F45B0);
  sub_1BE0516A4();
  v53 = v192;
  KeyPath = swift_getKeyPath();
  *&v185 = v53;
  sub_1BD7407B8(&qword_1EBD402C0, _s9ViewModelCMa_0, &unk_1BE0C7C70);
  sub_1BE04B594();
  KeyPath, v55, v56, v57, v58, v59, v60, v61;
  v62 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriodSpendingSummaries;
  swift_beginAccess();
  v63 = *&v53[v62];
  sub_1BE048C84();
  v53, v64, v65, v66, v67, v68, v69, v70;
  if (v63)
  {
    v78 = v63[2];
    if (v78)
    {
      v79 = v156;
      sub_1BD740974(v63 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * (v78 - 1), v156, _s31SpendingSummaryDetailsViewModelVMa);
      v63, v80, v81, v82, v83, v84, v85, v86;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
      v88 = sub_1BD7407B8(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      v63 = MEMORY[0x1BFB3FC10](v87, v88);
      v89 = v79;
      v51 = v179;
      sub_1BD740A50(v89, _s31SpendingSummaryDetailsViewModelVMa);
    }

    else
    {
      v63, v71, v72, v73, v74, v75, v76, v77;
      v63 = 0;
    }
  }

  v90 = v173;
  sub_1BD0DE204(v51, v173, &qword_1EBD51D78, &qword_1BE0F4670);
  *(v90 + *(v172 + 52)) = v63;
  v91 = swift_allocObject();
  v92 = *(v3 + 80);
  *(v91 + 80) = *(v3 + 64);
  *(v91 + 96) = v92;
  *(v91 + 112) = *(v3 + 96);
  v93 = *(v3 + 16);
  *(v91 + 16) = *v3;
  *(v91 + 32) = v93;
  v94 = *(v3 + 48);
  *(v91 + 48) = *(v3 + 32);
  *(v91 + 64) = v94;
  v95 = v90;
  v96 = v182;
  sub_1BD0DE204(v95, v182, &qword_1EBD51D08, &qword_1BE0F4580);
  v97 = (v96 + *(v44 + 36));
  *v97 = sub_1BD740D58;
  v97[1] = 0;
  v97[2] = sub_1BD7405EC;
  v97[3] = v91;
  v190 = *(v3 + 16);
  v191 = *(v3 + 32);
  sub_1BD73FF48(v3, &v185);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516A4();
  if (BYTE8(v185) == 1)
  {
    v185 = v193;
    sub_1BE0516A4();
    v98 = v190;
    v99 = swift_getKeyPath();
    *&v185 = v98;
    sub_1BE04B594();
    v99, v100, v101, v102, v103, v104, v105, v106;
    v107 = *&v98[OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID];
    v108 = v98[OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID + 8];
    v98, v109, v110, v111, v112, v113, v114, v115;
  }

  else
  {
    v108 = 0;
    v107 = v185;
  }

  *&v190 = v107;
  BYTE8(v190) = v108;
  v116 = swift_allocObject();
  v117 = *(v3 + 80);
  *(v116 + 80) = *(v3 + 64);
  *(v116 + 96) = v117;
  *(v116 + 112) = *(v3 + 96);
  v118 = *(v3 + 16);
  *(v116 + 16) = *v3;
  *(v116 + 32) = v118;
  v119 = *(v3 + 48);
  *(v116 + 48) = *(v3 + 32);
  *(v116 + 64) = v119;
  sub_1BD73FF48(v3, &v185);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  v121 = sub_1BD73FD5C();
  v122 = sub_1BD73FE40();
  v123 = v175;
  v124 = v182;
  sub_1BE051064();
  v116, v125, v126, v127, v128, v129, v130, v131;
  sub_1BD0DE53C(v124, &qword_1EBD51CF0, &unk_1BE0F4570);
  v185 = *(v3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DE0, &qword_1BE0F46E8);
  sub_1BE0516A4();
  v132 = v190;
  v133 = swift_allocObject();
  v134 = *(v3 + 80);
  *(v133 + 80) = *(v3 + 64);
  *(v133 + 96) = v134;
  *(v133 + 112) = *(v3 + 96);
  v135 = *(v3 + 16);
  *(v133 + 16) = *v3;
  *(v133 + 32) = v135;
  v136 = *(v3 + 48);
  *(v133 + 48) = *(v3 + 32);
  *(v133 + 64) = v136;
  sub_1BD73FF48(v3, &v185);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CE8, &qword_1BE0F4568);
  *&v185 = v44;
  *(&v185 + 1) = v120;
  v186 = v121;
  v187 = v122;
  swift_getOpaqueTypeConformance2();
  sub_1BD73FEBC();
  v137 = v177;
  sub_1BE051064();
  v132, v138, v139, v140, v141, v142, v143, v144;
  v133, v145, v146, v147, v148, v149, v150, v151;
  return (*(v176 + 8))(v123, v137);
}

uint64_t sub_1BD73D02C(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D20, &qword_1BE0F4590);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1BE04FB34();
  v10 = a1;
  sub_1BD5AE74C();
  sub_1BE04E424();
  v7 = sub_1BD0DE4F4(&qword_1EBD51D28, &qword_1EBD51D20, &qword_1BE0F4590, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

void sub_1BD73D1D0(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30, &qword_1BE0F45B0);
  sub_1BE0516C4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D48, &qword_1BE0F4610);
  sub_1BE051904();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v36, v11, v12, v13, v14, v15, v16, v17;
  v35, v18, v19, v20, v21, v22, v23, v24;
  v34, v25, v26, v27, v28, v29, v30, v31;
  *a2 = v32;
  *(a2 + 16) = v33;
}

uint64_t sub_1BD73D2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1BE0528A4();
  v3[6] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD73D348, v5, v4);
}

uint64_t sub_1BD73D348()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30, &qword_1BE0F45B0);
  sub_1BE0516A4();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F8798;

  return sub_1BD292B5C();
}

void sub_1BD73D408()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v3 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v4 = sub_1BE052434();
  v5 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v4;
  *(inited + 48) = v6;
  v7 = *v5;
  *(inited + 56) = *v5;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v8;
  v9 = v3;
  v10 = v7;
  v11 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD7407B8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v12 = sub_1BE052224();
  v11, v13, v14, v15, v16, v17, v18, v19;
  [v0 subject:v1 sendEvent:v12];
}

void sub_1BD73D590(_BYTE *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26[-v7 - 8];
  LOBYTE(a1) = *a1;
  v9 = *a2;
  v10 = sub_1BE0528D4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1BE0528A4();
  sub_1BD73FF48(a3, v26);
  v11 = sub_1BE052894();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = *(a3 + 80);
  *(v12 + 96) = *(a3 + 64);
  *(v12 + 112) = v14;
  *(v12 + 128) = *(a3 + 96);
  v15 = *(a3 + 16);
  *(v12 + 32) = *a3;
  *(v12 + 48) = v15;
  v16 = *(a3 + 48);
  *(v12 + 64) = *(a3 + 32);
  *(v12 + 80) = v16;
  *(v12 + 136) = a1;
  *(v12 + 137) = v9;
  v17 = sub_1BD122C00(0, 0, v8, &unk_1BE0F45F8, v12);
  v17, v18, v19, v20, v21, v22, v23, v24;
}

uint64_t sub_1BD73D6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 194) = a6;
  *(v6 + 193) = a5;
  *(v6 + 224) = a4;
  sub_1BE0528A4();
  *(v6 + 232) = sub_1BE052894();
  v8 = sub_1BE052844();
  *(v6 + 240) = v8;
  *(v6 + 248) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD73D798, v8, v7);
}

uint64_t sub_1BD73D798()
{
  *(v0 + 168) = **(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30, &qword_1BE0F45B0);
  sub_1BE0516A4();
  *(v0 + 256) = *(v0 + 216);
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_1BD73D864;
  v2 = *(v0 + 194);
  v3 = *(v0 + 193);

  return sub_1BD2935D4(v3, v2);
}

uint64_t sub_1BD73D864()
{
  v1 = *v0;
  v2 = *(*v0 + 256);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 248);
  v11 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1BD73D9A8, v11, v10);
}

uint64_t sub_1BD73D9A8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 224);
  *(v8 + 232), a2, a3, a4, a5, a6, a7, a8;
  v10 = *(v9 + 16);
  *(v8 + 136) = *(v9 + 32);
  *(v8 + 120) = v10;
  *(v8 + 184) = 0;
  *(v8 + 192) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516B4();
  v11 = *(v9 + 80);
  *(v8 + 160) = *(v9 + 96);
  *(v8 + 144) = v11;
  *(v8 + 200) = 0;
  *(v8 + 208) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D40, &qword_1BE0F4608);
  sub_1BE0516B4();
  v12 = sub_1BE052434();
  v14 = v13;
  v15 = objc_opt_self();
  v16 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v18 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v19 = sub_1BE052434();
  v20 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v19;
  *(inited + 48) = v21;
  v22 = *v20;
  *(inited + 56) = *v20;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v23;
  v24 = *MEMORY[0x1E69BA440];
  *(inited + 80) = *MEMORY[0x1E69BA440];
  *(inited + 88) = v12;
  *(inited + 96) = v14;
  v25 = v18;
  v26 = v22;
  v27 = v24;
  v28 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD7407B8(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v29 = sub_1BE052224();
  v28, v30, v31, v32, v33, v34, v35, v36;
  [v15 subject:v16 sendEvent:v29];

  v37 = *(v8 + 8);

  return v37();
}

double sub_1BD73DC38@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v154 = a3;
  v149 = sub_1BE04FF24();
  v147 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v138 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04FC54();
  v139 = *(v7 - 8);
  v140 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v137 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE0500F4();
  v132 = *(v9 - 8);
  v133 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v130 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v127 - v12;
  v14 = sub_1BE050114();
  v15 = *(v14 - 8);
  v134 = v14;
  v135 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DB0, &qword_1BE0F46A0);
  v131 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v19 = &v127 - v18;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DA8, &qword_1BE0F4698);
  v136 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v127 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DA0, &qword_1BE0F4690);
  v142 = *(v21 - 8);
  v143 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v155 = &v127 - v22;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D98, &qword_1BE0F4688);
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v141 = &v127 - v23;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D90, &qword_1BE0F4680);
  v148 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v145 = &v127 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DE8, &qword_1BE0F46F0);
  v152 = *(v25 - 8);
  v153 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v151 = &v127 - v26;
  sub_1BE050194();
  v157 = a1;
  v158 = a2;
  v156 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DF0, &qword_1BE0F46F8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51DF8, &qword_1BE0F4700);
  v28 = sub_1BD0DE4F4(&qword_1EBD51E00, &qword_1EBD51DF8, &qword_1BE0F4700, MEMORY[0x1E697DA78]);
  *&v159 = v27;
  *(&v159 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v127;
  sub_1BE04E304();
  sub_1BE0500E4();
  v31 = v132;
  v30 = v133;
  (*(v132 + 16))(v130, v13, v133);
  sub_1BE050104();
  (*(v31 + 8))(v13, v30);
  v32 = sub_1BD0DE4F4(&qword_1EBD51DB8, &qword_1EBD51DB0, &qword_1BE0F46A0, MEMORY[0x1E697BE60]);
  v33 = MEMORY[0x1E697CC08];
  v35 = v128;
  v34 = v129;
  v36 = v134;
  sub_1BE050D44();
  v37 = v17;
  v38 = v138;
  v39 = v36;
  (*(v135 + 8))(v37, v36);
  (*(v131 + 8))(v19, v34);
  v40 = sub_1BE0501C4();
  v41 = v137;
  sub_1BE04FC44();
  *&v159 = v34;
  *(&v159 + 1) = v39;
  *&v160 = v32;
  *(&v160 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB3DB30](v40, 0x402E000000000000, 0, v41, v29, OpaqueTypeConformance2);
  (*(v139 + 8))(v41, v140);
  (*(v136 + 8))(v35, v29);
  sub_1BE04FA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DD8, &unk_1BE0F46B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  LOBYTE(v34) = sub_1BE0501B4();
  *(inited + 32) = v34;
  v44 = sub_1BE050194();
  *(inited + 33) = v44;
  sub_1BE0501A4();
  sub_1BE0501A4();
  if (sub_1BE0501A4() != v34)
  {
    sub_1BE0501A4();
  }

  inited, v45, v46, v47, v48, v49, v50, v51;
  sub_1BE0501A4();
  if (sub_1BE0501A4() != v44)
  {
    sub_1BE0501A4();
  }

  *&v159 = v29;
  *(&v159 + 1) = OpaqueTypeConformance2;
  v140 = swift_getOpaqueTypeConformance2();
  v52 = v141;
  v53 = v143;
  v54 = v155;
  sub_1BE050BC4();
  (*(v147 + 8))(v38, v149);
  (*(v142 + 8))(v54, v53);
  v164 = *v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30, &qword_1BE0F45B0);
  sub_1BE0516C4();
  v55 = v159;
  v56 = v160;
  KeyPath = swift_getKeyPath();
  v167 = v55;
  v168 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D48, &qword_1BE0F4610);
  sub_1BE051904();
  KeyPath, v58, v59, v60, v61, v62, v63, v64;
  v65 = v159;
  v66 = v160;
  v67 = BYTE8(v160);
  v56, v68, v69, v70, v71, v72, v73, v74;
  *(&v55 + 1), v75, v76, v77, v78, v79, v80, v81;
  v55, v82, v83, v84, v85, v86, v87, v88;
  v164 = v65;
  v165 = v66;
  v166 = v67;
  v162 = v53;
  v163 = v140;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = MEMORY[0x1E69E6530];
  v91 = MEMORY[0x1E69E6540];
  v93 = v145;
  v92 = v146;
  sub_1BE050AD4();
  *(&v65 + 1), v94, v95, v96, v97, v98, v99, v100;
  v65, v101, v102, v103, v104, v105, v106, v107;
  v108 = v52;
  v109 = v156;
  (*(v144 + 8))(v108, v92);
  v110 = swift_allocObject();
  v111 = *(v109 + 80);
  *(v110 + 80) = *(v109 + 64);
  *(v110 + 96) = v111;
  *(v110 + 112) = *(v109 + 96);
  v112 = *(v109 + 16);
  *(v110 + 16) = *v109;
  *(v110 + 32) = v112;
  v113 = *(v109 + 48);
  *(v110 + 48) = *(v109 + 32);
  *(v110 + 64) = v113;
  sub_1BD73FF48(v109, &v159);
  *&v159 = v92;
  *(&v159 + 1) = v90;
  *&v160 = v89;
  *(&v160 + 1) = v91;
  swift_getOpaqueTypeConformance2();
  v115 = v150;
  v114 = v151;
  sub_1BE050E94();
  v110, v116, v117, v118, v119, v120, v121, v122;
  (*(v148 + 8))(v93, v115);
  v159 = *(v109 + 80);
  *&v160 = *(v109 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D40, &qword_1BE0F4608);
  sub_1BE0516A4();
  if (BYTE8(v164) == 1)
  {
    v159 = *(v109 + 56);
    *&v160 = *(v109 + 72);
    sub_1BE0516A4();
  }

  sub_1BE051CD4();
  sub_1BE04E5E4();
  v123 = v154;
  (*(v152 + 32))(v154, v114, v153);
  v124 = (v123 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D80, &qword_1BE0F4678) + 36));
  v125 = v160;
  *v124 = v159;
  v124[1] = v125;
  result = *&v161;
  v124[2] = v161;
  return result;
}

uint64_t sub_1BD73E824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04FBA4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DF8, &qword_1BE0F4700);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1BE04F4E4();
  v11 = a1;
  v12 = a2;
  v13 = 0;
  sub_1BD7407B8(&qword_1EBD3FDB8, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1BE053DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E08, &qword_1BE0F4708);
  sub_1BD740630();
  sub_1BE04E2C4();
  sub_1BD0DE4F4(&qword_1EBD51E00, &qword_1EBD51DF8, &qword_1BE0F4700, MEMORY[0x1E697DA78]);
  sub_1BE050CC4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BD73EA4C(uint64_t a1, uint64_t a2)
{
  sub_1BD6CABD4(a1);
  v11 = v3;
  swift_getKeyPath();
  v4 = swift_allocObject();
  v5 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BD740748;
  *(v8 + 24) = v4;
  sub_1BD73FF48(a2, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E28, &qword_1BE0F4748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E20, &qword_1BE0F4710);
  sub_1BD0DE4F4(&qword_1EBD51E30, &qword_1EBD51E28, &qword_1BE0F4748, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD51E18, &qword_1EBD51E20, &qword_1BE0F4710, MEMORY[0x1E6981870]);
  return sub_1BE0519C4();
}

uint64_t sub_1BD73EBF4@<X0>(uint64_t *a1@<X8>)
{
  _s31SpendingSummaryDetailsViewModelVMa(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v3 = sub_1BD7407B8(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  result = MEMORY[0x1BFB3FC10](v2, v3);
  *a1 = result;
  return result;
}

uint64_t sub_1BD73EC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_1BE04F7B4();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E38, &qword_1BE0F4758);
  return sub_1BD73ECF8(a2, a3, a1, a4 + *(v8 + 44));
}

uint64_t sub_1BD73ECF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v48 = a4;
  v6 = _s31SpendingSummaryDetailsViewModelVMa(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E40, &qword_1BE0F4760) - 8;
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v43 = a1;
  sub_1BD740974(a1, &v42 - v12, _s31SpendingSummaryDetailsViewModelVMa);
  type metadata accessor for NavigationController();
  sub_1BD7407B8(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  v14 = sub_1BE04EEC4();
  v16 = v15;
  v17 = _s17SummaryDetailViewVMa(0);
  v18 = &v13[*(v17 + 24)];
  *v18 = v14;
  v18[1] = v16;
  v19 = &v13[*(v17 + 28)];
  v51[0] = 0;
  sub_1BE051694();
  v20 = v50;
  *v19 = v49[0];
  *(v19 + 1) = v20;
  v44 = *(v7 + 36);
  sub_1BD740974(a1, &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s31SpendingSummaryDetailsViewModelVMa);
  v21 = *(v8 + 80);
  v22 = (v21 + 16) & ~v21;
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_1BD740800(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22);
  v25 = v24 + v23;
  v26 = *(a2 + 80);
  *(v25 + 64) = *(a2 + 64);
  *(v25 + 80) = v26;
  *(v25 + 96) = *(a2 + 96);
  v27 = *(a2 + 16);
  *v25 = *a2;
  *(v25 + 16) = v27;
  v28 = *(a2 + 48);
  *(v25 + 32) = *(a2 + 32);
  *(v25 + 48) = v28;
  *(v24 + ((v23 + 111) & 0xFFFFFFFFFFFFFFF8)) = v45;
  v29 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E48, &qword_1BE0F4778) + 36)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E50, &qword_1BE0F4780);
  sub_1BD73FF48(a2, v49);
  sub_1BE0528B4();
  v31 = *(v30 + 40);
  v32 = v43;
  sub_1BD740974(v43 + v44, &v29[v31], _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
  *v29 = &unk_1BE0F4770;
  *(v29 + 1) = v24;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E58, &qword_1BE0F4788) + 36)] = 256;
  sub_1BD740974(v32, &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s31SpendingSummaryDetailsViewModelVMa);
  v33 = swift_allocObject();
  v34 = *(a2 + 80);
  *(v33 + 80) = *(a2 + 64);
  *(v33 + 96) = v34;
  *(v33 + 112) = *(a2 + 96);
  v35 = *(a2 + 16);
  *(v33 + 16) = *a2;
  *(v33 + 32) = v35;
  v36 = *(a2 + 48);
  *(v33 + 48) = *(a2 + 32);
  *(v33 + 64) = v36;
  sub_1BD740800(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + ((v21 + 120) & ~v21));
  v37 = v47;
  v38 = &v13[*(v46 + 44)];
  *v38 = sub_1BD740D58;
  *(v38 + 1) = 0;
  *(v38 + 2) = sub_1BD7409DC;
  *(v38 + 3) = v33;
  sub_1BD0DE19C(v13, v37, &qword_1EBD51E40, &qword_1BE0F4760);
  v39 = v48;
  sub_1BD0DE19C(v37, v48, &qword_1EBD51E40, &qword_1BE0F4760);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51E60, &qword_1BE0F4790) + 48);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_1BD73FF48(a2, v49);
  sub_1BD0DE53C(v13, &qword_1EBD51E40, &qword_1BE0F4760);
  return sub_1BD0DE53C(v37, &qword_1EBD51E40, &qword_1BE0F4760);
}

uint64_t sub_1BD73F148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
  v3[8] = swift_task_alloc();
  sub_1BE0528A4();
  v3[9] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[10] = v5;
  v3[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD73F210, v5, v4);
}

uint64_t sub_1BD73F210()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = _s31SpendingSummaryDetailsViewModelVMa(0);
  sub_1BD740974(v2 + *(v3 + 28), v1, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
  v4 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v13 = *(v0 + 64);
  if (v5 == 1)
  {
    v14 = *(v0 + 48);
    sub_1BD740A50(*(v0 + 64), _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
    *(v0 + 16) = *v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30, &qword_1BE0F45B0);
    sub_1BE0516A4();
    *(v0 + 96) = *(v0 + 32);
    v15 = swift_task_alloc();
    *(v0 + 104) = v15;
    *v15 = v0;
    v15[1] = sub_1BD73F3CC;
    v16 = *(v0 + 56);

    return sub_1BD294854(v16);
  }

  else
  {
    *(v0 + 72), v6, v7, v8, v9, v10, v11, v12;
    sub_1BD740A50(v13, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1BD73F3CC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 88);
  v11 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BD73F510, v11, v10);
}

uint64_t sub_1BD73F510(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 72), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD73F578(double *a1, uint64_t a2)
{
  v3 = *a1;
  _s31SpendingSummaryDetailsViewModelVMa(0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v5 = sub_1BD7407B8(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v6 = MEMORY[0x1BFB3FC10](v4, v5);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v12 = v8;
  v13 = v7;
  v11[2] = v7;
  v11[3] = v8;
  sub_1BD0DE19C(&v13, v11, &qword_1EBD51CE8, &qword_1BE0F4568);
  sub_1BD0DE19C(&v12, v11, &qword_1EBD51E68, &qword_1BE0F4798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DE0, &qword_1BE0F46E8);
  sub_1BE0516A4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[0] = v11[4];
  sub_1BD1DBF6C(v6, isUniquelyReferenced_nonNull_native, v3);
  v11[0] = v7;
  v11[1] = v8;
  sub_1BE0516B4();
  sub_1BD0DE53C(&v13, &qword_1EBD51CE8, &qword_1BE0F4568);
  return sub_1BD0DE53C(&v12, &qword_1EBD51E68, &qword_1BE0F4798);
}

double sub_1BD73F714(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD73F794()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D60, &qword_1BE0F4658);
  sub_1BD0DE4F4(&qword_1EBD51DC8, &qword_1EBD51D60, &qword_1BE0F4658, MEMORY[0x1E697BE60]);
  sub_1BD740598();
  return sub_1BE050D84();
}

double sub_1BD73F834(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D40, &qword_1BE0F4608);
  sub_1BE0516B4();
  return result;
}

void sub_1BD73F898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E9E0, &unk_1BE0E7650);
  sub_1BE0516A4();
  if (v25 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D30, &qword_1BE0F45B0);
    sub_1BE0516A4();
    KeyPath = swift_getKeyPath();
    sub_1BD7407B8(&qword_1EBD402C0, _s9ViewModelCMa_0, &unk_1BE0C7C70);
    sub_1BE04B594();
    KeyPath, v1, v2, v3, v4, v5, v6, v7;
    v8 = *(v24 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID);
    v9 = *(v24 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID + 8);
    v24, v10, v11, v12, v13, v14, v15, v16;
    if (v9)
    {
      return;
    }
  }

  else
  {
    v8 = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51DE0, &qword_1BE0F46E8);
  sub_1BE0516A4();
  if (v24[2])
  {
    sub_1BD149084(v8);
  }

  v24, v17, v18, v19, v20, v21, v22, v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51D40, &qword_1BE0F4608);
  sub_1BE0516A4();
  sub_1BE0516B4();
}

unint64_t sub_1BD73FB5C()
{
  result = qword_1EBD51CC8;
  if (!qword_1EBD51CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CC0, &qword_1BE0F4550);
    sub_1BD73FBE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51CC8);
  }

  return result;
}

unint64_t sub_1BD73FBE0()
{
  result = qword_1EBD51CD0;
  if (!qword_1EBD51CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CD8, &qword_1BE0F4558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE0, &qword_1BE0F4560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE8, &qword_1BE0F4568);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CF0, &unk_1BE0F4570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    sub_1BD73FD5C();
    sub_1BD73FE40();
    swift_getOpaqueTypeConformance2();
    sub_1BD73FEBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51CD0);
  }

  return result;
}

unint64_t sub_1BD73FD5C()
{
  result = qword_1EBD51CF8;
  if (!qword_1EBD51CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CF0, &unk_1BE0F4570);
    sub_1BD0DE4F4(&qword_1EBD51D00, &qword_1EBD51D08, &qword_1BE0F4580, MEMORY[0x1E6981810]);
    sub_1BD0DE4F4(&qword_1EBD4B618, &qword_1EBD4B620, &qword_1BE0E3418, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51CF8);
  }

  return result;
}

unint64_t sub_1BD73FE40()
{
  result = qword_1EBD40CC8;
  if (!qword_1EBD40CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40C28, &qword_1BE0E74F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40CC8);
  }

  return result;
}

unint64_t sub_1BD73FEBC()
{
  result = qword_1EBD51D10;
  if (!qword_1EBD51D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CE8, &qword_1BE0F4568);
    sub_1BD0F9764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51D10);
  }

  return result;
}

uint64_t sub_1BD73FF80()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD126968;

  return sub_1BD73D2B0(v2, v3, v0 + 32);
}

unint64_t sub_1BD74002C()
{
  result = qword_1EBD51D38;
  if (!qword_1EBD51D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CA8, &qword_1BE0F4530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37288, &qword_1BE0F4540);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CB8, &qword_1BE0F4548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51D18, &qword_1BE0F4588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51CC0, &qword_1BE0F4550);
    sub_1BD73FB5C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51D20, &qword_1BE0F4590);
    sub_1BD0DE4F4(&qword_1EBD51D28, &qword_1EBD51D20, &qword_1BE0F4590, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51D38);
  }

  return result;
}

uint64_t objectdestroyTm_85(uint64_t a1)
{
  swift_unknownObjectRelease();
  v1[4], v2, v3, v4, v5, v6, v7, v8;
  v1[5], v9, v10, v11, v12, v13, v14, v15;
  v1[8], v16, v17, v18, v19, v20, v21, v22;
  v1[9], v23, v24, v25, v26, v27, v28, v29;
  v1[10], v30, v31, v32, v33, v34, v35, v36;
  v1[13], v37, v38, v39, v40, v41, v42, v43;
  v1[16], v44, v45, v46, v47, v48, v49, v50;

  return swift_deallocObject();
}

uint64_t sub_1BD74028C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 137);
  v7 = *(v1 + 136);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD73D6F8(a1, v4, v5, v1 + 32, v7, v6);
}

unint64_t sub_1BD740364()
{
  result = qword_1EBD51D88;
  if (!qword_1EBD51D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51D80, &qword_1BE0F4678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51D90, &qword_1BE0F4680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51D98, &qword_1BE0F4688);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51DA0, &qword_1BE0F4690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51DA8, &qword_1BE0F4698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51DB0, &qword_1BE0F46A0);
    sub_1BE050114();
    sub_1BD0DE4F4(&qword_1EBD51DB8, &qword_1EBD51DB0, &qword_1BE0F46A0, MEMORY[0x1E697BE60]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51D88);
  }

  return result;
}

unint64_t sub_1BD740598()
{
  result = qword_1EBD51DD0;
  if (!qword_1EBD51DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51DD0);
  }

  return result;
}

unint64_t sub_1BD740630()
{
  result = qword_1EBD51E10;
  if (!qword_1EBD51E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51E08, &qword_1BE0F4708);
    sub_1BD0DE4F4(&qword_1EBD51E18, &qword_1EBD51E20, &qword_1BE0F4710, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51E10);
  }

  return result;
}

uint64_t objectdestroy_6Tm_0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;
  v8[7], v23, v24, v25, v26, v27, v28, v29;
  v8[8], v30, v31, v32, v33, v34, v35, v36;
  v8[11], v37, v38, v39, v40, v41, v42, v43;
  v8[14], v44, v45, v46, v47, v48, v49, v50;

  return swift_deallocObject();
}

uint64_t sub_1BD740750(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50180, &qword_1BE0F4750);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1BD7407B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD740800(uint64_t a1, uint64_t a2)
{
  v4 = _s31SpendingSummaryDetailsViewModelVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD740864()
{
  v2 = *(_s31SpendingSummaryDetailsViewModelVMa(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + ((v4 + 111) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD73F148(v0 + v3, v0 + v4, v5);
}

uint64_t sub_1BD740974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7409DC(double *a1)
{
  _s31SpendingSummaryDetailsViewModelVMa(0);

  return sub_1BD73F578(a1, v1 + 16);
}

uint64_t sub_1BD740A50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD740AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = sub_1BE04B2F4();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C28, &qword_1BE0E74F0);
  sub_1BE051694();
  v22 = v29;
  v23 = v27;
  v32 = v28;
  v25 = sub_1BD1AE284(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51CE8, &qword_1BE0F4568);
  sub_1BE051694();
  v20 = v28;
  v21 = v27;
  v25 = 0;
  v26 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48058, &unk_1BE0F47A0);
  sub_1BE051694();
  v19 = v27;
  v7 = v29;
  v31 = v28;
  v25 = 0;
  v26 = 1;
  sub_1BE051694();
  v8 = v27;
  v9 = v29;
  v30 = v28;
  sub_1BE048964();
  sub_1BE04B1E4();
  _s9ViewModelCMa_0(0);
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__isSetup) = 0;
  *(v10 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriod) = 0;
  v11 = v10 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedSpendingSummaryID;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v10 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel__selectedPeriodSpendingSummaries) = 0;
  sub_1BE04B5C4();
  *(v10 + 16) = a1;
  (*(v4 + 32))(v10 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitSpendingSummariesView9ViewModel_calendar, v6, v24);
  v25 = v10;
  result = sub_1BE051694();
  v13 = v28;
  v14 = v32;
  v15 = v31;
  v16 = v30;
  *a2 = v27;
  *(a2 + 8) = v13;
  v17 = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  v18 = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v18;
  *(a2 + 56) = v19;
  *(a2 + 64) = v15;
  *(a2 + 72) = v7;
  *(a2 + 80) = v8;
  *(a2 + 88) = v16;
  *(a2 + 96) = v9;
  return result;
}

char *MaskedPANSuffixView.init(suffix:foregroundColor:)(uint64_t a1, void *a2, void *a3)
{
  v7 = OBJC_IVAR___PKMaskedPANSuffixView_fontSize;
  PKPaymentPassPANSuffixFontSize();
  *&v3[v7] = v8;
  *&v3[OBJC_IVAR___PKMaskedPANSuffixView_viewSpacing] = 0x4018000000000000;
  v9 = &v3[OBJC_IVAR___PKMaskedPANSuffixView_suffix];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v3[OBJC_IVAR___PKMaskedPANSuffixView_foregroundColor] = a3;
  sub_1BE048C84();
  v10 = a3;
  PKPassFrontFaceContentSize();
  v12 = v11;
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v16 = OBJC_IVAR___PKMaskedPANSuffixView_maskedPANLabel;
  *&v3[OBJC_IVAR___PKMaskedPANSuffixView_maskedPANLabel] = v15;
  v17 = *&v3[v7];
  v18 = *MEMORY[0x1E69DB978];
  v19 = v15;
  v20 = PKDefaultSystemFontOfSizeAndWeight(v17, v18);
  [v19 setFont_];

  [*&v3[v16] setLineBreakMode_];
  [*&v3[v16] setNumberOfLines_];
  [*&v3[v16] setTextAlignment_];
  v21 = *&v3[v16];
  v22 = v10;
  [v21 setTextColor_];
  [*&v3[v16] setAdjustsFontForContentSizeCategory_];
  result = PKPANMask();
  if (result)
  {
    v24 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD430F8, &unk_1BE0F47B0);
    inited = swift_initStackObject();
    v26 = *MEMORY[0x1E69DB660];
    *(inited + 32) = *MEMORY[0x1E69DB660];
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 64) = MEMORY[0x1E69E6530];
    *(inited + 40) = 1;
    v27 = v26;
    v28 = sub_1BD1ACD28(inited);
    swift_setDeallocating();
    sub_1BD3726C0(inited + 32);
    v29 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    type metadata accessor for Key(0);
    sub_1BD372728();
    v30 = sub_1BE052224();
    v28, v31, v32, v33, v34, v35, v36, v37;
    v38 = [v29 initWithString:v24 attributes:v30];

    [*&v3[v16] setAttributedText_];
    [*&v3[v16] sizeThatFits_];
    v39 = &v3[OBJC_IVAR___PKMaskedPANSuffixView_maskedSize];
    *v39 = v40;
    *(v39 + 1) = v41;
    v42 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v43 = OBJC_IVAR___PKMaskedPANSuffixView_suffixLabel;
    *&v3[OBJC_IVAR___PKMaskedPANSuffixView_suffixLabel] = v42;
    v44 = *&v3[v7];
    v45 = v42;
    v46 = PKDefaultSystemFontOfSizeAndWeight(v44, v18);
    [v45 setFont_];

    [*&v3[v43] setLineBreakMode_];
    [*&v3[v43] setNumberOfLines_];
    [*&v3[v43] setTextAlignment_];
    v47 = *&v3[v43];
    [v47 setTextColor_];

    v48 = *&v3[v43];
    v49 = sub_1BE052404();
    a2, v50, v51, v52, v53, v54, v55, v56;
    [v48 setText_];

    [*&v3[v43] setAdjustsFontForContentSizeCategory_];
    [*&v3[v43] sizeThatFits_];
    v57 = &v3[OBJC_IVAR___PKMaskedPANSuffixView_suffixSize];
    *v57 = v58;
    *(v57 + 1) = v59;
    v76.receiver = v3;
    v76.super_class = type metadata accessor for MaskedPANSuffixView();
    v60 = objc_msgSendSuper2(&v76, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v61 = *&v60[OBJC_IVAR___PKMaskedPANSuffixView_maskedPANLabel];
    v62 = v60;
    [v62 addSubview_];
    [v62 addSubview_];
    v63 = *&v62[OBJC_IVAR___PKMaskedPANSuffixView_maskedSize];
    v64 = *&v62[OBJC_IVAR___PKMaskedPANSuffixView_maskedSize + 8];
    v65 = PKContentAlignmentMake();
    v66.n128_u64[0] = 0;
    v67.n128_u64[0] = 0;
    v68.n128_u64[0] = v63;
    v69.n128_u64[0] = v64;
    v70.n128_f64[0] = v12;
    v71.n128_f64[0] = v14;
    PKSizeAlignedInRect(v65, v68, v69, v66, v67, v70, v71, v72);
    v75 = v74 + *&v62[OBJC_IVAR___PKMaskedPANSuffixView_suffixSize] + 6.0;
    if (v73 <= *&v62[OBJC_IVAR___PKMaskedPANSuffixView_suffixSize + 8])
    {
      v73 = *&v62[OBJC_IVAR___PKMaskedPANSuffixView_suffixSize + 8];
    }

    [v62 setFrame_];

    return v62;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD74136C(uint64_t a1, double a2, double a3)
{
  v25.receiver = v3;
  v25.super_class = type metadata accessor for MaskedPANSuffixView();
  objc_msgSendSuper2(&v25, sel_sizeThatFits_, a2, a3);
  [v3 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *&v3[OBJC_IVAR___PKMaskedPANSuffixView_maskedSize];
  v15 = *&v3[OBJC_IVAR___PKMaskedPANSuffixView_maskedSize + 8];
  v16 = PKContentAlignmentMake();
  v17.n128_u64[0] = v14;
  v18.n128_u64[0] = v15;
  v19.n128_u64[0] = v7;
  v20.n128_u64[0] = v9;
  v21.n128_u64[0] = v11;
  v22.n128_u64[0] = v13;
  return PKSizeAlignedInRect(v16, v17, v18, v19, v20, v21, v22, v23);
}

id sub_1BD741504(char a1, double a2, double a3, double a4, double a5)
{
  v11 = (v5 + OBJC_IVAR___PKMaskedPANSuffixView_maskedSize);
  v12 = *(v5 + OBJC_IVAR___PKMaskedPANSuffixView_maskedSize);
  v13 = *(v5 + OBJC_IVAR___PKMaskedPANSuffixView_maskedSize + 8);
  v14 = PKContentAlignmentMake();
  v15.n128_u64[0] = v12;
  v16.n128_u64[0] = v13;
  v17.n128_f64[0] = a2;
  v18.n128_f64[0] = a3;
  v19.n128_f64[0] = a4;
  v20.n128_f64[0] = a5;
  result = PKSizeAlignedInRect(v14, v15, v16, v17, v18, v19, v20, v21);
  v26 = *(v5 + OBJC_IVAR___PKMaskedPANSuffixView_suffixSize);
  v25 = *(v5 + OBJC_IVAR___PKMaskedPANSuffixView_suffixSize + 8);
  if ((a1 & 1) == 0)
  {
    v27 = v23 + *v11 + 6.0;
    v28 = v24;
    [*(v5 + OBJC_IVAR___PKMaskedPANSuffixView_maskedPANLabel) setFrame_];
    return [*(v5 + OBJC_IVAR___PKMaskedPANSuffixView_suffixLabel) setFrame_];
  }

  return result;
}

id MaskedPANSuffixView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MaskedPANSuffixView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MaskedPANSuffixView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 sub_1BD7417CC@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BE04CDA4();
  sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *(a3 + 32) = sub_1BE04EEC4();
  *(a3 + 40) = v6;
  v48[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EB8, &qword_1BE0F47E8);
  sub_1BE051694();
  v7 = *(&v49[0] + 1);
  *(a3 + 96) = v49[0];
  *(a3 + 104) = v7;
  *(a3 + 112) = sub_1BD2522E4;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_1BD0DE19C(v49, v48, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC0, &qword_1BE0B7120);
  sub_1BE051694();
  sub_1BD0DE53C(v49, &qword_1EBD51EC0, &qword_1BE0B7120);
  *(a3 + 184) = sub_1BD24B1AC;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = swift_getKeyPath();
  *(a3 + 216) = 0;
  *(a3 + 224) = swift_getKeyPath();
  *(a3 + 232) = 0;
  *(a3 + 240) = sub_1BD7496DC;
  *(a3 + 248) = 0;
  *(a3 + 256) = 0;
  *(a3 + 264) = 0x65746E6F43706D61;
  *(a3 + 272) = 0xEA0000000000746ELL;
  v48[0] = 0;
  sub_1BE051694();
  v8 = *(&v49[0] + 1);
  *(a3 + 280) = v49[0];
  *(a3 + 288) = v8;
  *(a3 + 48) = a1;
  type metadata accessor for AMPAuthorizationModel(0);
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = a1;
  sub_1BE04D8B4(v49);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v10, v19, v20, v21, v22, v23, v24, v25;
  sub_1BD751B3C(&qword_1EBD36168, type metadata accessor for AMPAuthorizationModel, MEMORY[0x1E69BCA10]);
  *a3 = sub_1BE04E954();
  *(a3 + 8) = v26;
  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  sub_1BE04D8B4(v49);
  v27, v29, v30, v31, v32, v33, v34, v35;
  v28, v36, v37, v38, v39, v40, v41, v42;
  type metadata accessor for AuthenticatorModel(0);
  sub_1BD751B3C(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
  v43 = sub_1BE04E954();
  v45 = v44;

  *(a3 + 16) = v43;
  *(a3 + 24) = v45;
  result = *a2;
  v47 = *(a2 + 16);
  *(a3 + 56) = *a2;
  *(a3 + 72) = v47;
  *(a3 + 88) = *(a2 + 32);
  return result;
}

void sub_1BD741B2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52060, &unk_1BE0D9B88);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE28, &qword_1BE0BDB10);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0BA770;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  v7 = *MEMORY[0x1E69BCA88];
  v8 = sub_1BE04C974();
  v9 = *(*(v8 - 8) + 104);
  v9(v5, v7, v8);
  *(v5 + v6) = 0;
  v10 = *(v1 + 48);
  v9(v5 + v2, *MEMORY[0x1E69BCA40], v8);
  *(v5 + v2 + v10) = 1;
  v11 = *(v1 + 48);
  v9(v5 + 2 * v2, *MEMORY[0x1E69BCA48], v8);
  *(v5 + 2 * v2 + v11) = 2;
  v12 = *(v1 + 48);
  v9(v5 + 3 * v2, *MEMORY[0x1E69BCA80], v8);
  *(v5 + 3 * v2 + v12) = 3;
  v13 = *(v1 + 48);
  v9(v5 + 4 * v2, *MEMORY[0x1E69BCA78], v8);
  *(v5 + 4 * v2 + v13) = 4;
  v14 = *(v1 + 48);
  v9(v5 + 5 * v2, *MEMORY[0x1E69BCA38], v8);
  *(v5 + 5 * v2 + v14) = 5;
  v15 = *(v1 + 48);
  v9(v5 + 6 * v2, *MEMORY[0x1E69BCA50], v8);
  *(v5 + 6 * v2 + v15) = 6;
  v16 = *(v1 + 48);
  v9(v5 + 7 * v2, *MEMORY[0x1E69BCA60], v8);
  *(v5 + 7 * v2 + v16) = 7;
  v17 = *(v1 + 48);
  v9(v5 + 8 * v2, *MEMORY[0x1E69BCA70], v8);
  *(v5 + 8 * v2 + v17) = 8;
  v18 = *(v1 + 48);
  v9(v5 + 9 * v2, *MEMORY[0x1E69BCA58], v8);
  *(v5 + 9 * v2 + v18) = 9;
  v19 = *(v1 + 48);
  v9(v5 + 10 * v2, *MEMORY[0x1E69BCA30], v8);
  *(v5 + 10 * v2 + v19) = 10;
  v20 = *(v1 + 48);
  v9(v5 + 11 * v2, *MEMORY[0x1E69BCA68], v8);
  *(v5 + 11 * v2 + v20) = 11;
  v21 = sub_1BD1AB490(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    if ([Strong respondsToSelector_])
    {
      if (v21[2] && (v38 = sub_1BD1490C0(a1), (v31 & 1) != 0))
      {
        v39 = *(v21[7] + 8 * v38);
      }

      else
      {
        v39 = 0;
      }

      v21, v31, v32, v33, v34, v35, v36, v37;
      [v30 didEncounterAuthorizationEvent_];
    }

    else
    {
      v21, v31, v32, v33, v34, v35, v36, v37;
    }

    swift_unknownObjectRelease();
  }

  else
  {

    v21, v23, v24, v25, v26, v27, v28, v29;
  }
}

void sub_1BD741FBC()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BD026000, v6, v7, "suspendAuthenticatorEvaluation", v8, 2u);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70));
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4(v53);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  v26 = v53[0];
  LOBYTE(v11) = sub_1BE04CA44();
  v26, v27, v28, v29, v30, v31, v32, v33;
  if (v11)
  {
    [*(v9 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
    v34 = swift_getKeyPath();
    v35 = swift_getKeyPath();
    sub_1BE04D8B4(v53);
    v34, v36, v37, v38, v39, v40, v41, v42;
    v35, v43, v44, v45, v46, v47, v48, v49;
    v50 = v53[0];
    sub_1BE04CA54();
    v51 = *(v50 + qword_1EBD55580);
    v52 = *(v50 + qword_1EBD55580 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v53[0] = v51;
    v53[1] = v52;
    sub_1BE04D8C4();
  }
}

uint64_t sub_1BD74224C(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BD026000, v6, v7, "resumeAuthenticatorEvaluation", v8, 2u);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  v9 = (*(v3 + 8))(v5, v2);
  return a1(v9);
}

id sub_1BD7423CC(uint64_t (*a1)(void, double))
{
  v107 = a1;
  v2 = v1;
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v106 - v8;
  sub_1BE04D084();
  v10 = sub_1BE04D204();
  v11 = sub_1BE052C54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BD026000, v10, v11, "Stop state machine", v12, 2u);
    MEMORY[0x1BFB45F20](v12, -1, -1);
  }

  v13 = *(v4 + 8);
  v14 = v13(v9, v3);
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xC0);
  if ((*(v2 + v16) & 1) == 0 && (*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0)) & 1) == 0)
  {
    sub_1BE04D1E4();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "Tried to stop a state machine that was already stopped.", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    v14 = v13(v6, v3);
  }

  *(v2 + v16) = 0;
  *(v2 + *((*v15 & *v2) + 0xB0)) = 0;
  v20 = MEMORY[0x1EEE9AC00](v14);
  v21 = v107(0, v20);
  *(&v106 - 2) = v21;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v106 - 2) = v21;
  v23 = swift_getKeyPath();
  sub_1BE04D8B4(v109);
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v23, v31, v32, v33, v34, v35, v36, v37;
  v38 = *&v109[0];
  v39 = *(*&v109[0] + qword_1EBDAADC0);
  sub_1BE048964();
  v38, v40, v41, v42, v43, v44, v45, v46;
  *(v39 + 224) = 1;
  v47 = *(v39 + 192);
  v110 = *(v39 + 176);
  v111 = v47;
  v112 = *(v39 + 208);
  v48 = *(v39 + 128);
  v109[0] = *(v39 + 112);
  v109[1] = v48;
  v49 = *(v39 + 160);
  v109[2] = *(v39 + 144);
  v109[3] = v49;
  sub_1BD0DE19C(v109, v108, &unk_1EBD45E50, &unk_1BE0D5BC0);
  v39, v50, v51, v52, v53, v54, v55, v56;
  if (v110)
  {
    sub_1BD0DE53C(v109, &unk_1EBD45E50, &unk_1BE0D5BC0);
  }

  v57 = *(v2 + *((*v15 & *v2) + 0xD8));
  [v57 setCancelReason_];
  result = [*(v2 + *((*v15 & *v2) + 0xD0)) paymentRequest];
  if (result)
  {
    v59 = result;
    v60 = [result isPeerPaymentRequest];

    if (v60)
    {
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA158], 0);
    }

    v61 = *(v2 + *((*v15 & *v2) + 0x70));
    v62 = swift_getKeyPath();
    v63 = swift_getKeyPath();
    sub_1BE04D8B4(v108);
    v62, v64, v65, v66, v67, v68, v69, v70;
    v63, v71, v72, v73, v74, v75, v76, v77;
    v78 = v108[0];
    LOBYTE(v63) = sub_1BE04CA44();
    v78, v79, v80, v81, v82, v83, v84, v85;
    if (v63)
    {
      [*(v61 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
      v86 = swift_getKeyPath();
      v87 = swift_getKeyPath();
      sub_1BE04D8B4(v108);
      v86, v88, v89, v90, v91, v92, v93, v94;
      v87, v95, v96, v97, v98, v99, v100, v101;
      v102 = v108[0];
      sub_1BE04CA54();
      v103 = *(v102 + qword_1EBD55580);
      v104 = *(v102 + qword_1EBD55580 + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v108[0] = v103;
      v108[1] = v104;
      sub_1BE04D8C4();
    }

    [v57 didCancel];
    *(v61 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    v105 = OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator;
    [*(v61 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) invalidate];
    return [*(v61 + v105) setDelegate_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD742A2C(uint64_t (*a1)(void, double))
{
  v3 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = MEMORY[0x1E69E7D40];
  if (*(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xB0)) == 1)
  {
    sub_1BE04D1E4();
    v12 = sub_1BE04D204();
    v13 = sub_1BE052C34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BD026000, v12, v13, "Attempted to pause state machine while it's waiting for app protection unlock to start. Removing hold to resume on start", v14, 2u);
      MEMORY[0x1BFB45F20](v14, -1, -1);
    }

    result = (*(v5 + 8))(v10, v4);
    v16 = *((*v11 & *v3) + 0xB8);
    if (*(v3 + v16) == 1)
    {
      *(v3 + v16) = 0;
    }
  }

  else
  {
    sub_1BE04D084();
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v17, v18, "Pause state machine", v19, 2u);
      MEMORY[0x1BFB45F20](v19, -1, -1);
    }

    v20 = (*(v5 + 8))(v7, v4);
    v21 = MEMORY[0x1EEE9AC00](v20);
    v22 = a1(0, v21);
    *(&v47 - 2) = v22;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v47 - 2) = v22;
    v24 = swift_getKeyPath();
    sub_1BE04D8B4(&v48);
    KeyPath, v25, v26, v27, v28, v29, v30, v31;
    v24, v32, v33, v34, v35, v36, v37, v38;
    v39 = v48;
    sub_1BE04CAA4();
    v39, v40, v41, v42, v43, v44, v45, v46;
    sub_1BD741FBC();
    return [*(v3 + *((*v11 & *v3) + 0xD8)) didResignActive_];
  }

  return result;
}

id sub_1BD742DF8(uint64_t (*a1)(void, double), uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = MEMORY[0x1E69E7D40];
  if (*(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xB0)) == 1)
  {
    sub_1BE04D1E4();
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BD026000, v14, v15, "Attempted to resume state machine while it's waiting for app protection unlock start. Holding until start has been called", v16, 2u);
      MEMORY[0x1BFB45F20](v16, -1, -1);
    }

    result = (*(v7 + 8))(v12, v6);
    *(v5 + *((*v13 & *v5) + 0xB8)) = 1;
  }

  else
  {
    sub_1BE04D084();
    v18 = sub_1BE04D204();
    v19 = sub_1BE052C54();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BD026000, v18, v19, "Resume state machine", v20, 2u);
      MEMORY[0x1BFB45F20](v20, -1, -1);
    }

    v21 = (*(v7 + 8))(v9, v6);
    v22 = MEMORY[0x1EEE9AC00](v21);
    v23 = a1(0, v22);
    *(&v48 - 2) = v23;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v48 - 2) = v23;
    v25 = swift_getKeyPath();
    sub_1BE04D8B4(&v49);
    KeyPath, v26, v27, v28, v29, v30, v31, v32;
    v25, v33, v34, v35, v36, v37, v38, v39;
    v40 = v49;
    sub_1BE04CAA4();
    v40, v41, v42, v43, v44, v45, v46, v47;
    sub_1BD74224C(a2);
    return [*(v5 + *((*v13 & *v5) + 0xD8)) didBecomeActive_];
  }

  return result;
}

id sub_1BD743180(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  result = [*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0)) paymentRequest];
  if (result)
  {
    v6 = result;
    v7 = [result isPeerPaymentRequest];

    if (v7)
    {
      MEMORY[0x1BFB41980](*MEMORY[0x1E69BA158], 0);
    }

    v8 = *(v2 + *((*v4 & *v2) + 0x70));
    KeyPath = swift_getKeyPath();
    v10 = swift_getKeyPath();
    sub_1BE04D8B4(v52);
    KeyPath, v11, v12, v13, v14, v15, v16, v17;
    v10, v18, v19, v20, v21, v22, v23, v24;
    v25 = v52[0];
    LOBYTE(v10) = sub_1BE04CA44();
    v25, v26, v27, v28, v29, v30, v31, v32;
    if (v10)
    {
      [*(v8 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
      v33 = swift_getKeyPath();
      v34 = swift_getKeyPath();
      sub_1BE04D8B4(v52);
      v33, v35, v36, v37, v38, v39, v40, v41;
      v34, v42, v43, v44, v45, v46, v47, v48;
      v49 = v52[0];
      sub_1BE04CA54();
      v50 = *(v49 + qword_1EBD55580);
      v51 = *(v49 + qword_1EBD55580 + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v52[0] = v50;
      v52[1] = v51;
      sub_1BE04D8C4();
    }

    result = [*(v2 + *((*v4 & *v2) + 0xD8)) didCancel];
    if (a1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result authorizationDidFinishWithError_];
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD7433DC(uint64_t a1, void *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void, double), uint64_t a5, uint64_t a6)
{
  v79 = a3;
  v80 = a5;
  v78 = a4;
  v8 = v6;
  v11 = sub_1BE04D214();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E7D40];
  v77 = a1;
  v81 = a6;
  if (a1)
  {
    goto LABEL_5;
  }

  v76 = v13;
  v18 = *(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0xD0));
  result = [v18 paymentRequest];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = result;
  v21 = [result requestType];

  if (v21 == 13)
  {
    v17 = MEMORY[0x1E69E7D40];
LABEL_5:
    result = [*(v8 + *((*v17 & *v8) + 0x60) + 32) paymentRequest];
    if (result)
    {
      v22 = result;
      sub_1BD0E5E8C(0, &unk_1EBD35E80, 0x1E69B8540);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B6CA0;
      v24 = *MEMORY[0x1E69BA680];
      *(inited + 32) = *MEMORY[0x1E69BA680];
      v25 = sub_1BE052434();
      v26 = MEMORY[0x1E69BABE8];
      *(inited + 40) = v25;
      *(inited + 48) = v27;
      v28 = *v26;
      *(inited + 56) = *v26;
      *(inited + 64) = sub_1BE052434();
      *(inited + 72) = v29;
      v30 = v24;
      v31 = v28;
      v32 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      sub_1BD6B14D4(v32, v22);

      v32, v33, v34, v35, v36, v37, v38, v39;
      v41 = MEMORY[0x1EEE9AC00](v40);
      v42 = v79(0, v41);
      *(&v75 - 2) = v42;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v75 - 2) = v42;
      v44 = swift_getKeyPath();
      sub_1BE04D8B4(&v82);
      KeyPath, v45, v46, v47, v48, v49, v50, v51;
      v44, v52, v53, v54, v55, v56, v57, v58;
      v59 = v82;
      sub_1BD6B261C(v82);
      v59, v60, v61, v62, v63, v64, v65, v66;
      if (a2)
      {
        v67 = a2;
      }

      else
      {
        v67 = sub_1BD743890(v77, 0, v78);
      }

      v68 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v69 = a2;
      sub_1BE048964();
      sub_1BD7F2940(v67, v81, v68);
    }

    __break(1u);
    goto LABEL_17;
  }

  result = [v18 paymentRequest];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v70 = result;
  v71 = [result disablePasscodeFallback];

  v17 = MEMORY[0x1E69E7D40];
  if (v71)
  {
    goto LABEL_5;
  }

  sub_1BE04D084();
  v72 = sub_1BE04D204();
  v73 = sub_1BE052C34();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_1BD026000, v72, v73, "Cannot evaluate policy, cancelling", v74, 2u);
    MEMORY[0x1BFB45F20](v74, -1, -1);
  }

  (*(v12 + 8))(v16, v76);
  return sub_1BD743180(1);
}

void *sub_1BD743890(uint64_t a1, int a2, uint64_t (*a3)(void, double))
{
  v5 = v3;
  v224 = a2;
  v223 = a1;
  v6 = sub_1BE04BD74();
  v229 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v220 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v220 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v226 = &v220 - v13;
  v227 = sub_1BE04D214();
  v14 = *(v227 - 8);
  v15 = MEMORY[0x1EEE9AC00](v227);
  v17 = &v220 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3(0, v15);
  v231 = v18;
  KeyPath = swift_getKeyPath();
  v230 = v18;
  v20 = swift_getKeyPath();
  sub_1BE04D8B4(v232);
  KeyPath, v21, v22, v23, v24, v25, v26, v27;
  v20, v28, v29, v30, v31, v32, v33, v34;
  v35 = v232[0];
  v36 = swift_getKeyPath();
  v37 = swift_getKeyPath();
  sub_1BE04D8B4(v232);
  v36, v38, v39, v40, v41, v42, v43, v44;
  v37, v45, v46, v47, v48, v49, v50, v51;
  v35, v52, v53, v54, v55, v56, v57, v58;
  v59 = v232[0];
  v60 = objc_allocWithZone(MEMORY[0x1E69BC748]);
  v225 = v59;
  v61 = [v60 initWithPolicy_];
  if (!v61)
  {
    goto LABEL_48;
  }

  v62 = v61;
  v221 = v8;
  v222 = v11;
  v228 = v6;
  MEMORY[0x1EEE9AC00](v61);
  v63 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v63);
  v64 = swift_getKeyPath();
  sub_1BE04D8B4(v232);
  v63, v65, v66, v67, v68, v69, v70, v71;
  v64, v72, v73, v74, v75, v76, v77, v78;
  v79 = v232[0];
  v80 = swift_getKeyPath();
  v81 = swift_getKeyPath();
  sub_1BE04D8B4(v232);
  v80, v82, v83, v84, v85, v86, v87, v88;
  v81, v89, v90, v91, v92, v93, v94, v95;
  v79, v96, v97, v98, v99, v100, v101, v102;
  v103 = PKAuthenticatorPolicyDescription_0(v232[0]);
  if (!v103)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v104 = v103;
  v105 = sub_1BE052434();
  v107 = v106;

  v232[0] = v105;
  v232[1] = v107;
  v108 = sub_1BE052644();
  v110 = v109;
  sub_1BE04D084();
  sub_1BE048C84();
  v111 = sub_1BE04D204();
  v112 = sub_1BE052C54();
  v110, v113, v114, v115, v116, v117, v118, v119;
  if (os_log_type_enabled(v111, v112))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v232[0] = v121;
    *v120 = 136315138;
    *(v120 + 4) = sub_1BD123690(v108, v110, v232);
    _os_log_impl(&dword_1BD026000, v111, v112, "New authenticator policy is %s", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v121, v122, v123, v124, v125, v126, v127, v128);
    MEMORY[0x1BFB45F20](v121, -1, -1);
    MEMORY[0x1BFB45F20](v120, -1, -1);
  }

  (*(v14 + 8))(v17, v227);
  v129 = *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xD0));
  v130 = [v129 paymentRequest];
  v131 = v228;
  if (!v130)
  {
    goto LABEL_43;
  }

  v132 = v130;
  v133 = v229;
  if ((v224 & 1) == 0)
  {
    [v62 setInitialAuthenticatorState_];
  }

  if (([v132 _isAMPPayment] & 1) != 0 || objc_msgSend(v132, sel_requestType) == 7 || objc_msgSend(v132, sel_requestType) == 13)
  {
    v134 = [v132 externalizedContext];
    if (v134)
    {
      v135 = v134;
      v136 = sub_1BE04AAC4();
      v138 = v137;

      v139 = sub_1BE04AAB4();
      sub_1BD1245AC(v136, v138, v140, v141, v142, v143, v144, v145);
    }

    else
    {
      v139 = 0;
    }

    [v62 setExternalizedContext_];

    v146 = [v132 accesssControlRef];
    v147 = &selRef_setAccessControlRef_;
LABEL_15:
    [v62 *v147];

    goto LABEL_16;
  }

  if ([v132 requestType] == 6)
  {
    v209 = [v132 externalizedContext];
    if (v209)
    {
      v210 = v209;
      v211 = sub_1BE04AAC4();
      v213 = v212;

      v146 = sub_1BE04AAB4();
      sub_1BD1245AC(v211, v213, v214, v215, v216, v217, v218, v219);
    }

    else
    {
      v146 = 0;
    }

    v147 = &selRef_setExternalizedContext_;
    goto LABEL_15;
  }

LABEL_16:
  if ([v132 _isAMPPayment])
  {
    [v62 setMaxBiometryFailures_];
  }

  v155 = v226;
  if (v225 == 6 || v225 == 3)
  {
    (*(v133 + 104))(v226, *MEMORY[0x1E69B8068], v131);
    v156 = PKPassKitBundle();
    if (v156)
    {
      v157 = v156;
      sub_1BE04B6F4();
      v159 = v158;

      (*(v133 + 8))(v155, v131);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v160 = swift_allocObject();
      *(v160 + 16) = xmmword_1BE0B69E0;
      v161 = [v129 pass];
      if (v161)
      {
        v169 = v161;
        v110, v162, v163, v164, v165, v166, v167, v168;
        v170 = [v169 localizedDescription];

        v171 = sub_1BE052434();
        v173 = v172;

        *(v160 + 56) = MEMORY[0x1E69E6158];
        *(v160 + 64) = sub_1BD110550();
        *(v160 + 32) = v171;
        *(v160 + 40) = v173;
        sub_1BE052454();
        v175 = v174;
        v159, v174, v176, v177, v178, v179, v180, v181;
        v182 = sub_1BE052404();
        v175, v183, v184, v185, v186, v187, v188, v189;
        [v62 setPINTitle_];

        v190 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [v62 setPINLength_];

        goto LABEL_24;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      result = sub_1BE053994();
      __break(1u);
      return result;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v110, v148, v149, v150, v151, v152, v153, v154;
LABEL_24:
  v191 = [v132 localizedConfirmationTitle];
  if (v191)
  {
    v192 = v191;
LABEL_33:
    [v62 setPasscodeTitle_];

    goto LABEL_34;
  }

  if ([v132 confirmationStyle] == 1)
  {
    v193 = v229;
    v194 = v222;
    (*(v229 + 104))(v222, *MEMORY[0x1E69B8068], v131);
    v195 = PKPassKitBundle();
    if (v195)
    {
      v196 = v195;
LABEL_32:
      sub_1BE04B6F4();
      v200 = v199;

      (*(v193 + 8))(v194, v131);
      v192 = sub_1BE052404();
      v200, v201, v202, v203, v204, v205, v206, v207;
      goto LABEL_33;
    }

    goto LABEL_46;
  }

  v197 = [v132 confirmationStyle];
  v193 = v229;
  if (v197 == 3)
  {
    v194 = v221;
    (*(v229 + 104))(v221, *MEMORY[0x1E69B8068], v131);
    v198 = PKPassKitBundle();
    if (v198)
    {
      v196 = v198;
      goto LABEL_32;
    }

    goto LABEL_47;
  }

LABEL_34:
  if ([v132 useLocationBasedAuthorization])
  {
    [v62 setUseLocationBasedAuthorization_];
  }

  return v62;
}

void sub_1BD7442F4(uint64_t a1, void *a2, uint64_t (*a3)(void, double), uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t (*a7)(void, double), uint64_t a8)
{
  v379 = a8;
  v380 = a5;
  v387 = a7;
  v388 = a6;
  v381 = a4;
  v390 = a3;
  v9 = sub_1BE04C974();
  v391 = *(v9 - 8);
  v392 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v386 = &v378 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v389 = &v378 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40, &unk_1BE0D5BB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v384 = (&v378 - v14);
  v385 = sub_1BE04C7B4();
  v383 = *(v385 - 8);
  MEMORY[0x1EEE9AC00](v385);
  v382 = &v378 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04D214();
  v17 = *(v16 - 8);
  v394 = v16;
  v395 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v378 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v378 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v378 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v378 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v378 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v378 - v33;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v36 = Strong;
  v378 = v25;
  v37 = [a2 result];
  v38 = *((*MEMORY[0x1E69E7D40] & *v36) + 0x60);
  v393 = v36;
  v39 = [*&v36[v38 + 32] paymentRequest];
  if (!v39)
  {
    __break(1u);
    goto LABEL_76;
  }

  v40 = v39;
  sub_1BD6B99C4(v37, v39);

  v41 = [a2 result];
  v42 = a2;
  if (v41 <= 3)
  {
    v43 = v393;
    if (v41 <= 1)
    {
      if (v41)
      {
        if (v41 == 1)
        {
          sub_1BE04D084();
          v44 = sub_1BE04D204();
          v45 = sub_1BE052C54();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_1BD026000, v44, v45, "Authentication canceled by user", v46, 2u);
            MEMORY[0x1BFB45F20](v46, -1, -1);
          }

          (*(v395 + 8))(v34, v394);
          v47 = [*(v43 + *((*MEMORY[0x1E69E7D40] & *v43) + 0xD8)) didResolveError];
          v48 = MEMORY[0x1EEE9AC00](v47);
          v49 = v390(0, v48);
          *(&v378 - 2) = v49;
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v378 - 2) = v49;
          v51 = swift_getKeyPath();
          sub_1BE04D8B4(&v397);
          KeyPath, v52, v53, v54, v55, v56, v57, v58;
          v51, v59, v60, v61, v62, v63, v64, v65;
          v66 = v397;
          sub_1BE04CB64();
          v66, v67, v68, v69, v70, v71, v72, v73;

          return;
        }

LABEL_20:

        return;
      }

      v107 = *((*MEMORY[0x1E69E7D40] & *v393) + 0xD8);
      if ([*&v393[v107] state] == 5)
      {
        v108 = [a2 biometricMatch];
        if (v108)
        {
          v109 = MEMORY[0x1EEE9AC00](v108);
          v110 = v390(0, v109);
          *(&v378 - 2) = v110;
          v111 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v111);
          *(&v378 - 2) = v110;
          v112 = swift_getKeyPath();
          sub_1BE04D8B4(&v397);
          v111, v113, v114, v115, v116, v117, v118, v119;
          v112, v120, v121, v122, v123, v124, v125, v126;
          v127 = v397;
          v128 = *(v397 + qword_1EBDAADC0);
          sub_1BE048964();
          v127, v129, v130, v131, v132, v133, v134, v135;
          sub_1BDA75178(8, 17, 0, 0);
          v128, v136, v137, v138, v139, v140, v141, v142;
        }

        IsAvailable = PKPearlIsAvailable();
        if ((IsAvailable & 1) == 0)
        {
          IsAvailable = PKOpticIDIsAvailable();
          if ((IsAvailable & 1) == 0)
          {
            v144 = [*(v43 + v107) beginDelayingAuthorizedState];
            v145 = MEMORY[0x1EEE9AC00](v144);
            v146 = v390(0, v145);
            *(&v378 - 2) = v146;
            v147 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v147);
            *(&v378 - 2) = v146;
            v148 = swift_getKeyPath();
            sub_1BE04D8B4(&v397);
            v147, v149, v150, v151, v152, v153, v154, v155;
            v148, v156, v157, v158, v159, v160, v161, v162;
            v163 = v397;
            v164 = *(v397 + qword_1EBDAADC0);
            sub_1BE048964();
            v163, v165, v166, v167, v168, v169, v170, v171;
            v172 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1BE048964();
            sub_1BDA75178(11, 17, v380, v172);
            v164, v173, v174, v175, v176, v177, v178, v179;

            if (0.5 - CFAbsoluteTimeGetCurrent() > 0.0)
            {
              IsAvailable = [*(v43 + v107) delayAuthorizedStateByDuration_];
            }
          }
        }

        v180 = MEMORY[0x1EEE9AC00](IsAvailable);
        v181 = v390(0, v180);
        *(&v378 - 2) = v181;
        v182 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v182);
        *(&v378 - 2) = v181;
        v183 = swift_getKeyPath();
        sub_1BE04D8B4(&v397);
        v182, v184, v185, v186, v187, v188, v189, v190;
        v183, v191, v192, v193, v194, v195, v196, v197;
        v198 = v397;
        v200 = v382;
        v199 = v383;
        v201 = v385;
        (*(v383 + 104))(v382, *MEMORY[0x1E69BC988], v385);
        v202 = sub_1BE051F44();
        v203 = v384;
        (*(*(v202 - 8) + 56))(v384, 1, 1, v202);
        sub_1BD83C0A8(v200, 0, 0, v203);
        v198, v204, v205, v206, v207, v208, v209, v210;
        sub_1BD0DE53C(v203, &unk_1EBD45E40, &unk_1BE0D5BB0);
        (*(v199 + 8))(v200, v201);
        v211 = swift_unknownObjectWeakLoadStrong();
        if (v211)
        {
          [v211 authorizationWillStart];
          swift_unknownObjectRelease();
        }

        v212 = *(v43 + v107);
        v213 = [v42 credential];
        if (v213)
        {
          v214 = v213;
          v215 = sub_1BE04AAC4();
          v217 = v216;

          v218 = sub_1BE04AAB4();
          sub_1BD1245AC(v215, v217, v219, v220, v221, v222, v223, v224);
        }

        else
        {
          v218 = 0;
        }

        [v212 didAuthenticateWithCredential_];

        swift_unknownObjectRelease();
        return;
      }

      v257 = v378;
      sub_1BE04D084();
      v258 = sub_1BE04D204();
      v259 = sub_1BE052C54();
      if (os_log_type_enabled(v258, v259))
      {
        v260 = swift_slowAlloc();
        *v260 = 0;
        _os_log_impl(&dword_1BD026000, v258, v259, "Authentication successful but in wrong state - discarding credential", v260, 2u);
        MEMORY[0x1BFB45F20](v260, -1, -1);
      }

      else
      {
      }

      v261 = *(v395 + 8);
      v262 = v257;
      goto LABEL_57;
    }

    if (v41 == 2)
    {
      sub_1BE04D084();
      v225 = sub_1BE04D204();
      v226 = sub_1BE052C54();
      if (os_log_type_enabled(v225, v226))
      {
        v227 = swift_slowAlloc();
        *v227 = 0;
        _os_log_impl(&dword_1BD026000, v225, v226, "Authentication canceled by app", v227, 2u);
        MEMORY[0x1BFB45F20](v227, -1, -1);
      }

      else
      {
      }

      v261 = *(v395 + 8);
      v262 = v31;
LABEL_57:
      v300 = v394;
LABEL_73:
      v261(v262, v300);
      return;
    }

    v74 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
LABEL_13:
    sub_1BE04D084();
    v75 = sub_1BE04D204();
    v76 = sub_1BE052C54();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_1BD026000, v75, v76, "Authentication canceled by biometry or selected fallback", v77, 2u);
      MEMORY[0x1BFB45F20](v77, -1, -1);
    }

    (*(v395 + 8))(v22, v394);
    v78 = MEMORY[0x1E69E7D40];
    v79 = *((*MEMORY[0x1E69E7D40] & *v43) + 0xD0);
    v80 = [*(v43 + v79) v74[60]];
    v81 = v389;
    if (v80)
    {
      v82 = v80;
      v83 = [v80 requestType];
      v85 = v391;
      v84 = v392;
      if (v83 == 13)
      {
        [*(v43 + *((*v78 & *v43) + 0xD8)) didResolveError];
      }

      else if ([v82 _isAMPPayment])
      {
        sub_1BD7472D8(v387);
      }

      (*(v85 + 104))(v81, *MEMORY[0x1E69BCA48], v84);
      v254 = [*(v43 + v79) v74[60]];
      if (v254)
      {
        v255 = v254;
        v256 = [v254 _isAMPPayment];

        if (v256)
        {
          v388(v81);
        }

        (*(v85 + 8))(v81, v84);
        return;
      }

      goto LABEL_77;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v43 = v393;
  if ((v41 - 4) >= 2)
  {
    if (v41 != 6)
    {
      v74 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      if (v41 != 7)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    sub_1BE04D084();
    v228 = sub_1BE04D204();
    v229 = sub_1BE052C54();
    if (os_log_type_enabled(v228, v229))
    {
      v230 = swift_slowAlloc();
      *v230 = 0;
      _os_log_impl(&dword_1BD026000, v228, v229, "Triggered biolockout", v230, 2u);
      MEMORY[0x1BFB45F20](v230, -1, -1);
    }

    (*(v395 + 8))(v28, v394);
    v231 = MEMORY[0x1E69E7D40];
    v232 = *((*MEMORY[0x1E69E7D40] & *v43) + 0xD0);
    v233 = [*(v43 + v232) paymentRequest];
    if (!v233)
    {
      goto LABEL_78;
    }

    v234 = v233;
    if ([v233 _isPVKRequest])
    {
      v235 = v393;
      v236 = *(v235 + *((*v231 & *v235) + 0xD8));
      v237 = *MEMORY[0x1E69BBBC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x80000001BE128F00;
      v239 = v236;
      v240 = v237;
      v241 = [v42 result];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 48) = v241;
      v242 = sub_1BD1AACF8(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD52080, &qword_1BE0BDD40);
      v243 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v244 = sub_1BE052224();
      v242, v245, v246, v247, v248, v249, v250, v251;
      v252 = [v243 initWithDomain:v240 code:-1 userInfo:v244];

      v253 = sub_1BE04A844();
      [v239 didEncounterFatalError_];

      return;
    }

    v263 = &selRef__endReportingIfNecessary;
    if ([v234 requestType] == 13)
    {
      v264 = MEMORY[0x1EEE9AC00](13);
      v265 = v390(0, v264);
      *(&v378 - 2) = v265;
      v266 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v266);
      *(&v378 - 2) = v265;
      v267 = swift_getKeyPath();
      v268 = v393;
      sub_1BE04D8B4(&v397);
      v266, v269, v270, v271, v272, v273, v274, v275;
      v267, v276, v277, v278, v279, v280, v281, v282;
      v283 = v397;
      v284 = *(v397 + qword_1EBDAADC0);
      sub_1BE048964();
      v283, v285, v286, v287, v288, v289, v290, v291;
      LOBYTE(v283) = v284[61];
      v284, v292, v293, v294, v295, v296, v297, v298;
      if (v283)
      {
        sub_1BD747090(v381, v379);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v299);
        *(&v378 - 2) = v265;
        v305 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v305);
        *(&v378 - 2) = v265;
        v306 = swift_getKeyPath();
        sub_1BE04D8B4(&v397);
        v305, v307, v308, v309, v310, v311, v312, v313;
        v306, v314, v315, v316, v317, v318, v319, v320;
        v321 = v397;
        sub_1BE04CA74();
        v321, v322, v323, v324, v325, v326, v327, v328;
        MEMORY[0x1EEE9AC00](v329);
        *(&v378 - 2) = v265;
        v330 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v330);
        *(&v378 - 2) = v265;
        v331 = swift_getKeyPath();
        sub_1BE04D8B4(&v397);
        v330, v332, v333, v334, v335, v336, v337, v338;
        v331, v339, v340, v341, v342, v343, v344, v345;
        v346 = v397;
        v347 = *(v397 + qword_1EBDAADC0);
        v348 = v397 + qword_1EBDAADA8;
        v397 = *(v397 + qword_1EBDAADA8);
        v398 = *(v348 + 16);
        v399 = *(v348 + 32);
        v349 = v397;
        v350 = v399;
        v400 = *(&v397 + 1);
        v401[0] = *(&v398 + 1);
        v351 = *(&v399 + 1);
        sub_1BE048964();
        v352 = v349;
        sub_1BD0DE19C(&v400, v396, &qword_1EBD3D490, &unk_1BE0D42B0);
        sub_1BD0DE19C(v401, v396, &qword_1EBD40150, &qword_1BE0C12A0);
        v353 = v350;
        sub_1BE048964();
        sub_1BDA74FEC(&v397, v346, 0, 0);

        sub_1BD0DE53C(&v400, &qword_1EBD3D490, &unk_1BE0D42B0);
        sub_1BD0DE53C(v401, &qword_1EBD40150, &qword_1BE0C12A0);
        v346, v354, v355, v356, v357, v358, v359, v360;
        v347, v361, v362, v363, v364, v365, v366, v367;
        v351, v368, v369, v370, v371, v372, v373, v374;

        v263 = &selRef__endReportingIfNecessary;
      }

      v302 = v386;
LABEL_69:
      (*(v391 + 104))(v302, *MEMORY[0x1E69BCA48], v392);
      v375 = [*&v268[v232] paymentRequest];
      if (v375)
      {
        v376 = v375;
        v377 = [v375 v263[454]];

        if (v377)
        {
          v388(v302);
        }

        v300 = v392;
        v261 = *(v391 + 8);
        v262 = v302;
        goto LABEL_73;
      }

      goto LABEL_79;
    }

    v301 = [*&v393[v232] paymentRequest];
    v302 = v386;
    if (!v301)
    {
LABEL_80:
      __break(1u);
      return;
    }

    v303 = v301;
    if ([v301 _isAMPPayment])
    {
      v268 = v393;
      v304 = [*&v393[v232] mode];

      if (v304 == 1)
      {
LABEL_68:
        sub_1BD7472D8(v387);
        goto LABEL_69;
      }
    }

    else
    {

      v268 = v393;
    }

    if (![v234 _isAMPPayment])
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  sub_1BE04D084();
  v86 = sub_1BE04D204();
  v87 = sub_1BE052C54();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_1BD026000, v86, v87, "Authentication pre-empted or failed", v88, 2u);
    MEMORY[0x1BFB45F20](v88, -1, -1);
  }

  (*(v395 + 8))(v19, v394);
  v89 = *(v43 + *((*MEMORY[0x1E69E7D40] & *v43) + 0xD8));
  v90 = *MEMORY[0x1E69BBBC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
  v91 = swift_initStackObject();
  *(v91 + 16) = xmmword_1BE0B69E0;
  *(v91 + 32) = 0xD000000000000015;
  *(v91 + 40) = 0x80000001BE128F00;
  v92 = v89;
  v93 = v90;
  v94 = [v42 result];
  *(v91 + 72) = MEMORY[0x1E69E6530];
  *(v91 + 48) = v94;
  v95 = sub_1BD1AACF8(v91);
  swift_setDeallocating();
  sub_1BD0DE53C(v91 + 32, &qword_1EBD52080, &qword_1BE0BDD40);
  v96 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v97 = sub_1BE052224();
  v95, v98, v99, v100, v101, v102, v103, v104;
  v105 = [v96 initWithDomain:v93 code:-1 userInfo:v97];

  v106 = sub_1BE04A844();
  [v92 didEncounterFatalError_];
}

void sub_1BD745978(uint64_t a1, void *a2, uint64_t (*a3)(void, double), uint64_t a4, uint64_t a5, uint64_t (*a6)(void, double), uint64_t a7)
{
  v377 = a7;
  v378 = a5;
  v384 = a6;
  v379 = a4;
  v387 = a3;
  v8 = sub_1BE04C974();
  v388 = *(v8 - 8);
  v389 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v385 = &v375 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v386 = &v375 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40, &unk_1BE0D5BB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v382 = (&v375 - v13);
  v383 = sub_1BE04C7B4();
  v381 = *(v383 - 8);
  MEMORY[0x1EEE9AC00](v383);
  v380 = &v375 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04D214();
  v16 = *(v15 - 8);
  v391 = v15;
  v392 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v375 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v375 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v375 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v375 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v375 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v375 - v32;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v35 = Strong;
  v376 = v24;
  v36 = [a2 result];
  v37 = *((*MEMORY[0x1E69E7D40] & *v35) + 0x60);
  v390 = v35;
  v38 = [*&v35[v37 + 32] paymentRequest];
  if (!v38)
  {
    __break(1u);
    goto LABEL_73;
  }

  v39 = v38;
  sub_1BD6B99C4(v36, v38);

  v40 = [a2 result];
  v41 = a2;
  if (v40 > 3)
  {
    v42 = v390;
    if ((v40 - 4) < 2)
    {
      sub_1BE04D084();
      v84 = sub_1BE04D204();
      v85 = sub_1BE052C54();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_1BD026000, v84, v85, "Authentication pre-empted or failed", v86, 2u);
        MEMORY[0x1BFB45F20](v86, -1, -1);
      }

      (*(v392 + 8))(v18, v391);
      v87 = *(v42 + *((*MEMORY[0x1E69E7D40] & *v42) + 0xD8));
      v88 = *MEMORY[0x1E69BBBC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x80000001BE128F00;
      v90 = v87;
      v91 = v88;
      v92 = [v41 result];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 48) = v92;
      v93 = sub_1BD1AACF8(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD52080, &qword_1BE0BDD40);
      v94 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v95 = sub_1BE052224();
      v93, v96, v97, v98, v99, v100, v101, v102;
      v103 = [v94 initWithDomain:v91 code:-1 userInfo:v95];

      v104 = sub_1BE04A844();
      [v90 didEncounterFatalError_];

      return;
    }

    if (v40 != 6)
    {
      if (v40 != 7)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    sub_1BE04D084();
    v226 = sub_1BE04D204();
    v227 = sub_1BE052C54();
    if (os_log_type_enabled(v226, v227))
    {
      v228 = swift_slowAlloc();
      *v228 = 0;
      _os_log_impl(&dword_1BD026000, v226, v227, "Triggered biolockout", v228, 2u);
      MEMORY[0x1BFB45F20](v228, -1, -1);
    }

    (*(v392 + 8))(v27, v391);
    v229 = MEMORY[0x1E69E7D40];
    v230 = *((*MEMORY[0x1E69E7D40] & *v42) + 0xD0);
    v231 = [*(v42 + v230) paymentRequest];
    v232 = v389;
    if (!v231)
    {
      goto LABEL_75;
    }

    v233 = v231;
    v234 = [v231 _isPVKRequest];
    v235 = v388;
    if (v234)
    {
      v236 = v390;
      v237 = *(v236 + *((*v229 & *v236) + 0xD8));
      v238 = *MEMORY[0x1E69BBBC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
      v239 = swift_initStackObject();
      *(v239 + 16) = xmmword_1BE0B69E0;
      *(v239 + 32) = 0xD000000000000015;
      *(v239 + 40) = 0x80000001BE128F00;
      v240 = v237;
      v241 = v238;
      v242 = [v41 result];
      *(v239 + 72) = MEMORY[0x1E69E6530];
      *(v239 + 48) = v242;
      v243 = sub_1BD1AACF8(v239);
      swift_setDeallocating();
      sub_1BD0DE53C(v239 + 32, &qword_1EBD52080, &qword_1BE0BDD40);
      v244 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v245 = sub_1BE052224();
      v243, v246, v247, v248, v249, v250, v251, v252;
      v253 = [v244 initWithDomain:v241 code:-1 userInfo:v245];

      v254 = sub_1BE04A844();
      [v240 didEncounterFatalError_];

      return;
    }

    v262 = &selRef__endReportingIfNecessary;
    if ([v233 requestType] == 13)
    {
      v263 = MEMORY[0x1EEE9AC00](13);
      v264 = v387(0, v263);
      *(&v375 - 2) = v264;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v375 - 2) = v264;
      v266 = swift_getKeyPath();
      v267 = v390;
      sub_1BE04D8B4(&v394);
      KeyPath, v268, v269, v270, v271, v272, v273, v274;
      v266, v275, v276, v277, v278, v279, v280, v281;
      v282 = v394;
      v283 = *(v394 + qword_1EBDAADC0);
      sub_1BE048964();
      v282, v284, v285, v286, v287, v288, v289, v290;
      LOBYTE(v282) = v283[61];
      v283, v291, v292, v293, v294, v295, v296, v297;
      if (v282)
      {
        sub_1BD747090(v379, v377);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v298);
        *(&v375 - 2) = v264;
        v302 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v302);
        *(&v375 - 2) = v264;
        v303 = swift_getKeyPath();
        sub_1BE04D8B4(&v394);
        v302, v304, v305, v306, v307, v308, v309, v310;
        v303, v311, v312, v313, v314, v315, v316, v317;
        v318 = v394;
        sub_1BE04CA74();
        v318, v319, v320, v321, v322, v323, v324, v325;
        MEMORY[0x1EEE9AC00](v326);
        *(&v375 - 2) = v264;
        v327 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v327);
        *(&v375 - 2) = v264;
        v328 = swift_getKeyPath();
        sub_1BE04D8B4(&v394);
        v327, v329, v330, v331, v332, v333, v334, v335;
        v328, v336, v337, v338, v339, v340, v341, v342;
        v343 = v394;
        v344 = *(v394 + qword_1EBDAADC0);
        v345 = v394 + qword_1EBDAADA8;
        v394 = *(v394 + qword_1EBDAADA8);
        v395 = *(v345 + 16);
        v396 = *(v345 + 32);
        v346 = v394;
        v347 = v396;
        v397 = *(&v394 + 1);
        v398[0] = *(&v395 + 1);
        v348 = *(&v396 + 1);
        sub_1BE048964();
        v349 = v346;
        sub_1BD0DE19C(&v397, v393, &qword_1EBD3D490, &unk_1BE0D42B0);
        sub_1BD0DE19C(v398, v393, &qword_1EBD40150, &qword_1BE0C12A0);
        v350 = v347;
        sub_1BE048964();
        sub_1BDA74FEC(&v394, v343, 0, 0);

        sub_1BD0DE53C(&v397, &qword_1EBD3D490, &unk_1BE0D42B0);
        v235 = v388;
        sub_1BD0DE53C(v398, &qword_1EBD40150, &qword_1BE0C12A0);
        v343, v351, v352, v353, v354, v355, v356, v357;
        v344, v358, v359, v360, v361, v362, v363, v364;
        v348, v365, v366, v367, v368, v369, v370, v371;

        v232 = v389;
      }

      v262 = &selRef__endReportingIfNecessary;
LABEL_67:
      (*(v235 + 104))(v385, *MEMORY[0x1E69BCA48], v232);
      v372 = [*&v267[v230] paymentRequest];
      if (v372)
      {
        v373 = v372;
        v374 = [v372 v262[454]];

        if (v374)
        {
          sub_1BD741B2C(v385);
        }

        (*(v235 + 8))(v385, v232);
        return;
      }

      goto LABEL_76;
    }

    v299 = [*&v390[v230] paymentRequest];
    if (!v299)
    {
LABEL_77:
      __break(1u);
      return;
    }

    v300 = v299;
    if ([v299 _isAMPPayment])
    {
      v267 = v390;
      v301 = [*&v390[v230] mode];

      if (v301 == 1)
      {
LABEL_66:
        sub_1BD7472D8(v384);
        goto LABEL_67;
      }
    }

    else
    {

      v267 = v390;
    }

    if (![v233 _isAMPPayment])
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  v42 = v390;
  if (v40 > 1)
  {
    if (v40 == 2)
    {
      sub_1BE04D084();
      v223 = sub_1BE04D204();
      v224 = sub_1BE052C54();
      if (os_log_type_enabled(v223, v224))
      {
        v225 = swift_slowAlloc();
        *v225 = 0;
        _os_log_impl(&dword_1BD026000, v223, v224, "Authentication canceled by app", v225, 2u);
        MEMORY[0x1BFB45F20](v225, -1, -1);
      }

      else
      {
      }

      (*(v392 + 8))(v30, v391);
      return;
    }

LABEL_15:
    sub_1BE04D084();
    v73 = sub_1BE04D204();
    v74 = sub_1BE052C54();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1BD026000, v73, v74, "Authentication canceled by biometry or selected fallback", v75, 2u);
      MEMORY[0x1BFB45F20](v75, -1, -1);
    }

    (*(v392 + 8))(v21, v391);
    v76 = MEMORY[0x1E69E7D40];
    v77 = *((*MEMORY[0x1E69E7D40] & *v42) + 0xD0);
    v78 = [*(v42 + v77) paymentRequest];
    v79 = v388;
    v80 = v386;
    if (v78)
    {
      v81 = v78;
      v82 = [v78 requestType];
      v83 = v389;
      if (v82 == 13)
      {
        [*(v42 + *((*v76 & *v42) + 0xD8)) didResolveError];
      }

      else if ([v81 _isAMPPayment])
      {
        sub_1BD7472D8(v384);
      }

      (*(v79 + 104))(v80, *MEMORY[0x1E69BCA48], v83);
      v255 = [*(v42 + v77) paymentRequest];
      if (v255)
      {
        v256 = v255;
        v257 = [v255 _isAMPPayment];

        if (v257)
        {
          sub_1BD741B2C(v80);
        }

        (*(v79 + 8))(v80, v83);
        return;
      }

      goto LABEL_74;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v40)
  {
    if (v40 == 1)
    {
      sub_1BE04D084();
      v43 = sub_1BE04D204();
      v44 = sub_1BE052C54();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1BD026000, v43, v44, "Authentication canceled by user", v45, 2u);
        MEMORY[0x1BFB45F20](v45, -1, -1);
      }

      (*(v392 + 8))(v33, v391);
      v46 = [*(v42 + *((*MEMORY[0x1E69E7D40] & *v42) + 0xD8)) didResolveError];
      v47 = MEMORY[0x1EEE9AC00](v46);
      v48 = v387(0, v47);
      *(&v375 - 2) = v48;
      v49 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v49);
      *(&v375 - 2) = v48;
      v50 = swift_getKeyPath();
      sub_1BE04D8B4(&v394);
      v49, v51, v52, v53, v54, v55, v56, v57;
      v50, v58, v59, v60, v61, v62, v63, v64;
      v65 = v394;
      sub_1BE04CB64();
      v65, v66, v67, v68, v69, v70, v71, v72;

      return;
    }

LABEL_13:

    return;
  }

  v105 = *((*MEMORY[0x1E69E7D40] & *v390) + 0xD8);
  if ([*&v390[v105] state] == 5)
  {
    v106 = [a2 biometricMatch];
    if (v106)
    {
      v107 = MEMORY[0x1EEE9AC00](v106);
      v108 = v387(0, v107);
      *(&v375 - 2) = v108;
      v109 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v109);
      *(&v375 - 2) = v108;
      v110 = swift_getKeyPath();
      sub_1BE04D8B4(&v394);
      v109, v111, v112, v113, v114, v115, v116, v117;
      v110, v118, v119, v120, v121, v122, v123, v124;
      v125 = v394;
      v126 = *(v394 + qword_1EBDAADC0);
      sub_1BE048964();
      v125, v127, v128, v129, v130, v131, v132, v133;
      sub_1BDA75178(8, 17, 0, 0);
      v126, v134, v135, v136, v137, v138, v139, v140;
    }

    IsAvailable = PKPearlIsAvailable();
    if ((IsAvailable & 1) == 0)
    {
      IsAvailable = PKOpticIDIsAvailable();
      if (!IsAvailable)
      {
        v142 = [*(v42 + v105) beginDelayingAuthorizedState];
        v143 = MEMORY[0x1EEE9AC00](v142);
        v144 = v387(0, v143);
        *(&v375 - 2) = v144;
        v145 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v145);
        *(&v375 - 2) = v144;
        v146 = swift_getKeyPath();
        sub_1BE04D8B4(&v394);
        v145, v147, v148, v149, v150, v151, v152, v153;
        v146, v154, v155, v156, v157, v158, v159, v160;
        v161 = v394;
        v162 = *(v394 + qword_1EBDAADC0);
        sub_1BE048964();
        v161, v163, v164, v165, v166, v167, v168, v169;
        v170 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1BE048964();
        sub_1BDA75178(11, 17, v378, v170);
        v162, v171, v172, v173, v174, v175, v176, v177;

        if (0.5 - CFAbsoluteTimeGetCurrent() > 0.0)
        {
          IsAvailable = [*(v42 + v105) delayAuthorizedStateByDuration_];
        }
      }
    }

    v178 = MEMORY[0x1EEE9AC00](IsAvailable);
    v179 = v387(0, v178);
    *(&v375 - 2) = v179;
    v180 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v180);
    *(&v375 - 2) = v179;
    v181 = swift_getKeyPath();
    sub_1BE04D8B4(&v394);
    v180, v182, v183, v184, v185, v186, v187, v188;
    v181, v189, v190, v191, v192, v193, v194, v195;
    v196 = v394;
    v198 = v380;
    v197 = v381;
    v199 = v383;
    (*(v381 + 104))(v380, *MEMORY[0x1E69BC988], v383);
    v200 = sub_1BE051F44();
    v201 = v382;
    (*(*(v200 - 8) + 56))(v382, 1, 1, v200);
    sub_1BD83C0A8(v198, 0, 0, v201);
    v196, v202, v203, v204, v205, v206, v207, v208;
    sub_1BD0DE53C(v201, &unk_1EBD45E40, &unk_1BE0D5BB0);
    (*(v197 + 8))(v198, v199);
    v209 = swift_unknownObjectWeakLoadStrong();
    if (v209)
    {
      [v209 authorizationWillStart];
      swift_unknownObjectRelease();
    }

    v210 = *(v42 + v105);
    v211 = [v41 credential];
    if (v211)
    {
      v212 = v211;
      v213 = sub_1BE04AAC4();
      v215 = v214;

      v216 = sub_1BE04AAB4();
      sub_1BD1245AC(v213, v215, v217, v218, v219, v220, v221, v222);
    }

    else
    {
      v216 = 0;
    }

    [v210 didAuthenticateWithCredential_];

    swift_unknownObjectRelease();
  }

  else
  {
    v258 = v376;
    sub_1BE04D084();
    v259 = sub_1BE04D204();
    v260 = sub_1BE052C54();
    if (os_log_type_enabled(v259, v260))
    {
      v261 = swift_slowAlloc();
      *v261 = 0;
      _os_log_impl(&dword_1BD026000, v259, v260, "Authentication successful but in wrong state - discarding credential", v261, 2u);
      MEMORY[0x1BFB45F20](v261, -1, -1);
    }

    else
    {
    }

    (*(v392 + 8))(v258, v391);
  }
}