uint64_t ReportSpamManager.reportVideoMessagingSpam(call:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D33DDD34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761DE0, &unk_1D33E50F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45[-v9];
  v11 = type metadata accessor for RecentsItem(0);
  sub_1D3367A94(a1 + *(v11 + 32), v10);
  v12 = type metadata accessor for CallInfo(0);
  if ((*(*(v12 - 8) + 48))(v10, 1, v12) == 1)
  {
    sub_1D331E880(v10, &unk_1EC761DE0, &unk_1D33E50F0);
    if (qword_1EC760968 != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_3;
  }

  (*(v5 + 16))(v7, &v10[*(v12 + 24)], v4);
  sub_1D336A0E8(v10);
  sub_1D33DDCD4();
  (*(v5 + 8))(v7, v4);
  v17 = sub_1D33CAA04();
  v51 = sub_1D335DDB8(v17);
  v53 = v18;
  if (v18)
  {

    v19 = sub_1D33C8784();
    v20 = v19;
    v48 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
      v50 = sub_1D33DEE14();
    }

    else
    {
      v50 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v20 & 0xC000000000000001;

    v52 = v2;

    v21 = 0;
    v47 = v20;
    while (1)
    {
      v22 = v50 != v21;
      if (v50 == v21)
      {
        break;
      }

      if (v49)
      {
        v23 = MEMORY[0x1D38B75D0](v21, v20);
      }

      else
      {
        if (v21 >= *(v48 + 16))
        {
          goto LABEL_28;
        }

        v23 = *(v20 + 8 * v21 + 32);
      }

      v24 = v23;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        swift_once();
LABEL_3:
        v13 = sub_1D33DE464();
        __swift_project_value_buffer(v13, qword_1EC761DC8);
        v14 = sub_1D33DE444();
        v15 = sub_1D33DEAF4();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1D331A000, v14, v15, "Could not report video message spam for call due to nil call date", v16, 2u);
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      v46 = v22;
      v25 = sub_1D33DEA24();
      v27 = v26;
      v28 = [v24 value];
      v29 = sub_1D33DE7B4();
      v31 = v30;

      v32 = *(v52 + 40);
      ObjectType = swift_getObjectType();
      v54[0] = v25;
      v54[1] = v27;
      v54[2] = v29;
      v54[3] = v31;
      v54[4] = v51;
      v54[5] = v53;

      swift_unknownObjectRetain();
      v34 = sub_1D33CAF5C();
      v35 = sub_1D33C7FB4(v34);

      v36 = (*(v32 + 8))(v35, ObjectType, v32);
      v20 = v47;
      LOBYTE(v32) = v36;

      swift_unknownObjectRelease();

      ++v21;
      if (v32)
      {

        v22 = v46;
LABEL_23:

        swift_bridgeObjectRelease_n();
        return v22;
      }
    }

    goto LABEL_23;
  }

  if (qword_1EC760968 != -1)
  {
    swift_once();
  }

  v37 = sub_1D33DE464();
  __swift_project_value_buffer(v37, qword_1EC761DC8);

  v14 = sub_1D33DE444();
  v38 = sub_1D33DEAF4();

  if (os_log_type_enabled(v14, v38))
  {
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v54[0] = v39;
    *v16 = 136315138;
    v40 = sub_1D33DEA64();
    v42 = v41;

    v43 = sub_1D3328B48(v40, v42, v54);

    *(v16 + 4) = v43;
    _os_log_impl(&dword_1D331A000, v14, v38, "Could not report video message spam for call due to zero registered facetime service IMAccount %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1D38B81C0](v39, -1, -1);
LABEL_21:
    MEMORY[0x1D38B81C0](v16, -1, -1);
  }

  else
  {
  }

LABEL_25:

  return 0;
}

char *sub_1D33CAA04()
{
  v1 = v0;
  [*(v0 + 56) blockUntilConnected];
  v2 = *(v0 + 48);
  if (!v2 || (v3 = objc_opt_self(), v4 = v2, v5 = [v3 facetimeService], v6 = objc_msgSend(v4, sel_accountsForService_, v5), v4, v5, !v6))
  {
    if (qword_1EC760988 == -1)
    {
LABEL_17:
      v14 = sub_1D33DE464();
      __swift_project_value_buffer(v14, qword_1EC762118);

      v15 = sub_1D33DE444();
      v16 = sub_1D33DEAF4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v43 = v18;
        *v17 = 136315138;
        v19 = *(v1 + 48);
        if (v19)
        {
          v20 = objc_opt_self();
          v21 = v19;
          v22 = [v20 facetimeService];
          v23 = [v21 accountsForService_];

          if (v23)
          {
            sub_1D331DA18(0, &qword_1EC761B80, 0x1E69A5A78);
            sub_1D33DE8B4();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761E20, qword_1D33E4540);
          sub_1D33DECE4();

          v38 = sub_1D33DE804();
          v37 = v39;
        }

        else
        {
          v37 = 0xE300000000000000;
          v38 = 7104878;
        }

        v40 = sub_1D3328B48(v38, v37, &v43);

        *(v17 + 4) = v40;
        _os_log_impl(&dword_1D331A000, v15, v16, "Could not find any facetime service IMAccount in IMAccountController %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1D38B81C0](v18, -1, -1);
        MEMORY[0x1D38B81C0](v17, -1, -1);
      }

      return MEMORY[0x1E69E7CD0];
    }

LABEL_46:
    swift_once();
    goto LABEL_17;
  }

  sub_1D331DA18(0, &qword_1EC761B80, 0x1E69A5A78);
  v7 = sub_1D33DE8B4();

  v42 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    v8 = sub_1D33DEE14();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1D38B75D0](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ([v11 registrationStatus] == 5)
      {
        sub_1D33DEF84();
        v1 = *(v42 + 16);
        sub_1D33DEFB4();
        sub_1D33DEFC4();
        sub_1D33DEF94();
      }

      else
      {
      }

      ++v10;
      if (v13 == v8)
      {
        v24 = v42;
        v9 = MEMORY[0x1E69E7CC0];
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_23:

  if ((v24 & 0x8000000000000000) == 0 && (v24 & 0x4000000000000000) == 0)
  {
    v25 = *(v24 + 16);
    if (v25)
    {
      goto LABEL_26;
    }

LABEL_49:

    v41 = sub_1D3367844(v9);

    return v41;
  }

  v25 = sub_1D33DEE14();
  if (!v25)
  {
    goto LABEL_49;
  }

LABEL_26:
  result = sub_1D334A9E0(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1D38B75D0](v27, v24);
      }

      else
      {
        if (v27 >= *(v24 + 16))
        {
          goto LABEL_45;
        }

        v29 = *(v24 + 8 * v27 + 32);
      }

      v30 = v29;
      result = [v29 strippedLogin];
      if (!result)
      {
        goto LABEL_51;
      }

      v31 = result;
      sub_1D33DE7B4();

      v1 = sub_1D33DE7F4();
      v33 = v32;

      v35 = *(v9 + 16);
      v34 = *(v9 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1D334A9E0((v34 > 1), v35 + 1, 1);
      }

      *(v9 + 16) = v35 + 1;
      v36 = v9 + 16 * v35;
      *(v36 + 32) = v1;
      *(v36 + 40) = v33;
      ++v27;
      if (v28 == v25)
      {
        goto LABEL_49;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

unint64_t sub_1D33CAF5C()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761E10, &qword_1D33E5440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E50E0;
  *(inited + 32) = 0x6D617473656D6974;
  *(inited + 40) = 0xE900000000000070;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x80000001D33E7AE0;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000001D33E59C0;
  strcpy((inited + 96), "callerHandle");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 112) = v4;
  *(inited + 120) = v3;
  *(inited + 128) = 0x6E65697069636572;
  *(inited + 136) = 0xEF656C646E614874;
  *(inited + 144) = v6;
  *(inited + 152) = v5;

  v8 = sub_1D336C284(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761E18, &unk_1D33E5448);
  swift_arrayDestroy();
  return v8;
}

void ReportSpamManager.reportFaceTimeCallSpam<A>(call:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1D33CAA04();
  v8 = sub_1D335DDB8(v7);
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      (*(a3 + 80))(v50, v11, v10, Strong, *(v4 + 24), a2, a3);

      v52[10] = v50[10];
      v52[11] = v50[11];
      v53 = v51;
      v52[6] = v50[6];
      v52[7] = v50[7];
      v52[8] = v50[8];
      v52[9] = v50[9];
      v52[2] = v50[2];
      v52[3] = v50[3];
      v52[4] = v50[4];
      v52[5] = v50[5];
      v52[0] = v50[0];
      v52[1] = v50[1];
      v13 = sub_1D33C9264();
      if (v13)
      {
        v14 = v13;

        sub_1D33CBCE8(v52);
        if (qword_1EC760968 != -1)
        {
          swift_once();
        }

        v15 = sub_1D33DE464();
        __swift_project_value_buffer(v15, qword_1EC761DC8);

        v16 = sub_1D33DE444();
        v17 = sub_1D33DEAF4();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v49 = v19;
          *v18 = 136315138;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B70, qword_1D33E4450);
          v20 = sub_1D33DE804();
          v22 = sub_1D3328B48(v20, v21, &v49);

          *(v18 + 4) = v22;
          _os_log_impl(&dword_1D331A000, v16, v17, "ReportSpamManager: report spam, model.dictionary: %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v19);
          MEMORY[0x1D38B81C0](v19, -1, -1);
          MEMORY[0x1D38B81C0](v18, -1, -1);
        }

        v23 = *(v4 + 40);
        ObjectType = swift_getObjectType();
        v25 = *(v23 + 8);
        swift_unknownObjectRetain();
        LOBYTE(v23) = v25(v14, ObjectType, v23);
        swift_unknownObjectRelease();

        v26 = sub_1D33DE444();
        v27 = sub_1D33DEAF4();
        v28 = os_log_type_enabled(v26, v27);
        if (v23)
        {
          if (v28)
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            v30 = "ReportSpamManager: report spam was sent successfully";
LABEL_28:
            _os_log_impl(&dword_1D331A000, v26, v27, v30, v29, 2u);
            MEMORY[0x1D38B81C0](v29, -1, -1);
          }
        }

        else if (v28)
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          v30 = "ReportSpamManager: report spam was rejected for some reason";
          goto LABEL_28;
        }

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
      sub_1D33CBCE8(v52);
    }

    else
    {
    }

    if (qword_1EC760968 != -1)
    {
      swift_once();
    }

    v39 = sub_1D33DE464();
    __swift_project_value_buffer(v39, qword_1EC761DC8);

    v40 = sub_1D33DE444();
    v41 = sub_1D33DEAF4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v52[0] = v43;
      *v42 = 136315138;
      v44 = sub_1D33DEA64();
      v46 = v45;

      v47 = sub_1D3328B48(v44, v46, v52);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1D331A000, v40, v41, "Could not generates spamReportDict for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1D38B81C0](v43, -1, -1);
      MEMORY[0x1D38B81C0](v42, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EC760968 != -1)
    {
      swift_once();
    }

    v31 = sub_1D33DE464();
    __swift_project_value_buffer(v31, qword_1EC761DC8);

    oslog = sub_1D33DE444();
    v32 = sub_1D33DEAF4();

    if (os_log_type_enabled(oslog, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v52[0] = v34;
      *v33 = 136315138;
      v35 = sub_1D33DEA64();
      v37 = v36;

      v38 = sub_1D3328B48(v35, v37, v52);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1D331A000, oslog, v32, "Could not report video message spam for call due to zero registered facetime service IMAccount %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1D38B81C0](v34, -1, -1);
      MEMORY[0x1D38B81C0](v33, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ReportSpamManager.deinit()
{
  sub_1D3323A28(v0 + 16);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t ReportSpamManager.__deallocating_deinit()
{
  sub_1D3323A28(v0 + 16);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D33CB7C8()
{
  sub_1D33DF284();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t sub_1D33CB83C(uint64_t a1)
{
  sub_1D33DF284();
  sub_1D33DE824();
  return sub_1D33DF2C4();
}

uint64_t sub_1D33CB890@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1D33DF144();

  *a2 = v3 != 0;
  return result;
}

id sub_1D33CB904(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1D33DE6E4();
  v4 = [v2 reportSpamMessage_];

  return v4;
}

unint64_t _s16CallsAppServices17ReportSpamManagerC10getContact9forHandleSaySo9CNContactCGSgSo8TUHandleC_tFZ_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E1DE0;
  *(inited + 32) = a1;
  v3 = a1;
  v4 = sub_1D33678DC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_1EDEC0138 != -1)
  {
LABEL_15:
    swift_once();
  }

  v5 = qword_1EDEC0110;

  sub_1D33A6A18(v4, v5);
  v7 = v6;

  v8 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v9 = *(v7 + 16);
LABEL_3:
  v10 = 56 * v8 + 32;
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    ++v8;
    v11 = *(v7 + v10);
    v10 += 56;
    if (v11)
    {
      v12 = v11;
      MEMORY[0x1D38B6F20]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v4 = v14;
      goto LABEL_3;
    }
  }

  if (v4 >> 62)
  {
    if (sub_1D33DEE14())
    {
      return v4;
    }

    goto LABEL_12;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    return 0;
  }

  return v4;
}

void *sub_1D33CBB88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  a4[6] = [objc_opt_self() sharedInstance];
  a4[7] = [objc_opt_self() sharedController];
  a4[4] = a1;
  a4[5] = a6;
  swift_beginAccess();
  a4[3] = a3;
  swift_unknownObjectWeakAssign();
  a4[8] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  return a4;
}

void *sub_1D33CBC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();

  return sub_1D33CBB88(a1, a2, a3, v11, a5, a6);
}

unint64_t sub_1D33CBD1C()
{
  result = qword_1EC761DF0;
  if (!qword_1EC761DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761DF0);
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1D33CBE50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_1D33CBE98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_1D33CBF2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D33CBF74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D33CBFE4()
{
  result = qword_1EC761E00;
  if (!qword_1EC761E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761E00);
  }

  return result;
}

uint64_t RequestsHandler.isItemUnknownParticipant(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  v18 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_1D33DEE14();
    if (v3)
    {
LABEL_3:
      v17 = v1;
      v4 = 0;
      v1 = &selRef_setOriginatingUIType_;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D38B75D0](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if ([v5 hasBeenPersisted])
        {
          sub_1D33DEF84();
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          sub_1D33DEF94();
        }

        else
        {
        }

        ++v4;
      }

      while (v7 != v3);
      v1 = v17;
      v8 = v18;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v8 & 0x4000000000000000) == 0)
    {
      v9 = *(v8 + 16);

      if (v9)
      {
        return 0;
      }

      goto LABEL_21;
    }
  }

LABEL_23:
  v16 = sub_1D33DEE14();

  if (v16)
  {
    return 0;
  }

LABEL_21:
  if (*(v1 + 32) == 4)
  {
    v11 = v1[2];
    v10 = v1[3];
    v12 = *v1;
    v13 = v1[1];
    v14 = sub_1D33CF2B0(*v1);
    sub_1D332B1DC(v12, v13, v11, v10, 4u);
    return v14 & 1;
  }

  return 0;
}

uint64_t RequestsHandler.isRequestItem(_:handleCacheMiss:)(unint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  v3 = a1;
  v4 = *(a1 + 40);
  v17 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_17:
    v5 = sub_1D33DEE14();
    if (v5)
    {
LABEL_3:
      v15 = v3;
      v16 = v2;
      v6 = 0;
      v2 = &selRef_setOriginatingUIType_;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1D38B75D0](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if ([v7 hasBeenPersisted])
        {
          sub_1D33DEF84();
          sub_1D33DEFB4();
          sub_1D33DEFC4();
          sub_1D33DEF94();
        }

        else
        {
        }

        ++v6;
      }

      while (v3 != v5);
      v9 = v17;
      LOBYTE(v2) = v16;
      v3 = v15;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v9 & 0x4000000000000000) == 0)
    {
      v10 = *(v9 + 16);

      if (!v10)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

LABEL_22:
  v12 = sub_1D33DEE14();

  if (v12)
  {
    return 0;
  }

LABEL_23:
  if ((*(v3 + 32) | 2) != 6)
  {
    return 0;
  }

  v13 = *v3;
  v14 = sub_1D33D0BE0(v13, v2 & 1);

  return v14 & 1;
}

