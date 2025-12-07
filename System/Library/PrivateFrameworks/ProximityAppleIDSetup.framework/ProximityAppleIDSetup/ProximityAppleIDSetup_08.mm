uint64_t sub_261066C14()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_dataSource);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_261066D44;

  return v6(v2, v3);
}

uint64_t sub_261066D44(char a1, uint64_t a2)
{
  v5 = *v3;
  *(v5 + 40) = a2;
  *(v5 + 48) = v2;

  if (v2)
  {
    v6 = sub_26106719C;
  }

  else
  {
    *(v5 + 74) = a1 & 1;
    v6 = sub_261066E70;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261066E70()
{
  sub_2610BCC74();
  *(v0 + 56) = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261066F04, v2, v1);
}

uint64_t sub_261066F04()
{
  v1 = *(v0 + 74);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 73) = v1;

  sub_2610BC854();

  return MEMORY[0x2822009F8](sub_261066FC8, 0, 0);
}

uint64_t sub_261066FC8()
{
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    v2 = sub_2610BD0E4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:

    v9 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  v11 = MEMORY[0x277D84F90];
  result = sub_2610BD044();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    do
    {
      v5 = v4 + 1;
      v6 = MEMORY[0x2666F78E0]();
      type metadata accessor for PASPickerPresentable();
      *(swift_allocObject() + 16) = v6;
      sub_2610BD024();
      sub_2610BD054();
      sub_2610BD064();
      sub_2610BD034();
      v4 = v5;
    }

    while (v2 != v5);
  }

  else
  {
    v7 = (*(v0 + 40) + 32);
    type metadata accessor for PASPickerPresentable();
    do
    {
      v8 = *v7++;
      *(swift_allocObject() + 16) = v8;

      sub_2610BD024();
      sub_2610BD054();
      sub_2610BD064();
      sub_2610BD034();
      --v2;
    }

    while (v2);
  }

  v9 = v11;
LABEL_13:
  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_26106719C()
{
  v17 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepFamilyPicker fetchMemberPresentables failed to fetch family members: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  sub_2610BCC74();
  v0[8] = sub_2610BCC64();
  v14 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261067390, v14, v13);
}

uint64_t sub_261067390()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = 1;

  sub_2610BC854();

  return MEMORY[0x2822009F8](sub_26106744C, 0, 0);
}

uint64_t sub_26106744C()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t PASFlowStepFamilyPicker.setSelectedMember(_:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t PASFlowStepFamilyPicker.nextStep()(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error);
  if (v2)
  {
    swift_willThrow();
    v3 = v2;
  }

  else
  {
    v4 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2610BC844();

    sub_261067728(v13[0], v1, v13);

    type metadata accessor for PASFlowStepSendSelectedAccount(0);
    v7 = swift_allocObject();
    v8 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__messageSessionProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
    v9 = swift_allocObject();
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0;
    *(v7 + v8) = v9;
    v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__deviceProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v7 + v10) = v11;
    *(v7 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_isSignInForSelfSupported) = 0;
    sub_260FDD49C(v13, v7 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection);
    v1 = sub_26104DC44(Strong, v6);
    swift_unknownObjectRelease();
    sub_260FDD4F8(v13);
    sub_261069814(&qword_27FE64700, type metadata accessor for PASFlowStepSendSelectedAccount, &protocol conformance descriptor for PASSourceFlowStepBase);
  }

  return v1;
}

id sub_261067728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v11 = result;
      v32 = sub_260FA9AB4(0, &qword_27FE63CC8, 0x277CB8F48);
      v33 = &off_28738B470;
      *&v31 = v11;
      result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
      if (result)
      {
        v12 = result;
        v29 = sub_260FA9AB4(0, &unk_27FE63D10, 0x277CF0178);
        v30 = &protocol witness table for AKAppleIDAuthenticationController;
        *&v28 = v12;
        v13 = type metadata accessor for FACreateChildProxiedAuthController();
        v14 = swift_allocObject();
        sub_260F98E14(&v31, v14 + 16);
        result = sub_260F98E14(&v28, v14 + 56);
        *(a3 + 24) = v13;
        *(a3 + 32) = &off_28738AEB8;
        *a3 = v14;
LABEL_20:
        *(a3 + 48) = 0;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = *(a1 + 16);
  if (!(v4 >> 62))
  {
    *a3 = v4;
    v15 = *(a2 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_supportedAuthModes);
    v16 = objc_opt_self();
    swift_retain_n();

    result = [v16 defaultStore];
    if (result)
    {
      v17 = result;
      v32 = sub_260FA9AB4(0, &qword_27FE63CC8, 0x277CB8F48);
      v33 = &off_28738B470;
      *&v31 = v17;
      result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
      if (result)
      {
        v18 = sub_26106872C(v4, &v31, result, v15);
        *(a3 + 32) = type metadata accessor for FAFamilyMemberProxiedAuthController();
        *(a3 + 40) = &off_28738B510;

        *(a3 + 8) = v18;
        *(a3 + 48) = 1;
        return result;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v4 >> 62 != 1)
  {
    v19 = qword_27FE63808;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_2610BC7B4();
    __swift_project_value_buffer(v20, qword_27FE65900);
    v21 = sub_2610BC794();
    v22 = sub_2610BCD74();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_260F97000, v21, v22, "Add child presentable isn't provided for Family Picker. This should never happen.", v23, 2u);
      MEMORY[0x2666F8720](v23, -1, -1);
    }

    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v24 = result;
      v32 = sub_260FA9AB4(0, &qword_27FE63CC8, 0x277CB8F48);
      v33 = &off_28738B470;
      *&v31 = v24;
      result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
      if (result)
      {
        v25 = result;
        v29 = sub_260FA9AB4(0, &unk_27FE63D10, 0x277CF0178);
        v30 = &protocol witness table for AKAppleIDAuthenticationController;
        *&v28 = v25;
        v26 = type metadata accessor for FACreateChildProxiedAuthController();
        v27 = swift_allocObject();
        sub_260F98E14(&v31, v27 + 16);
        sub_260F98E14(&v28, v27 + 56);
        *(a3 + 24) = v26;
        *(a3 + 32) = &off_28738AEB8;

        *a3 = v27;
        goto LABEL_20;
      }

LABEL_26:
      __break(1u);
      return result;
    }

    goto LABEL_24;
  }

  *a3 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = type metadata accessor for PASPersonalSourceAuthController();
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  v6[2] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  v6[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  v6[4] = v9;
  *(a3 + 32) = v5;
  *(a3 + 40) = &off_28738AC20;
  *(a3 + 8) = v6;
  *(a3 + 48) = 2;
}

Swift::Void __swiftcall PASFlowStepFamilyPicker.continueWithSelectedAccount()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v16 - v2;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = sub_2610BC794();
  v6 = sub_2610BCD84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepFamilyPicker continueWithSelectedAccount", v7, 2u);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v8 = sub_2610642B0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  if (v17 >> 62)
  {
    v9 = sub_2610BD0E4();
  }

  else
  {
    v9 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v10 = v17;
  v11 = sub_2610BCC94();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  LOBYTE(v17) = 1;
  v12 = qword_27FE63820;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_27FE65948;
  v14 = sub_261069814(&qword_27FE646F8, type metadata accessor for PASAnalyticsActor.PASAnalyticsActorType, &protocol conformance descriptor for PASAnalyticsActor.PASAnalyticsActorType);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  *(v15 + 32) = v8;
  *(v15 + 40) = v9;
  *(v15 + 48) = v10;
  *(v15 + 56) = v17;

  sub_261042434(0, 0, v3, &unk_2610C2520, v15);

  sub_2610439BC();
}

uint64_t PASFlowStepFamilyPicker.createNewAccount()()
{
  v1[9] = v0;
  sub_2610BCC74();
  v1[10] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_261067FE8, v3, v2);
}

uint64_t sub_261067FE8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepFamilyPicker createNewAccount", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v0[7] = 0;

  sub_2610BC854();
  v0[13] = sub_2610642B0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v5 = v0[8];
  if (v5 >> 62)
  {
    v6 = sub_2610BD0E4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[14] = v6;

  return MEMORY[0x2822009F8](sub_260FDB42C, 0, 0);
}

uint64_t sub_2610681D8()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__selectedMember;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__canAddMembers;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__familyMembers;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66080, &qword_2610CBF30);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_dataSource));

  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___fetchLock, &qword_27FE64740, &qword_2610C2530);
}

uint64_t PASFlowStepFamilyPicker.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__selectedMember;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__canAddMembers;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__familyMembers;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66080, &qword_2610CBF30);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_dataSource));

  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___fetchLock, &qword_27FE64740, &qword_2610C2530);

  return v0;
}

uint64_t PASFlowStepFamilyPicker.__deallocating_deinit()
{
  v0 = PASFlowStepFamilyPicker.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26106859C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2610BD0E4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2610BD0E4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_26106868C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26108430C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26106868C(uint64_t a1, char a2)
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

  sub_2610BD0E4();
LABEL_9:
  result = sub_2610BCFD4();
  *v2 = result;
  return result;
}

uint64_t sub_26106872C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16[3] = sub_260FA9AB4(0, &unk_27FE63D10, 0x277CF0178);
  v16[4] = &protocol witness table for AKAppleIDAuthenticationController;
  v16[0] = a3;
  v15[3] = &type metadata for PASUserPasswordDataSource;
  v15[4] = &protocol witness table for PASUserPasswordDataSource;
  v14[3] = type metadata accessor for PASFamilyMember();
  v14[4] = sub_261069814(&unk_27FE64210, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
  v14[0] = a1;
  type metadata accessor for FAFamilyMemberProxiedAuthController();
  v8 = swift_allocObject();
  sub_260FA99E0(v14, v8 + 16);
  sub_260FA99E0(a2, v8 + 56);
  sub_260FA99E0(v16, v8 + 96);
  sub_260FA99E0(v15, v8 + 136);
  *(v8 + 176) = a4;
  if (!*(a4 + 16))
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v9 = sub_2610BC7B4();
    __swift_project_value_buffer(v9, qword_27FE65900);
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_260F97000, v10, v11, "FAFamilyMemberProxiedAuthController was init'ed with no auth modes!", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return v8;
}

uint64_t sub_261068920(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v39 = a1;
  v40 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66080, &qword_2610CBF30);
  v6 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v37 - v18;
  v42[3] = &type metadata for PASFamilyMemberPickerDataSource;
  v42[4] = &protocol witness table for PASFamilyMemberPickerDataSource;
  v20 = swift_allocObject();
  v41 = 0;
  v42[0] = v20;
  v21 = a3[3];
  v20[3] = a3[2];
  v20[4] = v21;
  v20[5] = a3[4];
  v22 = a3[1];
  v20[1] = *a3;
  v20[2] = v22;
  v23 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__selectedMember;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64788, &qword_2610C25B8);
  sub_2610BC804();
  (*(v16 + 32))(a4 + v23, v19, v15);
  v24 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__canAddMembers;
  LOBYTE(v41) = 0;
  sub_2610BC804();
  (*(v11 + 32))(a4 + v24, v14, v10);
  v25 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__familyMembers;
  v41 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66110, &qword_2610CC1C0);
  sub_2610BC804();
  (*(v6 + 32))(a4 + v25, v9, v38);
  v26 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(a4 + v26) = v27;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_supportedAuthModes) = &unk_2873831F8;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error) = 0;
  v28 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__lockProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE647A8, &unk_2610C2630);
  v29 = swift_allocObject();
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0;
  *(a4 + v28) = v29;
  v30 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__featureFlagsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v31 = swift_allocObject();
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0;
  *(a4 + v30) = v31;
  v32 = a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___fetchLock;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  v33 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v34 = swift_allocObject();
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0;
  *(a4 + v33) = v34;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___analytics) = 0;
  sub_260FA99E0(v42, a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_dataSource);
  v35 = sub_26104DC44(v39, v40);
  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  return v35;
}

uint64_t sub_261068D50(uint64_t a1, uint64_t a2)
{
  v11[5] = type metadata accessor for PASFamilyMemberImageProvider();
  v11[6] = &protocol witness table for PASFamilyMemberImageProvider;
  v11[2] = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  v11[7] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE647A0, &unk_2610C2620);
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  v11[8] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  v11[9] = v6;
  v11[0] = sub_2610807B0;
  v11[1] = 0;
  type metadata accessor for PASFlowStepFamilyPicker(0);
  v7 = swift_allocObject();
  sub_260FDD844(v11, v10);
  v8 = sub_261068920(a1, a2, v10, v7);
  sub_260FDD8A0(v11);
  return v8;
}

uint64_t sub_261068E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v39 = a3;
  v41 = a1;
  v42 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66080, &qword_2610CBF30);
  v8 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v37 - v20;
  v44[3] = a5;
  v44[4] = v38;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, v39, a5);
  v23 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__selectedMember;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64788, &qword_2610C25B8);
  sub_2610BC804();
  (*(v18 + 32))(a4 + v23, v21, v17);
  v24 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__canAddMembers;
  LOBYTE(v43) = 0;
  sub_2610BC804();
  (*(v13 + 32))(a4 + v24, v16, v12);
  v25 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__familyMembers;
  v43 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66110, &qword_2610CC1C0);
  sub_2610BC804();
  (*(v8 + 32))(a4 + v25, v11, v40);
  v26 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(a4 + v26) = v27;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_supportedAuthModes) = &unk_2873836A0;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error) = 0;
  v28 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__lockProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE647A8, &unk_2610C2630);
  v29 = swift_allocObject();
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0;
  *(a4 + v28) = v29;
  v30 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__featureFlagsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v31 = swift_allocObject();
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0;
  *(a4 + v30) = v31;
  v32 = a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___fetchLock;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  v33 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v34 = swift_allocObject();
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0;
  *(a4 + v33) = v34;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___analytics) = 0;
  sub_260FA99E0(v44, a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_dataSource);
  v35 = sub_26104DC44(v41, v42);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  return v35;
}

uint64_t sub_2610692CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  return sub_261068E98(a1, a2, v13, v14, a5, a6);
}

