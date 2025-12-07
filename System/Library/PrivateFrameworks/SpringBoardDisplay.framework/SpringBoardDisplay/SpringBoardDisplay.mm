uint64_t sub_26B9D96B8()
{
  v1 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_registration;
  v2 = sub_26B9DFDA4();
  if ((*(*(v2 - 8) + 48))(v0 + v1, 1, v2) != 1)
  {
    sub_26B9DDEE8(v0 + v1);
  }

  v3 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_eventSource;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F58, &qword_26B9E0A00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_eventContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F30, &qword_26B9E09F0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_26B9D99B8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_26B9E0054();
    v5 = v4;
    v6 = sub_26B9E00E4();
    v8 = v7;
    v9 = MEMORY[0x26D687E40](v3, v5, v6, v7);
    sub_26B9DDFC0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_26B9DDFC0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_26B9E0034();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_26B9DDB00(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_26B9DDFC0(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_26B9D9AD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280433EA8, &qword_26B9E09B8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR___SBDDisplayProfileManager_storage;
  v6 = *(v0 + OBJC_IVAR___SBDDisplayProfileManager_storage);
  v14 = v0;
  type metadata accessor for SBDDisplayProfileManager(v2);
  sub_26B9DDE94();

  sub_26B9DFED4();
  v7 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_registration;
  swift_beginAccess();
  v8 = sub_26B9DFDA4();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6 + v7, 1, v8) != 1)
  {
    sub_26B9DDEE8(v6 + v7);
  }

  sub_26B9DDF50(v4, v6 + v7);
  swift_endAccess();

  v10 = *(v0 + v5);
  v11 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_registration;
  swift_beginAccess();
  result = (v9)(v10 + v11, 1, v8);
  if (result == 1)
  {
    result = sub_26B9E0124();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B9D9D00(__int128 *a1, void *a2)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F30, &qword_26B9E09F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F38, &qword_26B9E09F8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18[-v13];
  (*(v8 + 16))(v10, *(v2 + OBJC_IVAR___SBDDisplayProfileManager_storage) + OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_eventContinuation, v7);
  v15 = *a1;
  v19 = a1[1];
  *&v18[8] = v15;
  v20 = v5;
  v21 = v6;
  v22 = a2;
  v16 = a2;
  sub_26B9DFF64();
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v14, v11);
}

id SBDDisplayProfileManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433E40, &unk_26B9E0940);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR___SBDDisplayProfileManager_storage;
  _s7StorageCMa(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_registration;
  v8 = sub_26B9DFDA4();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_scenes) = MEMORY[0x277D84FA0];
  (*(v2 + 104))(v4, *MEMORY[0x277D85778], v1);
  sub_26B9DFF54();
  (*(v2 + 8))(v4, v1);
  *&v0[v5] = v6;
  swift_unknownObjectWeakInit();
  v10.receiver = v0;
  v10.super_class = SBDDisplayProfileManager;
  return objc_msgSendSuper2(&v10, sel_init);
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