uint64_t sub_1D33CC3C0(uint64_t a1)
{
  v52 = sub_1D33DE344();
  v3 = *(v52 - 8);
  v4 = MEMORY[0x1EEE9AC00](v52);
  v51 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v36 - v6;
  v49 = sub_1D33DE374();
  v53 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1D33DEE14();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v63 = MEMORY[0x1E69E7CC0];
  sub_1D334B408(0, v9 & ~(v9 >> 63), 0);
  v10 = v63;
  if (v54)
  {
    result = sub_1D33DEDB4();
  }

  else
  {
    result = sub_1D33DED74();
    v12 = *(a1 + 36);
  }

  v60 = result;
  v61 = v12;
  v62 = v54 != 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v36 = v1;
    v13 = 0;
    v46 = (v3 + 104);
    v45 = (v3 + 16);
    v44 = (v3 + 8);
    v43 = v53 + 32;
    v41 = *MEMORY[0x1E696ED80];
    v38 = a1 + 56;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v42 = *MEMORY[0x1E696EDA0];
    if (a1 < 0)
    {
      v14 = a1;
    }

    v40 = v14;
    v39 = *MEMORY[0x1E696ED90];
    v37 = a1 + 64;
    v47 = v9;
    v48 = a1;
    while (v13 < v9)
    {
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_41;
      }

      v57 = v60;
      v58 = v10;
      v56 = v61;
      v55 = v62;
      sub_1D33D356C(v60, v61, v62, a1, &qword_1EDEBEE90, 0x1E6993578);
      v18 = v17;
      v19 = [v17 type];
      v20 = v42;
      if (v19 >= 2)
      {
        v20 = v41;
        if (v19 != 2)
        {
          v20 = v39;
          if (v19 != 3)
          {
            v20 = v41;
          }
        }
      }

      v21 = v50;
      v22 = v52;
      (*v46)(v50, v20, v52);
      (*v45)(v51, v21, v22);
      v23 = [v18 value];
      sub_1D33DE7B4();

      sub_1D33DE354();
      (*v44)(v21, v22);

      v10 = v58;
      v63 = v58;
      v25 = *(v58 + 16);
      v24 = *(v58 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D334B408((v24 > 1), v25 + 1, 1);
        v10 = v63;
      }

      *(v10 + 16) = v25 + 1;
      (*(v53 + 32))(v10 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v25, v8, v49);
      if (v54)
      {
        v9 = v47;
        a1 = v48;
        result = v57;
        if (!v55)
        {
          goto LABEL_46;
        }

        if (sub_1D33DEDD4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761FB0, &qword_1D33E5620);
        v15 = sub_1D33DEA84();
        sub_1D33DEE84();
        result = v15(v59, 0);
        if (v13 == v9)
        {
LABEL_38:
          sub_1D335665C(v60, v61, v62);
          return v10;
        }
      }

      else
      {
        v9 = v47;
        a1 = v48;
        result = v57;
        if (v55)
        {
          goto LABEL_47;
        }

        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        v26 = 1 << *(v48 + 32);
        if (v57 >= v26)
        {
          goto LABEL_42;
        }

        v27 = v57 >> 6;
        v28 = *(v38 + 8 * (v57 >> 6));
        if (((v28 >> v57) & 1) == 0)
        {
          goto LABEL_43;
        }

        if (*(v48 + 36) != v56)
        {
          goto LABEL_44;
        }

        v29 = v28 & (-2 << (v57 & 0x3F));
        if (v29)
        {
          v26 = __clz(__rbit64(v29)) | v57 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v30 = v27 << 6;
          v31 = v27 + 1;
          v32 = (v37 + 8 * v27);
          while (v31 < (v26 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              result = sub_1D335665C(v57, v56, 0);
              v26 = __clz(__rbit64(v33)) + v30;
              goto LABEL_37;
            }
          }

          result = sub_1D335665C(v57, v56, 0);
        }

LABEL_37:
        v35 = *(a1 + 36);
        v60 = v26;
        v61 = v35;
        v62 = 0;
        if (v13 == v9)
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

char *sub_1D33CC9C8(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1D3359DD4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
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
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D33CCABC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1D33DEE14();
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

  v13 = sub_1D33DEE14();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D33D2C88(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1D33D2EC8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_1D33CCBC4(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D33DEE14();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1D33DEE14();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D33D2C88(result, 1);
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
    return result;
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
  return result;
}

uint64_t sub_1D33CCCBC(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1D33DEE14();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_1D33DEE14();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1D33D2C88(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = ((*(v3 + 0x18) >> 1) - v13);
  result = sub_1D33D4080(&v34, (v3 + 8 * v13 + 32), v14, v8, &unk_1EDEC0120, 0x1E69D8C00, &unk_1EDEC0040);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_1D331FEEC(v34);
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!sub_1D33DEE54())
    {
      goto LABEL_11;
    }

    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1D33DE8D4();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

id sub_1D33CD05C(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for RequestsHandler()) init];
  qword_1EDEBFC50 = result;
  return result;
}

id static RequestsHandler.shared.getter()
{
  if (qword_1EDEBFC40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEBFC50;

  return v1;
}

uint64_t sub_1D33CD0E8(uint64_t a1, char **a2)
{
  v40 = a2;
  v3 = sub_1D33DE374();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v35 - v8;
  v9 = *a1;
  v10 = *a1 + 64;
  v11 = 1 << *(*a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(*a1 + 64);
  v14 = (v11 + 63) >> 6;
  v42 = v4 + 32;
  v43 = v4 + 16;
  v41 = (v4 + 8);

  for (i = 0; v13; *(v32 + 5) = v33)
  {
LABEL_10:
    while (1)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = v44;
      (*(v4 + 16))(v44, v9[6] + *(v4 + 72) * (v18 | (i << 6)), v3);
      (*(v4 + 32))(v7, v19, v3);
      if (v9[2])
      {
        v20 = sub_1D33B9198(v7);
        if ((v21 & 1) != 0 && *(v9[7] + v20) == 1)
        {
          break;
        }
      }

      result = (*v41)(v7, v3);
      if (!v13)
      {
        goto LABEL_6;
      }
    }

    v36 = v3;
    v22 = sub_1D33DE364();
    v37 = v23;
    v38 = v22;
    v24 = v40;
    v25 = *v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v25;
    *v24 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1D3359DD4(0, *(v25 + 2) + 1, 1, v25);
      *v40 = v27;
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    v39 = v29 + 1;
    v3 = v36;
    if (v29 >= v28 >> 1)
    {
      v34 = sub_1D3359DD4((v28 > 1), v39, 1, v27);
      *v40 = v34;
    }

    result = (*v41)(v7, v3);
    v30 = *v40;
    v31 = v38;
    *(v30 + 2) = v39;
    v32 = &v30[16 * v29];
    v33 = v37;
    *(v32 + 4) = v31;
  }

LABEL_6:
  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v10 + 8 * v17);
    ++i;
    if (v13)
    {
      i = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_1D33CD3DC()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryController;
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryController);
  }

  else
  {
    v4 = [objc_opt_self() callHistoryControllerWithCoalescingStrategy:1 options:7];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D33CD480(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_1D33D66D0(a2 & 1);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_1D33CD4E0()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_filterSpamEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D33CD524()
{
  result = sub_1D33DE784();
  qword_1EC762110 = result;
  return result;
}

uint64_t sub_1D33CD55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33CD5F8, 0, 0);
}

uint64_t sub_1D33CD5F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8AF8]) init];
  v0[5] = v3;
  v4 = sub_1D33DE9B4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1D33DE974();
  v5 = v3;
  v6 = v2;
  v7 = sub_1D33DE964();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  v8[5] = v6;
  v10 = sub_1D333E39C(0, 0, v1, &unk_1D33E55E0, v8);
  v0[6] = v10;
  v11 = swift_task_alloc();
  v0[7] = v11;
  v12 = sub_1D331DA18(0, &qword_1EDEBEEB0, 0x1E69D8AF8);
  *v11 = v0;
  v11[1] = sub_1D33CD7A0;
  v13 = v0[2];

  return MEMORY[0x1EEE6DA40](v13, v10, v12);
}

uint64_t sub_1D33CD7A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D33CD8B8, 0, 0);
}

uint64_t sub_1D33CD8B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D33CD920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1D33DE974();
  v5[5] = sub_1D33DE964();
  v7 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D33CD9BC, v7, v6);
}

uint64_t sub_1D33CD9BC()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  [v2 setDelegate_];
  v4 = *(v1 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler__configurationProvider);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler__configurationProvider) = v2;
  v5 = v2;

  *v3 = v5;
  v8 = v0[1];
  v6 = v5;

  return v8();
}

uint64_t sub_1D33CDB9C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v54 = a3;
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v52 - v5;
  v6 = sub_1D33DE374();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v52 - v10;
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v61 = &v52 - v10;
  if (v12)
  {
    do
    {
      v13 = 0;
      v14 = 0;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v59 = a1 & 0xC000000000000001;
      v15 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v59)
        {
          v16 = MEMORY[0x1D38B75D0](v13, a1);
        }

        else
        {
          if (v13 >= *(v58 + 16))
          {
            goto LABEL_29;
          }

          v16 = *(a1 + 8 * v13 + 32);
        }

        v11 = v16;
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if ([v16 isIncoming] && (v18 = objc_msgSend(v11, sel_remoteParticipantHandles)) != 0)
        {
          v19 = v18;
          v57 = v14;
          sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
          sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
          v20 = sub_1D33DEA54();

          v14 = v57;
          v21 = sub_1D33CC3C0(v20);
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
        }

        v11 = *(v21 + 16);
        v22 = *(v15 + 2);
        v23 = &v11[v22];
        if (__OFADD__(v22, v11))
        {
          goto LABEL_30;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v23 <= *(v15 + 3) >> 1)
        {
          if (*(v21 + 16))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v22 <= v23)
          {
            v25 = &v11[v22];
          }

          else
          {
            v25 = v22;
          }

          v15 = sub_1D3359B40(isUniquelyReferenced_nonNull_native, v25, 1, v15);
          if (*(v21 + 16))
          {
LABEL_23:
            if ((*(v15 + 3) >> 1) - *(v15 + 2) < v11)
            {
              goto LABEL_32;
            }

            swift_arrayInitWithCopy();

            if (v11)
            {
              v26 = *(v15 + 2);
              v27 = __OFADD__(v26, v11);
              v28 = &v11[v26];
              if (v27)
              {
                goto LABEL_33;
              }

              *(v15 + 2) = v28;
            }

            goto LABEL_5;
          }
        }

        if (v11)
        {
          goto LABEL_31;
        }

LABEL_5:
        ++v13;
        v11 = v61;
        if (v17 == v12)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      result = sub_1D33DEE14();
      v12 = result;
      v61 = v11;
    }

    while (result);
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_36:
  v59 = *(v15 + 2);
  if (v59)
  {
    v29 = 0;
    v30 = v55 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown;
    v58 = v62 + 16;
    v56 = (v62 + 8);
    v31 = (v62 + 32);
    v32 = MEMORY[0x1E69E7CC0];
    v57 = (v62 + 32);
    while (v29 < *(v15 + 2))
    {
      v33 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v34 = *(v62 + 72);
      (*(v62 + 16))(v11, &v15[v33 + v34 * v29], v63);
      os_unfair_lock_lock(v30);
      if (*(*(v30 + 8) + 16) && (sub_1D33B9198(v11), (v35 & 1) != 0))
      {
        os_unfair_lock_unlock(v30);
        result = (*v56)(v11, v63);
      }

      else
      {
        os_unfair_lock_unlock(v30);
        v36 = *v31;
        (*v31)(v60, v11, v63);
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v64 = v32;
        if ((v37 & 1) == 0)
        {
          sub_1D334B408(0, *(v32 + 16) + 1, 1);
          v32 = v64;
        }

        v39 = *(v32 + 16);
        v38 = *(v32 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1D334B408((v38 > 1), v39 + 1, 1);
          v32 = v64;
        }

        *(v32 + 16) = v39 + 1;
        v40 = v32 + v33 + v39 * v34;
        v31 = v57;
        result = v36(v40, v60, v63);
        v11 = v61;
      }

      if (v59 == ++v29)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_49:

  v41 = sub_1D33676A8(v32);

  v42 = *(v41 + 16);
  if (!v42)
  {

    v43 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_52;
    }

    goto LABEL_54;
  }

  v43 = sub_1D332FF34(*(v41 + 16), 0, &qword_1EC760DA0, &qword_1D33E1AB8, MEMORY[0x1E696EDC8]);
  v44 = sub_1D33D3DBC(&v64, &v43[(*(v62 + 80) + 32) & ~*(v62 + 80)], v42, v41, MEMORY[0x1E696EDC8]);
  result = sub_1D331FEEC(v64);
  if (v44 == v42)
  {
    if (*(v43 + 2))
    {
LABEL_52:
      v45 = sub_1D33DE9B4();
      v46 = v52;
      (*(*(v45 - 8) + 56))(v52, 1, 1, v45);
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D33DE974();

      v48 = v54;

      v49 = sub_1D33DE964();
      v50 = swift_allocObject();
      v51 = MEMORY[0x1E69E85E0];
      v50[2] = v49;
      v50[3] = v51;
      v50[4] = v47;
      v50[5] = v43;
      v50[6] = v53;
      v50[7] = v48;

      sub_1D333DD88(0, 0, v46, &unk_1D33E54A0, v50);
    }

LABEL_54:
    v53(result);
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1D33CE284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v7[10] = swift_task_alloc();
  v7[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761F98, &qword_1D33E55F0);
  v7[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FA0, &qword_1D33E55F8);
  v7[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FA8, &qword_1D33E5600);
  v7[14] = swift_task_alloc();
  sub_1D33DE974();
  v7[15] = sub_1D33DE964();
  v9 = sub_1D33DE914();
  v7[16] = v9;
  v7[17] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D33CE404, v9, v8);
}

uint64_t sub_1D33CE404()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v3 = sub_1D33DE464();
    v0[19] = __swift_project_value_buffer(v3, qword_1EDEC1480);

    v4 = sub_1D33DE444();
    v5 = sub_1D33DEAF4();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[7];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 134349056;
      *(v8 + 4) = *(v7 + 16);

      _os_log_impl(&dword_1D331A000, v4, v5, "Querying trust scores for handle count %{public}ld", v8, 0xCu);
      MEMORY[0x1D38B81C0](v8, -1, -1);
    }

    else
    {
    }

    v12 = v0[13];
    v11 = v0[14];
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_communicationTrustHandling), *(v2 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_communicationTrustHandling + 24));
    v13 = sub_1D33DDFE4();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = sub_1D33DE044();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = swift_task_alloc();
    v0[20] = v15;
    *v15 = v0;
    v15[1] = sub_1D33CE6D4;
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[7];

    return MEMORY[0x1EEDF61E8](v18, v16, v17);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1D33CE6D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  sub_1D331E880(v6, &qword_1EC761FA0, &qword_1D33E55F8);
  sub_1D331E880(v5, &qword_1EC761FA8, &qword_1D33E5600);
  v7 = *(v3 + 136);
  v8 = *(v3 + 128);
  if (v1)
  {
    v9 = sub_1D33CED40;
  }

  else
  {
    v9 = sub_1D33CE878;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

unint64_t sub_1D33CE878()
{

  v1 = sub_1D33DE444();
  v2 = sub_1D33DEAF4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D331A000, v1, v2, "Finished querying trust scores", v3, 2u);
    MEMORY[0x1D38B81C0](v3, -1, -1);
  }

  v4 = v0[21];
  v5 = v0[18];
  v50 = v0[11];

  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v4 + 64);
  lock = (v5 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown);
  v10 = (63 - v8) >> 6;
  v51 = v4;

  v12 = 0;
  v48 = v10;
  v49 = v4 + 64;
  v54 = v0;
  while (v9)
  {
LABEL_16:
    v16 = v0[12];
    v17 = __clz(__rbit64(v9)) | (v12 << 6);
    v18 = *(v51 + 48);
    v19 = sub_1D33DE374();
    v20 = *(v19 - 8);
    v52 = *(v20 + 72);
    v53 = *(v20 + 16);
    v53(v16, v18 + v52 * v17, v19);
    *(v16 + *(v50 + 48)) = *(*(v51 + 56) + 8 * v17);
    os_unfair_lock_lock(lock);
    v21 = sub_1D33DDFF4();
    v22 = sub_1D33DDFF4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *&lock[2]._os_unfair_lock_opaque;
    *&lock[2]._os_unfair_lock_opaque = 0x8000000000000000;
    result = sub_1D33B9198(v16);
    v26 = v24[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    v30 = v25;
    if (v24[3] < v29)
    {
      v31 = v54[12];
      sub_1D3396A2C(v29, isUniquelyReferenced_nonNull_native);
      result = sub_1D33B9198(v31);
      if ((v30 & 1) != (v32 & 1))
      {

        return sub_1D33DF1E4();
      }

LABEL_21:
      v33 = v21 == v22;
      if (v30)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v39 = result;
    sub_1D33994C4();
    result = v39;
    v33 = v21 == v22;
    if (v30)
    {
LABEL_6:
      v13 = v33;
      *(v24[7] + result) = v13;
      v0 = v54;
      goto LABEL_10;
    }

LABEL_22:
    v34 = v33;
    v0 = v54;
    v35 = v54[12];
    v24[(result >> 6) + 8] |= 1 << result;
    v36 = result;
    result = (v53)(v24[6] + result * v52, v35, v19);
    *(v24[7] + v36) = v34;
    v37 = v24[2];
    v28 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v28)
    {
      goto LABEL_37;
    }

    v24[2] = v38;
LABEL_10:
    v9 &= v9 - 1;
    v14 = v0[12];
    *&lock[2]._os_unfair_lock_opaque = v24;

    os_unfair_lock_unlock(lock);
    result = sub_1D331E880(v14, &qword_1EC761F98, &qword_1D33E55F0);
    v10 = v48;
    v6 = v49;
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v15 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v15);
    ++v12;
    if (v9)
    {
      v12 = v15;
      goto LABEL_16;
    }
  }

  v40 = v0[18];
  v41 = v0[9];
  v42 = v0[10];
  v43 = v0[8];
  v44 = sub_1D33DE9B4();
  (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v43;
  v45[5] = v41;
  v45[6] = v40;

  v46 = v40;
  sub_1D3387F00(0, 0, v42, &unk_1D33E5610, v45);

  sub_1D331E880(v42, &unk_1EC7610E0, &qword_1D33E16C0);

  v47 = v0[1];

  return v47();
}

uint64_t sub_1D33CED40()
{
  v23 = v0;
  v1 = v0[22];

  v2 = v1;
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAD4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v0[5] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v9 = sub_1D33DE804();
    v11 = sub_1D3328B48(v9, v10, &v22);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D331A000, v3, v4, "Failed to batch fetch trust scores with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1D38B81C0](v7, -1, -1);
    MEMORY[0x1D38B81C0](v6, -1, -1);
  }

  else
  {
    v12 = v0[22];
  }

  v13 = v0[18];
  v14 = v0[9];
  v15 = v0[10];
  v16 = v0[8];
  v17 = sub_1D33DE9B4();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v14;
  v18[6] = v13;

  v19 = v13;
  sub_1D3387F00(0, 0, v15, &unk_1D33E5610, v18);

  sub_1D331E880(v15, &unk_1EC7610E0, &qword_1D33E16C0);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D33CEFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1D33DDAE4();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33CF090, 0, 0);
}