unint64_t sub_2610693DC()
{
  result = qword_27FE660C8;
  if (!qword_27FE660C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE660C8);
  }

  return result;
}

unint64_t sub_261069430(void *a1)
{
  a1[1] = sub_261069468();
  a1[2] = sub_2610694BC();
  result = sub_261069510();
  a1[3] = result;
  return result;
}

unint64_t sub_261069468()
{
  result = qword_27FE660D0;
  if (!qword_27FE660D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE660D0);
  }

  return result;
}

unint64_t sub_2610694BC()
{
  result = qword_27FE660D8;
  if (!qword_27FE660D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE660D8);
  }

  return result;
}

unint64_t sub_261069510()
{
  result = qword_27FE660E0;
  if (!qword_27FE660E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE660E0);
  }

  return result;
}

unint64_t sub_261069564()
{
  result = qword_27FE660E8;
  if (!qword_27FE660E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE660E8);
  }

  return result;
}

uint64_t sub_2610695B8(uint64_t a1)
{
  result = sub_261069814(&qword_27FE660F0, type metadata accessor for PASFlowStepFamilyPicker, &protocol conformance descriptor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for PASFlowStepFamilyPicker(uint64_t a1)
{
  result = qword_27FE660F8;
  if (!qword_27FE660F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261069674(uint64_t a1)
{
  sub_260FC5678(319, &qword_27FE64780, &qword_27FE64788, &qword_2610C25B8);
  if (v1 <= 0x3F)
  {
    sub_260FDD7E4();
    if (v2 <= 0x3F)
    {
      sub_260FC5678(319, &qword_27FE66108, &qword_27FE66110, &qword_2610CC1C0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_261069814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2610698BC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_26106990C(a1, a2);
  return v4;
}

uint64_t *sub_26106990C(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  sub_2610BCC24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE661A0, &unk_2610CC320);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v7 = sub_2610BCB74();
  v8 = sub_261040F14(v7, v6, TupleTypeMetadata2, MEMORY[0x277D837E0]);

  v2[15] = a2;
  v2[16] = v8;
  v2[14] = a1;
  return v2;
}

uint64_t sub_261069A1C(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v49 = a4;
  v50 = a3;
  v7 = *(*v4 + 80);
  v41 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v40 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v48 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v42 = v7;
  v45 = v12;
  v13 = sub_2610BCC24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE661A0, &unk_2610CC320);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_2610BCE64();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v47 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v40 - v22;
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v40 - v25;
  swift_beginAccess();
  v46 = v4;
  v51 = a1;
  v52[0] = a1;
  v52[1] = a2;

  sub_2610BC964();
  v27 = a2;

  v28 = *(TupleTypeMetadata2 - 8);
  if ((*(v28 + 48))(v23, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v16 + 8))(v23, v15);
  }

  v44 = *&v23[*(TupleTypeMetadata2 + 48)];
  v30 = v43;
  (*(v43 + 32))(v26, v23, v13);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v31 = sub_2610BC7B4();
  __swift_project_value_buffer(v31, qword_27FE65900);

  v32 = sub_2610BC794();
  v33 = sub_2610BCD84();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v52[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_260FA5970(v51, v27, v52);
    _os_log_impl(&dword_260F97000, v32, v33, "Received incoming response from peer for identifier: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x2666F8720](v35, -1, -1);
    MEMORY[0x2666F8720](v34, -1, -1);
  }

  v36 = v48;
  v37 = sub_2610BCCB4();
  v50(v37);
  v38 = v41;
  v39 = v42;
  (*(v41 + 16))(v40, v36, v42);
  sub_2610BCC14();
  (*(v38 + 8))(v36, v39);
  (*(v28 + 56))(v47, 1, 1, TupleTypeMetadata2);
  v52[3] = v51;
  v52[4] = v27;
  swift_beginAccess();
  sub_2610BC934();

  sub_2610BC974();
  swift_endAccess();

  return (*(v30 + 8))(v26, v13);
}

uint64_t sub_261069FE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v9 = sub_2610BCC24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE661A0, &unk_2610CC320);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_2610BCE64();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v37 - v17;
  v19 = sub_2610BCC94();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  type metadata accessor for IDSResponseHandler(255, v8, v20, v21);
  WitnessTable = swift_getWitnessTable();
  v23 = swift_allocObject();
  v23[2] = v4;
  v23[3] = WitnessTable;
  v23[4] = v4;
  v23[5] = a1;
  v23[6] = a2;
  swift_retain_n();

  v24 = sub_261042D5C(0, 0, v18, &unk_2610CC338, v23);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v25 = sub_2610BC7B4();
  __swift_project_value_buffer(v25, qword_27FE65900);

  v26 = sub_2610BC794();
  v27 = sub_2610BCD84();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v39 = a3;
    v29 = v28;
    v30 = swift_slowAlloc();
    v38 = v9;
    v31 = a1;
    v32 = v30;
    v40[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_260FA5970(v31, a2, v40);
    _os_log_impl(&dword_260F97000, v26, v27, "Sent outgoing request to peer for identifier: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    v33 = v32;
    a1 = v31;
    v9 = v38;
    MEMORY[0x2666F8720](v33, -1, -1);
    v34 = v29;
    a3 = v39;
    MEMORY[0x2666F8720](v34, -1, -1);
  }

  v35 = *(TupleTypeMetadata2 + 48);
  (*(*(v9 - 8) + 16))(v14, a3, v9);
  *&v14[v35] = v24;
  (*(*(TupleTypeMetadata2 - 8) + 56))(v14, 0, 1, TupleTypeMetadata2);
  v40[3] = a1;
  v40[4] = a2;
  swift_beginAccess();
  sub_2610BC934();

  sub_2610BC974();
  swift_endAccess();
}

uint64_t sub_26106A40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v8 = sub_2610BCC24();
  v6[16] = v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE661A0, &unk_2610CC320);
  v6[17] = swift_getTupleTypeMetadata2();
  v9 = sub_2610BCE64();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  v10 = sub_2610BD084();
  v6[24] = v10;
  v6[25] = *(v10 - 8);
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26106A610, a4, 0);
}

uint64_t sub_26106A610()
{
  v1 = *(v0 + 104);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  sub_2610BD474();
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = sub_26106A6E0;

  return sub_261096BAC(v3, v2, 0, 0, 1);
}

uint64_t sub_26106A6E0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  *(*v1 + 224) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_26106AB0C;
  }

  else
  {
    v7 = sub_26106A868;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_26106A868()
{
  v1 = v0[21];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  swift_beginAccess();
  v0[8] = v4;
  v0[9] = v3;

  sub_2610BC964();

  v5 = *(v2 - 8);
  if ((*(v5 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[19] + 8))(v0[21], v0[18]);
  }

  else
  {
    v7 = v0[22];
    v6 = v0[23];
    v9 = v0[20];
    v8 = v0[21];
    v10 = v0[16];
    v11 = v0[17];
    v16 = v0[14];
    v17 = v0[15];

    (*(v7 + 32))(v6, v8, v10);
    sub_26106ACF4();
    v12 = swift_allocError();
    *v13 = 4;
    v0[12] = v12;
    sub_2610BCC04();
    (*(v5 + 56))(v9, 1, 1, v11);
    v0[10] = v16;
    v0[11] = v17;
    swift_beginAccess();
    sub_2610BC934();

    sub_2610BC974();
    swift_endAccess();
    (*(v7 + 8))(v6, v10);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_26106AB0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26106AB98()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_26106ABC0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26106AC2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260FB6DB4;

  return sub_26106A40C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_26106ACF4()
{
  result = qword_27FE66E70;
  if (!qword_27FE66E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66E70);
  }

  return result;
}

uint64_t Message.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2610BC614();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Message.metrics.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);

  *(v2 + v4) = v3;
  return result;
}

uint64_t static Message.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_2610BC5F4() & 1) != 0 && (v9 = type metadata accessor for Message(0, a3, a4, v8), *(a1 + *(v9 + 36)) == *(a2 + *(v9 + 36))) && (v10 = *(v9 + 40), v11 = *(a1 + v10), v14 = *(a2 + v10), v15 = v11, , , v12 = static Message.Metrics.== infix(_:_:)(&v15, &v14, a3, a4), , , (v12))
  {
    return sub_2610BC9A4() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26106AFBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2610BD384();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_26106B118(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x7363697274656DLL;
  if (a1 != 2)
  {
    v2 = 0x646E616D6D6F63;
  }

  if (a1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26106B1B0(uint64_t a1)
{
  sub_2610BD514();
  sub_2610095C4(v3, *v1);
  return sub_2610BD574();
}

uint64_t sub_26106B204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26106AFBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26106B234@<X0>(_BYTE *a2@<X8>)
{
  result = sub_26106C488();
  *a2 = result;
  return result;
}

uint64_t sub_26106B260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26106B2B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v5 = v4;
  v7 = *(a2 + 16);
  v19 = *(a2 + 24);
  v20 = v7;
  type metadata accessor for Message.CodingKeys(255, v7, v19, a4);
  swift_getWitnessTable();
  v8 = sub_2610BD2D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5F4();
  v27 = 0;
  sub_2610BC614();
  sub_26106BCE8(&qword_27FE661A8, MEMORY[0x277CC95F8]);
  v13 = v22;
  sub_2610BD2A4();
  if (!v13)
  {
    v14 = v19;
    v15 = v20;
    v26 = 1;
    sub_2610BD2B4();
    v23 = *(v5 + *(v21 + 40));
    v25 = 2;
    type metadata accessor for Message.Metrics(0, v15, v14, v16);

    swift_getWitnessTable();
    sub_2610BD2A4();

    v24 = 3;
    sub_2610BD2A4();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t Message.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_2610BC614();
  sub_26106BCE8(&qword_27FE661B0, MEMORY[0x277CC9600]);
  sub_2610BC994();
  sub_2610BD534();
  v5 = type metadata accessor for Message.Metrics(0, *(a2 + 16), *(a2 + 24), v4);

  Message.Metrics.hash(into:)(a1, v5, v6, v7);

  return sub_2610BC994();
}

uint64_t Message.hashValue.getter(uint64_t a1)
{
  sub_2610BD514();
  Message.hash(into:)(v3, a1);
  return sub_2610BD574();
}

uint64_t Message.init(from:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v32 = *(a2 - 1);
  MEMORY[0x28223BE20](a1, a2);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2610BC614();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v8);
  v39 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Message.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v41 = sub_2610BD224();
  v35 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v11);
  v13 = &v30 - v12;
  v37 = a3;
  v15 = type metadata accessor for Message(0, a2, a3, v14);
  v31 = *(v15 - 1);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v30 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v13;
  v19 = v42;
  sub_2610BD5D4();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v20 = v35;
  v21 = v36;
  v42 = v18;
  v22 = v37;
  v47 = 0;
  sub_26106BCE8(qword_27FE661B8, MEMORY[0x277CC9618]);
  v23 = v38;
  sub_2610BD1E4();
  v24 = v23;
  v25 = v42;
  (*(v21 + 32))(v42, v39, v24);
  v46 = 1;
  v25[v15[9]] = sub_2610BD1F4();
  v39 = a2;
  type metadata accessor for Message.Metrics(0, a2, v22, v26);
  v45 = 2;
  swift_getWitnessTable();
  sub_2610BD1E4();
  *&v25[v15[10]] = v43;
  v44 = 3;
  v27 = v39;
  sub_2610BD1E4();
  (*(v20 + 8))(v40, v41);
  (*(v32 + 32))(&v25[v15[11]], v34, v27);
  v28 = v31;
  (*(v31 + 16))(v33, v25, v15);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return (*(v28 + 8))(v25, v15);
}

uint64_t sub_26106BCA4(uint64_t a1, uint64_t a2)
{
  sub_2610BD514();
  Message.hash(into:)(v4, a2);
  return sub_2610BD574();
}

uint64_t sub_26106BCE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2610BC614();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26106BD60(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_26106BE04(uint64_t a1)
{
  result = sub_2610BC614();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for Message.Metrics(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26106BEB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_2610BC614() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v7 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v6 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + (v10 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v11) + *(v8 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1);
      }

      else
      {
        v23 = (a1 + v10) & 0xFFFFFFFFFFFFFFF8;
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v8 + 48);

          return v25((v23 + v11 + 16) & ~v11, v9);
        }

        else
        {
          v24 = *(v23 + 8);
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + (v10 & 0xFFFFFFF8) + 16) & ~v11) + *(v8 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_26106C12C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_2610BC614() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v9 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + (v12 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + *(v10 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 >= 4)
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v16)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
LABEL_14:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

LABEL_51:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 == v15)
  {
    v23 = *(v8 + 56);

    v23(a1, a2);
  }

  else
  {
    v24 = &a1[v12] & 0xFFFFFFFFFFFFFFF8;
    if ((v14 & 0x80000000) != 0)
    {
      v26 = *(v10 + 56);

      v26((v24 + v13 + 16) & ~v13, a2, v11);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v25 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v25 = (a2 - 1);
      }

      *(v24 + 8) = v25;
    }
  }
}

id PASAnisetteRemoteRequestHandler.__allocating_init(messageSessionProvider:anisetteController:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11 = sub_261076AD4(v7, v10, v2, v5, v8, v6, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

uint64_t sub_26106C524(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1, a2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2610BD594();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v16, v9);
    return sub_2610BCC04();
  }

  else
  {
    (*(v4 + 32))(v7, v16, v3);
    return sub_2610BCC14();
  }
}

uint64_t sub_26106C760(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_260FBF860;

  return v7();
}

uint64_t sub_26106C848(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_2610BCF84();
    v5 = 0xD000000000000038;
    v6 = 0x80000002610D57F0;
  }

  else
  {
    sub_2610BCF84();
    v6 = 0x80000002610D5830;
    v5 = 0xD000000000000035;
  }

  MEMORY[0x2666F7380](v5, v6);
  MEMORY[0x2666F7380](a1, a2);
  return 0;
}

unint64_t sub_26106C90C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v5;
  v6 = sub_26106C848(v1, v2, v3);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v8;
}

