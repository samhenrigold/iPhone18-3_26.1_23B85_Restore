uint64_t sub_190C9692C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = _s11ContentViewVMa_8(0);
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = v4;
  v42 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290, &qword_190DF9840);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - v7;
  v9 = _s10StatusViewVMa(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EF0, &qword_190E02248);
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v39 = v29 - v13;
  sub_190D56320();
  _s9ViewModelCMa_5(0);
  sub_190C97ABC(&qword_1EAD45CD0, _s9ViewModelCMa_5, &unk_190E01028);
  sub_190D56340();
  v14 = *(v9 + 20);
  if (qword_1EAD52090 != -1)
  {
    swift_once();
  }

  v15 = _s10StyleGuideVMa_0(0);
  v16 = __swift_project_value_buffer(v15, qword_1EAD9E6C0);
  sub_190C97EE0(v16, &v11[v14], _s10StyleGuideVMa_0);
  *&v11[*(v9 + 24)] = 0;
  sub_190D56320();

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_190D56330();
  swift_getKeyPath();
  sub_190D56350();

  v17 = *(v6 + 8);
  v37 = v6 + 8;
  v38 = v17;
  v18 = (v17)(v8, v5);
  v32 = v29;
  v29[1] = v46;
  v29[0] = v47;
  v30 = v48;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v33 = v9;
  v31 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v20 = v11;
  v21 = sub_190C97ABC(&qword_1EAD61EF8, _s10StatusViewVMa, &unk_190DF9854);
  v35 = sub_19081E484();
  v36 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
  v22 = v39;
  sub_190D55990();

  sub_190C97E80(v20, _s10StatusViewVMa);
  v23 = v31;
  sub_190D56330();
  swift_getKeyPath();
  sub_190D56350();

  v38(v8, v5);
  v24 = v42;
  sub_190C97EE0(v23, v42, _s11ContentViewVMa_8);
  v25 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v26 = swift_allocObject();
  sub_190C97F48(v24, v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E9B0, &qword_190DF7328);
  v46 = v33;
  v47 = MEMORY[0x1E69E6158];
  v48 = v34;
  v49 = MEMORY[0x1E6981148];
  v50 = v21;
  v51 = v35;
  v52 = v36;
  v53 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  sub_190B98070();
  v27 = v44;
  sub_190D55B80();

  return (*(v43 + 8))(v22, v27);
}

uint64_t sub_190C9702C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61F50, &qword_190E02258);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v13[-v1];
  v3 = _s12VerifyButtonVMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290, &qword_190DF9840);
  sub_190D56320();
  v6 = [*(v14 + 16) isGroupConversation];

  if (v6)
  {
    swift_storeEnumTagMultiPayload();
    sub_190C97ABC(&qword_1EAD61F28, _s12VerifyButtonVMa, &unk_190DF7268);
    return sub_190D54C50();
  }

  else
  {
    sub_190D56320();
    *v5 = v14;
    v8 = *(v3 + 20);
    if (qword_1EAD52090 != -1)
    {
      swift_once();
    }

    v9 = _s10StyleGuideVMa_0(0);
    v10 = __swift_project_value_buffer(v9, qword_1EAD9E6C0);
    sub_190C97EE0(v10, v5 + v8, _s10StyleGuideVMa_0);
    v11 = v5 + *(v3 + 24);
    v13[15] = 0;
    sub_190D55FC0();
    v12 = v15;
    *v11 = v14;
    *(v11 + 1) = v12;
    sub_190C97EE0(v5, v2, _s12VerifyButtonVMa);
    swift_storeEnumTagMultiPayload();
    sub_190C97ABC(&qword_1EAD61F28, _s12VerifyButtonVMa, &unk_190DF7268);
    sub_190D54C50();
    return sub_190C97E80(v5, _s12VerifyButtonVMa);
  }
}

id sub_190C97310(uint64_t a1)
{
  v2 = _s11ContentViewVMa_8(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  result = CKFrameworkBundle(v5);
  if (result)
  {
    v7 = result;
    v8 = sub_190D51210();
    v10 = v9;

    v13[0] = v8;
    v13[1] = v10;
    sub_190C97EE0(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), _s11ContentViewVMa_8);
    v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v12 = swift_allocObject();
    sub_190C97F48(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
    sub_19081E484();
    return sub_190D56080();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_190C974C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290, &qword_190DF9840);
  sub_190D56320();
  v0 = [*(v4 + 16) chat];
  [v0 ignoreKTFailure];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

uint64_t sub_190C97578@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290, &qword_190DF9840);
  sub_190D56320();

  sub_19081E484();
  result = sub_190D555F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190C975F8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290, &qword_190DF9840);
  sub_190D56320();
  v2 = *(v6 + 16);

  v3 = swift_allocObject();
  sub_190D56320();
  swift_weakInit();

  v4 = sub_190D552D0();
  result = sub_190D54240();
  *a1 = v2;
  *(a1 + 8) = sub_190B98164;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  return result;
}

unint64_t sub_190C976D4()
{
  result = qword_1EAD61F00;
  if (!qword_1EAD61F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EE8, &qword_190E02218);
    sub_190C97760();
    sub_190C97B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F00);
  }

  return result;
}

unint64_t sub_190C97760()
{
  result = qword_1EAD61F08;
  if (!qword_1EAD61F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EE0, &qword_190E02210);
    sub_190C97ABC(&qword_1EAD61F10, _s30EnableEnhancedProtectionButtonVMa, &unk_190DE17F0);
    sub_190C9781C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F08);
  }

  return result;
}

unint64_t sub_190C9781C()
{
  result = qword_1EAD61F18;
  if (!qword_1EAD61F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EC0, &qword_190E021F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EF0, &qword_190E02248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9B0, &qword_190DF7328);
    _s10StatusViewVMa(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0, &qword_190DD7300);
    sub_190C97ABC(&qword_1EAD61EF8, _s10StatusViewVMa, &unk_190DF9854);
    sub_19081E484();
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    sub_190B98070();
    swift_getOpaqueTypeConformance2();
    sub_190C97A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F18);
  }

  return result;
}

unint64_t sub_190C97A00()
{
  result = qword_1EAD61F20;
  if (!qword_1EAD61F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EA8, &qword_190E021D8);
    sub_190C97ABC(&qword_1EAD61F28, _s12VerifyButtonVMa, &unk_190DF7268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F20);
  }

  return result;
}

uint64_t sub_190C97ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_190C97B04()
{
  result = qword_1EAD61F30;
  if (!qword_1EAD61F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61E88, &qword_190E021B8);
    sub_190233640(&qword_1EAD61F38, &qword_1EAD61E90, &qword_190E021C0, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F30);
  }

  return result;
}

unint64_t sub_190C97BB4()
{
  result = qword_1EAD61F40;
  if (!qword_1EAD61F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61E78, &qword_190E021A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61EF0, &qword_190E02248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E9B0, &qword_190DF7328);
    _s10StatusViewVMa(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0, &qword_190DD7300);
    sub_190C97ABC(&qword_1EAD61EF8, _s10StatusViewVMa, &unk_190DF9854);
    sub_19081E484();
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    sub_190B98070();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F40);
  }

  return result;
}

uint64_t sub_190C97D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EA8, &qword_190E021D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190C97E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61EA8, &qword_190E021D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C97E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_190C97EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190C97F48(uint64_t a1, uint64_t a2)
{
  v4 = _s11ContentViewVMa_8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C97FAC@<X0>(uint64_t a1@<X8>)
{
  _s11ContentViewVMa_8(0);

  return sub_190C975F8(a1);
}

uint64_t objectdestroyTm_49()
{
  v1 = *(_s11ContentViewVMa_8(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F290, &qword_190DF9840);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double sub_190C980F4()
{
  _s11ContentViewVMa_8(0);

  return sub_190C974C4();
}

unint64_t sub_190C98154()
{
  result = qword_1EAD61F58;
  if (!qword_1EAD61F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD61F60, &unk_190E022B0);
    sub_190C976D4();
    sub_190C97BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD61F58);
  }

  return result;
}

uint64_t sub_190C982E4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel, &protocol conformance descriptor for BusinessDetailsViewModel);
  sub_190D51C20();

  return *(v2 + *a2);
}

void sub_190C98384(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel, &protocol conformance descriptor for BusinessDetailsViewModel);
  sub_190D51C20();

  *a4 = *(v6 + *a3);
}

void sub_190C98460(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel, &protocol conformance descriptor for BusinessDetailsViewModel);
    sub_190D51C10();
  }
}

id sub_190C98564(void *a1)
{
  v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__showingLeaveConversationConfirmation] = 0;
  v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__showingBlockSenderConfirmation] = 0;
  sub_190D51C50();
  v3 = [a1 shouldSendReadReceipts];
  v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__sendsReadReceipts] = v3;
  v4 = [a1 isMuted];
  v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__isMuted] = v4;
  v5 = [a1 chat];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v5 participants];

  sub_1902188FC(0, &qword_1EAD44E70, 0x1E69A5B90);
  v8 = sub_190D57180();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  result = sub_190D581C0();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked] = 0;
LABEL_13:
    *&v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation] = a1;
    v15.receiver = v1;
    v15.super_class = type metadata accessor for BusinessDetailsViewModel(0);
    return objc_msgSendSuper2(&v15, sel_init);
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x193AF3B90](0, v8);
    goto LABEL_7;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_7:
    v11 = v10;

    v12 = [objc_opt_self() sharedBlockList];
    v13 = [v11 ID];
    if (!v13)
    {
      sub_190D56F10();
      v13 = sub_190D56ED0();
    }

    v14 = [v12 addressIsBlocked_];

    v1[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked] = v14;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id BusinessDetailsViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BusinessDetailsViewModel.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BusinessDetailsViewModel(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_190C9892C(uint64_t a1, __n128 a2)
{
  result = sub_190D51C60();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_190C98AB4(uint64_t a1)
{
  sub_190D52D20();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BusinessDetailsController();
    if (v2 <= 0x3F)
    {
      sub_190C98B74(319);
      if (v3 <= 0x3F)
      {
        sub_190C98BCC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_190C98B74(uint64_t a1)
{
  if (!qword_1EAD61FD8)
  {
    type metadata accessor for BusinessDetailsViewModel(255);
    v1 = sub_190D56000();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD61FD8);
    }
  }
}

void sub_190C98BCC(uint64_t a1)
{
  if (!qword_1EAD61FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D9B0, &qword_190DF2FA0);
    v1 = sub_190D56000();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD61FE0);
    }
  }
}

void sub_190C98C4C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 24);
    v3 = _s11ContentViewVMa_9(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62168, &qword_190E02590);
    sub_190D55FD0();
    v4 = v10;
    if (v12)
    {
      v4 = v2;
    }

    v11 = v4;
    sub_190D55FE0();
    sub_190D55FD0();
    v5 = v11 - v2;
    if (v11 - v2 > 16.0)
    {
      v5 = 16.0;
    }

    v6 = v5 * 0.0625;
    v7 = *(v1 + *(v3 + 20));
    v8 = [v7 navigationItem];
    [v8 _setManualScrollEdgeAppearanceProgress_];

    v9 = [v7 navigationItem];
    [v9 _setManualScrollEdgeAppearanceEnabled_];
  }
}

uint64_t sub_190C98DD0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v2 = v1;
  v4 = _s11ContentViewVMa_9(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (v1 + *(v7 + 36));
  v10 = *v8;
  v9 = v8[1];
  v20 = v10;
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  v11 = v19;
  v12 = *&v19[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  sub_190B1CA5C(v2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  result = sub_190C9ECB0(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v17 = (v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_190C9EC8C;
  v17[1] = v13;
  *a1 = sub_190C9ED14;
  a1[1] = v15;
  return result;
}

uint64_t sub_190C98F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a5;
  v9 = _s11ContentViewVMa_9(0);
  v10 = *(v9 - 8);
  v65 = v9 - 8;
  v70 = v10;
  v69 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_190D54970();
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_190D54DE0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FF0, &qword_190E02470);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FF8, &qword_190E02478);
  MEMORY[0x1EEE9AC00](v61);
  v21 = &v60 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62000, &qword_190E02480);
  v23 = *(v22 - 8);
  v66 = v22;
  v67 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v60 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62008, &qword_190E02488);
  v26 = *(v25 - 8);
  v71 = v25;
  v72 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v64 = &v60 - v27;
  v76 = a2;
  v77 = a3;
  v78 = a4;
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62010, &qword_190E02490);
  sub_190233640(&qword_1EAD62018, &qword_1EAD62010, &qword_190E02490, MEMORY[0x1E6981F48]);
  sub_190D554D0();
  LOBYTE(a4) = sub_190D552C0();
  sub_190D539C0();
  v28 = &v19[*(v17 + 36)];
  *v28 = a4;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_190D54DD0();
  sub_190C9EDD0();
  sub_190D55C90();
  (*(v14 + 8))(v16, v13);
  sub_19022EEA4(v19, &qword_1EAD61FF0, &qword_190E02470);
  v74 = a2;
  sub_190D52CC0();
  v33 = v62;
  sub_190D54960();
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD62038, &qword_190E024A0) + 36);
  v35 = v60;
  v36 = v63;
  (*(v60 + 16))(&v21[v34], v33, v63);
  v37 = *(v35 + 56);
  v37(&v21[v34], 0, 1, v36);
  KeyPath = swift_getKeyPath();
  v39 = v61;
  v40 = &v21[*(v61 + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59400, &unk_190DDD240) + 28);
  (*(v35 + 32))(v40 + v41, v33, v36);
  v37(v40 + v41, 0, 1, v36);
  *v40 = KeyPath;
  v42 = sub_190C9EFF8();
  v43 = v39;
  sub_190D55AB0();
  sub_19022EEA4(v21, &qword_1EAD61FF8, &qword_190E02478);
  v44 = v74;
  v45 = (v74 + *(v65 + 36));
  v47 = *v45;
  v46 = v45[1];
  v65 = v47;
  v63 = v46;
  v80 = v47;
  v81 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  v48 = v84;
  swift_getKeyPath();
  v80 = v48;
  v62 = sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel, &protocol conformance descriptor for BusinessDetailsViewModel);
  sub_190D51C20();

  LOBYTE(v19) = v48[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__isMuted];

  LOBYTE(v84) = v19;
  v49 = v68;
  sub_190B1CA5C(v44, v68);
  v50 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v51 = swift_allocObject();
  sub_190C9ECB0(v49, v51 + v50);
  v80 = v43;
  v81 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v64;
  v54 = v66;
  v55 = v75;
  sub_190D55C30();

  (*(v67 + 8))(v55, v54);
  v80 = v65;
  v81 = v63;
  sub_190D55FD0();
  v56 = v84;
  swift_getKeyPath();
  v80 = v56;
  sub_190D51C20();

  LOBYTE(KeyPath) = v56[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__sendsReadReceipts];

  LOBYTE(v84) = KeyPath;
  sub_190B1CA5C(v74, v49);
  v57 = swift_allocObject();
  sub_190C9ECB0(v49, v57 + v50);
  v80 = v54;
  v81 = MEMORY[0x1E69E6370];
  v82 = OpaqueTypeConformance2;
  v83 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v58 = v71;
  sub_190D55C30();

  return (*(v72 + 8))(v53, v58);
}

id sub_190C99820@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v132 = a5;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62060, &qword_190E024D8);
  v128 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v127 = &v113 - v9;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62068, &qword_190E024E0);
  MEMORY[0x1EEE9AC00](v133);
  v134 = &v113 - v10;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62070, &qword_190E024E8);
  v117 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v116 = &v113 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62078, &qword_190E024F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v144 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v146 = &v113 - v15;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD62080, &qword_190E024F8);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v143 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v148 = &v113 - v18;
  v126 = sub_190D52990();
  v123 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v115 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E80, &qword_190E02500);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v118 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v122 = &v113 - v23;
  v125 = sub_190D524B0();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v121 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62090, &qword_190E02508);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v120 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v119 = &v113 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62098, &qword_190E02510);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v142 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v145 = &v113 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD620A0, &qword_190E02518);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v113 - v35;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD620A8, &qword_190E02520);
  v129 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v113 - v39;
  v149 = a1;
  v150 = a2;
  v138 = a2;
  v137 = a3;
  v151 = a3;
  sub_190C9B41C(a1, a4, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD620B0, &qword_190E02528);
  sub_190C9F398();
  sub_190233640(&qword_1EAD620F8, &qword_1EAD620B0, &qword_190E02528, MEMORY[0x1E6981F48]);
  v139 = v40;
  sub_190D562C0();
  v41 = *(_s11ContentViewVMa_9(0) + 28);
  v147 = a1;
  v42 = (a1 + v41);
  v43 = *v42;
  v44 = v42[1];
  v156 = *v42;
  v157 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  v45 = v152;
  v46 = *&v152[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v47 = [v46 businessHandle];
  if (v47 && (v48 = [v47 brand], v47, v48) && (v49 = objc_msgSend(v48, sel_brand), v48, v49))
  {
    v114 = v49;
    v50 = v121;
    sub_190D524A0();
    v51 = v122;
    sub_190D52D00();
    v52 = v118;
    sub_19022FD14(v51, v118, &qword_1EAD58E80, &qword_190E02500);
    v53 = v123;
    v54 = v126;
    if ((*(v123 + 48))(v52, 1, v126) == 1)
    {

      sub_19022EEA4(v51, &qword_1EAD58E80, &qword_190E02500);
      v55 = 0;
    }

    else
    {
      (*(v53 + 32))(v115, v52, v54);
      sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820], MEMORY[0x1E6995810]);
      v55 = sub_190D561E0();

      sub_19022EEA4(v51, &qword_1EAD58E80, &qword_190E02500);
    }

    v58 = v120;
    (*(v124 + 32))(v120, v50, v125);
    *&v58[*(v25 + 36)] = v55;
    v59 = v58;
    v60 = v119;
    sub_19081E40C(v59, v119, &qword_1EAD62090, &qword_190E02508);
    v57 = v145;
    sub_19081E40C(v60, v145, &qword_1EAD62090, &qword_190E02508);
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v57 = v145;
  }

  v61 = (*(v26 + 56))(v57, v56, 1, v25);
  MEMORY[0x1EEE9AC00](v61);
  v62 = v138;
  v63 = v137;
  *(&v113 - 4) = v138;
  *(&v113 - 3) = v63;
  *(&v113 - 2) = v147;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62100, &qword_190E02548);
  v65 = sub_190C9F58C();
  v66 = sub_190D562E0();
  v67 = v62(v66);
  if ((v67 & 1) == 0 || (v156 = v43, v157 = v44, sub_190D55FD0(), v68 = v152, v69 = *&v152[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation], v68, v70 = [v69 chat], v69, !v70))
  {
LABEL_19:
    MEMORY[0x1EEE9AC00](v67);
    *(&v113 - 2) = v147;
    result = CKFrameworkBundle(v81);
    if (result)
    {
      v82 = result;
      v83 = sub_190D56ED0();
      v84 = sub_190D56ED0();
      v85 = [v82 localizedStringForKey:v83 value:0 table:v84];

      v86 = sub_190D56F10();
      v88 = v87;

      v156 = v86;
      v157 = v88;
      sub_19081E484();
      v156 = sub_190D555F0();
      v157 = v89;
      v158 = v90 & 1;
      v159 = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62118, &unk_190E02550);
      v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55FE0, &unk_190DE27B0);
      v93 = sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0, &unk_190DE27B0, MEMORY[0x1E6981F48]);
      v152 = v64;
      v153 = v92;
      v154 = v65;
      v155 = v93;
      swift_getOpaqueTypeConformance2();
      v94 = v127;
      sub_190D562F0();
      v95 = v128;
      v96 = v136;
      (*(v128 + 16))(v134, v94, v136);
      swift_storeEnumTagMultiPayload();
      sub_190C9F678();
      sub_190C9F83C();
      v74 = v146;
      sub_190D54C50();
      (*(v95 + 8))(v94, v96);
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v71 = [v70 participants];

  sub_1902188FC(0, &qword_1EAD44E70, 0x1E69A5B90);
  v72 = sub_190D57180();

  if (v72 >> 62)
  {
    result = sub_190D581C0();
    v74 = v146;
    if (result)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  result = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v74 = v146;
  if (!result)
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_13:
  if ((v72 & 0xC000000000000001) != 0)
  {
    v75 = MEMORY[0x193AF3B90](0, v72);
    goto LABEL_16;
  }

  if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v75 = *(v72 + 32);
LABEL_16:
    v76 = v75;

    MEMORY[0x1EEE9AC00](v77);
    *(&v113 - 2) = v147;
    *(&v113 - 1) = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62130, &qword_190E02560);
    sub_190C9F708();
    v78 = v116;
    sub_190D562E0();
    v79 = v117;
    v80 = v135;
    (*(v117 + 16))(v134, v78, v135);
    swift_storeEnumTagMultiPayload();
    sub_190C9F678();
    sub_190C9F83C();
    sub_190D54C50();

    (*(v79 + 8))(v78, v80);
