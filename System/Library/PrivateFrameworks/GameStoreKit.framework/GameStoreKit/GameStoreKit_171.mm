uint64_t sub_24F7E7B08(uint64_t a1)
{
  sub_24F92B218();

  return sub_24F92B218();
}

uint64_t sub_24F7E7BC8()
{
  sub_24F92D068();
  sub_24F92B218();

  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F7E7CE0(void *a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for CallProviderConversationHandle(0);
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [a2 userIdentifier];
  v12 = sub_24F92B0D8();
  v14 = v13;

  *&v28 = v12;
  *(&v28 + 1) = v14;
  v27[0] = 64;
  v27[1] = 0xE100000000000000;
  sub_24E600AEC();
  if ((sub_24F92C5F8() & 1) == 0)
  {
    v16 = sub_24F92B358();

    if (v16)
    {
      if (([a1 supportsHandleType_] & 1) == 0)
      {
        if (([a1 supportsHandleType_] & 1) == 0)
        {
          return 0;
        }

LABEL_11:
        v15 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      if ([a1 supportsHandleType_])
      {
        goto LABEL_11;
      }

      if (([a1 supportsHandleType_] & 1) == 0)
      {
        return 0;
      }
    }

    v15 = 1;
    goto LABEL_14;
  }

  if (([a1 supportsHandleType_] & 1) == 0)
  {
    result = [a1 supportsHandleType_];
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  v15 = 2;
LABEL_14:
  v18 = [a2 userIdentifier];
  v19 = sub_24F92B0D8();
  v21 = v20;

  sub_24F042070(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213858, &unk_24F9DFE90);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24F93DE60;
  *(v22 + 32) = v15;
  *(v22 + 40) = v19;
  *(v22 + 48) = v21;
  sub_24F26E39C(v22, &v28);
  *(v10 + *(v6 + 20)) = v28;
  v23 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_24E616D0C(0, v23[2] + 1, 1, v23);
    *a3 = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_24E616D0C((v25 > 1), v26 + 1, 1, v23);
    *a3 = v23;
  }

  v23[2] = v26 + 1;
  sub_24F7E8C08(v10, v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26);
  return 1;
}

uint64_t _s12GameStoreKit10CallHandleV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (v2 != 1)
  {
    v7 = 0x6464416C69616D65;
    v8 = 0xEC00000073736572;
  }

  if (*a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x636972656E6567;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  v11 = 0x6D754E656E6F6870;
  v12 = 0xEB00000000726562;
  if (*a2 != 1)
  {
    v11 = 0x6464416C69616D65;
    v12 = 0xEC00000073736572;
  }

  if (*a2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x636972656E6567;
  }

  if (*a2)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v9 == v13 && v10 == v14)
  {
  }

  else
  {
    v15 = sub_24F92CE08();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_24F92CE08();
}

unint64_t sub_24F7E8180()
{
  result = qword_27F251408;
  if (!qword_27F251408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251408);
  }

  return result;
}

unint64_t sub_24F7E81D8()
{
  result = qword_27F251418;
  if (!qword_27F251418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251418);
  }

  return result;
}

unint64_t sub_24F7E8230()
{
  result = qword_27F251420;
  if (!qword_27F251420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251420);
  }

  return result;
}

unint64_t sub_24F7E82B8()
{
  result = qword_27F251428;
  if (!qword_27F251428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251428);
  }

  return result;
}

unint64_t sub_24F7E8310()
{
  result = qword_27F251430;
  if (!qword_27F251430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251430);
  }

  return result;
}

unint64_t sub_24F7E8368()
{
  result = qword_27F251438;
  if (!qword_27F251438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251438);
  }

  return result;
}

unint64_t sub_24F7E83BC()
{
  result = qword_27F251440;
  if (!qword_27F251440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251440);
  }

  return result;
}

uint64_t sub_24F7E8410(void *a1, uint64_t a2)
{
  v57 = *a2;
  v58 = *(a2 + 8);
  v59 = *(a2 + 16);
  v56 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v66 = MEMORY[0x277D84F90];
  v6 = [a1 value];
  v7 = [v6 bundleIdentifiers];
  v54 = a1;
  v55 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = sub_24F92B5A8();

    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v10 = sub_24F9220D8();
    __swift_project_value_buffer(v10, qword_27F39E850);

    v11 = sub_24F9220B8();
    v12 = sub_24F92BD98();

    if (os_log_type_enabled(v11, v12))
    {
      v2 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v60 = v13;
      *v2 = 136315138;
      v14 = MEMORY[0x253050F40](v9, MEMORY[0x277D837D0]);
      v16 = sub_24E7620D4(v14, v15, &v60);

      *(v2 + 4) = v16;
      _os_log_impl(&dword_24E5DD000, v11, v12, "bundleIdentifiers are %s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x2530542D0](v13, -1, -1);
      MEMORY[0x2530542D0](v2, -1, -1);
    }

    v17 = *(v9 + 16);
    if (v17)
    {
      v18 = 0;
      v6 = (v9 + 40);
      while (v18 < *(v9 + 16))
      {
        v2 = *(v6 - 1);
        v12 = *v6;
        v60 = v57;
        v61 = v58;
        v62 = v59;
        v63 = v56;
        v64 = v4;
        v65 = v5;

        v19 = sub_24F2BFEB0(v2, v12);

        if (v19)
        {
          if (sub_24F7E7CE0(v19, v55, &v66))
          {

            goto LABEL_37;
          }
        }

        ++v18;
        v6 += 2;
        if (v17 == v18)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_13:

    v6 = v55;
  }

  else
  {
    v20 = [a1 label];
    if (v20)
    {
      v21 = v20;
      v22 = sub_24F92B0D8();
      v24 = v23;

      if (qword_27F211400 != -1)
      {
        swift_once();
      }

      v25 = sub_24F9220D8();
      __swift_project_value_buffer(v25, qword_27F39E850);

      v26 = sub_24F9220B8();
      v27 = sub_24F92BD98();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v60 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_24E7620D4(v22, v24, &v60);
        _os_log_impl(&dword_24E5DD000, v26, v27, "label is %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x2530542D0](v29, -1, -1);
        MEMORY[0x2530542D0](v28, -1, -1);
      }

      v60 = v57;
      v61 = v58;
      v62 = v59;
      v63 = v56;
      v64 = v4;
      v65 = v5;
      v30 = sub_24F2C0014(v22, v24);

      if (v30)
      {
        v31 = sub_24F7E7CE0(v30, v6, &v66);

        if (v31)
        {

LABEL_37:

          v6 = v59;
          goto LABEL_38;
        }
      }
    }
  }

  v2 = [v6 service];
  if (!v2)
  {
    sub_24F92B0D8();
    v2 = sub_24F92B098();
  }

  v12 = sub_24F92B0D8();
  v9 = v32;
  if (qword_27F211400 != -1)
  {
LABEL_40:
    swift_once();
  }

  v33 = sub_24F9220D8();
  __swift_project_value_buffer(v33, qword_27F39E850);

  v34 = sub_24F9220B8();
  v35 = sub_24F92BD98();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v60 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_24E7620D4(v12, v9, &v60);
    _os_log_impl(&dword_24E5DD000, v34, v35, "service is %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x2530542D0](v37, -1, -1);
    v38 = v36;
    v6 = v55;
    MEMORY[0x2530542D0](v38, -1, -1);
  }

  v60 = v57;
  v61 = v58;
  v62 = v59;
  v63 = v56;
  v64 = v4;
  v65 = v5;
  v39 = sub_24F2C0014(v12, v9);
  if (v39)
  {
    v40 = v39;
    v41 = sub_24F7E7CE0(v39, v6, &v66);

    if (v41)
    {

      goto LABEL_37;
    }
  }

  v42 = [objc_opt_self() localizedStringForService_];

  v43 = sub_24F92B0D8();
  v45 = v44;

  v46 = sub_24F9220B8();
  v47 = sub_24F92BD98();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v60 = v49;
    *v48 = 136315138;
    v50 = sub_24E7620D4(v12, v9, &v60);

    *(v48 + 4) = v50;
    _os_log_impl(&dword_24E5DD000, v46, v47, "localized service is %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v51 = v49;
    v6 = v55;
    MEMORY[0x2530542D0](v51, -1, -1);
    MEMORY[0x2530542D0](v48, -1, -1);
  }

  else
  {
  }

  v60 = v57;
  v61 = v58;
  v62 = v59;
  v63 = v56;
  v64 = v4;
  v65 = v5;
  v52 = sub_24F2C0014(v43, v45);

  if (v52)
  {
    sub_24F7E7CE0(v52, v6, &v66);
  }

  else
  {
  }

LABEL_38:

  return v66;
}

uint64_t sub_24F7E8C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallProviderConversationHandle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7E8C6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - v1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2471E0, &unk_24F9F3AD0);
  v3 = swift_allocObject();
  *&v3[(*(*v3 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24F408C90(v2, &v3[*(*v3 + *MEMORY[0x277D841D0] + 16)]);
  off_27F251448 = v3;
  return result;
}

uint64_t sub_24F7E8DA0()
{
  v0 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471F0, &unk_24FA2D8D0);
  v4 = swift_allocObject();
  *&v4[(*(*v4 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24F7EB54C(v2, &v4[*(*v4 + *MEMORY[0x277D841D0] + 16)], type metadata accessor for DataIntentCacheBusterStreamState);
  off_27F251450 = v4;
  return result;
}

uint64_t sub_24F7E8F18(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0, &unk_24F948490);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E8F8EBC(a1, v9, type metadata accessor for DataIntentCacheBusterStreamState);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return sub_24F7EB3AC(v9, type metadata accessor for DataIntentCacheBusterStreamState);
  }

  sub_24F7EB3AC(a1, type metadata accessor for DataIntentCacheBusterStreamState);
  v12 = sub_24E802CE0(&unk_2861C2670);
  v16[1] = v1;
  v13 = MEMORY[0x28223BE20](v12);
  v16[-4] = v14;
  v16[-3] = &unk_24FA2D8A0;
  v16[-2] = 0;
  LOWORD(v16[-1]) = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3, v13);
  sub_24F92B928();

  return (*(v11 + 56))(a1, 0, 1, v10);
}

uint64_t sub_24F7E91C8(uint64_t a1, _BYTE *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  *(v2 + 16) = swift_task_alloc();
  *(v2 + 24) = *(type metadata accessor for Player(0) - 8);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 96) = *a2;

  return MEMORY[0x2822009F8](sub_24F7E9300, 0, 0);
}

uint64_t sub_24F7E9300()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[7] = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendRequestsDataIntentImplementation] UpdateListener says friend requests updated, dropping previously cached requests.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  if (qword_27F2118A8 != -1)
  {
    swift_once();
  }

  v5 = v0[6];
  v6 = off_27F251448;
  v7 = *(*off_27F251448 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*off_27F251448 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F251448 + v8));
  sub_24F408C90(&v6[v7], v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = v0[6];
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *v10;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD0, &qword_24F9F3B50) + 48);
    v13 = sub_24F91F648();
    (*(*(v13 - 8) + 8))(&v10[v12], v13);
  }

  else
  {
    sub_24E601704(v0[6], &qword_27F242AC8, &unk_24FA059C0);
    v11 = MEMORY[0x277D84F90];
  }

  v0[8] = v11;
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock(&v6[v8]);
  if (UpdateListener.RefreshDataType.rawValue.getter() == 0xD000000000000010 && 0x800000024FA41C90 == v14)
  {

LABEL_14:
    v16 = swift_task_alloc();
    v0[9] = v16;
    *v16 = v0;
    v16[1] = sub_24F7E966C;

    return sub_24F7EABEC();
  }

  v15 = sub_24F92CE08();

  if (v15)
  {
    goto LABEL_14;
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_24F7E966C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_24F7E9BD0;
  }

  else
  {
    v4 = sub_24F7E9780;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24F7E9780()
{
  v41 = v0;
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    v4 = v0[4];
    v40[0] = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v2, 0);
    v5 = v40[0];
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = v0[4];
      sub_24E8F8EBC(v6, v8, type metadata accessor for Player);
      v9 = *v8;
      v10 = *(v4 + 8);

      sub_24F7EB3AC(v8, type metadata accessor for Player);
      v40[0] = v5;
      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        sub_24F4578E0((v11 > 1), v12 + 1, 1);
        v5 = v40[0];
      }

      *(v5 + 2) = v12 + 1;
      v13 = &v5[16 * v12];
      *(v13 + 4) = v9;
      *(v13 + 5) = v10;
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v14 = v0[11];
  v40[0] = v5;

  sub_24E8C0BD4(v40);
  if (v14)
  {
  }

  else
  {
    v15 = v0[10];

    v16 = v40[0];
    v17 = *(v15 + 16);
    v18 = v0[10];
    if (v17)
    {
      v39 = v40[0];
      v19 = v0[3];
      v20 = v0[4];
      v40[0] = MEMORY[0x277D84F90];
      sub_24F4578E0(0, v17, 0);
      v21 = v40[0];
      v22 = v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v23 = *(v19 + 72);
      do
      {
        v24 = v0[4];
        sub_24E8F8EBC(v22, v24, type metadata accessor for Player);
        v25 = *v24;
        v26 = *(v20 + 8);

        sub_24F7EB3AC(v24, type metadata accessor for Player);
        v40[0] = v21;
        v28 = *(v21 + 2);
        v27 = *(v21 + 3);
        if (v28 >= v27 >> 1)
        {
          sub_24F4578E0((v27 > 1), v28 + 1, 1);
          v21 = v40[0];
        }

        *(v21 + 2) = v28 + 1;
        v29 = &v21[16 * v28];
        *(v29 + 4) = v25;
        *(v29 + 5) = v26;
        v22 += v23;
        --v17;
      }

      while (v17);

      v16 = v39;
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v40[0] = v21;

    sub_24E8C0BD4(v40);

    v30 = sub_24EA14BB8(v16, v40[0]);

    if ((v30 & 1) == 0)
    {
      v31 = sub_24F9220B8();
      v32 = sub_24F92BD98();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_24E5DD000, v31, v32, "[FriendRequestsDataIntentImplementation] Friend requests changed after foregrounding, posting .friendRequests update", v33, 2u);
        MEMORY[0x2530542D0](v33, -1, -1);
      }

      v34 = v0[2];

      v35 = sub_24E804D60(&unk_2861C2878);
      v36 = sub_24F92B858();
      (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 3;
      *(v37 + 40) = v35;
      sub_24EA998B8(0, 0, v34, &unk_24FA2D8B0, v37);
    }

    v38 = v0[1];

    v38();
  }
}

uint64_t sub_24F7E9BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7E9C60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  sub_24F40A7D4(a1, &v21 - v12);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      sub_24E601704(a1, &qword_27F242AC8, &unk_24FA059C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247250, &qword_24F9F3B60);
      v19 = sub_24F92A9E8();
      *a1 = v19;
      goto LABEL_7;
    }

    v22 = *v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD0, &qword_24F9F3B50);
    (*(v5 + 32))(v10, &v13[*(v15 + 48)], v4);
    sub_24F91F638();
    sub_24F91F558();
    v17 = v16;
    v18 = *(v5 + 8);
    v18(v7, v4);
    if (v17 > 300.0)
    {
      sub_24E601704(a1, &qword_27F242AC8, &unk_24FA059C0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247250, &qword_24F9F3B60);
      v19 = sub_24F92A9E8();
      v18(v10, v4);
      *a1 = v19;
LABEL_7:
      swift_storeEnumTagMultiPayload();
      *a2 = v19;
      *(a2 + 8) = 0;
    }

    result = (v18)(v10, v4);
    *a2 = v22;
    v20 = 2;
  }

  else
  {
    *a2 = *v13;
    v20 = 1;
  }

  *(a2 + 8) = v20;
  return result;
}

uint64_t sub_24F7E9F3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_24E635B5C();
    **(*(v4 + 64) + 40) = sub_24F92B5A8();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_24F7EA01C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return sub_24F7EBBBC(v5, a3);
}

uint64_t sub_24F7EA0D4(uint64_t a1)
{
  v1[20] = a1;
  v1[21] = *(type metadata accessor for Player(0) - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7EA190, 0, 0);
}

uint64_t sub_24F7EA190()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[23] = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendRequestsDataIntentImplementation] Fetching friend requests...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = [objc_opt_self() proxyForLocalPlayer];
  v6 = [v5 friendServicePrivate];
  v0[24] = v6;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24F7EA3A8;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251458, &qword_24FA2D8C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24F7E9F3C;
  v0[13] = &block_descriptor_179;
  v0[14] = v7;
  [v6 getCombinedFriendInvitationListWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F7EA3A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_24F7EA8CC;
  }

  else
  {
    v2 = sub_24F7EA4B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7EA4B8()
{
  v23 = v0;
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = v1 >> 62;
  if (!os_log_type_enabled(v2, v3))
  {

    goto LABEL_6;
  }

  v5 = swift_slowAlloc();
  *v5 = 134217984;
  if (v4)
  {
    goto LABEL_28;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    *(v5 + 4) = i;

    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendRequestsDataIntentImplementation] Fetched %ld friend requests.", v5, 0xCu);
    MEMORY[0x2530542D0](v5, -1, -1);
LABEL_6:

    if (v4)
    {
      v5 = sub_24F92C738();
      if (!v5)
      {
LABEL_18:

        v9 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    v22 = MEMORY[0x277D84F90];
    v2 = &v22;
    sub_24F457FDC(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_28:
    ;
  }

  v7 = 0;
  v8 = *(v0 + 168);
  v9 = v22;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x253052270](v7, v1);
    }

    else
    {
      v10 = *(v1 + 8 * v7 + 32);
    }

    sub_24F3FAC70(v10, 0, 0, *(v0 + 176));
    v22 = v9;
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_24F457FDC((v11 > 1), v12 + 1, 1);
      v9 = v22;
    }

    v13 = *(v0 + 176);
    ++v7;
    *(v9 + 16) = v12 + 1;
    sub_24F7EB54C(v13, v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, type metadata accessor for Player);
  }

  while (v5 != v7);

LABEL_19:

  v14 = sub_24F9220B8();
  v15 = sub_24F92BD98();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(v9 + 16);

    _os_log_impl(&dword_24E5DD000, v14, v15, "[FriendRequestsDataIntentImplementation] Caching and returning %ld friend requests.", v16, 0xCu);
    MEMORY[0x2530542D0](v16, -1, -1);
  }

  else
  {
  }

  if (qword_27F2118A8 != -1)
  {
    swift_once();
  }

  v17 = off_27F251448;
  *(swift_task_alloc() + 16) = v9;
  v18 = *(*v17 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v17[v19]);
  sub_24F40A860(&v17[v18]);
  os_unfair_lock_unlock(&v17[v19]);

  *(v0 + 152) = v9;
  sub_24F92A9C8();

  v20 = *(v0 + 8);

  return v20(v9);
}

uint64_t sub_24F7EA8CC(uint64_t a1)
{
  v2 = v1[25];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v2;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[25];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "[FriendRequestsDataIntentImplementation] Unable to fetch friend requests: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v12 = MEMORY[0x277D84F90];

  v13 = sub_24F9220B8();
  v14 = sub_24F92BD98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v12 + 16);

    _os_log_impl(&dword_24E5DD000, v13, v14, "[FriendRequestsDataIntentImplementation] Caching and returning %ld friend requests.", v15, 0xCu);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  else
  {
  }

  if (qword_27F2118A8 != -1)
  {
    swift_once();
  }

  v16 = off_27F251448;
  *(swift_task_alloc() + 16) = v12;
  v17 = *(*v16 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v16[v18]);
  sub_24F40A860(&v16[v17]);
  os_unfair_lock_unlock(&v16[v18]);

  v1[19] = v12;
  sub_24F92A9C8();

  v19 = v1[1];

  return v19(v12);
}

uint64_t sub_24F7EAC08()
{
  v20 = v0;
  if (qword_27F2118A8 != -1)
  {
    swift_once();
  }

  v1 = off_27F251448;
  v2 = *(*off_27F251448 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*off_27F251448 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F251448 + v3));
  sub_24F7E9C60(&v1[v2], &v18);
  os_unfair_lock_unlock(&v1[v3]);
  v4 = v18;
  v0[3] = v18;
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_27F2113E8 != -1)
      {
        swift_once();
      }

      v5 = sub_24F9220D8();
      v0[6] = __swift_project_value_buffer(v5, qword_27F39E808);
      v6 = sub_24F9220B8();
      v7 = sub_24F92BD98();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_24E5DD000, v6, v7, "[FriendRequestsDataIntentImplementation] Fetch in progress, waiting for it to finish...", v8, 2u);
        MEMORY[0x2530542D0](v8, -1, -1);
      }

      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = sub_24F7EB13C;

      return MEMORY[0x282180668](v0 + 2);
    }

    else
    {
      v11 = qword_27F2113E8;

      if (v11 != -1)
      {
        swift_once();
      }

      v12 = sub_24F9220D8();
      __swift_project_value_buffer(v12, qword_27F39E808);
      v13 = sub_24F9220B8();
      v14 = sub_24F92BD98();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24E5DD000, v13, v14, "[FriendRequestsDataIntentImplementation] Returning cached friend requests.", v15, 2u);
        MEMORY[0x2530542D0](v15, -1, -1);
      }

      sub_24F7EB510(v4, 2u);
      v16 = v0[1];

      return v16(v4);
    }
  }

  else
  {

    v10 = swift_task_alloc();
    v0[4] = v10;
    *v10 = v0;
    v10[1] = sub_24F7EAFC0;

    return sub_24F7EA0D4(v4);
  }
}

uint64_t sub_24F7EAFC0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_24F7EB0C0, 0, 0);
}

uint64_t sub_24F7EB0C0()
{
  v1 = v0[3];
  sub_24F7EB510(v1, 0);
  sub_24F7EB510(v1, 0);
  v2 = v0[5];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_24F7EB13C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_24F7EB344;
  }

  else
  {
    v2 = sub_24F7EB250;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7EB250(uint64_t a1)
{
  v2 = v1[2];
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[3];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendRequestsDataIntentImplementation] Fetch finished, returning newly-cached friend requests", v7, 2u);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  sub_24F7EB510(v6, 1u);
  v8 = v1[1];

  return v8(v2);
}

uint64_t sub_24F7EB344()
{
  sub_24F7EB510(*(v0 + 24), 1u);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7EB3AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7EB40C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F7EB44C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F83C8AC(a1, v4, v5, v7, v6);
}

void sub_24F7EB510(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 <= 1u)
  {
  }
}

uint64_t sub_24F7EB54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7EB5C8(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  if (*a2 == 1)
  {
  }

  else
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = *(v8 + 72);
      v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v18;
      a1 = MEMORY[0x277D84F90];
      do
      {
        sub_24E8F8EBC(v13, v10, type metadata accessor for Player);
        if (*&v10[*(v4 + 32) + 8])
        {
          sub_24F7EB54C(v10, v6, type metadata accessor for Player);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24F457FDC(0, *(a1 + 16) + 1, 1);
            a1 = v19;
          }

          v16 = *(a1 + 16);
          v15 = *(a1 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_24F457FDC((v15 > 1), v16 + 1, 1);
            a1 = v19;
          }

          *(a1 + 16) = v16 + 1;
          sub_24F7EB54C(v6, a1 + v18 + v16 * v12, type metadata accessor for Player);
        }

        else
        {
          sub_24F7EB3AC(v10, type metadata accessor for Player);
        }

        v13 += v12;
        --v11;
      }

      while (v11);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a1;
}

uint64_t sub_24F7EB800(unint64_t a1)
{
  v39 = type metadata accessor for Player(0);
  v2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v38 - v5);
  MEMORY[0x28223BE20](v7);
  v9 = (&v38 - v8);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  v41 = v10;
  if (v10)
  {
    v43 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v10, 0);
    v11 = v43;
    v12 = *(v2 + 80);
    v40 = a1;
    v13 = a1 + ((v12 + 32) & ~v12);
    v38 = v2;
    v14 = v2[9];
    do
    {
      sub_24E8F8EBC(v13, v9, type metadata accessor for Player);
      v15 = *v9;
      v16 = v9[1];

      sub_24F7EB3AC(v9, type metadata accessor for Player);
      v43 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_24F4578E0((v17 > 1), v18 + 1, 1);
        v11 = v43;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v13 += v14;
      --v10;
    }

    while (v10);
    a1 = v40;
    v10 = v41;
    v2 = v38;
  }

  v20 = sub_24F45D828(v11);

  v21 = *(v20 + 16);

  if (v10 <= v21)
  {
  }

  else
  {
    v22 = 0;
    v40 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v23 = a1 + v40;
    v24 = v2[9];
    v38 = v6 + 1;
    v25 = v10 + 1;
    a1 = MEMORY[0x277D84F90];
    do
    {
      v26 = a1;
      v27 = v23 + v24 * v22++;
      sub_24E8F8EBC(v27, v6, type metadata accessor for Player);
      v28 = 0;
      v29 = v25;
      v30 = (v23 + 8);
      while (--v29)
      {
        result = *(v30 - 1);
        if (result == *v6 && *v30 == v6[1])
        {
          v31 = 1;
        }

        else
        {
          result = sub_24F92CE08();
          v31 = result & 1;
        }

        v30 = (v30 + v24);
        v32 = __OFADD__(v28, v31);
        v28 += v31;
        if (v32)
        {
          __break(1u);
          return result;
        }
      }

      if (v28 > 1 && *(v38 + *(v39 + 60)))
      {
        sub_24F7EB3AC(v6, type metadata accessor for Player);
        a1 = v26;
      }

      else
      {
        sub_24F7EB54C(v6, v42, type metadata accessor for Player);
        a1 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F457FDC(0, *(v26 + 16) + 1, 1);
          a1 = v43;
        }

        v37 = *(a1 + 16);
        v36 = *(a1 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_24F457FDC((v36 > 1), v37 + 1, 1);
          a1 = v43;
        }

        *(a1 + 16) = v37 + 1;
        sub_24F7EB54C(v42, a1 + v40 + v37 * v24, type metadata accessor for Player);
      }
    }

    while (v22 != v41);
  }

  return a1;
}