uint64_t _s7StorageCMa(uint64_t a1)
{
  result = qword_280433E80;
  if (!qword_280433E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B9DA278(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_26B9DE578;
  *(v7 + 24) = v6;
  v10[4] = sub_26B9DE6CC;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26B9DE6B0;
  v10[3] = &block_descriptor_63;
  v8 = _Block_copy(v10);
  sub_26B9DFE14();

  [a1 updateSettingsWithBlock_];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

id sub_26B9DA3D8(id result, uint64_t a2, uint64_t a3)
{
  v5 = 0.0;
  if (a2 != 0xD00000000000001ALL || 0x800000026B9E0F90 != a3)
  {
    v6 = result;
    if ((sub_26B9E0164() & 1) == 0)
    {
      if (a2 == 0xD000000000000024 && 0x800000026B9E1010 == a3 || (sub_26B9E0164() & 1) != 0)
      {
        v7 = MEMORY[0x277D67FA8];
      }

      else
      {
        if ((a2 != 0xD00000000000002BLL || 0x800000026B9E0FE0 != a3) && (sub_26B9E0164() & 1) == 0)
        {
          if (a2 != 0xD00000000000001ELL || 0x800000026B9E1040 != a3)
          {
            v8 = sub_26B9E0164();
            result = v6;
            if ((v8 & 1) == 0)
            {
              return result;
            }

            goto LABEL_10;
          }

          goto LABEL_9;
        }

        v7 = MEMORY[0x277D67FB8];
      }

      v5 = *v7;
    }

LABEL_9:
    result = v6;
  }

LABEL_10:

  return [result setLevel_];
}

void sub_26B9DA554(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_26B9DA5A0(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277D67CE0]) init];
  v34 = objc_opt_self();
  v5 = [v34 localIdentity];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_26B9DFE04();
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD00000000000001ALL;
  *(v7 + 24) = 0x800000026B9E0F90;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_26B9DE570;
  *(v8 + 24) = v7;
  v39 = sub_26B9DE6CC;
  v40 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_26B9DE6B0;
  v38 = &block_descriptor_32;
  v9 = _Block_copy(&aBlock);

  [v6 configureParameters_];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = [v2 delegate];
  if (v11)
  {
    [v11 modifyInitialSceneParametersForScene_];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v12 = v6;
  v13 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v13;
  sub_26B9DCC74(v12, 0xD00000000000001ALL, 0x800000026B9E0F90, isUniquelyReferenced_nonNull_native);
  v15 = aBlock;
  v33 = v12;
  if (![objc_opt_self() isSupported])
  {
    goto LABEL_11;
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D67E18]) init];
  v17 = [v34 localIdentity];
  v18 = sub_26B9DFE04();
  v19 = swift_allocObject();
  *(v19 + 16) = 0xD000000000000024;
  *(v19 + 24) = 0x800000026B9E1010;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26B9DE6D0;
  *(v20 + 24) = v19;
  v39 = sub_26B9DE6CC;
  v40 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_26B9DE6B0;
  v38 = &block_descriptor_54;
  v21 = _Block_copy(&aBlock);

  [v18 configureParameters_];
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = [v2 delegate];
  if (v22)
  {
    [v22 modifyInitialSceneParametersForScene_];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v23 = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v15;
  sub_26B9DCC74(v18, 0xD000000000000024, 0x800000026B9E1010, v23);
  v15 = aBlock;
  v12 = v33;
LABEL_11:
  if (![objc_opt_self() isSupported])
  {

    return v15;
  }

  v24 = [objc_allocWithZone(MEMORY[0x277D67E08]) init];
  v25 = [v34 localIdentity];
  v26 = sub_26B9DFE04();
  v27 = swift_allocObject();
  *(v27 + 16) = 0xD00000000000002BLL;
  *(v27 + 24) = 0x800000026B9E0FE0;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26B9DE6D0;
  *(v28 + 24) = v27;
  v39 = sub_26B9DE6CC;
  v40 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_26B9DE6B0;
  v38 = &block_descriptor_43;
  v29 = _Block_copy(&aBlock);

  [v26 configureParameters_];
  _Block_release(v29);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if ((v29 & 1) == 0)
  {
    v30 = [v2 delegate];
    if (v30)
    {
      [v30 modifyInitialSceneParametersForScene_];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v31 = v26;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v15;
    sub_26B9DCC74(v31, 0xD00000000000002BLL, 0x800000026B9E0FE0, v32);

    return aBlock;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_26B9DAC94(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277D67CE8]) init];
  v5 = [objc_opt_self() localIdentity];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_26B9DFE04();
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD00000000000001ELL;
  *(v7 + 24) = 0x800000026B9E1040;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_26B9DE6D0;
  *(v8 + 24) = v7;
  v14[4] = sub_26B9DE6CC;
  v14[5] = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_26B9DE6B0;
  v14[3] = &block_descriptor_75;
  v9 = _Block_copy(v14);

  [v6 configureParameters_];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = [v2 delegate];
    if (v11)
    {
      [v11 modifyInitialSceneParametersForScene_];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v12 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14[0] = v12;
    sub_26B9DCC74(v6, 0xD00000000000001ELL, 0x800000026B9E1040, isUniquelyReferenced_nonNull_native);
    return v14[0];
  }

  return result;
}

uint64_t sub_26B9DAF08()
{
  v1[27] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F58, &qword_26B9E0A00);
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F68, &qword_26B9E0A38);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = sub_26B9DFF44();
  v1[35] = sub_26B9DFF34();
  v5 = sub_26B9DFF24();
  v1[36] = v5;
  v1[37] = v4;

  return MEMORY[0x2822009F8](sub_26B9DB074, v5, v4);
}

