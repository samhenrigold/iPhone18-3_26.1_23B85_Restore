uint64_t sub_266E530A0()
{
  v1[45] = v0;
  v2 = sub_266E9CFA4();
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = type metadata accessor for Signpost.OpenSignpost(0);
  v1[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E5319C, 0, 0);
}

uint64_t sub_266E5319C()
{
  if (qword_2800E8D48 != -1)
  {
    swift_once();
  }

  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[45];
  v4 = qword_2800E92F8;
  v0[52] = qword_2800E92F8;
  v5 = v4;
  sub_266E9CF64();
  sub_266E9D1D4();
  v11 = MEMORY[0x277D84F90];
  LOBYTE(v10) = 2;
  sub_266E9CF44();
  v6 = v1 + *(v2 + 20);
  *v6 = "MafHomeMemberNames";
  *(v6 + 8) = 18;
  *(v6 + 16) = 258;
  v7 = *(v3 + 16);
  v0[2] = v0;
  v0[7] = v0 + 44;
  v0[3] = sub_266E53388;
  v8 = swift_continuation_init();
  v0[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E18, &qword_266E9E358);
  v0[36] = MEMORY[0x277D85DD0];
  v0[37] = 1107296256;
  v0[38] = sub_266E53DA8;
  v0[39] = &block_descriptor;
  v0[40] = v8;
  [v7 homeUserIdToNames_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_266E53388()
{
  v1 = *(*v0 + 48);
  *(*v0 + 424) = v1;
  if (v1)
  {
    v2 = sub_266E53CAC;
  }

  else
  {
    v2 = sub_266E53498;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_266E53498()
{
  v79 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = sub_266E9CFE4();
  v4 = 0;
  v5 = v2 + 64;
  v72 = v2;
  v6 = -1;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v2 + 64);
  v9 = (63 - v7) >> 6;
  v70 = (v1 + 8);
LABEL_4:
  while (2)
  {
    while (2)
    {
      v10 = v4;
      v73 = v3;
      while (1)
      {
        while (1)
        {
          if (!v8)
          {
            while (1)
            {
              v4 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                __break(1u);
                goto LABEL_43;
              }

              if (v4 >= v9)
              {
                break;
              }

              v8 = *(v5 + 8 * v4);
              ++v10;
              if (v8)
              {
                goto LABEL_10;
              }
            }

            if (qword_2800E8D80 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v71[46], qword_2800EC7E0);
            v53 = OUTLINED_FUNCTION_1();
            v54(v53);
            v55 = sub_266E9CF84();
            v56 = sub_266E9D194();
            v57 = os_log_type_enabled(v55, v56);
            v58 = v71[48];
            v59 = v71[46];
            if (v57)
            {
              v60 = swift_slowAlloc();
              v3 = swift_slowAlloc();
              v78 = v3;
              *v60 = 136315138;

              v61 = sub_266E9CFD4();
              v63 = v62;

              v64 = sub_266E6E7D4(v61, v63, &v78);

              *(v60 + 4) = v64;
              _os_log_impl(&dword_266E51000, v55, v56, "Got these home member names from MAF: %s", v60, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v3);
              OUTLINED_FUNCTION_2();
              MEMORY[0x26D5F66A0](v60, -1, -1);
            }

            (*v70)(v58, v59);
            sub_266E9D1C4();
            sub_266E9CF54();
            sub_266E541C0(v71[51]);

            v65 = v71[1];

            v65(v3);
            return;
          }

          v4 = v10;
LABEL_10:
          v11 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          v12 = v11 | (v4 << 6);
          v13 = (*(v72 + 48) + 16 * v12);
          v14 = v13[1];
          v75 = *v13;
          v15 = *(*(v72 + 56) + 8 * v12);

          v16 = v15;
          sub_266E54D04(v16);
          if (v17)
          {
            break;
          }

          sub_266E54D10(v16);
          if (v18)
          {
            break;
          }

          v68 = v16;
          if (qword_2800E8D80 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v71[46], qword_2800EC7E0);
          v28 = OUTLINED_FUNCTION_1();
          v29(v28);

          v30 = sub_266E9CF84();
          v31 = sub_266E9D1A4();

          v32 = os_log_type_enabled(v30, v31);
          v33 = v71[49];
          v34 = v71[46];
          if (v32)
          {
            v3 = swift_slowAlloc();
            v67 = v33;
            v35 = swift_slowAlloc();
            v78 = v35;
            *v3 = 136315138;
            v36 = sub_266E6E7D4(v75, v14, &v78);
            v76 = v34;
            v37 = v36;

            *(v3 + 4) = v37;
            _os_log_impl(&dword_266E51000, v30, v31, "Did not get first or nick name for homeUserId=%s", v3, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v35);
            MEMORY[0x26D5F66A0](v35, -1, -1);
            OUTLINED_FUNCTION_2();

            (*v70)(v67, v76);
          }

          else
          {

            (*v70)(v33, v34);
          }

          v10 = v4;
        }

        v19 = sub_266E54D04(v16);
        v21 = v20;
        v22 = sub_266E54D10(v16);
        if (v21 | v23)
        {
          break;
        }

        v24 = v16;
        v3 = v73;
        v25 = sub_266E97FDC(v75, v14);
        v27 = v26;

        if (v27)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v78 = v73;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E20, &unk_266E9E360);
          sub_266E9D324();
          v3 = v78;

          memcpy(v71 + 10, (v3[7] + 104 * v25), 0x68uLL);
          sub_266E54254((v71 + 10));
          sub_266E9D334();

          goto LABEL_4;
        }

        v10 = v4;
      }

      v38 = v22;
      v39 = v23;
      v69 = v16;
      v77 = MEMORY[0x277D84FA0];
      if (v21)
      {

        sub_266E63CC4(&v78, v19, v21);

        if (v39)
        {
          goto LABEL_23;
        }

LABEL_26:
        v38 = 0;
      }

      else
      {
        v19 = 0;
        if (!v23)
        {
          goto LABEL_26;
        }

LABEL_23:

        sub_266E63CC4(&v78, v38, v39);
      }

      swift_isUniquelyReferenced_nonNull_native();
      v78 = v73;
      v66 = sub_266E97FDC(v75, v14);
      v40 = *(v73 + 16);
      v74 = v41;
      if (__OFADD__(v40, (v41 & 1) == 0))
      {
        __break(1u);
        goto LABEL_47;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E20, &unk_266E9E360);
      if ((sub_266E9D324() & 1) == 0)
      {
        v44 = v66;
        if ((v74 & 1) == 0)
        {
          break;
        }

        goto LABEL_34;
      }

      v42 = sub_266E97FDC(v75, v14);
      if ((v74 & 1) != (v43 & 1))
      {
LABEL_43:

        sub_266E9D434();
        return;
      }

      v44 = v42;
      if (v74)
      {
LABEL_34:

        v51 = v78;
        v52 = (v78[7] + 104 * v44);
        memcpy(v71 + 23, v52, 0x68uLL);
        *v52 = v19;
        v52[1] = v21;
        *(v52 + 1) = 0u;
        *(v52 + 2) = 0u;
        *(v52 + 3) = 0u;
        v52[8] = v38;
        v52[9] = v39;
        v3 = v51;
        v52[10] = 0;
        v52[11] = 0;
        v52[12] = v77;
        sub_266E54254((v71 + 23));

        continue;
      }

      break;
    }

    v45 = v78;
    v78[(v44 >> 6) + 8] |= 1 << v44;
    v46 = (*(v45 + 48) + 16 * v44);
    *v46 = v75;
    v46[1] = v14;
    v47 = *(v45 + 56) + 104 * v44;
    *v47 = v19;
    *(v47 + 8) = v21;
    *(v47 + 32) = 0u;
    *(v47 + 48) = 0u;
    *(v47 + 16) = 0u;
    *(v47 + 64) = v38;
    *(v47 + 72) = v39;
    v3 = v45;
    *(v47 + 80) = 0;
    *(v47 + 88) = 0;
    *(v47 + 96) = v77;

    v48 = v3[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (!v49)
    {
      v3[2] = v50;
      continue;
    }

    break;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_266E53CAC()
{
  v1 = v0[53];
  swift_willThrow();
  v2 = sub_266E9CFE4();

  sub_266E9D1C4();
  sub_266E9CF54();
  sub_266E541C0(v0[51]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_266E53DA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_266E53E50(v4, v5);
  }

  else
  {
    sub_266E542EC();
    v7 = sub_266E9CFC4();

    return sub_266E53EBC(v4, v7);
  }
}

uint64_t sub_266E53E50(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E30, &qword_266EA0430);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_266E53EDC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
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

uint64_t sub_266E53F94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_3(v3);
  return sub_266E9C9A4();
}

uint64_t variable initialization expression of IdentityNLv3Intent.referenceNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8DA8, &unk_266E9E2E0);
  OUTLINED_FUNCTION_3(v0);
  return sub_266E9C9A4();
}

uint64_t variable initialization expression of IdentityNLv3Intent.userIdentityNode()
{
  v0 = _s24UserIdentityOntologyNodeCMa(0);
  OUTLINED_FUNCTION_3(v0);
  return sub_266E7A154();
}

uint64_t variable initialization expression of IdentityNLv3Intent.identityConfirmationNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8DB0, qword_266E9E610);
  OUTLINED_FUNCTION_3(v0);
  return sub_266E9C9A4();
}

uint64_t sub_266E54110(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_266E541C0(uint64_t a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_266E542EC()
{
  result = qword_2800E8E28;
  if (!qword_2800E8E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E8E28);
  }

  return result;
}

void sub_266E54358(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void OUTLINED_FUNCTION_2()
{

  JUMPOUT(0x26D5F66A0);
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1)
{

  return swift_allocObject();
}

void sub_266E543FC()
{
  v0 = [objc_opt_self() defaultContext];
  v1 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) initWithInstanceContext_];

  qword_2800E91B0 = v1;
}

uint64_t sub_266E54468()
{
  v0 = sub_266E9CFA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800E8D40 != -1)
  {
    swift_once();
  }

  v4 = qword_2800E91B0;
  if (qword_2800E91B0)
  {
    v5 = qword_2800E91B0;
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v0, qword_2800EC7E0);
    (*(v1 + 16))(v3, v6, v0);
    v7 = sub_266E9CF84();
    v8 = sub_266E9D1A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_266E51000, v7, v8, "Did not get AFSettingsConnection", v9, 2u);
      MEMORY[0x26D5F66A0](v9, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  return v4;
}

id sub_266E54644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_allocWithZone(v4);
  v6 = sub_266E9D014();
  v7 = sub_266E54D1C(0, 0xE000000000000000, v6, v5);

  v8 = v7;
  v9 = sub_266E9D124();
  [v8 setFullConfidence_];

  v10 = sub_266E9D124();
  [v8 setHighConfidence_];

  v11 = sub_266E9D124();
  [v8 setSetupInProgress_];

  v12 = sub_266E9D124();
  [v8 setIsMultiUserContext_];

  return v8;
}

id sub_266E54758(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91B8, &qword_266E9E430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45[-v5];
  v7 = sub_266E9BDD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45[-v12];
  v14 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  sub_266E54C6C(a1, v13);
  v15 = sub_266E9C464();
  if (__swift_getEnumTagSinglePayload(v13, 1, v15) == 1)
  {
    sub_266E54DA8(v13, &qword_2800E91C0, &unk_266E9EC70);
    goto LABEL_6;
  }

  v16 = sub_266E9C454();
  (*(*(v15 - 8) + 8))(v13, v15);
  if (!v16)
  {
LABEL_6:
    sub_266E54E08(v2, &selRef_name);
    if (v21)
    {
      sub_266E9BDE4();
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
      (*(v8 + 32))(v10, v6, v7);
      sub_266E9BD94();
      if (v22)
      {
        OUTLINED_FUNCTION_0_0();
        v23 = v14;
        OUTLINED_FUNCTION_4();
        v24 = OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_7(v24, sel_setGivenName_);

        OUTLINED_FUNCTION_8();
        v25 = 1;
      }

      else
      {
        v25 = 0;
      }

      sub_266E9BDB4();
      if (v35)
      {
        OUTLINED_FUNCTION_0_0();
        ++v25;
        v36 = v14;
        OUTLINED_FUNCTION_4();
        v37 = OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_7(v37, sel_setMiddleName_);

        OUTLINED_FUNCTION_8();
      }

      sub_266E9BDA4();
      if (v38)
      {
        OUTLINED_FUNCTION_0_0();
        ++v25;
        v39 = v14;
        OUTLINED_FUNCTION_4();
        v40 = OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_7(v40, sel_setFamilyName_);

        OUTLINED_FUNCTION_8();
      }

      sub_266E9BDC4();
      if (v41)
      {
        OUTLINED_FUNCTION_0_0();
        v42 = v14;
        OUTLINED_FUNCTION_4();
        v43 = OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_7(v43, sel_setNickname_);

        OUTLINED_FUNCTION_8();
        (*(v8 + 8))(v10, v7);
        return v14;
      }

      (*(v8 + 8))(v10, v7);
      if (v25)
      {
        return v14;
      }
    }

    goto LABEL_8;
  }

  sub_266E54E08(v16, &selRef_firstName);
  if (v17)
  {
    OUTLINED_FUNCTION_1_0();

    v18 = v14;
    v19 = OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5(v19, sel_setGivenName_);

    OUTLINED_FUNCTION_2_0();
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  sub_266E54E08(v16, &selRef_middleName);
  if (v26)
  {
    OUTLINED_FUNCTION_1_0();
    ++v20;
    v27 = v14;

    v28 = OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5(v28, sel_setMiddleName_);

    OUTLINED_FUNCTION_2_0();
  }

  sub_266E54E08(v16, &selRef_lastName);
  if (v29)
  {
    OUTLINED_FUNCTION_1_0();
    ++v20;
    v30 = v14;

    v31 = OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5(v31, sel_setFamilyName_);

    OUTLINED_FUNCTION_2_0();
  }

  sub_266E54E08(v16, &selRef_nickName);
  if (v32)
  {
    OUTLINED_FUNCTION_1_0();
    v33 = v14;

    v34 = OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5(v34, sel_setNickname_);

    OUTLINED_FUNCTION_2_0();
    return v14;
  }

  if (v20)
  {
    return v14;
  }

LABEL_8:

  return 0;
}

uint64_t sub_266E54C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_266E54D1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_266E9D014();

  v7 = [a4 initWithIdentifier:v6 displayString:a3];

  return v7;
}

uint64_t sub_266E54DA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_266E54E08(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_266E9D024();

  return v4;
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_266E9D014();
}

uint64_t OUTLINED_FUNCTION_4()
{
}