uint64_t sub_24F7EBBBC(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 65) = a1;
  return MEMORY[0x2822009F8](sub_24F7EBBE0, 0, 0);
}

uint64_t sub_24F7EBBE0()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendRequestsDataIntentImplementation] Fetching friend requests...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_24F7EBD2C;

  return sub_24F7EABEC();
}

uint64_t sub_24F7EBD2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24F7EBE60, 0, 0);
  }
}

uint64_t sub_24F7EBE60(uint64_t a1)
{
  v2 = *(v1 + 65);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v6 = sub_24F9220B8();
    v7 = sub_24F92BD98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24E5DD000, v6, v7, "[FriendRequestsDataIntentImplementation] Fetched raw friend requests. Filtering...", v8, 2u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    *(v1 + 48) = v9;
    *v9 = v1;
    v9[1] = sub_24F7EBFD0;
    v10 = *(v1 + 16);

    return sub_24E64D1F4(v1 + 64, v10);
  }

  else
  {
    v3 = *(v1 + 40);
    v4 = *(v1 + 8);

    return v4(v3);
  }
}

uint64_t sub_24F7EBFD0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {

    v2 = sub_24F7EC31C;
  }

  else
  {
    v2 = sub_24F7EC0EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7EC0EC()
{
  v22 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  v20 = *(v0 + 64);
  v3 = sub_24F7EB5C8(v1, &v20);
  v4 = *(v1 + 16);
  v5 = *(v3 + 16);
  v6 = sub_24F7EB800(v3);

  v7 = *(v6 + 16);

  v8 = sub_24F9220B8();
  v9 = sub_24F92BD98();
  if (os_log_type_enabled(v8, v9))
  {
    v19 = v5 - v7;
    v18 = v4 - v5;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 134219010;
    v12 = *(v1 + 16);

    *(v10 + 4) = v12;

    *(v10 + 12) = 2048;
    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    if (v2)
    {
      v13 = 0x656E6F7972657665;
    }

    else
    {
      v13 = 0x73746361746E6F63;
    }

    if (v2)
    {
      v14 = 0xE800000000000000;
    }

    else
    {
      v14 = 0xEC000000796C6E4FLL;
    }

    v15 = sub_24E7620D4(v13, v14, &v21);

    *(v10 + 24) = v15;
    *(v10 + 32) = 2048;
    *(v10 + 34) = v19;
    *(v10 + 42) = 2048;
    *(v10 + 44) = v7;
    _os_log_impl(&dword_24E5DD000, v8, v9, "[FriendRequestsDataIntentImplementation] gamed (or our cache) returned %ld friend requests. %ld were removed because the contacts filter was set to %s. %ld were removed for being duplicates. Final count: %ld", v10, 0x34u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v16 = *(v0 + 8);

  return v16(v6);
}

uint64_t sub_24F7EC358(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F7EC4A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GSKParagraph(uint64_t a1)
{
  result = qword_27F251460;
  if (!qword_27F251460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7EC630(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
        if (v4 <= 0x3F)
        {
          sub_24E61C938(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F7EC734(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251490, &qword_24FA2DB10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7ED8AC();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CCA8();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for GSKParagraph(0);
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F929608();
    sub_24F7ED9C0(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7ECA98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251480, &unk_24FA2DB00);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for GSKParagraph(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 72) = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 13) = 0;
  v41 = v13 + 72;
  sub_24E61DA68(&v43, (v13 + 72), qword_27F21B590, &unk_24F93BE30);
  v14 = *(v11 + 32);
  v15 = sub_24F92A6D8();
  v16 = *(*(v15 - 8) + 56);
  v40 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24F7ED8AC();
  v18 = v39;
  sub_24F92D108();
  if (v18)
  {
    v21 = v40;
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_24E601704(v41, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v13[v21], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v33 = v11;
    v34 = v5;
    v39 = v7;
    v19 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v46 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v20 = v38;
    sub_24F92CC68();
    v22 = v44;
    *v13 = v43;
    *(v13 + 1) = v22;
    *(v13 + 4) = v45;
    LOBYTE(v43) = 1;
    v23 = sub_24F92CBC8();
    v24 = v40;
    v25 = v19;
    *(v13 + 5) = v23;
    *(v13 + 6) = v26;
    LOBYTE(v43) = 2;
    v27 = sub_24F92CC28();
    v28 = v41;
    *(v13 + 7) = v27;
    *(v13 + 8) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v46 = 3;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v43, v28, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v43) = 4;
    sub_24E65CAA0();
    v30 = v39;
    sub_24F92CC68();
    v34 = 0;
    sub_24E61DA68(v30, &v13[v24], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v43) = 5;
    sub_24F7ED9C0(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v31 = v36;
    sub_24F92CC18();
    (*(v25 + 8))(v10, v20);
    sub_24E6009C8(v31, &v13[*(v33 + 36)], &qword_27F213E68, &unk_24F93BC80);
    sub_24F7ED900(v13, v35);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_24F7ED964(v13);
  }
}

uint64_t sub_24F7ED0F4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  v4 = 0x4D747865746E6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F7ED1A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F7EDC08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F7ED1CC(uint64_t a1)
{
  v2 = sub_24F7ED8AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7ED208(uint64_t a1)
{
  v2 = sub_24F7ED8AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7ED244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 32), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F7ED384@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  if (a1[6])
  {

    v42[0] = sub_24F925198();
    v7 = sub_24F925C58();
    v9 = v8;
    v10 = v4;
    v12 = v11;
    v14 = v13;

    v15 = v12 & 1;
    v4 = v10;
    v40 = v9;
    v41 = v7;
    v38 = v15;
    sub_24E5FD138(v7, v9, v15);
    v39 = v14;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
  }

  sub_24F924A88();
  v16 = sub_24F925DE8();
  v18 = v17;
  v20 = v19;
  v21 = sub_24F9251C8();
  v22 = *(v4 + 36);
  v23 = *MEMORY[0x277CE13B8];
  v24 = sub_24F927748();
  (*(*(v24 - 8) + 104))(&v6[v22], v23, v24);
  *v6 = v21;
  sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  v25 = sub_24F925C58();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24E600B40(v16, v18, v20 & 1);

  sub_24E601704(v6, &qword_27F213F10, &unk_24F93BE10);
  v33 = v40;
  v32 = v41;
  v35 = v38;
  v34 = v39;
  sub_24E65D2B4(v41, v40, v38, v39);
  v29 &= 1u;
  sub_24E5FD138(v25, v27, v29);

  sub_24E65D2F8(v32, v33, v35, v34);
  v43 = v29;
  *a2 = v32;
  *(a2 + 8) = v33;
  *(a2 + 16) = v35;
  *(a2 + 24) = v34;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v29;
  *(a2 + 56) = v31;
  sub_24E600B40(v25, v27, v29);

  return sub_24E65D2F8(v32, v33, v35, v34);
}

__n128 sub_24F7ED688@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924C98();
  sub_24F7ED384(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t sub_24F7ED71C(uint64_t a1)
{
  sub_24F47D334();

  return sub_24F9218E8();
}

unint64_t sub_24F7ED7AC()
{
  result = qword_27F251478;
  if (!qword_27F251478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251478);
  }

  return result;
}

unint64_t sub_24F7ED8AC()
{
  result = qword_27F251488;
  if (!qword_27F251488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251488);
  }

  return result;
}

uint64_t sub_24F7ED900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKParagraph(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7ED964(uint64_t a1)
{
  v2 = type metadata accessor for GSKParagraph(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F7ED9C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F7EDA1C()
{
  result = qword_27F251498;
  if (!qword_27F251498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2514A0, &qword_24FA2DB28);
    sub_24E602068(&qword_27F2514A8, &qword_27F2514B0, &unk_24FA2DB30, MEMORY[0x277CE1198]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251498);
  }

  return result;
}

unint64_t sub_24F7EDB04()
{
  result = qword_27F2514B8;
  if (!qword_27F2514B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2514B8);
  }

  return result;
}

unint64_t sub_24F7EDB5C()
{
  result = qword_27F2514C0;
  if (!qword_27F2514C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2514C0);
  }

  return result;
}

unint64_t sub_24F7EDBB4()
{
  result = qword_27F2514C8;
  if (!qword_27F2514C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2514C8);
  }

  return result;
}

uint64_t sub_24F7EDC08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA7E3F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24F7EDE78@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v535 = a5;
  v548 = a4;
  v571 = a3;
  v562 = a2;
  v566 = a6;
  v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2514D8, &qword_24FA2DCB0);
  MEMORY[0x28223BE20](v504);
  v508 = &v424 - v7;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FF8, &unk_24F987C20);
  v474 = *(v472 - 8);
  MEMORY[0x28223BE20](v472);
  v455 = &v424 - v8;
  v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A000, &qword_24F94D960);
  MEMORY[0x28223BE20](v505);
  v473 = &v424 - v9;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2514E0, &qword_24FA2DCB8);
  MEMORY[0x28223BE20](v528);
  v511 = &v424 - v10;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2514E8, &qword_24FA2DCC0);
  MEMORY[0x28223BE20](v525);
  v527 = &v424 - v11;
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2514F0, &qword_24FA2DCC8);
  MEMORY[0x28223BE20](v542);
  v530 = &v424 - v12;
  v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2514F8, &qword_24FA2DCD0);
  MEMORY[0x28223BE20](v499);
  v500 = (&v424 - v13);
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251500, &qword_24FA2DCD8);
  MEMORY[0x28223BE20](v524);
  v507 = &v424 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v15 - 8);
  v475 = &v424 - v16;
  v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10, &unk_24F94BD90);
  MEMORY[0x28223BE20](v498);
  v476 = (&v424 - v17);
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A18, &unk_24F93E670);
  MEMORY[0x28223BE20](v496);
  v497 = &v424 - v18;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A28, &unk_24F93E680);
  MEMORY[0x28223BE20](v521);
  v501 = &v424 - v19;
  v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251508, &qword_24FA2DCE0);
  MEMORY[0x28223BE20](v538);
  v540 = &v424 - v20;
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A30, &unk_24F94D970);
  MEMORY[0x28223BE20](v519);
  v520 = &v424 - v21;
  v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A38, &unk_24F93E690);
  MEMORY[0x28223BE20](v539);
  v522 = &v424 - v22;
  v553 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251510, &qword_24FA2DCE8);
  MEMORY[0x28223BE20](v553);
  v541 = &v424 - v23;
  v518 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v518);
  v494 = &v424 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v495 = &v424 - v26;
  v560 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v457 = *(v560 - 8);
  MEMORY[0x28223BE20](v560);
  v547 = &v424 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v569 = type metadata accessor for PlayerAvatarView(0);
  v559 = *(v569 - 8);
  MEMORY[0x28223BE20](v569);
  v29 = &v424 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v503 = type metadata accessor for OverlappingPlayerAvatarsView(0);
  v502 = *(v503 - 8);
  MEMORY[0x28223BE20](v503);
  v477 = &v424 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240B08, &qword_24FA2DCF0);
  MEMORY[0x28223BE20](v517);
  v506 = &v424 - v31;
  v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251518, &qword_24FA2DCF8);
  MEMORY[0x28223BE20](v526);
  v516 = &v424 - v32;
  v546 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251520, &qword_24FA2DD00);
  MEMORY[0x28223BE20](v546);
  v529 = &v424 - v33;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98, &unk_24F93E740);
  MEMORY[0x28223BE20](v471);
  v454 = &v424 - v34;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A060, &unk_24F9EC4F0);
  MEMORY[0x28223BE20](v489);
  v491 = &v424 - v35;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A068, &unk_24F94D9E0);
  MEMORY[0x28223BE20](v466);
  v469 = &v424 - v36;
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A070, &unk_24F9EC500);
  MEMORY[0x28223BE20](v488);
  v470 = &v424 - v37;
  v451 = type metadata accessor for HeroCardGameHeadingView(0);
  v450 = *(v451 - 8);
  MEMORY[0x28223BE20](v451);
  v435 = &v424 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50, &unk_24F94D9F0);
  MEMORY[0x28223BE20](v465);
  v453 = &v424 - v39;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A078, &qword_24F9EC510);
  MEMORY[0x28223BE20](v515);
  v492 = &v424 - v40;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251528, &qword_24FA2DD08);
  MEMORY[0x28223BE20](v493);
  v478 = &v424 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v42 - 8);
  v558 = &v424 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v433 = &v424 - v45;
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  v448 = *(v449 - 8);
  MEMORY[0x28223BE20](v449);
  v434 = &v424 - v46;
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272E8, &qword_24FA2DD10);
  MEMORY[0x28223BE20](v467);
  v452 = &v424 - v47;
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251530, &qword_24FA2DD18);
  MEMORY[0x28223BE20](v486);
  v490 = &v424 - v48;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251538, &qword_24FA2DD20);
  MEMORY[0x28223BE20](v463);
  v464 = &v424 - v49;
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251540, &unk_24FA2DD28);
  MEMORY[0x28223BE20](v487);
  v468 = &v424 - v50;
  v446 = sub_24F924B38();
  v441 = *(v446 - 8);
  MEMORY[0x28223BE20](v446);
  v439 = &v424 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v445 = sub_24F921AF8();
  v444 = *(v445 - 8);
  MEMORY[0x28223BE20](v445);
  v443 = &v424 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v514 = sub_24F9289E8();
  v513 = *(v514 - 8);
  MEMORY[0x28223BE20](v514);
  v440 = &v424 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v462 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C10, &unk_24F94FFD0);
  MEMORY[0x28223BE20](v462);
  v447 = &v424 - v54;
  v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251548, &qword_24FA2DD38);
  MEMORY[0x28223BE20](v536);
  v510 = &v424 - v55;
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251550, &qword_24FA2DD40);
  MEMORY[0x28223BE20](v555);
  v554 = &v424 - v56;
  v549 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251558, &qword_24FA2DD48);
  MEMORY[0x28223BE20](v549);
  v551 = &v424 - v57;
  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251560, &qword_24FA2DD50);
  MEMORY[0x28223BE20](v537);
  v544 = &v424 - v58;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251568, &qword_24FA2DD58);
  MEMORY[0x28223BE20](v531);
  v532 = &v424 - v59;
  v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251570, &qword_24FA2DD60);
  MEMORY[0x28223BE20](v543);
  v533 = &v424 - v60;
  v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251578, &qword_24FA2DD68);
  MEMORY[0x28223BE20](v550);
  v545 = &v424 - v61;
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251580, &unk_24FA2DD70);
  MEMORY[0x28223BE20](v556);
  v552 = &v424 - v62;
  v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v561);
  v534 = &v424 - v63;
  v460 = _s12GameStoreKit17CompactVisualViewVMa_0(0);
  MEMORY[0x28223BE20](v460);
  v442 = &v424 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251588, &qword_24FA2DD80);
  MEMORY[0x28223BE20](v459);
  v66 = &v424 - v65;
  v481 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251590, &qword_24FA2DD88);
  MEMORY[0x28223BE20](v481);
  v461 = &v424 - v67;
  v437 = _s12GameStoreKit18PortraitVisualViewVMa_0(0);
  v436 = *(v437 - 8);
  MEMORY[0x28223BE20](v437);
  v432 = &v424 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v570 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v570);
  v70 = &v424 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v428 = (&v424 - v72);
  MEMORY[0x28223BE20](v73);
  v427 = &v424 - v74;
  MEMORY[0x28223BE20](v75);
  v429 = &v424 - v76;
  MEMORY[0x28223BE20](v77);
  v430 = &v424 - v78;
  MEMORY[0x28223BE20](v79);
  v431 = &v424 - v80;
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251598, &qword_24FA2DD90);
  MEMORY[0x28223BE20](v458);
  v438 = &v424 - v81;
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515A0, &qword_24FA2DD98);
  MEMORY[0x28223BE20](v483);
  v485 = &v424 - v82;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515A8, &qword_24FA2DDA0);
  MEMORY[0x28223BE20](v479);
  v480 = (&v424 - v83);
  v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515B0, &qword_24FA2DDA8);
  MEMORY[0x28223BE20](v484);
  v482 = &v424 - v84;
  v568 = type metadata accessor for ChallengeCompletedCard.ParticipantResult(0);
  v512 = *(v568 - 8);
  MEMORY[0x28223BE20](v568);
  v456 = &v424 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v88 = &v424 - v87;
  v89 = type metadata accessor for ChallengeVisualOutcomeMetrics.Participant(0);
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v92 = &v424 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515B8, &qword_24FA2DDB0);
  MEMORY[0x28223BE20](v523);
  v509 = &v424 - v93;
  v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515C0, &qword_24FA2DDB8);
  v564 = *(v565 - 8);
  MEMORY[0x28223BE20](v565);
  v557 = &v424 - v94;
  v95 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v95);
  v97 = (&v424 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v98);
  v100 = &v424 - v99;
  v103 = MEMORY[0x28223BE20](v101);
  v567 = &v424 - v104;
  LODWORD(v563) = a1;
  switch(a1)
  {
    case 1u:
      v107 = v571;
      if (v571 < 2u)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    case 8u:
      v106 = v571;
      if (v571 <= 2u)
      {
        if (v571 != 1)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }

      goto LABEL_18;
    case 4u:
      if (v571 < 4u)
      {
        goto LABEL_24;
      }

      if (v571 == 4)
      {
LABEL_20:
        if (qword_27F2112F0 != -1)
        {
          v421 = v102;
          swift_once();
          v102 = v421;
        }

        v105 = qword_27F39E610;
        goto LABEL_31;
      }

LABEL_7:
      if (qword_27F211308 != -1)
      {
        v420 = v102;
        swift_once();
        v102 = v420;
      }

      v105 = qword_27F39E658;
      goto LABEL_31;
  }

  v108 = v66;
  v109 = v29;
  v110 = v102;
  v111 = sub_24E92D030(v563, v562, v571);
  v102 = v110;
  v29 = v109;
  v66 = v108;
  v107 = v571;
  if (v111)
  {
LABEL_14:
    v106 = v107;
    if (v107 <= 2u)
    {
      if (v107)
      {
        if (v107 == 1)
        {
LABEL_17:
          v426 = v102;
          sub_24F4E9E44(v548, v97);
          sub_24F7F74B0(v97, v100, type metadata accessor for CardLayoutMetrics);
          goto LABEL_32;
        }

        v204 = v29;
        if (qword_27F2112F8 != -1)
        {
          v423 = v102;
          swift_once();
          v102 = v423;
        }

        v205 = v102;
        v206 = __swift_project_value_buffer(v102, qword_27F39E628);
        sub_24F7F7518(v206, v100, type metadata accessor for CardLayoutMetrics);
        v207 = &v100[v205[12]];
        *v207 = 0;
        *(v207 + 1) = 0;
        *(v207 + 2) = 0;
        *(v207 + 3) = 0x4024000000000000;
        v426 = v205;
        *&v100[v205[30]] = 0x403A000000000000;
        v29 = v204;
LABEL_32:
        sub_24F7F74B0(v100, v567, type metadata accessor for CardLayoutMetrics);
        if (v563 > 6u)
        {
          v119 = v571;
          if (v563 > 0xAu)
          {
            if (v563 == 11)
            {
              v182 = v571;
              v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
              v184 = dword_24FA2E214[v182];
              v185 = v494;
              (*(*(v183 - 8) + 56))(v494, v184, 5, v183);
              v186 = v495;
              sub_24F7F74B0(v185, v495, type metadata accessor for CardContentBackgroundStyle);
              sub_24F7F7518(v186, v520, type metadata accessor for CardContentBackgroundStyle);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6D80(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
              sub_24E63C1D8();
              v187 = v522;
              sub_24F924E28();
              sub_24E60169C(v187, v540, &qword_27F214A38, &unk_24F93E690);
              swift_storeEnumTagMultiPayload();
              sub_24F7F71A8(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
              sub_24F7F725C();
              v188 = v541;
              sub_24F924E28();
              sub_24E601704(v187, &qword_27F214A38, &unk_24F93E690);
              sub_24E60169C(v188, v551, &qword_27F251510, &qword_24FA2DCE8);
              swift_storeEnumTagMultiPayload();
              sub_24F7F690C();
              sub_24F7F70F0();
              v189 = v552;
              sub_24F924E28();
              sub_24E601704(v188, &qword_27F251510, &qword_24FA2DCE8);
              sub_24E60169C(v189, v554, &qword_27F251580, &unk_24FA2DD70);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6880();
              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              v139 = v557;
              sub_24F924E28();
              sub_24E601704(v189, &qword_27F251580, &unk_24FA2DD70);
              sub_24F7F7580(v186, type metadata accessor for CardContentBackgroundStyle);
LABEL_127:
              v141 = v566;
LABEL_142:
              sub_24E6009C8(v139, v141, &qword_27F2515C0, &qword_24FA2DDB8);
              (*(v564 + 56))(v141, 0, 1, v565);
              return sub_24F7F7580(v567, type metadata accessor for CardLayoutMetrics);
            }

            if (v563 == 12)
            {
              v136 = v571;
              if (v571 > 1u)
              {
                v210 = sub_24F926C98();
                v211 = type metadata accessor for ChallengeCompletedCard(0);
                v212 = v513;
                v213 = v475;
                v214 = v514;
                (*(v513 + 16))(v475, v562 + *(v211 + 36), v514);
                (*(v212 + 56))(v213, 0, 1, v214);
                v215 = v476;
                sub_24F6C4E24(v213, v136 != 5, v210, v476);

                sub_24E601704(v213, &qword_27F213FB0, &qword_24F93E6B0);
                sub_24E60169C(v215, v497, &qword_27F214A10, &unk_24F94BD90);
                swift_storeEnumTagMultiPayload();
                sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                sub_24E63D150();
                v138 = v501;
                sub_24F924E28();
                sub_24E601704(v215, &qword_27F214A10, &unk_24F94BD90);
              }

              else
              {
                v137 = v534;
                sub_24E923A08(0xC, v562, v571, v548, v535, v534);
                sub_24E60169C(v137, v497, &qword_27F214A20, &unk_24F94D670);
                swift_storeEnumTagMultiPayload();
                sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                sub_24E63D150();
                v138 = v501;
                sub_24F924E28();
                sub_24E601704(v137, &qword_27F214A20, &unk_24F94D670);
              }

              v216 = v554;
              v217 = v557;
              v141 = v566;
              sub_24E60169C(v138, v520, &qword_27F214A28, &unk_24F93E680);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6D80(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
              sub_24E63C1D8();
              v218 = v522;
              sub_24F924E28();
              sub_24E60169C(v218, v540, &qword_27F214A38, &unk_24F93E690);
              swift_storeEnumTagMultiPayload();
              sub_24F7F71A8(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
              sub_24F7F725C();
              v219 = v541;
              sub_24F924E28();
              sub_24E601704(v218, &qword_27F214A38, &unk_24F93E690);
              sub_24E60169C(v219, v551, &qword_27F251510, &qword_24FA2DCE8);
              swift_storeEnumTagMultiPayload();
              sub_24F7F690C();
              sub_24F7F70F0();
              v220 = v552;
              sub_24F924E28();
              sub_24E601704(v219, &qword_27F251510, &qword_24FA2DCE8);
              sub_24E60169C(v220, v216, &qword_27F251580, &unk_24FA2DD70);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6880();
              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v220, &qword_27F251580, &unk_24FA2DD70);
              sub_24E601704(v138, &qword_27F214A28, &unk_24F93E680);
              v139 = v217;
              goto LABEL_142;
            }
          }

          else
          {
            if (v563 == 7)
            {
              if ((v571 - 3) > 2u)
              {
                v208 = v534;
                sub_24E923A08(7, v562, v571, v548, v535, v534);
                sub_24E60169C(v208, v500, &qword_27F214A20, &unk_24F94D670);
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0, &qword_24F9477E0);
                sub_24E6C08EC();
                sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                v209 = v507;
                sub_24F924E28();
                sub_24E601704(v208, &qword_27F214A20, &unk_24F94D670);
              }

              else
              {
                v142 = v562 + *(type metadata accessor for ChallengeCompletedCard(0) + 32);
                v143 = (v142 + *(type metadata accessor for CommonCardAttributes(0) + 56));
                v144 = v143[1];
                if (v144)
                {
                  v145 = *v143;
                  v146 = (v567 + v426[22]);
                  v147 = v146[3];
                  v571 = v146[4];
                  __swift_project_boxed_opaque_existential_1(v146, v147);
                  *&v578 = v145;
                  *(&v578 + 1) = v144;
                  sub_24E600AEC();

                  v148 = sub_24F925E18();
                  v150 = v149;
                  v152 = v151;
                  v153 = sub_24F925C98();
                  v155 = v154;
                  v157 = v156;
                  sub_24E600B40(v148, v150, v152 & 1);

                  v158 = sub_24F925C58();
                  v160 = v159;
                  LOBYTE(v150) = v161;
                  v144 = v162;
                  sub_24E600B40(v153, v155, v157 & 1);

                  v163 = v150 & 1;
                  sub_24E5FD138(v158, v160, v150 & 1);
                }

                else
                {
                  v158 = 0;
                  v160 = 0;
                  v163 = 0;
                }

                v337 = v500;
                *v500 = v158;
                v337[1] = v160;
                v337[2] = v163;
                v337[3] = v144;
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217ED0, &qword_24F9477E0);
                sub_24E6C08EC();
                sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                v209 = v507;
                sub_24F924E28();
                sub_24E65D2F8(v158, v160, v163, v144);
              }

              v338 = v554;
              v339 = v557;
              sub_24E60169C(v209, v527, &qword_27F251500, &qword_24FA2DCD8);
              swift_storeEnumTagMultiPayload();
              sub_24F7F7314(&qword_27F251668, &qword_27F251500, &qword_24FA2DCD8, sub_24E6C08EC);
              sub_24F7F73C4();
              v340 = v209;
              v341 = v530;
              sub_24F924E28();
              sub_24E60169C(v341, v540, &qword_27F2514F0, &qword_24FA2DCC8);
              swift_storeEnumTagMultiPayload();
              sub_24F7F71A8(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
              sub_24F7F725C();
              v342 = v541;
              sub_24F924E28();
              sub_24E601704(v341, &qword_27F2514F0, &qword_24FA2DCC8);
              sub_24E60169C(v342, v551, &qword_27F251510, &qword_24FA2DCE8);
              swift_storeEnumTagMultiPayload();
              sub_24F7F690C();
              sub_24F7F70F0();
              v343 = v552;
              sub_24F924E28();
              sub_24E601704(v342, &qword_27F251510, &qword_24FA2DCE8);
              sub_24E60169C(v343, v338, &qword_27F251580, &unk_24FA2DD70);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6880();
              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v343, &qword_27F251580, &unk_24FA2DD70);
              sub_24E601704(v340, &qword_27F251500, &qword_24FA2DCD8);
              v141 = v566;
              v139 = v339;
              goto LABEL_142;
            }

            if (v563 == 8)
            {
              v130 = v562;
              v131 = v511;
              if (((1 << v571) & 0x17) != 0)
              {
                v132 = v534;
                sub_24E923A08(8, v562, v571, v548, v535, v534);
                v133 = &qword_27F214A20;
                v134 = &unk_24F94D670;
                sub_24E60169C(v132, v508, &qword_27F214A20, &unk_24F94D670);
                swift_storeEnumTagMultiPayload();
                sub_24F7F6DC8(&qword_27F21A190, &qword_27F21A000, &qword_24F94D960, sub_24E726138);
              }

              else
              {
                v313 = v130 + *(type metadata accessor for ChallengeCompletedCard(0) + 32);
                v314 = (v313 + *(type metadata accessor for CommonCardAttributes(0) + 60));
                v315 = v314[1];
                if (v315)
                {
                  *&v578 = *v314;
                  *(&v578 + 1) = v315;
                  sub_24E600AEC();

                  v316 = sub_24F925E18();
                  v318 = v317;
                  v320 = v319;
                  sub_24F925A18();
                  v321 = sub_24F925C98();
                  v323 = v322;
                  v325 = v324;
                  v327 = v326;

                  sub_24E600B40(v316, v318, v320 & 1);
                  v131 = v511;

                  *&v578 = v321;
                  *(&v578 + 1) = v323;
                  LOBYTE(v579) = v325 & 1;
                  *(&v579 + 1) = v327;
                  v328 = v455;
                  sub_24F9268B8();
                  sub_24E600B40(v321, v323, v325 & 1);

                  LODWORD(v316) = sub_24F9251C8();
                  *(v328 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358, &qword_24F9D1F60) + 36)) = v316;
                  v329 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8, &qword_24F94DAB0) + 36);
                  v330 = *MEMORY[0x277CE13B8];
                  v331 = sub_24F927748();
                  (*(*(v331 - 8) + 104))(v328 + v329, v330, v331);
                  v332 = *(v567 + v426[28]);
                  KeyPath = swift_getKeyPath();
                  v334 = v472;
                  v335 = v328 + *(v472 + 36);
                  *v335 = KeyPath;
                  *(v335 + 8) = v332;
                  *(v335 + 16) = 0;
                  v132 = v473;
                  sub_24E6009C8(v328, v473, &qword_27F219FF8, &unk_24F987C20);
                  v336 = 0;
                }

                else
                {
                  v336 = 1;
                  v132 = v473;
                  v334 = v472;
                }

                (*(v474 + 56))(v132, v336, 1, v334);
                v133 = &qword_27F21A000;
                v134 = &qword_24F94D960;
                sub_24E60169C(v132, v508, &qword_27F21A000, &qword_24F94D960);
                swift_storeEnumTagMultiPayload();
                sub_24F7F6DC8(&qword_27F21A190, &qword_27F21A000, &qword_24F94D960, sub_24E726138);
              }

              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v132, v133, v134);
              v397 = v554;
              v201 = &qword_24FA2DCB8;
              sub_24E60169C(v131, v527, &qword_27F2514E0, &qword_24FA2DCB8);
              swift_storeEnumTagMultiPayload();
              sub_24F7F7314(&qword_27F251668, &qword_27F251500, &qword_24FA2DCD8, sub_24E6C08EC);
              sub_24F7F73C4();
              v398 = v530;
              sub_24F924E28();
              sub_24E60169C(v398, v540, &qword_27F2514F0, &qword_24FA2DCC8);
              swift_storeEnumTagMultiPayload();
              sub_24F7F71A8(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
              sub_24F7F725C();
              v399 = v541;
              sub_24F924E28();
              sub_24E601704(v398, &qword_27F2514F0, &qword_24FA2DCC8);
              sub_24E60169C(v399, v551, &qword_27F251510, &qword_24FA2DCE8);
              swift_storeEnumTagMultiPayload();
              sub_24F7F690C();
              sub_24F7F70F0();
              v400 = v552;
              sub_24F924E28();
              sub_24E601704(v399, &qword_27F251510, &qword_24FA2DCE8);
              sub_24E60169C(v400, v397, &qword_27F251580, &unk_24FA2DD70);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6880();
              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              v139 = v557;
              sub_24F924E28();
              sub_24E601704(v400, &qword_27F251580, &unk_24FA2DD70);
              v202 = v131;
              v203 = &qword_27F2514E0;
              goto LABEL_126;
            }
          }

          goto LABEL_70;
        }

        v119 = v571;
        if (v563 <= 2u)
        {
          if (v563 != 1)
          {
            if (v563 == 2)
            {
              v570 = v66;
              v120 = *(v562 + *(type metadata accessor for ChallengeCompletedCard(0) + 44));
              v121 = *(v120 + 16);
              v122 = MEMORY[0x277D84F90];
              v569 = v120;
              if (v121)
              {
                *&v578 = MEMORY[0x277D84F90];
                sub_24F457CC0(0, v121, 0);
                v122 = v578;
                v123 = v120 + ((*(v512 + 80) + 32) & ~*(v512 + 80));
                v124 = *(v512 + 72);
                do
                {
                  sub_24F7F7518(v123, v88, type metadata accessor for ChallengeCompletedCard.ParticipantResult);
                  v125 = &v88[*(v568 + 20)];
                  v126 = *v125;
                  v127 = v125[8];
                  sub_24F7F74B0(v88, &v92[*(v89 + 20)], type metadata accessor for PlayerAvatar);
                  *v92 = v126;
                  v92[8] = v127;
                  *&v578 = v122;
                  v129 = *(v122 + 16);
                  v128 = *(v122 + 24);
                  if (v129 >= v128 >> 1)
                  {
                    sub_24F457CC0((v128 > 1), v129 + 1, 1);
                    v122 = v578;
                  }

                  *(v122 + 16) = v129 + 1;
                  sub_24F7F74B0(v92, v122 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v129, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
                  v123 += v124;
                  --v121;
                }

                while (v121);
              }

              v141 = v566;
              v190 = sub_24EE90870(v122);
              v193 = v192;
              v194 = v509;
              if (v571 > 2u)
              {
                v221 = v191;
                v222 = v190;
                if (v571 - 3 >= 2)
                {
                  type metadata accessor for CardSafeArea(0);
                  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
                  v357 = sub_24F923598();
                  v572 = v222;
                  v573 = v221;
                  v574 = v193 & 0x101;
                  v575 = v357;
                  v576 = v358 & 1;
                  v577 = 0;
                }

                else
                {
                  v223 = v571;
                  type metadata accessor for CardSafeArea(0);
                  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
                  v224 = sub_24F923598();
                  v572 = v222;
                  v573 = v221;
                  v574 = v193 & 0x101 | (v223 << 16);
                  v575 = v224;
                  v576 = v225 & 1;
                  v577 = 1;
                }

                sub_24F7F6B68();
                sub_24F7F6BBC();

                sub_24F924E28();
                v226 = v580;
                v227 = BYTE1(v580);
                v228 = v579;
                v229 = v480;
                *v480 = v578;
                v229[1] = v228;
                *(v229 + 32) = v226;
                *(v229 + 33) = v227;
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515F8, &qword_24FA2DDC0);
                sub_24F7F6ADC();
                sub_24F7F6C10();
                v230 = v482;
                sub_24F924E28();
                sub_24E60169C(v230, v485, &qword_27F2515B0, &qword_24FA2DDA8);
                swift_storeEnumTagMultiPayload();
                sub_24F7F6A50();
                sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                sub_24F924E28();

                sub_24E601704(v230, &qword_27F2515B0, &qword_24FA2DDA8);
              }

              else if (v571)
              {
                if (v571 == 1)
                {

                  v195 = v442;
                  sub_24F7F7518(v562, v442, type metadata accessor for ChallengeCompletedCard);
                  v196 = v195 + *(v460 + 20);
                  type metadata accessor for CardSafeArea(0);
                  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
                  *v196 = sub_24F923598();
                  *(v196 + 8) = v197 & 1;
                  sub_24F7F7518(v195, v570, _s12GameStoreKit17CompactVisualViewVMa_0);
                  swift_storeEnumTagMultiPayload();
                  sub_24F7F6CCC();
                  sub_24F7F6D80(&qword_27F251628, _s12GameStoreKit17CompactVisualViewVMa_0, &unk_24FA2DFB0);
                  v198 = v461;
                  sub_24F924E28();
                  sub_24E60169C(v198, v480, &qword_27F251590, &qword_24FA2DD88);
                  swift_storeEnumTagMultiPayload();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515F8, &qword_24FA2DDC0);
                  sub_24F7F6ADC();
                  sub_24F7F6C10();
                  v199 = v482;
                  sub_24F924E28();
                  sub_24E601704(v198, &qword_27F251590, &qword_24FA2DD88);
                  sub_24E60169C(v199, v485, &qword_27F2515B0, &qword_24FA2DDA8);
                  swift_storeEnumTagMultiPayload();
                  sub_24F7F6A50();
                  sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                  sub_24F924E28();
                  sub_24E601704(v199, &qword_27F2515B0, &qword_24FA2DDA8);
                  sub_24F7F7580(v195, _s12GameStoreKit17CompactVisualViewVMa_0);
                }

                else
                {
                  if (*(v569 + 16))
                  {
                    v387 = v430;
                    sub_24F7F7518(v569 + ((*(v512 + 80) + 32) & ~*(v512 + 80)), v430, type metadata accessor for PlayerAvatar);
                    v388 = v431;
                    sub_24F7F74B0(v387, v431, type metadata accessor for PlayerAvatar);
                    v389 = v432;
                    sub_24F7F7518(v388, v432, type metadata accessor for PlayerAvatar);
                    v390 = v437;
                    *(v389 + *(v437 + 20)) = HIBYTE(v193) & 1;
                    v391 = v389 + *(v390 + 24);
                    type metadata accessor for CardSafeArea(0);
                    sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
                    v392 = sub_24F923598();
                    v394 = v393;

                    sub_24F7F7580(v388, type metadata accessor for PlayerAvatar);
                    *v391 = v392;
                    *(v391 + 8) = v394 & 1;
                    v395 = v438;
                    sub_24F7F74B0(v389, v438, _s12GameStoreKit18PortraitVisualViewVMa_0);
                    v396 = 0;
                  }

                  else
                  {

                    v396 = 1;
                    v395 = v438;
                    v390 = v437;
                  }

                  (*(v436 + 56))(v395, v396, 1, v390);
                  sub_24E60169C(v395, v570, &qword_27F251598, &qword_24FA2DD90);
                  swift_storeEnumTagMultiPayload();
                  sub_24F7F6CCC();
                  sub_24F7F6D80(&qword_27F251628, _s12GameStoreKit17CompactVisualViewVMa_0, &unk_24FA2DFB0);
                  v413 = v461;
                  sub_24F924E28();
                  sub_24E60169C(v413, v480, &qword_27F251590, &qword_24FA2DD88);
                  swift_storeEnumTagMultiPayload();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2515F8, &qword_24FA2DDC0);
                  sub_24F7F6ADC();
                  sub_24F7F6C10();
                  v414 = v482;
                  sub_24F924E28();
                  sub_24E601704(v413, &qword_27F251590, &qword_24FA2DD88);
                  sub_24E60169C(v414, v485, &qword_27F2515B0, &qword_24FA2DDA8);
                  swift_storeEnumTagMultiPayload();
                  sub_24F7F6A50();
                  sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                  v194 = v509;
                  sub_24F924E28();
                  sub_24E601704(v414, &qword_27F2515B0, &qword_24FA2DDA8);
                  sub_24E601704(v395, &qword_27F251598, &qword_24FA2DD90);
                  v141 = v566;
                }
              }

              else
              {

                v356 = v534;
                sub_24E923A08(2, v562, 0, v548, v535, v534);
                sub_24E60169C(v356, v485, &qword_27F214A20, &unk_24F94D670);
                swift_storeEnumTagMultiPayload();
                sub_24F7F6A50();
                sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                sub_24F924E28();
                sub_24E601704(v356, &qword_27F214A20, &unk_24F94D670);
              }

              v306 = &qword_24FA2DDB0;
              sub_24E60169C(v194, v532, &qword_27F2515B8, &qword_24FA2DDB0);
              swift_storeEnumTagMultiPayload();
              sub_24F7F7314(&qword_27F2515E0, &qword_27F2515B8, &qword_24FA2DDB0, sub_24F7F6A50);
              sub_24F7F6E44();
              v415 = v533;
              sub_24F924E28();
              v416 = v194;
              sub_24E60169C(v415, v544, &qword_27F251570, &qword_24FA2DD60);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6998();
              sub_24F7F7064();
              v417 = v545;
              sub_24F924E28();
              sub_24E601704(v415, &qword_27F251570, &qword_24FA2DD60);
              sub_24E60169C(v417, v551, &qword_27F251578, &qword_24FA2DD68);
              swift_storeEnumTagMultiPayload();
              sub_24F7F690C();
              sub_24F7F70F0();
              v418 = v552;
              sub_24F924E28();
              sub_24E601704(v417, &qword_27F251578, &qword_24FA2DD68);
              sub_24E60169C(v418, v554, &qword_27F251580, &unk_24FA2DD70);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6880();
              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              v419 = v557;
              sub_24F924E28();
              sub_24E601704(v418, &qword_27F251580, &unk_24FA2DD70);
              v311 = v416;
              v139 = v419;
              v312 = &qword_27F2515B8;
              goto LABEL_141;
            }

            goto LABEL_70;
          }

          if (v571 > 2u)
          {
            v139 = v557;
            v140 = v562;
            v141 = v566;
          }

          else
          {
            v139 = v557;
            v140 = v562;
            v141 = v566;
            if (v571 > 1u)
            {

              v359 = 1;
LABEL_104:
              v361 = *(v140 + *(type metadata accessor for ChallengeCompletedCard(0) + 44));
              v362 = *(v361 + 16);
              if (v362 >= v359)
              {
                v366 = v512;
                v367 = (*(v512 + 80) + 32) & ~*(v512 + 80);
                sub_24E6B87C8(v361, v361 + v367, v359, (2 * v362) | 1);
                v369 = v368;
                v370 = *(v368 + 16);
                if (v370)
                {
                  v572 = MEMORY[0x277D84F90];
                  sub_24F457C7C(0, v370, 0);
                  v371 = v572;
                  v562 = v369;
                  v372 = v369 + v367;
                  v563 = (v457 + 56);
                  v568 = *(v366 + 72);
                  v373 = v456;
                  do
                  {
                    sub_24F7F7518(v372, v373, type metadata accessor for ChallengeCompletedCard.ParticipantResult);
                    sub_24F7F7518(v373, v70, type metadata accessor for PlayerAvatar);

                    sub_24F928948();
                    sub_24F7F7580(v373, type metadata accessor for ChallengeCompletedCard.ParticipantResult);
                    type metadata accessor for PlayerAvatarView.AvatarType(0);
                    swift_storeEnumTagMultiPayload();
                    v374 = v558;
                    sub_24E60169C(&v70[*(v570 + 5)], v558, &qword_27F22DF80, &unk_24F942E50);
                    v375 = *(v569 + 20);
                    v376 = type metadata accessor for PlayerAvatar.Overlay(0);
                    if ((*(*(v376 - 8) + 48))(v374, 1, v376) == 1)
                    {
                      sub_24E601704(v374, &qword_27F22DF80, &unk_24F942E50);
                      v377 = 1;
                      v378 = v560;
                    }

                    else
                    {
                      v379 = v547;
                      sub_24F7F74B0(v374, v547, type metadata accessor for PlayerAvatar.Overlay);
                      v378 = v560;
                      v380 = v379 + *(v560 + 20);
                      *v380 = 0;
                      *(v380 + 8) = 1;
                      v381 = (v379 + *(v378 + 24));
                      *v381 = 0;
                      v381[1] = 0;
                      sub_24F7F74B0(v379, &v29[v375], type metadata accessor for PlayerAvatarView.Overlay);
                      v377 = 0;
                    }

                    (*v563)(&v29[v375], v377, 1, v378);
                    v382 = v569;
                    v383 = &v29[*(v569 + 24)];
                    sub_24E60169C(&v70[*(v570 + 6)], &v578, qword_27F24EC90, &unk_24F93C1D0);
                    sub_24F7F7580(v70, type metadata accessor for PlayerAvatar);
                    v384 = v579;
                    *v383 = v578;
                    *(v383 + 1) = v384;
                    *(v383 + 4) = v580;
                    v29[*(v382 + 28)] = 7;
                    v572 = v371;
                    v386 = *(v371 + 16);
                    v385 = *(v371 + 24);
                    if (v386 >= v385 >> 1)
                    {
                      sub_24F457C7C((v385 > 1), v386 + 1, 1);
                      v371 = v572;
                    }

                    *(v371 + 16) = v386 + 1;
                    sub_24F7F74B0(v29, v371 + ((*(v559 + 80) + 32) & ~*(v559 + 80)) + *(v559 + 72) * v386, type metadata accessor for PlayerAvatarView);
                    v372 += v568;
                    --v370;
                  }

                  while (v370);

                  v141 = v566;
                }

                else
                {

                  v371 = MEMORY[0x277D84F90];
                  v141 = v566;
                }

                v364 = v554;
                v365 = v516;
                if (v571 <= 2u && v571 && v571 != 1)
                {

                  v402 = 1;
                }

                else
                {
                  v401 = sub_24F92CE08();

                  if (v401)
                  {
                    v402 = 1;
                  }

                  else
                  {
                    v402 = 3;
                  }
                }

                *&v578 = 0x4010000000000000;
                sub_24E66ED98();
                v403 = v477;
                sub_24F9237C8();
                v404 = v503;
                *(v403 + *(v503 + 20)) = v371;
                v405 = v403 + *(v404 + 24);
                *v405 = v402;
                *(v405 + 8) = 1;
                *(v403 + *(v404 + 28)) = 3;
                v363 = v506;
                sub_24F7F74B0(v403, v506, type metadata accessor for OverlappingPlayerAvatarsView);
                (*(v502 + 56))(v363, 0, 1, v404);
                v139 = v557;
              }

              else
              {
                v363 = v506;
                (*(v502 + 56))(v506, 1, 1, v503);
                v364 = v554;
                v365 = v516;
              }

              sub_24E60169C(v363, v365, &qword_27F240B08, &qword_24FA2DCF0);
              swift_storeEnumTagMultiPayload();
              sub_24E725C2C();
              sub_24F391388();
              v406 = v529;
              sub_24F924E28();
              sub_24E60169C(v406, v544, &qword_27F251520, &qword_24FA2DD00);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6998();
              sub_24F7F7064();
              v407 = v545;
              sub_24F924E28();
              sub_24E601704(v406, &qword_27F251520, &qword_24FA2DD00);
              sub_24E60169C(v407, v551, &qword_27F251578, &qword_24FA2DD68);
              swift_storeEnumTagMultiPayload();
              sub_24F7F690C();
              sub_24F7F70F0();
              v408 = v552;
              sub_24F924E28();
              sub_24E601704(v407, &qword_27F251578, &qword_24FA2DD68);
              sub_24E60169C(v408, v364, &qword_27F251580, &unk_24FA2DD70);
              swift_storeEnumTagMultiPayload();
              sub_24F7F6880();
              sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v408, &qword_27F251580, &unk_24FA2DD70);
              sub_24E601704(v363, &qword_27F240B08, &qword_24FA2DCF0);
              goto LABEL_142;
            }
          }

          v360 = sub_24F92CE08();

          if (v360)
          {
            v359 = 1;
          }

          else
          {
            v359 = 3;
          }

          goto LABEL_104;
        }

        if (v563 != 3)
        {
          if (v563 == 4)
          {
            if (v571 >= 4u)
            {
              if (v571 != 4)
              {
                v344 = type metadata accessor for ChallengeCompletedCard(0);
                v345 = v562;
                v346 = v562 + *(v344 + 32);
                v347 = (v346 + *(type metadata accessor for CommonCardAttributes(0) + 44));
                v348 = v347[1];
                v139 = v557;
                if (v348)
                {
                  v349 = *v347;
                  v350 = v345 + *(v344 + 36);
                  v351 = v435;
                  (*(v513 + 16))(v435, v350, v514);
                  v352 = v451;
                  v353 = (v351 + *(v451 + 20));
                  *v353 = v349;
                  v353[1] = v348;
                  v354 = v453;
                  sub_24F7F74B0(v351, v453, type metadata accessor for HeroCardGameHeadingView);
                  v355 = 0;
                  v260 = v554;
                }

                else
                {
                  v355 = 1;
                  v260 = v554;
                  v354 = v453;
                  v352 = v451;
                }

                (*(v450 + 56))(v354, v355, 1, v352);
                sub_24E60169C(v354, v469, &qword_27F219E50, &unk_24F94D9F0);
                swift_storeEnumTagMultiPayload();
                sub_24E7179AC();
                sub_24E63C774();

                v409 = v470;
                sub_24F924E28();
                sub_24E60169C(v409, v491, &qword_27F21A070, &unk_24F9EC500);
                swift_storeEnumTagMultiPayload();
                sub_24E725CB8();
                v410 = v492;
                sub_24F924E28();
                sub_24E601704(v409, &qword_27F21A070, &unk_24F9EC500);
                v411 = v354;
                v135 = v410;
                sub_24E601704(v411, &qword_27F219E50, &unk_24F94D9F0);
                v261 = v516;
                goto LABEL_84;
              }

              v231 = (v562 + *(type metadata accessor for ChallengeCompletedCard(0) + 40));
              v232 = v231[1];
              *&v578 = *v231;
              *(&v578 + 1) = v232;
              sub_24E600AEC();

              v233 = sub_24F925E18();
              v235 = v234;
              v237 = v236;
              v238 = v567;
              v239 = sub_24F925C98();
              v241 = v240;
              v243 = v242;
              sub_24E600B40(v233, v235, v237 & 1);

              LODWORD(v578) = sub_24F9251C8();
              v244 = sub_24F925C58();
              v246 = v245;
              v248 = v247;
              v250 = v249;
              sub_24E600B40(v239, v241, v243 & 1);

              v251 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
              v252 = *MEMORY[0x277CE13B8];
              v253 = sub_24F927748();
              v254 = v454;
              (*(*(v253 - 8) + 104))(&v454[v251], v252, v253);
              *v254 = v244;
              *(v254 + 8) = v246;
              *(v254 + 16) = v248 & 1;
              *(v254 + 24) = v250;
              v255 = *(v238 + v426[19]);
              v256 = swift_getKeyPath();
              v257 = v254 + *(v471 + 36);
              *v257 = v256;
              *(v257 + 8) = v255;
              *(v257 + 16) = 0;
              sub_24E60169C(v254, v469, &qword_27F214B98, &unk_24F93E740);
              swift_storeEnumTagMultiPayload();
              sub_24E7179AC();
              sub_24E63C774();
              v258 = v470;
              sub_24F924E28();
              sub_24E60169C(v258, v491, &qword_27F21A070, &unk_24F9EC500);
              swift_storeEnumTagMultiPayload();
              sub_24E725CB8();
              v259 = v492;
              sub_24F924E28();
              v135 = v259;
              sub_24E601704(v258, &qword_27F21A070, &unk_24F9EC500);
              sub_24E601704(v254, &qword_27F214B98, &unk_24F93E740);
            }

            else
            {
              swift_storeEnumTagMultiPayload();
              sub_24E725CB8();
              v135 = v492;
              sub_24F924E28();
            }

            v260 = v554;
            v139 = v557;
            v261 = v516;
LABEL_84:
            sub_24E60169C(v135, v261, &qword_27F21A078, &qword_24F9EC510);
            swift_storeEnumTagMultiPayload();
            sub_24E725C2C();
            sub_24F391388();
            v262 = v529;
            sub_24F924E28();
            sub_24E60169C(v262, v544, &qword_27F251520, &qword_24FA2DD00);
            swift_storeEnumTagMultiPayload();
            sub_24F7F6998();
            sub_24F7F7064();
            v263 = v545;
            sub_24F924E28();
            sub_24E601704(v262, &qword_27F251520, &qword_24FA2DD00);
            sub_24E60169C(v263, v551, &qword_27F251578, &qword_24FA2DD68);
            swift_storeEnumTagMultiPayload();
            sub_24F7F690C();
            sub_24F7F70F0();
            v264 = v552;
            sub_24F924E28();
            sub_24E601704(v263, &qword_27F251578, &qword_24FA2DD68);
            sub_24E60169C(v264, v260, &qword_27F251580, &unk_24FA2DD70);
            swift_storeEnumTagMultiPayload();
            sub_24F7F6880();
            sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24F924E28();
            sub_24E601704(v264, &qword_27F251580, &unk_24FA2DD70);
            sub_24E601704(v135, &qword_27F21A078, &qword_24F9EC510);
            goto LABEL_127;
          }

LABEL_70:
          v200 = v534;
          sub_24E923A08(v563, v562, v119, v548, v535, v534);
          v201 = &unk_24F94D670;
          sub_24E60169C(v200, v554, &qword_27F214A20, &unk_24F94D670);
          swift_storeEnumTagMultiPayload();
          sub_24F7F6880();
          sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v139 = v557;
          sub_24F924E28();
          v202 = v200;
          v203 = &qword_27F214A20;
LABEL_126:
          sub_24E601704(v202, v203, v201);
          goto LABEL_127;
        }

        if (v571 > 3u)
        {
          v139 = v557;
          v141 = v566;
          v164 = v510;
          if (v571 == 4)
          {
            type metadata accessor for ChallengeCompletedCard(0);
            v265 = v440;
            sub_24F9289C8();
            LODWORD(v571) = *MEMORY[0x277CE0118];
            v266 = v441;
            v570 = *(v441 + 104);
            v267 = v439;
            v268 = v446;
            (v570)(v439);
            v269 = v443;
            sub_24F9219A8();
            (*(v266 + 8))(v267, v268);
            sub_24F7F6D80(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
            sub_24F7F6D80(&qword_27F214C30, MEMORY[0x277D7EBE8], MEMORY[0x277D7EBE0]);
            v270 = v447;
            v271 = v514;
            v272 = v445;
            sub_24F925ED8();
            (*(v444 + 8))(v269, v272);
            (*(v513 + 8))(v265, v271);
            v273 = sub_24F927618();
            v275 = v274;
            v276 = v141;
            v277 = (v270 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20, &unk_24F93E780) + 36));
            v278 = sub_24F924258();
            (v570)(v277 + *(v278 + 20), v571, v268);
            __asm { FMOV            V0.2D, #8.0 }

            *v277 = _Q0;
            v284 = v426;
            v285 = v567;
            v286 = (v567 + v426[32]);
            v287 = *v286;
            v288 = v286[1];
            v289 = v286[2];
            v290 = v286[3];
            v291 = (v277 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8, &unk_24F97E300) + 36));
            *v291 = v290;
            v291[1] = v289;
            v291[2] = v287;
            v291[3] = v288;
            v292 = (v277 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40, &unk_24F94FFE0) + 36));
            v141 = v276;
            v164 = v510;
            *v292 = v273;
            v292[1] = v275;
            v293 = *(v285 + v284[31]);

            sub_24F9278A8();
            v294 = (v270 + *(v462 + 36));
            *v294 = v293;
            v294[1] = v295;
            v294[2] = v296;
            sub_24E60169C(v270, v464, &qword_27F214C10, &unk_24F94FFD0);
            swift_storeEnumTagMultiPayload();
            sub_24E63CB8C();
            sub_24F7F6DC8(&qword_27F227380, &qword_27F2272E8, &qword_24FA2DD10, sub_24E680290);
            v297 = v468;
            sub_24F924E28();
            sub_24E60169C(v297, v490, &qword_27F251540, &unk_24FA2DD28);
            swift_storeEnumTagMultiPayload();
            sub_24F7F6ED0();
            sub_24F7F6F88();
            sub_24F924E28();
            sub_24E601704(v297, &qword_27F251540, &unk_24FA2DD28);
            sub_24E601704(v270, &qword_27F214C10, &unk_24F94FFD0);