uint64_t sub_1D33CF090()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_hasFinishedFirstCacheUpdate);
  *(v1 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_hasFinishedFirstCacheUpdate) = 1;
  if (v2 != 1)
  {
    v3 = [objc_opt_self() defaultCenter];
    if (qword_1EC760978 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = qword_1EC762110;
    sub_1D33DDAC4();
    v8 = sub_1D33DDAB4();
    (*(v5 + 8))(v4, v6);
    [v3 postNotification_];
  }

  v9 = *(v0 + 8);

  return v9();
}

id sub_1D33CF1E8()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___contactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
    [v4 setIncludeLocalContacts_];
    [v4 setIncludeAcceptedIntroductions_];
    v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1D33CF2B0(void *a1)
{
  v1 = [a1 remoteParticipantHandles];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
  sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
  v3 = sub_1D33DEA54();

  v4 = sub_1D335DC7C(v3);

  if (!v4)
  {
    return 1;
  }

  v5 = sub_1D33CF1E8();
  v6 = [v4 value];
  if (!v6)
  {
    sub_1D33DE7B4();
    v6 = sub_1D33DE784();
  }

  v7 = [v5 contactForDestinationId_];

  if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D33CF3E0(char a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - v9;
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v11 = sub_1D33DE464();
  __swift_project_value_buffer(v11, qword_1EDEC1480);
  v12 = sub_1D33DE444();
  v13 = sub_1D33DEAF4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&dword_1D331A000, v12, v13, "queryRequests unreadOnly: %{BOOL}d...", v14, 8u);
    MEMORY[0x1D38B81C0](v14, -1, -1);
  }

  v15 = v4[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isRequestsEnabledOverride];
  if (v15 != 2)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v17 = sub_1D33DE9B4();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v4;
    *(v18 + 40) = a1 & 1;
    *(v18 + 48) = a2;
    *(v18 + 56) = a3;
    v19 = v4;

    sub_1D3387F00(0, 0, v10, &unk_1D33E54B0, v18);

    return sub_1D331E880(v10, &unk_1EC7610E0, &qword_1D33E16C0);
  }

  if (([*&v4[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_featureFlags] junkFilteringEnabled] & 1) != 0 && objc_msgSend(objc_opt_self(), sel_isFilterAsNewCallersEnabledForPhone))
  {
    goto LABEL_12;
  }

LABEL_8:
  if (a1)
  {
    v20[1] = 0;
    sub_1D33DE4E4();
  }

  return a2(0, 0);
}

uint64_t sub_1D33CF67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 232) = a5;
  *(v7 + 56) = a4;
  *(v7 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761F98, &qword_1D33E55F0);
  *(v7 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FA0, &qword_1D33E55F8);
  *(v7 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FA8, &qword_1D33E5600);
  *(v7 + 104) = swift_task_alloc();
  v8 = sub_1D33DE344();
  *(v7 + 112) = v8;
  *(v7 + 120) = *(v8 - 8);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  v9 = sub_1D33DE374();
  *(v7 + 144) = v9;
  *(v7 + 152) = *(v9 - 8);
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33CF870, 0, 0);
}

uint64_t sub_1D33CF870()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isQueryingRequestCount;
  *(v0 + 184) = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isQueryingRequestCount;
  if (*(v1 + v2))
  {
    if (qword_1EDEBFD70 == -1)
    {
LABEL_3:
      v3 = sub_1D33DE464();
      __swift_project_value_buffer(v3, qword_1EDEC1480);
      v4 = sub_1D33DE444();
      v5 = sub_1D33DEAF4();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1D331A000, v4, v5, "Ignoring fetchRequestCount, already have query in progress", v6, 2u);
        MEMORY[0x1D38B81C0](v6, -1, -1);
      }

      v7 = *(v0 + 232);

      if (v7 == 1)
      {
        v8 = *(v0 + 64);
        sub_1D33DE4F4();
        v8(*(v0 + 48), 0);
      }

LABEL_28:

      v22 = *(v0 + 8);

      return v22();
    }

LABEL_33:
    swift_once();
    goto LABEL_3;
  }

  v9 = *(v0 + 232);
  *(v1 + v2) = 1;
  v10 = sub_1D33CD3DC();
  v85 = v0;
  if (v9 == 1)
  {
    v11 = sub_1D33CD460();
  }

  else
  {
    v11 = sub_1D33CD470();
  }

  v12 = v11;
  v13 = [v10 callsWithPredicate:v11 limit:objc_msgSend(*(*(v0 + 56) + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryController) offset:sel_callHistoryControllerCallHistoryFetchLimit) batchSize:{0, 0x7FFFFFFFFFFFFFFFLL}];

  if (!v13)
  {
    if (*(v0 + 232))
    {
      *(v0 + 16) = 0;
      sub_1D33DE4E4();
    }

    (*(v0 + 64))(0, 0);
    *(v1 + v2) = 0;
    goto LABEL_28;
  }

  sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v14 = sub_1D33DE8B4();

  v89 = MEMORY[0x1E69E7CC0];
  if (v14 >> 62)
  {
    v15 = sub_1D33DEE14();
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_35:
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_36;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_35;
  }

LABEL_13:
  v16 = 0;
  v0 = v14 & 0xC000000000000001;
  v17 = &off_1E843B000;
  do
  {
    if (v0)
    {
      v18 = MEMORY[0x1D38B75D0](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v18 = *(v14 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (![v18 isIncoming] || (objc_msgSend(v19, v17[497]) & 1) != 0)
    {
    }

    else
    {
      sub_1D33DEF84();
      sub_1D33DEFB4();
      sub_1D33DEFC4();
      sub_1D33DEF94();
      v17 = &off_1E843B000;
    }

    ++v16;
  }

  while (v20 != v15);
  v21 = v89;
LABEL_36:

  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
    goto LABEL_68;
  }

  v24 = *(v21 + 16);
  if (v24)
  {
LABEL_39:
    v25 = 0;
    v26 = v85[15];
    v88 = v21 & 0xC000000000000001;
    v87 = v21 + 32;
    v73 = *MEMORY[0x1E696ED80];
    v78 = (v26 + 104);
    v77 = *MEMORY[0x1E696EDA0];
    v75 = (v26 + 8);
    v76 = (v26 + 16);
    v86 = MEMORY[0x1E69E7CC0];
    v79 = v85[19];
    v80 = v21;
    v83 = (v79 + 32);
    v84 = v24;
    v74 = *MEMORY[0x1E696ED90];
    while (1)
    {
      if (v88)
      {
        v27 = MEMORY[0x1D38B75D0](v25, v21);
      }

      else
      {
        if (v25 >= *(v21 + 16))
        {
          goto LABEL_67;
        }

        v27 = *(v87 + 8 * v25);
      }

      v28 = v27;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v24 = sub_1D33DEE14();
        if (!v24)
        {
          break;
        }

        goto LABEL_39;
      }

      v30 = [v27 remoteParticipantHandles];
      if (v30)
      {
        v31 = v30;
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
        v32 = sub_1D33DEA54();

        v33 = v32 & 0xC000000000000001;
        if ((v32 & 0xC000000000000001) != 0)
        {
          v34 = sub_1D33DEDB4();
          v36 = v35;
          v37 = sub_1D33DEE74();
          v39 = v38;
          v40 = MEMORY[0x1D38B7470](v34, v36, v37, v38);
          sub_1D335665C(v37, v39, 1);
          if ((v40 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v41 = 0;
          v42 = (v32 + 56);
          v34 = 1 << *(v32 + 32);
          v43 = (v34 + 63) >> 6;
          while (1)
          {
            v45 = *v42++;
            v44 = v45;
            if (v45)
            {
              break;
            }

            v41 -= 64;
            if (!--v43)
            {
              v36 = *(v32 + 36);
              goto LABEL_55;
            }
          }

          v46 = __clz(__rbit64(v44));
          v36 = *(v32 + 36);
          if (v46 - v34 != v41)
          {
            v34 = v46 - v41;
LABEL_57:
            sub_1D33D356C(v34, v36, v33 != 0, v32, &qword_1EDEBEE90, 0x1E6993578);
            v48 = v47;
            sub_1D335665C(v34, v36, v33 != 0);

            v49 = [v48 type];
            v50 = v77;
            if (v49 >= 2)
            {
              v50 = v74;
              if (v49 != 3)
              {
                v50 = v73;
              }
            }

            v51 = v85[21];
            v52 = v85[17];
            v81 = v85[18];
            v82 = v85[22];
            v53 = v85[16];
            v54 = v85[14];
            (*v78)(v52, v50, v54);
            (*v76)(v53, v52, v54);
            v55 = [v48 value];
            sub_1D33DE7B4();

            sub_1D33DE354();
            (*v75)(v52, v54);
            v56 = *v83;
            (*v83)(v82, v51, v81);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v86 = sub_1D3359B40(0, *(v86 + 2) + 1, 1, v86);
            }

            v24 = v84;
            v58 = *(v86 + 2);
            v57 = *(v86 + 3);
            if (v58 >= v57 >> 1)
            {
              v86 = sub_1D3359B40((v57 > 1), v58 + 1, 1, v86);
            }

            v59 = v85[22];
            v60 = v85[18];
            *(v86 + 2) = v58 + 1;
            v56(&v86[((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v58], v59, v60);
            v21 = v80;
            goto LABEL_41;
          }
        }

LABEL_55:
        sub_1D335665C(v34, v36, v33 != 0);

        v24 = v84;
      }

      else
      {
      }

LABEL_41:
      if (v25 == v24)
      {
        goto LABEL_70;
      }
    }
  }

  v86 = MEMORY[0x1E69E7CC0];
LABEL_70:
  v85[24] = v86;

  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v61 = sub_1D33DE464();
  v85[25] = __swift_project_value_buffer(v61, qword_1EDEC1480);
  v62 = sub_1D33DE444();
  v63 = sub_1D33DEAF4();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_1D331A000, v62, v63, "RequestsHandler about to query into CTS", v64, 2u);
    MEMORY[0x1D38B81C0](v64, -1, -1);
  }

  v65 = v85[12];
  v66 = v85[13];
  v67 = v85[7];

  __swift_project_boxed_opaque_existential_1((v67 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_communicationTrustHandling), *(v67 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_communicationTrustHandling + 24));
  v68 = sub_1D33DDFE4();
  (*(*(v68 - 8) + 56))(v66, 1, 1, v68);
  v69 = sub_1D33DE044();
  (*(*(v69 - 8) + 56))(v65, 1, 1, v69);
  v70 = swift_task_alloc();
  v85[26] = v70;
  *v70 = v85;
  v70[1] = sub_1D33D0294;
  v72 = v85[12];
  v71 = v85[13];

  return MEMORY[0x1EEDF61E8](v86, v71, v72);
}

uint64_t sub_1D33D0294(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v6 = v3 + 12;
    v4 = v3[12];
    v5 = v6[1];

    sub_1D331E880(v4, &qword_1EC761FA0, &qword_1D33E55F8);
    sub_1D331E880(v5, &qword_1EC761FA8, &qword_1D33E5600);
    v7 = sub_1D33D09C4;
  }

  else
  {
    v8 = v3[13];
    sub_1D331E880(v3[12], &qword_1EC761FA0, &qword_1D33E55F8);
    sub_1D331E880(v8, &qword_1EC761FA8, &qword_1D33E5600);
    v7 = sub_1D33D0414;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

unint64_t sub_1D33D0414(uint64_t a1)
{
  v2 = sub_1D33DE444();
  v3 = sub_1D33DEAF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D331A000, v2, v3, "CTS query finished", v4, 2u);
    MEMORY[0x1D38B81C0](v4, -1, -1);
  }

  v5 = *(v1 + 216);
  v6 = *(v1 + 152);
  v63 = *(v1 + 80);
  v7 = *(v1 + 56);

  v8 = v5 + 64;
  v9 = -1;
  v10 = -1 << *(v5 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v5 + 64);
  v12 = v7 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown;
  v13 = (63 - v10) >> 6;
  v64 = v6;

  v15 = 0;
  v65 = 0;
  v61 = v5 + 64;
  v62 = v5;
  v59 = v12;
  v60 = v13;
  while (v11)
  {
LABEL_12:
    v18 = *(v1 + 88);
    v19 = __clz(__rbit64(v11)) | (v15 << 6);
    v20 = *(v64 + 72);
    v21 = *(v64 + 16);
    v21(v18, *(v5 + 48) + v20 * v19, *(v1 + 144));
    *(v18 + *(v63 + 48)) = *(*(v5 + 56) + 8 * v19);
    os_unfair_lock_lock(v12);
    v22 = *(v12 + 8);
    v66 = v20;
    v67 = v21;
    if (*(v22 + 16) && (v23 = sub_1D33B9198(*(v1 + 88)), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + v23);
    }

    else
    {
      v25 = 2;
    }

    v26 = *(v1 + 88);
    v27 = sub_1D33DDFF4();
    v28 = sub_1D33DDFF4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v12 + 8);
    *(v12 + 8) = 0x8000000000000000;
    result = sub_1D33B9198(v26);
    v32 = v30[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_52;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v62;
        if (v31)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v39 = v25;
        v40 = result;
        sub_1D33994C4();
        result = v40;
        v25 = v39;
        v12 = v59;
        v5 = v62;
        if (v36)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v37 = *(v1 + 88);
      sub_1D3396A2C(v35, isUniquelyReferenced_nonNull_native);
      result = sub_1D33B9198(v37);
      if ((v36 & 1) != (v38 & 1))
      {

        return sub_1D33DF1E4();
      }

      v12 = v59;
      v5 = v62;
      if (v36)
      {
LABEL_23:
        *(v30[7] + result) = v27 == v28;
        goto LABEL_27;
      }
    }

    v41 = *(v1 + 144);
    v42 = *(v1 + 88);
    v30[(result >> 6) + 8] |= 1 << result;
    v43 = result;
    result = v67(v30[6] + result * v66, v42, v41);
    *(v30[7] + v43) = v27 == v28;
    v44 = v30[2];
    v34 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v34)
    {
      goto LABEL_53;
    }

    v30[2] = v45;
    v12 = v59;
LABEL_27:
    *(v12 + 8) = v30;

    if (v25 != 2)
    {
      v65 |= (v27 == v28) ^ v25;
    }

    v13 = v60;
    v8 = v61;
    v11 &= v11 - 1;
    v16 = *(v1 + 88);
    os_unfair_lock_unlock(v12);
    result = sub_1D331E880(v16, &qword_1EC761F98, &qword_1D33E55F0);
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }

    if (v17 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v17);
    ++v15;
    if (v11)
    {
      v15 = v17;
      goto LABEL_12;
    }
  }

  v46 = *(v1 + 192);

  v47 = *(v46 + 16);
  v48 = *(v1 + 216);
  if (!v47)
  {

    v49 = 0;
    goto LABEL_43;
  }

  v49 = 0;
  v50 = *(v1 + 152);
  v51 = *(v1 + 192) + ((*(v50 + 80) + 32) & ~*(v50 + 80));
  v52 = *(v64 + 72);
  v53 = *(v64 + 16);
  v54 = (v50 + 8);
  v53(*(v1 + 160), v51, *(v1 + 144));
  while (2)
  {
    if (!*(v48 + 16))
    {
      v55 = *v54;
LABEL_32:
      v55(*(v1 + 160), *(v1 + 144));
LABEL_33:
      v51 += v52;
      if (!--v47)
      {
        goto LABEL_41;
      }

      v53(*(v1 + 160), v51, *(v1 + 144));
      continue;
    }

    break;
  }

  sub_1D33B9198(*(v1 + 160));
  v55 = *v54;
  if ((v56 & 1) == 0)
  {
    goto LABEL_32;
  }

  v55(*(v1 + 160), *(v1 + 144));
  v57 = sub_1D33DDFF4();
  if (v57 != sub_1D33DDFF4())
  {
    goto LABEL_33;
  }

  v34 = __OFADD__(v49++, 1);
  if (!v34)
  {
    goto LABEL_33;
  }

  __break(1u);
LABEL_41:

LABEL_43:

  if (*(v1 + 232))
  {
    *(v1 + 40) = v49;
    sub_1D33DE4E4();
  }

  (*(v1 + 64))(v49, v65 & 1);
  *(*(v1 + 56) + *(v1 + 184)) = 0;

  v58 = *(v1 + 8);

  return v58();
}