uint64_t sub_26106C9EC(uint64_t a1)
{
  v2 = sub_26107B20C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26106CA28(uint64_t a1)
{
  v2 = sub_26107B20C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26106CA64(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 0xE90000000000006ELL;
  v8 = 0x6F697369766F7270;
  v9 = 0xE500000000000000;
  v10 = 0x6863746566;
  v11 = 0xE600000000000000;
  v12 = 0x79636167656CLL;
  if (a1 != 4)
  {
    v12 = 0x7461747365747461;
    v11 = 0xEF617461446E6F69;
  }

  if (a1 != 3)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = 0xE400000000000000;
  v14 = 1668184435;
  if (a1 != 1)
  {
    v14 = 0x6573617265;
    v13 = 0xE500000000000000;
  }

  if (a1)
  {
    v8 = v14;
    v7 = v13;
  }

  if (a1 <= 2u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  if (a1 <= 2u)
  {
    v16 = v7;
  }

  else
  {
    v16 = v9;
  }

  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;
  v23[5] = a3;
  v23[6] = a4;
  v24 = *(a7 + 32);

  v24(v15, v16, a2, sub_26107AEB4, v23, a5, a7);
}

uint64_t sub_26106CBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v24 - v18;
  v20 = sub_2610BCC94();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a7;
  v21[5] = a8;
  v21[6] = a9;
  v21[7] = a5;
  v21[8] = a6;
  v21[9] = a1;
  v22 = v25;
  v21[10] = a2;
  v21[11] = v22;
  v21[12] = a4;

  sub_261042434(0, 0, v19, &unk_2610CCA08, v21);
}

uint64_t sub_26106CD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v14;
  v8[10] = v15;
  v8[7] = v12;
  v8[8] = v13;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v9 = sub_2610BD594();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26106CE68, 0, 0);
}

uint64_t sub_26106CE68()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = *(v0 + 64);
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_26106CF54;
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);

  return Result<>.init(catching:)(v7, &unk_2610CCA18, v4, v8);
}

uint64_t sub_26106CF54()
{

  return MEMORY[0x2822009F8](sub_26106D06C, 0, 0);
}

uint64_t sub_26106D06C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[6];
  v5 = sub_26100A520(v1, v0[9]);
  v4(v5, 0, v6);

  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26106D128(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 96) = a2;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_26106D158, 0, 0);
}

uint64_t sub_26106D158()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 96);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 56);
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
  *(v4 + 64) = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_26106D268;
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000021, 0x80000002610D5760, sub_26107793C, v4, v7);
}

uint64_t sub_26106D268()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26106D3A4, 0, 0);
}

uint64_t sub_26106D3A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26106D408(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a2;
  v40 = a6;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v37 = a7;
  v13 = sub_2610BCC24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v35 - v16;
  v18 = 0xE90000000000006ELL;
  v19 = 0x6F697369766F7270;
  v20 = 0xE500000000000000;
  v21 = 0x6863746566;
  v22 = 0xE600000000000000;
  v23 = 0x79636167656CLL;
  if (a3 != 4)
  {
    v23 = 0x7461747365747461;
    v22 = 0xEF617461446E6F69;
  }

  if (a3 != 3)
  {
    v21 = v23;
    v20 = v22;
  }

  v24 = 0xE400000000000000;
  v25 = 1668184435;
  if (a3 != 1)
  {
    v25 = 0x6573617265;
    v24 = 0xE500000000000000;
  }

  if (a3)
  {
    v19 = v25;
    v18 = v24;
  }

  if (a3 <= 2u)
  {
    v26 = v19;
  }

  else
  {
    v26 = v21;
  }

  v36 = v26;
  if (a3 <= 2u)
  {
    v27 = v18;
  }

  else
  {
    v27 = v20;
  }

  v41 = sub_260FA8BCC(MEMORY[0x277D84F90]);

  sub_261077950(v28, &v41, sub_26106D6D8, 0, a5);

  v29 = v41;
  (*(v14 + 16))(v17, a1, v13);
  v30 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v31 = swift_allocObject();
  v32 = v40;
  v33 = v37;
  *(v31 + 2) = v40;
  *(v31 + 3) = v33;
  *(v31 + 4) = a8;
  (*(v14 + 32))(&v31[v30], v17, v13);
  (*(a8 + 40))(v36, v27, v38, v29, sub_261077C78, v31, v32, a8);
}

uint64_t sub_26106D794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v8 = sub_2610BD594();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15 - v11;
  sub_26100AA90(a3, a6, (&v15 - v11));
  v13 = sub_2610BCC24();
  sub_26106C524(v12, v13);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26106D8C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, __int128 *a3@<X8>)
{
  v4 = 0xE700000000000000;
  v5 = 0x617461446D6973;
  v6 = 0xEB000000006E6F69;
  v7 = 0x7369766F72506F64;
  if (a2 != 2)
  {
    v7 = 0x65757165526C7275;
    v6 = 0xEE00617461447473;
  }

  if (a2)
  {
    v5 = 1684632420;
    v4 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a2 > 1u)
  {
    v4 = v6;
  }

  *&v24 = v8;
  *(&v24 + 1) = v4;
  sub_2610BCF24();
  if (*(a1 + 16) && (v11 = sub_260FA60B4(v25), (v12 & 1) != 0))
  {
    sub_260FA3F5C(*(a1 + 56) + 32 * v11, v26);
    sub_260FA9764(v25);
    sub_260FA3F5C(v26, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FA0, &qword_2610BF500);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v26);
      *a3 = v24;
    }

    else
    {
      sub_26107AEA0(0, 0xB000000000000000);
      sub_260FA3F5C(v26, v25);
      v17 = sub_2610BCA34();
      v19 = v18;
      v20 = a2;
      v21 = *&aSimdata_1[8 * a2];
      v22 = *&aDoprovisurlreq[8 * v20 + 16];
      sub_260FBE4B4();
      swift_allocError();
      *v23 = v17;
      *(v23 + 8) = v19;
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      *(v23 + 32) = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }
  }

  else
  {
    sub_260FA9764(v25);
    v14 = *&aSimdata_1[8 * a2];
    v15 = *&aDoprovisurlreq[8 * a2 + 16];
    sub_260FBE4B4();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26106DB20(uint64_t a1, char a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v4 = 100;
    }

    else
    {
      v4 = 117;
    }
  }

  else
  {
    v4 = 115;
    if (a2)
    {
      v4 = 100;
    }
  }

  v19 = v4;
  sub_2610BCF24();
  if (*(a1 + 16) && (v5 = sub_260FA60B4(v20), (v6 & 1) != 0))
  {
    sub_260FA3F5C(*(a1 + 56) + 32 * v5, v21);
    sub_260FA9764(v20);
    sub_260FA3F5C(v21, v20);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      v7 = v19;
    }

    else
    {
      sub_260FA3F5C(v21, v20);
      v12 = sub_2610BCA34();
      v14 = v13;
      v15 = a2;
      v16 = *&aSimdata_1[8 * a2];
      v17 = *&aDoprovisurlreq[8 * v15 + 16];
      sub_260FBE4B4();
      swift_allocError();
      *v18 = v12;
      *(v18 + 8) = v14;
      *(v18 + 16) = v16;
      *(v18 + 24) = v17;
      *(v18 + 32) = 1;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
    }
  }

  else
  {
    sub_260FA9764(v20);
    v8 = *&aSimdata_1[8 * a2];
    v9 = *&aDoprovisurlreq[8 * a2 + 16];
    sub_260FBE4B4();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    swift_willThrow();
  }

  return v7 & 1;
}

uint64_t sub_26106DD54(uint64_t a1, char a2)
{
  v2 = 0x617461446D6973;
  v3 = 0x7369766F72506F64;
  if (a2 != 2)
  {
    v3 = 0x65757165526C7275;
  }

  if (a2)
  {
    v2 = 1684632420;
  }

  if (a2 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v20 = v4;
  sub_2610BCF24();
  if (*(a1 + 16) && (v7 = sub_260FA60B4(v21), (v8 & 1) != 0))
  {
    sub_260FA3F5C(*(a1 + 56) + 32 * v7, v22);
    sub_260FA9764(v21);
    sub_260FA3F5C(v22, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66360, &qword_2610C2E00);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      return v20;
    }

    else
    {
      sub_260FA3F5C(v22, v21);
      v13 = sub_2610BCA34();
      v15 = v14;
      v16 = a2;
      v17 = *&aSimdata_1[8 * a2];
      v18 = *&aDoprovisurlreq[8 * v16 + 16];
      sub_260FBE4B4();
      swift_allocError();
      *v19 = v13;
      *(v19 + 8) = v15;
      *(v19 + 16) = v17;
      *(v19 + 24) = v18;
      *(v19 + 32) = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }
  }

  else
  {
    sub_260FA9764(v21);
    v10 = *&aSimdata_1[8 * a2];
    v11 = *&aDoprovisurlreq[8 * a2 + 16];
    sub_260FBE4B4();
    swift_allocError();
    *v12 = v10;
    *(v12 + 8) = v11;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_26106DF94@<X0>(uint64_t a1@<X0>, char a2@<W1>, __int128 *a3@<X8>)
{
  v4 = 0xE700000000000000;
  v5 = 0x617461446D6973;
  v6 = 0xEB000000006E6F69;
  v7 = 0x7369766F72506F64;
  if (a2 != 2)
  {
    v7 = 0x65757165526C7275;
    v6 = 0xEE00617461447473;
  }

  if (a2)
  {
    v5 = 1684632420;
    v4 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a2 > 1u)
  {
    v4 = v6;
  }

  *&v24 = v8;
  *(&v24 + 1) = v4;
  sub_2610BCF24();
  if (*(a1 + 16) && (v11 = sub_260FA60B4(v25), (v12 & 1) != 0))
  {
    sub_260FA3F5C(*(a1 + 56) + 32 * v11, v26);
    sub_260FA9764(v25);
    sub_260FA3F5C(v26, v25);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v26);
      *a3 = v24;
    }

    else
    {
      sub_260FAC458(0, 0xF000000000000000);
      sub_260FA3F5C(v26, v25);
      v17 = sub_2610BCA34();
      v19 = v18;
      v20 = a2;
      v21 = *&aSimdata_1[8 * a2];
      v22 = *&aDoprovisurlreq[8 * v20 + 16];
      sub_260FBE4B4();
      swift_allocError();
      *v23 = v17;
      *(v23 + 8) = v19;
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      *(v23 + 32) = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }
  }

  else
  {
    sub_260FA9764(v25);
    v14 = *&aSimdata_1[8 * a2];
    v15 = *&aDoprovisurlreq[8 * a2 + 16];
    sub_260FBE4B4();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26106E1F0()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26106E2C0(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_26106E37C(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

unint64_t sub_26106E448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261078370(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26106E478(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x617461446D6973;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7369766F72506F64;
  if (*v1 != 2)
  {
    v5 = 0x65757165526C7275;
    v4 = 0xEE00617461447473;
  }

  if (*v1)
  {
    v3 = 1684632420;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_26106E524()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26106E640;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662C0, &qword_2610CC628);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26107B348;
  v0[13] = &block_descriptor_6;
  v0[14] = v2;
  [v1 anisetteDataWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26106E640()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_26107B344;
  }

  else
  {
    v2 = sub_26107B364;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26106E774()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_26107B358;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668C0, &qword_2610C4530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2610A0A60;
  v0[13] = &block_descriptor_183;
  v0[14] = v2;
  [v1 provisionWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26106E890(uint64_t a1, unint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB727C;

  return sub_2610783BC(a1, a2);
}

uint64_t sub_26106E970()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_26106EA8C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668C0, &qword_2610C4530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2610A0A60;
  v0[13] = &block_descriptor_173;
  v0[14] = v2;
  [v1 eraseWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26106EA8C(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v1 + 152);
    v3 = *(v2 + 8);
  }

  return v3(v4);
}

uint64_t sub_26106EBCC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26106ECE8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662C0, &qword_2610CC628);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26107B348;
  v0[13] = &block_descriptor_169;
  v0[14] = v2;
  [v1 anisetteDataWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26106ECE8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_26106EE14;
  }

  else
  {
    v2 = sub_26106EDF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26106EE14(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26106EE80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6F34;

  return sub_26107863C(a1, a2);
}

uint64_t sub_26106EF3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FFCB98;

  return sub_261078774(a1);
}

uint64_t sub_26106EFEC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

id PASAnisetteRemoteRequestHandler.init(messageSessionProvider:anisetteController:)(void *a1, void *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x28223BE20](v8, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  MEMORY[0x28223BE20](v14, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_2610768E4(v10, v16, v3, v7, v12, v6, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v18;
}

id PASAnisetteRemoteRequestHandler.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65900);
  v4 = sub_2610BC794();
  v5 = sub_2610BCD54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler deinit", v6, 2u);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_26106F400()
{
  v0[34] = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_registered;
  v0[35] = sub_2610BCC74();
  v0[36] = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26106F4A4, v2, v1);
}

uint64_t sub_26106F4A4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  *(v0 + 424) = *(v1 + v2);

  return MEMORY[0x2822009F8](sub_26106F518, 0, 0);
}

uint64_t sub_26106F518()
{
  if (*(v0 + 424) == 1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = sub_2610BC7B4();
    __swift_project_value_buffer(v1, qword_27FE65900);
    v2 = sub_2610BC794();
    v3 = sub_2610BCD54();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler registerForRequests again", v4, 2u);
      MEMORY[0x2666F8720](v4, -1, -1);
    }
  }

  v5 = *(v0 + 264);
  v6 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_messageSessionProvider;
  *(v0 + 296) = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_messageSessionProvider;
  v7 = *(v5 + v6 + 24);
  v8 = *(v5 + v6 + 32);
  __swift_project_boxed_opaque_existential_1((v5 + v6), v7);
  v11 = (*(v8 + 16) + **(v8 + 16));
  v9 = swift_task_alloc();
  *(v0 + 304) = v9;
  *v9 = v0;
  v9[1] = sub_26106F714;

  return v11(v0 + 16, v7, v8);
}

uint64_t sub_26106F714()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_26107094C;
  }

  else
  {
    v2 = sub_26106F828;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26106F828()
{
  v1 = (v0[33] + v0[37]);
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F80, &qword_2610C4DC0);
  v0[40] = v5;
  sub_26106CA64(0, 0, &unk_2610CC648, v4, v2, v5, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[41] = v8;
  *v8 = v0;
  v8[1] = sub_26106FA04;

  return v10(v0 + 7, v6, v7);
}

uint64_t sub_26106FA04()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_261070B18;
  }

  else
  {
    v2 = sub_26106FB18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26106FB18()
{
  v1 = v0[40];
  v2 = (v0[33] + v0[37]);
  v3 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v3);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26106CA64(1u, 0, &unk_2610CC660, v5, v3, v1, v4);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = sub_26106FCE0;

  return v10(v0 + 12, v6, v7);
}

uint64_t sub_26106FCE0()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_261070CE4;
  }

  else
  {
    v2 = sub_26106FDF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26106FDF4()
{
  v1 = v0[40];
  v2 = (v0[33] + v0[37]);
  v3 = v0[15];
  v4 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v3);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26106CA64(2u, 0, &unk_2610CC670, v5, v3, v1, v4);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = sub_26106FFBC;

  return v10(v0 + 17, v6, v7);
}

uint64_t sub_26106FFBC()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_261070EB0;
  }

  else
  {
    v2 = sub_2610700D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610700D0()
{
  v1 = (v0[33] + v0[37]);
  v2 = v0[20];
  v3 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FA0, &qword_2610BF500);
  v0[47] = v5;
  sub_26106CA64(3u, 0, &unk_2610CC680, v4, v2, v5, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v8[1] = sub_2610702AC;

  return v10(v0 + 22, v6, v7);
}

uint64_t sub_2610702AC()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_26107107C;
  }

  else
  {
    v2 = sub_2610703C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2610703C0()
{
  v1 = v0[47];
  v2 = (v0[33] + v0[37]);
  v3 = v0[25];
  v4 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v3);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26106CA64(4u, 0, &unk_2610CC698, v5, v3, v1, v4);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[50] = v8;
  *v8 = v0;
  v8[1] = sub_261070588;

  return v10(v0 + 27, v6, v7);
}

uint64_t sub_261070588()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_261071248;
  }

  else
  {
    v2 = sub_26107069C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26107069C()
{
  v1 = v0[47];
  v2 = v0[30];
  v3 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v2);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26106CA64(5u, 0, &unk_2610CC6A8, v4, v2, v1, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  v0[52] = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610707C4, v6, v5);
}