LABEL_89:
            v306 = &qword_24FA2DD38;
            sub_24E60169C(v164, v532, &qword_27F251548, &qword_24FA2DD38);
            swift_storeEnumTagMultiPayload();
            sub_24F7F7314(&qword_27F2515E0, &qword_27F2515B8, &qword_24FA2DDB0, sub_24F7F6A50);
            sub_24F7F6E44();
            v307 = v533;
            sub_24F924E28();
            v308 = v164;
            sub_24E60169C(v307, v544, &qword_27F251570, &qword_24FA2DD60);
            swift_storeEnumTagMultiPayload();
            sub_24F7F6998();
            sub_24F7F7064();
            v309 = v545;
            sub_24F924E28();
            sub_24E601704(v307, &qword_27F251570, &qword_24FA2DD60);
            sub_24E60169C(v309, v551, &qword_27F251578, &qword_24FA2DD68);
            swift_storeEnumTagMultiPayload();
            sub_24F7F690C();
            sub_24F7F70F0();
            v310 = v552;
            sub_24F924E28();
            sub_24E601704(v309, &qword_27F251578, &qword_24FA2DD68);
            sub_24E60169C(v310, v554, &qword_27F251580, &unk_24FA2DD70);
            swift_storeEnumTagMultiPayload();
            sub_24F7F6880();
            sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24F924E28();
            sub_24E601704(v310, &qword_27F251580, &unk_24FA2DD70);
            v311 = v308;
            v312 = &qword_27F251548;