id OUTLINED_FUNCTION_5(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_6()
{

  return sub_266E9D014();
}

id OUTLINED_FUNCTION_7(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_8()
{

  return swift_bridgeObjectRelease_n();
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

uint64_t sub_266E54F44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_266E54F98(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_266E55008()
{
  v1 = sub_266E55068(v0);
  v2 = sub_266E55130(v0);
  MEMORY[0x26D5F5CB0](v2);

  return v1;
}

uint64_t sub_266E55068(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  sub_266E9D294();

  strcpy(v5, "deviceName: ");
  HIWORD(v5[1]) = -4864;
  MEMORY[0x26D5F5CB0](v2, v1);
  MEMORY[0x26D5F5CB0](2108450, 0xE300000000000000);
  return v5[0];
}

uint64_t sub_266E55130(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  MEMORY[0x26D5F5CB0]();
  MEMORY[0x26D5F5CB0](2108450, 0xE300000000000000);
  return 0x22203A6D6F6F72;
}

uint64_t sub_266E55200(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_266E9CFA4();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E552D8, 0, 0);
}

uint64_t sub_266E552D8()
{
  v87 = v0;
  if (qword_2800E8D80 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v1 = v0[20];
    v2 = v0[17];
    v3 = v0[14];
    v83 = __swift_project_value_buffer(v0[16], qword_2800EC7E0);
    v82 = *(v2 + 16);
    v82(v1);
    *(v0 + 5) = *(v3 + 24);
    *(v0 + 7) = *(v3 + 40);
    sub_266E56C28((v0 + 5), (v0 + 9));
    sub_266E56C28((v0 + 7), (v0 + 11));
    v4 = sub_266E9CF84();
    v5 = sub_266E9D194();
    sub_266E56C98((v0 + 5));
    sub_266E56C98((v0 + 7));
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[20];
    v8 = v0[16];
    v9 = v0[17];
    if (v6)
    {
      v80 = v0[20];
      v10 = v0[14];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v84 = v12;
      *v11 = 136315138;
      v13 = sub_266E55068(v10);
      v78 = v8;
      v15 = v14;
      v16 = sub_266E55130(v10);
      v85 = v13;
      v86 = v15;
      MEMORY[0x26D5F5CB0](v16);

      v17 = sub_266E6E7D4(v85, v86, &v84);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_266E51000, v4, v5, "#hal Invoking device resolution service with filter: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x26D5F66A0](v12, -1, -1);
      OUTLINED_FUNCTION_0_1();

      v18 = *(v9 + 8);
      v18(v80, v78);
    }

    else
    {

      v18 = *(v9 + 8);
      v18(v7, v8);
    }

    sub_266E8ABF4(v19);

    v20 = swift_retain_n();
    v85 = sub_266E56A30(v20);
    sub_266E55DCC(&v85);
    v79 = v18;
    v21 = v0[19];
    v22 = v0[16];

    v23 = v0;
    v24 = v85;
    v23[13] = v85;
    (v82)(v21, v83, v22);
    v25 = sub_266E9CF84();
    v26 = sub_266E9D194();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v23[19];
    v29 = v23[16];
    v81 = v23;
    if (v27)
    {
      v77 = v23[19];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v85 = v31;
      *v30 = 134218242;
      *(v30 + 4) = sub_266E8A854(v24);
      *(v30 + 12) = 2080;

      v33 = sub_266E8A01C(v32);
      v35 = v34;
      v36 = v24;

      v37 = sub_266E6E7D4(v33, v35, &v85);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_266E51000, v25, v26, "#hal %ld device(s): %s", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x26D5F66A0](v31, -1, -1);
      OUTLINED_FUNCTION_0_1();

      v38 = v77;
    }

    else
    {
      v36 = v24;

      v38 = v28;
    }

    v79(v38, v29);
    v0 = v81;
    v39 = v81[8];
    v40 = MEMORY[0x277D84F90];
    if (!v39)
    {
      break;
    }

    v41 = v81[7];
    v85 = MEMORY[0x277D84F90];
    v42 = sub_266E8B274(v36);

    for (i = 0; ; ++i)
    {
      if (v42 == i)
      {

        v50 = v85;
        swift_beginAccess();
        v81[13] = v50;

        v36 = v50;
        v40 = MEMORY[0x277D84F90];
        goto LABEL_27;
      }

      if ((v36 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x26D5F5ED0](i, v36);
      }

      else
      {
        if (i >= *(v36 + 16))
        {
          goto LABEL_53;
        }

        v44 = *(v36 + 8 * i + 32);
      }

      v45 = v44;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v46 = sub_266E9CE94();
      if (!v47)
      {
        goto LABEL_21;
      }

      if (v46 == v41 && v47 == v39)
      {
      }

      else
      {
        v49 = sub_266E9D3E4();

        if ((v49 & 1) == 0)
        {
LABEL_21:

          continue;
        }
      }

      sub_266E9D2C4();
      OUTLINED_FUNCTION_1_1();
      sub_266E9D2F4();
      OUTLINED_FUNCTION_1_1();
      sub_266E9D304();
      sub_266E9D2D4();
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

LABEL_27:
  v51 = v81[6];
  if (!v51)
  {
    goto LABEL_46;
  }

  v0 = v81[5];
  v85 = v40;
  v52 = sub_266E8B274(v36);
  v53 = v36 & 0xC000000000000001;
  v54 = v36;
  v55 = v36 & 0xFFFFFFFFFFFFFF8;
  v56 = v54;

  v57 = 0;
  while (2)
  {
    if (v52 != v57)
    {
      if (v53)
      {
        v58 = MEMORY[0x26D5F5ED0](v57, v56);
      }

      else
      {
        if (v57 >= *(v55 + 16))
        {
          goto LABEL_55;
        }

        v58 = *(v56 + 8 * v57 + 32);
      }

      v59 = v58;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_54;
      }

      v60 = sub_266E9CE84();
      if (v61)
      {
        if (v60 == v0 && v61 == v51)
        {
        }

        else
        {
          v63 = sub_266E9D3E4();

          if ((v63 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        sub_266E9D2C4();
        OUTLINED_FUNCTION_1_1();
        sub_266E9D2F4();
        OUTLINED_FUNCTION_1_1();
        sub_266E9D304();
        sub_266E9D2D4();
      }

      else
      {
LABEL_40:
      }

      ++v57;
      continue;
    }

    break;
  }

  swift_bridgeObjectRelease_n();
  v36 = v85;
  v0 = v81;
LABEL_46:
  (v82)(v0[18], v83, v0[16]);

  v64 = sub_266E9CF84();
  v65 = sub_266E9D194();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v0[18];
  v68 = v0[16];
  if (v66)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v85 = v70;
    *v69 = 134218242;
    *(v69 + 4) = sub_266E8A854(v36);
    *(v69 + 12) = 2080;
    v71 = sub_266E8A01C(v36);
    v73 = v72;

    v74 = sub_266E6E7D4(v71, v73, &v85);

    *(v69 + 14) = v74;
    _os_log_impl(&dword_266E51000, v64, v65, "#hal %ld device(s) match provided filter: %s", v69, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v70);
    OUTLINED_FUNCTION_0_1();
    MEMORY[0x26D5F66A0](v69, -1, -1);
  }

  else
  {
  }

  v79(v67, v68);

  v75 = v81[1];

  return v75(v36);
}

uint64_t sub_266E55AB0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_266E9CEB4();
      result = sub_266E9D0F4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void *sub_266E55B0C(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91E0, &qword_266E9E4E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_266E8AA90(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266E55CC4(uint64_t result, int64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  v10 = result;
  if (a3)
  {
    v11 = *(a4 + 24);
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if ((v12 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = *(a4 + 16);
  v14 = a5(v13, v12);
  v15 = *(a6(0) - 8);
  if (v10)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    a7(a4 + v16, v13, v14 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_266E55DCC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_266E56DAC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_266E55E48(v6);
  return sub_266E9D2D4();
}

void sub_266E55E48(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_266E9D3C4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_266E55AB0(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_266E56024(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_266E55F28(0, v3, 1, a1);
  }
}

void sub_266E55F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v18 = v6;
      do
      {
        v10 = *v6;
        v11 = v8;
        v12 = v10;
        sub_266E9CEA4();
        sub_266E9CEA4();
        v13 = sub_266E9CF34();
        v14 = sub_266E9CF34();

        if (v14 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v15 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v15;
        v6 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v18 + 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_266E56024(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_92:
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v93 = (v8 + 16);
      v94 = *(v8 + 16);
      while (v94 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v95 = v8;
        v96 = (v8 + 16 * v94);
        v97 = *v96;
        v98 = &v93[2 * v94];
        v8 = v98[1];
        sub_266E566CC((*a3 + 8 * *v96), (*a3 + 8 * *v98), (*a3 + 8 * v8), v112);
        if (v5)
        {
          break;
        }

        if (v8 < v97)
        {
          goto LABEL_118;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_119;
        }

        *v96 = v97;
        v96[1] = v8;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_120;
        }

        v94 = *v93 - 1;
        memmove(v98, v98 + 2, 16 * v99);
        *v93 = v94;
        v8 = v95;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v8 = sub_266E5691C(v8);
    goto LABEL_94;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v101 = v5;
      v103 = v8;
      v11 = (*a3 + 8 * v7);
      v12 = v7;
      v13 = 8 * v7;
      v15 = *v11;
      v14 = v11 + 2;
      v112 = v6;
      v5 = *(*a3 + 8 * v10);
      v16 = v10;
      v17 = v15;
      sub_266E9CEA4();
      sub_266E9CEA4();
      v109 = sub_266E9CF34();
      v108 = sub_266E9CF34();

      v18 = v112;
      v10 = v16;
      v105 = v12;
      v19 = v12 + 2;
      while (1)
      {
        v20 = v19;
        v21 = v10 + 1;
        if (v21 >= v18)
        {
          break;
        }

        v22 = *(v14 - 1);
        v23 = v21;
        v24 = *v14;
        v5 = v22;
        sub_266E9CEA4();
        sub_266E9CEA4();
        v25 = sub_266E9CF34();
        v26 = sub_266E9CF34();

        v10 = v23;
        v18 = v112;
        ++v14;
        v19 = v20 + 1;
        if (v108 < v109 == v26 >= v25)
        {
          goto LABEL_9;
        }
      }

      v10 = v18;
LABEL_9:
      if (v108 >= v109)
      {
        v5 = v101;
        v8 = v103;
      }

      else
      {
        v8 = v103;
        v27 = v105;
        if (v10 < v105)
        {
          goto LABEL_124;
        }

        if (v105 >= v10)
        {
          v5 = v101;
          v9 = v105;
          goto LABEL_24;
        }

        if (v18 >= v20)
        {
          v28 = v20;
        }

        else
        {
          v28 = v18;
        }

        v29 = 8 * v28 - 8;
        v30 = v10;
        v5 = v101;
        do
        {
          if (v27 != --v30)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            v32 = *(v31 + v13);
            *(v31 + v13) = *(v31 + v29);
            *(v31 + v29) = v32;
          }

          ++v27;
          v29 -= 8;
          v13 += 8;
        }

        while (v27 < v30);
      }

      v9 = v105;
    }

LABEL_24:
    v33 = a3[1];
    if (v10 < v33)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_123;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v10 < v9)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_266E55B0C(0, *(v8 + 16) + 1, 1, v8);
    }

    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v8 = sub_266E55B0C((v48 > 1), v49 + 1, 1, v8);
    }

    *(v8 + 16) = v50;
    v51 = v8 + 32;
    v52 = (v8 + 32 + 16 * v49);
    *v52 = v9;
    v52[1] = v10;
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v112 = v10;
    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        v54 = (v51 + 16 * (v50 - 1));
        v55 = (v8 + 16 * v50);
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v56 = *(v8 + 32);
          v57 = *(v8 + 40);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_60:
          if (v59)
          {
            goto LABEL_109;
          }

          v71 = *v55;
          v70 = v55[1];
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_112;
          }

          v75 = v54[1];
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_117;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v50 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v50 < 2)
        {
          goto LABEL_111;
        }

        v78 = *v55;
        v77 = v55[1];
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_75:
        if (v74)
        {
          goto LABEL_114;
        }

        v80 = *v54;
        v79 = v54[1];
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_116;
        }

        if (v81 < v73)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v53 - 1 >= v50)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v85 = v8;
        v86 = (v51 + 16 * (v53 - 1));
        v87 = *v86;
        v88 = v51;
        v89 = v53;
        v8 = v51 + 16 * v53;
        v90 = *(v8 + 8);
        sub_266E566CC((*a3 + 8 * *v86), (*a3 + 8 * *v8), (*a3 + 8 * v90), v111);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v90 < v87)
        {
          goto LABEL_104;
        }

        v5 = *(v85 + 16);
        if (v89 > v5)
        {
          goto LABEL_105;
        }

        *v86 = v87;
        v86[1] = v90;
        if (v89 >= v5)
        {
          goto LABEL_106;
        }

        v91 = v89;
        v50 = (v5 - 1);
        memmove(v8, (v8 + 16), 16 * &v5[-v91 - 1]);
        v8 = v85;
        *(v85 + 16) = v5 - 1;
        v92 = v5 > 2;
        v5 = 0;
        v51 = v88;
        if (!v92)
        {
          goto LABEL_89;
        }
      }

      v60 = v51 + 16 * v50;
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_107;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_108;
      }

      v67 = v55[1];
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_110;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_113;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = v54[1];
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_121;
        }

        if (v58 < v84)
        {
          v53 = v50 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v6 = a3[1];
    v7 = v112;
    if (v112 >= v6)
    {
      goto LABEL_92;
    }
  }

  v34 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_125;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v9)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v10 == v34)
  {
    goto LABEL_40;
  }

  v102 = v5;
  v104 = v8;
  v35 = *a3;
  v36 = *a3 + 8 * v10 - 8;
  v106 = v9;
  v37 = v9 - v10;
  v110 = v34;
LABEL_33:
  v112 = v10;
  v38 = *(v35 + 8 * v10);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    sub_266E9CEA4();
    sub_266E9CEA4();
    v44 = sub_266E9CF34();
    v45 = sub_266E9CF34();

    if (v45 >= v44)
    {
LABEL_38:
      v10 = v112 + 1;
      v36 += 8;
      --v37;
      if ((v112 + 1) == v110)
      {
        v10 = v110;
        v5 = v102;
        v8 = v104;
        v9 = v106;
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (!v35)
    {
      break;
    }

    v46 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v46;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_38;
    }
  }

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
}

uint64_t sub_266E566CC(id *a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_266E8AA70(a1, a2 - a1, a4);
    v10 = &v4[v8];
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      sub_266E9CEA4();
      sub_266E9CEA4();
      v16 = sub_266E9CF34();
      v17 = sub_266E9CF34();

      if (v17 >= v16)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = v19 + 1;
    }

    v18 = v4;
    v19 = v12;
    v20 = v12 == v4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  sub_266E8AA70(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v35 = v7;
  v36 = v4;
LABEL_15:
  v21 = v6 - 1;
  v22 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v24 = v22;
    v25 = v21;
    v26 = *v21;
    v27 = *(v10 - 1);
    v28 = v26;
    sub_266E9CEA4();
    sub_266E9CEA4();
    v29 = sub_266E9CF34();
    v30 = sub_266E9CF34();

    v5 = v24;
    v31 = v24 + 1;
    if (v30 < v29)
    {
      v20 = v31 == v6;
      v6 = v25;
      v7 = v35;
      v4 = v36;
      if (!v20)
      {
        *v5 = *v25;
        v6 = v25;
      }

      goto LABEL_15;
    }

    if (v10 != v31)
    {
      *v24 = *(v10 - 1);
    }

    v22 = v24 - 1;
    --v10;
    v7 = v35;
    v4 = v36;
    v21 = v25;
  }

LABEL_28:
  v32 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v32])
  {
    memmove(v6, v4, 8 * v32);
  }

  return 1;
}

