uint64_t sub_24A882910(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *FMNAuthenticationProvider.init()()
{
  v1 = v0;
  v2 = sub_24A8BB404();
  MEMORY[0x28223BE20](v2);
  v3 = sub_24A8BB104();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24A8BB414();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[2] = 1;
  v16[0] = sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v4);
  sub_24A8BB0F4();
  v16[1] = MEMORY[0x277D84F90];
  sub_24A882D00(&unk_2814AB020, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A882D48(&qword_2814AB030, &unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A8BB4E4();
  v0[3] = sub_24A8BB444();
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    v10 = sub_24A8BB254();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v1[4] = v10;
  v1[5] = v12;
  v1[6] = 0;
  v1[7] = 0;
  v13 = sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    v15 = v13;
    swift_once();
    v13 = v15;
  }

  sub_24A8BB0B4(v13, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: initialized", 38, 2, MEMORY[0x277D84F90]);
  return v1;
}

uint64_t sub_24A882CB8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_24A882D00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A882D48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24A882D9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_24A882DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_24A882E60();
  result = sub_24A8BB474();
  *a4 = result;
  return result;
}

unint64_t sub_24A882E60()
{
  result = qword_2814AB000;
  if (!qword_2814AB000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814AB000);
  }

  return result;
}

uint64_t sub_24A882EAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v31 = a4;
  v32 = a1;
  v33 = a2;
  v30 = sub_24A8BB414();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A8BB404();
  MEMORY[0x28223BE20](v10);
  v11 = sub_24A8BB104();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[3];
  v28 = a3[2];
  v29 = v12;
  v26 = v14;
  v27 = v13;
  *(v4 + 32) = 0;
  sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  sub_24A8BB0F4();
  v34 = MEMORY[0x277D84F90];
  sub_24A8831E4(&unk_2814AB020, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A88322C();
  sub_24A8BB4E4();
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v30);
  v16 = v26;
  v15 = v27;
  v17 = v28;
  v18 = sub_24A8BB444();
  v19 = v29;
  v20 = v31;
  v21 = v32;
  *(v5 + 40) = v18;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  v22 = v33;
  *(v5 + 16) = v21;
  *(v5 + 24) = v22;
  *(v5 + 96) = 0;
  *(v5 + 104) = v19;
  *(v5 + 112) = v15;
  *(v5 + 120) = v17;
  *(v5 + 128) = v16;
  if (v20)
  {
    *(v5 + 136) = v20;
  }

  else
  {
    type metadata accessor for FMNURLSessionFactory();
    v23 = swift_allocObject();
    v23[2] = sub_24A8A3F30;
    v23[3] = 0;
    v23[4] = v19;
    v23[5] = v15;
    v23[6] = v17;
    v23[7] = v16;
    *(v5 + 136) = v23;
    sub_24A883290(v19, v15, v17, v16);
  }

  return v5;
}

uint64_t sub_24A8831E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A88322C()
{
  result = qword_2814AB030;
  if (!qword_2814AB030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF794A0, &unk_24A8BC9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AB030);
  }

  return result;
}

