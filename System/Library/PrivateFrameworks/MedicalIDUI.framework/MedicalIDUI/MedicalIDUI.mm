uint64_t sub_25878D4B0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_25878D5AC(0);
  *v3 = v0;
  v3[1] = sub_25878DBF0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x496C61636964656DLL, 0xED00006174614444, sub_25878D8EC, v2, v4);
}

void sub_25878D5AC(uint64_t a1)
{
  if (!qword_280C0DE10)
  {
    sub_25878D604();
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0DE10);
    }
  }
}

unint64_t sub_25878D604()
{
  result = qword_280C0DE18;
  if (!qword_280C0DE18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C0DE18);
  }

  return result;
}

void sub_25878D650(uint64_t a1)
{
  if (!qword_280C0DE30)
  {
    sub_25878D5AC(255);
    sub_25878D8F4();
    v1 = sub_2588BDA58();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0DE30);
    }
  }
}

void sub_25878D6C0(uint64_t a1, void *a2)
{
  sub_25878D650(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_25878DB00;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25878D9F8;
  aBlock[3] = &block_descriptor_4;
  v10 = _Block_copy(aBlock);

  [a2 fetchMedicalIDDataWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_25878D864()
{
  sub_25878D650(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_25878D8F4()
{
  result = qword_280C0DDB0;
  if (!qword_280C0DDB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280C0DDB0);
  }

  return result;
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

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25878D9F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_25878DA84(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_25878D650(0);
    return sub_2588BDA38();
  }

  else
  {
    sub_25878D650(0);
    v5 = a1;
    return sub_2588BDA48();
  }
}

uint64_t sub_25878DB00(void *a1, void *a2)
{
  sub_25878D650(0);

  return sub_25878DA84(a1, a2);
}

uint64_t sub_25878DBF0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_258847AC8;
  }

  else
  {

    v2 = sub_25878DD0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25878DD28(void *a1, void *a2)
{
  v5 = type metadata accessor for SuggestedEmergencyContactFetcher.CNContactStoreAuthorizationChecker();
  v6 = swift_allocObject();
  Request = type metadata accessor for SuggestedEmergencyContactFetcher.FamilyCircleFetchRequest();
  v8 = swift_allocObject();
  type metadata accessor for SuggestedEmergencyContactFetcher();
  v9 = swift_allocObject();
  v9[5] = v5;
  v9[6] = &protocol witness table for SuggestedEmergencyContactFetcher.CNContactStoreAuthorizationChecker;
  v9[2] = v6;
  v9[10] = Request;
  v9[11] = &protocol witness table for SuggestedEmergencyContactFetcher.FamilyCircleFetchRequest;
  v9[7] = v8;
  *(v2 + 16) = v9;
  sub_25878E034(0);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  v11 = MEMORY[0x277D84F90];
  *(v2 + 32) = v10;
  *(v2 + 40) = v11;
  *(v2 + 56) = 0;
  sub_25878E42C(0, &qword_280C0DDB8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2588C4C00;
  v13 = objc_opt_self();
  *(v12 + 32) = [v13 descriptorForRequiredKeysForStyle_];
  v14 = [v13 descriptorForRequiredKeysForStyle_];
  v15 = *MEMORY[0x277CBCF90];
  *(v12 + 40) = v14;
  *(v12 + 48) = v15;
  v16 = *MEMORY[0x277CBD028];
  v17 = *MEMORY[0x277CBD158];
  *(v12 + 56) = *MEMORY[0x277CBD028];
  *(v12 + 64) = v17;
  v18 = *MEMORY[0x277CBD098];
  v19 = *MEMORY[0x277CBD160];
  *(v12 + 72) = *MEMORY[0x277CBD098];
  *(v12 + 80) = v19;
  *(v12 + 88) = v17;
  *(v2 + 64) = v12;
  *(v2 + 48) = a1;
  *(v2 + 24) = a2;
  v20 = v17;
  v21 = v15;
  v22 = v16;
  v23 = v18;
  v24 = v19;
  v25 = a1;
  v26 = a2;
  sub_25878E4CC();
  return v2;
}

uint64_t MedicalIDEmergencyContactProvider.init(medicalIDStore:healthStore:contactStore:)(void *a1, void *a2, void *a3)
{
  v6 = sub_25878DD28(a2, a3);

  return v6;
}

void sub_25878DFCC(uint64_t a1)
{
  if (!qword_280C0DE40)
  {
    sub_25878E130(255, &unk_280C0DDF0, 0x277CBDA58);
    v1 = sub_2588BDA08();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0DE40);
    }
  }
}

void sub_25878E034(uint64_t a1)
{
  if (!qword_280C0DDE0)
  {
    sub_25878E0CC(255, &qword_280C0DE38, sub_25878DFCC, MEMORY[0x277D83D88]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_2588BDE18();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0DDE0);
    }
  }
}

void sub_25878E0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_25878E130(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_25878E1A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25878E1F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25878E240(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25878E290(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25878E2E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25878E334(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25878E384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25878E3D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25878E42C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_25878E47C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_25878E4CC()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v4 + 8);

  if (v5(v3, v4))
  {
    v6 = v1[10];
    v7 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v6);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_2587907C8;
    *(v8 + 24) = v2;
    v9 = *(v7 + 8);

    v9(sub_258790798, v8, v6, v7);
  }

  else
  {
    sub_2587907F8(0, v2);
  }
}

uint64_t sub_25878E604()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25878E63C()
{

  return swift_deallocObject();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

BOOL sub_25878E6E0()
{
  v0 = [objc_opt_self() authorizationStatusForEntityType_];
  if (v0 != 3)
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v1 = sub_2588BBC98();
    __swift_project_value_buffer(v1, qword_27F969938);
    v2 = sub_2588BBC78();
    v3 = sub_2588BDBD8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      v6 = sub_2588BE0E8();
      v8 = sub_258790224(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_25878B000, v2, v3, "%s MedicalID is unauthorized for fetching contacts and cannot get family circle contacts", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x259C8DBE0](v5, -1, -1);
      MEMORY[0x259C8DBE0](v4, -1, -1);
    }
  }

  return v0 == 3;
}

void sub_25878E8A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;
  v9[4] = sub_25878FAC0;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_25878D9F8;
  v9[3] = &block_descriptor_5;
  v8 = _Block_copy(v9);

  [v6 startRequestWithCompletionHandler_];
  _Block_release(v8);
}

uint64_t sub_25878E9D4()
{

  return swift_deallocObject();
}

uint64_t MedicalIDEmergencyContactProvider.medicalIDEmergencyContacts(for:)(void *a1)
{
  sub_25878EA48(a1);
  swift_beginAccess();
}

void sub_25878EA48(void *a1)
{
  v1 = a1;
  v2 = [a1 emergencyContacts];
  if (v2)
  {
    v3 = v2;
    sub_25878E130(0, &qword_280C0DE00, 0x277CCDDA0);
    v4 = sub_2588BD9B8();

    if (v4 >> 62)
    {
      goto LABEL_25;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        *&v57[0] = MEMORY[0x277D84F90];

        v6 = v57;
        sub_25878F0B0(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
          break;
        }

        v48 = v1;
        v7 = *&v57[0];
        v55 = v4 & 0xC000000000000001;
        v54 = objc_opt_self();
        v8 = 0;
        v50 = v4;
        v51 = v4 & 0xFFFFFFFFFFFFFF8;
        v49 = *MEMORY[0x277CBD098];
        v53 = v5 - 1;
        if ((v4 & 0xC000000000000001) != 0)
        {
LABEL_6:
          v9 = MEMORY[0x259C8CF80](v8, v4);
          goto LABEL_10;
        }

        while ((v8 & 0x8000000000000000) == 0)
        {
          if (v8 >= *(v51 + 16))
          {
            goto LABEL_24;
          }

          v9 = *(v4 + 8 * v8 + 32);
LABEL_10:
          v10 = v9;
          if ([v54 authorizationStatusForEntityType_] == 3 && (v11 = sub_25878F230(v10)) != 0)
          {
            v12 = v11;
            sub_25883FBF8(v10, v11);
            v14 = v13;
            if (v13)
            {
              v15 = v49;
              v16 = v12;
              v17 = sub_2588BD868();

              v14 = [objc_opt_self() contactPropertyWithContact:v16 propertyKey:v15 identifier:v17];

              v4 = v50;
            }

            v18 = [objc_opt_self() emergencyContactWithContact:v12 property:v14];
            v19 = v14;
            v20 = sub_258790C74();
            v21 = [v18 name];
            [v20 setName_];

            v22 = [v18 nameContactIdentifier];
            [v20 setNameContactIdentifier_];

            v23 = [v18 phoneNumberPropertyID];
            [v20 setPhoneNumberPropertyID_];

            v24 = [v18 phoneNumberLabel];
            [v20 setPhoneNumberLabel_];

            v25 = [v18 phoneNumber];
            [v20 setPhoneNumber_];

            v26 = v12;
            MedicalIDEmergencyContact.init(hkEmergencyContact:contact:)(v20, v12, &v66);
          }

          else
          {
            MedicalIDEmergencyContact.init(hkEmergencyContact:contact:)(v10, 0, &v66);
          }

          v60 = v68;
          v61 = v69;
          v64 = v72;
          v65 = v73;
          v62 = v70;
          v63 = v71;
          v58 = v66;
          v59 = v67;
          *&v57[0] = v7;
          v1 = *(v7 + 16);
          v27 = *(v7 + 24);
          if (v1 >= v27 >> 1)
          {
            sub_25878F0B0((v27 > 1), v1 + 1, 1);
            v7 = *&v57[0];
          }

          *(v7 + 16) = v1 + 1;
          v28 = (v7 + (v1 << 7));
          v29 = v58;
          v30 = v59;
          v31 = v61;
          v28[4] = v60;
          v28[5] = v31;
          v28[2] = v29;
          v28[3] = v30;
          v32 = v62;
          v33 = v63;
          v34 = v65;
          v28[8] = v64;
          v28[9] = v34;
          v28[6] = v32;
          v28[7] = v33;
          if (v53 == v8)
          {

            v1 = v48;
            goto LABEL_27;
          }

          ++v8;
          if (v55)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v5 = sub_2588BDD68();
        if (!v5)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_38:
      v6 = sub_2587F0300(0, *(v6 + 2) + 1, 1, v6);
      *(v52 + 40) = v6;
      goto LABEL_33;
    }

LABEL_26:

    v7 = MEMORY[0x277D84F90];
LABEL_27:
    v35 = sub_258790DD8(1, v7);

    swift_beginAccess();
    *(v52 + 40) = v35;
  }

  else
  {
    swift_beginAccess();
    *(v52 + 40) = MEMORY[0x277D84F90];
  }

  if (*(v52 + 56))
  {
    return;
  }

  if (![v1 isEmpty])
  {
    return;
  }

  v36 = [*(v52 + 48) profileIdentifier];
  v37 = [v36 type];

  if (v37 != 3)
  {
    return;
  }

  sub_25883D048(&v58);
  v70 = v62;
  v71 = v63;
  v72 = v64;
  v73 = v65;
  v66 = v58;
  v67 = v59;
  v68 = v60;
  v69 = v61;
  if (sub_2587DF798(&v66) == 1)
  {
    return;
  }

  swift_beginAccess();
  v6 = *(v52 + 40);
  v57[4] = v62;
  v57[5] = v63;
  v57[6] = v64;
  v57[7] = v65;
  v57[0] = v58;
  v57[1] = v59;
  v57[2] = v60;
  v57[3] = v61;
  sub_2587914E8(v57, v56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v52 + 40) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_33:
  v40 = *(v6 + 2);
  v39 = *(v6 + 3);
  if (v40 >= v39 >> 1)
  {
    v6 = sub_2587F0300((v39 > 1), v40 + 1, 1, v6);
  }

  *(v6 + 2) = v40 + 1;
  v41 = &v6[128 * v40];
  v42 = v66;
  v43 = v67;
  v44 = v69;
  *(v41 + 4) = v68;
  *(v41 + 5) = v44;
  *(v41 + 2) = v42;
  *(v41 + 3) = v43;
  v45 = v70;
  v46 = v71;
  v47 = v73;
  *(v41 + 8) = v72;
  *(v41 + 9) = v47;
  *(v41 + 6) = v45;
  *(v41 + 7) = v46;
  *(v52 + 40) = v6;
  swift_endAccess();
  sub_25883FAAC(&v58);
  *(v52 + 56) = 1;
}

char *sub_25878F0B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25878F0D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25878F0D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878F1E0(0, &qword_280C0DDD8, &type metadata for MedicalIDEmergencyContact);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_25878F1E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2588BDF88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_25878F230(void *a1)
{
  v3 = [a1 nameContactIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + 24);
    sub_25878FA5C();
    v6 = sub_2588BD9A8();
    v7 = [v5 contactForIdentifier:v4 keysToFetch:v6];

    if (v7)
    {
      v8 = [v7 phoneNumbers];
      sub_25878E130(0, &qword_27F961820, 0x277CBDB20);
      v9 = sub_2588BD9B8();

      if (v9 >> 62)
      {
        v10 = sub_2588BDD68();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v10)
      {
        return v7;
      }
    }
  }

  v11 = [a1 phoneNumber];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = sub_2588BD8A8();
  v15 = v14;

  v7 = sub_25878F420(v13, v15);

  if (v7)
  {
    v16 = [v7 phoneNumbers];
    sub_25878E130(0, &qword_27F961820, 0x277CBDB20);
    v17 = sub_2588BD9B8();

    v18 = v17 >> 62 ? sub_2588BDD68() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v18)
    {

      return 0;
    }
  }

  return v7;
}