uint64_t sub_26B9DB074()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = OBJC_IVAR___SBDDisplayProfileManager_storage;
  v0[38] = OBJC_IVAR___SBDDisplayProfileManager_storage;
  v5 = v0[29];
  v4 = v0[30];
  (*(v5 + 16))(v4, *(v1 + v3) + OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_eventSource, v2);
  sub_26B9DFF74();
  (*(v5 + 8))(v4, v2);
  v0[39] = 0;
  v0[40] = 0;
  v6 = sub_26B9DFF34();
  v0[41] = v6;
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_26B9DB1A8;
  v8 = v0[31];
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v6, v9, v8);
}

uint64_t sub_26B9DB1A8()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_26B9DB2EC, v3, v2);
}

uint64_t sub_26B9DB2EC()
{
  v46 = *(v0 + 64);
  if (!v46)
  {
    v14 = *(v0 + 312);
    v15 = *(v0 + 320);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248), *(v0 + 16));

    sub_26B9DE38C(v14, v15);

    v16 = *(v0 + 8);

    return v16();
  }

  v43 = *(v0 + 16);
  v42 = *(v0 + 32);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(*(v0 + 216) + *(v0 + 304));
  v4 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_scenes;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_26B9DFE14();
    sub_26B9E0064();
    sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
    sub_26B9DDFCC();
    v6 = sub_26B9DFFA4();
    v5 = *(v0 + 120);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);
  }

  else
  {
    v18 = -1 << *(v5 + 32);
    v10 = v5 + 56;
    v11 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v13 = v20 & *(v5 + 56);
    v6 = sub_26B9DFE14();
    v12 = 0;
  }

  v21 = (v11 + 64) >> 6;
  v44 = *(v0 + 320);
  v45 = *(v0 + 312);
  v41 = v0 + 88;