uint64_t sub_2610707C4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  *(v1 + v2) = 1;

  return MEMORY[0x2822009F8](sub_261070838, 0, 0);
}

uint64_t sub_261070838()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler did registerForRequests", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26107094C()
{
  v15 = v0;
  v1 = v0[39];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[32] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler failed to register target anisette requests %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_261070B18()
{
  v15 = v0;
  v1 = v0[42];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[32] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler failed to register target anisette requests %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_261070CE4()
{
  v15 = v0;
  v1 = v0[44];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[32] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler failed to register target anisette requests %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_261070EB0()
{
  v15 = v0;
  v1 = v0[46];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[32] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler failed to register target anisette requests %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_26107107C()
{
  v15 = v0;
  v1 = v0[49];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[32] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler failed to register target anisette requests %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_261071248()
{
  v15 = v0;
  v1 = v0[51];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[32] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler failed to register target anisette requests %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_261071414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_261071434, 0, 0);
}

uint64_t sub_261071434()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_26107153C;

    return sub_261078B10();
  }

  else
  {
    **(v0 + 40) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_26107153C(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_26107B350;
  }

  else
  {

    *(v4 + 80) = a1 & 1;
    v5 = sub_260FBF858;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261071670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x2822009F8](sub_261071694, 0, 0);
}

uint64_t sub_261071694()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_2610717A4;
    v3 = *(v0 + 48);

    return sub_261078D14(v3);
  }

  else
  {
    **(v0 + 40) = 2;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2610717A4(char a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_26107B354;
  }

  else
  {

    *(v4 + 88) = a1 & 1;
    v5 = sub_2610718D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2610718FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26107191C, 0, 0);
}

uint64_t sub_26107191C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_261071A24;

    return sub_2610791A8();
  }

  else
  {
    **(v0 + 40) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_261071A24(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_261071B58;
  }

  else
  {

    *(v4 + 80) = a1 & 1;
    v5 = sub_260FB4B20;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261071B58()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261071BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x2822009F8](sub_261071BE0, 0, 0);
}

uint64_t sub_261071BE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_261071CF4;
    v3 = v0[6];

    return sub_2610794B4(v3);
  }

  else
  {
    *v0[5] = xmmword_2610BF320;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_261071CF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v7 = sub_261071E58;
  }

  else
  {

    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v7 = sub_261071E30;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261071E58()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261071EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x2822009F8](sub_261071EE0, 0, 0);
}

uint64_t sub_261071EE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_261071FF4;
    v3 = v0[6];

    return sub_261079C90(v3);
  }

  else
  {
    *v0[5] = xmmword_2610BF320;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_261071FF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v7 = sub_26107B354;
  }

  else
  {

    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v7 = sub_26107B35C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261072130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x2822009F8](sub_261072154, 0, 0);
}

uint64_t sub_261072154()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_261071FF4;
    v3 = v0[6];

    return sub_26107A36C(v3);
  }

  else
  {
    *v0[5] = xmmword_2610BF320;
    v5 = v0[1];

    return v5();
  }
}

id PASAnisetteRemoteRequestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2610722FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FB6DB4;

  return PASAnisetteRemoteRequestHandler.registerForRequests()();
}

uint64_t sub_2610723AC()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteDataRequester provisionAnisette", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 56);

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_261072598;

  return v10(v0 + 16, v6, v7);
}

uint64_t sub_261072598()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_260FBF854;
  }

  else
  {
    v4 = sub_2610726C4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2610726C4()
{
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v3 = sub_260FA928C(MEMORY[0x277D84F90]);
  v0[10] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F80, &qword_2610C4DC0);
  *v4 = v0;
  v4[1] = sub_2610727C0;

  return sub_26106D128((v0 + 13), 0, 0, v3, v2, v5, v1);
}

uint64_t sub_2610727C0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_260FBF88C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2610728E8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2610728E8()
{
  v1 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_261072ACC(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_26107B338;

  return sub_26107238C();
}

uint64_t sub_261072B74(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x2822009F8](sub_261072B98, v2, 0);
}

uint64_t sub_261072B98()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteDataRequester syncAnisette", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 144);

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_261072D84;

  return v10(v0 + 88, v6, v7);
}

uint64_t sub_261072D84()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_2610731A8;
  }

  else
  {
    v4 = sub_261072EB0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261072EB0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662E8, &unk_2610CC888);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 64) = MEMORY[0x277CC9318];
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  sub_260FAA188(v2, v1);
  v6 = sub_260FA928C(inited);
  v0[21] = v6;
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE662F0, &unk_2610BECC0);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_261073014;
  v8 = MEMORY[0x277D839B0];

  return sub_26106D128((v0 + 24), 1, 0, v6, v3, v8, v4);
}

uint64_t sub_261073014()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_2610731C4;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_26107313C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26107313C()
{
  v1 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2610731C4()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2610733C0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = a1;

  v6 = sub_2610BC534();
  v8 = v7;

  v3[4] = v6;
  v3[5] = v8;
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_26107349C;

  return sub_261072B74(v6, v8);
}

uint64_t sub_26107349C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = v5[3];
  sub_260FAC46C(v5[4], v5[5]);
  if (v3)
  {
    v9 = sub_2610BC4E4();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(v6[3]);
  v10 = v7[1];

  return v10();
}

uint64_t sub_26107367C()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteDataRequester eraseAnisette", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 56);

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_261073868;

  return v10(v0 + 16, v6, v7);
}

uint64_t sub_261073868()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_260FB6AE8;
  }

  else
  {
    v4 = sub_261073994;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261073994()
{
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v3 = sub_260FA928C(MEMORY[0x277D84F90]);
  v0[10] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_261073A78;
  v5 = MEMORY[0x277D839B0];

  return sub_26106D128((v0 + 13), 2, 0, v3, v2, v5, v1);
}

uint64_t sub_261073A78()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_260FB6B04;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_260FB6A7C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261073D18(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_261073DC0;

  return sub_26107365C();
}

uint64_t sub_261073DC0(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_2610BC4E4();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_261073F54(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 208) = a1;
  return MEMORY[0x2822009F8](sub_261073F78, v1, 0);
}

uint64_t sub_261073F78()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[20] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteDataRequester fetchAnisetteDataAndProvisionIfNecessary", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[19];

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_261074168;

  return v10(v0 + 11, v6, v7);
}

uint64_t sub_261074168()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_26107474C;
  }

  else
  {
    v4 = sub_261074294;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261074294()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v0 + 88), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662E8, &unk_2610CC888);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 2;
  v5 = inited + 32;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = v1;
  v6 = sub_260FA928C(inited);
  *(v0 + 184) = v6;
  swift_setDeallocating();
  sub_260FA9980(v5, &unk_27FE662F0, &unk_2610BECC0);
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_2610743E4;
  v8 = MEMORY[0x277CC9318];

  return sub_26106D128(v0 + 128, 3, 0, v6, v2, v8, v3);
}

uint64_t sub_2610743E4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_261074764;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_26107450C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26107450C()
{
  v19 = v0;
  v1 = v0[25];
  v3 = v0[16];
  v2 = v0[17];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
  sub_260FA9AB4(0, &qword_27FE66310, 0x277CF0160);
  v4 = sub_2610BCD94();
  if (v1)
  {
    sub_260FAC46C(v3, v2);
    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v4;
    v8 = v4;
    v9 = sub_2610BC794();
    v10 = sub_2610BCD84();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 141558274;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2080;
      v0[18] = v7;
      v13 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66318, &unk_2610CC8A8);
      v14 = sub_2610BCA34();
      v16 = sub_260FA5970(v14, v15, &v18);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_260F97000, v9, v10, "PASAnisetteDataRequester fetchAnisetteDataAndProvisionIfNecessary returning with data: %{mask.hash}s", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x2666F8720](v12, -1, -1);
      MEMORY[0x2666F8720](v11, -1, -1);
    }

    sub_260FAC46C(v3, v2);

    v17 = v0[1];

    return v17(v7);
  }
}

uint64_t sub_261074764()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261074958(char a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_261074A14;

  return sub_261073F54(a1);
}

uint64_t sub_261074A14(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = sub_2610BC4E4();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_261074BB8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_261074BDC, v2, 0);
}

uint64_t sub_261074BDC()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteDataRequester legacyAnisetteData", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 160);

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v10 = (*(v7 + 16) + **(v7 + 16));
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_261074DC8;

  return v10(v0 + 88, v6, v7);
}

uint64_t sub_261074DC8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_26107B340;
  }

  else
  {
    v4 = sub_261074EF4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261074EF4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662E8, &unk_2610CC888);
  inited = swift_initStackObject();
  *(inited + 32) = 1;
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = sub_260FA928C(inited);
  v0[23] = v6;
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE662F0, &unk_2610BECC0);
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_261075058;
  v8 = MEMORY[0x277CC9318];

  return sub_26106D128((v0 + 16), 4, 0, v6, v3, v8, v4);
}

uint64_t sub_261075058()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = sub_26107B33C;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_261075180;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261075180()
{
  v1 = v0[25];
  v2 = v0[16];
  v3 = v0[17];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
  sub_260FA9AB4(0, &qword_27FE66310, 0x277CF0160);
  v4 = sub_2610BCD94();
  v5 = sub_260FAC46C(v2, v3);
  v6 = v0[1];
  if (!v1)
  {
    v5 = v4;
  }

  return v6(v5);
}

uint64_t sub_2610753EC(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_2610BCA04();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2610754C0;

  return sub_261074BB8(v4, v6);
}

uint64_t sub_2610754C0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = sub_2610BC4E4();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](*(v5 + 24), a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_261075680(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;

  return MEMORY[0x2822009F8](sub_261075710, v1, 0);
}

uint64_t sub_261075710()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteDataRequester fetchPeerAttestationData", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = objc_opt_self();
  v6 = sub_2610BC344();
  *(v0 + 144) = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:v0 + 144];

  v8 = *(v0 + 144);
  if (v7)
  {
    v9 = *(v0 + 160);
    v10 = sub_2610BC534();
    v12 = v11;

    *(v0 + 168) = v10;
    *(v0 + 176) = v12;
    v13 = v9[17];
    v14 = v9[18];
    __swift_project_boxed_opaque_existential_1(v9 + 14, v13);
    v19 = (*(v14 + 16) + **(v14 + 16));
    v15 = swift_task_alloc();
    *(v0 + 184) = v15;
    *v15 = v0;
    v15[1] = sub_2610759FC;

    return v19(v0 + 88, v13, v14);
  }

  else
  {
    v17 = v8;
    sub_2610BC4F4();

    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_2610759FC()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_261075F9C;
  }

  else
  {
    v4 = sub_261075B54;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261075B54()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[14];
  v4 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662E8, &unk_2610CC888);
  inited = swift_initStackObject();
  *(inited + 32) = 3;
  *(inited + 16) = xmmword_2610BF400;
  v6 = MEMORY[0x277CC9318];
  *(inited + 64) = MEMORY[0x277CC9318];
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  sub_260FAA188(v2, v1);
  v7 = sub_260FA928C(inited);
  v0[25] = v7;
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE662F0, &unk_2610BECC0);
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_261075CEC;

  return sub_26106D128((v0 + 16), 5, 0, v7, v3, v6, v4);
}