LABEL_141:
            sub_24E601704(v311, v312, v306);
            goto LABEL_142;
          }
        }

        else
        {
          v139 = v557;
          v141 = v566;
          v164 = v510;
          if (v571 - 1 >= 3)
          {
            v165 = type metadata accessor for ChallengeCompletedCard(0);
            v166 = v562;
            v167 = *(v562 + *(v165 + 44));
            if (*(v167 + 16))
            {
              v168 = v165;
              v169 = v427;
              sub_24F7F7518(v167 + ((*(v512 + 80) + 32) & ~*(v512 + 80)), v427, type metadata accessor for PlayerAvatar);
              v170 = v429;
              sub_24F7F74B0(v169, v429, type metadata accessor for PlayerAvatar);
              v171 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0, &unk_24F94DAF0) + 48);
              v172 = v166 + *(v168 + 36);
              v173 = v433;
              (*(v513 + 16))(v433, v172, v514);
              *(v173 + v171) = 0;
              v174 = type metadata accessor for PlayerAvatar.Overlay(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
              v175 = v428;
              sub_24F7F7518(v170, v428, type metadata accessor for PlayerAvatar);
              sub_24E717FD0(v173, v175 + *(v570 + 5));
              LOBYTE(v578) = 7;
              v176 = v434;
              sub_24F8319B8(v175, &v578, v434);
              sub_24F927618();
              sub_24F9238C8();
              sub_24F7F7580(v170, type metadata accessor for PlayerAvatar);
              v177 = v449;
              v178 = (v176 + *(v449 + 36));
              v179 = v579;
              *v178 = v578;
              v178[1] = v179;
              v178[2] = v580;
              v180 = v452;
              sub_24E6009C8(v176, v452, &qword_27F2233D0, &qword_24F958810);
              v181 = 0;
            }

            else
            {
              v181 = 1;
              v180 = v452;
              v177 = v449;
            }

            (*(v448 + 56))(v180, v181, 1, v177);
            v303 = &qword_24FA2DD10;
            sub_24E60169C(v180, v464, &qword_27F2272E8, &qword_24FA2DD10);
            swift_storeEnumTagMultiPayload();
            sub_24E63CB8C();
            sub_24F7F6DC8(&qword_27F227380, &qword_27F2272E8, &qword_24FA2DD10, sub_24E680290);
            v412 = v468;
            sub_24F924E28();
            sub_24E60169C(v412, v490, &qword_27F251540, &unk_24FA2DD28);
            swift_storeEnumTagMultiPayload();
            sub_24F7F6ED0();
            sub_24F7F6F88();
            sub_24F924E28();
            sub_24E601704(v412, &qword_27F251540, &unk_24FA2DD28);
            v304 = v180;
            v305 = &qword_27F2272E8;
            goto LABEL_88;
          }
        }

        v298 = v571;
        v299 = type metadata accessor for ChallengeCompletedCard(0);
        v300 = v478;
        (*(v513 + 16))(v478, v562 + *(v299 + 36), v514);
        *(v300 + *(type metadata accessor for ChallengeCompletedCardConfiguration.PrimaryIconView(0) + 20)) = v298;
        sub_24F927618();
        sub_24F9238C8();
        v301 = (v300 + *(v493 + 36));
        v302 = v579;
        *v301 = v578;
        v301[1] = v302;
        v301[2] = v580;
        v303 = &qword_24FA2DD08;
        sub_24E60169C(v300, v490, &qword_27F251528, &qword_24FA2DD08);
        swift_storeEnumTagMultiPayload();
        sub_24F7F6ED0();
        sub_24F7F6F88();
        sub_24F924E28();
        v304 = v300;
        v305 = &qword_27F251528;
LABEL_88:
        sub_24E601704(v304, v305, v303);
        goto LABEL_89;
      }

      if (qword_27F211300 != -1)
      {
        v422 = v102;
        swift_once();
        v102 = v422;
      }

      v105 = qword_27F39E640;
LABEL_31:
      v426 = v102;
      v118 = __swift_project_value_buffer(v102, v105);
      sub_24F7F7518(v118, v100, type metadata accessor for CardLayoutMetrics);
      goto LABEL_32;
    }

LABEL_18:
    if (v106 == 3)
    {
      v425 = v29;
      v116 = v102;
      sub_24F4E9558(v548, v97);
      sub_24F7F74B0(v97, v100, type metadata accessor for CardLayoutMetrics);
      v100[v116[17]] = 0;
      v426 = v116;
      v117 = v116[30];
      v29 = v425;
      *&v100[v117] = 0x403A000000000000;
      goto LABEL_32;
    }

    if (v106 == 4)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

LABEL_24:
  v112 = *(v564 + 56);
  v113 = v566;
  v114 = v565;

  return v112(v113, 1, 1, v114, v103);
}

uint64_t sub_24F7F3FB4@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v11 = v7;
      sub_24F4E9558(a2, v9);
      result = sub_24F7F74B0(v9, a3, type metadata accessor for CardLayoutMetrics);
      *(a3 + *(v11 + 68)) = 0;
      v13 = *(v11 + 120);
LABEL_17:
      *(a3 + v13) = 0x403A000000000000;
      return result;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        v19 = v7;
        swift_once();
        v7 = v19;
      }

      v10 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        v21 = v7;
        swift_once();
        v7 = v21;
      }

      v10 = qword_27F39E658;
    }

LABEL_21:
    v17 = __swift_project_value_buffer(v7, v10);
    sub_24F7F7518(v17, v9, type metadata accessor for CardLayoutMetrics);
    return sub_24F7F74B0(v9, a3, type metadata accessor for CardLayoutMetrics);
  }

  if (!a1)
  {
    if (qword_27F211300 != -1)
    {
      v18 = v7;
      swift_once();
      v7 = v18;
    }

    v10 = qword_27F39E640;
    goto LABEL_21;
  }

  if (a1 != 1)
  {
    if (qword_27F2112F8 != -1)
    {
      v20 = v7;
      swift_once();
      v7 = v20;
    }

    v14 = v7;
    v15 = __swift_project_value_buffer(v7, qword_27F39E628);
    sub_24F7F7518(v15, v9, type metadata accessor for CardLayoutMetrics);
    result = sub_24F7F74B0(v9, a3, type metadata accessor for CardLayoutMetrics);
    v16 = (a3 + *(v14 + 48));
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v16[3] = 0x4024000000000000;
    v13 = *(v14 + 120);
    goto LABEL_17;
  }

  sub_24F4E9E44(a2, v9);
  return sub_24F7F74B0(v9, a3, type metadata accessor for CardLayoutMetrics);
}

uint64_t sub_24F7F4268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EF8, &qword_24FA2E1F0);
  MEMORY[0x28223BE20](v4);
  v6 = v28 - v5;
  v7 = type metadata accessor for GameIcon(0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EE0, &unk_24F9EC9D0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v16 = *(a1 + *(type metadata accessor for ChallengeCompletedCardConfiguration.PrimaryIconView(0) + 20));
  if (v16 == 3)
  {
    swift_storeEnumTagMultiPayload();
    sub_24F392EE0();
    return sub_24F924E28();
  }

  else
  {
    v28[0] = v4;
    v28[1] = a2;
    v18 = sub_24F9289E8();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v9, a1, v18);
    (*(v19 + 56))(v9, 0, 1, v18);
    v20 = v7[8];
    *&v9[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
    swift_storeEnumTagMultiPayload();
    v9[v7[5]] = 1;
    v9[v7[6]] = 1;
    v9[v7[7]] = 0;
    if (v16 == 4)
    {

      v21 = -0.174532925;
    }

    else
    {
      v22 = sub_24F92CE08();

      if (v22)
      {
        v21 = -0.174532925;
      }

      else
      {
        v21 = 0.0;
      }
    }

    sub_24F9278A8();
    v24 = v23;
    v26 = v25;
    sub_24F7F74B0(v9, v12, type metadata accessor for GameIcon);
    v27 = &v12[*(v10 + 36)];
    *v27 = v21;
    *(v27 + 1) = v24;
    *(v27 + 2) = v26;
    sub_24E6009C8(v12, v15, &qword_27F240EE0, &unk_24F9EC9D0);
    sub_24E60169C(v15, v6, &qword_27F240EE0, &unk_24F9EC9D0);
    swift_storeEnumTagMultiPayload();
    sub_24F392EE0();
    sub_24F924E28();
    return sub_24E601704(v15, &qword_27F240EE0, &unk_24F9EC9D0);
  }
}

uint64_t sub_24F7F46A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GameIcon(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = v5[10];
  *&v7[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  v7[v5[7]] = 1;
  v7[v5[8]] = 1;
  v7[v5[9]] = 0;
  if (*(a1 + *(type metadata accessor for ChallengeCompletedCardConfiguration.PrimaryIconView(0) + 20)) == 4)
  {

    v11 = -0.174532925;
  }

  else
  {
    v12 = sub_24F92CE08();

    if (v12)
    {
      v11 = -0.174532925;
    }

    else
    {
      v11 = 0.0;
    }
  }

  sub_24F9278A8();
  v14 = v13;
  v16 = v15;
  sub_24F7F74B0(v7, a2, type metadata accessor for GameIcon);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EE0, &unk_24F9EC9D0);
  v18 = a2 + *(result + 36);
  *v18 = v11;
  *(v18 + 8) = v14;
  *(v18 + 16) = v16;
  return result;
}

uint64_t sub_24F7F4948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240ED8, &unk_24FA2E1E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EE0, &unk_24F9EC9D0);
  sub_24E6A4C1C();
  sub_24F7F7D94();
  sub_24F392EE0();
  return sub_24F927568();
}

__n128 sub_24F7F4A68@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  v28 = *(v1 + 8);
  v7 = *(v1 + 3);
  v25 = v7;
  v26 = *(v1 + 32);
  if (v26 == 1)
  {
    v24 = v7;
    sub_24F7F7D08(&v27, v23);
    sub_24E60169C(&v25, v23, &qword_27F2516C0, &qword_24FA2E0F0);
  }

  else
  {
    sub_24F7F7D08(&v27, v23);
    sub_24E60169C(&v25, v23, &qword_27F2516C0, &qword_24FA2E0F0);
    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v25, &qword_27F2516C0, &qword_24FA2E0F0);
    (*(v4 + 8))(v6, v3);
    v7 = v24;
  }

  v9 = v27;
  v10 = v28;
  v11 = HIBYTE(v28);
  swift_getKeyPath();
  v23[0] = v7;
  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v12 = *(v7 + 16);
  v18 = *(v7 + 32);
  v19 = v12;

  KeyPath = swift_getKeyPath();
  type metadata accessor for HeroSafeAreaMetrics(0);
  sub_24F7F6D80(&qword_27F21EAC8, type metadata accessor for HeroSafeAreaMetrics, &unk_24F9E2760);
  v14 = sub_24F923598();
  v20 = v15 & 1;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 17) = v11;
  *(a1 + 18) = v21;
  *(a1 + 22) = v22;
  result = v19;
  *(a1 + 40) = v18;
  *(a1 + 24) = result;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = 0;
  v17 = v23[0];
  *(a1 + 68) = *(v23 + 3);
  *(a1 + 65) = v17;
  *(a1 + 72) = v14;
  *(a1 + 80) = v20;
  return result;
}

double sub_24F7F4DB8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v38 = sub_24F9249B8();
  v41[0] = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  *&v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = sub_24F924848();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChallengesSlashHeaderView(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D50, &qword_24F93E888);
  MEMORY[0x28223BE20](v39);
  v11 = &v36 - v10;
  v12 = *v2;
  if (*(v2 + 18) == 4)
  {
    v55 = *(v2 + 8);
    v56 = *(v2 + 16);

    v13 = 0;
  }

  else
  {
    v55 = *(v2 + 8);
    v56 = *(v2 + 16);
    v14 = sub_24F92CE08();

    v13 = ~v14 & 1;
  }

  v54 = *(v2 + 32);
  v15 = *(v2 + 24);
  v53 = v15;
  if (v54 == 1)
  {
    v52 = v15;
  }

  else
  {

    sub_24F92BDC8();
    v16 = sub_24F9257A8();
    *&v36 = v12;
    v17 = v16;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v53, &qword_27F2516C0, &qword_24FA2E0F0);
    v12 = v36;
    (*(v4 + 8))(v6, v37);
    v15 = v52;
  }

  swift_getKeyPath();
  *&v43 = v15;
  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v18 = *(v15 + 32);
  v37 = *(v15 + 16);
  v36 = v18;

  v49 = sub_24E608A90(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D80, &unk_24F93E8E0);
  sub_24F926F28();
  v19 = *(&v43 + 1);
  *(v9 + 11) = v43;
  *(v9 + 12) = v19;
  v49 = 0;
  v50 = 0;
  v51 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D88, &qword_24F9EC890);
  sub_24F926F28();
  v20 = v44;
  v21 = *(&v44 + 1);
  *(v9 + 104) = v43;
  v9[120] = v20;
  *(v9 + 16) = v21;
  v22 = v7[10];
  *&v9[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *&v9[v7[11]] = 0x4031000000000000;
  *&v9[v7[12]] = 0x4020000000000000;
  v23 = &v9[v7[13]];
  *v23 = 0xD000000000000017;
  *(v23 + 1) = 0x800000024FA453F0;
  *v9 = v12;
  *(v9 + 1) = v13;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  v9[32] = 1;
  *(v9 + 5) = v55;
  v9[48] = v56;
  *(v9 + 72) = v36;
  *(v9 + 56) = v37;
  (*(*&v41[0] + 104))(v40, *MEMORY[0x277CE00F0], v38);
  sub_24F924E68();
  sub_24F924E48();
  sub_24F924E58();
  sub_24F7F74B0(v9, v11, type metadata accessor for ChallengesSlashHeaderView);
  v24 = sub_24F927618();
  v26 = v25;
  sub_24F7F5454(v2, &v43);
  v27 = v45;
  v28 = v46;
  v29 = v47;
  v30 = v48;
  v40 = v44;
  *v41 = v43;
  v31 = v11;
  v32 = v42;
  sub_24E6009C8(v31, v42, &qword_27F214D50, &qword_24F93E888);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2516C8, &qword_24FA2E188) + 36);
  v35 = v40;
  result = v41[0];
  *v33 = *v41;
  *(v33 + 16) = v35;
  *(v33 + 32) = v27;
  *(v33 + 40) = v28;
  *(v33 + 50) = v30;
  *(v33 + 48) = v29;
  *(v33 + 51) = v43;
  *(v33 + 55) = BYTE4(v43);
  *(v33 + 56) = v24;
  *(v33 + 64) = v26;
  return result;
}

void sub_24F7F5454(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 17))
  {
    v26 = *(a1 + 32);
    v9 = *(a1 + 24);
    v25 = v9;
    if (v26 == 1)
    {
      v24 = v9;
    }

    else
    {
      v16 = v6;

      sub_24F92BDC8();
      v17 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E601704(&v25, &qword_27F2516C0, &qword_24FA2E0F0);
      (*(v5 + 8))(v8, v16);
      v9 = v24;
    }

    swift_getKeyPath();
    v23 = v9;
    sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v18 = *(v9 + 16);

    v19 = sub_24F925818();
    v11 = sub_24EA91914(v19, v18);
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v10 = sub_24F925808();
    LOBYTE(v23) = 0;
    v12 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 0.0;
    v12 = 2;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  *a2 = v12;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 50) = 0;
  *(a2 + 48) = 0;
}

double sub_24F7F5708@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for JSColor(0);
  MEMORY[0x28223BE20](v4);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChallengeCompletedCard.ParticipantResult(0);
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlayerAvatar(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F550, &unk_24F9EC960);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v18 - 8);
  v59 = &v54 - v19;
  v66 = type metadata accessor for PlayerGroupView(0);
  MEMORY[0x28223BE20](v66);
  v68 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EB8, &unk_24F9EC970);
  MEMORY[0x28223BE20](v65);
  v67 = &v54 - v21;
  v22 = type metadata accessor for ChallengeCompletedCard(0);
  v23 = *(v2 + *(v22 + 44));
  v24 = *(v23 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v54 = v22;
    v55 = v8;
    v56 = v4;
    v57 = v2;
    v58 = a1;
    v69 = MEMORY[0x277D84F90];
    sub_24F457BF8(0, v24, 0);
    v25 = v69;
    v26 = v23 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v27 = *(v61 + 72);
    do
    {
      sub_24F7F7518(v26, v11, type metadata accessor for ChallengeCompletedCard.ParticipantResult);
      sub_24F7F74B0(v11, v15, type metadata accessor for PlayerAvatar);
      v69 = v25;
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_24F457BF8((v28 > 1), v29 + 1, 1);
        v25 = v69;
      }

      *(v25 + 16) = v29 + 1;
      sub_24F7F74B0(v15, v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29, type metadata accessor for PlayerAvatar);
      v26 += v27;
      --v24;
    }

    while (v24);
    v2 = v57;
    a1 = v58;
    v8 = v55;
    v4 = v56;
    v22 = v54;
  }

  v30 = v2 + *(v22 + 32);
  v31 = type metadata accessor for CommonCardAttributes(0);
  v32 = v62;
  sub_24E60169C(v30 + *(v31 + 68), v62, &qword_27F21F550, &unk_24F9EC960);
  if ((*(v63 + 48))(v32, 1, v64) == 1)
  {
    v33 = &qword_27F21F550;
    v34 = &unk_24F9EC960;
    v35 = v32;
  }

  else
  {
    sub_24F7F7518(v32, v8, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
    v36 = v60;
    sub_24F7F74B0(v8, v60, type metadata accessor for JSColor);
    if (qword_27F20FEE0 != -1)
    {
      swift_once();
    }

    v37 = *(v36 + *(v4 + 24));
    v38 = v59;
    ColorGrouping.colorGroup(for:)(v37);
    sub_24F7F7580(v36, type metadata accessor for JSColor);
    sub_24F7F7580(v32, type metadata accessor for CommonCardAttributes.CardBackgroundColor);
    v39 = type metadata accessor for ColorGroup(0);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) != 1)
    {
      v40 = *(v38 + *(v39 + 28));

      sub_24F7F7580(v38, type metadata accessor for ColorGroup);
      goto LABEL_15;
    }

    v33 = &qword_27F2190D8;
    v34 = &unk_24F94BD70;
    v35 = v38;
  }

  sub_24E601704(v35, v33, v34);
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v40 = sub_24F926D08();

LABEL_15:
  v41 = v66;
  v42 = *(v66 + 24);
  v43 = *MEMORY[0x277CE13D8];
  v44 = sub_24F927748();
  v45 = v68;
  (*(*(v44 - 8) + 104))(&v68[v42], v43, v44);
  *(v45 + *(v41 + 28)) = vdupq_n_s64(0x4052000000000000uLL);
  *(v45 + *(v41 + 32)) = 7;
  *v45 = v25;
  v45[1] = v40;
  v46 = sub_24F9275D8();
  v48 = v47;
  v49 = v67;
  v50 = &v67[*(v65 + 36)];
  sub_24F7F5E88(v2, v50);
  v51 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EC0, &unk_24FA2E1A0) + 36));
  *v51 = v46;
  v51[1] = v48;
  sub_24F7F74B0(v45, v49, type metadata accessor for PlayerGroupView);
  LOBYTE(v46) = sub_24F925808();
  sub_24E6009C8(v49, a1, &qword_27F240EB8, &unk_24F9EC970);
  v52 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240EC8, &qword_24F9EC980) + 36);
  *v52 = v46;
  result = 0.0;
  *(v52 + 8) = 0u;
  *(v52 + 24) = 0u;
  *(v52 + 40) = 1;
  return result;
}