LABEL_21:
    v97 = v129;
    v98 = *(v129 + 16);
    v99 = v140;
    v100 = v141;
    v98(v140, v139, v141);
    sub_19022FD14(v57, v142, &qword_1EAD62098, &qword_190E02510);
    v101 = v130;
    v102 = *(v130 + 16);
    v103 = v131;
    v102(v143, v148, v131);
    sub_19028AF6C(v74, v144);
    v104 = v132;
    v98(v132, v99, v100);
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62140, &unk_190E02568);
    v106 = v142;
    sub_19022FD14(v142, &v104[v105[12]], &qword_1EAD62098, &qword_190E02510);
    v107 = v143;
    v102(&v104[v105[16]], v143, v103);
    v108 = &v104[v105[20]];
    v109 = v144;
    sub_19028AF6C(v144, v108);
    sub_19022EEA4(v146, &qword_1EAD62078, &qword_190E024F0);
    v110 = *(v101 + 8);
    v110(v148, v103);
    sub_19022EEA4(v145, &qword_1EAD62098, &qword_190E02510);
    v111 = *(v97 + 8);
    v112 = v141;
    v111(v139, v141);
    sub_19022EEA4(v109, &qword_1EAD62078, &qword_190E024F0);
    v110(v107, v103);
    sub_19022EEA4(v106, &qword_1EAD62098, &qword_190E02510);
    return (v111)(v140, v112);
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_190C9A954@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a3;
  v101 = a2;
  v96 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD62170, &qword_190E02598);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v97 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v95 = v83 - v8;
  v105 = sub_190D52990();
  v102 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v91 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E80, &qword_190E02500);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v89 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v90 = v83 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v98 = v83 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v99 = v83 - v17;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FC90, &qword_190E025A0);
  v106 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v92 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v83 - v20;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62180, &qword_190E025A8);
  v93 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v94 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v88 = v83 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v87 = v83 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v83 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v107 = v83 - v31;
  result = CKFrameworkBundle(v32);
  if (result)
  {
    v34 = result;
    v35 = sub_190D56ED0();
    v36 = sub_190D56ED0();
    v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

    v38 = sub_190D56F10();
    v40 = v39;

    v113 = v38;
    v114 = v40;
    v41 = (a1 + *(_s11ContentViewVMa_9(0) + 28));
    v43 = *v41;
    v42 = v41[1];
    v85 = v43;
    v108 = v43;
    v109 = v42;
    v84 = v42;
    v83[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
    sub_190D55FF0();
    v44 = v110;
    v45 = v111;
    v46 = v112;
    swift_getKeyPath();
    v110 = v44;
    v111 = v45;
    v112 = v46;
    v83[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62158, &qword_190E02588);
    sub_190D56210();

    v47 = v21;
    v83[0] = sub_19081E484();
    sub_190D56190();
    v48 = v99;
    v86 = a1;
    sub_190D52D00();
    v49 = v98;
    sub_19022FD14(v48, v98, &qword_1EAD58E80, &qword_190E02500);
    v50 = v102;
    v51 = *(v102 + 48);
    v52 = v105;
    if (v51(v49, 1, v105) == 1)
    {
      sub_19022EEA4(v48, &qword_1EAD58E80, &qword_190E02500);
      v53 = 0;
    }

    else
    {
      (*(v50 + 32))(v91, v49, v52);
      sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820], MEMORY[0x1E6995810]);
      v53 = sub_190D561E0();
      sub_19022EEA4(v48, &qword_1EAD58E80, &qword_190E02500);
    }

    v55 = v106 + 32;
    v54 = *(v106 + 32);
    v54(v29, v47, v103);
    v56 = v104;
    *&v29[*(v104 + 36)] = v53;
    v57 = sub_19081E40C(v29, v107, &qword_1EAD62180, &qword_190E025A8);
    v58 = v101(v57);
    if ((v58 & 1) == 0)
    {
      v73 = 1;
      v74 = v95;
LABEL_12:
      (*(v93 + 56))(v74, v73, 1, v56);
      v78 = v107;
      v79 = v94;
      sub_19022FD14(v107, v94, &qword_1EAD62180, &qword_190E025A8);
      v80 = v97;
      sub_19022FD14(v74, v97, &unk_1EAD62170, &qword_190E02598);
      v81 = v96;
      sub_19022FD14(v79, v96, &qword_1EAD62180, &qword_190E025A8);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62188, &qword_190E025B0);
      sub_19022FD14(v80, v81 + *(v82 + 48), &unk_1EAD62170, &qword_190E02598);
      sub_19022EEA4(v74, &unk_1EAD62170, &qword_190E02598);
      sub_19022EEA4(v78, &qword_1EAD62180, &qword_190E025A8);
      sub_19022EEA4(v80, &unk_1EAD62170, &qword_190E02598);
      return sub_19022EEA4(v79, &qword_1EAD62180, &qword_190E025A8);
    }

    v106 = v55;
    result = CKFrameworkBundle(v58);
    if (result)
    {
      v59 = result;
      v60 = sub_190D56ED0();
      v61 = sub_190D56ED0();
      v62 = [v59 localizedStringForKey:v60 value:0 table:v61];

      v63 = sub_190D56F10();
      v65 = v64;

      v113 = v63;
      v114 = v65;
      v108 = v85;
      v109 = v84;
      sub_190D55FF0();
      v66 = v110;
      v67 = v111;
      v68 = v112;
      swift_getKeyPath();
      v110 = v66;
      v111 = v67;
      v112 = v68;
      sub_190D56210();

      sub_190D56190();
      v69 = v90;
      sub_190D52D00();
      v70 = v89;
      sub_19022FD14(v69, v89, &qword_1EAD58E80, &qword_190E02500);
      v71 = v105;
      if (v51(v70, 1, v105) == 1)
      {
        sub_19022EEA4(v69, &qword_1EAD58E80, &qword_190E02500);
        v72 = 0;
      }

      else
      {
        (*(v102 + 32))(v91, v70, v71);
        sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820], MEMORY[0x1E6995810]);
        v72 = sub_190D561E0();
        sub_19022EEA4(v69, &qword_1EAD58E80, &qword_190E02500);
      }

      v74 = v95;
      v56 = v104;
      v75 = v88;
      v54(v88, v92, v103);
      *&v75[*(v56 + 36)] = v72;
      v76 = v75;
      v77 = v87;
      sub_19081E40C(v76, v87, &qword_1EAD62180, &qword_190E025A8);
      sub_19081E40C(v77, v74, &qword_1EAD62180, &qword_190E025A8);
      v73 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190C9B41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v32 = a3;
  v4 = _s11ContentViewVMa_9(0);
  v5 = v4 - 8;
  v37 = *(v4 - 8);
  v36 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D53D60();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (a1 + *(v5 + 36));
  v12 = v10[1];
  v39 = *v10;
  v11 = v39;
  v40 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  v13 = v38;
  v14 = *&v38[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v15 = [v14 businessHandle];
  v16 = [v15 brand];

  v17 = [v16 brand];
  v39 = v11;
  v40 = v12;
  sub_190D55FD0();
  v18 = v38;
  v19 = *&v38[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v20 = [v19 chatbotURI];
  sub_190D56F10();

  v21 = v32;
  sub_190D52480();
  v22 = sub_190D56010();
  (*(v8 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v25 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD620C8, &qword_190E02530) + 36));
  *v25 = v22;
  v25[1] = sub_190C9FB64;
  v25[2] = v24;
  v26 = v35;
  sub_190B1CA5C(v33, v35);
  v27 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v28 = swift_allocObject();
  sub_190C9ECB0(v26, v28 + v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD620A0, &qword_190E02518);
  v30 = (v21 + *(result + 36));
  *v30 = sub_190C9FBE4;
  v30[1] = v28;
  return result;
}

__n128 sub_190C9B79C(char **a1, uint64_t a2)
{
  type metadata accessor for CGRect(0);
  sub_190D53D70();
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_19083736C(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_19083736C((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[48 * v5];
  *(v6 + 4) = 0x6956726564616568;
  *(v6 + 5) = 0xEA00000000007765;
  result = v8;
  *(v6 + 3) = v8;
  *(v6 + 4) = v9;
  *a1 = v3;
  return result;
}

double sub_190C9B888(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16))
  {
    v3 = *(v1 + 32);
    v2 = *(v1 + 40);
    v7 = *(v1 + 64);
    v8 = *(v1 + 48);
    sub_190D52690();
    v5 = v7;
    v4 = v8;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  v9[0] = v3;
  v9[1] = v2;
  v10 = v4;
  v11 = v5;
  sub_190C98C4C(v9);

  return result;
}

int *sub_190C9B914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v36 = a1;
  v37 = a2;
  v42 = a4;
  v4 = sub_190D52990();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E80, &qword_190E02500);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = _s11ContentViewVMa_9(0);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v14 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v16 = &v33 - v15;
  result = CKFrameworkBundle(v17);
  if (result)
  {
    v19 = result;
    v20 = sub_190D56ED0();
    v21 = sub_190D56ED0();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_190D56F10();
    v25 = v24;

    v43 = v23;
    v44 = v25;
    sub_190B1CA5C(v39, &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v27 = swift_allocObject();
    v28 = v37;
    *(v27 + 16) = v36;
    *(v27 + 24) = v28;
    sub_190C9ECB0(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    sub_19081E484();
    sub_190D50920();
    sub_190D56080();
    sub_190D52D00();
    sub_19022FD14(v11, v8, &qword_1EAD58E80, &qword_190E02500);
    v30 = v40;
    v29 = v41;
    if ((*(v40 + 48))(v8, 1, v41) == 1)
    {
      sub_19022EEA4(v11, &qword_1EAD58E80, &qword_190E02500);
      v31 = 0;
    }

    else
    {
      (*(v30 + 32))(v34, v8, v29);
      sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820], MEMORY[0x1E6995810]);
      v31 = sub_190D561E0();
      sub_19022EEA4(v11, &qword_1EAD58E80, &qword_190E02500);
    }

    v32 = v42;
    (*(v14 + 32))(v42, v16, v38);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62100, &qword_190E02548);
    *(v32 + result[9]) = v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190C9BD98(uint64_t (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  v5 = sub_190D51840();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1(v7) & 1) == 0)
  {
    _s11ContentViewVMa_9(0);
    sub_190B1C388();
    return;
  }

  v10 = [objc_opt_self() sharedFeatureFlags];
  v11 = [v10 isReportJunkEverywhereEnabled];

  v12 = (a3 + *(_s11ContentViewVMa_9(0) + 28));
  v13 = *v12;
  v14 = v12[1];
  if (v11)
  {
    v32 = *v12;
    v33 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
    sub_190D55FD0();
    v15 = v31;
    v16 = *&v31[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

    v17 = [v16 chat];
    [v17 reportJunk];
LABEL_7:

    goto LABEL_8;
  }

  v32 = *v12;
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  v18 = v31;
  v19 = *&v31[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v17 = [v19 chat];
  if (v17)
  {
    [v17 reportLazuliSpam:0 isBot:1];
    goto LABEL_7;
  }

LABEL_8:
  v32 = v13;
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  v20 = v31;
  v21 = *&v31[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v22 = [v21 chat];
  if (v22)
  {
    [v22 markAsSpam:objc_msgSend(objc_opt_self() isJunkReportedToCarrier:{sel_messageJunkStatus), 0}];
  }

  _s11ContentViewVMa_9(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong dismissDetailsViewAndShowConversationList];
    swift_unknownObjectRelease();
  }

  v24 = [objc_opt_self() sharedConversationList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_190DD55F0;
  v32 = v13;
  v33 = v14;
  sub_190D55FD0();
  v26 = v31;
  v27 = *&v31[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  *(v25 + 32) = v27;
  sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
  v28 = sub_190D57160();

  sub_190D517F0();
  v29 = sub_190D51780();
  (*(v6 + 8))(v9, v5);
  [v24 recoverableDeleteForConversations:v28 deleteDate:v29 synchronousQuery:0 completionHandler:0];
}

id sub_190C9C194@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v108 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110, &qword_190DDC6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v96 = v89 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62148, &qword_190E02578);
  v100 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v99 = v89 - v6;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62150, &qword_190E02580);
  MEMORY[0x1EEE9AC00](v105);
  v106 = v89 - v7;
  v104 = sub_190D52990();
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v98 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E80, &qword_190E02500);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v94 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v89 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v89 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v89 - v18;
  v20 = _s11ContentViewVMa_9(0);
  v21 = v20 - 8;
  v101 = *(v20 - 8);
  v22 = v101[8];
  MEMORY[0x1EEE9AC00](v20);
  v23 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v103 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v93 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v92 = v89 - v26;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62100, &qword_190E02548);
  MEMORY[0x1EEE9AC00](v111);
  v97 = v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v89 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v89 - v32;
  v34 = *(v21 + 36);
  v109 = a1;
  v35 = (a1 + v34);
  v37 = *v35;
  v36 = v35[1];
  v91 = v37;
  v112 = v37;
  v113 = v36;
  v90 = v36;
  v89[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  v38 = v118;
  swift_getKeyPath();
  v112 = v38;
  sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel, &protocol conformance descriptor for BusinessDetailsViewModel);
  sub_190D51C20();

  LODWORD(a1) = v38[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked];

  result = CKFrameworkBundle(v39);
  v41 = result;
  if (a1 == 1)
  {
    if (result)
    {
      v42 = sub_190D56ED0();
      v43 = sub_190D56ED0();
      v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

      v45 = sub_190D56F10();
      v47 = v46;

      v112 = v45;
      v113 = v47;
      sub_190B1CA5C(v109, v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      v48 = (*(v101 + 80) + 24) & ~*(v101 + 80);
      v49 = swift_allocObject();
      v50 = v95;
      *(v49 + 16) = v95;
      sub_190C9ECB0(v23, v49 + v48);
      sub_19081E484();
      v51 = v50;
      v52 = v92;
      sub_190D56080();
      sub_190D52D00();
      sub_19022FD14(v19, v16, &qword_1EAD58E80, &qword_190E02500);
      v53 = v102;
      v54 = v104;
      if ((*(v102 + 48))(v16, 1, v104) == 1)
      {
        sub_19022EEA4(v19, &qword_1EAD58E80, &qword_190E02500);
        v55 = 0;
      }

      else
      {
        (*(v53 + 32))(v98, v16, v54);
        sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820], MEMORY[0x1E6995810]);
        v55 = sub_190D561E0();
        sub_19022EEA4(v19, &qword_1EAD58E80, &qword_190E02500);
      }

      v71 = v110;
      (*(v103 + 32))(v30, v52, v110);
      v72 = v111;
      *&v30[*(v111 + 36)] = v55;
      sub_19081E40C(v30, v33, &qword_1EAD62100, &qword_190E02548);
      sub_19022FD14(v33, v106, &qword_1EAD62100, &qword_190E02548);
      swift_storeEnumTagMultiPayload();
      v73 = sub_190C9F58C();
      v74 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
      v112 = v72;
      v113 = v71;
      v114 = MEMORY[0x1E6981148];
      v115 = v73;
      v116 = v74;
      v117 = MEMORY[0x1E6981138];
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();
      return sub_19022EEA4(v33, &qword_1EAD62100, &qword_190E02548);
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_14;
  }

  v56 = sub_190D56ED0();
  v57 = sub_190D56ED0();
  v58 = [v41 localizedStringForKey:v56 value:0 table:v57];

  v59 = sub_190D56F10();
  v61 = v60;

  v112 = v59;
  v113 = v61;
  v62 = v96;
  sub_190D53970();
  v63 = sub_190D539A0();
  (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  sub_190B1CA5C(v109, v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v65 = swift_allocObject();
  sub_190C9ECB0(v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v65 + v64);
  sub_19081E484();
  v66 = v93;
  sub_190D56060();
  sub_190D52D00();
  v67 = v94;
  sub_19022FD14(v13, v94, &qword_1EAD58E80, &qword_190E02500);
  v68 = v102;
  v69 = v104;
  if ((*(v102 + 48))(v67, 1, v104) == 1)
  {
    sub_19022EEA4(v13, &qword_1EAD58E80, &qword_190E02500);
    v70 = 0;
  }

  else
  {
    (*(v68 + 32))(v98, v67, v69);
    sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820], MEMORY[0x1E6995810]);
    v70 = sub_190D561E0();
    sub_19022EEA4(v13, &qword_1EAD58E80, &qword_190E02500);
  }

  v75 = v97;
  (*(v103 + 32))(v97, v66, v110);
  *(v75 + *(v111 + 36)) = v70;
  sub_190D549E0();
  v103 = v77;
  v104 = v76;
  LODWORD(v102) = v78;
  v118 = v91;
  v119 = v90;
  sub_190D55FF0();
  v79 = v112;
  v80 = v113;
  v81 = v114;
  swift_getKeyPath();
  v112 = v79;
  v113 = v80;
  v114 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62158, &qword_190E02588);
  sub_190D56210();

  v101 = v89;
  MEMORY[0x1EEE9AC00](v82);
  v83 = sub_190C9F58C();
  v88 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
  v84 = v110;
  v85 = v99;
  sub_190D55980();

  sub_19022EEA4(v75, &qword_1EAD62100, &qword_190E02548);
  v86 = v100;
  v87 = v107;
  (*(v100 + 16))(v106, v85, v107);
  swift_storeEnumTagMultiPayload();
  v112 = v111;
  v113 = v84;
  v114 = MEMORY[0x1E6981148];
  v115 = v83;
  v116 = v88;
  v117 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  sub_190D54C50();
  return (*(v86 + 8))(v85, v87);
}