uint64_t sub_1D33D09C4()
{
  v16 = v0;
  v1 = *(v0 + 224);
  v2 = v1;
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAD4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 224);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    *(v0 + 32) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    v9 = sub_1D33DE804();
    v11 = sub_1D3328B48(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D331A000, v3, v4, "Failed to batch fetch trust scores with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1D38B81C0](v7, -1, -1);
    MEMORY[0x1D38B81C0](v6, -1, -1);
  }

  if (*(v0 + 232) == 1)
  {
    *(v0 + 24) = 0;
    sub_1D33DE4E4();
  }

  v12 = *(v0 + 224);
  (*(v0 + 64))(0, 0);

  *(*(v0 + 56) + *(v0 + 184)) = 0;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D33D0BE0(void *a1, int a2)
{
  LODWORD(v66) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC762008, &qword_1D33E5648);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - v8;
  v10 = sub_1D33DE374();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v58 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v58 - v21;
  if (![a1 isIncoming])
  {
    goto LABEL_22;
  }

  v64 = v9;
  v65 = v20;
  v23 = [a1 remoteParticipantHandles];
  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = v23;
  v61 = v11;
  v62 = v10;
  v63 = v22;
  sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
  sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
  v25 = sub_1D33DEA54();

  v26 = (v25 & 0xC000000000000001) != 0 ? sub_1D33DEE14() : *(v25 + 16);

  if (v26 != 1)
  {
    goto LABEL_22;
  }

  v27 = [a1 remoteParticipantHandles];
  if (!v27)
  {
    goto LABEL_22;
  }

  v28 = v27;
  v29 = sub_1D33DEA54();

  v30 = sub_1D335DC7C(v29);

  if (!v30)
  {
    goto LABEL_22;
  }

  type metadata accessor for RequestsHandler();
  v31 = v63;
  sub_1D33D128C(v30);
  v32 = v2 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown));
  v33 = *(v32 + 8);
  if (!*(v33 + 16) || (v34 = sub_1D33B9198(v31), (v35 & 1) == 0))
  {
    os_unfair_lock_unlock(v32);
    v37 = v61;
    if (v66)
    {
      v36 = sub_1D33D454C(v31);
      os_unfair_lock_lock(v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *(v32 + 8);
      *(v32 + 8) = 0x8000000000000000;
      sub_1D33986E8(v36 & 1, v31, isUniquelyReferenced_nonNull_native);
      *(v32 + 8) = v67;

      os_unfair_lock_unlock(v32);

      (*(v37 + 8))(v31, v62);
      return v36 & 1;
    }

    v66 = v30;
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v39 = sub_1D33DE464();
    __swift_project_value_buffer(v39, qword_1EDEC1480);
    v40 = *(v37 + 16);
    v41 = v62;
    v40(v65, v31, v62);
    v42 = sub_1D33DE444();
    v43 = sub_1D33DEAD4();
    if (os_log_type_enabled(v42, v43))
    {
      v60 = v43;
      v44 = v37;
      v45 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v67 = v59;
      *v45 = 136315138;
      v46 = v64;
      v40(v64, v65, v41);
      (*(v44 + 56))(v46, 0, 1, v41);
      sub_1D33D6C34(v46, v7);
      if ((*(v44 + 48))(v7, 1, v41) == 1)
      {
        sub_1D331E880(v7, &qword_1EC762008, &qword_1D33E5648);
        sub_1D331E880(v46, &qword_1EC762008, &qword_1D33E5648);
        v47 = v41;
        v48 = *(v44 + 8);
        v48(v65, v47);
        v49 = 0xE300000000000000;
        v50 = 7104878;
      }

      else
      {
        (*(v44 + 32))(v17, v7, v41);
        v40(v14, v17, v41);
        v52 = sub_1D33DE804();
        v49 = v53;
        v54 = v46;
        v47 = v41;
        v48 = *(v44 + 8);
        v48(v17, v47);
        sub_1D331E880(v54, &qword_1EC762008, &qword_1D33E5648);
        v48(v65, v47);
        v50 = v52;
      }

      v55 = sub_1D3328B48(v50, v49, &v67);

      *(v45 + 4) = v55;
      _os_log_impl(&dword_1D331A000, v42, v60, "Handle %s is missing from cache", v45, 0xCu);
      v56 = v59;
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x1D38B81C0](v56, -1, -1);
      MEMORY[0x1D38B81C0](v45, -1, -1);

      v48(v63, v47);
    }

    else
    {

      v51 = *(v37 + 8);
      v51(v65, v41);
      v51(v31, v41);
    }

LABEL_22:
    v36 = 0;
    return v36 & 1;
  }

  v36 = *(*(v33 + 56) + v34);
  os_unfair_lock_unlock(v32);
  (*(v61 + 8))(v31, v62);

  return v36 & 1;
}

uint64_t sub_1D33D128C(void *a1)
{
  v2 = sub_1D33DE344();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = [a1 type];
  if (v9 > 3)
  {
    v10 = MEMORY[0x1E696ED80];
  }

  else
  {
    v10 = qword_1E843B988[v9];
  }

  (*(v3 + 104))(v8, *v10, v2);
  (*(v3 + 16))(v6, v8, v2);
  v11 = [a1 value];
  sub_1D33DE7B4();

  sub_1D33DE354();
  return (*(v3 + 8))(v8, v2);
}

void sub_1D33D1434(void *a1)
{
  v2 = sub_1D33DDD34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 remoteParticipantHandles];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v9 = sub_1D33DEA54();

    v10 = sub_1D335DC7C(v9);

    if (v10)
    {
      if (qword_1EDEBFD70 != -1)
      {
        swift_once();
      }

      v11 = sub_1D33DE464();
      v12 = __swift_project_value_buffer(v11, qword_1EDEC1480);
      v13 = v10;
      v92 = v12;
      v14 = sub_1D33DE444();
      v15 = sub_1D33DEAF4();

      v16 = os_log_type_enabled(v14, v15);
      v90 = a1;
      v91 = v8;
      if (v16)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock = v18;
        *v17 = 136315138;
        v99 = v13;
        v19 = v13;
        v20 = sub_1D33DE804();
        v22 = sub_1D3328B48(v20, v21, &aBlock);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_1D331A000, v14, v15, "[RequestsHandler] acceptRecentCall %s)", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1D38B81C0](v18, -1, -1);
        MEMORY[0x1D38B81C0](v17, -1, -1);
      }

      if (_TUIsInternalInstall())
      {
        v23 = objc_allocWithZone(MEMORY[0x1E695E000]);
        v24 = sub_1D33DE784();
        v25 = [v23 initWithSuiteName_];

        if (v25)
        {
          v26 = [v13 value];
          if (!v26)
          {
            sub_1D33DE7B4();
            v26 = sub_1D33DE784();
          }

          v27 = sub_1D33DE784();
          [v25 setValue:v26 forKey:v27];
        }
      }

      v28 = [v13 type];
      if (v28 == 2)
      {
        v29 = [v13 value];
        v30 = MEMORY[0x1E6998F60];
        if (v29)
        {
LABEL_15:
          v31 = v29;
          goto LABEL_18;
        }
      }

      else
      {
        if (v28 != 3)
        {
LABEL_25:
          v66 = v13;
          v67 = sub_1D33DE444();
          v68 = sub_1D33DEAD4();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            aBlock = v70;
            *v69 = 136315394;
            *(v69 + 4) = sub_1D3328B48(7104878, 0xE300000000000000, &aBlock);
            *(v69 + 12) = 2080;
            v99 = v66;
            v71 = v66;
            v72 = sub_1D33DE804();
            v74 = sub_1D3328B48(v72, v73, &aBlock);

            *(v69 + 14) = v74;
            _os_log_impl(&dword_1D331A000, v67, v68, "[RequestsHandler] Could not create event for name: %s handle %s", v69, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D38B81C0](v70, -1, -1);
            MEMORY[0x1D38B81C0](v69, -1, -1);
          }

          else
          {
          }

          return;
        }

        v29 = [v13 value];
        v30 = MEMORY[0x1E6998F48];
        if (v29)
        {
          goto LABEL_15;
        }
      }

      sub_1D33DE7B4();
      v31 = sub_1D33DE784();

LABEL_18:
      v32 = objc_opt_self();
      v33 = *v30;
      sub_1D33DDD04();
      v34 = sub_1D33DDC94();
      (*(v3 + 8))(v5, v2);
      sub_1D336C04C(MEMORY[0x1E69E7CC0]);
      v35 = sub_1D33DE6E4();

      v36 = [v32 recentEventForAddress:v31 displayName:0 kind:v33 date:v34 weight:0 metadata:v35 options:1];

      if (v36)
      {
        v37 = v36;
        v38 = sub_1D33DE444();
        v39 = sub_1D33DEAF4();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          aBlock = v41;
          *v40 = 136315138;
          v99 = v37;
          sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
          v42 = v37;
          v43 = sub_1D33DE804();
          v45 = sub_1D3328B48(v43, v44, &aBlock);

          *(v40 + 4) = v45;
          _os_log_impl(&dword_1D331A000, v38, v39, "[RequestsHandler] Generated event: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
          MEMORY[0x1D38B81C0](v41, -1, -1);
          MEMORY[0x1D38B81C0](v40, -1, -1);
        }

        v46 = [objc_opt_self() defaultInstance];
        if (v46)
        {
          v47 = v46;
          v48 = v90;
          v89 = sub_1D33D5B88(v90);
          v50 = v49;
          v51 = sub_1D33D6278(v48);
          v53 = v52;

          v54 = v13;

          v55 = sub_1D33DE444();
          v56 = sub_1D33DEAF4();

          v57 = os_log_type_enabled(v55, v56);
          v90 = v54;
          if (v57)
          {
            v92 = v51;
            v58 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v99 = v88;
            *v58 = 136315906;
            v59 = 0xE300000000000000;
            *(v58 + 4) = sub_1D3328B48(7104878, 0xE300000000000000, &v99);
            *(v58 + 12) = 2080;
            aBlock = v54;
            v60 = v54;
            v61 = sub_1D33DE804();
            v63 = sub_1D3328B48(v61, v62, &v99);

            *(v58 + 14) = v63;
            *(v58 + 22) = 2080;
            if (v50)
            {
              aBlock = v89;
              v94 = v50;

              v64 = sub_1D33DE804();
              v59 = v65;
            }

            else
            {
              v64 = 7104878;
            }

            v75 = sub_1D3328B48(v64, v59, &v99);

            *(v58 + 24) = v75;
            *(v58 + 32) = 2080;
            if (v53)
            {
              aBlock = v92;
              v94 = v53;

              v76 = sub_1D33DE804();
              v78 = v77;
            }

            else
            {
              v78 = 0xE300000000000000;
              v76 = 7104878;
            }

            v79 = sub_1D3328B48(v76, v78, &v99);

            *(v58 + 34) = v79;
            _os_log_impl(&dword_1D331A000, v55, v56, "[RequestsHandler] Calling into CoreRecents to accept name: %s handle %s from localHandle: %s source: %s", v58, 0x2Au);
            v80 = v88;
            swift_arrayDestroy();
            MEMORY[0x1D38B81C0](v80, -1, -1);
            MEMORY[0x1D38B81C0](v58, -1, -1);

            v54 = v90;
          }

          else
          {
          }

          if ([v47 respondsToSelector_])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
            v81 = swift_allocObject();
            *(v81 + 16) = xmmword_1D33E1DE0;
            *(v81 + 32) = v37;
            sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
            v82 = v37;
            v83 = v47;
            v84 = sub_1D33DE8A4();
            if (v50)
            {
              v85 = sub_1D33DE784();
              if (v53)
              {
LABEL_38:
                v86 = sub_1D33DE784();
LABEL_43:
                v97 = sub_1D33D1F10;
                v98 = 0;
                aBlock = MEMORY[0x1E69E9820];
                v94 = 1107296256;
                v95 = sub_1D3352A4C;
                v96 = &block_descriptor_5;
                v87 = _Block_copy(&aBlock);

                [v83 recordAcceptedContactEvents:v84 sendingAddress:v85 source:v86 completion:v87];
                _Block_release(v87);

                return;
              }
            }

            else
            {
              v85 = 0;
              if (v53)
              {
                goto LABEL_38;
              }
            }

            v86 = 0;
            goto LABEL_43;
          }
        }

        else
        {
        }

        return;
      }

      goto LABEL_25;
    }
  }
}

void sub_1D33D1F10(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v3 = sub_1D33DE464();
    __swift_project_value_buffer(v3, qword_1EDEC1480);
    v4 = a1;
    v5 = sub_1D33DE444();
    v6 = sub_1D33DEAD4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
      v10 = sub_1D33DE804();
      v12 = sub_1D3328B48(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1D331A000, v5, v6, "[RequestsHandler] Failed to accept request, error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1D38B81C0](v8, -1, -1);
      MEMORY[0x1D38B81C0](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v13 = sub_1D33DE464();
    __swift_project_value_buffer(v13, qword_1EDEC1480);
    oslog = sub_1D33DE444();
    v14 = sub_1D33DEAF4();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D331A000, oslog, v14, "[RequestsHandler] Finished accepting request", v15, 2u);
      MEMORY[0x1D38B81C0](v15, -1, -1);
    }

    v16 = oslog;
  }
}

id RequestsHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RequestsHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t RequestsHandler.warmRequestCacheIfNeeded(items:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = type metadata accessor for RecentsItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isRequestsEnabledOverride);
  if (v11 == 2)
  {
    if (([*(v3 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_featureFlags) junkFilteringEnabled] & 1) == 0 || !objc_msgSend(objc_opt_self(), sel_isFilterAsNewCallersEnabledForPhone))
    {
      return (a2)();
    }
  }

  else if ((v11 & 1) == 0)
  {
    return (a2)();
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    return (a2)();
  }

  v24[0] = a2;
  v24[1] = v3;
  v25 = a3;
  v13 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v15 = *(v8 + 72);
  do
  {
    sub_1D332CF04(v14, v10, type metadata accessor for RecentsItem);
    v16 = *v10;
    v17 = v10[32];
    if (v17 == 4)
    {
      v18 = v16;
      v19 = sub_1D332B2E8(v10);
    }

    else
    {
      v20 = *(v10 + 1);
      v21 = *(v10 + 2);
      v22 = *(v10 + 3);
      sub_1D332B0D0(*v10, v20, v21, v22, v10[32]);
      sub_1D332B2E8(v10);
      if (v17 != 6)
      {
        sub_1D332B1DC(v16, v20, v21, v22, v17);
        goto LABEL_9;
      }
    }

    MEMORY[0x1D38B6F20](v19);
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D33DE8D4();
    }

    sub_1D33DE8F4();
    v13 = v26;
LABEL_9:
    v14 += v15;
    --v12;
  }

  while (v12);
  sub_1D33CDB9C(v13, v24[0], v25);
}

Swift::Void __swiftcall RequestsHandler.configurationChanged()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1D33DE9B4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_1D333DD88(0, 0, v3, &unk_1D33E54C8, v5);
}

uint64_t sub_1D33D272C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33D27C8, 0, 0);
}

uint64_t sub_1D33D27C8()
{
  v1 = v0[6];
  v2 = *&v1[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler__configurationProvider];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 isSilenceJunkCallingEnabled];

    v5 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_filterSpamEnabled;
    swift_beginAccess();
    v1[v5] = v4;

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[7];
    v9 = sub_1D33DE9B4();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v11 = v1;
    v12 = sub_1D33881C0(0, 0, v8, &unk_1D33E55D0, v10);
    v0[8] = v12;
    sub_1D331E880(v8, &unk_1EC7610E0, &qword_1D33E16C0);
    v13 = swift_task_alloc();
    v0[9] = v13;
    v14 = sub_1D331DA18(0, &qword_1EDEBEEB0, 0x1E69D8AF8);
    *v13 = v0;
    v13[1] = sub_1D33D29C8;

    return MEMORY[0x1EEE6DA40](v0 + 5, v12, v14);
  }
}

uint64_t sub_1D33D29C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D33D2AE0, 0, 0);
}

uint64_t sub_1D33D2AE0()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = [v2 isSilenceJunkCallingEnabled];

  v4 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_filterSpamEnabled;
  swift_beginAccess();
  *(v1 + v4) = v3;

  v5 = v0[1];

  return v5();
}

void *sub_1D33D2C00(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
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

uint64_t sub_1D33D2C88(uint64_t a1, char a2)
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

  sub_1D33DEE14();
LABEL_9:
  result = sub_1D33DEF54();
  *v2 = result;
  return result;
}

uint64_t sub_1D33D2D28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D33DEE14();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D33DEE14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D33D6BE0(&unk_1EC761FF8, &qword_1EC761FF0, &qword_1D33E5640);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FF0, &qword_1D33E5640);
            v9 = sub_1D3367464(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D33D2EC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D33DEE14();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D33DEE14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D33D6BE0(&qword_1EC761FC8, &qword_1EC761FC0, &qword_1D33E5628);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FC0, &qword_1D33E5628);
            v9 = sub_1D33674E4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D33D3064(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D33DEE14();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D33DEE14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D33D6BE0(&qword_1EC761F78, &qword_1EC761F70, &qword_1D33E2DD0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761F70, &qword_1D33E2DD0);
            v9 = sub_1D3367464(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D331DA18(0, &unk_1EC7616A0, 0x1E6964EA8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D33D3204(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D33DEE14();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D33DEE14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D33D6BE0(&qword_1EC761F58, &qword_1EC761F50, &qword_1D33E55A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761F50, &qword_1D33E55A0);
            v9 = sub_1D336756C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D331DA18(0, &unk_1EC761720, 0x1E696AE18);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D33D33A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D33DEE14();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D33DEE14();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D33D6BE0(&unk_1EC761FE0, &qword_1EC761FD8, &qword_1D33E5630);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FD8, &qword_1D33E5630);
            v9 = sub_1D3367464(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D331DA18(0, &qword_1EC761FD0, 0x1E69D8A40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D33D356C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D38B74C0](a1, a2, v11);
      sub_1D331DA18(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D331DA18(0, a5, a6);
    if (sub_1D33DEDF4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D33DEE04();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_1D33DEC64();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_1D33DEC74();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_1D33D37C0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = type metadata accessor for Participant(0);
    return sub_1D332CF04(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for Participant);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D33D388C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for RecentsItem(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[7];
      v26 = *(v32 + 72);
      sub_1D332CF04(v25 + v26 * (v24 | (v19 << 6)), v11, type metadata accessor for RecentsItem);
      sub_1D33302BC(v11, v14);
      sub_1D33302BC(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D33D3B00(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1D33DDDB4();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D33D3DBC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_1D33D4080(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_1D33DEDC4();
  sub_1D331DA18(0, a5, a6);
  sub_1D33565AC(a7, a5, a6);
  result = sub_1D33DEA94();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_1D33DEE54())
      {
        goto LABEL_30;
      }

      sub_1D331DA18(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

id sub_1D33D42B0(uint64_t a1, char a2, _BYTE *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v21[3] = sub_1D33DE034();
  v21[4] = &off_1F4EE7D68;
  v21[0] = a1;
  v9 = &a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown];
  *v9 = 0;
  *(v9 + 1) = MEMORY[0x1E69E7CC8];
  v10 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_acceptedContactsDidChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761430, &qword_1D33E2BF0);
  swift_allocObject();
  *&a3[v10] = sub_1D33DE4D4();
  v11 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_unreadRequestCount;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761740, &unk_1D33E2F70);
  swift_allocObject();
  *&a3[v11] = sub_1D33DE504();
  *&a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryController] = 0;
  *&a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryPredicateForUnreadRequests] = 0;
  *&a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___callHistoryPredicateForAllRequests] = 0;
  a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isQueryingRequestCount] = 0;
  a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_filterSpamEnabled] = 0;
  a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_hasFinishedFirstCacheUpdate] = 0;
  *&a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler__configurationProvider] = 0;
  *&a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler____lazy_storage___contactStore] = 0;
  v12 = OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_featureFlags;
  *&a3[v12] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  sub_1D3325720(v21, &a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_communicationTrustHandling]);
  a3[OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isRequestsEnabledOverride] = a2;
  v13 = type metadata accessor for RequestsHandler();
  v19.receiver = a3;
  v19.super_class = v13;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  v15 = sub_1D33DE9B4();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v17 = v14;
  sub_1D333DD88(0, 0, v8, &unk_1D33E55A8, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v17;
}