uint64_t sub_261075CEC()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = sub_26107602C;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_261075E60;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_261075E60()
{
  v1 = v0[27];
  v2 = v0[16];
  v3 = v0[17];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
  sub_260FA9AB4(0, &unk_27FE66300, 0x277CF0190);
  v4 = sub_2610BCD94();
  v6 = v0[21];
  v5 = v0[22];
  sub_260FAC46C(v2, v3);
  v7 = sub_260FAC46C(v6, v5);
  v8 = v0[1];
  if (!v1)
  {
    v7 = v4;
  }

  return v8(v7);
}

uint64_t sub_261075F9C()
{
  sub_260FAC46C(v0[21], v0[22]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_26107602C()
{
  sub_260FAC46C(v0[21], v0[22]);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  v1 = v0[1];

  return v1();
}

uint64_t sub_26107625C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_2610BC364();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[5] = v6;
  v3[6] = _Block_copy(a2);
  sub_2610BC354();

  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_261076388;

  return sub_261075680(v6);
}

uint64_t sub_261076388(void *a1)
{
  v4 = *v2;
  v5 = *v2;

  v6 = v4[6];
  (*(v4[4] + 8))(v4[5], v4[3]);

  if (v1)
  {
    v7 = sub_2610BC4E4();

    (v6)[2](v6, 0, v7);
    _Block_release(v6);
  }

  else
  {
    (v6)[2](v6, a1, 0);
    _Block_release(v6);
  }

  v8 = v5[1];

  return v8();
}

uint64_t sub_2610765B0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2610765E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  sub_260FA9918(a3, v24 - v11, &unk_27FE65800, &qword_2610BF910);
  v13 = sub_2610BCC94();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_260FA9980(v12, &unk_27FE65800, &qword_2610BF910);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2610BCC84();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_2610BCBF4();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_2610BCA44() + 32;
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

    sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);

    return v22;
  }

LABEL_8:
  sub_260FA9980(a3, &unk_27FE65800, &qword_2610BF910);
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

id sub_2610768E4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v25[3] = a4;
  v25[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v24[3] = a5;
  v24[4] = a7;
  v16 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a5 - 8) + 32))(v16, a2, a5);
  a3[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_registered] = 0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v17 = sub_2610BC7B4();
  __swift_project_value_buffer(v17, qword_27FE65900);
  v18 = sub_2610BC794();
  v19 = sub_2610BCD54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_260F97000, v18, v19, "PASAnisetteRemoteRequestHandler init", v20, 2u);
    MEMORY[0x2666F8720](v20, -1, -1);
  }

  sub_260FA99E0(v25, &a3[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_messageSessionProvider]);
  sub_260FA99E0(v24, &a3[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController]);
  v23.receiver = a3;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  return v21;
}

id sub_261076AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v13, v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(v21);
  (*(v17 + 16))(v20, a1, a4);
  (*(v12 + 16))(v15, a2, a5);
  return sub_2610768E4(v20, v15, v22, a4, a5, a6, v25);
}

uint64_t sub_261076C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_261071414(a1, a2, a3, v3);
}

uint64_t sub_261076D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_261071670(a1, a2, a3, v3);
}

uint64_t sub_261076E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_2610718FC(a1, a2, a3, v3);
}

uint64_t sub_261076EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_261071BBC(a1, a2, a3, v3);
}

uint64_t sub_261076F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_261071EBC(a1, a2, a3, v3);
}

uint64_t sub_26107701C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_260FBF860;

  return sub_261072130(a1, a2, a3, v3);
}

uint64_t dispatch thunk of PASAnisetteProvisioningProtocol.provision()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF864;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASAnisetteProvisioningProtocol.sync(withSIMData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBD298;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASAnisetteProvisioningProtocol.erase()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF864;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PASAnisetteProvisioningProtocol.fetch(doProvision:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF864;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASAnisetteProvisioningProtocol.legacyAnisetteData(forDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBD298;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASAnisetteProvisioningProtocol.fetchPeerAttestationData(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF864;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PASAnisetteRemoteRequestHandlerProtocol.registerForRequests()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return v7(a1, a2);
}

uint64_t sub_261077950(uint64_t a1, uint64_t *a2, void (*a3)(void *__return_ptr, char *), uint64_t a4, uint64_t a5)
{
  v6 = a1;
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
  v39 = a5;
  if (v10)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v15 = *(*(v6 + 48) + (v14 | (v12 << 6)));
        v46 = *(*(v6 + 48) + (v14 | (v12 << 6)));
        a3(v45, &v46);
        if (*(a5 + 16))
        {
          v16 = sub_260FA6180(v15);
          if (v17)
          {
            break;
          }
        }

        v29 = sub_260FA60B4(v45);
        if (v30)
        {
          v31 = v29;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = *a2;
          v42 = *a2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_261098DA4();
            v33 = v42;
          }

          sub_260FA9764(*(v33 + 48) + 40 * v31);
          sub_260FA6A84((*(v33 + 56) + 32 * v31), v43);
          sub_2610983D8(v31, v33);
          *a2 = v33;
        }

        else
        {
          memset(v43, 0, sizeof(v43));
        }

        sub_260FA9764(v45);
        sub_260FA9980(v43, &qword_27FE63830, &qword_2610BE8E0);
        a5 = v39;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v18 = v6;
      sub_260FA3F5C(*(a5 + 56) + 32 * v16, v44);
      sub_260FA6A84(v44, v43);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *a2;
      v22 = sub_260FA60B4(v45);
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      if (v20[3] >= v25)
      {
        if ((v19 & 1) == 0)
        {
          sub_261098DA4();
        }
      }

      else
      {
        sub_261097330(v25, v19);
        v27 = sub_260FA60B4(v45);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_33;
        }

        v22 = v27;
      }

      v6 = v18;
      if (v26)
      {
        v34 = (v20[7] + 32 * v22);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        sub_260FA6A84(v43, v34);
      }

      else
      {
        v20[(v22 >> 6) + 8] |= 1 << v22;
        sub_260FA9708(v45, v20[6] + 40 * v22);
        sub_260FA6A84(v43, (v20[7] + 32 * v22));
        v35 = v20[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_32;
        }

        v20[2] = v37;
      }

      sub_260FA9764(v45);
      *a2 = v20;
      a5 = v39;
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_2610BD444();
  __break(1u);
  return result;
}

uint64_t sub_261077C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v9 = *(sub_2610BCC24() - 8);
  v10 = v3 + ((*(v9 + 80) + 40) & ~*(v9 + 80));

  return sub_26106D794(a1, a2, a3, v10, v7, v8);
}

uint64_t sub_261077D48()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FBF860;

  return sub_26107625C(v2, v3, v4);
}

uint64_t sub_261077DFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FBF860;

  return sub_261031B40(v2, v3, v4);
}

uint64_t sub_261077EBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FBF860;

  return sub_26104D438(a1, v4);
}

uint64_t sub_261077F74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FBF860;

  return sub_2610753EC(v2, v3, v4);
}

uint64_t sub_261078028()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FB6DB4;

  return sub_261074958(v2, v4, v3);
}

uint64_t sub_2610780DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBF860;

  return sub_261073D18(v2, v3);
}

uint64_t objectdestroy_55Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2610781D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260FBF860;

  return sub_2610733C0(v2, v3, v4);
}

uint64_t objectdestroy_110Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2610782C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBF860;

  return sub_261072ACC(v2, v3);
}

unint64_t sub_261078370(uint64_t a1, uint64_t a2)
{
  v2 = sub_2610BD154();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2610783BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_2610BC514();
  }

  v3[18] = v4;
  v3[2] = v3;
  v3[7] = v3 + 19;
  v3[3] = sub_2610784FC;
  v5 = swift_continuation_init();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668C0, &qword_2610C4530);
  v3[10] = MEMORY[0x277D85DD0];
  v3[11] = 1107296256;
  v3[12] = sub_2610A0A60;
  v3[13] = &block_descriptor_179;
  v3[14] = v5;
  [v2 syncWithSIMData:v4 completion:v3 + 10];

  return MEMORY[0x282200938](v3 + 2);
}

uint64_t sub_2610784FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 144);
  if (*(v2 + 48))
  {
    swift_willThrow();

    v6 = *(v4 + 8);
    v7 = 0;
  }

  else
  {
    v8 = *(v3 + 152);

    v6 = *(v4 + 8);
    v7 = v8;
  }

  return v6(v7);
}

uint64_t sub_26107863C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_2610BC9D4();
  }

  else
  {
    v4 = 0;
  }

  v3[19] = v4;
  v3[2] = v3;
  v3[7] = v3 + 18;
  v3[3] = sub_260FFC840;
  v5 = swift_continuation_init();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662C0, &qword_2610CC628);
  v3[10] = MEMORY[0x277D85DD0];
  v3[11] = 1107296256;
  v3[12] = sub_26107B348;
  v3[13] = &block_descriptor_165;
  v3[14] = v5;
  [v2 legacyAnisetteDataForDSID:v4 withCompletion:v3 + 10];

  return MEMORY[0x282200938](v3 + 2);
}

uint64_t sub_261078774(uint64_t a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66328, &qword_2610CC9A8);
  v5 = swift_task_alloc();
  v2[19] = v5;
  sub_260FA9918(a1, v5, &qword_27FE66328, &qword_2610CC9A8);
  v6 = sub_2610BC364();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v8 = sub_2610BC344();
    (*(v7 + 8))(v5, v6);
  }

  v2[20] = v8;
  v2[2] = v2;
  v2[7] = v2 + 18;
  v2[3] = sub_26107897C;
  v9 = swift_continuation_init();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66330, &qword_2610CC9B0);
  v2[10] = MEMORY[0x277D85DD0];
  v2[11] = 1107296256;
  v2[12] = sub_26107B348;
  v2[13] = &block_descriptor_159;
  v2[14] = v9;
  [v3 fetchPeerAttestationDataForRequest:v8 completion:v2 + 10];

  return MEMORY[0x282200938](v2 + 2);
}

uint64_t sub_26107897C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  if (*(*v1 + 48))
  {
    swift_willThrow();

    v4 = *(v2 + 8);

    return v4();
  }

  else
  {
    v6 = *(*v1 + 144);

    v7 = *(v2 + 8);

    return v7(v6);
  }
}

uint64_t sub_261078B30()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler handleProvision", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = (v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController);
  v7 = *(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController + 24);
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v11 = (*(v8 + 8) + **(v8 + 8));
  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_26107B360;

  return v11(v7, v8);
}

uint64_t sub_261078D14(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_261078D34, 0, 0);
}

uint64_t sub_261078D34()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler handleSync", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v6 = *(v0 + 72);
  v5 = *(v0 + 80);

  sub_260FA99E0(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController, v0 + 16);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  sub_26106D8C0(v6, 0, (v0 + 56));
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  *(v0 + 88) = v9;
  *(v0 + 96) = v10;
  v13 = (*(v8 + 16) + **(v8 + 16));
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_261078F9C;

  return v13(v9, v10, v7, v8);
}

uint64_t sub_261078F9C(char a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_261079138;
  }

  else
  {
    v6 = *(v4 + 88);
    v7 = *(v4 + 96);
    *(v4 + 120) = a1 & 1;
    sub_260FAC458(v6, v7);
    v5 = sub_2610790D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2610790D0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1(v2);
}

uint64_t sub_261079138()
{
  sub_260FAC458(v0[11], v0[12]);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[1];

  return v1(0);
}

uint64_t sub_2610791C8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler handleErase", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = (v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController);
  v7 = *(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController + 24);
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v11 = (*(v8 + 24) + **(v8 + 24));
  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_2610793AC;

  return v11(v7, v8);
}

uint64_t sub_2610793AC(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_2610794B4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return MEMORY[0x2822009F8](sub_261079544, 0, 0);
}

uint64_t sub_261079544()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[5] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler handleFetch", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = sub_26106DB20(v5, 2);
  v7 = (v0[4] + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v12 = (*(v9 + 32) + **(v9 + 32));
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_2610797D4;

  return v12(v6 & 1, v8, v9);
}

uint64_t sub_2610797D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26107994C, 0, 0);
}

uint64_t sub_26107994C(uint64_t a1)
{
  v29 = v1;
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = v2;
    v4 = sub_2610BC794();
    v5 = sub_2610BCD54();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v28[0] = v7;
      *v6 = 141558274;
      *(v6 + 4) = 1752392040;
      *(v6 + 12) = 2080;
      v8 = v3;
      v9 = [v8 description];
      v10 = sub_2610BCA04();
      v12 = v11;

      v13 = sub_260FA5970(v10, v12, v28);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler fetch completed with result %{mask.hash}s", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x2666F8720](v7, -1, -1);
      MEMORY[0x2666F8720](v6, -1, -1);
    }

    v14 = objc_opt_self();
    *(v1 + 16) = 0;
    v15 = [v14 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v1 + 16];
    v16 = *(v1 + 16);
    if (v15)
    {
      v17 = sub_2610BC534();
      v19 = v18;

      v20 = *(v1 + 8);

      return v20(v17, v19);
    }

    v26 = v16;
    sub_2610BC4F4();

    swift_willThrow();
  }

  else
  {
    v22 = sub_2610BC794();
    v23 = sub_2610BCD64();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_260F97000, v22, v23, "PASAnisetteRemoteRequestHandler fetch completed without data", v24, 2u);
      MEMORY[0x2666F8720](v24, -1, -1);
    }

    sub_26107ADF4();
    swift_allocError();
    *v25 = xmmword_2610CC5F0;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  v27 = *(v1 + 8);

  return v27();
}

uint64_t sub_261079C90(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;

  return MEMORY[0x2822009F8](sub_261079D20, 0, 0);
}

uint64_t sub_261079D20()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler handleLegacy", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];

  sub_260FA99E0(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v9 = sub_26106DD54(v6, 1);
  v0[10] = v10;
  v11 = v10;
  v12 = v9;
  v15 = (*(v8 + 40) + **(v8 + 40));
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_261079FC4;

  return v15(v12, v11, v7, v8);
}