id sub_25878F420(uint64_t a1, uint64_t a2)
{
  v17[0] = a1;
  v17[1] = a2;
  v2 = sub_2588BB708();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_2588BB6E8();
  MEMORY[0x28223BE20](v5);
  v6 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BB6F8();
  v7 = *(v3 + 8);
  v7(v6, v2);
  sub_25878F648();
  v8 = MEMORY[0x277D837D0];
  v9 = sub_2588BDCF8();
  v7(v6, v2);
  v17[0] = v9;
  sub_25878E42C(0, &qword_280C0DE60, v8, MEMORY[0x277D83940]);
  sub_25878F69C();
  sub_2588BD7A8();

  v10 = objc_opt_self();
  v11 = objc_allocWithZone(MEMORY[0x277CBDB70]);
  v12 = sub_2588BD868();

  v13 = [v11 initWithStringValue_];

  v14 = [v10 predicateForContactsMatchingPhoneNumber_];
  v15 = sub_25878F718(v14);

  return v15;
}

unint64_t sub_25878F648()
{
  result = qword_280C0DF00;
  if (!qword_280C0DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0DF00);
  }

  return result;
}

unint64_t sub_25878F69C()
{
  result = qword_280C0DE50;
  if (!qword_280C0DE50)
  {
    sub_25878E42C(255, &qword_280C0DE60, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0DE50);
  }

  return result;
}

id sub_25878F718(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 24);
  sub_25878FA5C();
  v4 = sub_2588BD9A8();
  v26[0] = 0;
  v5 = [v3 unifiedContactsMatchingPredicate:a1 keysToFetch:v4 error:v26];

  v6 = v26[0];
  if (!v5)
  {
    v12 = v26[0];
    v7 = sub_2588BB878();

    swift_willThrow();
    if (qword_27F95D170 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  sub_25878E130(0, &unk_280C0DDF0, 0x277CBDA58);
  v7 = sub_2588BD9B8();
  v8 = v6;

  if (v7 >> 62)
  {
    if (sub_2588BDD68())
    {
      goto LABEL_4;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x259C8CF80](0, v7);
      goto LABEL_7;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v7 + 32);
LABEL_7:
      v10 = v9;

      return v10;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_9:
    v13 = sub_2588BBC98();
    __swift_project_value_buffer(v13, qword_27F969938);
    v14 = v7;
    v15 = sub_2588BBC78();
    v16 = sub_2588BDBD8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26[0] = v18;
      *v17 = 136315394;
      v19 = sub_2588BE0E8();
      v21 = sub_258790224(v19, v20, v26);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = v7;
      sub_25878D8F4();
      v23 = sub_2588BD8D8();
      v25 = sub_258790224(v23, v24, v26);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_25878B000, v15, v16, "%s Contact Fetch Error: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v18, -1, -1);
      MEMORY[0x259C8DBE0](v17, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return 0;
}

unint64_t sub_25878FA5C()
{
  result = qword_280C0DE20;
  if (!qword_280C0DE20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280C0DE20);
  }

  return result;
}

uint64_t sub_25878FACC(void *a1, id a2, void (*a3)(uint64_t), uint64_t a4, unint64_t a5)
{
  v6 = &qword_27F95D000;
  if (!a2)
  {
LABEL_5:
    if (a1)
    {
      goto LABEL_6;
    }

LABEL_31:
    if (v6[46] == -1)
    {
LABEL_32:
      v50 = sub_2588BBC98();
      __swift_project_value_buffer(v50, qword_27F969938);
      v51 = sub_2588BBC78();
      v52 = sub_2588BDBF8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v68 = v54;
        *v53 = 136315138;
        v55 = sub_2588BE0E8();
        v57 = sub_258790224(v55, v56, &v68);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_25878B000, v51, v52, "%s there was no familyCircle fetched", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x259C8DBE0](v54, -1, -1);
        MEMORY[0x259C8DBE0](v53, -1, -1);
      }

      v58 = 0;
      goto LABEL_45;
    }

LABEL_47:
    swift_once();
    goto LABEL_32;
  }

  isUniquelyReferenced_nonNull_native = a2;
  v8 = a2;
  if (qword_27F95D170 != -1)
  {
LABEL_39:
    swift_once();
  }

  v9 = sub_2588BBC98();
  __swift_project_value_buffer(v9, qword_27F969938);
  v10 = isUniquelyReferenced_nonNull_native;
  v11 = sub_2588BBC78();
  v12 = sub_2588BDBD8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v68 = v14;
    *v13 = 136315394;
    v15 = sub_2588BE0E8();
    v17 = sub_258790224(v15, v16, &v68);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v18 = sub_2588BDFD8();
    v20 = sub_258790224(v18, v19, &v68);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_25878B000, v11, v12, "%s Failed to fetch family circle with error %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v14, -1, -1);
    MEMORY[0x259C8DBE0](v13, -1, -1);

    goto LABEL_5;
  }

  if (!a1)
  {
    goto LABEL_31;
  }