BOOL sub_1D33D454C(uint64_t a1)
{
  v1 = sub_1D33DE374();
  MEMORY[0x1EEE9AC00](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FA0, &qword_1D33E55F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761FA8, &qword_1D33E5600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  sub_1D33DE034();
  v8 = sub_1D33DE024();
  sub_1D33DDFD4();
  v9 = sub_1D33DDFE4();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = sub_1D33DE044();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_1D33DE014();

  sub_1D331E880(v4, &qword_1EC761FA0, &qword_1D33E55F8);
  sub_1D331E880(v7, &qword_1EC761FA8, &qword_1D33E5600);
  v11 = sub_1D33DDFF4();
  return v11 == sub_1D33DDFF4();
}

uint64_t sub_1D33D49D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D334D4B4;

  return sub_1D33CE284(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D33D4AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D334CF9C;

  return sub_1D33CF67C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D33D4B84(unint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v56 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v52 - v8;
  v9 = sub_1D33DE374();
  v10 = *(v9 - 1);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v55 = v15;
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D33DEE14())
  {
    v54 = a3;

    v52 = a4;

    v63 = v14;
    v64 = v9;
    if (i)
    {
      v17 = 0;
      v60 = a1 & 0xFFFFFFFFFFFFFF8;
      v61 = (a1 & 0xC000000000000001);
      a4 = MEMORY[0x1E69E7CC0];
      v58 = i;
      v59 = a1;
      while (1)
      {
        if (v61)
        {
          v19 = MEMORY[0x1D38B75D0](v17, a1);
        }

        else
        {
          if (v17 >= *(v60 + 16))
          {
            goto LABEL_52;
          }

          v19 = *(a1 + 8 * v17 + 32);
        }

        v20 = v19;
        v14 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          goto LABEL_51;
        }

        if ([v19 isIncoming] && (v21 = objc_msgSend(v20, sel_remoteParticipantHandles)) != 0)
        {
          v22 = v21;
          sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
          sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
          v23 = sub_1D33DEA54();

          a1 = sub_1D33CC3C0(v23);
        }

        else
        {
          a1 = MEMORY[0x1E69E7CC0];
        }

        v24 = *(a1 + 16);
        a3 = a4[2];
        v9 = a3 + v24;
        if (__OFADD__(a3, v24))
        {
          goto LABEL_53;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v9 > a4[3] >> 1)
        {
          if (a3 <= v9)
          {
            v26 = (a3 + v24);
          }

          else
          {
            v26 = a3;
          }

          a4 = sub_1D3359B40(isUniquelyReferenced_nonNull_native, v26, 1, a4);
        }

        v9 = v64;
        if (*(a1 + 16))
        {
          if ((a4[3] >> 1) - a4[2] < v24)
          {
            goto LABEL_55;
          }

          swift_arrayInitWithCopy();

          a1 = v59;
          if (v24)
          {
            v27 = a4[2];
            v28 = __OFADD__(v27, v24);
            v29 = v27 + v24;
            if (v28)
            {
              goto LABEL_56;
            }

            a4[2] = v29;
          }
        }

        else
        {

          a1 = v59;
          if (v24)
          {
            goto LABEL_54;
          }
        }

        ++v17;
        v18 = v14 == v58;
        v14 = v63;
        if (v18)
        {
          goto LABEL_29;
        }
      }
    }

    a4 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v60 = a4[2];
    if (!v60)
    {
      break;
    }

    a1 = 0;
    v30 = v56 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_cachedHandlesToIsUnknown;
    v58 = (v10 + 8);
    v59 = v10 + 16;
    v61 = (v10 + 32);
    v31 = MEMORY[0x1E69E7CC0];
    v57 = v10;
    while (a1 < a4[2])
    {
      v32 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v33 = *(v10 + 72);
      (*(v10 + 16))(v14, a4 + v32 + v33 * a1, v9);
      os_unfair_lock_lock(v30);
      a3 = *(v30 + 8);
      if (a3[2] && (sub_1D33B9198(v14), (v34 & 1) != 0))
      {
        os_unfair_lock_unlock(v30);
        (*v58)(v14, v9);
      }

      else
      {
        os_unfair_lock_unlock(v30);
        v35 = *v61;
        (*v61)(v62, v14, v9);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v65 = v31;
        if ((v36 & 1) == 0)
        {
          a3 = &v65;
          sub_1D334B408(0, *(v31 + 16) + 1, 1);
          v31 = v65;
        }

        v38 = *(v31 + 16);
        v37 = *(v31 + 24);
        if (v38 >= v37 >> 1)
        {
          a3 = &v65;
          sub_1D334B408((v37 > 1), v38 + 1, 1);
          v31 = v65;
        }

        *(v31 + 16) = v38 + 1;
        v39 = v31 + v32 + v38 * v33;
        v9 = v64;
        v35(v39, v62, v64);
        v10 = v57;
        v14 = v63;
      }

      if (v60 == ++a1)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_42:

  v40 = sub_1D33676A8(v31);

  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = sub_1D332FF34(*(v40 + 16), 0, &qword_1EC760DA0, &qword_1D33E1AB8, MEMORY[0x1E696EDC8]);
    v43 = sub_1D33D3DBC(&v65, &v42[(*(v10 + 80) + 32) & ~*(v10 + 80)], v41, v40, MEMORY[0x1E696EDC8]);
    sub_1D331FEEC(v65);
    if (v43 != v41)
    {
      __break(1u);
      goto LABEL_45;
    }
  }

  else
  {
LABEL_45:

    v42 = MEMORY[0x1E69E7CC0];
  }

  if (*(v42 + 2))
  {
    v44 = sub_1D33DE9B4();
    v45 = v53;
    (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D33DE974();

    v47 = v55;

    v48 = sub_1D33DE964();
    v49 = swift_allocObject();
    v50 = MEMORY[0x1E69E85E0];
    v49[2] = v48;
    v49[3] = v50;
    v49[4] = v46;
    v49[5] = v42;
    v49[6] = sub_1D33D6B88;
    v49[7] = v47;

    sub_1D333DD88(0, 0, v45, &unk_1D33E5638, v49);
  }

  else
  {
    sub_1D334E024(v54, v52);
  }
}

uint64_t sub_1D33D52A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RecentsItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_isRequestsEnabledOverride);
  v33 = v10;
  if (v13 != 2)
  {

    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v14 = a3;
  v15 = *(v10 + OBJC_IVAR____TtC16CallsAppServices15RequestsHandler_featureFlags);

  v16 = v15;
  a3 = v14;
  if ([v16 junkFilteringEnabled] & 1) != 0 && (objc_msgSend(objc_opt_self(), sel_isFilterAsNewCallersEnabledForPhone))
  {
LABEL_6:
    v17 = *(a1 + 16);
    if (!v17)
    {
      goto LABEL_17;
    }

    v31 = a3;
    v32 = a4;
    v18 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    v19 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v20 = *(v9 + 72);
    while (1)
    {
      sub_1D332CF04(v19, v12, type metadata accessor for RecentsItem);
      v21 = *v12;
      v22 = v12[32];
      if (v22 == 4)
      {
        break;
      }

      v25 = *(v12 + 1);
      v26 = *(v12 + 2);
      v27 = *(v12 + 3);
      sub_1D332B0D0(*v12, v25, v26, v27, v12[32]);
      sub_1D332B2E8(v12);
      if (v22 == 6)
      {

        goto LABEL_14;
      }

      sub_1D332B1DC(v21, v25, v26, v27, v22);
LABEL_9:
      v19 += v20;
      if (!--v17)
      {
        v29 = v31;

        v30 = v32;

        sub_1D33D4B84(v18, v33, v29, v30);

        return swift_bridgeObjectRelease_n();
      }
    }

    v23 = v21;
    v24 = sub_1D332B2E8(v12);
LABEL_14:
    MEMORY[0x1D38B6F20](v24);
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D33DE8D4();
    }

    sub_1D33DE8F4();
    v18 = v34;
    goto LABEL_9;
  }

LABEL_17:
  sub_1D334E024(a3, a4);
}

uint64_t sub_1D33D559C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_1D33D55F0()
{
  v0 = [objc_opt_self() sharedController];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    [v0 blockUntilConnected];
    v3 = [objc_opt_self() facetimeService];
    v4 = [v2 accountsForService_];

    if (v4)
    {
      sub_1D331DA18(0, &qword_1EC761B80, 0x1E69A5A78);
      v5 = sub_1D33DE8B4();

      if (qword_1EDEBFD70 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v6 = sub_1D33DE464();
        __swift_project_value_buffer(v6, qword_1EDEC1480);

        v7 = sub_1D33DE444();
        v8 = sub_1D33DEAF4();

        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v38 = v5;
          v39 = v10;
          *v9 = 136315138;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761F90, &qword_1D33E55E8);
          v11 = sub_1D33DE804();
          v13 = sub_1D3328B48(v11, v12, &v39);

          *(v9 + 4) = v13;
          _os_log_impl(&dword_1D331A000, v7, v8, "[RequestsHandler] Found FaceTime accounts: %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v10);
          MEMORY[0x1D38B81C0](v10, -1, -1);
          MEMORY[0x1D38B81C0](v9, -1, -1);
        }

        v39 = MEMORY[0x1E69E7CC0];
        if (v5 >> 62)
        {
          v14 = sub_1D33DEE14();
        }

        else
        {
          v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 = MEMORY[0x1E69E7CC0];
        v36 = v2;
        v37 = v0;
        if (v14)
        {
          v16 = 0;
          v0 = (v5 & 0xC000000000000001);
          v2 = (v5 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if (v0)
            {
              v17 = MEMORY[0x1D38B75D0](v16, v5);
            }

            else
            {
              if (v16 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_41;
              }

              v17 = *(v5 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if ([v17 registrationStatus] == 5)
            {
              sub_1D33DEF84();
              sub_1D33DEFB4();
              sub_1D33DEFC4();
              sub_1D33DEF94();
            }

            else
            {
            }

            ++v16;
            if (v19 == v14)
            {
              v20 = v39;
              v2 = v36;
              v0 = v37;
              v15 = MEMORY[0x1E69E7CC0];
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
        }

        else
        {
          v20 = MEMORY[0x1E69E7CC0];
LABEL_25:

          if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
          {
            v5 = sub_1D33DEE14();
            if (!v5)
            {
LABEL_47:

LABEL_48:
              v25 = sub_1D3367844(v15);

              return v25;
            }
          }

          else
          {
            v5 = *(v20 + 16);
            if (!v5)
            {
              goto LABEL_47;
            }
          }

          v39 = v15;
          sub_1D334A9E0(0, v5 & ~(v5 >> 63), 0);
          if (v5 < 0)
          {
            __break(1u);
            goto LABEL_51;
          }

          v26 = 0;
          v15 = v39;
          v0 = (v20 & 0xC000000000000001);
          while (1)
          {
            v2 = (v26 + 1);
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v0)
            {
              v27 = MEMORY[0x1D38B75D0](v26, v20);
            }

            else
            {
              if (v26 >= *(v20 + 16))
              {
                goto LABEL_43;
              }

              v27 = *(v20 + 8 * v26 + 32);
            }

            v28 = v27;
            result = [v27 strippedLogin];
            if (!result)
            {
              __break(1u);
              goto LABEL_53;
            }

            v29 = result;
            sub_1D33DE7B4();

            v30 = sub_1D33DE7F4();
            v32 = v31;

            v39 = v15;
            v34 = *(v15 + 16);
            v33 = *(v15 + 24);
            if (v34 >= v33 >> 1)
            {
              sub_1D334A9E0((v33 > 1), v34 + 1, 1);
              v15 = v39;
            }

            *(v15 + 16) = v34 + 1;
            v35 = v15 + 16 * v34;
            *(v35 + 32) = v30;
            *(v35 + 40) = v32;
            ++v26;
            if (v2 == v5)
            {

              v2 = v36;
              v0 = v37;
              goto LABEL_48;
            }
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        swift_once();
      }
    }

    if (qword_1EDEBFD70 != -1)
    {
LABEL_51:
      swift_once();
    }

    v21 = sub_1D33DE464();
    __swift_project_value_buffer(v21, qword_1EDEC1480);
    v22 = sub_1D33DE444();
    v23 = sub_1D33DEAF4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D331A000, v22, v23, "[RequestsHandler] Could not find any facetime service IMAccount in IMAccountController", v24, 2u);
      MEMORY[0x1D38B81C0](v24, -1, -1);
    }

    return MEMORY[0x1E69E7CD0];
  }

  else
  {
LABEL_53:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D33D5B88(void *a1)
{
  v2 = sub_1D33DDDB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v7 = [a1 localParticipantUUID];
  if (v7)
  {
    v8 = v7;
    sub_1D33DDD84();

    v9 = [v6 telephonyProvider];
    v10 = sub_1D33DDD64();
    v11 = [v9 senderIdentityForAccountUUID_];

    if (v11)
    {
      if (qword_1EDEBFD70 != -1)
      {
        swift_once();
      }

      v12 = sub_1D33DE464();
      __swift_project_value_buffer(v12, qword_1EDEC1480);
      v13 = v11;
      v14 = sub_1D33DE444();
      v15 = sub_1D33DEAF4();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v63[0] = v59;
        *v16 = 136315138;
        *&v61 = v13;
        sub_1D331DA18(0, &unk_1EC761650, 0x1E69D8CD8);
        v17 = v13;
        v18 = sub_1D33DE804();
        v20 = v3;
        v21 = v2;
        v22 = v6;
        v23 = sub_1D3328B48(v18, v19, v63);

        *(v16 + 4) = v23;
        v6 = v22;
        v2 = v21;
        v3 = v20;
        _os_log_impl(&dword_1D331A000, v14, v15, "[RequestsHandler] Found senderIdentity: %s for recent call", v16, 0xCu);
        v24 = v59;
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x1D38B81C0](v24, -1, -1);
        MEMORY[0x1D38B81C0](v16, -1, -1);
      }

      v25 = [v13 handle];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 value];

        v28 = sub_1D33DE7B4();
        (*(v3 + 8))(v5, v2);
        return v28;
      }

      (*(v3 + 8))(v5, v2);

      return 0;
    }

    (*(v3 + 8))(v5, v2);
  }

  v30 = [a1 serviceProvider];
  if (!v30)
  {
    sub_1D33DE7B4();
    goto LABEL_19;
  }

  v31 = v30;
  v32 = sub_1D33DE7B4();
  v34 = v33;

  v35 = sub_1D33DE7B4();
  if (!v34)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (v32 != v35 || v34 != v36)
  {
    v38 = sub_1D33DF1B4();

    if (v38)
    {
      goto LABEL_32;
    }

LABEL_20:
    v39 = [v6 telephonyProvider];
    v40 = [v39 prioritizedSenderIdentities];

    v41 = [v40 firstObject];
    if (v41)
    {
      sub_1D33DED44();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63[0] = v61;
    v63[1] = v62;
    if (*(&v62 + 1))
    {
      sub_1D331DA18(0, &unk_1EC761650, 0x1E69D8CD8);
      if (swift_dynamicCast())
      {
        v42 = v60;
        v43 = [v60 handle];

        if (v43)
        {
          v44 = [v43 value];

          v45 = sub_1D33DE7B4();
          return v45;
        }
      }
    }

    else
    {

      sub_1D331E880(v63, &qword_1EC7616D0, &unk_1D33E2890);
    }

    return 0;
  }

LABEL_32:
  v46 = sub_1D33D55F0();
  v47 = sub_1D335DDB8(v46);
  v49 = v48;

  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v50 = sub_1D33DE464();
  __swift_project_value_buffer(v50, qword_1EDEC1480);

  v51 = sub_1D33DE444();
  v52 = sub_1D33DEAF4();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v61 = v54;
    *v53 = 136315138;
    if (v49)
    {
      *&v63[0] = v47;
      *(&v63[0] + 1) = v49;

      v55 = sub_1D33DE804();
      v57 = v56;
    }

    else
    {
      v57 = 0xE300000000000000;
      v55 = 7104878;
    }

    v58 = sub_1D3328B48(v55, v57, &v61);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_1D331A000, v51, v52, "[RequestsHandler] Found local FaceTime handle: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1D38B81C0](v54, -1, -1);
    MEMORY[0x1D38B81C0](v53, -1, -1);
  }

  return v47;
}

uint64_t sub_1D33D6278(void *a1)
{
  v1 = [a1 serviceProvider];
  if (!v1)
  {
    sub_1D33DE7B4();
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1D33DE7B4();
  v5 = v4;

  v6 = sub_1D33DE7B4();
  if (!v5)
  {
LABEL_10:

    goto LABEL_12;
  }

  if (v3 != v6 || v5 != v7)
  {
    sub_1D33DF1B4();
  }

LABEL_12:

  return sub_1D33DE7B4();
}

uint64_t sub_1D33D6398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D33D272C(a1, v4, v5, v6);
}