uint64_t sub_24F7F5E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for ChallengeCompletedCard(0) + 36);
  v9 = sub_24F9289E8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a2, a1 + v8, v9);
  (*(v10 + 56))(a2, 0, 1, v9);
  v11 = type metadata accessor for GameIcon(0);
  v12 = v11[8];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v11[5]) = 1;
  *(a2 + v11[6]) = 1;
  *(a2 + v11[7]) = 0;
  sub_24F927618();
  sub_24F9238C8();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760, &qword_24F945460) + 36));
  v14 = v38;
  *v13 = v37;
  v13[1] = v14;
  v13[2] = v39;
  sub_24F9278A8();
  v16 = v15;
  v18 = v17;
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B1C0, &qword_24F950530) + 36));
  *v19 = 0x3FC657184AE74487;
  v19[1] = v16;
  v19[2] = v18;
  v20 = (a1 + *(_s12GameStoreKit17CompactVisualViewVMa_0(0) + 20));
  v21 = *v20;
  LOBYTE(v11) = *(v20 + 8);

  if ((v11 & 1) == 0)
  {
    sub_24F92BDC8();
    v22 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v21 = v36;
  }

  swift_getKeyPath();
  v36 = v21;
  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v23 = *(v21 + 16);

  v24 = sub_24F925868();
  v25 = sub_24EA91914(v24, v23);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_24F925808();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F240ED0, &unk_24F9EC9C0);
  v34 = a2 + *(result + 36);
  *v34 = v32;
  *(v34 + 8) = v25;
  *(v34 + 16) = v27;
  *(v34 + 24) = v29;
  *(v34 + 32) = v31;
  *(v34 + 40) = 0;
  return result;
}

__n128 sub_24F7F6240@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;
  v6 = type metadata accessor for PlayerAvatar(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = v23 - v11;
  v13 = type metadata accessor for PlayerAvatar.Overlay(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  sub_24F7F7518(v1, v12, type metadata accessor for PlayerAvatar);
  sub_24E717FD0(v5, &v12[*(v7 + 28)]);
  v14 = a1 + *(type metadata accessor for CardCompactAvatarView(0) + 20);
  type metadata accessor for CardSafeArea(0);
  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  *v14 = sub_24F923598();
  *(v14 + 8) = v15 & 1;
  sub_24F7F7518(v12, v9, type metadata accessor for PlayerAvatar);
  LOBYTE(v23[0]) = 7;
  sub_24F8319B8(v9, v23, a1);
  sub_24F7F7580(v12, type metadata accessor for PlayerAvatar);
  v16 = sub_24F927618();
  v18 = v17;
  sub_24F7F64C4(v1, v23);
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2516D0, &unk_24FA2E190) + 36);
  v20 = v23[5];
  *(v19 + 64) = v23[4];
  *(v19 + 80) = v20;
  *(v19 + 96) = v23[6];
  v21 = v23[1];
  *v19 = v23[0];
  *(v19 + 16) = v21;
  result = v23[3];
  *(v19 + 32) = v23[2];
  *(v19 + 48) = result;
  *(v19 + 112) = v16;
  *(v19 + 120) = v18;
  return result;
}

void sub_24F7F64C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s12GameStoreKit18PortraitVisualViewVMa_0(0);
  v9 = (a1 + *(v8 + 24));
  v10 = *v9;
  v11 = *(v9 + 8);
  v37 = v5;
  v38 = v4;
  if (v11 == 1)
  {
    v40 = v10;

    v12 = v10;
  }

  else
  {

    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v12 = v40;
  }

  swift_getKeyPath();
  v39 = v12;
  sub_24F7F6D80(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v14 = *(v12 + 16);

  v15 = sub_24F925868();
  v16 = sub_24EA91914(v15, v14);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_24F925808();
  v41 = 0;
  if (*(a1 + *(v8 + 20)) == 1)
  {

    if ((v11 & 1) == 0)
    {
      sub_24F92BDC8();
      v24 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();

      (*(v37 + 8))(v7, v38);
      v10 = v39;
    }

    swift_getKeyPath();
    v39 = v10;
    sub_24F91FD88();

    v25 = *(v10 + 16);

    v26 = sub_24F925818();
    v27 = sub_24EA91914(v26, v25);
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = sub_24F925808();
    v35 = 1;
  }

  else
  {
    v34 = 0;
    v27 = 0.0;
    v35 = 2;
    v29 = 0;
    v31 = 0;
    v33 = 0;
  }

  *a2 = 1;
  *(a2 + 2) = 0;
  *(a2 + 8) = v23;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = 0;
  *(a2 + 56) = v35;
  *(a2 + 64) = v34;
  *(a2 + 72) = v27;
  *(a2 + 80) = v29;
  *(a2 + 88) = v31;
  *(a2 + 96) = v33;
  *(a2 + 104) = 0;
}

unint64_t sub_24F7F6880()
{
  result = qword_27F2515C8;
  if (!qword_27F2515C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251580, &unk_24FA2DD70);
    sub_24F7F690C();
    sub_24F7F70F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2515C8);
  }

  return result;
}

unint64_t sub_24F7F690C()
{
  result = qword_27F2515D0;
  if (!qword_27F2515D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251578, &qword_24FA2DD68);
    sub_24F7F6998();
    sub_24F7F7064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2515D0);
  }

  return result;
}

unint64_t sub_24F7F6998()
{
  result = qword_27F2515D8;
  if (!qword_27F2515D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251570, &qword_24FA2DD60);
    sub_24F7F7314(&qword_27F2515E0, &qword_27F2515B8, &qword_24FA2DDB0, sub_24F7F6A50);
    sub_24F7F6E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2515D8);
  }

  return result;
}

unint64_t sub_24F7F6A50()
{
  result = qword_27F2515E8;
  if (!qword_27F2515E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2515B0, &qword_24FA2DDA8);
    sub_24F7F6ADC();
    sub_24F7F6C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2515E8);
  }

  return result;
}

unint64_t sub_24F7F6ADC()
{
  result = qword_27F2515F0;
  if (!qword_27F2515F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2515F8, &qword_24FA2DDC0);
    sub_24F7F6B68();
    sub_24F7F6BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2515F0);
  }

  return result;
}

unint64_t sub_24F7F6B68()
{
  result = qword_27F251600;
  if (!qword_27F251600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251600);
  }

  return result;
}

unint64_t sub_24F7F6BBC()
{
  result = qword_27F251608;
  if (!qword_27F251608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251608);
  }

  return result;
}

unint64_t sub_24F7F6C10()
{
  result = qword_27F251610;
  if (!qword_27F251610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251590, &qword_24FA2DD88);
    sub_24F7F6CCC();
    sub_24F7F6D80(&qword_27F251628, _s12GameStoreKit17CompactVisualViewVMa_0, &unk_24FA2DFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251610);
  }

  return result;
}

unint64_t sub_24F7F6CCC()
{
  result = qword_27F251618;
  if (!qword_27F251618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251598, &qword_24FA2DD90);
    sub_24F7F6D80(&qword_27F251620, _s12GameStoreKit18PortraitVisualViewVMa_0, &unk_24FA2E000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251618);
  }

  return result;
}

uint64_t sub_24F7F6D80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F7F6DC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F7F6E44()
{
  result = qword_27F251630;
  if (!qword_27F251630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251548, &qword_24FA2DD38);
    sub_24F7F6ED0();
    sub_24F7F6F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251630);
  }

  return result;
}

unint64_t sub_24F7F6ED0()
{
  result = qword_27F251638;
  if (!qword_27F251638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251540, &unk_24FA2DD28);
    sub_24E63CB8C();
    sub_24F7F6DC8(&qword_27F227380, &qword_27F2272E8, &qword_24FA2DD10, sub_24E680290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251638);
  }

  return result;
}

unint64_t sub_24F7F6F88()
{
  result = qword_27F251640;
  if (!qword_27F251640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251528, &qword_24FA2DD08);
    sub_24F7F6D80(&qword_27F251648, type metadata accessor for ChallengeCompletedCardConfiguration.PrimaryIconView, &unk_24FA2DF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251640);
  }

  return result;
}

unint64_t sub_24F7F7064()
{
  result = qword_27F251650;
  if (!qword_27F251650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251520, &qword_24FA2DD00);
    sub_24E725C2C();
    sub_24F391388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251650);
  }

  return result;
}

unint64_t sub_24F7F70F0()
{
  result = qword_27F251658;
  if (!qword_27F251658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251510, &qword_24FA2DCE8);
    sub_24F7F71A8(&qword_27F214AD8, &qword_27F214A38, &unk_24F93E690, sub_24E63C1D8);
    sub_24F7F725C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251658);
  }

  return result;
}

uint64_t sub_24F7F71A8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24F7F6D80(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F7F725C()
{
  result = qword_27F251660;
  if (!qword_27F251660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2514F0, &qword_24FA2DCC8);
    sub_24F7F7314(&qword_27F251668, &qword_27F251500, &qword_24FA2DCD8, sub_24E6C08EC);
    sub_24F7F73C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251660);
  }

  return result;
}

uint64_t sub_24F7F7314(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F7F73C4()
{
  result = qword_27F251670;
  if (!qword_27F251670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2514E0, &qword_24FA2DCB8);
    sub_24F7F6DC8(&qword_27F21A190, &qword_27F21A000, &qword_24F94D960, sub_24E726138);
    sub_24F7F6DC8(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251670);
  }

  return result;
}

uint64_t sub_24F7F74B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7F7518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7F7580(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7F75F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 6)
    {
      return v10 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F7F76C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F9289E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_24F7F778C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeCompletedCard(0);
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

uint64_t sub_24F7F785C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeCompletedCard(0);
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

void sub_24F7F7918(uint64_t a1)
{
  type metadata accessor for ChallengeCompletedCard(319);
  if (v1 <= 0x3F)
  {
    sub_24E7268F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F7F79B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayerAvatar(0);
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

uint64_t sub_24F7F7A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlayerAvatar(0);
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

void sub_24F7F7B48(uint64_t a1)
{
  type metadata accessor for PlayerAvatar(319);
  if (v1 <= 0x3F)
  {
    sub_24E7268F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F7F7D94()
{
  result = qword_27F240EE8;
  if (!qword_27F240EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F240ED8, &unk_24FA2E1E0);
    sub_24F392EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F240EE8);
  }

  return result;
}

unint64_t sub_24F7F7E28()
{
  result = qword_27F2516D8;
  if (!qword_27F2516D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2516C8, &qword_24FA2E188);
    sub_24E63DC08();
    sub_24E602068(&qword_27F2516E0, &qword_27F2516E8, &qword_24FA2E1F8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2516D8);
  }

  return result;
}

unint64_t sub_24F7F7EE4()
{
  result = qword_27F2516F0;
  if (!qword_27F2516F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2516D0, &unk_24FA2E190);
    sub_24F7F6D80(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView, &unk_24F9B7498);
    sub_24E602068(&qword_27F2516F8, &unk_27F251700, &unk_24FA2E200, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2516F0);
  }

  return result;
}

uint64_t sub_24F7F7FDC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8618CC(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  result = sub_24F92CD78();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 96;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12)
          {
            break;
          }

          if (!v12[72])
          {
            break;
          }

          v13 = v12 - 64;
          v24 = *(v12 + 8);
          v14 = *(v12 + 24);
          v15 = *(v12 + 40);
          v16 = *(v12 + 56);
          v28 = v12[72];
          v26 = v15;
          v27 = v16;
          v25 = v14;
          *(v12 + 9) = *v12;
          v17 = *(v12 - 2);
          *(v12 + 56) = *(v12 - 1);
          *(v12 + 40) = v17;
          v18 = *(v12 - 4);
          *(v12 + 24) = *(v12 - 3);
          *(v12 + 8) = v18;
          *v13 = v24;
          v19 = v28;
          v20 = v27;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v20;
          *v12 = v19;
          *(v13 + 1) = v21;
          v12 -= 72;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 72;
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
      v7 = sub_24F92B618();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_24F7FA580(&v24, v23, v29, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24F7F8178(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24F92BAA8();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id GameCenter.fetchSuggestedFriends(localPlayer:limitedTo:on:)(void *a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  return sub_24F7FADF0(a1);
}

uint64_t sub_24F7F8270(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  v3 = sub_24F92B5A8();

  v2(v3);
}

uint64_t sub_24F7F82F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_24F91FF38();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7F83B4, 0, 0);
}

uint64_t sub_24F7F83B4()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251718, &qword_24FA2E240);
  *v3 = v0;
  v3[1] = sub_24F7F84BC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000030, 0x800000024FA7E440, sub_24F7FB648, v2, v4);
}

uint64_t sub_24F7F84BC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24F7F8DD8;
  }

  else
  {

    v2 = sub_24F7F85D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7F85D8()
{
  v1 = v0[2];
  v0[14] = v1;
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v2, 0);
    v3 = v17;
    v4 = *(v17 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = v4 + 1;
      v10 = *(v17 + 24);

      if (v4 >= v10 >> 1)
      {
        sub_24F4578E0((v10 > 1), v9, 1);
      }

      *(v17 + 16) = v9;
      v11 = v17 + v5;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v5 += 16;
      v6 += 6;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v0[15] = v3;
  v12 = v0[5];
  v13 = swift_task_alloc();
  v0[16] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v3;
  v14 = swift_task_alloc();
  v0[17] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480, &unk_24F944D20);
  *v14 = v0;
  v14[1] = sub_24F7F87A0;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0xD000000000000030, 0x800000024FA7E440, sub_24F7FB650, v13, v15);
}

uint64_t sub_24F7F87A0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_24F7F8E44;
  }

  else
  {

    v2 = sub_24F7F88F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24F7F88F0()
{
  v60 = v0;
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[3];
  v4 = sub_24F7FB658(v0[15]);

  v5 = *(v1 + 16);
  v55 = v3;
  if (v5)
  {
    v6 = 0;
    v52 = *MEMORY[0x277D0C7E0];
    v50 = (v2 + 8);
    v51 = (v2 + 104);
    v53 = v3 + 56;
    v49 = v5 - 1;
    v7 = v1 + 72;
    v54 = MEMORY[0x277D84F90];
    v56 = *(v1 + 16);
    v57 = v0;
    v48 = v1 + 72;
    v58 = v4;
    while (1)
    {
      v8 = (v7 + 48 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v0[14] + 16))
        {
          __break(1u);
          return;
        }

        if (v4[2])
        {
          break;
        }

LABEL_4:
        ++v9;
        v8 += 6;
        if (v5 == v9)
        {
          goto LABEL_31;
        }
      }

      v10 = *(v8 - 1);
      v11 = *v8;
      v13 = *(v8 - 3);
      v12 = *(v8 - 2);
      v14 = *(v8 - 5);
      v15 = *(v8 - 4);

      swift_bridgeObjectRetain_n();
      v16 = sub_24E76D644(v14, v15);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        break;
      }

      v45 = v13;
      v47 = v10;
      v19 = v57[10];
      v20 = v57[8];
      v21 = *(v58[7] + 8 * v16);
      (*v51)(v19, v52, v20);
      v22 = v21;
      v23 = sub_24F91FF28();
      (*v50)(v19, v20);
      if (*(v55 + 16))
      {
        v24 = v22;
        sub_24F92D068();
        sub_24F92B218();
        v25 = sub_24F92D0B8();
        v26 = -1 << *(v55 + 32);
        v27 = v25 & ~v26;
        v28 = v45;
        if ((*(v53 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v29 = ~v26;
          while (1)
          {
            v30 = (*(v55 + 48) + 16 * v27);
            v31 = *v30 == v14 && v30[1] == v15;
            if (v31 || (sub_24F92CE08() & 1) != 0)
            {
              break;
            }

            v27 = (v27 + 1) & v29;
            if (((*(v53 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          v23 = 0;
        }

        v22 = v24;
      }

      else
      {
        v23 = 0;
        v28 = v45;
      }

      v32 = [objc_opt_self() stringFromContact:v22 style:0];
      if (v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v22;
        v22 = [v22 givenName];
      }

      v46 = sub_24F92B0D8();
      v35 = v34;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_24E61AC9C(0, *(v54 + 2) + 1, 1, v54);
      }

      v37 = *(v54 + 2);
      v36 = *(v54 + 3);
      v38 = v47;
      if (v37 >= v36 >> 1)
      {
        v40 = sub_24E61AC9C((v36 > 1), v37 + 1, 1, v54);
        v38 = v47;
        v54 = v40;
      }

      v6 = v9 + 1;
      *(v54 + 2) = v37 + 1;
      v39 = &v54[72 * v37];
      *(v39 + 4) = v14;
      *(v39 + 5) = v15;
      *(v39 + 6) = v28;
      *(v39 + 7) = v12;
      *(v39 + 8) = v38;
      *(v39 + 9) = v11;
      *(v39 + 10) = v46;
      *(v39 + 11) = v35;
      v39[96] = v23 & 1;
      v7 = v48;
      v0 = v57;
      v4 = v58;
      v5 = v56;
      if (v49 == v9)
      {
        goto LABEL_31;
      }
    }

    v0 = v57;
    v4 = v58;
    v5 = v56;
    goto LABEL_4;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_31:
  v41 = v0[18];

  v59 = v54;

  sub_24F7F7FDC(&v59);
  if (v41)
  {
  }

  else
  {

    v42 = v59;
    sub_24F92C048();
    sub_24F929778();
    v43 = sub_24F929768();
    sub_24F921FE8();

    v0[4] = v42;
    sub_24F92A9C8();

    v44 = v0[1];

    v44();
  }
}

uint64_t sub_24F7F8DD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7F8E44()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_24F7F8EA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251728, &qword_24FA2E248);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForPlayer_];
  v9 = [v8 utilityServicePrivate];

  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_24F7FBC60;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F7F8270;
  aBlock[3] = &block_descriptor_22_1;
  v12 = _Block_copy(aBlock);

  [v9 suggestedFriendsWithHandler_];
  _Block_release(v12);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_24F7F90A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v18 = *v2;
      sub_24F7F91E8(&v18, &v13);
      v5 = v14;
      if (v14)
      {
        v6 = v13;
        v12 = v15;
        v7 = v16;
        v8 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_24E61ADDC(0, v3[2] + 1, 1, v3);
        }

        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          v3 = sub_24E61ADDC((v9 > 1), v10 + 1, 1, v3);
        }

        v3[2] = v10 + 1;
        v4 = &v3[6 * v10];
        v4[4] = v6;
        v4[5] = v5;
        *(v4 + 3) = v12;
        v4[8] = v7;
        v4[9] = v8;
      }

      ++v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v13 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251728, &qword_24FA2E248);
  return sub_24F92B798();
}

void sub_24F7F91E8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = sub_24E76D644(0x49746361746E6F63, 0xE900000000000044);
    if (v5)
    {
      sub_24E643A9C(*(v3 + 56) + 32 * v4, v16);
      if (swift_dynamicCast())
      {
        if (*(v3 + 16))
        {
          v6 = sub_24E76D644(0x656C646E6168, 0xE600000000000000);
          if (v7)
          {
            sub_24E643A9C(*(v3 + 56) + 32 * v6, v16);
            if (swift_dynamicCast())
            {
              v8 = *(v3 + 16);
              if (v8)
              {
                v9 = sub_24E76D644(1684627811, 0xE400000000000000);
                if (v10)
                {
                  sub_24E643A9C(*(v3 + 56) + 32 * v9, v16);
                  v11 = swift_dynamicCast();
                  v8 = v14;
                  v12 = v15;
                  if (!v11)
                  {
                    v8 = 0;
                    v12 = 0;
                  }

                  goto LABEL_17;
                }

                v8 = 0;
              }

              v12 = 0;
LABEL_17:
              *a2 = v14;
              a2[1] = v15;
              a2[2] = v8;
              a2[3] = v12;
              a2[4] = v14;
              a2[5] = v15;
              return;
            }
          }
        }
      }
    }
  }

  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v13 = sub_24F92AAE8();
  __swift_project_value_buffer(v13, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();

  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
}

void sub_24F7F9490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() proxyForPlayer_];
  v10 = [v9 profileServicePrivate];

  v11 = sub_24F92B588();
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_24F7FBBC0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F7F8178;
  aBlock[3] = &block_descriptor_16_2;
  v14 = _Block_copy(aBlock);

  [v10 filterForContactIDsSupportingFriendingViaPushFromContactIDs:v11 withCompletion:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();
}

uint64_t sub_24F7F96AC(uint64_t a1, void *a2)
{
  v3 = sub_24F928418();
  MEMORY[0x28223BE20](v3 - 8);
  if (a2)
  {
    v4 = a2;
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v5 = sub_24F92AAE8();
    __swift_project_value_buffer(v5, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    swift_getErrorValue();
    v9[3] = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
    sub_24F9283D8();
    sub_24E857CC8(v9);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();

    v9[0] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);
    return sub_24F92B788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);
    return sub_24F92B798();
  }
}

uint64_t static GameCenter.inviteFriendViewController(localPlayer:contactId:)(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251710, &qword_24FA2E230);
    v23 = sub_24F92A9E8();
    if (a1)
    {
      v33 = a1;
      sub_24F91F6A8();
      sub_24F91F668();
      (*(v7 + 8))(v9, v6);
      v34 = sub_24F92B098();

      v35 = swift_allocObject();
      *(v35 + 16) = v23;
      *(v35 + 24) = 0;
      v44 = sub_24F7FB4EC;
      v45 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_24F7FA4B0;
      v43 = &block_descriptor_180;
      v36 = _Block_copy(&aBlock);

      [v33 createFriendRequestWithIdentifier:v34 handler:v36];
      _Block_release(v36);
    }

    else
    {
      sub_24EEAE088();
      v34 = swift_allocError();
      *v37 = 7;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 4;
      sub_24F92A9A8();
    }

    return v23;
  }

  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93DE60;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  v12 = sub_24F92B588();

  v13 = [v10 predicateForContactsWithIdentifiers_];

  v14 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  sub_24F7FB50C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
  v15 = sub_24F92B588();

  aBlock = 0;
  v16 = [v14 unifiedContactsMatchingPredicate:v13 keysToFetch:v15 error:&aBlock];

  v17 = aBlock;
  if (!v16)
  {
    v29 = aBlock;
    v30 = sub_24F91F278();

    swift_willThrow();
    goto LABEL_14;
  }

  sub_24E7FA974();
  v18 = sub_24F92B5A8();
  v19 = v17;

  if (v18 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_5:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x253052270](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v20 = *(v18 + 32);
  }

  v21 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251710, &qword_24FA2E230);
  v22 = v21;
  v23 = sub_24F92A9E8();
  if (a1)
  {
    v24 = a1;
    sub_24F91F6A8();
    sub_24F91F668();
    (*(v7 + 8))(v9, v6);
    v25 = sub_24F92B098();

    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = v22;
    v44 = sub_24F7FBDE8;
    v45 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_24F7FA4B0;
    v43 = &block_descriptor_7_0;
    v27 = _Block_copy(&aBlock);
    v28 = v22;

    [v24 createFriendRequestWithIdentifier:v25 handler:v27];
    _Block_release(v27);
  }

  else
  {
    sub_24EEAE088();
    v31 = swift_allocError();
    *v32 = 7;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = 4;
    sub_24F92A9A8();
  }

  return v23;
}

void sub_24F7F9F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, void *a7)
{
  if (a5)
  {
    v8 = a5;
    v9 = a5;
LABEL_11:
    sub_24F92A9A8();

    return;
  }

  if (!a2 || !a4)
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v19 = sub_24F92AAE8();
    __swift_project_value_buffer(v19, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    sub_24EEAE088();
    v8 = swift_allocError();
    *v20 = 3;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 4;
    goto LABEL_11;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277D0C800]) init];
  v12 = sub_24F92B098();
  [v11 setFriendCode_];

  v13 = sub_24F92B098();
  [v11 setFriendSupportPageURL_];

  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24F941C80;
    *(v14 + 32) = a7;
    sub_24E7FA974();
    v15 = a7;
    v16 = sub_24F92B588();

    [v11 setRecipients_];
  }

  v21[4] = sub_24F7FBCDC;
  v21[5] = a6;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_24E6251C8;
  v21[3] = &block_descriptor_25_5;
  v17 = _Block_copy(v21);
  v18 = v11;

  [v18 setRemoteViewReadyHandler_];
  _Block_release(v17);
}

void sub_24F7FA2CC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 setModalPresentationStyle_];
    sub_24F92A9C8();
  }

  else
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v2 = sub_24F92AAE8();
    __swift_project_value_buffer(v2, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    sub_24EEAE088();
    v3 = swift_allocError();
    *v4 = 4;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 4;
    sub_24F92A9A8();
  }
}

uint64_t sub_24F7FA4B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_24F92B0D8();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_24F92B0D8();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v12 = a4;
  v6(v7, v9, v10, v5, a4);
}