uint64_t sub_261079FC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_26107A2D4;
  }

  else
  {

    v4 = sub_26107A114;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26107A114()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v2 = objc_opt_self();
    *(v0 + 56) = 0;
    v3 = [v2 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v0 + 56];
    v4 = *(v0 + 56);
    if (v3)
    {
      v5 = sub_2610BC534();
      v7 = v6;

      v8 = *(v0 + 8);

      return v8(v5, v7);
    }

    v11 = v4;
    sub_2610BC4F4();

    swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    sub_26107ADF4();
    swift_allocError();
    *v10 = xmmword_2610CC600;
    *(v10 + 16) = 0;
    swift_willThrow();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26107A2D4()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26107A36C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66328, &qword_2610CC9A8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v3 = sub_2610BC364();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26107A4A8, 0, 0);
}

uint64_t sub_26107A4A8()
{
  v32 = v0;
  v31 = *MEMORY[0x277D85DE8];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler handleAttestationData", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 24);

  sub_26106DF94(v5, 3, &v30);
  v6 = v30;
  *(v0 + 88) = v30;
  sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
  sub_260FA9AB4(0, &qword_27FE66340, 0x277CCAB70);
  v7 = sub_2610BCD94();
  if (v7 && (v8 = *(v0 + 56), v9 = *(v0 + 64), v10 = *(v0 + 48), v11 = *(v9 + 56), v12 = v7, v11(v10, 1, 1, v8), sub_26107AE48(), sub_2610BD144(), v12, (*(v9 + 48))(v10, 1, v8) != 1))
  {
    v16 = *(v0 + 72);
    v17 = *(v0 + 80);
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    v20 = *(v0 + 40);
    v21 = *(v0 + 32);
    v29 = v11;
    v22 = *(v19 + 32);
    v22(v16, *(v0 + 48), v18);
    v22(v17, v16, v18);
    v23 = (v21 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController);
    v24 = *(v21 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController + 24);
    v25 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v19 + 16))(v20, v17, v18);
    v29(v20, 0, 1, v18);
    v28 = (*(v25 + 48) + **(v25 + 48));
    v26 = swift_task_alloc();
    *(v0 + 104) = v26;
    *v26 = v0;
    v26[1] = sub_26107A900;
    v27 = *(v0 + 40);

    return v28(v27, v24, v25);
  }

  else
  {
    sub_26107ADF4();
    swift_allocError();
    *v13 = xmmword_2610CC610;
    *(v13 + 16) = 1;
    swift_willThrow();
    sub_260FAC46C(v6, *(&v6 + 1));

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_26107A900(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  sub_260FA9980(*(v3 + 40), &qword_27FE66328, &qword_2610CC9A8);
  if (v1)
  {
    v5 = sub_26107AD10;
  }

  else
  {
    v5 = sub_26107AA78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26107AA78(uint64_t a1)
{
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = objc_opt_self();
    *(v1 + 16) = 0;
    v4 = [v3 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v1 + 16];
    v5 = *(v1 + 16);
    v7 = *(v1 + 88);
    v6 = *(v1 + 96);
    v8 = *(v1 + 80);
    if (v4)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      v11 = sub_2610BC534();
      v25 = v12;
      v26 = v11;
      sub_260FAC46C(v7, v6);

      (*(v9 + 8))(v8, v10);

      v13 = *(v1 + 8);

      return v13(v26, v25);
    }

    v21 = *(v1 + 56);
    v22 = *(v1 + 64);
    v23 = v5;
    sub_2610BC4F4();

    swift_willThrow();
    sub_260FAC46C(v7, v6);

    (*(v22 + 8))(v8, v21);
  }

  else
  {
    v16 = *(v1 + 88);
    v15 = *(v1 + 96);
    v17 = *(v1 + 80);
    v18 = *(v1 + 56);
    v19 = *(v1 + 64);
    sub_26107ADF4();
    swift_allocError();
    *v20 = xmmword_2610CC610;
    *(v20 + 16) = 0;
    swift_willThrow();
    sub_260FAC46C(v16, v15);
    (*(v19 + 8))(v17, v18);
  }

  v24 = *(v1 + 8);

  return v24();
}

uint64_t sub_26107AD10()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  sub_260FAC46C(v0[11], v0[12]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

unint64_t sub_26107ADF4()
{
  result = qword_27FE66348;
  if (!qword_27FE66348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66348);
  }

  return result;
}

unint64_t sub_26107AE48()
{
  result = qword_27FE66350;
  if (!qword_27FE66350)
  {
    sub_2610BC364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66350);
  }

  return result;
}

uint64_t sub_26107AEA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_260FAC458(a1, a2);
  }

  return a1;
}

uint64_t sub_26107AEE4(uint64_t a1)
{
  v11 = v1[2];
  v10 = v1[3];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FBF860;

  return sub_26106CD68(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_26107AFDC(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260FB6DB4;

  return sub_260FAE9F8(a1, v4, v5, v6, v7);
}

uint64_t sub_26107B0C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26107B10C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_26107B180()
{
  result = qword_27FE66368;
  if (!qword_27FE66368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66368);
  }

  return result;
}

unint64_t sub_26107B1D4(void *a1)
{
  a1[1] = sub_26107B20C();
  a1[2] = sub_26107B260();
  result = sub_26107B2B4();
  a1[3] = result;
  return result;
}

unint64_t sub_26107B20C()
{
  result = qword_27FE66370;
  if (!qword_27FE66370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66370);
  }

  return result;
}

unint64_t sub_26107B260()
{
  result = qword_27FE66378;
  if (!qword_27FE66378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66378);
  }

  return result;
}

unint64_t sub_26107B2B4()
{
  result = qword_27FE66380[0];
  if (!qword_27FE66380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE66380);
  }

  return result;
}

uint64_t AnyTransport.availableRoutes.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t AnyTransport.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t AnyTransport.send(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = *a3;
  *(v5 + 72) = *(a3 + 16);
  return MEMORY[0x2822009F8](sub_26107B45C, 0, 0);
}

uint64_t sub_26107B45C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = v1[3];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v2 + 16);
  *v5 = v0;
  v5[1] = sub_2610094C0;
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + 72);

  return sub_26107B528(v9, v4, v10, v7, v8, v11, v6, v3);
}

uint64_t sub_26107B528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 96) = v12;
  *(v8 + 33) = a6;
  *(v8 + 72) = a5;
  *(v8 + 80) = a7;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 104) = *(a7 - 8);
  *(v8 + 112) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 120) = AssociatedTypeWitness;
  *(v8 + 128) = *(AssociatedTypeWitness - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26107B678, 0, 0);
}

uint64_t sub_26107B678()
{
  v11 = *(v0 + 96);
  v1 = *(v0 + 33);
  v2 = *(v0 + 72);
  v3 = *(v0 + 64);
  (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 56), *(v0 + 80));
  swift_dynamicCast();
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v10 = (*(v11 + 32) + **(v11 + 32));
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_26107B800;
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);

  return v10(v5, v6, v0 + 16, v7, v8);
}

uint64_t sub_26107B800()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_26107B9C4;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v3 = sub_26107B92C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26107B92C()
{
  swift_dynamicCast();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26107B9C4()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26107BA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FB6DB4;

  return AnyTransport.send(_:using:)(a1, a2, a3, a4);
}

uint64_t Transport.into()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 32);

  return v6(boxed_opaque_existential_1, v3, a1);
}

uint64_t TransportBuilding.buildAny()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  v11 = &v15 - v10;
  result = (*(v6 + 16))(a1, v6);
  if (!v3)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    a3[3] = AssociatedTypeWitness;
    a3[4] = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v8 + 32))(boxed_opaque_existential_1, v11, AssociatedTypeWitness);
  }

  return result;
}

uint64_t dispatch thunk of Transport.send(_:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_260FB6DB4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_26107BE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26107BE98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26107BEE0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t PASFlowStepAllSet.__allocating_init(delegate:authResults:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_allocObject();
  v6 = sub_26107E380(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_26107BFA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63C70, &unk_2610C0780);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63C70, &unk_2610C0780);
  swift_endAccess();
}

uint64_t sub_26107C0E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountStore);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE65000, &qword_2610BEE60);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE65000, &qword_2610BEE60);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9DC50(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE65000, &qword_2610BEE60);
  swift_endAccess();
}

uint64_t sub_26107C21C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__extensionCache);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260FA2288();
    *(v1 + 16) = v2;
  }

  return v2;
}

uint64_t PASFlowStepAllSet.init(delegate:authResults:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_26107E380(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_26107C31C()
{
  sub_26107BFA4(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 8))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_26107C390()
{
  sub_26107BFA4(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 16))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_26107C404()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v1[3] = swift_task_alloc();
  v1[4] = sub_2610BCC74();
  v1[5] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_26107C4EC;

  return sub_26104582C();
}

uint64_t sub_26107C4EC()
{
  *(*v1 + 56) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    v4 = sub_26107C774;
  }

  else
  {
    v4 = sub_26107C648;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26107C648()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_2610BCC94();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);

  v4 = sub_2610BCC64();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v2;
  *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask) = sub_261042434(0, 0, v1, &unk_2610CCDE8, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26107C774()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26107C7E4()
{
  v0[2] = sub_2610BCC74();
  v0[3] = sub_2610BCC64();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261025394;

  return sub_26107C890();
}

uint64_t sub_26107C8B0()
{
  sub_2610BCC74();
  *(v0 + 120) = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26107C944, v2, v1);
}

uint64_t sub_26107C944()
{

  sub_26107BFA4((v0 + 7));
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  return MEMORY[0x2822009F8](sub_26107C9F8, 0, 0);
}

uint64_t sub_26107C9F8()
{
  v1 = v0[5];
  if (!v1)
  {
    sub_260FA9980((v0 + 2), &unk_27FE656B0, &unk_2610BFCE0);
LABEL_7:
    v7 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = (*(v2 + 48))(v1, v2);
  v5 = v4;
  v0[16] = v3;
  v0[17] = v4;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = sub_26107C21C();
  v0[18] = v6;

  return MEMORY[0x2822009F8](sub_26107CB04, v6, 0);
}

uint64_t sub_26107CB04()
{
  v1 = sub_261037C94();
  *(v0 + 152) = v1;
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
  *v2 = v0;
  v2[1] = sub_26107CBC8;

  return MEMORY[0x282200460](v0 + 96, v1, v3);
}

uint64_t sub_26107CBC8()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_26107CCF4, v1, 0);
}

uint64_t sub_26107CCF4()
{

  return MEMORY[0x2822009F8](sub_26107CD5C, 0, 0);
}

uint64_t sub_26107CD5C()
{
  v1 = *(v0 + 96);
  *(v0 + 168) = v1;
  v2 = *(v0 + 136);
  if (v1)
  {
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = sub_26107CE48;
    v4 = *(v0 + 128);

    return sub_26101A998(v4, v2);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_26107CE48()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_26107CFD8;
  }

  else
  {
    v2 = sub_26107CF78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26107CF78()
{
  sub_2610389C0(*(v0 + 168), *(v0 + 176));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26107CFD8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepAllSet notifyExtensionsAboutFlowCompletion failed to notify extension of successful sign-in: %{public}@", v10, 0xCu);
    sub_260FA9980(v11, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v11, -1, -1);
    MEMORY[0x2666F8720](v10, -1, -1);

    sub_2610389C0(v9, v8);
  }

  else
  {

    sub_2610389C0(v9, v8);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_26107D1A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  v7 = sub_2610BC794();
  v8 = sub_2610BCD54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepAllSet doneButtonTapped", v9, 2u);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  sub_26107BFA4(&v18);
  v10 = *(&v19 + 1);
  v11 = v20;
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  (*(v11 + 8))(v21, v10, v11);
  __swift_destroy_boxed_opaque_existential_0Tm(&v18);
  v21[5] = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_authResults);
  v12 = sub_2610BCC94();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_26107E53C(v21, &v18);
  sub_2610BCC74();

  v13 = sub_2610BCC64();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v1;
  v16 = v19;
  *(v14 + 40) = v18;
  *(v14 + 56) = v16;
  *(v14 + 72) = v20;
  sub_261042434(0, 0, v5, &unk_2610CCDF8, v14);

  return sub_261029488(v21);
}

uint64_t sub_26107D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = sub_2610BCC74();
  v5[15] = sub_2610BCC64();
  v6 = swift_task_alloc();
  v5[16] = v6;
  *v6 = v5;
  v6[1] = sub_26107D4C0;

  return sub_26107DC5C();
}

uint64_t sub_26107D4C0()
{
  v1 = *v0;

  v3 = sub_2610BCBF4();
  *(v1 + 136) = v3;
  *(v1 + 144) = v2;

  return MEMORY[0x2822009F8](sub_26107D604, v3, v2);
}

uint64_t sub_26107D604()
{
  v1 = *(v0 + 96) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 152) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 104);
    v4 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    sub_26107E53C(v3, v0 + 16);
    *(v0 + 64) = 0;
    v12 = (*(v4 + 16) + **(v4 + 16));
    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    *v6 = v0;
    v6[1] = sub_26107D864;

    return v12(v0 + 16, ObjectType, v4);
  }

  else
  {
    v8 = *(*(v0 + 96) + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask);
    *(v0 + 168) = v8;
    if (v8)
    {

      v9 = swift_task_alloc();
      *(v0 + 176) = v9;
      *v9 = v0;
      v9[1] = sub_26107DAB8;
      v10 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200460](v9, v8, v10);
    }

    else
    {

      v11 = *(v0 + 8);

      return v11();
    }
  }
}

uint64_t sub_26107D864()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  sub_260FA9980(v1 + 16, &unk_27FE656D0, &unk_2610C0550);
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_26107D9BC, v3, v2);
}

uint64_t sub_26107D9BC()
{
  v1 = *(v0[12] + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask);
  v0[21] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_26107DAB8;
    v3 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v2, v1, v3);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_26107DAB8()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_26107DBFC, v3, v2);
}