void sub_190C9CF80(void *a1, uint64_t a2)
{
  v2 = [a1 cnContact];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() sharedBlockList];
    [v4 unblockContact_];

    _s11ContentViewVMa_9(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
    sub_190D55FD0();
    v5 = OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked;
    if (*(v7 + OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel, &protocol conformance descriptor for BusinessDetailsViewModel);
      sub_190D51C10();
    }

    else
    {

      *(v7 + v5) = 0;
    }
  }
}

id sub_190C9D134(uint64_t a1)
{
  v2 = _s11ContentViewVMa_9(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110, &qword_190DDC6C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - v6;
  result = CKFrameworkBundle(v8);
  if (result)
  {
    v10 = result;
    v11 = sub_190D56ED0();
    v12 = sub_190D56ED0();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v14 = sub_190D56F10();
    v16 = v15;

    v20[0] = v14;
    v20[1] = v16;
    sub_190D53970();
    v17 = sub_190D539A0();
    (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
    sub_190B1CA5C(a1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v19 = swift_allocObject();
    sub_190C9ECB0(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    sub_19081E484();
    return sub_190D56060();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190C9D3A0(uint64_t a1)
{
  _s11ContentViewVMa_9(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  v1 = *&v12[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v2 = [v1 chat];
  if (!v2)
  {
    return;
  }

  v3 = [v2 participants];

  sub_1902188FC(0, &qword_1EAD44E70, 0x1E69A5B90);
  v4 = sub_190D57180();

  if (v4 >> 62)
  {
    if (sub_190D581C0())
    {
      goto LABEL_4;
    }

LABEL_13:

    return;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x193AF3B90](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = [v6 cnContact];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() sharedBlockList];
    [v9 blockContact_];

    sub_190D55FD0();
    v10 = OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked;
    if (v12[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__senderIsBlocked])
    {

      v12[v10] = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel, &protocol conformance descriptor for BusinessDetailsViewModel);
      sub_190D51C10();
    }
  }

  else
  {
  }
}

id sub_190C9D68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a2 = result;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190C9D78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v54 = a2;
  v52 = sub_190D52990();
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v45 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58E80, &qword_190E02500);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  v51 = _s11ContentViewVMa_9(0);
  v46 = *(v51 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110, &qword_190DDC6C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62100, &qword_190E02548);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v44 - v16;
  result = CKFrameworkBundle(v17);
  if (result)
  {
    v19 = result;
    v20 = sub_190D56ED0();
    v21 = sub_190D56ED0();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_190D56F10();
    v25 = v24;

    v58 = v23;
    v59 = v25;
    sub_190D53970();
    v26 = sub_190D539A0();
    (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
    v27 = v50;
    sub_190B1CA5C(v50, &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v29 = swift_allocObject();
    sub_190C9ECB0(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    sub_19081E484();
    sub_190D56060();
    sub_190D52D00();
    sub_19022FD14(v8, v5, &qword_1EAD58E80, &qword_190E02500);
    v30 = v49;
    v31 = v52;
    if ((*(v49 + 48))(v5, 1, v52) == 1)
    {
      sub_19022EEA4(v8, &qword_1EAD58E80, &qword_190E02500);
      v32 = 0;
    }

    else
    {
      (*(v30 + 32))(v45, v5, v31);
      sub_190C9F538(&qword_1EAD58EE8, MEMORY[0x1E6995820], MEMORY[0x1E6995810]);
      v32 = sub_190D561E0();
      sub_19022EEA4(v8, &qword_1EAD58E80, &qword_190E02500);
    }

    v33 = v53;
    (*(v47 + 32))(v53, v15, v48);
    *(v33 + *(v55 + 36)) = v32;
    v52 = sub_190D549E0();
    v48 = v35;
    v49 = v34;
    LODWORD(v47) = v36;
    v37 = (v27 + *(v51 + 28));
    v39 = *v37;
    v38 = v37[1];
    v56 = v39;
    v57 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
    sub_190D55FF0();
    v40 = v58;
    v41 = v59;
    v42 = v60;
    swift_getKeyPath();
    v58 = v40;
    v59 = v41;
    v60 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62158, &qword_190E02588);
    sub_190D56210();

    MEMORY[0x1EEE9AC00](v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0, &unk_190DE27B0);
    sub_190C9F58C();
    sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0, &unk_190DE27B0, MEMORY[0x1E6981F48]);
    sub_190D559A0();

    return sub_19022EEA4(v33, &qword_1EAD62100, &qword_190E02548);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_190C9DEB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  _s11ContentViewVMa_9(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  if (v7[*a2] == 1)
  {
    v7[*a2] = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel, &protocol conformance descriptor for BusinessDetailsViewModel);
    sub_190D51C10();
  }

  return result;
}

id sub_190C9E008@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v3 = _s11ContentViewVMa_9(0);
  v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = v4;
  v60 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110, &qword_190DDC6C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v55 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = v50 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v53 = v50 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v58 = v50 - v16;
  result = CKFrameworkBundle(v17);
  if (result)
  {
    v19 = result;
    v20 = sub_190D56ED0();
    v21 = sub_190D56ED0();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_190D56F10();
    v25 = v24;

    v61 = v23;
    v62 = v25;
    sub_190D53970();
    v26 = sub_190D539A0();
    v27 = *(v26 - 8);
    v28 = *(v27 + 56);
    v50[1] = v27 + 56;
    v51 = v28;
    v28(v7, 0, 1, v26);
    v52 = a1;
    v29 = v60;
    sub_190B1CA5C(a1, v60);
    v30 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v31 = swift_allocObject();
    sub_190C9ECB0(v29, v31 + v30);
    v57 = sub_19081E484();
    v32 = sub_190D56060();
    result = CKFrameworkBundle(v32);
    if (result)
    {
      v33 = result;
      v34 = sub_190D56ED0();
      v35 = sub_190D56ED0();
      v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

      v37 = sub_190D56F10();
      v39 = v38;

      v61 = v37;
      v62 = v39;
      sub_190D53970();
      v51(v7, 0, 1, v26);
      v40 = v60;
      sub_190B1CA5C(v52, v60);
      v41 = swift_allocObject();
      sub_190C9ECB0(v40, v41 + v30);
      v42 = v53;
      sub_190D56060();
      v43 = *(v9 + 16);
      v44 = v54;
      v45 = v58;
      v43(v54, v58, v8);
      v46 = v55;
      v43(v55, v42, v8);
      v47 = v56;
      v43(v56, v44, v8);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62160, &qword_190DDBAF0);
      v43(&v47[*(v48 + 48)], v46, v8);
      v49 = *(v9 + 8);
      v49(v42, v8);
      v49(v45, v8);
      v49(v46, v8);
      return (v49)(v44, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_190C9E598(uint64_t a1)
{
  _s11ContentViewVMa_9(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  v1 = *&v5[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v2 = [v1 chat];
  [v2 leaveConversation];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong dismissDetailsViewAndShowConversationList];
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_190C9E67C(uint64_t a1)
{
  v20 = a1;
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(_s11ContentViewVMa_9(0) + 28));
  v7 = v6[1];
  v22 = *v6;
  v8 = v22;
  v23 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  v9 = v21;
  v10 = *&v21[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  v11 = [v10 chat];
  [v11 closeSession];

  v12 = [objc_opt_self() sharedConversationList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_190DD55F0;
  v22 = v8;
  v23 = v7;
  sub_190D55FD0();
  v14 = v21;
  v15 = *&v21[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  *(v13 + 32) = v15;
  sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
  v16 = sub_190D57160();

  sub_190D517F0();
  v17 = sub_190D51780();
  (*(v3 + 8))(v5, v2);
  [v12 recoverableDeleteForConversations:v16 deleteDate:v17 synchronousQuery:0 completionHandler:0];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong dismissDetailsViewAndShowConversationList];
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_190C9E90C(uint64_t a1)
{
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(_s11ContentViewVMa_9(0) + 28));
  v8 = v6[1];
  v16 = *v6;
  v7 = v16;
  v17 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  v9 = v15;
  swift_getKeyPath();
  v16 = v9;
  sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel, &protocol conformance descriptor for BusinessDetailsViewModel);
  sub_190D51C20();

  LODWORD(a1) = v9[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__isMuted];

  v16 = v7;
  v17 = v8;
  sub_190D55FD0();
  if (a1 == 1)
  {
    v10 = v15;
    v11 = *&v15[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

    sub_190D51750();
    v12 = sub_190D51780();
    (*(v3 + 8))(v5, v2);
    [v11 setMutedUntilDate_];
  }

  else
  {
    v13 = v15;
    v12 = *&v15[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

    [v12 unmute];
  }
}

void sub_190C9EB4C(uint64_t a1)
{
  _s11ContentViewVMa_9(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD61FE8, &qword_190E02468);
  sub_190D55FD0();
  v1 = *&v3[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel_conversation];

  sub_190D55FD0();
  swift_getKeyPath();
  sub_190C9F538(&qword_1EAD61FC0, type metadata accessor for BusinessDetailsViewModel, &protocol conformance descriptor for BusinessDetailsViewModel);
  sub_190D51C20();

  v2 = v3[OBJC_IVAR____TtC7ChatKit24BusinessDetailsViewModel__sendsReadReceipts];

  [v1 setSendReadReceipts_];
}

uint64_t sub_190C9ECB0(uint64_t a1, uint64_t a2)
{
  v4 = _s11ContentViewVMa_9(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C9ED14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s11ContentViewVMa_9(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_190C98F60(a1, v2 + v6, v8, v9, a2);
}

unint64_t sub_190C9EDD0()
{
  result = qword_1EAD62020;
  if (!qword_1EAD62020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61FF0, &qword_190E02470);
    sub_190233640(&qword_1EAD62028, &qword_1EAD62030, &qword_190E02498, MEMORY[0x1E697CD20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62020);
  }

  return result;
}

BOOL sub_190C9EE88(double *a1, double *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) || (v10 = sub_190D58760(), result = 0, (v10 & 1) != 0))
  {
    v12.origin.x = v2;
    v12.origin.y = v3;
    v12.size.width = v4;
    v12.size.height = v5;
    v13.origin.x = v6;
    v13.origin.y = v7;
    v13.size.width = v8;
    v13.size.height = v9;
    return CGRectEqualToRect(v12, v13);
  }

  return result;
}

double sub_190C9EF3C@<D0>(void *a1@<X8>)
{
  if (qword_1EAD52030 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EAD9E638;

  sub_190D52690();
  return result;
}

unint64_t sub_190C9EFF8()
{
  result = qword_1EAD62048;
  if (!qword_1EAD62048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61FF8, &qword_190E02478);
    sub_190C9F0B0();
    sub_190233640(&qword_1EAD56840, &qword_1EAD59400, &unk_190DDD240, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62048);
  }

  return result;
}

unint64_t sub_190C9F0B0()
{
  result = qword_1EAD62050;
  if (!qword_1EAD62050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD62038, &qword_190E024A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61FF0, &qword_190E02470);
    sub_190D54DE0();
    sub_190C9EDD0();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD56838, &unk_1EAD59680, &unk_190DE3D80, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62050);
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{
  v1 = (_s11ContentViewVMa_9(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_190D52D20();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  MEMORY[0x193AF7B30](v0 + v3 + v1[8]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190C9F318(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s11ContentViewVMa_9(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_190C9F398()
{
  result = qword_1EAD620B8;
  if (!qword_1EAD620B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD620A0, &qword_190E02518);
    sub_190C9F450();
    sub_190233640(&qword_1EAD620E8, &qword_1EAD620F0, &qword_190E02540, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD620B8);
  }

  return result;
}

unint64_t sub_190C9F450()
{
  result = qword_1EAD620C0;
  if (!qword_1EAD620C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD620C8, &qword_190E02530);
    sub_190C9F538(&qword_1EAD620D0, MEMORY[0x1E698F6B8], MEMORY[0x1E698F6B0]);
    sub_190233640(&qword_1EAD620D8, &qword_1EAD620E0, &qword_190E02538, MEMORY[0x1E6980450]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD620C0);
  }

  return result;
}

uint64_t sub_190C9F538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_190C9F58C()
{
  result = qword_1EAD62108;
  if (!qword_1EAD62108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62100, &qword_190E02548);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62108);
  }

  return result;
}

unint64_t sub_190C9F678()
{
  result = qword_1EAD62120;
  if (!qword_1EAD62120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62070, &qword_190E024E8);
    sub_190C9F708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62120);
  }

  return result;
}

unint64_t sub_190C9F708()
{
  result = qword_1EAD62128;
  if (!qword_1EAD62128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62130, &qword_190E02560);
    sub_190C9F58C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62100, &qword_190E02548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0, &qword_190DD7300);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62128);
  }

  return result;
}

unint64_t sub_190C9F83C()
{
  result = qword_1EAD62138;
  if (!qword_1EAD62138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62060, &qword_190E024D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62100, &qword_190E02548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55FE0, &unk_190DE27B0);
    sub_190C9F58C();
    sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0, &unk_190DE27B0, MEMORY[0x1E6981F48]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62138);
  }

  return result;
}

void sub_190C9FA24()
{
  v1 = *(_s11ContentViewVMa_9(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_190C9CF80(v2, v3);
}

void sub_190C9FB00()
{
  v1 = *(_s11ContentViewVMa_9(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_190C9BD98(v2, v3, v4);
}

double sub_190C9FB64(char **a1, uint64_t a2)
{
  sub_190D53D60();

  *&result = sub_190C9B79C(a1, a2).n128_u64[0];
  return result;
}

double sub_190C9FBE4(uint64_t *a1)
{
  _s11ContentViewVMa_9(0);

  return sub_190C9B888(a1);
}

id sub_190C9FCE8@<X0>(uint64_t a1@<X8>)
{
  v124 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v115 = *(v116 - 1);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v93 - v2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8, &qword_190E02820);
  MEMORY[0x1EEE9AC00](v121);
  v113 = &v93 - v3;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621A0, &qword_190E02728);
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v122 = &v93 - v4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621A8, &qword_190E02730);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v93 - v5;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621B0, &qword_190E02738);
  v6 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v105 = &v93 - v7;
  v8 = sub_190D526C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v111 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v93 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v93 - v14;
  v16 = sub_190D52930();
  v125 = *(v16 - 8);
  v126 = v16;
  v17 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v93 - v19;
  v117 = v1;
  v21 = *v1;
  v22 = *(*v1 + 96);
  sub_190D52750();
  v23 = v8;
  v24 = v9;
  v27 = *(v9 + 88);
  v25 = v9 + 88;
  v26 = v27;
  v28 = v27(v15, v23);
  if (v28 != *MEMORY[0x1E6995738])
  {
    (*(v24 + 8))(v15, v23);
    return (*(v6 + 56))(v124, 1, 1, v123);
  }

  v96 = v17;
  v97 = v21;
  v94 = v6;
  v101 = v24;
  v29 = *(v24 + 96);
  v110 = v28;
  v102 = v29;
  v29(v15, v23);
  v31 = v125;
  v30 = v126;
  v103 = *(v125 + 32);
  v103(v20, v15, v126);
  v32 = v118;
  v112 = v23;
  v100 = v22;
  sub_190D52750();
  v33 = v112;
  v99 = v26;
  v34 = v26(v32, v112);
  v95 = v25;
  v120 = v20;
  v98 = v24 + 96;
  if (v34 == v110)
  {
    v102(v32, v33);
    v35 = v32;
    v36 = v119;
    v103(v119, v35, v30);
    v37 = sub_190D52920();
    v41 = v36;
    v40 = (*(v31 + 8))(v36, v30);
    if (v37)
    {
      result = CKFrameworkBundle(v40);
      if (!result)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      v39 = result;
      goto LABEL_10;
    }
  }

  else
  {
    v40 = (*(v101 + 8))(v32, v33);
    v41 = v119;
  }

  result = CKFrameworkBundle(v40);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = result;
LABEL_10:
  v42 = sub_190D56ED0();
  v43 = sub_190D56ED0();
  v44 = [v39 localizedStringForKey:v42 value:0 table:v43];
  v45 = v103;
  v46 = v44;

  v47 = sub_190D56F10();
  v49 = v48;

  v127 = v47;
  v128 = v49;
  v50 = v117;
  v51 = *(v117 + 8);
  v135 = *(v117 + 24);
  v136 = v51;
  v53 = v125;
  v52 = v126;
  v54 = v125 + 16;
  (*(v125 + 16))(v41, v120, v126);
  v55 = (*(v54 + 64) + 56) & ~*(v54 + 64);
  v56 = swift_allocObject();
  v57 = *(v50 + 16);
  *(v56 + 16) = *v50;
  *(v56 + 32) = v57;
  *(v56 + 48) = *(v50 + 32);
  v45(v56 + v55, v41, v52);
  sub_190D50920();
  sub_190CA13E0(&v136, &v134);
  sub_190CA13E0(&v135, &v134);
  v58 = sub_19081E484();
  v59 = v114;
  v119 = v58;
  sub_190D56080();
  v60 = v111;
  sub_190D52750();
  v61 = v60;
  v62 = v60;
  v63 = v112;
  v64 = v99(v62, v112);
  if (v64 == v110)
  {
    v102(v61, v63);
    v45(v41, v61, v52);
    v65 = sub_190D52920();
    (*(v53 + 8))(v41, v52);
    if (v65)
    {
      v66 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    (*(v101 + 8))(v61, v63);
  }

  v66 = sub_190D55D40();
LABEL_15:
  KeyPath = swift_getKeyPath();
  v68 = v113;
  (*(v115 + 32))(v113, v59, v116);
  v69 = (v68 + *(v121 + 36));
  *v69 = KeyPath;
  v69[1] = v66;
  v70 = sub_19081E868();
  sub_190D55670();
  v71 = sub_190CA1450(v68);
  result = CKFrameworkBundle(v71);
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v72 = result;
  v73 = sub_190D56ED0();
  v74 = sub_190D56ED0();
  v75 = [v72 localizedStringForKey:v73 value:0 table:v74];

  v76 = sub_190D56F10();
  v78 = v77;

  *&v134 = v76;
  *(&v134 + 1) = v78;
  v133 = v136;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  v79 = sub_190D55FF0();
  v116 = &v93;
  MEMORY[0x1EEE9AC00](v79);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0, &unk_190DE27B0);
  v127 = v121;
  v128 = v70;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0, &unk_190DE27B0, MEMORY[0x1E6981F48]);
  v81 = v119;
  v82 = v107;
  v83 = v106;
  v84 = v122;
  sub_190D559B0();

  (*(v104 + 8))(v84, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_190DD55F0;
  v86 = v120;
  *(v85 + 32) = sub_190D52910();
  v134 = v135;
  sub_190D55FF0();
  v127 = v83;
  v128 = MEMORY[0x1E69E6158];
  v129 = v117;
  v130 = OpaqueTypeConformance2;
  v131 = v81;
  v132 = v92;
  swift_getOpaqueTypeConformance2();
  v87 = v105;
  v88 = v109;
  sub_190D55620();

  (*(v108 + 8))(v82, v88);
  v89 = v94;
  v91 = v123;
  v90 = v124;
  (*(v94 + 32))(v124, v87, v123);
  (*(v89 + 56))(v90, 0, 1, v91);
  return (*(v125 + 8))(v86, v126);
}

void sub_190CA0A48(uint64_t a1)
{
  v2 = sub_190D52930();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_190D526C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_190D52750();
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6995738])
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v10 = sub_190D52920();
    (*(v3 + 8))(v5, v2);
    if (v10)
    {
      v11 = [objc_opt_self() sharedBlockList];
      v12 = sub_190D52910();
      [v11 unblockContact_];

      return;
    }
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  v14 = *(a1 + 8);
  v13[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  sub_190D55FE0();
}

id sub_190CA0CC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v58 = a3;
  v59 = a1;
  v60 = sub_190D52930();
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110, &qword_190DDC6C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v57 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = v51 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v55 = v51 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v61 = v51 - v16;
  result = CKFrameworkBundle(v17);
  if (result)
  {
    v19 = result;
    v20 = sub_190D56ED0();
    v21 = sub_190D56ED0();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_190D56F10();
    v25 = v24;

    v63 = v23;
    v64 = v25;
    sub_190D53970();
    v26 = sub_190D539A0();
    v27 = *(v26 - 8);
    v52 = *(v27 + 56);
    v53 = v26;
    v51[1] = v27 + 56;
    v52(v8, 0, 1);
    v28 = v60;
    (*(v4 + 16))(v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v59, v60);
    v29 = *(a2 + 1);
    v65 = *(a2 + 3);
    v66 = v29;
    v30 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v31 = swift_allocObject();
    (*(v4 + 32))(v31 + v30, v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
    v32 = v31 + ((v5 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
    v33 = *(a2 + 1);
    *v32 = *a2;
    *(v32 + 16) = v33;
    *(v32 + 32) = a2[4];
    sub_190D50920();
    sub_190CA13E0(&v66, v62);
    sub_190CA13E0(&v65, v62);
    sub_19081E484();
    v34 = v61;
    v35 = sub_190D56060();
    result = CKFrameworkBundle(v35);
    if (result)
    {
      v36 = result;
      v37 = sub_190D56ED0();
      v38 = sub_190D56ED0();
      v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

      v40 = sub_190D56F10();
      v42 = v41;

      v63 = v40;
      v64 = v42;
      sub_190D53980();
      (v52)(v8, 0, 1, v53);
      v43 = v55;
      sub_190D56060();
      v44 = v54;
      v45 = *(v54 + 16);
      v46 = v56;
      v45(v56, v34, v9);
      v47 = v57;
      v45(v57, v43, v9);
      v48 = v58;
      v45(v58, v46, v9);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62160, &qword_190DDBAF0);
      v45(&v48[*(v49 + 48)], v47, v9);
      v50 = *(v44 + 8);
      v50(v43, v9);
      v50(v34, v9);
      v50(v47, v9);
      return (v50)(v46, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190CA1290(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() sharedBlockList];
  v3 = sub_190D52910();
  [v2 blockContact_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  return sub_190D55FE0();
}

void sub_190CA137C()
{
  sub_190D52930();

  sub_190CA0A48(v0 + 16);
}

uint64_t sub_190CA13E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190, &unk_190DE2710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190CA1450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8, &qword_190E02820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190CA14C0()
{
  v1 = *(sub_190D52930() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_190CA1290(v0 + v2, v3);
}

unint64_t sub_190CA154C()
{
  result = qword_1EAD621B8;
  if (!qword_1EAD621B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD621C0, &unk_190E02770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD621A8, &qword_190E02730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD621A0, &qword_190E02728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55FE0, &unk_190DE27B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD530E8, &qword_190E02820);
    sub_19081E868();
    swift_getOpaqueTypeConformance2();
    sub_19081E484();
    sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0, &unk_190DE27B0, MEMORY[0x1E6981F48]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD621B8);
  }

  return result;
}

uint64_t sub_190CA1720()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E640);
  __swift_project_value_buffer(v0, qword_1EAD9E640);
  sub_190D53010();
  return sub_190D53030();
}

id sub_190CA1794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a1;
  v49 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8, &qword_190E02820);
  MEMORY[0x1EEE9AC00](v52);
  v11 = &v40 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621C8, &qword_190E02828);
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v54 = &v40 - v12;
  result = CKFrameworkBundle(v13);
  if (result)
  {
    v15 = result;
    v16 = sub_190D56ED0();
    v17 = sub_190D56ED0();
    v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

    v19 = sub_190D56F10();
    v21 = v20;

    v55 = v19;
    v56 = v21;
    v22 = swift_allocObject();
    v22[2] = v53;
    v22[3] = a2;
    v22[4] = a3;
    v51 = sub_19081E484();
    sub_190D50920();
    sub_190D50920();
    sub_190D50920();
    sub_190D56080();
    v23 = sub_190D55D40();
    KeyPath = swift_getKeyPath();
    (*(v7 + 32))(v11, v9, v6);
    v25 = &v11[*(v52 + 36)];
    *v25 = KeyPath;
    v25[1] = v23;
    v63 = 0;
    v64 = 0xE000000000000000;
    v66 = a2;
    v67 = a3;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621D0, &qword_190E02860);
    sub_190D55FF0();
    v26 = v55;
    v27 = v56;
    v28 = v57;
    swift_getKeyPath();
    v50 = v6;
    v55 = v26;
    v56 = v27;
    v57 = v28;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621D8, &unk_190E02890);
    sub_190D56210();

    v44 = &v40;
    MEMORY[0x1EEE9AC00](v29);
    MEMORY[0x1EEE9AC00](v30);
    v40 = sub_19081E868();
    v42 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    v31 = v52;
    sub_190D55990();

    sub_190CA1450(v11);
    v44 = sub_190D549E0();
    v43 = v32;
    v41 = v33;
    v66 = a2;
    v67 = a3;
    sub_190D55FF0();
    v35 = v55;
    v34 = v56;
    v36 = v57;
    swift_getKeyPath();
    v66 = v35;
    v67 = v34;
    v68 = v36;
    sub_190D56210();

    LODWORD(v46) = v65;

    v45 = &v40;
    MEMORY[0x1EEE9AC00](v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55FE0, &unk_190DE27B0);
    v55 = v31;
    v56 = MEMORY[0x1E69E6158];
    v57 = v50;
    v58 = MEMORY[0x1E6981148];
    v59 = v40;
    v60 = v51;
    v61 = v42;
    v62 = MEMORY[0x1E6981138];
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD611C0, &qword_1EAD55FE0, &unk_190DE27B0, MEMORY[0x1E6981F48]);
    v38 = v48;
    v39 = v54;
    sub_190D55980();

    return (*(v47 + 8))(v39, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_190CA1F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EAD52038 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9E640);
  v4 = sub_190D53020();
  v5 = sub_190D576C0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_19020E000, v4, v5, "Present delete and block alert.", v6, 2u);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621D0, &qword_190E02860);
  sub_190D55FD0();
  sub_190CA2E60(1);

  return result;
}

id sub_190CA2038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110, &qword_190DDC6C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  result = CKFrameworkBundle(v9);
  if (result)
  {
    v11 = result;
    v12 = sub_190D56ED0();
    v13 = sub_190D56ED0();
    v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

    v15 = sub_190D56F10();
    v17 = v16;

    v20[0] = v15;
    v20[1] = v17;
    sub_190D53970();
    v18 = sub_190D539A0();
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    sub_19081E484();
    sub_190D50920();
    sub_190D50920();
    sub_190D50920();
    return sub_190D56060();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_190CA2234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD621D0, &qword_190E02860);
  sub_190D55FD0();
  if (*(v13 + 18) == 1)
  {
    *(v13 + 18) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CA2C58();
    sub_190D51C10();
  }

  v5 = [*(a1 + 16) chat];
  if (v5)
  {
    v7 = v5;
    v8 = [v5 hasRecipientsFollowingLocation];

    if (v8)
    {
      if (qword_1EAD52038 != -1)
      {
        swift_once();
      }

      v9 = sub_190D53040();
      __swift_project_value_buffer(v9, qword_1EAD9E640);
      v10 = sub_190D53020();
      v11 = sub_190D576C0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_19020E000, v10, v11, "Present stop sharing location alert.", v12, 2u);
        MEMORY[0x193AF7A40](v12, -1, -1);
      }

      sub_190D55FD0();
      sub_190CA310C(1);
    }
  }

  return result;
}