LABEL_6:
  v21 = a1;
  v22 = sub_2588637B4(MEMORY[0x277D84F90]);
  v62 = v21;
  v23 = [v21 members];
  sub_25878E130(0, &qword_280C0DE28, 0x277D08268);
  v24 = sub_2588BD9B8();

  if (v24 >> 62)
  {
    v25 = sub_2588BDD68();
    if (v25)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
LABEL_41:

    v59 = v22[2];
    if (!v59)
    {

      v58 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    v58 = sub_25886AB68(v22[2], 0);
    v60 = sub_25886B388(&v68, v58 + 4, v59, v22);

    sub_2587921E0();
    if (v60 == v59)
    {

LABEL_45:
      a3(v58);
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_8:
  v26 = 0;
  v27 = v24 & 0xC000000000000001;
  v66 = v24;
  v67 = v24 & 0xFFFFFFFFFFFFFF8;
  isUniquelyReferenced_nonNull_native = &off_2798A7000;
  v64 = v24 & 0xC000000000000001;
  v65 = v25;
  while (1)
  {
    if (v27)
    {
      v28 = MEMORY[0x259C8CF80](v26, v24);
    }

    else
    {
      if (v26 >= *(v67 + 16))
      {
        goto LABEL_36;
      }

      v28 = *(v24 + 8 * v26 + 32);
    }

    v29 = v28;
    a1 = (v26 + 1);
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (([v28 *(isUniquelyReferenced_nonNull_native + 3272)] & 1) == 0)
    {
      v30 = [v29 contact];
      if (v30)
      {
        break;
      }
    }

LABEL_10:
    ++v26;
    if (a1 == v25)
    {
      goto LABEL_41;
    }
  }

  v31 = v30;
  v32 = [v30 identifier];
  v33 = sub_2588BD8A8();
  v6 = v34;

  v35 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v22;
  v37 = sub_258869E40(v33, v6);
  v38 = v22[2];
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    goto LABEL_37;
  }

  v41 = v36;
  if (v22[3] >= v40)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v36 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_25886AE90();
      if ((v41 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

  sub_25886ABF8(v40, isUniquelyReferenced_nonNull_native);
  v42 = sub_258869E40(v33, v6);
  if ((v41 & 1) == (v43 & 1))
  {
    v37 = v42;
    if ((v41 & 1) == 0)
    {
LABEL_22:
      v22 = v68;
      v68[(v37 >> 6) + 8] |= 1 << v37;
      v44 = (v22[6] + 16 * v37);
      *v44 = v33;
      v44[1] = v6;
      *(v22[7] + 8 * v37) = v35;

      v45 = v22[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_38;
      }

      v22[2] = v47;
      goto LABEL_27;
    }

LABEL_26:

    v22 = v68;
    v48 = v68[7];
    v49 = *(v48 + 8 * v37);
    *(v48 + 8 * v37) = v35;

LABEL_27:
    v25 = v65;
    v24 = v66;
    v27 = v64;
    isUniquelyReferenced_nonNull_native = 0x2798A7000;
    goto LABEL_10;
  }

  result = sub_2588BDFC8();
  __break(1u);
  return result;
}

uint64_t sub_25879010C()
{
  v0 = sub_2588BBC98();
  __swift_allocate_value_buffer(v0, qword_27F969938);
  __swift_project_value_buffer(v0, qword_27F969938);
  return sub_2588BBC88();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_258790224(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2587902F0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_258790448(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2587902F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2587904A4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2588BDE28();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_258790448(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_2587904A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_2587904F0(a1, a2);
  sub_2587906AC(&unk_2869BC9C0);
  return v3;
}

void *sub_2587904F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_258790620(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2588BDE28();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2588BD948();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_258790620(v10, 0);
        result = sub_2588BDDD8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_258790620(uint64_t a1, uint64_t a2)
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

  sub_25878E1F0(0, &qword_27F95DC20, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2587906AC(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_2587C8448(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2587907F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 32);

    MEMORY[0x28223BE20](v4);
    os_unfair_lock_lock((v3 + 24));
    sub_2587908BC((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  return result;
}

uint64_t sub_2587908BC(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

void MedicalIDEmergencyContact.init(hkEmergencyContact:contact:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_258790C74();
  v6 = MEMORY[0x277D837D0];
  v7 = sub_2588BD9A8();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (v8)
  {
    v58 = sub_2588BD8A8();
    v10 = v9;
  }

  else
  {
    v10 = 0x80000002588C8A90;
    v58 = 0xD000000000000011;
  }

  v11 = [v5 name];
  if (v11)
  {
    v12 = v11;
    sub_2588BD8A8();

    sub_258790D88();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2588BFF50;
    *(v13 + 32) = v58;
    *(v13 + 40) = v10;
    v10 = 0xE000000000000000;
    v48 = sub_25878F648();
    v49 = v48;
    v46 = v6;
    v47 = v48;
    v14 = sub_2588BDD08();
    v16 = v15;

    *(v13 + 48) = v14;
    *(v13 + 56) = v16;
    v17 = sub_2588BD9A8();

    v18 = HKUIJoinStringsForAutomationIdentifier();

    if (v18)
    {
      v58 = sub_2588BD8A8();
      v10 = v19;
    }

    else
    {
      v58 = 0;
    }
  }

  v20 = [v5 name];
  if (v20)
  {
    v21 = v20;
    v22 = sub_2588BD8A8();
    v55 = v23;
    v56 = v22;
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  v24 = [v5 nameContactIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2588BD8A8();
    v53 = v27;
    v54 = v26;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v28 = [v5 phoneNumberLabel];
  if (v28)
  {
    v29 = v28;
    v30 = sub_2588BD8A8();
    v51 = v31;
    v52 = v30;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v32 = [v5 phoneNumber];
  if (v32)
  {
    v33 = v32;
    v50 = sub_2588BD8A8();
    v35 = v34;
  }

  else
  {
    v50 = 0;
    v35 = 0;
  }

  v36 = v10;
  v37 = [v5 phoneNumberContactIdentifier];
  if (v37)
  {
    v38 = v37;
    v39 = sub_2588BD8A8();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = [v5 relationship];

  if (v42)
  {
    v43 = sub_2588BD8A8();
    v45 = v44;
  }

  else
  {

    v43 = 0;
    v45 = 0;
  }

  *a3 = v56;
  a3[1] = v55;
  a3[2] = v54;
  a3[3] = v53;
  a3[4] = v52;
  a3[5] = v51;
  a3[6] = v50;
  a3[7] = v35;
  a3[8] = v39;
  a3[9] = v41;
  a3[10] = v43;
  a3[11] = v45;
  a3[12] = v5;
  a3[13] = a2;
  a3[14] = v58;
  a3[15] = v36;
}

uint64_t sub_258790C74()
{
  swift_getObjectType();
  [v0 copy];
  sub_2588BDD38();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v2;
  }

  sub_2588BDDF8();
  sub_2588BE0E8();

  MEMORY[0x259C8CAA0](0xD00000000000002ALL, 0x80000002588CB760);
  result = sub_2588BDED8();
  __break(1u);
  return result;
}

void sub_258790D88()
{
  if (!qword_280C0DDD0)
  {
    v0 = sub_2588BDF88();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0DDD0);
    }
  }
}

char *sub_258790DD8(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 16);
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v67 = MEMORY[0x277D84F90];
      sub_2587912F0(0, v3, 0);
      v5 = 0;
      v4 = v67;
      v6 = (a2 + 32);
      v7 = v3 - 1;
      while (1)
      {
        v8 = v6[5];
        v53 = v6[4];
        v54 = v8;
        v9 = v6[7];
        v55 = v6[6];
        v56 = v9;
        v10 = v6[1];
        v50[0] = *v6;
        v50[1] = v10;
        v11 = v6[3];
        v51 = v6[2];
        v52 = v11;
        v57 = v50[0];
        v58 = v10;
        v59 = v51;
        v60 = v11;
        v61 = v53;
        v62 = v8;
        v63 = v55;
        v64 = v9;
        sub_2587914E8(v50, &v66);
        v67 = v4;
        v13 = *(v4 + 2);
        v12 = *(v4 + 3);
        if (v13 >= v12 >> 1)
        {
          sub_2587912F0((v12 > 1), v13 + 1, 1);
          v4 = v67;
        }

        *(v4 + 2) = v13 + 1;
        v14 = &v4[136 * v13];
        v15 = v57;
        v16 = v58;
        v17 = v60;
        *(v14 + 4) = v59;
        *(v14 + 5) = v17;
        *(v14 + 2) = v15;
        *(v14 + 3) = v16;
        v18 = v61;
        v19 = v62;
        v20 = v64;
        *(v14 + 8) = v63;
        *(v14 + 9) = v20;
        *(v14 + 6) = v18;
        *(v14 + 7) = v19;
        *(v14 + 20) = v5;
        if (v7 == v5)
        {
          break;
        }

        v6 += 8;
        ++v5;
      }
    }

    goto LABEL_11;
  }

  v22 = sub_25883FB2C(v21);

  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v4 = sub_25886AAE0(*(v22 + 16), 0);
  v24 = sub_25886B1F4(&v57, v4 + 32, v23, v22);
  sub_2587921E0();
  if (v24 != v23)
  {
    __break(1u);
LABEL_11:
    v25 = sub_258791544(v4);

    v26 = *(v25 + 16);
    v27 = MEMORY[0x277D84F90];
    if (v26)
    {
      v28 = sub_258791F54(*(v25 + 16), 0);
      v29 = sub_258792030(&v57, v28 + 32, v26, v25);

      sub_2587921E0();
      if (v29 != v26)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    *&v57 = v28;
    sub_2587921E8(&v57);

    v30 = v57;
    v31 = *(v57 + 16);
    if (!v31)
    {

      return MEMORY[0x277D84F90];
    }

    v66 = v27;
    sub_25878F0B0(0, v31, 0);
    v4 = v66;
    v32 = v31 - 1;
    for (i = 32; ; i += 136)
    {
      v57 = *(v30 + i);
      v34 = *(v30 + i + 16);
      v35 = *(v30 + i + 32);
      v36 = *(v30 + i + 64);
      v60 = *(v30 + i + 48);
      v61 = v36;
      v58 = v34;
      v59 = v35;
      v37 = *(v30 + i + 80);
      v38 = *(v30 + i + 96);
      v39 = *(v30 + i + 112);
      v65 = *(v30 + i + 128);
      v63 = v38;
      v64 = v39;
      v62 = v37;
      sub_258791754(&v57, v50);
      v66 = v4;
      v41 = *(v4 + 2);
      v40 = *(v4 + 3);
      if (v41 >= v40 >> 1)
      {
        sub_25878F0B0((v40 > 1), v41 + 1, 1);
        v4 = v66;
      }

      *(v4 + 2) = v41 + 1;
      v42 = &v4[128 * v41];
      v43 = v57;
      v44 = v58;
      v45 = v60;
      *(v42 + 4) = v59;
      *(v42 + 5) = v45;
      *(v42 + 2) = v43;
      *(v42 + 3) = v44;
      v46 = v61;
      v47 = v62;
      v48 = v64;
      *(v42 + 8) = v63;
      *(v42 + 9) = v48;
      *(v42 + 6) = v46;
      *(v42 + 7) = v47;
      if (!v32)
      {
        break;
      }

      --v32;
    }
  }

  return v4;
}

void sub_258791134(uint64_t a1)
{
  if (!qword_280C0DE68)
  {
    v2 = sub_258791374();
    v4 = _s14OrderedElementVMa(a1, &type metadata for MedicalIDEmergencyContact, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_280C0DE68);
    }
  }
}

void *sub_258791190(void *result, int64_t a2, char a3, void *a4)
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
    sub_258791310(0, &qword_280C0DDC0, sub_258791134, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[17 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 136 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_258791134(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2587912F0(void *a1, int64_t a2, char a3)
{
  result = sub_258791190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_258791310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_258791374()
{
  result = qword_280C0E1D0;
  if (!qword_280C0E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0E1D0);
  }

  return result;
}

unint64_t sub_2587913CC()
{
  result = qword_280C0E1C8;
  if (!qword_280C0E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0E1C8);
  }

  return result;
}

uint64_t sub_258791470(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_258791544(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2587916D4(0, &qword_280C0DE68, _s14OrderedElementVMa);
  v4 = v3;
  v5 = sub_258791660();
  result = MEMORY[0x259C8CC60](v2, v4, v5);
  v16 = result;
  if (v2)
  {
    v7 = a1 + 32;
    do
    {
      v8 = *(v7 + 112);
      v17[6] = *(v7 + 96);
      v17[7] = v8;
      v18 = *(v7 + 128);
      v9 = *(v7 + 48);
      v17[2] = *(v7 + 32);
      v17[3] = v9;
      v10 = *(v7 + 80);
      v17[4] = *(v7 + 64);
      v17[5] = v10;
      v11 = *(v7 + 16);
      v17[0] = *v7;
      v17[1] = v11;
      sub_258791754(v17, v14);
      sub_2587917D4(v12, v17);
      v14[6] = v12[6];
      v14[7] = v12[7];
      v15 = v13;
      v14[2] = v12[2];
      v14[3] = v12[3];
      v14[4] = v12[4];
      v14[5] = v12[5];
      v14[0] = v12[0];
      v14[1] = v12[1];
      sub_258791C20(v14);
      v7 += 136;
      --v2;
    }

    while (v2);
    return v16;
  }

  return result;
}

unint64_t sub_258791660()
{
  result = qword_280C0DE78;
  if (!qword_280C0DE78)
  {
    sub_2587916D4(255, &qword_280C0DE68, _s14OrderedElementVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0DE78);
  }

  return result;
}

void sub_2587916D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_258791374();
    v7 = a3(a1, &type metadata for MedicalIDEmergencyContact, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258791754(uint64_t a1, uint64_t a2)
{
  sub_2587916D4(0, &qword_280C0DE68, _s14OrderedElementVMa);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587917D4(uint64_t a1, __int128 *a2)
{
  v5 = *v2;
  sub_2588BE038();
  v6 = a2[7];
  v62 = a2[6];
  v63 = v6;
  v64 = *(a2 + 16);
  v7 = a2[3];
  v58 = a2[2];
  v59 = v7;
  v8 = a2[5];
  v60 = a2[4];
  v61 = v8;
  v9 = a2[1];
  v56 = *a2;
  v57 = v9;
  MedicalIDEmergencyContact.hash(into:)(&v46);
  v10 = sub_2588BE078();
  v11 = -1 << *(v5 + 32);
  v12 = v10 & ~v11;
  if ((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(v5 + 48) + 136 * v12;
      v56 = *v14;
      v15 = *(v14 + 48);
      v16 = *(v14 + 64);
      v17 = *(v14 + 32);
      v57 = *(v14 + 16);
      v58 = v17;
      v59 = v15;
      v60 = v16;
      v18 = *(v14 + 80);
      v19 = *(v14 + 96);
      v20 = *(v14 + 112);
      v64 = *(v14 + 128);
      v62 = v19;
      v63 = v20;
      v61 = v18;
      sub_2588BE038();
      v52 = v62;
      v53 = v63;
      v54 = v64;
      v48 = v58;
      v49 = v59;
      v50 = v60;
      v51 = v61;
      v46 = v56;
      v47 = v57;
      sub_258791754(&v56, v45);
      MedicalIDEmergencyContact.hash(into:)(v55);
      v21 = sub_2588BE078();
      sub_2588BE038();
      v22 = a2[7];
      v52 = a2[6];
      v53 = v22;
      v54 = *(a2 + 16);
      v23 = a2[3];
      v48 = a2[2];
      v49 = v23;
      v24 = a2[5];
      v50 = a2[4];
      v51 = v24;
      v25 = a2[1];
      v46 = *a2;
      v47 = v25;
      MedicalIDEmergencyContact.hash(into:)(v45);
      v26 = sub_2588BE078();
      sub_258791C20(&v56);
      if (v21 == v26)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v5 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_258791C20(a2);
    v33 = *(v5 + 48) + 136 * v12;
    v34 = *(v33 + 80);
    v35 = *(v33 + 96);
    v36 = *(v33 + 112);
    v54 = *(v33 + 128);
    v52 = v35;
    v53 = v36;
    v51 = v34;
    v38 = *(v33 + 16);
    v37 = *(v33 + 32);
    v39 = *(v33 + 64);
    v49 = *(v33 + 48);
    v50 = v39;
    v46 = *v33;
    v47 = v38;
    v48 = v37;
    v40 = *(v33 + 112);
    *(a1 + 96) = *(v33 + 96);
    *(a1 + 112) = v40;
    *(a1 + 128) = *(v33 + 128);
    v41 = *(v33 + 48);
    *(a1 + 32) = *(v33 + 32);
    *(a1 + 48) = v41;
    v42 = *(v33 + 80);
    *(a1 + 64) = *(v33 + 64);
    *(a1 + 80) = v42;
    v43 = *(v33 + 16);
    *a1 = *v33;
    *(a1 + 16) = v43;
    sub_258791754(&v46, v45);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = *v44;
    sub_258791754(a2, &v56);
    sub_258791C98(a2, v12, isUniquelyReferenced_nonNull_native);
    *v44 = v46;
    v28 = a2[7];
    *(a1 + 96) = a2[6];
    *(a1 + 112) = v28;
    *(a1 + 128) = *(a2 + 16);
    v29 = a2[3];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v29;
    v30 = a2[5];
    *(a1 + 64) = a2[4];
    *(a1 + 80) = v30;
    v31 = a2[1];
    result = 1;
    *a1 = *a2;
    *(a1 + 16) = v31;
  }

  return result;
}

uint64_t MedicalIDEmergencyContact.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[7];
  v5 = v1[9];
  v6 = v1[11];
  if (v1[1])
  {
    sub_2588BE058();
    sub_2588BD908();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_2588BE058();
    if (v2)
    {
LABEL_3:
      sub_2588BE058();
      sub_2588BD908();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_2588BE058();
  if (v3)
  {
LABEL_4:
    sub_2588BE058();
    sub_2588BD908();
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_2588BE058();
  if (v4)
  {
LABEL_5:
    sub_2588BE058();
    sub_2588BD908();
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_2588BE058();
    if (v6)
    {
      goto LABEL_7;
    }

    return sub_2588BE058();
  }

LABEL_13:
  sub_2588BE058();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_2588BE058();
  sub_2588BD908();
  if (!v6)
  {
    return sub_2588BE058();
  }

LABEL_7:
  sub_2588BE058();

  return sub_2588BD908();
}

uint64_t sub_258791C20(uint64_t a1)
{
  sub_2587916D4(0, &qword_280C0DE68, _s14OrderedElementVMa);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258791C98(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25883E8AC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_25883F0A0();
      goto LABEL_12;
    }

    sub_25883F630(v7 + 1);
  }

  v9 = *v3;
  sub_2588BE038();
  v10 = *(v6 + 112);
  v55 = *(v6 + 96);
  v56 = v10;
  v57 = *(v6 + 128);
  v11 = *(v6 + 48);
  v51 = *(v6 + 32);
  v52 = v11;
  v12 = *(v6 + 80);
  v53 = *(v6 + 64);
  v54 = v12;
  v13 = *(v6 + 16);
  v49 = *v6;
  v50 = v13;
  MedicalIDEmergencyContact.hash(into:)(&v39);
  result = sub_2588BE078();
  v14 = -1 << *(v9 + 32);
  a2 = result & ~v14;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_2587916D4(0, &qword_280C0DE68, _s14OrderedElementVMa);
    do
    {
      v16 = *(v9 + 48) + 136 * a2;
      v49 = *v16;
      v17 = *(v16 + 48);
      v18 = *(v16 + 64);
      v19 = *(v16 + 32);
      v50 = *(v16 + 16);
      v51 = v19;
      v52 = v17;
      v53 = v18;
      v20 = *(v16 + 80);
      v21 = *(v16 + 96);
      v22 = *(v16 + 112);
      v57 = *(v16 + 128);
      v55 = v21;
      v56 = v22;
      v54 = v20;
      sub_2588BE038();
      v45 = v55;
      v46 = v56;
      v47 = v57;
      v41 = v51;
      v42 = v52;
      v43 = v53;
      v44 = v54;
      v39 = v49;
      v40 = v50;
      sub_258791754(&v49, v38);
      MedicalIDEmergencyContact.hash(into:)(v48);
      v23 = sub_2588BE078();
      sub_2588BE038();
      v24 = *(v6 + 112);
      v45 = *(v6 + 96);
      v46 = v24;
      v47 = *(v6 + 128);
      v25 = *(v6 + 48);
      v41 = *(v6 + 32);
      v42 = v25;
      v26 = *(v6 + 80);
      v43 = *(v6 + 64);
      v44 = v26;
      v27 = *(v6 + 16);
      v39 = *v6;
      v40 = v27;
      MedicalIDEmergencyContact.hash(into:)(v38);
      v28 = sub_2588BE078();
      result = sub_258791C20(&v49);
      if (v23 == v28)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v29 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v30 = *(v29 + 48) + 136 * a2;
  v31 = *(v6 + 48);
  *(v30 + 32) = *(v6 + 32);
  *(v30 + 48) = v31;
  *(v30 + 128) = *(v6 + 128);
  v32 = *(v6 + 112);
  *(v30 + 96) = *(v6 + 96);
  *(v30 + 112) = v32;
  v33 = *(v6 + 80);
  *(v30 + 64) = *(v6 + 64);
  *(v30 + 80) = v33;
  v34 = *(v6 + 16);
  *v30 = *v6;
  *(v30 + 16) = v34;
  v35 = *(v29 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (!v36)
  {
    *(v29 + 16) = v37;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2588BDFB8();
  __break(1u);
  return result;
}

void *sub_258791F54(uint64_t a1, uint64_t a2)
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

  sub_258791FD8(0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x7878787878787879) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

void sub_258791FD8(uint64_t a1)
{
  if (!qword_280C0DDC0)
  {
    sub_258791134(255);
    v1 = sub_2588BDF88();
    if (!v2)
    {
      atomic_store(v1, &qword_280C0DDC0);
    }
  }
}

void *sub_258792030(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 136 * (v17 | (v12 << 6)));
      v29[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v29[3] = v18[3];
      v29[4] = v19;
      v29[1] = v21;
      v29[2] = v20;
      v23 = v18[6];
      v22 = v18[7];
      v24 = v18[5];
      v30 = *(v18 + 16);
      v29[6] = v23;
      v29[7] = v22;
      v29[5] = v24;
      memmove(v11, v18, 0x88uLL);
      if (v14 == v10)
      {
        sub_258791754(v29, v28);
        goto LABEL_23;
      }

      v11 += 136;
      sub_258791754(v29, v28);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2587921E8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25883FA34(v2);
  }

  v3 = v2[2];
  v41[0] = (v2 + 4);
  v41[1] = v3;
  result = sub_2588BDF68();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 20;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (v12[17] >= *v12)
          {
            break;
          }

          v13 = v12 - 16;
          v32 = *(v12 + 1);
          v14 = *(v12 + 3);
          v15 = *(v12 + 5);
          v16 = *(v12 + 9);
          v35 = *(v12 + 7);
          v36 = v16;
          v33 = v14;
          v34 = v15;
          v17 = *(v12 + 11);
          v18 = *(v12 + 13);
          v19 = *(v12 + 15);
          v40 = v12[17];
          v38 = v18;
          v39 = v19;
          v37 = v17;
          v20 = *(v12 - 3);
          *(v12 + 9) = *(v12 - 4);
          v21 = *(v12 - 6);
          *(v12 + 7) = *(v12 - 5);
          *(v12 + 5) = v21;
          v22 = *(v12 - 8);
          *(v12 + 3) = *(v12 - 7);
          v12[17] = *v12;
          v23 = *(v12 - 2);
          *(v12 + 15) = *(v12 - 1);
          *(v12 + 13) = v23;
          *(v12 + 11) = v20;
          *(v12 + 1) = v22;
          *v13 = v32;
          v24 = v33;
          v25 = v34;
          v26 = v36;
          v13[3] = v35;
          v13[4] = v26;
          v13[1] = v24;
          v13[2] = v25;
          v27 = v37;
          v28 = v38;
          v29 = v39;
          *v12 = v40;
          v13[6] = v28;
          v13[7] = v29;
          v13[5] = v27;
          v12 -= 17;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 17;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_2587916D4(0, &qword_280C0DE68, _s14OrderedElementVMa);
      v7 = sub_2588BD9E8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v32 = v7 + 32;
    *(&v32 + 1) = v6;
    sub_25883D7B0(&v32, v31, v41, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t MedicalIDEmergencyContactProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SuggestedEmergencyContactFetcher.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_258792498(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_2588BC198();
  }

  else
  {
    sub_2588BC0A8();
  }

  return sub_2588BC1E8();
}

uint64_t sub_258792500(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_2588BC198();
    sub_2588BC1E8();
    sub_2587A7414();
  }

  else
  {
    sub_2588BC0A8();
    sub_2588BC1E8();
    sub_2587AA928(&qword_27F95D1A0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_2587925F4(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2588BC928();

    return sub_2588BC1E8();
  }

  else
  {
    sub_2588BC2D8();
    swift_getWitnessTable();
    sub_2588BC8A8();
    sub_2588BC1E8();
    sub_2588BDCE8();
    swift_getWitnessTable();
    sub_2588BC2D8();
    swift_getWitnessTable();
    sub_2588BC8A8();
    return sub_2588BC1E8();
  }
}

uint64_t sub_258792758(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_2588BC928();
    sub_2588BC1E8();
  }

  else
  {
    sub_2588BC2D8();
    swift_getWitnessTable();
    sub_2588BC8A8();
    sub_2588BC1E8();
    sub_2588BDCE8();
    swift_getWitnessTable();
    sub_2588BC2D8();
    swift_getWitnessTable();
    sub_2588BC8A8();
    sub_2588BC1E8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_25879296C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2587929A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BD8A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2587929D0()
{

  return swift_deallocObject();
}

uint64_t sub_258792A08()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_258792A90()
{
  v1 = sub_2588BC248();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void *sub_258792B1C@<X0>(void *a1@<X8>)
{
  result = sub_2588BBD28();
  *a1 = v3;
  return result;
}

uint64_t sub_258792B9C()
{

  return swift_deallocObject();
}

uint64_t sub_258792BD4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_258792C0C()
{

  return swift_deallocObject();
}

uint64_t sub_258792C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
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

  else
  {
    sub_2587B1718(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_258792DC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    sub_2587B1718(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_258792F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2588BB9F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_2587B2F14(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2587930BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2588BB9F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    sub_2587B2F14(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_25879321C()
{

  return swift_deallocObject();
}

uint64_t sub_258793254()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_258793294()
{

  return swift_deallocObject();
}

uint64_t sub_2587932E4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for MedicalIDData(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(&a1[v11], a2, v9);
  }

  v12 = sub_2588BBB48();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_17;
  }

  v13 = sub_2588BBAC8();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_17;
  }

  v14 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_17;
  }

  v15 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  v16 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[11];
    goto LABEL_17;
  }

  v18 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v19 = *(*(v18 - 8) + 48);
  v20 = &a1[a3[12]];

  return v19(v20, a2, v18);
}

char *sub_258793570(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MedicalIDData(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(&v5[v11], a2, a2, v9);
  }

  v12 = sub_2588BBB48();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_15;
  }

  v13 = sub_2588BBAC8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_15;
  }

  v14 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_15;
  }

  v15 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  v16 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[11];
    goto LABEL_15;
  }

  v18 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v19 = *(*(v18 - 8) + 56);
  v20 = &v5[a4[12]];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_258793804(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for MedicalIDDataViewModel(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  sub_2587C4E34(0, &qword_27F95DAB8, MEMORY[0x28220C230], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  sub_2587C4E34(0, &qword_27F95DAC0, MEMORY[0x28220C1A0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  sub_2587C4E34(0, &qword_27F95DAC8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = &a1[a3[9]];

  return v17(v18, a2, v16);
}

char *sub_258793A30(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MedicalIDDataViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  sub_2587C4E34(0, &qword_27F95DAB8, MEMORY[0x28220C230], MEMORY[0x277CDF468]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  sub_2587C4E34(0, &qword_27F95DAC0, MEMORY[0x28220C1A0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  sub_2587C4E34(0, &qword_27F95DAC8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = &v5[a4[9]];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_258793C6C()
{
  sub_2587A7460(0);
  v2 = v1 - 8;
  v71 = *(*(v1 - 8) + 80);
  v3 = (v71 + 16) & ~v71;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for MedicalIDDataContentView(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = v3 + v4 + v6;
  sub_2587A74F0(0);
  (*(*(v8 - 8) + 8))(v0 + v3, v8);
  sub_2587A74A8(0);

  v9 = v0 + v3 + *(v2 + 44);
  v10 = type metadata accessor for MedicalIDNavigationBarViewModifier(0);
  v11 = v10[5];
  sub_2587C4E34(0, &qword_27F95DB20, MEMORY[0x28220C1A0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2588BBAC8();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  else
  {
  }

  v13 = v7 & ~v6;

  v14 = v10[8];
  sub_2587C4E34(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_2588BC038();
    (*(*(v15 - 8) + 8))(v9 + v14, v15);
  }

  else
  {
  }

  v72 = v5;
  v70 = v0 + v13;
  v16 = (v0 + v13 + *(v5 + 20));

  v17 = type metadata accessor for MedicalIDDataViewModel(0);
  v18 = (v16 + v17[5]);

  v19 = type metadata accessor for MedicalIDData(0);
  v20 = v19[13];
  v21 = sub_2588BB9B8();
  v80 = *(v21 - 8);
  v22 = *(v80 + 48);
  if (!v22(v18 + v20, 1, v21))
  {
    (*(v80 + 8))(v18 + v20, v21);
  }

  v23 = v19[14];
  if (!v22(v18 + v23, 1, v21))
  {
    (*(v80 + 8))(v18 + v23, v21);
  }

  v24 = (v18 + v19[18]);
  v25 = v24[1];
  if (v25 >> 60 != 15)
  {
    sub_2587C2610(*v24, v25);
  }

  v26 = v19[19];
  v27 = sub_2588BB818();
  v73 = *(v27 - 8);
  v76 = *(v73 + 48);
  if (!v76(v18 + v26, 1, v27))
  {
    (*(v73 + 8))(v18 + v26, v27);
  }

  v28 = v19[21];
  if (!v22(v18 + v28, 1, v21))
  {
    (*(v80 + 8))(v18 + v28, v21);
  }

  v29 = v17[6];
  v30 = sub_2588BBB48();
  v74 = *(*(v30 - 8) + 8);
  v75 = v30;
  v74(v16 + v29);

  v31 = v17[8];
  v32 = sub_2588BBAC8();
  v79 = *(*(v32 - 8) + 8);
  v79(v16 + v31, v32);
  v77 = v17;
  v78 = v16;
  v33 = v16 + v17[9];

  v34 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v35 = &v33[v34[5]];

  v36 = v19[13];
  if (!v22(&v35[v36], 1, v21))
  {
    (*(v80 + 8))(&v35[v36], v21);
  }

  v37 = v19[14];
  if (!v22(&v35[v37], 1, v21))
  {
    (*(v80 + 8))(&v35[v37], v21);
  }

  v38 = &v35[v19[18]];
  v39 = v38[1];
  if (v39 >> 60 != 15)
  {
    sub_2587C2610(*v38, v39);
  }

  v40 = v19[19];
  if (!v76(&v35[v40], 1, v27))
  {
    (*(v73 + 8))(&v35[v40], v27);
  }

  v41 = v19[21];
  if (!v22(&v35[v41], 1, v21))
  {
    (*(v80 + 8))(&v35[v41], v21);
  }

  v79(&v33[v34[6]], v32);
  v42 = &v33[v34[7]];
  v79(v42, v32);

  v43 = &v33[v34[8]];
  v79(v43, v32);
  v44 = type metadata accessor for MedicalIDWeightFormatter(0);

  v45 = (v78 + v77[10]);

  v46 = v19[13];
  if (!v22(v45 + v46, 1, v21))
  {
    (*(v80 + 8))(v45 + v46, v21);
  }

  v47 = v19[14];
  if (!v22(v45 + v47, 1, v21))
  {
    (*(v80 + 8))(v45 + v47, v21);
  }

  v48 = (v45 + v19[18]);
  v49 = v48[1];
  if (v49 >> 60 != 15)
  {
    sub_2587C2610(*v48, v49);
  }

  v50 = v19[19];
  if (!v76(v45 + v50, 1, v27))
  {
    (*(v73 + 8))(v45 + v50, v27);
  }

  v51 = v19[21];
  if (!v22(v45 + v51, 1, v21))
  {
    (*(v80 + 8))(v45 + v51, v21);
  }

  v52 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  (v74)(v45 + v52[5], v75);
  v79(v45 + v52[6], v32);

  v53 = (v78 + v77[11]);

  v54 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  (v74)(v53 + *(v54 + 20), v75);
  v79(v53 + *(v54 + 24), v32);
  v55 = v78 + v77[12];

  v56 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v57 = &v55[v56[5]];

  v58 = v19[13];
  if (!v22(&v57[v58], 1, v21))
  {
    (*(v80 + 8))(&v57[v58], v21);
  }

  v59 = v19[14];
  if (!v22(&v57[v59], 1, v21))
  {
    (*(v80 + 8))(&v57[v59], v21);
  }

  v60 = &v57[v19[18]];
  v61 = v60[1];
  if (v61 >> 60 != 15)
  {
    sub_2587C2610(*v60, v61);
  }

  v62 = v19[19];
  if (!v76(&v57[v62], 1, v27))
  {
    (*(v73 + 8))(&v57[v62], v27);
  }

  v63 = v19[21];
  if (!v22(&v57[v63], 1, v21))
  {
    (*(v80 + 8))(&v57[v63], v21);
  }

  (v74)(&v55[v56[6]], v75);
  v79(&v55[v56[7]], v32);

  v64 = v56[9];
  if (!v22(&v55[v64], 1, v21))
  {
    (*(v80 + 8))(&v55[v64], v21);
  }

  v65 = v72[7];
  sub_2587C4E34(0, &qword_27F95DB18, MEMORY[0x28220C230], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v74)(v70 + v65, v75);
  }

  else
  {
  }

  v66 = v72[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v79((v70 + v66), v32);
  }

  else
  {
  }

  v67 = v72[9];
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v68 = sub_2588BBF18();
    (*(*(v68 - 8) + 8))(v70 + v67, v68);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258794AA8(uint64_t a1, uint64_t a2)
{
  sub_2587A7460(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258794B10()
{
  v1 = type metadata accessor for MedicalIDDataContentView(0);
  v61 = *(*(v1 - 1) + 80);
  v59 = *(*(v1 - 1) + 64);
  v2 = sub_2588BC248();
  v62 = *(v2 - 8);
  v63 = v2;
  v58 = *(v62 + 80);
  v65 = v0;
  v60 = (v61 + 16) & ~v61;

  v64 = v1;
  v57 = v0 + v60;
  v3 = (v0 + v60 + v1[5]);

  v4 = type metadata accessor for MedicalIDDataViewModel(0);
  v5 = (v3 + v4[5]);

  v6 = type metadata accessor for MedicalIDData(0);
  v7 = v6[13];
  v8 = sub_2588BB9B8();
  v73 = *(v8 - 8);
  v9 = *(v73 + 48);
  if (!v9(v5 + v7, 1, v8))
  {
    (*(v73 + 8))(v5 + v7, v8);
  }

  v10 = v6[14];
  if (!v9(v5 + v10, 1, v8))
  {
    (*(v73 + 8))(v5 + v10, v8);
  }

  v11 = (v5 + v6[18]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_2587C2610(*v11, v12);
  }

  v13 = v6[19];
  v14 = sub_2588BB818();
  v66 = *(v14 - 8);
  v69 = *(v66 + 48);
  if (!v69(v5 + v13, 1, v14))
  {
    (*(v66 + 8))(v5 + v13, v14);
  }

  v15 = v6[21];
  if (!v9(v5 + v15, 1, v8))
  {
    (*(v73 + 8))(v5 + v15, v8);
  }

  v16 = v4[6];
  v17 = sub_2588BBB48();
  v67 = *(*(v17 - 8) + 8);
  v68 = v17;
  v67(v3 + v16);

  v18 = v4[8];
  v19 = sub_2588BBAC8();
  v72 = *(*(v19 - 8) + 8);
  v72(v3 + v18, v19);
  v70 = v4;
  v71 = v3;
  v20 = v3 + v4[9];

  v21 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v22 = &v20[v21[5]];

  v23 = v6[13];
  if (!v9(&v22[v23], 1, v8))
  {
    (*(v73 + 8))(&v22[v23], v8);
  }

  v24 = v6[14];
  if (!v9(&v22[v24], 1, v8))
  {
    (*(v73 + 8))(&v22[v24], v8);
  }

  v25 = &v22[v6[18]];
  v26 = v25[1];
  if (v26 >> 60 != 15)
  {
    sub_2587C2610(*v25, v26);
  }

  v27 = v6[19];
  if (!v69(&v22[v27], 1, v14))
  {
    (*(v66 + 8))(&v22[v27], v14);
  }

  v28 = v6[21];
  if (!v9(&v22[v28], 1, v8))
  {
    (*(v73 + 8))(&v22[v28], v8);
  }

  v72(&v20[v21[6]], v19);
  v29 = &v20[v21[7]];
  v72(v29, v19);

  v30 = &v20[v21[8]];
  v72(v30, v19);
  v31 = type metadata accessor for MedicalIDWeightFormatter(0);

  v32 = (v71 + v70[10]);

  v33 = v6[13];
  if (!v9(v32 + v33, 1, v8))
  {
    (*(v73 + 8))(v32 + v33, v8);
  }

  v34 = v6[14];
  if (!v9(v32 + v34, 1, v8))
  {
    (*(v73 + 8))(v32 + v34, v8);
  }

  v35 = (v32 + v6[18]);
  v36 = v35[1];
  if (v36 >> 60 != 15)
  {
    sub_2587C2610(*v35, v36);
  }

  v37 = v6[19];
  if (!v69(v32 + v37, 1, v14))
  {
    (*(v66 + 8))(v32 + v37, v14);
  }

  v38 = v6[21];
  if (!v9(v32 + v38, 1, v8))
  {
    (*(v73 + 8))(v32 + v38, v8);
  }

  v39 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  (v67)(v32 + v39[5], v68);
  v72(v32 + v39[6], v19);

  v40 = (v71 + v70[11]);

  v41 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  (v67)(v40 + *(v41 + 20), v68);
  v72(v40 + *(v41 + 24), v19);
  v42 = v71 + v70[12];

  v43 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v44 = &v42[v43[5]];

  v45 = v6[13];
  if (!v9(&v44[v45], 1, v8))
  {
    (*(v73 + 8))(&v44[v45], v8);
  }

  v46 = v6[14];
  if (!v9(&v44[v46], 1, v8))
  {
    (*(v73 + 8))(&v44[v46], v8);
  }

  v47 = &v44[v6[18]];
  v48 = v47[1];
  if (v48 >> 60 != 15)
  {
    sub_2587C2610(*v47, v48);
  }

  v49 = v6[19];
  if (!v69(&v44[v49], 1, v14))
  {
    (*(v66 + 8))(&v44[v49], v14);
  }

  v50 = v6[21];
  if (!v9(&v44[v50], 1, v8))
  {
    (*(v73 + 8))(&v44[v50], v8);
  }

  (v67)(&v42[v43[6]], v68);
  v72(&v42[v43[7]], v19);

  v51 = v43[9];
  if (!v9(&v42[v51], 1, v8))
  {
    (*(v73 + 8))(&v42[v51], v8);
  }

  v52 = v1[7];
  sub_2587C4E34(0, &qword_27F95DB18, MEMORY[0x28220C230], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v67)(v57 + v52, v68);
  }

  else
  {
  }

  v53 = v64[8];
  sub_2587C4E34(0, &qword_27F95DB20, MEMORY[0x28220C1A0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v72((v57 + v53), v19);
  }

  else
  {
  }

  v54 = v64[9];
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = sub_2588BBF18();
    (*(*(v55 - 8) + 8))(v57 + v54, v55);
  }

  else
  {
  }

  (*(v62 + 8))(v65 + ((v60 + v59 + v58) & ~v58), v63);

  return swift_deallocObject();
}

uint64_t sub_2587957D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2587958C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_258795984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_258795A60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  sub_2587CC6E8(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[10]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    sub_2587CC500(0, &qword_27F95DAB8, MEMORY[0x28220C228], MEMORY[0x277CDF468]);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[11];
      goto LABEL_5;
    }

    sub_2587CC500(0, &qword_27F95DAC0, MEMORY[0x28220C148], MEMORY[0x277CDF468]);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[12];
      goto LABEL_5;
    }

    sub_2587CC500(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v19 = v18;
    v20 = *(*(v18 - 8) + 48);
    v21 = a1 + a3[13];

    return v20(v21, a2, v19);
  }
}

void sub_258795CDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_2587CC6E8(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
    return;
  }

  sub_2587CC500(0, &qword_27F95DAB8, MEMORY[0x28220C228], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  sub_2587CC500(0, &qword_27F95DAC0, MEMORY[0x28220C148], MEMORY[0x277CDF468]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_5;
  }

  sub_2587CC500(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[13];

  v20(v21, a2, a2, v19);
}

double sub_258795F7C@<D0>(_OWORD *a1@<X8>)
{
  sub_2587AA634();
  sub_2588BC5A8();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_258795FE8()
{

  return swift_deallocObject();
}

uint64_t sub_258796090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDDataViewModel(0);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_258796150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDDataViewModel(0);
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_258796274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2587D2BD4(0, &qword_27F95DAC0, MEMORY[0x28220C158], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2587D2BD4(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2587963EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_2587D2BD4(0, &qword_27F95DAC0, MEMORY[0x28220C158], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2587D2BD4(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_258796564()
{
  v1 = type metadata accessor for MedicalIDEditEmergencyContactsModalView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 40))
  {
  }

  v3 = *(v1 + 32);
  sub_2587D2BD4(0, &qword_27F95DB20, MEMORY[0x28220C158], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2588BBAC8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 36);
  sub_2587D2BD4(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2588BC038();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258796788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2587D2BD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_2587D2BD4(0, &qword_27F95DF90, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

void sub_25879690C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2587D2BD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_2587D2BD4(0, &qword_27F95DF90, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_258796BC8()
{
  v1 = (type metadata accessor for MedicalIDEmergencyContactsEditView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2587D2BD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v2 + v1[9];
  v5 = sub_2588BD568();
  (*(*(v5 - 8) + 8))(v4, v5);
  sub_2587D2BD4(0, &qword_27F95DF90, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);

  return swift_deallocObject();
}

uint64_t sub_258796D74()
{

  return swift_deallocObject();
}

uint64_t sub_258796DAC(uint64_t a1, uint64_t a2)
{
  sub_2587D5D94(0, &qword_27F95E010, sub_2587D6028, sub_2587D6558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258796E40(uint64_t a1)
{
  sub_2587D5D94(0, &qword_27F95E010, sub_2587D6028, sub_2587D6558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258796EE0()
{

  return swift_deallocObject();
}

uint64_t sub_258797040(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2587DBED8(0, &qword_27F95DAB8, MEMORY[0x28220C240], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2587DBED8(0, &qword_27F95DAC0, MEMORY[0x28220C198], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_2587971AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2587DBED8(0, &qword_27F95DAB8, MEMORY[0x28220C240], MEMORY[0x277CDF468]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2587DBED8(0, &qword_27F95DAC0, MEMORY[0x28220C198], MEMORY[0x277CDF468]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_258797318()
{
  sub_2587DB484(255);
  sub_2587DBC18();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258797378(uint64_t *a1)
{
  sub_2588BC138();
  sub_2588BC208();
  sub_2588BC788();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_258797460(__int128 *a1)
{
  v2 = a1[5];
  v8[4] = a1[4];
  v8[5] = v2;
  v3 = a1[7];
  v8[6] = a1[6];
  v8[7] = v3;
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  sub_2587DEE04(v8, &v7);
  return sub_2587DD71C(a1);
}

uint64_t sub_258797550(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2587DE888(v1, v2);
}

uint64_t sub_258797594()
{

  return swift_deallocObject();
}

uint64_t sub_2587975F8()
{

  return swift_deallocObject();
}

uint64_t sub_258797660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25879771C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25879783C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2587978F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2587979BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_258797A84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_258797B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2587E89C8(0, &qword_27F95E668, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_258797C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2587E89C8(0, &qword_27F95E668, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_258797D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2587E8E94(0, &qword_27F95D880, MEMORY[0x28220BF30]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2587E8E94(0, &qword_27F95DA80, MEMORY[0x28220B6D0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 76);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_258797ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_2587E8E94(0, &qword_27F95D880, MEMORY[0x28220BF30]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2587E8E94(0, &qword_27F95DA80, MEMORY[0x28220B6D0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 76);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_258798050(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  sub_2587CC6E8(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v15 = *(v14 - 8);
    v16 = a3[6];
LABEL_13:
    v9 = *(v15 + 48);
    v10 = a1 + v16;
    goto LABEL_14;
  }

  sub_2587ED574(0, &qword_27F95DAB8, MEMORY[0x28220C250], MEMORY[0x277CDF468]);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v15 = *(v17 - 8);
    v16 = a3[9];
    goto LABEL_13;
  }

  sub_2587ED574(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[10];

  return v20(v21, a2, v19);
}

uint64_t sub_258798270(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  sub_2587CC6E8(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_2587ED574(0, &qword_27F95DAB8, MEMORY[0x28220C250], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  sub_2587ED574(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[10];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2587984E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2587EEA60(v1, v2);
}

uint64_t sub_258798524(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2587EEEC8(v1, v2);
}

uint64_t sub_258798564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2588BBAC8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_258798620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2588BBAC8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2587987BC(__int128 *a1)
{
  v2 = a1[5];
  v8[4] = a1[4];
  v8[5] = v2;
  v3 = a1[7];
  v8[6] = a1[6];
  v8[7] = v3;
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  sub_2587914E8(v8, &v7);
  return sub_2587F6790(a1);
}

uint64_t sub_258798850(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2587FAAF8(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_258798930(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2587FAAF8(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_258798A0C(uint64_t a1, uint64_t a2)
{
  sub_2587F9CB8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258798A78()
{
  sub_2587FA5B4(255);
  sub_2587F9AFC(255);
  type metadata accessor for RelationshipPickerView(255);
  sub_2587FA688();
  sub_2587FA228(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView, &unk_2588C85C0);
  swift_getOpaqueTypeConformance2();
  sub_2587913CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258798B6C()
{

  return swift_deallocObject();
}

uint64_t sub_258798BBC()
{
  v1 = type metadata accessor for BasicAlertModel.Action(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = sub_2588BB9F8();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = *(v1 + 24);
  v5 = sub_2588BBDE8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  if (*(v2 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258798D48()
{
  sub_2587FC55C(255);
  sub_2587FC60C(255);
  sub_2587FC7CC(255, &qword_27F95D970, MEMORY[0x277CE0BD8]);
  sub_2587FC940(&qword_27F95EA28, sub_2587FC55C, MEMORY[0x277CE04B0]);
  sub_25878F648();
  sub_2587FC818();
  sub_2587FC8C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258798E38(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2587FEFD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_258798F18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2587FEFD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_258798FFC()
{
  v1 = (type metadata accessor for NanoEmergencyContactAddNewView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[8];
  sub_2587FEFD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_258799170()
{
  sub_2587FEB98(255);
  sub_2587FE91C(255);
  type metadata accessor for RelationshipPickerView(255);
  sub_2587FEB50(&qword_27F95EAB0, sub_2587FE91C, MEMORY[0x277CDD938]);
  sub_2587FEB50(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView, &unk_2588C85C0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258799288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258800A64(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_258799374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258800A64(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }
}

uint64_t sub_25879947C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2588028C0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_25879955C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2588028C0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_25879963C()
{

  return swift_deallocObject();
}

uint64_t sub_258799680()
{

  return swift_deallocObject();
}

uint64_t sub_258799708()
{
  sub_258801EB4(255);
  sub_258802924(255, &qword_27F95E110, MEMORY[0x277D83940]);
  sub_25880232C();
  sub_258802454();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587997A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258799810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258799880()
{

  return swift_deallocObject();
}

uint64_t sub_2587998E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258799950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2587999C0()
{

  return swift_deallocObject();
}

uint64_t sub_258799A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258799A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258799AFC()
{

  return swift_deallocObject();
}

uint64_t sub_258799B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_258799C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_258799CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258799D4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_258799DBC()
{

  return swift_deallocObject();
}

uint64_t sub_258799E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_258799EE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_258799FA4()
{
  v1 = *(type metadata accessor for NanoOrganDonorEditView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = type metadata accessor for MedicalIDData(0);
  v4 = v3[13];
  v5 = sub_2588BB9B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v3[14];
  if (!v7(v2 + v8, 1, v5))
  {
    (*(v6 + 8))(v2 + v8, v5);
  }

  v9 = (v2 + v3[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v3[19];
  v12 = sub_2588BB818();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v2 + v11, v12);
  }

  v14 = v3[21];
  if (!v7(v2 + v14, 1, v5))
  {
    (*(v6 + 8))(v2 + v14, v5);
  }

  v15 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v16 = v15[5];
  v17 = sub_2588BBB48();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v15[6];
  v19 = sub_2588BBAC8();
  (*(*(v19 - 8) + 8))(v2 + v18, v19);

  return swift_deallocObject();
}

uint64_t sub_25879A340()
{
  v20 = *(*(type metadata accessor for NanoOrganDonorEditView(0) - 8) + 80);
  swift_unknownObjectRelease();
  v1 = v0 + ((v20 + 32) & ~v20);

  v2 = type metadata accessor for MedicalIDData(0);
  v3 = v2[13];
  v4 = sub_2588BB9B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v1 + v3, 1, v4))
  {
    (*(v5 + 8))(v1 + v3, v4);
  }

  v7 = v2[14];
  if (!v6(v1 + v7, 1, v4))
  {
    (*(v5 + 8))(v1 + v7, v4);
  }

  v8 = (v1 + v2[18]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_2587C2610(*v8, v9);
  }

  v10 = v2[19];
  v11 = sub_2588BB818();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v1 + v10, 1, v11))
  {
    (*(v12 + 8))(v1 + v10, v11);
  }

  v13 = v2[21];
  if (!v6(v1 + v13, 1, v4))
  {
    (*(v5 + 8))(v1 + v13, v4);
  }

  v14 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v15 = v14[5];
  v16 = sub_2588BBB48();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = v14[6];
  v18 = sub_2588BBAC8();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);

  return swift_deallocObject();
}

uint64_t sub_25879A734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_25879A898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_25879A9F0()
{
  v1 = type metadata accessor for NanoPregnancyEditView(0);
  v25 = *(*(v1 - 8) + 80);
  v26 = v1;
  v2 = v0 + ((v25 + 16) & ~v25);

  v3 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v4 = v2 + v3[5];

  v5 = type metadata accessor for MedicalIDData(0);
  v6 = v5[13];
  v7 = sub_2588BB9B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v5[14];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  v24 = v8;

  v11 = (v4 + v5[18]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_2587C2610(*v11, v12);
  }

  v13 = v5[19];
  v14 = sub_2588BB818();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v4 + v13, 1, v14))
  {
    (*(v15 + 8))(v4 + v13, v14);
  }

  v16 = v5[21];
  if (!v9(v4 + v16, 1, v7))
  {
    (*(v24 + 8))(v4 + v16, v7);
  }

  v17 = v3[6];
  v18 = sub_2588BBB48();
  (*(*(v18 - 8) + 8))(v2 + v17, v18);
  v19 = v3[7];
  v20 = sub_2588BBAC8();
  (*(*(v20 - 8) + 8))(v2 + v19, v20);

  v21 = v3[9];
  if (!v9(v2 + v21, 1, v7))
  {
    (*(v24 + 8))(v2 + v21, v7);
  }

  v22 = v2 + *(v26 + 24);
  if (!v9(v22, 1, v7))
  {
    (*(v24 + 8))(v22, v7);
  }

  sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);

  return swift_deallocObject();
}

uint64_t sub_25879AE48()
{
  v30 = type metadata accessor for NanoPregnancyEditView(0);
  v31 = *(*(v30 - 8) + 80);
  v26 = *(*(v30 - 8) + 64);
  sub_2587AFFC8(0);
  v2 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v32 = v0;
  v27 = (v31 + 32) & ~v31;
  v3 = v0 + v27;

  v4 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v5 = v0 + v27 + v4[5];

  v6 = type metadata accessor for MedicalIDData(0);
  v7 = v6[13];
  v8 = sub_2588BB9B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v11 = v6[14];
  if (!v10(v5 + v11, 1, v8))
  {
    (*(v9 + 8))(v5 + v11, v8);
  }

  v28 = v9;
  v29 = v2;

  v12 = (v5 + v6[18]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_2587C2610(*v12, v13);
  }

  v14 = v6[19];
  v15 = sub_2588BB818();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  v17 = v6[21];
  if (!v10(v5 + v17, 1, v8))
  {
    (*(v28 + 8))(v5 + v17, v8);
  }

  v18 = v4[6];
  v19 = sub_2588BBB48();
  (*(*(v19 - 8) + 8))(v3 + v18, v19);
  v20 = v4[7];
  v21 = sub_2588BBAC8();
  (*(*(v21 - 8) + 8))(v3 + v20, v21);

  v22 = v4[9];
  if (!v10(v3 + v22, 1, v8))
  {
    (*(v28 + 8))(v3 + v22, v8);
  }

  v23 = (v27 + v26 + v29) & ~v29;

  v24 = v3 + *(v30 + 24);
  if (!v10(v24, 1, v8))
  {
    (*(v28 + 8))(v24, v8);
  }

  sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);

  if (!v10(v32 + v23, 1, v8))
  {
    (*(v28 + 8))(v32 + v23, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_25879B3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25879B488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_25879B544(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_25880BE98(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_25879B624(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_25880BE98(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_25879B6F8(uint64_t a1, uint64_t a2)
{
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25879B794(uint64_t a1, uint64_t a2)
{
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25879B87C()
{
  sub_25880AD60(255);
  sub_25880AE24(255);
  sub_25880A9A4(255);
  sub_25880C02C(&qword_27F95EC88, sub_25880A9A4, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  sub_25880C02C(&qword_27F95ECF8, sub_25880AE24, MEMORY[0x277CDDF68]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879B9CC()
{
  v1 = *(type metadata accessor for NanoMultipleSpokenLanguagesView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_25879BAD0()
{
  v1 = *(type metadata accessor for NanoMultipleSpokenLanguagesView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_25879BC00()
{
  v1 = (type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[9];
  sub_25880BE98(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_258804A60(0);
    v6 = *(v5 + 32);
    v7 = sub_2588BC298();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_25879BD90()
{
  v20 = *(*(type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0) - 8) + 80);
  swift_unknownObjectRelease();
  v1 = v0 + ((v20 + 32) & ~v20);

  v2 = type metadata accessor for MedicalIDData(0);
  v3 = v2[13];
  v4 = sub_2588BB9B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v1 + v3, 1, v4))
  {
    (*(v5 + 8))(v1 + v3, v4);
  }

  v7 = v2[14];
  if (!v6(v1 + v7, 1, v4))
  {
    (*(v5 + 8))(v1 + v7, v4);
  }

  v8 = (v1 + v2[18]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_2587C2610(*v8, v9);
  }

  v10 = v2[19];
  v11 = sub_2588BB818();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v1 + v10, 1, v11))
  {
    (*(v12 + 8))(v1 + v10, v11);
  }

  v13 = v2[21];
  if (!v6(v1 + v13, 1, v4))
  {
    (*(v5 + 8))(v1 + v13, v4);
  }

  v14 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v15 = v14[5];
  v16 = sub_2588BBB48();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = v14[6];
  v18 = sub_2588BBAC8();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);

  return swift_deallocObject();
}

uint64_t sub_25879C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for NanoPickerView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  v8 = v7 + v6[13];

  v9 = sub_2588BD488();
  (*(*(v5 - 8) + 8))(v8 + *(v9 + 32), v5);
  v10 = v7 + v6[14];
  sub_258810D18(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  LODWORD(v6) = swift_getEnumCaseMultiPayload();

  if (v6 == 1)
  {

    sub_258804A60(0);
    v12 = *(v11 + 32);
    v13 = sub_2588BC298();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_25879C3C0(uint64_t a1, uint64_t a2)
{
  sub_258810BA0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25879C424(uint64_t a1)
{
  sub_258810BA0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25879C490(uint64_t *a1)
{
  sub_2588BDA08();
  swift_getAssociatedTypeWitness();
  sub_2588BDCE8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_2588BD4D8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_2588BD3B8();
  sub_2588BC1E8();
  sub_2588BC1E8();
  sub_2588BC1E8();
  sub_258810BA0(255);
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  return swift_getWitnessTable();
}

uint64_t sub_25879C6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258811084(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_25879C7C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258811084(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_25879C8C0()
{
  v1 = *(type metadata accessor for NanoConfirmationDeleteView(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  sub_258811084(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_258804A60(0);
    v5 = *(v4 + 32);
    v6 = sub_2588BC298();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_25879CA8C()
{

  return swift_deallocObject();
}

uint64_t sub_25879CB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDDataViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25879CBD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDDataViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25879CC98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC3E8();
  *a1 = result;
  return result;
}

uint64_t sub_25879CCF0()
{
  sub_258815FBC(255);
  sub_258816784(255);
  sub_258816F8C(&qword_27F95F0C8, sub_258815FBC, MEMORY[0x277CDD6E0]);
  sub_258816838(255);
  sub_258816F8C(&qword_27F95F0C0, sub_258816838, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879CE40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_258817194(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_25879CF20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258817194(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_25879D048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDDataViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_25881C0EC(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_25879D19C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDDataViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_25881C0EC(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_25879D340()
{
  sub_25881B1D8(255);
  sub_25881ACE8(255);
  sub_25881B314(255);
  sub_25881C1B8(&qword_27F95F200, sub_25881ACE8, MEMORY[0x277CDE5A0]);
  sub_25881B3C8(255);
  sub_25881C1B8(&qword_27F95F1F8, sub_25881B3C8, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879D498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDDataViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25879D550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDDataViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  return result;
}

uint64_t sub_25879D640()
{

  return swift_deallocObject();
}

uint64_t sub_25879D678(uint64_t *a1)
{
  sub_25881FDB0(255);
  sub_25881FD44(255, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
  sub_2588BC1E8();
  sub_25881FD44(255, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
  sub_2588BC1E8();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();

  return swift_getWitnessTable();
}

uint64_t sub_25879D7B8()
{

  return swift_deallocObject();
}

uint64_t sub_25879D804(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MedicalIDDataViewModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25879D8B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MedicalIDDataViewModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25879D954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC488();
  *a1 = result;
  return result;
}

uint64_t sub_25879D9AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2588BC458();
  *a1 = result;
  return result;
}

uint64_t sub_25879DA4C()
{

  return swift_deallocObject();
}

uint64_t sub_25879DA90()
{
  sub_2588267E8(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_25879DBFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2587CC620(*a1, v2);
  return sub_25882E734(v1, v2);
}

uint64_t sub_25879DC40(uint64_t a1)
{
  sub_2588291A0(0, &qword_27F95F6B0, sub_2588290A8, &type metadata for BasicAlertModifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25879DCC0()
{
  sub_2588291A0(255, &qword_27F95F6B0, sub_2588290A8, &type metadata for BasicAlertModifier);
  sub_2587CC4B0();
  sub_25882BA28();
  sub_25882BB70();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879DE24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC568();
  *a1 = result;
  return result;
}

uint64_t sub_25879DE80()
{

  return swift_deallocObject();
}

uint64_t sub_25879DEC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25879DF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25879E050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25879E10C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2588BBB48();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2588BBAC8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_25879E230(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_2588BBB48();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2588BBAC8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25879E354()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25879E3C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25879E42C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_258832768(v1, v2);
}

uint64_t sub_25879E49C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_258832118(v1, v2);
}

uint64_t sub_25879E518()
{
  v1 = sub_2588BCB08();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_25879E5A0()
{
  sub_258837E84(255);
  sub_258837FA4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879E5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for MedicalIDEditModal(0, v5, *(v4 + 40), a4);
  v7 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  swift_unknownObjectRelease();
  v8 = v4 + v7;
  sub_25883A2CC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2588BC038();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  v10 = v8 + *(v6 + 44);

  if (*(v10 + 24))
  {
  }

  (*(*(v5 - 8) + 8))(v8 + *(v6 + 48), v5);

  return swift_deallocObject();
}

uint64_t sub_25879E7EC(uint64_t *a1)
{
  sub_2588BC138();
  swift_getOpaqueTypeMetadata2();
  sub_25883A2CC(255, &qword_27F95FAB0, sub_25883A330, MEMORY[0x277CDDF58]);
  swift_getOpaqueTypeConformance2();
  sub_25883A504();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_2588BC208();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25883A58C(255, &qword_27F95FAE0, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
  sub_2588BC1E8();
  sub_2588BC1E8();
  swift_getOpaqueTypeConformance2();
  sub_25883A5E8();
  swift_getWitnessTable();
  sub_2587FC5B8();
  return swift_getWitnessTable();
}

uint64_t sub_25879EA34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_25883AC34(0, &qword_27F95FAF0, sub_25883AC00, MEMORY[0x277CE11F8]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    sub_25883AC34(0, &qword_27F95DAC0, MEMORY[0x28220C1A8], MEMORY[0x277CDF468]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

void sub_25879EBFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_25883AC34(0, &qword_27F95FAF0, sub_25883AC00, MEMORY[0x277CE11F8]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    sub_25883AC34(0, &qword_27F95DAC0, MEMORY[0x28220C1A8], MEMORY[0x277CDF468]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[9];

    v17(v18, a2, a2, v16);
  }
}

uint64_t sub_25879EDC8()
{
  sub_25883C4AC(255);
  sub_25883C5EC(255);
  sub_25883C3FC(255);
  sub_2588BBAC8();
  sub_25883C328(255);
  sub_25883C3A8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_25883C6EC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879EF14(void *a1)
{
  sub_2588BD518();
  swift_getWitnessTable();
  sub_2588BCD08();
  sub_258840D70(255, &qword_27F95D5F8, sub_2587AA704, MEMORY[0x277CE0860]);
  sub_2588BC1E8();
  swift_getWitnessTable();
  sub_258840DD4();
  swift_getWitnessTable();
  sub_2588BC2C8();
  return swift_getWitnessTable();
}

uint64_t sub_25879F060(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2588BB818();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25879F10C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2588BB818();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25879F1B0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[9] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_2588BB9B8();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[10];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  sub_2587AFFC8(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[11];
    goto LABEL_11;
  }

  sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[17];

  return v19(v20, a2, v18);
}

void sub_25879F3C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_258847458(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    v11(v12, a2, a2, v10);
    return;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
    return;
  }

  v13 = sub_2588BB9B8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[10];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_2587AFFC8(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_9;
  }

  sub_258847458(0, &qword_27F95E7E8, MEMORY[0x28220BF88], MEMORY[0x277CE10B8]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[17];

  v19(v20, a2, a2, v18);
}

uint64_t sub_25879F5E4(uint64_t *a1)
{
  sub_2587DFBD0(255);
  sub_258846410(255);
  sub_2588BC788();
  swift_getTupleTypeMetadata3();
  sub_2588BD658();
  swift_getWitnessTable();
  v1 = sub_2588BD368();
  sub_258846D18(255);
  sub_2588BC788();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  swift_getWitnessTable();
  v14 = v1;
  v15 = sub_2588BD408();
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  type metadata accessor for MedicalIDAXLayoutView(255, &v14);
  sub_2588BC1E8();
  sub_258837EEC(255);
  v2 = sub_2588BC1E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25884772C(qword_27F95FA28, sub_258837EEC, MEMORY[0x277CE0470]);
  v3 = swift_getWitnessTable();
  v14 = v2;
  v15 = v3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_2587AFFC8(255);
  v6 = v5;
  v14 = v2;
  v15 = v3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = sub_258846EB8();
  v14 = OpaqueTypeMetadata2;
  v15 = v6;
  WitnessTable = OpaqueTypeConformance2;
  v17 = v8;
  v9 = swift_getOpaqueTypeMetadata2();
  v10 = sub_2588BB9B8();
  v14 = OpaqueTypeMetadata2;
  v15 = v6;
  WitnessTable = OpaqueTypeConformance2;
  v17 = v8;
  v11 = swift_getOpaqueTypeConformance2();
  v12 = sub_258847538(&qword_27F95E768, MEMORY[0x28220C000]);
  v14 = v9;
  v15 = v10;
  WitnessTable = v11;
  v17 = v12;
  swift_getOpaqueTypeMetadata2();
  sub_2588463DC(255);
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  return swift_getWitnessTable();
}

uint64_t sub_25879F974(uint64_t *a1)
{
  sub_258848A9C(255, &qword_27F95FE70, type metadata accessor for MedicalIDCellHeaderView, MEMORY[0x277D83D88]);
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  swift_getWitnessTable();
  sub_2588BD408();
  sub_2588BC1E8();
  swift_getWitnessTable();
  sub_258848828();
  return swift_getWitnessTable();
}

uint64_t sub_25879FA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25879FB30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25879FBD0()
{

  return swift_deallocObject();
}

uint64_t sub_25879FC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
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

uint64_t sub_25879FCF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
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

uint64_t sub_25879FDB4(uint64_t a1, uint64_t a2)
{
  sub_25884BD4C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25879FE20()
{
  sub_25884BB34(255);
  type metadata accessor for MedicalIDSpokenLanguagePickerView(255);
  sub_25884C0B4(&qword_27F95FF60, sub_25884BB34, &unk_2588C55E8);
  sub_25884C0B4(&qword_27F95FF68, type metadata accessor for MedicalIDSpokenLanguagePickerView, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25879FF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2588BBAC8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25879FFC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2588BBAC8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2587A0080(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_25884E588(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2587A0160(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_25884E588(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2587A029C(uint64_t a1, uint64_t a2)
{
  sub_2588535A8(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2587A0338(uint64_t a1, uint64_t a2)
{
  sub_2588535A8(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2587A03D8()
{
  v1 = *(type metadata accessor for MedicalIDLearnMoreNavigationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_2588535A8(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_2588BC038();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2587A04FC()
{
  sub_2588522EC(255);
  sub_25885360C(&qword_27F960058, sub_2588522EC, MEMORY[0x277CDDA18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A0584()
{
  sub_258853348(255);
  sub_25885320C(255);
  sub_258853108(255);
  sub_258853054(255);
  sub_2588BC848();
  sub_258852C38(255);
  sub_25885360C(&qword_27F9600C8, sub_258852C38, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A0700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2587A07BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDPregnancyViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2587A08BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2588558E4(0, &qword_27F95E8B8, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2588BC1C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 52);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 56));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2587A09E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2588558E4(0, &qword_27F95E8B8, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2588BC1C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 56)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 52);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2587A0B6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2587EE1A8(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
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

  else
  {
    sub_258855A40(0, &qword_27F95DAB8, MEMORY[0x28220C258], MEMORY[0x277CDF468]);
    v17 = v16;
    v18 = *(*(v16 - 8) + 48);
    v19 = a1 + a3[7];

    return v18(v19, a2, v17);
  }
}

void sub_2587A0D10(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_2587EE1A8(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    sub_258855A40(0, &qword_27F95DAB8, MEMORY[0x28220C258], MEMORY[0x277CDF468]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[7];

    v17(v18, a2, a2, v16);
  }
}

uint64_t sub_2587A0EA8()
{
  v1 = type metadata accessor for EditDateOfBirthCellView(0);
  v28 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v28 + 16) & ~v28);

  v3 = type metadata accessor for MedicalIDData(0);
  v4 = v3[13];
  v5 = sub_2588BB9B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v3[14];
  if (!v7(v2 + v8, 1, v5))
  {
    (*(v6 + 8))(v2 + v8, v5);
  }

  v9 = (v2 + v3[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v3[19];
  v12 = sub_2588BB818();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v2 + v11, v12);
  }

  v14 = v1;

  v15 = v3[21];
  if (!v7(v2 + v15, 1, v5))
  {
    (*(v6 + 8))(v2 + v15, v5);
  }

  v16 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v17 = v16[5];
  v18 = sub_2588BBB48();
  v19 = (*(v18 - 8) + 8);
  v27 = *v19;
  (*v19)(v2 + v17, v18);
  v20 = v16[6];
  v21 = sub_2588BBAC8();
  (*(*(v21 - 8) + 8))(v2 + v20, v21);

  v22 = v2 + v14[5];

  sub_2587EE1A8(0);
  v24 = *(v23 + 32);
  if (!v7(v22 + v24, 1, v5))
  {
    (*(v6 + 8))(v22 + v24, v5);
  }

  if (*(v2 + v14[6]))
  {
  }

  v25 = v14[7];
  sub_258855A40(0, &qword_27F95DB18, MEMORY[0x28220C258], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27(v2 + v25, v18);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2587A1354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_258857954(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2587A1434(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    sub_258857954(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2587A15C8(uint64_t a1)
{
  sub_25885AFE4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587A1700()
{

  return swift_deallocObject();
}

uint64_t sub_2587A1760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDSettingsViewModel(0);
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

uint64_t sub_2587A181C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDSettingsViewModel(0);
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

uint64_t sub_2587A1930()
{
  v1 = type metadata accessor for MedicalIDEditSettingsView(0);
  v16 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v2 = v0 + ((v16 + 32) & ~v16);

  v3 = type metadata accessor for MedicalIDData(0);
  v4 = v3[13];
  v5 = sub_2588BB9B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v3[14];
  if (!v7(v2 + v8, 1, v5))
  {
    (*(v6 + 8))(v2 + v8, v5);
  }

  v9 = (v2 + v3[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v3[19];
  v12 = sub_2588BB818();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v2 + v11, v12);
  }

  v14 = v3[21];
  if (!v7(v2 + v14, 1, v5))
  {
    (*(v6 + 8))(v2 + v14, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_2587A1CC8()
{
  sub_258861104(255);
  sub_2588615C4(255, &qword_27F95F468, MEMORY[0x277D839B0], MEMORY[0x277D83940]);
  sub_2588610DC(255);
  type metadata accessor for MedicalIDLearnMoreNavigationView(255);
  sub_2588611D8();
  sub_25886084C(&qword_27F95E780, type metadata accessor for MedicalIDLearnMoreNavigationView, &unk_2588C53A4);
  swift_getOpaqueTypeConformance2();
  sub_2588221D4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A1DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2587A1EB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2587A1F74(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for MedicalIDData(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_2588BBB48();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = sub_2588BBAC8();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t sub_2587A214C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MedicalIDData(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2588BBB48();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_2588BBAC8();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  sub_258868DE8(0, &qword_27F95D880, MEMORY[0x28220BF28], MEMORY[0x277D83D88]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[9];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2587A2324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25886A2BC(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
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

void sub_2587A2410(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_25886A2BC(0, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_2587A24FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2587A2544()
{

  return swift_deallocObject();
}

uint64_t sub_2587A2584(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2587A2664(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_25886C4F4(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2587A2738()
{
  sub_25886BAF0();
  sub_25886C9D4(&qword_27F9608E8, sub_25886BAF0, MEMORY[0x277CDDA18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A27CC(uint64_t a1, uint64_t a2)
{
  sub_25886C4F4(0, &qword_27F960860, sub_25886C634, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587A2860(uint64_t a1)
{
  sub_25886C4F4(0, &qword_27F960860, sub_25886C634, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587A28EC(uint64_t a1, uint64_t a2)
{
  sub_2587A99C0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587A2960()
{

  return swift_deallocObject();
}

uint64_t sub_2587A29C0()
{

  return swift_deallocObject();
}

uint64_t sub_2587A2A1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_258874404(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2587A2AFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_258874404(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2587A2BD4()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2587A2C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258878620(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_2587A2D60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258878620(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }
}

uint64_t sub_2587A2E5C()
{
  sub_258877AB4(255);
  sub_258878620(255, &qword_27F960B70, sub_258877E40, MEMORY[0x277CE14B8]);
  sub_258877F30();
  sub_25878F648();
  sub_258878314();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A2F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2587A3048(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

id sub_2587A310C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_2587A3168()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2587A31DC()
{

  return swift_deallocObject();
}

uint64_t sub_2587A3228(uint64_t *a1)
{
  sub_2588BDA08();
  swift_getOpaqueTypeMetadata2();
  sub_2588BCA98();
  sub_2588BC1E8();
  swift_getWitnessTable();
  sub_2588BD4D8();
  swift_getOpaqueTypeConformance2();
  sub_25888829C(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2588BD3B8();
  sub_2588BC1E8();
  sub_2588BC318();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_2588BB9F8();
  swift_getOpaqueTypeConformance2();
  sub_2587B2C84();
  sub_2588BD378();
  sub_2588BDCE8();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  sub_2588BD238();
  sub_258837EEC(255);
  sub_2588BC1E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25888829C(qword_27F95FA28, sub_258837EEC, MEMORY[0x277CE0470]);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A35E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BC408();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2587A365C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for MedicalIDData(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_2588BBAC8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = type metadata accessor for MedicalIDHeightFormatter(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = type metadata accessor for MedicalIDWeightFormatter(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_2587A3810(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MedicalIDData(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2588BBAC8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = type metadata accessor for MedicalIDHeightFormatter(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for MedicalIDWeightFormatter(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2587A39CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2587A3A0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[11];
      goto LABEL_5;
    }

    sub_258890F00(0, &qword_27F95DAC0, MEMORY[0x28220C188], MEMORY[0x277CDF468]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[14];

    return v17(v18, a2, v16);
  }
}

void sub_2587A3C20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    v13(a1 + v11, a2, a2, v9);
    return;
  }

  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return;
  }

  sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_5;
  }

  sub_258890F00(0, &qword_27F95DAC0, MEMORY[0x28220C188], MEMORY[0x277CDF468]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[14];

  v17(v18, a2, a2, v16);
}

uint64_t sub_2587A3E40(uint64_t a1, uint64_t a2)
{
  sub_25889A230(0, &qword_27F961160, sub_25889A020, sub_25889A0FC, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587A3FBC(uint64_t a1)
{
  sub_25889D72C(0, &qword_27F9612C0, sub_25889D788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587A404C(uint64_t *a1)
{
  sub_2588A0310(255);
  sub_2588BDCE8();
  swift_getTupleTypeMetadata2();
  v1 = sub_2588BD658();
  sub_25889F07C(255, &qword_27F960120, type metadata accessor for MedicalIDPregnancyStatusLabelView, MEMORY[0x277D83D88]);
  v6 = v1;
  v7 = &type metadata for MedicalIDEditSectionHeaderView;
  v8 = v2;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_2587D68A0();
  v11 = sub_2588A03D0();
  v3 = type metadata accessor for EditingScrollView(255, &v6);
  v4 = swift_getWitnessTable();
  v6 = v3;
  v7 = MEMORY[0x277D839B0];
  v8 = v4;
  WitnessTable = MEMORY[0x277D839C8];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A41A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDDataViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2587A4264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDDataViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2587A4378()
{

  return swift_deallocObject();
}

uint64_t sub_2587A4450(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2588A5E40(0, &qword_27F95DAC0, MEMORY[0x28220C180], MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_2588A5E40(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[10]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    sub_2588A6034(0, &qword_27F9614E8, MEMORY[0x277CE10B8]);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[12];
      goto LABEL_7;
    }

    sub_2588A8960(0, &qword_27F961058, MEMORY[0x277CE10B8]);
    v19 = v18;
    v20 = *(*(v18 - 8) + 48);
    v21 = a1 + a3[13];

    return v20(v21, a2, v19);
  }
}

void sub_2587A46E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_2588A5E40(0, &qword_27F95DAC0, MEMORY[0x28220C180], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_2588A5E40(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
    return;
  }

  sub_2588A6034(0, &qword_27F9614E8, MEMORY[0x277CE10B8]);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_7;
  }

  sub_2588A8960(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[13];

  v20(v21, a2, a2, v19);
}

uint64_t sub_2587A4A1C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2588ACDAC(0, &qword_27F95DAC0, MEMORY[0x28220C150], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    sub_2588ACDAC(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

void sub_2587A4B98(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2588ACDAC(0, &qword_27F95DAC0, MEMORY[0x28220C150], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    sub_2588ACDAC(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 56);
    v16 = a1 + a4[8];

    v15(v16, a2, a2, v14);
  }
}

uint64_t sub_2587A4D14()
{
  v1 = type metadata accessor for MedicalIDNavigationBarViewModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[5];
  sub_2588ACDAC(0, &qword_27F95DB20, MEMORY[0x28220C150], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2588BBAC8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[8];
  sub_2588ACDAC(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2588BC038();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2587A4F0C@<X0>(uint64_t a1@<X8>)
{
  result = sub_2588BC548();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2587A4FA0()
{
  sub_2588AC470(255);
  sub_2588AC5DC(255, &qword_27F961660, sub_2588AC880, sub_2588AC968);
  sub_2588AC328(255);
  sub_2588AC5DC(255, &qword_27F961628, sub_2588AC66C, sub_2588AC798);
  sub_2588AC3DC(255);
  sub_2588ACBF4(&qword_27F961618, sub_2588AC3DC, MEMORY[0x277CE04B0]);
  swift_getOpaqueTypeConformance2();
  sub_2588AC66C(255);
  sub_2588AC798();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2588AC880(255);
  sub_2588AC968();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A5170@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2588BC528();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2587A51C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2587A52B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2588B04F0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_2587A53D0(uint64_t a1)
{
  sub_2588B158C(0, &qword_27F961740, sub_2588B1270, MEMORY[0x277CDF910]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587A546C()
{
  sub_2588B158C(255, &qword_27F961740, sub_2588B1270, MEMORY[0x277CDF910]);
  sub_2588B185C(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_2588B18AC();
  sub_2588B1C10();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2587A5544(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2588B42E8(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_2587A5624(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2588B42E8(0, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2587A574C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2587A5808(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2587A58C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDBiometricsViewModel(0);
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

uint64_t sub_2587A5980(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDBiometricsViewModel(0);
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

uint64_t sub_2587A5A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_2588B7328(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2587A5BE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDBiometricsViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_2588B7328(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_2587A5D40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2588BBB48();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2588BBAC8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_2587A5E94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MedicalIDData(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2588BBB48();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_2588BBAC8();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2587A6038(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_2587A6C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t (*sub_2587A6EA0())(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_2587AA634();
  sub_2588BC5A8();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_2587AA688;
}

uint64_t sub_2587A6F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v8, a1);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v6 + 32))(v10 + v9, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2587AA6D0(255);
  sub_2588BC1E8();
  v11 = sub_2587AA928(&qword_27F95D620, sub_2587AA6D0, MEMORY[0x277CE0868]);
  v14[0] = a2;
  v14[1] = v11;
  swift_getWitnessTable();
  result = sub_2588BC2B8();
  *a3 = result;
  a3[1] = v13;
  return result;
}

uint64_t sub_2587A70E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a2;
  v25 = a4;
  v23 = a3;
  v26 = a5;
  v6 = sub_2588BC248();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587AA6D0(255);
  v10 = sub_2588BC1E8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  swift_getKeyPath(byte_2588BFCA0, v23, v24);
  (*(v7 + 16))(v9, a1, v6);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v9, v6);
  v29 = sub_2587AA84C;
  v30 = v18;
  v19 = v25;
  sub_2588BCE68();

  v20 = sub_2587AA928(&qword_27F95D620, sub_2587AA6D0, MEMORY[0x277CE0868]);
  v27 = v19;
  v28 = v20;
  swift_getWitnessTable();
  sub_2587DCF7C();
  v21 = *(v11 + 8);
  v21(v14, v10);
  sub_2587DCF7C();
  return (v21)(v16, v10);
}

unint64_t sub_2587A7414()
{
  result = qword_27F95D198;
  if (!qword_27F95D198)
  {
    sub_2588BC198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D198);
  }

  return result;
}

void sub_2587A74F0(uint64_t a1)
{
  if (!qword_27F95D1B8)
  {
    sub_2587A8454(255, &qword_27F95D1C0, sub_2587A7578, &_s10BackgroundVN);
    sub_2587A8D34();
    v1 = sub_2588BBED8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D1B8);
    }
  }
}

void sub_2587A7578(uint64_t a1)
{
  if (!qword_27F95D1C8)
  {
    sub_2587A76AC(255);
    sub_2587A9BE0(255, &qword_27F95D328, sub_2587A84B8, sub_2587A8540, MEMORY[0x277CE0338]);
    sub_2587AA928(&qword_27F95D3C8, sub_2587A76AC, MEMORY[0x277CDF340]);
    sub_2587A8A1C();
    sub_2587A8A70();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95D1C8);
    }
  }
}

void sub_2587A76AC(uint64_t a1)
{
  if (!qword_27F95D1D0)
  {
    sub_2587A7740(255);
    sub_2587AA928(&qword_27F95D320, sub_2587A7740, MEMORY[0x277CE14C0]);
    v1 = sub_2588BBEB8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D1D0);
    }
  }
}

void sub_2587A7774(uint64_t a1)
{
  if (!qword_27F95D1E0)
  {
    sub_2587A7820(255);
    sub_2587A7D6C(255);
    sub_2587A8454(255, &qword_27F95D280, sub_2587A7E24, MEMORY[0x277CDF928]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95D1E0);
    }
  }
}

void sub_2587A7820(uint64_t a1)
{
  if (!qword_27F95D1E8)
  {
    sub_2587A9BE0(255, &qword_27F95D1F0, sub_2587A78BC, sub_2587A79DC, MEMORY[0x277CDFAB8]);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D1E8);
    }
  }
}

void sub_2587A792C(uint64_t a1)
{
  if (!qword_27F95D208)
  {
    sub_2587A7988();
    v1 = sub_2588BC8E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D208);
    }
  }
}

unint64_t sub_2587A7988()
{
  result = qword_27F95D210;
  if (!qword_27F95D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D210);
  }

  return result;
}

void sub_2587A79DC(uint64_t a1)
{
  if (!qword_27F95D218)
  {
    sub_2587A8454(255, &qword_27F95D220, sub_2587A7A64, MEMORY[0x277CDF928]);
    sub_2587A7C18();
    v1 = sub_2588BC758();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D218);
    }
  }
}

void sub_2587A7A8C(uint64_t a1)
{
  if (!qword_27F95D230)
  {
    sub_2587A8384(255, &qword_27F95D238, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0308]);
    sub_2587A7B40();
    sub_2587A7B94();
    v1 = sub_2588BBEF8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D230);
    }
  }
}

unint64_t sub_2587A7B40()
{
  result = qword_27F95D240;
  if (!qword_27F95D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D240);
  }

  return result;
}

unint64_t sub_2587A7B94()
{
  result = qword_27F95D248;
  if (!qword_27F95D248)
  {
    sub_2587A8384(255, &qword_27F95D238, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0308]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D248);
  }

  return result;
}

unint64_t sub_2587A7C18()
{
  result = qword_27F95D250;
  if (!qword_27F95D250)
  {
    sub_2587A8454(255, &qword_27F95D220, sub_2587A7A64, MEMORY[0x277CDF928]);
    sub_2587A7CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D250);
  }

  return result;
}

unint64_t sub_2587A7CBC()
{
  result = qword_27F95D258;
  if (!qword_27F95D258)
  {
    sub_2587A7A64(255);
    sub_2587AA928(&qword_27F95D260, sub_2587A7A8C, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D258);
  }

  return result;
}

void sub_2587A7D6C(uint64_t a1)
{
  if (!qword_27F95D268)
  {
    sub_2587A8384(255, &qword_27F95D270, MEMORY[0x277CE0F78], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_2587A8454(255, &qword_27F95D278, MEMORY[0x277CDF088], MEMORY[0x277CDF910]);
    v1 = sub_2588BC788();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D268);
    }
  }
}

void sub_2587A7E24(uint64_t a1)
{
  if (!qword_27F95D288)
  {
    sub_2587A804C(255, &qword_27F95D290, &qword_27F95D298, sub_2587A7EB4, sub_2587A81B0);
    v1 = sub_2588BD238();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D288);
    }
  }
}

void sub_2587A7EB4(uint64_t a1)
{
  if (!qword_27F95D2A0)
  {
    sub_2587A7FB4(255);
    sub_2587A804C(255, &qword_27F95D2B0, &qword_27F95D2B8, sub_2587A80A8, MEMORY[0x277CDF088]);
    sub_2587AA928(&qword_27F95D2D0, sub_2587A7FB4, MEMORY[0x277D83980]);
    sub_2587A815C();
    v1 = sub_2588BD4D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D2A0);
    }
  }
}

void sub_2587A7FE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2587A804C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_2587A8240(255, a3, a4, a5);
    v6 = sub_2588BD658();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2587A80A8(uint64_t a1)
{
  if (!qword_27F95D2C0)
  {
    _s15SectionGridItemVMa(255);
    sub_2587AA928(&qword_27F95D2C8, _s15SectionGridItemVMa, &unk_2588C7EE8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95D2C0);
    }
  }
}

unint64_t sub_2587A815C()
{
  result = qword_27F95D2D8;
  if (!qword_27F95D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D2D8);
  }

  return result;
}

void sub_2587A81B0(uint64_t a1)
{
  if (!qword_27F95D2E0)
  {
    sub_2587A804C(255, &qword_27F95D2E8, &qword_27F95D2F0, sub_2587A82BC, sub_2587A83D8);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D2E0);
    }
  }
}

void sub_2587A8240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2587A82F0(uint64_t a1)
{
  if (!qword_27F95D300)
  {
    sub_2587A8384(255, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2588BCA98();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D300);
    }
  }
}

void sub_2587A8384(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2587A83D8(uint64_t a1)
{
  if (!qword_27F95D310)
  {
    sub_2587A8454(255, &qword_27F95D318, type metadata accessor for MedicalIDDeleteView, MEMORY[0x277CDF928]);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D310);
    }
  }
}

void sub_2587A8454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_2588BC1E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2587A84B8(uint64_t a1)
{
  if (!qword_27F95D330)
  {
    sub_2587A8540(255);
    sub_2587A89AC(255, &qword_27F95D3B0, &qword_27F95D3B8, &qword_27F95D3C0, off_2798A65E8);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D330);
    }
  }
}

void sub_2587A8540(uint64_t a1)
{
  if (!qword_27F95D338)
  {
    sub_2587A8614(255);
    type metadata accessor for MedicalIDDataManager(255);
    sub_2587A878C();
    sub_2587AA928(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95D338);
    }
  }
}

void sub_2587A8614(uint64_t a1)
{
  if (!qword_27F95D340)
  {
    sub_2587A869C(255);
    sub_2587A89AC(255, &qword_27F95D368, &qword_27F95D370, &qword_27F95D378, 0x277CCD7D0);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95D340);
    }
  }
}