char *sub_266E56930(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91E0, &qword_266E9E4E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_266E56A30(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_266E9D354();
    if (v4)
    {
      v5 = v4;
      v2 = sub_266E8A87C(v4, 0);
      sub_266E56AC4((v2 + 4), v5, a1);
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

uint64_t sub_266E56AC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_266E9D354();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_266E8A854(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_266E9CEB4();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_266E56D00();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91D0, &qword_266E9E4E0);
          v9 = sub_266E8AFB4(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_266E56C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C8, &unk_266E9ED50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E56C98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C8, &unk_266E9ED50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266E56D00()
{
  result = qword_2800E91D8;
  if (!qword_2800E91D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800E91D0, &qword_266E9E4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E91D8);
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

void OUTLINED_FUNCTION_0_1()
{

  JUMPOUT(0x26D5F66A0);
}

uint64_t IdentityNLv3Intent.domainOntologyNode.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IdentityNLv3Intent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IdentityNLv3Intent(0) + 20);
  v4 = sub_266E9CC74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for IdentityNLv3Intent(uint64_t a1)
{
  result = qword_2800E91F0;
  if (!qword_2800E91F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266E56F74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = type metadata accessor for IdentityNLv3Intent(0);
  v4 = v3[6];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8D98, &unk_266E9E2D0);
  OUTLINED_FUNCTION_3(v30);
  v5 = sub_266E9C9A4();
  *&a2[v4] = v5;
  v29 = v5;
  v6 = v3[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8DA0, "0O");
  OUTLINED_FUNCTION_3(v7);

  v8 = sub_266E9C9A4();
  *&a2[v6] = v8;
  v28 = v8;
  v9 = v3[8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8DA8, &unk_266E9E2E0);
  OUTLINED_FUNCTION_3(v10);

  v11 = sub_266E9C9A4();
  *&a2[v9] = v11;
  v27 = v11;
  v12 = v3[9];
  v13 = _s24UserIdentityOntologyNodeCMa(0);
  OUTLINED_FUNCTION_3(v13);

  v14 = sub_266E7A154();
  *&a2[v12] = v14;
  v15 = v3[10];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8DB0, qword_266E9E610);
  OUTLINED_FUNCTION_3(v16);

  v17 = sub_266E9C9A4();
  *&a2[v15] = v17;
  v18 = v3[5];
  v19 = sub_266E9CC74();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&a2[v18], a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9230, &unk_266E9F880);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_266E9E500;
  *(v21 + 56) = v30;
  *(v21 + 64) = sub_266E57FE8(&qword_2800E9238, &qword_2800E8D98, &unk_266E9E2D0);
  *(v21 + 32) = v29;
  *(v21 + 96) = v7;
  *(v21 + 104) = sub_266E57FE8(&qword_2800E9240, &qword_2800E8DA0, "0O");
  *(v21 + 72) = v28;
  *(v21 + 136) = v10;
  v22 = sub_266E57FE8(&qword_2800E9248, &qword_2800E8DA8, &unk_266E9E2E0);
  v23 = MEMORY[0x277D5E210];
  *(v21 + 112) = v27;
  *(v21 + 176) = v13;
  *(v21 + 184) = v23;
  *(v21 + 144) = v22;
  *(v21 + 152) = v14;
  *(v21 + 216) = v16;
  *(v21 + 224) = sub_266E57FE8(&qword_2800E9250, &qword_2800E8DB0, qword_266E9E610);
  *(v21 + 192) = v17;
  v24 = sub_266E9C994();
  OUTLINED_FUNCTION_3(v24);

  v25 = sub_266E9C984();
  result = (*(v20 + 8))(a1, v19);
  *a2 = v25;
  return result;
}

uint64_t sub_266E57308(void *a1)
{
  type metadata accessor for IdentityNLv3Intent(0);
  OUTLINED_FUNCTION_0_2(&qword_2800E9580);

  sub_266E9CAC4();

  return v2;
}

uint64_t sub_266E57394()
{
  type metadata accessor for IdentityNLv3Intent(0);
  OUTLINED_FUNCTION_0_2(&qword_2800E9580);
  sub_266E9CAC4();
  return v1;
}

uint64_t sub_266E573F8()
{
  if (sub_266E5742C())
  {
    return 2;
  }

  if (sub_266E5761C())
  {
    return 1;
  }

  return 3;
}

uint64_t sub_266E5742C()
{
  type metadata accessor for IdentityNLv3Intent(0);
  sub_266E5803C(&qword_2800E9580, &protocol conformance descriptor for IdentityNLv3Intent);
  sub_266E9CAC4();
  if (v11 == 6)
  {
    goto LABEL_2;
  }

  if (IdentityVerb.rawValue.getter(v11) == 0x796669646F6DLL && v1 == 0xE600000000000000)
  {

    goto LABEL_11;
  }

  v3 = sub_266E9D3E4();

  if ((v3 & 1) == 0)
  {
LABEL_2:
    sub_266E9CAC4();
    if (v10 != 6)
    {
      return 0;
    }
  }

LABEL_11:
  v4 = sub_266E9CAD4();
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  while (2)
  {
    v7 = v5-- != 0;
    v0 = v7;
    if (v7)
    {
      switch(*v6)
      {
        case 3:

          break;
        default:
          v8 = sub_266E9D3E4();

          ++v6;
          if ((v8 & 1) == 0)
          {
            continue;
          }

          break;
      }
    }

    break;
  }

  return v0;
}

uint64_t sub_266E5761C()
{
  type metadata accessor for IdentityNLv3Intent(0);
  sub_266E5803C(&qword_2800E9580, &protocol conformance descriptor for IdentityNLv3Intent);
  sub_266E9CAC4();
  if (v14 != 6)
  {
    if (IdentityVerb.rawValue.getter(v14) == 0x796669746E656469 && v1 == 0xE800000000000000)
    {
LABEL_16:

      goto LABEL_17;
    }

    v3 = sub_266E9D3E4();

    if (v3)
    {
      goto LABEL_17;
    }
  }

  sub_266E9CAC4();
  if (v13 == 6)
  {
    return 0;
  }

  if (IdentityVerb.rawValue.getter(v13) == 0x74736575516B7361 && v4 == 0xEB000000006E6F69)
  {
    goto LABEL_16;
  }

  v6 = sub_266E9D3E4();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v7 = sub_266E9CAD4();
  v8 = *(v7 + 16);
  v9 = (v7 + 32);
  while (2)
  {
    v10 = v8-- != 0;
    v0 = v10;
    if (v10)
    {
      switch(*v9)
      {
        case 1:
        case 2:
        case 3:
          v11 = sub_266E9D3E4();

          ++v9;
          if ((v11 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }
    }

    break;
  }

  return v0;
}

BOOL sub_266E57868()
{
  type metadata accessor for IdentityNLv3Intent(0);
  OUTLINED_FUNCTION_0_2(&qword_2800E9580);
  v0 = sub_266E9CAD4();
  v1 = *(v0 + 16);
  v2 = (v0 + 32);
  while (2)
  {
    v3 = v1;
    if (v1-- != 0)
    {
      switch(*v2)
      {
        case 1:
        case 2:
        case 3:
          v5 = sub_266E9D3E4();

          ++v2;
          if ((v5 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }
    }

    break;
  }

  return v3 != 0;
}

uint64_t sub_266E5799C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_266E9CC74();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_266E57A84(uint64_t a1)
{
  v2 = sub_266E5803C(&qword_2800E9258, &protocol conformance descriptor for IdentityNLv3Intent);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_266E57AEC(uint64_t a1)
{
  v2 = sub_266E5803C(&qword_2800E9258, &protocol conformance descriptor for IdentityNLv3Intent);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_266E57B44(uint64_t a1)
{
  v2 = sub_266E5803C(&qword_2800E9258, &protocol conformance descriptor for IdentityNLv3Intent);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_266E57BB0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_266E9CC74();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_266E57C4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_266E9CC74();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_266E57CCC(uint64_t a1)
{
  sub_266E9C994();
  if (v1 <= 0x3F)
  {
    sub_266E9CC74();
    if (v2 <= 0x3F)
    {
      sub_266E57F34(319, &qword_2800E9200, sub_266E57E34, &type metadata for IdentityVerb);
      if (v3 <= 0x3F)
      {
        sub_266E57F34(319, &qword_2800E9208, sub_266E57E88, &type metadata for IdentityNoun);
        if (v4 <= 0x3F)
        {
          sub_266E57EDC();
          if (v5 <= 0x3F)
          {
            _s24UserIdentityOntologyNodeCMa(319);
            if (v6 <= 0x3F)
            {
              sub_266E57F34(319, &qword_2800E9220, sub_266E57F94, &unk_287876390);
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

unint64_t sub_266E57E34()
{
  result = qword_2800E9650;
  if (!qword_2800E9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9650);
  }

  return result;
}

unint64_t sub_266E57E88()
{
  result = qword_2800E9210;
  if (!qword_2800E9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9210);
  }

  return result;
}

void sub_266E57EDC()
{
  if (!qword_2800E9218)
  {
    v0 = sub_266E9C9B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2800E9218);
    }
  }
}

void sub_266E57F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_266E9C9B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_266E57F94()
{
  result = qword_2800E9228;
  if (!qword_2800E9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9228);
  }

  return result;
}

uint64_t sub_266E57FE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_266E5803C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IdentityNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2(unint64_t *a1)
{

  return sub_266E5803C(a1, &protocol conformance descriptor for IdentityNLv3Intent);
}

uint64_t sub_266E580A4()
{
  v0 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v7 = __swift_project_value_buffer(v0, qword_2800EC7E0);
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_266E9CF84();
  v9 = sub_266E9D194();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_5_0();
    *v10 = 0;
    _os_log_impl(&dword_266E51000, v8, v9, "EstablishUserFlowStrategy.actionForInput() called", v10, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v11 = OUTLINED_FUNCTION_6_0();
  v12(v11);
  return sub_266E9C384();
}

uint64_t sub_266E5820C(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_266E9C7E4();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v3 = sub_266E9CFA4();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E58358, 0, 0);
}

uint64_t sub_266E58358()
{
  v68 = v0;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v1 = v0[18];
  v2 = __swift_project_value_buffer(v0[17], qword_2800EC7E0);
  v3 = *(v1 + 16);
  v4 = OUTLINED_FUNCTION_6_0();
  v3(v4);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_5_0();
    *v7 = 0;
    _os_log_impl(&dword_266E51000, v5, v6, "EstablishUserFlowStrategy.makeIntentFromParse() called", v7, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v8 = v0[22];
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[12];

  v12 = *(v10 + 8);
  v12(v8, v9);
  sub_266E7B898(v11, v0 + 7);
  v13 = v0[17];
  if (!v0[10])
  {
    v66 = v12;
    v31 = v0[16];
    v32 = v0[13];
    v33 = v0[14];
    v34 = v0[12];
    sub_266E59548((v0 + 7));
    v35 = OUTLINED_FUNCTION_6_0();
    v3(v35);
    v36 = *(v33 + 16);
    v36(v31, v34, v32);
    v37 = sub_266E9CF84();
    v38 = sub_266E9D1A4();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[19];
    v42 = v0[16];
    v41 = v0[17];
    if (v39)
    {
      v65 = v0[17];
      v43 = v0[14];
      v44 = v0[15];
      v45 = v0[13];
      v64 = v0[19];
      v46 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v67 = v63;
      *v46 = 136315138;
      v36(v44, v42, v45);
      v47 = sub_266E9D034();
      v48 = v38;
      v50 = v49;
      (*(v43 + 8))(v42, v45);
      v51 = sub_266E6E7D4(v47, v50, &v67);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_266E51000, v37, v48, "Unable to make intent from parse %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();

      v52 = v64;
      v53 = v65;
    }

    else
    {
      v57 = v0[13];
      v56 = v0[14];

      (*(v56 + 8))(v42, v57);
      v52 = v40;
      v53 = v41;
    }

    v66(v52, v53);
    type metadata accessor for IdentityFlowError();
    swift_allocObject();
    v58 = sub_266E89698(0);
    OUTLINED_FUNCTION_1_2();
    sub_266E595B0(v59, 255, v60, &unk_266EA07E0);
    swift_allocError();
    *v61 = v58;
    swift_willThrow();
LABEL_19:

    v62 = v0[1];

    return v62();
  }

  v14 = v0[21];
  sub_266E595F8((v0 + 7), (v0 + 2));
  type metadata accessor for UserIdentifyIntent();
  v15 = sub_266E68014(v0 + 2);
  (v3)(v14, v2, v13);
  v16 = sub_266E9CF84();
  v17 = sub_266E9D194();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_5_0();
    *v18 = 0;
    _os_log_impl(&dword_266E51000, v16, v17, "Finished creating intent from parse", v18, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v19 = v0[21];
  v20 = v0[17];

  v12(v19, v20);
  if ([v15 caseType] == 4)
  {
    v21 = OUTLINED_FUNCTION_6_0();
    v3(v21);
    v22 = sub_266E9CF84();
    v23 = sub_266E9D1A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_5_0();
      *v24 = 0;
      _os_log_impl(&dword_266E51000, v22, v23, "Unsupported Intent Case Type", v24, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v25 = v0[20];
    v26 = v0[17];

    v12(v25, v26);
    type metadata accessor for IdentityFlowError();
    swift_allocObject();
    v27 = sub_266E89698(0);
    OUTLINED_FUNCTION_1_2();
    sub_266E595B0(v28, 255, v29, &unk_266EA07E0);
    swift_allocError();
    *v30 = v27;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v54 = v0[1];

  return v54(v15);
}

uint64_t sub_266E589DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266E58A70;

  return sub_266E5820C(a1);
}

uint64_t sub_266E58A70(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_266E58B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EstablishUserFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_266E58BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266E59610;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_266E58C84(uint64_t a1, void *a2)
{
  v3 = sub_266E9C1D4();
  OUTLINED_FUNCTION_2_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v17 = __swift_project_value_buffer(v10, qword_2800EC7E0);
  (*(v12 + 16))(v16, v17, v10);
  v18 = sub_266E9CF84();
  v19 = sub_266E9D194();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_5_0();
    *v20 = 0;
    _os_log_impl(&dword_266E51000, v18, v19, "EstablishUserIntentExecutionBehaviorStrategy.makeIntentExecutionBehavior", v20, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  (*(v12 + 8))(v16, v10);
  sub_266E9C254();
  v21 = objc_allocWithZone(type metadata accessor for EstablishUserIntentHandler());

  [v21 init];
  type metadata accessor for UserIdentifyIntent();
  v22 = a2;
  sub_266E9C1C4();
  v23 = sub_266E9C244();
  (*(v5 + 8))(v9, v3);
  return v23;
}

uint64_t sub_266E58F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for EstablishUserFlowStrategy();
  *v10 = v5;
  v10[1] = sub_266E59610;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_266E58FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for EstablishUserFlowStrategy();
  *v10 = v5;
  v10[1] = sub_266E59610;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_266E5909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for EstablishUserFlowStrategy();
  *v10 = v5;
  v10[1] = sub_266E59610;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_266E59168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for EstablishUserFlowStrategy();
  *v12 = v6;
  v12[1] = sub_266E59244;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_266E59244()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_266E59338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for EstablishUserFlowStrategy();
  *v12 = v6;
  v12[1] = sub_266E59610;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_266E59414(uint64_t a1, void *a2)
{
  v3 = sub_266E58C84(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_266E59548(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9590, &unk_266E9EC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E595B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266E595F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_0()
{

  JUMPOUT(0x26D5F66A0);
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_slowAlloc();
}

void *sub_266E596AC(uint64_t a1)
{
  v2 = sub_266E9CFA4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v12 = [objc_allocWithZone(type metadata accessor for SwitchProfileIntent()) init];
  if (!a1)
  {
    if (qword_2800E8D88 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v31 = __swift_project_value_buffer(v2, qword_2800EC7F8);
    (*(v3 + 16))(v6, v31, v2);
    v32 = sub_266E9CF84();
    v33 = sub_266E9D1A4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_266E51000, v32, v33, "Either the homeUserId or name must be provided", v34, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    (*(v3 + 8))(v6, v2);
    goto LABEL_27;
  }

  v13 = v12;
  sub_266E95904(0x696669746E656469, 0xEA00000000007265, a1, v46);
  if (!v47)
  {
    sub_266E59C2C(v46);
    goto LABEL_6;
  }

  if ((OUTLINED_FUNCTION_1_3(v14, v15, v16, MEMORY[0x277D837D0]) & 1) == 0)
  {
LABEL_6:
    sub_266E95904(1701667182, 0xE400000000000000, a1, v46);
    if (v47)
    {
      if (OUTLINED_FUNCTION_1_3(v18, v19, v20, MEMORY[0x277D837D0]))
      {
        sub_266E68758(v44, v45, v13);
        v17 = 2;
        goto LABEL_9;
      }

      v35 = v3;
      v36 = v2;
    }

    else
    {
      v35 = v3;
      v36 = v2;
      sub_266E59C2C(v46);
    }

    if (qword_2800E8D88 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v37 = __swift_project_value_buffer(v36, qword_2800EC7F8);
    v38 = v36;
    (*(v35 + 16))(v11, v37, v36);
    v39 = sub_266E9CF84();
    v40 = sub_266E9D1A4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_266E51000, v39, v40, "Either the homeUserId or name must be provided", v41, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    (*(v35 + 8))(v11, v38);
LABEL_27:
    result = sub_266E9D374();
    __break(1u);
    return result;
  }

  sub_266E60C54(v44, v45, v13);
  v17 = 1;
LABEL_9:

  if (qword_2800E8D88 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v21 = __swift_project_value_buffer(v2, qword_2800EC7F8);
  (*(v3 + 16))(v9, v21, v2);
  v22 = sub_266E9CF84();
  v23 = sub_266E9D194();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v2;
    v26 = v25;
    v46[0] = v25;
    *v24 = 136315138;
    v27 = SwitchType.description.getter();
    v29 = sub_266E6E7D4(v27, v28, v46);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_266E51000, v22, v23, "Setting switchType with %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    (*(v3 + 8))(v9, v43);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }

  [v13 setSwitchType_];
  return v13;
}

uint64_t sub_266E59C2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9278, &qword_266E9F5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_266E59D00(unsigned __int8 a1)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](a1);
  return sub_266E9D4A4();
}

uint64_t sub_266E59D64(uint64_t a1)
{
  v2 = *v1;
  sub_266E9D484();
  MEMORY[0x26D5F60C0](v2);
  return sub_266E9D4A4();
}

uint64_t sub_266E59DA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  v2 = OUTLINED_FUNCTION_19(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_22();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);
  sub_266E9C7F4();
  sub_266E9C6D4();
  v4 = type metadata accessor for BaseDialogProvider();
  v5 = swift_allocObject();
  v6 = sub_266E9CED4();
  v7 = sub_266E9CEC4();
  v29[3] = v4;
  v29[4] = &off_287876528;
  v29[0] = v5;
  v27 = v6;
  v28 = MEMORY[0x277D61F10];
  *&v26 = v7;
  v25[3] = &type metadata for IdentityFlowFactoryImpl;
  v25[4] = &off_2878767E8;
  v23 = &type metadata for IdentityFeatureFlagsProvider;
  v24 = &protocol witness table for IdentityFeatureFlagsProvider;
  type metadata accessor for SwitchProfileWrapperFlow(0);
  v8 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v29, v4);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = (v11 - v10);
  (*(v13 + 16))(v11 - v10);
  __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for IdentityFlowFactoryImpl);
  v14 = *v12;
  v15 = (v8 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_dialogProvider);
  v15[3] = v4;
  v15[4] = &off_287876528;
  *v15 = v14;
  v16 = v8 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_flowFactory;
  *(v16 + 24) = &type metadata for IdentityFlowFactoryImpl;
  *(v16 + 32) = &off_2878767E8;
  *(v8 + 24) = 0;
  v17 = OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_input;
  __swift_storeEnumTagSinglePayload(OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_input + v8, 1, 1, v3);
  swift_beginAccess();
  v18 = v7;
  sub_266E5D098(v0, v17 + v8);
  swift_endAccess();
  sub_266E5CE50(v31, v8 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState);
  sub_266E5CE50(v30, v8 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_outputPublisher);
  sub_266E5CE50(v15, v21);
  sub_266E5CE50(v31, v20);
  sub_266E654D0(v21, v20, v8 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_identityDialogs);

  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  sub_266E5CF94(v0);
  sub_266E595F8(&v26, v8 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceResolutionProvider);
  *(v8 + 16) = 0;
  sub_266E595F8(&v22, v8 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_featureFlags);
  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return v8;
}

uint64_t sub_266E5A0A4(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  v5 = OUTLINED_FUNCTION_19(v4);
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  (*(*(v6 - 8) + 16))(v2, a1, v6);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_input;
  swift_beginAccess();
  sub_266E5CEB4(v2, v7 + v1);
  swift_endAccess();
  *(v1 + 16) = 1;
  return 1;
}

uint64_t sub_266E5A19C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SwitchProfileWrapperFlow(0);
  sub_266E5CFFC(&qword_2800E92F0, type metadata accessor for SwitchProfileWrapperFlow, &unk_266E9E970);
  return sub_266E9C144();
}

uint64_t sub_266E5A22C()
{
  OUTLINED_FUNCTION_7_0();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_266E9CFA4();
  v1[7] = v3;
  OUTLINED_FUNCTION_5_1(v3);
  v1[8] = v4;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = sub_266E9C7E4();
  v1[13] = v5;
  OUTLINED_FUNCTION_5_1(v5);
  v1[14] = v6;
  v1[15] = OUTLINED_FUNCTION_18();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  OUTLINED_FUNCTION_19(v7);
  v1[16] = OUTLINED_FUNCTION_18();
  v8 = sub_266E9C7A4();
  v1[17] = v8;
  OUTLINED_FUNCTION_5_1(v8);
  v1[18] = v9;
  v1[19] = OUTLINED_FUNCTION_18();
  v10 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_266E5A3C0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_input;
  swift_beginAccess();
  sub_266E5CF24(&v4[v3], v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_266E5CF94(v0[16]);
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    OUTLINED_FUNCTION_13();
    v5 = (v4 + 72);
    v6 = *(v5 - 1);
    __swift_project_value_buffer(*(v5 - 2), qword_2800EC7E0);
    v7 = OUTLINED_FUNCTION_4_1();
    v8(v7);
    v9 = sub_266E9CF84();
    v10 = sub_266E9D1A4();
    if (OUTLINED_FUNCTION_12(v10))
    {
      v11 = "SwitchProfileWrapperFlow.execute Input is nil. Error executing request";
LABEL_6:
      v12 = *v5;
      v13 = OUTLINED_FUNCTION_5_0();
      *v13 = 0;
      _os_log_impl(&dword_266E51000, v9, v6, v11, v13, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    else
    {
      v12 = *v5;
    }
  }

  else
  {
    v14 = v0[6];
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
    switch(*(v14 + 16))
    {
      case 1:
        v29 = v0[14];
        sub_266E9C794();
        v30 = v29 + 88;
        v31 = OUTLINED_FUNCTION_16();
        v33 = v32(v31);
        if (v33 == *MEMORY[0x277D5C128] || v33 == *MEMORY[0x277D5C150] || v33 == *MEMORY[0x277D5C130] || v33 == *MEMORY[0x277D5C160])
        {
          (*(v0[14] + 8))(v0[15], v0[13]);
          if (sub_266E5ABE4())
          {
            sub_266E5AC78(v0[19]);
LABEL_37:
            v37 = OUTLINED_FUNCTION_9();
            v38(v37);

            OUTLINED_FUNCTION_8_0();
            OUTLINED_FUNCTION_21();

            __asm { BRAA            X1, X16 }
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_20();
          v0[20] = v21;
          *v21 = v44;
          v23 = sub_266E5A968;
LABEL_15:
          v21[1] = v23;
          OUTLINED_FUNCTION_21();

          sub_266E5B0C4();
          return;
        }

        if (qword_2800E8D80 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        OUTLINED_FUNCTION_13();
        v5 = (v30 + 96);
        v6 = *(v5 - 4);
        __swift_project_value_buffer(*(v5 - 5), qword_2800EC7E0);
        v41 = OUTLINED_FUNCTION_4_1();
        v42(v41);
        v9 = sub_266E9CF84();
        v43 = sub_266E9D1A4();
        if (OUTLINED_FUNCTION_12(v43))
        {
          v11 = "Unexpected parse type in input";
          goto LABEL_6;
        }

        v12 = *v5;
        break;
      case 2:
        if (qword_2800E8D80 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v5 = v0 + 10;
        v25 = v0[10];
        v6 = v0[7];
        v26 = v0[8];
        v27 = __swift_project_value_buffer(v6, qword_2800EC7E0);
        (*(v26 + 16))(v25, v27, v6);
        v9 = sub_266E9CF84();
        v28 = sub_266E9D1A4();
        if (OUTLINED_FUNCTION_12(v28))
        {
          v11 = "Unexpected state in execute()";
          goto LABEL_6;
        }

        v12 = *v5;
        break;
      case 3:
        sub_266E5B8B4();
        goto LABEL_37;
      case 4:
        swift_task_alloc();
        OUTLINED_FUNCTION_20();
        v0[21] = v21;
        *v21 = v22;
        v23 = sub_266E5AB00;
        goto LABEL_15;
      case 5:
        sub_266E9C504();
        goto LABEL_37;
      default:
        if (qword_2800E8D80 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        OUTLINED_FUNCTION_13();
        v5 = (v4 + 88);
        v6 = *(v5 - 3);
        __swift_project_value_buffer(*(v5 - 4), qword_2800EC7E0);
        v15 = OUTLINED_FUNCTION_4_1();
        v16(v15);
        v9 = sub_266E9CF84();
        v17 = sub_266E9D1A4();
        if (OUTLINED_FUNCTION_12(v17))
        {
          v11 = "Flow is in .initialized state in execute(). Ensure the right constructor is being used.";
          goto LABEL_6;
        }

        v12 = *v5;
        break;
    }
  }

  v20 = v0 + 7;
  v19 = v0[7];
  v18 = v20[1];

  (*(v18 + 8))(v12, v19);
  sub_266E9D374();
  OUTLINED_FUNCTION_21();
}

uint64_t sub_266E5A968()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266E5AA4C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9();
  v2(v1);

  OUTLINED_FUNCTION_8_0();

  return v3();
}

uint64_t sub_266E5AB00()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266E5ABE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_featureFlags + 24);
  v2 = *(v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_featureFlags + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_featureFlags), v1);
  if (((*(v2 + 16))(v1, v2) & 1) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState), *(v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState + 24));
  OUTLINED_FUNCTION_16();
  return sub_266E9C2D4() & 1;
}

uint64_t sub_266E5AC78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_266E9C7A4();
  OUTLINED_FUNCTION_3_2();
  v33 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_266E9CFA4();
  OUTLINED_FUNCTION_3_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_2800EC7E0);
  (*(v12 + 16))(v16, v17, v10);
  v18 = sub_266E9CF84();
  v19 = sub_266E9D1B4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_5_0();
    *v20 = 0;
    _os_log_impl(&dword_266E51000, v18, v19, "Target device resolution is required, pushing device resolution flow", v20, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  (*(v12 + 8))(v16, v10);
  *(v2 + 16) = 2;
  v21 = OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState;
  sub_266E5CE50(v2 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState, v37);
  type metadata accessor for SwitchProfileDeviceResolutionStrategy();
  v22 = swift_allocObject();
  sub_266E595F8(v37, v22 + 16);
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;
  *(v22 + 72) = 1;
  *(v22 + 80) = 0u;
  *(v22 + 96) = 0u;
  (*(v33 + 16))(v9, a1, v4);
  sub_266E5CE50(v2 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceResolutionProvider, v37);
  sub_266E5CE50(v2 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_outputPublisher, v36);
  sub_266E5CE50(v2 + v21, v35);
  sub_266E5CE50(v2 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_dialogProvider, v34);
  __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v26 = (v25 - v24);
  (*(v27 + 16))(v25 - v24);
  v28 = *v26;

  v30 = sub_266E5C8A8(v29, v9, v37, v36, v35, v28);
  __swift_destroy_boxed_opaque_existential_0(v34);
  *&v37[0] = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_266E5CDE8;
  *(v31 + 24) = v2;
  type metadata accessor for ExecutionDeviceResolutionFlow(0);
  sub_266E5CFFC(&qword_2800E92E0, type metadata accessor for ExecutionDeviceResolutionFlow, &unk_266E9F768);

  sub_266E9C4D4();
}

uint64_t sub_266E5B0C4()
{
  OUTLINED_FUNCTION_7_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_266E9C7E4();
  v1[10] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_18();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  OUTLINED_FUNCTION_19(v6);
  v1[13] = OUTLINED_FUNCTION_18();
  v7 = sub_266E9CFA4();
  v1[14] = v7;
  OUTLINED_FUNCTION_5_1(v7);
  v1[15] = v8;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E5B1F8()
{
  v36 = v0;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  v0[18] = v4;
  v5 = *(v3 + 16);
  v0[19] = v5;
  v0[20] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_266E9CF84();
  LOBYTE(v2) = sub_266E9D184();

  if (os_log_type_enabled(v6, v2))
  {
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v34[0] = v9;
    *v8 = 136315138;
    v10 = *(v7 + 24);
    if (v10)
    {
      v11 = [v10 description];
      v12 = sub_266E9D024();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    v18 = v0[17];
    v19 = v0[14];
    v20 = v0[15];
    v21 = sub_266E6E7D4(v12, v14, v34);

    *(v8 + 4) = v21;
    OUTLINED_FUNCTION_14();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_10();

    v16 = *(v20 + 8);
    v16(v18, v19);
  }

  else
  {
    v15 = v0[15];

    v16 = *(v15 + 8);
    v17 = OUTLINED_FUNCTION_16();
    (v16)(v17);
  }

  v0[21] = v16;
  v27 = v0[13];
  v28 = v0[9];
  sub_266E5CE50(v28 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState, (v0 + 2));
  v29 = *(v28 + 24);
  v30 = sub_266E9C464();
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v30);
  type metadata accessor for SwitchProfileFlowStrategy(0);
  swift_allocObject();
  v31 = v29;
  v0[22] = sub_266E5D640(v0 + 2, v29, v34, 0, 0, v27);
  sub_266E9C794();
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_266E5B4FC;

  return sub_266E5D8D8();
}

uint64_t sub_266E5B4FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_4();
  *v6 = v5;
  *v6 = *v2;
  v5[24] = v1;

  v7 = v4[12];
  v8 = v4[11];
  v9 = v4[10];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_266E5B76C;
  }

  else
  {
    v5[25] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_266E5B67C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_266E5B67C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 72);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_flowFactory), *(v2 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_flowFactory + 24));
  v3 = *(v2 + 24);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_16();
  sub_266E8EE84(v5, v6, v1, v3);

  sub_266E9C4F4();

  OUTLINED_FUNCTION_8_0();

  return v7();
}

uint64_t sub_266E5B76C()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[14];

  v1(v3, v2, v4);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D1A4();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_14();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_10();
  }

  v12 = v0[24];
  v13 = v0[21];
  v14 = v0[16];
  v15 = v0[14];

  v13(v14, v15);
  sub_266E9C504();

  OUTLINED_FUNCTION_8_0();

  return v16();
}

uint64_t sub_266E5B8B4()
{
  v1 = v0;
  v2 = sub_266E9CFA4();
  OUTLINED_FUNCTION_3_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  (*(v4 + 16))(v8, v9, v2);
  v10 = sub_266E9CF84();
  v11 = sub_266E9D194();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_5_0();
    *v12 = 0;
    _os_log_impl(&dword_266E51000, v10, v11, "Device resolution was required but none were found. Dialoging failure and completing the flow.", v12, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  (*(v4 + 8))(v8, v2);
  sub_266E5CE50(v1 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_outputPublisher, v14);
  sub_266E9BF44();
  swift_allocObject();

  v14[0] = sub_266E9BF34();
  sub_266E9C4E4();
}

uint64_t sub_266E5BAA8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_266E9CFA4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E5BB68, 0, 0);
}

uint64_t sub_266E5BB68()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 32), qword_2800EC7E0);
  v1 = OUTLINED_FUNCTION_4_1();
  v2(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (os_log_type_enabled(v3, v4))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_14();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_10();
  }

  v10 = OUTLINED_FUNCTION_16();
  v11(v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 56) = v12;
  *v12 = v13;
  v12[1] = sub_266E5BCCC;

  return sub_266E655EC();
}

uint64_t sub_266E5BCCC()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

void sub_266E5BDC8(void *a1)
{
  sub_266E9CFA4();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  if (!a1)
  {
    v9 = 3;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v9 = 5;
LABEL_7:
    *(v1 + 16) = v9;
    return;
  }

  if (a1 != 2)
  {
    v10 = *(v1 + 24);
    *(v1 + 24) = a1;
    v11 = a1;

    v9 = 4;
    goto LABEL_7;
  }

  v16 = v5;
  v17 = v8;
  v18 = v4;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v12 = __swift_project_value_buffer(v18, qword_2800EC7E0);
  (*(v16 + 16))(v17, v12, v18);
  v13 = sub_266E9CF84();
  v14 = sub_266E9D1A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_5_0();
    *v15 = 0;
    _os_log_impl(&dword_266E51000, v13, v14, "Unexpected device resolution result", v15, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v16 + 8))(v17, v18);
  sub_266E9D374();
  __break(1u);
}

uint64_t sub_266E5BFB8()
{
  sub_266E5CF94(OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_input + v0);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceResolutionProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_flowFactory));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_outputPublisher));
  sub_266E5D044(v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_identityDialogs);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_dialogProvider));
  return v0;
}