id sub_190CA2480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a2 = result;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190CA2580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v51 = a2;
  v52 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110, &qword_190DDC6C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v46 - v17;
  result = CKFrameworkBundle(v18);
  if (result)
  {
    v20 = result;
    v47 = a4;
    v21 = sub_190D56ED0();
    v22 = sub_190D56ED0();
    v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

    v24 = sub_190D56F10();
    v26 = v25;

    v54 = v24;
    v55 = v26;
    sub_190D53970();
    v27 = sub_190D539A0();
    v46 = *(*(v27 - 8) + 56);
    v46(v8, 0, 1, v27);
    v28 = swift_allocObject();
    v29 = v51;
    v28[2] = a1;
    v28[3] = v29;
    v28[4] = v52;
    sub_19081E484();
    sub_190D50920();
    sub_190D50920();
    sub_190D50920();
    v30 = sub_190D56060();
    result = CKFrameworkBundle(v30);
    if (result)
    {
      v31 = result;
      v32 = sub_190D56ED0();
      v33 = sub_190D56ED0();
      v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

      v35 = sub_190D56F10();
      v37 = v36;

      v54 = v35;
      v55 = v37;
      v46(v8, 1, 1, v27);
      v38 = v48;
      sub_190D56060();
      v39 = *(v10 + 16);
      v40 = v49;
      v41 = v53;
      v39(v49, v53, v9);
      v42 = v50;
      v39(v50, v38, v9);
      v43 = v47;
      v39(v47, v40, v9);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62160, &qword_190DDBAF0);
      v39(&v43[*(v44 + 48)], v42, v9);
      v45 = *(v10 + 8);
      v45(v38, v9);
      v45(v41, v9);
      v45(v42, v9);
      return (v45)(v40, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_190CA2A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    sub_19081E484();
    result = sub_190D555F0();
    *a2 = result;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9 & 1;
    *(a2 + 24) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_190CA2B84()
{
  v1 = *(*(*(*(v0 + 16) + 48) + 24) + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15LocationSection14ActionHandlers_stopSharingLocation);
  v2 = sub_190D50920();
  v1(v2);

  return result;
}

uint64_t objectdestroyTm_50()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_190CA2C58()
{
  result = qword_1EAD621E0;
  if (!qword_1EAD621E0)
  {
    _s24DeletionAlertCoordinatorCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD621E0);
  }

  return result;
}

void sub_190CA2CB0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  *a2 = *(v3 + 16);
}

void sub_190CA2D50(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  *a2 = *(v3 + 17);
}

uint64_t sub_190CA2DF0()
{
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  return *(v0 + 16);
}

void sub_190CA2E60(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
    swift_getKeyPath();
    sub_190CA2C58();
    sub_190D51C20();

    if ((*(v1 + 16) & 1) == 0)
    {
      swift_getKeyPath();
      sub_190D51C20();

      if ((*(v1 + 17) & 1) == 0)
      {
        sub_190CA3540();
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CA2C58();
    sub_190D51C10();
  }
}

void sub_190CA2FCC(uint64_t a1, char a2)
{
  *(a1 + 16) = a2;
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  if ((*(a1 + 16) & 1) == 0)
  {
    swift_getKeyPath();
    sub_190D51C20();

    if (*(a1 + 17) != 1)
    {
      sub_190CA3540();
    }
  }
}

uint64_t sub_190CA309C()
{
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  return *(v0 + 17);
}

void sub_190CA310C(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
    swift_getKeyPath();
    sub_190CA2C58();
    sub_190D51C20();

    if ((*(v1 + 16) & 1) == 0)
    {
      swift_getKeyPath();
      sub_190D51C20();

      if ((*(v1 + 17) & 1) == 0)
      {
        sub_190CA3540();
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CA2C58();
    sub_190D51C10();
  }
}

void sub_190CA3278(uint64_t a1, char a2)
{
  *(a1 + 17) = a2;
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  if ((*(a1 + 16) & 1) == 0)
  {
    swift_getKeyPath();
    sub_190D51C20();

    if (*(a1 + 17) != 1)
    {
      sub_190CA3540();
    }
  }
}

uint64_t sub_190CA3348()
{
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  return *(v0 + 18);
}

void sub_190CA33B8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CA2C58();
  sub_190D51C20();

  *a2 = *(v3 + 18);
}

void sub_190CA3458(char a1)
{
  if (*(v1 + 18) == (a1 & 1))
  {
    *(v1 + 18) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190CA2C58();
    sub_190D51C10();
  }
}

double sub_190CA3540()
{
  v1 = v0;
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = v0;
  sub_190CA2C58();
  sub_190D51C20();

  if (v0[18])
  {
    swift_getKeyPath();
    v28 = v0;
    sub_190D51C20();

    if ((v0[17] & 1) != 0 || (swift_getKeyPath(), v28 = v0, sub_190D51C20(), , v0[16] == 1))
    {
      if (qword_1EAD51C60 != -1)
      {
        swift_once();
      }

      v6 = sub_190D53040();
      __swift_project_value_buffer(v6, qword_1EAD9DFA0);
      swift_retain_n();
      v7 = sub_190D53020();
      v8 = sub_190D576C0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109376;
        swift_getKeyPath();
        v28 = v0;
        sub_190D51C20();

        *(v9 + 4) = v0[16];

        *(v9 + 8) = 1024;
        swift_getKeyPath();
        v28 = v0;
        sub_190D51C20();

        *(v9 + 10) = v0[17];

        _os_log_impl(&dword_19020E000, v7, v8, "Currently presenting an alert, do not delete the conversation. presentDeleteAndBlockAlert: %{BOOL}d, presentStopSharingLocationAlert: %{BOOL}d", v9, 0xEu);
        MEMORY[0x193AF7A40](v9, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1EAD51C60 != -1)
      {
        swift_once();
      }

      v15 = sub_190D53040();
      __swift_project_value_buffer(v15, qword_1EAD9DFA0);
      v16 = sub_190D53020();
      v17 = sub_190D576C0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_19020E000, v16, v17, "Deleting conversation", v18, 2u);
        MEMORY[0x193AF7A40](v18, -1, -1);
      }

      v19 = *(v1 + 3);
      [v19 updateDeletingIncomingMessages_];
      v20 = [objc_opt_self() sharedConversationList];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_190DD55F0;
      *(v21 + 32) = v19;
      sub_190ADD800();
      v22 = v19;
      v23 = sub_190D57160();

      sub_190D517F0();
      v24 = sub_190D51780();
      (*(v3 + 8))(v5, v2);
      [v20 recoverableDeleteForConversations:v23 deleteDate:v24 synchronousQuery:0 completionHandler:0];

      v25 = *(v1 + 4);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong detailsCoordinatorDidRequestNavigationToConversationList_];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (qword_1EAD51C60 != -1)
    {
      swift_once();
    }

    v11 = sub_190D53040();
    __swift_project_value_buffer(v11, qword_1EAD9DFA0);
    v12 = sub_190D53020();
    v13 = sub_190D576C0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v12, v13, "Dismissing deletion alert without deleting the conversation.", v14, 2u);
      MEMORY[0x193AF7A40](v14, -1, -1);
    }
  }

  return result;
}