uint64_t sub_24F7FA580(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_92:
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_24E86164C(v7);
      v7 = result;
    }

    v76 = (v7 + 16);
    v77 = *(v7 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v7 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_24F7FAB8C((*a3 + 72 * *v78), (*a3 + 72 * *v80), (*a3 + 72 * v81), v85);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_118;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_119;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_120;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(v9 + 72 * v6 + 64) & (*(v9 + 72 * v8 + 64) ^ 1);
      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v11 = (v9 + 72 * v8 + 136);
        do
        {
          v12 = v11[72];
          if (v12 == *v11)
          {
            if (v10)
            {
              goto LABEL_14;
            }
          }

          else if ((v10 ^ v12))
          {
            goto LABEL_13;
          }

          ++v6;
          v11 += 72;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_13:
      if (v10)
      {
LABEL_14:
        if (v6 < v8)
        {
          goto LABEL_123;
        }

        if (v8 < v6)
        {
          v13 = 72 * v6 - 72;
          v14 = 72 * v8;
          v15 = v6;
          v16 = v8;
          do
          {
            if (v16 != --v15)
            {
              v18 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v17 = v18 + v13;
              v90 = *(v18 + v14 + 32);
              v92 = *(v18 + v14 + 48);
              v94 = *(v18 + v14 + 64);
              v86 = *(v18 + v14);
              v88 = *(v18 + v14 + 16);
              result = memmove((v18 + v14), (v18 + v13), 0x48uLL);
              *(v17 + 32) = v90;
              *(v17 + 48) = v92;
              *(v17 + 64) = v94;
              *v17 = v86;
              *(v17 + 16) = v88;
            }

            ++v16;
            v13 -= 72;
            v14 += 72;
          }

          while (v16 < v15);
          v5 = a3[1];
        }
      }
    }

    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_122;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_124;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v6 < v8)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v29 = *(v7 + 16);
    v28 = *(v7 + 24);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_24E615ED8((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v30;
    v31 = v7 + 32;
    v32 = (v7 + 32 + 16 * v29);
    *v32 = v8;
    v32[1] = v6;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_131;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 32);
          v35 = *(v7 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_61:
          if (v37)
          {
            goto LABEL_108;
          }

          v50 = (v7 + 16 * v30);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_110;
          }

          v56 = (v31 + 16 * v33);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_115;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        if (v30 < 2)
        {
          goto LABEL_116;
        }

        v60 = (v7 + 16 * v30);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_76:
        if (v55)
        {
          goto LABEL_112;
        }

        v63 = (v31 + 16 * v33);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_114;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_83:
        if (v33 - 1 >= v30)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v71 = (v31 + 16 * (v33 - 1));
        v72 = *v71;
        v73 = (v31 + 16 * v33);
        v74 = v73[1];
        sub_24F7FAB8C((*a3 + 72 * *v71), (*a3 + 72 * *v73), (*a3 + 72 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_103;
        }

        if (v33 > *(v7 + 16))
        {
          goto LABEL_104;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v7 + 16);
        if (v33 >= v75)
        {
          goto LABEL_105;
        }

        v30 = v75 - 1;
        result = memmove((v31 + 16 * v33), v73 + 2, 16 * (v75 - 1 - v33));
        *(v7 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v31 + 16 * v30;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_106;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_107;
      }

      v45 = (v7 + 16 * v30);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_109;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_111;
      }

      if (v49 >= v41)
      {
        v67 = (v31 + 16 * v33);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_117;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_92;
    }
  }

  v19 = *a3;
  v20 = *a3 + 72 * v6;
  v21 = v8 - v6;
LABEL_33:
  v22 = v21;
  v23 = v20;
  while (1)
  {
    if ((*(v23 - 8) & 1) != 0 || !*(v23 + 64))
    {
LABEL_32:
      ++v6;
      v20 += 72;
      --v21;
      if (v6 != v5)
      {
        goto LABEL_33;
      }

      v6 = v5;
      goto LABEL_41;
    }

    if (!v19)
    {
      break;
    }

    v24 = v23 - 72;
    v91 = *(v23 + 32);
    v93 = *(v23 + 48);
    v95 = *(v23 + 64);
    v87 = *v23;
    v89 = *(v23 + 16);
    v25 = *(v23 - 24);
    *(v23 + 32) = *(v23 - 40);
    *(v23 + 48) = v25;
    *(v23 + 64) = *(v23 - 8);
    v26 = *(v23 - 56);
    *v23 = *(v23 - 72);
    *(v23 + 16) = v26;
    *(v24 + 64) = v95;
    *(v24 + 32) = v91;
    *(v24 + 48) = v93;
    v23 -= 72;
    *v24 = v87;
    *(v24 + 16) = v89;
    if (__CFADD__(v22++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24F7FAB8C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 >= v11)
  {
    v16 = 72 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 72 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 72 && v6 > v7)
    {
LABEL_22:
      v5 -= 72;
      do
      {
        if ((*(v6 - 8) & 1) == 0 && *(v13 - 8))
        {
          v18 = v6 - 72;
          if (v5 + 72 != v6)
          {
            memmove(v5, v6 - 72, 0x48uLL);
          }

          if (v13 <= v4 || (v6 -= 72, v18 <= v7))
          {
            v6 = v18;
            goto LABEL_35;
          }

          goto LABEL_22;
        }

        v17 = (v13 - 72);
        if (v5 + 72 != v13)
        {
          memmove(v5, v13 - 72, 0x48uLL);
        }

        v5 -= 72;
        v13 -= 72;
      }

      while (v17 > v4);
      v13 = v17;
    }
  }

  else
  {
    v12 = 72 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 72)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while ((v4[64] & 1) == 0 && v6[64])
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 72;
          if (!v15)
          {
            goto LABEL_13;
          }

LABEL_14:
          v7 += 72;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_16;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 72;
        if (v15)
        {
          goto LABEL_14;
        }

LABEL_13:
        memmove(v7, v14, 0x48uLL);
        goto LABEL_14;
      }

LABEL_16:
      v6 = v7;
    }
  }

LABEL_35:
  v19 = 72 * ((v13 - v4) / 72);
  if (v6 != v4 || v6 >= &v4[v19])
  {
    memmove(v6, v4, v19);
  }

  return 1;
}

id sub_24F7FADF0(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C08, &qword_24F9AAD48);
  v34 = sub_24F92A9E8();
  result = [objc_opt_self() shared];
  if (result)
  {
    v14 = result;
    v15 = [result isAddingFriendsRestricted];

    if (v15)
    {
      if (qword_27F210590 != -1)
      {
        swift_once();
      }

      v16 = sub_24F92AAE8();
      __swift_project_value_buffer(v16, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      sub_24EEAE088();
      v18 = swift_allocError();
      v19 = 5;
    }

    else
    {
      if (a1)
      {
        v33 = ObjectType;
        sub_24F929778();
        v32 = a1;
        sub_24F929768();
        sub_24F921FF8();
        sub_24F92C058();
        v20 = sub_24F929768();
        sub_24F921FE8();

        if (qword_27F210590 != -1)
        {
          swift_once();
        }

        v21 = sub_24F92AAE8();
        __swift_project_value_buffer(v21, qword_27F39C410);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F9283A8();
        sub_24F92A588();

        v22 = sub_24F92B858();
        (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
        (*(v7 + 16))(v9, v12, v6);
        v23 = (*(v7 + 80) + 40) & ~*(v7 + 80);
        v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = swift_allocObject();
        *(v25 + 2) = 0;
        *(v25 + 3) = 0;
        v26 = v32;
        *(v25 + 4) = v32;
        (*(v7 + 32))(&v25[v23], v9, v6);
        v27 = v33;
        v28 = v34;
        *&v25[v24] = v34;
        *&v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;
        v29 = v26;

        sub_24F1D3DA4(0, 0, v5, &unk_24F9AAD50, v25);

        (*(v7 + 8))(v12, v6);
        return v28;
      }

      if (qword_27F210590 != -1)
      {
        swift_once();
      }

      v30 = sub_24F92AAE8();
      __swift_project_value_buffer(v30, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      sub_24EEAE088();
      v18 = swift_allocError();
      v19 = 7;
    }

    *v17 = v19;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 4;
    v28 = v34;
    sub_24F92A9A8();

    return v28;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F7FB50C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F95C300;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
  *(v0 + 72) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
  return v0;
}

void *sub_24F7FB658(uint64_t a1)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v2 = objc_opt_self();
  v3 = MEMORY[0x277D837D0];
  v4 = sub_24F92B588();
  v5 = [v2 predicateForContactsWithIdentifiers_];

  sub_24F7FB50C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
  v6 = sub_24F92B588();

  v43[0] = 0;
  v7 = [v1 unifiedContactsMatchingPredicate:v5 keysToFetch:v6 error:v43];

  v8 = v43[0];
  if (v7)
  {
    sub_24E7FA974();
    v9 = sub_24F92B5A8();
    v10 = v8;

    if (v9 >> 62)
    {
      goto LABEL_29;
    }

    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = v5;
    v42 = v1;
    while (v11)
    {
      v12 = 0;
      v13 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x253052270](v12, v9);
        }

        else
        {
          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v17 = *(v9 + 8 * v12 + 32);
        }

        v18 = v17;
        v1 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v19 = [v17 identifier];
        v20 = sub_24F92B0D8();
        v22 = v21;

        v23 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43[0] = v13;
        v25 = sub_24E76D644(v20, v22);
        v27 = v13[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_26;
        }

        v5 = v26;
        if (v13[3] < v30)
        {
          sub_24E8AB044(v30, isUniquelyReferenced_nonNull_native);
          v25 = sub_24E76D644(v20, v22);
          if ((v5 & 1) != (v31 & 1))
          {
            result = sub_24F92CF88();
            __break(1u);
            return result;
          }

LABEL_17:
          if (v5)
          {
            goto LABEL_5;
          }

          goto LABEL_18;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_17;
        }

        v35 = v25;
        sub_24E8B7C5C();
        v25 = v35;
        if (v5)
        {
LABEL_5:
          v14 = v25;

          v13 = v43[0];
          v15 = *(v43[0] + 7);
          v16 = *(v15 + 8 * v14);
          *(v15 + 8 * v14) = v23;

          goto LABEL_6;
        }

LABEL_18:
        v13 = v43[0];
        *(v43[0] + (v25 >> 6) + 8) |= 1 << v25;
        v32 = (v13[6] + 16 * v25);
        *v32 = v20;
        v32[1] = v22;
        *(v13[7] + 8 * v25) = v23;

        v33 = v13[2];
        v29 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v29)
        {
          goto LABEL_27;
        }

        v13[2] = v34;
LABEL_6:
        ++v12;
        if (v1 == v11)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v11 = sub_24F92C738();
      v41 = v5;
      v42 = v1;
    }

    v13 = MEMORY[0x277D84F98];
LABEL_31:

    v39 = v42;
  }

  else
  {
    v36 = v43[0];
    v37 = sub_24F91F278();

    swift_willThrow();
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v38 = sub_24F92AAE8();
    __swift_project_value_buffer(v38, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    v43[0] = 0;
    v43[1] = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000039, 0x800000024FA7E480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    sub_24F92CA38();
    v43[3] = v3;
    sub_24F928438();
    sub_24E857CC8(v43);
    sub_24F92A5A8();

    v13 = sub_24E611E60(MEMORY[0x277D84F90]);

    v39 = v5;
  }

  return v13;
}

uint64_t sub_24F7FBBC0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);

  return sub_24F7F96AC(a1, a2);
}

uint64_t sub_24F7FBC60(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251728, &qword_24FA2E248);

  return sub_24F7F90A4(a1);
}

uint64_t sub_24F7FBCE4()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F7FBE10(char *a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246658, &unk_24FA03380);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[12]];

  return v15(v16, a2, v14);
}

char *sub_24F7FBFB4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246658, &unk_24FA03380);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[12]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ComponentGridView(uint64_t a1)
{
  result = qword_27F251738;
  if (!qword_27F251738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7FC190(uint64_t a1)
{
  sub_24F7FC424(319, &qword_27F226898, &unk_27F23A6A0, &unk_24F9549D0, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24F7FC3D4(319, &qword_27F251748, &type metadata for ComponentGridLayoutDescription, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24F4ED88C(319, &qword_27F246670, MEMORY[0x277D7EB40]);
      if (v3 <= 0x3F)
      {
        sub_24F7FC3D4(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_24F7FC3D4(319, &qword_27F21CF60, &_s14descr2861A93B9C10BreakpointON, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24F7FC3D4(319, &qword_27F251750, &type metadata for GSKShelf.ResolvedOrientation, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24F7FC424(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_24F4ED88C(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
                if (v8 <= 0x3F)
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
}

void sub_24F7FC3D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24F7FC424(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24F7FC4A4@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221988, &qword_24FA3CD60);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ComponentGridView(0);
  sub_24E60169C(v1 + *(v10 + 24), v9, &qword_27F221988, &qword_24FA3CD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F921998();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_24F7FC6AC()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ComponentGridView(0) + 28));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_24F7FC808()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ComponentGridView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t sub_24F7FC960@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ComponentGridView(0);
  sub_24E60169C(v1 + *(v10 + 40), v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v9, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7FCB38@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ComponentGridView(0);
  sub_24E60169C(v1 + *(v10 + 44), v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v9, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7FCD10@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ComponentGridView(0);
  sub_24E60169C(v1 + *(v10 + 48), v9, &qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

BOOL sub_24F7FCF18()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ComponentGridView(0) + 36);
  v6 = *(v5 + 8);
  if (*(v5 + 9) != 1)
  {
    v7 = *v5;

    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    v9 = sub_24F7FEE34(v7, v6, 0);
    (*(v2 + 8))(v4, v1, v9);
    LOBYTE(v6) = v12;
  }

  return (v6 & 1) == 0;
}

void *sub_24F7FD084@<X0>(uint64_t a1@<X8>)
{
  v126 = a1;
  v2 = type metadata accessor for ComponentGridView(0);
  v112 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v113 = v3;
  v114 = &v101[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = sub_24F921998();
  v134 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v103 = &v101[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251758, &qword_24FA2E2B8);
  MEMORY[0x28223BE20](v125);
  v115 = &v101[-v5];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251760, &qword_24FA2E2C0);
  MEMORY[0x28223BE20](v123);
  v124 = &v101[-v6];
  v7 = sub_24F925688();
  MEMORY[0x28223BE20](v7 - 8);
  v107 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = sub_24F9256A8();
  v109 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v106 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251768, &qword_24FA2E2C8);
  MEMORY[0x28223BE20](v119);
  v104 = &v101[-v10];
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251770, &qword_24FA2E2D0);
  v108 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v105 = &v101[-v11];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251778, &qword_24FA2E2D8);
  v111 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v110 = &v101[-v12];
  v118 = sub_24F923E98();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v137 = &v101[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v101[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v101[-v18];
  v135 = sub_24F925218();
  v20 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v22 = &v101[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v138 = &v101[-v26];
  v27 = v1[1];
  v28 = v1[2];
  v29 = v1[3];
  v30 = v1[4];
  v31 = v1[5];
  if (v28)
  {
    v133 = v1[1];
    v32 = v28;
    v128 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    v133 = 0;
    v128 = 0;
    v33 = 0;
    v34 = 0;
    v32 = &unk_2861C28A0;
  }

  v127 = v32;
  v136 = v25;
  sub_24F7FED5C(v27, v28);
  v102 = sub_24F7FC808();
  v35 = 0.0;
  v129 = *(v1 + *(v2 + 56));
  if (v129 == 1)
  {
    v35 = *(*v1 + 16);
  }

  v139 = v1;
  sub_24F7FC960(v19);
  v36 = *(v20 + 48);
  v37 = v20;
  v38 = v135;
  if (v36(v19, 1, v135) == 1)
  {
    v39 = v37;
    (*(v37 + 104))(v138, *MEMORY[0x277CE0560], v38);
    if (v36(v19, 1, v38) != 1)
    {
      sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
    }
  }

  else
  {
    v39 = v37;
    (*(v37 + 32))(v138, v19, v38);
  }

  sub_24F7FCB38(v16);
  v40 = v36(v16, 1, v38);
  v131 = v34;
  v130 = v33;
  if (v40 == 1)
  {
    v41 = *MEMORY[0x277CE0558];
    (*(v39 + 104))(v136, v41, v38);
    if (v36(v16, 1, v38) != 1)
    {
      sub_24E601704(v16, &qword_27F215598, &qword_24F945EF0);
    }

    v38 = v135;
  }

  else
  {
    (*(v39 + 32))(v136, v16, v38);
    v41 = *MEMORY[0x277CE0558];
  }

  sub_24F7FCD10(v137);
  v42 = *(v39 + 104);
  v42(v22, v41, v38);
  v43 = sub_24F925208();
  v44 = *(v39 + 8);
  v44(v22, v38);
  v42(v22, v41, v38);
  v45 = sub_24F925208();
  v116 = v39 + 8;
  v44(v22, v38);
  v46 = v44;
  v47 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v48 = v132;
  v49 = v134;
  if ((v47 & 1) == 0)
  {
    if (v43)
    {
      if (v128)
      {
        v54 = sub_24E8E92B0(v128);

        v51 = v139;
        goto LABEL_39;
      }

      v51 = v139;
      if (v130)
      {
        goto LABEL_29;
      }

      goto LABEL_35;
    }

    if (v45)
    {
      goto LABEL_16;
    }

    if (v102 - 5 >= 4)
    {
      v51 = v139;
      if (v102 - 3 >= 2)
      {
        _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
        goto LABEL_37;
      }

      if (!v130)
      {
LABEL_37:
        v54 = sub_24E8E91C0(v127);
        goto LABEL_38;
      }

      v55 = sub_24E8E92B0(v130);
    }

    else
    {
      v51 = v139;
      if (!v131)
      {
        if (v130)
        {
LABEL_29:
          v54 = sub_24E8E92B0(v130);

          goto LABEL_39;
        }

LABEL_35:
        v54 = sub_24E8E91C0(v127);

        goto LABEL_39;
      }

      v55 = sub_24E8E93AC(v131);
    }

    v54 = v55;
LABEL_38:

    goto LABEL_39;
  }

LABEL_16:
  v50 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v51 = v139;
  if ((v50 & v45 & 1) == 0)
  {
    goto LABEL_37;
  }

  v52 = v48;
  v53 = v133;
  if (!v133)
  {
    v56 = v127;

    v53 = v56;
  }

  v133 = v53;
  v54 = sub_24E8E91C0(v53);

  v48 = v52;
  v49 = v134;
LABEL_39:

  if (v129)
  {
    v58 = ceil(v35 / (v54[3] >> 1));
    if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_71;
    }

    if (v58 <= -9.22337204e18)
    {
LABEL_72:
      __break(1u);
    }

    else if (v58 < 9.22337204e18)
    {
      v133 = v46;
      v59 = sub_24EE1E7DC(v54, v58);

      v60 = *(v59 + 16);
      if (v60)
      {
        v61 = 0;
        v54 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v61 >= *(v59 + 16))
          {
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          v62 = *(v59 + 32 + 8 * v61);
          v63 = *(v62 + 16);
          v64 = v54[2];
          v65 = v64 + v63;
          if (__OFADD__(v64, v63))
          {
            goto LABEL_67;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result && v65 <= v54[3] >> 1)
          {
            if (*(v62 + 16))
            {
              goto LABEL_57;
            }
          }

          else
          {
            if (v64 <= v65)
            {
              v66 = v64 + v63;
            }

            else
            {
              v66 = v64;
            }

            result = sub_24E61A798(result, v66, 1, v54);
            v54 = result;
            if (*(v62 + 16))
            {
LABEL_57:
              if ((v54[3] >> 1) - v54[2] < v63)
              {
                goto LABEL_69;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E00, &unk_24F9FADA0);
              swift_arrayInitWithCopy();

              if (v63)
              {
                v67 = v54[2];
                v68 = __OFADD__(v67, v63);
                v69 = v67 + v63;
                if (v68)
                {
                  goto LABEL_70;
                }

                v54[2] = v69;
              }

              goto LABEL_46;
            }
          }

          if (v63)
          {
            goto LABEL_68;
          }

LABEL_46:
          if (v60 == ++v61)
          {
            goto LABEL_62;
          }
        }
      }

      v54 = MEMORY[0x277D84F90];
LABEL_62:

      v51 = v139;
      v48 = v132;
      v46 = v133;
      v49 = v134;
      v38 = v135;
      goto LABEL_63;
    }

    __break(1u);
    return result;
  }

LABEL_63:
  (*(v117 + 8))(v137, v118);
  v46(v136, v38);
  v46(v138, v38);
  if (sub_24F7FCF18())
  {
    v70 = sub_24F9257B8();
    MEMORY[0x28223BE20](v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2517D8, &qword_24FA2E328);
    v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2517E0, &unk_24FA2E330);
    v72 = sub_24E602068(&qword_27F2517E8, &qword_27F2517E0, &unk_24FA2E330, MEMORY[0x277CE1138]);
    *&v144 = v71;
    *(&v144 + 1) = v72;
    swift_getOpaqueTypeConformance2();
    v73 = v104;
    sub_24F923438();

    sub_24F7FC6AC();
    sub_24F927618();
    sub_24F9238C8();
    v74 = v119;
    v75 = (v73 + *(v119 + 36));
    v76 = v145;
    *v75 = v144;
    v75[1] = v76;
    v75[2] = v146;
    sub_24F925678();
    v77 = v106;
    sub_24F925698();
    v78 = sub_24F7FEF74();
    v79 = MEMORY[0x277CDE478];
    v80 = v105;
    v81 = v120;
    sub_24F926698();
    (*(v109 + 8))(v77, v81);
    sub_24E601704(v73, &qword_27F251768, &qword_24FA2E2C8);
    v140 = v74;
    v141 = v81;
    v142 = v78;
    v143 = v79;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v83 = v110;
    v84 = v121;
    sub_24F9265A8();
    (*(v108 + 8))(v80, v84);
    v85 = v111;
    v86 = v122;
    (*(v111 + 16))(v124, v83, v122);
    swift_storeEnumTagMultiPayload();
    v140 = v84;
    v141 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_24F7FF02C();
    sub_24F924E28();
    return (*(v85 + 8))(v83, v86);
  }

  else
  {
    v87 = sub_24F924C98();
    v88 = v103;
    sub_24F7FC4A4(v103);
    v89 = sub_24F921988();
    v91 = v90;
    (*(v49 + 8))(v88, v48);
    v92 = v115;
    *v115 = v87;
    *(v92 + 8) = v89;
    *(v92 + 16) = v91 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251780, &unk_24FA2E2E0);
    v93 = v54[2];
    *&v144 = 0;
    *(&v144 + 1) = v93;
    swift_getKeyPath();
    v94 = v114;
    sub_24F7FEDCC(v51, v114);
    v95 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v54;
    sub_24F755398(v94, v96 + v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251788, &qword_24FA2E308);
    sub_24F804C14(&qword_27F2143E0, &qword_27F2143D0, &unk_24F93CB60, MEMORY[0x277D83D40]);
    sub_24F7FEEC4();
    sub_24F927228();
    sub_24F7FC6AC();
    sub_24F927628();
    sub_24F9238C8();
    v97 = (v92 + *(v125 + 36));
    v98 = v145;
    *v97 = v144;
    v97[1] = v98;
    v97[2] = v146;
    sub_24E60169C(v92, v124, &qword_27F251758, &qword_24FA2E2B8);
    swift_storeEnumTagMultiPayload();
    v99 = sub_24F7FEF74();
    v140 = v119;
    v141 = v120;
    v142 = v99;
    v143 = MEMORY[0x277CDE478];
    v100 = swift_getOpaqueTypeConformance2();
    v140 = v121;
    v141 = v100;
    swift_getOpaqueTypeConformance2();
    sub_24F7FF02C();
    sub_24F924E28();
    return sub_24E601704(v92, &qword_27F251758, &qword_24FA2E2B8);
  }
}

uint64_t sub_24F7FE348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for ComponentGridView(0);
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_24F921998();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2517E0, &unk_24FA2E330);
  MEMORY[0x28223BE20](v22);
  v12 = &v20 - v11;
  sub_24F7FC4A4(v10);
  v13 = sub_24F921948();
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  *v12 = sub_24F9249A8();
  *(v12 + 1) = v13;
  v12[16] = v15 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2517F0, &qword_24FA2E340);
  v16 = *(a2 + 16);
  v24 = 0;
  v25 = v16;
  swift_getKeyPath();
  sub_24F7FEDCC(a1, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_24F755398(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0, &unk_24F93CB60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2517F8, &qword_24FA2E348);
  sub_24F804C14(&qword_27F2143E0, &qword_27F2143D0, &unk_24F93CB60, MEMORY[0x277D83D40]);
  sub_24F803FD8();
  sub_24F927228();
  sub_24E602068(&qword_27F2517E8, &qword_27F2517E0, &unk_24FA2E330, MEMORY[0x277CE1138]);
  sub_24F9265C8();
  return sub_24E601704(v12, &qword_27F2517E0, &unk_24FA2E330);
}

void sub_24F7FE69C(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24F921998();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2517F8, &qword_24FA2E348);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = *(a2 + 16);
  if (v16 < v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = v9;
  v41 = v8;
  v42 = a4;
  v43 = v14;
  v44 = a3;
  v17 = 0;
  if (v15)
  {
    v18 = a2 + 32;
    v19 = v15;
    while (1)
    {
      sub_24E615E00(v18, v45);
      v20 = v47;
      v21 = v48;
      __swift_project_boxed_opaque_existential_1(v45, v47);
      v22 = (*(v21 + 8))(v20, v21);
      v23 = __OFADD__(v17, v22);
      v17 += v22;
      if (v23)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v45);
      v18 += 40;
      if (!--v19)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_7:
  if (v15 >= v16)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_24E615E00(a2 + 32 + 40 * v15, v52);
  v24 = *v44;
  v25 = *(*v44 + 16);
  v26 = v25 - v17;
  if (__OFSUB__(v25, v17))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v27 = v53;
  v28 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v29 = (*(v28 + 8))(v27, v28);
  if (v29 >= v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = v29;
  }

  if (v30 < 1)
  {
    v37 = 1;
    v36 = v43;
  }

  else
  {

    sub_24F7FC4A4(v11);
    v31 = COERCE_DOUBLE(sub_24F921948());
    v33 = v32;
    (*(v40 + 8))(v11, v41);
    if (v33)
    {
      v34 = 12.0;
    }

    else
    {
      v34 = v31;
    }

    sub_24E615E00(v52, &v46);
    v35 = sub_24F7FC6AC();
    v45[0] = v24;
    *&v45[1] = v34;
    v49 = v17;
    v50 = 0;
    v51 = v35;
    sub_24F804088();
    v36 = v43;
    sub_24F9265C8();
    sub_24F8040DC(v45);
    v37 = 0;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251810, &qword_24FA2E350);
  (*(*(v38 - 8) + 56))(v36, v37, 1, v38);
  sub_24E6009C8(v36, v42, &qword_27F2517F8, &qword_24FA2E348);
  __swift_destroy_boxed_opaque_existential_1(v52);
}

void sub_24F7FE9F8(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24F921998();
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v14 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(a2 + 16);
  if (v15 < v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v52 = (&v51 - v11);
  v53 = v13;
  v54 = v12;
  v55 = v10;
  v56 = a3;
  v16 = 0;
  if (v14)
  {
    v17 = a2 + 32;
    v18 = v14;
    while (1)
    {
      sub_24E615E00(v17, &v57);
      v19 = v59;
      v20 = v60;
      __swift_project_boxed_opaque_existential_1(&v57, v59);
      v21 = (*(v20 + 8))(v19, v20);
      v22 = __OFADD__(v16, v21);
      v16 += v21;
      if (v22)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v57);
      v17 += 40;
      if (!--v18)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_7:
  if (v14 >= v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_24E615E00(a2 + 32 + 40 * v14, v64);
  v23 = v56;
  v24 = *v56;
  v25 = *(*v56 + 16);
  v26 = v25 - v16;
  if (__OFSUB__(v25, v16))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v27 = v65;
  v28 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  v29 = (*(v28 + 8))(v27, v28);
  if (v29 >= v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = v29;
  }

  if (v30 < 1)
  {
    v50 = 0;
    v16 = 0;
    v49 = 0;
    v24 = 0;
    v46 = 0;
    v45 = 0uLL;
    v44 = 0.0;
    v42 = 0.0;
    v47 = 0uLL;
    v48 = 0uLL;
  }

  else
  {
    v31 = v52;
    sub_24F7FC4A4(v52);
    v32 = sub_24F921948();
    v34 = v33;
    v35 = *(v54 + 8);
    v36 = v31;
    v37 = v55;
    v35(v36, v55);
    *&v57 = sub_24F9249A8();
    *(&v57 + 1) = v32;
    LOBYTE(v58) = v34 & 1;

    v38 = v53;
    sub_24F7FC4A4(v53);
    v39 = COERCE_DOUBLE(sub_24F921948());
    v41 = v40;
    v35(v38, v37);
    if (v41)
    {
      v42 = 12.0;
    }

    else
    {
      v42 = v39;
    }

    sub_24E615E00(v64, v61);
    v43 = *(v23 + *(type metadata accessor for ComponentGridView(0) + 52));
    v44 = sub_24F7FC6AC();
    LOBYTE(v63) = v43;
    v45 = v57;
    v46 = v58;
    v47 = v61[0];
    v48 = v61[1];
    v49 = v62;
    v50 = v63;
  }

  *a4 = v45;
  *(a4 + 16) = v46;
  *(a4 + 24) = v24;
  *(a4 + 32) = v42;
  *(a4 + 40) = v47;
  *(a4 + 56) = v48;
  *(a4 + 72) = v49;
  *(a4 + 80) = v16;
  *(a4 + 88) = v50;
  *(a4 + 96) = v44;
  __swift_destroy_boxed_opaque_existential_1(v64);
}

double sub_24F7FED5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24F7FEDCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGridView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_24F7FEE34(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_24F7FEE40(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ComponentGridView(0) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  sub_24F7FE9F8(a1, v6, v7, a2);
}

unint64_t sub_24F7FEEC4()
{
  result = qword_27F251790;
  if (!qword_27F251790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251788, &qword_24FA2E308);
    sub_24E602068(&qword_27F251798, &qword_27F2517A0, &qword_24FA2E310, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F251790);
  }

  return result;
}

unint64_t sub_24F7FEF74()
{
  result = qword_27F2517A8;
  if (!qword_27F2517A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251768, &qword_24FA2E2C8);
    sub_24E602068(&qword_27F2517B0, &qword_27F2517B8, &qword_24FA2E318, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2517A8);
  }

  return result;
}

unint64_t sub_24F7FF02C()
{
  result = qword_27F2517C0;
  if (!qword_27F2517C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F251758, &qword_24FA2E2B8);
    sub_24E602068(&qword_27F2517C8, &qword_27F2517D0, &qword_24FA2E320, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2517C0);
  }

  return result;
}

uint64_t sub_24F7FF0EC@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251828, &qword_24FA2E3F0);
  MEMORY[0x28223BE20](v48);
  v49 = &v44 - v2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251830, &qword_24FA2E3F8);
  MEMORY[0x28223BE20](v56);
  v51 = &v44 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251838, &qword_24FA2E400);
  v46 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v45 = &v44 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251840, &qword_24FA2E408);
  v47 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v6 = &v44 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251848, &qword_24FA2E410);
  MEMORY[0x28223BE20](v54);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251850, &qword_24FA2E418);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251858, &qword_24FA2E420);
  MEMORY[0x28223BE20](v55);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251860, &qword_24FA2E428);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  sub_24E615E00(v1 + 16, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E00, &unk_24F9FADA0);
  if (swift_dynamicCast())
  {
    v18 = *(v1 + 8);
    v19 = *(v1 + 56);
    v20 = *(v1 + 64);
    v21 = *(v1 + 72);
    v57 = *v1;
    v58 = v18;
    LOBYTE(v59) = v63;
    v60 = v19;
    v61 = v20;
    v62 = v21;
    v22 = sub_24F804394();
    sub_24F9265C8();
    (*(v15 + 16))(v11, v17, v14);
    swift_storeEnumTagMultiPayload();
    v57 = &type metadata for ComponentGridRowSegmentOneColumnSpanView;
    v58 = v22;
    swift_getOpaqueTypeConformance2();
    v23 = sub_24F8043E8();
    v57 = &type metadata for ComponentGridRowSegmentTwoColumnSpanView;
    v58 = v23;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    sub_24E60169C(v13, v8, &qword_27F251858, &qword_24FA2E420);
    swift_storeEnumTagMultiPayload();
    sub_24F8042B4();
    sub_24F80443C();
    sub_24F924E28();
    sub_24E601704(v13, &qword_27F251858, &qword_24FA2E420);
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v44 = v14;
    v24 = v52;
    if (swift_dynamicCast())
    {
      v25 = *(v1 + 8);
      v26 = *(v1 + 56);
      v27 = *(v1 + 64);
      v28 = *(v1 + 72);
      v57 = *v1;
      v58 = v25;
      LOWORD(v59) = v63;
      BYTE2(v59) = BYTE2(v63);
      v60 = v26;
      v61 = v27;
      v62 = v28;
      v29 = sub_24F8043E8();
      sub_24F9265C8();
      v30 = v47;
      (*(v47 + 16))(v11, v6, v24);
      swift_storeEnumTagMultiPayload();
      v31 = sub_24F804394();
      v57 = &type metadata for ComponentGridRowSegmentOneColumnSpanView;
      v58 = v31;
      swift_getOpaqueTypeConformance2();
      v57 = &type metadata for ComponentGridRowSegmentTwoColumnSpanView;
      v58 = v29;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      sub_24E60169C(v13, v8, &qword_27F251858, &qword_24FA2E420);
      swift_storeEnumTagMultiPayload();
      sub_24F8042B4();
      sub_24F80443C();
      sub_24F924E28();
      sub_24E601704(v13, &qword_27F251858, &qword_24FA2E420);
      (*(v30 + 8))(v6, v24);
    }

    else if (swift_dynamicCast())
    {
      v32 = *(v1 + 8);
      v33 = *(v1 + 56);
      v34 = *(v1 + 64);
      v35 = *(v1 + 72);
      v57 = *v1;
      v58 = v32;
      v59 = v63;
      v60 = v33;
      v61 = v34;
      v62 = v35;
      v36 = sub_24F804260();
      v37 = v45;
      sub_24F9265C8();
      v38 = v46;
      v39 = v50;
      (*(v46 + 16))(v49, v37, v50);
      swift_storeEnumTagMultiPayload();
      v57 = &type metadata for ComponentGridRowSegmentThreeColumnSpanView;
      v58 = v36;
      swift_getOpaqueTypeConformance2();
      v40 = v51;
      sub_24F924E28();
      sub_24E60169C(v40, v8, &qword_27F251830, &qword_24FA2E3F8);
      swift_storeEnumTagMultiPayload();
      sub_24F8042B4();
      sub_24F80443C();
      sub_24F924E28();

      sub_24E601704(v40, &qword_27F251830, &qword_24FA2E3F8);
      (*(v38 + 8))(v37, v39);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v41 = sub_24F804260();
      v57 = &type metadata for ComponentGridRowSegmentThreeColumnSpanView;
      v58 = v41;
      swift_getOpaqueTypeConformance2();
      v42 = v51;
      sub_24F924E28();
      sub_24E60169C(v42, v8, &qword_27F251830, &qword_24FA2E3F8);
      swift_storeEnumTagMultiPayload();
      sub_24F8042B4();
      sub_24F80443C();
      sub_24F924E28();
      sub_24E601704(v42, &qword_27F251830, &qword_24FA2E3F8);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v64);
}