LABEL_12:
  v22 = v12;
  while (v5 < 0)
  {
    v26 = sub_26B9E00D4();
    if (!v26)
    {
      goto LABEL_28;
    }

    *(v0 + 208) = v26;
    sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
    swift_dynamicCast();
    v25 = *(v0 + 200);
    v12 = v22;
    v47 = v13;
    if (!v25)
    {
      goto LABEL_28;
    }

LABEL_23:
    v27 = [v25 settings];
    v28 = [v27 displayConfiguration];

    if (v28)
    {
      sub_26B9DE3A4(0, &qword_280433F70, 0x277D0ACE0);
      v29 = v46;
      v30 = sub_26B9E0004();

      if (v30)
      {
        v31 = [v25 identifier];
        v32 = sub_26B9DFF04();
        v34 = v33;

        *(v0 + 184) = v32;
        *(v0 + 192) = v34;
        sub_26B9DE3EC();
        LOBYTE(v31) = sub_26B9E0024();

        if ((v31 & 1) == 0)
        {
          v35 = swift_allocObject();
          *(v35 + 16) = v25;
          *(v35 + 40) = v42;
          *(v35 + 24) = v43;
          *(v35 + 56) = v1;
          *(v35 + 64) = v2;
          v40 = v25;
          sub_26B9DE38C(v45, v44);
          v36 = swift_allocObject();
          v45 = sub_26B9DE478;
          *(v36 + 16) = sub_26B9DE478;
          *(v36 + 24) = v35;
          *(v0 + 104) = sub_26B9DE4B4;
          *(v0 + 112) = v36;
          *(v0 + 72) = MEMORY[0x277D85DD0];
          *(v0 + 80) = 1107296256;
          *(v0 + 88) = sub_26B9DE6B0;
          *(v0 + 96) = &block_descriptor;
          v37 = _Block_copy((v0 + 72));

          [v40 updateSettingsWithBlock_];

          _Block_release(v37);
          LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

          v44 = v35;
          v13 = v47;
          if ((v37 & 1) == 0)
          {
            goto LABEL_12;
          }

          __break(1u);
LABEL_28:
          sub_26B9DE39C(v5);

          *(v0 + 312) = v45;
          *(v0 + 320) = v44;
          v38 = sub_26B9DFF34();
          *(v0 + 328) = v38;
          v39 = swift_task_alloc();
          *(v0 + 336) = v39;
          *v39 = v0;
          v39[1] = sub_26B9DB1A8;
          v9 = *(v0 + 248);
          v8 = MEMORY[0x277D85700];
          v6 = v0 + 16;
          v7 = v38;

          return MEMORY[0x2822003E8](v6, v7, v8, v9);
        }
      }
    }

    v22 = v12;
    v13 = v47;
  }

  v23 = v22;
  v24 = v13;
  v12 = v22;
  if (v13)
  {
LABEL_19:
    v47 = (v24 - 1) & v24;
    v25 = *(*(v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v25)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v12 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v12 >= v21)
    {
      goto LABEL_28;
    }

    v24 = *(v10 + 8 * v12);
    ++v23;
    if (v24)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return MEMORY[0x2822003E8](v6, v7, v8, v9);
}

uint64_t sub_26B9DB8B8()
{
  v1 = sub_26B9DFEC4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_26B9DFDF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23[-1] - v7;
  v9 = sub_26B9DFE94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9DFEA4();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == *MEMORY[0x277D54F90])
  {
    sub_26B9DFDC4();
    *(swift_allocObject() + 16) = v0;
    v14 = v0;
    sub_26B9DFDE4();

    v15 = *(v3 + 8);
    v15(v6, v2);
    *(swift_allocObject() + 16) = v14;
    v24 = v2;
    v25 = MEMORY[0x277D54F78];
    __swift_allocate_boxed_opaque_existential_1(v23);
    v16 = v14;
    sub_26B9DFDB4();

    v15(v8, v2);
    sub_26B9DFE34();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_26B9DFE14();

    sub_26B9DFE14();
  }

  else
  {
    if (v13 != *MEMORY[0x277D54F88])
    {
      sub_26B9DFE14();
      sub_26B9DFE14();

      sub_26B9DFE14();

      (*(v10 + 8))(v12, v9);
      goto LABEL_7;
    }

    sub_26B9DFEB4();
    sub_26B9DFDD4();
    *(swift_allocObject() + 16) = v0;
    v17 = v0;
    sub_26B9DFDE4();

    v18 = *(v3 + 8);
    v18(v6, v2);
    *(swift_allocObject() + 16) = v17;
    v24 = v2;
    v25 = MEMORY[0x277D54F78];
    __swift_allocate_boxed_opaque_existential_1(v23);
    v19 = v17;
    sub_26B9DFDB4();

    v18(v8, v2);
    sub_26B9DFE34();
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_26B9DFE14();

    sub_26B9DFE14();
  }

  sub_26B9DFE14();

LABEL_7:
  v20 = sub_26B9DFE14();

  return v20;
}

uint64_t sub_26B9DBDE8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_26B9DFF44();
  v2[7] = sub_26B9DFF34();
  v4 = sub_26B9DFF24();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_26B9DBE80, v4, v3);
}