uint64_t sub_190CA3AB8()
{
  v1 = OBJC_IVAR____TtCVV7ChatKit18DetailsInfoTabView20DeleteAndBlockButton24DeletionAlertCoordinator___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s24DeletionAlertCoordinatorCMa(uint64_t a1)
{
  result = qword_1EAD621F0;
  if (!qword_1EAD621F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190CA3BB8(uint64_t a1, __n128 a2)
{
  result = sub_190D51C60();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_190CA3CB8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___CKSuggestedActionsBalloonView_actions] = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v10 = OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v28.receiver = v4;
  v28.super_class = type metadata accessor for SuggestedActionsBalloonView();
  v11 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel;
  v13 = *&v11[OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel];
  v14 = objc_opt_self();
  v15 = *MEMORY[0x1E69DDD40];
  v16 = v11;
  v17 = v13;
  v18 = [v14 preferredFontForTextStyle_];
  [v17 setFont_];

  [*&v11[v12] setLineBreakMode_];
  [*&v11[v12] setNumberOfLines_];
  v19 = OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel;
  v20 = *MEMORY[0x1E69DDD80];
  v21 = *&v16[OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel];
  v22 = [v14 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = *&v16[v19];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 grayColor];
  [v25 setTextColor_];

  [*&v16[v19] setLineBreakMode_];
  [*&v16[v19] setNumberOfLines_];
  [v16 addSubview_];
  [v16 addSubview_];

  return v16;
}

void sub_190CA4008(unint64_t a1, uint64_t a2, unint64_t a3)
{
  *&v3[OBJC_IVAR___CKSuggestedActionsBalloonView_actions] = a1;
  sub_190D52690();

  if (a1 >> 62)
  {
    if (sub_190D581C0())
    {
      v7 = sub_190D581C0();
LABEL_3:
      v8 = *&v3[OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040, &unk_190DDF780);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_190DD1D90;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_19081EA10();
      if (a3)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }

      v11 = 0xE000000000000000;
      if (a3)
      {
        v11 = a3;
      }

      *(v9 + 32) = v10;
      *(v9 + 40) = v11;
      v12 = sub_190D52690();
      v13 = CKFrameworkBundle(v12);
      if (!v13)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v14 = v13;
      v15 = sub_190D56ED0();
      v16 = sub_190D56ED0();
      v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

      sub_190D56F10();
      sub_190D56EE0();

      v18 = sub_190D56ED0();

      [v8 setText_];

      v19 = *&v3[OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel];
      v21 = CKFrameworkBundle(v20);
      v22 = v21;
      if (v7 == 1)
      {
        if (!v21)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else if (!v21)
      {
LABEL_44:
        __break(1u);
        return;
      }

      v23 = sub_190D56ED0();
      v24 = sub_190D56ED0();
      v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

      if (!v25)
      {
        sub_190D56F10();
        v25 = sub_190D56ED0();
      }

      [v19 setText_];

      v26 = [objc_opt_self() sharedBehaviors];
      if (!v26)
      {
        goto LABEL_40;
      }

      v27 = v26;
      v28 = [v26 theme];

      if (!v28)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v29 = [v28 balloonColorsForColorType_];

      if (!v29)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      sub_1902495E8();
      v30 = sub_190D57180();

      if (v30 >> 62)
      {
        v31 = sub_190D581C0();
        if (v31)
        {
LABEL_20:
          v32 = __OFSUB__(v31, 1);
          v33 = v31 - 1;
          if (v32)
          {
            __break(1u);
          }

          else if ((v30 & 0xC000000000000001) == 0)
          {
            if ((v33 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v33 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v34 = *(v30 + 8 * v33 + 32);
LABEL_25:
              v38 = v34;
LABEL_31:

              [v3 setBackgroundColor_];
              goto LABEL_32;
            }

            __break(1u);
            goto LABEL_39;
          }

          v34 = MEMORY[0x193AF3B90](v33, v30);
          goto LABEL_25;
        }
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v31)
        {
          goto LABEL_20;
        }
      }

      v38 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v35 = *&v3[OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel];
  v36 = sub_190D56ED0();
  [v35 setText_];

  v37 = *&v3[OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel];
  v38 = sub_190D56ED0();
  [v37 setText_];
LABEL_32:
}

id sub_190CA45C8(uint64_t a1, uint64_t a2)
{
  v19.receiver = v2;
  v19.super_class = type metadata accessor for SuggestedActionsBalloonView();
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  [v2 bounds];
  [v2 alignmentRectForFrame_];
  x = v20.origin.x;
  y = v20.origin.y;
  v5 = CGRectGetWidth(v20) + -8.0;
  v6 = *&v2[OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel];
  v7 = [v6 attributedText];
  v8 = 0.0;
  v9 = 0.0;
  if (v7)
  {
    v10 = v7;
    [v7 boundingRectWithSize:3 options:0 context:{v5, INFINITY}];
    v9 = v11;
  }

  v12 = *&v2[OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel];
  v13 = [v12 attributedText];
  if (v13)
  {
    v14 = v13;
    [v13 boundingRectWithSize:3 options:0 context:{v5, INFINITY}];
    v8 = v15;
  }

  v16 = x + 4.0;
  [v6 setFrame_];
  [v6 frame];
  return [v12 setFrame_];
}

id sub_190CA47A4(void *a1, uint64_t a2)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for SuggestedActionsBalloonView();
  objc_msgSendSuper2(&v13, sel_configureForMessagePart_, a1);
  if (!a1)
  {
    return [v2 setNeedsLayout];
  }

  v4 = a1;
  result = [v4 suggestedActionsList];
  if (result)
  {
    v6 = result;
    sub_190D57620();
    v7 = sub_190D57180();

    result = [v4 IMChatItem];
    if (result)
    {
      v8 = result;
      v9 = [result handle];

      if (v9)
      {
        v10 = [v9 brand];

        if (v10)
        {
          v11 = [v10 name];

          v10 = sub_190D56F10();
          v9 = v12;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      sub_190CA4008(v7, v10, v9);

      return [v2 setNeedsLayout];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id SuggestedActionsBalloonView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SuggestedActionsBalloonView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_190CA4A1C(double a1, double a2)
{
  v4 = [*&v2[OBJC_IVAR___CKSuggestedActionsBalloonView_titleLabel] attributedText];
  if (v4)
  {
    v5 = v4;
    [v4 boundingRectWithSize:3 options:0 context:{260.0, INFINITY}];
  }

  v6 = [*&v2[OBJC_IVAR___CKSuggestedActionsBalloonView_subtitleLabel] attributedText];
  if (v6)
  {
    v7 = v6;
    [v6 boundingRectWithSize:3 options:0 context:{260.0, INFINITY}];
  }

  [v2 suggestedActionsMenuAdditionalHeightForBalloonSize_];
  return 268.0;
}

uint64_t sub_190CA4B78()
{
  v1 = [v0 guid];
  if (!v1)
  {
    sub_190D56F10();
    v1 = sub_190D56ED0();
  }

  IMComponentsFromChatGUID();

  return 0;
}

id sub_190CA4C30(void *a1)
{
  v3 = [objc_opt_self() sharedRegistry];
  v4 = [a1 guid];
  if (!v4)
  {
    sub_190D56F10();
    v4 = sub_190D56ED0();
  }

  v5 = [v3 _cachedChatWithGUID_];

  if (!v5)
  {
    return 0;
  }

  v6 = [v1 conversationForExistingChat_];

  return v6;
}

uint64_t sub_190CA4D10(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedConversationList];
  v5 = sub_190CA4C30(a1);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70, &qword_190DD63D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1D90;
    *(inited + 32) = a2;
    v7 = sub_19021E69C(inited);
    swift_setDeallocating();
    CKConversation.satisfies(filterModes:)(v7);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_190CA4DE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62220, &qword_190E02A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD9C20;
  v1 = swift_allocObject();
  *(v1 + 16) = 10;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_190CA5310;
  *(v2 + 24) = v1;
  *(inited + 32) = 10;
  *(inited + 40) = sub_190CA5318;
  *(inited + 48) = v2;
  *(inited + 56) = 26;
  *(inited + 64) = sub_190CA4F5C;
  *(inited + 72) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 7;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_190CA5358;
  *(v4 + 24) = v3;
  *(inited + 80) = 7;
  *(inited + 88) = sub_190CA5354;
  *(inited + 96) = v4;
  v5 = sub_19082419C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD62228, &qword_190E02A38);
  swift_arrayDestroy();
  off_1EAD44F48 = v5;
}

uint64_t sub_190CA4F5C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_190CA4F8C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_190CA4F8C()
{
  sub_190CA4B78();
  if (!v0)
  {
    return 0;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();

    v4 = [v2 draftForConversationWithChatIdentifier_];

    if (v4)
    {

      return 1;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t CKUnreadCountFilterController.implementsFilterMode(_:)()
{
  if (qword_1EAD44F40 != -1)
  {
    swift_once();
  }

  if (*(off_1EAD44F48 + 2))
  {
    sub_1908789E8();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

CKUnreadCountFilterController __swiftcall CKUnreadCountFilterController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.super._excludes = v4;
  result.super._refreshHandler = v3;
  result.super.super.isa = v1;
  *&result.super._filteredByFocus = v2;
  result.super._filtersMutedChats = BYTE2(v2);
  return result;
}

uint64_t _sSo29CKUnreadCountFilterControllerC7ChatKitE12unreadReport_09satisfiesC4ModeSbSo08IMUnreadbH0C_So018IMConversationListcJ0VtF_0(uint64_t a1)
{
  if (qword_1EAD44F40 != -1)
  {
    swift_once();
  }

  v2 = off_1EAD44F48;
  if (!*(off_1EAD44F48 + 2))
  {
    return 0;
  }

  v3 = sub_1908789E8();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2[7] + 16 * v3);
  v8 = a1;
  sub_190D50920();
  v5(&v7, &v8);

  return v7;
}

unint64_t type metadata accessor for CKUnreadCountFilterController()
{
  result = qword_1EAD62218;
  if (!qword_1EAD62218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD62218);
  }

  return result;
}

uint64_t sub_190CA531C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

id sub_190CA535C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction);
  if (*(v2 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction + 8))
  {
    if (*(v2 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction + 8) == 1)
    {
      v7 = v6;
      v8 = 0;
    }

    else
    {
      sub_1902188FC(0, &qword_1EAD464F0, 0x1E69DC628);
      v20 = swift_allocObject();
      v20[2] = a1;
      v20[3] = a2;
      v20[4] = v6;
      sub_190D50920();
      v39 = 0;
      v40 = 0;
      v42 = sub_190CA5938;
      v43 = v20;
      v41 = 0;
      v8 = sub_190D57DC0();
      v6 = 0;
    }
  }

  else
  {
    v9 = v6[2];
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v45 = v2;
      v47 = MEMORY[0x1E69E7CC0];
      sub_190D52690();
      sub_190D58390();
      sub_1902188FC(0, &qword_1EAD464F0, 0x1E69DC628);
      v44 = v6;
      v11 = v6 + 6;
      do
      {
        v12 = *(v11 - 2);
        v13 = *(v11 - 1);
        v14 = swift_allocObject();
        v15 = *v11;
        v16 = v11[1];
        v11 += 3;
        v46 = v16;
        *(v14 + 16) = a1;
        *(v14 + 24) = a2;
        *(v14 + 32) = v12;
        *(v14 + 40) = v13;
        *(v14 + 48) = v15;
        *(v14 + 64) = v16;
        v17 = v15;
        sub_190D50920();
        swift_bridgeObjectRetain_n();
        v18 = v17;
        sub_19029063C(v46, *(&v46 + 1));
        v40 = 0;
        v42 = sub_190CA5908;
        v43 = v14;
        v41 = 0;
        sub_190D57DC0();
        sub_190D58360();
        sub_190D583B0();
        sub_190D583C0();
        sub_190D58370();
        --v9;
      }

      while (v9);
      sub_190A7E174(v44, 0);
      v10 = v47;
      v3 = v45;
    }

    if (v10 >> 62)
    {
      sub_1902188FC(0, &unk_1EAD45090, 0x1E69DCC78);
      sub_190D52690();
      v19 = sub_190D58530();
    }

    else
    {
      sub_190D52690();
      sub_190D58770();
      sub_1902188FC(0, &unk_1EAD45090, 0x1E69DCC78);
      v19 = v10;
    }

    sub_1902188FC(0, &unk_1EAD44ED0, 0x1E69DCC60);
    v39 = v19;
    v6 = sub_190D57C90();
    v8 = 0;
  }

  v21 = *(v3 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content);
  v22 = *(v3 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content + 8);
  if (*(v3 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content + 16) > 1u)
  {
    if (*(v3 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content + 16) == 2)
    {
      sub_1902188FC(0, &qword_1EAD46690, 0x1E69DC708);
      v29 = v6;
      v30 = v8;
      v25 = sub_190D57700();
      goto LABEL_22;
    }

    sub_1902188FC(0, &qword_1EAD46690, 0x1E69DC708);
    sub_190A7E124(v21, v22, 3);
    v34 = v6;
    v35 = v8;
    v25 = sub_190D57750();
    [v25 setCustomView_];
    v36 = swift_dynamicCastObjCProtocolConditional();
    if (v36)
    {
      [v36 setParentBarButtonItem_];
    }

    v26 = v21;
    v27 = v22;
    v28 = 3;
  }

  else
  {
    if (*(v3 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content + 16))
    {
      sub_1902188FC(0, &qword_1EAD46690, 0x1E69DC708);
      sub_190A7E124(v21, v22, 1);
      v31 = v6;
      v32 = v8;
      v25 = sub_190D57750();
      v33 = sub_190D56ED0();
      [v25 setTitle_];

      goto LABEL_22;
    }

    sub_1902188FC(0, &qword_1EAD46690, 0x1E69DC708);
    sub_190A7E124(v21, v22, 0);
    v23 = v6;
    v24 = v8;
    v25 = sub_190D57750();
    [v25 setImage_];
    v26 = v21;
    v27 = v22;
    v28 = 0;
  }

  sub_190A7E14C(v26, v27, v28);
LABEL_22:
  if (*(v3 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier + 8))
  {
    v37 = sub_190D56ED0();
  }

  else
  {
    v37 = 0;
  }

  [v25 setIdentifier_];

  if (qword_1EAD51B70 != -1)
  {
    swift_once();
  }

  [v25 setHidesSharedBackground_];

  return v25;
}

id sub_190CA5A64()
{
  v1 = OBJC_IVAR___CKTapbackPickerCollectionViewLayout____lazy_storage___dynamicAnimator;
  v2 = *(v0 + OBJC_IVAR___CKTapbackPickerCollectionViewLayout____lazy_storage___dynamicAnimator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___CKTapbackPickerCollectionViewLayout____lazy_storage___dynamicAnimator);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC9C8]) initWithCollectionViewLayout_];
    [v4 _setAnimatorIntegralization_];
    [v4 setSettlingLinearVelocityThreshold_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_190CA5B08(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = sub_190CA73FC() * 44.0;
    v6 = sub_190CA7A78();
    v7 = v5 + v6 + v6;
    v8 = sub_190CA73FC() * 44.0;
    v9 = sub_190CA8000();
    v10 = v8 + v9 + v9;
    v11 = objc_opt_self();
    v12 = [v11 absoluteDimension_];
    v13 = [v11 absoluteDimension_];
    v14 = [objc_opt_self() sizeWithWidthDimension:v13 heightDimension:v12];
    v15 = [objc_opt_self() itemWithLayoutSize_];
    v16 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_190DD55F0;
    *(v17 + 32) = v15;
    sub_1902188FC(0, &qword_1EAD44FB8, 0x1E6995578);
    v18 = v15;
    v19 = sub_190D57160();

    v20 = [v16 horizontalGroupWithLayoutSize:v14 subitems:v19];

    v21 = [objc_opt_self() sectionWithGroup_];
    v22 = sub_190CA7A78();
    v23 = v22 - sub_190CA8000();
    v24 = 0.0;
    if (v4)
    {
      v25 = v23;
    }

    else
    {
      swift_getObjectType();
      v26 = sub_190850C40(0);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v25 = 0.0;
      if (Strong)
      {
        v28 = *(a3 + 24);
        ObjectType = swift_getObjectType();
        (*(v28 + 16))(v23 + v10 * v26, 0, ObjectType, v28);
        swift_unknownObjectRelease();
        v25 = 0.0;
      }

      v24 = v23;
    }

    [v21 setContentInsets_];

    return v21;
  }

  return result;
}

void sub_190CA5E7C()
{
  v1 = v0;
  v30 = sub_190D51C00();
  v2 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!UIAccessibilityIsReduceMotionEnabled() && !UIAccessibilityIsVoiceOverRunning())
  {
    [v1 collectionViewContentSize];
    v6 = v5;
    v8 = v7;
    v9 = type metadata accessor for TapbackPickerCollectionViewLayout();
    v31.receiver = v1;
    v31.super_class = v9;
    v10 = objc_msgSendSuper2(&v31, sel_layoutAttributesForElementsInRect_, 0.0, 0.0, v6, v8);
    if (v10)
    {
      v11 = v10;
      sub_1902188FC(0, &qword_1EAD44F20, 0x1E69DC858);
      v12 = sub_190D57180();

      v13 = v12;
      if (v12 >> 62)
      {
        v26 = sub_190D581C0();
        v13 = v12;
        v14 = v26;
        if (v26)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_6:
          if (v14 < 1)
          {
            __break(1u);
            return;
          }

          v15 = 0;
          v28 = OBJC_IVAR___CKTapbackPickerCollectionViewLayout____lazy_storage___dynamicAnimator;
          v29 = v13 & 0xC000000000000001;
          v16 = (v2 + 8);
          v17 = v13;
          do
          {
            if (v29)
            {
              v18 = MEMORY[0x193AF3B90](v15);
            }

            else
            {
              v18 = *(v13 + 8 * v15 + 32);
            }

            v19 = v18;
            v20 = [v18 indexPath];
            sub_190D51BC0();

            v21 = sub_190CA5A64();
            v22 = sub_190D51BB0();
            v23 = [v21 layoutAttributesForCellAtIndexPath_];

            if (!v23)
            {
              v23 = v19;
              [v23 center];
              v19 = [objc_allocWithZone(MEMORY[0x1E69DC6C8]) initWithItem:v23 attachedToAnchor:{v24, v25}];

              [v19 setLength_];
              [v19 setFrequency_];
              [v19 setDamping_];
              [*&v1[v28] addBehavior_];
            }

            ++v15;

            (*v16)(v4, v30);
            v13 = v17;
          }

          while (v14 != v15);
        }
      }
    }
  }
}

void sub_190CA61B0()
{
  if (UIAccessibilityIsReduceMotionEnabled() || UIAccessibilityIsVoiceOverRunning())
  {
    return;
  }

  v0 = sub_190CA5A64();
  v1 = [v0 behaviors];

  sub_1902188FC(0, &qword_1EAD45050, 0x1E69DC9D0);
  v2 = sub_190D57180();

  v26 = MEMORY[0x1E69E7CC0];
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        v8 = v6;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x193AF3B90](v8, v2);
          }

          else
          {
            if (v8 >= *(v3 + 16))
            {
              goto LABEL_45;
            }

            v9 = *(v2 + 8 * v8 + 32);
          }

          v10 = v9;
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v8;
          if (v6 == i)
          {
            goto LABEL_22;
          }
        }

        MEMORY[0x193AF29E0]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v7 = v26;
      }

      while (v6 != i);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

LABEL_22:

    v26 = v5;
    v3 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      break;
    }

    v2 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_50;
    }

LABEL_24:
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v13 = v11;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193AF3B90](v13, v7);
      }

      else
      {
        if (v13 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v14 = *(v7 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = [v14 items];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62250, &unk_190DD76B0);
      v17 = sub_190D57180();

      if (v17 >> 62)
      {
        if (sub_190D581C0())
        {
LABEL_36:
          if ((v17 & 0xC000000000000001) != 0)
          {
            MEMORY[0x193AF3B90](0, v17);
          }

          else
          {
            if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_66;
            }

            swift_unknownObjectRetain();
          }

          MEMORY[0x193AF29E0]();
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();
          v12 = v26;
          if (v11 != v2)
          {
            goto LABEL_25;
          }

          goto LABEL_51;
        }
      }

      else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      ++v13;
      if (v11 == v2)
      {
        goto LABEL_51;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  v2 = sub_190D581C0();
  if (v2)
  {
    goto LABEL_24;
  }

LABEL_50:
  v12 = MEMORY[0x1E69E7CC0];
LABEL_51:

  if (v12 >> 62)
  {
    v18 = sub_190D581C0();
    if (!v18)
    {
      goto LABEL_62;
    }

LABEL_53:
    if (v18 >= 1)
    {
      v19 = 0;
      v20 = OBJC_IVAR___CKTapbackPickerCollectionViewLayout____lazy_storage___dynamicAnimator;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x193AF3B90](v19, v12);
        }

        else
        {
          v21 = *(v12 + 8 * v19 + 32);
          swift_unknownObjectRetain();
        }

        [v21 bounds];
        MidY = CGRectGetMidY(v28);
        [v21 center];
        if (vabdd_f64(MidY, v23) > 0.01)
        {
          [v21 setCenter_];
          v24 = *(v25 + v20);
          [v24 updateItemUsingCurrentState_];
        }

        ++v19;
        swift_unknownObjectRelease();
      }

      while (v18 != v19);
      goto LABEL_62;
    }

    __break(1u);
LABEL_66:
    __break(1u);
  }

  else
  {
    v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_53;
    }

LABEL_62:
  }
}

id sub_190CA6880(double a1, double a2, double a3, double a4)
{
  if (UIAccessibilityIsReduceMotionEnabled() || UIAccessibilityIsVoiceOverRunning())
  {
    v18.receiver = v4;
    v18.super_class = type metadata accessor for TapbackPickerCollectionViewLayout();
    result = objc_msgSendSuper2(&v18, sel_layoutAttributesForElementsInRect_, a1, a2, a3, a4);
    if (result)
    {
      v10 = result;
      sub_1902188FC(0, &qword_1EAD44F20, 0x1E69DC858);
      v11 = sub_190D57180();

      return v11;
    }
  }

  else
  {
    v12 = sub_190CA5A64();
    v13 = [v12 itemsInRect_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62250, &unk_190DD76B0);
    v14 = sub_190D57180();

    if (v14 >> 62)
    {
      sub_1902188FC(0, &qword_1EAD44F20, 0x1E69DC858);
      sub_190D52690();
      v11 = sub_190D58530();
      swift_bridgeObjectRelease_n();
      return v11;
    }

    v15 = v14 & 0xFFFFFFFFFFFFFF8;
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &qword_1EAD44F20, 0x1E69DC858);
    if (swift_dynamicCastMetatype() || (v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_8:

      return v14;
    }

    else
    {
      v17 = v15 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v17 += 8;
        if (!--v16)
        {
          goto LABEL_8;
        }
      }

      return (v15 | 1);
    }
  }

  return result;
}