void sub_24F7FFA4C(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519E8, &qword_24FA2E7D0);
  MEMORY[0x28223BE20](v84);
  v83 = (&v80 - v4);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519F0, &qword_24FA2E7D8);
  MEMORY[0x28223BE20](v100);
  v85 = &v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519F8, &qword_24FA2E7E0);
  MEMORY[0x28223BE20](v6);
  v8 = &v80 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A00, &qword_24FA2E7E8);
  MEMORY[0x28223BE20](v97);
  v98 = &v80 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A08, &qword_24FA2E7F0);
  MEMORY[0x28223BE20](v103);
  v99 = &v80 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251910, &qword_24FA2E728);
  MEMORY[0x28223BE20](v93);
  v12 = &v80 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251918, &qword_24FA2E730);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v81 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = &v80 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251920, &qword_24FA2E738);
  MEMORY[0x28223BE20](v94);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251928, &qword_24FA2E740);
  MEMORY[0x28223BE20](v101);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v82 = &v80 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v80 - v26;
  MEMORY[0x28223BE20](v28);
  v92 = &v80 - v29;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A10, &qword_24FA2E7F8);
  MEMORY[0x28223BE20](v104);
  v102 = &v80 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A18, &qword_24FA2E800);
  MEMORY[0x28223BE20](v31);
  v34 = &v80 - v33;
  v35 = *(*v2 + 16);
  v36 = *(v2 + 24);
  v37 = __OFSUB__(v35, v36);
  v38 = v35 - v36;
  if (v37)
  {
    __break(1u);
    return;
  }

  v39 = *(v2 + 16);
  v40 = 3;
  if (v39 != 4)
  {
    v40 = 1;
  }

  if (v39 == 3)
  {
    v40 = 2;
  }

  if (v40 >= v38)
  {
    v40 = v38;
  }

  if (v38 <= 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_24F804FBC();
    sub_24F924E28();
    return;
  }

  v88 = v6;
  v41 = v40 & ~(v40 >> 63);
  v42 = *(v2 + 32);
  v87 = v34;
  v86 = v32;
  if (v42)
  {
    LOBYTE(v39) = sub_24E843D68(v41, &type metadata for OneColumnGroup, &off_2861D1EC8, v39);
  }

  v90 = a1;
  v89 = v8;
  if (v39 <= 1u)
  {
    if (v39)
    {
      v54 = 3;
    }

    else
    {
      v54 = 1;
    }

    goto LABEL_21;
  }

  if (v39 == 2)
  {
    v54 = 0;
LABEL_21:
    v69 = sub_24F924C98();
    v70 = *(v2 + 8);
    *v12 = v69;
    *(v12 + 1) = v70;
    v12[16] = 0;
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519C8, &qword_24FA2E778) + 44);
    *&v105 = 0;
    *(&v105 + 1) = v41 - 1;
    swift_getKeyPath();
    v71 = swift_allocObject();
    v72 = *(v2 + 16);
    *(v71 + 16) = *v2;
    *(v71 + 32) = v72;
    *(v71 + 48) = *(v2 + 32);
    *(v71 + 64) = v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223908, &qword_24FA2E780);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519D0, &qword_24FA2E788);
    sub_24F804C14(&qword_27F223918, &qword_27F223908, &qword_24FA2E780, MEMORY[0x277D83670]);
    sub_24F804C84();
    sub_24F927228();
    sub_24E602068(&qword_27F251960, &qword_27F251910, &qword_24FA2E728, MEMORY[0x277CE1198]);
    v73 = v91;
    sub_24F9265C8();
    sub_24E601704(v12, &qword_27F251910, &qword_24FA2E728);
    sub_24F9275F8();
    sub_24F9242E8();
    (*(v95 + 32))(v20, v73, v96);
    v74 = &v20[*(v94 + 36)];
    v75 = v110;
    *(v74 + 4) = v109;
    *(v74 + 5) = v75;
    *(v74 + 6) = v111;
    v76 = v106;
    *v74 = v105;
    *(v74 + 1) = v76;
    v77 = v108;
    *(v74 + 2) = v107;
    *(v74 + 3) = v77;
    sub_24F927618();
    sub_24F9238C8();
    sub_24E6009C8(v20, v27, &qword_27F251920, &qword_24FA2E738);
    v78 = &v27[*(v101 + 36)];
    v79 = v113;
    *v78 = v112;
    *(v78 + 1) = v79;
    *(v78 + 2) = v114;
    v51 = &qword_27F251928;
    v52 = &qword_24FA2E740;
    v48 = v92;
    sub_24E6009C8(v27, v92, &qword_27F251928, &qword_24FA2E740);
    sub_24E60169C(v48, v98, &qword_27F251928, &qword_24FA2E740);
    swift_storeEnumTagMultiPayload();
    sub_24F8047E0();
    sub_24F804EC0();
    v53 = v99;
    goto LABEL_22;
  }

  if (v39 == 3)
  {
    v43 = *(v2 + 8);
    v44 = sub_24F9249A8();
    v45 = v83;
    *v83 = v44;
    *(v45 + 8) = v43;
    *(v45 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A40, &qword_24FA2E808);
    *&v105 = 0;
    *(&v105 + 1) = v41 - 1;
    swift_getKeyPath();
    v46 = swift_allocObject();
    v47 = *(v2 + 16);
    v46[1] = *v2;
    v46[2] = v47;
    v46[3] = *(v2 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223908, &qword_24FA2E780);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A48, &qword_24FA2E810);
    sub_24F804C14(&qword_27F223918, &qword_27F223908, &qword_24FA2E780, MEMORY[0x277D83670]);
    sub_24F805050();
    sub_24F927228();
    sub_24E602068(&qword_27F251A30, &qword_27F2519E8, &qword_24FA2E7D0, MEMORY[0x277CE1138]);
    v48 = v85;
    sub_24F9265C8();
    sub_24E601704(v45, &qword_27F2519E8, &qword_24FA2E7D0);
    sub_24F927628();
    sub_24F9238C8();
    v49 = (v48 + *(v100 + 36));
    v50 = v106;
    *v49 = v105;
    v49[1] = v50;
    v49[2] = v107;
    v51 = &qword_27F2519F0;
    v52 = &qword_24FA2E7D8;
    sub_24E60169C(v48, v98, &qword_27F2519F0, &qword_24FA2E7D8);
    swift_storeEnumTagMultiPayload();
    sub_24F8047E0();
    sub_24F804EC0();
    v53 = v99;
LABEL_22:
    sub_24F924E28();
    sub_24E60169C(v53, v89, &qword_27F251A08, &qword_24FA2E7F0);
    swift_storeEnumTagMultiPayload();
    sub_24F804E34();
    v67 = v102;
    sub_24F924E28();
    sub_24E601704(v53, &qword_27F251A08, &qword_24FA2E7F0);
    v68 = v48;
    goto LABEL_23;
  }

  v55 = sub_24F924C98();
  v56 = *(v2 + 8);
  *v12 = v55;
  *(v12 + 1) = v56;
  v12[16] = 0;
  v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519C8, &qword_24FA2E778) + 44);
  *&v105 = 0;
  *(&v105 + 1) = v41 - 1;
  swift_getKeyPath();
  v57 = swift_allocObject();
  v58 = *(v2 + 16);
  v57[1] = *v2;
  v57[2] = v58;
  v57[3] = *(v2 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223908, &qword_24FA2E780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519D0, &qword_24FA2E788);
  sub_24F804C14(&qword_27F223918, &qword_27F223908, &qword_24FA2E780, MEMORY[0x277D83670]);
  sub_24F804C84();
  sub_24F927228();
  sub_24E602068(&qword_27F251960, &qword_27F251910, &qword_24FA2E728, MEMORY[0x277CE1198]);
  v59 = v81;
  sub_24F9265C8();
  sub_24E601704(v12, &qword_27F251910, &qword_24FA2E728);
  sub_24F9275F8();
  sub_24F9242E8();
  (*(v95 + 32))(v17, v59, v96);
  v60 = &v17[*(v94 + 36)];
  v61 = v110;
  *(v60 + 4) = v109;
  *(v60 + 5) = v61;
  *(v60 + 6) = v111;
  v62 = v106;
  *v60 = v105;
  *(v60 + 1) = v62;
  v63 = v108;
  *(v60 + 2) = v107;
  *(v60 + 3) = v63;
  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v17, v22, &qword_27F251920, &qword_24FA2E738);
  v64 = &v22[*(v101 + 36)];
  v65 = v113;
  *v64 = v112;
  *(v64 + 1) = v65;
  *(v64 + 2) = v114;
  v51 = &qword_27F251928;
  v52 = &qword_24FA2E740;
  v66 = v82;
  sub_24E6009C8(v22, v82, &qword_27F251928, &qword_24FA2E740);
  sub_24E60169C(v66, v89, &qword_27F251928, &qword_24FA2E740);
  swift_storeEnumTagMultiPayload();
  sub_24F804E34();
  sub_24F8047E0();
  v67 = v102;
  sub_24F924E28();
  v68 = v66;
LABEL_23:
  sub_24E601704(v68, v51, v52);
  sub_24E60169C(v67, v87, &qword_27F251A10, &qword_24FA2E7F8);
  swift_storeEnumTagMultiPayload();
  sub_24F804FBC();
  sub_24F924E28();
  sub_24E601704(v67, &qword_27F251A10, &qword_24FA2E7F8);
}

uint64_t sub_24F800A60@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[3];
  v5 = v4 + *result;
  if (__OFADD__(v4, *result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < *(*a2 + 16))
  {
    sub_24E615E00(*a2 + 40 * v5 + 32, v13);
    sub_24E615E00(v13, v12);
    type metadata accessor for GSKComponentContentBuilder(0);
    sub_24F3981B0();
    *&v11 = sub_24F923598();
    BYTE8(v11) = v6 & 1;
    sub_24F54CE44(v13, v5, a3);
    sub_24E88F154(&v11);
    __swift_destroy_boxed_opaque_existential_1(v13);
    KeyPath = swift_getKeyPath();
    v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519D0, &qword_24FA2E788) + 36);
    *v8 = KeyPath;
    *(v8 + 8) = 2;
    sub_24F927618();
    sub_24F9238C8();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A48, &qword_24FA2E810);
    v9 = (a3 + *(result + 36));
    v10 = v12[0];
    *v9 = v11;
    v9[1] = v10;
    v9[2] = v12[1];
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24F800BFC@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[3];
  v5 = v4 + *result;
  if (__OFADD__(v4, *result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < *(*a2 + 16))
  {
    sub_24E615E00(*a2 + 40 * v5 + 32, v12);
    sub_24E615E00(v12, &v11);
    type metadata accessor for GSKComponentContentBuilder(0);
    sub_24F3981B0();
    v9 = sub_24F923598();
    v10 = v6 & 1;
    sub_24F54CE44(v12, v5, a3);
    sub_24E88F154(&v9);
    __swift_destroy_boxed_opaque_existential_1(v12);
    KeyPath = swift_getKeyPath();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519D0, &qword_24FA2E788);
    v8 = a3 + *(result + 36);
    *v8 = KeyPath;
    *(v8 + 8) = 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_24F800D08(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A58, &qword_24FA2E818);
  MEMORY[0x28223BE20](v4);
  v6 = &v74 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A60, &qword_24FA2E820);
  MEMORY[0x28223BE20](v7);
  v79 = &v74 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251860, &qword_24FA2E428);
  v78 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v74 - v11;
  MEMORY[0x28223BE20](v12);
  v76 = &v74 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v74 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A68, &qword_24FA2E828);
  MEMORY[0x28223BE20](v90);
  v91 = &v74 - v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251910, &qword_24FA2E728);
  MEMORY[0x28223BE20](v81);
  v19 = &v74 - v18;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251918, &qword_24FA2E730);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v74 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251920, &qword_24FA2E738);
  MEMORY[0x28223BE20](v80);
  v85 = &v74 - v21;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251928, &qword_24FA2E740);
  MEMORY[0x28223BE20](v88);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v86 = &v74 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A70, &qword_24FA2E830);
  MEMORY[0x28223BE20](v26);
  v89 = &v74 - v28;
  v29 = *v2;
  v30 = *(*v2 + 16);
  v31 = *(v2 + 24);
  v32 = v30 - v31;
  if (__OFSUB__(v30, v31))
  {
    __break(1u);
    goto LABEL_32;
  }

  v95 = a1;
  v33 = *(v2 + 16);
  v34 = *(v2 + 18);
  v35 = v33 >> 8;
  v94 = v6;
  v93 = v4;
  if (v34 == 1)
  {
    v36 = 3;
    if (v33 == 4)
    {
      v37 = 3;
    }

    else
    {
      v37 = 1;
    }

    v38 = 2;
    if (v33 == 3)
    {
      v37 = 2;
    }

    if (v35 != 4)
    {
      v36 = 1;
    }

    if (v35 != 3)
    {
      v38 = v36;
    }

    v39 = v38 + v37;
    if (v39 < v32)
    {
      v32 = v39;
    }
  }

  else if (v32 > 1)
  {
    v40 = 1;
    goto LABEL_18;
  }

  v40 = v32 & ~(v32 >> 63);
