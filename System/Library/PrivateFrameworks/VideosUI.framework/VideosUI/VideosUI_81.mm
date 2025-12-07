void sub_1E3CC23C4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI11ASCListItem_currentLockup) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11ASCListItem_previousState) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI11ASCListItem_advanceASCOfferHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11ASCListItem_offerListUIConfiguration) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11ASCListItem_dismissalUIConfiguration) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3CC2474(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI11ASCListItem_actionPunchout);
  *(v1 + OBJC_IVAR____TtC8VideosUI11ASCListItem_actionPunchout) = a1;
  v4 = a1;

  type metadata accessor for AppInstallerHelper(0);
  v5 = v4;
  AppInstallerHelper.__allocating_init(punchoutAction:)();
  v6 = *(v2 + OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper);
  *(v2 + OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper) = v7;

  sub_1E3CC2174();
}

double sub_1E3CC2538()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI11ASCListItem_currentLockup);
  if (!v1)
  {
    return 0.0;
  }

  [v1 intrinsicContentSize];
  return result;
}

double sub_1E3CC2574(char a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8VideosUI11ASCListItem_currentLockup];
  if (!v3)
  {
    return 0.0;
  }

  v5 = v3;
  [v2 bounds];
  [v5 sizeThatFits_];
  [v2 bounds];
  CGRectGetMinX(v13);
  [v2 bounds];
  CGRectGetMinY(v14);
  if ((a1 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_2_162();
    [v9 v10];
  }

  v15.origin.x = OUTLINED_FUNCTION_2_162();
  Width = CGRectGetWidth(v15);
  v16.origin.x = OUTLINED_FUNCTION_2_162();
  CGRectGetHeight(v16);

  return Width;
}

void sub_1E3CC26BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = [objc_opt_self() topMostVisibleViewController];
  if (v4)
  {
    v21 = v4;
    v5 = sub_1E3CC2834();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1E4206474();
      OUTLINED_FUNCTION_20_73(v3, v8, v9, v7);
      swift_unknownObjectRetain();
      v10 = v0;
      v11 = v21;
      v12 = sub_1E4206424();
      v13 = swift_allocObject();
      v14 = MEMORY[0x1E69E85E0];
      v13[2] = v12;
      v13[3] = v14;
      v13[4] = v6;
      v13[5] = v10;
      v13[6] = v11;
      v15 = OUTLINED_FUNCTION_23_7();
      sub_1E376FE58(v15, v16, v3, v17, v18);

      swift_unknownObjectRelease();
    }

    else
    {
      v19 = v21;
    }
  }
}

id sub_1E3CC2834()
{
  v0 = [objc_opt_self() currentNavigationController];

  return v0;
}

uint64_t sub_1E3CC2874()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  sub_1E4206434();
  v0[11] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v4 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3CC2900()
{
  v1 = v0[10];
  v2 = v0[8];

  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[6] = sub_1E3CC39E8;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_209(COERCE_DOUBLE(1107296256));
  v0[4] = v5;
  v0[5] = &block_descriptor_33_0;
  v6 = _Block_copy(v0 + 2);
  v7 = v1;

  [v2 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
  OUTLINED_FUNCTION_54();

  return v8();
}

void sub_1E3CC2A28(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27[-v5];
  OUTLINED_FUNCTION_5_0(a1 + 16, v28);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v8 = Strong, v9 = OBJC_IVAR____TtC8VideosUI11ASCListItem_offerListUIConfiguration, OUTLINED_FUNCTION_5_0(Strong + OBJC_IVAR____TtC8VideosUI11ASCListItem_offerListUIConfiguration, v27), v10 = *&v8[v9], v11 = v10, v8, !v10))
  {
    v11 = [objc_allocWithZone(VUIDocumentUIConfigurationFormSheet) init];
    [v11 setType_];
    [v11 setAnimated_];
  }

  v12 = [objc_opt_self() currentNavigationController];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1E4206474();
    OUTLINED_FUNCTION_20_73(v6, v15, v16, v14);
    v17 = a2;
    v18 = v13;
    v19 = v11;

    v20 = sub_1E4206424();
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E85E0];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v17;
    v21[5] = v18;
    v21[6] = v19;
    v21[7] = a1;
    v23 = OUTLINED_FUNCTION_23_7();
    sub_1E376FE58(v23, v24, v6, v25, v26);
  }
}

uint64_t sub_1E3CC2C08()
{
  OUTLINED_FUNCTION_24();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  sub_1E4206434();
  v0[15] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v5 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3CC2C94()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];

  v5 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_5_0(v1 + 16, (v0 + 8));
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v0[6] = sub_1E3CC3B44;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E37EB82C;
  v0[5] = &block_descriptor_44;
  v8 = _Block_copy(v0 + 2);

  [v5 presentViewController:v4 fromViewController:v2 WithConfiguration:v3 completion:v8];
  _Block_release(v8);
  OUTLINED_FUNCTION_54();

  return v9();
}

uint64_t sub_1E3CC2F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &v5[OBJC_IVAR____TtC8VideosUI11ASCListItem_advanceASCOfferHandler];
  v7 = *&v5[OBJC_IVAR____TtC8VideosUI11ASCListItem_advanceASCOfferHandler];
  v8 = *&v5[OBJC_IVAR____TtC8VideosUI11ASCListItem_advanceASCOfferHandler + 8];
  *v6 = a4;
  *(v6 + 1) = a5;
  sub_1E34AF594(v7, v8);
  v9 = sub_1E4205F14();
  v11 = v10;
  if (v9 == sub_1E4205F14() && v11 == v12)
  {

    goto LABEL_11;
  }

  v14 = sub_1E42079A4();

  if (v14)
  {
LABEL_11:
    v18 = *&v5[OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper];
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v18;
    OUTLINED_FUNCTION_50();

    sub_1E3C88C3C();
  }

  v16 = *v6;
  if (*v6)
  {
    v17 = *(v6 + 1);

    v16(0);

    return sub_1E34AF594(v16, v17);
  }

  return result;
}

id sub_1E3CC3164(uint64_t a1, void *a2)
{
  v4 = v2;
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v49[-v6 - 8];
  v8 = OBJC_IVAR____TtC8VideosUI11ASCListItem_previousState;
  if (!*&v2[OBJC_IVAR____TtC8VideosUI11ASCListItem_previousState])
  {
    v12 = v48;
    *&v2[OBJC_IVAR____TtC8VideosUI11ASCListItem_previousState] = v48;
    goto LABEL_37;
  }

  v9 = OBJC_IVAR____TtC8VideosUI11ASCListItem_dismissalUIConfiguration;
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI11ASCListItem_dismissalUIConfiguration], v49);
  v10 = *&v4[v9];
  if (v10)
  {
    v11 = [v10 type] == 7;
  }

  else
  {
    v11 = 0;
  }

  sub_1E4205F14();
  v13 = OUTLINED_FUNCTION_19_87();
  if (v3 != v13 || v9 != v14)
  {
    v16 = OUTLINED_FUNCTION_3_10(v13);

    if (v16)
    {
      goto LABEL_23;
    }

    sub_1E4205F14();
    v17 = OUTLINED_FUNCTION_19_87();
    if (v16 != v17 || v9 != v18)
    {
      v20 = OUTLINED_FUNCTION_3_10(v17);

      if (v20)
      {
        goto LABEL_23;
      }

      sub_1E4205F14();
      v21 = OUTLINED_FUNCTION_19_87();
      if (v20 != v21 || v9 != v22)
      {
        v24 = OUTLINED_FUNCTION_3_10(v21);

        if ((v24 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }
    }
  }

LABEL_23:
  if (*&v4[v8])
  {
    v25 = *MEMORY[0x1E698B2B0];
    v26 = sub_1E4205F14();
    v28 = v27;
    if (v26 == sub_1E4205F14() && v28 == v29)
    {
    }

    else
    {
      v31 = sub_1E42079A4();

      if ((v31 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v32 = sub_1E3CC2834();
    if (v32)
    {
      v33 = v32;
      if (v11)
      {
        v34 = sub_1E4206474();
        OUTLINED_FUNCTION_20_73(v7, v35, v36, v34);
        swift_unknownObjectRetain();
        v37 = v4;
        v38 = sub_1E4206424();
        v39 = swift_allocObject();
        v40 = MEMORY[0x1E69E85E0];
        v39[2] = v38;
        v39[3] = v40;
        v39[4] = v33;
        v39[5] = v37;
        v41 = OUTLINED_FUNCTION_23_7();
        sub_1E376FE58(v41, v42, v7, v43, v44);
      }

      else
      {
        v45 = *&v4[OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper];
        sub_1E3C893A0();
      }

      swift_unknownObjectRelease();
    }
  }

LABEL_36:
  v46 = *&v4[v8];
  *&v4[v8] = v48;

  v12 = v48;
LABEL_37:

  return v12;
}

uint64_t sub_1E3CC3484()
{
  OUTLINED_FUNCTION_24();
  v0[8] = v1;
  v0[9] = v2;
  sub_1E4206434();
  v0[10] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3CC350C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[8];

  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1E3CC38EC;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_0_209(COERCE_DOUBLE(1107296256));
  v0[4] = v3;
  v0[5] = &block_descriptor_89;
  v4 = _Block_copy(v0 + 2);

  [v1 dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
  OUTLINED_FUNCTION_54();

  return v5();
}

void sub_1E3CC3680(char a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_15_0(v2 + 16, a2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1E3CC26BC();
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_0(v2 + 16, a2);
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *&v5[OBJC_IVAR____TtC8VideosUI11ASCListItem_advanceASCOfferHandler];
      if (v7)
      {
        v8 = OUTLINED_FUNCTION_67_0();
        sub_1E34AF604(v8, v9);

        v7(0);
        v10 = OUTLINED_FUNCTION_67_0();
        sub_1E34AF594(v10, v11);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1E3CC372C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64_0(v1);

  return sub_1E3CC3484();
}

unint64_t sub_1E3CC37B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3CC37DC(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3CC37DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36CB8;
  if (!qword_1ECF36CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36CB8);
  }

  return result;
}

unint64_t sub_1E3CC3834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36CC0;
  if (!qword_1ECF36CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36CC0);
  }

  return result;
}

unint64_t sub_1E3CC3898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36D60;
  if (!qword_1ECF36D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36D60);
  }

  return result;
}

void sub_1E3CC38EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper);

    sub_1E3C893A0();
  }
}

uint64_t sub_1E3CC3950()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64_0(v1);

  return sub_1E3CC2874();
}

void sub_1E3CC39E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  OUTLINED_FUNCTION_15_0(v3 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC8VideosUI11ASCListItem_appInstallerHelper);

    OUTLINED_FUNCTION_2_4();
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v4;

    v9 = v4;
    sub_1E3C88978(sub_1E3CC3AA0, v8);
  }
}

uint64_t sub_1E3CC3AA8()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64_0(v1);

  return sub_1E3CC2C08();
}

void sub_1E3CC3B44(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[OBJC_IVAR____TtC8VideosUI11ASCListItem_advanceASCOfferHandler];
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_67_0();
      sub_1E34AF604(v6, v7);

      v5(0);
      v8 = OUTLINED_FUNCTION_67_0();
      sub_1E34AF594(v8, v9);
    }

    else
    {
    }
  }
}

uint64_t sub_1E3CC3BC8(void *a1)
{
  v2 = [a1 appAdamIDs];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E3CC3C3C()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[2] = v2;
  v3 = sub_1E41FF224();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3CC3CE4()
{
  OUTLINED_FUNCTION_24();
  v1 = MEMORY[0x1E69D5918];
  if (v0[2] != 1)
  {
    v1 = MEMORY[0x1E69D5910];
  }

  (*(v0[5] + 104))(v0[6], *v1, v0[4]);
  sub_1E41FEE44();
  v0[7] = sub_1E41FEE24();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1E3CC3DCC;
  v3 = v0[6];
  v4.n128_u64[0] = v0[3];

  return MEMORY[0x1EEE43600](v3, v4);
}

uint64_t sub_1E3CC3DCC()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    v9 = sub_1E3CC3F64;
  }

  else
  {

    v9 = sub_1E3CC3EF8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E3CC3EF8()
{
  OUTLINED_FUNCTION_24();
  v0 = OUTLINED_FUNCTION_48_32();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3CC3F64()
{
  OUTLINED_FUNCTION_24();
  v0 = OUTLINED_FUNCTION_48_32();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3CC3FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1E325A828(a3, v24 - v10);
  v12 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325A8C0(v11);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E42063B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4205FB4() + 32;
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

void sub_1E3CC4254()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_115();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  v7 = sub_1E324FBDC();
  (*(v5 + 16))(v0, v7, v3);
  v8 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_125_0();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v8, v1, "prewarmJetpack: end", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v0, v3);
  v11 = sub_1E4206B94();
  v12 = VUISignpostLogObject(v11);
  OUTLINED_FUNCTION_56_26(v12);
  OUTLINED_FUNCTION_35_11(v11, &dword_1E323F000, v3, "Launch.prewarmJetpack.Load", 26);

  v13 = OUTLINED_FUNCTION_13_8();
  v14(v13);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CC4448()
{
  OUTLINED_FUNCTION_24();
  v0[2] = sub_1E4206434();
  v0[3] = sub_1E4206424();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3CC460C();
}

uint64_t sub_1E3CC44EC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3CC460C()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFBF4();
  v1[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v1[6] = sub_1E4206424();
  v5 = sub_1E42063B4();
  v1[7] = v5;
  v1[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E3CC46EC, v5, v4);
}

uint64_t sub_1E3CC46EC()
{
  OUTLINED_FUNCTION_134();
  v2 = v0[4];
  v3 = sub_1E4206BA4();
  v4 = VUISignpostLogObject(v3);
  OUTLINED_FUNCTION_38_38();
  OUTLINED_FUNCTION_25_69(v3, &dword_1E323F000, v1, "Launch.prewarmPostAppDidFinishLaunchingAsyncOnMain", 50);

  v0[9] = *(v2 + 8);
  v0[10] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = OUTLINED_FUNCTION_16_0();
  v6(v5);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_56_1(v7);

  return MEMORY[0x1EEE6DA78](v8);
}

uint64_t sub_1E3CC47E8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = swift_task_alloc();
  *(v2 + 96) = v6;
  *v6 = v4;
  OUTLINED_FUNCTION_56_1(v6);

  return sub_1E3CC4DF8();
}

uint64_t sub_1E3CC48F8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = swift_task_alloc();
  *(v2 + 104) = v6;
  *v6 = v4;
  OUTLINED_FUNCTION_56_1(v6);

  return sub_1E3CC5168();
}

uint64_t sub_1E3CC4A08()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = swift_task_alloc();
  *(v2 + 112) = v6;
  *v6 = v4;
  OUTLINED_FUNCTION_56_1(v6);

  return sub_1E3CC54D8();
}

uint64_t sub_1E3CC4B18()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = swift_task_alloc();
  *(v2 + 120) = v6;
  *v6 = v4;
  OUTLINED_FUNCTION_56_1(v6);

  return sub_1E3CC557C();
}

uint64_t sub_1E3CC4C28()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E3CC4D3C, v5, v4);
}

uint64_t sub_1E3CC4D3C()
{
  OUTLINED_FUNCTION_134();
  v2 = *(v0 + 72);

  v3 = sub_1E4206B94();
  v4 = VUISignpostLogObject(v3);
  OUTLINED_FUNCTION_38_38();
  OUTLINED_FUNCTION_25_69(v3, &dword_1E323F000, v1, "Launch.prewarmPostAppDidFinishLaunchingAsyncOnMain", 50);

  v5 = OUTLINED_FUNCTION_16_0();
  v2(v5);

  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_1E3CC4DF8()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E4206434();
  *(v0 + 24) = OUTLINED_FUNCTION_55_35(v1);
  v2 = sub_1E4206424();
  OUTLINED_FUNCTION_42_49(v2);
  type metadata accessor for GraphicsUtilities();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52_31(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_56_1(v4);

  return sub_1E418A7D0();
}

uint64_t sub_1E3CC4E9C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3CC4FBC()
{
  OUTLINED_FUNCTION_24();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_51_30(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_56_1(v1);

  return MEMORY[0x1EEE6DA78](v3);
}

uint64_t sub_1E3CC5048()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3CC5168()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E4206434();
  *(v0 + 24) = OUTLINED_FUNCTION_55_35(v1);
  v2 = sub_1E4206424();
  OUTLINED_FUNCTION_42_49(v2);
  type metadata accessor for MediaShowcasingToolbarPrewarm();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52_31(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_56_1(v4);

  return sub_1E3FC1E70();
}

uint64_t sub_1E3CC520C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3CC532C()
{
  OUTLINED_FUNCTION_24();

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_51_30(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_56_1(v1);

  return MEMORY[0x1EEE6DA78](v3);
}

uint64_t sub_1E3CC53B8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v3 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3CC54D8()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E4206434();
  *(v0 + 24) = OUTLINED_FUNCTION_55_35(v1);
  v2 = sub_1E4206424();
  OUTLINED_FUNCTION_42_49(v2);
  type metadata accessor for ContextMenuButtonPrewarm();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52_31(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_56_1(v4);

  return sub_1E3982D1C();
}

uint64_t sub_1E3CC557C()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E4206434();
  *(v0 + 24) = OUTLINED_FUNCTION_55_35(v1);
  v2 = sub_1E4206424();
  OUTLINED_FUNCTION_42_49(v2);
  type metadata accessor for LocalizationPrewarm();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_52_31(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_56_1(v4);

  return sub_1E3A0525C();
}

uint64_t sub_1E3CC5620()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3CC4448();
}

uint64_t block_copy_helper_57_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E3CC56C0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3CC3C3C();
}

void type metadata accessor for WLKFetchConfigurationCachePolicy()
{
  if (!qword_1ECF36D68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF36D68);
    }
  }
}

uint64_t OUTLINED_FUNCTION_56_26(uint64_t a1)
{

  return sub_1E41FFBE4();
}

void sub_1E3CC57D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36D70, &qword_1E42C9D40);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25[-1] - v8;
  v10 = *(*a1 + 488);
  v11 = v10(v7);
  if (v11)
  {
    v13 = sub_1E373E010(23, v11, v12);

    if (!v13 || *v13 == _TtC8VideosUI13TextViewModel)
    {
      goto LABEL_6;
    }
  }

  v13 = 0;
LABEL_6:
  v14 = (v10)(v11);
  if (v14)
  {
    v16 = sub_1E373E010(60, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  *v9 = sub_1E4201B84();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36D78, &qword_1E42C9D48);
  v18 = sub_1E3CC5A20(v13, v16, &v9[*(v17 + 44)]);
  (*(*a2 + 152))(v25, v18);
  if (v26)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v21.n128_u64[0] = v25[2];
    v22.n128_u64[0] = v25[3];
    v19.n128_u64[0] = v25[0];
    v20.n128_u64[0] = v25[1];
    j_nullsub_1(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_41_8();

  sub_1E329E454(v9, a3, &qword_1ECF36D70, &qword_1E42C9D40);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36D80, &qword_1E42C9D50);
  OUTLINED_FUNCTION_7_3(a3 + *(v23 + 36));
}

uint64_t sub_1E3CC5A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8, &qword_1E42AF320);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v49 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v48 = &v47 - v23;
  if (a1)
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v26 = sub_1E3C27528(v24, v25);
    if (v26 && ((*(*v26 + 152))(v57), v3 = v57[0], v4 = v57[1], v5 = v57[2], v6 = v57[3], , (v58 & 1) == 0))
    {
      OUTLINED_FUNCTION_13_3(v27, v28, v29, v30);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_41_8();

    (*(v10 + 32))(v16, v12, v9);
    OUTLINED_FUNCTION_7_3(&v16[*(v13 + 36)]);
    sub_1E329E454(v16, v19, &qword_1ECF28CC0, &qword_1E4298440);
    v32 = v48;
    sub_1E329E454(v19, v48, &qword_1ECF28CC0, &qword_1E4298440);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v32 = v48;
  }

  __swift_storeEnumTagSinglePayload(v32, v31, 1, v13);
  if (a2)
  {

    v33 = sub_1E4201D44();
    v52 = 1;

    v34 = sub_1E3D5CAB8(v53);
    v35 = (*(*a2 + 392))(v34);
    if (v35 && ((*(*v35 + 152))(v60), v3 = v60[0], v4 = v60[1], v5 = v60[2], v6 = v60[3], , (v61 & 1) == 0))
    {
      OUTLINED_FUNCTION_13_3(v36, v37, v38, v39);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    v40 = OUTLINED_FUNCTION_41_8();
    v59[208] = 0;
    v59[200] = 1;
    memcpy(v55, v53, 0x98uLL);
    LOBYTE(v55[19]) = v40;
    v55[20] = v3;
    v55[21] = v4;
    v55[22] = v5;
    v55[23] = v6;
    LOBYTE(v55[24]) = 0;
    memcpy(&v59[7], v55, 0xC1uLL);
    memcpy(v56, v53, 0x98uLL);
    LOBYTE(v56[19]) = v40;
    v56[20] = v3;
    v56[21] = v4;
    v56[22] = v5;
    v56[23] = v6;
    LOBYTE(v56[24]) = 0;
    sub_1E3294EE4(v55, v54, &qword_1ECF36DB0, &qword_1E42C9E08);
    sub_1E325F6F0(v56, &qword_1ECF36DB0, &qword_1E42C9E08);
    v53[0] = 0;
    LOBYTE(v53[1]) = 1;
    memcpy(&v53[1] + 1, v59, 0xC8uLL);
    v54[0] = 0;
    LOBYTE(v54[1]) = 1;
    memcpy(&v54[1] + 1, v59, 0xC8uLL);
    sub_1E3294EE4(v53, v56, &qword_1ECF36DA8, &qword_1E42C9E00);
    sub_1E325F6F0(v54, &qword_1ECF36DA8, &qword_1E42C9E00);

    memcpy(&v51[7], v53, 0xD1uLL);
    v55[0] = v33;
    v55[1] = 0;
    LOBYTE(v55[2]) = v52;
    memcpy(&v55[2] + 1, v51, 0xD8uLL);
    nullsub_1();
    memcpy(v56, v55, 0xE9uLL);
  }

  else
  {
    sub_1E3CC6170(v56);
  }

  v41 = v49;
  sub_1E32CF9F8(v32, v49);
  memcpy(v53, v56, 0xE9uLL);
  v42 = v50;
  sub_1E32CF9F8(v41, v50);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36D98, &qword_1E42C9DF0);
  v44 = v42 + *(v43 + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  v45 = *(v43 + 64);
  memcpy(v54, v53, 0xE9uLL);
  memcpy((v42 + v45), v53, 0xE9uLL);
  sub_1E3294EE4(v54, v55, &qword_1ECF36DA0, &qword_1E42C9DF8);
  sub_1E32CFA60(v32);
  memcpy(v55, v53, 0xE9uLL);
  sub_1E325F6F0(v55, &qword_1ECF36DA0, &qword_1E42C9DF8);
  return sub_1E32CFA60(v41);
}

uint64_t sub_1E3CC6014(uint64_t a1)
{
  type metadata accessor for SearchHistoryListHeaderLayout();
  sub_1E3CDAC44();
  return a1;
}

unint64_t sub_1E3CC6080()
{
  result = qword_1ECF36D88;
  if (!qword_1ECF36D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36D80, &qword_1E42C9D50);
    sub_1E3CC610C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36D88);
  }

  return result;
}

unint64_t sub_1E3CC610C()
{
  result = qword_1ECF36D90;
  if (!qword_1ECF36D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36D70, &qword_1E42C9D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36D90);
  }

  return result;
}

double sub_1E3CC617C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1E41FDE24();
  swift_allocObject();
  sub_1E41FDE14();
  v6 = sub_1E4204254();
  v8 = v7;
  sub_1E3CC82E8(v6, v7, v9);
  sub_1E41FDE04();
  sub_1E38DCCB0(v6, v8);

  v10 = v17;
  if (v17)
  {
    v11 = v16;

    v12 = 0;
  }

  else
  {
    v11 = v14;

    v12 = 1;
    v10 = v15;
  }

  *a3 = v11;
  *(a3 + 8) = v10;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v12;

  return result;
}

uint64_t static AppStoreWrapper.presentOffer(with:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[48] = a3;
  v4[49] = a4;
  v4[46] = a1;
  v4[47] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36DB8, &unk_1E42C9E18);
  v4[50] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v4[51] = v6;
  v4[52] = OUTLINED_FUNCTION_107_1();
  v4[53] = swift_task_alloc();
  v7 = sub_1E42042A4();
  v4[54] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v4[55] = v8;
  v4[56] = swift_task_alloc();
  v9 = sub_1E41FFCB4();
  v4[57] = v9;
  OUTLINED_FUNCTION_8_0(v9);
  v4[58] = v10;
  v4[59] = OUTLINED_FUNCTION_107_1();
  v4[60] = swift_task_alloc();
  v11 = sub_1E4204284();
  v4[61] = v11;
  OUTLINED_FUNCTION_8_0(v11);
  v4[62] = v12;
  v4[63] = OUTLINED_FUNCTION_107_1();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v13 = sub_1E4204244();
  v4[67] = v13;
  OUTLINED_FUNCTION_8_0(v13);
  v4[68] = v14;
  v4[69] = swift_task_alloc();
  v15 = sub_1E4204224();
  v4[70] = v15;
  OUTLINED_FUNCTION_8_0(v15);
  v4[71] = v16;
  v4[72] = OUTLINED_FUNCTION_107_1();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  sub_1E4206434();
  v4[75] = sub_1E4206424();
  v18 = sub_1E42063B4();
  v4[76] = v18;
  v4[77] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1E3CC65A8, v18, v17);
}

uint64_t sub_1E3CC65A8()
{
  v2 = v0[47];
  v1 = v0[48];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v0[41] = sub_1E4205F14();
  v0[42] = v4;
  v5 = MEMORY[0x1E69E6158];
  sub_1E4207414();
  *(inited + 96) = v5;
  *(inited + 72) = v2;
  *(inited + 80) = v1;

  v0[78] = sub_1E4205CB4();
  sub_1E4204234();
  v6 = swift_task_alloc();
  v0[79] = v6;
  *v6 = v0;
  v6[1] = sub_1E3CC6708;
  v7 = v0[74];
  v8 = v0[69];
  v9 = v0[49];

  return MEMORY[0x1EEDD8F60](v7, v8, v9);
}

uint64_t sub_1E3CC6708()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  (*(v2[68] + 8))(v2[69], v2[67]);
  v3 = v2[77];
  v4 = v2[76];
  if (v0)
  {
    v5 = sub_1E3CC7A0C;
  }

  else
  {
    v5 = sub_1E3CC6890;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E3CC6890()
{
  v139 = v0;
  v2 = *(v0 + 584);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v3 + 16);
  (v5)(v2, *(v0 + 592), v4);
  v7 = *(v3 + 88);
  v6 = v3 + 88;
  v8 = v7(v2, v4);
  if (v8 != *MEMORY[0x1E697BA28])
  {
    v13 = v8;

    goto LABEL_7;
  }

  v9 = *(v0 + 576);
  v10 = *(v0 + 568);
  v11 = *(v0 + 560);
  (v5)(v9, *(v0 + 584), v11);
  v12 = *(v10 + 96);
  v6 = v10 + 96;
  v12(v9, v11);
  v13 = sub_1E42042B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 88))(v9, v13);
  if (v15 != *MEMORY[0x1E697BA58])
  {
    v52 = v15;
    if (v15 == *MEMORY[0x1E697BA48])
    {
      OUTLINED_FUNCTION_1_192();

      v56 = sub_1E3CC80F8(v53, v54, v55);
      OUTLINED_FUNCTION_206(&unk_1F5D7E4D8, v56);
      v58 = 2;
LABEL_14:
      *v57 = v58;
LABEL_15:
      swift_willThrow();
      v95 = *(v1 + 8);
      v95(v13, v6);
      v95(v5, v6);
      OUTLINED_FUNCTION_2_163();
      *(v0 + 344) = sub_1E4205F14();
      *(v0 + 352) = v96;
      sub_1E4207414();
      swift_getErrorValue();
      v97 = *(v0 + 304);
      v98 = *(v0 + 312);
      *(v0 + 264) = v98;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 240));
      (*(*(v98 - 8) + 16))(boxed_opaque_existential_1, v97, v98);
      sub_1E329504C((v0 + 240), (v0 + 272));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138[0] = v13;
      sub_1E377DF14((v0 + 272), v0 + 120, isUniquelyReferenced_nonNull_native);
      sub_1E375D84C(v0 + 120);
      v101 = [objc_opt_self() defaultCenter];
      v102 = OUTLINED_FUNCTION_11_109();

      [v101 postNotificationName:@"VUISubscribeRequestDidFinishNotification" object:v102];

      swift_willThrow();

      OUTLINED_FUNCTION_8_116();

      __asm { BRAA            X1, X16 }
    }

    v5 = *MEMORY[0x1E697BA50];

    if (v52 == v5)
    {
      OUTLINED_FUNCTION_1_192();
      v94 = sub_1E3CC80F8(v91, v92, v93);
      OUTLINED_FUNCTION_206(&unk_1F5D7E4D8, v94);
      v58 = 1;
      goto LABEL_14;
    }

    (*(v14 + 8))(*(v0 + 576), v13);
LABEL_7:
    OUTLINED_FUNCTION_1_192();
    v50 = sub_1E3CC80F8(v47, v48, v49);
    OUTLINED_FUNCTION_206(&unk_1F5D7E4D8, v50);
    *v51 = 0;
    goto LABEL_15;
  }

  (*(v14 + 96))(*(v0 + 576), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36DC8, &qword_1E42C9E28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *(v0 + 576);
  v18 = *(v0 + 488);
  v19 = *(v0 + 496);
  v20 = *(v0 + 456);
  v21 = *(v0 + 464);
  if (EnumCaseMultiPayload == 1)
  {
    v22 = *(v0 + 528);
    v23 = *(v0 + 520);
    v24 = *(v0 + 480);
    (*(v19 + 32))(v22, *(v0 + 576), *(v0 + 488));
    v25 = sub_1E324FBDC();
    (*(v21 + 16))(v24, v25, v20);
    (*(v19 + 16))(v23, v22, v18);

    v26 = sub_1E41FFC94();
    v27 = sub_1E4206814();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 520);
    v30 = *(v0 + 488);
    v31 = *(v0 + 496);
    v32 = *(v0 + 480);
    v33 = *(v0 + 456);
    v34 = *(v0 + 464);
    if (v28)
    {
      v131 = v27;
      log = *(v0 + 488);
      v36 = *(v0 + 440);
      v35 = *(v0 + 448);
      v124 = *(v0 + 432);
      v133 = *(v0 + 456);
      v136 = *(v0 + 480);
      v38 = *(v0 + 376);
      v37 = *(v0 + 384);
      v39 = swift_slowAlloc();
      v138[0] = swift_slowAlloc();
      *v39 = 136315394;
      *(v39 + 4) = sub_1E3270FC8(v38, v37, v138);
      *(v39 + 12) = 2080;
      sub_1E4204274();
      v40 = sub_1E4204294();
      v42 = v41;
      (*(v36 + 8))(v35, v124);
      v45 = *(v31 + 8);
      v44 = v31 + 8;
      v43 = v45;
      v45(v29, log);
      v46 = sub_1E3270FC8(v40, v42, v138);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_1E323F000, v26, v131, "AppStore: offer %s purchased: %s", v39, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v34 + 8))(v136, v133);
    }

    else
    {

      v105 = *(v31 + 8);
      v44 = v31 + 8;
      v43 = v105;
      v105(v29, v30);
      (*(v34 + 8))(v32, v33);
    }

    *(v0 + 656) = v43;
    *(v0 + 648) = v44;
    v106 = [objc_opt_self() defaultCenter];
    v107 = OUTLINED_FUNCTION_11_109();

    [v106 postNotificationName:@"VUISubscribeRequestDidFinishNotification" object:v107];

    v108 = swift_task_alloc();
    *(v0 + 664) = v108;
    *v108 = v0;
    v108[1] = sub_1E3CC7460;
  }

  else
  {
    v59 = *(v0 + 512);
    v129 = *(v0 + 472);
    v132 = *(v0 + 504);
    loga = *(v0 + 424);
    v60 = *(v0 + 400);
    v61 = *(v0 + 408);
    v134 = *(v0 + 416);
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36DD0, &unk_1E42C9E30) + 48);
    (*(v19 + 32))(v59, v17, v18);
    (*(v61 + 32))(loga, v17 + v62, v60);
    v63 = sub_1E324FBDC();
    (*(v21 + 16))(v129, v63, v20);
    (*(v19 + 16))(v132, v59, v18);
    v64 = *(v61 + 16);
    v64(v134, loga, v60);

    v65 = sub_1E41FFC94();
    v66 = sub_1E4206814();

    v67 = os_log_type_enabled(v65, v66);
    v69 = *(v0 + 496);
    v68 = *(v0 + 504);
    v71 = *(v0 + 464);
    v70 = *(v0 + 472);
    v135 = *(v0 + 488);
    v137 = *(v0 + 456);
    if (v67)
    {
      v123 = v64;
      v72 = *(v0 + 440);
      v73 = *(v0 + 448);
      v74 = *(v0 + 408);
      v122 = *(v0 + 416);
      v119 = *(v0 + 432);
      v120 = *(v0 + 400);
      v125 = v66;
      logb = v65;
      v76 = *(v0 + 376);
      v75 = *(v0 + 384);
      v130 = *(v0 + 472);
      v77 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v138[0] = swift_slowAlloc();
      *v77 = 136315650;
      *(v77 + 4) = sub_1E3270FC8(v76, v75, v138);
      *(v77 + 12) = 2080;
      sub_1E4204274();
      v78 = sub_1E4204294();
      v80 = v79;
      (*(v72 + 8))(v73, v119);
      v83 = *(v69 + 8);
      v82 = v69 + 8;
      v81 = v83;
      v83(v68, v135);
      v84 = sub_1E3270FC8(v78, v80, v138);

      *(v77 + 14) = v84;
      *(v77 + 22) = 2112;
      v85 = sub_1E3CC814C();
      OUTLINED_FUNCTION_206(v120, v85);
      v123(v86, v122, v120);
      v87 = _swift_stdlib_bridgeErrorToNSError();
      v90 = *(v74 + 8);
      v88 = v74 + 8;
      v89 = v90;
      v90(v122, v120);
      *(v77 + 24) = v87;
      *v121 = v87;
      _os_log_impl(&dword_1E323F000, logb, v125, "AppStore: offer %s purchased: %s, verification error: %@", v77, 0x20u);
      sub_1E3A66B00(v121);
      OUTLINED_FUNCTION_6_0();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v71 + 8))(v130, v137);
    }

    else
    {
      v110 = *(v0 + 408);
      v109 = *(v0 + 416);
      v111 = *(v0 + 400);

      v112 = *(v110 + 8);
      v88 = v110 + 8;
      v89 = v112;
      v112(v109, v111);
      v113 = *(v69 + 8);
      v82 = v69 + 8;
      v81 = v113;
      v113(v68, v135);
      (*(v71 + 8))(v70, v137);
    }

    *(v0 + 696) = v89;
    *(v0 + 688) = v81;
    *(v0 + 680) = v88;
    *(v0 + 672) = v82;
    v114 = [objc_opt_self() defaultCenter];
    v115 = OUTLINED_FUNCTION_11_109();

    [v114 postNotificationName:@"VUISubscribeRequestDidFinishNotification" object:v115];

    v116 = swift_task_alloc();
    *(v0 + 704) = v116;
    *v116 = v0;
    v116[1] = sub_1E3CC7728;
  }

  OUTLINED_FUNCTION_8_116();

  return MEMORY[0x1EEDD8F88]();
}