void sub_190CA6B48(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    return;
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    return;
  }

  v9 = [v4 collectionView];
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = [v10 panGestureRecognizer];
  v12 = v10;
  [v12 bounds];
  v14 = v13;
  v40 = v11;
  v41 = v12;
  if ([v11 state] == 1 || objc_msgSend(v11, sel_state, v11) == 2 || objc_msgSend(v11, sel_state) == 3)
  {

    [v11 locationInView_];
    v16 = v15;
    v17 = &v4[OBJC_IVAR___CKTapbackPickerCollectionViewLayout_lastPanGestureRecognizerPositionInCollectionViewCoordinates];
    *v17 = v15;
    *(v17 + 1) = v18;
  }

  else if ([v12 isDecelerating])
  {

    v16 = *&v4[OBJC_IVAR___CKTapbackPickerCollectionViewLayout_lastPanGestureRecognizerPositionInCollectionViewCoordinates];
  }

  else if (v14 >= a1)
  {
    [v12 contentSize];
    v16 = v39;

    v46.origin.x = a1;
    v46.origin.y = a2;
    v46.size.width = a3;
    v46.size.height = a4;
    CGRectGetMidY(v46);
  }

  else
  {

    v45.origin.x = a1;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    CGRectGetMidY(v45);
    v16 = 0.0;
  }

  v19 = sub_190CA5A64();
  v20 = [v19 behaviors];
  sub_1902188FC(0, &qword_1EAD45050, 0x1E69DC9D0);
  v21 = sub_190D57180();

  if (v21 >> 62)
  {
LABEL_36:
    v22 = sub_190D581C0();
    if (v22)
    {
      goto LABEL_10;
    }

LABEL_37:

    return;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_37;
  }

LABEL_10:
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = a1 - v14;
    a1 = 0.8;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x193AF3B90](v23, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v23 + 32);
      }

      v26 = v25;
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (!v27)
      {
        goto LABEL_14;
      }

      v28 = v27;
      [v27 anchorPoint];
      v14 = v29;
      v30 = [v28 items];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62250, &unk_190DD76B0);
      v31 = sub_190D57180();

      if (v31 >> 62)
      {
        if (!sub_190D581C0())
        {
LABEL_13:

          goto LABEL_14;
        }
      }

      else if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      if ((v31 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x193AF3B90](0, v31);
      }

      else
      {
        if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v32 = *(v31 + 32);
        swift_unknownObjectRetain();
      }

      v33 = vabdd_f64(v16, v14);

      [v32 center];
      v35 = v24 * (v33 / 1600.0) + v34;
      [v32 bounds];
      MidY = CGRectGetMidY(v43);
      [v41 bounds];
      Width = CGRectGetWidth(v44);
      v38 = v33 / (Width + Width);
      if (v38 > 1.0)
      {
        v38 = 1.0;
      }

      [v28 setFrequency_];
      [v28 setDamping_];
      [v32 setCenter_];
      [v19 updateItemUsingCurrentState_];
      swift_unknownObjectRelease();
LABEL_14:
      ++v23;

      if (v22 == v23)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
}

double sub_190CA70AC(unsigned __int8 *a1, double a2)
{
  v4 = *a1;
  v5 = [v2 collectionView];
  v6 = 0.0;
  if (!v5)
  {
    return v6;
  }

  v7 = v5;
  [v5 contentOffset];
  v9 = v8;
  [v7 bounds];
  v11 = v10;
  if (v4)
  {

    v6 = 1.0;
    v12 = 0.0;
    if (v9 >= a2)
    {
      return v6;
    }
  }

  else
  {
    v13 = &v2[OBJC_IVAR___CKTapbackPickerCollectionViewLayout_tapbackPickerLayoutDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      v16 = (*(v14 + 32))(ObjectType, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 6.0;
    }

    v17 = a2 / v16;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v13 + 1);
      v19 = swift_getObjectType();
      v20 = (*(v18 + 56))(v19, v18);
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 1.5;
    }

    v12 = v17 * v20;
    if (v17 * v20 + a2 <= v9)
    {
      return v6;
    }
  }

  v21 = v12 + a2;
  if (v9 <= v21 - v11)
  {
    v24 = v4 == 0;
    v23 = 1.0;
    v22 = 0.0;
  }

  else
  {
    v22 = 0.0;
    if (v11 > 0.0)
    {
      v22 = 1.0 - (v21 - v9) / v11;
    }

    v23 = 1.0 - v22;
    v24 = v4 == 0;
  }

  if (v24)
  {
    return v23;
  }

  else
  {
    return v22;
  }
}