LABEL_18:
  v87 = v7;
  v41 = *(v2 + 32);
  v92 = v27;
  if (v41 != 1)
  {
    v43 = v33;
    if (v40)
    {
      goto LABEL_20;
    }

LABEL_28:
    swift_storeEnumTagMultiPayload();
    sub_24F805134();
    sub_24F924E28();
    return;
  }

  v42 = sub_24E844064(v40, v33 | (v34 << 16));
  v34 = HIWORD(v42) & 1;
  v43 = v42;
  v35 = v42 >> 8;
  if (!v40)
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v34 & 1) == 0)
  {
    v60 = sub_24F924C98();
    v61 = *(v2 + 8);
    *v19 = v60;
    *(v19 + 1) = v61;
    v19[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519C8, &qword_24FA2E778);
    *&v96 = 0;
    *(&v96 + 1) = v40 - 1;
    swift_getKeyPath();
    v62 = swift_allocObject();
    v63 = *(v2 + 16);
    *(v62 + 16) = *v2;
    *(v62 + 32) = v63;
    *(v62 + 48) = *(v2 + 32);
    *(v62 + 64) = 4 * (v43 == 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223908, &qword_24FA2E780);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519D0, &qword_24FA2E788);
    sub_24F804C14(&qword_27F223918, &qword_27F223908, &qword_24FA2E780, MEMORY[0x277D83670]);
    sub_24F804C84();
    sub_24F927228();
    sub_24E602068(&qword_27F251960, &qword_27F251910, &qword_24FA2E728, MEMORY[0x277CE1198]);
    v64 = v82;
    sub_24F9265C8();
    sub_24E601704(v19, &qword_27F251910, &qword_24FA2E728);
    sub_24F9275F8();
    sub_24F9242E8();
    v65 = v85;
    (*(v83 + 32))(v85, v64, v84);
    v66 = (v65 + *(v80 + 36));
    v67 = v101;
    v66[4] = v100;
    v66[5] = v67;
    v66[6] = v102;
    v68 = v97;
    *v66 = v96;
    v66[1] = v68;
    v69 = v99;
    v66[2] = v98;
    v66[3] = v69;
    sub_24F927618();
    sub_24F9238C8();
    sub_24E6009C8(v65, v23, &qword_27F251920, &qword_24FA2E738);
    v70 = &v23[*(v88 + 36)];
    v71 = v104;
    v72 = v105;
    *v70 = v103;
    *(v70 + 1) = v71;
    *(v70 + 2) = v72;
    v73 = v86;
    sub_24E6009C8(v23, v86, &qword_27F251928, &qword_24FA2E740);
    sub_24E60169C(v73, v91, &qword_27F251928, &qword_24FA2E740);
    swift_storeEnumTagMultiPayload();
    sub_24F8047E0();
    sub_24E602068(&qword_27F251A80, &qword_27F251A60, &qword_24FA2E820, MEMORY[0x277CE14C0]);
    v59 = v89;
    sub_24F924E28();
    sub_24E601704(v73, &qword_27F251928, &qword_24FA2E740);
    goto LABEL_30;
  }

  v44 = *(v2 + 8);
  v45 = (*(v2 + 40) - v44) * 0.5;
  *&v96 = v29;
  *(&v96 + 1) = v44;
  LOBYTE(v97) = v43;
  *(&v97 + 1) = v31;
  LOBYTE(v98) = v41;
  *(&v98 + 1) = v45;
  sub_24F804394();

  v46 = v16;
  sub_24F9265C8();
  v47 = 3;
  if (v43 != 4)
  {
    v47 = 1;
  }

  if (v43 == 3)
  {
    v47 = 2;
  }

  v48 = __OFADD__(v31, v47);
  v49 = v31 + v47;
  if (!v48)
  {
    *&v96 = v29;
    *(&v96 + 1) = v44;
    LOBYTE(v97) = v35;
    *(&v97 + 1) = v49;
    LOBYTE(v98) = v41;
    *(&v98 + 1) = v45;
    v50 = v76;
    sub_24F9265C8();
    sub_24F8051EC(v2);
    v51 = v78;
    v52 = *(v78 + 16);
    v53 = v74;
    v54 = v77;
    v52(v74, v46, v77);
    v55 = v75;
    v52(v75, v50, v54);
    v86 = v46;
    v56 = v79;
    v52(v79, v53, v54);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251A88, &qword_24FA2E838);
    v52((v56 + *(v57 + 48)), v55, v54);
    v58 = *(v51 + 8);
    v58(v55, v54);
    v58(v53, v54);
    sub_24E60169C(v56, v91, &qword_27F251A60, &qword_24FA2E820);
    swift_storeEnumTagMultiPayload();
    sub_24F8047E0();
    sub_24E602068(&qword_27F251A80, &qword_27F251A60, &qword_24FA2E820, MEMORY[0x277CE14C0]);
    v59 = v89;
    sub_24F924E28();
    sub_24E601704(v56, &qword_27F251A60, &qword_24FA2E820);
    v58(v50, v54);
    v58(v86, v54);
LABEL_30:
    sub_24E60169C(v59, v94, &qword_27F251A70, &qword_24FA2E830);
    swift_storeEnumTagMultiPayload();
    sub_24F805134();
    sub_24F924E28();
    sub_24E601704(v59, &qword_27F251A70, &qword_24FA2E830);
    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_24F801950@<X0>(uint64_t result@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2[3];
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < *(*a2 + 16))
  {
    sub_24E615E00(*a2 + 40 * v6 + 32, v14);
    sub_24E615E00(v14, &v13);
    type metadata accessor for GSKComponentContentBuilder(0);
    sub_24F3981B0();
    v11 = sub_24F923598();
    v12 = v8 & 1;
    sub_24F54CE44(v14, v6, a4);
    sub_24E88F154(&v11);
    __swift_destroy_boxed_opaque_existential_1(v14);
    KeyPath = swift_getKeyPath();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519D0, &qword_24FA2E788);
    v10 = a4 + *(result + 36);
    *v10 = KeyPath;
    *(v10 + 8) = a3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_24F801A98(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2518A0, &qword_24FA2E6B8);
  MEMORY[0x28223BE20](v3);
  v5 = &v172 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2518A8, &qword_24FA2E6C0);
  v187 = *(v6 - 8);
  v188 = v6;
  MEMORY[0x28223BE20](v6);
  v186 = &v172 - v7;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2518B0, &qword_24FA2E6C8);
  MEMORY[0x28223BE20](v185);
  v190 = &v172 - v8;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2518B8, &qword_24FA2E6D0);
  MEMORY[0x28223BE20](v222);
  v189 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v191 = &v172 - v11;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2518C0, &qword_24FA2E6D8);
  MEMORY[0x28223BE20](v197);
  v193 = &v172 - v12;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2518C8, &qword_24FA2E6E0);
  MEMORY[0x28223BE20](v194);
  v196 = &v172 - v13;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2518D0, &qword_24FA2E6E8);
  MEMORY[0x28223BE20](v217);
  v198 = &v172 - v14;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2518D8, &qword_24FA2E6F0);
  MEMORY[0x28223BE20](v195);
  v203 = &v172 - v15;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2518E0, &qword_24FA2E6F8);
  MEMORY[0x28223BE20](v206);
  v201 = &v172 - v16;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251860, &qword_24FA2E428);
  v223 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v174 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v173 = &v172 - v19;
  MEMORY[0x28223BE20](v20);
  v172 = &v172 - v21;
  MEMORY[0x28223BE20](v22);
  v192 = &v172 - v23;
  MEMORY[0x28223BE20](v24);
  v208 = (&v172 - v25);
  MEMORY[0x28223BE20](v26);
  v224 = &v172 - v27;
  MEMORY[0x28223BE20](v28);
  v200 = &v172 - v29;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251840, &qword_24FA2E408);
  v218 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v182 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v209 = &v172 - v32;
  MEMORY[0x28223BE20](v33);
  v211 = &v172 - v34;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2518E8, &qword_24FA2E700);
  MEMORY[0x28223BE20](v220);
  v221 = &v172 - v35;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2518F0, &qword_24FA2E708);
  MEMORY[0x28223BE20](v212);
  v214 = &v172 - v36;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2518F8, &qword_24FA2E710);
  MEMORY[0x28223BE20](v202);
  v204 = &v172 - v37;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251900, &qword_24FA2E718);
  MEMORY[0x28223BE20](v213);
  v205 = &v172 - v38;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251908, &qword_24FA2E720);
  MEMORY[0x28223BE20](v219);
  v216 = &v172 - v39;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251910, &qword_24FA2E728);
  MEMORY[0x28223BE20](v175);
  v184 = (&v172 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251918, &qword_24FA2E730);
  v178 = *(v41 - 8);
  v179 = v41;
  MEMORY[0x28223BE20](v41);
  v177 = &v172 - v42;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251920, &qword_24FA2E738);
  MEMORY[0x28223BE20](v176);
  v181 = &v172 - v43;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251928, &qword_24FA2E740);
  MEMORY[0x28223BE20](v199);
  v180 = &v172 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v183 = &v172 - v46;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251930, &qword_24FA2E748);
  MEMORY[0x28223BE20](v229);
  v48 = &v172 - v47;
  v49 = *v1;
  v50 = *(*v1 + 16);
  v51 = *(v1 + 3);
  v52 = v50 - v51;
  v53 = __OFSUB__(v50, v51);
  swift_bridgeObjectRetain_n();
  if (v53)
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v226 = v3;
  v227 = v5;
  v228 = a1;
  v54 = *(v1 + 2);

  swift_bridgeObjectRetain_n();
  v55 = sub_24E843E44(v54);
  if (v55 >= v52)
  {
    v56 = v52;
  }

  else
  {
    v56 = v55;
  }

  v57 = v1;
  v207 = *(v1 + 32);
  if (v207 == 1)
  {

    v58 = sub_24E8441E0(v56 & ~(v56 >> 63), v54);
    if (v52 < 1)
    {
LABEL_10:
      swift_bridgeObjectRelease_n();
      swift_storeEnumTagMultiPayload();
      sub_24F804610();
      sub_24F924E28();

      return;
    }
  }

  else
  {
    v58 = v54;
    if (v52 < 1)
    {
      goto LABEL_10;
    }
  }

  v59 = v58 >> 61;
  v225 = v48;
  if ((v58 >> 61) <= 1)
  {
    if (v59)
    {
      swift_bridgeObjectRelease_n();
      v145 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v146 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x12);
      v191 = v58 & 0x1FFFFFFFFFFFFFFFLL;
      v147 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x13);
      v148 = v57[1];
      v149 = v57[5] - (v148 + v148);
      *&v243 = v49;
      *(&v243 + 1) = v148;
      LOWORD(v244) = v145;
      BYTE2(v244) = v146;
      *(&v244 + 1) = v51;
      v150 = v207;
      LOBYTE(v245) = v207;
      *(&v245 + 1) = v148 + (v149 + v149) / 3.0;
      sub_24F8043E8();
      v151 = 1;
      sub_24F9265C8();

      if (v146)
      {
        v152 = v145 >> 8;
        v153 = 3;
        if (v145 == 4)
        {
          v154 = 3;
        }

        else
        {
          v154 = 1;
        }

        v155 = 2;
        if (v145 == 3)
        {
          v154 = 2;
        }

        if (v152 != 4)
        {
          v153 = 1;
        }

        if (v152 != 3)
        {
          v155 = v153;
        }

        v151 = v155 + v154;
      }

      if (!__OFADD__(v51, v151))
      {
        *&v243 = v49;
        *(&v243 + 1) = v148;
        LOBYTE(v244) = v147;
        *(&v244 + 1) = v51 + v151;
        LOBYTE(v245) = v150;
        *(&v245 + 1) = v149 / 3.0;
        sub_24F804394();
        v156 = v200;
        sub_24F9265C8();

        v157 = *(v218 + 16);
        v158 = v209;
        v159 = v210;
        v157(v209, v211, v210);
        v161 = v223;
        v160 = v224;
        v162 = *(v223 + 16);
        v163 = v156;
        v164 = v215;
        v162(v224, v163, v215);
        v157(v201, v158, v159);
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519C0, &qword_24FA2E770);
        v166 = v201;
        v162(&v201[*(v165 + 48)], v160, v164);
        v167 = *(v161 + 8);
        v223 = v161 + 8;
        v208 = v167;
        v167(v160, v164);
        v224 = *(v218 + 8);
        (v224)(v158, v159);
        v168 = v166;
        sub_24E60169C(v166, v204, &qword_27F2518E0, &qword_24FA2E6F8);
        swift_storeEnumTagMultiPayload();
        sub_24F8047E0();
        sub_24E602068(&qword_27F251968, &qword_27F2518E0, &qword_24FA2E6F8, MEMORY[0x277CE14C0]);
        v169 = v205;
        sub_24F924E28();
        sub_24E60169C(v169, v214, &qword_27F251900, &qword_24FA2E718);
        swift_storeEnumTagMultiPayload();
        sub_24F804728();
        sub_24F804968();
        v170 = v216;
        sub_24F924E28();
        sub_24E601704(v169, &qword_27F251900, &qword_24FA2E718);
        sub_24E60169C(v170, v221, &qword_27F251908, &qword_24FA2E720);
        swift_storeEnumTagMultiPayload();
        sub_24F80469C();
        sub_24F804A48();
        sub_24F924E28();
        sub_24E601704(v170, &qword_27F251908, &qword_24FA2E720);
        sub_24E601704(v168, &qword_27F2518E0, &qword_24FA2E6F8);
        v208(v200, v215);
        (v224)(v211, v159);
        goto LABEL_49;
      }

      goto LABEL_54;
    }

    swift_bridgeObjectRelease_n();
    v86 = *(v58 + 16);
    v87 = v57;
    v88 = *(v57 + 1);
    v89 = sub_24F924C88();
    v90 = v184;
    *v184 = v89;
    *(v90 + 8) = v88;
    *(v90 + 16) = 0;
    v224 = v58;
    if (v56 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519C8, &qword_24FA2E778);
      *&v243 = 0;
      *(&v243 + 1) = (v56 & ~(v56 >> 63)) - 1;
      swift_getKeyPath();
      v91 = swift_allocObject();
      v92 = *(v87 + 1);
      *(v91 + 16) = *v87;
      *(v91 + 32) = v92;
      *(v91 + 48) = *(v87 + 2);
      *(v91 + 64) = 4 * (v86 == 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223908, &qword_24FA2E780);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519D0, &qword_24FA2E788);
      sub_24F804C14(&qword_27F223918, &qword_27F223908, &qword_24FA2E780, MEMORY[0x277D83670]);
      sub_24F804C84();
      sub_24F927228();
      sub_24E602068(&qword_27F251960, &qword_27F251910, &qword_24FA2E728, MEMORY[0x277CE1198]);
      v93 = v177;
      sub_24F9265C8();
      sub_24E601704(v90, &qword_27F251910, &qword_24FA2E728);
      sub_24F9275F8();
      sub_24F9242E8();
      v94 = v181;
      (*(v178 + 32))(v181, v93, v179);
      v95 = (v94 + *(v176 + 36));
      v96 = v248;
      v95[4] = v247;
      v95[5] = v96;
      v95[6] = v249;
      v97 = v244;
      *v95 = v243;
      v95[1] = v97;
      v98 = v246;
      v95[2] = v245;
      v95[3] = v98;
      sub_24F927618();
      sub_24F9238C8();
      v99 = v180;
      sub_24E6009C8(v94, v180, &qword_27F251920, &qword_24FA2E738);
      v100 = (v99 + *(v199 + 36));
      v101 = *v231;
      *v100 = v230;
      v100[1] = v101;
      v100[2] = *&v231[16];
      v102 = v99;
      v103 = v183;
      sub_24E6009C8(v102, v183, &qword_27F251928, &qword_24FA2E740);
      sub_24E60169C(v103, v204, &qword_27F251928, &qword_24FA2E740);
      swift_storeEnumTagMultiPayload();
      sub_24F8047E0();
      sub_24E602068(&qword_27F251968, &qword_27F2518E0, &qword_24FA2E6F8, MEMORY[0x277CE14C0]);
      v104 = v205;
      sub_24F924E28();
      sub_24E60169C(v104, v214, &qword_27F251900, &qword_24FA2E718);
      swift_storeEnumTagMultiPayload();
      sub_24F804728();
      sub_24F804968();
      v105 = v216;
      sub_24F924E28();
      sub_24E601704(v104, &qword_27F251900, &qword_24FA2E718);
      sub_24E60169C(v105, v221, &qword_27F251908, &qword_24FA2E720);
      swift_storeEnumTagMultiPayload();
      sub_24F80469C();
      sub_24F804A48();
      sub_24F924E28();
      sub_24E601704(v105, &qword_27F251908, &qword_24FA2E720);
      sub_24E601704(v103, &qword_27F251928, &qword_24FA2E740);
      goto LABEL_49;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v59 == 2)
  {
    swift_bridgeObjectRelease_n();
    v106 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v107 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x11);
    v191 = v58 & 0x1FFFFFFFFFFFFFFFLL;
    v108 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x13);
    v109 = v57[1];
    v110 = v57[5] - (v109 + v109);
    *&v243 = v49;
    *(&v243 + 1) = v109;
    LOBYTE(v244) = v106;
    *(&v244 + 1) = v51;
    v111 = v207;
    LOBYTE(v245) = v207;
    *(&v245 + 1) = v110 / 3.0;
    sub_24F804394();
    v112 = v224;
    sub_24F9265C8();

    v113 = 3;
    if (v106 != 4)
    {
      v113 = 1;
    }

    if (v106 == 3)
    {
      v113 = 2;
    }

    v68 = __OFADD__(v51, v113);
    v114 = v51 + v113;
    if (!v68)
    {
      *&v243 = v49;
      *(&v243 + 1) = v109;
      LOWORD(v244) = v107;
      BYTE2(v244) = v108;
      *(&v244 + 1) = v114;
      LOBYTE(v245) = v111;
      *(&v245 + 1) = v109 + (v110 + v110) / 3.0;
      sub_24F8043E8();
      v115 = v209;
      sub_24F9265C8();

      v116 = *(v223 + 16);
      v117 = v208;
      v118 = v215;
      v116(v208, v112, v215);
      v119 = v218;
      v120 = *(v218 + 16);
      v121 = v182;
      v122 = v115;
      v123 = v210;
      v120(v182, v122, v210);
      v116(v203, v117, v118);
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519B8, &qword_24FA2E768);
      v125 = v203;
      v120(&v203[*(v124 + 48)], v121, v123);
      v126 = *(v119 + 8);
      v218 = v119 + 8;
      v211 = v126;
      (v126)(v121, v123);
      v223 = *(v223 + 8);
      (v223)(v117, v118);
      v127 = v125;
      sub_24E60169C(v125, v196, &qword_27F2518D8, &qword_24FA2E6F0);
      swift_storeEnumTagMultiPayload();
      v128 = MEMORY[0x277CE14C0];
      sub_24E602068(&qword_27F251978, &qword_27F2518D8, &qword_24FA2E6F0, MEMORY[0x277CE14C0]);
      sub_24E602068(&qword_27F251980, &qword_27F2518C0, &qword_24FA2E6D8, v128);
      v129 = v198;
      sub_24F924E28();
      sub_24E60169C(v129, v214, &qword_27F2518D0, &qword_24FA2E6E8);
      swift_storeEnumTagMultiPayload();
      sub_24F804728();
      sub_24F804968();
      v130 = v216;
      sub_24F924E28();
      sub_24E601704(v129, &qword_27F2518D0, &qword_24FA2E6E8);
      sub_24E60169C(v130, v221, &qword_27F251908, &qword_24FA2E720);
      swift_storeEnumTagMultiPayload();
      sub_24F80469C();
      sub_24F804A48();
      sub_24F924E28();
      sub_24E601704(v130, &qword_27F251908, &qword_24FA2E720);
      sub_24E601704(v127, &qword_27F2518D8, &qword_24FA2E6F0);
      (v211)(v209, v210);
      (v223)(v224, v118);
      goto LABEL_49;
    }

    goto LABEL_51;
  }

  if (v59 != 3)
  {
    swift_bridgeObjectRelease_n();
    v131 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v132 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v133 = sub_24F924C98();
    v134 = *(v57 + 1);
    LOBYTE(v254) = 0;
    sub_24F803994(v57, v131, v132, &v243);
    v239 = v249;
    v240 = v250;
    v241 = v251;
    v235 = v245;
    v236 = v246;
    v237 = v247;
    v238 = v248;
    v233 = v243;
    v234 = v244;
    v242[5] = v248;
    v242[6] = v249;
    v242[7] = v250;
    v242[8] = v251;
    v242[2] = v245;
    v242[3] = v246;
    v242[4] = v247;
    v242[0] = v243;
    v242[1] = v244;
    sub_24E60169C(&v233, &v230, &qword_27F2519A8, &qword_24FA2E758);
    sub_24E601704(v242, &qword_27F2519A8, &qword_24FA2E758);
    *&v232[103] = v239;
    *&v232[87] = v238;
    *&v232[39] = v235;
    *&v232[23] = v234;
    *&v232[119] = v240;
    *&v232[135] = v241;
    *&v232[55] = v236;
    *&v232[71] = v237;
    *&v232[7] = v233;
    *&v231[97] = *&v232[96];
    *&v231[113] = *&v232[112];
    *&v231[129] = *&v232[128];
    *&v231[33] = *&v232[32];
    *&v231[49] = *&v232[48];
    *&v231[65] = *&v232[64];
    *&v231[81] = *&v232[80];
    *&v231[1] = *v232;
    *&v230 = v133;
    *(&v230 + 1) = v134;
    v231[0] = v254;
    *&v231[144] = *(&v241 + 1);
    *&v231[17] = *&v232[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251998, &qword_24FA2E750);
    sub_24E602068(&qword_27F2519A0, &qword_27F251998, &qword_24FA2E750, MEMORY[0x277CE1198]);
    v135 = v186;
    sub_24F9265C8();
    v251 = *&v231[112];
    v252 = *&v231[128];
    v253 = *&v231[144];
    v247 = *&v231[48];
    v248 = *&v231[64];
    v250 = *&v231[96];
    v249 = *&v231[80];
    v243 = v230;
    v244 = *v231;
    v246 = *&v231[32];
    v245 = *&v231[16];
    sub_24E601704(&v243, &qword_27F251998, &qword_24FA2E750);
    sub_24F9275F8();
    sub_24F9242E8();
    v136 = v190;
    (*(v187 + 32))(v190, v135, v188);
    v137 = (v136 + *(v185 + 36));
    v138 = *&v231[64];
    v137[4] = *&v231[48];
    v137[5] = v138;
    v137[6] = *&v231[80];
    v139 = *v231;
    *v137 = v230;
    v137[1] = v139;
    v140 = *&v231[32];
    v137[2] = *&v231[16];
    v137[3] = v140;
    sub_24F927618();
    sub_24F9238C8();
    v141 = v189;
    sub_24E6009C8(v136, v189, &qword_27F2518B0, &qword_24FA2E6C8);
    v142 = (v141 + *(v222 + 36));
    v143 = v255;
    *v142 = v254;
    v142[1] = v143;
    v142[2] = v256;
    v144 = v191;
    sub_24E6009C8(v141, v191, &qword_27F2518B8, &qword_24FA2E6D0);
    sub_24E60169C(v144, v221, &qword_27F2518B8, &qword_24FA2E6D0);
    swift_storeEnumTagMultiPayload();
    sub_24F80469C();
    sub_24F804A48();
    sub_24F924E28();
    sub_24E601704(v144, &qword_27F2518B8, &qword_24FA2E6D0);
    goto LABEL_49;
  }

  swift_bridgeObjectRelease_n();
  v60 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v61 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x11);
  v191 = v58 & 0x1FFFFFFFFFFFFFFFLL;
  v62 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x12);
  v63 = v57[1];
  v64 = v57[5] - (v63 + v63);
  *&v243 = v49;
  *(&v243 + 1) = v63;
  LOBYTE(v244) = v60;
  *(&v244 + 1) = v51;
  v65 = v64 / 3.0;
  v66 = v207;
  LOBYTE(v245) = v207;
  *(&v245 + 1) = v64 / 3.0;
  sub_24F804394();
  sub_24F9265C8();

  v67 = 3;
  if (v60 != 4)
  {
    v67 = 1;
  }

  if (v60 == 3)
  {
    v67 = 2;
  }

  v68 = __OFADD__(v51, v67);
  v69 = v51 + v67;
  if (v68)
  {
    goto LABEL_52;
  }

  *&v243 = v49;
  *(&v243 + 1) = v63;
  LOBYTE(v244) = v61;
  *(&v244 + 1) = v69;
  LOBYTE(v245) = v66;
  *(&v245 + 1) = v65;
  v70 = v208;
  sub_24F9265C8();

  v71 = 3;
  if (v61 != 4)
  {
    v71 = 1;
  }

  if (v61 == 3)
  {
    v71 = 2;
  }

  v68 = __OFADD__(v69, v71);
  v72 = v69 + v71;
  if (!v68)
  {
    *&v243 = v49;
    *(&v243 + 1) = v63;
    LOBYTE(v244) = v62;
    *(&v244 + 1) = v72;
    LOBYTE(v245) = v66;
    *(&v245 + 1) = v65;
    v73 = v192;
    sub_24F9265C8();

    v74 = v223;
    v75 = *(v223 + 16);
    v76 = v172;
    v77 = v215;
    (v75)(v172, v224, v215);
    v78 = v173;
    (v75)(v173, v70, v77);
    v79 = v174;
    (v75)(v174, v73, v77);
    v80 = v193;
    v75();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2519B0, &qword_24FA2E760);
    (v75)(v80 + *(v81 + 48), v78, v77);
    (v75)(v80 + *(v81 + 64), v79, v77);
    v82 = *(v74 + 8);
    v82(v79, v77);
    v82(v78, v77);
    v82(v76, v77);
    sub_24E60169C(v80, v196, &qword_27F2518C0, &qword_24FA2E6D8);
    swift_storeEnumTagMultiPayload();
    v83 = MEMORY[0x277CE14C0];
    sub_24E602068(&qword_27F251978, &qword_27F2518D8, &qword_24FA2E6F0, MEMORY[0x277CE14C0]);
    sub_24E602068(&qword_27F251980, &qword_27F2518C0, &qword_24FA2E6D8, v83);
    v84 = v198;
    sub_24F924E28();
    sub_24E60169C(v84, v214, &qword_27F2518D0, &qword_24FA2E6E8);
    swift_storeEnumTagMultiPayload();
    sub_24F804728();
    sub_24F804968();
    v85 = v216;
    sub_24F924E28();
    sub_24E601704(v84, &qword_27F2518D0, &qword_24FA2E6E8);
    sub_24E60169C(v85, v221, &qword_27F251908, &qword_24FA2E720);
    swift_storeEnumTagMultiPayload();
    sub_24F80469C();
    sub_24F804A48();
    sub_24F924E28();
    sub_24E601704(v85, &qword_27F251908, &qword_24FA2E720);
    sub_24E601704(v193, &qword_27F2518C0, &qword_24FA2E6D8);
    v82(v192, v77);
    v82(v208, v77);
    v82(v224, v77);
LABEL_49:
    v171 = v225;
    sub_24E60169C(v225, v227, &qword_27F251930, &qword_24FA2E748);
    swift_storeEnumTagMultiPayload();
    sub_24F804610();
    sub_24F924E28();

    sub_24E601704(v171, &qword_27F251930, &qword_24FA2E748);
    return;
  }

LABEL_55:
  __break(1u);
}