uint64_t sub_26107DBFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26107DC7C()
{
  sub_26107C0E0((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_26107DDAC;

  return v5(v1, v2);
}

uint64_t sub_26107DDAC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_26107DFF4;
  }

  else
  {
    v4 = sub_26107DEC0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26107DEC0()
{
  v1 = v0[9];
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v2 = sub_2610BC7B4();
    __swift_project_value_buffer(v2, qword_27FE65900);
    v3 = sub_2610BC794();
    v4 = sub_2610BCD64();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepAllSet ensureFlowCompletion local account is nil", v5, 2u);
      MEMORY[0x2666F8720](v5, -1, -1);
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_26107DFF4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepAllSet ensureFlowCompletion unable to check for local account\n%{public}@", v8, 0xCu);
    sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v9, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_26107E1D0()
{
}

uint64_t PASFlowStepAllSet.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  return v0;
}

uint64_t PASFlowStepAllSet.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26107E380(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v3 + v7) = v8;
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(v3 + v9) = v10;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet__extensionCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64228, &unk_2610CCE80);
  v12 = swift_allocObject();
  *(v3 + v11) = v12;
  *(v12 + 16) = 0;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_notifyExtensionsAboutFlowCompletionTask) = 0;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup17PASFlowStepAllSet_authResults) = v6;

  return sub_26104DC44(a1, a2);
}

uint64_t sub_26107E488()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260FBF860;

  return sub_26107C7E4();
}

uint64_t sub_26107E598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_26107D410(a1, v4, v5, v6, (v1 + 5));
}

uint64_t type metadata accessor for PASFlowStepAllSet(uint64_t a1)
{
  result = qword_27FE66430;
  if (!qword_27FE66430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PASUserPasswordDataSourceError.hashValue.getter()
{
  sub_2610BD514();
  MEMORY[0x2666F7E40](0);
  return sub_2610BD574();
}

unint64_t sub_26107E860()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000027;
  *(inited + 56) = 0x80000002610D5920;
  v2 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v2;
}

uint64_t sub_26107E938(uint64_t a1)
{
  v2 = sub_26107EB3C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26107E974(uint64_t a1)
{
  v2 = sub_26107EB3C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26107E9D0()
{
  sub_26107EA58();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_26107EA58()
{
  result = qword_27FE66440;
  if (!qword_27FE66440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66440);
  }

  return result;
}

unint64_t sub_26107EAB0()
{
  result = qword_27FE66448;
  if (!qword_27FE66448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66448);
  }

  return result;
}

unint64_t sub_26107EB04(void *a1)
{
  a1[1] = sub_26107EB3C();
  a1[2] = sub_26107EB90();
  result = sub_26107EBE4();
  a1[3] = result;
  return result;
}

unint64_t sub_26107EB3C()
{
  result = qword_27FE66450;
  if (!qword_27FE66450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66450);
  }

  return result;
}

unint64_t sub_26107EB90()
{
  result = qword_27FE66458;
  if (!qword_27FE66458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66458);
  }

  return result;
}

unint64_t sub_26107EBE4()
{
  result = qword_27FE66460;
  if (!qword_27FE66460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66460);
  }

  return result;
}

uint64_t dispatch thunk of PASUserPasswordDataSourceProtocol.fetchPassword(forObjectID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBDE14;

  return v11(a1, a2, a3, a4);
}

const char *PASFeatureFlagsKey.feature.getter()
{
  v1 = *v0;
  v2 = "PASSignInForSelf";
  v3 = "PASEnableAllFamilyMembers";
  v4 = "PASAccountPickerExtensions";
  if (v1 != 3)
  {
    v4 = "AgeAttestationPhase1";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "PASEnableEasySignIn";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Bool __swiftcall PASFeatureFlags.isEnabled(_:)(ProximityAppleIDSetup::PASFeatureFlagsKey a1)
{
  v1 = *a1;
  v4[3] = &type metadata for PASFeatureFlagsKey;
  v4[4] = sub_26107EE7C();
  LOBYTE(v4[0]) = v1;
  v2 = sub_2610BC694();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

unint64_t sub_26107EE7C()
{
  result = qword_27FE66468;
  if (!qword_27FE66468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66468);
  }

  return result;
}

uint64_t sub_26107EEE8(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for PASFeatureFlagsKey;
  v4[4] = sub_26107EE7C();
  LOBYTE(v4[0]) = v1;
  v2 = sub_2610BC694();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

const char *PASFeatureFlagsKey.domain.getter()
{
  if (*v0 == 4)
  {
    return "AuthKit";
  }

  else
  {
    return "ProximityAppleIDSetup";
  }
}

uint64_t PASFeatureFlagsKey.hashValue.getter()
{
  v1 = *v0;
  sub_2610BD514();
  MEMORY[0x2666F7E40](v1);
  return sub_2610BD574();
}

unint64_t sub_26107EFFC()
{
  result = qword_27FE66470;
  if (!qword_27FE66470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66470);
  }

  return result;
}

const char *sub_26107F050()
{
  if (*v0 == 4)
  {
    return "AuthKit";
  }

  else
  {
    return "ProximityAppleIDSetup";
  }
}

const char *sub_26107F080()
{
  v1 = *v0;
  v2 = "PASSignInForSelf";
  v3 = "PASEnableAllFamilyMembers";
  v4 = "PASAccountPickerExtensions";
  if (v1 != 3)
  {
    v4 = "AgeAttestationPhase1";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "PASEnableEasySignIn";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for PASFeatureFlagsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PASFeatureFlagsKey(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PASFlowStepSourceError.__allocating_init(delegate:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepSourceError_error) = a3;
  v5 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v5;
}

void *PASFlowStepSourceError.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepSourceError_error);
  v2 = v1;
  return v1;
}

uint64_t PASFlowStepSourceError.init(delegate:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepSourceError_error) = a3;
  v4 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_26107F398()
{
  v1 = *(v0 + 96) + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 96);
    v4 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASFlowStepSourceError_error);
    *(v0 + 16) = v6;
    *(v0 + 64) = 1;
    v7 = *(v4 + 16);
    v8 = v6;
    v12 = (v7 + *v7);
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_26107F55C;

    return v12(v0 + 16, ObjectType, v4);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_26107F55C()
{
  v1 = *v0;
  v4 = *v0;

  swift_unknownObjectRelease();
  sub_26107F760(v1 + 16);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t PASFlowStepSourceError.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  return v0;
}

uint64_t PASFlowStepSourceError.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26107F760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656D0, &unk_2610C0550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PASFlowStepSourceError(uint64_t a1)
{
  result = qword_27FE66478;
  if (!qword_27FE66478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

ProximityAppleIDSetup::PASFamilyMemberPickerDataSourceError_optional __swiftcall PASFamilyMemberPickerDataSourceError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2610BD154();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PASFamilyMemberPickerDataSourceError.rawValue.getter()
{
  v1 = 0x446567616D496F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x416C61636F4C6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365757165526F6ELL;
  }
}

uint64_t sub_26107F96C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x446567616D496F6ELL;
  v4 = 0xEB00000000617461;
  if (v2 != 1)
  {
    v3 = 0x416C61636F4C6F6ELL;
    v4 = 0xEE00746E756F6363;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7365757165526F6ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  v7 = 0x446567616D496F6ELL;
  v8 = 0xEB00000000617461;
  if (*a2 != 1)
  {
    v7 = 0x416C61636F4C6F6ELL;
    v8 = 0xEE00746E756F6363;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7365757165526F6ELL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2610BD384();
  }

  return v11 & 1;
}

uint64_t sub_26107FA98()
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26107FB54(uint64_t a1)
{
  sub_2610BCA54();
}

uint64_t sub_26107FBFC(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

void sub_26107FCC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0xEB00000000617461;
  v5 = 0x446567616D496F6ELL;
  if (v2 != 1)
  {
    v5 = 0x416C61636F4C6F6ELL;
    v4 = 0xEE00746E756F6363;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7365757165526F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_26107FD38()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v3;
  v4 = sub_2610B4614(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v6;
}

uint64_t sub_26107FE00(uint64_t a1)
{
  v2 = sub_261085CF0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26107FE3C(uint64_t a1)
{
  v2 = sub_261085CF0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFamilyMemberImageProvider.fetchImage(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB9038;

  return sub_261085428(a1);
}

uint64_t sub_26107FF38(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    if (a2)
    {
      v11 = a2;
      v12 = sub_2610BC534();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    v15 = *(*(v7 + 64) + 40);
    *v15 = v12;
    v15[1] = v14;
    v15[2] = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t PASFamilyMemberImageProvider.fetchImage(for:monogramMaker:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_261080064, 0, 0);
}

uint64_t sub_261080064()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_261080130;
  v4 = v0[2];
  v3 = v0[3];

  return sub_2610846C0(v4, v3, v1);
}

uint64_t sub_261080130()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 48) = v0;

  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X3, X16 }
  }

  return MEMORY[0x2822009F8](sub_26108029C, 0, 0);
}

uint64_t sub_26108029C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PASFamilyMemberImageProvider.fetchImage(for:monogramMaker:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF870;

  return sub_2610846C0(a1, a2, a3);
}

uint64_t sub_2610803C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;
    v12 = a2;
    v13 = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_2610804B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FBF870;

  return sub_261085428(a1);
}

uint64_t sub_261080558(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_261080578, 0, 0);
}

uint64_t sub_261080578()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_261080644;
  v4 = v0[2];
  v3 = v0[3];

  return sub_2610846C0(v4, v3, v1);
}

uint64_t sub_261080644()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 48) = v0;

  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X3, X16 }
  }

  return MEMORY[0x2822009F8](sub_261086654, 0, 0);
}

id sub_2610807B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  [v0 setCachePolicy_];
  return v0;
}

uint64_t sub_261080818@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE65000, &qword_2610BEE60);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE65000, &qword_2610BEE60);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9DC50(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE65000, &qword_2610BEE60);
  return swift_endAccess();
}

uint64_t sub_26108093C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE664F0, &qword_2610CD6D0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE664F0, &qword_2610CD6D0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260FA0470(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE664F0, &qword_2610CD6D0);
  return swift_endAccess();
}

uint64_t sub_261080A80()
{
  sub_26108093C(v0 + 144);
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v1);
  v3 = (*(v2 + 8))(v1, v2);
  v4 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
  if (v3)
  {
    v5 = (**(v0 + 200))(v4);
    *(v0 + 208) = v5;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 184;
    *(v0 + 24) = sub_261080CF0;
    v6 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66490, &qword_2610CD2C0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_261081688;
    *(v0 + 104) = &block_descriptor_7;
    *(v0 + 112) = v6;
    [v5 startRequestWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v7 = sub_2610BC7B4();
    __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = sub_2610BC794();
    v9 = sub_2610BCD64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_260F97000, v8, v9, "PASFamilyMemberPickerDataSource fetchFamilyMembers internet is not reachable", v10, 2u);
      MEMORY[0x2666F8720](v10, -1, -1);
    }

    v11 = *(v0 + 8);
    v12 = MEMORY[0x277D84F90];

    return v11(0, v12);
  }
}

uint64_t sub_261080CF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_261081614;
  }

  else
  {
    v2 = sub_261080E00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261080E00()
{
  v41 = v0;
  v1 = v0[26];
  v2 = v0[23];
  v0[28] = v2;

  v3 = [v2 members];
  sub_261085BC0();
  v4 = sub_2610BCB34();

  v38 = v2;
  v39 = v0;
  v5 = v0;
  v6 = v4;
  v5[24] = v4;
  v7 = v5 + 24;
  *(v7 + 64) = [v2 canAddMembers];
  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_49:
    v9 = sub_2610BD0E4();
  }

  else
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v6 & 0xC000000000000001;

  v11 = 0;
  while (1)
  {
    if (v9 == v11)
    {

      goto LABEL_32;
    }

    v12 = v6 + 8 * v11;
    if (v10)
    {
      v13 = MEMORY[0x2666F78E0](v11, v6);
    }

    else
    {
      if (v11 >= *(v8 + 16))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v13 = *(v12 + 32);
    }

    v14 = v13;
    v15 = [v13 isMe];

    if (v15)
    {
      break;
    }

    if (__OFADD__(v11++, 1))
    {
      goto LABEL_46;
    }
  }

  if (v10)
  {
    v17 = MEMORY[0x2666F78E0](v11, v6);
    goto LABEL_18;
  }

  if (v11 >= *(v8 + 16))
  {
    __break(1u);
    goto LABEL_58;
  }

  v17 = *(v12 + 32);
LABEL_18:
  v18 = v17;
  v19 = [v17 isGuardian];

  if (v19)
  {

    v6 = *v7;
    v20 = *v7 & 0xFFFFFFFFFFFFFF8;
    if (!(*v7 >> 62))
    {
      v21 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        v40 = MEMORY[0x277D84F90];

        goto LABEL_22;
      }

LABEL_53:
      if (qword_27FE63808 == -1)
      {
LABEL_54:
        v36 = sub_2610BC7B4();
        __swift_project_value_buffer(v36, qword_27FE65900);
        v27 = sub_2610BC794();
        v37 = sub_2610BCD84();
        if (os_log_type_enabled(v27, v37))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_260F97000, v27, v37, "PASFamilyMemberPickerDataSource fetchFamilyMembers empty family", v29, 2u);
          v30 = 1;
          goto LABEL_36;
        }

        v30 = 1;
        goto LABEL_38;
      }

LABEL_58:
      swift_once();
      goto LABEL_54;
    }

    if (!sub_2610BD0E4())
    {
      goto LABEL_53;
    }

    v34 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    v21 = sub_2610BD0E4();

    if (!v21)
    {
LABEL_42:
      v39[29] = v34;

      v39[24] = v34;

      v35 = swift_task_alloc();
      v39[30] = v35;
      *v35 = v39;
      v35[1] = sub_261081330;

      return sub_2610817F0(v34);
    }

LABEL_22:
    v22 = 0;
    v8 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v23 = MEMORY[0x2666F78E0](v22, v6);
      }

      else
      {
        if (v22 >= *(v20 + 16))
        {
          goto LABEL_48;
        }

        v23 = *(v6 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_47;
      }

      if ([v23 isChildAccount])
      {
        sub_2610BD024();
        sub_2610BD054();
        sub_2610BD064();
        v7 = &v40;
        sub_2610BD034();
      }

      else
      {
      }

      ++v22;
      if (v25 == v21)
      {
        v34 = v40;
        goto LABEL_42;
      }
    }
  }