uint64_t sub_266E5C058()
{
  sub_266E5BFB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SwitchProfileWrapperFlow(uint64_t a1)
{
  result = qword_2800E92C0;
  if (!qword_2800E92C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266E5C104(uint64_t a1)
{
  sub_266E5C1C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_266E5C1C4(uint64_t a1)
{
  if (!qword_2800E92D0)
  {
    sub_266E9C7A4();
    v1 = sub_266E9D214();
    if (!v2)
    {
      atomic_store(v1, &qword_2800E92D0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SwitchProfileWrapperFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SwitchProfileWrapperFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x266E5C380);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266E5C3CC()
{
  result = qword_2800E92D8;
  if (!qword_2800E92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E92D8);
  }

  return result;
}

uint64_t sub_266E5C448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266E5C4F8;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266E5C4F8()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  v3 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_266E5C608()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E5C6A4;

  return sub_266E5A22C();
}

uint64_t sub_266E5C6A4()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

uint64_t sub_266E5C784(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SwitchProfileWrapperFlow(0);

  return sub_266E9C194();
}

uint64_t sub_266E5C7C4()
{
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_266E5C6A4;

  return sub_266E5BAA8(v3, v0);
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

void *sub_266E5C8A8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v43 = a5;
  v44 = a4;
  v45 = a3;
  v46 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for SwitchProfileDeviceResolutionStrategy();
  v57[3] = v15;
  v57[4] = &off_287876798;
  v57[0] = a1;
  v16 = type metadata accessor for BaseDialogProvider();
  v56[3] = v16;
  v56[4] = &off_287876528;
  v56[0] = a6;
  sub_266E5CE50(v57, v55);
  v17 = sub_266E9C7A4();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v14, a2, v17);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v17);
  sub_266E5CE50(a3, v54);
  sub_266E5CE50(a4, v53);
  sub_266E5CE50(a5, v52);
  sub_266E5CE50(v56, v51);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v55, v55[3]);
  MEMORY[0x28223BE20](v19);
  v21 = (&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v51, v51[3]);
  MEMORY[0x28223BE20](v23);
  v25 = (&v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v21;
  v28 = *v25;
  v50[3] = v15;
  v50[4] = &off_287876798;
  v50[0] = v27;
  v48 = v16;
  v49 = &off_287876528;
  v47[0] = v28;
  type metadata accessor for ExecutionDeviceResolutionFlow(0);
  v29 = swift_allocObject();
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v50, v15);
  MEMORY[0x28223BE20](v30);
  v32 = (&v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  MEMORY[0x28223BE20](v34);
  v36 = (&v42 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = *v32;
  v39 = *v36;
  v29[10] = v15;
  v29[11] = &off_287876798;
  v29[7] = v38;
  v29[25] = v16;
  v29[26] = &off_287876528;
  v29[22] = v39;
  __swift_destroy_boxed_opaque_existential_0(v43);
  __swift_destroy_boxed_opaque_existential_0(v44);
  __swift_destroy_boxed_opaque_existential_0(v45);
  (*(v18 + 8))(v46, v17);
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v57);
  v40 = OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_input;
  __swift_storeEnumTagSinglePayload(v29 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_input, 1, 1, v17);
  swift_beginAccess();
  sub_266E5CEB4(v14, v29 + v40);
  swift_endAccess();
  sub_266E595F8(v54, (v29 + 2));
  *(v29 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state) = 0x8000000000000000;
  sub_266E595F8(v53, (v29 + 12));
  sub_266E595F8(v52, (v29 + 17));
  __swift_destroy_boxed_opaque_existential_0(v47);
  __swift_destroy_boxed_opaque_existential_0(v50);
  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v55);
  return v29;
}

uint64_t sub_266E5CDEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266E5CE50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_266E5CEB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E5CF24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E5CF94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E5CFFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266E5D098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_10()
{

  JUMPOUT(0x26D5F66A0);
}

BOOL OUTLINED_FUNCTION_12(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return sub_266E9C7A4();
}

uint64_t sub_266E5D2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266E9CF74();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 17);
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_266E5D374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266E9CF74();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 17) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for Signpost.OpenSignpost(uint64_t a1)
{
  result = qword_2800E9300;
  if (!qword_2800E9300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266E5D46C(uint64_t a1)
{
  result = sub_266E9CF74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IdentitySignpost(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for IdentitySignpost(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_266E5D594()
{
  sub_266E5D5FC();
  result = sub_266E9D204();
  qword_2800E92F8 = result;
  return result;
}

unint64_t sub_266E5D5FC()
{
  result = qword_2800E9310;
  if (!qword_2800E9310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E9310);
  }

  return result;
}

uint64_t sub_266E5D640(void *a1, void *a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6)
{
  v7 = v6;
  v14 = OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_remoteDevice;
  *(v7 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_remoteDevice) = 0;
  sub_266E5CE50(a1, v7 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_deviceState);
  *(v7 + v14) = a2;
  sub_266E60D4C(a3, v17, &qword_2800E9368, "jG");
  type metadata accessor for Globals();
  swift_allocObject();
  v15 = a2;
  *(v7 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_globals) = sub_266E68864(v17);
  if (a4)
  {
  }

  else
  {
    type metadata accessor for UserDefaultsProvider();
    swift_allocObject();
    a4 = sub_266E7D84C();

    a5 = &off_2878763A0;
  }

  sub_266E54DA8(a3, &qword_2800E9368, "jG");
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  sub_266E60DB4(a6, v7 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_identifiedUserOverride);
  return v7;
}

uint64_t sub_266E5D788()
{
  v0 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v4 = v3 - v2;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  __swift_project_value_buffer(v0, qword_2800EC7E0);
  OUTLINED_FUNCTION_18_0();
  v5(v4);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (os_log_type_enabled(v6, v7))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_32(&dword_266E51000, v8, v9, "SwitchProfileFlowStrategy.actionForInput() called");
    OUTLINED_FUNCTION_7_1();
  }

  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  return sub_266E9C384();
}

uint64_t sub_266E5D8D8()
{
  OUTLINED_FUNCTION_7_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_266E9C7D4();
  v1[15] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v1[16] = v5;
  v1[17] = swift_task_alloc();
  v6 = sub_266E9C7E4();
  v1[18] = v6;
  OUTLINED_FUNCTION_5_1(v6);
  v1[19] = v7;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v8 = sub_266E9CFA4();
  v1[24] = v8;
  OUTLINED_FUNCTION_5_1(v8);
  v1[25] = v9;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266E5DA78()
{
  v95 = v1;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v3 = v1[24];
  __swift_project_value_buffer(v3, qword_2800EC7E0);
  v4 = OUTLINED_FUNCTION_17();
  v2(v4);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (OUTLINED_FUNCTION_12(v6))
  {
    v7 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_29(v7);
    OUTLINED_FUNCTION_21_0(&dword_266E51000, v8, v3, "SwitchProfileFlowStrategy.makeIntentFromParse() called");
    OUTLINED_FUNCTION_4_2();
  }

  v9 = v1[29];
  v10 = v1[24];
  v11 = v1[25];
  v12 = v1[12];

  v13 = *(v11 + 8);
  v13(v9, v10);
  sub_266E7B898(v12, v1 + 7);
  if (!v1[10])
  {
    v91 = v2;
    v25 = v1[23];
    v26 = v1[18];
    v27 = v1[19];
    v28 = v1[12];
    sub_266E54DA8((v1 + 7), &unk_2800E9590, &unk_266E9EC80);
    v29 = *(v27 + 16);
    v29(v25, v28, v26);
    v30 = OUTLINED_FUNCTION_6_0();
    if (v31(v30) != *MEMORY[0x277D5C150])
    {
      goto LABEL_21;
    }

    v32 = v1[22];
    v34 = v1[16];
    v33 = v1[17];
    v88 = v1[15];
    v29(v32, v1[23], v1[18]);
    v35 = OUTLINED_FUNCTION_6_0();
    v36(v35);
    (*(v34 + 32))(v33, v32, v88);
    v37 = sub_266E9C7B4();
    v39 = v38;
    if (qword_2800E8D50 != -1)
    {
      swift_once();
    }

    if (v37 == *(qword_2800EC768 + 96) && v39 == *(qword_2800EC768 + 104))
    {
    }

    else
    {
      v41 = sub_266E9D3E4();

      if ((v41 & 1) == 0)
      {
        (*(v1[16] + 8))(v1[17], v1[15]);
LABEL_21:
        v42 = v1[21];
        v43 = v1[18];
        v44 = v1[12];
        (v91)(v1[26], v0, v1[24]);
        v29(v42, v44, v43);
        v45 = sub_266E9CF84();
        v46 = sub_266E9D1A4();
        v47 = os_log_type_enabled(v45, v46);
        v48 = v1[26];
        v89 = v1[24];
        v49 = v1[21];
        if (v47)
        {
          v86 = v46;
          v50 = v1[20];
          v51 = v29;
          v90 = v13;
          v52 = v1[18];
          v87 = v1[26];
          v53 = OUTLINED_FUNCTION_16_0();
          v54 = OUTLINED_FUNCTION_20_0();
          v94 = v54;
          *v53 = 136315138;
          v51(v50, v49, v52);
          v55 = sub_266E9D034();
          v57 = v56;
          v58 = OUTLINED_FUNCTION_23();
          v92 = v59;
          v59(v58, v52);
          v60 = sub_266E6E7D4(v55, v57, &v94);

          *(v53 + 4) = v60;
          _os_log_impl(&dword_266E51000, v45, v86, "Unable to make intent from parse %s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v54);
          OUTLINED_FUNCTION_4_0();
          OUTLINED_FUNCTION_7_1();

          v90(v87, v89);
        }

        else
        {
          v61 = v1[18];

          v62 = OUTLINED_FUNCTION_23();
          v92 = v63;
          v63(v62, v61);
          v13(v48, v89);
        }

        v64 = v1[23];
        v65 = v1[18];
        type metadata accessor for IdentityFlowError();
        swift_allocObject();
        v66 = sub_266E89698(0);
        sub_266E60D04(&qword_2800E94F0, type metadata accessor for IdentityFlowError, &unk_266EA07E0);
        swift_allocError();
        *v67 = v66;
        swift_willThrow();
        v92(v64, v65);

        OUTLINED_FUNCTION_31();

        __asm { BRAA            X1, X16 }
      }
    }

    v70 = v1[13];
    if (!v70)
    {
      type metadata accessor for SwitchProfileIntent();
      v71 = sub_266E9C7C4();
      sub_266E596AC(v71);

      v70 = 0;
    }

    (v91)(v1[27], v0, v1[24]);
    v72 = v70;
    v73 = sub_266E9CF84();
    v74 = sub_266E9D194();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_29(v75);
      OUTLINED_FUNCTION_21_0(&dword_266E51000, v76, v74, "Finished creating direct invocation intent from parse");
      OUTLINED_FUNCTION_4_2();
    }

    v77 = v1[27];
    v78 = v1[24];
    v93 = v1[23];
    v80 = v1[18];
    v79 = v1[19];
    v81 = v1[16];
    v82 = v1[17];
    v83 = v1[15];

    v13(v77, v78);
    (*(v81 + 8))(v82, v83);
    (*(v79 + 8))(v93, v80);
LABEL_34:

    OUTLINED_FUNCTION_31();

    __asm { BRAA            X2, X16 }
  }

  sub_266E595F8((v1 + 7), (v1 + 2));
  type metadata accessor for SwitchProfileIntent();
  v14 = sub_266E68424(v1 + 2);
  v1[30] = v14;
  v15 = OUTLINED_FUNCTION_25();
  v2(v15);
  v16 = sub_266E9CF84();
  v17 = sub_266E9D194();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_29(v18);
    OUTLINED_FUNCTION_21_0(&dword_266E51000, v19, v17, "Finished creating intent from parse");
    OUTLINED_FUNCTION_4_2();
  }

  v20 = v1[28];
  v21 = v1[24];

  v13(v20, v21);
  if ([v14 switchType] != 1)
  {
    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    goto LABEL_34;
  }

  v22 = swift_task_alloc();
  v1[31] = v22;
  *v22 = v1;
  v22[1] = sub_266E5E2A4;
  OUTLINED_FUNCTION_31();

  return sub_266E5E614();
}

uint64_t sub_266E5E2A4()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266E5E38C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[30];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_266E5E470@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  OUTLINED_FUNCTION_19(v4);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_2_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  sub_266E60D4C(v1 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_identifiedUserOverride, v2, &qword_2800E91C0, &unk_266E9EC70);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_266E54DA8(v2, &qword_2800E91C0, &unk_266E9EC70);
    sub_266E9CCF4();
    if (!static SiriEnvironment.getUserIdentity()())
    {
      v14 = 1;
      return __swift_storeEnumTagSinglePayload(a1, v14, 1, v6);
    }

    sub_266E9C674();
  }

  else
  {
    v13 = *(v8 + 32);
    v13(v12, v2, v6);
    v13(a1, v12, v6);
  }

  v14 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v14, 1, v6);
}