uint64_t sub_1D33D644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D334AFB4;

  return v13(a1, a2, a3, a4, a5);
}

id sub_1D33D66D0(char a1)
{
  v13 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v1 = [objc_opt_self() predicateForCallsWithStatusRead_];
    MEMORY[0x1D38B6F20]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D33DE8D4();
    }

    sub_1D33DE8F4();
  }

  sub_1D331DA18(0, &unk_1EC761720, 0x1E696AE18);
  v2 = sub_1D33DEAB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761718, &unk_1D33E2F50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D33E2410;
  *(v3 + 56) = MEMORY[0x1E69E6530];
  *(v3 + 32) = 2;
  v4 = sub_1D33DE784();
  v5 = sub_1D33DE8A4();

  v6 = [objc_opt_self() predicateWithFormat:v4 argumentArray:v5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E2400;
  *(inited + 32) = v2;
  *(inited + 40) = v6;
  v8 = v2;
  v9 = v6;
  sub_1D33CCBC4(inited, sub_1D33D3204);
  v10 = sub_1D33DE8A4();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v11;
}

uint64_t sub_1D33D694C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D33CD55C(a1, v4, v5, v6);
}

uint64_t sub_1D33D6A00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334D4B4;

  return sub_1D33CD920(a1, v4, v5, v7, v6);
}

uint64_t sub_1D33D6AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D334D4B4;

  return sub_1D33CEFCC(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_2Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D33D6BE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D33D6C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC762008, &qword_1D33E5648);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D33D6CA8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331F514();
    sub_1D33DEA94();
    result = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v23 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(result + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_24:
      sub_1D331FEEC(v23);
      return v9;
    }

    while (1)
    {
      v15 = [v14 normalizedValue];
      if (!v15)
      {
        v15 = [v14 value];
      }

      v16 = v15;
      v17 = sub_1D33DE7B4();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D3359DD4(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = sub_1D3359DD4((v20 > 1), v21 + 1, 1, v9);
      }

      *(v9 + 2) = v21 + 1;
      v22 = &v9[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v4 = v12;
      v5 = v13;
      result = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        swift_dynamicCast();
        v14 = v29;
        v12 = v4;
        v13 = v5;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D33D6F48(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1D33DF0A4();

    if (v4)
    {
      sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1D33B9340(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

Swift::Void __swiftcall CallReportingViewModel.block(unknownContacts:)(Swift::OpaquePointer unknownContacts)
{
  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762130);
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D331A000, v3, v4, "blocking", v5, 2u);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  _s16CallsAppServices22CallReportingViewModelC5block8contactsySaySo9CNContactCG_tF_0(unknownContacts._rawValue);
}

id CallReportingViewModel.getFormattedInitiator(for:)(void *a1)
{
  v1 = [a1 initiator];
  if (!v1)
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v15 = sub_1D33DE464();
    __swift_project_value_buffer(v15, qword_1EC762130);
    v16 = sub_1D33DE444();
    v17 = sub_1D33DEAF4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D331A000, v16, v17, "initiator unknown", v18, 2u);
      MEMORY[0x1D38B81C0](v18, -1, -1);
    }

    return 0;
  }

  v2 = v1;
  sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
  v3 = v2;
  v4 = sub_1D33D7A2C(v3);
  if ([v4 type] != 2)
  {
    goto LABEL_9;
  }

  result = [v4 value];
  if (!result)
  {
    __break(1u);
    goto LABEL_34;
  }

  v6 = result;
  v7 = PNCopyBestGuessCountryCodeForNumber();

  if (!v7)
  {
LABEL_9:

    goto LABEL_18;
  }

  result = [v4 value];
  if (result)
  {
    v8 = result;
    v9 = CFPhoneNumberCreate();

    if (v9)
    {
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v11 = String;
        v12 = sub_1D33DE7B4();
        v14 = v13;

LABEL_19:
        if (qword_1EC760990 != -1)
        {
          swift_once();
        }

        v19 = sub_1D33DE464();
        __swift_project_value_buffer(v19, qword_1EC762130);

        v20 = v3;
        v21 = sub_1D33DE444();
        v22 = sub_1D33DEAF4();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v25 = v31;
          *v23 = 136315394;
          if (v14)
          {
            v26 = v12;
          }

          else
          {
            v26 = 0;
          }

          if (v14)
          {
            v27 = v14;
          }

          else
          {
            v27 = 0xE000000000000000;
          }

          v28 = sub_1D3328B48(v26, v27, &v31);

          *(v23 + 4) = v28;
          *(v23 + 12) = 2112;
          v29 = sub_1D33D7A2C(v20);
          *(v23 + 14) = v29;
          *v24 = v29;
          _os_log_impl(&dword_1D331A000, v21, v22, "formattedPhoneNumber: %s,  TUHandle(initiator): %@", v23, 0x16u);
          sub_1D33DBD28(v24);
          MEMORY[0x1D38B81C0](v24, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v25);
          MEMORY[0x1D38B81C0](v25, -1, -1);
          MEMORY[0x1D38B81C0](v23, -1, -1);
        }

        if (v14)
        {
        }

        else
        {
          v30 = [v20 value];
          v12 = sub_1D33DE7B4();
        }

        return v12;
      }
    }

    else
    {
    }

LABEL_18:
    v12 = 0;
    v14 = 0;
    goto LABEL_19;
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::String __swiftcall CallReportingViewModel.getReportInitiatorMessage(formattedHandle:)(Swift::String formattedHandle)
{
  object = formattedHandle._object;
  countAndFlagsBits = formattedHandle._countAndFlagsBits;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_1D33DDB74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D33E2410;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D3387AE4();
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;

  v6 = sub_1D33DE7C4();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

void CallReportingViewModel.blockInitiator(spamCall:)(void *a1)
{
  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762130);
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D331A000, v3, v4, "blockInitiator", v5, 2u);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  v6 = [a1 initiator];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D336A260();

    TUHandle.block()();
  }
}

uint64_t CallReportingViewModel.getCarrierNameOfCall(for:)(void *a1)
{
  v5[3] = sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v5[4] = MEMORY[0x1E69D8A20];
  v5[0] = a1;

  v2 = a1;
  v3 = sub_1D33DE094();

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v3;
}

Swift::String __swiftcall CallReportingViewModel.getCarrierSpamReportAlertTitle(carrierName:)(Swift::String carrierName)
{
  object = carrierName._object;
  countAndFlagsBits = carrierName._countAndFlagsBits;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_1D33DDB74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D33E2410;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D3387AE4();
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;

  v6 = sub_1D33DE7C4();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1D33D799C(void *a1, void (*a2)(void *))
{
  v6[3] = sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v6[4] = MEMORY[0x1E69D8A20];
  v6[0] = a1;

  v4 = a1;
  a2(v6);

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

id sub_1D33D7A2C(void *a1)
{
  v2 = [a1 type];
  if (v2 > 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_1D33E57D8[v2];
  }

  v4 = [a1 value];
  if (!v4)
  {
    sub_1D33DE7B4();
    v4 = sub_1D33DE784();
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:v3 value:v4];

  return v5;
}

uint64_t CallReportingViewModel.ReportingFlow.hashValue.getter()
{
  v1 = *v0;
  sub_1D33DF284();
  MEMORY[0x1D38B7920](v1);
  return sub_1D33DF2C4();
}

id CallReportingViewModel.init(unknownContactChecker:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_spamReportManager;
  *&v3[v4] = [objc_allocWithZone(type metadata accessor for FaceTimeSpamReportManager()) init];
  v5 = OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_carrierVoiceSpamReportHelper;
  v6 = sub_1D33DE064();
  v7 = sub_1D33DE054();
  v87 = v6;
  v88 = MEMORY[0x1E69D8A08];
  v86 = v7;
  sub_1D33DE0A4();
  swift_allocObject();
  *&v3[v5] = sub_1D33DE084();
  v8 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertTitle];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  v12 = sub_1D33DDB74();
  v14 = v13;

  *v8 = v12;
  v8[1] = v14;
  v15 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertCancel];
  v16 = [v10 bundleForClass_];
  v17 = sub_1D33DDB74();
  v19 = v18;

  *v15 = v17;
  v15[1] = v19;
  v20 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertReport];
  v21 = [v10 bundleForClass_];
  v22 = sub_1D33DDB74();
  v24 = v23;

  *v20 = v22;
  v20[1] = v24;
  v25 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertTitle];
  v26 = [v10 bundleForClass_];
  v27 = sub_1D33DDB74();
  v29 = v28;

  *v25 = v27;
  v25[1] = v29;
  v30 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertCancel];
  v31 = [v10 bundleForClass_];
  v32 = sub_1D33DDB74();
  v34 = v33;

  *v30 = v32;
  v30[1] = v34;
  v35 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertBlock];
  v36 = [v10 bundleForClass_];
  v37 = sub_1D33DDB74();
  v39 = v38;

  *v35 = v37;
  v35[1] = v39;
  v40 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertReportBlock];
  v41 = [v10 bundleForClass_];
  v42 = sub_1D33DDB74();
  v44 = v43;

  *v40 = v42;
  v40[1] = v44;
  v45 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockAllButtonTitle];
  v46 = [v10 bundleForClass_];
  v47 = sub_1D33DDB74();
  v49 = v48;

  *v45 = v47;
  v45[1] = v49;
  v50 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockAllAlertTitle];
  v51 = [v10 bundleForClass_];
  v52 = sub_1D33DDB74();
  v54 = v53;

  *v50 = v52;
  v50[1] = v54;
  v55 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockUnknownButtonTitle];
  v56 = [v10 bundleForClass_];
  v57 = sub_1D33DDB74();
  v59 = v58;

  *v55 = v57;
  v55[1] = v59;
  v60 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportInitiatorAlertTitle];
  v61 = [v10 bundleForClass_];
  v62 = sub_1D33DDB74();
  v64 = v63;

  *v60 = v62;
  v60[1] = v64;
  v65 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportInitiatorAlert];
  v66 = [v10 bundleForClass_];
  v67 = sub_1D33DDB74();
  v69 = v68;

  *v65 = v67;
  v65[1] = v69;
  v70 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportGroupInitiatorAlertTitle];
  v71 = [v10 bundleForClass_];
  v72 = sub_1D33DDB74();
  v74 = v73;

  *v70 = v72;
  v70[1] = v74;
  v75 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportLocalizedTitle];
  v76 = [v10 bundleForClass_];
  v77 = sub_1D33DDB74();
  v79 = v78;

  *v75 = v77;
  v75[1] = v79;
  v80 = &v3[OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker];
  *v80 = a1;
  *(v80 + 1) = a2;
  v85.receiver = v3;
  v85.super_class = ObjectType;
  return objc_msgSendSuper2(&v85, sel_init, 0xE000000000000000);
}

uint64_t CallReportingViewModel.reportAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertTitle);

  return v1;
}

uint64_t CallReportingViewModel.reportAlertCancel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertCancel);

  return v1;
}

uint64_t CallReportingViewModel.reportAlertReport.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportAlertReport);

  return v1;
}

uint64_t CallReportingViewModel.reportBlockFTAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertTitle);

  return v1;
}

uint64_t CallReportingViewModel.reportBlockFTAlertCancel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertCancel);

  return v1;
}

uint64_t CallReportingViewModel.reportBlockFTAlertBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertBlock);

  return v1;
}

uint64_t CallReportingViewModel.reportBlockFTAlertReportBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportBlockFTAlertReportBlock);

  return v1;
}

uint64_t CallReportingViewModel.blockAllButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockAllButtonTitle);

  return v1;
}

uint64_t CallReportingViewModel.blockAllAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockAllAlertTitle);

  return v1;
}

uint64_t CallReportingViewModel.blockUnknownButtonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_blockUnknownButtonTitle);

  return v1;
}

uint64_t CallReportingViewModel.reportInitiatorAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportInitiatorAlertTitle);

  return v1;
}

uint64_t CallReportingViewModel.reportInitiatorAlert.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportInitiatorAlert);

  return v1;
}

uint64_t CallReportingViewModel.reportGroupInitiatorAlertTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_reportGroupInitiatorAlertTitle);

  return v1;
}

id sub_1D33D8694()
{
  if (qword_1EC760990 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v1 = sub_1D33DE464();
    __swift_project_value_buffer(v1, qword_1EC762130);
    v2 = v0;
    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAF4();

    v39 = v2;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v40 = v6;
      *v5 = 136315394;
      v7 = [v39 phoneNumbers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
      sub_1D33DE8B4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620C0, &unk_1D33E57C8);
      v8 = sub_1D33DE804();
      v10 = sub_1D3328B48(v8, v9, &v40);

      *(v5 + 4) = v10;
      *(v5 + 12) = 2080;
      v11 = [v39 emailAddresses];
      sub_1D33DE8B4();

      v12 = sub_1D33DE804();
      v14 = sub_1D3328B48(v12, v13, &v40);

      *(v5 + 14) = v14;
      _os_log_impl(&dword_1D331A000, v3, v4, "Block: blocking phoneNumbers %s \n\n emailAddreses: %s", v5, 0x16u);
      swift_arrayDestroy();
      v15 = v6;
      v2 = v39;
      MEMORY[0x1D38B81C0](v15, -1, -1);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    v0 = [v2 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
    v16 = sub_1D33DE8B4();

    v17 = v16 >> 62 ? sub_1D33DEE14() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v17)
    {
      break;
    }

LABEL_24:
    swift_bridgeObjectRelease_n();
    v31 = [v39 emailAddresses];
    v32 = sub_1D33DE8B4();

    if (v32 >> 62)
    {
      v0 = sub_1D33DEE14();
      if (!v0)
      {
      }
    }

    else
    {
      v0 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v0)
      {
      }
    }

    for (i = 0; ; ++i)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1D38B75D0](i, v32);
      }

      else
      {
        if (i >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v34 = *(v32 + 8 * i + 32);
      }

      v35 = v34;
      v36 = (i + 1);
      if (__OFADD__(i, 1))
      {
        break;
      }

      result = [objc_opt_self() sharedPrivacyManager];
      if (!result)
      {
        __break(1u);
        goto LABEL_44;
      }

      v37 = result;
      v38 = [v35 value];
      [v37 setBlockIncomingCommunication:1 forEmailAddress:v38];

      if (v36 == v0)
      {
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v18 = 0;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1D38B75D0](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v20 = *(v16 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v0 = [v20 value];
    v23 = [v0 digits];

    sub_1D33DE7B4();
    v24 = TUHomeCountryCode();
    if (v24)
    {
      v0 = v24;
      sub_1D33DE7B4();
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = sub_1D33DE784();

    if (v26)
    {
      v28 = sub_1D33DE784();
    }

    else
    {
      v28 = 0;
    }

    v29 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v27 countryCode:v28];

    if (v29)
    {
      break;
    }

LABEL_9:
    ++v18;
    if (v22 == v17)
    {
      goto LABEL_24;
    }
  }

  result = [objc_opt_self() sharedPrivacyManager];
  if (result)
  {
    v19 = result;
    [result setBlockIncomingCommunication:1 forPhoneNumber:v29];

    goto LABEL_9;
  }

LABEL_44:
  __break(1u);
  return result;
}

Swift::Void __swiftcall CallReportingViewModel.block(handles:)(Swift::OpaquePointer handles)
{
  if (qword_1EC760990 != -1)
  {
LABEL_30:
    swift_once();
  }

  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762130);
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D331A000, v3, v4, "blocking based on handles", v5, 2u);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  if (handles._rawValue >> 62)
  {
    v6 = sub_1D33DEE14();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((handles._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  v7 = 0;
  v8 = handles._rawValue & 0xC000000000000001;
  v9 = handles._rawValue & 0xFFFFFFFFFFFFFF8;
  v10 = &off_1E843B000;
  v27 = v6;
  v28 = handles._rawValue & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8)
    {
      v11 = MEMORY[0x1D38B75D0](v7, handles._rawValue);
    }

    else
    {
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      v11 = *(handles._rawValue + v7 + 4);
    }

    v12 = v11;
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ([v11 v10[446]] == 2)
    {
      break;
    }

    if ([v12 v10[446]] != 3)
    {
      goto LABEL_9;
    }

    v21 = [objc_opt_self() sharedPrivacyManager];
    if (!v21)
    {
      goto LABEL_34;
    }

    v22 = v21;
    v23 = [v12 value];
    if (!v23)
    {
      sub_1D33DE7B4();
      v23 = sub_1D33DE784();
      v10 = &off_1E843B000;
    }

    [v22 setBlockIncomingCommunication:1 forEmailAddress:{v23, v27}];
LABEL_8:

LABEL_9:
    ++v7;
    if (v13 == v6)
    {
      return;
    }
  }

  v14 = v8;
  rawValue = handles._rawValue;
  v16 = [v12 value];
  sub_1D33DE7B4();

  v17 = TUHomeCountryCode();
  if (v17)
  {
    v18 = v17;
    sub_1D33DE7B4();
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v24 = sub_1D33DE784();

  if (v20)
  {
    v25 = sub_1D33DE784();
  }

  else
  {
    v25 = 0;
  }

  v9 = v28;
  v10 = &off_1E843B000;
  v22 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v24 countryCode:v25];

  v26 = [objc_opt_self() sharedPrivacyManager];
  if (v26)
  {
    v23 = v26;
    [v26 setBlockIncomingCommunication:1 forPhoneNumber:v22];
    handles._rawValue = rawValue;
    v8 = v14;
    v6 = v27;
    goto LABEL_8;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Void __swiftcall CallReportingViewModel.unblock(contacts:)(Swift::OpaquePointer contacts)
{
  if (qword_1EC760990 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v2 = sub_1D33DE464();
    __swift_project_value_buffer(v2, qword_1EC762130);
    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D331A000, v3, v4, "unblocking", v5, 2u);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    if (!(contacts._rawValue >> 62))
    {
      v6 = *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        return;
      }

      goto LABEL_6;
    }

    v6 = sub_1D33DEE14();
    if (!v6)
    {
      break;
    }

LABEL_6:
    v7 = 0;
    v40 = contacts._rawValue & 0xFFFFFFFFFFFFFF8;
    v41 = contacts._rawValue & 0xC000000000000001;
    rawValue = contacts._rawValue;
    v39 = contacts._rawValue + 32;
    v37 = v6;
    while (1)
    {
      if (v41)
      {
        v8 = MEMORY[0x1D38B75D0](v7, contacts._rawValue);
        v9 = __OFADD__(v7, 1);
        v10 = v7 + 1;
        if (v9)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v7 >= *(v40 + 16))
        {
          goto LABEL_53;
        }

        v8 = *&v39[8 * v7];
        v9 = __OFADD__(v7, 1);
        v10 = v7 + 1;
        if (v9)
        {
          goto LABEL_52;
        }
      }

      v42 = v10;
      v43 = v8;
      v11 = [v8 phoneNumbers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
      v12 = sub_1D33DE8B4();

      if (v12 >> 62)
      {
        v13 = sub_1D33DEE14();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13)
      {
        v14 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1D38B75D0](v14, v12);
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v16 = *(v12 + 8 * v14 + 32);
          }

          v17 = v16;
          v18 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v19 = [v16 value];
          v20 = [v19 digits];

          sub_1D33DE7B4();
          v21 = TUHomeCountryCode();
          if (v21)
          {
            v22 = v21;
            sub_1D33DE7B4();
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = sub_1D33DE784();

          if (v24)
          {
            v26 = sub_1D33DE784();
          }

          else
          {
            v26 = 0;
          }

          contacts._rawValue = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v25 countryCode:v26];

          if (contacts._rawValue)
          {
            v27 = [objc_opt_self() sharedPrivacyManager];
            if (!v27)
            {
LABEL_58:
              __break(1u);
              return;
            }

            v15 = v27;
            [v27 setBlockIncomingCommunication:0 forPhoneNumber:contacts._rawValue];
          }

          ++v14;
        }

        while (v18 != v13);
      }

      swift_bridgeObjectRelease_n();
      v28 = [v43 emailAddresses];
      v29 = sub_1D33DE8B4();

      if (v29 >> 62)
      {
        break;
      }

      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_33;
      }