LABEL_32:
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v26 = sub_2610BC7B4();
  __swift_project_value_buffer(v26, qword_27FE65900);
  v27 = sub_2610BC794();
  v28 = sub_2610BCD84();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_260F97000, v27, v28, "PASFamilyMemberPickerDataSource fetchFamilyMembers not a guardian", v29, 2u);
    v30 = 0;
LABEL_36:
    MEMORY[0x2666F8720](v29, -1, -1);
    goto LABEL_38;
  }

  v30 = 0;
LABEL_38:

  v31 = v39[1];
  v32 = MEMORY[0x277D84F90];

  return v31(v30, v32);
}

uint64_t sub_261081330(uint64_t a1)
{
  *(*v1 + 248) = a1;

  return MEMORY[0x2822009F8](sub_261081450, 0, 0);
}

uint64_t sub_261081450()
{
  v16 = v0;
  v15 = sub_2610840E8(*(v0 + 248));
  sub_261083488(&v15);
  v1 = v15;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
    {
      v14 = v6;
      v7 = sub_2610BD0E4();
      v6 = v14;
    }

    else
    {
      v7 = *(*(v0 + 232) + 16);
    }

    *(v6 + 4) = v7;
    v8 = v4;
    v9 = v6;
    _os_log_impl(&dword_260F97000, v3, v8, "PASFamilyMemberPickerDataSource fetchFamilyMembers complete with %{public}ld members", v6, 0xCu);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  v10 = *(v0 + 224);

  v11 = *(v0 + 256);
  v12 = *(v0 + 8);

  return v12(v11, v1);
}

uint64_t sub_261081614(uint64_t a1)
{
  v2 = *(v1 + 208);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t sub_261081688(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

unint64_t sub_261081760(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_261084084(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_2610817F0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_261081810, 0, 0);
}

uint64_t sub_261081810()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    if (sub_2610BD0E4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = type metadata accessor for PASFamilyMember();
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = *(v0 + 3);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664D0, &unk_2610CD678);
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_261081A3C;

    return MEMORY[0x282200600](v0 + 2, v2, v4, 0, 0, &unk_2610CD690, v3, v2);
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);
  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_260F97000, v7, v8, "PASFamilyMemberPickerDataSource hydrateFamilyMemberImages members isEmpty", v9, 2u);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  v10 = v0[1];
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_261081A3C()
{

  return MEMORY[0x2822009F8](sub_260FF90A8, 0, 0);
}

uint64_t PASFamilyMemberPickerDataSource.fetchLocalAccount(using:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_261081B74, 0, 0);
}

uint64_t sub_261081B74()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[9] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFamilyMemberPickerDataSource fetchLocalAccount", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_261080818((v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v9 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_261081D64;

  return v9(v5, v6);
}

uint64_t sub_261081D64(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_261082340;
  }

  else
  {
    v4 = sub_261081E78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261081E78()
{
  v1 = v0[11];
  v2 = v0 + 2;
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    v3 = v1;
    v4 = sub_2610BC794();
    v5 = sub_2610BCD54();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[11];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 141558274;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2112;
      *(v7 + 14) = v3;
      *v8 = v6;
      v9 = v3;
      _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberPickerDataSource fetchLocalAccount got local account %{mask.hash}@", v7, 0x16u);
      sub_260FA9980(v8, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v8, -1, -1);
      MEMORY[0x2666F8720](v7, -1, -1);
    }

    v10 = v0[8];

    v11 = v10[5];
    v12 = v10[6];
    __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
    v21 = (*(v12 + 16) + **(v12 + 16));
    v13 = swift_task_alloc();
    v0[13] = v13;
    *v13 = v0;
    v13[1] = sub_261082184;
    v14 = v0[7];

    return v21(v3, v14, v11, v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    v16 = sub_2610BC794();
    v17 = sub_2610BCD64();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_260F97000, v16, v17, "PASFamilyMemberPickerDataSource fetchLocalAccount accountStore returned no account", v18, 2u);
      MEMORY[0x2666F8720](v18, -1, -1);
    }

    sub_261085C0C();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_261082184(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_2610823A4;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_2610822B8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2610822B8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[11];
  type metadata accessor for PASAccountWithImage();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_261082340()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610823A4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 141558530;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    *(v9 + 22) = 2114;
    v11 = v8;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    v10[1] = v13;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFamilyMemberPickerDataSource fetch image failed for %{mask.hash}@ with error %{public}@", v9, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FF0, &unk_2610BFDA0);
    swift_arrayDestroy();
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 88);
  type metadata accessor for PASAccountWithImage();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = xmmword_2610BF320;
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_261082578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664E8, &unk_2610CD698);
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26108268C, 0, 0);
}

uint64_t sub_26108268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 184);
  if (v5 >> 62)
  {
    v6 = sub_2610BD0E4();
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822002E8](v6, a2, a3, a4);
  }

  v7 = 0;
  v29 = *(v4 + 184) + 32;
  v30 = **(v4 + 176);
  v31 = v5 & 0xC000000000000001;
  v32 = v6;
  do
  {
    v33 = v7;
    if (v31)
    {
      v10 = MEMORY[0x2666F78E0](v7, *(v4 + 184), a3, a4);
    }

    else
    {
      v10 = *(v29 + 8 * v7);
    }

    v11 = v10;
    v13 = *(v4 + 224);
    v12 = *(v4 + 232);
    v14 = *(v4 + 192);
    v15 = sub_2610BCC94();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v12, 1, 1, v15);
    sub_260FDD844(v14, v4 + 16);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    v18 = *(v4 + 64);
    *(v17 + 64) = *(v4 + 48);
    *(v17 + 80) = v18;
    *(v17 + 96) = *(v4 + 80);
    v19 = *(v4 + 32);
    *(v17 + 32) = *(v4 + 16);
    *(v17 + 48) = v19;
    *(v17 + 112) = v11;
    sub_260FA9918(v12, v13, &unk_27FE65800, &qword_2610BF910);
    LODWORD(v12) = (*(v16 + 48))(v13, 1, v15);
    v20 = v11;
    v21 = *(v4 + 224);
    if (v12 == 1)
    {
      sub_260FA9980(*(v4 + 224), &unk_27FE65800, &qword_2610BF910);
    }

    else
    {
      sub_2610BCC84();
      (*(v16 + 8))(v21, v15);
    }

    if (*(v17 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = sub_2610BCBF4();
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = swift_allocObject();
    *(v25 + 16) = &unk_2610CD6B8;
    *(v25 + 24) = v17;
    type metadata accessor for PASFamilyMember();

    if (v24 | v22)
    {
      v8 = v4 + 96;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      *(v4 + 112) = v22;
      *(v4 + 120) = v24;
    }

    else
    {
      v8 = 0;
    }

    ++v7;
    v9 = *(v4 + 232);
    *(v4 + 128) = 1;
    *(v4 + 136) = v8;
    *(v4 + 144) = v30;
    swift_task_create();

    sub_260FA9980(v9, &unk_27FE65800, &qword_2610BF910);
  }

  while (v32 != v33 + 1);
LABEL_19:
  v26 = MEMORY[0x277D84F90];
  *(v4 + 152) = MEMORY[0x277D84F90];
  type metadata accessor for PASFamilyMember();
  sub_2610BCC44();
  *(v4 + 240) = v26;
  v27 = swift_task_alloc();
  *(v4 + 248) = v27;
  *v27 = v4;
  v27[1] = sub_261082A84;
  a4 = *(v4 + 200);
  v6 = v4 + 160;
  a2 = 0;
  a3 = 0;

  return MEMORY[0x2822002E8](v6, a2, a3, a4);
}

uint64_t sub_261082A84()
{

  return MEMORY[0x2822009F8](sub_261082B80, 0, 0);
}

uint64_t sub_261082B80()
{
  if (v0[20])
  {

    MEMORY[0x2666F7430](v1);
    if (*((v0[19] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[19] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2610BCB64();
    }

    sub_2610BCBA4();

    v0[30] = v0[19];
    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_261082A84;
    v3 = v0[25];

    return MEMORY[0x2822002E8](v0 + 20, 0, 0, v3);
  }

  else
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v4 = sub_2610BC7B4();
    __swift_project_value_buffer(v4, qword_27FE65900);
    v5 = sub_2610BC794();
    v6 = sub_2610BCD54();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260F97000, v5, v6, "PASFamilyMemberPickerDataSource hydrateFamilyMemberImages complete", v7, 2u);
      MEMORY[0x2666F8720](v7, -1, -1);
    }

    v8 = v0[30];
    v9 = v0[21];

    *v9 = v8;

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_261082DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_261082DF4, 0, 0);
}

uint64_t sub_261082DF4()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_261082F24;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_261082F24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {

    v7 = sub_2610830FC;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v7 = sub_26108305C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26108305C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[2];
  type metadata accessor for PASFamilyMember();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  *v4 = v5;
  v8 = v0[1];
  v6 = v3;

  return v8();
}

uint64_t sub_2610830FC()
{
  v1 = v0[4];
  v2 = v0[2];
  type metadata accessor for PASFamilyMember();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = xmmword_2610BF320;
  *v2 = v3;
  v6 = v0[1];
  v4 = v1;

  return v6();
}

uint64_t sub_261083198()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261083224;

  return PASFamilyMemberPickerDataSource.fetchFamilyMembers()();
}

uint64_t sub_261083224(char a1, uint64_t a2)
{
  v10 = *v3;

  v7 = *(v10 + 8);
  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1 & 1;
    v6 = a2;
  }

  return v7(v8, v6);
}

uint64_t sub_26108333C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6F34;

  return PASFamilyMemberPickerDataSource.fetchLocalAccount(using:)(a1);
}

void *sub_2610833D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664E0, &unk_2610CC230);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_261083458@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_261083488(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2610538C8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_261083504(v6);
  return sub_2610BD034();
}

uint64_t sub_261083504(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2610BD2F4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PASFamilyMember();
        v6 = sub_2610BCB84();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_26108370C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_261083608(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_261083608(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v16 = v7;
    v17 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = *(v8 + 16);

      v11 = [v10 age];
      v12 = [*(v9 + 16) age];

      if (v12 >= v11)
      {
LABEL_4:
        ++v4;
        v6 = v17 + 1;
        v7 = v16 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v13;
      --v6;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26108370C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2610538B4(v8);
      v8 = result;
    }

    v88 = *(v8 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = v8;
        v8 = (v88 - 1);
        v90 = *&v89[16 * v88];
        v91 = *&v89[16 * v88 + 24];
        sub_261083D98((*a3 + 8 * v90), (*a3 + 8 * *&v89[16 * v88 + 16]), (*a3 + 8 * v91), v7);
        if (v5)
        {
        }

        if (v91 < v90)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_2610538B4(v89);
        }

        if (v88 - 2 >= *(v89 + 2))
        {
          goto LABEL_116;
        }

        v92 = &v89[16 * v88];
        *v92 = v90;
        *(v92 + 1) = v91;
        result = sub_261053828(v88 - 1);
        v8 = v89;
        v88 = *(v89 + 2);
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v98 = v5;
      v94 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*(*a3 + 8 * v7) + 16);

      v103 = [v13 age];
      v101 = [*(v12 + 16) age];

      v96 = v9;
      v14 = v9 + 2;
      while (v6 != v14)
      {
        v15 = *(v11 - 1);
        v16 = *(*v11 + 16);

        v17 = v8;
        v18 = [v16 age];
        v7 = [*(v15 + 16) age];

        v19 = v7 < v18;
        v8 = v17;
        v20 = !v19;
        ++v14;
        ++v11;
        if ((((v101 < v103) ^ v20) & 1) == 0)
        {
          v6 = v14 - 1;
          break;
        }
      }

      v9 = v96;
      v5 = v98;
      v21 = v94;
      if (v101 < v103)
      {
        if (v6 < v96)
        {
          goto LABEL_119;
        }

        if (v96 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v96;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v25 = *(v26 + v21);
              *(v26 + v21) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v21 += 8;
          }

          while (v24 < v23);
        }
      }

      v7 = v6;
    }

    v27 = a3[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v28 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v28)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_260FD1D3C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 2);
    v41 = *(v8 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_260FD1D3C((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v43;
    v44 = &v8[16 * v42];
    *(v44 + 4) = v9;
    *(v44 + 5) = v7;
    v45 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 4);
          v48 = *(v8 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_59:
          if (v50)
          {
            goto LABEL_106;
          }

          v63 = &v8[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_109;
          }

          v69 = &v8[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_113;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v73 = &v8[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_73:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &v8[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_111;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_80:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v85 = *&v8[16 * v84 + 32];
        v86 = *&v8[16 * v46 + 40];
        sub_261083D98((*a3 + 8 * v85), (*a3 + 8 * *&v8[16 * v46 + 32]), (*a3 + 8 * v86), v45);
        if (v5)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2610538B4(v8);
        }

        if (v84 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v87 = &v8[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_261053828(v46);
        v43 = *(v8 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v8[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_104;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_105;
      }

      v58 = &v8[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_107;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_110;
      }

      if (v62 >= v54)
      {
        v80 = &v8[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_114;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v95 = v8;
  v97 = v9;
  v99 = v5;
  v29 = *a3;
  v30 = *a3 + 8 * v7 - 8;
  v31 = v9 - v7;
  v102 = v28;
LABEL_32:
  v104 = v7;
  v32 = *(v29 + 8 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    v36 = *(v32 + 16);

    v37 = [v36 age];
    v38 = [*(v35 + 16) age];

    if (v38 >= v37)
    {
LABEL_31:
      v7 = v104 + 1;
      v30 += 8;
      --v31;
      if ((v104 + 1) != v102)
      {
        goto LABEL_32;
      }

      v7 = v102;
      v9 = v97;
      v5 = v99;
      v8 = v95;
      goto LABEL_39;
    }

    if (!v29)
    {
      break;
    }

    v39 = *v34;
    v32 = v34[1];
    *v34 = v32;
    v34[1] = v39;
    --v34;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_31;
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
  return result;
}