uint64_t sub_1E3CC7460()
{
  v1 = *v0;

  v2 = *(v1 + 616);
  v3 = *(v1 + 608);

  return MEMORY[0x1EEE6DFA0](sub_1E3CC7580, v3, v2);
}

void sub_1E3CC7580()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);

  sub_1E3CC617C(v2, v1, v0 + 200);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  v11 = *(v0 + 200);
  v10 = *(v0 + 216);
  (*(v0 + 656))(*(v0 + 528), *(v0 + 488));
  v7 = *(v5 + 8);
  v7(v3, v6);
  v7(v4, v6);

  OUTLINED_FUNCTION_4_165(v11, v10);
  OUTLINED_FUNCTION_8_116();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1E3CC7728()
{
  v1 = *v0;

  v2 = *(v1 + 616);
  v3 = *(v1 + 608);

  return MEMORY[0x1EEE6DFA0](sub_1E3CC7848, v3, v2);
}

uint64_t sub_1E3CC7848()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);

  sub_1E3CC617C(v5, v4, v0 + 160);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v1(v2, v3);
  v6 = *(v0 + 592);
  v7 = *(v0 + 584);
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  (*(v0 + 688))(*(v0 + 512), *(v0 + 488));
  v10 = *(v8 + 8);
  v10(v6, v9);
  v10(v7, v9);

  OUTLINED_FUNCTION_4_165(v14, v13);

  return v11();
}

uint64_t sub_1E3CC7A0C()
{

  OUTLINED_FUNCTION_2_163();
  *(v0 + 344) = sub_1E4205F14();
  *(v0 + 352) = v1;
  sub_1E4207414();
  swift_getErrorValue();
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  *(v0 + 264) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 240));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_1E329504C((v0 + 240), (v0 + 272));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E377DF14((v0 + 272), v0 + 120, isUniquelyReferenced_nonNull_native);
  sub_1E375D84C(v0 + 120);
  v6 = [objc_opt_self() defaultCenter];
  v7 = OUTLINED_FUNCTION_11_109();

  [v6 postNotificationName:@"VUISubscribeRequestDidFinishNotification" object:v7];

  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E3CC7C5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_54(0x6449656C646E7562, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7250656C646E7562 && a2 == 0xEF6449746375646FLL;
    if (v6 || (OUTLINED_FUNCTION_0_54(0x7250656C646E7562, 0xEF6449746375646FLL) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000021 && 0x80000001E427CA20 == a2)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_0_54(0xD000000000000021, 0x80000001E427CA20);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1E3CC7D58(char a1)
{
  if (!a1)
  {
    return 0x6449656C646E7562;
  }

  if (a1 == 1)
  {
    return 0x7250656C646E7562;
  }

  return 0xD000000000000021;
}

uint64_t sub_1E3CC7DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E3CC7C5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3CC7DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E3CC8348(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1E3CC7E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E3CC8348(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1E3CC7E68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36DE8, &qword_1E42CA040);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3CC8348(v9, v10, v11);
  sub_1E4207C04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v12 = sub_1E4207834();
  v25 = v13;
  v27 = 1;
  v23 = sub_1E4207804();
  v24 = v14;
  v26 = 2;
  v15 = sub_1E4207804();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v20 = v25;
  *a2 = v12;
  a2[1] = v20;
  v21 = v24;
  a2[2] = v23;
  a2[3] = v21;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

double sub_1E3CC809C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E3CC7E68(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1E3CC80F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36DC0;
  if (!qword_1ECF36DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36DC0);
  }

  return result;
}

unint64_t sub_1E3CC814C()
{
  result = qword_1ECF36DD8;
  if (!qword_1ECF36DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36DB8, &unk_1E42C9E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36DD8);
  }

  return result;
}

unint64_t sub_1E3CC81B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36DE0;
  if (!qword_1ECF36DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36DE0);
  }

  return result;
}

uint64_t sub_1E3CC8238(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3CC8278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E3CC82E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5E6F0[0];
  if (!qword_1ECF5E6F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5E6F0);
  }

  return result;
}

unint64_t sub_1E3CC8348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5E780[0];
  if (!qword_1ECF5E780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5E780);
  }

  return result;
}

_BYTE *sub_1E3CC839C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3CC8478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5E890[0];
  if (!qword_1ECF5E890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5E890);
  }

  return result;
}

unint64_t sub_1E3CC84D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5E9A0;
  if (!qword_1ECF5E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5E9A0);
  }

  return result;
}

unint64_t sub_1E3CC8528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5E9A8[0];
  if (!qword_1ECF5E9A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5E9A8);
  }

  return result;
}

uint64_t sub_1E3CC8584()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1EE2AB1A8);
  v1 = OUTLINED_FUNCTION_32_0();
  __swift_project_value_buffer(v1, v2);
  return sub_1E3287754(1);
}

double sub_1E3CC85D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 256, a2);

  return result;
}

uint64_t sub_1E3CC85FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 256, a2);
  *(v2 + 256) = a1;
}

double sub_1E3CC8638(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 272, a2);

  return result;
}

uint64_t sub_1E3CC8664(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 272, a2);
  *(v2 + 272) = a1;
}

double sub_1E3CC86A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 280, a2);

  return result;
}

uint64_t sub_1E3CC86CC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 280, a2);
  *(v2 + 280) = a1;
}

uint64_t sub_1E3CC8734(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_14_0(v2 + 288, a2);
  *(v2 + 288) = a1;
  *(v2 + 296) = v3 & 1;
  return result;
}

double sub_1E3CC877C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 304, a2);

  return result;
}

uint64_t sub_1E3CC87A8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 304, a2);
  *(v2 + 304) = a1;
}

uint64_t sub_1E3CC8814(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 344, a2);
  *(v2 + 352) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3CC8868(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_11_3(v1 + 344, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 352);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3CC88E0;
}

void sub_1E3CC88E0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 352) = *(*a1 + 32);
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

unint64_t sub_1E3CC8964()
{
  v1 = *(v0 + 360);
  if (!v1)
  {
    goto LABEL_6;
  }

  if (v1 >> 62)
  {
    if (sub_1E4207384())
    {
      goto LABEL_4;
    }

LABEL_6:
    OUTLINED_FUNCTION_8();
    v3 = (*(v2 + 552))();
    if (v3)
    {
      v10[3] = &unk_1F5D7BE68;
      v10[4] = &off_1F5D7BC48;
      LOBYTE(v10[0]) = 14;
      sub_1E3F9F164(v10, v3, MEMORY[0x1E69E7CA0] + 8);

      __swift_destroy_boxed_opaque_existential_1(v10);
      if (*(&v12 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
        if (swift_dynamicCast())
        {
          v10[0] = MEMORY[0x1E69E7CC0];
          v4 = sub_1E3CCBA88();
          v5 = v4;

          v6 = OUTLINED_FUNCTION_32_0();
          sub_1E3CCC418(v6, v7, v4, v8);

          v1 = v10[0];
LABEL_13:
          *(v0 + 360) = v1;

          return v1;
        }

LABEL_12:
        v1 = MEMORY[0x1E69E7CC0];
        goto LABEL_13;
      }
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    sub_1E329505C(&v11);
    goto LABEL_12;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

LABEL_4:

  return v1;
}

void *sub_1E3CC8AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_allocObject();
  return sub_1E3CC8B50(v5, a2, a3);
}

void *sub_1E3CC8B50(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 248) = 0u;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 1;
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + 304) = MEMORY[0x1E69E7CC0];
  *(v3 + 312) = 0x647055736465656ELL;
  *(v3 + 320) = 0xEB00000000657461;
  strcpy((v3 + 328), "prototypeBody");
  *(v3 + 342) = -4864;
  *(v3 + 352) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 360) = 0;
  sub_1E42004F4();
  v8 = sub_1E4205CB4();
  *(v3 + 384) = 0;
  *(v3 + 392) = 0;
  *(v3 + 368) = MEMORY[0x1E69E7CC8];
  *(v3 + 376) = v8;

  isUniquelyReferenced_nonNull_native = sub_1E39BEDCC(a1, a2, a3);
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_107;
  }

  v10 = sub_1E3DD55E0(24, a2, isUniquelyReferenced_nonNull_native);
  OUTLINED_FUNCTION_3_0((isUniquelyReferenced_nonNull_native + 31), v171);
  isUniquelyReferenced_nonNull_native[31] = v10;

  v12 = *(*isUniquelyReferenced_nonNull_native + 952);
  v137 = isUniquelyReferenced_nonNull_native;
  if (!(v12)(v11) || (OUTLINED_FUNCTION_26_0(), (*(v13 + 464))(), OUTLINED_FUNCTION_12_1(), , !v10))
  {
    if (v12())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v19 + 488))();
      OUTLINED_FUNCTION_12_1();

      if (v10)
      {
        v21 = sub_1E373E010(23, v10, v20);

        if (v21)
        {
          if (*v21 == _TtC8VideosUI13TextViewModel && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30), v10 = swift_allocObject(), *(v10 + 16) = xmmword_1E4298880, *(v10 + 32) = v21, OUTLINED_FUNCTION_3_0((isUniquelyReferenced_nonNull_native + 32), v170), isUniquelyReferenced_nonNull_native[32] = v10, , , v22 = OUTLINED_FUNCTION_18(), (v23 = sub_1E3C287F4(0, v22 & 1)) != 0))
          {
            v24 = v23;
            v25 = [v23 string];

            v10 = sub_1E4205F14();
            v27 = v26;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
            v28 = swift_allocObject();
            v146 = xmmword_1E4297BE0;
            *(v28 + 16) = xmmword_1E4297BE0;
            *(v28 + 32) = v10;
            *(v28 + 40) = v27;
            OUTLINED_FUNCTION_3_0((isUniquelyReferenced_nonNull_native + 34), v169);
            isUniquelyReferenced_nonNull_native[34] = v28;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E30, &qword_1E42CA300);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1E4297BE0;
            *(inited + 32) = v10;
            *(inited + 40) = v27;
            *(inited + 48) = 0;
            sub_1E4205CB4();
            OUTLINED_FUNCTION_12_1();

            OUTLINED_FUNCTION_3_0((isUniquelyReferenced_nonNull_native + 35), v168);
            isUniquelyReferenced_nonNull_native[35] = v10;
          }

          else
          {
          }
        }
      }
    }

    goto LABEL_54;
  }

  v126 = a2;
  v130 = a3;
  *&v165 = v7;
  v14 = sub_1E32AE9B0(v10);
  v15 = 0;
  a3 = v10 & 0xC000000000000001;
  a2 = v10 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v14 == v15)
    {

      OUTLINED_FUNCTION_3_0((isUniquelyReferenced_nonNull_native + 32), v170);
      v10 = isUniquelyReferenced_nonNull_native[32];
      isUniquelyReferenced_nonNull_native[32] = v7;

      v30 = sub_1E32AE9B0(v7);
      if (v30)
      {
        v31 = v30;
        if (v30 < 1)
        {
          goto LABEL_113;
        }

        a2 = 0;
        v32 = MEMORY[0x1E69E7CC0];
        v10 = MEMORY[0x1E69E7CC8];
        v143 = v7;
        *&v146 = v7 & 0xC000000000000001;
        a3 = &selRef_setWaitingForTransactionToStart_;
        v140 = v30;
        do
        {
          if (v146)
          {
            v33 = MEMORY[0x1E6911E60](a2, v7);
          }

          else
          {
            v33 = *(v7 + 8 * a2 + 32);
          }

          v34 = OUTLINED_FUNCTION_18();
          v35 = sub_1E3C287F4(0, v34 & 1);
          if (v35)
          {
            v36 = v35;
            v37 = [v35 *(a3 + 2712)];

            v38 = sub_1E4205F14();
            v40 = v39;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v57 = OUTLINED_FUNCTION_27();
              v32 = sub_1E3740F88(v57, v58, v59, v32);
            }

            v42 = *(v32 + 2);
            v41 = *(v32 + 3);
            if (v42 >= v41 >> 1)
            {
              v60 = OUTLINED_FUNCTION_35(v41);
              v32 = sub_1E3740F88(v60, v42 + 1, 1, v32);
            }

            *(v32 + 2) = v42 + 1;
            v43 = &v32[16 * v42];
            *(v43 + 4) = v38;
            *(v43 + 5) = v40;
            LOBYTE(v161) = 0;
            (*(*v33 + 776))(&v165, &v161, &unk_1F5D5D7F8, &off_1F5D5C8F8);
            if (v166)
            {
              if (swift_dynamicCast())
              {
                v44 = v38;
                v45 = v161;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v165 = v10;
                v134 = v44;
                v46 = sub_1E327D33C(v44, v40);
                v48 = *(v10 + 16);
                v49 = (v47 & 1) == 0;
                v10 = v48 + v49;
                if (__OFADD__(v48, v49))
                {
                  goto LABEL_111;
                }

                v50 = v46;
                a3 = v47;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4E8, &unk_1E42A08F8);
                if (sub_1E4207644())
                {
                  v51 = sub_1E327D33C(v44, v40);
                  isUniquelyReferenced_nonNull_native = v137;
                  if ((a3 & 1) != (v52 & 1))
                  {
                    goto LABEL_117;
                  }

                  v50 = v51;
                }

                else
                {
                  isUniquelyReferenced_nonNull_native = v137;
                }

                v10 = v165;
                if (a3)
                {
                  *(*(v165 + 56) + 8 * v50) = v45;
                }

                else
                {
                  *(v165 + 8 * (v50 >> 6) + 64) |= 1 << v50;
                  v53 = (*(v10 + 48) + 16 * v50);
                  *v53 = v44;
                  v53[1] = v40;
                  *(*(v10 + 56) + 8 * v50) = v45;
                  v54 = *(v10 + 16);
                  v55 = __OFADD__(v54, 1);
                  v56 = v54 + 1;
                  if (v55)
                  {
                    goto LABEL_112;
                  }

                  *(v10 + 16) = v56;
                }

                a3 = 0x1E874F000;
              }

              else
              {
              }
            }

            else
            {

              sub_1E329505C(&v165);
            }

            v31 = v140;
            v7 = v143;
          }

          else
          {
          }

          ++a2;
        }

        while (v31 != a2);
      }

      else
      {
        v10 = MEMORY[0x1E69E7CC8];
        v32 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_3_0((isUniquelyReferenced_nonNull_native + 34), v169);
      isUniquelyReferenced_nonNull_native[34] = v32;

      OUTLINED_FUNCTION_3_0((isUniquelyReferenced_nonNull_native + 35), v168);
      isUniquelyReferenced_nonNull_native[35] = v10;

      a2 = v126;
      a3 = v130;
LABEL_54:
      v166 = &type metadata for ViewModelKeys;
      v167 = &off_1F5D7BCA8;
      LOBYTE(v165) = 26;
      sub_1E3F9F164(&v165, a2, MEMORY[0x1E69E7CA0] + 8);
      if (v164)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(&v165);
          v61 = type metadata accessor for ViewModel();
          sub_1E3DD5014(13, v157, isUniquelyReferenced_nonNull_native, v61);
          OUTLINED_FUNCTION_12_1();

          if (v10)
          {
            if (sub_1E32AE9B0(v10))
            {
              if ((v10 & 0xC000000000000001) != 0)
              {
                goto LABEL_115;
              }

              if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v62 = *(v10 + 32);

                goto LABEL_61;
              }

              __break(1u);
LABEL_117:
              result = sub_1E4207A74();
              __break(1u);
              return result;
            }
          }

          v62 = 0;
          goto LABEL_67;
        }

        __swift_destroy_boxed_opaque_existential_1(&v165);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v165);
        sub_1E329505C(&v161);
      }

      OUTLINED_FUNCTION_3_0((isUniquelyReferenced_nonNull_native + 33), &v161);
      isUniquelyReferenced_nonNull_native[33] = 0;
      goto LABEL_68;
    }

    if (a3)
    {
      v17 = MEMORY[0x1E6911E60](v15, v10);
      v16 = v17;
    }

    else
    {
      if (v15 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_109;
      }

      v16 = *(v10 + 8 * v15 + 32);
    }

    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (*v16 == _TtC8VideosUI13TextViewModel)
    {
      MEMORY[0x1E6910BF0](v17);
      v18 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v18 >> 1)
      {
        OUTLINED_FUNCTION_35(v18);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v7 = v165;
      ++v15;
      isUniquelyReferenced_nonNull_native = v137;
    }

    else
    {

      ++v15;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_115:
    v62 = MEMORY[0x1E6911E60](0, v10);
LABEL_61:

LABEL_67:
    OUTLINED_FUNCTION_3_0((isUniquelyReferenced_nonNull_native + 33), &v161);
    isUniquelyReferenced_nonNull_native[33] = v62;
LABEL_68:

    ViewModelKeys.rawValue.getter(31);
    sub_1E3277E60(v63, v64, a2, &v165);

    if (v166)
    {
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      v72 = OUTLINED_FUNCTION_7_153(v65, v66, v67, v65, v68, v69, v70, v71, v126, v130, v134, v137, v140, v143, v146, *(&v146 + 1), v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
      if (v72)
      {
        isUniquelyReferenced_nonNull_native[49] = v157;
      }
    }

    else
    {
      v72 = sub_1E329505C(&v165);
    }

    LOBYTE(v157) = 1;
    v78 = *(*isUniquelyReferenced_nonNull_native + 776);
    v79 = OUTLINED_FUNCTION_18_81(v72, &unk_1F5D5D7F8, &off_1F5D5C8F8, v73, v74, v75, v76, v77, v126, v130, v134, v137, v140, v143, v146, *(&v146 + 1), v151, v152, v153, v154, v155, v156, 1);
    v80 = v78(v79);
    if (v166)
    {
      v87 = OUTLINED_FUNCTION_7_153(v80, v81, v82, MEMORY[0x1E69E6530], v83, v84, v85, v86, v127, v131, v135, v138, v141, v144, v147, v149, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
      if (v87)
      {
        v93 = v157;
        v87 = OUTLINED_FUNCTION_3_0(&qword_1EE24F5E8, &v151);
        qword_1EE24F5E8 = v93;
      }
    }

    else
    {
      v87 = sub_1E329505C(&v165);
    }

    v94 = OUTLINED_FUNCTION_18_81(v87, &unk_1F5D5D7F8, &off_1F5D5C8F8, v88, v89, v90, v91, v92, v127, v131, v135, v138, v141, v144, v147, v149, v151, v152, v153, v154, v155, v156, 2);
    v95 = v78(v94);
    if (v166)
    {
      v102 = OUTLINED_FUNCTION_7_153(v95, v96, v97, MEMORY[0x1E69E6530], v98, v99, v100, v101, v128, v132, v136, v139, v142, v145, v148, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
      if (v102)
      {
        v108 = v157;
        v102 = OUTLINED_FUNCTION_3_0(&qword_1ECF36DF0, &v154);
        qword_1ECF36DF0 = v108;
      }
    }

    else
    {
      v102 = sub_1E329505C(&v165);
    }

    v109 = OUTLINED_FUNCTION_18_81(v102, &unk_1F5D5DAC8, &off_1F5D5C998, v103, v104, v105, v106, v107, v128, v132, v136, v139, v142, v145, v148, v150, v151, v152, v153, v154, v155, v156, 6);
    v110 = v78(v109);
    if (v166)
    {
      if (OUTLINED_FUNCTION_7_153(v110, v111, v112, MEMORY[0x1E69E6530], v113, v114, v115, v116, v129, v133, v134, v137, v140, v143, v146, *(&v146 + 1), v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165))
      {
        v117 = v157;
        OUTLINED_FUNCTION_3_0((isUniquelyReferenced_nonNull_native + 36), &v157);
        isUniquelyReferenced_nonNull_native[36] = v117;
        *(isUniquelyReferenced_nonNull_native + 296) = 0;
      }
    }

    else
    {
      sub_1E329505C(&v165);
    }

    LOBYTE(v160) = 3;
    (v78)(&v165, &v160, &unk_1F5D5D7F8, &off_1F5D5C8F8);
    if (!v166)
    {
LABEL_104:
      sub_1E329505C(&v165);
      goto LABEL_106;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_106;
    }

    v10 = sub_1E3CCBD44(0, v160);
    v160 = (*(*isUniquelyReferenced_nonNull_native + 464))();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
    sub_1E4148C68(sub_1E3819AD4, v118, &v165);

    v119 = v165;
    v120 = sub_1E32AE9B0(v165);
    v126 = a2;
    v130 = a3;
    if (!v120)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = v120;
    if (v120 >= 1)
    {
      v121 = 0;
      a3 = &unk_1F5D5D7F8;
      a2 = &off_1F5D5C8F8;
      while (1)
      {
        if ((v119 & 0xC000000000000001) != 0)
        {
          v122 = MEMORY[0x1E6911E60](v121, v119);
        }

        else
        {
          v122 = *(v119 + 8 * v121 + 32);
        }

        LOBYTE(v160) = 0;
        OUTLINED_FUNCTION_8();
        (*(v123 + 776))(&v165, &v160, &unk_1F5D5D7F8, &off_1F5D5C8F8);
        if (v166)
        {
          if (swift_dynamicCast())
          {
            v124 = v160;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              if ((v124 & 0x8000000000000000) != 0)
              {
                goto LABEL_103;
              }
            }

            else
            {
              v10 = sub_1E392937C(v10);
              if ((v124 & 0x8000000000000000) != 0)
              {
LABEL_103:
                __break(1u);
                goto LABEL_104;
              }
            }

            if (v124 >= *(v10 + 16))
            {
              goto LABEL_110;
            }

            *(v10 + 8 * v124 + 32) = v122;
          }
        }

        else
        {

          sub_1E329505C(&v165);
        }

        if (isUniquelyReferenced_nonNull_native == ++v121)
        {
          goto LABEL_105;
        }
      }
    }
  }

LABEL_105:

  isUniquelyReferenced_nonNull_native = v137;
  OUTLINED_FUNCTION_3_0(v137 + 304, &v165);
  *(v137 + 304) = v10;

LABEL_106:

LABEL_107:

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_1E3CC995C()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 1096))();
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v4 == v3)
    {

      return v5;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v6 = *(v2 + 8 * v3 + 32);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_27();
      result = sub_1E3CCCCD4(v10, v11, v12, v5);
      v5 = result;
    }

    v8 = *(v5 + 16);
    v7 = *(v5 + 24);
    if (v8 >= v7 >> 1)
    {
      v13 = OUTLINED_FUNCTION_35(v7);
      result = sub_1E3CCCCD4(v13, v8 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v8 + 1;
    v9 = v5 + 16 * v8;
    *(v9 + 32) = v3;
    *(v9 + 40) = v6;
    ++v3;
  }

  __break(1u);
  return result;
}

void sub_1E3CC9A64(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7CD0];
  v32 = MEMORY[0x1E69E7CD0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(*v1 + 1096);
    v6 = (a1 + 32);
    v7 = OUTLINED_FUNCTION_5_0((v1 + 46), v31);
    while (1)
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *(v5(v7) + 16);

      if (v9 < v10)
      {
        v11 = v5(v7);
        if (v8 < 0)
        {
          goto LABEL_33;
        }

        if (v8 >= *(v11 + 16))
        {
          goto LABEL_34;
        }

        v12 = *(v11 + 8 * v8 + 32);

        if (!v12)
        {
LABEL_12:
          OUTLINED_FUNCTION_5_0(&qword_1EE24F5E8, v30);
          if (!qword_1EE24F5E8)
          {
            goto LABEL_36;
          }

          v18 = v8 / qword_1EE24F5E8;
          v19 = v8 / qword_1EE24F5E8 * qword_1EE24F5E8;
          if ((v8 / qword_1EE24F5E8 * qword_1EE24F5E8) >> 64 != v19 >> 63)
          {
            goto LABEL_37;
          }

          if (!*(v2[46] + 16) || (v7 = sub_1E3928950(v19), (v20 & 1) == 0))
          {
            v7 = sub_1E3897544(v29, v18);
          }

          goto LABEL_19;
        }

        v14 = (*(*v12 + 552))(v13);
        if (!v14)
        {
          goto LABEL_18;
        }

        v15 = v14;
        if (!*(v14 + 16) || (v16 = sub_1E327D33C(v2[39], v2[40]), (v17 & 1) == 0))
        {

LABEL_18:

          goto LABEL_19;
        }

        sub_1E328438C(*(v15 + 56) + 32 * v16, v29);

        v7 = swift_dynamicCast();
        if (v7 && (v28 & 1) != 0)
        {
          goto LABEL_12;
        }
      }

LABEL_19:
      if (!--v4)
      {
        v3 = v32;
        break;
      }
    }
  }

  v21 = 0;
  v22 = 1 << *(v3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v3 + 56);
  v25 = (v22 + 63) >> 6;
  if (v24)
  {
    while (1)
    {
      v26 = v21;
LABEL_28:
      v27 = *(*(v3 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v24)))));
      OUTLINED_FUNCTION_5_0(&qword_1EE24F5E8, v29);
      if ((v27 * qword_1EE24F5E8) >> 64 != (v27 * qword_1EE24F5E8) >> 63)
      {
        break;
      }

      v24 &= v24 - 1;
      sub_1E3CC9D38();
      v21 = v26;
      if (!v24)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    while (1)
    {
      v26 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v26 >= v25)
      {

        return;
      }

      v24 = *(v3 + 56 + 8 * v26);
      ++v21;
      if (v24)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1E3CC9D38()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v3;
  v18 = sub_1E3CCAE90(v5, v3, 0, 0, 0);
  if (v18)
  {
    v19 = v18;
    v41 = v8;
    v20 = sub_1E324FBDC();
    (*(v14 + 16))(v17, v20, v12);

    v21 = sub_1E41FFC94();
    v22 = sub_1E42067E4();

    if (os_log_type_enabled(v21, v22))
    {
      v38 = v22;
      v23 = OUTLINED_FUNCTION_100();
      v37 = OUTLINED_FUNCTION_100();
      v44 = v37;
      *v23 = 136315650;
      v24 = v1[3];
      v39 = v6;
      v40 = v5;
      if (v24)
      {
        v25 = v1[2];
        v26 = MEMORY[0x1E69E6158];
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v43[2] = 0;
      }

      v43[0] = v25;
      v43[1] = v24;
      v43[3] = v26;

      v27 = sub_1E3294FA4(v43);
      v29 = sub_1E3270FC8(v27, v28, &v44);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v42;
      *(v23 + 22) = 2048;
      v5 = v40;
      *(v23 + 24) = v40;
      _os_log_impl(&dword_1E323F000, v21, v38, "EpisodeCollection:: %s: fetch %ld episodes at %ld", v23, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v14 + 8))(v17, v12);
      v6 = v39;
    }

    else
    {

      (*(v14 + 8))(v17, v12);
    }

    v30 = sub_1E4206BA4();
    v31 = VUISignpostLogObject(v30);
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    (*(v41 + 8))(v11, v6);
    OUTLINED_FUNCTION_11_3((v1 + 46), v43);

    swift_isUniquelyReferenced_nonNull_native();
    v44 = v1[46];
    sub_1E3CCCF80();
    v1[46] = v44;
    v32 = swift_endAccess();
    if ((*(*v19 + 352))(v32))
    {
      v33 = swift_allocObject();
      swift_weakInit();
      v34 = swift_allocObject();
      v34[2] = v33;
      v34[3] = v5;
      v34[4] = 0;
      v34[5] = 0;
      sub_1E34AF604(0, 0);
      v35 = sub_1E41EC148(sub_1E3CCD0E4, v34);
    }

    else
    {
      v35 = 0;
    }

    OUTLINED_FUNCTION_11_3((v1 + 47), v43);
    if (v35)
    {

      swift_isUniquelyReferenced_nonNull_native();
      v44 = v1[47];
      sub_1E3CCCF80();
      v1[47] = v44;
    }

    else
    {
      sub_1E3CCCDDC(v5);
    }

    swift_endAccess();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CCA1FC()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1096))();
  v4 = 0;
  v5 = *(v3 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  while (v5 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (!*(v3 + 8 * v4 + 32))
    {
      v32 = 0u;
      v33 = 0u;
      goto LABEL_13;
    }

    v31 = 0;
    OUTLINED_FUNCTION_8();
    v7 = *(v6 + 776);

    v7(&v32, &v31, &unk_1F5D5D7F8, &off_1F5D5C8F8);

    if (*(&v33 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v8 = v34[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = OUTLINED_FUNCTION_27();
        v30 = sub_1E3997AA8(v11, v12, v13, v14);
      }

      v10 = *(v30 + 2);
      v9 = *(v30 + 3);
      if (v10 >= v9 >> 1)
      {
        v15 = OUTLINED_FUNCTION_35(v9);
        v30 = sub_1E3997AA8(v15, v10 + 1, 1, v30);
      }

      ++v4;
      *(v30 + 2) = v10 + 1;
      *&v30[8 * v10 + 32] = v8;
    }

    else
    {
LABEL_13:
      sub_1E329505C(&v32);
LABEL_14:
      ++v4;
    }
  }

  if (qword_1EE2A5B50 == -1)
  {
    goto LABEL_16;
  }

LABEL_23:
  OUTLINED_FUNCTION_0_210(&qword_1EE2A5B50);
LABEL_16:
  v16 = sub_1E41FFCB4();
  __swift_project_value_buffer(v16, qword_1EE2AB1A8);

  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = v1[3];
    if (v20)
    {
      v21 = v1[2];
      v22 = MEMORY[0x1E69E6158];
    }

    else
    {
      v21 = 0;
      v22 = 0;
      *&v33 = 0;
    }

    *&v32 = v21;
    *(&v32 + 1) = v20;
    *(&v33 + 1) = v22;

    v23 = sub_1E3294FA4(&v32);
    v25 = sub_1E3270FC8(v23, v24, v34);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v26 = MEMORY[0x1E6910C30](v30, MEMORY[0x1E69E6530]);
    v28 = sub_1E3270FC8(v26, v27, v34);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_1E323F000, v17, v18, "EpisodeCollection:: %s: fetch to update initial episodes at %s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(*v1 + 1280))(v30);
}

uint64_t sub_1E3CCA588(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 288, a2);
  *(v2 + 288) = 0;
  *(v2 + 296) = 1;
  return result;
}

uint64_t sub_1E3CCA5C0()
{
  OUTLINED_FUNCTION_8();
  if (!(*(v0 + 1000))())
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_6;
  }

  v4 = 4;
  OUTLINED_FUNCTION_26_0();
  (*(v1 + 776))(&v5, &v4, &unk_1F5D5D7F8, &off_1F5D5C8F8);

  if (!*(&v6 + 1))
  {
LABEL_6:
    sub_1E329505C(&v5);
    return 0;
  }

  result = OUTLINED_FUNCTION_8_17(&v4, v2);
  if (result)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1E3CCA6A4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1E3CCA7CC(a3);
  OUTLINED_FUNCTION_3_0((v6 + 38), v19);
  v6[38] = v12;

  OUTLINED_FUNCTION_3_0((v6 + 31), v18);
  v6[31] = a2;

  OUTLINED_FUNCTION_3_0((v6 + 33), v17);
  v6[33] = a1;

  OUTLINED_FUNCTION_3_0((v6 + 34), v16);
  v6[34] = a4;

  OUTLINED_FUNCTION_3_0((v6 + 32), v15);
  v6[32] = a5;

  OUTLINED_FUNCTION_3_0((v6 + 35), &v14);
  v6[35] = a6;
}

uint64_t sub_1E3CCA7CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    result = sub_1E4207574();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v4, a1);
        }

        else
        {
        }

        ++v4;
        type metadata accessor for ViewModel();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28, &qword_1E42A2A60);
        swift_dynamicCast();
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v2 != v4);
      return v5;
    }
  }

  return result;
}

void sub_1E3CCA914(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_0(a1 + 16, v25);
  v5 = *(a1 + 16);
  if (v5)
  {
    OUTLINED_FUNCTION_8();
    v7 = *(v6 + 1096);

    v9 = *(v7(v8) + 16);

    v10 = sub_1E32AE9B0(v5);
    if (__OFADD__(a2, v10))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      if (v9 >= a2 + v10)
      {
        v22 = a1;
        v11 = sub_1E32AE9B0(v5);
        v12 = 0;
        v13 = 8 * a2 + 32;
        while (v11 != v12)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1E6911E60](v12, v5);
          }

          else
          {
            if (v12 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v14 = *(v5 + 8 * v12 + 32);
          }

          OUTLINED_FUNCTION_11_3(v2 + 304, v24);
          v15 = *(v2 + 304);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 304) = v15;
          if (isUniquelyReferenced_nonNull_native)
          {
            if (a2 < 0)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v15 = sub_1E392937C(v15);
            *(v2 + 304) = v15;
            if (a2 < 0)
            {
LABEL_15:
              __break(1u);
              break;
            }
          }

          if (a2 + v12 >= *(v15 + 16))
          {
            goto LABEL_23;
          }

          *(v15 + v13) = v14;
          *(v2 + 304) = v15;
          swift_endAccess();

          v13 += 8;
          ++v12;
        }

        OUTLINED_FUNCTION_5_0(v22 + 24, v24);
        v17 = *(v22 + 24);
        if (v17)
        {
          OUTLINED_FUNCTION_3_0(v2 + 264, v23);
          *(v2 + 264) = v17;
        }

        OUTLINED_FUNCTION_8();
        if ((*(v18 + 1120))())
        {
          v20 = v19;
          ObjectType = swift_getObjectType();
          (*(v20 + 8))(v2, v5, a2, ObjectType, v20);

          swift_unknownObjectRelease();
          return;
        }
      }
    }
  }
}