LABEL_7:

      contacts._rawValue = rawValue;
      v7 = v42;
      if (v42 == v37)
      {
        return;
      }
    }

    v30 = sub_1D33DEE14();
    if (!v30)
    {
      goto LABEL_7;
    }

LABEL_33:
    v31 = 0;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1D38B75D0](v31, v29);
      }

      else
      {
        if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v32 = *(v29 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v35 = [objc_opt_self() sharedPrivacyManager];
      if (!v35)
      {
        __break(1u);
        goto LABEL_58;
      }

      v36 = v35;
      contacts._rawValue = [v33 value];
      [v36 setBlockIncomingCommunication:0 forEmailAddress:contacts._rawValue];

      ++v31;
      if (v34 == v30)
      {
        goto LABEL_7;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }
}

Swift::Bool __swiftcall CallReportingViewModel.isBlocked(contacts:)(Swift::OpaquePointer contacts)
{
  if (qword_1EC760990 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v2 = sub_1D33DE464();
    __swift_project_value_buffer(v2, qword_1EC762130);
    v3 = sub_1D33DE444();
    v4 = sub_1D33DEAF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D331A000, v3, v4, "are contacts blocked", v5, 2u);
      MEMORY[0x1D38B81C0](v5, -1, -1);
    }

    v6 = contacts._rawValue & 0xFFFFFFFFFFFFFF8;
    v7 = contacts._rawValue >> 62 ? sub_1D33DEE14() : *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = 0;
    v9 = contacts._rawValue & 0xC000000000000001;
    v10 = contacts._rawValue + 32;
    v11 = &selRef_setOriginatingUIType_;
    v47 = contacts._rawValue & 0xFFFFFFFFFFFFFF8;
    rawValue = contacts._rawValue;
    v45 = contacts._rawValue & 0xC000000000000001;
    v46 = v7;
    v44 = contacts._rawValue + 32;
LABEL_7:
    v12 = v8 == v7;
    if (v8 == v7)
    {
      break;
    }

    if (v9)
    {
      v13 = MEMORY[0x1D38B75D0](v8, contacts._rawValue);
      v14 = __OFADD__(v8, 1);
      v15 = v8 + 1;
      if (!v14)
      {
LABEL_11:
        v49 = v12;
        v50 = v15;
        v51 = v13;
        v16 = [v13 v11[188]];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x");
        v17 = sub_1D33DE8B4();

        if (v17 >> 62)
        {
          v18 = sub_1D33DEE14();
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v18)
        {
          contacts._rawValue = 0;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1D38B75D0](contacts._rawValue, v17);
            }

            else
            {
              if (contacts._rawValue >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v19 = *(v17 + 8 * contacts._rawValue + 32);
            }

            v20 = v19;
            v21 = contacts._rawValue + 1;
            if (__OFADD__(contacts._rawValue, 1))
            {
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

            v22 = [v19 value];
            v23 = [v22 digits];

            sub_1D33DE7B4();
            v24 = TUHomeCountryCode();
            if (v24)
            {
              v25 = v24;
              sub_1D33DE7B4();
              v27 = v26;
            }

            else
            {
              v27 = 0;
            }

            v28 = sub_1D33DE784();

            if (v27)
            {
              v29 = sub_1D33DE784();
            }

            else
            {
              v29 = 0;
            }

            v30 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v28 countryCode:v29];

            if (v30)
            {
              v31 = [objc_opt_self() sharedPrivacyManager];
              if (!v31)
              {
LABEL_61:
                __break(1u);
                return v31;
              }

              v32 = v31;
              v33 = [v31 isIncomingCommunicationBlockedForPhoneNumber_];

              if ((v33 & 1) == 0)
              {
                v34 = 0;
                goto LABEL_32;
              }
            }

            ++contacts._rawValue;
          }

          while (v21 != v18);
        }

        v34 = 1;
LABEL_32:
        swift_bridgeObjectRelease_n();
        v35 = [v51 emailAddresses];
        contacts._rawValue = sub_1D33DE8B4();

        if (contacts._rawValue >> 62)
        {
          v36 = sub_1D33DEE14();
        }

        else
        {
          v36 = *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v37 = 0;
        while (v36 != v37)
        {
          if ((contacts._rawValue & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x1D38B75D0](v37, contacts._rawValue);
          }

          else
          {
            if (v37 >= *((contacts._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v38 = *(contacts._rawValue + v37 + 4);
          }

          v39 = v38;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          v31 = [objc_opt_self() sharedPrivacyManager];
          if (!v31)
          {
            __break(1u);
            goto LABEL_61;
          }

          v40 = v31;
          v41 = [v39 value];
          v42 = [v40 isIncomingCommunicationBlockedForEmailAddress_];

          ++v37;
          if ((v42 & 1) == 0)
          {

            v12 = 0;
            goto LABEL_51;
          }
        }

        v6 = v47;
        contacts._rawValue = rawValue;
        v9 = v45;
        v7 = v46;
        v8 = v50;
        v10 = v44;
        v11 = &selRef_setOriginatingUIType_;
        v12 = v49;
        if (v34)
        {
          goto LABEL_7;
        }

        break;
      }

      goto LABEL_56;
    }

    if (v8 < *(v6 + 16))
    {
      v13 = *&v10[8 * v8];
      v14 = __OFADD__(v8, 1);
      v15 = v8 + 1;
      if (!v14)
      {
        goto LABEL_11;
      }

LABEL_56:
      __break(1u);
    }

    __break(1u);
LABEL_58:
    swift_once();
  }

LABEL_51:
  LOBYTE(v31) = v12;
  return v31;
}

void CallReportingViewModel.reportingFlow(for:in:)(void *a1@<X0>, char *a3@<X8>)
{
  if ([a1 isComingFaceTimeCall] && *(v3 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker) && (swift_getObjectType(), (sub_1D33DDFB4() & 1) != 0))
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v6 = sub_1D33DE464();
    __swift_project_value_buffer(v6, qword_1EC762130);
    v7 = sub_1D33DE444();
    v8 = sub_1D33DEAF4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D331A000, v7, v8, "checking facetime flow", v9, 2u);
      MEMORY[0x1D38B81C0](v9, -1, -1);
    }

    sub_1D33D9D00(a1, a3);
  }

  else
  {
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 isClassificationAvailable];

    if (v11)
    {
      if (qword_1EC760990 != -1)
      {
        swift_once();
      }

      v12 = sub_1D33DE464();
      __swift_project_value_buffer(v12, qword_1EC762130);
      v13 = sub_1D33DE444();
      v14 = sub_1D33DEAF4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1D331A000, v13, v14, "third party flow", v15, 2u);
        MEMORY[0x1D38B81C0](v15, -1, -1);
      }

      v16 = 2;
    }

    else if ([a1 carrierAllowsReportVoiceCall])
    {
      if (qword_1EC760990 != -1)
      {
        swift_once();
      }

      v17 = sub_1D33DE464();
      __swift_project_value_buffer(v17, qword_1EC762130);
      v18 = sub_1D33DE444();
      v19 = sub_1D33DEAF4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D331A000, v18, v19, "carrier flow", v20, 2u);
        MEMORY[0x1D38B81C0](v20, -1, -1);
      }

      v16 = 1;
    }

    else
    {
      v16 = 6;
    }

    *a3 = v16;
  }
}

uint64_t sub_1D33D9D00@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 initiator];
  if (!v4)
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v11 = sub_1D33DE464();
    __swift_project_value_buffer(v11, qword_1EC762130);
    v12 = sub_1D33DE444();
    v13 = sub_1D33DEAF4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D331A000, v12, v13, "initiator is nil", v14, 2u);
      MEMORY[0x1D38B81C0](v14, -1, -1);
    }

    if (([a1 isOneToOne] & 1) == 0)
    {
      v15 = *(PKRecentsController.contactByHandles(in:)(a1) + 16);

      if (!v15)
      {
        v10 = 3;
        goto LABEL_20;
      }
    }

    result = [a1 isOneToOne];
    if ((result & 1) == 0)
    {
      result = PKRecentsController.atLeastOneUnknownCaller(in:)(a1);
      if (result)
      {
        v10 = 4;
        goto LABEL_20;
      }
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v5 = sub_1D33DE464();
  __swift_project_value_buffer(v5, qword_1EC762130);
  v6 = sub_1D33DE444();
  v7 = sub_1D33DEAF4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D331A000, v6, v7, "initiator is not nil", v8, 2u);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  result = [a1 isOneToOne];
  if (result)
  {
    goto LABEL_19;
  }

  result = PKRecentsController.isInitiatorUnknown(in:)(a1);
  if (result)
  {
    v10 = 5;
  }

  else
  {
    v10 = 4;
  }

LABEL_20:
  *a2 = v10;
  return result;
}

uint64_t PKRecentsController.isInitiatorUnknown(in:)(void *a1)
{
  v1 = a1;
  v2 = [a1 initiator];
  if (v2)
  {
    v3 = v2;
    if (qword_1EC760990 != -1)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v4 = sub_1D33DE464();
      __swift_project_value_buffer(v4, qword_1EC762130);
      v5 = v3;
      v6 = sub_1D33DE444();
      v7 = sub_1D33DEAF4();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v5;
        *v9 = v3;
        v10 = v5;
        _os_log_impl(&dword_1D331A000, v6, v7, "isInitiatorUnknownForCall call.initiator %@", v8, 0xCu);
        sub_1D33DBD28(v9);
        MEMORY[0x1D38B81C0](v9, -1, -1);
        MEMORY[0x1D38B81C0](v8, -1, -1);
      }

      v1 = PKRecentsController.contactByHandles(in:)(v1);
      v11 = v1[2];
      if (!v11)
      {
        break;
      }

      v12 = 0;
      v3 = 0x1E6993578;
      while (v12 < v1[2])
      {
        v13 = v1[v12 + 4];
        if (v13)
        {
          sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
          v14 = v5;
          v15 = v13;
          v16 = sub_1D33DEC74();

          if (v16)
          {
            v17 = 0;
            goto LABEL_19;
          }
        }

        if (v11 == ++v12)
        {
          v17 = 1;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_24:
      swift_once();
    }

    v17 = 1;
LABEL_19:

    v21 = sub_1D33DE444();
    v22 = sub_1D33DEAF4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v17;
      _os_log_impl(&dword_1D331A000, v21, v22, "isInitiatorUnknown: %{BOOL}d", v23, 8u);
      MEMORY[0x1D38B81C0](v23, -1, -1);
    }
  }

  else
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v18 = sub_1D33DE464();
    __swift_project_value_buffer(v18, qword_1EC762130);
    v5 = sub_1D33DE444();
    v19 = sub_1D33DEAF4();
    if (os_log_type_enabled(v5, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D331A000, v5, v19, "isInitiatorUnknownForCall call.initiator nil", v20, 2u);
      MEMORY[0x1D38B81C0](v20, -1, -1);
    }

    v17 = 0;
  }

  return v17;
}

BOOL PKRecentsController.allUnknownContact(in:)(void *a1)
{
  v1 = *(PKRecentsController.contactByHandles(in:)(a1) + 16);

  return v1 == 0;
}

BOOL PKRecentsController.atLeastOneUnknownCaller(in:)(void *a1)
{
  v2 = [a1 validRemoteParticipantHandles];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
  sub_1D331F514();
  v4 = sub_1D33DEA54();

  v5 = *(PKRecentsController.contactByHandles(in:)(a1) + 16);

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_1D33DEE14();
  }

  else
  {
    v6 = *(v4 + 16);
  }

  return v5 != v6;
}

Swift::String __swiftcall CallReportingViewModel.reportActionTitle(of:)(CallsAppServices::CallReportingViewModel::ReportingFlow of)
{
  v2 = (v1 + *off_1E843BA10[*of]);
  v3 = *v2;
  v4 = v2[1];

  v5 = v3;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

id CallReportingViewModel.reportActionImage.getter()
{
  v0 = sub_1D33DE784();
  v1 = [objc_opt_self() systemImageNamed_];

  return v1;
}

id CallReportingViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallReportingViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PKRecentsController.unknownHandles(in:)(void *a1)
{
  v3 = [a1 validRemoteParticipantHandles];
  if (!v3)
  {
    if (qword_1EC760990 != -1)
    {
      swift_once();
    }

    v14 = sub_1D33DE464();
    __swift_project_value_buffer(v14, qword_1EC762130);
    v15 = sub_1D33DE444();
    v16 = sub_1D33DEAF4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_13;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "unknownHandles is empty b/c no handles";
    goto LABEL_12;
  }

  v4 = v3;
  sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
  sub_1D331F514();
  v5 = sub_1D33DEA54();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D33E1DE0;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v7 = sub_1D33DE8A4();

  v8 = [v1 contactByHandleForRecentCall:a1 keyDescriptors:v7];

  if (v8)
  {
    sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
    v9 = sub_1D33DE6F4();

    v10 = sub_1D33DC274(v5, v9);

    v11 = sub_1D33A5AEC(v10);

    v12 = sub_1D335F404(v11);

    return v12;
  }

  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v19 = sub_1D33DE464();
  __swift_project_value_buffer(v19, qword_1EC762130);
  v15 = sub_1D33DE444();
  v16 = sub_1D33DEAF4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "unknownHandles is empty b/c contactByHandle is nil";
LABEL_12:
    _os_log_impl(&dword_1D331A000, v15, v16, v18, v17, 2u);
    MEMORY[0x1D38B81C0](v17, -1, -1);
  }

LABEL_13:

  return MEMORY[0x1E69E7CC0];
}

uint64_t PKRecentsController.contactByHandles(in:)(void *a1)
{
  v3 = [a1 validRemoteParticipantHandles];
  if (!v3)
  {
    if (qword_1EC760990 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_6;
  }

  v4 = v3;
  sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
  sub_1D331F514();
  v5 = sub_1D33DEA54();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D33E1DE0;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v7 = sub_1D33DE8A4();

  v8 = [v1 contactByHandleForRecentCall:a1 keyDescriptors:v7];

  if (v8)
  {
    sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
    v9 = sub_1D33DE6F4();

    v35 = MEMORY[0x1E69E7CC0];
    if ((v5 & 0xC000000000000001) != 0)
    {
      sub_1D33DEDC4();
      sub_1D33DEA94();
      v5 = v36;
      v10 = v37;
      v11 = v38;
      v12 = v39;
      v13 = v40;
    }

    else
    {
      v12 = 0;
      v21 = -1 << *(v5 + 32);
      v10 = v5 + 56;
      v11 = ~v21;
      v22 = -v21;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v13 = v23 & *(v5 + 56);
    }

    v24 = (v11 + 64) >> 6;
    while (1)
    {
      if (v5 < 0)
      {
        if (!sub_1D33DEE54() || (swift_dynamicCast(), (v27 = v34) == 0))
        {
LABEL_37:

          sub_1D331FEEC(v5);
          v33 = sub_1D335F404(v35);

          return v33;
        }
      }

      else
      {
        v25 = v12;
        v26 = v13;
        if (!v13)
        {
          while (1)
          {
            v12 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v12 >= v24)
            {
              goto LABEL_37;
            }

            v26 = *(v10 + 8 * v12);
            ++v25;
            if (v26)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_39:
          swift_once();
LABEL_6:
          v14 = sub_1D33DE464();
          __swift_project_value_buffer(v14, qword_1EC762130);
          v15 = sub_1D33DE444();
          v16 = sub_1D33DEAF4();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            v18 = "unknownHandles is empty b/c no handles";
            goto LABEL_12;
          }

          goto LABEL_13;
        }

LABEL_25:
        v13 = (v26 - 1) & v26;
        v27 = *(*(v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v26)))));
        if (!v27)
        {
          goto LABEL_37;
        }
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v28 = v27;
        v29 = sub_1D33DF0A4();

        if (!v29)
        {
          goto LABEL_19;
        }

        swift_dynamicCast();
        v30 = v34;
        if (!v34)
        {
          goto LABEL_19;
        }

LABEL_36:

        sub_1D33DEF84();
        sub_1D33DEFB4();
        sub_1D33DEFC4();
        sub_1D33DEF94();
      }

      else
      {
        if (*(v9 + 16))
        {
          v31 = sub_1D33B9340(v27);
          if (v32)
          {
            v30 = *(*(v9 + 56) + 8 * v31);
            if (v30)
            {
              goto LABEL_36;
            }
          }
        }

LABEL_19:
      }
    }
  }

  if (qword_1EC760990 != -1)
  {
    swift_once();
  }

  v19 = sub_1D33DE464();
  __swift_project_value_buffer(v19, qword_1EC762130);
  v15 = sub_1D33DE444();
  v16 = sub_1D33DEAF4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "contacts list is empty";