uint64_t sub_266E5E614()
{
  OUTLINED_FUNCTION_7_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_266E9CFA4();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_1(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E5E6E4()
{
  sub_266E5EB38();
  if (v4)
  {
    sub_266E60CAC(v3, v4, *(v0 + 16));
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = __swift_project_value_buffer(v6, qword_2800EC7E0);
    (*(v7 + 16))(v5, v8, v6);

    v9 = sub_266E9CF84();
    v10 = sub_266E9D194();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 72);
    v13 = *(v0 + 32);
    v14 = *(v0 + 40);
    if (v11)
    {
      v15 = OUTLINED_FUNCTION_16_0();
      v52 = OUTLINED_FUNCTION_20_0();
      *v15 = 136315138;
      v16 = OUTLINED_FUNCTION_30();
      *(v15 + 4) = sub_266E6E7D4(v16, v17, v18);
      _os_log_impl(&dword_266E51000, v9, v10, "Setting iCloudAltDSID =%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_4_0();
    }

    (*(v14 + 8))(v12, v13);
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    __swift_project_value_buffer(*(v0 + 32), qword_2800EC7E0);
    v19 = OUTLINED_FUNCTION_17();
    v2(v19);
    v20 = sub_266E9CF84();
    v21 = sub_266E9D184();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_29(v22);
      _os_log_impl(&dword_266E51000, v20, v21, "Did not find iCloudAltDSID", v1, 2u);
      OUTLINED_FUNCTION_4_2();
    }

    v23 = *(v0 + 64);
    v24 = *(v0 + 32);
    v25 = *(v0 + 40);

    v26 = *(v25 + 8);
    v26(v23, v24);
    sub_266E5EDE4();
    if (v28)
    {
      sub_266E60C54(v27, v28, *(v0 + 16));
      v29 = OUTLINED_FUNCTION_30();
      v2(v29);

      v30 = sub_266E9CF84();
      v31 = sub_266E9D194();

      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 56);
      v34 = *(v0 + 32);
      if (v32)
      {
        v51 = *(v0 + 56);
        v35 = OUTLINED_FUNCTION_16_0();
        v53 = OUTLINED_FUNCTION_20_0();
        *v35 = 136315138;
        v36 = OUTLINED_FUNCTION_22_0();
        v39 = sub_266E6E7D4(v36, v37, v38);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_266E51000, v30, v31, "Setting homeUserID =%s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_4_0();

        v40 = v51;
      }

      else
      {

        v40 = v33;
      }

      v48 = v34;
    }

    else
    {
      v41 = OUTLINED_FUNCTION_30();
      v2(v41);
      v42 = sub_266E9CF84();
      v43 = sub_266E9D1A4();
      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 48);
      v46 = *(v0 + 32);
      if (v44)
      {
        v47 = OUTLINED_FUNCTION_5_0();
        *v47 = 0;
        _os_log_impl(&dword_266E51000, v42, v43, "No IDs available; not setting ID in intent", v47, 2u);
        OUTLINED_FUNCTION_7_1();
      }

      v40 = v45;
      v48 = v46;
    }

    v26(v40, v48);
  }

  v49 = *(v0 + 8);

  return v49();
}

void sub_266E5EB38()
{
  OUTLINED_FUNCTION_35();
  v0 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_2();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = sub_266E68830();
  if ((v10 & 1) != 0 && (v10 = sub_266E7D6EC(), v11))
  {
    v12 = v10;
    v13 = v11;
    if (qword_2800E8D80 != -1)
    {
      v10 = OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    OUTLINED_FUNCTION_3_3(v10, qword_2800EC7E0);
    (*(v2 + 16))(v9);

    v14 = sub_266E9CF84();
    v15 = sub_266E9D194();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_16_0();
      v17 = OUTLINED_FUNCTION_20_0();
      v25 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_266E6E7D4(v12, v13, &v25);
      _os_log_impl(&dword_266E51000, v14, v15, "default found with iCloudAltDSID = %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();
    }

    v18 = OUTLINED_FUNCTION_25();
    v19(v18);
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      v10 = OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    OUTLINED_FUNCTION_3_3(v10, qword_2800EC7E0);
    (*(v2 + 16))(v6);
    v20 = sub_266E9CF84();
    v21 = sub_266E9D194();
    if (OUTLINED_FUNCTION_12(v21))
    {
      *OUTLINED_FUNCTION_5_0() = 0;
      OUTLINED_FUNCTION_10_0(&dword_266E51000, v22, v23, "Looking up MAF for recognized iCloudAltDSID");
      OUTLINED_FUNCTION_4_0();
    }

    (*(v2 + 8))(v6, v0);
    sub_266E5F4BC();
  }

  OUTLINED_FUNCTION_33();
}

void sub_266E5EDE4()
{
  v0 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v4 = v3 - v2;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  __swift_project_value_buffer(v0, qword_2800EC7E0);
  OUTLINED_FUNCTION_18_0();
  v5(v4);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (os_log_type_enabled(v6, v7))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_32(&dword_266E51000, v8, v9, "Looking up MAF for recognized homeUserID");
    OUTLINED_FUNCTION_7_1();
  }

  v10 = OUTLINED_FUNCTION_6_0();
  v11(v10);
  sub_266E5EF34();
}

void sub_266E5EF34()
{
  OUTLINED_FUNCTION_35();
  v1 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_2();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v64 = (v63 - v10);
  MEMORY[0x28223BE20](v9);
  v12 = v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  OUTLINED_FUNCTION_19(v13);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v14);
  v16 = v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  OUTLINED_FUNCTION_19(v17);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_2_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_1();
  v25 = v24 - v23;
  sub_266E5E470(v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v19) == 1)
  {
    v26 = sub_266E54DA8(v0, &qword_2800E91C0, &unk_266E9EC70);
LABEL_10:
    if (qword_2800E8D80 != -1)
    {
      v26 = OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    OUTLINED_FUNCTION_3_3(v26, qword_2800EC7E0);
    OUTLINED_FUNCTION_18_0();
    v43(v7);
    v44 = sub_266E9CF84();
    v45 = sub_266E9D1A4();
    if (OUTLINED_FUNCTION_12(v45))
    {
      *OUTLINED_FUNCTION_5_0() = 0;
      OUTLINED_FUNCTION_10_0(&dword_266E51000, v46, v47, "No homeUserID found.");
      OUTLINED_FUNCTION_4_0();
    }

    (*(v3 + 8))(v7, v1);
    goto LABEL_15;
  }

  (*(v21 + 32))(v25, v0, v19);
  sub_266E9C3A4();
  if (!v27)
  {
    v41 = OUTLINED_FUNCTION_14_0();
    v26 = v42(v41);
    goto LABEL_10;
  }

  v63[1] = v21;
  sub_266E9BE54();
  v28 = sub_266E9BE84();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v28);
  v30 = sub_266E54DA8(v16, &qword_2800E9360, &qword_266E9EE20);
  if (EnumTagSinglePayload == 1)
  {
    if (qword_2800E8D80 != -1)
    {
      v30 = OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    OUTLINED_FUNCTION_3_3(v30, qword_2800EC7E0);
    OUTLINED_FUNCTION_18_0();
    v31 = v64;
    v32(v64);

    v33 = sub_266E9CF84();
    v34 = sub_266E9D1A4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_16_0();
      v36 = OUTLINED_FUNCTION_20_0();
      v65 = v36;
      *v35 = 136315138;
      v37 = OUTLINED_FUNCTION_22_0();
      v40 = sub_266E6E7D4(v37, v38, v39);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_266E51000, v33, v34, "Invalid homeUserID='%s' found.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_8_1();

      (*(v3 + 8))(v64, v1);
    }

    else
    {

      (*(v3 + 8))(v31, v1);
    }

    v59 = OUTLINED_FUNCTION_14_0();
    v60(v59);
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      v30 = OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    OUTLINED_FUNCTION_3_3(v30, qword_2800EC7E0);
    OUTLINED_FUNCTION_18_0();
    v48(v12);

    v49 = sub_266E9CF84();
    v50 = sub_266E9D184();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_16_0();
      v64 = v49;
      v52 = v51;
      v53 = OUTLINED_FUNCTION_20_0();
      v65 = v53;
      *v52 = 136315138;
      v54 = OUTLINED_FUNCTION_22_0();
      *(v52 + 4) = sub_266E6E7D4(v54, v55, v56);
      v57 = v50;
      v58 = v64;
      _os_log_impl(&dword_266E51000, v64, v57, "Found new recognized user with homeUserID=%s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_8_1();
    }

    else
    {
    }

    (*(v3 + 8))(v12, v1);
    v61 = OUTLINED_FUNCTION_14_0();
    v62(v61);
  }