uint64_t sub_1E3CCABA8()
{

  sub_1E32AF6F8(v0 + 344);
}

uint64_t sub_1E3CCAC38()
{
  v0 = ViewModel.deinit();

  sub_1E32AF6F8(v0 + 344);

  return v0;
}

uint64_t sub_1E3CCACD0()
{
  v0 = sub_1E3CCAC38();

  return MEMORY[0x1EEE6BDC0](v0, 400, 7);
}

uint64_t sub_1E3CCAD00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 1048))();
  if (!v5)
  {
    return 0;
  }

  v6 = sub_1E3893E78(a1, a2, v5);
  v8 = v7;

  if (v8)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1E3CCAD88(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1024))();
  if (v3 && (v12 = v3, v8 = a1, v9 = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0), sub_1E3827828(&qword_1EE23B500, &qword_1ECF2C420, &qword_1E429CDD0), sub_1E38D2054(&v8, &v10), , (v4 = v11) != 0))
  {
    v5 = v10;
  }

  else
  {

    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6 = sub_1E3CCAD00(v5, v4);

  return v6;
}

void *sub_1E3CCAE90(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  OUTLINED_FUNCTION_8();
  v13 = (*(v12 + 648))();
  if (!v13)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_0(v13 + 48, v34);
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {

    sub_1E3EA5220(a1, a2, a3 & 1, a4, a5, v35);
    type metadata accessor for EpisodeCollectionServiceRequestContext(0);
    v15 = Strong;
    v16 = sub_1E3EA54CC(Strong, v35);
    v17 = *(*v16 + 160);

    v17(v18);
    v19 = *(*v16 + 184);

    v21 = v19(v20);
    if ((*(*v6 + 1000))(v21))
    {
      OUTLINED_FUNCTION_26_0();
      v23 = (*(v22 + 488))();
      if (v23)
      {
        v25 = sub_1E373E010(4, v23, v24);

        if (v25)
        {
          if (*v25 == _TtC8VideosUI13TextViewModel)
          {
            v26 = sub_1E3C27024();
            if (v27)
            {
              v28 = v26;
              v29 = v27;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1E4297BE0;
              v31 = v6[42];
              *(inited + 32) = v6[41];
              *(inited + 40) = v31;
              *(inited + 72) = MEMORY[0x1E69E6158];
              *(inited + 48) = v28;
              *(inited + 56) = v29;

              v32 = sub_1E4205CB4();
              (*(*v16 + 208))(v32);
            }
          }
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36DF8, &qword_1E42CA160);
    Strong = sub_1E37B2BA8();
  }

  return Strong;
}

uint64_t sub_1E3CCB1A0()
{
  v1 = *(v0 + 392);
  if (v1)
  {
    v3[3] = &type metadata for ViewModelKeys;
    v3[4] = &off_1F5D7BCA8;
    LOBYTE(v3[0]) = 7;

    sub_1E3F9F164(v3, v1, MEMORY[0x1E69E7CA0] + 8);

    if (v5)
    {
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_1(v3);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v3);
      sub_1E329505C(v4);
    }
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3CCB2F4()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1168))();
  if (v1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

uint64_t sub_1E3CCB3A4()
{
  OUTLINED_FUNCTION_8();
  v1 = *((*(v0 + 1096))() + 16);

  return v1;
}

uint64_t sub_1E3CCB428(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v8[1] = (*(v2 + 1168))();
  v6 = a1;
  v7 = 0;
  v3 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  sub_1E3827828(&qword_1ECF36E00, &qword_1ECF3BE00, &unk_1E42AA5E0);
  sub_1E38D2054(&v6, v8);

  if (v8[0])
  {
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3CCB580(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 1024))();
  if (result)
  {
    v4 = result;
    v5 = sub_1E3CCAD88(a1);
    v6 = *(v4 + 16);

    if (v6 - 1 == a1)
    {
      OUTLINED_FUNCTION_8();
      v8 = *((*(v7 + 1096))() + 16);

      result = v8 - v5;
      if (!__OFSUB__(v8, v5))
      {
        return result;
      }

      __break(1u);
    }

    result = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      v9 = sub_1E3CCAD88(result);
      v10 = __OFSUB__(v9, v5);
      result = v9 - v5;
      if (!v10)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E3CCB698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_1E3CCB910();
  v7 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    goto LABEL_27;
  }

  v8 = result;
  v9 = a1;
  if ((result & 1) == 0 || (v9 = v7 - 1, !__OFSUB__(v7, 1)))
  {
    for (i = MEMORY[0x1E69E7CC0]; ; i = v24)
    {
      v11 = v9 < v7;
      if (v8)
      {
        v11 = v9 >= a1;
      }

      if (!v11)
      {
        return i;
      }

      v23 = (*(*v3 + 1096))();
      v20 = v9;
      v21 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFF8, &qword_1E42AFDB8);
      sub_1E3827828(&qword_1ECF36E08, &qword_1ECF2FFF8, &qword_1E42AFDB8);
      sub_1E38D2054(&v20, &v22);

      v13 = v22;
      if (v22 < 2)
      {
        return i;
      }

      result = (*(*v22 + 552))(v12);
      if (!result)
      {
        goto LABEL_14;
      }

      v14 = result;
      if (*(result + 16))
      {
        v15 = sub_1E327D33C(v3[39], v3[40]);
        if (v16)
        {
          break;
        }
      }

      if (v8)
      {
LABEL_15:
        v17 = __OFSUB__(v9--, 1);
        if (v17)
        {
          goto LABEL_26;
        }

        goto LABEL_20;
      }

LABEL_19:
      v17 = __OFADD__(v9++, 1);
      if (v17)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_20:

      MEMORY[0x1E6910BF0](v18);
      v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19 >> 1)
      {
        OUTLINED_FUNCTION_35(v19);
        sub_1E42062F4();
      }

      sub_1E4206324();
      sub_1E3781D80(v13);
    }

    sub_1E328438C(*(v14 + 56) + 32 * v15, &v20);

    result = swift_dynamicCast();
    if (result & 1) != 0 && (v23)
    {
      sub_1E3781D80(v13);
      return i;
    }

LABEL_14:
    if (v8)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E3CCB910()
{
  v3 = 5;
  OUTLINED_FUNCTION_8();
  (*(v0 + 776))(v4, &v3, &unk_1F5D5D7F8, &off_1F5D5C8F8);
  if (v4[3])
  {
    result = OUTLINED_FUNCTION_8_17(&v3, v1);
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_1E329505C(v4);
    return 0;
  }

  return result;
}

char *sub_1E3CCB9AC(uint64_t a1)
{
  v3 = sub_1E3CCAD88(a1);
  if ((sub_1E3CCB910() & 1) == 0)
  {
    return v3;
  }

  v4 = sub_1E3CCBA20(a1);
  result = [v1 episodeCountForSeasonIndex_];
  v6 = (result - v4);
  if (__OFSUB__(result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = __OFADD__(v3, v6);
    v3 += v6;
    if (!v7)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

id sub_1E3CCBA20(uint64_t a1)
{
  v2 = [v1 episodeCountForSeasonIndex_];
  if (sub_1E3CCB910())
  {
    OUTLINED_FUNCTION_5_0(&qword_1ECF36DF0, v4);
    if (qword_1ECF36DF0 < v2)
    {
      return qword_1ECF36DF0;
    }
  }

  return v2;
}

id sub_1E3CCBA88()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (!v1)
  {
    v19 = 0u;
    v20 = 0u;
    goto LABEL_10;
  }

  v18[3] = &unk_1F5D7BE68;
  v18[4] = &off_1F5D7BC48;
  LOBYTE(v18[0]) = 6;
  sub_1E3F9F164(v18, v1, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v18);
  if (!*(&v20 + 1))
  {
LABEL_10:
    sub_1E329505C(&v19);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_1E3744600(v18[0]);

  v3 = objc_allocWithZone(VUIContentMetadata);
  v4 = sub_1E37AD294(v2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1E39A4DDC(v4, &selRef_ratingSystem);
  v8 = v7;
  if (v7)
  {
    v9 = v6;
    v10 = [v5 ratingValue];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1E39A4DDC(v5, &selRef_ratingName);
      v14 = v13;
      v15 = [v11 unsignedIntegerValue];
      v16 = objc_allocWithZone(MEMORY[0x1E69DF6B8]);
      v8 = sub_1E3A294D4(v9, v8, v12, v14, v15, 0, 0);

      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:

  return v8;
}

uint64_t sub_1E3CCBC80()
{
  LOBYTE(v5) = 2;
  OUTLINED_FUNCTION_26_0();
  (*(v0 + 776))(v6, &v5, &unk_1F5D5D6D8, &off_1F5D5C8B8);
  if (!v6[3])
  {
    sub_1E329505C(v6);
LABEL_6:
    v3 = 0;
    return v3 & 1;
  }

  if ((OUTLINED_FUNCTION_8_17(&v5, v1) & 1) == 0)
  {
    goto LABEL_6;
  }

  v2 = sub_1E3BE9884();
  if (v2 == 3)
  {
    goto LABEL_6;
  }

  v3 = sub_1E3BE9944(v2, 1);
  return v3 & 1;
}

uint64_t sub_1E3CCBD44(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28, &qword_1E42A2A60);
      v4 = sub_1E4206314();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

void sub_1E3CCBDDC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v82 = v3;
  v83 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v77[-v18];
  v20 = *v7;
  if (*(v7 + 17))
  {
    v21 = *(v7 + 8);
    v22 = *(v7 + 16);
    v81 = v22;
    if (v22 == 2)
    {
      sub_1E3781FA4(v20, v21, 2u, 1);
      v23 = OUTLINED_FUNCTION_4_166();
      sub_1E3781F8C(v23, v24, v25);
      sub_1E324FBDC();
      OUTLINED_FUNCTION_6_30();
      v26(v13);
      v27 = OUTLINED_FUNCTION_4_166();
      sub_1E3781F8C(v27, v28, v29);
      v30 = sub_1E41FFC94();
      v31 = sub_1E42067F4();
      v32 = OUTLINED_FUNCTION_4_166();
      sub_1E37D172C(v32, v33, v34, 1);
      if (os_log_type_enabled(v30, v31))
      {
        v35 = swift_slowAlloc();
        v79 = v30;
        v36 = v35;
        v37 = OUTLINED_FUNCTION_100();
        v80 = v1;
        v38 = v37;
        v88[0] = v37;
        *v36 = 136315138;
        v39 = sub_1E3270FC8(v20, v21, v88);
        v40 = OUTLINED_FUNCTION_4_166();
        sub_1E37D172C(v40, v41, v42, 1);
        *(v36 + 4) = v39;
        v43 = v31;
        v44 = v79;
        _os_log_impl(&dword_1E323F000, v79, v43, "EpisodeCollection::Received empty items from fragment request: [%s]", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        v1 = v80;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
        v66 = OUTLINED_FUNCTION_4_166();
        sub_1E37D172C(v66, v67, v68, 1);
      }

      v69 = (*(v10 + 8))(v13, v8);
    }

    else
    {
      sub_1E3781FA4(v20, v21, v22, 1);
      v79 = v21;
      v87[0] = sub_1E3F6FB3C(v20, v21, v22);
      v87[1] = v53;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
      sub_1E4148C68(sub_1E37BCD7C, v54, v88);

      v56 = v88[0];
      v55 = v88[1];
      sub_1E324FBDC();
      OUTLINED_FUNCTION_6_30();
      v57(v16);

      v58 = sub_1E41FFC94();
      v59 = sub_1E42067F4();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v78 = v59;
        v61 = v60;
        v62 = OUTLINED_FUNCTION_100();
        v80 = v1;
        v63 = v56;
        v64 = v62;
        v88[0] = v62;
        *v61 = 136315138;
        v65 = sub_1E3270FC8(v63, v55, v88);

        *(v61 + 4) = v65;
        _os_log_impl(&dword_1E323F000, v58, v78, "EpisodeCollection::Received error [%s]", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        v1 = v80;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      v69 = (*(v10 + 8))(v16, v8);
      v21 = v79;
    }

    v72 = v82;
    if (v82)
    {
      sub_1E3781F38(v69, v70, v71);
      v73 = swift_allocError();
      *v74 = v20;
      *(v74 + 8) = v21;
      *(v74 + 16) = v81;

      v72(v73, 1);

      v52 = v72;
LABEL_22:
      sub_1E34AF594(v52, v1);
      goto LABEL_24;
    }

    sub_1E37D172C(v20, v21, v81, 1);
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_6_30();
    v45(v19);
    v46 = sub_1E41FFC94();
    v47 = sub_1E42067E4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1E323F000, v46, v47, "Received success response", v48, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v10 + 8))(v19, v8);
    OUTLINED_FUNCTION_5_0(v5 + 16, &v85);
    if (swift_weakLoadStrong())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v49 + 1320))(v20, v83);
    }

    v50 = v82;
    if (v82)
    {
      OUTLINED_FUNCTION_5_0(v20 + 16, &v84);
      if (*(v20 + 16))
      {
        v51 = *(v20 + 16);
      }

      else
      {
        v51 = MEMORY[0x1E69E7CC0];
      }

      sub_1E34AF604(v50, v1);

      v50(v51, 0);

      v52 = v50;
      goto LABEL_22;
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_5_0(v5 + 16, v88);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_11_3(Strong + 368, v87);
    sub_1E3CCCEA8(v83);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_5_0(v5 + 16, v87);
  v76 = swift_weakLoadStrong();
  if (v76)
  {
    OUTLINED_FUNCTION_11_3(v76 + 376, &v86);
    sub_1E3CCCDDC(v83);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CCC418(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v30 = a3;
  v7 = *(a1 + 16);
  v8 = (a1 + 32);
  v9 = MEMORY[0x1E69E6158];
  if (!v7)
  {
LABEL_33:

    return;
  }

  while (1)
  {
    v10 = *v8;

    if (*(v10 + 16))
    {
      v11 = sub_1E327D33C(25705, 0xE200000000000000);
      if (v12)
      {
        sub_1E328438C(*(v10 + 56) + 32 * v11, &v28);
        if (swift_dynamicCast())
        {
          v13 = v9;
          sub_1E384EE08(23);
          sub_1E3277E60(v14, v15, v10, &v28);

          if (v29)
          {
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_25;
            }

            sub_1E3277E60(0x6C746954776F6873, 0xE900000000000065, v10, &v28);
            if (v29)
            {
              if ((swift_dynamicCast() & 1) == 0)
              {

LABEL_23:

                goto LABEL_24;
              }

              sub_1E3277E60(0x7865646E69, 0xE500000000000000, v10, &v28);
              if (v29)
              {
                if (swift_dynamicCast())
                {
                  [a2 episodeCountForSeasonIndex_];
                  type metadata accessor for SeasonMetadata();
                  v16 = v30;
                  v17 = sub_1E3AA7D30();
                  sub_1E384EE08(39);
                  sub_1E3277E60(v18, v19, v10, &v28);

                  if (v29)
                  {
                    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
                    v21 = swift_dynamicCast();
                    if (v21)
                    {
                      sub_1E384EE08(39);
                      v29 = v20;
                      *&v28 = v27;
                      v24 = sub_1E3A7CD30(v22, v23, &v28, 0);

                      __swift_destroy_boxed_opaque_existential_1(&v28);
                      if (v24)
                      {
                        type metadata accessor for ImageViewModel();
                        v25 = swift_dynamicCastClass();
                        if (v25)
                        {
                        }
                      }

                      else
                      {
                        v25 = 0;
                      }

                      (*(*v17 + 176))(v25);
                    }
                  }

                  else
                  {
                    v21 = sub_1E329505C(&v28);
                  }

                  MEMORY[0x1E6910BF0](v21);
                  sub_1E38C5A18(*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10));
                  sub_1E4206324();
                  goto LABEL_24;
                }

                goto LABEL_23;
              }
            }

            else
            {
            }
          }

          sub_1E329505C(&v28);
LABEL_24:
          v9 = v13;
        }
      }
    }

LABEL_25:
    if (v5)
    {
      break;
    }

    ++v8;
    if (!--v7)
    {
      goto LABEL_33;
    }
  }
}

uint64_t sub_1E3CCC8A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (a4)
  {
    (a4)(0, a2, a3);
  }

  return 1;
}

void sub_1E3CCC8E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 368, a2);
  v5 = *(v2 + 368) + 64;
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_23_66();
  v6 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v3)
    {

      return;
    }

    v4 = *(v5 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_7:
        v4 &= v4 - 1;
        OUTLINED_FUNCTION_8();
        v9 = *(v8 + 360);

        v9(v10);
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
}

void sub_1E3CCC9D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 368, a2);
  v5 = *(v2 + 368) + 64;
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_23_66();
  v6 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v3)
    {

      return;
    }

    v4 = *(v5 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_7:
        v4 &= v4 - 1;
        OUTLINED_FUNCTION_8();
        v9 = *(v8 + 368);

        v9(v10);
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
}

void sub_1E3CCCAD0()
{
  OUTLINED_FUNCTION_5_0(v0 + 368, v13);
  v1 = *(v0 + 368) + 64;
  OUTLINED_FUNCTION_4_4();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_7;
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

      OUTLINED_FUNCTION_11_3(v0 + 368, &v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E10, qword_1E42CA168);
      sub_1E4205D14();
      swift_endAccess();
      return;
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_7:
        v4 &= v4 - 1;
        OUTLINED_FUNCTION_8();
        v10 = *(v9 + 376);

        v10(v11);
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
}

char *sub_1E3CCCCD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E28, &qword_1E42CA2F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3CCCDDC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E3928950(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E20, &qword_1E42CA2F0);
  sub_1E4207644();
  v6 = *(*(v8 + 56) + 8 * v5);
  sub_1E42004F4();
  sub_1E4207664();
  *v2 = v8;
  return v6;
}

uint64_t sub_1E3CCCEA8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E3928950(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E18, &qword_1E42CA2E8);
  sub_1E4207644();
  v6 = *(*(v8 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36DF8, &qword_1E42CA160);
  sub_1E4207664();
  *v2 = v8;
  return v6;
}

void sub_1E3CCCF80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_1E3928950(v6);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1E3928950(v7);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    *(v17[7] + 8 * v13) = v9;
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E38CF6BC(v13, v7, v9, v17);
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3CCD0F0(unsigned __int16 *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, double a9, double a10, double a11, double a12)
{
  v49 = a8;
  v50 = a6;
  v51 = a7;
  v47 = a5;
  v45 = a4;
  v48 = a3;
  v46 = a2;
  v52 = type metadata accessor for UnifiedOverlay(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E38, &qword_1E42CA308);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E40, &qword_1E42CA310);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v44 - v25;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E48, &qword_1E42CA318);
  OUTLINED_FUNCTION_2();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = v44 - v29;
  v31 = (*(*a1 + 392))(v28);
  if (v31)
  {
    v44[1] = v23;
    type metadata accessor for UnifiedOverlayLayout();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = v34;
      LOBYTE(v54) = 0;
      (*(*a1 + 776))(v57, &v54, &unk_1F5D5E068, &off_1F5D5CAD8);
      if (v57[3])
      {
        if ((swift_dynamicCast() & 1) != 0 && sub_1E3ACAAF4() != 4)
        {
          (*(*v35 + 1800))();
        }
      }

      else
      {

        v36 = sub_1E325F6F0(v57, &unk_1ECF296E0, &unk_1E4298030);
      }

      goto LABEL_11;
    }
  }

  LOWORD(v57[0]) = a1[49];
  LOWORD(v54) = 164;
  sub_1E3741534(v31, v32, v33);
  v36 = sub_1E4205E84();
  if (a1[49] - 154 > 0xB)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (((1 << (a1[49] + 102)) & 0x85F) != 0)
  {

    v39 = v50;

    v40 = v51;

    sub_1E3DD6178(a1, v46, v48, v45 & 1, v47 & 1, v39, v40, v49 & 1, v19, a9, a10, a11, a12);
    sub_1E3CCD920(v19, v22);
    swift_storeEnumTagMultiPayload();
    sub_1E3CCD83C();
    sub_1E4201F44();
    sub_1E3CCD984(v26, v30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E58, &qword_1E42CA320);
    sub_1E3CCD7B0();
    sub_1E3CCD894();
    OUTLINED_FUNCTION_1_193();
    sub_1E325F6F0(v26, &qword_1ECF36E40, &qword_1E42CA310);
    sub_1E3CCD9F4(v19);
    return;
  }

  if (((1 << (a1[49] + 102)) & 0x1A0) != 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3CCD83C();
    sub_1E4201F44();
    sub_1E3CCD984(v26, v30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E58, &qword_1E42CA320);
    sub_1E3CCD7B0();
    sub_1E3CCD894();
    OUTLINED_FUNCTION_1_193();
    sub_1E325F6F0(v26, &qword_1ECF36E40, &qword_1E42CA310);
    return;
  }

  if (a1[49] == 164)
  {

    sub_1E3C8DB28();

    nullsub_1();
    v54 = v41;
    v55 = v42;
    v56 = 0;
    sub_1E3CCD75C(v41, v42, v43);

    sub_1E4201F44();
    OUTLINED_FUNCTION_2_164();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E58, &qword_1E42CA320);
    sub_1E3CCD7B0();
    sub_1E3CCD894();
    sub_1E4201F44();
  }

  else
  {
LABEL_18:
    v54 = 0;
    v55 = 0;
    v56 = 1;
    sub_1E3CCD75C(v36, v37, v38);
    sub_1E4201F44();
    OUTLINED_FUNCTION_2_164();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E58, &qword_1E42CA320);
    sub_1E3CCD7B0();
    sub_1E3CCD894();
    OUTLINED_FUNCTION_1_193();
  }
}

unint64_t sub_1E3CCD75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36E50;
  if (!qword_1ECF36E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36E50);
  }

  return result;
}

unint64_t sub_1E3CCD7B0()
{
  result = qword_1ECF36E60;
  if (!qword_1ECF36E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36E40, &qword_1E42CA310);
    sub_1E3CCD83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36E60);
  }

  return result;
}

unint64_t sub_1E3CCD83C()
{
  result = qword_1ECF36E68;
  if (!qword_1ECF36E68)
  {
    type metadata accessor for UnifiedOverlay(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36E68);
  }

  return result;
}

unint64_t sub_1E3CCD894()
{
  result = qword_1ECF36E70;
  if (!qword_1ECF36E70)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36E58, &qword_1E42CA320);
    sub_1E3CCD75C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36E70);
  }

  return result;
}

uint64_t sub_1E3CCD920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedOverlay(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CCD984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E40, &qword_1E42CA310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CCD9F4(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedOverlay(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3CCDA60()
{
  result = qword_1ECF36E78;
  if (!qword_1ECF36E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36E80, &qword_1E42CA338);
    sub_1E3CCD7B0();
    sub_1E3CCD894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36E78);
  }

  return result;
}

uint64_t sub_1E3CCDB20()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  v1 = sub_1E3C2F9A0();

  sub_1E3CCDB74();

  return v1;
}

double sub_1E3CCDB74()
{
  v1 = sub_1E3CCDBE0();
  v2 = (*(*v0 + 1696))(v1);
  sub_1E3C37CBC(v2, 6);

  return result;
}

double sub_1E3CCDBE0()
{
  v1 = (*v0 + 1696);
  v2 = *v1;
  v3 = (*v1)();
  v4 = *sub_1E3E5FDEC();
  v5 = *(*v3 + 680);
  v6 = v4;
  v5(v4);

  (v2)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1696))(21);

  (v2)(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1984))(1);

  (v2)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 256))(0x4088600000000000, 0);

  v14 = (v2)(v13);
  sub_1E3952C58();
  v22[0] = v15;
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
  v23 = 0;
  (*(*v14 + 160))(v22);

  (v2)(v19);
  OUTLINED_FUNCTION_2_1();
  (*(v20 + 2272))(1);

  return result;
}

unint64_t sub_1E3CCDE78()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3CCDEC4(char a1)
{
  result = 0x65676E6962;
  switch(a1)
  {
    case 1:
      result = 0x7265766F63736964;
      break;
    case 2:
      result = 0x6C6C65737075;
      break;
    case 3:
      result = 0x79636167656CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3CCDF44(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E3CCDF94(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3CCDF94(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3CCE048(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3CCDF94(v4, a2);
  return sub_1E4207BA4();
}

unint64_t sub_1E3CCE08C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3CCDE78();
  *a1 = result;
  return result;
}

uint64_t sub_1E3CCE0BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3CCDEC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3CCE0F4(unsigned __int8 a1, char a2)
{
  v2 = 0x65676E6962;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x65676E6962;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x7265766F63736964;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C6C65737075;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x79636167656CLL;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x7265766F63736964;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C6C65737075;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x79636167656CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

BOOL sub_1E3CCE274(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 4u:
      return a2 == 4;
    case 5u:
      return a2 == 5;
    case 6u:
      return a2 == 6;
    case 7u:
      return a2 == 7;
    case 8u:
      return a2 == 8;
    case 9u:
      return a2 == 9;
    case 0xAu:
      return a2 == 10;
    default:
      if (a2 - 4 < 7)
      {
        return 0;
      }

      v2 = 0x65676E6962;
      v3 = 0xE500000000000000;
      v4 = a1;
      v5 = 0x65676E6962;
      switch(v4)
      {
        case 1:
          v3 = 0xE800000000000000;
          v5 = 0x7265766F63736964;
          break;
        case 2:
          v3 = 0xE600000000000000;
          v5 = 0x6C6C65737075;
          break;
        case 3:
          v3 = 0xE600000000000000;
          v5 = 0x79636167656CLL;
          break;
        default:
          break;
      }

      v7 = 0xE500000000000000;
      switch(a2)
      {
        case 1u:
          v7 = 0xE800000000000000;
          v2 = 0x7265766F63736964;
          break;
        case 2u:
          v7 = 0xE600000000000000;
          v2 = 0x6C6C65737075;
          break;
        case 3u:
          v7 = 0xE600000000000000;
          v2 = 0x79636167656CLL;
          break;
        default:
          break;
      }

      if (v5 == v2 && v3 == v7)
      {

        return 1;
      }

      else
      {
        v9 = sub_1E42079A4();

        return v9 & 1;
      }
  }
}

uint64_t sub_1E3CCE488(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 121, a2);
  *(v2 + 121) = a1;
  return result;
}

uint64_t sub_1E3CCE534(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14_0(v3 + 224, a3);
  *(v3 + 224) = a1;
  return result;
}

uint64_t sub_1E3CCE5B8()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 240);
  }

  else
  {
    type metadata accessor for MediaShowcasingGradientLayout();
    v1 = sub_1E3D36C8C(*(v0 + 120));
    *(v0 + 240) = v1;
  }

  return v1;
}

uint64_t (*sub_1E3CCE630(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1E3CCE5B8();
  return sub_1E3CCE678;
}

double sub_1E3CCE678(void *a1)
{
  *(a1[1] + 240) = *a1;

  return result;
}

void *sub_1E3CCE688(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 256, a2);
  v3 = *(v2 + 256);
  v4 = v3;
  return v3;
}

void sub_1E3CCE6C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 256, a2);
  v4 = *(v2 + 256);
  *(v2 + 256) = a1;
}

double sub_1E3CCE6FC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for UIEdgeInsets();
  sub_1E3C2C6A0();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1E3CCE790(void *a1))(char **a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  *(v3 + 10) = v1;
  type metadata accessor for UIEdgeInsets();
  *(v3 + 11) = v4;
  sub_1E3C2C6A0();
  v5 = v3[72];
  v6 = *(v3 + 56);
  *v3 = *(v3 + 40);
  *(v3 + 1) = v6;
  v3[32] = v5;
  return sub_1E3CCE81C;
}

void sub_1E3CCE81C(char **a1)
{
  v1 = *a1;
  v2 = (*a1)[32];
  v3 = *(*a1 + 1);
  *(v1 + 40) = *v1;
  *(v1 + 56) = v3;
  *(v1 + 72) = v2;
  sub_1E3C2CA00();

  free(v1);
}

uint64_t sub_1E3CCE874()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 272);
  }

  else
  {
    type metadata accessor for SportsPortableScoreboardViewLayout();
    v1 = sub_1E3EB1B2C();
    OUTLINED_FUNCTION_3_0(v1 + 136, v4);
    *(v1 + 136) = 0;
    OUTLINED_FUNCTION_3_0(v1 + 99, &v3);
    *(v1 + 99) = 0;
    *(v0 + 272) = v1;
  }

  return v1;
}

uint64_t sub_1E3CCE908()
{
  if (*(v0 + 280))
  {
    v1 = *(v0 + 280);
  }

  else
  {
    v2 = v0;
    type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
    v1 = sub_1E392DC54(2);
    v3 = *MEMORY[0x1E69DDC78];
    OUTLINED_FUNCTION_14_0(v1 + 128, v4);
    v5 = *(v1 + 128);
    *(v1 + 128) = v3;
    v6 = v3;

    *(v2 + 280) = v1;
  }

  return v1;
}

uint64_t sub_1E3CCE9B0()
{
  if (*(v0 + 304))
  {
    v1 = *(v0 + 304);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextBadgeLayout(0);
    v3 = *(v0 + 296);
    v4 = OUTLINED_FUNCTION_51_1();
    v1 = sub_1E382F55C(3, v3, v4 & 1);
    *(v2 + 304) = v1;
  }

  return v1;
}

uint64_t sub_1E3CCEA2C()
{
  if (*(v0 + 312))
  {
    v1 = *(v0 + 312);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextBadgeLayout(0);
    v3 = *(v0 + 296);
    v4 = OUTLINED_FUNCTION_51_1();
    v1 = sub_1E382F55C(4, v3, v4 & 1);
    *(v2 + 312) = v1;
  }

  return v1;
}

uint64_t sub_1E3CCEAA8(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3CCEAE4(v1);
}

uint64_t sub_1E3CCEAE4(char a1)
{
  *(v1 + 121) = 13;
  type metadata accessor for TextLayout();
  *(v1 + 128) = sub_1E383BCC0();
  *(v1 + 136) = sub_1E383BCC0();
  *(v1 + 144) = sub_1E383BCC0();
  *(v1 + 152) = sub_1E383BCC0();
  *(v1 + 160) = sub_1E383BCC0();
  *(v1 + 168) = sub_1E383BCC0();
  *(v1 + 176) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v1 + 184) = sub_1E3BD61D8();
  *(v1 + 192) = sub_1E3BD61D8();
  type metadata accessor for MediaShowcasingButtonsLayout();
  *(v1 + 200) = sub_1E3EEAD4C();
  type metadata accessor for ButtonLayout();
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = sub_1E3B050E8();
  v5 = j__OUTLINED_FUNCTION_18();
  *(v1 + 208) = sub_1E3BBD964(0, v3 & 1, v4, v5 & 1);
  v6 = j__OUTLINED_FUNCTION_18();
  v7 = sub_1E3B050E8();
  v8 = j__OUTLINED_FUNCTION_18();
  *(v1 + 216) = sub_1E3BBD964(2, v6 & 1, v7, v8 & 1);
  *(v1 + 224) = 0x4046000000000000;
  *(v1 + 232) = sub_1E3BD61D8();
  type metadata accessor for MediaShowcasingScoreboardLayout();
  *(v1 + 288) = OUTLINED_FUNCTION_212();
  *(v1 + 296) = 3;
  *(v1 + 304) = 0;
  *(v1 + 312) = 0;
  v9 = [objc_opt_self() isTV];
  v10 = 8.0;
  if (v9)
  {
    v10 = 18.0;
  }

  *(v1 + 320) = v10;
  *(v1 + 120) = a1;
  switch(a1)
  {
    case 1:
    case 3:
      *(v1 + 104) = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
      v13 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
      goto LABEL_6;
    case 2:
    case 4:
    case 6:
    case 8:
    case 9:
    case 10:
      v11 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
      goto LABEL_5;
    case 5:
      v11 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
      goto LABEL_5;
    case 7:
      v11 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
      goto LABEL_5;
    default:
      v11 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
LABEL_5:
      v12 = v11;
      v13 = 0;
      *(v1 + 104) = v12;
LABEL_6:
      *(v1 + 112) = v13;
      v14 = sub_1E3C2F9A0();

      sub_1E3CCED58(v15);

      return v14;
  }
}