void sub_24A883290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t type metadata accessor for FMNHTTPRequest(uint64_t a1)
{
  result = qword_2814AAB98;
  if (!qword_2814AAB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A883320(uint64_t a1)
{
  result = sub_24A8BAF24();
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

uint64_t sub_24A8833C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  MEMORY[0x28223BE20](v50);
  v51 = (&v49 - v10);
  v11 = sub_24A8BAF24();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v49 - v14;
  sub_24A886914(a1, v80);
  sub_24A886914(a2, &v81);
  sub_24A883EEC(v80, v78, &qword_27EF79140, &unk_24A8BD730);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  sub_24A886914(v78, v76);
  sub_24A886914(v79, v77);
  sub_24A883EEC(v76, &v63, &qword_27EF79140, &unk_24A8BD730);
  sub_24A883B44(&v63, v73);
  sub_24A883B44(v66, v72);

  v16 = sub_24A886978(v73);
  sub_24A886B10(v16, v71);
  v61 = v5;
  v62 = v16;
  v58 = v16;
  type metadata accessor for FMNHttpClient();
  sub_24A8BB424();
  v52 = 0;
  v17 = v63;
  sub_24A886914(v76, v69);
  sub_24A886914(v77, &v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79148, &unk_24A8BD740);
  swift_allocObject();
  v18 = sub_24A8BB1D4();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_24A88F874;
  *(v19 + 24) = v15;

  sub_24A8BB184();

  v20 = swift_allocObject();
  *(v20 + 16) = sub_24A88F874;
  *(v20 + 24) = v15;

  sub_24A8BB194();

  v21 = *(v5 + 16);
  v22 = *(v5 + 24);
  sub_24A883EEC(v69, &v65, &qword_27EF79140, &unk_24A8BD730);
  v23 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
  swift_beginAccess();
  v60 = v17;
  sub_24A883EEC(v17 + v23, &v67, &qword_27EF79120, &qword_24A8BC960);
  sub_24A883EEC(v71, v68, &qword_27EF79118, &unk_24A8BD720);
  swift_unknownObjectWeakInit();
  *(&v63 + 1) = v21;
  v64 = v22;
  swift_weakInit();
  v68[8] = 0;
  swift_unknownObjectRetain();
  v59 = v15;
  v24 = sub_24A8887E8(sub_24A88F874, v15, v18);
  sub_24A886D90(&v63, &qword_27EF79150, &unk_24A8BD750);
  sub_24A886D90(v69, &qword_27EF79140, &unk_24A8BD730);
  v25 = swift_allocObject();
  v25[2] = v5;
  v25[3] = v24;
  v25[4] = v18;
  v26 = v74;
  v27 = v75;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v28 = *(v27 + 16);
  v57 = v18;

  v29 = v24;

  v30 = v54;
  v31 = v27;
  v32 = v55;
  v28(v26, v31);
  v33 = v53;
  v34 = v56;
  sub_24A888D88(v30, v71, v53);
  v35 = *(v32 + 8);
  v35(v30, v34);
  v36 = v52;
  sub_24A889A4C(v72, v33, sub_24A88EF80, v25);
  if (v36)
  {
    v35(v33, v34);
    v37 = sub_24A8BB3C4();
    sub_24A882E60();
    v38 = sub_24A8BB464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v39 = v29;
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_24A8BC300;
    swift_getErrorValue();
    v41 = sub_24A8BB8D4();
    v43 = v42;
    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 64) = sub_24A8897F0();
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    sub_24A8BB0B4(v37, &dword_24A881000, v38, "FMNServerInteractionController: Unable to request %@", 52, 2, v40);

    v44 = v51;
    *v51 = v36;
    swift_storeEnumTagMultiPayload();
    v45 = v36;
    v46 = sub_24A8BB3D4();
    v47 = sub_24A8BB464();
    sub_24A8BB0B4(v46, &dword_24A881000, v47, "Calling response handler's completion.", 38, 2, MEMORY[0x277D84F90]);

    sub_24A88F02C(v44, v39, v57);

    sub_24A886D90(v44, &qword_27EF79110, &qword_24A8BDC50);
  }

  else
  {

    v35(v33, v34);
  }

  sub_24A886D90(v71, &qword_27EF79118, &unk_24A8BD720);
  __swift_destroy_boxed_opaque_existential_0Tm(v72);
  sub_24A886D90(v76, &qword_27EF79140, &unk_24A8BD730);
  sub_24A886D90(v80, &qword_27EF79140, &unk_24A8BD730);
  __swift_destroy_boxed_opaque_existential_0Tm(v73);
  __swift_destroy_boxed_opaque_existential_0Tm(v79);
  return __swift_destroy_boxed_opaque_existential_0Tm(v78);
}

uint64_t sub_24A883B44(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24A883B5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A883BC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A883BF8(uint64_t a1)
{
  sub_24A883CB0();
  if (v1 <= 0x3F)
  {
    sub_24A883D2C(319, &qword_2814AAD50, type metadata accessor for FMNServerInteractionController.InternalServerMetadata);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24A883CB0()
{
  if (!qword_2814AABC8)
  {
    v0 = sub_24A8BB214();
    if (!v1)
    {
      atomic_store(v0, &qword_2814AABC8);
    }
  }
}

void sub_24A883D2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A8BB484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24A883D80(uint64_t a1)
{
  sub_24A8BB174();
  if (v1 <= 0x3F)
  {
    sub_24A883D2C(319, &qword_2814AAFE8, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      sub_24A883E70(319, &qword_2814AABB8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_24A883E70(319, &qword_2814AABA8, MEMORY[0x277D84A28]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24A883E70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24A8BB484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24A883EEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A883F54(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A8BB0D4();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24A8BB104();
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    v22 = v15;
    swift_once();
    v15 = v22;
  }

  v16 = MEMORY[0x277D84F90];
  sub_24A8BB0B4(v15, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: credential", 37, 2, MEMORY[0x277D84F90]);
  if (*(v4 + 56))
  {
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a3;
    v17[4] = v4;
    v31 = sub_24A890F3C;
    v32 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v18 = &block_descriptor_6;
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    *(v19 + 24) = a2;
    *(v19 + 32) = a3;
    *(v19 + 40) = v14;
    v31 = sub_24A887C44;
    v32 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v18 = &block_descriptor_1;
  }

  v29 = sub_24A8875B4;
  v30 = v18;
  v20 = _Block_copy(&aBlock);

  sub_24A8BB0F4();
  v26 = v16;
  sub_24A882D00(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v13, v10, v20);
  _Block_release(v20);
  (*(v25 + 8))(v10, v8);
  (*(v11 + 8))(v13, v24);
}

uint64_t sub_24A884344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;

  sub_24A8833C4(a1, a2, sub_24A88FD28, v10);
}

uint64_t sub_24A884424@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 56);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24A8844D8()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
LABEL_5:
    v5 = v1;
    return v2;
  }

  v3 = [objc_opt_self() defaultStore];
  if (v3)
  {
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
    goto LABEL_5;
  }

  result = sub_24A8BB5E4();
  __break(1u);
  return result;
}

uint64_t sub_24A884608(void *a1, unsigned __int8 *a2)
{
  v161 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v158 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v157 = &v155 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v156 = &v155 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v155 = &v155 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v155 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v155 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v155 - v18;
  v20 = sub_24A8BAFC4();
  v159 = *(v20 - 8);
  v160 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v155 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v155 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v155 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v155 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v155 - v35;
  MEMORY[0x28223BE20](v34);
  v39 = &v155 - v38;
  v40 = *a2;
  result = 0;
  switch(v40)
  {
    case 1:
      v74 = v161;
      v58 = [v161 aa_fmfAccount];
      v75 = sub_24A8844D8();
      v60 = [v75 credentialForAccount_];

      v76 = [v74 dataclassProperties];
      if (!v76)
      {
        goto LABEL_160;
      }

      v77 = v76;
      *&v163 = sub_24A8BB254();
      *(&v163 + 1) = v78;
      v79 = [v77 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v79)
      {
        sub_24A8BB4D4();
        swift_unknownObjectRelease();
      }

      else
      {
        v163 = 0u;
        v164 = 0u;
      }

      v165 = v163;
      v166 = v164;
      if (!*(&v164 + 1))
      {
        goto LABEL_132;
      }

      sub_24A882CB8(0, &unk_2814AACC0, 0x277CBEAC0);
      if (swift_dynamicCast())
      {
        v116 = v162;
        *&v163 = 0x6E74736F48707061;
        *(&v163 + 1) = 0xEB00000000656D61;
        v117 = [v162 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v117)
        {
          sub_24A8BB4D4();

          swift_unknownObjectRelease();
        }

        else
        {

          v163 = 0u;
          v164 = 0u;
        }

        v165 = v163;
        v166 = v164;
        if (*(&v164 + 1))
        {
          swift_dynamicCast();
        }

        else
        {
LABEL_132:
          sub_24A886D90(&v165, &qword_27EF79078, &qword_24A8BC4B0);
        }
      }

      if (!v60)
      {
        goto LABEL_157;
      }

      v143 = [v60 credentialItemForKey_];
      if (!v143)
      {
        goto LABEL_156;
      }

      goto LABEL_149;
    case 2:
      v80 = v161;
      v58 = [v161 aa_fmipAccount];
      v81 = sub_24A8844D8();
      v60 = [v81 credentialForAccount_];

      v82 = [v80 dataclassProperties];
      if (!v82)
      {
        goto LABEL_161;
      }

      v83 = v82;
      *&v163 = sub_24A8BB254();
      *(&v163 + 1) = v84;
      v85 = [v83 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v85)
      {
        sub_24A8BB4D4();
        swift_unknownObjectRelease();
      }

      else
      {
        v163 = 0u;
        v164 = 0u;
      }

      v165 = v163;
      v166 = v164;
      if (*(&v164 + 1))
      {
        sub_24A882CB8(0, &unk_2814AACC0, 0x277CBEAC0);
        if (swift_dynamicCast())
        {
          v118 = v162;
          *&v165 = 0x656D616E74736F68;
          *(&v165 + 1) = 0xE800000000000000;
          v119 = [v162 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v119)
          {
            sub_24A8BB4D4();
            swift_unknownObjectRelease();
          }

          else
          {
            v163 = 0u;
            v164 = 0u;
          }

          v165 = v163;
          v166 = v164;
          if (*(&v164 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_24A886D90(&v165, &qword_27EF79078, &qword_24A8BC4B0);
          }

          *&v163 = 0x6E74736F48707061;
          *(&v163 + 1) = 0xEB00000000656D61;
          v144 = [v118 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v144)
          {
            sub_24A8BB4D4();

            swift_unknownObjectRelease();
          }

          else
          {

            v163 = 0u;
            v164 = 0u;
          }

          v165 = v163;
          v166 = v164;
          if (*(&v164 + 1))
          {
            if (swift_dynamicCast())
            {
            }
          }

          else
          {
            sub_24A886D90(&v165, &qword_27EF79078, &qword_24A8BC4B0);
          }
        }
      }

      else
      {
        sub_24A886D90(&v165, &qword_27EF79078, &qword_24A8BC4B0);
      }

      if (!v60)
      {
        goto LABEL_157;
      }

      v143 = [v60 credentialItemForKey_];
      if (v143)
      {
        goto LABEL_149;
      }

      goto LABEL_156;
    case 3:
      v57 = v161;
      v58 = [v161 aa_fmipAccount];
      v59 = sub_24A8844D8();
      v60 = [v59 credentialForAccount_];

      v61 = [v57 dataclassProperties];
      if (!v61)
      {
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        JUMPOUT(0x24A88613CLL);
      }

      v62 = v61;
      *&v163 = sub_24A8BB254();
      *(&v163 + 1) = v63;
      v64 = [v62 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v64)
      {
        sub_24A8BB4D4();
        swift_unknownObjectRelease();
      }

      else
      {
        v163 = 0u;
        v164 = 0u;
      }

      v165 = v163;
      v166 = v164;
      if (*(&v164 + 1))
      {
        sub_24A882CB8(0, &unk_2814AACC0, 0x277CBEAC0);
        if (swift_dynamicCast())
        {
          v114 = v162;
          *&v165 = 0x656D616E74736F68;
          *(&v165 + 1) = 0xE800000000000000;
          v115 = [v162 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v115)
          {
            sub_24A8BB4D4();
            swift_unknownObjectRelease();
          }

          else
          {
            v163 = 0u;
            v164 = 0u;
          }

          v165 = v163;
          v166 = v164;
          if (*(&v164 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_24A886D90(&v165, &qword_27EF79078, &qword_24A8BC4B0);
          }

          *&v163 = 0x6E74736F48707061;
          *(&v163 + 1) = 0xEB00000000656D61;
          v142 = [v114 __swift_objectForKeyedSubscript_];
          swift_unknownObjectRelease();
          if (v142)
          {
            sub_24A8BB4D4();

            swift_unknownObjectRelease();
          }

          else
          {

            v163 = 0u;
            v164 = 0u;
          }

          v165 = v163;
          v166 = v164;
          if (*(&v164 + 1))
          {
            if (swift_dynamicCast())
            {
            }
          }

          else
          {
            sub_24A886D90(&v165, &qword_27EF79078, &qword_24A8BC4B0);
          }
        }
      }

      else
      {
        sub_24A886D90(&v165, &qword_27EF79078, &qword_24A8BC4B0);
      }

      if (!v60)
      {
        goto LABEL_157;
      }

      v143 = [v60 credentialItemForKey_];
      if (!v143)
      {
        goto LABEL_156;
      }

      goto LABEL_149;
    case 4:
      v92 = v161;
      v93 = [v161 credential];
      v94 = v93;
      if (v93 && (v95 = [v93 credentialItemForKey_]) != 0)
      {
        v96 = v95;
        v56 = sub_24A8BB254();
      }

      else
      {
        v56 = 0;
      }

      sub_24A89C284(v92);

      return v56;
    case 5:
    case 11:
    case 13:
      v42 = [v161 credential];
      if (!v42)
      {
        goto LABEL_38;
      }

      v43 = v42;
      v44 = [v42 credentialItemForKey_];
      if (v44)
      {
        v45 = v44;
        v46 = sub_24A8BB254();
      }

      else
      {
        v46 = 0;
      }

      type metadata accessor for FMNAuthenticationProvider();
      LOBYTE(v165) = v40;
      static FMNAuthenticationProvider.configurationURL(accountType:)(&v165, v17);
      v112 = v159;
      v111 = v160;
      if ((*(v159 + 48))(v17, 1, v160) == 1)
      {
        sub_24A886D90(v17, &qword_27EF79180, &qword_24A8BC9F0);
        v113 = sub_24A8BB3C4();
        if (qword_2814AB038 != -1)
        {
          v148 = v113;
          swift_once();
          v113 = v148;
        }

        sub_24A8BB0B4(v113, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Falling back to hard-coded host name for activation lock.", 84, 2, MEMORY[0x277D84F90]);
      }

      else
      {
        (*(v112 + 32))(v36, v17, v111);
        sub_24A8BAFA4();

        (*(v112 + 8))(v36, v111);
      }

      return v46;
    case 6:
      v69 = [v161 credential];
      if (!v69)
      {
        goto LABEL_38;
      }

      v70 = v69;
      v71 = [v69 credentialItemForKey_];
      if (v71)
      {
        v72 = v71;
        v73 = sub_24A8BB254();
      }

      else
      {
        v73 = 0;
      }

      v134 = v159;
      v133 = v160;
      type metadata accessor for FMNAuthenticationProvider();
      LOBYTE(v165) = 6;
      static FMNAuthenticationProvider.configurationURL(accountType:)(&v165, v14);
      if ((*(v134 + 48))(v14, 1, v133) == 1)
      {
        sub_24A886D90(v14, &qword_27EF79180, &qword_24A8BC9F0);
        v135 = sub_24A8BB3C4();
        if (qword_2814AB038 != -1)
        {
          v153 = v135;
          swift_once();
          v135 = v153;
        }

        sub_24A8BB0B4(v135, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Falling back to hard-coded host name for activation lock.", 84, 2, MEMORY[0x277D84F90]);
      }

      else
      {
        (*(v134 + 32))(v33, v14, v133);
        sub_24A8BAFA4();

        (*(v134 + 8))(v33, v133);
      }

      return v73;
    case 7:
      v106 = [v161 credential];
      if (!v106)
      {
        goto LABEL_38;
      }

      v107 = v106;
      v108 = [v106 credentialItemForKey_];
      if (v108)
      {
        v109 = v108;
        v51 = sub_24A8BB254();
      }

      else
      {
        v51 = 0;
      }

      v139 = v159;
      v138 = v160;
      type metadata accessor for FMNAuthenticationProvider();
      LOBYTE(v165) = 7;
      v140 = v155;
      static FMNAuthenticationProvider.configurationURL(accountType:)(&v165, v155);
      if ((*(v139 + 48))(v140, 1, v138) == 1)
      {
        sub_24A886D90(v140, &qword_27EF79180, &qword_24A8BC9F0);
        v141 = sub_24A8BB3C4();
        if (qword_2814AB038 != -1)
        {
          v154 = v141;
          swift_once();
          v141 = v154;
        }

        sub_24A8BB0B4(v141, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Falling back to hard-coded host name for accessory.", 78, 2, MEMORY[0x277D84F90]);
      }

      else
      {
        (*(v139 + 32))(v30, v140, v138);
        sub_24A8BAFA4();

        (*(v139 + 8))(v30, v138);
      }

      return v51;
    case 8:
      v52 = [v161 credential];
      if (!v52)
      {
        goto LABEL_38;
      }

      v53 = v52;
      v54 = [v52 credentialItemForKey_];
      if (v54)
      {
        v55 = v54;
        v56 = sub_24A8BB254();
      }

      else
      {
        v56 = 0;
      }

      v126 = v159;
      v125 = v160;
      v127 = v156;
      type metadata accessor for FMNAuthenticationProvider();
      LOBYTE(v165) = 8;
      static FMNAuthenticationProvider.configurationURL(accountType:)(&v165, v127);
      if ((*(v126 + 48))(v127, 1, v125) == 1)
      {
        sub_24A886D90(v127, &qword_27EF79180, &qword_24A8BC9F0);
        v128 = sub_24A8BB3C4();
        if (qword_2814AB038 != -1)
        {
          v151 = v128;
          swift_once();
          v128 = v151;
        }

        sub_24A8BB0B4(v128, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Falling back to hard-coded host name for accessory.", 78, 2, MEMORY[0x277D84F90]);
      }

      else
      {
        (*(v126 + 32))(v27, v127, v125);
        sub_24A8BAFA4();

        (*(v126 + 8))(v27, v125);
      }

      return v56;
    case 9:
      v65 = [v161 credential];
      if (!v65)
      {
        goto LABEL_38;
      }

      v66 = v65;
      v67 = [v65 credentialItemForKey_];
      if (v67)
      {
        v68 = v67;
        v56 = sub_24A8BB254();
      }

      else
      {
        v56 = 0;
      }

      v130 = v159;
      v129 = v160;
      v131 = v157;
      type metadata accessor for FMNAuthenticationProvider();
      LOBYTE(v165) = 9;
      static FMNAuthenticationProvider.configurationURL(accountType:)(&v165, v131);
      if ((*(v130 + 48))(v131, 1, v129) == 1)
      {
        sub_24A886D90(v131, &qword_27EF79180, &qword_24A8BC9F0);
        v132 = sub_24A8BB3C4();
        if (qword_2814AB038 != -1)
        {
          v152 = v132;
          swift_once();
          v132 = v152;
        }

        sub_24A8BB0B4(v132, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Falling back to hard-coded host name for w2.", 71, 2, MEMORY[0x277D84F90]);
      }

      else
      {
        (*(v130 + 32))(v24, v131, v129);
        sub_24A8BAFA4();

        (*(v130 + 8))(v24, v129);
      }

      return v56;
    case 10:
      v97 = v37;
      v98 = [v161 aa_fmipAccount];
      v99 = sub_24A8844D8();
      v100 = [v99 credentialForAccount_];

      if (v100)
      {
        v101 = [v100 credentialItemForKey_];
        v103 = v159;
        v102 = v160;
        if (v101)
        {
          v104 = v101;
          v105 = sub_24A8BB254();
        }

        else
        {
          v105 = 0;
        }
      }

      else
      {
        v105 = 0;
        v103 = v159;
        v102 = v160;
      }

      type metadata accessor for FMNAuthenticationProvider();
      LOBYTE(v165) = 10;
      v136 = v158;
      static FMNAuthenticationProvider.configurationURL(accountType:)(&v165, v158);
      if ((*(v103 + 48))(v136, 1, v102) == 1)
      {
        sub_24A886D90(v136, &qword_27EF79180, &qword_24A8BC9F0);
        v137 = sub_24A8BB3C4();
        if (qword_2814AB038 != -1)
        {
          v149 = v137;
          swift_once();
          v137 = v149;
        }

        sub_24A8BB0B4(v137, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Falling back to hard-coded host name for searchparty.", 80, 2, MEMORY[0x277D84F90]);
      }

      else
      {
        (*(v103 + 32))(v97, v136, v102);
        sub_24A8BAFA4();

        (*(v103 + 8))(v97, v102);
      }

      return v105;
    case 12:
      v47 = [v161 credential];
      if (v47)
      {
        v48 = v47;
        v49 = [v47 credentialItemForKey_];
        if (v49)
        {
          v50 = v49;
          v51 = sub_24A8BB254();
        }

        else
        {
          v51 = 0;
        }

        v123 = v159;
        v122 = v160;
        type metadata accessor for FMNAuthenticationProvider();
        LOBYTE(v165) = 12;
        static FMNAuthenticationProvider.configurationURL(accountType:)(&v165, v19);
        if ((*(v123 + 48))(v19, 1, v122) == 1)
        {
          sub_24A886D90(v19, &qword_27EF79180, &qword_24A8BC9F0);
          v124 = sub_24A8BB3C4();
          if (qword_2814AB038 != -1)
          {
            v150 = v124;
            swift_once();
            v124 = v150;
          }

          sub_24A8BB0B4(v124, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Falling back to hard-coded host name for owned device location.", 90, 2, MEMORY[0x277D84F90]);
        }

        else
        {
          (*(v123 + 32))(v39, v19, v122);
          sub_24A8BAFA4();

          (*(v123 + 8))(v39, v122);
        }

        return v51;
      }

      else
      {
LABEL_38:
        v110 = sub_24A8BB3C4();
        if (qword_2814AB038 != -1)
        {
          v147 = v110;
          swift_once();
          v110 = v147;
        }

        sub_24A8BB0B4(v110, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: Unable to get account.credential!", 60, 2, MEMORY[0x277D84F90]);
        return 0;
      }

    case 14:
      return result;
    default:
      v86 = v161;
      v58 = [v161 aa_fmfAccount];
      v87 = sub_24A8844D8();
      v60 = [v87 credentialForAccount_];

      v88 = [v86 dataclassProperties];
      if (!v88)
      {
        goto LABEL_162;
      }

      v89 = v88;
      *&v163 = sub_24A8BB254();
      *(&v163 + 1) = v90;
      v91 = [v89 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (v91)
      {
        sub_24A8BB4D4();
        swift_unknownObjectRelease();
      }

      else
      {
        v163 = 0u;
        v164 = 0u;
      }

      v165 = v163;
      v166 = v164;
      if (!*(&v164 + 1))
      {
        goto LABEL_153;
      }

      sub_24A882CB8(0, &unk_2814AACC0, 0x277CBEAC0);
      if (swift_dynamicCast())
      {
        v120 = v162;
        *&v163 = 0x6E74736F48707061;
        *(&v163 + 1) = 0xEB00000000656D61;
        v121 = [v162 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v121)
        {
          sub_24A8BB4D4();

          swift_unknownObjectRelease();
        }

        else
        {

          v163 = 0u;
          v164 = 0u;
        }

        v165 = v163;
        v166 = v164;
        if (*(&v164 + 1))
        {
          swift_dynamicCast();
        }

        else
        {
LABEL_153:
          sub_24A886D90(&v165, &qword_27EF79078, &qword_24A8BC4B0);
        }
      }

      if (v60)
      {
        v143 = [v60 credentialItemForKey_];
        if (v143)
        {
LABEL_149:
          v145 = v143;
          v146 = sub_24A8BB254();

          return v146;
        }

LABEL_156:
      }

      else
      {
LABEL_157:
      }

      return 0;
  }
}

NSObject *sub_24A886178(char *a1)
{
  v3 = v1;
  v31 = sub_24A8BB124();
  v29 = *(v31 - 8);
  v5 = MEMORY[0x28223BE20](v31);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = *a1;
  sub_24A882E60();
  v11 = sub_24A8BB464();
  v12 = sub_24A8BB3D4();
  sub_24A8BB0A4("Requesting auth credentials from client session", 47, 2, &dword_24A881000, v11, v12, MEMORY[0x277D84F90]);

  v13 = dispatch_group_create();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  dispatch_group_enter(v13);
  if (*(v3 + 16))
  {
    v26[0] = v14 + 16;
    v26[1] = v2;
    v15 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v30[0] = v10;
    v16 = swift_allocObject();
    *(v16 + 16) = v10;
    *(v16 + 24) = v13;
    *(v16 + 32) = v14;
    v17 = v9;
    v18 = *(v15 + 8);
    v19 = v13;
    v28 = v14;
    v20 = v19;

    swift_unknownObjectRetain();
    v18(v30, sub_24A887E38, v16, ObjectType, v15);

    sub_24A8BB114();
    sub_24A8BB144();
    v21 = *(v29 + 8);
    v22 = v31;
    v21(v7, v31);
    v13 = v20;
    if ((sub_24A8BB3E4() & 1) == 0)
    {
      v21(v17, v22);
      swift_unknownObjectRelease();

      swift_beginAccess();
      v13 = *(v28 + 16);

      return v13;
    }

    sub_24A899560();
    swift_allocError();
    *v23 = 4;
    swift_willThrow();

    swift_unknownObjectRelease();
    v21(v17, v22);
  }

  else
  {
    sub_24A899560();
    swift_allocError();
    *v24 = 6;
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_24A8864BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A8864F4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_24A886534(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a2;
  v25 = a1;
  v4 = sub_24A8BB404();
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A8BB104();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24A8BB414();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_bundleIdentifierFallback];
  *v12 = 0xD00000000000001ELL;
  *(v12 + 1) = 0x800000024A8C0890;
  *&v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_httpSuccessCodeMin] = 200;
  *&v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_httpSuccessCodeMax] = 299;
  v13 = &v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential];
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  *&v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlers] = MEMORY[0x277D84F98];
  v22 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlerQueue;
  v21 = sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v8 + 104))(v10, *MEMORY[0x277D85268], v7);
  sub_24A8BB0F4();
  v27 = MEMORY[0x277D84F90];
  sub_24A8870CC(&unk_2814AB020, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A882D9C(&qword_2814AB030, &unk_27EF794A0, &unk_24A8BC9E0, MEMORY[0x277D83970]);
  sub_24A8BB4E4();
  *&v2[v22] = sub_24A8BB444();
  v14 = &v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_session];
  *(v14 + 4) = 0;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v15 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_sessionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794B0, &unk_24A8BDC90);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *&v2[v15] = v16;
  *&v2[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_urlSessionFactory] = v24;
  swift_beginAccess();

  v17 = v25;
  sub_24A888528(v25, v13);
  swift_endAccess();
  v18 = type metadata accessor for FMNHttpClient();
  v26.receiver = v3;
  v26.super_class = v18;
  v19 = objc_msgSendSuper2(&v26, sel_init);
  sub_24A886D90(v17, &qword_27EF79120, &qword_24A8BC960);
  return v19;
}

uint64_t sub_24A886914(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

NSObject *sub_24A886978(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 8))(v4, v1, v2);
  return sub_24A886178(v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_24A886B10@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_beginAccess();
    sub_24A883EEC(v2 + 48, &v13, &qword_27EF79118, &unk_24A8BD720);
    if (v13)
    {
      sub_24A887424(&v13, &v10);

      sub_24A886D90(&v13, &qword_27EF79118, &unk_24A8BD720);
      sub_24A886914(&v10 + 8, v9);
      sub_24A887480(&v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79138, qword_24A8BEB70);
      type metadata accessor for FMNAuthenticationCredential();
      if (swift_dynamicCast())
      {
        v5 = _s12FMNetworking27FMNAuthenticationCredentialC2eeoiySbAC_ACtFZ_0(v13, a1);

        if (v5)
        {

          sub_24A883EEC(v2 + 48, a2, &qword_27EF79118, &unk_24A8BD720);
          return result;
        }
      }
    }

    else
    {

      sub_24A886D90(&v13, &qword_27EF79118, &unk_24A8BD720);
    }

    v11 = type metadata accessor for FMNAuthenticationCredential();
    v12 = &protocol witness table for FMNAuthenticationCredential;
    *&v10 = a1;

    sub_24A886E38(&v10, &v13);
    sub_24A883EEC(&v13, &v10, &qword_27EF79118, &unk_24A8BD720);
    if (v10)
    {
      FMNRedirectHostStore.clearRedirectedHostKeychainItemsIfNeeded()();

      sub_24A887480(&v10);
    }

    else
    {

      sub_24A886D90(&v10, &qword_27EF79118, &unk_24A8BD720);
    }
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
  }

  sub_24A883EEC(&v13, &v10, &qword_27EF79118, &unk_24A8BD720);
  swift_beginAccess();
  sub_24A8874D4(&v10, v2 + 48, &qword_27EF79118, &unk_24A8BD720);
  swift_endAccess();
  result = *&v13;
  v7 = v14;
  v8 = v15;
  *a2 = v13;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v16;
  return result;
}

uint64_t sub_24A886D90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24A886DF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24A886E38@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a2;
  v14 = a1;
  v2 = sub_24A8BB404();
  MEMORY[0x28223BE20](v2);
  v3 = sub_24A8BB104();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24A8BB414();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v4);
  sub_24A8BB0F4();
  v15 = MEMORY[0x277D84F90];
  sub_24A8870CC(&unk_2814AB020, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A882D48(&qword_2814AB030, &unk_27EF794A0, &unk_24A8BC9E0);
  sub_24A8BB4E4();
  v8 = sub_24A8BB444();
  v9 = v13;
  *v13 = v8;
  v10 = v9;
  sub_24A883B44(v14, (v9 + 1));
  sub_24A8BAE44();
  swift_allocObject();
  result = sub_24A8BAE34();
  v10[6] = result;
  return result;
}

uint64_t sub_24A8870CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A887114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A887160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A8BB0D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A8BB104();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  sub_24A887424(v3, v21);
  v13 = swift_allocObject();
  v14 = v21[1];
  *(v13 + 16) = v21[0];
  *(v13 + 32) = v14;
  *(v13 + 48) = v21[2];
  *(v13 + 64) = v22;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = a3;
  v15 = _Block_copy(aBlock);
  sub_24A8BB0F4();
  v19 = MEMORY[0x277D84F90];
  sub_24A8870CC(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D48(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v12, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_24A8874D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

char *sub_24A887558@<X0>(char **a1@<X8>)
{
  result = sub_24A888B10(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_24A8875B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_24A8875F8(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, unsigned __int8 a4)
{
  v8 = sub_24A8844D8();
  v51 = [v8 aa_primaryAppleAccount];

  if (v51)
  {
    v9 = [v51 aa_personID];
    if (!v9)
    {
      v25 = sub_24A8BB3D4();
      if (qword_2814AB038 != -1)
      {
        v44 = v25;
        swift_once();
        v25 = v44;
      }

      sub_24A8BB0B4(v25, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: error retrieving person identifier", 61, 2, MEMORY[0x277D84F90]);
      sub_24A89C6F4();
      v26 = swift_allocError();
      *v27 = 1;
      a2(0, v26);

      goto LABEL_22;
    }

    v10 = v9;
    v49 = sub_24A8BB254();
    v50 = v11;

    v53 = a4;
    v12 = sub_24A884608(v51, &v53);
    v14 = v13;
    v48 = v15;
    v17 = v16;
    v18 = [objc_opt_self() sharedInstance];
    v19 = [v18 isInternalBuild];

    if (v19)
    {
      if (FMNAccountType.description.getter(v20) == 1885957478 && v21 == 0xE400000000000000)
      {
      }

      else
      {
        v28 = sub_24A8BB804();

        if ((v28 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v29 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v30 = sub_24A8BB244();
      v31 = [v29 initWithSuiteName_];

      if (v31)
      {
        v32 = sub_24A8BB244();
        v33 = [v31 stringForKey_];

        if (v33)
        {

          v12 = sub_24A8BB254();
          v14 = v34;

          v35 = sub_24A8BB3D4();
          if (qword_2814AB038 != -1)
          {
            v47 = v35;
            swift_once();
            v35 = v47;
          }

          sub_24A8BB0B4(v35, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: using override token for FMIP account", 64, 2, MEMORY[0x277D84F90]);
LABEL_20:
          if (v17)
          {
            type metadata accessor for FMNAuthenticationCredential();
            v36 = swift_allocObject();
            *(v36 + 16) = v12;
            *(v36 + 24) = v14;
            *(v36 + 32) = v49;
            *(v36 + 40) = v50;
            *(v36 + 48) = v48;
            *(v36 + 56) = v17;
            *(v36 + 64) = a4;
            *(a1 + 56) = v36;
            swift_retain_n();

            a2(v36, 0);

LABEL_22:
            v37 = v51;

            goto LABEL_24;
          }

          v41 = sub_24A8BB3D4();
          if (qword_2814AB038 != -1)
          {
            v46 = v41;
            swift_once();
            v41 = v46;
          }

          sub_24A8BB0B4(v41, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: error missing hostname", 49, 2, MEMORY[0x277D84F90]);
          sub_24A89C6F4();
          v23 = swift_allocError();
          *v42 = 2;
          a2(0, v23);

          goto LABEL_31;
        }
      }
    }

LABEL_19:
    if (!v14)
    {

      v38 = sub_24A8BB3D4();
      if (qword_2814AB038 != -1)
      {
        v45 = v38;
        swift_once();
        v38 = v45;
      }

      sub_24A8BB0B4(v38, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: error missing auth token", 51, 2, MEMORY[0x277D84F90]);
      v52 = a4;
      sub_24A89C6F4();
      v39 = swift_allocError();
      *v40 = 4;

      sub_24A89C748(v51, &v52, v39, a1, a2, a3);

      v37 = v39;
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  v22 = sub_24A8BB3D4();
  if (qword_2814AB038 != -1)
  {
    v43 = v22;
    swift_once();
    v22 = v43;
  }

  sub_24A8BB0B4(v22, &dword_24A881000, qword_2814AB698, "FMNAuthenticationProvider: error retrieving primary account", 59, 2, MEMORY[0x277D84F90]);
  sub_24A89C6F4();
  v23 = swift_allocError();
  *v24 = 0;
  a2(0, v23);
LABEL_31:
  v37 = v23;
LABEL_32:

LABEL_24:
}

unint64_t sub_24A887C58()
{
  result = 6712678;
  switch(*v0)
  {
    case 1:
      result = 0x707041666D66;
      break;
    case 2:
      result = 1885957478;
      break;
    case 3:
      result = 0x6972695370696D66;
      break;
    case 4:
      result = 0x7075746573;
      break;
    case 5:
      result = 0x6150686372616573;
      break;
    case 6:
      result = 0x4C676E6972696170;
      break;
    case 7:
      result = 0x726F737365636361;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x7373656363413277;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0x6F4C657275636573;
      break;
    case 0xC:
      result = 0xD000000000000014;
      break;
    case 0xD:
      result = 0x726168536D657469;
      break;
    case 0xE:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

void sub_24A887E48(uint64_t a1, void *a2, char a3, NSObject *a4, uint64_t a5)
{
  if (FMNAccountType.rawValue.getter() == 1701736302 && v9 == 0xE400000000000000)
  {

LABEL_11:

    goto LABEL_13;
  }

  v11 = sub_24A8BB804();

  if (v11)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    sub_24A882E60();
    v19 = sub_24A8BB464();
    v20 = sub_24A8BB3D4();
    sub_24A8BB0A4("Received credential for session.", 32, 2, &dword_24A881000, v19, v20, MEMORY[0x277D84F90]);

    if (!a1)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v12 = a2;
  v13 = sub_24A8BB3C4();
  sub_24A882E60();
  v14 = sub_24A8BB464();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24A8BC300;
  swift_getErrorValue();
  v16 = sub_24A8BB8D4();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_24A8897F0();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_24A8BB0B4(v13, &dword_24A881000, v14, "Unable to get credential from client. %@", 40, 2, v15);

  if (a1)
  {
LABEL_8:
    swift_beginAccess();
    *(a5 + 16) = a1;
  }

LABEL_13:
  dispatch_group_leave(a4);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24A88819C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_24A8881F0(void *a1)
{
  sub_24A8883EC(&v15);
  v2 = v16;
  if (v16)
  {
    v3 = v15;
    v4 = v17;
    v5 = v18;
    v6 = a1[4];
    v7 = a1[5];
    __swift_project_boxed_opaque_existential_1(a1 + 1, v6);
    if (v4 == (*(v7 + 32))(v6, v7) && v5 == v8)
    {

      sub_24A8A2604(v3, v2, v4, v5);
    }

    else
    {
      v10 = sub_24A8BB804();

      sub_24A8A2604(v3, v2, v4, v5);
      if ((v10 & 1) == 0)
      {
        sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
        v11 = sub_24A8BB464();
        v12 = sub_24A8BB3D4();
        sub_24A8BB0A4("Removing keychain item from previous account.", 45, 2, &dword_24A881000, v11, v12, MEMORY[0x277D84F90]);

        v13 = [objc_opt_self() standardUserDefaults];
        v14 = sub_24A8BB244();
        [v13 removeObjectForKey_];
      }
    }
  }
}

void sub_24A8883EC(void *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24A8BB244();
  v4 = [v2 dataForKey_];

  if (v4)
  {
    v5 = sub_24A8BB024();
    v7 = v6;

    sub_24A8A2648();
    sub_24A8BAE24();
    sub_24A88C828(v5, v7);
    *a1 = v8;
    a1[1] = v9;
    a1[2] = v10;
    a1[3] = v11;
  }

  else
  {
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }
}

uint64_t sub_24A888528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79120, &qword_24A8BC960);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

void sub_24A888634(uint64_t a1)
{
  sub_24A888744(319, &qword_2814AAC40, &unk_27EF79790, &qword_24A8BEB68);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_24A888744(319, &qword_2814AAC48, &qword_27EF79138, qword_24A8BEB70);
      if (v3 <= 0x3F)
      {
        sub_24A888798();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24A888744(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24A8BB484();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24A888798()
{
  if (!qword_2814AAC50)
  {
    v0 = sub_24A8BB484();
    if (!v1)
    {
      atomic_store(v0, &qword_2814AAC50);
    }
  }
}

NSObject *sub_24A8887E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = dispatch_group_create();
  sub_24A883EEC(v4, v25, &qword_27EF79150, &unk_24A8BD750);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_24A88B1BC(v25, v9 + 24, &qword_27EF79150, &unk_24A8BD750);
  sub_24A883EEC(v4, v25, &qword_27EF79150, &unk_24A8BD750);
  sub_24A883EEC(v4 + 24, v24, &qword_27EF79140, &unk_24A8BD730);
  sub_24A883EEC(v4 + 144, v22, &qword_27EF79118, &unk_24A8BD720);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  sub_24A88B1BC(v25, v10 + 24, &qword_27EF79150, &unk_24A8BD750);
  *(v10 + 240) = a3;
  v11 = v24[2];
  v12 = v24[3];
  v13 = v24[0];
  *(v10 + 264) = v24[1];
  *(v10 + 280) = v11;
  v14 = v24[4];
  *(v10 + 296) = v12;
  *(v10 + 312) = v14;
  *(v10 + 248) = v13;
  v15 = v22[1];
  *(v10 + 328) = v22[0];
  *(v10 + 344) = v15;
  *(v10 + 360) = v22[2];
  *(v10 + 376) = v23;
  *(v10 + 384) = a1;
  *(v10 + 392) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79340, &qword_24A8BDA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A8BCEB0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_24A8A84C4;
  *(v17 + 24) = v9;
  *(inited + 32) = 401;
  *(inited + 40) = sub_24A8A8518;
  *(inited + 48) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24A8A8500;
  *(v18 + 24) = v10;
  *(inited + 56) = 330;
  *(inited + 64) = sub_24A8A868C;
  *(inited + 72) = v18;
  v21[2] = v4;
  v19 = v8;

  sub_24A88B224(sub_24A88B2C0, v21, inited);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79348, &qword_24A8BDA48);
  swift_arrayDestroy();
  return v19;
}

uint64_t sub_24A888AA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *sub_24A888B10(uint64_t a1)
{
  v3 = sub_24A8BB134();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[5];
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_24A8BB154();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = v1[4];
    if (v10)
    {
      if (a1)
      {
        v11 = type metadata accessor for FMNAuthenticationCredential();
        v12 = &protocol witness table for FMNAuthenticationCredential;
        v13 = a1;
      }

      else
      {
        v13 = 0;
        v11 = 0;
        v12 = 0;
        v29 = 0;
        v30 = 0;
      }

      v28 = v13;
      v31 = v11;
      v32 = v12;
      v17 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
      swift_beginAccess();
      v18 = v10;

      sub_24A8874D4(&v28, v10 + v17, &qword_27EF79120, &qword_24A8BC960);
      swift_endAccess();
      return v18;
    }

    else
    {
      if (a1)
      {
        v14 = type metadata accessor for FMNAuthenticationCredential();
        v15 = &protocol witness table for FMNAuthenticationCredential;
        v16 = a1;
      }

      else
      {
        v16 = 0;
        v14 = 0;
        v15 = 0;
        v29 = 0;
        v30 = 0;
      }

      v28 = v16;
      v31 = v14;
      v32 = v15;
      v19 = v1[17];
      objc_allocWithZone(type metadata accessor for FMNHttpClient());

      v20 = v1;
      v21 = sub_24A886534(&v28, v19);

      v22 = &v21[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler];
      swift_beginAccess();
      v23 = *v22;
      v24 = v22[1];
      *v22 = sub_24A88D468;
      v22[1] = 0;
      sub_24A8895E8(v23, v24);
      v25 = v20[4];
      v20[4] = v21;
      v26 = v21;

      return v26;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24A888D88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_24A8BAF24();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  sub_24A883EEC(a2, v45, &qword_27EF79118, &unk_24A8BD720);
  v8 = v45[0];
  if (v45[0])
  {
    v43 = 0;
    v44 = 0;
    sub_24A887424(v45, v41);
    v9 = swift_allocObject();
    v10 = v41[1];
    *(v9 + 16) = v41[0];
    *(v9 + 32) = v10;
    *(v9 + 48) = v41[2];
    *(v9 + 64) = v42;
    *(v9 + 72) = &v43;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_24A88BB7C;
    *(v11 + 24) = v9;
    v40[4] = sub_24A88B9CC;
    v40[5] = v11;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 1107296256;
    v40[2] = sub_24A88B9FC;
    v40[3] = &block_descriptor;
    v12 = _Block_copy(v40);

    dispatch_sync(v8, v12);
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_14;
    }

    v14 = v43;
    v15 = v44;

    sub_24A887480(v45);
    if (v15)
    {
      MEMORY[0x24C21E4E0](v14, v15);
      v9 = sub_24A8BB3D4();
      if (qword_27EF78FF0 == -1)
      {
LABEL_5:
        v16 = qword_27EF7D4D0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_24A8BC300;
        sub_24A889310();
        v18 = sub_24A8BB724();
        v20 = v19;
        *(v17 + 56) = MEMORY[0x277D837D0];
        *(v17 + 64) = sub_24A8897F0();
        *(v17 + 32) = v18;
        *(v17 + 40) = v20;
        sub_24A8BB0B4(v9, &dword_24A881000, v16, "Creating redirected endpoint %@", 31, 2, v17);

        return;
      }

LABEL_14:
      swift_once();
      goto LABEL_5;
    }
  }

  else
  {
    sub_24A886D90(v45, &qword_27EF79118, &unk_24A8BD720);
  }

  v21 = *(v3 + 32);
  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
  swift_beginAccess();
  sub_24A883EEC(v21 + v22, v45, &qword_27EF79120, &qword_24A8BC960);
  v23 = v46;
  if (!v46)
  {
    sub_24A886D90(v45, &qword_27EF79120, &qword_24A8BC960);
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_24A8BC300;
    v45[0] = sub_24A8BAEC4();
    v45[1] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79128, &unk_24A8BDA50);
    v36 = sub_24A8BB2A4();
    v38 = v37;
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = sub_24A8897F0();
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    sub_24A882E60();
    v32 = sub_24A8BB464();
    v39 = sub_24A8BB3D4();
    sub_24A8BB0A4("Using host name from origin endpoint %@", 39, 2, &dword_24A881000, v32, v39, v34);
    goto LABEL_12;
  }

  v24 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v25 = (*(v24 + 72))(v23, v24);
  v27 = v26;
  sub_24A886D90(v45, &qword_27EF79120, &qword_24A8BC960);
  MEMORY[0x24C21E4E0](v25, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_24A8BC300;
  sub_24A889310();
  v29 = sub_24A8BB724();
  v31 = v30;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_24A8897F0();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  sub_24A882E60();
  v32 = sub_24A8BB464();
  v33 = sub_24A8BB3D4();
  sub_24A8BB0A4("Creating standard endpoint %@", 29, 2, &dword_24A881000, v32, v33, v28);
LABEL_12:
}

uint64_t sub_24A8892B8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_24A889310()
{
  result = qword_2814AAFF0;
  if (!qword_2814AAFF0)
  {
    sub_24A8BAF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AAFF0);
  }

  return result;
}

uint64_t sub_24A889368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79070, &qword_24A8BC4A8);
  result = sub_24A8BB604();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_24A8BB924();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24A8895E8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_24A8895F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v10 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlers;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *&v8[v10];
    *&v8[v10] = 0x8000000000000000;
    sub_24A88BC00(sub_24A8AC5B0, v9, a2, isUniquelyReferenced_nonNull_native);
    *&v8[v10] = v12;
    swift_endAccess();
  }
}

uint64_t sub_24A8896F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A889740(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79450, &unk_24A8BD708);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24A8897F0()
{
  result = qword_2814AACE0;
  if (!qword_2814AACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AACE0);
  }

  return result;
}

uint64_t sub_24A889878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79450, &unk_24A8BD708);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void sub_24A889934(uint64_t a1)
{
  sub_24A8BAFC4();
  if (v1 <= 0x3F)
  {
    sub_24A883CB0();
    if (v2 <= 0x3F)
    {
      sub_24A8899E8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24A8899E8(uint64_t a1)
{
  if (!qword_2814AAC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF79138, qword_24A8BEB70);
    v1 = sub_24A8BB484();
    if (!v2)
    {
      atomic_store(v1, &qword_2814AAC48);
    }
  }
}

uint64_t sub_24A889A4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v112 = a4;
  v111 = a3;
  v124 = a2;
  v116 = sub_24A8BADF4();
  v115 = *(v116 - 8);
  v9 = MEMORY[0x28223BE20](v116);
  v114 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v113 = &v110 - v12;
  MEMORY[0x28223BE20](v11);
  v119 = &v110 - v13;
  v117 = type metadata accessor for FMNRequest(0);
  MEMORY[0x28223BE20](v117);
  v118 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v15 = MEMORY[0x28223BE20](v122);
  v125 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v121 = &v110 - v17;
  *&v126 = sub_24A8BAF24();
  v131 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v19 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A8BAFC4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v123 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v24 = a1[4];
  v120 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = (*(v24 + 56))(v23, v24);
  v26 = 0;
  v27 = 0;
  if (v25)
  {
    v28 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
    swift_beginAccess();
    sub_24A883EEC(v4 + v28, v128, &qword_27EF79120, &qword_24A8BC960);
    v27 = v129;
    if (v129)
    {
      v29 = v130;
      __swift_project_boxed_opaque_existential_1(v128, v129);
      v26 = (*(v29 + 32))(v27, v29);
      v27 = v30;
      sub_24A886D90(v128, &qword_27EF79120, &qword_24A8BC960);
    }

    else
    {
      sub_24A886D90(v128, &qword_27EF79120, &qword_24A8BC960);
      v26 = 0;
    }
  }

  (*(v131 + 16))(v19, v124, v126);
  if (v27)
  {
    v128[0] = sub_24A8BAEE4();
    v128[1] = v31;
    v127[2] = 16421;
    v127[3] = 0xE200000000000000;
    v127[0] = v26;
    v127[1] = v27;
    sub_24A88A774();
    v32 = MEMORY[0x277D837D0];
    v33 = sub_24A8BB4B4();
    v124 = v5;
    v34 = v21;
    v35 = v20;
    v36 = v7;
    v38 = v37;

    v39 = v38;
    v7 = v36;
    MEMORY[0x24C21E500](v33, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_24A8BC300;
    sub_24A8BAEB4();
    v41 = sub_24A8BB2A4();
    v43 = v42;
    *(v40 + 56) = v32;
    *(v40 + 64) = sub_24A8897F0();
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    v20 = v35;
    v21 = v34;
    v6 = v124;
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v44 = sub_24A8BB464();
    v45 = sub_24A8BB3D4();
    sub_24A8BB0A4("FMNHttpClient: new path %@", 26, 2, &dword_24A881000, v44, v45, v40);
  }

  v46 = v125;
  sub_24A8BAEB4();
  if ((*(v21 + 48))(v46, 1, v20) == 1)
  {
    sub_24A886D90(v46, &qword_27EF79180, &qword_24A8BC9F0);
    sub_24A8AC098();
    swift_allocError();
    *v47 = 1;
    swift_willThrow();

    return (*(v131 + 8))(v19, v126);
  }

  (*(v131 + 8))(v19, v126);
  v49 = v123;
  v50 = (*(v21 + 32))(v123, v46, v20);
  v51 = v20;
  MEMORY[0x28223BE20](v50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79388, &qword_24A8BDB10);
  sub_24A8BB0C4();
  if (v6)
  {
    (*(v21 + 8))(v49, v20);
  }

  *&v126 = 0;

  v122 = MEMORY[0x24C21F020](v52);
  v53 = v120;
  v54 = v120[3];
  v55 = v120[4];
  __swift_project_boxed_opaque_existential_1(v120, v54);
  (*(v55 + 40))(v127, v54, v55);
  v56 = v7;
  LODWORD(v131) = LOBYTE(v127[0]);
  v57 = v117;
  v58 = *(v117 + 20);
  v124 = v21;
  v59 = *(v21 + 16);
  v60 = v118;
  v125 = v51;
  v59(&v118[v58], v49, v51);
  v61 = v53[3];
  v62 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v61);
  v63 = (*(v62 + 8))(v61, v62);
  v65 = v64;
  v66 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_credential;
  swift_beginAccess();
  sub_24A883EEC(v56 + v66, &v60[v57[8]], &qword_27EF79120, &qword_24A8BC960);
  v67 = v53[3];
  v68 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v67);
  v69 = (*(v68 + 16))(v67, v68);
  *v60 = v131;
  v70 = &v60[v57[6]];
  *v70 = v63;
  v70[1] = v65;
  *&v60[v57[7]] = v69;
  v71 = v53[3];
  v72 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v71);
  if ((*(v72 + 48))(v71, v72))
  {
    v73 = v113;
    v74 = v126;
    sub_24A8AB0F8(v113);
    if (v74)
    {
LABEL_13:
      sub_24A88CDF4(v60, type metadata accessor for FMNRequest);
      objc_autoreleasePoolPop(v122);
LABEL_28:
      (*(v124 + 8))(v123, v125);
      return __swift_destroy_boxed_opaque_existential_0Tm(v128);
    }
  }

  else
  {
    v73 = v114;
    v75 = v126;
    sub_24A88C28C(v114);
    if (v75)
    {
      goto LABEL_13;
    }
  }

  (*(v115 + 32))(v119, v73, v116);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  v76 = swift_allocObject();
  v126 = xmmword_24A8BC300;
  *(v76 + 16) = xmmword_24A8BC300;
  v77 = v120[3];
  v78 = v120[4];
  __swift_project_boxed_opaque_existential_1(v120, v77);
  v79 = (*(v78 + 8))(v77, v78);
  v81 = v80 >> 62;
  v110 = v56;
  if ((v80 >> 62) > 1)
  {
    if (v81 != 2)
    {
      sub_24A88C828(v79, v80);
      v83 = 0;
      goto LABEL_25;
    }

    v85 = *(v79 + 16);
    v84 = *(v79 + 24);
    v79 = sub_24A88C828(v79, v80);
    v83 = v84 - v85;
    if (!__OFSUB__(v84, v85))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v81)
  {
    v82 = BYTE6(v80);
    sub_24A88C828(v79, v80);
    v83 = v82;
LABEL_25:
    v88 = MEMORY[0x277D83C10];
    *(v76 + 56) = MEMORY[0x277D83B88];
    *(v76 + 64) = v88;
    *(v76 + 32) = v83;
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v89 = sub_24A8BB464();
    sub_24A8BB3D4();
    sub_24A8BB0A4("//// -> Request Body: %i", v110);

    v90 = swift_allocObject();
    *(v90 + 16) = v126;
    v91 = sub_24A88CA00();
    v93 = v92;
    *(v90 + 56) = MEMORY[0x277D837D0];
    *(v90 + 64) = sub_24A8897F0();
    *(v90 + 32) = v91;
    *(v90 + 40) = v93;
    v94 = sub_24A8BB464();
    v95 = sub_24A8BB3D4();
    sub_24A8BB0A4("Client URL Request: %@", 22, 2, &dword_24A881000, v94, v95, v90);

    v96 = swift_allocObject();
    *(v96 + 16) = v126;
    v97 = sub_24A8BAD84();
    *(v96 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF793A8, &qword_24A8BDB18);
    *(v96 + 64) = sub_24A882D9C(&qword_2814AABC0, &unk_27EF793A8, &qword_24A8BDB18, MEMORY[0x277CC9BB8]);
    if (!v97)
    {
      v97 = sub_24A88B040(MEMORY[0x277D84F90]);
    }

    v98 = v110;
    *(v96 + 32) = v97;
    v99 = sub_24A8BB464();
    v100 = sub_24A8BB3D4();
    sub_24A8BB0A4("Server Request Headers: %@", 26, 2, &dword_24A881000, v99, v100, v96);

    v101 = v129;
    v102 = v130;
    __swift_project_boxed_opaque_existential_1(v128, v129);
    v103 = swift_allocObject();
    v104 = v111;
    v103[2] = v98;
    v103[3] = v104;
    v103[4] = v112;
    v105 = v98;
    v106 = *(v102 + 8);
    v107 = v105;

    v108 = v119;
    v109 = v106(v119, sub_24A88DD24, v103, v101, v102);

    [v109 resume];
    (*(v115 + 8))(v108, v116);
    sub_24A88CDF4(v60, type metadata accessor for FMNRequest);
    objc_autoreleasePoolPop(v122);

    goto LABEL_28;
  }

  v86 = HIDWORD(v79);
  v87 = v79;
  result = sub_24A88C828(v79, v80);
  LODWORD(v83) = v86 - v87;
  if (!__OFSUB__(v86, v87))
  {
    v83 = v83;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

unint64_t sub_24A88A774()
{
  result = qword_2814AABD8[0];
  if (!qword_2814AABD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814AABD8);
  }

  return result;
}

uint64_t sub_24A88A7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a3;
  v51 = a1;
  *&v52 = a2;
  v4 = sub_24A8BAFC4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v49 - v13;
  v15 = *(v5 + 56);
  v15(v49 - v13, 1, 1, v4);
  v16 = v3[5];
  v57 = v5;
  v53 = v3;
  if (v16 && (v17 = v3[4], v18 = v3[7], v49[2] = v3[6], v49[3] = v17, v49[1] = v18, v19 = [objc_opt_self() sharedInstance], v20 = objc_msgSend(v19, sel_isInternalBuild), v19, v5 = v57, v20))
  {
    v21 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v22 = sub_24A8BB244();
    v23 = [v21 initWithSuiteName_];

    if (v23 && (v24 = sub_24A8BB244(), v25 = [v23 BOOLForKey_], v23, v24, v25))
    {
      v26 = v50;
      sub_24A8BAF74();
      sub_24A88C1B4(v14);
      v5 = v57;
      (*(v57 + 32))(v14, v26, v4);
      v27 = 0;
    }

    else
    {
      sub_24A88C1B4(v14);
      v27 = 1;
      v5 = v57;
    }
  }

  else
  {
    sub_24A88C1B4(v14);
    v27 = 1;
  }

  v15(v14, v27, 1, v4);
  sub_24A88C21C(v14, v12);
  v28 = (*(v5 + 48))(v12, 1, v4);
  v29 = v55;
  if (v28 == 1)
  {
    sub_24A88C1B4(v12);
    v30 = [objc_opt_self() sessionWithConfiguration:v51 delegate:v52 delegateQueue:0];
    v31 = sub_24A882CB8(0, &qword_2814AACB8, 0x277CCAD30);
    v32 = v54;
    v54[3] = v31;
    v32[4] = &protocol witness table for NSURLSession;
    *v32 = v30;
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v33 = sub_24A8BB464();
    v34 = sub_24A8BB3D4();
    sub_24A8BB0A4("Created standard URLSession.", 28, 2, &dword_24A881000, v33, v34, MEMORY[0x277D84F90]);

    return sub_24A88C1B4(v14);
  }

  else
  {
    (*(v5 + 32))(v55, v12, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v36 = swift_allocObject();
    v52 = xmmword_24A8BC300;
    *(v36 + 16) = xmmword_24A8BC300;
    v37 = sub_24A8BAF64();
    v39 = v38;
    *(v36 + 56) = MEMORY[0x277D837D0];
    v40 = sub_24A8897F0();
    *(v36 + 64) = v40;
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v41 = sub_24A8BB464();
    v42 = sub_24A8BB3D4();
    sub_24A8BB0A4("Creating a MockURLSession at %@", 31, 2, &dword_24A881000, v41, v42, v36);

    v43 = v53[2];
    if (v43)
    {
      v43(v56, v29);
      (*(v57 + 8))(v29, v4);
      sub_24A88C1B4(v14);
      return sub_24A883B44(v56, v54);
    }

    else
    {
      v44 = swift_allocObject();
      *(v44 + 16) = v52;
      v45 = sub_24A8BAF64();
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = v40;
      *(v44 + 32) = v45;
      *(v44 + 40) = v46;
      v47 = sub_24A8BB464();
      v48 = sub_24A8BB3D4();
      sub_24A8BB0A4("Failed to create a MockURLSession at %@", 39, 2, &dword_24A881000, v47, v48, v44);

      sub_24A8A2920();
      swift_allocError();
      swift_willThrow();
      (*(v57 + 8))(v29, v4);
      return sub_24A88C1B4(v14);
    }
  }
}

unint64_t sub_24A88ADB0()
{
  v1 = sub_24A8BB294();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v5 = v0[5];
  v24 = v0[4];
  v25 = v5;

  MEMORY[0x24C21E8E0](58, 0xE100000000000000);
  swift_beginAccess();
  v7 = v0[2];
  v6 = v0[3];

  MEMORY[0x24C21E8E0](v7, v6);

  sub_24A8BB284();
  v8 = sub_24A8BB264();
  v10 = v9;

  (*(v2 + 8))(v4, v1);
  if (v10 >> 60 == 15)
  {
    v11 = sub_24A8BB3C4();
    sub_24A882E60();
    v12 = sub_24A8BB464();
    v13 = MEMORY[0x277D84F90];
    sub_24A8BB0B4(v11, &dword_24A881000, v12, "FMNAuthenticationCredential: Missing Authorization Headers", 58, 2, MEMORY[0x277D84F90]);

    return sub_24A88B040(v13);
  }

  else
  {
    v15 = sub_24A8BB014();
    v17 = v16;
    sub_24A88C814(v8, v10);
    v24 = 0x206369736142;
    v25 = 0xE600000000000000;
    MEMORY[0x24C21E8E0](v15, v17);

    v18 = v24;
    v19 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790B8, "bJ");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A8BC300;
    *(inited + 32) = 0x7A69726F68747541;
    v21 = inited + 32;
    *(inited + 40) = 0xED00006E6F697461;
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    v22 = sub_24A88B040(inited);
    swift_setDeallocating();
    sub_24A88B154(v21);
    return v22;
  }
}

unint64_t sub_24A88B040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79038, &qword_24A8BC480);
    v3 = sub_24A8BB614();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24A88C87C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24A88B154(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790C0, "hJ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A88B1BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void (*sub_24A88B224(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 48); ; i += 3)
    {
      v7 = *(i - 1);
      v8 = *i;
      v9[0] = *(i - 2);
      v9[1] = v7;
      v9[2] = v8;

      v5(v9);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t FMNHTTPRequest.init(hostName:scheme:path:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v16 = a6;
  v11 = sub_24A8BAF24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 48) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 56) = 14;
  sub_24A8BAF14();
  (*(v12 + 32))(v7 + OBJC_IVAR____TtC12FMNetworking14FMNHTTPRequest_urlComponents, v14, v11);
  swift_beginAccess();
  sub_24A8BAF04();
  MEMORY[0x24C21E4E0](a1, a2);
  MEMORY[0x24C21E500](a5, v16);
  swift_endAccess();
  return v7;
}

uint64_t sub_24A88B464(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_24A88B524(v5, a4, v8);
  }
}

uint64_t sub_24A88B524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A8BB0D4();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A8BB104();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlerQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_24A8895DC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8875B4;
  aBlock[3] = &block_descriptor_3;
  v16 = _Block_copy(aBlock);

  sub_24A8BB0F4();
  v21 = MEMORY[0x277D84F90];
  sub_24A8870CC(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
  sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0, MEMORY[0x277D83970]);
  sub_24A8BB4E4();
  MEMORY[0x24C21EA40](0, v13, v10, v16);
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_24A88B848()
{
  MEMORY[0x24C21F5F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A88B880()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A88B8C0(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_24A88B944@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FMNetworking14FMNHTTPRequest_urlComponents;
  swift_beginAccess();
  v4 = sub_24A8BAF24();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void sub_24A88BA24(void *a1, uint64_t *a2)
{
  sub_24A8883EC(&v13);
  v4 = v14;
  if (!v14)
  {
    return;
  }

  v5 = v13;
  v6 = v15;
  v7 = v16;
  v8 = a1[4];
  v9 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v8);
  if (v6 == (*(v9 + 32))(v8, v9) && v7 == v10)
  {
  }

  else
  {
    v12 = sub_24A8BB804();

    if ((v12 & 1) == 0)
    {

      sub_24A8A2604(v5, v4, v6, v7);
      return;
    }
  }

  sub_24A8A2604(v5, v4, v6, v7);
  *a2 = v5;
  a2[1] = v4;
}

uint64_t sub_24A88BBB0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);

  return v2;
}

unint64_t sub_24A88BC00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24A88BD60(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24A889368(v16, a4 & 1);
      result = sub_24A88BD60(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_24A8BB8C4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_24A895A74();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_24A88BD60(uint64_t a1)
{
  v2 = sub_24A8BB924();

  return sub_24A88BDA4(a1, v2);
}

unint64_t sub_24A88BDA4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_24A88BE28()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

void sub_24A88BEAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_session;
  swift_beginAccess();
  sub_24A883EEC(a1 + v5, &v7, &qword_27EF79478, &unk_24A8BDC70);
  if (v8)
  {
    sub_24A883B44(&v7, a2);
  }

  else
  {
    sub_24A886D90(&v7, &qword_27EF79478, &unk_24A8BDC70);
    sub_24A88BFB4();
    if (!v2)
    {
      sub_24A886914(&v7, a2);
      sub_24A883B44(&v7, v6);
      swift_beginAccess();
      sub_24A8874D4(v6, a1 + v5, &qword_27EF79478, &unk_24A8BDC70);
      swift_endAccess();
    }
  }
}

void sub_24A88BFB4()
{
  v1 = [objc_opt_self() defaultSessionConfiguration];
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    sub_24A8BB254();
  }

  else
  {
    swift_beginAccess();
  }

  v4 = objc_allocWithZone(MEMORY[0x277CF0188]);
  v5 = sub_24A8BB244();

  v6 = [v4 initWithIdentifier_];

  [v1 set:v6 appleIDContext:?];
  [v1 setURLCache_];
  [v1 setRequestCachePolicy_];
  [v1 setHTTPCookieStorage_];
  [v1 setHTTPCookieAcceptPolicy_];
  [v1 setURLCredentialStorage_];
  (*(**(v0 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_urlSessionFactory) + 104))(v1, v0);
}

uint64_t sub_24A88C1B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A88C21C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A88C28C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_24A8BAFC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMNRequest(0);
  (*(v6 + 16))(v8, v3 + v9[5], v5);
  sub_24A8BAD94();
  sub_24A8BAD64();
  sub_24A8BADB4();
  if (v10)
  {
  }

  else
  {
    sub_24A8BADE4();
  }

  sub_24A8BADB4();
  if (v11)
  {
  }

  else
  {
    sub_24A8BADE4();
  }

  sub_24A88C780(v3 + v9[8], &v33);
  v38 = v3;
  v32 = v9;
  if (v34)
  {
    sub_24A883B44(&v33, v35);
    v12 = v36;
    v13 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    result = (*(v13 + 56))(v12, v13);
    v15 = result;
    if (!*(result + 16))
    {

      sub_24A8A15B0();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();
      v30 = sub_24A8BADF4();
      (*(*(v30 - 8) + 8))(a1, v30);
      return __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    v31 = v2;
    v16 = 0;
    v17 = 1 << *(result + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(result + 64);
    v20 = (v17 + 63) >> 6;
    if (v19)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_34;
      }

      if (v21 >= v20)
      {
        break;
      }

      v19 = *(v15 + 64 + 8 * v21);
      ++v16;
      if (v19)
      {
        v16 = v21;
        do
        {
LABEL_17:
          v19 &= v19 - 1;

          sub_24A8BADE4();
        }

        while (v19);
        continue;
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    v3 = v38;
    v9 = v32;
  }

  else
  {
    v31 = v2;
    sub_24A886D90(&v33, &qword_27EF79120, &qword_24A8BC960);
  }

  v22 = *(v3 + v9[7]);
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 64);
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  if (v25)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      sub_24A88C9AC(*(v38 + v32[6]), *(v38 + v32[6] + 8));
      return sub_24A8BADD4();
    }

    v25 = *(v22 + 64 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      do
      {
LABEL_29:
        v25 &= v25 - 1;

        sub_24A8BADE4();
      }

      while (v25);
      continue;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_24A88C780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79120, &qword_24A8BC960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A88C814(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A88C828(result, a2);
  }

  return result;
}

uint64_t sub_24A88C828(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24A88C87C(uint64_t a1, uint64_t a2)
{
  sub_24A8BB934();
  sub_24A8BB2C4();
  v4 = sub_24A8BB954();

  return sub_24A88C8F4(a1, a2, v4);
}

unint64_t sub_24A88C8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24A8BB804())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24A88C9AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24A88CA00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79180, &qword_24A8BC9F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_24A8BAFC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A8BADF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v0, v8);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_24A8BADA4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24A886D90(v3, &qword_27EF79180, &qword_24A8BC9F0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v12 = sub_24A8BAF64();
    v17 = 0x203A4C5255;
    v18 = 0xE500000000000000;
    MEMORY[0x24C21E8E0](v12);

    MEMORY[0x24C21E8E0](v17, v18);

    MEMORY[0x24C21E8E0](10, 0xE100000000000000);
    (*(v5 + 8))(v7, v4);
  }

  v13 = sub_24A8BAD84();
  if (v13)
  {
    v14 = *(v13 + 16);
  }

  else
  {
    v14 = 0;
  }

  v17 = v14;
  v15 = sub_24A8BB724();
  v17 = 0x3A73726564616548;
  v18 = 0xE900000000000020;
  MEMORY[0x24C21E8E0](v15);

  MEMORY[0x24C21E8E0](v17, v18);

  (*(v9 + 8))(v11, v8);
  return v19;
}

id sub_24A88CD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = sub_24A8BAD74();
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A88D49C;
  v11[3] = &block_descriptor_3;
  v8 = _Block_copy(v11);

  v9 = [v6 dataTaskWithRequest:v7 completionHandler:v8];

  _Block_release(v8);

  return v9;
}

uint64_t sub_24A88CDF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A88CEF0(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v28 = a1;
  v5 = sub_24A8BB0D4();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A8BB104();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A8BB0E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v16 = (a2 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_authenticationChallengeHandler);
  swift_beginAccess();
  v17 = *v16;
  if (*v16)
  {
    v18 = v16[1];
    sub_24A882CB8(0, &unk_2814AB010, 0x277D85C78);
    v27 = v5;
    (*(v12 + 104))(v14, *MEMORY[0x277D851C8], v11);
    _Block_copy(a3);
    sub_24A88D378(v17, v18);
    v26 = sub_24A8BB454();
    (*(v12 + 8))(v14, v11);
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v18;
    v20 = v28;
    v19[4] = v28;
    v19[5] = sub_24A88D450;
    v19[6] = v15;
    aBlock[4] = sub_24A8AC5F0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A8875B4;
    aBlock[3] = &block_descriptor_68_0;
    v21 = _Block_copy(aBlock);
    sub_24A88D378(v17, v18);
    v22 = v20;

    sub_24A8BB0F4();
    v32 = MEMORY[0x277D84F90];
    sub_24A8870CC(qword_2814AACF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF797F0, &qword_24A8BD2C0);
    sub_24A882D9C(&qword_2814AACD0, &qword_27EF797F0, &qword_24A8BD2C0, MEMORY[0x277D83970]);
    v23 = v27;
    sub_24A8BB4E4();
    v24 = v26;
    MEMORY[0x24C21EA40](0, v10, v7, v21);
    _Block_release(v21);

    sub_24A8895E8(v17, v18);
    (*(v31 + 8))(v7, v23);
    (*(v29 + 8))(v10, v30);
  }

  else
  {
    _Block_copy(a3);
    a3[2](a3, 1, 0);
  }
}

uint64_t sub_24A88D378(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24A88D38C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A88D49C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_24A8BB024();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_24A88C814(v6, v10);
}

uint64_t sub_24A88D564(uint64_t a1, unint64_t a2, char *a3, void *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v88 = a2;
  v89 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79450, &unk_24A8BD708);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v73 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  MEMORY[0x28223BE20](v13);
  v15 = (&v73 - v14);
  v16 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24A8BB294();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    *v15 = a4;
    swift_storeEnumTagMultiPayload();
    v23 = a4;
    v24 = v15;
LABEL_8:
    a5(v24);
    return sub_24A886D90(v15, &qword_27EF79110, &qword_24A8BDC50);
  }

  v82 = v22;
  v83 = v17;
  v84 = v19;
  v85 = v12;
  v86 = a6;
  v25 = v89;
  if (!v89 || (objc_opt_self(), (v26 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_24A8AC098();
    v31 = swift_allocError();
    *v32 = 5;
    *v15 = v31;
    swift_storeEnumTagMultiPayload();
    v24 = v15;
    goto LABEL_8;
  }

  v27 = v88;
  if (v88 >> 60 == 15)
  {
    sub_24A8AC098();
    v28 = swift_allocError();
    *v29 = 6;
    *v15 = v28;
    swift_storeEnumTagMultiPayload();
    v30 = v25;
    a5(v15);
  }

  else
  {
    v34 = v26;
    v77 = v13;
    v79 = a5;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v35 = swift_allocObject();
    v81 = xmmword_24A8BC300;
    *(v35 + 16) = xmmword_24A8BC300;
    v78 = v25;
    v74 = a1;
    sub_24A88DD28(a1, v27);
    v36 = [v34 allHeaderFields];
    v89 = sub_24A8BB1F4();

    *(v35 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF79460, &unk_24A8BDC58);
    *(v35 + 64) = sub_24A882D9C(&qword_2814AACD8, &unk_27EF79460, &unk_24A8BDC58, MEMORY[0x277CC9BB8]);
    *(v35 + 32) = v89;
    v80 = sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
    v37 = sub_24A8BB464();
    v38 = sub_24A8BB3D4();
    sub_24A8BB0A4("Server Response Headers: %@", 27, 2, &dword_24A881000, v37, v38, v35);

    v39 = [v34 allHeaderFields];
    v40 = sub_24A8BB1F4();

    v41 = sub_24A88DD3C(v40);

    v75 = v16;
    if (v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = sub_24A88B040(MEMORY[0x277D84F90]);
    }

    v44 = v84;
    v43 = v85;
    v45 = v87;
    v89 = [v34 statusCode];
    v46 = sub_24A88E0D4(v89);
    if (v46)
    {
      v48 = v46;
      v49 = v47;
      v46(v89, v42);
      sub_24A8895E8(v48, v49);
    }

    v50 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlers;
    swift_beginAccess();
    *(v45 + v50) = MEMORY[0x277D84F98];

    v51 = MEMORY[0x277D837D0];
    if ((v89 - 300) <= 0xFFFFFFFFFFFFFF9BLL)
    {
      v52 = swift_allocObject();
      *(v52 + 16) = v81;
      v90 = v89;
      sub_24A8A8530();
      v53 = sub_24A8BB4C4();
      v55 = v54;
      *(v52 + 56) = v51;
      *(v52 + 64) = sub_24A8897F0();
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      v56 = sub_24A8BB464();
      v57 = sub_24A8BB3D4();
      sub_24A8BB0A4("HttpRequest Error: request returned with status code: %@", 56, 2, &dword_24A881000, v56, v57, v52);
    }

    v58 = swift_allocObject();
    *(v58 + 16) = v81;
    sub_24A8BB284();
    v59 = v74;
    v60 = v88;
    v61 = sub_24A8BB274();
    v63 = v62;
    *(v58 + 56) = v51;
    *(v58 + 64) = sub_24A8897F0();
    v64 = 7104878;
    if (v63)
    {
      v64 = v61;
    }

    v65 = 0xE300000000000000;
    if (v63)
    {
      v65 = v63;
    }

    *(v58 + 32) = v64;
    *(v58 + 40) = v65;
    v66 = sub_24A8BB464();
    v67 = sub_24A8BB3D4();
    sub_24A8BB0A4("//// -> Response Content: %@", 28, 2, &dword_24A881000, v66, v67, v58);

    FMNServerInteractionController.InternalServerMetadata.init(headers:)(v68, v44);
    sub_24A88ECB0(v44, v43, type metadata accessor for FMNServerInteractionController.InternalServerMetadata);
    v69 = *(v83 + 56);
    v70 = v44;
    v71 = v75;
    v69(v43, 0, 1, v75);
    v72 = *(type metadata accessor for FMNServerInteractionController.FMNResponseFields(0) + 28);
    v69(v15 + v72, 1, 1, v71);
    *v15 = v59;
    v15[1] = v60;
    v15[2] = v89;
    v15[3] = v42;
    sub_24A88C9AC(v59, v60);
    sub_24A8874D4(v43, v15 + v72, &unk_27EF79450, &unk_24A8BD708);
    swift_storeEnumTagMultiPayload();
    v79(v15);

    sub_24A88C814(v59, v60);
    sub_24A88CDF4(v70, type metadata accessor for FMNServerInteractionController.InternalServerMetadata);
  }

  return sub_24A886D90(v15, &qword_27EF79110, &qword_24A8BDC50);
}

uint64_t sub_24A88DD28(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24A88C9AC(result, a2);
  }

  return result;
}

unint64_t sub_24A88DD3C(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79038, &qword_24A8BC480);
    v2 = sub_24A8BB614();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_24A88E01C(*(v1 + 48) + 40 * v15, v28);
    sub_24A88E078(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_24A88E01C(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_24A886D90(v25, &qword_27EF79470, &qword_24A8BDC68);

      goto LABEL_22;
    }

    sub_24A88E078(v26 + 8, v24);
    sub_24A886D90(v25, &qword_27EF79470, &qword_24A8BDC68);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_24A88C87C(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_24A88E078(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A88E0D4(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  v3 = *&v1[OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlerQueue];
  v4 = swift_allocObject();
  v4[2] = v12;
  v4[3] = v1;
  v4[4] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24A88E28C;
  *(v5 + 24) = v4;
  v11[4] = sub_24A88B9CC;
  v11[5] = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24A88B9FC;
  v11[3] = &block_descriptor_77;
  v6 = _Block_copy(v11);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12[0];

    return v10;
  }

  return result;
}

uint64_t sub_24A88E244()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A88E298(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_statusCodeHandlers;
  swift_beginAccess();
  v7 = *(a2 + v6);
  if (*(v7 + 16) && (v8 = sub_24A88BD60(a3), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = swift_allocObject();
    *(v12 + 16) = *(v11 + 16 * v10);

    v13 = sub_24A8AC4D4;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = *a1;
  v15 = a1[1];
  *a1 = v13;
  a1[1] = v12;
  return sub_24A8895E8(v14, v15);
}

uint64_t objectdestroy_48Tm()
{
  MEMORY[0x24C21F5F0](v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  }

  v1 = *(v0 + 168);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  }

  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t objectdestroy_51Tm()
{
  MEMORY[0x24C21F5F0](v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  }

  v1 = *(v0 + 168);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  }

  swift_weakDestroy();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 248));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 288));
  v2 = *(v0 + 328);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
  }

  return MEMORY[0x2821FE8E8](v0, 400, 7);
}

uint64_t FMNServerInteractionController.InternalServerMetadata.init(headers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79310, &qword_24A8BD700);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v73 - v5;
  v6 = sub_24A8BB094();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v76 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79320, &qword_24A8BD760);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v73 - v10;
  v12 = sub_24A8BB174();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_65;
  }

  result = sub_24A88C87C(0xD000000000000012, 0x800000024A8BEEC0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_65;
  }

  v18 = (*(a1 + 56) + 16 * result);
  v20 = *v18;
  v19 = v18[1];
  v21 = HIBYTE(v19) & 0xF;
  v22 = v20 & 0xFFFFFFFFFFFFLL;
  if (!((v19 & 0x2000000000000000) != 0 ? HIBYTE(v19) & 0xF : v20 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_65;
  }

  if ((v19 & 0x1000000000000000) != 0)
  {
    v75 = v19;

    v73 = sub_24A8A7718(v20, v75, 10);
    v74 = v56;

    if ((v74 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_65:
    (*(v13 + 104))(a2, *MEMORY[0x277D498D0], v12);
    if (!*(a1 + 16))
    {
      goto LABEL_77;
    }

    goto LABEL_66;
  }

  if ((v19 & 0x2000000000000000) != 0)
  {
    v78[0] = v20;
    v78[1] = v19 & 0xFFFFFFFFFFFFFFLL;
    if (v20 == 43)
    {
      if (!v21)
      {
LABEL_90:
        __break(1u);
        return result;
      }

      v24 = v21 - 1;
      if (v21 != 1)
      {
        v40 = 0;
        v41 = v78 + 1;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          v43 = 10 * v40;
          if ((v40 * 10) >> 64 != (10 * v40) >> 63)
          {
            break;
          }

          v40 = v43 + v42;
          if (__OFADD__(v43, v42))
          {
            break;
          }

          ++v41;
          if (!--v24)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else if (v20 == 45)
    {
      if (!v21)
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v24 = v21 - 1;
      if (v21 != 1)
      {
        v31 = 0;
        v32 = v78 + 1;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v31;
          if ((v31 * 10) >> 64 != (10 * v31) >> 63)
          {
            break;
          }

          v31 = v34 - v33;
          if (__OFSUB__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v24)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else if (v21)
    {
      v47 = 0;
      v48 = v78;
      while (1)
      {
        v49 = *v48 - 48;
        if (v49 > 9)
        {
          break;
        }

        v50 = 10 * v47;
        if ((v47 * 10) >> 64 != (10 * v47) >> 63)
        {
          break;
        }

        v47 = v50 + v49;
        if (__OFADD__(v50, v49))
        {
          break;
        }

        ++v48;
        if (!--v21)
        {
LABEL_62:
          LOBYTE(v24) = 0;
          goto LABEL_64;
        }
      }
    }
  }

  else
  {
    if ((v20 & 0x1000000000000000) != 0)
    {
      v24 = (v19 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_24A8BB5D4();
      v24 = result;
    }

    v25 = *v24;
    if (v25 == 43)
    {
      if (v22 >= 1)
      {
        v35 = v22 - 1;
        if (v22 != 1)
        {
          v36 = 0;
          if (!v24)
          {
            goto LABEL_64;
          }

          v37 = (v24 + 1);
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v36;
            if ((v36 * 10) >> 64 != (10 * v36) >> 63)
            {
              break;
            }

            v36 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              break;
            }

            ++v37;
            if (!--v35)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      goto LABEL_89;
    }

    if (v25 == 45)
    {
      if (v22 >= 1)
      {
        v26 = v22 - 1;
        if (v22 != 1)
        {
          v27 = 0;
          if (!v24)
          {
            goto LABEL_64;
          }

          v28 = (v24 + 1);
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v30 - v29;
            if (__OFSUB__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v26)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      __break(1u);
      goto LABEL_88;
    }

    if (v22)
    {
      v44 = 0;
      if (!v24)
      {
        goto LABEL_64;
      }

      while (1)
      {
        v45 = *v24 - 48;
        if (v45 > 9)
        {
          break;
        }

        v46 = 10 * v44;
        if ((v44 * 10) >> 64 != (10 * v44) >> 63)
        {
          break;
        }

        v44 = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          break;
        }

        ++v24;
        if (!--v22)
        {
          goto LABEL_62;
        }
      }
    }
  }

LABEL_63:
  LOBYTE(v24) = 1;
LABEL_64:
  v79 = v24;
  if (v24)
  {
    goto LABEL_65;
  }

LABEL_72:
  sub_24A8BB164();
  v57 = *(v13 + 48);
  if (v57(v11, 1, v12) == 1)
  {
    (*(v13 + 104))(v15, *MEMORY[0x277D498D0], v12);
    if (v57(v11, 1, v12) != 1)
    {
      sub_24A886D90(v11, &qword_27EF79320, &qword_24A8BD760);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  (*(v13 + 32))(a2, v15, v12);
  if (!*(a1 + 16))
  {
LABEL_77:
    v58 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0);
    (*(v7 + 56))(a2 + *(v58 + 20), 1, 1, v6);
    if (!*(a1 + 16))
    {
      goto LABEL_80;
    }

    goto LABEL_78;
  }

LABEL_66:
  sub_24A88C87C(0xD000000000000014, 0x800000024A8BEEE0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_77;
  }

  v52 = v77;
  sub_24A8BB074();

  if ((*(v7 + 48))(v52, 1, v6) == 1)
  {
    sub_24A886D90(v52, &qword_27EF79310, &qword_24A8BD700);
    goto LABEL_77;
  }

  v53 = *(v7 + 32);
  v54 = v76;
  v53(v76, v52, v6);
  v55 = *(type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0) + 20);
  v53((a2 + v55), v54, v6);
  (*(v7 + 56))(a2 + v55, 0, 1, v6);
  if (!*(a1 + 16))
  {
    goto LABEL_80;
  }

LABEL_78:
  v59 = sub_24A88C87C(0xD000000000000015, 0x800000024A8BEF00);
  if (v60)
  {
    v61 = (*(a1 + 56) + 16 * v59);
    v63 = *v61;
    v62 = v61[1];

    goto LABEL_81;
  }

LABEL_80:
  v63 = 0;
  v62 = 0;
LABEL_81:
  v64 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata(0);
  v65 = (a2 + *(v64 + 24));
  *v65 = v63;
  v65[1] = v62;
  if (*(a1 + 16) && (v66 = sub_24A88C87C(0xD000000000000013, 0x800000024A8BEF20), (v67 & 1) != 0))
  {
    v68 = (*(a1 + 56) + 16 * v66);
    v69 = *v68;
    v70 = v68[1];

    result = sub_24A8A50E8(v69, v70);
  }

  else
  {

    result = 0;
    v71 = 1;
  }

  v72 = a2 + *(v64 + 28);
  *v72 = result;
  *(v72 + 8) = v71 & 1;
  return result;
}

uint64_t sub_24A88ECB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A88ED2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24A8BB174();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79310, &qword_24A8BD700);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_24A88EE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A8BB174();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79310, &qword_24A8BD700);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_24A88EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24A8BB3D4();
  sub_24A882E60();
  v8 = sub_24A8BB464();
  sub_24A8BB0B4(v7, &dword_24A881000, v8, "Calling response handler's completion.", 38, 2, MEMORY[0x277D84F90]);

  return sub_24A88F02C(a1, a3, a4);
}

uint64_t sub_24A88F02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a3;
  v39 = a2;
  v3 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  MEMORY[0x28223BE20](v6);
  v8 = (&v38 - v7);
  v9 = sub_24A8BB124();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  sub_24A882E60();
  v16 = sub_24A8BB464();
  v17 = sub_24A8BB3D4();
  sub_24A8BB0A4("Will handle fetch response.", 27, 2, &dword_24A881000, v16, v17, MEMORY[0x277D84F90]);

  sub_24A8BB114();
  sub_24A8BB144();
  v18 = *(v10 + 8);
  v19 = v13;
  v20 = v9;
  v18(v19, v9);
  sub_24A8BB3E4();
  sub_24A883EEC(v40, v8, &qword_27EF79110, &qword_24A8BDC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v8;
    v22 = sub_24A8BB3C4();
    v23 = sub_24A8BB464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24A8BC300;
    swift_getErrorValue();
    v25 = sub_24A8BB8D4();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = sub_24A8897F0();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    sub_24A8BB0B4(v22, &dword_24A881000, v23, "Could not complete request %@", 29, 2, v24);

    sub_24A8BB1B4();

    return (v18)(v15, v20);
  }

  sub_24A88F45C(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
  result = swift_allocObject();
  *(result + 16) = xmmword_24A8BC300;
  v29 = *v5;
  v30 = v5[1];
  v31 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v31 != 2)
    {
      v29 = 0;
      goto LABEL_13;
    }

    v34 = v29 + 16;
    v32 = *(v29 + 16);
    v33 = *(v34 + 8);
    v35 = __OFSUB__(v33, v32);
    v29 = v33 - v32;
    if (!v35)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v31)
  {
    v29 = BYTE6(v30);
    goto LABEL_13;
  }

  v35 = __OFSUB__(HIDWORD(v29), v29);
  LODWORD(v29) = HIDWORD(v29) - v29;
  if (v35)
  {
    __break(1u);
    return result;
  }

  v29 = v29;
LABEL_13:
  v36 = MEMORY[0x277D83C10];
  *(result + 56) = MEMORY[0x277D83B88];
  *(result + 64) = v36;
  *(result + 32) = v29;
  v37 = sub_24A8BB464();
  sub_24A8BB3D4();
  sub_24A8BB0A4("Received response bytes %i", v38);

  sub_24A8BB1C4();
  v18(v15, v9);
  return sub_24A890E54(v5);
}

uint64_t sub_24A88F45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A88F4C0(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  sub_24A88F598(a1, &v8 - v5);
  swift_storeEnumTagMultiPayload();
  a2(v6);
  return sub_24A886D90(v6, &qword_27EF79110, &qword_24A8BDC50);
}

uint64_t sub_24A88F598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A88F604(uint64_t a1, void (*a2)(void **))
{
  v17 = a2;
  v3 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79158, &unk_24A8BDC80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v16 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79110, &qword_24A8BDC50);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - v11);
  sub_24A883EEC(a1, &v16 - v11, &qword_27EF79110, &qword_24A8BDC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    *v9 = *v12;
    (*(v7 + 104))(v9, *MEMORY[0x277D498C0], v6);
    v14 = v13;
    v17(v9);

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_24A88F45C(v12, v5);
    sub_24A88F598(v5, v9);
    (*(v7 + 104))(v9, *MEMORY[0x277D498C8], v6);
    v17(v9);
    (*(v7 + 8))(v9, v6);
    return sub_24A890E54(v5);
  }
}

void sub_24A88F890(uint64_t a1, void (*a2)(void, unint64_t, id))
{
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79158, &unk_24A8BDC80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v31 - v9);
  (*(v8 + 16))(&v31 - v9, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == *MEMORY[0x277D498C8])
  {
    (*(v8 + 96))(v10, v7);
    sub_24A88F45C(v10, v6);
    v12 = v6[2];
    if (v12 - 300 > 0xFFFFFFFFFFFFFF9BLL)
    {
      v27 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF793A0, &unk_24A8BCD90);
      v13 = swift_allocObject();
      v31 = xmmword_24A8BC300;
      *(v13 + 16) = xmmword_24A8BC300;
      v33 = v12;
      sub_24A8A8530();
      v14 = sub_24A8BB4C4();
      v16 = v15;
      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = sub_24A8897F0();
      *(v13 + 32) = v14;
      *(v13 + 40) = v16;
      sub_24A882CB8(0, &qword_2814AB000, 0x277D86200);
      v17 = sub_24A8BB464();
      v18 = sub_24A8BB3D4();
      sub_24A8BB0A4("HttpRequest Error: request returned with status code: %@", 56, 2, &dword_24A881000, v17, v18, v13);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790B8, "bJ");
      inited = swift_initStackObject();
      *(inited + 16) = v31;
      *(inited + 32) = sub_24A8BB254();
      *(inited + 40) = v20;
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_24A8BB594();

      v33 = 0xD00000000000001BLL;
      v34 = 0x800000024A8C0500;
      v32 = v12;
      v21 = sub_24A8BB724();
      MEMORY[0x24C21E8E0](v21);

      v22 = v34;
      *(inited + 48) = v33;
      *(inited + 56) = v22;
      v23 = sub_24A88B040(inited);
      swift_setDeallocating();
      sub_24A886D90(inited + 32, &qword_27EF790C0, "hJ");
      sub_24A8A4E90(v23);

      v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v25 = sub_24A8BB244();
      v26 = sub_24A8BB1E4();

      v27 = [v24 initWithDomain:v25 code:500 userInfo:v26];

      v28 = v27;
    }

    a2(*v6, v6[1], v27);

    sub_24A890DF4(v6, type metadata accessor for FMNServerInteractionController.FMNResponseFields);
  }

  else if (v11 == *MEMORY[0x277D498C0])
  {
    (*(v8 + 96))(v10, v7);
    v29 = *v10;
    v30 = *v10;
    a2(0, 0xF000000000000000, v29);
  }

  else
  {
    sub_24A8BB7F4();
    __break(1u);
  }
}

void *KeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79000, &qword_24A8BC310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_24A88FF14();
  sub_24A8BB644();
  if (!v3)
  {
    v2 = sub_24A88FF68();
    (*(v5 + 8))(v7, v4);
  }

  return v2;
}

unint64_t sub_24A88FE68()
{
  result = qword_2814AAA28;
  if (!qword_2814AAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AAA28);
  }

  return result;
}

unint64_t sub_24A88FEC0()
{
  result = qword_2814AAA30;
  if (!qword_2814AAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AAA30);
  }

  return result;
}

unint64_t sub_24A88FF14()
{
  result = qword_2814AAA20;
  if (!qword_2814AAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AAA20);
  }

  return result;
}

void *sub_24A88FF68()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79000, &qword_24A8BC310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v54[1] = v54 - v6;
  v7 = sub_24A8BB6B4();
  v8 = v7;
  v58 = *(v7 + 16);
  if (!v58)
  {
    v10 = MEMORY[0x277D84F98];
LABEL_31:

    return v10;
  }

  v54[0] = v5 + 8;
  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v11 = (v7 + 56);
  v54[2] = v3;
  v56 = v4;
  v57 = v7;
  while (v9 < *(v8 + 16))
  {
    v12 = *(v11 - 3);
    v13 = *(v11 - 2);
    v14 = *v11;
    v15 = *(v11 - 1);
    v63 = v12;
    v64 = v13;
    v65 = v15;
    v66 = v14;

    v16 = sub_24A8BB674();
    if (v2)
    {

      v17 = sub_24A8BB664();
      v2 = 0;
      v59 = v9;
      v62 = MEMORY[0x277D837D0];
      *&v61 = v17;
      *(&v61 + 1) = v30;
      sub_24A890B2C(&v61, &v60);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v10;
      v32 = sub_24A88C87C(v12, v13);
      v34 = v32;
      v35 = v10[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_34;
      }

      v38 = v33;
      if (v10[3] >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v10 = v67;
          if ((v33 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_24A895758();
          v10 = v67;
          if ((v38 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_24A890B3C(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_24A88C87C(v12, v13);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_37;
        }

        v34 = v39;
        v10 = v67;
        if ((v38 & 1) == 0)
        {
LABEL_27:
          v10[(v34 >> 6) + 8] |= 1 << v34;
          v50 = (v10[6] + 16 * v34);
          *v50 = v12;
          v50[1] = v13;
          sub_24A890B2C(&v60, (v10[7] + 32 * v34));
          v51 = v10[2];
          v25 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v25)
          {
            goto LABEL_36;
          }

          v10[2] = v52;

          goto LABEL_29;
        }
      }

      v47 = (v10[7] + 32 * v34);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      sub_24A890B2C(&v60, v47);
LABEL_29:

      v8 = v57;
      v46 = v59;
      goto LABEL_3;
    }

    v18 = v11;
    v62 = MEMORY[0x277D839B0];
    LOBYTE(v61) = v16 & 1;
    sub_24A890B2C(&v61, &v60);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v10;
    v20 = v12;
    v21 = sub_24A88C87C(v12, v13);
    v23 = v10[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_33;
    }

    v27 = v22;
    v28 = v10[3];
    v55 = 0;
    if (v28 >= v26)
    {
      if ((v19 & 1) == 0)
      {
        v48 = v9;
        v49 = v21;
        sub_24A895758();
        v21 = v49;
        v9 = v48;
      }
    }

    else
    {
      sub_24A890B3C(v26, v19);
      v21 = sub_24A88C87C(v12, v13);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_37;
      }
    }

    v41 = v9;
    v10 = v67;
    if (v27)
    {
      v42 = (v67[7] + 32 * v21);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      sub_24A890B2C(&v60, v42);
    }

    else
    {
      v67[(v21 >> 6) + 8] |= 1 << v21;
      v43 = (v10[6] + 16 * v21);
      *v43 = v20;
      v43[1] = v13;
      sub_24A890B2C(&v60, (v10[7] + 32 * v21));
      v44 = v10[2];
      v25 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v25)
      {
        goto LABEL_35;
      }

      v10[2] = v45;
    }

    v8 = v57;
    v46 = v41;
    v11 = v18;
    v2 = v55;
LABEL_3:
    v9 = v46 + 1;
    v11 += 32;
    if (v58 == v9)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  __break(1u);
LABEL_36:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_37:
  result = sub_24A8BB8C4();
  __break(1u);
  return result;
}

uint64_t sub_24A890A48@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24A890A70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24A890AB8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24A890AE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *sub_24A890B2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24A890B3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790B0, &qword_24A8BC4E0);
  v33 = v4;
  result = sub_24A8BB604();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_24A890B2C(v24, v34);
      }

      else
      {
        sub_24A88E078(v24, v34);
      }

      sub_24A8BB934();
      sub_24A8BB2C4();
      result = sub_24A8BB954();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_24A890B2C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24A890DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A890E54(uint64_t a1)
{
  v2 = type metadata accessor for FMNServerInteractionController.FMNResponseFields(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_9Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A890F3C()
{
  v1 = *(v0 + 16);

  v1(v2, 0);
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = sub_24A8BAFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A891098()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24A8910D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_24A891120@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_24A891170@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_24A8911C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_24A891208(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_24A891260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A8BAFC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24A89131C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A8BAFC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24A8913D4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A891424@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24A89146C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_24A8914B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_24A891500()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A891550(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A8BAFC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24A8915BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A8BAFC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24A89162C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791C8, &qword_24A8BCED0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791D0, &qword_24A8BCED8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24A891734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791C8, &qword_24A8BCED0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF791D0, &qword_24A8BCED8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24A891848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A8BAFC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24A891908(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A8BAFC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24A8919C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A8BAFC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24A891A80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A8BAFC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24A891B60()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24A891BB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_24A891D18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_24A891D74(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 136))(&v4);
}

uint64_t sub_24A891E1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12FMNetworking13FMNHttpClient_bundleIdentifierFallback);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_24A891E78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A891EB0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A891EE8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A891F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A8BB054();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24A89200C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A8BB054();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24A89210C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A892144()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A892194()
{
  v1 = sub_24A8BAFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A892224()
{
  v1 = sub_24A8BAFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24A8922C4()
{
  v1 = sub_24A8BAFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v6 = v0 + v5;
  v7 = *(v0 + v5 + 8);
  if (v7 >> 60 != 15)
  {
    sub_24A88C828(*v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 32, v3 | 7);
}

uint64_t AnyDecodableKeys.stringValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnyDecodableKeys.stringValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

FMNetworking::AnyDecodableKeys __swiftcall AnyDecodableKeys.init(stringValue:)(FMNetworking::AnyDecodableKeys stringValue)
{
  *(v1 + 8) = stringValue.stringValue._object;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *v1 = stringValue.stringValue._countAndFlagsBits;
  return stringValue;
}

uint64_t AnyDecodableKeys.intValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void __swiftcall AnyDecodableKeys.init(intValue:)(FMNetworking::AnyDecodableKeys_optional *__return_ptr retstr, Swift::Int intValue)
{
  retstr->value.stringValue._countAndFlagsBits = sub_24A8BB724();
  retstr->value.stringValue._object = v4;
  retstr->value.intValue.value = intValue;
  retstr->value.intValue.is_nil = 0;
}

uint64_t sub_24A892580(uint64_t a1)
{
  v2 = sub_24A88FF14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8925BC(uint64_t a1)
{
  v2 = sub_24A88FF14();

  return MEMORY[0x2821FE720](a1, v2);
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

void *KeyedDecodingContainer.decode(_:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v7 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v61 - v8;
  v10 = sub_24A8BB6B4();
  if (!sub_24A8BB384())
  {

    return MEMORY[0x277D84F98];
  }

  v61[0] = v5;
  v11 = 0;
  v71 = (v4 + 16);
  v69 = (v4 + 32);
  v12 = MEMORY[0x277D84F98];
  v67 = v10;
  v68 = (v4 + 8);
  v70 = v1;
  v63 = a1;
  v64 = v4;
  v65 = v7;
  v66 = v3;
  v72 = v9;
  while (1)
  {
    v15 = sub_24A8BB374();
    sub_24A8BB354();
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11;
    v17 = v72;
    (*(v4 + 16))(v72, v16, v3);
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_38;
    }

LABEL_8:
    (*v69)(v7, v17, v3);
    v19 = v73;
    v20 = sub_24A8BB674();
    if (v19)
    {

      v21 = sub_24A8BB664();
      v73 = 0;
      v62 = v18;
      v35 = v21;
      v37 = v36;
      v38 = sub_24A8BB994();
      v40 = v39;
      v77 = MEMORY[0x277D837D0];
      *&v76 = v35;
      *(&v76 + 1) = v37;
      sub_24A890B2C(&v76, v75);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v12;
      v42 = sub_24A88C87C(v38, v40);
      v44 = v42;
      v45 = v12[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_40;
      }

      v48 = v43;
      if (v12[3] < v47)
      {
        sub_24A890B3C(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_24A88C87C(v38, v40);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_44;
        }

        v44 = v49;
        v4 = v64;
        if ((v48 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_27:

        v12 = v74;
        v57 = (v74[7] + 32 * v44);
        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        sub_24A890B2C(v75, v57);
        v7 = v65;
        v3 = v66;
        (*v68)(v65, v66);
LABEL_28:
        v10 = v67;
        v18 = v62;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v4 = v64;
        if (v43)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_24A895758();
        v4 = v64;
        if (v48)
        {
          goto LABEL_27;
        }
      }

LABEL_18:
      v12 = v74;
      v74[(v44 >> 6) + 8] |= 1 << v44;
      v51 = (v12[6] + 16 * v44);
      *v51 = v38;
      v51[1] = v40;
      sub_24A890B2C(v75, (v12[7] + 32 * v44));
      v7 = v65;
      v3 = v66;
      (*v68)(v65, v66);
      v52 = v12[2];
      v31 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v31)
      {
        goto LABEL_42;
      }

      v12[2] = v53;
      goto LABEL_28;
    }

    v62 = v11;
    v22 = v20;
    v23 = sub_24A8BB994();
    v25 = v24;
    v77 = MEMORY[0x277D839B0];
    LOBYTE(v76) = v22 & 1;
    sub_24A890B2C(&v76, v75);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v12;
    v27 = sub_24A88C87C(v23, v25);
    v29 = v12[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_39;
    }

    v33 = v28;
    if (v12[3] >= v32)
    {
      v4 = v64;
      if ((v26 & 1) == 0)
      {
        v59 = v27;
        sub_24A895758();
        v27 = v59;
      }
    }

    else
    {
      sub_24A890B3C(v32, v26);
      v27 = sub_24A88C87C(v23, v25);
      v4 = v64;
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_44;
      }
    }

    v73 = 0;
    if (v33)
    {
      v13 = v27;

      v12 = v74;
      v14 = (v74[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      sub_24A890B2C(v75, v14);
      v7 = v65;
      v3 = v66;
      (*v68)(v65, v66);
    }

    else
    {
      v12 = v74;
      v74[(v27 >> 6) + 8] |= 1 << v27;
      v54 = (v12[6] + 16 * v27);
      *v54 = v23;
      v54[1] = v25;
      sub_24A890B2C(v75, (v12[7] + 32 * v27));
      v7 = v65;
      v3 = v66;
      (*v68)(v65, v66);
      v55 = v12[2];
      v31 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v31)
      {
        goto LABEL_41;
      }

      v12[2] = v56;
    }

    v10 = v67;
    v11 = v62;
LABEL_5:
    ++v11;
    if (v18 == sub_24A8BB384())
    {

      return v12;
    }
  }

  v58 = sub_24A8BB5A4();
  if (v61[0] != 8)
  {
    goto LABEL_43;
  }

  *&v76 = v58;
  v17 = v72;
  (*v71)(v72, &v76, v3);
  swift_unknownObjectRelease();
  v18 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_8;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  __break(1u);
LABEL_42:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_24A8BB8C4();
  __break(1u);
  return result;
}

char *KeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2)
{
  sub_24A8BB634();
  if (!v3)
  {
    v4 = v8;
    v5 = v9;
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    v2 = UnkeyedDecodingContainer.decode(_:)(v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  return v2;
}

char *UnkeyedDecodingContainer.decode(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_24A8BB774();
  v5 = MEMORY[0x277D84F90];
  if ((v4 & 1) == 0)
  {
    v7 = MEMORY[0x277D839B0];
    v8 = MEMORY[0x277D839F8];
    do
    {
      v9 = sub_24A8BB754();
      if (v3)
      {

        sub_24A8BB764();
        v3 = 0;
        v14 = v8;
        *&v13 = v10;
      }

      else
      {
        v3 = 0;
        v14 = v7;
        LOBYTE(v13) = v9 & 1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24A895E90(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_24A895E90((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      sub_24A890B2C(&v13, &v5[32 * v12 + 32]);
    }

    while ((sub_24A8BB774() & 1) == 0);
  }

  return v5;
}

uint64_t UnkeyedDecodingContainer.decode(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79000, &qword_24A8BC310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_24A88FF14();
  sub_24A8BB734();
  if (!v3)
  {
    v2 = sub_24A88FF68();
    (*(v5 + 8))(v7, v4);
  }

  return v2;
}

uint64_t sub_24A8936C4(uint64_t a1)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      sub_24A88E078(*(a1 + 56) + 32 * v11, v16);
      v15[0] = v13;
      v15[1] = v14;

      sub_24A89398C(v13, v14, v16, v16[5]);
      if (v1)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_24A886D90(v15, &qword_27EF79018, &qword_24A8BC328);
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return sub_24A886D90(v15, &qword_27EF79018, &qword_24A8BC328);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t KeyedEncodingContainerProtocol<>.encode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = *(a1 + 48) + 16 * v13;
      v15 = *v14;
      v16 = *(v14 + 8);
      sub_24A88E078(*(a1 + 56) + 32 * v13, v20);
      v19[0] = v15;
      v19[1] = v16;

      sub_24A893FF0(v15, v16, v20, v20[5], a2, a3);
      if (v3)
      {
        break;
      }

      v8 &= v8 - 1;
      result = sub_24A886D90(v19, &qword_27EF79018, &qword_24A8BC328);
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return sub_24A886D90(v19, &qword_27EF79018, &qword_24A8BC328);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A89398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79020, &qword_24A8BC330);
  v25 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  sub_24A88E078(a3, v35);

  if (swift_dynamicCast())
  {
    v26 = a1;
    v27 = a2;
    v28 = 0;
    LOBYTE(v29) = 1;
    sub_24A8966D4();
    sub_24A8BB864();
  }

  else if (swift_dynamicCast())
  {
    v26 = a1;
    v27 = a2;
    v28 = 0;
    LOBYTE(v29) = 1;
    sub_24A8966D4();
    sub_24A8BB884();
  }

  else if (swift_dynamicCast())
  {
    v26 = a1;
    v27 = a2;
    v28 = 0;
    LOBYTE(v29) = 1;
    sub_24A8966D4();
    sub_24A8BB854();
  }

  else if (swift_dynamicCast())
  {
    v26 = a1;
    v27 = a2;
    v28 = 0;
    LOBYTE(v29) = 1;
    sub_24A8966D4();
    sub_24A8BB874();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79010, &qword_24A8BC320);
    if (swift_dynamicCast())
    {
      v15 = v30;
      v26 = a1;
      v27 = a2;
      v28 = 0;
      LOBYTE(v29) = 1;
      sub_24A8966D4();
      sub_24A88FF14();
      sub_24A8BB834();

      sub_24A8936C4(v15);

      (*(v25 + 8))(v13, v8);
      return __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79008, &qword_24A8BC318);
    if (swift_dynamicCast())
    {
      v16._rawValue = v34;
      v30 = a1;
      v31 = a2;
      v32 = 0;
      v33 = 1;
      sub_24A8966D4();
      sub_24A8BB824();

      __swift_mutable_project_boxed_opaque_existential_1(&v26, v29);
      UnkeyedEncodingContainer.encode(_:)(v16);

      __swift_destroy_boxed_opaque_existential_0Tm(&v26);
      return __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    sub_24A88E078(v35, &v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79078, &qword_24A8BC4B0);
    swift_dynamicCast();
    if (v29)
    {
      sub_24A886D90(&v26, &qword_27EF79078, &qword_24A8BC4B0);
      v17 = sub_24A8BB5C4();
      swift_allocError();
      v19 = v18;
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79088, &unk_24A8BC4C0) + 48);
      sub_24A88E078(a3, v19);
      v20 = v25;
      (*(v25 + 16))(v11, a4, v8);
      sub_24A8966D4();
      v21 = sub_24A8BB844();
      (*(v20 + 8))(v11, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79098, &qword_24A8BC4D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24A8BC300;
      *(inited + 56) = &type metadata for AnyDecodableKeys;
      *(inited + 64) = sub_24A88FF14();
      v23 = swift_allocObject();
      *(inited + 32) = v23;
      *(v23 + 16) = a1;
      *(v23 + 24) = a2;
      *(v23 + 32) = 0;
      *(v23 + 40) = 1;
      v26 = v21;
      sub_24A8964D0(inited);
      sub_24A8BB5B4();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D841A8], v17);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    v30 = a1;
    v31 = a2;
    v32 = 0;
    v33 = 1;
    sub_24A8966D4();
    sub_24A8BB894();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v35);
}

uint64_t sub_24A893FF0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A88E078(v14, v30);

  if (swift_dynamicCast())
  {
    v26 = a1;
    v27 = a2;
    v28 = 0;
    LOBYTE(v29) = 1;
    sub_24A8BB864();
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    v26 = a1;
    v27 = a2;
    v28 = 0;
    LOBYTE(v29) = 1;
    sub_24A8BB884();
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    v26 = a1;
    v27 = a2;
    v28 = 0;
    LOBYTE(v29) = 1;
    sub_24A8BB854();
LABEL_9:

    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    v26 = a1;
    v27 = a2;
    v28 = 0;
    LOBYTE(v29) = 1;
    sub_24A8BB874();
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79010, &qword_24A8BC320);
  if (swift_dynamicCast())
  {
    v26 = a1;
    v27 = a2;
    v28 = 0;
    LOBYTE(v29) = 1;
    KeyedEncodingContainerProtocol.encode(_:forKey:)(v24[0], &v26, a5, a6);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79008, &qword_24A8BC318);
  if (swift_dynamicCast())
  {
    v26 = a1;
    v27 = a2;
    v28 = 0;
    LOBYTE(v29) = 1;
    KeyedEncodingContainerProtocol.encode(_:forKey:)(v24[0], &v26, a5, a6);
    goto LABEL_9;
  }

  sub_24A88E078(v30, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79078, &qword_24A8BC4B0);
  swift_dynamicCast();
  if (v29)
  {
    sub_24A886D90(&v26, &qword_27EF79078, &qword_24A8BC4B0);
    v23 = sub_24A8BB5C4();
    swift_allocError();
    v17 = v16;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79088, &unk_24A8BC4C0) + 48);
    sub_24A88E078(a3, v17);
    v18 = v31;
    (*(v31 + 16))(v13, a4, a5);
    v19 = sub_24A8BB844();
    (*(v18 + 8))(v13, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79098, &qword_24A8BC4D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A8BC300;
    *(inited + 56) = &type metadata for AnyDecodableKeys;
    *(inited + 64) = sub_24A88FF14();
    v21 = swift_allocObject();
    *(inited + 32) = v21;
    *(v21 + 16) = a1;
    *(v21 + 24) = a2;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    v26 = v19;
    sub_24A8964D0(inited);
    sub_24A8BB5B4();
    (*(*(v23 - 8) + 104))(v17, *MEMORY[0x277D841A8]);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }

  v24[0] = a1;
  v24[1] = a2;
  v24[2] = 0;
  v25 = 1;
  sub_24A8BB894();
LABEL_5:

  return __swift_destroy_boxed_opaque_existential_0Tm(v30);
}

uint64_t KeyedEncodingContainerProtocol.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79020, &qword_24A8BC330);
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v10 - v8;
  if (a1)
  {
    sub_24A88FF14();
    sub_24A8BB834();
    sub_24A8936C4(a1);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

void *KeyedEncodingContainerProtocol.encode(_:forKey:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4._rawValue = result;
    sub_24A8BB824();
    __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
    UnkeyedEncodingContainer.encode(_:)(v4);
    return __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEncodingContainer.encode(_:)(Swift::OpaquePointer a1)
{
  v5 = *(a1._rawValue + 2);
  if (v5)
  {
    v6 = v2;
    v7 = v1;
    v8 = 0;
    v9 = a1._rawValue + 32;
    do
    {
      v10 = v8;
      sub_24A88E078(v9, v11);
      sub_24A894784(v8, v11, v3, v7, v6);
      sub_24A886D90(&v10, &qword_27EF79028, &qword_24A8BC338);
      if (v4)
      {
        break;
      }

      ++v8;
      v9 += 32;
    }

    while (v5 != v8);
  }
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79020, &qword_24A8BC330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - v4;
  sub_24A88FF14();
  sub_24A8BB784();
  sub_24A8936C4(a1._rawValue);
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_24A894784(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A88E078(a2, v26);
  if (swift_dynamicCast())
  {
    sub_24A8BB7B4();
    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  if (swift_dynamicCast())
  {
    sub_24A8BB7D4();
    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  if (swift_dynamicCast())
  {
    sub_24A8BB7A4();
LABEL_8:

    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  if (swift_dynamicCast())
  {
    sub_24A8BB7C4();
    return __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79010, &qword_24A8BC320);
  if (swift_dynamicCast())
  {
    UnkeyedEncodingContainer.encode(_:)(v25[0]);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79008, &qword_24A8BC318);
  if (swift_dynamicCast())
  {
    UnkeyedEncodingContainer.encode(_:)(v25[0]);
    goto LABEL_8;
  }

  sub_24A88E078(v26, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79078, &qword_24A8BC4B0);
  swift_dynamicCast();
  if (v25[3]._rawValue)
  {
    sub_24A886D90(v25, &qword_27EF79078, &qword_24A8BC4B0);
    v25[0]._rawValue = a1;
    v13 = sub_24A8BB724();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79080, &qword_24A8BC4B8);
    inited = swift_initStackObject();
    v22 = inited;
    *(inited + 16) = xmmword_24A8BC300;
    *(inited + 32) = v13;
    v23 = inited + 32;
    *(inited + 40) = v15;
    *(inited + 48) = a1;
    *(inited + 56) = 0;
    v27 = sub_24A8BB5C4();
    swift_allocError();
    v18 = v17;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79088, &unk_24A8BC4C0) + 48);
    sub_24A88E078(a2, v18);
    (*(v9 + 16))(v11, a3, a4);
    v19 = sub_24A8BB794();
    (*(v9 + 8))(v11, a4);
    v20 = sub_24A894D4C(v22);
    swift_setDeallocating();
    sub_24A8966A4(v23);
    v25[0]._rawValue = v19;
    sub_24A8964D0(v20);
    sub_24A8BB5B4();
    (*(*(v27 - 8) + 104))(v18, *MEMORY[0x277D841A8]);
    swift_willThrow();
  }

  else
  {
    sub_24A8BB7E4();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v26);
}

uint64_t sub_24A894D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_24A8965D8(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v16 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_24A8965D8((v9 > 1), v10 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for AnyDecodableKeys;
      v15 = sub_24A88FF14();
      v11 = swift_allocObject();
      *&v13 = v11;
      *(v11 + 16) = v6;
      *(v11 + 24) = v5;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      *(v2 + 16) = v10 + 1;
      sub_24A883B44(&v13, v2 + 40 * v10 + 32);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_24A894E70(uint64_t a1)
{
  sub_24A8BAFC4();
  sub_24A89665C(&qword_27EF79048, MEMORY[0x277CC9270]);
  v2 = sub_24A8BB224();

  return sub_24A8955AC(a1, v2);
}

uint64_t sub_24A894EF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79038, &qword_24A8BC480);
  v37 = v4;
  result = sub_24A8BB604();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = result + 64;
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
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_24A8BB934();
      sub_24A8BB2C4();
      result = sub_24A8BB954();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24A8951B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24A8BAFC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79040, &qword_24A8BC488);
  v47 = v4;
  result = sub_24A8BB604();
  v11 = result;
  if (*(v9 + 16))
  {
    v51 = v8;
    v52 = v5;
    v43 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v6;
    v48 = (v6 + 32);
    v18 = result + 64;
    v46 = v9;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v50 = *(v6 + 72);
      v27 = v26 + v50 * v25;
      if (v47)
      {
        (*v48)(v51, v27, v52);
        v28 = (*(v9 + 56) + 32 * v25);
        v29 = *v28;
        v53 = v28[1];
        v49 = v29;
      }

      else
      {
        (*v44)(v51, v27, v52);
        v30 = (*(v9 + 56) + 32 * v25);
        v31 = *v30;
        v53 = v30[1];
        v49 = v31;
        sub_24A88DD28(v31, *(&v31 + 1));
        v32 = *(&v53 + 1);
        v33 = v53;
        v34 = v32;
      }

      sub_24A89665C(&qword_27EF79048, MEMORY[0x277CC9270]);
      result = sub_24A8BB224();
      v35 = -1 << *(v11 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v6 = v45;
        v9 = v46;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v18 + 8 * v37);
          if (v41 != -1)
          {
            v19 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v6 = v45;
      v9 = v46;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v48)(*(v11 + 48) + v50 * v19, v51, v52);
      v20 = (*(v11 + 56) + 32 * v19);
      v21 = v53;
      *v20 = v49;
      v20[1] = v21;
      ++*(v11 + 16);
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v42 = 1 << *(v9 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v13, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v42;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_24A8955AC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_24A8BAFC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_24A89665C(&qword_27EF79050, MEMORY[0x277CC9278]);
      v15 = sub_24A8BB234();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_24A895758()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790B0, &qword_24A8BC4E0);
  v2 = *v0;
  v3 = sub_24A8BB5F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_24A88E078(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24A890B2C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_24A8958FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79038, &qword_24A8BC480);
  v2 = *v0;
  v3 = sub_24A8BB5F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

void *sub_24A895A74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79070, &qword_24A8BC4A8);
  v2 = *v0;
  v3 = sub_24A8BB5F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

  return result;
}

id sub_24A895BD8()
{
  v1 = v0;
  v40 = sub_24A8BAFC4();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79040, &qword_24A8BC488);
  v3 = *v0;
  v4 = sub_24A8BB5F4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v36 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v41 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v37 = v42 + 32;
    v38 = v42 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v44 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v42;
        v20 = *(v42 + 72) * v18;
        v21 = v39;
        v22 = v40;
        (*(v42 + 16))(v39, *(v3 + 48) + v20, v40);
        v18 *= 32;
        v23 = (*(v3 + 56) + v18);
        v24 = v3;
        v25 = v41;
        v26 = *(v41 + 48);
        v27 = *(v19 + 32);
        v28 = v23[1];
        v43 = *v23;
        v45 = v28;
        v27(v26 + v20, v21, v22);
        v29 = *(v25 + 56);
        v3 = v24;
        v30 = (v29 + v18);
        v31 = v45;
        v32 = v43;
        *v30 = v43;
        v30[1] = v31;
        sub_24A88DD28(v32, *(&v32 + 1));
        v33 = *(&v45 + 1);
        v34 = v45;
        result = v33;
        v13 = v44;
      }

      while (v44);
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

        v1 = v36;
        v5 = v41;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v44 = (v17 - 1) & v17;
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

  return result;
}

char *sub_24A895E90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790A8, &qword_24A8BC4D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A895FA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79098, &qword_24A8BC4D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79090, &unk_24A8BCDF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A8960E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79058, &unk_24A8BC490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_24A8961EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79060, &unk_24A8BCDE0);
  v10 = *(type metadata accessor for HAREntry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HAREntry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24A8963C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79068, &qword_24A8BC4A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24A8964D0(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24A895FA0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF79090, &unk_24A8BCDF0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24A8965D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24A89DBD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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

uint64_t sub_24A89665C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24A8BAFC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A8966D4()
{
  result = qword_27EF790A0;
  if (!qword_27EF790A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF79020, &qword_24A8BC330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF790A0);
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

uint64_t sub_24A896790(uint64_t a1, int a2)
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

uint64_t sub_24A8967B0(uint64_t result, int a2, int a3)
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

uint64_t FMNMockClientURLResponse.init(data:response:error:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24A896834(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24A896890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24A896918(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_24A896978()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24A8969C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_24A896A68(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_24A896AC8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24A896B14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_24A896BB8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t sub_24A896C18()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_24A896C64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_24A896D08@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 64);
  return result;
}

uint64_t sub_24A896D4C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t FMNAuthenticationCredential.FMNAuthenticationCredentialError.hashValue.getter()
{
  sub_24A8BB934();
  MEMORY[0x24C21EF50](0);
  return sub_24A8BB954();
}

uint64_t sub_24A896E5C()
{
  sub_24A8BB934();
  MEMORY[0x24C21EF50](0);
  return sub_24A8BB954();
}

uint64_t sub_24A896EA0(uint64_t a1)
{
  sub_24A8BB934();
  MEMORY[0x24C21EF50](0);
  return sub_24A8BB954();
}

uint64_t sub_24A896EEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "x-apple-request-uuid";
      v3 = 0xD000000000000015;
    }

    else
    {
      v4 = "x-responding-instance";
      v3 = 0xD000000000000013;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2)
    {
      v4 = "x-apple-error-code";
    }

    else
    {
      v4 = "PUT";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v6 = "x-apple-request-uuid";
    }

    else
    {
      v6 = "x-responding-instance";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2)
    {
      v6 = "x-apple-error-code";
    }

    else
    {
      v6 = "PUT";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24A8BB804();
  }

  return v7 & 1;
}

uint64_t sub_24A897010(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x656B6F5468747561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656D614E74736F68;
    }

    else
    {
      v5 = 0x54746E756F636361;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000657079;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x64496E6F73726570;
    }

    else
    {
      v5 = 0x656B6F5468747561;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE90000000000006ELL;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x656D614E74736F68;
  if (a2 != 2)
  {
    v8 = 0x54746E756F636361;
    v7 = 0xEB00000000657079;
  }

  if (a2)
  {
    v3 = 0x64496E6F73726570;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A8BB804();
  }

  return v11 & 1;
}

uint64_t sub_24A897164(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5522759;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 5526864;
    }

    else
    {
      v4 = 0x4554454C4544;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1414745936;
    }

    else
    {
      v4 = 5522759;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE300000000000000;
  v8 = 5526864;
  if (a2 != 2)
  {
    v8 = 0x4554454C4544;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 1414745936;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A8BB804();
  }

  return v11 & 1;
}

uint64_t sub_24A897278(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x65707954656D696DLL;
    }

    else
    {
      v4 = 1954047348;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1702521203;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x746E656D6D6F63;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x676E69646F636E65;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x65707954656D696DLL;
    }

    else
    {
      v9 = 1954047348;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x746E656D6D6F63;
    if (a2 != 3)
    {
      v6 = 0x676E69646F636E65;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1702521203;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_24A8BB804();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24A8973EC()
{
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

uint64_t sub_24A8974BC(uint64_t a1)
{
  sub_24A8BB2C4();
}

uint64_t sub_24A897578(uint64_t a1)
{
  sub_24A8BB934();
  sub_24A8BB2C4();

  return sub_24A8BB954();
}

unint64_t sub_24A897644@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A89822C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A897674(uint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x656B6F5468747561;
  v4 = 0xE800000000000000;
  v5 = 0x656D614E74736F68;
  if (*v1 != 2)
  {
    v5 = 0x54746E756F636361;
    v4 = 0xEB00000000657079;
  }

  if (*v1)
  {
    v3 = 0x64496E6F73726570;
    v2 = 0xE800000000000000;
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

uint64_t sub_24A897700()
{
  v1 = 0x656B6F5468747561;
  v2 = 0x656D614E74736F68;
  if (*v0 != 2)
  {
    v2 = 0x54746E756F636361;
  }

  if (*v0)
  {
    v1 = 0x64496E6F73726570;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24A897788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A89822C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A8977C8(uint64_t a1)
{
  v2 = sub_24A898278();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A897804(uint64_t a1)
{
  v2 = sub_24A898278();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMNAuthenticationCredential.__allocating_init(accountType:authToken:personId:hostName:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  v15 = *a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *(result + 48) = a6;
  *(result + 56) = a7;
  *(result + 64) = v15;
  return result;
}

uint64_t FMNAuthenticationCredential.init(accountType:authToken:personId:hostName:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 64) = v8;
  return v7;
}

uint64_t FMNAuthenticationCredential.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FMNAuthenticationCredential.init(from:)(a1);
  return v2;
}

uint64_t FMNAuthenticationCredential.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF790C8, &qword_24A8BC610);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A898278();
  sub_24A8BB974();
  if (!v2)
  {
    v27 = 0;
    v8 = sub_24A8BB664();
    v10 = v9;
    v11 = v8;
    v26 = 1;
    v12 = sub_24A8BB664();
    v14 = v13;
    v22 = v12;
    v25 = 2;
    v20 = sub_24A8BB664();
    v21 = v15;
    v24 = 3;
    v16._countAndFlagsBits = sub_24A8BB664();
    FMNAccountType.init(rawValue:)(v16);
    if (v23 != 15)
    {
      HIDWORD(v19) = v23;
      (*(v5 + 8))(v7, v4);
      *(v1 + 16) = v11;
      *(v1 + 24) = v10;
      *(v1 + 32) = v22;
      *(v1 + 40) = v14;
      v18 = v21;
      *(v1 + 48) = v20;
      *(v1 + 56) = v18;
      *(v1 + 64) = BYTE4(v19);
      goto LABEL_4;
    }

    sub_24A8982CC();
    swift_allocError();
    swift_willThrow();
    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for FMNAuthenticationCredential();
  swift_deallocPartialClassInstance();
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}