LABEL_15:
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_33();
}

void sub_266E5F4BC()
{
  OUTLINED_FUNCTION_35();
  sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_5_2();
  v3 = v1 - v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v38[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  OUTLINED_FUNCTION_19(v7);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  v10 = &v38[-v9];
  v11 = sub_266E9C464();
  OUTLINED_FUNCTION_2_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  sub_266E5E470(v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v18 = sub_266E54DA8(v10, &qword_2800E91C0, &unk_266E9EC70);
LABEL_10:
    if (qword_2800E8D80 != -1)
    {
      v18 = OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    OUTLINED_FUNCTION_3_3(v18, qword_2800EC7E0);
    OUTLINED_FUNCTION_28();
    v31(v3);
    v32 = sub_266E9CF84();
    v33 = sub_266E9D1A4();
    if (OUTLINED_FUNCTION_12(v33))
    {
      *OUTLINED_FUNCTION_5_0() = 0;
      OUTLINED_FUNCTION_10_0(&dword_266E51000, v34, v35, "No iCloudAltDSID found.");
      OUTLINED_FUNCTION_4_0();
    }

    v36 = OUTLINED_FUNCTION_25();
    v37(v36);
    goto LABEL_15;
  }

  (*(v13 + 32))(v17, v10, v11);
  v19 = sub_266E9C3D4();
  if (!v20)
  {
    v18 = (*(v13 + 8))(v17, v11);
    goto LABEL_10;
  }

  v21 = v19;
  v22 = v20;
  if (qword_2800E8D80 != -1)
  {
    v19 = OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  OUTLINED_FUNCTION_3_3(v19, qword_2800EC7E0);
  OUTLINED_FUNCTION_28();
  v23(v6);

  v24 = sub_266E9CF84();
  v25 = sub_266E9D184();

  v40 = v24;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_16_0();
    v39 = v25;
    v27 = v26;
    v28 = OUTLINED_FUNCTION_20_0();
    v41 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_266E6E7D4(v21, v22, &v41);
    _os_log_impl(&dword_266E51000, v40, v39, "Found new recognized user with iCloudAltDSID=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_2();
  }

  v29 = OUTLINED_FUNCTION_30();
  v30(v29);
  (*(v13 + 8))(v17, v11);
LABEL_15:
  OUTLINED_FUNCTION_33();
}

uint64_t sub_266E5F878()
{
  swift_unknownObjectRelease();
  sub_266E54DA8(v0 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_identifiedUserOverride, &qword_2800E91C0, &unk_266E9EC70);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_deviceState));

  return v0;
}

uint64_t sub_266E5F8E8()
{
  sub_266E5F878();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SwitchProfileFlowStrategy(uint64_t a1)
{
  result = qword_2800E9330;
  if (!qword_2800E9330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266E5F994(uint64_t a1)
{
  sub_266E5FA50(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_266E5FA50(uint64_t a1)
{
  if (!qword_2800E9340)
  {
    sub_266E9C464();
    v1 = sub_266E9D214();
    if (!v2)
    {
      atomic_store(v1, &qword_2800E9340);
    }
  }
}

uint64_t sub_266E5FAC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E5FB68;

  return sub_266E5D8D8();
}

uint64_t sub_266E5FB68()
{
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_266E5FC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SwitchProfileFlowStrategy(0);

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_266E5FCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266E60E24;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_266E5FD70(uint64_t a1, void *a2)
{
  v37 = a2;
  v3 = sub_266E9C1D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_266E9CFA4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = *(v2 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_remoteDevice);
  if (v14)
  {
    v15 = qword_2800E8D80;
    v16 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v7, qword_2800EC7E0);
    (*(v8 + 16))(v13, v17, v7);
    v18 = v16;
    v19 = sub_266E9CF84();
    v20 = sub_266E9D194();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v14;
      v23 = v18;
      _os_log_impl(&dword_266E51000, v19, v20, "makeIntentExecutionBehavior: handle on targetDevice: %@", v21, 0xCu);
      sub_266E54DA8(v22, &qword_2800E9490, qword_266E9F590);
      MEMORY[0x26D5F66A0](v22, -1, -1);
      MEMORY[0x26D5F66A0](v21, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    sub_266E9C254();
    v24 = sub_266E9C234();
  }

  else
  {
    v35 = v6;
    v36 = v4;
    v25 = v37;
    if (qword_2800E8D80 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v7, qword_2800EC7E0);
    (*(v8 + 16))(v11, v26, v7);
    v27 = sub_266E9CF84();
    v28 = sub_266E9D194();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_266E51000, v27, v28, "IntentExecutionBehaviorStrategy.makeIntentExecutionBehavior", v29, 2u);
      MEMORY[0x26D5F66A0](v29, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    sub_266E9C254();
    v30 = objc_allocWithZone(type metadata accessor for SwitchProfileIntentHandler());

    [v30 init];
    type metadata accessor for SwitchProfileIntent();
    v31 = v25;
    v32 = v35;
    sub_266E9C1C4();
    v24 = sub_266E9C244();
    (*(v36 + 8))(v32, v3);
  }

  return v24;
}

void sub_266E601C4(uint64_t a1)
{
  OUTLINED_FUNCTION_35();
  v43 = v2;
  v3 = sub_266E9C1D4();
  OUTLINED_FUNCTION_2_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_2();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  v21 = *(v1 + 104);
  if (v21)
  {
    v22 = qword_2800E8D80;
    v23 = v21;
    v24 = v23;
    if (v22 != -1)
    {
      v23 = OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    OUTLINED_FUNCTION_3_3(v23, qword_2800EC7E0);
    OUTLINED_FUNCTION_28();
    v25(v20);
    v26 = v24;
    v27 = sub_266E9CF84();
    v28 = sub_266E9D194();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_16_0();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v21;
      v31 = v26;
      _os_log_impl(&dword_266E51000, v27, v28, "makeIntentExecutionBehavior: handle on targetDevice: %@", v29, 0xCu);
      sub_266E54DA8(v30, &qword_2800E9490, qword_266E9F590);
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_4_2();
    }

    (*(v12 + 8))(v20, v10);
    sub_266E9C254();
    sub_266E9C234();
  }

  else
  {
    v41 = v9;
    v42 = v5;
    v32 = v43;
    if (qword_2800E8D80 != -1)
    {
      v18 = OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    OUTLINED_FUNCTION_3_3(v18, qword_2800EC7E0);
    OUTLINED_FUNCTION_28();
    v33(v16);
    v34 = sub_266E9CF84();
    v35 = sub_266E9D194();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_5_0();
      *v36 = 0;
      _os_log_impl(&dword_266E51000, v34, v35, "IntentExecutionBehaviorStrategy.makeIntentExecutionBehavior", v36, 2u);
      OUTLINED_FUNCTION_8_1();
    }

    (*(v12 + 8))(v16, v10);
    sub_266E9C254();
    v37 = objc_allocWithZone(type metadata accessor for SwitchProfileIntentHandler());

    [v37 init];
    type metadata accessor for SwitchProfileIntent();
    v38 = v32;
    v39 = v41;
    OUTLINED_FUNCTION_25();
    sub_266E9C1C4();
    sub_266E9C244();
    (*(v42 + 8))(v39, v3);
  }

  OUTLINED_FUNCTION_33();
}

uint64_t sub_266E60568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SwitchProfileFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_266E60E24;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_266E60638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SwitchProfileFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_266E60E24;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_266E60708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SwitchProfileFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_266E60E24;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_266E607D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SwitchProfileFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_266E608B8;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_266E608B8()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_266E609A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SwitchProfileFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_266E60E24;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_266E60A80(uint64_t a1, void *a2)
{
  v3 = sub_266E5FD70(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

void sub_266E60BE0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_266E60C54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266E9D014();
  [a3 setHomeUserId_];
}

void sub_266E60CAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266E9D014();
  [a3 setICloudAltDSID_];
}

uint64_t sub_266E60D04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266E60D4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_266E60DB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_4_2()
{

  JUMPOUT(0x26D5F66A0);
}

void OUTLINED_FUNCTION_7_1()
{

  JUMPOUT(0x26D5F66A0);
}

void OUTLINED_FUNCTION_8_1()
{

  JUMPOUT(0x26D5F66A0);
}

void OUTLINED_FUNCTION_10_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_21_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_32(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_266E9C464();
}

uint64_t sub_266E61038(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
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

uint64_t sub_266E61078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266E610E0()
{
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  sub_266E9D294();
  v8 = v12;
  MEMORY[0x26D5F5CB0](0xD000000000000010, 0x8000000266EA1F10);
  v12 = *v0;
  v11 = *v0;
  sub_266E56C28(&v12, &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C8, &unk_266E9ED50);
  v1 = sub_266E9D034();
  MEMORY[0x26D5F5CB0](v1);

  MEMORY[0x26D5F5CB0](0x3D6B63696E202CLL, 0xE700000000000000);
  v10 = v0[4];
  v11 = v10;
  sub_266E56C28(&v11, &v9);
  v2 = sub_266E9D034();
  MEMORY[0x26D5F5CB0](v2);

  MEMORY[0x26D5F5CB0](0x6C69666F7270202CLL, 0xEE003D656D614E65);
  v9 = v0[3];
  v10 = v9;
  sub_266E56C28(&v10, &v7);
  v3 = sub_266E9D034();
  MEMORY[0x26D5F5CB0](v3);

  MEMORY[0x26D5F5CB0](0x616C70736964202CLL, 0xEE003D656D614E79);
  v9 = v0[5];
  v7 = v0[5];
  sub_266E56C28(&v9, &v6);
  v4 = sub_266E9D034();
  MEMORY[0x26D5F5CB0](v4);

  MEMORY[0x26D5F5CB0](93, 0xE100000000000000);
  return v8;
}

uint64_t sub_266E612CC(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_266E9D3E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[2] == a2[2] && v7 == v8;
    if (!v9 && (sub_266E9D3E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = a1[5];
  v11 = a2[5];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = a1[4] == a2[4] && v10 == v11;
    if (!v12 && (sub_266E9D3E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = a1[7];
  v14 = a2[7];
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = a1[6] == a2[6] && v13 == v14;
    if (!v15 && (sub_266E9D3E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v16 = a1[9];
  v17 = a2[9];
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    v18 = a1[8] == a2[8] && v16 == v17;
    if (!v18 && (sub_266E9D3E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v19 = a1[11];
  v20 = a2[11];
  if (v19)
  {
    if (v20)
    {
      v21 = a1[10] == a2[10] && v19 == v20;
      if (v21 || (sub_266E9D3E4() & 1) != 0)
      {
        goto LABEL_53;
      }
    }

    return 0;
  }

  if (v20)
  {
    return 0;
  }

LABEL_53:
  v22 = a1[12];
  v23 = a2[12];

  return sub_266E6146C(v22, v23);
}

uint64_t sub_266E6146C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_266E9D484();

      sub_266E9D074();
      v15 = sub_266E9D4A4();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_266E9D3E4();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266E6161C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_266E6165C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266E616BC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UserAccount(0);
  v5 = OUTLINED_FUNCTION_19(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_6();
  v6 = OUTLINED_FUNCTION_21_1();
  sub_266E65144(v6, v7, v8);
  sub_266E5CE50(a1, v16);
  __swift_mutable_project_boxed_opaque_existential_1(v16, v16[3]);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  (*(v12 + 16))(v11 - v10);
  sub_266E648A8();
  v14 = v13;
  result = __swift_destroy_boxed_opaque_existential_0(v16);
  *a2 = v14;
  return result;
}

uint64_t sub_266E617FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_266E8ACA4(0, v1, 0);
  v2 = v31;
  result = sub_266E64E40(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v1;
  v27 = v3 + 56;
  v28 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v29 = v5;
      result = sub_266E9D044();
      v11 = result;
      v13 = v12;
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_266E8ACA4((v14 > 1), v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = v31 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v27;
      v3 = v28;
      v17 = 1 << *(v28 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v27 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v28 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_266E64E80(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_266E64E80(v7, v29, 0);
      }

LABEL_19:
      if (++v8 == v26)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v28 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_266E61A38()
{
  sub_266E9D294();

  type metadata accessor for UserAccount(0);
  v0 = OUTLINED_FUNCTION_18_1();
  v1 = MEMORY[0x26D5F5D00](v0);
  MEMORY[0x26D5F5CB0](v1);

  MEMORY[0x26D5F5CB0](125, 0xE100000000000000);
  return 0xD000000000000014;
}

void sub_266E61AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35();
  a19 = v20;
  a20 = v21;
  v202 = v22;
  v24 = v23;
  v26 = v25;
  v204 = v27;
  v28 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  OUTLINED_FUNCTION_19(v29);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v30);
  v32 = &v201 - v31;
  v213 = type metadata accessor for UserAccount(0);
  OUTLINED_FUNCTION_3_2();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_2();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = (&v201 - v39);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v45);
  v47 = &v201 - v46;
  v48 = *(v26 + 16);
  v229 = v34;
  v222 = v40;
  if (v48)
  {
    v224 = v24;
    v49 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v50 = v34;
    v201 = v26;
    v227 = v49;
    v34 = v26 + v49;
    v51 = MEMORY[0x277D84F90];
    v226 = *(v50 + 72);
    v203 = v32;
    while (1)
    {
      v52 = v51;
      OUTLINED_FUNCTION_0_6();
      v53 = OUTLINED_FUNCTION_19_0();
      sub_266E65144(v53, v54, v55);
      sub_266E64B68(v47, v32);
      v56 = sub_266E9BE84();
      if (__swift_getEnumTagSinglePayload(v32, 1, v56) == 1)
      {
        break;
      }

      v57 = sub_266E9BE64();
      v59 = v58;
      (*(*(v56 - 8) + 8))(v32, v56);
      if (!*(v224 + 16))
      {

        goto LABEL_10;
      }

      v60 = sub_266E97FDC(v57, v59);
      v62 = v61;

      v51 = v52;
      if (v62)
      {
        v63 = *(v224 + 56) + 104 * v60;
        v64 = *(v63 + 8);
        v65 = *(v63 + 72);
        v218 = *(v63 + 64);
        v220 = v65;
        if (v64)
        {
          v214 = *v63;
          OUTLINED_FUNCTION_10_1();
          v67 = &v47[v66];
          v68 = *(v67 + 3);
          v212 = *(v67 + 2);
          v69 = *(v67 + 5);
          v211 = *(v67 + 4);
          v70 = *(v67 + 7);
          v216 = *(v67 + 6);
          v71 = *(v67 + 11);
          v217 = *(v67 + 10);
          v72 = v64;
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_10_1();
        v82 = &v47[v81];
        v83 = *&v47[v81];
        v72 = *&v47[v81 + 8];
        v68 = *&v47[v81 + 24];
        v212 = *&v47[v81 + 16];
        v85 = *&v47[v81 + 32];
        v84 = *&v47[v81 + 40];
        v211 = v85;
        v219 = v84;
        v86 = *(v82 + 6);
        v87 = *(v82 + 7);
        v88 = *(v82 + 11);
        v217 = *(v82 + 10);
        v216 = v86;
        if (v72)
        {
          v89 = v88;
          v214 = v83;

          v71 = v89;
          v70 = v87;
          v69 = v219;
LABEL_20:
          OUTLINED_FUNCTION_24(v71, MEMORY[0x277D84FA0]);

          v219 = v69;

          v90 = OUTLINED_FUNCTION_8_2();
          v206 = v72;
          sub_266E63CC4(v90, v214, v72);

          v87 = v70;
LABEL_21:
          v91 = v218;
          if (v68)
          {

            v92 = OUTLINED_FUNCTION_8_2();
            sub_266E63CC4(v92, v212, v68);
          }

          v208 = v68;
          v93 = v219;
          v94 = v220;
          if (v219)
          {

            v95 = OUTLINED_FUNCTION_8_2();
            sub_266E63CC4(v95, v211, v93);
          }

          if (v94)
          {

            v96 = OUTLINED_FUNCTION_8_2();
            sub_266E63CC4(v96, v91, v94);
          }

          v97 = v216;
          if (v87)
          {

            v98 = OUTLINED_FUNCTION_8_2();
            sub_266E63CC4(v98, v97, v87);
          }

          v99 = v215;
          v100 = v217;
          if (v215)
          {

            v101 = OUTLINED_FUNCTION_8_2();
            sub_266E63CC4(v101, v100, v99);
          }

          v207 = v87;
          v205 = v231;
        }

        else
        {
          if (v68 || v219 || v220 || v87 || v88)
          {
            v214 = v83;
            OUTLINED_FUNCTION_24(v88, MEMORY[0x277D84FA0]);

            v206 = 0;
            goto LABEL_21;
          }

          memcpy(v233, v82, 0x68uLL);
          v205 = v233[12];
          v217 = v233[10];
          v215 = v233[11];
          v218 = v233[8];
          v220 = v233[9];
          v216 = v233[6];
          v207 = v233[7];
          v211 = v233[4];
          v219 = v233[5];
          v212 = v233[2];
          v208 = v233[3];
          v214 = v233[0];
          v206 = v233[1];
          sub_266E64D5C(v233, &v231);
        }

        v102 = v213;
        v103 = &v47[*(v213 + 24)];
        v105 = *v103;
        v104 = *(v103 + 1);
        v106 = v209;
        sub_266E64B68(v47, v209);
        v107 = &v47[v102[5]];
        v108 = *v107;
        v109 = *(v107 + 1);
        LOBYTE(v107) = v47[v102[8]];
        v110 = (v106 + v102[6]);
        *v110 = v105;
        v110[1] = v104;
        v111 = (v106 + v102[5]);
        *v111 = v108;
        v111[1] = v109;
        *(v106 + v102[8]) = v107;
        v112 = (v106 + v102[7]);
        v113 = v206;
        *v112 = v214;
        v112[1] = v113;
        v114 = v208;
        v112[2] = v212;
        v112[3] = v114;
        v115 = v219;
        v112[4] = v211;
        v112[5] = v115;
        v116 = v207;
        v112[6] = v216;
        v112[7] = v116;
        v117 = v220;
        v112[8] = v218;
        v112[9] = v117;
        v118 = v215;
        v112[10] = v217;
        v112[11] = v118;
        v112[12] = v205;
        OUTLINED_FUNCTION_0_6();
        sub_266E65144(v106, v210, v119);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = OUTLINED_FUNCTION_12_0();
          v51 = sub_266E55C04(v125, v126, v127, v51);
        }

        v32 = v203;
        v75 = *(v51 + 16);
        v120 = *(v51 + 24);
        v76 = v75 + 1;
        if (v75 >= v120 >> 1)
        {
          v51 = OUTLINED_FUNCTION_15(v120);
        }

        OUTLINED_FUNCTION_1_5();
        sub_266E651A4(v209, v121);
        v77 = &v232;
        goto LABEL_16;
      }

LABEL_11:
      OUTLINED_FUNCTION_0_6();
      sub_266E65144(v47, v230, v73);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v122 = OUTLINED_FUNCTION_12_0();
        v51 = sub_266E55C04(v122, v123, v124, v51);
      }

      v75 = *(v51 + 16);
      v74 = *(v51 + 24);
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v51 = OUTLINED_FUNCTION_15(v74);
      }

      v77 = &a12;
LABEL_16:
      v78 = *(v77 - 32);
      OUTLINED_FUNCTION_1_5();
      sub_266E651A4(v47, v79);
      *(v51 + 16) = v76;
      v80 = v226;
      sub_266E64BD8(v78, v51 + v227 + v75 * v226);
      v34 += v80;
      if (!--v48)
      {

        OUTLINED_FUNCTION_22_1();
        v40 = v222;
        goto LABEL_45;
      }
    }

    sub_266E651FC(v32, &qword_2800E9360, &qword_266E9EE20);
LABEL_10:
    v51 = v52;
    goto LABEL_11;
  }

  v51 = MEMORY[0x277D84F90];
LABEL_45:
  v128 = v204;
  *(v204 + 40) = v51;
  sub_266E5CE50(v202, v128);

  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9378, &qword_266E9EE30);
  v130 = sub_266E9CFE4();
  v231 = v130;
  v131 = *(v51 + 16);
  v227 = v51;
  v132 = v225;
  v230 = v131;
  if (!v131)
  {
LABEL_71:
    *(v204 + 48) = v130;
    v172 = 0;
    v233[0] = sub_266E9CFE4();
    v173 = v221;
    while (v131 != v172)
    {
      if (v172 >= *(v51 + 16))
      {
        __break(1u);
        goto LABEL_91;
      }

      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_0_6();
      sub_266E65144(v174, v40, v175);
      sub_266E62AA4(v233, v40);
      ++v172;
      OUTLINED_FUNCTION_1_5();
      sub_266E651A4(v40, v176);
    }

    *(v204 + 56) = v233[0];
    v177 = v213;
    v40 = sub_266E9CFE4();
    if (!v131)
    {
LABEL_89:
      __swift_destroy_boxed_opaque_existential_0(v202);

      *(v204 + 64) = v40;
      OUTLINED_FUNCTION_33();
      return;
    }

    v178 = 0;
    v179 = v173 + *(v177 + 20);
    OUTLINED_FUNCTION_13_0();
    v226 = v51 + v180;
    while (1)
    {
      if (v178 >= *(v51 + 16))
      {
        goto LABEL_92;
      }

      v28 = *(v34 + 72);
      OUTLINED_FUNCTION_0_6();
      sub_266E65144(v181, v173, v182);
      if (*(v179 + 8))
      {
        break;
      }

LABEL_88:
      ++v178;
      OUTLINED_FUNCTION_1_5();
      sub_266E651A4(v173, v199);
      if (v131 == v178)
      {
        goto LABEL_89;
      }
    }

    v183 = sub_266E9D044();
    v185 = v184;
    OUTLINED_FUNCTION_0_6();
    sub_266E65144(v173, v228, v186);
    swift_isUniquelyReferenced_nonNull_native();
    v233[0] = v40;
    v187 = sub_266E97FDC(v183, v185);
    if (__OFADD__(v40[2], (v188 & 1) == 0))
    {
      goto LABEL_93;
    }

    v34 = v187;
    v189 = v188;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9380, &qword_266E9EE38);
    if (sub_266E9D324())
    {
      v190 = sub_266E97FDC(v183, v185);
      v173 = v221;
      if ((v189 & 1) != (v191 & 1))
      {
        goto LABEL_97;
      }

      v34 = v190;
      if ((v189 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v173 = v221;
      if ((v189 & 1) == 0)
      {
LABEL_83:
        v40 = v233[0];
        v233[0][(v34 >> 6) + 8] |= 1 << v34;
        v192 = (v40[6] + 16 * v34);
        *v192 = v183;
        v192[1] = v185;
        v193 = OUTLINED_FUNCTION_20_1();
        sub_266E64BD8(v193, v194);
        v195 = v40[2];
        v159 = __OFADD__(v195, 1);
        v196 = v195 + 1;
        if (v159)
        {
          goto LABEL_95;
        }

        v40[2] = v196;
        goto LABEL_87;
      }
    }

    v40 = v233[0];
    v197 = OUTLINED_FUNCTION_20_1();
    sub_266E64CF8(v197, v198);
LABEL_87:
    OUTLINED_FUNCTION_22_1();
    v51 = v227;
    v131 = v230;
    goto LABEL_88;
  }

  v219 = v129;
  v133 = 0;
  OUTLINED_FUNCTION_10_1();
  v135 = v132 + v134;
  OUTLINED_FUNCTION_13_0();
  v220 = v136;
  v226 = v136 + v51;
  v224 = v135;
  while (v133 < *(v51 + 16))
  {
    v137 = *(v34 + 72);
    OUTLINED_FUNCTION_0_6();
    sub_266E65144(v138, v132, v139);
    if (*(v135 + 88))
    {
      v34 = sub_266E9D044();
      v141 = v140;
      v40 = v231;
      if (!v231[2])
      {
        goto LABEL_52;
      }

      v142 = OUTLINED_FUNCTION_19_0();
      sub_266E97FDC(v142, v143);
      if ((v144 & 1) == 0)
      {
        v40 = v231;
LABEL_52:
        swift_isUniquelyReferenced_nonNull_native();
        v233[0] = v40;
        v145 = OUTLINED_FUNCTION_19_0();
        v147 = sub_266E97FDC(v145, v146);
        v149 = v40[2];
        v150 = (v148 & 1) == 0;
        v135 = v149 + v150;
        if (__OFADD__(v149, v150))
        {
          goto LABEL_94;
        }

        v151 = v147;
        v152 = v148;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9388, &qword_266E9EE40);
        v40 = v233;
        if (sub_266E9D324())
        {
          v40 = v233[0];
          v153 = OUTLINED_FUNCTION_19_0();
          v155 = sub_266E97FDC(v153, v154);
          if ((v152 & 1) != (v156 & 1))
          {
            goto LABEL_97;
          }

          v151 = v155;
        }

        v132 = v233[0];
        if (v152)
        {
          *(v233[0][7] + 8 * v151) = MEMORY[0x277D84F90];
        }

        else
        {
          v233[0][(v151 >> 6) + 8] |= 1 << v151;
          v157 = (v132[6] + 16 * v151);
          *v157 = v34;
          v157[1] = v141;
          *(v132[7] + 8 * v151) = MEMORY[0x277D84F90];
          v158 = v132[2];
          v159 = __OFADD__(v158, 1);
          v160 = v158 + 1;
          if (v159)
          {
            goto LABEL_96;
          }

          v132[2] = v160;
        }

        v231 = v132;
        v51 = v227;
        OUTLINED_FUNCTION_17_0();
      }

      v161 = OUTLINED_FUNCTION_8_2();
      v163 = sub_266E629E4(v161, v34, v141);
      if (*v162)
      {
        v34 = v162;
        OUTLINED_FUNCTION_0_6();
        sub_266E65144(v132, v223, v164);
        v165 = *v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v34 = v165;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v169 = OUTLINED_FUNCTION_12_0();
          v165 = sub_266E55C04(v169, v170, v171, v165);
          *v34 = v165;
        }

        v135 = *(v165 + 16);
        v167 = *(v165 + 24);
        v132 = (v135 + 1);
        if (v135 >= v167 >> 1)
        {
          v165 = sub_266E55C04(v167 > 1, v135 + 1, 1, v165);
          *v34 = v165;
        }

        OUTLINED_FUNCTION_22_1();
        *(v165 + 16) = v132;
        sub_266E64BD8(v223, v220 + v165 + v135 * v137);
        (v163)(v233, 0);
        OUTLINED_FUNCTION_17_0();
      }

      else
      {
        (v163)(v233, 0);
        OUTLINED_FUNCTION_22_1();
      }

      v40 = v222;
      v131 = v230;
    }

    ++v133;
    OUTLINED_FUNCTION_1_5();
    sub_266E651A4(v132, v168);
    if (v131 == v133)
    {
      v130 = v231;
      goto LABEL_71;
    }
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);

  OUTLINED_FUNCTION_1_5();
  sub_266E651A4(v40, v200);

  __break(1u);
LABEL_97:
  sub_266E9D434();
  __break(1u);
}

uint64_t (*sub_266E629E4(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_266E64560(v6, a2, a3);
  return sub_266E62A58;
}

void sub_266E62A58(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_266E62AA4(uint64_t **a1, uint64_t a2)
{
  v5 = type metadata accessor for UserAccount(0);
  v47 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v43 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v6 + 36);
  v48 = a2;
  v9 = sub_266E617FC(*(a2 + v8 + 96));
  v10 = v9;
  v49 = *(v9 + 16);
  if (!v49)
  {
  }

  v42[1] = v2;
  v11 = 0;
  v12 = (v9 + 40);
  v45 = xmmword_266E9ED60;
  v46 = a1;
  v44 = v9;
  while (v11 < *(v10 + 16))
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    v15 = (*a1)[2];

    if (v15 && (sub_266E97FDC(v13, v14), (v16 & 1) != 0))
    {
      v18 = sub_266E629E4(v50, v13, v14);
      if (*v17)
      {
        v19 = v17;
        sub_266E65144(v48, v43, type metadata accessor for UserAccount);
        v20 = *v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v19 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = sub_266E55C04(0, *(v20 + 16) + 1, 1, v20);
          *v19 = v20;
        }

        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          v20 = sub_266E55C04(v22 > 1, v23 + 1, 1, v20);
          *v19 = v20;
        }

        *(v20 + 16) = v23 + 1;
        sub_266E64BD8(v43, v20 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v23);
        (v18)(v50, 0);

        a1 = v46;
      }

      else
      {
        (v18)(v50, 0);
      }
    }

    else
    {
      v51 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9398, &qword_266E9EE50);
      v24 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v45;
      sub_266E65144(v48, v25 + v24, type metadata accessor for UserAccount);
      swift_isUniquelyReferenced_nonNull_native();
      v50[0] = *a1;
      v26 = v50[0];
      v27 = v13;
      v28 = v13;
      v29 = v14;
      v30 = sub_266E97FDC(v28, v14);
      if (__OFADD__(v26[2], (v31 & 1) == 0))
      {
        goto LABEL_26;
      }

      v32 = v30;
      v33 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9388, &qword_266E9EE40);
      if (sub_266E9D324())
      {
        v34 = sub_266E97FDC(v27, v29);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_28;
        }

        v32 = v34;
      }

      if (v33)
      {

        v36 = v50[0];
        *(v50[0][7] + 8 * v32) = v25;
      }

      else
      {
        v36 = v50[0];
        v50[0][(v32 >> 6) + 8] |= 1 << v32;
        v37 = (v36[6] + 16 * v32);
        *v37 = v27;
        v37[1] = v29;
        *(v36[7] + 8 * v32) = v25;
        v38 = v36[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_27;
        }

        v36[2] = v40;
      }

      a1 = v46;
      *v46 = v36;
      v10 = v44;
      v11 = v51;
    }

    ++v11;
    v12 += 2;
    if (v49 == v11)
    {
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_266E9D434();
  __break(1u);
  return result;
}

uint64_t sub_266E62ED0(uint64_t a1, uint64_t a2)
{
  sub_266E9D044();
  v2 = sub_266E98240();

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_266E9D044();
    v4 = sub_266E98240();

    if (!v4)
    {
      return 0;
    }

    v3 = 2;
  }

  return v3;
}

void sub_266E62F74()
{
  OUTLINED_FUNCTION_35();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9370, &qword_266E9EE28);
  OUTLINED_FUNCTION_19(v2);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = type metadata accessor for UserAccount(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v14 = MEMORY[0x277D84F90];
  sub_266E9D044();
  v11 = sub_266E98240();

  if (v11 || (sub_266E9D044(), v11 = sub_266E98240(), , v11))
  {
    sub_266E93908(v11);
  }

  if (*(v14 + 16) < 2uLL)
  {
    sub_266E63174(v14, v5);

    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_266E651FC(v5, &qword_2800E9370, &qword_266E9EE28);
    }

    else
    {
      sub_266E64BD8(v5, v10);
      sub_266E64BD8(v10, v1);
    }

    type metadata accessor for UserAccountManager.LookupResult(0);
    OUTLINED_FUNCTION_18_1();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_33();
  }

  else
  {
    *v1 = v14;
    type metadata accessor for UserAccountManager.LookupResult(0);
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_33();

    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_266E63174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for UserAccount(0);
  v6 = v5;
  if (v4)
  {
    sub_266E65144(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, type metadata accessor for UserAccount);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_266E6322C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UserAccount(0);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9370, &qword_266E9EE28);
  OUTLINED_FUNCTION_19(v8);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  result = __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  v13 = *(v1 + 40);
  if (*(v13 + 16) == 2)
  {
    for (i = 0; ; ++i)
    {
      if (i == 2)
      {
        sub_266E651FC(a1, &qword_2800E9370, &qword_266E9EE28);
        v18 = 1;
LABEL_9:
        __swift_storeEnumTagSinglePayload(v11, v18, 1, v3);
        return sub_266E64C3C(v11, a1);
      }

      if (i >= *(v13 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_0_6();
      sub_266E65144(v15, v7, v16);
      if ((*(v7 + *(v3 + 32)) & 1) == 0)
      {
        sub_266E651FC(a1, &qword_2800E9370, &qword_266E9EE28);
        sub_266E64BD8(v7, v11);
        v18 = 0;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_1_5();
      result = sub_266E651A4(v7, v17);
    }

    __break(1u);
  }

  return result;
}

void sub_266E633FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for UserAccount(0);
  v27 = OUTLINED_FUNCTION_19(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v30 = v29 - v28;
  type metadata accessor for UserAccountManager.LookupResult(0);
  OUTLINED_FUNCTION_4_3();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v36 = &a9 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93C0, &qword_266E9EF18);
  OUTLINED_FUNCTION_19(v37);
  OUTLINED_FUNCTION_26();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &a9 - v40;
  v42 = *(v39 + 56);
  sub_266E65144(v25, &a9 - v40, type metadata accessor for UserAccountManager.LookupResult);
  sub_266E65144(v23, &v41[v42], type metadata accessor for UserAccountManager.LookupResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = OUTLINED_FUNCTION_5_3();
      sub_266E65144(v44, v34, v45);
      v46 = *v34;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_266E6367C(v46, *&v41[v42]);

LABEL_12:
        OUTLINED_FUNCTION_6_2();
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v47 = OUTLINED_FUNCTION_5_3();
    sub_266E65144(v47, v36, v48);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_266E64BD8(&v41[v42], v30);
      sub_266E7DDB0(v36, v30);
      sub_266E651A4(v30, type metadata accessor for UserAccount);
      sub_266E651A4(v36, type metadata accessor for UserAccount);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_1_5();
    sub_266E651A4(v36, v49);
  }

  sub_266E651FC(v41, &qword_2800E93C0, &qword_266E9EF18);
LABEL_13:
  OUTLINED_FUNCTION_33();
}

uint64_t sub_266E6367C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266E9BE84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93C8, &unk_266E9EF20);
  MEMORY[0x28223BE20](v53);
  v11 = &v45 - v10;
  v12 = type metadata accessor for UserAccount(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v19 = &v45 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
    goto LABEL_32;
  }

  if (!v20 || a1 == a2)
  {
    v43 = 1;
    return v43 & 1;
  }

  v51 = v16;
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v46 = (v5 + 32);
  v48 = (v5 + 8);
  v50 = *(v17 + 72);
  v47 = v11;
  while (1)
  {
    sub_266E65144(v22, v19, type metadata accessor for UserAccount);
    sub_266E65144(v23, v15, type metadata accessor for UserAccount);
    v24 = *(v53 + 48);
    sub_266E64B68(v19, v11);
    sub_266E64B68(v15, &v11[v24]);
    if (__swift_getEnumTagSinglePayload(v11, 1, v4) != 1)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(&v11[v24], 1, v4) != 1)
    {
      goto LABEL_30;
    }

    sub_266E651FC(v11, &qword_2800E9360, &qword_266E9EE20);
    v25 = v51;
LABEL_10:
    v31 = v25[5];
    v32 = &v19[v31];
    v33 = *&v19[v31 + 8];
    v34 = &v15[v31];
    v35 = *(v34 + 1);
    if (v33)
    {
      if (!v35)
      {
        goto LABEL_31;
      }

      v36 = *v32 == *v34 && v33 == v35;
      if (!v36 && (sub_266E9D3E4() & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (v35)
    {
      goto LABEL_31;
    }

    v37 = v25[6];
    v38 = *&v19[v37];
    v39 = *&v19[v37 + 8];
    v40 = &v15[v37];
    v41 = v38 == *v40 && v39 == *(v40 + 1);
    if (!v41 && (sub_266E9D3E4() & 1) == 0)
    {
      goto LABEL_31;
    }

    memcpy(__dst, &v19[v25[7]], sizeof(__dst));
    memcpy(v55, &v15[v25[7]], sizeof(v55));
    if ((sub_266E612CC(__dst, v55) & 1) == 0)
    {
      goto LABEL_31;
    }

    v42 = v19[v25[8]] ^ v15[v25[8]];
    sub_266E651A4(v15, type metadata accessor for UserAccount);
    sub_266E651A4(v19, type metadata accessor for UserAccount);
    if ((v42 & 1) == 0)
    {
      v23 += v50;
      v22 += v50;
      if (--v20)
      {
        continue;
      }
    }

    v43 = v42 ^ 1;
    return v43 & 1;
  }

  sub_266E64B68(v11, v9);
  if (__swift_getEnumTagSinglePayload(&v11[v24], 1, v4) != 1)
  {
    v26 = &v11[v24];
    v27 = v9;
    v28 = v52;
    (*v46)(v52, v26, v4);
    sub_266E65254();
    v49 = sub_266E9D004();
    v29 = *v48;
    v30 = v28;
    v9 = v27;
    v11 = v47;
    (*v48)(v30, v4);
    v29(v9, v4);
    sub_266E651FC(v11, &qword_2800E9360, &qword_266E9EE20);
    v25 = v51;
    if ((v49 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_10;
  }

  (*v48)(v9, v4);
LABEL_30:
  sub_266E651FC(v11, &qword_2800E93C8, &unk_266E9EF20);
LABEL_31:
  sub_266E651A4(v15, type metadata accessor for UserAccount);
  sub_266E651A4(v19, type metadata accessor for UserAccount);
LABEL_32:
  v43 = 0;
  return v43 & 1;
}

unint64_t sub_266E63C18(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_266E63C60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_266E9ED70;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_266E63CC4(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_266E9D484();
  sub_266E9D074();
  v8 = sub_266E9D4A4();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_266E9D3E4() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_266E6406C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_266E63E10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9390, &qword_266E9EE48);
  result = sub_266E9D274();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_266E63C60(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_266E9D484();
    sub_266E9D074();
    result = sub_266E9D4A4();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_266E6406C(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_266E63E10(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_266E6432C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_266E9D484();
      sub_266E9D074();
      result = sub_266E9D4A4();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_266E9D3E4() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_266E641D4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_266E9D424();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_266E641D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9390, &qword_266E9EE48);
  v2 = *v0;
  v3 = sub_266E9D264();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_266E6432C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9390, &qword_266E9EE48);
  result = sub_266E9D274();
  v5 = result;
  if (*(v3 + 16))
  {
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_266E9D484();

        sub_266E9D074();
        result = sub_266E9D4A4();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void (*sub_266E64560(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_266E64874(v6);
  v6[9] = sub_266E64658(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_266E645F8;
}

void sub_266E645F8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_266E64658(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_266E97FDC(a2, a3);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9388, &qword_266E9EE40);
  if (sub_266E9D324())
  {
    v15 = sub_266E97FDC(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_266E9D434();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_266E64798;
}

void sub_266E64798(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_266E63C18(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_266E64DEC(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9378, &qword_266E9EE30);
    sub_266E9D334();
  }

  free(v1);
}

uint64_t (*sub_266E64874(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_266E6489C;
}

void sub_266E648A8()
{
  OUTLINED_FUNCTION_35();
  v20 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  OUTLINED_FUNCTION_19(v3);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;

  v7 = *(v2 + *(type metadata accessor for UserAccount(0) + 20) + 8);
  if (v7)
  {
    OUTLINED_FUNCTION_21_1();
    v8 = sub_266E9D014();
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_allocWithZone(type metadata accessor for Account());

  v10 = sub_266E9D014();

  v11 = [v9 initWithIdentifier:v8 displayString:v10];

  v12 = v11;
  v13 = sub_266E9D014();
  [v12 setProfileId_];

  v14 = sub_266E9D124();
  [v12 setIsActive_];

  [v12 setMatchedMultiple_];
  if (v7)
  {
    OUTLINED_FUNCTION_21_1();
    v15 = sub_266E9D014();
  }

  else
  {
    v15 = 0;
  }

  [v12 setICloudAltDSID_];

  sub_266E64B68(v2, v6);
  v16 = sub_266E9BE84();
  if (__swift_getEnumTagSinglePayload(v6, 1, v16) == 1)
  {
    sub_266E651FC(v6, &qword_2800E9360, &qword_266E9EE20);
    v17 = 0;
  }

  else
  {
    sub_266E9BE64();
    (*(*(v16 - 8) + 8))(v6, v16);
    OUTLINED_FUNCTION_21_1();
    v17 = sub_266E9D014();
  }

  [v12 setHomeUserID_];

  [v12 setProfileImage_];
  OUTLINED_FUNCTION_1_5();
  sub_266E651A4(v2, v18);
  OUTLINED_FUNCTION_33();
}

uint64_t sub_266E64B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E64BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAccount(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E64C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9370, &qword_266E9EE28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for UserAccountManager.LookupResult(uint64_t a1)
{
  result = qword_2800E93A0;
  if (!qword_2800E93A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266E64CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAccount(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_266E64E80(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_266E64E94(uint64_t a1)
{
  type metadata accessor for UserAccount(319);
  if (v1 <= 0x3F)
  {
    sub_266E64F08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_266E64F08(uint64_t a1)
{
  if (!qword_2800E93B0)
  {
    type metadata accessor for UserAccount(255);
    v1 = sub_266E9D114();
    if (!v2)
    {
      atomic_store(v1, &qword_2800E93B0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SwitchByNameType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SwitchByNameType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x266E650B4);
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

unint64_t sub_266E650F0()
{
  result = qword_2800E93B8;
  if (!qword_2800E93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E93B8);
  }

  return result;
}

uint64_t sub_266E65144(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266E651A4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_266E651FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_3();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_266E65254()
{
  result = qword_2800E93D0;
  if (!qword_2800E93D0)
  {
    sub_266E9BE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E93D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return sub_266E651A4(v0, type metadata accessor for UserAccountManager.LookupResult);
}

uint64_t OUTLINED_FUNCTION_15@<X0>(unint64_t a1@<X8>)
{

  return sub_266E55C04(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 304) = a2;
  *(v2 - 432) = a1;
}

uint64_t sub_266E6542C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_266E6546C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266E654D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_266E67DFC(a1, a3);
  sub_266E67D3C(a2, &v8, &qword_2800E93F0, &qword_266E9F028);
  if (v9)
  {
    sub_266E67DA0(a2, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_266E5D10C(&v8, v10);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E67DA0(a2, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(a1);
    if (v9)
    {
      sub_266E67DA0(&v8, &qword_2800E93F0, &qword_266E9F028);
    }
  }

  sub_266E5D10C(v10, a3 + 40);
  sub_266E67DFC(a3 + 40, v10);
  type metadata accessor for LocUtil();
  v6 = swift_allocObject();
  result = sub_266E5D10C(v10, v6 + 16);
  *(a3 + 80) = v6;
  return result;
}

uint64_t sub_266E655EC()
{
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_24_0(v1);
  OUTLINED_FUNCTION_2_3(v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = OUTLINED_FUNCTION_18();
  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E65684()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14_1();
  v0 = OUTLINED_FUNCTION_7_2();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_4(v1);
  OUTLINED_FUNCTION_19_1();

  return v3();
}

uint64_t sub_266E65720()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E65818@<X0>(uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  __swift_project_boxed_opaque_existential_0((v3 + 40), *(v3 + 64));
  sub_266E9C2B4();
  v8 = sub_266E9C5B4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = sub_266E9C834();
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v10 = MEMORY[0x277D5C1D8];
  a3[3] = v9;
  a3[4] = v10;
  __swift_allocate_boxed_opaque_existential_1Tm(a3);
  sub_266E9C4A4();
  sub_266E67DA0(v12, &qword_2800E94D0, &unk_266E9F5C0);
  return sub_266E67DA0(v7, &qword_2800E94C0, &unk_266E9EFC0);
}

uint64_t sub_266E65988()
{
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_24_0(v1);
  OUTLINED_FUNCTION_2_3(v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = OUTLINED_FUNCTION_18();
  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E65A20()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14_1();
  v0 = OUTLINED_FUNCTION_7_2();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_4(v1);
  OUTLINED_FUNCTION_19_1();

  return v3();
}

uint64_t sub_266E65ABC()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E65BB4()
{
  OUTLINED_FUNCTION_9_1();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_266E65818(*(v0 + 16));
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_8_0();

  return v4();
}

uint64_t sub_266E65C4C()
{
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_8_0();

  return v0();
}

uint64_t sub_266E65CA8()
{
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_24_0(v1);
  OUTLINED_FUNCTION_2_3(v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = OUTLINED_FUNCTION_18();
  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E65D40()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14_1();
  v0 = OUTLINED_FUNCTION_7_2();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_4(v1);
  OUTLINED_FUNCTION_19_1();

  return v3();
}

uint64_t sub_266E65DDC()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E65ED4()
{
  v1 = v0;
  v2 = sub_266E9BEA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_266E9CFA4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_266E79690(0x53474E4954544553, 0xE800000000000000);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_266E67C88();
    v14 = sub_266E93AD4(v12, v13, v1 + 40);

    return v14;
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v6, qword_2800EC7E0);
    (*(v7 + 16))(v9, v16, v6);
    sub_266E67BF8(v0, v32);
    v17 = sub_266E9CF84();
    v18 = sub_266E9D1A4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = v19;
      v30 = swift_slowAlloc();
      v31 = v30;
      *v19 = 136315138;
      __swift_project_boxed_opaque_existential_0(v33, v33[3]);
      v28 = v18;
      sub_266E9C2A4();
      sub_266E67C30();
      v20 = sub_266E9D3D4();
      v22 = v21;
      (*(v3 + 8))(v5, v2);
      sub_266E5D044(v32);
      v23 = sub_266E6E7D4(v20, v22, &v31);

      v24 = v29;
      *(v29 + 1) = v23;
      v25 = v24;
      _os_log_impl(&dword_266E51000, v17, v28, "Missing Settings label for locale:%s", v24, 0xCu);
      v26 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x26D5F66A0](v26, -1, -1);
      MEMORY[0x26D5F66A0](v25, -1, -1);

      (*(v7 + 8))(v9, v6);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
      sub_266E5D044(v32);
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_266E66254(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_266E6626C()
{
  OUTLINED_FUNCTION_9_1();
  v1 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93D8, &qword_266E9EFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266E9ED60;
  strcpy((inited + 32), "forNoNameMatch");
  *(inited + 47) = -18;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(v0 + 112) = sub_266E9CFE4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_29_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 120) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_22_2(v3);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_20_2();

  return sub_266E81A40(v5, v6, v7, v8);
}

uint64_t sub_266E663A0()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

uint64_t sub_266E6649C()
{
  OUTLINED_FUNCTION_7_0();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = sub_266E9C5D4();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = OUTLINED_FUNCTION_18();
  v6 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266E6654C()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[14];
  v2 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93D8, &qword_266E9EFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266E9ED60;
  *(inited + 32) = 0x4E79616C70736964;
  *(inited + 40) = 0xEB00000000656D61;
  *(inited + 72) = MEMORY[0x277D837D0];
  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (v1)
  {
    v5 = v1;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;

  OUTLINED_FUNCTION_21_2();
  v0[19] = sub_266E9CFE4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_29_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[20] = v6;
  *v6 = v7;
  v6[1] = sub_266E666A0;
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_20_2();

  return sub_266E81A40(v8, v9, v10, v11);
}

uint64_t sub_266E666A0()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E667B4()
{
  OUTLINED_FUNCTION_9_1();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_266E65818(*(v0 + 96));
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_8_0();

  return v4();
}

uint64_t sub_266E6684C()
{
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_8_0();

  return v0();
}

uint64_t sub_266E668A8()
{
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_24_0(v1);
  OUTLINED_FUNCTION_2_3(v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = OUTLINED_FUNCTION_18();
  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E66940()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14_1();
  v0 = OUTLINED_FUNCTION_7_2();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_4(v1);
  OUTLINED_FUNCTION_19_1();

  return v3();
}

uint64_t sub_266E669DC()
{
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_24_0(v1);
  OUTLINED_FUNCTION_2_3(v2);
  *(v0 + 40) = v3;
  *(v0 + 48) = OUTLINED_FUNCTION_18();
  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E66A74()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14_1();
  v0 = OUTLINED_FUNCTION_7_2();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_4(v1);
  OUTLINED_FUNCTION_19_1();

  return v3();
}

uint64_t sub_266E66B10()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E66C08()
{
  OUTLINED_FUNCTION_27();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_266E65ED4();
  sub_266E65818(v4);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_8_0();

  return v5();
}

uint64_t sub_266E66CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_266E66CD0()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[14];
  v2 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93D8, &qword_266E9EFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266E9ED60;
  *(inited + 32) = 0x614E656369766564;
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 72) = MEMORY[0x277D837D0];
  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (v1)
  {
    v5 = v1;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;

  OUTLINED_FUNCTION_21_2();
  v0[16] = sub_266E9CFE4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_29_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[17] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_22_2(v6);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_20_2();

  return sub_266E81A40(v8, v9, v10, v11);
}

uint64_t sub_266E66E1C()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

uint64_t sub_266E66F18(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_266E66F30()
{
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93D8, &qword_266E9EFB0);
  inited = swift_initStackObject();
  v2 = OUTLINED_FUNCTION_10_2(inited, "isCommunalDevice", xmmword_266E9ED60);
  OUTLINED_FUNCTION_17_1(v2, MEMORY[0x277D839B0]);
  OUTLINED_FUNCTION_21_2();
  v3 = sub_266E9CFE4();
  OUTLINED_FUNCTION_15_0(v3);
  OUTLINED_FUNCTION_14_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 128) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_22_2(v4);
  OUTLINED_FUNCTION_13_1();

  return sub_266E81A40(v6, v7, v8, inited);
}

uint64_t sub_266E67040()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

uint64_t sub_266E6713C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_266E67154()
{
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93D8, &qword_266E9EFB0);
  inited = swift_initStackObject();
  v2 = OUTLINED_FUNCTION_10_2(inited, "isCommunalDevice", xmmword_266E9ED60);
  OUTLINED_FUNCTION_17_1(v2, MEMORY[0x277D839B0]);
  OUTLINED_FUNCTION_21_2();
  v3 = sub_266E9CFE4();
  OUTLINED_FUNCTION_15_0(v3);
  OUTLINED_FUNCTION_14_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 128) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_22_2(v4);
  OUTLINED_FUNCTION_13_1();

  return sub_266E81A40(v6, v7, v8, inited);
}

uint64_t sub_266E67264(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_266E6727C()
{
  OUTLINED_FUNCTION_9_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93D8, &qword_266E9EFB0);
  inited = swift_initStackObject();
  v2 = OUTLINED_FUNCTION_10_2(inited, "isCommunalDevice", xmmword_266E9ED60);
  OUTLINED_FUNCTION_17_1(v2, MEMORY[0x277D839B0]);
  OUTLINED_FUNCTION_21_2();
  v3 = sub_266E9CFE4();
  OUTLINED_FUNCTION_15_0(v3);
  OUTLINED_FUNCTION_14_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 128) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_22_2(v4);
  OUTLINED_FUNCTION_13_1();

  return sub_266E81A40(v6, v7, v8, inited);
}

uint64_t sub_266E6738C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_7();
}

uint64_t sub_266E673A0()
{
  OUTLINED_FUNCTION_9_1();
  *(v0 + 32) = sub_266E9CFE4();
  OUTLINED_FUNCTION_25_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_266E67484;
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_20_2();

  return sub_266E81A40(v3, v4, v5, v6);
}