LABEL_12:
    _os_log_impl(&dword_1D331A000, v15, v16, v18, v17, 2u);
    MEMORY[0x1D38B81C0](v17, -1, -1);
  }

LABEL_13:

  return MEMORY[0x1E69E7CC0];
}

BOOL sub_1D33DAEC8(void *a1)
{
  v1 = *(PKRecentsController.contactByHandles(in:)(a1) + 16);

  return v1 == 0;
}

uint64_t CallReportingViewModel.shouldShowContactBlockReportButton(for:)(void *a1)
{
  if (![a1 isComingFaceTimeCall] || !*(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker))
  {
    return 0;
  }

  swift_getObjectType();
  return sub_1D33DDFB4() & 1;
}

uint64_t CallReportingViewModel.shouldShowReportAction(for:)(void *a1)
{
  if ([a1 isTelephony])
  {
    if ([a1 isIncoming])
    {
      if (*(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker))
      {
        swift_getObjectType();
        if (sub_1D33DDFC4())
        {
          v3 = [objc_opt_self() sharedInstance];
          v4 = [v3 isClassificationAvailable];

          if (v4 & 1) != 0 || ([a1 carrierAllowsReportVoiceCall])
          {
            return 1;
          }
        }
      }
    }
  }

  result = [a1 isComingFaceTimeCall];
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_unknownContactChecker))
    {
      swift_getObjectType();
      return sub_1D33DDFB4() & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D33DB0B0(void *a1)
{
  v1 = a1;
  v2 = sub_1D33DB140(MEMORY[0x1E69935E8]);

  return v2 & 1;
}

uint64_t sub_1D33DB0F8(void *a1)
{
  v1 = a1;
  v2 = sub_1D33DB140(MEMORY[0x1E69935E0]);

  return v2 & 1;
}

uint64_t sub_1D33DB140(void *a1)
{
  v2 = [v1 serviceProvider];
  if (!v2)
  {
    sub_1D33DE7B4();
    goto LABEL_9;
  }

  v3 = v2;
  v4 = sub_1D33DE7B4();
  v6 = v5;

  v7 = sub_1D33DE7B4();
  if (!v6)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_11;
  }

  if (v4 == v7 && v6 == v8)
  {

    v10 = 1;
  }

  else
  {
    v10 = sub_1D33DF1B4();
  }

LABEL_11:

  return v10 & 1;
}

uint64_t sub_1D33DB208(void *a1)
{
  v1 = a1;
  v2 = sub_1D33DB23C();

  return v2 & 1;
}

id sub_1D33DB23C()
{
  result = [v0 remoteParticipantHandles];
  if (result)
  {
    v2 = result;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331F514();
    v3 = sub_1D33DEA54();

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = sub_1D33DEE14();
    }

    else
    {
      v4 = *(v3 + 16);
    }

    return (v4 == 1);
  }

  return result;
}

uint64_t sub_1D33DB2E4(void *a1)
{
  sub_1D33DE064();
  v2 = a1;
  sub_1D33DE054();
  sub_1D33DE0A4();
  swift_allocObject();
  sub_1D33DE084();
  v6[3] = sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v6[4] = MEMORY[0x1E69D8A20];
  v6[0] = v2;
  v3 = v2;
  v4 = sub_1D33DE074();

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4 & 1;
}

uint64_t CHRecentCall.carrierAllowsReportVoiceCall.getter()
{
  sub_1D33DE064();
  sub_1D33DE054();
  sub_1D33DE0A4();
  swift_allocObject();
  sub_1D33DE084();
  v4[3] = sub_1D331DA18(0, &unk_1EDEBEF10, 0x1E6993590);
  v4[4] = MEMORY[0x1E69D8A20];
  v4[0] = v0;
  v1 = v0;
  v2 = sub_1D33DE074();

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

id sub_1D33DB4A8(void *a1)
{
  v1 = a1;
  if ([v1 isIncoming])
  {
    v2 = [v1 isFaceTime];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL sub_1D33DB500(void *a1)
{
  v1 = a1;
  v2 = sub_1D33DB534();

  return v2;
}

BOOL sub_1D33DB534()
{
  v1 = [v0 disconnectedCause];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 intValue];

    if ((byte_1F4EE4824 & 1) != 0 || dword_1F4EE4820 != v3)
    {
      return (dword_1F4EE4828 == v3) & ~byte_1F4EE482C;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v5 = [v0 callStatus];
    return (*MEMORY[0x1E69935C8] & v5) != 0;
  }
}

uint64_t sub_1D33DB654@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = [v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

id CHRecentCall.formattedRemoteParticipantHandles.getter()
{
  v1 = [v0 remoteParticipantHandles];
  if (v1)
  {
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D331F514();
    v2 = sub_1D33DEA54();

    v1 = sub_1D33D6CA8(v2);
  }

  return v1;
}

Swift::Void __swiftcall CallReportingViewModel.blockContact(_:)(CNContact a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E1DE0;
  *(inited + 32) = a1;
  v3 = a1.super.isa;
  _s16CallsAppServices22CallReportingViewModelC5block8contactsySaySo9CNContactCG_tF_0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
}

void CallReportingViewModel.reportSpam(callItem:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_spamReportManager);
  FaceTimeSpamReportManager.reportSpam(call:)(a1);
}

uint64_t CallReportingViewModel.shouldShowBlockReportActions(for:callItem:)(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = CallReportingViewModel.shouldShowReportAction(for:)(v2);

  return v3 & 1;
}

uint64_t sub_1D33DB8DC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D33E1DE0;
  *(inited + 32) = a1;
  v3 = a1;
  _s16CallsAppServices22CallReportingViewModelC5block8contactsySaySo9CNContactCG_tF_0(inited);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_1D33DB96C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22CallReportingViewModel_spamReportManager);
  FaceTimeSpamReportManager.reportSpam(call:)(a1);
}

uint64_t sub_1D33DB9CC(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = CallReportingViewModel.shouldShowReportAction(for:)(v2);

  return v3 & 1;
}

void sub_1D33DBA0C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t *sub_1D33DBA80(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1D33DBD90(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void _s16CallsAppServices22CallReportingViewModelC5block8contactsySaySo9CNContactCG_tF_0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = 0x1EC760000uLL;
    v22 = v1;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1D38B75D0](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (*(v6 + 2448) != -1)
      {
        swift_once();
      }

      v10 = sub_1D33DE464();
      __swift_project_value_buffer(v10, qword_1EC762130);
      v11 = v8;
      v12 = sub_1D33DE444();
      v13 = sub_1D33DEAF4();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = i;
        v16 = v5;
        v17 = v4;
        v18 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v18 = v11;
        v19 = v11;
        _os_log_impl(&dword_1D331A000, v12, v13, "blocking, contact %@", v14, 0xCu);
        sub_1D33DBD28(v18);
        v20 = v18;
        v4 = v17;
        v5 = v16;
        i = v15;
        v1 = v22;
        MEMORY[0x1D38B81C0](v20, -1, -1);
        v21 = v14;
        v6 = 0x1EC760000;
        MEMORY[0x1D38B81C0](v21, -1, -1);
      }

      sub_1D33D8694();
      ++v3;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

uint64_t sub_1D33DBD28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D90, &unk_1D33E4E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D33DBD90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v27 = a4 & 0xC000000000000001;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    if (v27)
    {
      v17 = v16;
      if (sub_1D33DF0A4())
      {
        sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
        swift_dynamicCast();
        v18 = v28;
        if (v28)
        {
          goto LABEL_4;
        }
      }

LABEL_19:

      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_22:

        sub_1D3366F3C(a1, a2, v26, a3);
        return;
      }
    }

    else
    {
      v19 = *(a4 + 16);
      v20 = v16;
      if (!v19)
      {
        goto LABEL_19;
      }

      v21 = sub_1D33B9340(v20);
      if ((v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      v18 = *(*(a4 + 56) + 8 * v21);
      if (!v18)
      {
        goto LABEL_19;
      }

LABEL_4:
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_22;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1D33DBF6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_28;
  }

  while (2)
  {
    v32 = v8;
    v33 = v3;
    v31 = &v31;
    MEMORY[0x1EEE9AC00](v10);
    v34 = &v31 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v9);
    v11 = 0;
    v3 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v8 = (v12 + 63) >> 6;
    v37 = a2 & 0xC000000000000001;
    v15 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v15 = a2;
    }

    v35 = 0;
    v36 = v15;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v19 = v16 | (v11 << 6);
      v9 = *(*(a1 + 48) + 8 * v19);
      if (v37)
      {
        v20 = v9;
        v21 = sub_1D33DF0A4();
        if (v21)
        {
          v38 = v21;
          sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
          swift_dynamicCast();
          v22 = v39;
          if (v39)
          {
            goto LABEL_7;
          }
        }

LABEL_22:

        *&v34[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_25:
          v28 = sub_1D3366F3C(v34, v32, v35, a1);

          return v28;
        }
      }

      else
      {
        v23 = *(a2 + 16);
        v24 = v9;
        if (!v23)
        {
          goto LABEL_22;
        }

        v25 = sub_1D33B9340(v24);
        if ((v26 & 1) == 0)
        {
          goto LABEL_22;
        }

        v22 = *(*(a2 + 56) + 8 * v25);
        if (!v22)
        {
          goto LABEL_22;
        }

LABEL_7:
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_25;
      }

      v18 = *(v3 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v30 = swift_slowAlloc();

  v28 = sub_1D33DBA80(v30, v8, a1, a2);

  MEMORY[0x1D38B81C0](v30, -1, -1);

  return v28;
}

uint64_t sub_1D33DC274(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1D33DBF6C(a1, a2);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v25 = MEMORY[0x1E69E7CD0];

  sub_1D33DEDC4();
  v4 = sub_1D33DEE54();
  if (v4)
  {
    v5 = v4;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    v6 = v5;
    do
    {
      v23 = v6;
      swift_dynamicCast();
      if ((a2 & 0xC000000000000001) != 0)
      {
        v13 = v24;
        v14 = sub_1D33DF0A4();

        if (!v14)
        {
          goto LABEL_15;
        }

        sub_1D331DA18(0, &qword_1EDEBFD50, 0x1E695CD58);
        swift_dynamicCast();
        v15 = v23;
      }

      else if (!*(a2 + 16) || (v16 = sub_1D33B9340(v24), (v17 & 1) == 0) || (v15 = *(*(a2 + 56) + 8 * v16)) == 0)
      {
LABEL_15:
        v18 = *(v3 + 16);
        if (*(v3 + 24) <= v18)
        {
          sub_1D3364FA4(v18 + 1);
        }

        v3 = v25;
        result = sub_1D33DEC64();
        v8 = v25 + 56;
        v9 = -1 << *(v25 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v25 + 56 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v25 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v11 == v20;
            if (v11 == v20)
            {
              v11 = 0;
            }

            v19 |= v21;
            v22 = *(v8 + 8 * v11);
          }

          while (v22 == -1);
          v12 = __clz(__rbit64(~v22)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v25 + 48) + 8 * v12) = v24;
        ++*(v25 + 16);
        goto LABEL_7;
      }

LABEL_7:
      v6 = sub_1D33DEE54();
    }

    while (v6);
  }

  return v3;
}

unint64_t sub_1D33DC520()
{
  result = qword_1EC7620B0;
  if (!qword_1EC7620B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7620B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallReportingViewModel.ReportingFlow(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CallReportingViewModel.ReportingFlow(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D33DC718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for TUActor();
  inited = swift_initStaticObject();
  v6[5] = inited;
  v6[6] = sub_1D33682A0(inited, v8);
  v10 = sub_1D33DE914();
  v6[7] = v10;
  v6[8] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D33DC7BC, v10, v9);
}

uint64_t sub_1D33DC7BC()
{
  v1 = [*(v0[2] + 16) providerManager];
  v2 = [v1 faceTimeProvider];

  v3 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
  v0[9] = v3;

  v4 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
  v5 = sub_1D33DE784();
  v6 = [v4 initWithType:2 value:v5];

  [v3 setHandle_];
  v7 = v3;
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1D33DC930;
  v9 = v0[5];
  v10 = v0[6];

  return sub_1D33DCABC(v7, v9, v10);
}

uint64_t sub_1D33DC930(void *a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
    v7 = sub_1D33DD930;
  }

  else
  {

    v5 = *(v4 + 56);
    v6 = *(v4 + 64);
    v7 = sub_1D33DCA5C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D33DCA5C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D33DCABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[4] = a2;
  v4[2] = a1;
  swift_getObjectType();
  v6 = sub_1D33DE914();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D33DCB54, v6, v5);
}

uint64_t sub_1D33DCB54()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v4[2] = v2;
  v4[3] = v0 + 2;
  v4[4] = v3;
  v4[5] = v1;
  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = sub_1D33DD27C();
  *v5 = v0;
  v5[1] = sub_1D33DCC64;

  return MEMORY[0x1EEE6DE38](v0 + 3, v3, v1, 0xD000000000000015, 0x80000001D33E8520, sub_1D33DD270, v4, v6);
}

uint64_t sub_1D33DCC64()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D33DCDE8;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D33DCD80;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D33DCD80()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D33DCDE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D33DCE78(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *v2;
  v9 = sub_1D33DE9B4();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for TUActor();
  inited = swift_initStaticObject();
  v12 = sub_1D33682A0(inited, v11);
  v13 = swift_allocObject();
  v13[2] = inited;
  v13[3] = v12;
  v13[4] = v8;
  v13[5] = a1;
  v13[6] = a2;

  sub_1D333DD88(0, 0, v7, &unk_1D33E5868, v13);
}

uint64_t sub_1D33DCFC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D334CF9C;

  return sub_1D33DC718(a1, v4, v5, v6, v7, v8);
}

void sub_1D33DD090(uint64_t a1, void *a2, void **a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7620D0, &qword_1D33E5878);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = aBlock - v12;
  v14 = *a3;
  (*(v11 + 16))(aBlock - v12, a1, v10);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_1D33DD444;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D33DD6C8;
  aBlock[3] = &block_descriptor_6;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [a2 dialWithRequest:v14 completion:v17];
  _Block_release(v17);
}

unint64_t sub_1D33DD27C()
{
  result = qword_1EC761FD0;
  if (!qword_1EC761FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC761FD0);
  }

  return result;
}

void sub_1D33DD2C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = objc_allocWithZone(MEMORY[0x1E69D8A40]);
    v8 = a1;
    v9 = [v7 initWithCall_];
    ObjectType = swift_getObjectType();
    v11 = MEMORY[0x1EEE9AC00](ObjectType);
    v14[8] = a4;
    v14[9] = v9;
    v14[2] = MEMORY[0x1EEE9AC00](v11);
    v14[3] = a3;
    v14[4] = sub_1D33DD788;
    v14[5] = v12;
    sub_1D33DD514(sub_1D33DD790, v14, "CallsAppServices/TUCallCenter_Async.swift", 41, 2u, 43, v13, MEMORY[0x1E69E7CA8] + 8, a3);
  }

  else
  {
    sub_1D33DD734();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7620D0, &qword_1D33E5878);
    sub_1D33DE924();
  }
}

void sub_1D33DD444(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7620D0, &qword_1D33E5878) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1D33DD2C8(a1, v4, v5, v6);
}

uint64_t sub_1D33DD4C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7620D0, &qword_1D33E5878);
  return sub_1D33DE934();
}

uint64_t sub_1D33DD514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D33DE914();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  sub_1D33DD7EC(sub_1D33DD7C4, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D33DEF24();
    MEMORY[0x1D38B6ED0](0xD00000000000003FLL, 0x80000001D33E8590);
    sub_1D33DF194();
    MEMORY[0x1D38B6ED0](46, 0xE100000000000000);
    result = sub_1D33DF0D4();
    __break(1u);
  }

  return result;
}

void sub_1D33DD6C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t sub_1D33DD734()
{
  result = qword_1EC7620D8;
  if (!qword_1EC7620D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7620D8);
  }

  return result;
}

uint64_t sub_1D33DD7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  sub_1D33DD89C(&v14);
}

unint64_t sub_1D33DD8DC()
{
  result = qword_1EC7620E0;
  if (!qword_1EC7620E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7620E0);
  }

  return result;
}

uint64_t sub_1D33DD984()
{
  v0 = sub_1D33DE464();
  __swift_allocate_value_buffer(v0, qword_1EC762148);
  __swift_project_value_buffer(v0, qword_1EC762148);
  return sub_1D33DE454();
}

uint64_t sub_1D33DDA04()
{
  v0 = sub_1D33DE464();
  __swift_allocate_value_buffer(v0, qword_1EC762160);
  __swift_project_value_buffer(v0, qword_1EC762160);
  return sub_1D33DE454();
}