void sub_26B9DBE80()
{
  v17 = v0;
  v1 = sub_26B9DA5A0(*(v0 + 40));
  v2 = 0;
  v4 = v1 + 64;
  v3 = *(v1 + 64);
  v15 = v1;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v3;
  v8 = (63 - v6) >> 6;
  if ((v5 & v3) != 0)
  {
    while (1)
    {
      v9 = v2;
LABEL_9:
      v10 = *(v0 + 48);
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v15 + 56) + ((v9 << 9) | (8 * v11)));
      swift_beginAccess();
      v13 = v12;

      sub_26B9DCF58(&v16, v13);
      swift_endAccess();

      [v13 setDelegate_];
      [v13 activate_];

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_9;
    }
  }

  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_26B9DC078;

  sub_26B9DAF08();
}

uint64_t sub_26B9DC078()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_26B9DE6D4, v3, v2);
}

uint64_t sub_26B9DC198(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_26B9DFF44();
  v2[7] = sub_26B9DFF34();
  v4 = sub_26B9DFF24();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_26B9DC230, v4, v3);
}

void sub_26B9DC230()
{
  v17 = v0;
  v1 = sub_26B9DAC94(*(v0 + 40));
  v2 = 0;
  v4 = v1 + 64;
  v3 = *(v1 + 64);
  v15 = v1;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v3;
  v8 = (63 - v6) >> 6;
  if ((v5 & v3) != 0)
  {
    while (1)
    {
      v9 = v2;
LABEL_9:
      v10 = *(v0 + 48);
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v15 + 56) + ((v9 << 9) | (8 * v11)));
      swift_beginAccess();
      v13 = v12;

      sub_26B9DCF58(&v16, v13);
      swift_endAccess();

      [v13 setDelegate_];
      [v13 activate_];

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_9;
    }
  }

  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_26B9DC428;

  sub_26B9DAF08();
}

uint64_t sub_26B9DC428()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_26B9DC548, v3, v2);
}

uint64_t sub_26B9DC548()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_26B9DC5AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  v6 = a1;
  sub_26B9DCF58(&v8, v6);
  swift_endAccess();

  [v6 setDelegate_];
  return [v6 activate_];
}