id sub_190CA7358(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TapbackPickerCollectionViewLayout();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_190CA73FC()
{
  v0 = sub_190CAF9B0();
  v1 = sub_190D56F10();
  v3 = v2;
  if (v1 == sub_190D56F10() && v3 == v4)
  {

    return 0.88;
  }

  v6 = sub_190D58760();

  if (v6)
  {

    return 0.88;
  }

  v8 = sub_190D56F10();
  v10 = v9;
  if (v8 == sub_190D56F10() && v10 == v11)
  {

    return 0.92;
  }

  v13 = sub_190D58760();

  if (v13)
  {

    return 0.92;
  }

  v14 = sub_190D56F10();
  v16 = v15;
  if (v14 == sub_190D56F10() && v16 == v17)
  {

    return 0.96;
  }

  v18 = sub_190D58760();

  if (v18)
  {

    return 0.96;
  }

  v19 = sub_190D56F10();
  v21 = v20;
  if (v19 == sub_190D56F10() && v21 == v22)
  {

    return 1.0;
  }

  v23 = sub_190D58760();

  if (v23)
  {

    return 1.0;
  }

  v24 = sub_190D56F10();
  v26 = v25;
  if (v24 == sub_190D56F10() && v26 == v27)
  {

    return 1.07;
  }

  v28 = sub_190D58760();

  if (v28)
  {

    return 1.07;
  }

  v29 = sub_190D56F10();
  v31 = v30;
  if (v29 == sub_190D56F10() && v31 == v32)
  {

    return 1.11;
  }

  v33 = sub_190D58760();

  if (v33)
  {

    return 1.11;
  }

  v34 = sub_190D56F10();
  v36 = v35;
  if (v34 == sub_190D56F10() && v36 == v37)
  {

    return 1.15;
  }

  v38 = sub_190D58760();

  if (v38)
  {

    return 1.15;
  }

  v39 = sub_190D56F10();
  v41 = v40;
  if (v39 == sub_190D56F10() && v41 == v42)
  {

    return 1.18;
  }

  v43 = sub_190D58760();

  if (v43)
  {

    return 1.18;
  }

  v44 = sub_190D56F10();
  v46 = v45;
  if (v44 == sub_190D56F10() && v46 == v47)
  {

    return 1.25;
  }

  v48 = sub_190D58760();

  if (v48)
  {

    return 1.25;
  }

  v49 = sub_190D56F10();
  v51 = v50;
  if (v49 == sub_190D56F10() && v51 == v52)
  {
    goto LABEL_59;
  }

  v53 = sub_190D58760();

  if (v53)
  {
LABEL_61:

    return 1.3;
  }

  v54 = sub_190D56F10();
  v56 = v55;
  if (v54 == sub_190D56F10() && v56 == v57)
  {
    goto LABEL_59;
  }

  v58 = sub_190D58760();

  if (v58)
  {
    goto LABEL_61;
  }

  v59 = sub_190D56F10();
  v61 = v60;
  if (v59 == sub_190D56F10() && v61 == v62)
  {
LABEL_59:

    return 1.3;
  }

  v63 = sub_190D58760();

  result = 1.3;
  if ((v63 & 1) == 0)
  {
    return 1.0;
  }

  return result;
}

double sub_190CA7A78()
{
  v0 = sub_190CAF9B0();
  v1 = sub_190D56F10();
  v3 = v2;
  if (v1 == sub_190D56F10() && v3 == v4)
  {

    v7 = 0.23;
    goto LABEL_15;
  }

  v6 = sub_190D58760();

  v7 = 0.23;
  if ((v6 & 1) == 0)
  {
    v8 = sub_190D56F10();
    v10 = v9;
    if (v8 == sub_190D56F10() && v10 == v11)
    {
      goto LABEL_13;
    }

    v13 = sub_190D58760();

    if (v13)
    {
      goto LABEL_15;
    }

    v14 = sub_190D56F10();
    v16 = v15;
    if (v14 == sub_190D56F10() && v16 == v17)
    {
      goto LABEL_13;
    }

    v20 = sub_190D58760();

    if (v20)
    {
      goto LABEL_15;
    }

    v21 = sub_190D56F10();
    v23 = v22;
    if (v21 == sub_190D56F10() && v23 == v24)
    {
      goto LABEL_13;
    }

    v25 = sub_190D58760();

    if (v25)
    {
      goto LABEL_15;
    }

    v26 = sub_190D56F10();
    v28 = v27;
    if (v26 == sub_190D56F10() && v28 == v29)
    {

      v7 = 0.2;
      goto LABEL_15;
    }

    v30 = sub_190D58760();

    v7 = 0.2;
    if (v30)
    {
      goto LABEL_15;
    }

    v31 = sub_190D56F10();
    v33 = v32;
    if (v31 == sub_190D56F10() && v33 == v34)
    {
      goto LABEL_13;
    }

    v35 = sub_190D58760();

    if (v35)
    {
      goto LABEL_15;
    }

    v36 = sub_190D56F10();
    v38 = v37;
    if (v36 == sub_190D56F10() && v38 == v39)
    {
      goto LABEL_13;
    }

    v40 = sub_190D58760();

    if (v40)
    {
      goto LABEL_15;
    }

    v41 = sub_190D56F10();
    v43 = v42;
    if (v41 == sub_190D56F10() && v43 == v44)
    {

      v7 = 0.1;
      goto LABEL_15;
    }

    v45 = sub_190D58760();

    v7 = 0.1;
    if (v45)
    {
      goto LABEL_15;
    }

    v46 = sub_190D56F10();
    v48 = v47;
    if (v46 == sub_190D56F10() && v48 == v49)
    {
      goto LABEL_13;
    }

    v50 = sub_190D58760();

    if (v50)
    {
      goto LABEL_15;
    }

    v51 = sub_190D56F10();
    v53 = v52;
    if (v51 == sub_190D56F10() && v53 == v54)
    {
      goto LABEL_13;
    }

    v55 = sub_190D58760();

    if (v55)
    {
      goto LABEL_15;
    }

    v56 = sub_190D56F10();
    v58 = v57;
    if (v56 == sub_190D56F10() && v58 == v59)
    {
      goto LABEL_13;
    }

    v60 = sub_190D58760();

    if (v60)
    {
      goto LABEL_15;
    }

    v61 = sub_190D56F10();
    v63 = v62;
    if (v61 == sub_190D56F10() && v63 == v64)
    {
LABEL_13:

      goto LABEL_15;
    }

    v65 = sub_190D58760();

    if (v65)
    {
      v7 = 0.1;
    }

    else
    {
      v7 = 0.23;
    }
  }

LABEL_15:
  v18 = sub_190CA73FC();

  return v7 * (v18 * 44.0);
}

double sub_190CA8000()
{
  v0 = sub_190CAF9B0();
  v1 = sub_190D56F10();
  v3 = v2;
  if (v1 == sub_190D56F10() && v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = sub_190D58760();

  if (v6)
  {
LABEL_6:

    return 2.5;
  }

  v7 = sub_190D56F10();
  v9 = v8;
  if (v7 == sub_190D56F10() && v9 == v10)
  {
    goto LABEL_14;
  }

  v12 = sub_190D58760();

  if (v12)
  {
    goto LABEL_6;
  }

  v13 = sub_190D56F10();
  v15 = v14;
  if (v13 == sub_190D56F10() && v15 == v16)
  {
    goto LABEL_14;
  }

  v18 = sub_190D58760();

  if (v18)
  {
    goto LABEL_6;
  }

  v19 = sub_190D56F10();
  v21 = v20;
  if (v19 == sub_190D56F10() && v21 == v22)
  {
LABEL_14:

    return 2.5;
  }

  v23 = sub_190D58760();

  if (v23)
  {
    goto LABEL_6;
  }

  v24 = sub_190D56F10();
  v26 = v25;
  if (v24 == sub_190D56F10() && v26 == v27)
  {
    goto LABEL_22;
  }

  v28 = sub_190D58760();

  if (v28)
  {
    goto LABEL_24;
  }

  v29 = sub_190D56F10();
  v31 = v30;
  if (v29 == sub_190D56F10() && v31 == v32)
  {
    goto LABEL_22;
  }

  v33 = sub_190D58760();

  if (v33)
  {
LABEL_24:

    return 1.0;
  }

  v34 = sub_190D56F10();
  v36 = v35;
  if (v34 == sub_190D56F10() && v36 == v37)
  {
LABEL_22:

    return 1.0;
  }

  v38 = sub_190D58760();

  if (v38)
  {
    goto LABEL_24;
  }

  v39 = sub_190D56F10();
  v41 = v40;
  if (v39 == sub_190D56F10() && v41 == v42)
  {
    goto LABEL_33;
  }

  v43 = sub_190D58760();

  if (v43)
  {
    goto LABEL_35;
  }

  v44 = sub_190D56F10();
  v46 = v45;
  if (v44 == sub_190D56F10() && v46 == v47)
  {
    goto LABEL_33;
  }

  v48 = sub_190D58760();

  if (v48)
  {
    goto LABEL_35;
  }

  v49 = sub_190D56F10();
  v51 = v50;
  if (v49 == sub_190D56F10() && v51 == v52)
  {
    goto LABEL_33;
  }

  v53 = sub_190D58760();

  if (v53)
  {
    goto LABEL_35;
  }

  v54 = sub_190D56F10();
  v56 = v55;
  if (v54 == sub_190D56F10() && v56 == v57)
  {
    goto LABEL_33;
  }

  v58 = sub_190D58760();

  if (v58)
  {
LABEL_35:

    return 0.0;
  }

  v59 = sub_190D56F10();
  v61 = v60;
  if (v59 == sub_190D56F10() && v61 == v62)
  {
LABEL_33:

    return 0.0;
  }

  v63 = sub_190D58760();

  result = 2.5;
  if (v63)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_190CA8558(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_190D52690();
      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_190CA8604(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x193AF3B90](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_190D581C0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_190CA872C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x193AF3B90](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);
      sub_190D50920();
      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_190D581C0();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

void SendMenuSortOrderProviding.sortedIdentifiers(fromStoredOrder:upgradeType:forConversation:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v129 = a3;
  v125 = *a2;
  v8 = *(a1 + 24);
  v9 = *(*(a1 + 32) + 16);
  v120 = v9 != 0;
  if (v9)
  {
    v135[0] = v8;
    sub_190D52690();
    v10 = sub_190D52690();
    sub_190CA9D08(v10);
  }

  else
  {
    sub_190D52690();
  }

  v124 = a5;
  v123 = v5;
  v122 = a4;
  if (v125)
  {
    v11 = (*(a5 + 32))(a4, a5);
    v12 = sub_190CAAE18(v11);

    a4 = *(v8 + 2);
    if (a4)
    {
      v13 = 0;
      v132 = (v8 + 32);
      v14 = v12 + 56;
      v15 = MEMORY[0x1E69E7CC0];
      v131 = a4;
      while (1)
      {
        if (v13 >= *(v8 + 2))
        {
          goto LABEL_150;
        }

        v16 = &v132[2 * v13];
        v18 = *v16;
        v17 = v16[1];
        ++v13;
        if (!*(v12 + 16))
        {
          break;
        }

        sub_190D58870();
        sub_190D52690();
        sub_190D56FC0();
        v19 = sub_190D588C0();
        v20 = -1 << *(v12 + 32);
        v21 = v19 & ~v20;
        if ((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          a5 = ~v20;
          while (1)
          {
            v22 = (*(v12 + 48) + 16 * v21);
            v23 = *v22 == v18 && v22[1] == v17;
            if (v23 || (sub_190D58760() & 1) != 0)
            {
              break;
            }

            v21 = (v21 + 1) & a5;
            if (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          if (v13 == a4)
          {
            goto LABEL_26;
          }
        }

        else
        {
LABEL_18:
          v134 = v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_19082DBB4(0, *(v15 + 16) + 1, 1);
            v15 = v134;
          }

          v25 = *(v15 + 16);
          v24 = *(v15 + 24);
          a5 = v25 + 1;
          if (v25 >= v24 >> 1)
          {
            sub_19082DBB4((v24 > 1), v25 + 1, 1);
            v15 = v134;
          }

          *(v15 + 16) = a5;
          v26 = v15 + 16 * v25;
          *(v26 + 32) = v18;
          *(v26 + 40) = v17;
          a4 = v131;
          if (v13 == v131)
          {
            goto LABEL_26;
          }
        }
      }

      sub_190D52690();
      goto LABEL_18;
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_26:

    if (v125 == 1)
    {
      v8 = v15;
LABEL_50:
      a5 = v124;
      a4 = v122;
      goto LABEL_51;
    }

    v27 = (*(v124 + 24))(v122);
    v28 = sub_190CAAE18(v27);

    a4 = *(v15 + 16);
    if (!a4)
    {
      v8 = MEMORY[0x1E69E7CC0];
LABEL_49:

      goto LABEL_50;
    }

    v29 = 0;
    v132 = (v15 + 32);
    v30 = v28 + 56;
    v8 = MEMORY[0x1E69E7CC0];
    v131 = a4;
    while (1)
    {
      if (v29 >= *(v15 + 16))
      {
        goto LABEL_151;
      }

      v31 = &v132[2 * v29];
      v33 = *v31;
      v32 = v31[1];
      ++v29;
      if (!*(v28 + 16))
      {
        break;
      }

      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      v34 = sub_190D588C0();
      v35 = -1 << *(v28 + 32);
      v36 = v34 & ~v35;
      if ((*(v30 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        a5 = ~v35;
        while (1)
        {
          v37 = (*(v28 + 48) + 16 * v36);
          v38 = *v37 == v33 && v37[1] == v32;
          if (v38 || (sub_190D58760() & 1) != 0)
          {
            break;
          }

          v36 = (v36 + 1) & a5;
          if (((*(v30 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        if (v29 == a4)
        {
          goto LABEL_49;
        }
      }

      else
      {
LABEL_41:
        v134 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_19082DBB4(0, *(v8 + 2) + 1, 1);
          v8 = v134;
        }

        v40 = *(v8 + 2);
        v39 = *(v8 + 3);
        a5 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          sub_19082DBB4((v39 > 1), v40 + 1, 1);
          v8 = v134;
        }

        *(v8 + 2) = a5;
        v41 = &v8[16 * v40];
        *(v41 + 4) = v33;
        *(v41 + 5) = v32;
        a4 = v131;
        if (v29 == v131)
        {
          goto LABEL_49;
        }
      }
    }

    sub_190D52690();
    goto LABEL_41;
  }

LABEL_51:
  v42 = sub_190D52690();
  v15 = sub_190CAAE18(v42);

  if (qword_1EAD45B10 != -1)
  {
    goto LABEL_152;
  }

  while (1)
  {
    swift_beginAccess();
    v43 = off_1EAD45B18;
    swift_beginAccess();
    v44 = v43[3];
    v45 = *(a5 + 16);
    v131 = v43[2];
    swift_unknownObjectRetain();
    v46 = v45(a4, a5);
    a4 = v46;
    v47 = *(v46 + 16);
    v130 = v44;
    v128 = v44 + 40;
    if (v47)
    {
      v48 = 0;
      v132 = (v46 + 32);
      a5 = v15 + 56;
      v126 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v48 >= *(a4 + 16))
        {
          __break(1u);
          goto LABEL_146;
        }

        v49 = &v132[2 * v48];
        v51 = *v49;
        v50 = v49[1];
        ++v48;
        if (*(v15 + 16))
        {
          sub_190D58870();
          sub_190D52690();
          sub_190D56FC0();
          v52 = sub_190D588C0();
          v53 = -1 << *(v15 + 32);
          v54 = v52 & ~v53;
          if ((*(a5 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
          {
            v55 = ~v53;
            do
            {
              v56 = (*(v15 + 48) + 16 * v54);
              v57 = *v56 == v51 && v56[1] == v50;
              if (v57 || (sub_190D58760() & 1) != 0)
              {
                goto LABEL_67;
              }

              v54 = (v54 + 1) & v55;
            }

            while (((*(a5 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0);
          }
        }

        else
        {
          sub_190D52690();
        }

        ObjectType = swift_getObjectType();
        if ((*(v130 + 40))(v51, v50, v129, ObjectType))
        {
          v59 = v126;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v136 = v59;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_19082DBB4(0, *(v59 + 16) + 1, 1);
            v59 = v136;
          }

          v62 = *(v59 + 16);
          v61 = *(v59 + 24);
          v63 = v62 + 1;
          if (v62 >= v61 >> 1)
          {
            v127 = v62 + 1;
            sub_19082DBB4((v61 > 1), v62 + 1, 1);
            v63 = v127;
            v59 = v136;
          }

          *(v59 + 16) = v63;
          v126 = v59;
          v64 = v59 + 16 * v62;
          *(v64 + 32) = v51;
          *(v64 + 40) = v50;
          goto LABEL_68;
        }

LABEL_67:

LABEL_68:
        if (v48 == v47)
        {
          goto LABEL_76;
        }
      }
    }

    v126 = MEMORY[0x1E69E7CC0];
LABEL_76:

    v66 = *(v8 + 2);
    if (v66)
    {
      v67 = 0;
      v15 = 0;
      v68 = v8 + 40;
      v127 = *(v8 + 2);
      v118 = v66 - 1;
      v69 = MEMORY[0x1E69E7CC0];
      v119 = v8 + 40;
LABEL_78:
      v121 = v69;
      v70 = &v68[16 * v67];
      while (v67 < *(v8 + 2))
      {
        v132 = &v118;
        a5 = *(v70 - 1);
        v71 = *v70;
        v72 = v67 + 1;
        v135[0] = a5;
        v135[1] = v71;
        MEMORY[0x1EEE9AC00](v65);
        v117[2] = v135;
        sub_190D52690();
        if ((sub_190CA8558(sub_190A5D7B4, v117, a4) & 1) == 0)
        {
          v73 = v121;
          v65 = swift_isUniquelyReferenced_nonNull_native();
          v69 = v73;
          v136 = v73;
          if ((v65 & 1) == 0)
          {
            v65 = sub_19082DBB4(0, *(v73 + 16) + 1, 1);
            v69 = v136;
          }

          v75 = *(v69 + 16);
          v74 = *(v69 + 24);
          if (v75 >= v74 >> 1)
          {
            v65 = sub_19082DBB4((v74 > 1), v75 + 1, 1);
            v69 = v136;
          }

          *(v69 + 16) = v75 + 1;
          v76 = v69 + 16 * v75;
          *(v76 + 32) = a5;
          *(v76 + 40) = v71;
          v23 = v118 == v67;
          v68 = v119;
          ++v67;
          if (v23)
          {
            goto LABEL_91;
          }

          goto LABEL_78;
        }

        v70 += 2;
        ++v67;
        if (v127 == v72)
        {
          v69 = v121;
          goto LABEL_91;
        }
      }

LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v15 = 0;
    v69 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v135[0] = a4;
    sub_190CA9D08(v69);
    v77 = v135[0];
    v78 = *(v126 + 16);
    if (!v78)
    {
      break;
    }

    v79 = (v126 + 40);
    while (1)
    {
      a4 = *(v79 - 1);
      v80 = *v79;
      v81 = sub_190C75C14(a4, *v79, v8, v77);
      v82 = *(v8 + 2);
      if (v82 < v81)
      {
        break;
      }

      a5 = v81;
      if (v81 < 0)
      {
        goto LABEL_148;
      }

      sub_190D52690();
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v136 = v8;
      if (!v83 || v82 >= *(v8 + 3) >> 1)
      {
        v8 = sub_1908354D4(v83, v82 + 1, 1, v8);
        v136 = v8;
      }

      sub_190CAAEB0(a5, a5, 1, a4, v80);

      v79 += 2;
      if (!--v78)
      {
        v120 = 1;
        goto LABEL_101;
      }
    }

LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    swift_once();
  }

LABEL_101:

  v84 = swift_getObjectType();
  v85 = *(v130 + 32);
  v132 = v84;
  v86 = v85();
  v87 = (*(v124 + 8))(v122);
  a5 = sub_190CAAE18(v87);

  v127 = *(v86 + 16);
  if (v127)
  {
    a4 = 0;
    v126 = v86 + 32;
    v88 = a5 + 56;
    v89 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v124 = v89;
    while (1)
    {
      if (a4 >= *(v86 + 16))
      {
        goto LABEL_149;
      }

      v90 = (v126 + 16 * a4);
      v92 = *v90;
      v91 = v90[1];
      if (!*(a5 + 16))
      {
        break;
      }

      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      v93 = sub_190D588C0();
      v94 = -1 << *(a5 + 32);
      v95 = v93 & ~v94;
      if (((*(v88 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
      {
        goto LABEL_117;
      }

      v96 = ~v94;
      while (1)
      {
        v97 = (*(a5 + 48) + 16 * v95);
        v98 = *v97 == v92 && v97[1] == v91;
        if (v98 || (sub_190D58760() & 1) != 0)
        {
          break;
        }

        v95 = (v95 + 1) & v96;
        if (((*(v88 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
        {
          goto LABEL_117;
        }
      }

      v99 = 0;
LABEL_119:
      ++a4;
      v100 = (*(v130 + 40))(v92, v91, v129, v132);
      if (v99 && (v100 & 1) != 0)
      {
        v101 = v124;
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v101;
        if ((v102 & 1) == 0)
        {
          sub_19082DBB4(0, *(v101 + 16) + 1, 1);
          v101 = v133;
        }

        v104 = *(v101 + 16);
        v103 = *(v101 + 24);
        v105 = v104 + 1;
        if (v104 >= v103 >> 1)
        {
          v124 = v104 + 1;
          sub_19082DBB4((v103 > 1), v104 + 1, 1);
          v105 = v124;
          v101 = v133;
        }

        *(v101 + 16) = v105;
        v106 = v101 + 16 * v104;
        *(v106 + 32) = v92;
        *(v106 + 40) = v91;
        v89 = v101;
        if (a4 != v127)
        {
          goto LABEL_103;
        }

        goto LABEL_129;
      }

      if (a4 == v127)
      {
        v89 = v124;
        goto LABEL_129;
      }
    }

    sub_190D52690();
LABEL_117:
    v99 = 1;
    goto LABEL_119;
  }

  v89 = MEMORY[0x1E69E7CC0];
LABEL_129:

  v107 = sub_190C75D88(v89, v8);
  v108 = sub_190C75D88(v8, v89);
  if (!v125 && (v107 & 1) != 0 && (v108 & 1) != 0)
  {
    swift_unknownObjectRelease();

    return;
  }

  if (qword_1EAD458A8 != -1)
  {
    swift_once();
    v109 = *(v8 + 2);
    if (v109)
    {
      goto LABEL_135;
    }

LABEL_142:
    v115 = v131;
LABEL_144:
    v116 = sub_190CAA710(v109, 0, v8);
    v135[0] = v89;
    swift_unknownObjectRetain();
    sub_190D52690();
    sub_190D50920();
    sub_190CAC4C0(v135, v116, v109, v115, v130);

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();
    return;
  }

  v109 = *(v8 + 2);
  if (!v109)
  {
    goto LABEL_142;
  }

LABEL_135:
  v110 = 0;
  v111 = qword_1EAD458B0;
  v112 = *algn_1EAD458B8;
  v113 = v8 + 40;
  while (1)
  {
    v114 = *(v113 - 1) == v111 && *v113 == v112;
    if (v114 || (sub_190D58760() & 1) != 0)
    {
      break;
    }

    ++v110;
    v113 += 2;
    if (v109 == v110)
    {
      goto LABEL_142;
    }
  }

  v109 = v110 + 1;
  v115 = v131;
  if (!__OFADD__(v110, 1))
  {
    goto LABEL_144;
  }

  __break(1u);

  swift_unknownObjectRelease();

  __break(1u);
}

uint64_t sub_190CA9668(uint64_t a1, uint64_t a2)
{
  v3 = sub_190D518A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_19024FB10(&qword_1EAD462D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v7 = sub_190D56DC0(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_19024FB10(&qword_1EAD462D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_190D56E30();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_190CA9880(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_190D58870();
  MEMORY[0x193AF4110](a1);
  v4 = sub_190D588C0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_190CA994C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_190D58870();
  sub_190D56FC0();
  v6 = sub_190D588C0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_190D58760() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_190CA9A44(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_190D581F0();
  }

  else if (*(a2 + 16) && (sub_1902188FC(0, &qword_1EAD46540, 0x1E69DB878), v5 = sub_190D57D80(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_190D57D90();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_190CA9B5C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_190D58870();
    MEMORY[0x193AF4110](a1 & 1);
    v5 = sub_190D588C0();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

BOOL sub_190CA9C24(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_190D58870();
  MEMORY[0x193AF4110](v3);
  v4 = sub_190D588C0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void sub_190CA9D08(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1908354D4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_190CA9E28(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_190835840(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D90, &qword_190DD5FD0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_190CA9F44(unint64_t a1, void (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_190D581C0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_190D581C0();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_190CAA9A0(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_190CAA09C(unint64_t a1, void (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_190D581C0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_190D581C0();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_190CAA9A0(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_190CAA1AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1908365EC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[16 * v8 + 32], (a1 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_190CAA298(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_190836784(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_190CAA3B8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_190CAA4FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1908368AC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_190CAA600(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_19083736C(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_190CAA710(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_190821630(MEMORY[0x1E69E7CC0]);
  v6 = *(a3 + 16);
  if (!v6)
  {
    return v5;
  }

  v7 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *(i - 1);
    v9 = *i;
    v11 = v7 + 1;
    sub_190D52690();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((a2 & 1) == 0 && v7 >= a1)
    {
      v13 = sub_19022DCEC(v10, v9);
      v15 = v5[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_31;
      }

      v19 = v14;
      if (v5[3] >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = v13;
          sub_190B67DD4();
          v13 = v32;
          if ((v19 & 1) == 0)
          {
LABEL_27:
            v5[(v13 >> 6) + 8] |= 1 << v13;
            v33 = (v5[6] + 16 * v13);
            *v33 = v10;
            v33[1] = v9;
            *(v5[7] + 8 * v13) = v11;
            v34 = v5[2];
            v17 = __OFADD__(v34, 1);
            v30 = v34 + 1;
            if (v17)
            {
              goto LABEL_33;
            }

LABEL_28:
            v5[2] = v30;
            goto LABEL_5;
          }

          goto LABEL_23;
        }
      }

      else
      {
        sub_190B62ABC(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_19022DCEC(v10, v9);
        if ((v19 & 1) != (v20 & 1))
        {
          goto LABEL_34;
        }
      }

      if ((v19 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_23:
      *(v5[7] + 8 * v13) = v11;
      goto LABEL_4;
    }

    v21 = sub_19022DCEC(v10, v9);
    v23 = v5[2];
    v24 = (v22 & 1) == 0;
    v17 = __OFADD__(v23, v24);
    v25 = v23 + v24;
    if (v17)
    {
      break;
    }

    v26 = v22;
    if (v5[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v21;
        sub_190B67DD4();
        v21 = v31;
        if ((v26 & 1) == 0)
        {
LABEL_18:
          v5[(v21 >> 6) + 8] |= 1 << v21;
          v28 = (v5[6] + 16 * v21);
          *v28 = v10;
          v28[1] = v9;
          *(v5[7] + 8 * v21) = v7;
          v29 = v5[2];
          v17 = __OFADD__(v29, 1);
          v30 = v29 + 1;
          if (v17)
          {
            goto LABEL_32;
          }

          goto LABEL_28;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_190B62ABC(v25, isUniquelyReferenced_nonNull_native);
      v21 = sub_19022DCEC(v10, v9);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_34;
      }
    }

    if ((v26 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_3:
    *(v5[7] + 8 * v21) = v7;
LABEL_4:

LABEL_5:
    ++v7;
    if (v6 == v11)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_190D587C0();
  __break(1u);
  return result;
}

uint64_t sub_190CAA9A0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_190D581C0();
LABEL_9:
  result = sub_190D58310();
  *v2 = result;
  return result;
}

void sub_190CAAA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *v7;
  v16 = (v15 + 32 + 32 * a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C60, &qword_190DD6360);
  swift_arrayDestroy();
  v17 = __OFSUB__(a3, v8);
  v18 = a3 - v8;
  if (v17)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = *(v15 + 16);
  v17 = __OFSUB__(v19, a2);
  v20 = v19 - a2;
  if (v17)
  {
    goto LABEL_21;
  }

  v21 = &v16[4 * a3];
  v22 = (v15 + 32 + 32 * a2);
  if (v21 != v22 || v21 >= &v22[32 * v20])
  {
    memmove(v21, v22, 32 * v20);
  }

  v24 = *(v15 + 16);
  v17 = __OFADD__(v24, v18);
  v25 = v24 + v18;
  if (v17)
  {
    goto LABEL_22;
  }

  *(v15 + 16) = v25;
LABEL_13:
  if (a3 > 0)
  {
    *v16 = a4;
    v16[1] = a5;
    v16[2] = a6;
    v16[3] = a7;
    if (a3 == 1)
    {
      return;
    }

LABEL_23:
    sub_190D52690();
    sub_190D52690();
    __break(1u);
    return;
  }
}

void sub_190CAAB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(_s21BackgroundGalleryItemVMa(0) - 8);
  v11 = *(v10 + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v13 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v14 = v13 + v11 * a1;
  swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v9 + 16);
    if (!__OFSUB__(v17, a2))
    {
      v18 = v14 + v16;
      v19 = v13 + v11 * a2;
      if (v14 + v16 < v19 || v18 >= v19 + (v17 - a2) * v11)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v18 != v19)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v15);
      v23 = v21 + v15;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v16 >= 1)
  {
    sub_190B0D284(a4, v14);
    if (v11 < v16)
    {
      goto LABEL_25;
    }
  }

  sub_190CACA94(a4);
}

uint64_t sub_190CAACFC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_190D58760() & 1;
  }
}

void sub_190CAAD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * a1;
  swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  v13 = (v8 + 32 * a3);
  v14 = (v7 + 32 + 32 * a2);
  if (v13 != v14 || v13 >= &v14[32 * v12])
  {
    memmove(v13, v14, 32 * v12);
  }

  v16 = *(v7 + 16);
  v9 = __OFADD__(v16, v10);
  v17 = v16 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v17;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_190CAAE18(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x193AF2CC0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_190D52690();
      sub_1908AA174(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_190CAAEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    sub_190D52690();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

uint64_t sub_190CAAF94(char *__dst, char *a2, char *a3, uint64_t *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = __dst;
  v10 = a2 - __dst;
  v11 = a2 - __dst + 15;
  if (a2 - __dst >= 0)
  {
    v11 = a2 - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - a2;
  v14 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 4;
  if (v12 >= v14 >> 4)
  {
    v18 = __src;
    if (__src != a2 || &a2[16 * v15] <= __src)
    {
      v37 = a2;
      memmove(__src, a2, 16 * v15);
      a2 = v37;
    }

    v70 = &v18[2 * v15];
    if (v13 < 16)
    {
      v9 = a2;
    }

    else
    {
      v38 = a2;
      if (a2 <= v9)
      {
        v9 = a2;
      }

      else
      {
        v64 = v9;
        v66 = v18;
LABEL_35:
        v58 = (v38 - 16);
        v39 = v8;
        v40 = v70;
        v41 = a6;
        v42 = a5;
        v9 = v38;
        v59 = v38;
        do
        {
          v44 = *(v40 - 2);
          v43 = *(v40 - 1);
          v40 -= 2;
          v45 = *(v9 - 1);
          v65 = *(v9 - 2);
          v46 = *(v42 + 16);
          sub_190D52690();
          v69 = v45;
          sub_190D52690();
          if (!v46)
          {
            goto LABEL_44;
          }

          v47 = sub_19022DCEC(v44, v43);
          v48 = v41;
          if (v49)
          {
            v48 = *(*(v42 + 56) + 8 * v47);
          }

          v50 = v41;
          if (*(v42 + 16))
          {
            v51 = sub_19022DCEC(v65, v69);
            v50 = v41;
            if (v52)
            {
              v50 = *(*(v42 + 56) + 8 * v51);
            }
          }

          if (v48 != v50)
          {

            v8 = (v39 - 2);
            v56 = v48 < v50;
            v9 = v59;
            if (v56)
            {
LABEL_49:
              if (v39 != v9)
              {
                *v8 = *v58;
              }

              if (v70 <= v18 || (v38 = v58, v58 <= v64))
              {
                v9 = v58;
                goto LABEL_57;
              }

              goto LABEL_35;
            }
          }

          else
          {
LABEL_44:
            ObjectType = swift_getObjectType();
            v54 = *(a8 + 48);
            v54(v44, v43, ObjectType, a8);
            v54(v65, v69, ObjectType, a8);
            v18 = v66;
            v9 = v59;
            sub_19081E484();
            v55 = sub_190D580E0();

            v8 = (v39 - 2);
            if (v55 == -1)
            {
              goto LABEL_49;
            }
          }

          if (v70 != v39)
          {
            *v8 = *v40;
          }

          v70 = v40;
          v39 = v8;
          v41 = a6;
          v42 = a5;
        }

        while (v40 > v18);
        v70 = v40;
      }
    }
  }

  else
  {
    v16 = a2;
    if (__src != __dst || &__dst[16 * v12] <= __src)
    {
      v17 = __src;
      memmove(__src, __dst, 16 * v12);
      __src = v17;
    }

    v70 = &__src[2 * v12];
    v18 = __src;
    if (v10 >= 16 && v16 < v8)
    {
      v60 = v8;
      do
      {
        v63 = v9;
        v20 = *v16;
        v19 = v16[1];
        v21 = v18[1];
        v68 = *v18;
        v22 = *(a5 + 16);
        sub_190D52690();
        sub_190D52690();
        if (!v22)
        {
          goto LABEL_19;
        }

        v23 = sub_19022DCEC(v20, v19);
        v24 = a6;
        if (v25)
        {
          v24 = *(*(a5 + 56) + 8 * v23);
        }

        v26 = a6;
        if (*(a5 + 16))
        {
          v27 = sub_19022DCEC(v68, v21);
          v26 = a6;
          if (v28)
          {
            v26 = *(*(a5 + 56) + 8 * v27);
          }
        }

        if (v24 != v26)
        {

          if (v24 >= v26)
          {
LABEL_20:
            v33 = v18;
            v34 = v63;
            v35 = v63 == v18;
            v18 += 2;
            v36 = v60;
            if (v35)
            {
              goto LABEL_22;
            }

LABEL_21:
            *v34 = *v33;
            goto LABEL_22;
          }
        }

        else
        {
LABEL_19:
          v29 = swift_getObjectType();
          v30 = v16;
          v31 = *(a8 + 48);
          v31(v20, v19, v29, a8);
          v31(v68, v21, v29, a8);
          v16 = v30;
          sub_19081E484();
          v32 = sub_190D580E0();

          if (v32 != -1)
          {
            goto LABEL_20;
          }
        }

        v33 = v16;
        v34 = v63;
        v35 = v63 == v16;
        v16 += 2;
        v36 = v60;
        if (!v35)
        {
          goto LABEL_21;
        }

LABEL_22:
        v9 = v34 + 2;
      }

      while (v18 < v70 && v16 < v36);
    }
  }

LABEL_57:
  if (v9 != v18 || v9 >= (v18 + ((v70 - v18 + (v70 - v18 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v9, v18, 16 * ((v70 - v18) / 16));
  }

  return 1;
}

void sub_190CAB4F8(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v159 = a3[1];
  if (v159 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain_n();
    v149 = MEMORY[0x1E69E7CC0];
LABEL_116:
    __src = *a1;
    if (!*a1)
    {
      goto LABEL_158;
    }

    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain_n();
    v10 = v149;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_118:
      v130 = (v10 + 16);
      v131 = *(v10 + 16);
      if (v131 < 2)
      {
LABEL_126:

        swift_unknownObjectRelease_n();
        swift_bridgeObjectRelease_n();
        return;
      }

      v150 = v10;
      while (1)
      {
        v132 = *a3;
        if (!*a3)
        {
          goto LABEL_156;
        }

        v133 = (v10 + 16 * v131);
        v134 = *v133;
        v135 = &v130[2 * v131];
        v136 = v135[1];
        v137 = &v132[2 * *v133];
        v167 = &v132[2 * *v135];
        v138 = &v132[2 * v136];
        sub_190D52690();
        v10 = a7;
        swift_unknownObjectRetain();
        sub_190CAAF94(v137, v167, v138, __src, a5, a6, a7, a8);
        if (v152)
        {
          swift_bridgeObjectRelease_n();
          swift_unknownObjectRelease_n();
          goto LABEL_114;
        }

        swift_unknownObjectRelease();
        if (v136 < v134)
        {
          goto LABEL_144;
        }

        v139 = *v130;
        if (v131 - 2 >= *v130)
        {
          goto LABEL_145;
        }

        *v133 = v134;
        v133[1] = v136;
        v140 = v139 - v131;
        if (v139 < v131)
        {
          goto LABEL_146;
        }

        v131 = v139 - 1;
        memmove(v135, v135 + 2, 16 * v140);
        *v130 = v131;
        v10 = v150;
        if (v131 <= 1)
        {
          goto LABEL_126;
        }
      }
    }

LABEL_152:
    v10 = sub_1909E383C(v10);
    goto LABEL_118;
  }

  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  v9 = 0;
  v149 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v9++;
    v143 = v10;
    if (v9 < v159)
    {
      v11 = *a3;
      v12 = &(*a3)[2 * v9];
      v13 = *v12;
      v14 = v12[1];
      v15 = &(*a3)[2 * v10];
      v16 = v15[1];
      v163 = *v15;
      v17 = *(v8 + 16);
      sub_190D52690();
      sub_190D52690();
      if (!v17)
      {
        goto LABEL_12;
      }

      __src = v14;
      v18 = sub_19022DCEC(v13, v14);
      v19 = a6;
      if (v20)
      {
        v19 = *(*(v8 + 56) + 8 * v18);
      }

      v21 = a6;
      if (*(v8 + 16))
      {
        v22 = sub_19022DCEC(v163, v16);
        v21 = a6;
        if (v23)
        {
          v21 = *(*(v8 + 56) + 8 * v22);
        }
      }

      if (v19 != v21)
      {

        v27 = v19 < v21;
      }

      else
      {
LABEL_12:
        ObjectType = swift_getObjectType();
        __src = v11;
        v25 = *(a8 + 48);
        v25(v13, v14, ObjectType, a8);
        v25(v163, v16, ObjectType, a8);
        v11 = __src;
        sub_19081E484();
        v26 = sub_190D580E0();

        v27 = v26 == -1;
      }

      v147 = v27;
      v28 = 0;
      v29 = v10 + 2;
      v30 = &v11[2 * v10 + 5];
      v145 = 16 * v10;
      v31 = 16 * v10;
      do
      {
        v9 = v29;
        v38 = v28;
        v37 = v31;
        if (v29 >= v159)
        {
          break;
        }

        __src = v31;
        v39 = *(v30 - 1);
        v40 = *v30;
        v41 = *(v30 - 2);
        v164 = *(v30 - 3);
        v42 = *(v8 + 16);
        sub_190D52690();
        sub_190D52690();
        if (!v42)
        {
          goto LABEL_15;
        }

        v43 = sub_19022DCEC(v39, v40);
        v44 = a6;
        if (v45)
        {
          v44 = *(*(v8 + 56) + 8 * v43);
        }

        v46 = a6;
        if (*(v8 + 16))
        {
          v47 = sub_19022DCEC(v164, v41);
          v46 = a6;
          if (v48)
          {
            v46 = *(*(v8 + 56) + 8 * v47);
          }
        }

        if (v44 == v46)
        {
LABEL_15:
          v32 = swift_getObjectType();
          v153 = v9;
          v33 = *(a8 + 48);
          v33(v39, v40, v32, a8);
          v34 = v32;
          v8 = a5;
          v33(v164, v41, v34, a8);
          sub_19081E484();
          v35 = sub_190D580E0();

          v9 = v153;

          v36 = v35 == -1;
        }

        else
        {

          v36 = v44 < v46;
        }

        v29 = v9 + 1;
        v30 += 2;
        v28 = v38 + 1;
        v37 = __src;
        v31 = (__src + 2);
      }

      while (v147 == v36);
      if (v147)
      {
        v10 = v143;
        if (v9 < v143)
        {
          goto LABEL_149;
        }

        if (v143 < v9)
        {
          v49 = 0;
          v50 = v145;
          do
          {
            if (v143 + v49 != v143 + v38 + 1)
            {
              v55 = *a3;
              if (!*a3)
              {
                goto LABEL_155;
              }

              v51 = (v55 + v50);
              v52 = v55 + v37;
              v53 = *v51;
              v54 = v51[1];
              *v51 = *(v52 + 16);
              *(v52 + 16) = v53;
              *(v52 + 24) = v54;
            }

            --v38;
            ++v49;
            v37 -= 16;
            v50 += 16;
          }

          while (v49 + v143 < v143 + v38 + 2);
        }
      }

      else
      {
        v10 = v143;
      }
    }

    v56 = a3[1];
    if (v9 < v56)
    {
      if (__OFSUB__(v9, v10))
      {
        goto LABEL_148;
      }

      if (v9 - v10 < a4)
      {
        v57 = (v10 + a4);
        if (__OFADD__(v10, a4))
        {
          goto LABEL_150;
        }

        if (v57 >= v56)
        {
          v57 = a3[1];
        }

        if (v57 < v10)
        {
          goto LABEL_151;
        }

        if (v9 != v57)
        {
          v160 = *a3;
          v58 = &(*a3)[2 * v9];
          v59 = v10 - v9;
          v144 = v57;
          do
          {
            v154 = v9;
            v60 = v59;
            v61 = &v160[2 * v9];
            v62 = *v61;
            v63 = v61[1];
            v146 = v60;
            v148 = v58;
            v64 = v60;
            do
            {
              v66 = *(v58 - 1);
              v65 = v58 - 2;
              v165 = *(v58 - 2);
              v67 = *(v8 + 16);
              sub_190D52690();
              sub_190D52690();
              if (!v67)
              {
                goto LABEL_54;
              }

              v68 = sub_19022DCEC(v62, v63);
              v69 = a6;
              if (v70)
              {
                v69 = *(*(v8 + 56) + 8 * v68);
              }

              v71 = a6;
              if (*(v8 + 16))
              {
                v72 = sub_19022DCEC(v165, v66);
                v71 = a6;
                if (v73)
                {
                  v71 = *(*(v8 + 56) + 8 * v72);
                }
              }

              if (v69 != v71)
              {

                if (v69 >= v71)
                {
                  break;
                }
              }

              else
              {
LABEL_54:
                v74 = swift_getObjectType();
                __src = v58 - 2;
                v75 = *(a8 + 48);
                v75(v62, v63, v74, a8);
                v75(v165, v66, v74, a8);
                v65 = v58 - 2;
                sub_19081E484();
                v76 = sub_190D580E0();

                v8 = a5;

                if (v76 != -1)
                {
                  break;
                }
              }

              if (!v160)
              {
                swift_unknownObjectRelease_n();
                swift_bridgeObjectRelease_n();
                __break(1u);
LABEL_154:
                swift_unknownObjectRelease_n();
                swift_bridgeObjectRelease_n();
                __break(1u);
LABEL_155:
                swift_unknownObjectRelease_n();
                swift_bridgeObjectRelease_n();
                __break(1u);
LABEL_156:
                swift_unknownObjectRelease();

                __break(1u);
LABEL_157:
                swift_unknownObjectRelease_n();
                swift_bridgeObjectRelease_n();
                __break(1u);
LABEL_158:
                swift_unknownObjectRelease_n();
                swift_bridgeObjectRelease_n();
                __break(1u);
                return;
              }

              v62 = *v58;
              v63 = v58[1];
              *v58 = *v65;
              *(v58 - 1) = v63;
              *(v58 - 2) = v62;
              v58 -= 2;
            }

            while (!__CFADD__(v64++, 1));
            v9 = v154 + 1;
            v58 = v148 + 2;
            v59 = v146 - 1;
          }

          while ((v154 + 1) != v144);
          v9 = v144;
          v10 = v143;
        }
      }
    }

    v78 = v149;
    if (v9 < v10)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_190835714(0, *(v149 + 2) + 1, 1, v149);
    }

    v10 = *(v78 + 2);
    v79 = *(v78 + 3);
    v80 = v10 + 1;
    if (v10 >= v79 >> 1)
    {
      v78 = sub_190835714((v79 > 1), v10 + 1, 1, v78);
    }

    *(v78 + 2) = v80;
    v81 = (v78 + 32);
    v82 = &v78[16 * v10 + 32];
    *v82 = v143;
    *(v82 + 1) = v9;
    v166 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    v149 = v78;
    if (v10)
    {
      break;
    }

LABEL_3:
    v159 = a3[1];
    v8 = a5;
    if (v9 >= v159)
    {
      goto LABEL_116;
    }
  }

  v155 = v9;
  __src = (v78 + 32);
  while (1)
  {
    v83 = v80 - 1;
    if (v80 >= 4)
    {
      v88 = &v81[2 * v80];
      v89 = *(v88 - 8);
      v90 = *(v88 - 7);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_132;
      }

      v93 = *(v88 - 6);
      v92 = *(v88 - 5);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_133;
      }

      v95 = &v78[16 * v80];
      v97 = *v95;
      v96 = *(v95 + 1);
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_135;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_137;
      }

      if (v99 >= v91)
      {
        v117 = &v81[2 * v83];
        v119 = *v117;
        v118 = v117[1];
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_143;
        }

        if (v86 < v120)
        {
          v83 = v80 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

    if (v80 == 3)
    {
      v84 = *(v78 + 4);
      v85 = *(v78 + 5);
      v94 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      v87 = v94;
LABEL_83:
      if (v87)
      {
        goto LABEL_134;
      }

      v100 = &v78[16 * v80];
      v102 = *v100;
      v101 = *(v100 + 1);
      v103 = __OFSUB__(v101, v102);
      v104 = v101 - v102;
      v105 = v103;
      if (v103)
      {
        goto LABEL_136;
      }

      v106 = &v81[2 * v83];
      v108 = *v106;
      v107 = v106[1];
      v94 = __OFSUB__(v107, v108);
      v109 = v107 - v108;
      if (v94)
      {
        goto LABEL_139;
      }

      if (__OFADD__(v104, v109))
      {
        goto LABEL_141;
      }

      if (v104 + v109 >= v86)
      {
        if (v86 < v109)
        {
          v83 = v80 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_98;
    }

    if (v80 < 2)
    {
      goto LABEL_142;
    }

    v110 = &v78[16 * v80];
    v112 = *v110;
    v111 = *(v110 + 1);
    v94 = __OFSUB__(v111, v112);
    v104 = v111 - v112;
    v105 = v94;
LABEL_98:
    if (v105)
    {
      goto LABEL_138;
    }

    v113 = &v81[2 * v83];
    v115 = *v113;
    v114 = v113[1];
    v94 = __OFSUB__(v114, v115);
    v116 = v114 - v115;
    if (v94)
    {
      goto LABEL_140;
    }

    if (v116 < v104)
    {
      goto LABEL_3;
    }

LABEL_105:
    if (v83 - 1 >= v80)
    {
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
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v121 = *a3;
    if (!*a3)
    {
      goto LABEL_154;
    }

    v122 = &v81[2 * v83 - 2];
    v123 = *v122;
    v10 = v83;
    v124 = &v81[2 * v83];
    v125 = v124[1];
    v126 = &v121[2 * *v122];
    v127 = &v121[2 * *v124];
    v128 = &v121[2 * v125];
    sub_190D52690();
    swift_unknownObjectRetain();
    sub_190CAAF94(v126, v127, v128, v166, a5, a6, a7, a8);
    if (v152)
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v125 < v123)
    {
      goto LABEL_129;
    }

    v78 = v149;
    v129 = *(v149 + 2);
    if (v10 > v129)
    {
      goto LABEL_130;
    }

    *v122 = v123;
    v122[1] = v125;
    if (v10 >= v129)
    {
      goto LABEL_131;
    }

    v80 = v129 - 1;
    memmove(v124, v124 + 2, 16 * (v129 - 1 - v10));
    *(v149 + 2) = v129 - 1;
    v9 = v155;
    v81 = __src;
    if (v129 <= 2)
    {
      goto LABEL_3;
    }
  }

LABEL_114:
  swift_unknownObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

void sub_190CAC104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  v9 = sub_190D58710();
  if (v9 >= v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!v8)
      {
        swift_unknownObjectRelease_n();
        swift_bridgeObjectRelease_n();
        return;
      }

      if (v8 == 1)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = *a1;
        sub_190D52690();
        swift_unknownObjectRetain();
        v14 = -1;
        v15 = 1;
        v42 = v13;
        v16 = a3;
        v39 = a2;
        v35 = v8;
        do
        {
          v37 = v15;
          v38 = v14;
          v17 = &v42[2 * v15];
          v18 = *v17;
          v19 = v17[1];
          v20 = v14;
          v36 = v13;
          do
          {
            v21 = v13[1];
            v43 = *v13;
            v22 = *(a2 + 16);
            sub_190D52690();
            v47 = v21;
            sub_190D52690();
            if (!v22)
            {
              goto LABEL_22;
            }

            v23 = sub_19022DCEC(v18, v19);
            v24 = v16;
            if (v25)
            {
              v24 = *(*(a2 + 56) + 8 * v23);
            }

            v26 = v16;
            if (*(a2 + 16))
            {
              v27 = sub_19022DCEC(v43, v47);
              v26 = v16;
              if (v28)
              {
                v26 = *(*(a2 + 56) + 8 * v27);
              }
            }

            if (v24 != v26)
            {

              if (v24 >= v26)
              {
                break;
              }
            }

            else
            {
LABEL_22:
              ObjectType = swift_getObjectType();
              v30 = *(a5 + 48);
              v16 = a3;
              v45 = v30(v18, v19, ObjectType, a5);
              v46 = v31;
              v44[0] = v30(v43, v47, ObjectType, a5);
              v44[1] = v32;
              sub_19081E484();
              v33 = sub_190D580E0();

              a2 = v39;

              if (v33 != -1)
              {
                break;
              }
            }

            if (!v42)
            {
              goto LABEL_34;
            }

            v18 = v13[2];
            v19 = v13[3];
            *(v13 + 1) = *v13;
            *v13 = v18;
            v13[1] = v19;
            v13 -= 2;
          }

          while (!__CFADD__(v20++, 1));
          v15 = v37 + 1;
          v13 = v36 + 2;
          v14 = v38 - 1;
        }

        while (v37 + 1 != v35);
        swift_bridgeObjectRelease_n();
        swift_unknownObjectRelease_n();
      }

      swift_unknownObjectRelease();
      goto LABEL_31;
    }
  }

  else
  {
    if (v8 >= -1)
    {
      v10 = v9;
      if (v8 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_190D571D0();
        *(v11 + 16) = v8 / 2;
      }

      v45 = (v11 + 32);
      v46 = v8 / 2;
      v12 = v11;
      sub_190D52690();
      swift_unknownObjectRetain();
      sub_190CAB4F8(&v45, v44, a1, v10, a2, a3, a4, a5);

      swift_unknownObjectRelease();
      *(v12 + 16) = 0;
      swift_unknownObjectRelease_n();
      swift_bridgeObjectRelease_n();
LABEL_31:

      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_190CAC4C0(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1909E39A8(v10);
  }

  v11 = *(v10 + 2);
  v13[0] = v10 + 32;
  v13[1] = v11;
  sub_190D52690();
  swift_unknownObjectRetain();
  sub_190CAC104(v13, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  *a1 = v10;
  swift_unknownObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

unint64_t *sub_190CAC708(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
  {
    v12 = sub_1902188FC(0, a2, a3);
    v13 = sub_190CACF50(a4, a2, a3);
    result = MEMORY[0x193AF2CC0](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x193AF3B90](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_190D581C0();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_190CAC890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  v9 = *(a4(0) - 8);
  v10 = *(v9 + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v12 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v13 = v12 + v10 * a1;
  swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v8 + 16);
    if (!__OFSUB__(v16, a2))
    {
      v17 = v13 + v15;
      v18 = v12 + v10 * a2;
      if (v13 + v15 < v18 || v17 >= v18 + (v16 - a2) * v10)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v17 != v18)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v14);
      v22 = v20 + v14;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }
}

char *sub_190CAC9F0(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_190CACA94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C3B8, &qword_190DEE4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_190CACAFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  _s18BlurrableImageViewCMa();
  swift_arrayDestroy();
  v13 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      v14 = v5[2];
      v15 = v14 - v7;
      if (!__OFSUB__(v14, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    v21 = sub_190D581C0();
    v15 = v21 - v7;
    if (!__OFSUB__(v21, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        v19 = sub_190D581C0();
      }

      else
      {
        v19 = v5[2];
      }

      if (!__OFADD__(v19, v11))
      {
        v5[2] = v19 + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    v20 = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }
}

void sub_190CACC40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_1902188FC(0, a5, a6);
  swift_arrayDestroy();
  v15 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      v16 = v7[2];
      v17 = v16 - v9;
      if (!__OFSUB__(v16, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    v23 = sub_190D581C0();
    v17 = v23 - v9;
    if (!__OFSUB__(v23, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        v21 = sub_190D581C0();
      }

      else
      {
        v21 = v7[2];
      }

      if (!__OFADD__(v21, v13))
      {
        v7[2] = v21 + v13;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;
    v22 = v10;
    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }
}

void sub_190CACD78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_1902188FC(0, a4, a5);
  swift_arrayDestroy();
  v13 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v14 = v6[2];
    v15 = v14 - v8;
    if (!__OFSUB__(v14, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  v20 = sub_190D581C0();
  v15 = v20 - v8;
  if (__OFSUB__(v20, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    v19 = sub_190D581C0();
  }

  else
  {
    v19 = v6[2];
  }

  if (__OFADD__(v19, v11))
  {
    goto LABEL_24;
  }

  v6[2] = v19 + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }
}