uint64_t sub_1E3CCED58(uint64_t a1)
{
  v3 = v1;
  switch(*(v1 + 120))
  {
    case 1:
      OUTLINED_FUNCTION_155_5();
      OUTLINED_FUNCTION_37_48();
      *v3288 = 0x407C600000000000;
      OUTLINED_FUNCTION_47_37();
      v3286[8] = 0;
      OUTLINED_FUNCTION_118_8();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_17_97();
      v1977 = OUTLINED_FUNCTION_1_194(v1969, v1970, v1971, v1972, v1973, v1974, v1975, v1976, v2758, v2994, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_181_1(v1977, v1978, v1979, v1980, v1981, v1982, v2927, v3163, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      v1991 = OUTLINED_FUNCTION_64_20(v1983, v1984, v1985, v1986, v1987, v1988, v1989, v1990, v2928, v3164, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1991, v1992, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_59_0();
      v1994 = *(v1993 + 1600);
      OUTLINED_FUNCTION_6_126(v1995, v1996, v1997, v1998, v1999, v2000, v2001, v2002, v2929, v3165, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_176_4();
      v2003.n128_f64[0] = v1994();
      OUTLINED_FUNCTION_101_9(v2003, v2004);
      OUTLINED_FUNCTION_39_44();
      v2005.n128_f64[0] = OUTLINED_FUNCTION_150_5();
      v2009 = OUTLINED_FUNCTION_65_18(v2005, v2006, v2007, v2008);
      OUTLINED_FUNCTION_16_93(v2009, v2010, v2011, v2012);
      v2013 = OUTLINED_FUNCTION_150_5();
      OUTLINED_FUNCTION_4_167(v2013, v2014, v2015, v2016);
      type metadata accessor for UIEdgeInsets();
      v2018 = v2017;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_12_103();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_154(v2019, v2020, v2021, v2022, v2023, v2024, v2025, v2026, v2930, v3166, *&v3230, *(&v3230 + 1), *&v3231, *(&v3231 + 1), *&v3232, *&v3233, *&v3234, *(&v3234 + 1), *&v3235, *(&v3235 + 1), *&v3236, *&v3237, *&v3238, *(&v3238 + 1), *&v3239, *&v3240, *&v3241, *&v3242, *&v3243, *(&v3243 + 1), *&v3244, *&v3245, *&v3246, *&v3247, *&v3248, *&v3249, *&v3250, *&v3251, *&v3252, *&v3253, *&v3254, *&v3255, *&v3256, *&v3257, *&v3258, *&v3259, *&v3260, *&v3261, *&v3262, *&v3263, *&v3264, *&v3265, *&v3266, *&v3267, *&v3268, *&v3269, *&v3270, *&v3271, *&v3272, *&v3273, *&v3274, *&v3275, *&v3276);
      sub_1E3C2FCB8(v2027, v2028, v2029, v2030, v2031, v2032, v2018, v2033);
      v2042 = OUTLINED_FUNCTION_64_20(v2034, v2035, v2036, v2037, v2038, v2039, v2040, v2041, v2931, v3167, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2042, v2043, 0xE9uLL);
      v2044 = OUTLINED_FUNCTION_18();
      v2052 = OUTLINED_FUNCTION_15_105(v2044, v2045, v2046, v2047, v2048, v2049, v2050, v2051, v2932, v3168, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v1994)(v2052);
      OUTLINED_FUNCTION_9_2();
      (*(v2053 + 1928))(7);
      v2054 = *(v1 + 128);
      OUTLINED_FUNCTION_36();
      v2055 = OUTLINED_FUNCTION_133();
      v2056(v2055);
      v2057 = sub_1E3E5FD88();
      v2058 = *v2057;
      v2059 = *(*v2054 + 680);
      v2060 = *v2057;
      v2059(v2058);
      OUTLINED_FUNCTION_36();
      (*(v2061 + 2008))(1);
      OUTLINED_FUNCTION_36();
      (*(v2062 + 1984))(1);
      OUTLINED_FUNCTION_36();
      (*(v2063 + 1720))(7);
      OUTLINED_FUNCTION_205(4);
      OUTLINED_FUNCTION_199();
      v2072 = OUTLINED_FUNCTION_1_194(v2064, v2065, v2066, v2067, v2068, v2069, v2070, v2071, v2933, v3169, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, 10);
      sub_1E3C2FCB8(v2072, v2073, v2074, v2075, v2076, &v3283, &qword_1F5D54AF8, v2077);
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2086 = OUTLINED_FUNCTION_6_126(v2078, v2079, v2080, v2081, v2082, v2083, v2084, v2085, v2934, v3170, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v2087(v2086, 54);
      v2088 = v3[19];
      OUTLINED_FUNCTION_36();
      v2089 = OUTLINED_FUNCTION_133();
      v2090(v2089);
      v2091 = *v2057;
      v2092 = *(*v2088 + 680);
      v2093 = v2091;
      v2092(v2091);
      OUTLINED_FUNCTION_135_3();
      LOBYTE(v3295) = 17;
      v3290[0] = 15;
      v3288[0] = 15;
      v3286[0] = 15;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_111_7();
      v2102 = OUTLINED_FUNCTION_1_194(v2094, v2095, v2096, v2097, v2098, v2099, v2100, v2101, v2935, v3171, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v2102, v2103, v2104, v2105, v2106, v3281, &qword_1F5D549D8, v2107);
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2109 = *(v2108 + 1600);
      v2118 = OUTLINED_FUNCTION_50_34(v2110, v2111, v2112, v2113, v2114, v2115, v2116, v2117, v2936, v3172, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v2109(v2118);
      OUTLINED_FUNCTION_36();
      (*(v2119 + 1792))(4);
      OUTLINED_FUNCTION_36();
      (*(v2120 + 1720))(7);
      OUTLINED_FUNCTION_205(5);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_110();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_111_7();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_196_0();
      v2129 = OUTLINED_FUNCTION_30_55(v2121, v2122, v2123, v2124, v2125, v2126, v2127, v2128, v2937, v3173, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v2);
      sub_1E3C2FCB8(v2129, v2130, v2131, &v3295, v3290, &v3243, &unk_1F5D54CA8, v2132);
      OUTLINED_FUNCTION_4_14();
      v2133 = OUTLINED_FUNCTION_18();
      v2141 = OUTLINED_FUNCTION_21_74(v2133, v2134, v2135, v2136, v2137, v2138, v2139, v2140, v2938, v3174, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v2109)(v2141, 59);
      OUTLINED_FUNCTION_157_6(MEMORY[0x1E69DDCE0]);
      OUTLINED_FUNCTION_8();
      (*(v2142 + 184))(&v3295);
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_35_44(0x4074000000000000uLL);
      *v3286 = 0x407C600000000000;
      v3286[8] = 0;
      *&v3283 = 0x406CC00000000000;
      BYTE8(v3283) = 0;
      OUTLINED_FUNCTION_104_9();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_51();
      v2151 = OUTLINED_FUNCTION_0_211(v2143, v2144, v2145, v2146, v2147, v2148, v2149, v2150, v2939, v3175, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_159_2(v2151, v2152, v2153, v2154, v2155, v2156, v2940, v3176, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277);
      v2165 = OUTLINED_FUNCTION_64_20(v2157, v2158, v2159, v2160, v2161, v2162, v2163, v2164, v2941, v3177, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2165, v2166, 0x59uLL);
      v2167 = OUTLINED_FUNCTION_18();
      v2175 = OUTLINED_FUNCTION_21_74(v2167, v2168, v2169, v2170, v2171, v2172, v2173, v2174, v2942, v3178, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v2109)(v2175, 4);
      sub_1E3952C94();
      OUTLINED_FUNCTION_39_44();
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v2176, v2177, v2178, v2179);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v2180, v2181, v2182, v2183);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_12_103();
      v2184 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_21(v2184, v2185, v2186, v2187, v2188, v2189, v2190, v2191, v2943, v3179, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      OUTLINED_FUNCTION_177_2();
      v2192 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_56_27(v2192, v2193, v2194, v2195, v2196, v2197, v2198, v2199, v2944, v3180, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243);
      v2208 = OUTLINED_FUNCTION_20_14(v2200, v2201, v2202, v2203, v2204, v2205, v2206, v2207, v2945, v3181, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v2208, &v3283, &v3278, v3290, v3288, &v3238, v2018, v2209);
      v2218 = OUTLINED_FUNCTION_64_20(v2210, v2211, v2212, v2213, v2214, v2215, v2216, v2217, v2946, v3182, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2218, v2219, 0xE9uLL);
      v2220 = OUTLINED_FUNCTION_18();
      v2228 = OUTLINED_FUNCTION_15_105(v2220, v2221, v2222, v2223, v2224, v2225, v2226, v2227, v2947, v3183, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v2109(v2228);
      v2229 = v3[22];
      v2230 = *sub_1E3E5FDEC();
      v2231 = *(*v2229 + 680);
      v2232 = v2230;
      v2231(v2230);
      OUTLINED_FUNCTION_2_33();
      (*(v2233 + 1696))(17);
      OUTLINED_FUNCTION_2_33();
      (*(v2234 + 1720))(7);
      OUTLINED_FUNCTION_2_33();
      v2235 = OUTLINED_FUNCTION_10_7();
      v2236(v2235);
      OUTLINED_FUNCTION_2_33();
      (*(v2237 + 1984))(1);
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_36_44();
      *v3286 = 0x407C600000000000;
      v3286[8] = 0;
      *&v3283 = 0x406CC00000000000;
      BYTE8(v3283) = 0;
      OUTLINED_FUNCTION_104_9();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_51();
      v2246 = OUTLINED_FUNCTION_0_211(v2238, v2239, v2240, v2241, v2242, v2243, v2244, v2245, v2948, v3184, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_159_2(v2246, v2247, v2248, v2249, v2250, v2251, v2949, v3185, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277);
      v2260 = OUTLINED_FUNCTION_64_20(v2252, v2253, v2254, v2255, v2256, v2257, v2258, v2259, v2950, v3186, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2260, v2261, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_2_33();
      v2263 = *(v2262 + 1600);
      v2272 = OUTLINED_FUNCTION_32_55(v2264, v2265, v2266, v2267, v2268, v2269, v2270, v2271, v2951, v3187, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v2263(v2272);
      sub_1E3952C88();
      OUTLINED_FUNCTION_39_44();
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v2273, v2274, v2275, v2276);
      sub_1E3952C88();
      OUTLINED_FUNCTION_4_167(v2277, v2278, v2279, v2280);
      sub_1E3952C88();
      OUTLINED_FUNCTION_9_113(v2281, v2282, v2283, v2284);
      OUTLINED_FUNCTION_94_12();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_42_50();
      v2285 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_48_33(v2285, v2286, v2287, v2288, v2289, v2290, v2291, v2292, v2952, v3188, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      v2301 = OUTLINED_FUNCTION_6_138(v2293, v2294, v2295, v2296, v2297, v2298, v2299, v2300, v2953, v3189, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_102_13(v2301, v2302, v2303, v2304, v2954, v3190, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278, *(&v3278 + 1), v3279);
      v2313 = OUTLINED_FUNCTION_64_20(v2305, v2306, v2307, v2308, v2309, v2310, v2311, v2312, v2955, v3191, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2313, v2314, 0xE9uLL);
      v2315 = OUTLINED_FUNCTION_18();
      v2323 = OUTLINED_FUNCTION_15_105(v2315, v2316, v2317, v2318, v2319, v2320, v2321, v2322, v2956, v3192, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v2263(v2323);
      OUTLINED_FUNCTION_9_2();
      v2325 = *(v2324 + 1416);
      v2325();
      OUTLINED_FUNCTION_2_33();
      (*(v2326 + 1424))();
      OUTLINED_FUNCTION_2_33();
      (*(v2327 + 1808))(1);
      OUTLINED_FUNCTION_2_33();
      (*(v2328 + 512))(1);
      OUTLINED_FUNCTION_75_16();
      OUTLINED_FUNCTION_35_44(0x4069000000000000uLL);
      OUTLINED_FUNCTION_86_8(0x4077C00000000000uLL);
      *&v3283 = 0x406CC00000000000;
      BYTE8(v3283) = 0;
      OUTLINED_FUNCTION_189_2();
      OUTLINED_FUNCTION_137_6();
      v2337 = OUTLINED_FUNCTION_0_211(v2329, v2330, v2331, v2332, v2333, v2334, v2335, v2336, v2957, v3193, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_181_1(v2337, v2338, v2339, v2340, v2341, v2342, v2958, v3194, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      v2351 = OUTLINED_FUNCTION_64_20(v2343, v2344, v2345, v2346, v2347, v2348, v2349, v2350, v2959, v3195, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2351, v2352, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_2_33();
      v2354 = *(v2353 + 1600);
      v2363 = OUTLINED_FUNCTION_32_55(v2355, v2356, v2357, v2358, v2359, v2360, v2361, v2362, v2960, v3196, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v2354(v2363);
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_35_44(0x404E000000000000uLL);
      *v3286 = 0x406B800000000000;
      OUTLINED_FUNCTION_61_22(v2364);
      OUTLINED_FUNCTION_137_6();
      v2373 = OUTLINED_FUNCTION_0_211(v2365, v2366, v2367, v2368, v2369, v2370, v2371, v2372, v2961, v3197, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_181_1(v2373, v2374, v2375, v2376, v2377, v2378, v2962, v3198, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      v2387 = OUTLINED_FUNCTION_64_20(v2379, v2380, v2381, v2382, v2383, v2384, v2385, v2386, v2963, v3199, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2387, v2388, 0x59uLL);
      v2389 = OUTLINED_FUNCTION_18();
      v2397 = OUTLINED_FUNCTION_21_74(v2389, v2390, v2391, v2392, v2393, v2394, v2395, v2396, v2964, v3200, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v2354)(v2397, 8);
      sub_1E3952C94();
      OUTLINED_FUNCTION_39_44();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_55_5();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_12_103();
      v2398 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_21(v2398, v2399, v2400, v2401, v2402, v2403, v2404, v2405, v2965, v3201, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      OUTLINED_FUNCTION_177_2();
      v2406 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_56_27(v2406, v2407, v2408, v2409, v2410, v2411, v2412, v2413, v2966, v3202, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243);
      sub_1E3C3DE00();
      v3230 = v3234;
      v3231 = v3235;
      LOBYTE(v3232) = v3236;
      sub_1E3C2FCB8(v3288, &v3283, &v3278, &v3248, &v3238, &v3230, v2018, v3292);
      v2422 = OUTLINED_FUNCTION_64_20(v2414, v2415, v2416, v2417, v2418, v2419, v2420, v2421, v2967, v3203, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2422, v2423, 0xE9uLL);
      v2424 = OUTLINED_FUNCTION_18();
      v2432 = OUTLINED_FUNCTION_15_105(v2424, v2425, v2426, v2427, v2428, v2429, v2430, v2431, v2968, v3204, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v2433 = (v2354)(v2432);
      (v2325)(v2433);
      OUTLINED_FUNCTION_2_33();
      (*(v2434 + 1424))();
      v2435 = v3[13];
      OUTLINED_FUNCTION_111();
      v2437 = *(v2436 + 200);
      v2438 = v2437();
      v2439 = OUTLINED_FUNCTION_140(v2438);
      if (!_ZF)
      {
        v2439 = 0.0;
      }

      v2440 = [v2435 setMaxWidth_];
      v2441 = v3[14];
      if (v2441)
      {
        v2442 = (v2437)(v2440);
        v2443 = OUTLINED_FUNCTION_140(v2442);
        if (!_ZF)
        {
          v2443 = 0.0;
        }

        [v2441 setMaxWidth_];
      }

      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_35_44(0x4065400000000000uLL);
      OUTLINED_FUNCTION_124_5();
      v2452 = OUTLINED_FUNCTION_0_211(v2444, v2445, v2446, v2447, v2448, v2449, v2450, v2451, v2969, v3205, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_181_1(v2452, v2453, v2454, v2455, v2456, v2457, v2970, v3206, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      v2466 = OUTLINED_FUNCTION_64_20(v2458, v2459, v2460, v2461, v2462, v2463, v2464, v2465, v2971, v3207, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2466, v2467, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2469 = *(v2468 + 1600);
      v2478 = OUTLINED_FUNCTION_32_55(v2470, v2471, v2472, v2473, v2474, v2475, v2476, v2477, v2972, v3208, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v2469(v2478);
      OUTLINED_FUNCTION_97_12();
      *v3290 = 0x4044000000000000;
      v3290[8] = 0;
      OUTLINED_FUNCTION_206_0();
      *v3286 = 0x4056000000000000;
      OUTLINED_FUNCTION_61_22(0x4056000000000000uLL);
      *&v3281[0] = v2479;
      BYTE8(v3281[0]) = 0;
      v2488 = OUTLINED_FUNCTION_0_211(v2480, v2481, v2482, v2483, v2484, v2485, v2486, v2487, v2973, v3209, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_181_1(v2488, v2489, v2490, v2491, v2492, v2493, v2974, v3210, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      v2502 = OUTLINED_FUNCTION_64_20(v2494, v2495, v2496, v2497, v2498, v2499, v2500, v2501, v2975, v3211, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2502, v2503, 0x59uLL);
      v2504 = OUTLINED_FUNCTION_18();
      v2512 = OUTLINED_FUNCTION_21_74(v2504, v2505, v2506, v2507, v2508, v2509, v2510, v2511, v2976, v3212, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v2469)(v2512, 8);
      v2513 = [objc_opt_self() whiteColor];
      OUTLINED_FUNCTION_36();
      (*(v2514 + 680))();
      OUTLINED_FUNCTION_36();
      (*(v2515 + 1808))(1);
      OUTLINED_FUNCTION_36();
      (*(v2516 + 512))(1);
      v3292[1] = 0;
      v3292[0] = 0;
      v3293 = xmmword_1E42CA370;
      v3294 = 0;
      OUTLINED_FUNCTION_8();
      (*(v2517 + 160))(v3292);
      sub_1E3CD8738();
      goto LABEL_25;
    case 2:
      OUTLINED_FUNCTION_154_4();
      OUTLINED_FUNCTION_37_48();
      OUTLINED_FUNCTION_166_5();
      *v3288 = v871;
      OUTLINED_FUNCTION_47_37();
      v3286[8] = 0;
      v872 = MEMORY[0x1E69E7DE0];
      OUTLINED_FUNCTION_94_12();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_17_97();
      v881 = OUTLINED_FUNCTION_1_194(v873, v874, v875, v876, v877, v878, v879, v880, v2758, v2994, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_178_3(v881, v882, v883, v884, v885, v886, v2830, v3066, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      v895 = OUTLINED_FUNCTION_64_20(v887, v888, v889, v890, v891, v892, v893, v894, v2831, v3067, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v895, v896, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_59_0();
      v898 = *(v897 + 1600);
      v907 = OUTLINED_FUNCTION_46_40(v899, v900, v901, v902, v903, v904, v905, v906, v2832, v3068, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v898(v907);
      OUTLINED_FUNCTION_9_2();
      v908 = OUTLINED_FUNCTION_13_12();
      v910.n128_f64[0] = v909(v908);
      OUTLINED_FUNCTION_101_9(v910, v911);
      OUTLINED_FUNCTION_39_44();
      v912.n128_f64[0] = OUTLINED_FUNCTION_150_5();
      v916 = OUTLINED_FUNCTION_65_18(v912, v913, v914, v915);
      OUTLINED_FUNCTION_16_93(v916, v917, v918, v919);
      v920 = OUTLINED_FUNCTION_150_5();
      OUTLINED_FUNCTION_4_167(v920, v921, v922, v923);
      type metadata accessor for UIEdgeInsets();
      v56 = v924;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_12_103();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_154(v925, v926, v927, v928, v929, v930, v931, v932, v2833, v3069, *&v3230, *(&v3230 + 1), *&v3231, *(&v3231 + 1), *&v3232, *&v3233, *&v3234, *(&v3234 + 1), *&v3235, *(&v3235 + 1), *&v3236, *&v3237, *&v3238, *(&v3238 + 1), *&v3239, *&v3240, *&v3241, *&v3242, *&v3243, *(&v3243 + 1), *&v3244, *&v3245, *&v3246, *&v3247, *&v3248, *&v3249, *&v3250, *&v3251, *&v3252, *&v3253, *&v3254, *&v3255, *&v3256, *&v3257, *&v3258, *&v3259, *&v3260, *&v3261, *&v3262, *&v3263, *&v3264, *&v3265, *&v3266, *&v3267, *&v3268, *&v3269, *&v3270, *&v3271, *&v3272, *&v3273, *&v3274, *&v3275, *&v3276);
      sub_1E3C2FCB8(v933, v934, v935, v936, v937, v938, v56, v939);
      v948 = OUTLINED_FUNCTION_64_20(v940, v941, v942, v943, v944, v945, v946, v947, v2834, v3070, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v948, v949, 0xE9uLL);
      v950 = OUTLINED_FUNCTION_18();
      v958 = OUTLINED_FUNCTION_15_105(v950, v951, v952, v953, v954, v955, v956, v957, v2835, v3071, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v898(v958);
      v959 = *(v1 + 128);
      OUTLINED_FUNCTION_36();
      v960 = OUTLINED_FUNCTION_133();
      v961(v960);
      v962 = *sub_1E3E5FD88();
      v963 = *(*v959 + 680);
      v964 = v962;
      v963(v962);
      OUTLINED_FUNCTION_36();
      (*(v965 + 2008))(1);
      OUTLINED_FUNCTION_36();
      (*(v966 + 1984))(5);
      OUTLINED_FUNCTION_36();
      (*(v967 + 1792))(10);
      OUTLINED_FUNCTION_135_3();
      OUTLINED_FUNCTION_205(17);
      v3288[0] = 14;
      v3286[0] = 3;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_111_7();
      v976 = OUTLINED_FUNCTION_1_194(v968, v969, v970, v971, v972, v973, v974, v975, v2836, v3072, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v976, v977, v978, v979, v980, v3281, &qword_1F5D549D8, v981);
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v983 = *(v982 + 1600);
      v992 = OUTLINED_FUNCTION_50_34(v984, v985, v986, v987, v988, v989, v990, v991, v2837, v3073, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v983)(v992);
      OUTLINED_FUNCTION_36();
      (*(v993 + 1720))(7);
      sub_1E3952C58();
      v3295 = v994;
      v3296 = v995;
      v3297 = v996;
      v3298 = v997;
      v3299 = 0;
      OUTLINED_FUNCTION_8();
      (*(v998 + 160))(&v3295);
      OUTLINED_FUNCTION_154_4();
      OUTLINED_FUNCTION_36_44();
      *v3286 = 0x407C600000000000;
      v3286[8] = 0;
      *&v3283 = 0x406CC00000000000;
      BYTE8(v3283) = 0;
      OUTLINED_FUNCTION_99_9();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_51();
      v1007 = OUTLINED_FUNCTION_0_211(v999, v1000, v1001, v1002, v1003, v1004, v1005, v1006, v2838, v3074, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_184_1(v1007, v1008, v1009, v1010, v1011, v1012, v2839, v3075, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277);
      v1021 = OUTLINED_FUNCTION_64_20(v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020, v2840, v3076, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1021, v1022, 0x59uLL);
      v1023 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1023, v1024, v1025, v1026, v1027, v1028, v1029, v1030, v2841, v3077, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_96_13();
      v983();
      v1031 = v3[22];
      v1032 = *sub_1E3E5FDEC();
      v1033 = *(*v1031 + 680);
      v1034 = v1032;
      v1033(v1032);
      OUTLINED_FUNCTION_9_2();
      v2842 = *(v1035 + 1416);
      v3078 = v1035 + 1416;
      v2842();
      OUTLINED_FUNCTION_0_44();
      (*(v1036 + 1424))();
      OUTLINED_FUNCTION_0_44();
      (*(v1037 + 1720))(7);
      OUTLINED_FUNCTION_0_44();
      v1038 = OUTLINED_FUNCTION_10_7();
      v1039(v1038);
      OUTLINED_FUNCTION_0_44();
      (*(v1040 + 1984))(1);
      sub_1E3952C88();
      OUTLINED_FUNCTION_39_44();
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v1041, v1042, v1043, v1044);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v1045, v1046, v1047, v1048);
      sub_1E3952C88();
      OUTLINED_FUNCTION_9_113(v1049, v1050, v1051, v1052);
      sub_1E3952C88();
      OUTLINED_FUNCTION_40_48(v1053, v1054, v1055, v1056);
      OUTLINED_FUNCTION_104_9();
      v1057 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_21(v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064, v2842, v3078, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      v1073 = OUTLINED_FUNCTION_0_211(v1065, v1066, v1067, v1068, v1069, v1070, v1071, v1072, v2843, v3079, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_159_2(v1073, v1074, v1075, v1076, v1077, v1078, v2844, v3080, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277);
      v1087 = OUTLINED_FUNCTION_64_20(v1079, v1080, v1081, v1082, v1083, v1084, v1085, v1086, v2845, v3081, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1087, v1088, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_0_44();
      v1090 = *(v1089 + 1600);
      v1099 = OUTLINED_FUNCTION_19_88(v1091, v1092, v1093, v1094, v1095, v1096, v1097, v1098, v2846, v3082, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v1090)(v1099);
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v3252) = 1;
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v1100, v1101, v1102, v1103);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v1104, v1105, v1106, v1107);
      sub_1E3952C88();
      OUTLINED_FUNCTION_9_113(v1108, v1109, v1110, v1111);
      OUTLINED_FUNCTION_118_8();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_42_50();
      v1112 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_48_33(v1112, v1113, v1114, v1115, v1116, v1117, v1118, v1119, v2847, v3083, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      v1128 = OUTLINED_FUNCTION_3_160(v1120, v1121, v1122, v1123, v1124, v1125, v1126, v1127, v2848, v3084, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v1128, v1129, v1130, v1131, v3281, &v3243, v56, v1132);
      v1141 = OUTLINED_FUNCTION_64_20(v1133, v1134, v1135, v1136, v1137, v1138, v1139, v1140, v2849, v3085, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1141, v1142, 0xE9uLL);
      v1143 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1143, v1144, v1145, v1146, v1147, v1148, v1149, v1150, v2850, v3086, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_130_10();
      v1090();
      v3248 = 0;
      LOBYTE(v3249) = 1;
      *v3290 = 0x406D000000000000;
      v3290[8] = 0;
      *v3288 = 0x4070800000000000;
      OUTLINED_FUNCTION_47_37();
      v3286[8] = 0;
      OUTLINED_FUNCTION_94_12();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_26_72();
      v1159 = OUTLINED_FUNCTION_6_138(v1151, v1152, v1153, v1154, v1155, v1156, v1157, v1158, v2851, v3087, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_102_13(v1159, v1160, v1161, v1162, v2852, v3088, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278, *(&v3278 + 1), v3279);
      v1171 = OUTLINED_FUNCTION_64_20(v1163, v1164, v1165, v1166, v1167, v1168, v1169, v1170, v2853, v3089, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1171, v1172, 0x59uLL);
      v1173 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1173, v1174, v1175, v1176, v1177, v1178, v1179, v1180, v2854, v3090, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_96_13();
      v1090();
      OUTLINED_FUNCTION_139_8();
      OUTLINED_FUNCTION_166_5();
      OUTLINED_FUNCTION_69_20(v1181);
      OUTLINED_FUNCTION_103_9();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_26_72();
      OUTLINED_FUNCTION_180_3();
      OUTLINED_FUNCTION_116_7();
      BYTE8(v3234) = v1182;
      v1192 = OUTLINED_FUNCTION_10_107(v1183, v1184, v1185, v1186, v1187, v1188, v1189, v1190, v2855, v3091, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v1191, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v1192, v1193, v1194, v1195, v1196, v1197, v872, v1198);
      v1207 = OUTLINED_FUNCTION_64_20(v1199, v1200, v1201, v1202, v1203, v1204, v1205, v1206, v2856, v3092, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1207, v1208, 0x59uLL);
      v1209 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1209, v1210, v1211, v1212, v1213, v1214, v1215, v1216, v2857, v3093, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_129_8();
      v1090();
      OUTLINED_FUNCTION_128_7();
      LOBYTE(v3283) = 15;
      v1217 = sub_1E3C3DE00();
      LOBYTE(v3278) = v3281[0];
      v1225 = OUTLINED_FUNCTION_0_211(v1217, v1218, v1219, v1220, v1221, v1222, v1223, v1224, v2858, v3094, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v1225, v1226, v1227, v1228, v1229, &v3278, &qword_1F5D549D8, v1230);
      OUTLINED_FUNCTION_10_100();
      v1231 = OUTLINED_FUNCTION_18();
      v1239 = OUTLINED_FUNCTION_21_74(v1231, v1232, v1233, v1234, v1235, v1236, v1237, v1238, v2859, v3095, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v1090)(v1239, 48);
      OUTLINED_FUNCTION_200_1();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_110();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_111_7();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_196_0();
      v1240 = sub_1E3C3DE00();
      LOBYTE(v3234) = v3238;
      v1248 = OUTLINED_FUNCTION_10_107(v1240, v1241, v1242, v1243, v1244, v1245, v1246, v1247, v2860, v3096, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v1248, v1249, v1250, v1251, v1252, v1253, &qword_1F5D54AF8, v1254);
      OUTLINED_FUNCTION_10_100();
      v1255 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1255, v1256, v1257, v1258, v1259, v1260, v1261, v1262, v2861, v3097, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_172();
      v1090();
      OUTLINED_FUNCTION_2_33();
      (*(v1263 + 1808))(1);
      OUTLINED_FUNCTION_2_33();
      (*(v1264 + 512))(1);
      OUTLINED_FUNCTION_75_16();
      *v3290 = 0x406D000000000000;
      v3290[8] = 0;
      OUTLINED_FUNCTION_78_15(0x406E000000000000uLL);
      OUTLINED_FUNCTION_86_8(0x4070400000000000uLL);
      *&v3283 = 0x406CC00000000000;
      BYTE8(v3283) = 0;
      OUTLINED_FUNCTION_189_2();
      OUTLINED_FUNCTION_137_6();
      v1273 = OUTLINED_FUNCTION_0_211(v1265, v1266, v1267, v1268, v1269, v1270, v1271, v1272, v2862, v3098, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_178_3(v1273, v1274, v1275, v1276, v1277, v1278, v2863, v3099, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      v1287 = OUTLINED_FUNCTION_64_20(v1279, v1280, v1281, v1282, v1283, v1284, v1285, v1286, v2864, v3100, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1287, v1288, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_2_33();
      v1290 = *(v1289 + 1600);
      v1299 = OUTLINED_FUNCTION_25_70(v1291, v1292, v1293, v1294, v1295, v1296, v1297, v1298, v2865, v3101, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v1290(v1299);
      OUTLINED_FUNCTION_139_8();
      OUTLINED_FUNCTION_69_20(0x404B800000000000uLL);
      OUTLINED_FUNCTION_78_15(0x404E000000000000uLL);
      *v3286 = 0x405C800000000000;
      OUTLINED_FUNCTION_61_22(v1300);
      OUTLINED_FUNCTION_137_6();
      v1309 = OUTLINED_FUNCTION_0_211(v1301, v1302, v1303, v1304, v1305, v1306, v1307, v1308, v2866, v3102, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_178_3(v1309, v1310, v1311, v1312, v1313, v1314, v2867, v3103, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      v1323 = OUTLINED_FUNCTION_64_20(v1315, v1316, v1317, v1318, v1319, v1320, v1321, v1322, v2868, v3104, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1323, v1324, 0x59uLL);
      v1325 = OUTLINED_FUNCTION_18();
      v1333 = OUTLINED_FUNCTION_21_74(v1325, v1326, v1327, v1328, v1329, v1330, v1331, v1332, v2869, v3105, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v1334 = (v1290)(v1333, 8);
      v2870(v1334);
      OUTLINED_FUNCTION_2_33();
      (*(v1335 + 1424))();
      OUTLINED_FUNCTION_155_5();
      OUTLINED_FUNCTION_35_44(0x4065400000000000uLL);
      OUTLINED_FUNCTION_124_5();
      v1344 = OUTLINED_FUNCTION_0_211(v1336, v1337, v1338, v1339, v1340, v1341, v1342, v1343, v2870, v3106, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_178_3(v1344, v1345, v1346, v1347, v1348, v1349, v2871, v3107, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      v1358 = OUTLINED_FUNCTION_64_20(v1350, v1351, v1352, v1353, v1354, v1355, v1356, v1357, v2872, v3108, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1358, v1359, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1361 = *(v1360 + 1600);
      v1370 = OUTLINED_FUNCTION_25_70(v1362, v1363, v1364, v1365, v1366, v1367, v1368, v1369, v2873, v3109, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v1361(v1370);
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_69_20(0x4044000000000000uLL);
      *v3288 = v1371;
      v3288[8] = 0;
      *v3286 = 0x4056000000000000;
      OUTLINED_FUNCTION_61_22(0x4056000000000000uLL);
      *&v3281[0] = v1372;
      BYTE8(v3281[0]) = 0;
      v1381 = OUTLINED_FUNCTION_0_211(v1373, v1374, v1375, v1376, v1377, v1378, v1379, v1380, v2874, v3110, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_178_3(v1381, v1382, v1383, v1384, v1385, v1386, v2875, v3111, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      v1395 = OUTLINED_FUNCTION_64_20(v1387, v1388, v1389, v1390, v1391, v1392, v1393, v1394, v2876, v3112, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1395, v1396, 0x59uLL);
      v1397 = OUTLINED_FUNCTION_18();
      v1405 = OUTLINED_FUNCTION_21_74(v1397, v1398, v1399, v1400, v1401, v1402, v1403, v1404, v2877, v3113, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v1361)(v1405, 8);
      v1406 = [objc_opt_self() whiteColor];
      OUTLINED_FUNCTION_36();
      (*(v1407 + 680))();
      OUTLINED_FUNCTION_36();
      (*(v1408 + 1808))(1);
      OUTLINED_FUNCTION_36();
      (*(v1409 + 512))(1);
      *v3290 = 0uLL;
      *&v3290[16] = xmmword_1E42CA370;
      v3291 = 0;
      OUTLINED_FUNCTION_8();
      (*(v1410 + 160))(v3290);
      sub_1E3CD8738();
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_78_15(0x4062C00000000000uLL);
      OUTLINED_FUNCTION_53_31(v1411);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_26_72();
      OUTLINED_FUNCTION_180_3();
      OUTLINED_FUNCTION_116_7();
      BYTE8(v3234) = v1412;
      OUTLINED_FUNCTION_20_14(v1413, v1414, v1415, v1416, v1417, v1418, v1419, v1420, v2878, v3114, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v1421, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_201_2();
      sub_1E3C2FCB8(v1422, v1423, v1424, v1425, v1426, v1427, v872, v1428);
      v1437 = OUTLINED_FUNCTION_64_20(v1429, v1430, v1431, v1432, v1433, v1434, v1435, v1436, v2879, v3115, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1437, v1438, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1440 = *(v1439 + 1600);
      v1449 = OUTLINED_FUNCTION_6_126(v1441, v1442, v1443, v1444, v1445, v1446, v1447, v1448, v2880, v3116, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v1440)(v1449, 3);
      OUTLINED_FUNCTION_97_12();
      *v3288 = 0x406D000000000000;
      v3288[8] = 0;
      OUTLINED_FUNCTION_86_8(0x4070800000000000uLL);
      *&v3283 = 0x406CC00000000000;
      BYTE8(v3283) = 0;
      OUTLINED_FUNCTION_99_9();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_51();
      OUTLINED_FUNCTION_177_2();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_76_15();
      v1458 = OUTLINED_FUNCTION_20_14(v1450, v1451, v1452, v1453, v1454, v1455, v1456, v1457, v2881, v3117, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v1458, v3288, v3286, &v3278, &v3283, &v3238, v872, v1459);
      v1468 = OUTLINED_FUNCTION_64_20(v1460, v1461, v1462, v1463, v1464, v1465, v1466, v1467, v2882, v3118, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1468, v1469, 0x59uLL);
      v1470 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1470, v1471, v1472, v1473, v1474, v1475, v1476, v1477, v2883, v3119, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_96_13();
      v1440();
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_166_5();
      OUTLINED_FUNCTION_78_15(v1478);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_49_39();
      OUTLINED_FUNCTION_99_9();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_51();
      OUTLINED_FUNCTION_177_2();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_76_15();
      v1479 = sub_1E3C3DE00();
      BYTE8(v3230) = BYTE8(v3234);
      v1487 = OUTLINED_FUNCTION_20_14(v1479, v1480, v1481, v1482, v1483, v1484, v1485, v1486, v2884, v3120, v3234, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v1487, &v3283, &v3278, v3288, &v3238, &v3230, v872, v1488);
      v1497 = OUTLINED_FUNCTION_64_20(v1489, v1490, v1491, v1492, v1493, v1494, v1495, v1496, v2885, v3121, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1497, v1498, 0x59uLL);
      v1499 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1499, v1500, v1501, v1502, v1503, v1504, v1505, v1506, v2886, v3122, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_129_8();
      v1440();
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v3252) = v1290;
      v1507 = OUTLINED_FUNCTION_215_0();
      OUTLINED_FUNCTION_4_167(v1507, v1508, v1509, v1510);
      v1511 = OUTLINED_FUNCTION_215_0();
      OUTLINED_FUNCTION_9_113(v1511, v1512, v1513, v1514);
      v1515 = sub_1E3952C10(20.0, 6.0);
      OUTLINED_FUNCTION_40_48(v1515, v1516, v1517, v1518);
      v1519 = sub_1E3952C10(10.0, 4.0);
      OUTLINED_FUNCTION_197_0(v1519, v1520, v1521, v1522);
      v3278 = 0u;
      v3279 = 0u;
      v3280 = v1290;
      OUTLINED_FUNCTION_20_14(v1523, v1524, v1525, v1526, v1527, v1528, v1529, v1530, v2887, v3123, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_202_0();
      OUTLINED_FUNCTION_159_2(v1531, v1532, v1533, v1534, v1535, v1536, v2888, v3124, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277);
      v1545 = OUTLINED_FUNCTION_64_20(v1537, v1538, v1539, v1540, v1541, v1542, v1543, v1544, v2889, v3125, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1545, v1546, 0xE9uLL);
      v1547 = OUTLINED_FUNCTION_18();
      v1555 = OUTLINED_FUNCTION_15_105(v1547, v1548, v1549, v1550, v1551, v1552, v1553, v1554, v2890, v3126, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v1440)(v1555);
      sub_1E3952C88();
      OUTLINED_FUNCTION_39_44();
      __asm { FMOV            V0.2D, #20.0 }

      *&v3288[8] = _Q0;
      *v3288 = 0x4024000000000000;
      *&v3288[24] = 0x4034000000000000;
      v3289 = 0;
      *&v3286[8] = _Q0;
      *v3286 = 0x4024000000000000;
      *&v3286[24] = 0x4034000000000000;
      v3287 = 0;
      v3283 = xmmword_1E42CA380;
      v3284 = xmmword_1E429E550;
      v3285 = 0;
      sub_1E3952C58();
      OUTLINED_FUNCTION_197_0(v1557, v1558, v1559, v1560);
      v1561 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_41_43(v1561, v1562, v1563, v1564, v1565, v1566, v1567, v1568, v2891, v3127, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      OUTLINED_FUNCTION_202_0();
      v870 = &v3243;
      goto LABEL_7;
    case 3:
    case 9:
    case 0xA:
      goto LABEL_25;
    case 4:
    case 5:
      sub_1E3CD5D78();
      goto LABEL_25;
    case 6:
      OUTLINED_FUNCTION_111();
      (*(v1590 + 512))(18);
      OUTLINED_FUNCTION_157_6(MEMORY[0x1E69DDCE0]);
      OUTLINED_FUNCTION_111();
      (*(v1591 + 184))(&v3295);
      OUTLINED_FUNCTION_9_2();
      v1592 = OUTLINED_FUNCTION_13_12();
      v1593(v1592);
      OUTLINED_FUNCTION_9_2();
      (*(v1594 + 360))(0x404E000000000000, 0);
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v3252) = 1;
      *v3290 = xmmword_1E42B5EF0;
      *&v3290[16] = xmmword_1E42CA390;
      v3291 = 0;
      *v3288 = xmmword_1E42B5EF0;
      *&v3288[16] = xmmword_1E42CA390;
      v3289 = 0;
      sub_1E3952C94();
      OUTLINED_FUNCTION_9_113(v1595, v1596, v1597, v1598);
      v3283 = xmmword_1E42CA3A0;
      v3284 = xmmword_1E42CA3B0;
      v3285 = 0;
      type metadata accessor for UIEdgeInsets();
      v1600 = v1599;
      v1601 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_21(v1601, v1602, v1603, v1604, v1605, v1606, v1607, v1608, v2758, v2994, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      v1617 = OUTLINED_FUNCTION_0_211(v1609, v1610, v1611, v1612, v1613, v1614, v1615, v1616, v2893, v3129, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_159_2(v1617, v1618, v1619, v1620, v1621, v1622, v2894, v3130, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277);
      v1631 = OUTLINED_FUNCTION_64_20(v1623, v1624, v1625, v1626, v1627, v1628, v1629, v1630, v2895, v3131, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1631, v1632, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_59_0();
      v1634 = (v1633 + 1600);
      v1635 = *(v1633 + 1600);
      v1644 = OUTLINED_FUNCTION_19_88(v1636, v1637, v1638, v1639, v1640, v1641, v1642, v1643, v2896, v3132, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v1635(v1644);
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v3252) = 1;
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v1645, v1646, v1647, v1648);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v1649, v1650, v1651, v1652);
      OUTLINED_FUNCTION_134_5();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_12_103();
      v1653 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_21(v1653, v1654, v1655, v1656, v1657, v1658, v1659, v1660, v2897, v3133, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      v1661 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_56_27(v1661, v1662, v1663, v1664, v1665, v1666, v1667, v1668, v2898, v3134, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243);
      v1677 = OUTLINED_FUNCTION_6_138(v1669, v1670, v1671, v1672, v1673, v1674, v1675, v1676, v2899, v3135, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v1677, v1678, v1679, &v3283, &v3278, &v3238, v1600, v1680);
      v1689 = OUTLINED_FUNCTION_64_20(v1681, v1682, v1683, v1684, v1685, v1686, v1687, v1688, v2900, v3136, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1689, v1690, 0xE9uLL);
      v1691 = OUTLINED_FUNCTION_18();
      v1699 = OUTLINED_FUNCTION_21_74(v1691, v1692, v1693, v1694, v1695, v1696, v1697, v1698, v2901, v3137, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v1635)(v1699, 121);
      v1700 = *(v1 + 128);
      OUTLINED_FUNCTION_36();
      (*(v1701 + 2056))(1, 0);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v1702 = *(*v1700 + 680);
      v1703 = v1634;
      v1702(v1634);
      OUTLINED_FUNCTION_36();
      (*(v1704 + 2008))(1);
      OUTLINED_FUNCTION_36();
      (*(v1705 + 1984))(5);
      OUTLINED_FUNCTION_36();
      (*(v1706 + 464))(4);
      OUTLINED_FUNCTION_135_3();
      v3290[0] = 21;
      v3288[0] = 19;
      v3286[0] = 21;
      LOBYTE(v3283) = 15;
      OUTLINED_FUNCTION_99_9();
      v1707 = sub_1E3C3DE00();
      LOBYTE(v3278) = v3281[0];
      v1715 = OUTLINED_FUNCTION_0_211(v1707, v1708, v1709, v1710, v1711, v1712, v1713, v1714, v2902, v3138, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_184_1(v1715, v1716, v1717, v1718, v1719, v1720, v2903, v3139, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277);
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1729 = OUTLINED_FUNCTION_50_34(v1721, v1722, v1723, v1724, v1725, v1726, v1727, v1728, v2904, v3140, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v1730(v1729);
      OUTLINED_FUNCTION_36();
      (*(v1731 + 1792))(10);
      OUTLINED_FUNCTION_36();
      v1732 = OUTLINED_FUNCTION_10_7();
      v1733(v1732);
      v1734 = v3[19];
      v3248 = 1;
      LOBYTE(v3249) = 0;
      OUTLINED_FUNCTION_69_20(2uLL);
      v1735 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_17_97();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_26_72();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_116_7();
      BYTE8(v3234) = v1736;
      v1746 = OUTLINED_FUNCTION_10_107(v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v2905, v3141, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v1745, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v1746, v1747, v1748, v1749, v1750, v1751, v1735, v1752);
      v1761 = OUTLINED_FUNCTION_64_20(v1753, v1754, v1755, v1756, v1757, v1758, v1759, v1760, v2906, v3142, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1761, v1762, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1764 = *(v1763 + 1600);
      v1773 = OUTLINED_FUNCTION_6_126(v1765, v1766, v1767, v1768, v1769, v1770, v1771, v1772, v2907, v3143, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v1764)(v1773, 62);
      v1774 = *sub_1E3E5FD88();
      v1775 = *(*v1734 + 680);
      v1776 = v1774;
      v1775(v1774);
      OUTLINED_FUNCTION_135_3();
      v3290[0] = 19;
      v3288[0] = 17;
      v3286[0] = 14;
      LOBYTE(v3283) = 2;
      OUTLINED_FUNCTION_99_9();
      v1777 = sub_1E3C3DE00();
      LOBYTE(v3278) = v3281[0];
      v1785 = OUTLINED_FUNCTION_0_211(v1777, v1778, v1779, v1780, v1781, v1782, v1783, v1784, v2908, v3144, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_184_1(v1785, v1786, v1787, v1788, v1789, v1790, v2909, v3145, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277);
      OUTLINED_FUNCTION_4_14();
      v1791 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1791, v1792, v1793, v1794, v1795, v1796, v1797, v1798, v2910, v3146, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_132_8();
      v1764();
      OUTLINED_FUNCTION_36();
      (*(v1799 + 1792))(10);
      OUTLINED_FUNCTION_36();
      v1800 = OUTLINED_FUNCTION_10_7();
      v1801(v1800);
      OUTLINED_FUNCTION_36();
      (*(v1802 + 1984))(5);
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v3252) = 1;
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v1803, v1804, v1805, v1806);
      sub_1E3C3DE00();
      *v3286 = *v3288;
      *&v3286[16] = *&v3288[16];
      v3287 = v3289;
      OUTLINED_FUNCTION_118_8();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_42_50();
      v1807 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_48_33(v1807, v1808, v1809, v1810, v1811, v1812, v1813, v1814, v2911, v3147, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      v1815 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_192_1(v1815, v1816, v1817, v1818, v1819, v1820, v1821, v1822, v2912, v3148, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238);
      OUTLINED_FUNCTION_20_14(v1823, v1824, v1825, v1826, v1827, v1828, v1829, v1830, v2913, v3149, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_201_2();
      sub_1E3C2FCB8(v1831, v1832, v1833, v1834, v1835, v1836, v1600, v1837);
      v1846 = OUTLINED_FUNCTION_64_20(v1838, v1839, v1840, v1841, v1842, v1843, v1844, v1845, v2914, v3150, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1846, v1847, 0xE9uLL);
      v1848 = OUTLINED_FUNCTION_18();
      v1856 = OUTLINED_FUNCTION_15_105(v1848, v1849, v1850, v1851, v1852, v1853, v1854, v1855, v2915, v3151, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v1764)(v1856);
      v3248 = 1;
      LOBYTE(v3249) = 0;
      sub_1E3C2FC98();
      *v3288 = *v3290;
      v3288[8] = v3290[8];
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_49_39();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_51();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_76_15();
      v1857 = sub_1E3C3DE00();
      BYTE8(v3230) = BYTE8(v3234);
      OUTLINED_FUNCTION_20_14(v1857, v1858, v1859, v1860, v1861, v1862, v1863, v1864, v2916, v3152, v3234, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_173_2();
      sub_1E3C2FCB8(v1865, v1866, v1867, v1868, v1869, v1870, v1735, v1871);
      v1880 = OUTLINED_FUNCTION_64_20(v1872, v1873, v1874, v1875, v1876, v1877, v1878, v1879, v2917, v3153, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1880, v1881, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1883 = *(v1882 + 1600);
      v1892 = OUTLINED_FUNCTION_6_126(v1884, v1885, v1886, v1887, v1888, v1889, v1890, v1891, v2918, v3154, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v1883)(v1892, 62);
      OUTLINED_FUNCTION_135_3();
      v3290[0] = 17;
      v3288[0] = 17;
      v3286[0] = 17;
      LOBYTE(v3283) = 17;
      OUTLINED_FUNCTION_99_9();
      v1893 = sub_1E3C3DE00();
      LOBYTE(v3278) = v3281[0];
      v1901 = OUTLINED_FUNCTION_0_211(v1893, v1894, v1895, v1896, v1897, v1898, v1899, v1900, v2919, v3155, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_184_1(v1901, v1902, v1903, v1904, v1905, v1906, v2920, v3156, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277);
      OUTLINED_FUNCTION_10_100();
      v1907 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v1907, v1908, v1909, v1910, v1911, v1912, v1913, v1914, v2921, v3157, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_132_8();
      v1883();
      OUTLINED_FUNCTION_36();
      (*(v1915 + 1792))(10);
      OUTLINED_FUNCTION_36();
      v1916 = OUTLINED_FUNCTION_8_5();
      v1917(v1916);
      OUTLINED_FUNCTION_36();
      (*(v1918 + 1984))(5);
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v3252) = 1;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_12_103();
      v1919 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_21(v1919, v1920, v1921, v1922, v1923, v1924, v1925, v1926, v2922, v3158, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      v1927 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_56_27(v1927, v1928, v1929, v1930, v1931, v1932, v1933, v1934, v2923, v3159, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243);
      v1935 = sub_1E3C3DE00();
      LOBYTE(v3232) = v3236;
      OUTLINED_FUNCTION_20_14(v1935, v1936, v1937, v1938, v1939, v1940, v1941, v1942, v2924, v3160, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_173_2();
      sub_1E3C2FCB8(v1943, v1944, v1945, v1946, v1947, v1948, v1600, v1949);
      v1958 = OUTLINED_FUNCTION_64_20(v1950, v1951, v1952, v1953, v1954, v1955, v1956, v1957, v2925, v3161, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1958, v1959, 0xE9uLL);
      v1960 = OUTLINED_FUNCTION_18();
      v1968 = OUTLINED_FUNCTION_15_105(v1960, v1961, v1962, v1963, v1964, v1965, v1966, v1967, v2926, v3162, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v1883)(v1968);
      goto LABEL_25;
    case 7:
      OUTLINED_FUNCTION_154_4();
      OUTLINED_FUNCTION_37_48();
      OUTLINED_FUNCTION_166_5();
      *v3288 = v4;
      OUTLINED_FUNCTION_47_37();
      v3286[8] = 0;
      v5 = MEMORY[0x1E69E7DE0];
      OUTLINED_FUNCTION_94_12();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_17_97();
      v14 = OUTLINED_FUNCTION_1_194(v6, v7, v8, v9, v10, v11, v12, v13, v2758, v2994, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_178_3(v14, v15, v16, v17, v18, v19, v2759, v2995, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      v28 = OUTLINED_FUNCTION_64_20(v20, v21, v22, v23, v24, v25, v26, v27, v2760, v2996, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v28, v29, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_59_0();
      v31 = *(v30 + 1600);
      v40 = OUTLINED_FUNCTION_46_40(v32, v33, v34, v35, v36, v37, v38, v39, v2761, v2997, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v41.n128_f64[0] = v31(v40);
      OUTLINED_FUNCTION_101_9(v41, v42);
      OUTLINED_FUNCTION_39_44();
      v43.n128_f64[0] = OUTLINED_FUNCTION_150_5();
      v47 = OUTLINED_FUNCTION_65_18(v43, v44, v45, v46);
      OUTLINED_FUNCTION_16_93(v47, v48, v49, v50);
      v51 = OUTLINED_FUNCTION_150_5();
      OUTLINED_FUNCTION_4_167(v51, v52, v53, v54);
      type metadata accessor for UIEdgeInsets();
      v56 = v55;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_12_103();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_154(v57, v58, v59, v60, v61, v62, v63, v64, v2762, v2998, *&v3230, *(&v3230 + 1), *&v3231, *(&v3231 + 1), *&v3232, *&v3233, *&v3234, *(&v3234 + 1), *&v3235, *(&v3235 + 1), *&v3236, *&v3237, *&v3238, *(&v3238 + 1), *&v3239, *&v3240, *&v3241, *&v3242, *&v3243, *(&v3243 + 1), *&v3244, *&v3245, *&v3246, *&v3247, *&v3248, *&v3249, *&v3250, *&v3251, *&v3252, *&v3253, *&v3254, *&v3255, *&v3256, *&v3257, *&v3258, *&v3259, *&v3260, *&v3261, *&v3262, *&v3263, *&v3264, *&v3265, *&v3266, *&v3267, *&v3268, *&v3269, *&v3270, *&v3271, *&v3272, *&v3273, *&v3274, *&v3275, *&v3276);
      sub_1E3C2FCB8(v65, v66, v67, v68, v69, v70, v56, v71);
      v80 = OUTLINED_FUNCTION_64_20(v72, v73, v74, v75, v76, v77, v78, v79, v2763, v2999, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v80, v81, 0xE9uLL);
      v82 = OUTLINED_FUNCTION_18();
      v90 = OUTLINED_FUNCTION_15_105(v82, v83, v84, v85, v86, v87, v88, v89, v2764, v3000, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v31(v90);
      OUTLINED_FUNCTION_9_2();
      (*(v91 + 1928))(7);
      OUTLINED_FUNCTION_36();
      (*(v92 + 1808))(1);
      OUTLINED_FUNCTION_36();
      (*(v93 + 512))(1);
      OUTLINED_FUNCTION_75_16();
      OUTLINED_FUNCTION_107_7(0x4069000000000000);
      OUTLINED_FUNCTION_69_20(v94);
      OUTLINED_FUNCTION_78_15(0x4077C00000000000uLL);
      *v3286 = 0x406CC00000000000;
      v3286[8] = 0;
      OUTLINED_FUNCTION_189_2();
      *&v3283 = v95;
      BYTE8(v3283) = 0;
      v104 = OUTLINED_FUNCTION_1_194(v96, v97, v98, v99, v100, v101, v102, v103, v2765, v3001, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v104, v105, v106, v107, v108, &v3283, v5, v109);
      v118 = OUTLINED_FUNCTION_64_20(v110, v111, v112, v113, v114, v115, v116, v117, v2766, v3002, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v118, v119, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v121 = *(v120 + 1600);
      v130 = OUTLINED_FUNCTION_25_70(v122, v123, v124, v125, v126, v127, v128, v129, v2767, v3003, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v121(v130);
      OUTLINED_FUNCTION_139_8();
      OUTLINED_FUNCTION_107_7(0x404E000000000000);
      OUTLINED_FUNCTION_69_20(v131);
      OUTLINED_FUNCTION_206_0();
      *v3286 = v132;
      OUTLINED_FUNCTION_61_22(v132);
      v141 = OUTLINED_FUNCTION_1_194(v133, v134, v135, v136, v137, v138, v139, v140, v2768, v3004, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v141, v142, v143, v144, v145, &v3283, v5, v146);
      v155 = OUTLINED_FUNCTION_64_20(v147, v148, v149, v150, v151, v152, v153, v154, v2769, v3005, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v155, v156, 0x59uLL);
      v157 = OUTLINED_FUNCTION_18();
      v165 = OUTLINED_FUNCTION_21_74(v157, v158, v159, v160, v161, v162, v163, v164, v2770, v3006, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v121)(v165, 8);
      sub_1E3952C94();
      OUTLINED_FUNCTION_39_44();
      sub_1E3952C94();
      v3295 = v166;
      v3296 = v167;
      v3297 = v168;
      v3298 = v169;
      v3299 = 0;
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v170, v171, v172, v173);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v174, v175, v176, v177);
      OUTLINED_FUNCTION_134_5();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_12_103();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_154(v178, v179, v180, v181, v182, v183, v184, v185, v2771, v3007, *&v3230, *(&v3230 + 1), *&v3231, *(&v3231 + 1), *&v3232, *&v3233, *&v3234, *(&v3234 + 1), *&v3235, *(&v3235 + 1), *&v3236, *&v3237, *&v3238, *(&v3238 + 1), *&v3239, *&v3240, *&v3241, *&v3242, *&v3243, *(&v3243 + 1), *&v3244, *&v3245, *&v3246, *&v3247, *&v3248, *&v3249, *&v3250, *&v3251, *&v3252, *&v3253, *&v3254, *&v3255, *&v3256, *&v3257, *&v3258, *&v3259, *&v3260, *&v3261, *&v3262, *&v3263, *&v3264, *&v3265, *&v3266, *&v3267, *&v3268, *&v3269, *&v3270, *&v3271, *&v3272, *&v3273, *&v3274, *&v3275, *&v3276);
      sub_1E3C2FCB8(v186, v187, v188, v189, v190, v191, v56, v192);
      v201 = OUTLINED_FUNCTION_64_20(v193, v194, v195, v196, v197, v198, v199, v200, v2772, v3008, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v201, v202, 0xE9uLL);
      v203 = OUTLINED_FUNCTION_18();
      v211 = OUTLINED_FUNCTION_15_105(v203, v204, v205, v206, v207, v208, v209, v210, v2773, v3009, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v121(v211);
      v212 = *(v1 + 128);
      OUTLINED_FUNCTION_36();
      v213 = OUTLINED_FUNCTION_133();
      v214(v213);
      v215 = sub_1E3E5FD88();
      v216 = *v215;
      v217 = *(*v212 + 680);
      v218 = *v215;
      v217(v216);
      OUTLINED_FUNCTION_36();
      (*(v219 + 2008))(1);
      OUTLINED_FUNCTION_36();
      (*(v220 + 1984))(1);
      OUTLINED_FUNCTION_36();
      (*(v221 + 1792))(7);
      LOBYTE(v3295) = 2;
      v3290[0] = 1;
      v3288[0] = 3;
      v3286[0] = 3;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_111_7();
      v230 = OUTLINED_FUNCTION_1_194(v222, v223, v224, v225, v226, v227, v228, v229, v2774, v3010, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, 27);
      sub_1E3C2FCB8(v230, v231, v232, v233, v234, v3281, &qword_1F5D549D8, v235);
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v237 = *(v236 + 1600);
      v246 = OUTLINED_FUNCTION_50_34(v238, v239, v240, v241, v242, v243, v244, v245, v2775, v3011, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v237(v246);
      LOBYTE(v3295) = 4;
      v3290[0] = 4;
      OUTLINED_FUNCTION_199();
      v255 = OUTLINED_FUNCTION_1_194(v247, v248, v249, v250, v251, v252, v253, v254, v2776, v3012, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, 10);
      sub_1E3C2FCB8(v255, v256, v257, v258, v259, &v3283, &qword_1F5D54AF8, v260);
      OUTLINED_FUNCTION_4_14();
      v261 = OUTLINED_FUNCTION_18();
      v269 = OUTLINED_FUNCTION_21_74(v261, v262, v263, v264, v265, v266, v267, v268, v2777, v3013, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v237)(v269, 54);
      OUTLINED_FUNCTION_36();
      (*(v270 + 1720))(7);
      v271 = v3[19];
      OUTLINED_FUNCTION_36();
      v272 = OUTLINED_FUNCTION_133();
      v273(v272);
      v274 = *v215;
      v275 = *(*v271 + 680);
      v276 = v274;
      v275(v274);
      LOBYTE(v3295) = 17;
      v3290[0] = 15;
      v3288[0] = 15;
      v3286[0] = 15;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_111_7();
      v285 = OUTLINED_FUNCTION_1_194(v277, v278, v279, v280, v281, v282, v283, v284, v2778, v3014, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, 27);
      sub_1E3C2FCB8(v285, v286, v287, v288, v289, v3281, &qword_1F5D549D8, v290);
      OUTLINED_FUNCTION_10_100();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v292 = *(v291 + 1600);
      v301 = OUTLINED_FUNCTION_50_34(v293, v294, v295, v296, v297, v298, v299, v300, v2779, v3015, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v292(v301);
      OUTLINED_FUNCTION_205(5);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_110();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_111_7();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_196_0();
      v310 = OUTLINED_FUNCTION_30_55(v302, v303, v304, v305, v306, v307, v308, v309, v2780, v3016, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, 1);
      sub_1E3C2FCB8(v310, v311, v312, &v3295, v3290, &v3243, &unk_1F5D54CA8, v313);
      OUTLINED_FUNCTION_10_100();
      v314 = OUTLINED_FUNCTION_18();
      v322 = OUTLINED_FUNCTION_21_74(v314, v315, v316, v317, v318, v319, v320, v321, v2781, v3017, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v292)(v322, 59);
      OUTLINED_FUNCTION_157_6(MEMORY[0x1E69DDCE0]);
      OUTLINED_FUNCTION_8();
      (*(v323 + 184))(&v3295);
      OUTLINED_FUNCTION_139_8();
      OUTLINED_FUNCTION_35_44(0x4074000000000000uLL);
      OUTLINED_FUNCTION_166_5();
      OUTLINED_FUNCTION_86_8(v324);
      OUTLINED_FUNCTION_119_6();
      *&v3283 = v325;
      BYTE8(v3283) = 0;
      OUTLINED_FUNCTION_99_9();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_51();
      v334 = OUTLINED_FUNCTION_0_211(v326, v327, v328, v329, v330, v331, v332, v333, v2782, v3018, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_184_1(v334, v335, v336, v337, v338, v339, v2783, v3019, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277);
      v348 = OUTLINED_FUNCTION_64_20(v340, v341, v342, v343, v344, v345, v346, v347, v2784, v3020, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v348, v349, 0x59uLL);
      v350 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v350, v351, v352, v353, v354, v355, v356, v357, v2785, v3021, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_96_13();
      (v292)();
      OUTLINED_FUNCTION_36();
      (*(v358 + 1792))(4);
      OUTLINED_FUNCTION_36();
      (*(v359 + 1720))(7);
      sub_1E3952C88();
      OUTLINED_FUNCTION_39_44();
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v360, v361, v362, v363);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v364, v365, v366, v367);
      sub_1E3952C94();
      OUTLINED_FUNCTION_9_113(v368, v369, v370, v371);
      OUTLINED_FUNCTION_118_8();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_42_50();
      v372 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_41_43(v372, v373, v374, v375, v376, v377, v378, v379, v2786, v3022, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      v388 = OUTLINED_FUNCTION_142_9(v380, v381, v382, v383, v384, v385, v386, v387, v2787, v3023, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      sub_1E3C2FCB8(v388, v389, v390, v391, v392, v393, v56, v394);
      v403 = OUTLINED_FUNCTION_64_20(v395, v396, v397, v398, v399, v400, v401, v402, v2788, v3024, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v403, v404, 0xE9uLL);
      v405 = OUTLINED_FUNCTION_18();
      v413 = OUTLINED_FUNCTION_15_105(v405, v406, v407, v408, v409, v410, v411, v412, v2789, v3025, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v292(v413);
      v414 = v3[13];
      OUTLINED_FUNCTION_111();
      v416 = (*(v415 + 200))();
      v417 = OUTLINED_FUNCTION_140(v416);
      if (!_ZF)
      {
        v417 = 0.0;
      }

      [v414 setMaxWidth_];
      v419 = v3[24];
      [v414 entitlementCueImageSize];
      (*(*v419 + 256))(v420, 0);
      [v414 entitlementCueImageSize];
      (*(*v419 + 360))(v421, 0);
      OUTLINED_FUNCTION_36();
      (*(v422 + 440))(0x3FF0000000000000, 0);
      OUTLINED_FUNCTION_36();
      (*(v423 + 584))(1);
      v3248 = 0x402C000000000000;
      LOBYTE(v3249) = 0;
      OUTLINED_FUNCTION_69_20(0x402C000000000000uLL);
      OUTLINED_FUNCTION_78_15(0x4036000000000000uLL);
      OUTLINED_FUNCTION_53_31(0x4024000000000000uLL);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_26_72();
      v432 = OUTLINED_FUNCTION_142_9(v424, v425, v426, v427, v428, v429, v430, v431, v2790, v3026, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      sub_1E3C2FCB8(v432, v433, v434, v435, v436, v437, v5, v438);
      v447 = OUTLINED_FUNCTION_64_20(v439, v440, v441, v442, v443, v444, v445, v446, v2791, v3027, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v447, v448, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v457 = OUTLINED_FUNCTION_6_126(v449, v450, v451, v452, v453, v454, v455, v456, v2792, v3028, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v458(v457, 100);
      v459 = v3[22];
      v460 = *sub_1E3E5FDEC();
      v461 = *(*v459 + 680);
      v462 = v460;
      v461(v460);
      OUTLINED_FUNCTION_9_2();
      (*(v463 + 1416))();
      OUTLINED_FUNCTION_34_6();
      (*(v464 + 1424))();
      OUTLINED_FUNCTION_34_6();
      (*(v465 + 1720))(7);
      OUTLINED_FUNCTION_34_6();
      v466 = OUTLINED_FUNCTION_10_7();
      v467(v466);
      OUTLINED_FUNCTION_34_6();
      (*(v468 + 1984))(1);
      sub_1E3952C88();
      OUTLINED_FUNCTION_39_44();
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v469, v470, v471, v472);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v473, v474, v475, v476);
      sub_1E3952C88();
      OUTLINED_FUNCTION_9_113(v477, v478, v479, v480);
      sub_1E3952C88();
      OUTLINED_FUNCTION_40_48(v481, v482, v483, v484);
      OUTLINED_FUNCTION_104_9();
      v485 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_21(v485, v486, v487, v488, v489, v490, v491, v492, v2793, v3029, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      v501 = OUTLINED_FUNCTION_0_211(v493, v494, v495, v496, v497, v498, v499, v500, v2794, v3030, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_159_2(v501, v502, v503, v504, v505, v506, v2795, v3031, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277);
      v515 = OUTLINED_FUNCTION_64_20(v507, v508, v509, v510, v511, v512, v513, v514, v2796, v3032, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v515, v516, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_34_6();
      v518 = *(v517 + 1600);
      v527 = OUTLINED_FUNCTION_19_88(v519, v520, v521, v522, v523, v524, v525, v526, v2797, v3033, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v518)(v527);
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v3252) = 1;
      sub_1E3952C94();
      OUTLINED_FUNCTION_16_93(v528, v529, v530, v531);
      sub_1E3952C94();
      OUTLINED_FUNCTION_4_167(v532, v533, v534, v535);
      sub_1E3952C88();
      OUTLINED_FUNCTION_9_113(v536, v537, v538, v539);
      OUTLINED_FUNCTION_118_8();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_42_50();
      v540 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_48_33(v540, v541, v542, v543, v544, v545, v546, v547, v2798, v3034, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      v556 = OUTLINED_FUNCTION_3_160(v548, v549, v550, v551, v552, v553, v554, v555, v2799, v3035, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v556, v557, v558, v559, v3281, &v3243, v56, v560);
      v569 = OUTLINED_FUNCTION_64_20(v561, v562, v563, v564, v565, v566, v567, v568, v2800, v3036, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v569, v570, 0xE9uLL);
      v571 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v571, v572, v573, v574, v575, v576, v577, v578, v2801, v3037, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_130_10();
      v518();
      OUTLINED_FUNCTION_139_8();
      OUTLINED_FUNCTION_36_44();
      OUTLINED_FUNCTION_119_6();
      OUTLINED_FUNCTION_53_31(v579);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_26_72();
      v588 = OUTLINED_FUNCTION_6_138(v580, v581, v582, v583, v584, v585, v586, v587, v2802, v3038, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_102_13(v588, v589, v590, v591, v2803, v3039, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278, *(&v3278 + 1), v3279);
      v600 = OUTLINED_FUNCTION_64_20(v592, v593, v594, v595, v596, v597, v598, v599, v2804, v3040, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v600, v601, 0x59uLL);
      v602 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v602, v603, v604, v605, v606, v607, v608, v609, v2805, v3041, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_96_13();
      v518();
      OUTLINED_FUNCTION_139_8();
      *v3290 = 0x407C600000000000;
      v3290[8] = 0;
      OUTLINED_FUNCTION_103_9();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_26_72();
      OUTLINED_FUNCTION_180_3();
      OUTLINED_FUNCTION_116_7();
      BYTE8(v3234) = v610;
      v620 = OUTLINED_FUNCTION_10_107(v611, v612, v613, v614, v615, v616, v617, v618, v2806, v3042, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v619, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v620, v621, v622, v623, v624, v625, v5, v626);
      v635 = OUTLINED_FUNCTION_64_20(v627, v628, v629, v630, v631, v632, v633, v634, v2807, v3043, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v635, v636, 0x59uLL);
      v637 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v637, v638, v639, v640, v641, v642, v643, v644, v2808, v3044, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_129_8();
      v518();
      OUTLINED_FUNCTION_128_7();
      LOBYTE(v3283) = 15;
      v645 = sub_1E3C3DE00();
      LOBYTE(v3278) = v3281[0];
      v653 = OUTLINED_FUNCTION_0_211(v645, v646, v647, v648, v649, v650, v651, v652, v2809, v3045, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v653, v654, v655, v656, v657, &v3278, &qword_1F5D549D8, v658);
      OUTLINED_FUNCTION_10_100();
      v659 = OUTLINED_FUNCTION_18();
      v667 = OUTLINED_FUNCTION_21_74(v659, v660, v661, v662, v663, v664, v665, v666, v2810, v3046, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v518)(v667, 48);
      OUTLINED_FUNCTION_200_1();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_110();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_111_7();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_196_0();
      v668 = sub_1E3C3DE00();
      LOBYTE(v3234) = v3238;
      v676 = OUTLINED_FUNCTION_10_107(v668, v669, v670, v671, v672, v673, v674, v675, v2811, v3047, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v676, v677, v678, v679, v680, v681, &qword_1F5D54AF8, v682);
      OUTLINED_FUNCTION_10_100();
      v683 = OUTLINED_FUNCTION_18();
      v691 = OUTLINED_FUNCTION_21_74(v683, v684, v685, v686, v687, v688, v689, v690, v2812, v3048, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v518)(v691, 54);
      sub_1E3CD8738();
      OUTLINED_FUNCTION_155_5();
      OUTLINED_FUNCTION_35_44(0x4062C00000000000uLL);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_49_39();
      OUTLINED_FUNCTION_99_9();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_51();
      OUTLINED_FUNCTION_177_2();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_76_15();
      v700 = OUTLINED_FUNCTION_6_138(v692, v693, v694, v695, v696, v697, v698, v699, v2813, v3049, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v700, v701, v702, &v3283, &v3278, &v3238, v5, v703);
      v712 = OUTLINED_FUNCTION_64_20(v704, v705, v706, v707, v708, v709, v710, v711, v2814, v3050, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v712, v713, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v715 = *(v714 + 1600);
      v724 = OUTLINED_FUNCTION_6_126(v716, v717, v718, v719, v720, v721, v722, v723, v2815, v3051, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v715)(v724, 3);
      OUTLINED_FUNCTION_97_12();
      OUTLINED_FUNCTION_36_44();
      OUTLINED_FUNCTION_119_6();
      OUTLINED_FUNCTION_53_31(v725);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_26_72();
      v734 = OUTLINED_FUNCTION_6_138(v726, v727, v728, v729, v730, v731, v732, v733, v2816, v3052, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_102_13(v734, v735, v736, v737, v2817, v3053, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278, *(&v3278 + 1), v3279);
      v746 = OUTLINED_FUNCTION_64_20(v738, v739, v740, v741, v742, v743, v744, v745, v2818, v3054, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v746, v747, 0x59uLL);
      v748 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v748, v749, v750, v751, v752, v753, v754, v755, v2819, v3055, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_96_13();
      v715();
      OUTLINED_FUNCTION_97_12();
      *v3290 = 0x407C600000000000;
      v3290[8] = 0;
      OUTLINED_FUNCTION_103_9();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_8_117();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_26_72();
      OUTLINED_FUNCTION_180_3();
      OUTLINED_FUNCTION_116_7();
      BYTE8(v3234) = v756;
      v766 = OUTLINED_FUNCTION_10_107(v757, v758, v759, v760, v761, v762, v763, v764, v2820, v3056, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v765, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      sub_1E3C2FCB8(v766, v767, v768, v769, v770, v771, v5, v772);
      v781 = OUTLINED_FUNCTION_64_20(v773, v774, v775, v776, v777, v778, v779, v780, v2821, v3057, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v781, v782, 0x59uLL);
      v783 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_21_74(v783, v784, v785, v786, v787, v788, v789, v790, v2822, v3058, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_129_8();
      v715();
      OUTLINED_FUNCTION_123_7();
      LOBYTE(v3252) = v459;
      v791 = OUTLINED_FUNCTION_215_0();
      OUTLINED_FUNCTION_16_93(v791, v792, v793, v794);
      v795 = OUTLINED_FUNCTION_215_0();
      OUTLINED_FUNCTION_4_167(v795, v796, v797, v798);
      v799 = sub_1E3952C10(20.0, 6.0);
      OUTLINED_FUNCTION_9_113(v799, v800, v801, v802);
      v803 = sub_1E3952C10(10.0, 4.0);
      OUTLINED_FUNCTION_40_48(v803, v804, v805, v806);
      memset(v3281, 0, sizeof(v3281));
      v3282 = v459;
      v815 = OUTLINED_FUNCTION_0_211(v807, v808, v809, v810, v811, v812, v813, v814, v2823, v3059, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_181_1(v815, v816, v817, v818, v819, v820, v2824, v3060, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      v829 = OUTLINED_FUNCTION_64_20(v821, v822, v823, v824, v825, v826, v827, v828, v2825, v3061, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v829, v830, 0xE9uLL);
      v831 = OUTLINED_FUNCTION_18();
      v839 = OUTLINED_FUNCTION_15_105(v831, v832, v833, v834, v835, v836, v837, v838, v2826, v3062, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v715)(v839);
      sub_1E3952C88();
      OUTLINED_FUNCTION_39_44();
      __asm { FMOV            V0.2D, #20.0 }

      *&v3290[8] = _Q0;
      *v3290 = 0x4024000000000000;
      *&v3290[24] = 0x4034000000000000;
      v3291 = 0;
      *&v3288[8] = _Q0;
      *v3288 = 0x4024000000000000;
      *&v3288[24] = 0x4034000000000000;
      v3289 = 0;
      *v3286 = xmmword_1E42CA380;
      *&v3286[16] = xmmword_1E429E550;
      v3287 = 0;
      sub_1E3952C58();
      OUTLINED_FUNCTION_40_48(v844, v845, v846, v847);
      OUTLINED_FUNCTION_104_9();
      v848 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_21(v848, v849, v850, v851, v852, v853, v854, v855, v2827, v3063, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276);
      v864 = OUTLINED_FUNCTION_0_211(v856, v857, v858, v859, v860, v861, v862, v863, v2828, v3064, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v870 = &v3278;
LABEL_7:
      sub_1E3C2FCB8(v864, v865, v866, v867, v868, v870, v56, v869);
      v1577 = OUTLINED_FUNCTION_64_20(v1569, v1570, v1571, v1572, v1573, v1574, v1575, v1576, v2829, v3065, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v1577, v1578, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1587 = OUTLINED_FUNCTION_6_126(v1579, v1580, v1581, v1582, v1583, v1584, v1585, v1586, v2892, v3128, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v1589 = 0;
      goto LABEL_24;
    case 8:
      sub_1E3CD4568();
      goto LABEL_25;
    default:
      LOBYTE(v3249) = 1;
      OUTLINED_FUNCTION_37_48();
      OUTLINED_FUNCTION_206_0();
      *v3286 = 0x406CC00000000000;
      OUTLINED_FUNCTION_61_22(v2518);
      v2527 = OUTLINED_FUNCTION_1_194(v2519, v2520, v2521, v2522, v2523, v2524, v2525, v2526, v2758, v2994, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, 0);
      OUTLINED_FUNCTION_179_2(v2527, v2528, v2529, v2530, v2531, v2532);
      v2541 = OUTLINED_FUNCTION_64_20(v2533, v2534, v2535, v2536, v2537, v2538, v2539, v2540, v2977, v3213, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2541, v2542, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_59_0();
      v2544 = (v2543 + 1600);
      v2545 = *(v2543 + 1600);
      OUTLINED_FUNCTION_32_55(v2546, v2547, v2548, v2549, v2550, v2551, v2552, v2553, v2978, v3214, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_176_4();
      v2554.n128_f64[0] = v2545();
      OUTLINED_FUNCTION_101_9(v2554, v2555);
      OUTLINED_FUNCTION_39_44();
      v2556.n128_f64[0] = OUTLINED_FUNCTION_150_5();
      v2560 = OUTLINED_FUNCTION_65_18(v2556, v2557, v2558, v2559);
      OUTLINED_FUNCTION_16_93(v2560, v2561, v2562, v2563);
      v2564 = OUTLINED_FUNCTION_150_5();
      OUTLINED_FUNCTION_4_167(v2564, v2565, v2566, v2567);
      type metadata accessor for UIEdgeInsets();
      v2569 = v2568;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_12_103();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_154(v2570, v2571, v2572, v2573, v2574, v2575, v2576, v2577, v2979, v3215, *&v3230, *(&v3230 + 1), *&v3231, *(&v3231 + 1), *&v3232, *&v3233, *&v3234, *(&v3234 + 1), *&v3235, *(&v3235 + 1), *&v3236, *&v3237, *&v3238, *(&v3238 + 1), *&v3239, *&v3240, *&v3241, *&v3242, *&v3243, *(&v3243 + 1), *&v3244, *&v3245, *&v3246, *&v3247, *&v3248, *&v3249, *&v3250, *&v3251, *&v3252, *&v3253, *&v3254, *&v3255, *&v3256, *&v3257, *&v3258, *&v3259, *&v3260, *&v3261, *&v3262, *&v3263, *&v3264, *&v3265, *&v3266, *&v3267, *&v3268, *&v3269, *&v3270, *&v3271, *&v3272, *&v3273, *&v3274, *&v3275, *&v3276);
      sub_1E3C2FCB8(v2578, v2579, v2580, v2581, v2582, v2583, v2569, v2584);
      v2593 = OUTLINED_FUNCTION_64_20(v2585, v2586, v2587, v2588, v2589, v2590, v2591, v2592, v2980, v3216, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2593, v2594, 0xE9uLL);
      v2595 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_15_105(v2595, v2596, v2597, v2598, v2599, v2600, v2601, v2602, v2981, v3217, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_198();
      v2545();
      v2603 = v3[16];
      OUTLINED_FUNCTION_36();
      v2604 = OUTLINED_FUNCTION_133();
      v2605(v2604);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_81_12();
      v2606 = *(*v2603 + 680);
      v2607 = v2544;
      v2606(v2544);
      OUTLINED_FUNCTION_36();
      (*(v2608 + 2008))(1);
      OUTLINED_FUNCTION_36();
      (*(v2609 + 1984))(5);
      OUTLINED_FUNCTION_36();
      (*(v2610 + 1720))(7);
      OUTLINED_FUNCTION_36();
      (*(v2611 + 1792))(7);
      OUTLINED_FUNCTION_135_3();
      LOBYTE(v3295) = 2;
      v3290[0] = 1;
      v3288[0] = 3;
      v3286[0] = 3;
      OUTLINED_FUNCTION_94_12();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_111_7();
      v2620 = OUTLINED_FUNCTION_1_194(v2612, v2613, v2614, v2615, v2616, v2617, v2618, v2619, v2982, v3218, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_178_3(v2620, v2621, v2622, v2623, v2624, v2625, v2983, v3219, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248, v3249, v3250, v3251, v3252, v3253, v3254, v3255, v3256, v3257, v3258, v3259, v3260, v3261, v3262, v3263, v3264, v3265, v3266, v3267, v3268, v3269, v3270, v3271, v3272, v3273, v3274, v3275, v3276, v3277, v3278);
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2634 = OUTLINED_FUNCTION_50_34(v2626, v2627, v2628, v2629, v2630, v2631, v2632, v2633, v2984, v3220, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v2635(v2634);
      OUTLINED_FUNCTION_36();
      (*(v2636 + 1808))(1);
      OUTLINED_FUNCTION_36();
      (*(v2637 + 512))(1);
      OUTLINED_FUNCTION_75_16();
      OUTLINED_FUNCTION_107_7(0x4069000000000000);
      OUTLINED_FUNCTION_69_20(v2638);
      OUTLINED_FUNCTION_78_15(0x4077C00000000000uLL);
      *v3286 = 0x406CC00000000000;
      v3286[8] = 0;
      OUTLINED_FUNCTION_189_2();
      *&v3283 = v2639;
      BYTE8(v3283) = 0;
      v2648 = OUTLINED_FUNCTION_1_194(v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v2985, v3221, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      OUTLINED_FUNCTION_179_2(v2648, v2649, v2650, v2651, v2652, v2653);
      v2662 = OUTLINED_FUNCTION_64_20(v2654, v2655, v2656, v2657, v2658, v2659, v2660, v2661, v2986, v3222, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2662, v2663, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2665 = *(v2664 + 1600);
      v2674 = OUTLINED_FUNCTION_32_55(v2666, v2667, v2668, v2669, v2670, v2671, v2672, v2673, v2987, v3223, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      v2665(v2674);
      LOBYTE(v3249) = 1;
      OUTLINED_FUNCTION_107_7(0x404E000000000000);
      OUTLINED_FUNCTION_69_20(v2675);
      OUTLINED_FUNCTION_206_0();
      *v3286 = v2676;
      OUTLINED_FUNCTION_61_22(v2676);
      v2685 = OUTLINED_FUNCTION_1_194(v2677, v2678, v2679, v2680, v2681, v2682, v2683, v2684, v2988, v3224, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, 0);
      OUTLINED_FUNCTION_179_2(v2685, v2686, v2687, v2688, v2689, v2690);
      v2699 = OUTLINED_FUNCTION_64_20(v2691, v2692, v2693, v2694, v2695, v2696, v2697, v2698, v2989, v3225, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2699, v2700, 0x59uLL);
      v2701 = OUTLINED_FUNCTION_18();
      v2709 = OUTLINED_FUNCTION_21_74(v2701, v2702, v2703, v2704, v2705, v2706, v2707, v2708, v2990, v3226, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      (v2665)(v2709, 8);
      v2710 = v3[13];
      OUTLINED_FUNCTION_111();
      v2712 = *(v2711 + 200);
      v2713 = v2712();
      v2714 = OUTLINED_FUNCTION_140(v2713);
      if (!_ZF)
      {
        v2714 = 0.0;
      }

      v2715 = [v2710 setMaxWidth_];
      v2716 = v3[14];
      if (v2716)
      {
        v2717 = (v2712)(v2715);
        v2718 = OUTLINED_FUNCTION_140(v2717);
        if (!_ZF)
        {
          v2718 = 0.0;
        }

        [v2716 setMaxWidth_];
      }

      sub_1E3CD8738();
      LOBYTE(v3249) = 1;
      OUTLINED_FUNCTION_107_7(0x4074000000000000);
      *v3290 = 0;
      v3290[8] = 1;
      *v3288 = 0;
      v3288[8] = 1;
      *v3286 = 0;
      v3286[8] = 1;
      *&v3283 = 0;
      BYTE8(v3283) = 1;
      v2727 = OUTLINED_FUNCTION_1_194(v2719, v2720, v2721, v2722, v2723, v2724, v2725, v2726, v2991, v3227, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, 0);
      OUTLINED_FUNCTION_179_2(v2727, v2728, v2729, v2730, v2731, v2732);
      v2741 = OUTLINED_FUNCTION_64_20(v2733, v2734, v2735, v2736, v2737, v2738, v2739, v2740, v2992, v3228, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
      memcpy(v2741, v2742, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1587 = OUTLINED_FUNCTION_32_55(v2743, v2744, v2745, v2746, v2747, v2748, v2749, v2750, v2993, v3229, v3230, *(&v3230 + 1), v3231, *(&v3231 + 1), v3232, v3233, v3234, *(&v3234 + 1), v3235, *(&v3235 + 1), v3236, v3237, v3238, *(&v3238 + 1), v3239, v3240, v3241, v3242, v3243, *(&v3243 + 1), v3244, v3245, v3246, v3247, v3248);
LABEL_24:
      v1588(v1587, v1589);
LABEL_25:
      sub_1E3C37CBC(v3[16], 23);
      sub_1E3C37CBC(v3[17], 24);
      sub_1E3C37CBC(v3[18], 22);
      sub_1E3C37CBC(v3[19], 15);
      sub_1E3C37CBC(v3[21], 16);
      sub_1E3C37EC8(v3[22], &unk_1F5D7E7B8);
      sub_1E3C37CBC(v3[23], 39);
      sub_1E3C37CBC(v3[24], 40);
      sub_1E3C37EC8(v3[26], &unk_1F5D7E7E0);
      sub_1E3C37CBC(v3[25], 91);
      sub_1E3C37CBC(v3[36], 229);
      if (TVAppFeature.isEnabled.getter(10, v2751, v2752))
      {
        OUTLINED_FUNCTION_111();
        v2754 = (*(v2753 + 2112))();
      }

      else
      {
        v2754 = sub_1E3CCE874();
      }

      sub_1E3C37CBC(v2754, 234);

      result = TVAppFeature.isEnabled.getter(20, v2755, v2756);
      if (result)
      {
        sub_1E3C37CBC(v3[20], 30);
        return sub_1E3C37CBC(v3[29], 47);
      }

      return result;
  }
}

void sub_1E3CD2A48()
{
  *(v0 + 121) = 13;
  type metadata accessor for TextLayout();
  *(v0 + 128) = sub_1E383BCC0();
  *(v0 + 136) = sub_1E383BCC0();
  *(v0 + 144) = sub_1E383BCC0();
  *(v0 + 152) = sub_1E383BCC0();
  *(v0 + 160) = sub_1E383BCC0();
  *(v0 + 168) = sub_1E383BCC0();
  *(v0 + 176) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v0 + 184) = sub_1E3BD61D8();
  *(v0 + 192) = sub_1E3BD61D8();
  type metadata accessor for MediaShowcasingButtonsLayout();
  *(v0 + 200) = sub_1E3EEAD4C();
  type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  *(v0 + 208) = sub_1E3BBD964(0, v1 & 1, v2, v3 & 1);
  v4 = j__OUTLINED_FUNCTION_18();
  v5 = sub_1E3B050E8();
  v6 = j__OUTLINED_FUNCTION_18();
  *(v0 + 216) = sub_1E3BBD964(2, v4 & 1, v5, v6 & 1);
  *(v0 + 224) = 0x4046000000000000;
  *(v0 + 232) = sub_1E3BD61D8();
  type metadata accessor for MediaShowcasingScoreboardLayout();
  *(v0 + 288) = OUTLINED_FUNCTION_212();
  *(v0 + 296) = 3;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  v7 = [objc_opt_self() isTV];
  v8 = 8.0;
  if (v7)
  {
    v8 = 18.0;
  }

  *(v0 + 320) = v8;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3CD2BF4(uint64_t a1)
{
  v2 = v1;
  nullsub_1();
  if (sub_1E385050C())
  {
    type metadata accessor for TextBadgeLayout(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v6 = v4;
      OUTLINED_FUNCTION_14_0((v2 + 31), v5);
      v2[31] = v6;
      swift_retain_n();

      OUTLINED_FUNCTION_36();
      v8 = (*(v7 + 2024))(1);
      (*(*v2 + 1992))(v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B28, &unk_1E42B2C80);
      sub_1E4148DE0(sub_1E3ACC738);

      sub_1E3CD2D48();
    }
  }

  return result;
}

void sub_1E3CD2D48()
{
  v1 = sub_1E42012F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 1992);
  v7 = v6();
  if (v7)
  {
    sub_1E3952C94();
    v56[0] = v8;
    v56[1] = v9;
    v56[2] = v10;
    v56[3] = v11;
    v57 = 0;
    sub_1E3952C94();
    v54[0] = v12;
    v54[1] = v13;
    v54[2] = v14;
    v54[3] = v15;
    v55 = 0;
    sub_1E3952C94();
    v52[0] = v16;
    v52[1] = v17;
    v52[2] = v18;
    v52[3] = v19;
    v53 = 0;
    TVAppFeature.isEnabled.getter(20, v20, v21);
    sub_1E3952C94();
    v50[0] = v22;
    v50[1] = v23;
    v50[2] = v24;
    v50[3] = v25;
    v51 = 0;
    sub_1E3952C94();
    v44[0] = v26;
    v44[1] = v27;
    v44[2] = v28;
    v44[3] = v29;
    LOBYTE(v44[4]) = 0;
    type metadata accessor for UIEdgeInsets();
    v31 = v30;
    sub_1E3C3DE00();
    v45[0] = v47;
    v45[1] = v48;
    v46 = v49;
    sub_1E3C2FCB8(v45, v56, v54, v52, v50, v44, v31, v58);
    memcpy(v44, v58, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v32 + 1600))(v44, 0, v33 & 1, v31);
  }

  if (*(v0 + 120) == 4)
  {
    v34 = (v6)(v7);
    if (v34)
    {
      OUTLINED_FUNCTION_26_0();
      v36 = (*(v35 + 1848))();

      if (v36)
      {
        OUTLINED_FUNCTION_8();
        v37 = OUTLINED_FUNCTION_8_5();
        v38(v37);
      }
    }

    v39 = (v6)(v34);
    if (v39)
    {
      OUTLINED_FUNCTION_26_0();
      v41 = (*(v40 + 1848))();

      if (v41)
      {
        OUTLINED_FUNCTION_8();
        (*(v42 + 1984))(1);
      }
    }

    if ((v6)(v39))
    {
      (*(v2 + 104))(v4, *MEMORY[0x1E697E6C8], v1);
      OUTLINED_FUNCTION_36();
      (*(v43 + 2000))(v4);
    }
  }
}

double sub_1E3CD3134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if ((TVAppFeature.isEnabled.getter(10, a2, a3) & 1) == 0 || ((v5 = *(v3 + 120), v6 = v5 > 0xA, v7 = (1 << v5) & 0x630, !v6) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v20 = OUTLINED_FUNCTION_67_17();
    sub_1E3C35CF4(v20, v21);
    OUTLINED_FUNCTION_3_11();
    (*(v22 + 2112))();
    v23 = OUTLINED_FUNCTION_67_17();
    sub_1E392B4E0(v23, v24, v25);

    OUTLINED_FUNCTION_3_11();
    (*(v26 + 1968))();
    v27 = OUTLINED_FUNCTION_67_17();
    sub_1E3D379CC(v27, v28, v29);
  }

  else
  {
    if (v4)
    {
      v4 = sub_1E4206A64();
    }

    v30 = v4;
    v9 = OUTLINED_FUNCTION_67_17();
    sub_1E3C35CF4(v9, v10);
    OUTLINED_FUNCTION_3_11();
    (*(v11 + 2112))();
    v12 = OUTLINED_FUNCTION_67_17();
    sub_1E392B4E0(v12, v13, v14);

    OUTLINED_FUNCTION_3_11();
    (*(v15 + 1968))();
    v16 = OUTLINED_FUNCTION_67_17();
    sub_1E3D379CC(v16, v17, v18);
  }

  return result;
}

void sub_1E3CD3394(char a1, double a2, double a3)
{
  v4 = v3;
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(a2);
  v8 = *(*v3 + 456);
  v9 = v8();
  if (v9 == 7 || (LOBYTE(v122[0]) = v9, LOBYTE(v116) = 1, sub_1E3793D00(v9, v10, v11), (sub_1E4205E84() & 1) == 0) || (a1 & 1) != 0)
  {
    v12 = 0x4078900000000000;
  }

  else
  {
    v12 = 0x406FC00000000000;
  }

  OUTLINED_FUNCTION_188_1();
  v13 = MEMORY[0x1E69E7DE0];
  OUTLINED_FUNCTION_164_4();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_85_13();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_45_43();
  sub_1E3C2FCB8(v14, v15, v16, v17, v18, v19, v13, v20);
  OUTLINED_FUNCTION_185_2(v21, v22, v23, v24, v25, v26, v27, v28, v116);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_43_44();
  v29();
  OUTLINED_FUNCTION_188_1();
  v118 = 0x406FC00000000000;
  v119 = 0;
  OUTLINED_FUNCTION_164_4();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_85_13();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_45_43();
  sub_1E3C2FCB8(v30, v31, v32, v33, v34, v35, v13, v36);
  OUTLINED_FUNCTION_185_2(v37, v38, v39, v40, v41, v42, v43, v44, v116);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_43_44();
  v45();
  sub_1E3CD3B70();
  if (*(v3 + 120) & 0xFE) == 4 && (TVAppFeature.isEnabled.getter(20, v46, v47))
  {
    OUTLINED_FUNCTION_111();
    v49 = (*(v48 + 1560))();
    sub_1E3A24FDC(v49);
    v50 = *(v3 + 160);
    OUTLINED_FUNCTION_36();
    v52 = *(v51 + 1696);
    if (v53)
    {
      v52(17);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v54 = *(*v50 + 680);
      v55 = v13;
      v54(v13);
      OUTLINED_FUNCTION_36();
      (*(v56 + 2272))(1);
    }

    else
    {
      v52(14);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_81_12();
      v57 = *(*v50 + 680);
      v58 = v13;
      v57(v13);
      OUTLINED_FUNCTION_36();
      (*(v59 + 1792))(5);
    }
  }

  v117 = 1;
  v120 = 0;
  v121 = 1;
  v118 = v12;
  v119 = 0;
  v60 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_85_13();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_84();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_45_43();
  sub_1E3C2FCB8(v61, v62, v63, v64, v65, v66, v60, v67);
  OUTLINED_FUNCTION_185_2(v68, v69, v70, v71, v72, v73, v74, v75, 0);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_11();
  v78 = (*(v76 + 1600))(&v116, 4, v77 & 1, v60);
  (v8)(v78);
  OUTLINED_FUNCTION_3_11();
  (*(v79 + 464))();
  if (TVAppFeature.isEnabled.getter(20, v80, v81))
  {
    v82 = sub_1E3A2579C(a2);
    v83 = sub_1E3A24FDC(v82);
    v85 = v4[120];
    if (v83)
    {
      v84.n128_u64[0] = 26.0;
      if (v85 - 4 <= 6)
      {
        v84.n128_u64[0] = qword_1E42CA650[(v85 - 4)];
      }

      (*(*v4 + 1952))(v84);
    }

    else if (v85 > 0xA || (OUTLINED_FUNCTION_190_1(), v88))
    {
      OUTLINED_FUNCTION_111();
      v115.n128_u64[0] = 0x4050800000000000;
      (*(v114 + 1952))(v115);
    }

    else
    {
      v89 = [objc_opt_self() sharedInstance];
      v90 = [v89 mediaShowcaseConfig];

      [v90 heightThresholdForBottomPadding];
      v92 = v91;
      TVAppFeature.isEnabled.getter(10, v93, v94);
      OUTLINED_FUNCTION_9_2();
      if (v92 >= a3)
      {
        v97.n128_u64[0] = 0x4047000000000000;
        v98 = 34.0;
      }

      else
      {
        v97.n128_u64[0] = 0x4050800000000000;
        v98 = 42.0;
      }

      if (v95)
      {
        v97.n128_f64[0] = v98;
      }

      (*(v96 + 1952))(v97);
    }

    if ((TVAppFeature.isEnabled.getter(10, v86, v87) & 1) != 0 && v85 <= 0xA)
    {
      OUTLINED_FUNCTION_190_1();
      if (!v88)
      {
        OUTLINED_FUNCTION_111();
        v99 += 264;
        v100 = *v99;
        (*v99)();
        OUTLINED_FUNCTION_111();
        v102 = (*(v101 + 456))();
        if (v102 == 7 || (LOBYTE(v122[0]) = v102, LOBYTE(v116) = 1, sub_1E3793D00(v102, v103, v104), (sub_1E4205E84() & 1) == 0))
        {
          v105 = 1;
        }

        else
        {
          v105 = 2;
        }

        sub_1E392B18C(v105, v103);

        (v100)(v106);
        sub_1E392DF94(v82, v107);

        (v100)(v108);
        v109 = *(MEMORY[0x1E69DDCE0] + 16);
        v122[0] = *MEMORY[0x1E69DDCE0];
        v122[1] = v109;
        v123 = 0;
        OUTLINED_FUNCTION_26_0();
        (*(v110 + 160))(v122);
      }
    }
  }

  OUTLINED_FUNCTION_111();
  v112 = (*(v111 + 2112))();
  sub_1E392C768(a2, v112, v113);
}

void sub_1E3CD3B70()
{
  v1 = v0;
  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 248))();
  v5 = OUTLINED_FUNCTION_140(v4);
  if (!v6)
  {
    v5 = 340.0;
  }

  [v2 setMaxWidth_];
  OUTLINED_FUNCTION_36();
  v8 = (*(v7 + 456))();
  if (v8 == 7)
  {
    v11 = 0;
  }

  else
  {
    sub_1E3793D00(v8, v9, v10);
    v11 = sub_1E4205E84();
  }

  [v2 setCenterAlign_];
  sub_1E3CCE9B0();
  OUTLINED_FUNCTION_2_1();
  v13 = (*(v12 + 2048))();

  [v2 setLiveTextBadgeLayout_];

  v14 = objc_opt_self();
  v15 = [v14 whiteColor];
  [v2 setHighContrastBadgeTintColor_];

  v16 = [v2 textLayout];
  v17 = [v14 whiteColor];
  [v16 setHighContrastTintColor_];

  sub_1E3CCEA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 1832))(2);

  v19 = [v14 whiteColor];
  v20 = [v19 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v21 + 752))(v20);

  OUTLINED_FUNCTION_36();
  v23 = *(v22 + 2048);

  v25 = v23(v24);

  [v2 setTimeTextBadgeLayout_];

  if (v1[120] & 0xFE) == 4 && (TVAppFeature.isEnabled.getter(20, v26, v27))
  {
    v28 = (*v1 + 1560);
    v29 = *v28;
    v30 = (*v28)();
    sub_1E3A24FDC(v30);
    sub_1E3952C58();
    [v2 setMargin_];
    if (TVAppFeature.isEnabled.getter(20, v31, v32))
    {
      v33 = v29();
      [v2 updateLayoutForPhoneSizeClass_];
    }
  }
}

double sub_1E3CD3F50(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = a1;
  OUTLINED_FUNCTION_8();
  (*(v12 + 1968))();
  sub_1E3D37C04(v10, a2, a3, a4, a5, a6);

  return result;
}

double sub_1E3CD3FF8(void *a1)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 1968))();
  sub_1E3D38708(a1);

  return result;
}

double sub_1E3CD4060()
{

  return result;
}

id *sub_1E3CD4140()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3CD4228()
{
  v0 = sub_1E3CD4140();

  return MEMORY[0x1EEE6BDC0](v0, 328, 7);
}

unint64_t sub_1E3CD425C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF36E88;
  if (!qword_1ECF36E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36E88);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for MediaShowcasingLayoutType(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 4)
    {
      v7 = v6 - 3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 8)
    {
      return (v7 - 7);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 10;
    if (a2 + 10 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 10);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaShowcasingLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF6)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF5)
  {
    v7 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3CD4434(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E3CD4448(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaShowcasingLayoutType.PostPlayType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3CD4568()
{
  OUTLINED_FUNCTION_8();
  v2 = v0;
  (*(v1 + 512))(18);
  BYTE8(v1510) = 1;
  *&v1532 = 0x406C000000000000;
  BYTE8(v1532) = 0;
  *&v1525 = 0x406F800000000000;
  BYTE8(v1525) = 0;
  OUTLINED_FUNCTION_69_20(0x407CC00000000000uLL);
  OUTLINED_FUNCTION_78_15(0x4071800000000000uLL);
  v3 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_49_39();
  v12 = OUTLINED_FUNCTION_23_67(v4, v5, v6, v7, v8, v9, v10, v11, v935, v1005, v1074, v1143, v1211, v1280, v1350, v1417, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, 0);
  sub_1E3C2FCB8(v12, v13, v14, v15, v16, v17, v3, v18);
  v27 = OUTLINED_FUNCTION_83_10(v19, v20, v21, v22, v23, v24, v25, v26, v936, v1006, v1075, v1144, v1212, v1281, v1351, v1418, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v27, v28, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_11();
  v30 = *(v29 + 1600);
  v39 = OUTLINED_FUNCTION_70_2(v31, v32, v33, v34, v35, v36, v37, v38, v937, v1007, v1076, v1145, v1213, v1282, v1352, v1419, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  (v30)(v39, 4);
  OUTLINED_FUNCTION_3_11();
  (*(v40 + 360))(0, 1);
  v1510 = 0u;
  v1511 = 0u;
  v1532 = xmmword_1E42CA3A0;
  v1533 = xmmword_1E42CA3A0;
  v1534 = 0;
  v41.n128_u64[1] = 0x4043000000000000;
  v1525 = xmmword_1E42CA3C0;
  v1526 = xmmword_1E42CA3C0;
  v1527 = 0;
  v41.n128_u64[0] = 8.0;
  v42 = j__OUTLINED_FUNCTION_7_78(v41);
  OUTLINED_FUNCTION_4_167(v42, v43, v44, v45);
  type metadata accessor for UIEdgeInsets();
  v47 = v46;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_14_7();
  v56 = OUTLINED_FUNCTION_23_67(v48, v49, v50, v51, v52, v53, v54, v55, v938, v1008, 0, 0x4038000000000000, v1214, v1283, v1353, v1420, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, 0);
  sub_1E3C2FCB8(v56, v57, v58, v59, v60, v61, v47, v62);
  v71 = OUTLINED_FUNCTION_83_10(v63, v64, v65, v66, v67, v68, v69, v70, v939, v1009, v1077, v1146, v1215, v1284, v1354, v1421, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v71, v72, 0xE9uLL);
  v73 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_1(v73, v74, v75, v76, v77, v78, v79, v80, v940, v1010, v1078, v1147, v1216, v1285, v1355, v1422, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  OUTLINED_FUNCTION_130_10();
  v30();
  OUTLINED_FUNCTION_108_9();
  v81.n128_u64[0] = 0x4042000000000000;
  v82 = j__OUTLINED_FUNCTION_7_78(v81);
  OUTLINED_FUNCTION_156_6(v82, v83, v84, v85);
  v86.n128_u64[0] = 0x4042000000000000;
  v87 = j__OUTLINED_FUNCTION_7_78(v86);
  OUTLINED_FUNCTION_28_55(v87, v88, v89, v90);
  v91.n128_u64[0] = 0x4050000000000000;
  v92 = j__OUTLINED_FUNCTION_7_78(v91);
  OUTLINED_FUNCTION_16_93(v92, v93, v94, v95);
  v96.n128_u64[0] = 28.0;
  v97 = j__OUTLINED_FUNCTION_7_78(v96);
  OUTLINED_FUNCTION_4_167(v97, v98, v99, v100);
  OUTLINED_FUNCTION_134_5();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_14_7();
  v109 = OUTLINED_FUNCTION_23_67(v101, v102, v103, v104, v105, v106, v107, v108, v941, v1011, v1079, v1148, v1217, v1286, v1356, v1423, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v109, v110, v111, v112, v113, v114, v47, v115);
  v124 = OUTLINED_FUNCTION_83_10(v116, v117, v118, v119, v120, v121, v122, v123, v942, v1012, v1080, v1149, v1218, v1287, v1357, v1424, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v124, v125, 0xE9uLL);
  v126 = OUTLINED_FUNCTION_18();
  v134 = OUTLINED_FUNCTION_70_2(v126, v127, v128, v129, v130, v131, v132, v133, v943, v1013, v1081, v1150, v1219, v1288, v1358, v1425, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  (v30)(v134, 17);
  OUTLINED_FUNCTION_108_9();
  v135.n128_u64[0] = 18.0;
  v136 = j__OUTLINED_FUNCTION_7_78(v135);
  OUTLINED_FUNCTION_156_6(v136, v137, v138, v139);
  v140.n128_u64[0] = 18.0;
  v141 = j__OUTLINED_FUNCTION_7_78(v140);
  OUTLINED_FUNCTION_28_55(v141, v142, v143, v144);
  __asm { FMOV            V0.2D, #28.0 }

  v1522 = _Q0;
  v1523 = xmmword_1E42CA3D0;
  v1524 = 0;
  _Q0.n128_u64[0] = 16.0;
  v150 = j__OUTLINED_FUNCTION_7_78(_Q0);
  OUTLINED_FUNCTION_4_167(v150, v151, v152, v153);
  OUTLINED_FUNCTION_134_5();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_14_7();
  v162 = OUTLINED_FUNCTION_23_67(v154, v155, v156, v157, v158, v159, v160, v161, v944, v1014, v1082, v1151, v1220, v1289, v1359, v1426, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v162, v163, v164, v165, v166, v167, v47, v168);
  v177 = OUTLINED_FUNCTION_83_10(v169, v170, v171, v172, v173, v174, v175, v176, v945, v1015, v1083, v1152, v1221, v1290, v1360, v1427, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v177, v178, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v30();
  OUTLINED_FUNCTION_108_9();
  LOBYTE(v1512) = 1;
  sub_1E3952C94();
  OUTLINED_FUNCTION_156_6(v179, v180, v181, v182);
  sub_1E3952C94();
  OUTLINED_FUNCTION_28_55(v183, v184, v185, v186);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_55_5();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_14_7();
  v187 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_191_2(v187, v188, v189, v190, v191, v192, v193, v194, v946, v1016, v1084, v1153, v1222, v1291, v1361, v2, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505);
  v203 = OUTLINED_FUNCTION_71_25(v195, v196, v197, v198, v199, v200, v201, v202, v947, v1017, v1085, v1154, v1223, v1292, v1362, v1428, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v203, &v1532, &v1525, &v1519, v1514, &v1501, v47, v204);
  v213 = OUTLINED_FUNCTION_83_10(v205, v206, v207, v208, v209, v210, v211, v212, v948, v1018, v1086, v1155, v1224, v1293, v1363, v1429, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v213, v214, 0xE9uLL);
  v215 = OUTLINED_FUNCTION_18();
  v223 = OUTLINED_FUNCTION_33_1(v215, v216, v217, v218, v219, v220, v221, v222, v949, v1019, v1087, v1156, v1225, v1294, v1364, v1430, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  (v30)(v223, 121);
  v224 = *(v2 + 128);
  OUTLINED_FUNCTION_36();
  v225 = OUTLINED_FUNCTION_8_5();
  v226(v225);
  v227 = *sub_1E3E5FD88();
  v228 = *(*v224 + 680);
  v229 = v227;
  v228(v227);
  OUTLINED_FUNCTION_36();
  (*(v230 + 2008))(1);
  OUTLINED_FUNCTION_36();
  (*(v231 + 1984))(5);
  OUTLINED_FUNCTION_36();
  (*(v232 + 464))(4);
  OUTLINED_FUNCTION_36();
  (*(v233 + 1720))(10);
  LOBYTE(v1510) = 27;
  LOBYTE(v1532) = 19;
  LOBYTE(v1525) = 17;
  LOBYTE(v1522) = 21;
  LOBYTE(v1519) = 2;
  v234 = sub_1E3C3DE00();
  LOBYTE(v1514[0]) = v1516;
  v242 = OUTLINED_FUNCTION_23_67(v234, v235, v236, v237, v238, v239, v240, v241, v950, v1020, v1088, v1157, v1226, v1295, v1365, v1431, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v242, v243, v244, v245, v246, v247, &qword_1F5D549D8, v248);
  LODWORD(v1510) = v1528;
  WORD2(v1510) = WORD2(v1528);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v258 = OUTLINED_FUNCTION_70_2(v250, v251, v252, v253, v254, v255, v256, v257, v951, v1021, v1089, v1158, v1227, v1296, *(v249 + 1600), v1432, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  v259(v258, 48);
  *&v1510 = 0;
  *&v1532 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v260 = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  sub_1E3C2FC98();
  *&v1522 = v1525;
  sub_1E3C3DE00();
  *&v1516 = v1519;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_165_6();
  v261 = sub_1E3C3DE00();
  v269 = OUTLINED_FUNCTION_71_25(v261, v262, v263, v264, v265, v266, v267, v268, v952, v1022, v1090, v1159, v1228, v1297, v1366, v1433, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1501, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v269, &v1522, &v1516, &v1532, &v1505, &v1497, v260, v270);
  v271 = v1528;
  v272 = v1529;
  v273 = v1530;
  v274 = v1531;
  v1510 = v1528;
  v1511 = v1529;
  v1512 = v1530;
  v1513 = v1531;
  v275 = OUTLINED_FUNCTION_18();
  v283 = OUTLINED_FUNCTION_33_1(v275, v276, v277, v278, v279, v280, v281, v282, v953, v1023, v1091, v1160, v1229, v1298, v1367, v1434, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  v1368(v283, 66);

  LOBYTE(v1510) = 4;
  LOBYTE(v1532) = 10;
  LOBYTE(v1525) = 10;
  sub_1E3C2FC98();
  LOBYTE(v1519) = v1522;
  sub_1E3C3DE00();
  LOBYTE(v1514[0]) = v1516;
  v284 = sub_1E3C3DE00();
  LOBYTE(v1501) = v1505;
  v292 = OUTLINED_FUNCTION_71_25(v284, v285, v286, v287, v288, v289, v290, v291, v954, v1024, v1092, v1161, v1230, v1299, v1368, v1435, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v292, &v1519, v1514, &v1532, &v1525, &v1501, &qword_1F5D54AF8, v293);
  OUTLINED_FUNCTION_136_4();
  v294 = OUTLINED_FUNCTION_18();
  v302 = OUTLINED_FUNCTION_33_1(v294, v295, v296, v297, v298, v299, v300, v301, v955, v1025, v1093, v1162, v1231, v1300, v1369, v1436, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  v303 = v1370;
  (v1370)(v302, 54);
  OUTLINED_FUNCTION_36();
  v304 = OUTLINED_FUNCTION_13_12();
  v305(v304);
  OUTLINED_FUNCTION_89_9();
  *&v1525 = sub_1E3952CA4();
  *(&v1525 + 1) = v306;
  *&v1526 = v307;
  *(&v1526 + 1) = v308;
  v1527 = 0;
  v309 = *(MEMORY[0x1E69DDCE0] + 16);
  v1532 = *MEMORY[0x1E69DDCE0];
  v1533 = v309;
  v1534 = 0;
  v1522 = v1532;
  v1523 = v309;
  v1524 = 0;
  v1519 = v1532;
  v1520 = v309;
  v1521 = 0;
  v1518 = 0;
  v1516 = v1532;
  v1517 = v309;
  OUTLINED_FUNCTION_118_8();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_72_20();
  v318 = OUTLINED_FUNCTION_2_165(v310, v311, v312, v313, v314, v315, v316, v317, v956, v1026, v1094, v1163, v1232, v1301, v1370, v1437, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v318, v319, v320, v321, v322, v323, v47, v324);
  v333 = OUTLINED_FUNCTION_83_10(v325, v326, v327, v328, v329, v330, v331, v332, v957, v1027, v1095, v1164, v1233, v1302, v1371, v1438, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v333, v334, 0xE9uLL);
  v335 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_1(v335, v336, v337, v338, v339, v340, v341, v342, v958, v1028, v1096, v1165, v1234, v1303, v1372, v1439, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  OUTLINED_FUNCTION_130_10();
  v303();
  OUTLINED_FUNCTION_108_9();
  LOBYTE(v1512) = v274;
  sub_1E3952C94();
  OUTLINED_FUNCTION_28_55(v343, v344, v345, v346);
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_55_5();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_14_7();
  v347 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_191_2(v347, v348, v349, v350, v351, v352, v353, v354, v959, v1029, v1097, v1166, v1235, v1304, v1373, v1440, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505);
  v355 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_56_27(v355, v356, v357, v358, v359, v360, v361, v362, v960, v1030, v1098, v1167, v1236, v1305, v1374, v1441, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497);
  v371 = OUTLINED_FUNCTION_62_24(v363, v364, v365, v366, v367, v368, v369, v370, v961, v1031, v1099, v1168, v1237, v1306, v1375, v1442, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v371, v372, v373, v374, v375, v376, v47, v377);
  v386 = OUTLINED_FUNCTION_83_10(v378, v379, v380, v381, v382, v383, v384, v385, v962, v1032, v1100, v1169, v1238, v1307, v1376, v1443, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v386, v387, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v303();
  v388 = *(v1444 + 152);
  OUTLINED_FUNCTION_36();
  (*(v389 + 2056))(1, 0);
  v390 = *sub_1E3E5FDEC();
  v391 = *(*v388 + 680);
  v392 = v390;
  v391(v390);
  LOBYTE(v1510) = 27;
  LOBYTE(v1525) = 21;
  LOBYTE(v1522) = 21;
  LOBYTE(v1519) = 22;
  LOBYTE(v1516) = 14;
  v393 = sub_1E3C3DE00();
  LOBYTE(v1505) = v1514[0];
  v401 = OUTLINED_FUNCTION_2_165(v393, v394, v395, v396, v397, v398, v399, v400, v963, v1033, v1101, v1170, v1239, v1308, v1377, v1444, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v401, v402, v403, v404, v405, v406, &qword_1F5D549D8, v407);
  OUTLINED_FUNCTION_136_4();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v409 = *(v408 + 1600);
  v418 = OUTLINED_FUNCTION_70_2(v410, v411, v412, v413, v414, v415, v416, v417, v964, v1034, v1102, v1171, v1240, v1309, v408 + 1600, v1445, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  (v409)(v418, 48);
  *&v1510 = 0;
  *&v1525 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1E3C2FC98();
  *&v1519 = v1522;
  sub_1E3C3DE00();
  *&v1514[0] = v1516;
  sub_1E3C3DE00();
  *&v1501 = v1505;
  v419 = sub_1E3C3DE00();
  v427 = OUTLINED_FUNCTION_62_24(v419, v420, v421, v422, v423, v424, v425, v426, v965, v1035, v1103, v1172, v1241, v1310, v1378, v1446, v1486, v1487, v1488, v1489, v1490, v1491, v1497, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v427, v428, v429, v430, v431, v432, v260, v433);
  v434 = v1528;
  v435 = v1529;
  v436 = v1530;
  v437 = v1531;
  v1510 = v1528;
  v1511 = v1529;
  v1512 = v1530;
  v1513 = v1531;
  v438 = OUTLINED_FUNCTION_18();
  v446 = OUTLINED_FUNCTION_33_1(v438, v439, v440, v441, v442, v443, v444, v445, v966, v1036, v1104, v1173, v1242, v1311, v1379, v1447, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  (v409)(v446, 66);

  OUTLINED_FUNCTION_36();
  (*(v447 + 1792))(10);
  OUTLINED_FUNCTION_36();
  (*(v448 + 1984))(5);
  OUTLINED_FUNCTION_36();
  v449 = OUTLINED_FUNCTION_13_12();
  v450(v449);
  OUTLINED_FUNCTION_89_9();
  v451 = sub_1E3952CA4();
  OUTLINED_FUNCTION_28_55(v451, v452, v453, v454);
  v455 = sub_1E3952CA4();
  OUTLINED_FUNCTION_16_93(v455, v456, v457, v458);
  v459 = sub_1E3952CA4();
  OUTLINED_FUNCTION_4_167(v459, v460, v461, v462);
  v1516 = v1532;
  v1517 = v1533;
  v1518 = v1534;
  OUTLINED_FUNCTION_118_8();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_72_20();
  v471 = OUTLINED_FUNCTION_2_165(v463, v464, v465, v466, v467, v468, v469, v470, v967, v1037, v1105, v1174, v1243, v1312, v1380, v1448, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v471, v472, v473, v474, v475, v476, v47, v477);
  v486 = OUTLINED_FUNCTION_83_10(v478, v479, v480, v481, v482, v483, v484, v485, v968, v1038, v1106, v1175, v1244, v1313, v1381, v1449, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v486, v487, 0xE9uLL);
  v488 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_1(v488, v489, v490, v491, v492, v493, v494, v495, v969, v1039, v1107, v1176, v1245, v1314, v1382, v1450, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  OUTLINED_FUNCTION_130_10();
  v409();
  OUTLINED_FUNCTION_108_9();
  LOBYTE(v1512) = v437;
  sub_1E3C2FC98();
  v1522 = v1525;
  v1523 = v1526;
  v1524 = v1527;
  sub_1E3C3DE00();
  v1516 = v1519;
  v1517 = v1520;
  v1518 = v1521;
  OUTLINED_FUNCTION_118_8();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_72_20();
  sub_1E3C3DE00();
  v1497 = v1501;
  v1498 = v1502;
  LOBYTE(v1499) = v1503;
  v496 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_192_1(v496, v497, v498, v499, v500, v501, v502, v503, v970, v1040, v1108, v1177, v1246, v1315, v1383, v1451, v1486, v1487, v1488, v1489, v1490, v1491, v1492);
  v512 = OUTLINED_FUNCTION_71_25(v504, v505, v506, v507, v508, v509, v510, v511, v971, v1041, v1109, v1178, v1247, v1316, v1384, v1452, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v512, &v1522, &v1516, &v1505, &v1497, &v1486, v47, v513);
  v522 = OUTLINED_FUNCTION_83_10(v514, v515, v516, v517, v518, v519, v520, v521, v972, v1042, v1110, v1179, v1248, v1317, v1385, v1453, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v522, v523, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v409();
  v524 = *(v1454 + 208);
  *&v1510 = 0;
  BYTE8(v1510) = 1;
  *&v1525 = 0x4069000000000000;
  BYTE8(v1525) = 0;
  OUTLINED_FUNCTION_119_6();
  OUTLINED_FUNCTION_69_20(v525);
  OUTLINED_FUNCTION_78_15(0x4079C00000000000uLL);
  OUTLINED_FUNCTION_86_8(0x4070000000000000uLL);
  v526 = MEMORY[0x1E69E7DE0];
  v527 = sub_1E3C3DE00();
  BYTE8(v1505) = BYTE8(v1514[0]);
  v535 = OUTLINED_FUNCTION_2_165(v527, v528, v529, v530, v531, v532, v533, v534, v973, v1043, v1111, v1180, v1249, v1318, v1386, v1454, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, *&v1514[0], *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v535, v536, v537, v538, v539, v540, v526, v541);
  v550 = OUTLINED_FUNCTION_83_10(v542, v543, v544, v545, v546, v547, v548, v549, v974, v1044, v1112, v1181, v1250, v1319, v1387, v1455, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v550, v551, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_0_44();
  v553 = v552 + 1600;
  v554 = *(v552 + 1600);
  v563 = OUTLINED_FUNCTION_70_2(v555, v556, v557, v558, v559, v560, v561, v562, v975, v1045, v1113, v1182, v1251, v1320, v1388, v1456, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  (v554)(v563, 2);
  v564 = OUTLINED_FUNCTION_89_9();
  v565 = sub_1E3952C10(v564, 8.0);
  OUTLINED_FUNCTION_28_55(v565, v566, v567, v568);
  v569 = sub_1E3952C10(12.0, 8.0);
  OUTLINED_FUNCTION_16_93(v569, v570, v571, v572);
  v573 = sub_1E3952C10(20.0, 20.0);
  OUTLINED_FUNCTION_4_167(v573, v574, v575, v576);
  v577 = sub_1E3952C10(12.0, 12.0);
  OUTLINED_FUNCTION_9_113(v577, v578, v579, v580);
  memset(v1514, 0, sizeof(v1514));
  v1515 = v526;
  v589 = OUTLINED_FUNCTION_13_114(v581, v582, v583, v584, v585, v586, v587, v588, v976, v1046, v1114, v1183, v1252, v554, v553, v1457, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v589, v590, v591, &v1519, &v1516, v1514, v47, v592);
  v601 = OUTLINED_FUNCTION_83_10(v593, v594, v595, v596, v597, v598, v599, v600, v977, v47, v1115, v1184, v1253, v1321, v1389, v1458, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v601, v602, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v603 = v524;
  v554();
  v604 = objc_opt_self();
  *&v1510 = [v604 whiteColor];
  v605 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  OUTLINED_FUNCTION_10_104();
  v606 = sub_1E4206F24();
  OUTLINED_FUNCTION_10_104();
  v607 = sub_1E4206F24();
  v608 = sub_1E3E5F2F8(v606, v607);

  *&v1525 = v608;
  sub_1E3C2FC98();
  *&v1519 = v1522;
  sub_1E3C3DE00();
  *&v1514[0] = v1516;
  sub_1E3C3DE00();
  *&v1501 = v1505;
  v609 = sub_1E3C3DE00();
  v617 = OUTLINED_FUNCTION_62_24(v609, v610, v611, v612, v613, v614, v615, v616, v978, v1047, v1116, v1185, v1254, v1322, v1390, v1459, v1486, v1487, v1488, v1489, v1490, v1491, v1497, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v617, v618, v619, v620, v621, v622, v605, v623);
  v624 = v1528;
  v625 = v1529;
  v626 = v1530;
  v627 = v1531;
  v1510 = v1528;
  v1511 = v1529;
  v1512 = v1530;
  v1513 = v1531;
  v628 = OUTLINED_FUNCTION_18();
  v636 = OUTLINED_FUNCTION_33_1(v628, v629, v630, v631, v632, v633, v634, v635, v979, v1048, v1117, v1186, v1255, v1323, v1391, v1460, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  v1324(v636, 24);

  v1325 = (*v603 + 2048);
  v1392 = *v1325;
  (*v1325)();
  *&v1510 = OUTLINED_FUNCTION_182_3();
  *&v1525 = [v604 blackColor];
  *&v1522 = OUTLINED_FUNCTION_162_6();
  *&v1519 = OUTLINED_FUNCTION_182_3();
  v637 = OUTLINED_FUNCTION_162_6();
  OUTLINED_FUNCTION_147_5(v637);
  OUTLINED_FUNCTION_165_6();
  v646 = OUTLINED_FUNCTION_2_165(v638, v639, v640, v641, v642, v643, v644, v645, v980, v1049, v1118, v1187, v1256, v1325, v1392, v1461, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v646, v647, v648, v649, v650, v651, v605, v652);
  v653 = v1528;
  v654 = v1529;
  v655 = v1530;
  v656 = v1531;
  v1510 = v1528;
  v1511 = v1529;
  v1512 = v1530;
  v1513 = v1531;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v665 = OUTLINED_FUNCTION_70_2(v657, v658, v659, v660, v661, v662, v663, v664, v981, v1050, v1119, v1188, v1257, v1326, v1393, v1462, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  v666(v665, 21);

  v1394();
  *&v1510 = OUTLINED_FUNCTION_162_6();
  *&v1525 = OUTLINED_FUNCTION_182_3();
  *&v1522 = OUTLINED_FUNCTION_182_3();
  *&v1519 = OUTLINED_FUNCTION_162_6();
  v667 = OUTLINED_FUNCTION_162_6();
  OUTLINED_FUNCTION_147_5(v667);
  OUTLINED_FUNCTION_165_6();
  v676 = OUTLINED_FUNCTION_2_165(v668, v669, v670, v671, v672, v673, v674, v675, v982, v1051, v1120, v1189, v1258, v1327, v1394, v1463, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v676, v677, v678, v679, v680, v681, v605, v682);
  v683 = v1528;
  v684 = v1529;
  v685 = v1530;
  v686 = v1531;
  v1510 = v1528;
  v1511 = v1529;
  v1512 = v1530;
  v1513 = v1531;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v695 = OUTLINED_FUNCTION_70_2(v687, v688, v689, v690, v691, v692, v693, v694, v983, v1052, v1121, v1190, v1259, v1328, v1395, v1464, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  v696(v695, 29);

  v984 = *(*v603 + 2096);
  v984();
  *&v1510 = [v604 whiteColor];
  *&v1525 = [v604 blackColor];
  *&v1522 = [v604 blackColor];
  *&v1519 = [v604 whiteColor];
  OUTLINED_FUNCTION_147_5([v604 blackColor]);
  OUTLINED_FUNCTION_165_6();
  v705 = OUTLINED_FUNCTION_2_165(v697, v698, v699, v700, v701, v702, v703, v704, v984, v1053, v1122, v1191, v603, v1329, v1396, v1465, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v705, v706, v707, v708, v709, v710, v605, v711);
  v712 = v1528;
  v713 = v1529;
  v714 = v1530;
  v715 = v1531;
  v1510 = v1528;
  v1511 = v1529;
  v1512 = v1530;
  v1513 = v1531;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v724 = OUTLINED_FUNCTION_70_2(v716, v717, v718, v719, v720, v721, v722, v723, v985, v1054, v1123, v1192, v1260, v1330, v1397, v1466, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  v725(v724, 21);

  v726 = v986;
  v986();
  *&v1510 = OUTLINED_FUNCTION_162_6();
  *&v1525 = OUTLINED_FUNCTION_182_3();
  *&v1522 = OUTLINED_FUNCTION_182_3();
  *&v1519 = OUTLINED_FUNCTION_162_6();
  v727 = OUTLINED_FUNCTION_162_6();
  OUTLINED_FUNCTION_147_5(v727);
  OUTLINED_FUNCTION_165_6();
  v736 = OUTLINED_FUNCTION_2_165(v728, v729, v730, v731, v732, v733, v734, v735, v986, v1055, v1124, v1193, v1261, v1331, v1398, v1467, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v736, v737, v738, v739, v740, v741, v605, v742);
  v743 = v1528;
  v744 = v1529;
  v745 = v1530;
  v746 = v1531;
  v1510 = v1528;
  v1511 = v1529;
  v1512 = v1530;
  v1513 = v1531;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v755 = OUTLINED_FUNCTION_70_2(v747, v748, v749, v750, v751, v752, v753, v754, v987, v1056, v1125, v1194, v1262, v1332, v1399, v1468, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  v756(v755, 29);

  v726();
  *&v1510 = 0;
  BYTE8(v1510) = 1;
  OUTLINED_FUNCTION_131_9();
  v757 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_49_39();
  v758 = sub_1E3C3DE00();
  BYTE8(v1501) = BYTE8(v1505);
  v766 = OUTLINED_FUNCTION_13_114(v758, v759, v760, v761, v762, v763, v764, v765, v988, v1057, v1126, v1195, v1263, v1333, v1400, v1469, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1505, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  OUTLINED_FUNCTION_214_0(v766, v767, v768, v769, v989, v1058, v1127, v1196, v1264, v1334, v1401, v1470, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501);
  v778 = OUTLINED_FUNCTION_83_10(v770, v771, v772, v773, v774, v775, v776, v777, v990, v1059, v1128, v1197, v1265, v1335, v1402, v1471, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v778, v779, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v788 = OUTLINED_FUNCTION_70_2(v780, v781, v782, v783, v784, v785, v786, v787, v991, v1060, v1129, v1198, v1266, v1336, v1403, v1472, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  v789(v788, 2);

  (v726)(v790);
  *&v1510 = 0;
  BYTE8(v1510) = 1;
  OUTLINED_FUNCTION_131_9();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_49_39();
  v791 = sub_1E3C3DE00();
  BYTE8(v1501) = BYTE8(v1505);
  v799 = OUTLINED_FUNCTION_13_114(v791, v792, v793, v794, v795, v796, v797, v798, v992, v1061, v1130, v1199, v1267, v1337, v1404, v1473, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1505, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  OUTLINED_FUNCTION_214_0(v799, v800, v801, v802, v993, v1062, v1131, v1200, v1268, v1338, v1405, v1474, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501);
  v811 = OUTLINED_FUNCTION_83_10(v803, v804, v805, v806, v807, v808, v809, v810, v994, v1063, v1132, v1201, v1269, v1339, v1406, v1475, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v811, v812, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v821 = OUTLINED_FUNCTION_70_2(v813, v814, v815, v816, v817, v818, v819, v820, v995, v1064, v1133, v1202, v1270, v1340, v1407, v1476, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  v822(v821, 6);

  (v726)(v823);
  OUTLINED_FUNCTION_26_0();
  (*(v824 + 160))(&v1532);

  v1408(v825);
  OUTLINED_FUNCTION_26_0();
  (*(v826 + 160))(&v1532);

  OUTLINED_FUNCTION_34_6();
  v827 = OUTLINED_FUNCTION_10_7();
  v828(v827);
  *&v1510 = 0;
  BYTE8(v1510) = 1;
  *&v1525 = 0x4049000000000000;
  BYTE8(v1525) = 0;
  *&v1522 = 0x404C000000000000;
  BYTE8(v1522) = 0;
  *&v1519 = 0x4059800000000000;
  BYTE8(v1519) = 0;
  v829 = OUTLINED_FUNCTION_211();
  BYTE8(v1505) = BYTE8(v1514[0]);
  v837 = OUTLINED_FUNCTION_2_165(v829, v830, v831, v832, v833, v834, v835, v836, v996, v1065, v1134, v1203, v1271, v1341, v1408, v1477, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, *&v1514[0], *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v837, v838, v839, v840, v841, v842, v757, v843);
  v852 = OUTLINED_FUNCTION_83_10(v844, v845, v846, v847, v848, v849, v850, v851, v997, v1066, v1135, v1204, v1272, v1342, v1409, v1478, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v852, v853, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v855 = *(v854 + 1600);
  v864 = OUTLINED_FUNCTION_70_2(v856, v857, v858, v859, v860, v861, v862, v863, v998, v1067, v1136, v1205, v1273, v1343, v1410, v1479, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  (v855)(v864, 2);
  *&v1510 = 0;
  BYTE8(v1510) = 1;
  *&v1525 = 0x4049000000000000;
  BYTE8(v1525) = 0;
  *&v1522 = 0x404C000000000000;
  BYTE8(v1522) = 0;
  *&v1519 = 0x4059800000000000;
  BYTE8(v1519) = 0;
  v865 = OUTLINED_FUNCTION_211();
  BYTE8(v1505) = BYTE8(v1514[0]);
  v873 = OUTLINED_FUNCTION_2_165(v865, v866, v867, v868, v869, v870, v871, v872, v999, v1068, v1137, v1206, v1274, v1344, v1411, v1480, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, *&v1514[0], *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v873, v874, v875, v876, v877, v878, v757, v879);
  v888 = OUTLINED_FUNCTION_83_10(v880, v881, v882, v883, v884, v885, v886, v887, v1000, v1069, v1138, v1207, v1275, v1345, v1412, v1481, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v888, v889, 0x59uLL);
  v890 = OUTLINED_FUNCTION_18();
  v898 = OUTLINED_FUNCTION_33_1(v890, v891, v892, v893, v894, v895, v896, v897, v1001, v1070, v1139, v1208, v1276, v1346, v1413, v1482, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  (v855)(v898, 6);
  OUTLINED_FUNCTION_108_9();
  LOBYTE(v1512) = 1;
  v1525 = 0uLL;
  v1526 = xmmword_1E42A0440;
  v1527 = 0;
  v1522 = 0uLL;
  v1523 = xmmword_1E42CA3E0;
  v1524 = 0;
  __asm { FMOV            V0.2D, #20.0 }

  v1519 = v1140;
  v1520 = _Q0;
  v1521 = 0;
  v1516 = 0uLL;
  v1517 = xmmword_1E42B2A00;
  v1518 = 0;
  v900 = v1071;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_72_20();
  v909 = OUTLINED_FUNCTION_2_165(v901, v902, v903, v904, v905, v906, v907, v908, v1002, v1071, v1140, *(&v1140 + 1), v1277, v1347, v1414, v1483, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  sub_1E3C2FCB8(v909, v910, v911, v912, v913, v914, v900, v915);
  v924 = OUTLINED_FUNCTION_83_10(v916, v917, v918, v919, v920, v921, v922, v923, v1003, v1072, v1141, v1209, v1278, v1348, v1415, v1484, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  memcpy(v924, v925, 0xE9uLL);
  v926 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_1(v926, v927, v928, v929, v930, v931, v932, v933, v1004, v1073, v1142, v1210, v1279, v1349, v1416, v1485, v1486, v1487, v1488, v1489, v1490, v1491, v1492, *(&v1492 + 1), v1493, v1494, v1495, v1496, v1497, *(&v1497 + 1), v1498, *(&v1498 + 1), v1499, v1500, v1501, *(&v1501 + 1), v1502, *(&v1502 + 1), v1503, v1504, v1505, *(&v1505 + 1), v1506, v1507, v1508, v1509, v1510);
  OUTLINED_FUNCTION_130_10();
  return v855();
}

void sub_1E3CD5D78()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  (*(v2 + 512))(18);
  OUTLINED_FUNCTION_171_3();
  OUTLINED_FUNCTION_169_2(0x4077500000000000uLL);
  type metadata accessor for UIEdgeInsets();
  v4 = v3;
  sub_1E3C2FC98();
  __src[0] = *v571;
  __src[1] = *v572;
  LOBYTE(__src[2]) = v573;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_143_6();
  OUTLINED_FUNCTION_170_3();
  sub_1E3C3DE00();
  v659 = v662;
  v660 = v663;
  v661 = v664;
  v5 = OUTLINED_FUNCTION_82_13();
  sub_1E3C2FCB8(v5, __src, v622, v623, v665, &v659, v4, v6);
  v7 = OUTLINED_FUNCTION_121_8();
  memcpy(v7, v8, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v10 = *(v9 + 1600);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_130_10();
  v10();
  v13 = TVAppFeature.isEnabled.getter(20, v11, v12);
  TVAppFeature.isEnabled.getter(20, v14, v15);
  OUTLINED_FUNCTION_171_3();
  v17 = 0x4022000000000000;
  v18 = 0x4032000000000000;
  if ((v13 & 1) == 0)
  {
    v18 = 0x4022000000000000;
  }

  *&v623[8] = 0;
  *v623 = 0;
  *&v623[16] = v18;
  *&v623[24] = 0;
  v623[32] = 0;
  if (v16)
  {
    v17 = 0x4034000000000000;
  }

  v571[0] = 16;
  v571[1] = 0;
  v572[0] = v17;
  v572[1] = 0;
  LOBYTE(v573) = 0;
  __src[0] = 0uLL;
  __src[1] = xmmword_1E42CA3F0;
  LOBYTE(__src[2]) = 0;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_143_6();
  OUTLINED_FUNCTION_170_3();
  v19 = OUTLINED_FUNCTION_18_82();
  sub_1E3C2FCB8(v19, v20, v21, v622, v665, __src, v4, v22);
  v23 = OUTLINED_FUNCTION_121_8();
  memcpy(v23, v24, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v10();
  v656[0] = 14;
  v623[0] = 3;
  LOBYTE(__src[0]) = 16;
  LOBYTE(v641[0]) = 16;
  LOBYTE(v622[0]) = 16;
  v25 = OUTLINED_FUNCTION_18_82();
  sub_1E3C2FCB8(v25, v26, v27, __src, v641, v622, &unk_1F5D995F0, v28);
  OUTLINED_FUNCTION_29_63();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_40();
  OUTLINED_FUNCTION_198();
  v10();
  OUTLINED_FUNCTION_152_7(4);
  LOBYTE(__src[0]) = v29;
  LOBYTE(v641[0]) = v29;
  sub_1E3C3DE00();
  LOBYTE(v615[0]) = v622[0];
  v30 = OUTLINED_FUNCTION_18_82();
  sub_1E3C2FCB8(v30, v31, v32, __src, v641, v615, &unk_1F5D99680, v33);
  OUTLINED_FUNCTION_29_63();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_40();
  OUTLINED_FUNCTION_198();
  v10();
  v653 = 0x4075400000000000;
  LOBYTE(v654) = 0;
  v651 = 0;
  LOBYTE(v652) = 1;
  v649 = 0x4071800000000000;
  LOBYTE(v650) = 0;
  v36 = TVAppFeature.isEnabled.getter(20, v34, v35);
  v39 = 0x407F400000000000;
  if (v36)
  {
    v39 = 0x4081D00000000000;
  }

  v647 = v39;
  LOBYTE(v648) = 0;
  v645 = 0x4072C00000000000;
  LOBYTE(v646) = 0;
  v40 = TVAppFeature.isEnabled.getter(20, v37, v38);
  v41 = 0x4079700000000000;
  if ((v40 & 1) == 0)
  {
    v41 = 0x4077200000000000;
  }

  *&__dst[0] = v41;
  BYTE8(__dst[0]) = 0;
  v42 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FCB8(&v653, &v651, &v649, &v647, &v645, __dst, MEMORY[0x1E69E7DE0], __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_43_44();
  v10();
  *v656 = 0;
  v656[8] = 1;
  *v623 = 0x4072C00000000000;
  v623[8] = 0;
  OUTLINED_FUNCTION_164_4();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_117_9();
  v641[0] = v43;
  LOBYTE(v641[1]) = v44;
  OUTLINED_FUNCTION_194_1();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_149_5();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_209();
  sub_1E3C3DE00();
  v642[0] = v659;
  LOBYTE(v642[1]) = BYTE8(v659);
  v45 = OUTLINED_FUNCTION_82_13();
  sub_1E3C2FCB8(v45, v641, v615, &v662, v623, v642, v42, v46);
  v47 = OUTLINED_FUNCTION_121_8();
  memcpy(v47, v48, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_129_8();
  v10();
  v657 = 0u;
  *v656 = 0u;
  LOBYTE(v658) = 1;
  OUTLINED_FUNCTION_169_2(0x4073100000000000uLL);
  sub_1E3C2FC98();
  *v641 = *v571;
  *&v641[2] = *v572;
  LOBYTE(v641[4]) = v573;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_113_8();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_125_7();
  sub_1E3C3DE00();
  *v642 = v659;
  *v643 = v660;
  LOBYTE(v644) = v661;
  v49 = OUTLINED_FUNCTION_82_13();
  sub_1E3C2FCB8(v49, v641, v615, v623, &v662, v642, v4, v50);
  v51 = OUTLINED_FUNCTION_121_8();
  memcpy(v51, v52, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_71();
  v53();
  v54 = v1[16];
  *v656 = 3;
  v656[8] = 0;
  *v623 = 2;
  v623[8] = 0;
  v571[0] = 2;
  LOBYTE(v571[1]) = 0;
  v641[0] = 2;
  LOBYTE(v641[1]) = 0;
  v55 = MEMORY[0x1E69E6810];
  OUTLINED_FUNCTION_194_1();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_149_5();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_209();
  v56 = OUTLINED_FUNCTION_18_82();
  sub_1E3C2FCB8(v56, v57, v58, v615, v641, &v662, v55, v59);
  v60 = OUTLINED_FUNCTION_121_8();
  memcpy(v60, v61, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v63 = *(v62 + 1600);
  v64 = OUTLINED_FUNCTION_81_16();
  (v63)(v64, 62);
  OUTLINED_FUNCTION_152_7(7);
  sub_1E3C3DE00();
  LOBYTE(v622[0]) = v641[0];
  OUTLINED_FUNCTION_103_9();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_109_6();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_18_82();
  OUTLINED_FUNCTION_153_5();
  sub_1E3C2FCB8(v65, v66, v67, v68, v69, v70, &unk_1F5D54CA8, v71);
  OUTLINED_FUNCTION_146_6();
  v72 = OUTLINED_FUNCTION_44_40();
  (v63)(v72, 59);
  OUTLINED_FUNCTION_36();
  (*(v73 + 2008))(1);
  v74 = sub_1E3E5FD88();
  OUTLINED_FUNCTION_81_12();
  v75 = *(*v54 + 680);
  v76 = &unk_1F5D54CA8;
  v75(&unk_1F5D54CA8);
  sub_1E3CD8684();
  OUTLINED_FUNCTION_36();
  (*(v77 + 608))();
  OUTLINED_FUNCTION_152_7(27);
  LOBYTE(v641[0]) = 3;
  LOBYTE(v622[0]) = 6;
  OUTLINED_FUNCTION_103_9();
  sub_1E3C3DE00();
  LOBYTE(v665[0]) = v615[0];
  v78 = OUTLINED_FUNCTION_18_82();
  OUTLINED_FUNCTION_213(v78, v79, v80, v81);
  OUTLINED_FUNCTION_146_6();
  OUTLINED_FUNCTION_44_40();
  OUTLINED_FUNCTION_132_8();
  v63();
  if (TVAppFeature.isEnabled.getter(20, v82, v83))
  {
    OUTLINED_FUNCTION_8();
    v86 = OUTLINED_FUNCTION_158_7();
    v87(v86);
    OUTLINED_FUNCTION_36();
    (*(v88 + 1792))(10);
  }

  if (TVAppFeature.isEnabled.getter(20, v84, v85))
  {
    v89 = v1[17];
    OUTLINED_FUNCTION_8();
    v90 = OUTLINED_FUNCTION_8_5();
    v91(v90);
    v656[0] = 7;
    v623[0] = 1;
    LOBYTE(v571[0]) = 1;
    sub_1E3C3DE00();
    LOBYTE(v622[0]) = v641[0];
    OUTLINED_FUNCTION_103_9();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_109_6();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_18_82();
    OUTLINED_FUNCTION_153_5();
    sub_1E3C2FCB8(v92, v93, v94, v95, v96, v97, &unk_1F5D54CA8, v98);
    OUTLINED_FUNCTION_29_63();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v100 = *(v99 + 1600);
    v101 = OUTLINED_FUNCTION_81_16();
    (v100)(v101, 59);
    OUTLINED_FUNCTION_36();
    (*(v102 + 2008))(1);
    v103 = *v74;
    v104 = *(*v89 + 680);
    v105 = *v74;
    v104(v103);
    sub_1E3CD8684();
    OUTLINED_FUNCTION_36();
    (*(v106 + 608))();
    v656[0] = 27;
    v623[0] = 2;
    LOBYTE(v571[0]) = 2;
    LOBYTE(v641[0]) = 3;
    LOBYTE(v622[0]) = 6;
    OUTLINED_FUNCTION_103_9();
    sub_1E3C3DE00();
    LOBYTE(v665[0]) = v615[0];
    v107 = OUTLINED_FUNCTION_18_82();
    OUTLINED_FUNCTION_213(v107, v108, v109, v110);
    OUTLINED_FUNCTION_29_63();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_44_40();
    OUTLINED_FUNCTION_132_8();
    v100();
    OUTLINED_FUNCTION_36();
    (*(v111 + 2128))(0x3FE947AE147AE148, 0);
    if (TVAppFeature.isEnabled.getter(20, v112, v113))
    {
      OUTLINED_FUNCTION_8();
      v114 = OUTLINED_FUNCTION_158_7();
      v115(v114);
    }
  }

  v116 = v1[18];
  *v656 = 2;
  v656[8] = 0;
  v117 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  v571[0] = *v623;
  LOBYTE(v571[1]) = v623[8];
  sub_1E3C3DE00();
  v622[0] = v641[0];
  LOBYTE(v622[1]) = v641[1];
  OUTLINED_FUNCTION_103_9();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_187_2();
  sub_1E3C3DE00();
  *&v659 = v662;
  BYTE8(v659) = BYTE8(v662);
  sub_1E3C3DE00();
  v631[0] = v642[0];
  LOBYTE(v631[1]) = v642[1];
  v118 = OUTLINED_FUNCTION_82_13();
  sub_1E3C2FCB8(v118, v571, v622, v665, &v659, v631, v117, v119);
  v120 = OUTLINED_FUNCTION_121_8();
  memcpy(v120, v121, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v123 = *(v122 + 1600);
  v124 = OUTLINED_FUNCTION_81_16();
  v123(v124, 62);
  v639 = 0;
  LOBYTE(v640) = 1;
  v637 = 0x3FE6666666666666;
  LOBYTE(v638) = 0;
  v127 = TVAppFeature.isEnabled.getter(20, v125, v126);
  v128 = 0x3FEB851EB851EB85;
  if ((v127 & 1) == 0)
  {
    v128 = 0;
  }

  *&__dst[0] = v128;
  BYTE8(__dst[0]) = (v127 & 1) == 0;
  v129 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  *v623 = *v656;
  v623[8] = v656[8];
  OUTLINED_FUNCTION_164_4();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_117_9();
  v622[0] = v130;
  LOBYTE(v622[1]) = v131;
  OUTLINED_FUNCTION_103_9();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_187_2();
  sub_1E3C2FCB8(&v639, v623, v622, &v637, v665, __dst, v129, v641);
  memcpy(__dst, v641, 0x59uLL);
  v132 = OUTLINED_FUNCTION_18();
  (v123)(__dst, 65, v132 & 1, v129);
  v656[0] = 7;
  v623[0] = 1;
  LOBYTE(v571[0]) = 1;
  OUTLINED_FUNCTION_194_1();
  sub_1E3C3DE00();
  LOBYTE(v615[0]) = v622[0];
  sub_1E3C3DE00();
  LOBYTE(v662) = v665[0];
  sub_1E3C3DE00();
  LOBYTE(v642[0]) = v659;
  v133 = OUTLINED_FUNCTION_18_82();
  sub_1E3C2FCB8(v133, v134, v135, v615, &v662, v642, &unk_1F5D54CA8, v136);
  OUTLINED_FUNCTION_29_63();
  OUTLINED_FUNCTION_18();
  v137 = OUTLINED_FUNCTION_44_40();
  v123(v137, 59);
  OUTLINED_FUNCTION_36();
  (*(v138 + 2008))(1);
  v547 = v74;
  v139 = *v74;
  v140 = *(*v116 + 680);
  v141 = v139;
  v140(v139);
  sub_1E3CD8684();
  OUTLINED_FUNCTION_36();
  (*(v142 + 608))();
  v634 = 1806;
  if (TVAppFeature.isEnabled.getter(20, v143, v144))
  {
    v145 = 2;
  }

  else
  {
    v145 = 7;
  }

  LOBYTE(__dst[0]) = v145;
  v656[0] = 2;
  sub_1E3C2FC98();
  LOBYTE(v571[0]) = v623[0];
  OUTLINED_FUNCTION_194_1();
  sub_1E3C3DE00();
  LOBYTE(v615[0]) = v622[0];
  sub_1E3C2FCB8(&v634 + 1, v571, v615, &v634, __dst, v656, &qword_1F5D549D8, &v635);
  LODWORD(__dst[0]) = v635;
  WORD2(__dst[0]) = v636;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_79_16();
  (v123)();
  v656[0] = 11;
  v623[0] = 7;
  OUTLINED_FUNCTION_164_4();
  sub_1E3C2FC98();
  LOBYTE(v622[0]) = v571[0];
  OUTLINED_FUNCTION_103_9();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_109_6();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_204();
  sub_1E3C3DE00();
  LOBYTE(v631[0]) = v642[0];
  v146 = OUTLINED_FUNCTION_82_13();
  sub_1E3C2FCB8(v146, v622, v665, v623, &v659, v631, &qword_1F5D54AF8, v147);
  OUTLINED_FUNCTION_29_63();
  OUTLINED_FUNCTION_18();
  v148 = OUTLINED_FUNCTION_44_40();
  v123(v148, 54);
  OUTLINED_FUNCTION_36();
  (*(v149 + 1720))(7);
  sub_1E3952C88();
  OUTLINED_FUNCTION_167_5(v150, v151, v152, v153);
  sub_1E3952C88();
  OUTLINED_FUNCTION_54_28(v154, v155, v156, v157);
  sub_1E3952C88();
  OUTLINED_FUNCTION_106_0();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_113_8();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_125_7();
  sub_1E3C3DE00();
  *v642 = v659;
  *v643 = v660;
  LOBYTE(v644) = v661;
  v158 = OUTLINED_FUNCTION_82_13();
  sub_1E3C2FCB8(v158, v615, &v662, v623, v642, v571, v4, v159);
  v160 = OUTLINED_FUNCTION_121_8();
  memcpy(v160, v161, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  (v123)();
  if (TVAppFeature.isEnabled.getter(20, v162, v163))
  {
    OUTLINED_FUNCTION_8();
    v164 = OUTLINED_FUNCTION_158_7();
    v165(v164);
  }

  v166 = v1[19];
  v167 = OUTLINED_FUNCTION_133();
  v168(v167);
  *v656 = *v547;
  v169 = *v656;
  TVAppFeature.isEnabled.getter(20, v170, v171);
  v172 = OUTLINED_FUNCTION_163_5();
  if (v173)
  {
    v172 = sub_1E3E5FDEC();
  }

  *v623 = *v172;
  TVAppFeature.isEnabled.getter(20, v174, v175);
  v176 = OUTLINED_FUNCTION_163_5();
  if (v177)
  {
    v176 = sub_1E3E5FDEC();
  }

  v571[0] = *v176;
  TVAppFeature.isEnabled.getter(20, v178, v179);
  v180 = OUTLINED_FUNCTION_163_5();
  if (v181)
  {
    v180 = sub_1E3E5FDEC();
  }

  v622[0] = *v180;
  TVAppFeature.isEnabled.getter(20, v182, v183);
  v184 = OUTLINED_FUNCTION_163_5();
  if (v185)
  {
    v184 = sub_1E3E5FDEC();
  }

  v553 = v1;
  v615[0] = *v184;
  TVAppFeature.isEnabled.getter(20, v186, v187);
  v188 = OUTLINED_FUNCTION_163_5();
  if (v189)
  {
    v188 = sub_1E3E5FDEC();
  }

  *&v665[0] = *v188;
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  v190 = OUTLINED_FUNCTION_18_82();
  OUTLINED_FUNCTION_210_0(v190, v191, v192, v193);
  v194 = __dst[0];
  v195 = __dst[1];
  v196 = __dst[2];
  *v656 = __dst[0];
  v657 = __dst[1];
  v658 = __dst[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_0_44();
  v198 = *(v197 + 1600);
  OUTLINED_FUNCTION_81_16();
  OUTLINED_FUNCTION_172();
  v198();

  OUTLINED_FUNCTION_0_44();
  (*(v199 + 2008))(1);
  sub_1E3CD8684();
  OUTLINED_FUNCTION_0_44();
  (*(v200 + 608))();
  v656[0] = 27;
  TVAppFeature.isEnabled.getter(20, v201, v202);
  v623[0] = 17;
  if (TVAppFeature.isEnabled.getter(20, v203, v204))
  {
    v205 = 14;
  }

  else
  {
    v205 = 17;
  }

  LOBYTE(v571[0]) = v205;
  LOBYTE(v622[0]) = 21;
  LOBYTE(v615[0]) = 15;
  LOBYTE(v665[0]) = 15;
  v206 = OUTLINED_FUNCTION_18_82();
  OUTLINED_FUNCTION_210_0(v206, v207, v208, v209);
  OUTLINED_FUNCTION_29_63();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_40();
  OUTLINED_FUNCTION_172();
  v198();
  OUTLINED_FUNCTION_0_44();
  (*(v210 + 256))(0x4076800000000000, 0);
  OUTLINED_FUNCTION_0_44();
  (*(v211 + 1792))(4);
  if (TVAppFeature.isEnabled.getter(10, v212, v213))
  {
    v216 = sub_1E3C8BE74();
    sub_1E3DEFBE8(1, v216);
  }

  else if (TVAppFeature.isEnabled.getter(20, v214, v215))
  {
    (*(*v166 + 2272))(1);
  }

  (*(*v166 + 1720))(7);
  v656[0] = 7;
  v623[0] = 1;
  LOBYTE(v571[0]) = 1;
  LOBYTE(v622[0]) = 5;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_109_6();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_18_82();
  OUTLINED_FUNCTION_153_5();
  sub_1E3C2FCB8(v217, v218, v219, v220, v221, v222, &unk_1F5D54CA8, v223);
  OUTLINED_FUNCTION_29_63();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_40();
  OUTLINED_FUNCTION_172();
  v198();
  type metadata accessor for RelationalLayout();
  v224 = sub_1E4177030();
  TVAppFeature.isEnabled.getter(20, v225, v226);
  sub_1E3952C88();
  nullsub_1();
  sub_1E41776B0(23, v227, v228, v229, v230);
  OUTLINED_FUNCTION_0_44();
  v232 = *(v231 + 1424);

  v541 = v224;
  v232(v233);
  memset(v665, 0, sizeof(v665));
  v666 = 1;
  sub_1E3952C58();
  *&v662 = v234;
  *(&v662 + 1) = v235;
  *&v663 = v236;
  *(&v663 + 1) = v237;
  v664 = 0;
  TVAppFeature.isEnabled.getter(20, v238, v239);
  sub_1E3952C58();
  *&v659 = v240;
  *(&v659 + 1) = v241;
  *&v660 = v242;
  *(&v660 + 1) = v243;
  v661 = 0;
  TVAppFeature.isEnabled.getter(20, v244, v245);
  sub_1E3952C88();
  v642[0] = v246;
  v642[1] = v247;
  v643[0] = v248;
  v643[1] = v249;
  LOBYTE(v644) = 0;
  TVAppFeature.isEnabled.getter(20, v250, v251);
  sub_1E3952C58();
  OUTLINED_FUNCTION_167_5(v252, v253, v254, v255);
  sub_1E3952C88();
  OUTLINED_FUNCTION_54_28(v256, v257, v258, v259);
  sub_1E3C2FCB8(v665, &v662, &v659, v642, v656, v623, v4, __dst);
  v260 = OUTLINED_FUNCTION_121_8();
  memcpy(v260, v261, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v198();
  if (TVAppFeature.isEnabled.getter(20, v262, v263))
  {
    v264 = v1[21];
    OUTLINED_FUNCTION_8();
    v265 = OUTLINED_FUNCTION_8_5();
    v266(v265);
    v267 = *sub_1E3E5FDEC();
    v268 = *(*v264 + 680);
    v269 = v267;
    v268(v267);
    OUTLINED_FUNCTION_36();
    (*(v270 + 2008))(1);
    sub_1E3CD8684();
    OUTLINED_FUNCTION_36();
    (*(v271 + 608))();
    OUTLINED_FUNCTION_186();
    LOBYTE(v622[0]) = v272;
    LOBYTE(v615[0]) = 21;
    LOBYTE(v631[0]) = 3;
    v630[0] = 15;
    OUTLINED_FUNCTION_22_69();
    OUTLINED_FUNCTION_148_7();
    sub_1E3C2FCB8(v273, v274, v275, v276, v277, v278, &qword_1F5D549D8, v279);
    OUTLINED_FUNCTION_38_39();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v281 = *(v280 + 1600);
    OUTLINED_FUNCTION_79_16();
    v281();
    OUTLINED_FUNCTION_36();
    (*(v282 + 1792))(5);
    OUTLINED_FUNCTION_36();
    (*(v283 + 2272))(1);
    OUTLINED_FUNCTION_36();
    (*(v284 + 1720))(7);
    v623[0] = 7;
    LOBYTE(v571[0]) = 1;
    LOBYTE(v622[0]) = 1;
    LOBYTE(v615[0]) = 5;
    sub_1E3C3DE00();
    v630[0] = v631[0];
    OUTLINED_FUNCTION_207();
    sub_1E3C3DE00();
    LOBYTE(v624[0]) = v627[0];
    v285 = OUTLINED_FUNCTION_22_69();
    sub_1E3C2FCB8(v285, v286, v287, v288, v630, v624, &unk_1F5D54CA8, v289);
    OUTLINED_FUNCTION_38_39();
    OUTLINED_FUNCTION_18();
    v290 = OUTLINED_FUNCTION_51_31();
    (v281)(v290, 59);
    memset(v623, 0, 32);
    v623[32] = 1;
    sub_1E3952C58();
    OUTLINED_FUNCTION_106_0();
    sub_1E3952C58();
    OUTLINED_FUNCTION_174_0(v291, v292, v293, v294);
    sub_1E3952C88();
    OUTLINED_FUNCTION_4_167(v295, v296, v297, v298);
    sub_1E3952C58();
    OUTLINED_FUNCTION_160_4(v299, v300, v301, v302);
    OUTLINED_FUNCTION_90_12(v303, v304, v305, v306);
    OUTLINED_FUNCTION_22_69();
    OUTLINED_FUNCTION_148_7();
    sub_1E3C2FCB8(v307, v308, v309, v310, v311, v312, v4, v313);
    OUTLINED_FUNCTION_183_3();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_24_71();
    v281();
    v314 = v1[20];
    OUTLINED_FUNCTION_36();
    (*(v315 + 2056))(1, 0);
    v316 = *v547;
    v317 = *(*v314 + 680);
    v318 = *v547;
    v317(v316);
    OUTLINED_FUNCTION_36();
    (*(v319 + 2008))(1);
    OUTLINED_FUNCTION_186();
    LOBYTE(v622[0]) = 14;
    LOBYTE(v615[0]) = 21;
    LOBYTE(v631[0]) = 15;
    v630[0] = 15;
    OUTLINED_FUNCTION_22_69();
    OUTLINED_FUNCTION_148_7();
    sub_1E3C2FCB8(v320, v321, v322, v323, v324, v325, &qword_1F5D549D8, v326);
    OUTLINED_FUNCTION_38_39();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v328 = *(v327 + 1600);
    OUTLINED_FUNCTION_79_16();
    v328();
    v623[0] = 4;
    LOBYTE(v571[0]) = 5;
    LOBYTE(v622[0]) = 5;
    LOBYTE(v615[0]) = 5;
    LOBYTE(v631[0]) = 10;
    v630[0] = 6;
    OUTLINED_FUNCTION_22_69();
    OUTLINED_FUNCTION_148_7();
    sub_1E3C2FCB8(v329, v330, v331, v332, v333, v334, &qword_1F5D54AF8, v335);
    OUTLINED_FUNCTION_38_39();
    OUTLINED_FUNCTION_18();
    v336 = OUTLINED_FUNCTION_51_31();
    (v328)(v336, 54);
    OUTLINED_FUNCTION_36();
    (*(v337 + 1720))(7);
    v623[0] = 7;
    LOBYTE(v571[0]) = 1;
    LOBYTE(v622[0]) = 1;
    LOBYTE(v615[0]) = 5;
    sub_1E3C3DE00();
    v630[0] = v631[0];
    OUTLINED_FUNCTION_207();
    sub_1E3C3DE00();
    LOBYTE(v624[0]) = v627[0];
    v338 = OUTLINED_FUNCTION_22_69();
    sub_1E3C2FCB8(v338, v339, v340, v341, v630, v624, &unk_1F5D54CA8, v342);
    OUTLINED_FUNCTION_38_39();
    OUTLINED_FUNCTION_18();
    v343 = OUTLINED_FUNCTION_51_31();
    (v328)(v343, 59);
    *v571 = 0u;
    *v572 = 0u;
    LOBYTE(v573) = 1;
    sub_1E3952C58();
    OUTLINED_FUNCTION_174_0(v344, v345, v346, v347);
    sub_1E3952C58();
    OUTLINED_FUNCTION_4_167(v348, v349, v350, v351);
    sub_1E3952C88();
    OUTLINED_FUNCTION_54_28(v352, v353, v354, v355);
    sub_1E3952C58();
    OUTLINED_FUNCTION_160_4(v356, v357, v358, v359);
    OUTLINED_FUNCTION_90_12(v360, v361, v362, v363);
    OUTLINED_FUNCTION_148_7();
    sub_1E3C2FCB8(v364, v365, v366, v367, v368, v369, v4, v370);
    OUTLINED_FUNCTION_183_3();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_24_71();
    v328();
  }

  v371 = *sub_1E3E5FDEC();
  OUTLINED_FUNCTION_8();
  v373 = *(v372 + 680);
  v374 = v371;
  v373(v371);
  v375 = objc_opt_self();
  v376 = [v375 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v377 + 1960))();
  OUTLINED_FUNCTION_36();
  (*(v378 + 2008))(1);
  OUTLINED_FUNCTION_36();
  v379 = OUTLINED_FUNCTION_8_5();
  v380(v379);
  OUTLINED_FUNCTION_36();
  (*(v381 + 1720))(7);
  sub_1E3CD8684();
  OUTLINED_FUNCTION_36();
  (*(v382 + 608))();
  v623[0] = 21;
  LOBYTE(v571[0]) = 27;
  LOBYTE(v622[0]) = 27;
  if (TVAppFeature.isEnabled.getter(10, v383, v384))
  {
    v387 = 25;
  }

  else
  {
    v387 = 22;
  }

  LOBYTE(v615[0]) = v387;
  if (TVAppFeature.isEnabled.getter(20, v385, v386))
  {
    v388 = 15;
  }

  else
  {
    v388 = 17;
  }

  LOBYTE(v631[0]) = v388;
  v630[0] = 22;
  OUTLINED_FUNCTION_22_69();
  OUTLINED_FUNCTION_148_7();
  sub_1E3C2FCB8(v389, v390, v391, v392, v393, v394, &qword_1F5D549D8, v395);
  OUTLINED_FUNCTION_38_39();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v397 = *(v396 + 1600);
  OUTLINED_FUNCTION_79_16();
  v397();
  v623[0] = 11;
  if (TVAppFeature.isEnabled.getter(20, v398, v399))
  {
    v400 = 5;
  }

  else
  {
    v400 = 10;
  }

  LOBYTE(v571[0]) = v400;
  LOBYTE(v622[0]) = 10;
  sub_1E3C2FC98();
  LOBYTE(v631[0]) = v615[0];
  sub_1E3C3DE00();
  LOBYTE(v627[0]) = v630[0];
  sub_1E3C3DE00();
  LOBYTE(v608[0]) = v624[0];
  sub_1E3C2FCB8(v623, v631, v627, v571, v608, v622, &qword_1F5D54AF8, v656);
  OUTLINED_FUNCTION_38_39();
  OUTLINED_FUNCTION_18();
  v401 = OUTLINED_FUNCTION_51_31();
  (v397)(v401, 54);
  *v632 = 0u;
  *v631 = 0u;
  v633 = 1;
  sub_1E3952C88();
  OUTLINED_FUNCTION_90_12(v402, v403, v404, v405);
  TVAppFeature.isEnabled.getter(20, v406, v407);
  sub_1E3952C88();
  OUTLINED_FUNCTION_54_28(v408, v409, v410, v411);
  sub_1E3952C88();
  OUTLINED_FUNCTION_106_0();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_113_8();
  sub_1E3C3DE00();
  *v624 = *v627;
  *v625 = *v628;
  LOBYTE(v626) = v629;
  sub_1E3C2FCB8(v631, v615, v624, v630, v623, v571, v4, v656);
  OUTLINED_FUNCTION_183_3();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v397();
  v412 = sub_1E4205F14();
  v414 = v413;
  v415 = sub_1E4205F14();
  sub_1E376C12C(v412, v414, v415, v416);
  OUTLINED_FUNCTION_36();
  (*(v417 + 1888))();
  if (TVAppFeature.isEnabled.getter(20, v418, v419))
  {
    OUTLINED_FUNCTION_8();
    (*(v420 + 1984))(1);
    OUTLINED_FUNCTION_8();
    (*(v421 + 2128))(0x3FE6666666666666, 0);
  }

  v422 = v553;
  OUTLINED_FUNCTION_8();
  (*(v423 + 1808))(1);
  OUTLINED_FUNCTION_36();
  (*(v424 + 512))(4);
  v427 = TVAppFeature.isEnabled.getter(20, v425, v426);
  v430 = 0x406FC00000000000;
  if (v427)
  {
    v430 = 0x406D600000000000;
  }

  v620 = v430;
  v621 = 0;
  v618 = 0x407A400000000000;
  v619 = 0;
  v431 = TVAppFeature.isEnabled.getter(20, v428, v429);
  v434 = 0x406E000000000000;
  if (v431)
  {
    v434 = 0x4070400000000000;
  }

  v616 = v434;
  v617 = 0;
  v435 = TVAppFeature.isEnabled.getter(20, v432, v433);
  v436 = 0x4077800000000000;
  if ((v435 & 1) == 0)
  {
    v436 = 0x4077200000000000;
  }

  *v623 = v436;
  v623[8] = 0;
  v437 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_117_9();
  v615[0] = v438;
  LOBYTE(v615[1]) = v439;
  OUTLINED_FUNCTION_207();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_195_2();
  sub_1E3C2FCB8(&v620, v615, v624, &v618, &v616, v623, v437, v622);
  memcpy(v623, v622, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v441 = *(v440 + 1600);
  (v441)(v623, 4, v442 & 1, v437);
  v613 = 0x404E000000000000;
  v614 = 0;
  v611 = 0x405F800000000000;
  v612 = 0;
  v445 = TVAppFeature.isEnabled.getter(20, v443, v444);
  v446 = 0x404D000000000000;
  if ((v445 & 1) == 0)
  {
    v446 = 0x404E000000000000;
  }

  *v623 = v446;
  v623[8] = 0;
  v571[0] = 0x4057400000000000;
  LOBYTE(v571[1]) = 0;
  OUTLINED_FUNCTION_207();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_195_2();
  sub_1E3C3DE00();
  *&v605 = v608[0];
  BYTE8(v605) = v608[1];
  sub_1E3C2FCB8(&v613, v624, &v605, &v611, v623, v571, v437, v615);
  memcpy(v623, v615, 0x59uLL);
  OUTLINED_FUNCTION_18();
  v447 = OUTLINED_FUNCTION_51_31();
  v441(v447, 8);
  *v571 = 0u;
  *v572 = 0u;
  LOBYTE(v573) = 1;
  *v627 = xmmword_1E42A76C0;
  *v628 = xmmword_1E42CA400;
  LOBYTE(v629) = 0;
  *v624 = xmmword_1E42B8850;
  *v625 = xmmword_1E4296D10;
  LOBYTE(v626) = 0;
  v608[1] = 0;
  v608[0] = 0;
  v609 = xmmword_1E4296CE0;
  v610 = 0;
  v605 = xmmword_1E42CA410;
  v606 = xmmword_1E42CA420;
  v607 = 0;
  sub_1E3C3DE00();
  v599 = v602;
  v600 = v603;
  v601 = v604;
  sub_1E3C2FCB8(v571, v627, v624, &v599, v608, &v605, v4, v623);
  v456 = OUTLINED_FUNCTION_203_1(v448, v449, v450, v451, v452, v453, v454, v455, v535, v541, v547, v553, v559, *(&v559 + 1), v560, *(&v560 + 1), v561, v562, v563, *(&v563 + 1), v564, *(&v564 + 1), v565, v566, v567, *(&v567 + 1), v568, *(&v568 + 1), v569, v570, v571[0]);
  memcpy(v456, v457, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  (v441)();
  if (TVAppFeature.isEnabled.getter(20, v458, v459))
  {
    v460 = [v375 blackColor];
    OUTLINED_FUNCTION_36();
    (*(v461 + 752))();
  }

  OUTLINED_FUNCTION_8();
  (*(v462 + 1808))(1);
  OUTLINED_FUNCTION_36();
  (*(v463 + 512))(4);
  LOBYTE(v571[0]) = 1;
  LOBYTE(v627[0]) = 4;
  LOBYTE(v624[0]) = 4;
  sub_1E3C2FC98();
  LOBYTE(v605) = v608[0];
  sub_1E3C3DE00();
  LOBYTE(v599) = v602;
  sub_1E3C3DE00();
  LOBYTE(v563) = v567;
  sub_1E3C2FCB8(v571, &v605, &v599, v627, v624, &v563, &unk_1F5D995F0, v623);
  LODWORD(v571[0]) = *v623;
  WORD2(v571[0]) = *&v623[4];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v465 = *(v464 + 1600);
  (v465)(v571, 14, v466 & 1, &unk_1F5D995F0);
  v571[0] = 0x4066800000000000;
  LOBYTE(v571[1]) = 0;
  v627[0] = 0x4070400000000000;
  LOBYTE(v627[1]) = 0;
  OUTLINED_FUNCTION_193_1(0x406A000000000000uLL);
  v467 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_34_52();
  v468 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_105_11(v468, v469, v470, v471, v472, v473, v474, v475, v536, v542, v548, v554, v559, *(&v559 + 1), v560, *(&v560 + 1), v561, v562, v563, *(&v563 + 1), v564, *(&v564 + 1), v565, v566, v567, SBYTE8(v567), v568, *(&v568 + 1), v569, v570, v571[0], v571[1], v572[0], v572[1], v573, v574, v575, v576, v577, v578, v579, v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, SBYTE8(v599), v600);
  v484 = OUTLINED_FUNCTION_203_1(v476, v477, v478, v479, v480, v481, v482, v483, v537, v543, v549, v555, v559, *(&v559 + 1), v560, *(&v560 + 1), v561, v562, v563, *(&v563 + 1), v564, *(&v564 + 1), v565, v566, v567, *(&v567 + 1), v568, *(&v568 + 1), v569, v570, v571[0]);
  memcpy(v484, v485, 0x59uLL);
  v486 = OUTLINED_FUNCTION_18();
  (v465)(v571, 4, v486 & 1, v467);
  v571[0] = 0x4046000000000000;
  LOBYTE(v571[1]) = 0;
  v627[0] = 0x4049000000000000;
  LOBYTE(v627[1]) = 0;
  OUTLINED_FUNCTION_193_1(0x4044000000000000uLL);
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_34_52();
  v487 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_105_11(v487, v488, v489, v490, v491, v492, v493, v494, v538, v544, v550, v556, v559, *(&v559 + 1), v560, *(&v560 + 1), v561, v562, v563, *(&v563 + 1), v564, *(&v564 + 1), v565, v566, v567, SBYTE8(v567), v568, *(&v568 + 1), v569, v570, v571[0], v571[1], v572[0], v572[1], v573, v574, v575, v576, v577, v578, v579, v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, SBYTE8(v599), v600);
  v503 = OUTLINED_FUNCTION_203_1(v495, v496, v497, v498, v499, v500, v501, v502, v539, v545, v551, v557, v559, *(&v559 + 1), v560, *(&v560 + 1), v561, v562, v563, *(&v563 + 1), v564, *(&v564 + 1), v565, v566, v567, *(&v567 + 1), v568, *(&v568 + 1), v569, v570, v571[0]);
  memcpy(v503, v504, 0x59uLL);
  v505 = OUTLINED_FUNCTION_18();
  (v465)(v571, 8, v505 & 1, v467);
  sub_1E3952C94();
  OUTLINED_FUNCTION_106_0();
  sub_1E3952C94();
  v627[0] = v506;
  v627[1] = v507;
  v628[0] = v508;
  v628[1] = v509;
  LOBYTE(v629) = 0;
  sub_1E3C2FC98();
  *v608 = *v624;
  v609 = *v625;
  v610 = v626;
  sub_1E3C3DE00();
  v602 = v605;
  v603 = v606;
  v604 = v607;
  sub_1E3C3DE00();
  v567 = v599;
  v568 = v600;
  LOBYTE(v569) = v601;
  sub_1E3C3DE00();
  v559 = v563;
  v560 = v564;
  LOBYTE(v561) = v565;
  sub_1E3C2FCB8(v571, v608, &v602, v627, &v567, &v559, v4, v623);
  v518 = OUTLINED_FUNCTION_203_1(v510, v511, v512, v513, v514, v515, v516, v517, v540, v546, v552, v558, v559, *(&v559 + 1), v560, *(&v560 + 1), v561, v562, v563, *(&v563 + 1), v564, *(&v564 + 1), v565, v566, v567, *(&v567 + 1), v568, *(&v568 + 1), v569, v570, v571[0]);
  memcpy(v518, v519, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24_71();
  v465();
  TVAppFeature.isEnabled.getter(20, v520, v521);
  v522 = *(v422 + 104);
  sub_1E3952C58();
  [v522 setMargin_];
  v523 = *(v422 + 120);
  v524 = [v522 textLayout];
  v525 = v524;
  if (v523 == 4)
  {
    [v524 setMaximumContentSizeCategory_];

    [v522 setEntitlementCueImageMaxContentSizeCategory_];
    OUTLINED_FUNCTION_34_6();
    (*(v526 + 1928))(10);
  }

  else
  {
    [v524 setMaximumContentSizeCategory_];

    OUTLINED_FUNCTION_34_6();
    (*(v527 + 1928))(7);
    [v522 setEntitlementCueImageMaxContentSizeCategory_];
  }

  v528 = [v522 textLayout];
  [v528 setBlendMode_];

  sub_1E3CD3B70();
  sub_1E3CCE874();
  OUTLINED_FUNCTION_2_1();
  (*(v529 + 800))(0);

  v530 = *(v422 + 272);

  v531.n128_u64[0] = 14.0;
  *v623 = j__OUTLINED_FUNCTION_7_78(v531);
  *&v623[8] = v532;
  *&v623[16] = v533;
  *&v623[24] = v534;
  v623[32] = 0;
  (*(*v530 + 560))(v623);

  sub_1E3CD2D48();
}