void sub_26B9DC69C(uint64_t a1)
{
  sub_26B9DC7F4(319);
  if (v1 <= 0x3F)
  {
    sub_26B9DE618(319, &qword_280433E98, &type metadata for Event, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      sub_26B9DE618(319, &qword_280433EA0, &type metadata for Event, MEMORY[0x277D85788]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26B9DC7F4(uint64_t a1)
{
  if (!qword_280433E90)
  {
    sub_26B9DFDA4();
    v1 = sub_26B9E0014();
    if (!v2)
    {
      atomic_store(v1, &qword_280433E90);
    }
  }
}

uint64_t sub_26B9DC84C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280433EA8, &qword_26B9E09B8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
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

uint64_t sub_26B9DC920(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B9DC968(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_26B9DC9D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F80, &qword_26B9E0A40);
  v35 = v4;
  result = sub_26B9E0144();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        sub_26B9DFE14();
        v25 = v24;
      }

      sub_26B9E0194();
      sub_26B9DFF14();
      result = sub_26B9E01A4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26B9DCC74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26B9DF364(a2, a3);
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
      sub_26B9DC9D0(v16, a4 & 1);
      v11 = sub_26B9DF364(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26B9E0184();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26B9DCDEC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
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

  return sub_26B9DFE14();
}

id sub_26B9DCDEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F80, &qword_26B9E0A40);
  v2 = *v0;
  v3 = sub_26B9E0134();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_26B9DFE14();
        result = v20;
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

uint64_t sub_26B9DCF58(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_26B9DFE14();
    v9 = sub_26B9E00B4();

    if (v9)
    {

      sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_26B9E00A4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_26B9DD190(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_26B9DD380(v20 + 1);
    }

    v18 = v8;
    sub_26B9DD5A8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
  v11 = sub_26B9DFFF4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_26B9DD62C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_26B9E0004();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_26B9DD190(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F60, &qword_26B9E0A28);
    v2 = sub_26B9E0114();
    v15 = v2;
    sub_26B9E0064();
    if (sub_26B9E00D4())
    {
      sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_26B9DD380(v9 + 1);
        }

        v2 = v15;
        result = sub_26B9DFFF4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_26B9E00D4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_26B9DD380(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F60, &qword_26B9E0A28);
  result = sub_26B9E0104();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_26B9DFFF4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_26B9DD5A8(uint64_t a1, uint64_t a2)
{
  sub_26B9DFFF4();
  result = sub_26B9E0044();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_26B9DD62C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26B9DD380(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_26B9DD79C();
      goto LABEL_12;
    }

    sub_26B9DD8EC(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_26B9DFFF4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_26B9E0004();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_26B9E0174();
  __break(1u);
}

id sub_26B9DD79C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F60, &qword_26B9E0A28);
  v2 = *v0;
  v3 = sub_26B9E00F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_26B9DD8EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F60, &qword_26B9E0A28);
  result = sub_26B9E0104();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_26B9DFFF4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_26B9DDB00(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D687E90](a1, a2, v7);
      sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
    if (sub_26B9E0084() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_26B9E0094();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_26B9DFFF4();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_26B9E0004();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void sub_26B9DDD24(void *a1, id a2)
{
  if (a2)
  {
    if ([a2 error])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F20, &qword_26B9E09E8);
      sub_26B9DE3A4(0, &qword_280433F28, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v3 = [v10 domain];
        v4 = sub_26B9DFF04();
        v6 = v5;

        if (v4 == sub_26B9DFF04() && v6 == v7)
        {
        }

        else
        {
          v9 = sub_26B9E0164();

          if ((v9 & 1) == 0)
          {
LABEL_13:

            return;
          }
        }

        if ([v10 code] == 5)
        {
          [a1 invalidate];
        }

        goto LABEL_13;
      }
    }
  }
}

unint64_t sub_26B9DDE94()
{
  result = qword_280433F40;
  if (!qword_280433F40)
  {
    type metadata accessor for SBDDisplayProfileManager(0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280433F40);
  }

  return result;
}

uint64_t sub_26B9DDEE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280433EA8, &qword_26B9E09B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B9DDF50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280433EA8, &qword_26B9E09B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9DDFC0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_26B9DDFCC()
{
  result = qword_280433F50;
  if (!qword_280433F50)
  {
    sub_26B9DE3A4(255, &qword_280433F48, 0x277D0AAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280433F50);
  }

  return result;
}

uint64_t sub_26B9DE05C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B9DE094(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B9DE130;

  return sub_26B9DC198(a1, v4);
}

uint64_t sub_26B9DE130()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_26B9DE2D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B9DE6B4;

  return sub_26B9DBDE8(a1, v4);
}

uint64_t sub_26B9DE38C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26B9DE3A4(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_26B9DE3EC()
{
  result = qword_280433F78;
  if (!qword_280433F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280433F78);
  }

  return result;
}

uint64_t sub_26B9DE440()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26B9DE538()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
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

uint64_t sub_26B9DE598(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B9DE5B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void sub_26B9DE618(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

SBDEmbeddedDisplayProfile __swiftcall SBDEmbeddedDisplayProfile.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SBDEmbeddedDisplayProfile()
{
  result = qword_280434050;
  if (!qword_280434050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280434050);
  }

  return result;
}

char *sub_26B9DEA0C()
{
  v0 = sub_26B9DFD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v49 = &v40 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v40 = &v40 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  [v16 setPreferredLevel_];
  [objc_allocWithZone(MEMORY[0x277D67CE0]) init];
  v17 = objc_opt_self();
  v18 = v16;
  v46 = v17;
  v47 = v18;
  v19 = [v17 localIdentity];
  sub_26B9DFD64();
  v20 = *(v1 + 16);
  v48 = v15;
  v44 = v20;
  v20(v13, v15, v0);
  v21 = sub_26B9DF6C4(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_26B9DF6C4((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = *(v1 + 32);
  v43 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v42 = *(v1 + 72);
  v45 = v24;
  v24(&v21[v43 + v42 * v23], v13, v0);
  if ([objc_opt_self() isSupported])
  {
    v25 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
    [v25 setPreferredLevel_];
    [objc_allocWithZone(MEMORY[0x277D67E18]) &selRef_settings];
    v26 = v25;
    v27 = [v46 localIdentity];
    sub_26B9DFD64();
    v28 = v40;
    v44(v40, v10, v0);
    v30 = *(v21 + 2);
    v29 = *(v21 + 3);
    if (v30 >= v29 >> 1)
    {
      v21 = sub_26B9DF6C4((v29 > 1), v30 + 1, 1, v21);
    }

    (*(v1 + 8))(v10, v0);
    *(v21 + 2) = v30 + 1;
    v45(&v21[v43 + v30 * v42], v28, v0);
  }

  if ([objc_opt_self() isSupported])
  {
    v31 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
    [v31 setPreferredLevel_];
    [objc_allocWithZone(MEMORY[0x277D67E08]) init];
    v32 = v31;
    v33 = [v46 localIdentity];
    v34 = v49;
    sub_26B9DFD64();
    v35 = v41;
    v44(v41, v34, v0);
    v37 = *(v21 + 2);
    v36 = *(v21 + 3);
    if (v37 >= v36 >> 1)
    {
      v21 = sub_26B9DF6C4((v36 > 1), v37 + 1, 1, v21);
    }

    v38 = *(v1 + 8);
    v38(v49, v0);
    v38(v48, v0);
    *(v21 + 2) = v37 + 1;
    v45(&v21[v43 + v37 * v42], v35, v0);
  }

  else
  {
    (*(v1 + 8))(v48, v0);
  }

  return v21;
}

uint64_t sub_26B9DEFA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434060, &qword_26B9E0AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SBDExtendedDisplayProfile __swiftcall SBDExtendedDisplayProfile.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SBDExtendedDisplayProfile()
{
  result = qword_280434068;
  if (!qword_280434068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280434068);
  }

  return result;
}

unint64_t sub_26B9DF364(uint64_t a1, uint64_t a2)
{
  sub_26B9E0194();
  sub_26B9DFF14();
  v4 = sub_26B9E01A4();

  return sub_26B9DF460(a1, a2, v4);
}

unint64_t sub_26B9DF3DC(uint64_t a1)
{
  sub_26B9DFD94();
  sub_26B9DFD1C(&qword_280434078, MEMORY[0x277D54F68]);
  v2 = sub_26B9DFEE4();

  return sub_26B9DF518(a1, v2);
}

unint64_t sub_26B9DF460(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26B9E0164())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26B9DF518(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26B9DFD94();
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
      sub_26B9DFD1C(&qword_280434080, MEMORY[0x277D54F70]);
      v15 = sub_26B9DFEF4();
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

void *sub_26B9DF6C4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434088, &qword_26B9E0AC0);
  v10 = *(sub_26B9DFD74() - 8);
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
  v15 = *(sub_26B9DFD74() - 8);
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

unint64_t sub_26B9DF89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434060, &qword_26B9E0AA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434070, &qword_26B9E0AB8);
    v7 = sub_26B9E0154();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26B9DFCAC(v9, v5);
      result = sub_26B9DF3DC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26B9DFD94();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_26B9DFA70()
{
  v0 = sub_26B9DFD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  [v7 setPreferredLevel_];
  [objc_allocWithZone(MEMORY[0x277D67CE8]) init];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 localIdentity];
  sub_26B9DFD64();
  (*(v1 + 16))(v4, v6, v0);
  v11 = sub_26B9DF6C4(0, 1, 1, MEMORY[0x277D84F90]);
  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_26B9DF6C4((v12 > 1), v13 + 1, 1, v11);
  }

  (*(v1 + 8))(v6, v0);
  v11[2] = v13 + 1;
  (*(v1 + 32))(v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, v4, v0);
  return v11;
}

uint64_t sub_26B9DFCAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434060, &qword_26B9E0AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9DFD1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26B9DFD94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}