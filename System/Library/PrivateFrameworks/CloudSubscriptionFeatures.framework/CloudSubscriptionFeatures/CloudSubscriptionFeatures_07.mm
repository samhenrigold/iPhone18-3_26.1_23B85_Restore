void sub_1DF52E324(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 7169121;
  }

  else
  {
    v2 = 7169633;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1DF52E37C()
{
  v1 = *(v0 + 49);
  v2 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  *(v0 + 16) = v2;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1DF520E6C;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 48, 0, 0, 0xD00000000000001BLL, 0x80000001DF5744A0, sub_1DF521864, v3, v5);
}

uint64_t sub_1DF52E4BC()
{
  v1 = *(v0 + 41);
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DF52E580;

  return sub_1DF5101CC((v0 + 40));
}

uint64_t sub_1DF52E580(char a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF52E6E0, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_1DF52E720()
{
  v1 = *(v0 + 48);
  v2 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  *(v0 + 16) = v2;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1DF520A1C;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000012, 0x80000001DF574450, sub_1DF521870, v3, v5);
}

uint64_t sub_1DF52E85C()
{
  v1 = *(v0 + 41);
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DF51B48C;

  return sub_1DF50E8B0((v0 + 40));
}

uint64_t sub_1DF52E940()
{
  v1 = [objc_allocWithZone(type metadata accessor for XPCCaller()) init];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = sub_1DF510B34;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1DF52EA68;
  v4 = v0[2];

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000023, 0x80000001DF574470, sub_1DF52FBB4, v2, &type metadata for FollowUp.WaitlistCFUEligibilityResult);
}

uint64_t sub_1DF52EA68()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF52EBB0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DF52EBB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF52EC38(uint64_t a1)
{
  v2 = _s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0();
  v1[6] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v1[7] = v3;
    *v3 = v1;
    v3[1] = sub_1DF52ED04;

    return sub_1DF52F008();
  }

  else
  {
    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_1DF52ED04()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF52EE40, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DF52EE40()
{
  v16 = v0;

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED955C68);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C24();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1DF5651B4();
    v12 = sub_1DF47EF6C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Error clearing legacy CFUs: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DF52F028()
{
  v1 = *(v0 + 104);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_1DF52F150;

  return v6(v2, v3);
}

uint64_t sub_1DF52F150(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF52F284, 0, 0);
  }
}

id sub_1DF52F284(__n128 a1)
{
  v2 = v1[15];
  if (v2 >> 62)
  {
LABEL_40:
    v3 = sub_1DF564F04();
    v4 = v1[15];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v1[15];
    if (v3)
    {
LABEL_3:
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v45 = v4 + 32;
      v46 = v2 & 0xFFFFFFFFFFFFFF8;
      v7 = v1[16];
      a1.n128_u64[0] = 138412290;
      v41 = a1;
      v42 = v2 & 0xC000000000000001;
      v43 = v3;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x1E12D66D0](v5, v1[15]);
        }

        else
        {
          if (v5 >= *(v46 + 16))
          {
            goto LABEL_39;
          }

          v8 = *(v45 + 8 * v5);
        }

        v2 = v8;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v10 = [v8 uniqueIdentifier];
        if (v10)
        {
          break;
        }

LABEL_5:
        ++v5;
        if (v9 == v3)
        {
          goto LABEL_33;
        }
      }

      v11 = v10;
      v12 = sub_1DF564944();
      v14 = v13;

      if (v12 == 0xD000000000000017 && 0x80000001DF573FF0 == v14)
      {
      }

      else
      {
        v16 = sub_1DF5650D4();

        if ((v16 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v17 = [v2 extensionIdentifier];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1DF564944();
        v21 = v20;

        if (v19 == 0xD000000000000021 && 0x80000001DF574B40 == v21)
        {

LABEL_24:
          if (qword_1ED9558B8 != -1)
          {
            swift_once();
          }

          v23 = sub_1DF5647B4();
          __swift_project_value_buffer(v23, qword_1ED955C68);
          v24 = v2;
          v25 = sub_1DF564794();
          v26 = sub_1DF564C44();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *v27 = v41.n128_u32[0];
            *(v27 + 4) = v24;
            *v28 = v24;
            v29 = v24;
            _os_log_impl(&dword_1DF47C000, v25, v26, "We found a legacy followup item. Clearing it. %@", v27, 0xCu);
            sub_1DF47E5B4(v28, &unk_1ECE37F10, &qword_1DF567510);
            v1 = v44;
            MEMORY[0x1E12D75F0](v28, -1, -1);
            MEMORY[0x1E12D75F0](v27, -1, -1);
          }

          v30 = v1[13];

          sub_1DF47FCEC(v30 + 56, (v1 + 8));
          v32 = v1[11];
          v31 = v1[12];
          v2 = __swift_project_boxed_opaque_existential_0(v1 + 8, v32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1DF567CF0;
          v34 = v24;
          result = [v24 uniqueIdentifier];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v36 = result;
          v37 = sub_1DF564944();
          v39 = v38;

          *(inited + 32) = v37;
          *(inited + 40) = v39;
          (*(v31 + 16))(inited, v32, v31);
          if (v7)
          {

            swift_setDeallocating();
            sub_1DF4BF4C8(inited + 32);
            __swift_destroy_boxed_opaque_existential_0((v44 + 64));
            v40 = *(v44 + 8);
            goto LABEL_34;
          }

          swift_setDeallocating();
          sub_1DF4BF4C8(inited + 32);
          v1 = v44;
          __swift_destroy_boxed_opaque_existential_0((v44 + 64));
          v6 = v42;
          v3 = v43;
          goto LABEL_32;
        }

        v22 = sub_1DF5650D4();

        if (v22)
        {
          goto LABEL_24;
        }
      }

LABEL_31:

LABEL_32:
      v9 = v5 + 1;
      goto LABEL_5;
    }
  }

LABEL_33:

  v40 = v1[1];
LABEL_34:

  return v40();
}

uint64_t _s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6997AC8]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithClientIdentifier_];

  if (v2)
  {
    v3 = sub_1DF481988();
    v4 = [v3 aa_primaryAppleAccount];

    if (v4)
    {
      v5 = [v4 aa_personID];

      if (v5)
      {
        v4 = sub_1DF564944();
        v7 = v6;

LABEL_12:
        v13 = SiriAssistantLocale.current.getter();
        v15 = v14;
        v16 = objc_allocWithZone(MEMORY[0x1E695E000]);
        v17 = sub_1DF564914();
        v18 = [v16 initWithSuiteName_];

        if (v18)
        {
          v19 = sub_1DF4BECB0(0, &qword_1ED9562E0, 0x1E695E000);
          v20 = &off_1F5A8A490;
        }

        else
        {
          v19 = 0;
          v20 = 0;
          v26[1] = 0;
          v26[2] = 0;
        }

        v26[0] = v18;
        v26[3] = v19;
        v26[4] = v20;
        v21 = [objc_allocWithZone(type metadata accessor for GMAnalyticsProvider()) init];
        v24 = sub_1DF4BECB0(0, &qword_1ED9551B0, 0x1E6997AC8);
        v25 = &off_1F5A8BE70;
        *&v23 = v2;
        type metadata accessor for FollowUp();
        v22 = swift_allocObject();
        *(v22 + 16) = 0;
        *(v22 + 112) = 0u;
        *(v22 + 128) = 0;
        *(v22 + 96) = 0u;
        sub_1DF47E390(&v23, v22 + 56);
        *(v22 + 40) = v4;
        *(v22 + 48) = v7;
        *(v22 + 24) = v13;
        *(v22 + 32) = v15;
        swift_beginAccess();
        sub_1DF5304FC(v26, v22 + 96);
        swift_endAccess();
        result = v22;
        *(v22 + 136) = v21;
        *(v22 + 144) = sub_1DF47FD50;
        *(v22 + 152) = 0;
        return result;
      }

      v4 = 0;
    }

    v7 = 0;
    goto LABEL_12;
  }

  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF5647B4();
  __swift_project_value_buffer(v8, qword_1ED955C68);
  v9 = sub_1DF564794();
  v10 = sub_1DF564C24();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DF47C000, v9, v10, "Unable to make followup controller. Will not post CFUs.", v11, 2u);
    MEMORY[0x1E12D75F0](v11, -1, -1);
  }

  return 0;
}

uint64_t sub_1DF52FA2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  if (qword_1ED9558B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED955C68);
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Setting hasSentWaitlistCFU to true.", v6, 2u);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  sub_1DF564484();
  v7 = sub_1DF564494();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  return sub_1DF52B970(v2);
}

unint64_t sub_1DF52FC04()
{
  result = qword_1ECE38300;
  if (!qword_1ECE38300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38300);
  }

  return result;
}

unint64_t sub_1DF52FC5C()
{
  result = qword_1ECE38308;
  if (!qword_1ECE38308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38308);
  }

  return result;
}

unint64_t sub_1DF52FCB4()
{
  result = qword_1ECE38310;
  if (!qword_1ECE38310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38310);
  }

  return result;
}

uint64_t sub_1DF52FD9C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF4A3FF4;

  return v7(a1, a2);
}

uint64_t getEnumTagSinglePayload for FollowUp.WaitlistCFUEligibilityResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FollowUp.WaitlistCFUEligibilityResult(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DF530368(uint64_t a1)
{
  v2 = type metadata accessor for FollowUpConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF530480(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);

  return sub_1DF5285F4(a1);
}

uint64_t sub_1DF5304FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CE0, &qword_1DF568B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static Preferences.dateRequestBlocked()@<X0>(uint64_t a1@<X8>)
{
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v3 = sub_1DF564914();
      v4 = [v2 valueForKey_];

      if (v4)
      {
        sub_1DF564D24();
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
      }

      v13 = v11;
      v14 = v12;
      if (*(&v12 + 1))
      {
        v8 = sub_1DF564494();
        v9 = swift_dynamicCast();
        return (*(*(v8 - 8) + 56))(a1, v9 ^ 1u, 1, v8);
      }
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    sub_1DF47E5B4(&v13, &qword_1ECE378F0, &qword_1DF5686F0);
    v10 = sub_1DF564494();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    v5 = sub_1DF564494();
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 1, 1, v5);
  }
}

id static Preferences.forceTaskLimiterTimeout.getter()
{
  if ((sub_1DF480190() & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED956240 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED956248;
  if (!qword_1ED956248)
  {
    return 0;
  }

  v1 = sub_1DF564914();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_1DF530824(_BYTE *a1@<X8>)
{
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v3 = sub_1DF564914();
      LOBYTE(v2) = [v2 BOOLForKey_];
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *a1 = v2;
}

void sub_1DF5308D8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v3 = sub_1DF564914();
      [v2 setBool:v1 forKey:v3];
    }
  }
}

void static Preferences.forceTaskLimiterTimeout.setter(char a1)
{
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v3 = sub_1DF564914();
      [v2 setBool:a1 & 1 forKey:v3];
    }
  }
}

void (*static Preferences.forceTaskLimiterTimeout.modify(_BYTE *a1))(unsigned __int8 *a1)
{
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v3 = sub_1DF564914();
      LOBYTE(v2) = [v2 BOOLForKey_];
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  *a1 = v2;
  return sub_1DF530B38;
}

void sub_1DF530B38(unsigned __int8 *a1)
{
  v1 = *a1;
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v3 = sub_1DF564914();
      [v2 setBool:v1 forKey:v3];
    }
  }
}

uint64_t static Preferences.requestIsBlocked()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v3 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v4 = sub_1DF564914();
      v5 = [v3 valueForKey_];

      if (v5)
      {
        sub_1DF564D24();
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      v14 = v12;
      v15 = v13;
      if (*(&v13 + 1))
      {
        v6 = sub_1DF564494();
        v7 = swift_dynamicCast();
        v8 = *(v6 - 8);
        v9 = 1;
        (*(v8 + 56))(v2, v7 ^ 1u, 1, v6);
        if ((*(v8 + 48))(v2, 1, v6) != 1)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    sub_1DF47E5B4(&v14, &qword_1ECE378F0, &qword_1DF5686F0);
  }

  v10 = sub_1DF564494();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
LABEL_14:
  v9 = 0;
LABEL_15:
  sub_1DF47E5B4(v2, &qword_1ECE37A10, &qword_1DF567C00);
  return v9;
}

uint64_t static Preferences.blockRequest()()
{
  v0 = sub_1DF564494();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DF480190();
  if (v4)
  {
    if (qword_1ED956240 != -1)
    {
      v10 = v4;
      swift_once();
      v4 = v10;
    }

    v5 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v6 = v4;
      sub_1DF564484();
      v7 = sub_1DF5643E4();
      (*(v1 + 8))(v3, v0);
      v8 = sub_1DF564914();
      [v5 setObject:v7 forKey:v8];

      v4 = v6;
    }
  }

  return v4 & 1;
}

void static Preferences.unblockRequest()()
{
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v0 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v1 = sub_1DF564914();
      [v0 setURL:0 forKey:v1];
    }
  }
}

id sub_1DF5310AC()
{
  if (sub_1DF480190())
  {
    if (qword_1ED956240 != -1)
    {
      swift_once();
    }

    v0 = qword_1ED956248;
    if (qword_1ED956248)
    {
      v1 = sub_1DF564914();
      v2 = [v0 dictionaryForKey_];

      if (v2)
      {
        v3 = sub_1DF564874();

        if (*(v3 + 16) && (v4 = sub_1DF480420(0x737574617473, 0xE600000000000000), (v5 & 1) != 0) && (sub_1DF47F24C(*(v3 + 56) + 32 * v4, v19), (swift_dynamicCast() & 1) != 0) && (v6 = objc_allocWithZone(type metadata accessor for TicketStatus()), (v7 = TicketStatus.init(rawValue:)(v17, v18)) != 0))
        {
          v8 = v7;
          if (*(v3 + 16) && (v9 = sub_1DF480420(0x4965727574616566, 0xEA00000000007344), (v10 & 1) != 0))
          {
            sub_1DF47F24C(*(v3 + 56) + 32 * v9, v19);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
            if (swift_dynamicCast())
            {
              v11 = v17;
              v12 = type metadata accessor for WaitlistResult();
              v13 = objc_allocWithZone(v12);
              v14 = &v13[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_ticket];
              *v14 = 0;
              *(v14 + 1) = 0;
              *&v13[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_status] = v8;
              *&v13[OBJC_IVAR____TtC25CloudSubscriptionFeatures14WaitlistResult_featureIDs] = v11;
              v16.receiver = v13;
              v16.super_class = v12;
              return objc_msgSendSuper2(&v16, sel_init);
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

void *sub_1DF531308()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {

    v3 = sub_1DF4BECB0(0, &qword_1ED9562E0, 0x1E695E000);
    v4 = &off_1F5A8A490;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  type metadata accessor for SystemProperties();
  swift_initStaticObject();
  v5 = sub_1DF47E8A4();
  v7 = v6;
  type metadata accessor for ConfigCache();
  result = swift_allocObject();
  result[2] = v2;
  result[3] = 0;
  result[4] = 0;
  result[5] = v3;
  result[6] = v4;
  result[7] = v5;
  result[8] = v7;
  return result;
}

uint64_t sub_1DF531410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = *v4;
  v6 = sub_1DF564494();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v5[28] = *(v7 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF53154C, v4, 0);
}

uint64_t sub_1DF53154C()
{
  v77 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];

    v5 = sub_1DF480420(v4, v3);
    if (v6)
    {
      sub_1DF47FCEC(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_1DF47FCEC((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38448, &qword_1DF56CEF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38440, &qword_1DF56CEF0);
      if (swift_dynamicCast())
      {
        v7 = v0[19];
        v0[37] = v7;
        if (qword_1ED956060 != -1)
        {
          swift_once();
        }

        v8 = sub_1DF5647B4();
        __swift_project_value_buffer(v8, qword_1ED956068);

        v9 = sub_1DF564794();
        v10 = sub_1DF564C44();

        if (os_log_type_enabled(v9, v10))
        {
          v12 = v0[20];
          v11 = v0[21];
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v76[0] = v14;
          *v13 = 136446210;
          *(v13 + 4) = sub_1DF47EF6C(v12, v11, v76);
          _os_log_impl(&dword_1DF47C000, v9, v10, "Reusing existing task for identifier %{public}s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x1E12D75F0](v14, -1, -1);
          MEMORY[0x1E12D75F0](v13, -1, -1);
        }

        v15 = swift_task_alloc();
        v0[38] = v15;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
        *v15 = v0;
        v15[1] = sub_1DF531FD8;
        v18 = MEMORY[0x1E69E7288];
        v19 = v0 + 18;
        v20 = v7;
        v21 = v16;
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  if (qword_1ED956060 != -1)
  {
    swift_once();
  }

  v22 = sub_1DF5647B4();
  __swift_project_value_buffer(v22, qword_1ED956068);

  v23 = sub_1DF564794();
  v24 = sub_1DF564C44();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[20];
    v25 = v0[21];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v76[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_1DF47EF6C(v26, v25, v76);
    _os_log_impl(&dword_1DF47C000, v23, v24, "Creating new task for identifier %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1E12D75F0](v28, -1, -1);
    MEMORY[0x1E12D75F0](v27, -1, -1);
  }

  v29 = v0[31];
  v30 = v0[24];
  v32 = v0[22];
  v31 = v0[23];
  v33 = v0[20];
  v34 = v0[21];
  v35 = sub_1DF564B44();
  v74 = *(*(v35 - 8) + 56);
  v75 = v35;
  v74(v29, 1, 1);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v32;
  v36[5] = v31;

  v37 = sub_1DF515BA8(0, 0, v29, &unk_1DF56CEC8, v36);
  v0[32] = v37;
  v38 = *(v30 + 128);
  v39 = *(v30 + 136);
  v73 = v37;

  sub_1DF483600(v38, v39, v33, v34);

  v40 = sub_1DF564794();
  v41 = sub_1DF564C44();

  if (os_log_type_enabled(v40, v41))
  {
    v43 = v0[20];
    v42 = v0[21];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v76[0] = v45;
    *v44 = 136446210;
    *(v44 + 4) = sub_1DF47EF6C(v43, v42, v76);
    _os_log_impl(&dword_1DF47C000, v40, v41, "Performing task operation for identifier %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1E12D75F0](v45, -1, -1);
    MEMORY[0x1E12D75F0](v44, -1, -1);
  }

  v47 = v0[30];
  v46 = v0[31];
  v68 = v0[29];
  v69 = v0[28];
  v48 = v0[27];
  v67 = v0[26];
  v49 = v0[24];
  v71 = v0[21];
  v72 = v0[25];
  v70 = v0[20];
  sub_1DF564484();
  (v74)(v46, 1, 1, v75);
  v66 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v66;
  v50[4] = v49;
  v50[5] = v73;
  swift_retain_n();

  v65 = sub_1DF515B98(0, 0, v46, &unk_1DF56CED8, v50);
  v0[33] = v65;
  (v74)(v46, 1, 1, v75);
  (*(v48 + 16))(v68, v47, v67);
  v51 = (*(v48 + 80) + 72) & ~*(v48 + 80);
  v52 = swift_allocObject();
  *(v52 + 2) = v49;
  *(v52 + 3) = v66;
  *(v52 + 4) = v73;
  *(v52 + 5) = v65;
  *(v52 + 6) = v70;
  *(v52 + 7) = v71;
  *(v52 + 8) = v49;
  (*(v48 + 32))(&v52[v51], v68, v67);
  *&v52[(v69 + v51 + 7) & 0xFFFFFFFFFFFFFFF8] = v72;
  swift_retain_n();

  v53 = sub_1DF515BA8(0, 0, v46, &unk_1DF56CEE8, v52);
  v0[34] = v53;

  v54 = sub_1DF564794();
  v55 = sub_1DF564C44();

  if (os_log_type_enabled(v54, v55))
  {
    v57 = v0[20];
    v56 = v0[21];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v76[0] = v59;
    *v58 = 136446210;
    *(v58 + 4) = sub_1DF47EF6C(v57, v56, v76);
    _os_log_impl(&dword_1DF47C000, v54, v55, "Storing task for identifier %{public}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x1E12D75F0](v59, -1, -1);
    MEMORY[0x1E12D75F0](v58, -1, -1);
  }

  v61 = v0[20];
  v60 = v0[21];
  v76[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38440, &qword_1DF56CEF0);
  v76[4] = &off_1F5A86FC8;
  v76[0] = v53;
  swift_beginAccess();

  sub_1DF484020(v76, v61, v60);
  swift_endAccess();
  v62 = swift_task_alloc();
  v0[35] = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *v62 = v0;
  v62[1] = sub_1DF531EAC;
  v18 = MEMORY[0x1E69E7288];
  v19 = v0 + 18;
  v20 = v53;
  v21 = v63;
LABEL_20:

  return MEMORY[0x1EEE6DA10](v19, v20, v21, v17, v18);
}

uint64_t sub_1DF531EAC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_1DF54742C;
  }

  else
  {
    v4 = sub_1DF5473F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF531FD8()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_1DF547424;
  }

  else
  {
    v4 = sub_1DF5473F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF532104()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);

  (*(v3 + 8))(v1, v2);
  sub_1DF490EE8(v6, v5, v4);
  v7 = *(v0 + 312);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1DF5321F0()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_1DF5323B4;
  }

  else
  {
    v4 = sub_1DF53231C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF53231C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 312);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DF5323B4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1DF532448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = *v4;
  v6 = sub_1DF564494();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v5[28] = *(v7 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF532584, v4, 0);
}

uint64_t sub_1DF532584()
{
  v77 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];

    v5 = sub_1DF480420(v4, v3);
    if (v6)
    {
      sub_1DF47FCEC(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_1DF47FCEC((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38448, &qword_1DF56CEF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A8, &qword_1DF56D120);
      if (swift_dynamicCast())
      {
        v7 = v0[19];
        v0[37] = v7;
        if (qword_1ED956060 != -1)
        {
          swift_once();
        }

        v8 = sub_1DF5647B4();
        __swift_project_value_buffer(v8, qword_1ED956068);

        v9 = sub_1DF564794();
        v10 = sub_1DF564C44();

        if (os_log_type_enabled(v9, v10))
        {
          v12 = v0[20];
          v11 = v0[21];
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v76[0] = v14;
          *v13 = 136446210;
          *(v13 + 4) = sub_1DF47EF6C(v12, v11, v76);
          _os_log_impl(&dword_1DF47C000, v9, v10, "Reusing existing task for identifier %{public}s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x1E12D75F0](v14, -1, -1);
          MEMORY[0x1E12D75F0](v13, -1, -1);
        }

        v15 = swift_task_alloc();
        v0[38] = v15;
        v16 = type metadata accessor for GeoClassificationInfo(0);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
        *v15 = v0;
        v15[1] = sub_1DF531FD8;
        v18 = MEMORY[0x1E69E7288];
        v19 = v0 + 18;
        v20 = v7;
        v21 = v16;
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  if (qword_1ED956060 != -1)
  {
    swift_once();
  }

  v22 = sub_1DF5647B4();
  __swift_project_value_buffer(v22, qword_1ED956068);

  v23 = sub_1DF564794();
  v24 = sub_1DF564C44();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[20];
    v25 = v0[21];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v76[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_1DF47EF6C(v26, v25, v76);
    _os_log_impl(&dword_1DF47C000, v23, v24, "Creating new task for identifier %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1E12D75F0](v28, -1, -1);
    MEMORY[0x1E12D75F0](v27, -1, -1);
  }

  v29 = v0[31];
  v30 = v0[24];
  v32 = v0[22];
  v31 = v0[23];
  v33 = v0[20];
  v34 = v0[21];
  v35 = sub_1DF564B44();
  v74 = *(*(v35 - 8) + 56);
  v75 = v35;
  v74(v29, 1, 1);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v32;
  v36[5] = v31;

  v37 = sub_1DF51611C(0, 0, v29, &unk_1DF56D0F8, v36);
  v0[32] = v37;
  v38 = *(v30 + 128);
  v39 = *(v30 + 136);
  v73 = v37;

  sub_1DF483600(v38, v39, v33, v34);

  v40 = sub_1DF564794();
  v41 = sub_1DF564C44();

  if (os_log_type_enabled(v40, v41))
  {
    v43 = v0[20];
    v42 = v0[21];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v76[0] = v45;
    *v44 = 136446210;
    *(v44 + 4) = sub_1DF47EF6C(v43, v42, v76);
    _os_log_impl(&dword_1DF47C000, v40, v41, "Performing task operation for identifier %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1E12D75F0](v45, -1, -1);
    MEMORY[0x1E12D75F0](v44, -1, -1);
  }

  v47 = v0[30];
  v46 = v0[31];
  v68 = v0[29];
  v69 = v0[28];
  v48 = v0[27];
  v67 = v0[26];
  v49 = v0[24];
  v71 = v0[21];
  v72 = v0[25];
  v70 = v0[20];
  sub_1DF564484();
  (v74)(v46, 1, 1, v75);
  v66 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v66;
  v50[4] = v49;
  v50[5] = v73;
  swift_retain_n();

  v65 = sub_1DF515B98(0, 0, v46, &unk_1DF56D108, v50);
  v0[33] = v65;
  (v74)(v46, 1, 1, v75);
  (*(v48 + 16))(v68, v47, v67);
  v51 = (*(v48 + 80) + 72) & ~*(v48 + 80);
  v52 = swift_allocObject();
  *(v52 + 2) = v49;
  *(v52 + 3) = v66;
  *(v52 + 4) = v73;
  *(v52 + 5) = v65;
  *(v52 + 6) = v70;
  *(v52 + 7) = v71;
  *(v52 + 8) = v49;
  (*(v48 + 32))(&v52[v51], v68, v67);
  *&v52[(v69 + v51 + 7) & 0xFFFFFFFFFFFFFFF8] = v72;
  swift_retain_n();

  v53 = sub_1DF51611C(0, 0, v46, &unk_1DF56D118, v52);
  v0[34] = v53;

  v54 = sub_1DF564794();
  v55 = sub_1DF564C44();

  if (os_log_type_enabled(v54, v55))
  {
    v57 = v0[20];
    v56 = v0[21];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v76[0] = v59;
    *v58 = 136446210;
    *(v58 + 4) = sub_1DF47EF6C(v57, v56, v76);
    _os_log_impl(&dword_1DF47C000, v54, v55, "Storing task for identifier %{public}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x1E12D75F0](v59, -1, -1);
    MEMORY[0x1E12D75F0](v58, -1, -1);
  }

  v61 = v0[20];
  v60 = v0[21];
  v76[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A8, &qword_1DF56D120);
  v76[4] = &off_1F5A86FC8;
  v76[0] = v53;
  swift_beginAccess();

  sub_1DF484020(v76, v61, v60);
  swift_endAccess();
  v62 = swift_task_alloc();
  v0[35] = v62;
  v63 = type metadata accessor for GeoClassificationInfo(0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *v62 = v0;
  v62[1] = sub_1DF531EAC;
  v18 = MEMORY[0x1E69E7288];
  v19 = v0 + 18;
  v20 = v53;
  v21 = v63;
LABEL_20:

  return MEMORY[0x1EEE6DA10](v19, v20, v21, v17, v18);
}

uint64_t sub_1DF532ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = *v4;
  v6 = sub_1DF564494();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v5[28] = *(v7 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF533008, v4, 0);
}

uint64_t sub_1DF533008()
{
  v77 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];

    v5 = sub_1DF480420(v4, v3);
    if (v6)
    {
      sub_1DF47FCEC(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_1DF47FCEC((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38448, &qword_1DF56CEF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38498, &qword_1DF56D0A8);
      if (swift_dynamicCast())
      {
        v7 = v0[19];
        v0[37] = v7;
        if (qword_1ED956060 != -1)
        {
          swift_once();
        }

        v8 = sub_1DF5647B4();
        __swift_project_value_buffer(v8, qword_1ED956068);

        v9 = sub_1DF564794();
        v10 = sub_1DF564C44();

        if (os_log_type_enabled(v9, v10))
        {
          v12 = v0[20];
          v11 = v0[21];
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v76[0] = v14;
          *v13 = 136446210;
          *(v13 + 4) = sub_1DF47EF6C(v12, v11, v76);
          _os_log_impl(&dword_1DF47C000, v9, v10, "Reusing existing task for identifier %{public}s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x1E12D75F0](v14, -1, -1);
          MEMORY[0x1E12D75F0](v13, -1, -1);
        }

        v15 = swift_task_alloc();
        v0[38] = v15;
        v16 = type metadata accessor for Ticket();
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
        *v15 = v0;
        v15[1] = sub_1DF531FD8;
        v18 = MEMORY[0x1E69E7288];
        v19 = v0 + 18;
        v20 = v7;
        v21 = v16;
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  if (qword_1ED956060 != -1)
  {
    swift_once();
  }

  v22 = sub_1DF5647B4();
  __swift_project_value_buffer(v22, qword_1ED956068);

  v23 = sub_1DF564794();
  v24 = sub_1DF564C44();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[20];
    v25 = v0[21];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v76[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_1DF47EF6C(v26, v25, v76);
    _os_log_impl(&dword_1DF47C000, v23, v24, "Creating new task for identifier %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1E12D75F0](v28, -1, -1);
    MEMORY[0x1E12D75F0](v27, -1, -1);
  }

  v29 = v0[31];
  v30 = v0[24];
  v32 = v0[22];
  v31 = v0[23];
  v33 = v0[20];
  v34 = v0[21];
  v35 = sub_1DF564B44();
  v74 = *(*(v35 - 8) + 56);
  v75 = v35;
  v74(v29, 1, 1);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v32;
  v36[5] = v31;

  v37 = sub_1DF516134(0, 0, v29, &unk_1DF56D080, v36);
  v0[32] = v37;
  v38 = *(v30 + 128);
  v39 = *(v30 + 136);
  v73 = v37;

  sub_1DF483600(v38, v39, v33, v34);

  v40 = sub_1DF564794();
  v41 = sub_1DF564C44();

  if (os_log_type_enabled(v40, v41))
  {
    v43 = v0[20];
    v42 = v0[21];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v76[0] = v45;
    *v44 = 136446210;
    *(v44 + 4) = sub_1DF47EF6C(v43, v42, v76);
    _os_log_impl(&dword_1DF47C000, v40, v41, "Performing task operation for identifier %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1E12D75F0](v45, -1, -1);
    MEMORY[0x1E12D75F0](v44, -1, -1);
  }

  v47 = v0[30];
  v46 = v0[31];
  v68 = v0[29];
  v69 = v0[28];
  v48 = v0[27];
  v67 = v0[26];
  v49 = v0[24];
  v71 = v0[21];
  v72 = v0[25];
  v70 = v0[20];
  sub_1DF564484();
  (v74)(v46, 1, 1, v75);
  v66 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v66;
  v50[4] = v49;
  v50[5] = v73;
  swift_retain_n();

  v65 = sub_1DF515B98(0, 0, v46, &unk_1DF56D090, v50);
  v0[33] = v65;
  (v74)(v46, 1, 1, v75);
  (*(v48 + 16))(v68, v47, v67);
  v51 = (*(v48 + 80) + 72) & ~*(v48 + 80);
  v52 = swift_allocObject();
  *(v52 + 2) = v49;
  *(v52 + 3) = v66;
  *(v52 + 4) = v73;
  *(v52 + 5) = v65;
  *(v52 + 6) = v70;
  *(v52 + 7) = v71;
  *(v52 + 8) = v49;
  (*(v48 + 32))(&v52[v51], v68, v67);
  *&v52[(v69 + v51 + 7) & 0xFFFFFFFFFFFFFFF8] = v72;
  swift_retain_n();

  v53 = sub_1DF516134(0, 0, v46, &unk_1DF56D0A0, v52);
  v0[34] = v53;

  v54 = sub_1DF564794();
  v55 = sub_1DF564C44();

  if (os_log_type_enabled(v54, v55))
  {
    v57 = v0[20];
    v56 = v0[21];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v76[0] = v59;
    *v58 = 136446210;
    *(v58 + 4) = sub_1DF47EF6C(v57, v56, v76);
    _os_log_impl(&dword_1DF47C000, v54, v55, "Storing task for identifier %{public}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x1E12D75F0](v59, -1, -1);
    MEMORY[0x1E12D75F0](v58, -1, -1);
  }

  v61 = v0[20];
  v60 = v0[21];
  v76[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38498, &qword_1DF56D0A8);
  v76[4] = &off_1F5A86FC8;
  v76[0] = v53;
  swift_beginAccess();

  sub_1DF484020(v76, v61, v60);
  swift_endAccess();
  v62 = swift_task_alloc();
  v0[35] = v62;
  v63 = type metadata accessor for Ticket();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *v62 = v0;
  v62[1] = sub_1DF531EAC;
  v18 = MEMORY[0x1E69E7288];
  v19 = v0 + 18;
  v20 = v53;
  v21 = v63;
LABEL_20:

  return MEMORY[0x1EEE6DA10](v19, v20, v21, v17, v18);
}

uint64_t sub_1DF533950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v5[25] = *v4;
  v6 = sub_1DF564494();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v5[28] = *(v7 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF533A8C, v4, 0);
}

uint64_t sub_1DF533A8C()
{
  v77 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];

    v5 = sub_1DF480420(v4, v3);
    if (v6)
    {
      sub_1DF47FCEC(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_1DF47FCEC((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38448, &qword_1DF56CEF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38488, &qword_1DF56D030);
      if (swift_dynamicCast())
      {
        v7 = v0[19];
        v0[37] = v7;
        if (qword_1ED956060 != -1)
        {
          swift_once();
        }

        v8 = sub_1DF5647B4();
        __swift_project_value_buffer(v8, qword_1ED956068);

        v9 = sub_1DF564794();
        v10 = sub_1DF564C44();

        if (os_log_type_enabled(v9, v10))
        {
          v12 = v0[20];
          v11 = v0[21];
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v76[0] = v14;
          *v13 = 136446210;
          *(v13 + 4) = sub_1DF47EF6C(v12, v11, v76);
          _os_log_impl(&dword_1DF47C000, v9, v10, "Reusing existing task for identifier %{public}s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x1E12D75F0](v14, -1, -1);
          MEMORY[0x1E12D75F0](v13, -1, -1);
        }

        v15 = swift_task_alloc();
        v0[38] = v15;
        v16 = type metadata accessor for WaitlistResult();
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
        *v15 = v0;
        v15[1] = sub_1DF531FD8;
        v18 = MEMORY[0x1E69E7288];
        v19 = v0 + 18;
        v20 = v7;
        v21 = v16;
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  if (qword_1ED956060 != -1)
  {
    swift_once();
  }

  v22 = sub_1DF5647B4();
  __swift_project_value_buffer(v22, qword_1ED956068);

  v23 = sub_1DF564794();
  v24 = sub_1DF564C44();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[20];
    v25 = v0[21];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v76[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_1DF47EF6C(v26, v25, v76);
    _os_log_impl(&dword_1DF47C000, v23, v24, "Creating new task for identifier %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1E12D75F0](v28, -1, -1);
    MEMORY[0x1E12D75F0](v27, -1, -1);
  }

  v29 = v0[31];
  v30 = v0[24];
  v32 = v0[22];
  v31 = v0[23];
  v33 = v0[20];
  v34 = v0[21];
  v35 = sub_1DF564B44();
  v74 = *(*(v35 - 8) + 56);
  v75 = v35;
  v74(v29, 1, 1);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v32;
  v36[5] = v31;

  v37 = sub_1DF516414(0, 0, v29, &unk_1DF56D008, v36);
  v0[32] = v37;
  v38 = *(v30 + 128);
  v39 = *(v30 + 136);
  v73 = v37;

  sub_1DF483600(v38, v39, v33, v34);

  v40 = sub_1DF564794();
  v41 = sub_1DF564C44();

  if (os_log_type_enabled(v40, v41))
  {
    v43 = v0[20];
    v42 = v0[21];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v76[0] = v45;
    *v44 = 136446210;
    *(v44 + 4) = sub_1DF47EF6C(v43, v42, v76);
    _os_log_impl(&dword_1DF47C000, v40, v41, "Performing task operation for identifier %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1E12D75F0](v45, -1, -1);
    MEMORY[0x1E12D75F0](v44, -1, -1);
  }

  v47 = v0[30];
  v46 = v0[31];
  v68 = v0[29];
  v69 = v0[28];
  v48 = v0[27];
  v67 = v0[26];
  v49 = v0[24];
  v71 = v0[21];
  v72 = v0[25];
  v70 = v0[20];
  sub_1DF564484();
  (v74)(v46, 1, 1, v75);
  v66 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v66;
  v50[4] = v49;
  v50[5] = v73;
  swift_retain_n();

  v65 = sub_1DF515B98(0, 0, v46, &unk_1DF56D018, v50);
  v0[33] = v65;
  (v74)(v46, 1, 1, v75);
  (*(v48 + 16))(v68, v47, v67);
  v51 = (*(v48 + 80) + 72) & ~*(v48 + 80);
  v52 = swift_allocObject();
  *(v52 + 2) = v49;
  *(v52 + 3) = v66;
  *(v52 + 4) = v73;
  *(v52 + 5) = v65;
  *(v52 + 6) = v70;
  *(v52 + 7) = v71;
  *(v52 + 8) = v49;
  (*(v48 + 32))(&v52[v51], v68, v67);
  *&v52[(v69 + v51 + 7) & 0xFFFFFFFFFFFFFFF8] = v72;
  swift_retain_n();

  v53 = sub_1DF516414(0, 0, v46, &unk_1DF56D028, v52);
  v0[34] = v53;

  v54 = sub_1DF564794();
  v55 = sub_1DF564C44();

  if (os_log_type_enabled(v54, v55))
  {
    v57 = v0[20];
    v56 = v0[21];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v76[0] = v59;
    *v58 = 136446210;
    *(v58 + 4) = sub_1DF47EF6C(v57, v56, v76);
    _os_log_impl(&dword_1DF47C000, v54, v55, "Storing task for identifier %{public}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x1E12D75F0](v59, -1, -1);
    MEMORY[0x1E12D75F0](v58, -1, -1);
  }

  v61 = v0[20];
  v60 = v0[21];
  v76[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38488, &qword_1DF56D030);
  v76[4] = &off_1F5A86FC8;
  v76[0] = v53;
  swift_beginAccess();

  sub_1DF484020(v76, v61, v60);
  swift_endAccess();
  v62 = swift_task_alloc();
  v0[35] = v62;
  v63 = type metadata accessor for WaitlistResult();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *v62 = v0;
  v62[1] = sub_1DF531EAC;
  v18 = MEMORY[0x1E69E7288];
  v19 = v0 + 18;
  v20 = v53;
  v21 = v63;
LABEL_20:

  return MEMORY[0x1EEE6DA10](v19, v20, v21, v17, v18);
}

uint64_t sub_1DF5343D4()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[24];
  v6 = v0[20];
  v5 = v0[21];

  (*(v3 + 8))(v1, v2);
  sub_1DF490EE8(v6, v5, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DF5344B8()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_1DF53467C;
  }

  else
  {
    v4 = sub_1DF5345E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF5345E4()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[18];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1DF53467C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF53470C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v6[25] = *v5;
  v7 = sub_1DF564494();
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v6[28] = *(v8 + 64);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v6[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF534848, v5, 0);
}

uint64_t sub_1DF534848()
{
  v75 = v0;
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[20];
    v3 = v0[21];

    v5 = sub_1DF480420(v4, v3);
    if (v6)
    {
      sub_1DF47FCEC(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_1DF47FCEC((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38448, &qword_1DF56CEF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38478, &unk_1DF56CFB0);
      if (swift_dynamicCast())
      {
        v7 = v0[18];
        v0[37] = v7;
        if (qword_1ED956060 != -1)
        {
          swift_once();
        }

        v8 = sub_1DF5647B4();
        __swift_project_value_buffer(v8, qword_1ED956068);

        v9 = sub_1DF564794();
        v10 = sub_1DF564C44();

        if (os_log_type_enabled(v9, v10))
        {
          v12 = v0[20];
          v11 = v0[21];
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v74[0] = v14;
          *v13 = 136446210;
          *(v13 + 4) = sub_1DF47EF6C(v12, v11, v74);
          _os_log_impl(&dword_1DF47C000, v9, v10, "Reusing existing task for identifier %{public}s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x1E12D75F0](v14, -1, -1);
          MEMORY[0x1E12D75F0](v13, -1, -1);
        }

        v15 = swift_task_alloc();
        v0[38] = v15;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
        *v15 = v0;
        v15[1] = sub_1DF535398;
        v17 = v0[19];
        v18 = MEMORY[0x1E69E7288];
        v19 = MEMORY[0x1E69E7CA8] + 8;
        v20 = v7;
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    else
    {
    }
  }

  if (qword_1ED956060 != -1)
  {
    swift_once();
  }

  v21 = sub_1DF5647B4();
  __swift_project_value_buffer(v21, qword_1ED956068);

  v22 = sub_1DF564794();
  v23 = sub_1DF564C44();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = v0[20];
    v24 = v0[21];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v74[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1DF47EF6C(v25, v24, v74);
    _os_log_impl(&dword_1DF47C000, v22, v23, "Creating new task for identifier %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1E12D75F0](v27, -1, -1);
    MEMORY[0x1E12D75F0](v26, -1, -1);
  }

  v28 = v0[31];
  v29 = v0[24];
  v31 = v0[22];
  v30 = v0[23];
  v32 = v0[20];
  v33 = v0[21];
  v34 = sub_1DF564B44();
  v72 = *(*(v34 - 8) + 56);
  v73 = v34;
  v72(v28, 1, 1);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v31;
  v35[5] = v30;

  v36 = sub_1DF515B98(0, 0, v28, &unk_1DF56CF88, v35);
  v0[32] = v36;
  v37 = *(v29 + 128);
  v38 = *(v29 + 136);
  v71 = v36;

  sub_1DF483600(v37, v38, v32, v33);

  v39 = sub_1DF564794();
  v40 = sub_1DF564C44();

  if (os_log_type_enabled(v39, v40))
  {
    v42 = v0[20];
    v41 = v0[21];
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v74[0] = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_1DF47EF6C(v42, v41, v74);
    _os_log_impl(&dword_1DF47C000, v39, v40, "Performing task operation for identifier %{public}s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1E12D75F0](v44, -1, -1);
    MEMORY[0x1E12D75F0](v43, -1, -1);
  }

  v46 = v0[30];
  v45 = v0[31];
  v66 = v0[29];
  v67 = v0[28];
  v47 = v0[27];
  v65 = v0[26];
  v48 = v0[24];
  v69 = v0[21];
  v70 = v0[25];
  v68 = v0[20];
  sub_1DF564484();
  (v72)(v45, 1, 1, v73);
  v64 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v49 = swift_allocObject();
  v49[2] = v48;
  v49[3] = v64;
  v49[4] = v48;
  v49[5] = v71;
  swift_retain_n();

  v63 = sub_1DF515B98(0, 0, v45, &unk_1DF56CF98, v49);
  v0[33] = v63;
  (v72)(v45, 1, 1, v73);
  (*(v47 + 16))(v66, v46, v65);
  v50 = (*(v47 + 80) + 72) & ~*(v47 + 80);
  v51 = swift_allocObject();
  *(v51 + 2) = v48;
  *(v51 + 3) = v64;
  *(v51 + 4) = v71;
  *(v51 + 5) = v63;
  *(v51 + 6) = v68;
  *(v51 + 7) = v69;
  *(v51 + 8) = v48;
  (*(v47 + 32))(&v51[v50], v66, v65);
  *&v51[(v67 + v50 + 7) & 0xFFFFFFFFFFFFFFF8] = v70;
  swift_retain_n();

  v52 = sub_1DF515B98(0, 0, v45, &unk_1DF56CFA8, v51);
  v0[34] = v52;

  v53 = sub_1DF564794();
  v54 = sub_1DF564C44();

  if (os_log_type_enabled(v53, v54))
  {
    v56 = v0[20];
    v55 = v0[21];
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v74[0] = v58;
    *v57 = 136446210;
    *(v57 + 4) = sub_1DF47EF6C(v56, v55, v74);
    _os_log_impl(&dword_1DF47C000, v53, v54, "Storing task for identifier %{public}s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x1E12D75F0](v58, -1, -1);
    MEMORY[0x1E12D75F0](v57, -1, -1);
  }

  v60 = v0[20];
  v59 = v0[21];
  v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38478, &unk_1DF56CFB0);
  v74[4] = &off_1F5A86FC8;
  v74[0] = v52;
  swift_beginAccess();

  sub_1DF484020(v74, v60, v59);
  swift_endAccess();
  v61 = swift_task_alloc();
  v0[35] = v61;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *v61 = v0;
  v61[1] = sub_1DF535188;
  v17 = v0[19];
  v18 = MEMORY[0x1E69E7288];
  v19 = MEMORY[0x1E69E7CA8] + 8;
  v20 = v52;
LABEL_20:

  return MEMORY[0x1EEE6DA10](v17, v20, v19, v16, v18);
}

uint64_t sub_1DF535188()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_1DF5343D4;
  }

  else
  {
    v4 = sub_1DF5352B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF5352B4()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[24];
  v6 = v0[20];
  v5 = v0[21];

  (*(v3 + 8))(v1, v2);
  sub_1DF490EE8(v6, v5, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DF535398()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_1DF53467C;
  }

  else
  {
    v4 = sub_1DF5354C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF5354C4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF53554C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1DF48D4B0;

  return v8(a1);
}

uint64_t sub_1DF535644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1DF564EC4();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF535708, a4, 0);
}

uint64_t sub_1DF535708()
{
  v1 = *(*(v0 + 16) + 120);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_1DF565174();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1DF5357EC;

  return sub_1DF4845F8(v2, v3, 0, 0, 1);
}

uint64_t sub_1DF5357EC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1DF513F5C;
  }

  else
  {
    v7 = sub_1DF535974;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF535974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF535A2C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1DF513F5C;
  }

  else
  {
    v7 = sub_1DF535BB4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF535BB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF535C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1DF564EC4();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF535D14, a4, 0);
}

uint64_t sub_1DF535D14()
{
  v1 = *(*(v0 + 16) + 120);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_1DF565174();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1DF535DF8;

  return sub_1DF4845F8(v2, v3, 0, 0, 1);
}

uint64_t sub_1DF535DF8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1DF513F5C;
  }

  else
  {
    v7 = sub_1DF535F80;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF535F80()
{
  type metadata accessor for GeoClassificationInfo(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF53602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1DF564EC4();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5360F0, a4, 0);
}

uint64_t sub_1DF5360F0()
{
  v1 = *(*(v0 + 16) + 120);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_1DF565174();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1DF5361D4;

  return sub_1DF4845F8(v2, v3, 0, 0, 1);
}

uint64_t sub_1DF5361D4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1DF513F5C;
  }

  else
  {
    v7 = sub_1DF53635C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF53635C()
{
  type metadata accessor for Ticket();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF536408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1DF564EC4();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5364CC, a4, 0);
}

uint64_t sub_1DF5364CC()
{
  v1 = *(*(v0 + 16) + 120);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_1DF565174();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1DF5365B0;

  return sub_1DF4845F8(v2, v3, 0, 0, 1);
}

uint64_t sub_1DF5365B0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1DF513F5C;
  }

  else
  {
    v7 = sub_1DF536738;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF536738()
{
  type metadata accessor for WaitlistResult();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5367E4()
{
  type metadata accessor for CloudFeature(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF536890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1DF564EC4();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF536954, a4, 0);
}

uint64_t sub_1DF536954()
{
  v1 = *(*(v0 + 16) + 120);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_1DF565174();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1DF536A38;

  return sub_1DF4845F8(v2, v3, 0, 0, 1);
}

uint64_t sub_1DF536A38()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1DF513F5C;
  }

  else
  {
    v7 = sub_1DF536BC0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF536BC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  sub_1DF564B64();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF536C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1DF4E5754;

  return sub_1DF543F34(a3, a4, a5, a6, a7, a8, v18);
}

uint64_t sub_1DF536D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1DF4E5754;

  return sub_1DF544214(a3, a4, a5, a6, a7, a8, v18);
}

uint64_t sub_1DF536E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1DF4E5754;

  return sub_1DF5443A4(a3, a4, a5, a6, a7, a8, v18);
}

uint64_t sub_1DF536F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1DF4E5754;

  return sub_1DF544534(a3, a4, a5, a6, a7, a8, v18);
}

uint64_t sub_1DF536FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF537014, a8, 0);
}

uint64_t sub_1DF537014()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v10 = *(v0 + 56);
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v10;
  *(v5 + 64) = v1;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1DF537178;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v7, v10, v4, 0xD00000000000001ELL, 0x80000001DF574CB0, sub_1DF545518, v5, v8);
}

uint64_t sub_1DF537178()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x1EEE6DFA0](sub_1DF5372B4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1DF5372B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF537318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v79 = a4;
  v80 = a8;
  v66 = a7;
  v77 = a6;
  v78 = a3;
  v71 = a2;
  v72 = a5;
  v63 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38458, &qword_1DF56CF18);
  v53 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v74 = sub_1DF564494();
  v15 = *(v74 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - v18;
  v75 = &v51 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38460, &qword_1DF56CF20);
  v20 = swift_allocObject();
  v73 = v20;
  *(v20 + 20) = 0;
  *(v20 + 16) = 0;
  v69 = sub_1DF564B44();
  v21 = *(v69 - 8);
  v68 = *(v21 + 56);
  v70 = v21 + 56;
  v68(v19, 1, 1, v69);
  v22 = *(v15 + 16);
  v65 = v15 + 16;
  v67 = v22;
  v23 = v74;
  v22(&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v74);
  v81 = v11;
  v24 = *(v11 + 16);
  v62 = v11 + 16;
  v64 = v24;
  v54 = v14;
  v24(v14, a1, v10);
  v25 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v61 = v25;
  v26 = *(v15 + 80);
  v27 = (v26 + 80) & ~v26;
  v28 = *(v11 + 80);
  v59 = v27;
  v29 = (v16 + v28 + v27) & ~v28;
  v60 = v26 | v28;
  v55 = v29;
  v52 = (v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v77;
  v32 = v78;
  *(v30 + 2) = v77;
  *(v30 + 3) = v25;
  v33 = v71;
  v34 = v72;
  *(v30 + 4) = v71;
  *(v30 + 5) = v32;
  v35 = v79;
  *(v30 + 6) = v73;
  *(v30 + 7) = v35;
  *(v30 + 8) = v34;
  *(v30 + 9) = v31;
  v36 = *(v15 + 32);
  v57 = v15 + 32;
  v58 = v36;
  v36(&v30[v27], v76, v23);
  v37 = *(v81 + 32);
  v81 += 32;
  v56 = v37;
  v38 = v54;
  v39 = v53;
  v37(&v30[v29], v54, v53);
  v40 = v52;
  *&v30[v52] = v80;
  swift_retain_n();

  v41 = v75;
  sub_1DF4BF520(0, 0, v75, &unk_1DF56CF30, v30);

  v68(v41, 1, 1, v69);
  v42 = v76;
  v43 = v74;
  v67(v76, v66, v74);
  v44 = v39;
  v64(v38, v63, v39);
  v45 = swift_allocObject();
  v46 = v77;
  v47 = v78;
  v48 = v61;
  *(v45 + 2) = v77;
  *(v45 + 3) = v48;
  *(v45 + 4) = v47;
  *(v45 + 5) = v33;
  v49 = v79;
  *(v45 + 6) = v73;
  *(v45 + 7) = v49;
  *(v45 + 8) = v34;
  *(v45 + 9) = v46;
  v58(&v45[v59], v42, v43);
  v56(&v45[v55], v38, v44);
  *&v45[v40] = v80;
  swift_retain_n();

  sub_1DF515B98(0, 0, v75, &unk_1DF56CF40, v45);
}

uint64_t sub_1DF537894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v79 = a4;
  v80 = a8;
  v66 = a7;
  v77 = a6;
  v78 = a3;
  v71 = a2;
  v72 = a5;
  v63 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384B0, &qword_1DF56D138);
  v53 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v74 = sub_1DF564494();
  v15 = *(v74 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - v18;
  v75 = &v51 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38460, &qword_1DF56CF20);
  v20 = swift_allocObject();
  v73 = v20;
  *(v20 + 20) = 0;
  *(v20 + 16) = 0;
  v69 = sub_1DF564B44();
  v21 = *(v69 - 8);
  v68 = *(v21 + 56);
  v70 = v21 + 56;
  v68(v19, 1, 1, v69);
  v22 = *(v15 + 16);
  v65 = v15 + 16;
  v67 = v22;
  v23 = v74;
  v22(&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v74);
  v81 = v11;
  v24 = *(v11 + 16);
  v62 = v11 + 16;
  v64 = v24;
  v54 = v14;
  v24(v14, a1, v10);
  v25 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v61 = v25;
  v26 = *(v15 + 80);
  v27 = (v26 + 80) & ~v26;
  v28 = *(v11 + 80);
  v59 = v27;
  v29 = (v16 + v28 + v27) & ~v28;
  v60 = v26 | v28;
  v55 = v29;
  v52 = (v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v77;
  v32 = v78;
  *(v30 + 2) = v77;
  *(v30 + 3) = v25;
  v33 = v71;
  v34 = v72;
  *(v30 + 4) = v71;
  *(v30 + 5) = v32;
  v35 = v79;
  *(v30 + 6) = v73;
  *(v30 + 7) = v35;
  *(v30 + 8) = v34;
  *(v30 + 9) = v31;
  v36 = *(v15 + 32);
  v57 = v15 + 32;
  v58 = v36;
  v36(&v30[v27], v76, v23);
  v37 = *(v81 + 32);
  v81 += 32;
  v56 = v37;
  v38 = v54;
  v39 = v53;
  v37(&v30[v29], v54, v53);
  v40 = v52;
  *&v30[v52] = v80;
  swift_retain_n();

  v41 = v75;
  sub_1DF4BF520(0, 0, v75, &unk_1DF56D148, v30);

  v68(v41, 1, 1, v69);
  v42 = v76;
  v43 = v74;
  v67(v76, v66, v74);
  v44 = v39;
  v64(v38, v63, v39);
  v45 = swift_allocObject();
  v46 = v77;
  v47 = v78;
  v48 = v61;
  *(v45 + 2) = v77;
  *(v45 + 3) = v48;
  *(v45 + 4) = v47;
  *(v45 + 5) = v33;
  v49 = v79;
  *(v45 + 6) = v73;
  *(v45 + 7) = v49;
  *(v45 + 8) = v34;
  *(v45 + 9) = v46;
  v58(&v45[v59], v42, v43);
  v56(&v45[v55], v38, v44);
  *&v45[v40] = v80;
  swift_retain_n();

  sub_1DF515B98(0, 0, v75, &unk_1DF56D158, v45);
}

uint64_t sub_1DF537E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v79 = a4;
  v80 = a8;
  v66 = a7;
  v77 = a6;
  v78 = a3;
  v71 = a2;
  v72 = a5;
  v63 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00);
  v53 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v74 = sub_1DF564494();
  v15 = *(v74 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - v18;
  v75 = &v51 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38460, &qword_1DF56CF20);
  v20 = swift_allocObject();
  v73 = v20;
  *(v20 + 20) = 0;
  *(v20 + 16) = 0;
  v69 = sub_1DF564B44();
  v21 = *(v69 - 8);
  v68 = *(v21 + 56);
  v70 = v21 + 56;
  v68(v19, 1, 1, v69);
  v22 = *(v15 + 16);
  v65 = v15 + 16;
  v67 = v22;
  v23 = v74;
  v22(&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v74);
  v81 = v11;
  v24 = *(v11 + 16);
  v62 = v11 + 16;
  v64 = v24;
  v54 = v14;
  v24(v14, a1, v10);
  v25 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v61 = v25;
  v26 = *(v15 + 80);
  v27 = (v26 + 80) & ~v26;
  v28 = *(v11 + 80);
  v59 = v27;
  v29 = (v16 + v28 + v27) & ~v28;
  v60 = v26 | v28;
  v55 = v29;
  v52 = (v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v77;
  v32 = v78;
  *(v30 + 2) = v77;
  *(v30 + 3) = v25;
  v33 = v71;
  v34 = v72;
  *(v30 + 4) = v71;
  *(v30 + 5) = v32;
  v35 = v79;
  *(v30 + 6) = v73;
  *(v30 + 7) = v35;
  *(v30 + 8) = v34;
  *(v30 + 9) = v31;
  v36 = *(v15 + 32);
  v57 = v15 + 32;
  v58 = v36;
  v36(&v30[v27], v76, v23);
  v37 = *(v81 + 32);
  v81 += 32;
  v56 = v37;
  v38 = v54;
  v39 = v53;
  v37(&v30[v29], v54, v53);
  v40 = v52;
  *&v30[v52] = v80;
  swift_retain_n();

  v41 = v75;
  sub_1DF4BF520(0, 0, v75, &unk_1DF56D0D0, v30);

  v68(v41, 1, 1, v69);
  v42 = v76;
  v43 = v74;
  v67(v76, v66, v74);
  v44 = v39;
  v64(v38, v63, v39);
  v45 = swift_allocObject();
  v46 = v77;
  v47 = v78;
  v48 = v61;
  *(v45 + 2) = v77;
  *(v45 + 3) = v48;
  *(v45 + 4) = v47;
  *(v45 + 5) = v33;
  v49 = v79;
  *(v45 + 6) = v73;
  *(v45 + 7) = v49;
  *(v45 + 8) = v34;
  *(v45 + 9) = v46;
  v58(&v45[v59], v42, v43);
  v56(&v45[v55], v38, v44);
  *&v45[v40] = v80;
  swift_retain_n();

  sub_1DF515B98(0, 0, v75, &unk_1DF56D0E0, v45);
}

uint64_t sub_1DF53838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v79 = a4;
  v80 = a8;
  v66 = a7;
  v77 = a6;
  v78 = a3;
  v71 = a2;
  v72 = a5;
  v63 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  v53 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v74 = sub_1DF564494();
  v15 = *(v74 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - v18;
  v75 = &v51 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38460, &qword_1DF56CF20);
  v20 = swift_allocObject();
  v73 = v20;
  *(v20 + 20) = 0;
  *(v20 + 16) = 0;
  v69 = sub_1DF564B44();
  v21 = *(v69 - 8);
  v68 = *(v21 + 56);
  v70 = v21 + 56;
  v68(v19, 1, 1, v69);
  v22 = *(v15 + 16);
  v65 = v15 + 16;
  v67 = v22;
  v23 = v74;
  v22(&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v74);
  v81 = v11;
  v24 = *(v11 + 16);
  v62 = v11 + 16;
  v64 = v24;
  v54 = v14;
  v24(v14, a1, v10);
  v25 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v61 = v25;
  v26 = *(v15 + 80);
  v27 = (v26 + 80) & ~v26;
  v28 = *(v11 + 80);
  v59 = v27;
  v29 = (v16 + v28 + v27) & ~v28;
  v60 = v26 | v28;
  v55 = v29;
  v52 = (v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v77;
  v32 = v78;
  *(v30 + 2) = v77;
  *(v30 + 3) = v25;
  v33 = v71;
  v34 = v72;
  *(v30 + 4) = v71;
  *(v30 + 5) = v32;
  v35 = v79;
  *(v30 + 6) = v73;
  *(v30 + 7) = v35;
  *(v30 + 8) = v34;
  *(v30 + 9) = v31;
  v36 = *(v15 + 32);
  v57 = v15 + 32;
  v58 = v36;
  v36(&v30[v27], v76, v23);
  v37 = *(v81 + 32);
  v81 += 32;
  v56 = v37;
  v38 = v54;
  v39 = v53;
  v37(&v30[v29], v54, v53);
  v40 = v52;
  *&v30[v52] = v80;
  swift_retain_n();

  v41 = v75;
  sub_1DF4BF520(0, 0, v75, &unk_1DF56D058, v30);

  v68(v41, 1, 1, v69);
  v42 = v76;
  v43 = v74;
  v67(v76, v66, v74);
  v44 = v39;
  v64(v38, v63, v39);
  v45 = swift_allocObject();
  v46 = v77;
  v47 = v78;
  v48 = v61;
  *(v45 + 2) = v77;
  *(v45 + 3) = v48;
  *(v45 + 4) = v47;
  *(v45 + 5) = v33;
  v49 = v79;
  *(v45 + 6) = v73;
  *(v45 + 7) = v49;
  *(v45 + 8) = v34;
  *(v45 + 9) = v46;
  v58(&v45[v59], v42, v43);
  v56(&v45[v55], v38, v44);
  *&v45[v40] = v80;
  swift_retain_n();

  sub_1DF515B98(0, 0, v75, &unk_1DF56D068, v45);
}

uint64_t sub_1DF538908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v79 = a4;
  v80 = a8;
  v66 = a7;
  v77 = a6;
  v78 = a3;
  v71 = a2;
  v72 = a5;
  v63 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  v53 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v74 = sub_1DF564494();
  v15 = *(v74 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v51 - v18;
  v75 = &v51 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38460, &qword_1DF56CF20);
  v20 = swift_allocObject();
  v73 = v20;
  *(v20 + 20) = 0;
  *(v20 + 16) = 0;
  v69 = sub_1DF564B44();
  v21 = *(v69 - 8);
  v68 = *(v21 + 56);
  v70 = v21 + 56;
  v68(v19, 1, 1, v69);
  v22 = *(v15 + 16);
  v65 = v15 + 16;
  v67 = v22;
  v23 = v74;
  v22(&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v74);
  v81 = v11;
  v24 = *(v11 + 16);
  v62 = v11 + 16;
  v64 = v24;
  v54 = v14;
  v24(v14, a1, v10);
  v25 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v61 = v25;
  v26 = *(v15 + 80);
  v27 = (v26 + 80) & ~v26;
  v28 = *(v11 + 80);
  v59 = v27;
  v29 = (v16 + v28 + v27) & ~v28;
  v60 = v26 | v28;
  v55 = v29;
  v52 = (v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v77;
  v32 = v78;
  *(v30 + 2) = v77;
  *(v30 + 3) = v25;
  v33 = v71;
  v34 = v72;
  *(v30 + 4) = v71;
  *(v30 + 5) = v32;
  v35 = v79;
  *(v30 + 6) = v73;
  *(v30 + 7) = v35;
  *(v30 + 8) = v34;
  *(v30 + 9) = v31;
  v36 = *(v15 + 32);
  v57 = v15 + 32;
  v58 = v36;
  v36(&v30[v27], v76, v23);
  v37 = *(v81 + 32);
  v81 += 32;
  v56 = v37;
  v38 = v54;
  v39 = v53;
  v37(&v30[v29], v54, v53);
  v40 = v52;
  *&v30[v52] = v80;
  swift_retain_n();

  v41 = v75;
  sub_1DF4BF520(0, 0, v75, &unk_1DF56CFC8, v30);

  v68(v41, 1, 1, v69);
  v42 = v76;
  v43 = v74;
  v67(v76, v66, v74);
  v44 = v39;
  v64(v38, v63, v39);
  v45 = swift_allocObject();
  v46 = v77;
  v47 = v78;
  v48 = v61;
  *(v45 + 2) = v77;
  *(v45 + 3) = v48;
  *(v45 + 4) = v47;
  *(v45 + 5) = v33;
  v49 = v79;
  *(v45 + 6) = v73;
  *(v45 + 7) = v49;
  *(v45 + 8) = v34;
  *(v45 + 9) = v46;
  v58(&v45[v59], v42, v43);
  v56(&v45[v55], v38, v44);
  *&v45[v40] = v80;
  swift_retain_n();

  sub_1DF515B98(0, 0, v75, &unk_1DF56CFD8, v45);
}

uint64_t sub_1DF538E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v17;
  *(v8 + 80) = v18;
  *(v8 + 56) = v16;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  v10 = swift_task_alloc();
  *(v8 + 88) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 96) = v12;
  *v10 = v8;
  v10[1] = sub_1DF538F88;
  v13 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8 + 16, a4, v11, v12, v13);
}

uint64_t sub_1DF538F88()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1DF5391C0;
  }

  else
  {
    v4 = sub_1DF5390B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1DF5390B4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 56) = v0 + 16;
  *(v5 + 64) = v2;
  os_unfair_lock_lock(v4 + 5);
  sub_1DF545050(&v4[4]);
  os_unfair_lock_unlock(v4 + 5);
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DF5391C0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  v8 = *(v0 + 64);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF545028((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

void sub_1DF5392AC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 56) = v0 + 104;
  *(v5 + 64) = v2;
  os_unfair_lock_lock((v4 + 20));
  sub_1DF546FBC((v4 + 16));
  os_unfair_lock_unlock((v4 + 20));
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DF5393B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v17;
  *(v8 + 80) = v18;
  *(v8 + 56) = v16;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  v10 = swift_task_alloc();
  *(v8 + 88) = v10;
  v11 = type metadata accessor for GeoClassificationInfo(0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 96) = v12;
  *v10 = v8;
  v10[1] = sub_1DF5394AC;
  v13 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8 + 16, a4, v11, v12, v13);
}

uint64_t sub_1DF5394AC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1DF5396E4;
  }

  else
  {
    v4 = sub_1DF5395D8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1DF5395D8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 56) = v0 + 16;
  *(v5 + 64) = v2;
  os_unfair_lock_lock((v4 + 20));
  sub_1DF546F18((v4 + 16));
  os_unfair_lock_unlock((v4 + 20));
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DF5396E4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  v8 = *(v0 + 64);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF546EF0((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DF5397D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v17;
  *(v8 + 80) = v18;
  *(v8 + 56) = v16;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  v10 = swift_task_alloc();
  *(v8 + 88) = v10;
  v11 = type metadata accessor for Ticket();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 96) = v12;
  *v10 = v8;
  v10[1] = sub_1DF5398C8;
  v13 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8 + 16, a4, v11, v12, v13);
}

uint64_t sub_1DF5398C8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1DF539B00;
  }

  else
  {
    v4 = sub_1DF5399F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1DF5399F4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 56) = v0 + 16;
  *(v5 + 64) = v2;
  os_unfair_lock_lock((v4 + 20));
  sub_1DF546804((v4 + 16));
  os_unfair_lock_unlock((v4 + 20));
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DF539B00()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  v8 = *(v0 + 64);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF5467DC((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DF539BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v17;
  *(v8 + 80) = v18;
  *(v8 + 56) = v16;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  v10 = swift_task_alloc();
  *(v8 + 88) = v10;
  v11 = type metadata accessor for WaitlistResult();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 96) = v12;
  *v10 = v8;
  v10[1] = sub_1DF539CE4;
  v13 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8 + 16, a4, v11, v12, v13);
}

uint64_t sub_1DF539CE4()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1DF539F1C;
  }

  else
  {
    v4 = sub_1DF539E10;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1DF539E10()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 56) = v0 + 16;
  *(v5 + 64) = v2;
  os_unfair_lock_lock((v4 + 20));
  sub_1DF5460F0((v4 + 16));
  os_unfair_lock_unlock((v4 + 20));
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DF539F1C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  v8 = *(v0 + 64);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF5460C8((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DF53A008()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  v8 = *(v0 + 64);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF547358((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DF53A0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 72) = v18;
  *(v8 + 48) = v16;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = swift_task_alloc();
  *(v8 + 80) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v11;
  *v10 = v8;
  v10[1] = sub_1DF53A1DC;
  v12 = MEMORY[0x1E69E7288];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v11, a4, v13, v11, v12);
}

uint64_t sub_1DF53A1DC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1DF53A400;
  }

  else
  {
    v4 = sub_1DF53A308;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1DF53A308()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 64) = v2;
  os_unfair_lock_lock((v4 + 20));
  sub_1DF545914((v4 + 16));
  os_unfair_lock_unlock((v4 + 20));
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DF53A400()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = swift_task_alloc();
  v8 = *(v0 + 56);
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v8;
  *(v7 + 56) = v1;
  *(v7 + 64) = v2;
  os_unfair_lock_lock((v6 + 20));
  sub_1DF5458EC((v6 + 16));
  os_unfair_lock_unlock((v6 + 20));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DF53A4EC(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a4;
  v36 = a5;
  v37 = a2;
  v14 = sub_1DF564494();
  v15 = *(v14 - 8);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v33 = a7;
    v34 = a6;
    if (qword_1ED956060 != -1)
    {
      swift_once();
    }

    v31 = a1;
    v32 = a8;
    v19 = sub_1DF5647B4();
    __swift_project_value_buffer(v19, qword_1ED956068);

    v20 = sub_1DF564794();
    v21 = sub_1DF564C14();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30[1] = v8;
      v23 = v22;
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 136446210;
      v25 = v37;
      *(v23 + 4) = sub_1DF47EF6C(v37, a3, &v38);
      _os_log_impl(&dword_1DF47C000, v20, v21, "Timeoutable task %{public}s finished before timeout", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1E12D75F0](v24, -1, -1);
      MEMORY[0x1E12D75F0](v23, -1, -1);
    }

    else
    {

      v25 = v37;
    }

    v26 = *(v35 + 128);
    v27 = *(v35 + 136);
    sub_1DF564484();
    sub_1DF5643C4();
    v29 = v28;
    (*(v15 + 8))(v18, v14);
    sub_1DF48FD84(v26, v27, v25, a3, v29);
    v38 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38458, &qword_1DF56CF18);
    result = sub_1DF564B24();
    a1 = v31;
  }

  *a1 = 1;
  return result;
}

uint64_t sub_1DF53A798(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v37 = a5;
  v38 = a2;
  v15 = sub_1DF564494();
  v16 = *(v15 - 8);
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v32 = result;
    v34 = a8;
    v35 = a7;
    v36 = a6;
    if (qword_1ED956060 != -1)
    {
      swift_once();
    }

    v33 = a1;
    v20 = sub_1DF5647B4();
    __swift_project_value_buffer(v20, qword_1ED956068);

    v21 = sub_1DF564794();
    v22 = sub_1DF564C14();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v8;
      v25 = v24;
      v39 = v24;
      *v23 = 136446210;
      v26 = v38;
      *(v23 + 4) = sub_1DF47EF6C(v38, a3, &v39);
      _os_log_impl(&dword_1DF47C000, v21, v22, "Timeoutable task %{public}s finished before timeout", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1E12D75F0](v25, -1, -1);
      MEMORY[0x1E12D75F0](v23, -1, -1);
    }

    else
    {

      v26 = v38;
    }

    v27 = *(a4 + 128);
    v28 = *(a4 + 136);
    sub_1DF564484();
    sub_1DF5643C4();
    v30 = v29;
    (*(v16 + 8))(v19, v32);
    sub_1DF48FD84(v27, v28, v26, a3, v30);
    v40 = v35 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE384C0, &qword_1DF56D1B0);
    result = sub_1DF564B24();
    a1 = v33;
  }

  *a1 = 1;
  return result;
}

uint64_t sub_1DF53AA48(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v42 = a4;
  v43 = a2;
  v17 = sub_1DF564494();
  v18 = *(v17 - 8);
  result = MEMORY[0x1EEE9AC00](v17);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v40 = a7;
    v41 = a6;
    v36 = a10;
    v37 = result;
    v35 = a9;
    if (qword_1ED956060 != -1)
    {
      swift_once();
    }

    v38 = a5;
    v39 = a8;
    v22 = sub_1DF5647B4();
    __swift_project_value_buffer(v22, qword_1ED956068);

    v23 = sub_1DF564794();
    v24 = sub_1DF564C14();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v34[1] = v10;
      v26 = v25;
      v27 = swift_slowAlloc();
      v44 = v27;
      *v26 = 136446210;
      v28 = v43;
      *(v26 + 4) = sub_1DF47EF6C(v43, a3, &v44);
      _os_log_impl(&dword_1DF47C000, v23, v24, "Timeoutable task %{public}s finished before timeout", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1E12D75F0](v27, -1, -1);
      MEMORY[0x1E12D75F0](v26, -1, -1);
    }

    else
    {

      v28 = v43;
    }

    v29 = *(v42 + 128);
    v30 = *(v42 + 136);
    sub_1DF564484();
    sub_1DF5643C4();
    v32 = v31;
    (*(v18 + 8))(v21, v37);
    sub_1DF48FD84(v29, v30, v28, a3, v32);
    v44 = v40;
    v33 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    result = sub_1DF564B24();
  }

  *a1 = 1;
  return result;
}

uint64_t sub_1DF53ACEC(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_1DF564494();
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v32 = v17;
    v33 = result;
    v34 = a5;
    v35 = a7;
    v20 = a2;
    v36 = a6;
    if (qword_1ED956060 != -1)
    {
      swift_once();
    }

    v21 = sub_1DF5647B4();
    __swift_project_value_buffer(v21, qword_1ED956068);

    v22 = sub_1DF564794();
    v23 = sub_1DF564C14();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31[1] = v7;
      v25 = v24;
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_1DF47EF6C(v20, a3, &v37);
      _os_log_impl(&dword_1DF47C000, v22, v23, "Timeoutable task %{public}s finished before timeout", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1E12D75F0](v26, -1, -1);
      MEMORY[0x1E12D75F0](v25, -1, -1);
    }

    v27 = *(a4 + 128);
    v28 = *(a4 + 136);
    sub_1DF564484();
    sub_1DF5643C4();
    v30 = v29;
    (*(v32 + 8))(v19, v33);
    sub_1DF48FD84(v27, v28, v20, a3, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
    result = sub_1DF564B24();
  }

  *a1 = 1;
  return result;
}

uint64_t sub_1DF53AF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 72) = v18;
  *(v8 + 48) = v16;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = swift_task_alloc();
  *(v8 + 80) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v11;
  *v10 = v8;
  v10[1] = sub_1DF53B05C;
  v12 = MEMORY[0x1E69E7288];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v11, a4, v13, v11, v12);
}

uint64_t sub_1DF53B05C()
{
  v2 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1DF547428;
  }

  else
  {
    v3 = sub_1DF53B184;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

void sub_1DF53B184()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 56) = v2;
  os_unfair_lock_lock(v4 + 5);
  sub_1DF544F98(&v4[4]);
  os_unfair_lock_unlock(v4 + 5);
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DF53B2A0()
{
  v2 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1DF547428;
  }

  else
  {
    v3 = sub_1DF53B3C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

void sub_1DF53B3C8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 56) = v2;
  os_unfair_lock_lock(v4 + 5);
  sub_1DF546F80(&v4[4]);
  os_unfair_lock_unlock(v4 + 5);
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DF53B4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 72) = v18;
  *(v8 + 48) = v16;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = swift_task_alloc();
  *(v8 + 80) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v11;
  *v10 = v8;
  v10[1] = sub_1DF53B5A8;
  v12 = MEMORY[0x1E69E7288];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v11, a4, v13, v11, v12);
}

uint64_t sub_1DF53B5A8()
{
  v2 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1DF547428;
  }

  else
  {
    v3 = sub_1DF53B6D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

void sub_1DF53B6D0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  type metadata accessor for GeoClassificationInfo(0);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 56) = v2;
  os_unfair_lock_lock(v4 + 5);
  sub_1DF546EB4(&v4[4]);
  os_unfair_lock_unlock(v4 + 5);
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DF53B7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 72) = v18;
  *(v8 + 48) = v16;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = swift_task_alloc();
  *(v8 + 80) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v11;
  *v10 = v8;
  v10[1] = sub_1DF53B8C8;
  v12 = MEMORY[0x1E69E7288];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v11, a4, v13, v11, v12);
}

uint64_t sub_1DF53B8C8()
{
  v2 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1DF547428;
  }

  else
  {
    v3 = sub_1DF53B9F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

void sub_1DF53B9F0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  type metadata accessor for Ticket();
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 56) = v2;
  os_unfair_lock_lock(v4 + 5);
  sub_1DF5467A0(&v4[4]);
  os_unfair_lock_unlock(v4 + 5);
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DF53BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 72) = v18;
  *(v8 + 48) = v16;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = swift_task_alloc();
  *(v8 + 80) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v11;
  *v10 = v8;
  v10[1] = sub_1DF53BBE8;
  v12 = MEMORY[0x1E69E7288];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v11, a4, v13, v11, v12);
}

uint64_t sub_1DF53BBE8()
{
  v2 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1DF547428;
  }

  else
  {
    v3 = sub_1DF53BD10;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

void sub_1DF53BD10()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  type metadata accessor for WaitlistResult();
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 56) = v2;
  os_unfair_lock_lock(v4 + 5);
  sub_1DF54608C(&v4[4]);
  os_unfair_lock_unlock(v4 + 5);
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

void sub_1DF53BE20()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  type metadata accessor for CloudFeature(0);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 56) = v2;
  os_unfair_lock_lock(v4 + 5);
  sub_1DF5472DC(&v4[4]);
  os_unfair_lock_unlock(v4 + 5);
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DF53BF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 72) = v18;
  *(v8 + 48) = v16;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  v10 = swift_task_alloc();
  *(v8 + 80) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  *(v8 + 88) = v11;
  *v10 = v8;
  v10[1] = sub_1DF53C018;
  v12 = MEMORY[0x1E69E7288];
  v13 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v11, a4, v13, v11, v12);
}

uint64_t sub_1DF53C018()
{
  v2 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1DF547428;
  }

  else
  {
    v3 = sub_1DF53C140;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

void sub_1DF53C140()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  sub_1DF564B64();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v8;
  *(v5 + 40) = v7;
  *(v5 + 56) = v2;
  os_unfair_lock_lock(v4 + 5);
  sub_1DF5458B0(&v4[4]);
  os_unfair_lock_unlock(v4 + 5);
  if (!v1)
  {

    v6 = *(v0 + 8);

    v6();
  }
}

uint64_t sub_1DF53C23C(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v39 = a2;
  v40 = a7;
  v16 = sub_1DF564494();
  v17 = *(v16 - 8);
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v33 = result;
    v36 = a8;
    v37 = a6;
    v35 = a9;
    if (qword_1ED956060 != -1)
    {
      swift_once();
    }

    v34 = a5;
    v38 = a1;
    v21 = sub_1DF5647B4();
    __swift_project_value_buffer(v21, qword_1ED956068);

    v22 = sub_1DF564794();
    v23 = sub_1DF564C24();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v9;
      v26 = v25;
      v41 = v25;
      *v24 = 136446210;
      v27 = v39;
      *(v24 + 4) = sub_1DF47EF6C(v39, a3, &v41);
      _os_log_impl(&dword_1DF47C000, v22, v23, "%{public}s timed out", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1E12D75F0](v26, -1, -1);
      MEMORY[0x1E12D75F0](v24, -1, -1);
    }

    else
    {

      v27 = v39;
    }

    v28 = *(a4 + 128);
    v29 = *(a4 + 136);
    sub_1DF564484();
    sub_1DF5643C4();
    v31 = v30;
    (*(v17 + 8))(v20, v33);
    sub_1DF5092A0(v28, v29, v27, a3, v31);
    sub_1DF544FD4();
    v41 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(v36, v35);
    result = sub_1DF564B14();
    a1 = v38;
  }

  *a1 = 1;
  return result;
}

id DaemonController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonController.init()()
{
  v0 = [objc_opt_self() sharedSessionWithNoUrlCache];
  v1 = [v0 urlSession];

  v2 = objc_allocWithZone(type metadata accessor for DaemonController());
  v3 = DaemonController.init(session:)(v1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id DaemonController.init(session:)(void *a1)
{
  v3 = sub_1DF5647B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DF564734();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *MEMORY[0x1E69E9CD0];
  *&v1[OBJC_IVAR___DaemonController_minimumActivityInterval] = *MEMORY[0x1E69E9CD0];
  v13 = 90 * *MEMORY[0x1E69E9CC0];
  if ((*MEMORY[0x1E69E9CC0] * 90) >> 64 == v13 >> 63)
  {
    v80 = v9;
    v81 = v11;
    v82 = v3;
    *&v1[OBJC_IVAR___DaemonController_maximumActivityInterval] = v13;
    *&v1[OBJC_IVAR___DaemonController_failureActivityInterval] = v12;
    v14 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
    v15 = sub_1DF564914();
    v16 = [v14 initWithMachServiceName_];

    *&v1[OBJC_IVAR___DaemonController_listener] = v16;
    v17 = sub_1DF481988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38360, &qword_1DF56CE20);
    v18 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v18 + 112) = v17;
    *&v1[OBJC_IVAR___DaemonController_accountStore] = v18;
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
    v19 = sub_1DF531308();
    type metadata accessor for Config();
    v20 = swift_allocObject();
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 0u;
    *(v20 + 16) = v19;
    *(v20 + 24) = &off_1F5A87E78;
    sub_1DF47E5B4(&v99, &qword_1ECE38370, &qword_1DF569E50);
    v21 = &v1[OBJC_IVAR___DaemonController_configStore];
    *v21 = v20;
    v21[1] = &off_1F5A86FD0;
    type metadata accessor for TaskLimiters();
    v22 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v22 + 112) = MEMORY[0x1E69E7CC8];
    v23 = OBJC_IVAR___DaemonController_taskLimiters;
    *&v1[OBJC_IVAR___DaemonController_taskLimiters] = v22;
    *&v1[OBJC_IVAR___DaemonController_urlSession] = a1;
    v24 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v79 = a1;
    v25 = sub_1DF564914();
    v26 = [v24 initWithSuiteName_];

    v27 = sub_1DF4FB5AC(v26);
    *&v1[OBJC_IVAR___DaemonController_geoCache] = v27;
    v28 = *&v1[v23];
    v77 = v27;
    v78 = v28;

    v29 = sub_1DF481988();
    *(&v100 + 1) = sub_1DF4BECB0(0, &qword_1ED954D38, 0x1E6959A40);
    v101 = &off_1F5A86EE8;
    *&v99 = v29;
    v30 = [objc_opt_self() sharedSessionWithNoUrlCache];
    v76 = [v30 urlSession];

    if (qword_1ED955FE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v31 = qword_1ED958B80;
  if (qword_1ED954AC8 != -1)
  {
    swift_once();
  }

  v32 = qword_1ED954AD0;
  v98[3] = type metadata accessor for HardwareChecker();
  v98[4] = &off_1F5A89048;
  v98[0] = v32;
  v97[3] = &type metadata for TapToRadarPoster;
  v97[4] = &protocol witness table for TapToRadarPoster;
  v33 = qword_1ED956018;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = v82;
  v35 = __swift_project_value_buffer(v82, qword_1ED956020);
  (*(v4 + 16))(v6, v35, v34);
  v36 = v81;
  sub_1DF564714();
  v37 = type metadata accessor for AvailabilityClient();
  v95 = v37;
  v96 = &off_1F5A8A840;
  v94[0] = v31;
  v92 = &type metadata for Device;
  v93 = &off_1F5A89060;
  v91[0] = swift_allocObject();
  sub_1DF543D2C(v98, v91[0] + 16);
  v38 = v80;
  v89 = v80;
  v90 = &off_1F5A8A820;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v88);
  (*(v8 + 16))(boxed_opaque_existential_1, v36, v38);
  v72 = type metadata accessor for FeatureRequestHandler();
  v40 = objc_allocWithZone(v72);
  v74 = v31;
  v41 = v40;
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
  v75 = &v71;
  MEMORY[0x1EEE9AC00](v42);
  v44 = (&v71 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  v73 = &v71;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v71 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v49 + 16))(v48);
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
  v71 = &v71;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v71 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v53 + 16))(v52);
  v54 = *v44;
  v87[3] = v37;
  v87[4] = &off_1F5A8A840;
  v87[0] = v54;
  v86[3] = &type metadata for Device;
  v86[4] = &off_1F5A89060;
  v55 = swift_allocObject();
  v86[0] = v55;
  v56 = *(v48 + 1);
  *(v55 + 16) = *v48;
  *(v55 + 32) = v56;
  *(v55 + 48) = *(v48 + 4);
  v85[3] = v38;
  v85[4] = &off_1F5A8A820;
  v57 = __swift_allocate_boxed_opaque_existential_1(v85);
  (*(v8 + 32))(v57, v52, v38);
  v58 = v77;
  *&v41[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_taskLimiters] = v78;
  *&v41[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_geoCache] = v58;
  sub_1DF47FCEC(&v99, &v41[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_accountStore]);
  *&v41[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_urlSession] = v76;
  sub_1DF47FCEC(v87, &v41[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_availabilityClient]);
  sub_1DF47FCEC(v86, &v41[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_deviceCapabilities]);
  sub_1DF47FCEC(v97, &v41[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_tapToRadarPoster]);
  v59 = &v41[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_telemetryProvider];
  *v59 = sub_1DF47FD50;
  v59[1] = 0;
  sub_1DF47FCEC(v85, &v41[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_signposter]);
  v60 = &v41[OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_gmsIsAvailable];
  *v60 = sub_1DF4C6270;
  v60[1] = 0;
  v84.receiver = v41;
  v84.super_class = v72;

  v61 = objc_msgSendSuper2(&v84, sel_init, v71);
  (*(v8 + 8))(v81, v38);
  __swift_destroy_boxed_opaque_existential_0(v97);
  __swift_destroy_boxed_opaque_existential_0(&v99);
  __swift_destroy_boxed_opaque_existential_0(v85);
  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(v87);
  __swift_destroy_boxed_opaque_existential_0(v88);
  __swift_destroy_boxed_opaque_existential_0(v91);
  __swift_destroy_boxed_opaque_existential_0(v94);
  sub_1DF543D88(v98);
  *&v1[OBJC_IVAR___DaemonController_requestHandler] = v61;
  v62 = &v1[OBJC_IVAR___DaemonController_telemetryProvider];
  *v62 = sub_1DF47FD50;
  v62[1] = 0;
  v63 = type metadata accessor for DaemonController();
  v83.receiver = v1;
  v83.super_class = v63;
  v64 = objc_msgSendSuper2(&v83, sel_init);
  v65 = qword_1ED956258;
  v66 = v64;
  if (v65 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v82, qword_1ED956260);
  v67 = sub_1DF564794();
  v68 = sub_1DF564C44();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_1DF47C000, v67, v68, "Daemon controller has been initialized!", v69, 2u);
    MEMORY[0x1E12D75F0](v69, -1, -1);
  }

  return v66;
}

void sub_1DF53D14C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = *(v0 + OBJC_IVAR___DaemonController_listener);
  [v4 setDelegate_];
  [v4 resume];
  v5 = sub_1DF564B44();
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1DF515B98(0, 0, v3, &unk_1DF56CE30, v7);

  sub_1DF53E148();
  v6(v3, 1, 1, v5);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1DF4BF520(0, 0, v3, &unk_1DF56CE38, v8);

  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v9 = sub_1DF5647B4();
  __swift_project_value_buffer(v9, qword_1ED956260);
  v10 = sub_1DF564794();
  v11 = sub_1DF564C44();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1DF47C000, v10, v11, "Daemon controller did start", v12, 2u);
    MEMORY[0x1E12D75F0](v12, -1, -1);
  }
}

uint64_t sub_1DF53D400()
{
  v1 = (v0[2] + OBJC_IVAR___DaemonController_configStore);
  v0[3] = *v1;
  v2 = v1[1];
  v0[4] = v2;
  ObjectType = swift_getObjectType();
  (*(v2 + 72))(1, ObjectType, v2);
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956260);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Start Fetching Subscriber status", v7, 2u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v8 = v0[2];

  v9 = *(v8 + OBJC_IVAR___DaemonController_taskLimiters);
  v0[5] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1DF53D574, v9, 0);
}

uint64_t sub_1DF53D574()
{
  *(v0 + 48) = sub_1DF4929F8(0xD000000000000012, 0x80000001DF5728E0, 300);

  return MEMORY[0x1EEE6DFA0](sub_1DF53D5FC, 0, 0);
}

uint64_t sub_1DF53D5FC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___DaemonController_accountStore);
  v2 = swift_allocObject();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  swift_unknownObjectRetain();

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1DF53D724;

  return sub_1DF53470C(sub_1DF53470C, 0xD000000000000012, 0x80000001DF5728E0, &unk_1DF56CF70, v2);
}

uint64_t sub_1DF53D724()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1DF53D848;
  }

  else
  {

    v2 = sub_1DF513F6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF53D848()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF53D8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = swift_task_alloc();
  v4[12] = v5;
  *v5 = v4;
  v5[1] = sub_1DF53D95C;

  return sub_1DF4B9B74();
}

uint64_t sub_1DF53D95C(char a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1DF53DCCC;
  }

  else
  {
    v4 = sub_1DF53DA74;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF53DA74()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  ObjectType = swift_getObjectType();
  (*(v3 + 48))(v1, ObjectType, v3);

  return MEMORY[0x1EEE6DFA0](sub_1DF53DB14, v2, 0);
}

uint64_t sub_1DF53DB14()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  sub_1DF4A3080(v1);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1DF53DBA4, 0, 0);
}

uint64_t sub_1DF53DBA4()
{
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED956260);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 112);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1DF47C000, v2, v3, "Subscriber status fetched: %{BOOL,public}d", v5, 8u);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DF53DCCC()
{
  v16 = v0;
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED956260);
  v3 = v1;
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_1DF5651B4();
    v12 = sub_1DF47EF6C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Subscriber status fetch failed with error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DF53DEAC()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_1DF53DFCC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37F50, &unk_1DF56A370);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DF4F5CC4;
  v0[13] = &block_descriptor_267;
  v0[14] = v2;
  [v1 revalidateCFUWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DF53DFCC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 144) = v1;
  if (v1)
  {
    v2 = sub_1DF53E0DC;
  }

  else
  {
    v2 = sub_1DF50EC14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF53E0DC(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

void sub_1DF53E148()
{
  v5[3] = &type metadata for FeatureFlag;
  v5[4] = sub_1DF481614();
  LOBYTE(v5[0]) = 0;
  v0 = sub_1DF5645A4();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if (v0)
  {
    sub_1DF53E260();
  }

  else
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v1 = sub_1DF5647B4();
    __swift_project_value_buffer(v1, qword_1ED956260);
    v2 = sub_1DF564794();
    v3 = sub_1DF564C14();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DF47C000, v2, v3, "caching disabled", v4, 2u);
      MEMORY[0x1E12D75F0](v4, -1, -1);
    }
  }
}

void sub_1DF53E260()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF5647B4();
  __swift_project_value_buffer(v3, qword_1ED956260);
  v4 = sub_1DF564794();
  v5 = sub_1DF564C44();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DF47C000, v4, v5, "Preparing for check-in", v6, 2u);
    MEMORY[0x1E12D75F0](v6, -1, -1);
  }

  v7 = *MEMORY[0x1E69E9C50];
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = ObjectType;
  v12[4] = sub_1DF54593C;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DF53EDC8;
  v12[3] = &block_descriptor_9;
  v9 = _Block_copy(v12);
  v10 = v1;

  v11 = sub_1DF5649B4();
  xpc_activity_register((v11 + 32), v7, v9);

  _Block_release(v9);
}

uint64_t sub_1DF53E430(_xpc_activity_s *a1, char *a2)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v61 - v9;
  v11 = sub_1DF564494();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v61 - v18;
  v64 = a1;
  state = xpc_activity_get_state(a1);
  sub_1DF559EC4();
  v21 = v20;
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  sub_1DF4FCF04(v10);
  v22 = *(v12 + 48);
  v65 = v22(v10, 1, v11);
  if (v65 == 1)
  {
    sub_1DF47E5B4(v10, &qword_1ECE37A10, &qword_1DF567C00);
    v23 = 0;
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    sub_1DF564474();
    sub_1DF5643C4();
    v23 = v24;
    v25 = *(v12 + 8);
    v25(v17, v11);
    v25(v19, v11);
  }

  sub_1DF4FCF04(v8);
  if (v22(v8, 1, v11) == 1)
  {
    sub_1DF47E5B4(v8, &qword_1ECE37A10, &qword_1DF567C00);
    v26 = 1;
    v27 = state;
    if (state)
    {
      goto LABEL_8;
    }

LABEL_16:
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v44 = sub_1DF5647B4();
    __swift_project_value_buffer(v44, qword_1ED956260);
    v45 = sub_1DF564794();
    v46 = sub_1DF564C44();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v68 = v48;
      *v47 = 136446210;
      *(v47 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF574CD0, &v68);
      _os_log_impl(&dword_1DF47C000, v45, v46, "new state: activity %{public}s -> check-in", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x1E12D75F0](v48, -1, -1);
      MEMORY[0x1E12D75F0](v47, -1, -1);
    }

    v33 = v66;
    v34 = v65;
    sub_1DF53EE28(v64);
    goto LABEL_26;
  }

  v40 = v63;
  (*(v12 + 32))(v63, v8, v11);
  sub_1DF564474();
  sub_1DF5643C4();
  v42 = v41;
  v43 = *(v12 + 8);
  v43(v17, v11);
  v43(v40, v11);
  v26 = v42 < 0.0;
  v27 = state;
  if (!state)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (v27 == 5)
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v49 = sub_1DF5647B4();
    __swift_project_value_buffer(v49, qword_1ED956260);
    v50 = sub_1DF564794();
    v51 = sub_1DF564C44();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v68 = v53;
      *v52 = 136446210;
      *(v52 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF574CD0, &v68);
      _os_log_impl(&dword_1DF47C000, v50, v51, "new state: activity %{public}s -> done", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x1E12D75F0](v53, -1, -1);
      MEMORY[0x1E12D75F0](v52, -1, -1);
    }

    v33 = v66;
    v34 = v65;
    goto LABEL_26;
  }

  if (v27 == 2)
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v28 = sub_1DF5647B4();
    __swift_project_value_buffer(v28, qword_1ED956260);
    v29 = sub_1DF564794();
    v30 = sub_1DF564C44();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v68 = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF574CD0, &v68);
      _os_log_impl(&dword_1DF47C000, v29, v30, "new state: activity %{public}s -> run", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1E12D75F0](v32, -1, -1);
      MEMORY[0x1E12D75F0](v31, -1, -1);
    }

    v33 = v66;
    v34 = v65;
    v35 = v64;
    v36 = sub_1DF564B44();
    v37 = v62;
    (*(*(v36 - 8) + 56))(v62, 1, 1, v36);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v33;
    v38[5] = v35;
    v39 = v33;
    swift_unknownObjectRetain();
    sub_1DF4BF520(0, 0, v37, &unk_1DF56CFF0, v38);

LABEL_26:
    v68 = v27;
    v54 = 1;
    goto LABEL_32;
  }

  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v55 = sub_1DF5647B4();
  __swift_project_value_buffer(v55, qword_1ED956260);
  v56 = sub_1DF564794();
  v57 = sub_1DF564C44();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v68 = v59;
    *v58 = 136446466;
    *(v58 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF574CD0, &v68);
    *(v58 + 12) = 2050;
    *(v58 + 14) = v27;
    _os_log_impl(&dword_1DF47C000, v56, v57, "new state: activity %{public}s -> %{public}ld [unhandled]", v58, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x1E12D75F0](v59, -1, -1);
    MEMORY[0x1E12D75F0](v58, -1, -1);
  }

  v33 = v66;
  v34 = v65;
  v54 = 0;
  v68 = v27;
LABEL_32:
  v69 = v54;
  v70 = v21;
  v71 = v23;
  v72 = v34 == 1;
  v73 = v26;
  return sub_1DF4E3520(&v68, *&v33[OBJC_IVAR___DaemonController_telemetryProvider]);
}

uint64_t sub_1DF53ED2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF53F48C(a5);
}

uint64_t sub_1DF53EDC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DF53EE28(_xpc_activity_s *a1)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v42 - v5;
  v7 = sub_1DF564494();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  sub_1DF559EC4();
  v17 = v16;
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  sub_1DF4FCF04(v6);
  v18 = *(v8 + 48);
  v44 = v18(v6, 1, v7);
  if (v44 == 1)
  {
    sub_1DF47E5B4(v6, &qword_1ECE37A10, &qword_1DF567C00);
    v19 = 0;
  }

  else
  {
    (*(v8 + 32))(v15, v6, v7);
    sub_1DF564474();
    sub_1DF5643C4();
    v19 = v20;
    v21 = *(v8 + 8);
    v21(v13, v7);
    v21(v15, v7);
  }

  sub_1DF4FCF04(v4);
  if (v18(v4, 1, v7) == 1)
  {
    sub_1DF47E5B4(v4, &qword_1ECE37A10, &qword_1DF567C00);
    v22 = 1;
  }

  else
  {
    v23 = v42;
    (*(v8 + 32))(v42, v4, v7);
    sub_1DF564474();
    sub_1DF5643C4();
    v25 = v24;
    v26 = *(v8 + 8);
    v26(v13, v7);
    v26(v23, v7);
    v22 = v25 < 0.0;
  }

  v27 = v43;
  v28 = xpc_activity_copy_criteria(v43);
  v29 = v28;
  if (v28)
  {
    int64 = xpc_dictionary_get_int64(v28, *MEMORY[0x1E69E9C68]);
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v31 = sub_1DF5647B4();
    __swift_project_value_buffer(v31, qword_1ED956260);
    v32 = sub_1DF564794();
    v33 = sub_1DF564C44();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134349056;
      *(v34 + 4) = int64;
      _os_log_impl(&dword_1DF47C000, v32, v33, "current activity delay: %{public}lld", v34, 0xCu);
      MEMORY[0x1E12D75F0](v34, -1, -1);
    }

    sub_1DF559EC4();
    v17 = v35;
    swift_unknownObjectRelease();
    LOBYTE(v46) = 1;
    v36 = v45;
  }

  else
  {
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v37 = sub_1DF5647B4();
    __swift_project_value_buffer(v37, qword_1ED956260);
    v38 = sub_1DF564794();
    v39 = sub_1DF564C44();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1DF47C000, v38, v39, "scheduling activity for initial run", v40, 2u);
      MEMORY[0x1E12D75F0](v40, -1, -1);
    }

    v36 = v45;
    sub_1DF54097C(v27, *(v45 + OBJC_IVAR___DaemonController_minimumActivityInterval));
    int64 = 0;
    LOBYTE(v46) = 0;
  }

  *(&v46 + 1) = int64;
  v47 = v29 == 0;
  v48 = v17;
  v49 = v19;
  v50 = v44 == 1;
  v51 = v22;
  return sub_1DF53F380(v36, &v46);
}

uint64_t sub_1DF53F380(uint64_t a1, _OWORD *a2)
{
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956260);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DF47C000, v5, v6, "Check-in complete", v7, 2u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v8 = *(a1 + OBJC_IVAR___DaemonController_telemetryProvider);

  return sub_1DF4E2F64(a2, v8);
}

uint64_t sub_1DF53F48C(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v3 = sub_1DF564494();
  v2[45] = v3;
  v2[46] = *(v3 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF53F610, 0, 0);
}

void sub_1DF53F610(uint64_t a1)
{
  v89 = v1;
  sub_1DF559EC4();
  v3 = v2;
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + 360);
  v5 = *(v1 + 368);
  v6 = *(v1 + 352);
  *(v1 + 424) = off_1ED955FF8;
  sub_1DF4FCF04(v6);
  v7 = *(v5 + 48);
  v8 = v7(v6, 1, v4);
  *(v1 + 84) = v8;
  if (v8 == 1)
  {
    sub_1DF47E5B4(*(v1 + 352), &qword_1ECE37A10, &qword_1DF567C00);
    v9 = 0;
  }

  else
  {
    v11 = *(v1 + 408);
    v10 = *(v1 + 416);
    v12 = *(v1 + 360);
    v13 = *(v1 + 368);
    (*(v13 + 32))(v10, *(v1 + 352), v12);
    sub_1DF564474();
    sub_1DF5643C4();
    v9 = v14;
    v15 = *(v13 + 8);
    v15(v11, v12);
    v15(v10, v12);
  }

  *(v1 + 432) = v9;
  v16 = *(v1 + 360);
  v17 = *(v1 + 344);
  sub_1DF4FCF04(v17);
  if (v7(v17, 1, v16) == 1)
  {
    sub_1DF47E5B4(*(v1 + 344), &qword_1ECE37A10, &qword_1DF567C00);
    v18 = 1;
  }

  else
  {
    v19 = *(v1 + 400);
    v20 = *(v1 + 408);
    v21 = *(v1 + 360);
    v22 = *(v1 + 368);
    (*(v22 + 32))(v19, *(v1 + 344), v21);
    sub_1DF564474();
    sub_1DF5643C4();
    v24 = v23;
    v25 = *(v22 + 8);
    v25(v20, v21);
    v25(v19, v21);
    v18 = v24 < 0.0;
  }

  *(v1 + 83) = v18;
  if (xpc_activity_should_defer(*(v1 + 312)))
  {
    v26 = xpc_activity_set_state(*(v1 + 312), 3);
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v27 = sub_1DF5647B4();
    __swift_project_value_buffer(v27, qword_1ED956260);
    v28 = sub_1DF564794();
    v29 = sub_1DF564C44();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67240192;
      *(v30 + 4) = v26;
      _os_log_impl(&dword_1DF47C000, v28, v29, "run deferred, result: %{BOOL,public}d", v30, 8u);
      MEMORY[0x1E12D75F0](v30, -1, -1);
    }

    v31 = v8 == 1;
    v32 = *(v1 + 320);

    v86 = 1;
    v87 = 1;
    v88 = v31;
    *(v1 + 160) = 0;
    *(v1 + 161) = v26;
    *(v1 + 162) = 2;
    *(v1 + 168) = 0;
    *(v1 + 176) = 1;
    *(v1 + 184) = 0;
    *(v1 + 192) = 0;
    *(v1 + 200) = 1;
    *(v1 + 208) = v3;
    *(v1 + 216) = v9;
    *(v1 + 224) = v31;
    *(v1 + 225) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38470, &qword_1DF56CF60);
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E6158];
    *(v33 + 16) = xmmword_1DF567CF0;
    *(v33 + 56) = v34;
    strcpy((v33 + 32), "Sending event");
    *(v33 + 46) = -4864;
    sub_1DF565224();

    sub_1DF4E3814(v1 + 160, *(v32 + OBJC_IVAR___DaemonController_telemetryProvider));
    goto LABEL_34;
  }

  v35 = *(*(v1 + 320) + OBJC_IVAR___DaemonController_configStore + 8);
  ObjectType = swift_getObjectType();
  v37 = (*(v35 + 64))(ObjectType, v35);
  *(v1 + 154) = v37 & 1;
  if (v37)
  {
    v39 = *(v1 + 320);
    v38 = *(v1 + 328);
    v40 = sub_1DF564B44();
    (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v39;
    v42 = v39;
    sub_1DF515B98(0, 0, v38, &unk_1DF568C60, v41);
  }

  v43 = *(v1 + 360);
  v44 = *(v1 + 336);
  sub_1DF542C9C(*(v1 + 312), v44);
  if (v7(v44, 1, v43) != 1)
  {
    v84 = v37;
    (*(*(v1 + 368) + 32))(*(v1 + 392), *(v1 + 336), *(v1 + 360));
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v52 = *(v1 + 384);
    v51 = *(v1 + 392);
    v54 = *(v1 + 360);
    v53 = *(v1 + 368);
    v55 = sub_1DF5647B4();
    __swift_project_value_buffer(v55, qword_1ED956260);
    (*(v53 + 16))(v52, v51, v54);
    v56 = sub_1DF564794();
    v57 = sub_1DF564C44();
    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v1 + 384);
    v61 = *(v1 + 360);
    v60 = *(v1 + 368);
    if (v58)
    {
      v62 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v85 = v83;
      *v62 = 136315138;
      sub_1DF484F10(&qword_1ED954CB0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v63 = v18;
      v64 = sub_1DF5650A4();
      v82 = v57;
      v66 = v65;
      v67 = v61;
      v68 = *(v60 + 8);
      v68(v59, v67);
      v69 = v64;
      v18 = v63;
      v70 = sub_1DF47EF6C(v69, v66, &v85);

      *(v62 + 4) = v70;
      _os_log_impl(&dword_1DF47C000, v56, v82, "rebuilding cache deferred to %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x1E12D75F0](v83, -1, -1);
      MEMORY[0x1E12D75F0](v62, -1, -1);
    }

    else
    {

      v71 = v61;
      v68 = *(v60 + 8);
      v68(v59, v71);
    }

    sub_1DF564434();
    if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v72 > -9.22337204e18)
    {
      if (v72 < 9.22337204e18)
      {
        v73 = v8 == 1;
        v74 = *(v1 + 392);
        v75 = *(v1 + 360);
        v76 = *(v1 + 320);
        sub_1DF54097C(*(v1 + 312), v72);
        sub_1DF559EC4();
        v78 = v77;
        sub_1DF564434();
        v80 = fabs(v79);
        v68(v74, v75);
        *(v1 + 88) = 513;
        *(v1 + 90) = v84 & 1;
        *(v1 + 96) = v80;
        *(v1 + 104) = 0;
        *(v1 + 112) = 0;
        *(v1 + 120) = 0;
        *(v1 + 128) = 1;
        *(v1 + 136) = v78;
        *(v1 + 144) = v9;
        *(v1 + 152) = v73;
        *(v1 + 153) = v18;
        sub_1DF5407FC(v76, v1 + 88);
LABEL_34:

        v81 = *(v1 + 8);

        v81();
        return;
      }

LABEL_39:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_39;
  }

  sub_1DF47E5B4(*(v1 + 336), &qword_1ECE37A10, &qword_1DF567C00);
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v45 = sub_1DF5647B4();
  *(v1 + 440) = __swift_project_value_buffer(v45, qword_1ED956260);
  v46 = sub_1DF564794();
  v47 = sub_1DF564C44();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1DF47C000, v46, v47, "rebuilding cache, fetching all features from service", v48, 2u);
    MEMORY[0x1E12D75F0](v48, -1, -1);
  }

  v49 = swift_task_alloc();
  *(v1 + 448) = v49;
  *v49 = v1;
  v49[1] = sub_1DF53FFD0;
  v50 = *(v1 + 376);

  sub_1DF5410C4(v50);
}

uint64_t sub_1DF53FFD0()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1DF540384;
  }

  else
  {
    v2 = sub_1DF5400E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1DF5400E4(uint64_t a1)
{
  sub_1DF564434();
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v3 = *(v1 + 320);
  sub_1DF54097C(*(v1 + 312), v2);
  v4 = v3;
  v5 = sub_1DF564794();
  v6 = sub_1DF564C14();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 320);
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *&v8[OBJC_IVAR___DaemonController_minimumActivityInterval];

    _os_log_impl(&dword_1DF47C000, v5, v6, "Resetting backoff time to %lld", v9, 0xCu);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  else
  {
  }

  v10 = *(v1 + 154);
  v11 = *(v1 + 83);
  v12 = *(v1 + 432);
  v14 = *(v1 + 368);
  v13 = *(v1 + 376);
  v15 = *(v1 + 360);
  v16 = *(v1 + 320);
  v17 = *(v1 + 84) == 1;
  v18 = *(v16 + OBJC_IVAR___DaemonController_minimumActivityInterval);
  *(v16 + OBJC_IVAR___DaemonController_failureActivityInterval) = v18;
  sub_1DF559EC4();
  v20 = v19;
  (*(v14 + 8))(v13, v15);
  *(v1 + 232) = 517;
  *(v1 + 234) = v10;
  *(v1 + 240) = 0;
  *(v1 + 248) = 1;
  *(v1 + 256) = 0;
  *(v1 + 264) = v18;
  *(v1 + 272) = 0;
  *(v1 + 280) = v20;
  *(v1 + 288) = v12;
  *(v1 + 296) = v17;
  *(v1 + 297) = v11;
  v21 = *(v1 + 320);
  v22 = *(v1 + 248);
  v23 = *(v1 + 280);
  *(v1 + 48) = *(v1 + 264);
  *(v1 + 64) = v23;
  *(v1 + 80) = *(v1 + 296);
  *(v1 + 16) = *(v1 + 232);
  *(v1 + 32) = v22;
  sub_1DF5407FC(v21, v1 + 16);
  sub_1DF54507C(v1 + 232);

  v24 = *(v1 + 8);

  v24();
}

uint64_t sub_1DF540384()
{
  v1 = *(v0 + 456);
  *(v0 + 304) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37900, &unk_1DF5673F0);
  if (swift_dynamicCast())
  {

    if (*(v0 + 82) == 1)
    {
      v3 = *(v0 + 312);
      sub_1DF4FE1DC();
      v4 = sub_1DF540CB4();
      sub_1DF54097C(v3, v4);
      v5 = sub_1DF564794();
      v6 = sub_1DF564C44();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 134349056;
        *(v7 + 4) = v4;
        _os_log_impl(&dword_1DF47C000, v5, v6, "empty response, rescheduling with interval %{public}lld", v7, 0xCu);
        MEMORY[0x1E12D75F0](v7, -1, -1);
      }

      v8 = *(v0 + 154);
      v9 = *(v0 + 83);
      v10 = *(v0 + 432);
      v11 = *(v0 + 84);

      sub_1DF559EC4();
      v13 = v12;

      *(v0 + 232) = 514;
      *(v0 + 234) = v8;
      *(v0 + 240) = 0;
      *(v0 + 248) = 1;
      *(v0 + 256) = 0;
      *(v0 + 264) = v4;
      *(v0 + 272) = 0;
      *(v0 + 280) = v13;
      *(v0 + 288) = v10;
      v14 = v11 == 1;
    }

    else
    {
      v26 = *(v0 + 312);
      v27 = sub_1DF540CB4();
      sub_1DF54097C(v26, v27);
      v28 = sub_1DF564794();
      v29 = sub_1DF564C24();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134349056;
        *(v30 + 4) = v27;
        _os_log_impl(&dword_1DF47C000, v28, v29, "invalid new expiration after successful fetch, rescheduling with interval %{public}lld", v30, 0xCu);
        MEMORY[0x1E12D75F0](v30, -1, -1);
      }

      v31 = *(v0 + 154);
      v9 = *(v0 + 83);
      v32 = *(v0 + 432);
      v33 = *(v0 + 84);

      sub_1DF559EC4();
      v35 = v34;

      *(v0 + 232) = 515;
      *(v0 + 234) = v31;
      *(v0 + 240) = 0;
      *(v0 + 248) = 1;
      *(v0 + 256) = 0;
      *(v0 + 264) = v27;
      *(v0 + 272) = 0;
      *(v0 + 280) = v35;
      *(v0 + 288) = v32;
      v14 = v33 == 1;
    }

    *(v0 + 296) = v14;
    *(v0 + 297) = v9;
  }

  else
  {
    v15 = *(v0 + 312);

    v16 = sub_1DF540CB4();
    sub_1DF54097C(v15, v16);
    v17 = sub_1DF564794();
    v18 = sub_1DF564C24();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      *(v19 + 4) = v16;
      _os_log_impl(&dword_1DF47C000, v17, v18, "failed, rescheduling with interval %{public}lld", v19, 0xCu);
      MEMORY[0x1E12D75F0](v19, -1, -1);
    }

    v20 = *(v0 + 456);
    v21 = *(v0 + 154);
    v22 = *(v0 + 83);
    v23 = *(v0 + 432);
    v24 = *(v0 + 84);

    sub_1DF559EC4();
    *(v0 + 232) = 516;
    *(v0 + 234) = v21;
    *(v0 + 240) = 0;
    *(v0 + 248) = 1;
    *(v0 + 256) = v20;
    *(v0 + 264) = v16;
    *(v0 + 272) = 0;
    *(v0 + 280) = v25;
    *(v0 + 288) = v23;
    *(v0 + 296) = v24 == 1;
    *(v0 + 297) = v22;
  }

  v36 = *(v0 + 320);
  v37 = *(v0 + 280);
  *(v0 + 48) = *(v0 + 264);
  *(v0 + 64) = v37;
  *(v0 + 80) = *(v0 + 296);
  v38 = *(v0 + 248);
  *(v0 + 16) = *(v0 + 232);
  *(v0 + 32) = v38;
  sub_1DF5407FC(v36, v0 + 16);
  sub_1DF54507C(v0 + 232);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1DF5407FC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v4 = sub_1DF5647B4();
  __swift_project_value_buffer(v4, qword_1ED956260);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DF47C000, v5, v6, "run complete", v7, 2u);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38470, &qword_1DF56CF60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DF567CF0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 32) = 0xD00000000000001BLL;
  *(v8 + 40) = 0x80000001DF574CF0;
  sub_1DF565224();

  v9 = *(a1 + OBJC_IVAR___DaemonController_telemetryProvider);

  return sub_1DF4E3814(a2, v9);
}

void sub_1DF54097C(_xpc_activity_s *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DF564494();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v10 = sub_1DF5647B4();
  __swift_project_value_buffer(v10, qword_1ED956260);
  v11 = sub_1DF564794();
  v12 = sub_1DF564C44();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = a1;
    v16 = v15;
    v30 = v15;
    *v14 = 134349314;
    *(v14 + 4) = a2;
    *(v14 + 12) = 2082;
    sub_1DF564424();
    sub_1DF484F10(&qword_1ED954CB0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v17 = sub_1DF5650A4();
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_1DF47EF6C(v17, v19, &v30);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_1DF47C000, v11, v12, "scheduling cache reload in before %{public}llds (%{public}s)", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v21 = v16;
    a1 = v28;
    MEMORY[0x1E12D75F0](v21, -1, -1);
    v22 = v14;
    v3 = v29;
    MEMORY[0x1E12D75F0](v22, -1, -1);
  }

  empty = xpc_activity_copy_criteria(a1);
  if (empty)
  {
    goto LABEL_8;
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9D88], 0);
  if (*MEMORY[0x1E69E9DB8])
  {
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9DB8], 1);
LABEL_8:
    v24 = sub_1DF541008(a2);
    v26 = v25;
    sub_1DF5446C4(empty, v24, v25);
    xpc_activity_set_criteria(a1, empty);
    swift_unknownObjectRelease();
    sub_1DF4E3258(a2, v24, v26, *(v3 + OBJC_IVAR___DaemonController_telemetryProvider));
    return;
  }

  __break(1u);
}

uint64_t sub_1DF540CB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1DF564494();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR___DaemonController_configStore + 8];
  ObjectType = swift_getObjectType();
  (*(v9 + 8))(0x726665527478656ELL, 0xEF65746144687365, ObjectType, v9);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1DF47E5B4(v4, &qword_1ECE37A10, &qword_1DF567C00);
    v11 = OBJC_IVAR___DaemonController_failureActivityInterval;
    v5 = *&v0[OBJC_IVAR___DaemonController_failureActivityInterval];
    if (v5 + 0x4000000000000000 >= 0)
    {
      v12 = 2 * v5;
      if (*&v0[OBJC_IVAR___DaemonController_maximumActivityInterval] < 2 * v5)
      {
        v12 = *&v0[OBJC_IVAR___DaemonController_maximumActivityInterval];
      }

      *&v0[OBJC_IVAR___DaemonController_failureActivityInterval] = v12;
      if (qword_1ED956258 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
LABEL_6:
    v13 = sub_1DF5647B4();
    __swift_project_value_buffer(v13, qword_1ED956260);
    v14 = v1;
    v15 = sub_1DF564794();
    v16 = sub_1DF564C14();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = v5;
      *(v17 + 12) = 2048;
      *(v17 + 14) = *(v1 + v11);

      _os_log_impl(&dword_1DF47C000, v15, v16, "Backoff time increased. Current backoff: %lld. Next backoff: %lld", v17, 0x16u);
      MEMORY[0x1E12D75F0](v17, -1, -1);
    }

    else
    {
    }

    return v5;
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_1DF564434();
  v19 = v18;
  v1 = *&v18;
  v20 = *(v6 + 8);
  v11 = v6 + 8;
  result = v20(v8, v5);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (v19 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v19 < 9.22337204e18)
  {
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF541008(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___DaemonController_minimumActivityInterval);
  if (v2 <= result)
  {
    v2 = result;
  }

  if (v2 >= *(v1 + OBJC_IVAR___DaemonController_maximumActivityInterval))
  {
    v2 = *(v1 + OBJC_IVAR___DaemonController_maximumActivityInterval);
  }

  if ((*MEMORY[0x1E69E9CC8] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= *MEMORY[0x1E69E9CC8])
  {
    v4 = v2 * 0.2;
    if (COERCE__INT64(fabs(v4)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (v4 <= -9.22337204e18)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v4 >= 9.22337204e18)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    if (v4 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v4;
    }
  }

  else
  {
    v3 = 1;
  }

  result = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1DF5410C4(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v2[18] = swift_task_alloc();
  v3 = sub_1DF564494();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF541204, 0, 0);
}

uint64_t sub_1DF541204()
{
  v1 = *(*(v0 + 136) + OBJC_IVAR___DaemonController_accountStore);
  *(v0 + 224) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF541230, v1, 0);
}

uint64_t sub_1DF541230()
{
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = [v2 aa_primaryAppleAccount];
  if (v3 && (v4 = v3, v5 = [v3 aa_altDSID], v4, v5))
  {
    v6 = sub_1DF564944();
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0;
  }

  v0[29] = v6;
  v0[30] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1DF541324, 0, 0);
}

uint64_t sub_1DF541324()
{
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[17];
  v0[31] = off_1ED955FF8;
  v0[32] = FeatureCache.allFeatures(forDSID:allowAnySession:ignoreTTL:)(v1, v2, 1, 1);
  v4 = *(v3 + OBJC_IVAR___DaemonController_taskLimiters);
  v0[33] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DF5413E4, v4, 0);
}

uint64_t sub_1DF5413E4()
{
  *(v0 + 272) = sub_1DF4929F8(0x75746165466C6C61, 0xEB00000000736572, 300);
  v1 = swift_task_alloc();
  *(v0 + 280) = v1;
  *v1 = v0;
  v1[1] = sub_1DF5414E4;

  return sub_1DF531410(0x75746165466C6C61, 0xEB00000000736572, &unk_1DF56CEB0, 0);
}

uint64_t sub_1DF5414E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = sub_1DF54255C;
  }

  else
  {
    v4 = sub_1DF54160C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF54160C()
{
  v92 = v0;
  if (qword_1ED954AC8 != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    v1 = v0[32];
    v2 = qword_1ED954AD0;
    v0[5] = type metadata accessor for HardwareChecker();
    v0[6] = &off_1F5A89048;
    v0[2] = v2;
    if (v1 >> 62)
    {
      v3 = sub_1DF564F04();
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v3)
    {
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      v7 = v0[32] + 32;
      while (1)
      {
        if (v5)
        {
          v8 = MEMORY[0x1E12D66D0](v4, v0[32]);
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_101;
          }

          v8 = *(v7 + 8 * v4);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v11 = *&v8[OBJC_IVAR___CloudFeature_featureID] == 0x6C6C2E64756F6C63 && *&v8[OBJC_IVAR___CloudFeature_featureID + 8] == 0xE90000000000006DLL;
        if (v11 || (sub_1DF5650D4() & 1) != 0)
        {
          goto LABEL_19;
        }

        ++v4;
        if (v10 == v3)
        {
          goto LABEL_18;
        }
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

LABEL_18:
    v9 = 0;
LABEL_19:
    v0[38] = v9;
    v12 = v0[36];
    v87 = *(v0[17] + OBJC_IVAR___DaemonController_telemetryProvider);
    v13 = *(*__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]) + 16);
    v89 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 >> 62)
    {
      v14 = sub_1DF564F04();
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = 0;
    v90 = v12 & 0xC000000000000001;
    v84 = v0[36];
    v16 = (v84 + 32);
    v17 = 256;
    while (1)
    {
      if (v14 == v15)
      {
        v17 = 0;
LABEL_35:
        if (!v14)
        {
          goto LABEL_51;
        }

LABEL_38:
        v22 = 0;
        while (1)
        {
          if (v90)
          {
            v23 = MEMORY[0x1E12D66D0](v22, v0[36]);
          }

          else
          {
            if (v22 >= *(v89 + 16))
            {
              goto LABEL_103;
            }

            v23 = v16[v22];
          }

          v24 = v23;
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_102;
          }

          v26 = *&v23[OBJC_IVAR___CloudFeature_featureID] == 0x6C6C2E64756F6C63 && *&v23[OBJC_IVAR___CloudFeature_featureID + 8] == 0xE90000000000006DLL;
          if (v26 || (sub_1DF5650D4() & 1) != 0)
          {
            v28 = OBJC_IVAR___CloudFeature_canUse;
            swift_beginAccess();
            LODWORD(v28) = v24[v28];

            if (v28)
            {
              v27 = 0x10000;
            }

            else
            {
              v27 = 0;
            }

            goto LABEL_55;
          }

          ++v22;
          if (v25 == v14)
          {
            goto LABEL_51;
          }
        }
      }

      if (v90)
      {
        v18 = MEMORY[0x1E12D66D0](v15, v0[36]);
      }

      else
      {
        if (v15 >= *(v89 + 16))
        {
          goto LABEL_99;
        }

        v18 = v16[v15];
      }

      v19 = v18;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      if (*&v18[OBJC_IVAR___CloudFeature_featureID] == 0x6C6C2E64756F6C63 && *&v18[OBJC_IVAR___CloudFeature_featureID + 8] == 0xE90000000000006DLL)
      {
        break;
      }

      v21 = sub_1DF5650D4();

      ++v15;
      if (v21)
      {
        goto LABEL_35;
      }
    }

    v17 = 256;
    if (v14)
    {
      goto LABEL_38;
    }

LABEL_51:
    v27 = 0;
LABEL_55:
    v29 = MobileGestalt_get_current_device();
    if (!v29)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v29, v30, v31);
    }

    v32 = v29;
    v33 = MobileGestalt_copy_regionCode_obj();

    if (v33)
    {
      v34 = sub_1DF564944();
      v36 = v35;

      if (v34 == 18499 && v36 == 0xE200000000000000)
      {

        v37 = 0x1000000;
        if (!v9)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v41 = sub_1DF5650D4();

        if (v41)
        {
          v37 = 0x1000000;
        }

        else
        {
          v37 = 0;
        }

        if (!v9)
        {
LABEL_70:
          v40 = 0;
          v39 = 0;
          goto LABEL_71;
        }
      }
    }

    else
    {

      v37 = 0;
      if (!v9)
      {
        goto LABEL_70;
      }
    }

    v38 = OBJC_IVAR___CloudFeature_canUse;
    swift_beginAccess();
    v39 = *(v9 + v38) ? 0x1000000000000 : 0;
    v40 = 0x10000000000;
LABEL_71:
    sub_1DF4E2378(v17 | v13 | v27 | v37 | v40 | v39 | ((v0[30] != 0) << 32), 0, 0, v87);
    if (!v14)
    {

      if (qword_1ED956258 != -1)
      {
        swift_once();
      }

      v57 = sub_1DF5647B4();
      __swift_project_value_buffer(v57, qword_1ED956260);
      v58 = sub_1DF564794();
      v59 = sub_1DF564C24();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1DF47C000, v58, v59, "no feature availability in response", v60, 2u);
        MEMORY[0x1E12D75F0](v60, -1, -1);
      }

      sub_1DF5448BC();
      swift_allocError();
      *v61 = 1;
      swift_willThrow();

      sub_1DF543D88((v0 + 2));

      v62 = v0[1];

      return v62();
    }

    v43 = v0[25];
    v42 = v0[26];
    v44 = v0[19];
    v45 = v0[20];
    sub_1DF4FE1DC();
    sub_1DF5643B4();
    v47 = *(v45 + 16);
    v46 = v45 + 16;
    v0[39] = v47;
    v0[40] = v46 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v47(v43, v42, v44);
    v48 = v0[37];
    if (v90)
    {
      break;
    }

    if (*(v89 + 16))
    {
      v49 = *v16;
      goto LABEL_75;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
  }

  v49 = MEMORY[0x1E12D66D0](0, v0[36]);
LABEL_75:
  v50 = v49;
  v88 = (v46 - 8);
  v52 = v0[24];
  v51 = v0[25];
  v91[0] = v50;
  sub_1DF542844(v51, v91, v52);
  if (!v48)
  {
    v64 = v0[24];
    v63 = v0[25];
    v65 = v0[19];

    v66 = *v88;
    v0[46] = *v88;
    v85 = v66;
    v66(v63, v65);
    v67 = *(v46 + 16);
    v0[47] = v67;
    v86 = v46 + 16;
    v67(v63, v64, v65);
    if (v14 != 1)
    {
      v74 = (v84 + 40);
      v75 = 1;
      do
      {
        if (v90)
        {
          v76 = MEMORY[0x1E12D66D0](v75, v0[36]);
        }

        else
        {
          if (v75 >= *(v89 + 16))
          {
            goto LABEL_104;
          }

          v76 = *v74;
        }

        v77 = v76;
        v78 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          goto LABEL_105;
        }

        v80 = v0[24];
        v79 = v0[25];
        v91[0] = v77;
        sub_1DF542844(v79, v91, v80);
        v82 = v0[24];
        v81 = v0[25];
        v83 = v0[19];

        v0[46] = v85;
        v85(v81, v83);
        v0[47] = v67;
        v67(v81, v82, v83);
        ++v75;
        ++v74;
      }

      while (v78 != v14);
    }

    v68 = v0[27];
    v69 = v0[28];
    v71 = v0[25];
    v70 = v0[26];
    v72 = v0[19];
    v73 = v0[17];
    v0[41] = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v85(v70, v72);
    v0[42] = v86 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v67(v68, v71, v72);
    sub_1DF4FB970();
    v0[43] = *(v73 + OBJC_IVAR___DaemonController_requestHandler);
    v29 = sub_1DF541F38;
    v30 = v69;
    v31 = 0;

    return MEMORY[0x1EEE6DFA0](v29, v30, v31);
  }

  v53 = v0[25];
  v54 = v0[19];

  v55 = *v88;

  return v55(v53, v54);
}

uint64_t sub_1DF541F38()
{
  v1 = *(*(v0 + 224) + 112);
  *(v0 + 352) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DF541FAC, 0, 0);
}

uint64_t sub_1DF541FAC()
{
  v1 = v0[44];
  v2 = v0[36];
  v3 = v0[32];
  v4 = [v1 aa_primaryAppleAccount];

  sub_1DF4FEF1C(v4, v3, v2);

  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_1DF542094;
  v6 = v0[36];

  return sub_1DF4C6F60(v6);
}

uint64_t sub_1DF542094()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF5421AC, 0, 0);
}

uint64_t sub_1DF5421AC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(*(v0 + 136) + OBJC_IVAR___DaemonController_configStore + 8);
  ObjectType = swift_getObjectType();
  (*(v4 + 8))(0x726665527478656ELL, 0xEF65746144687365, ObjectType, v4);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);
    sub_1DF5643A4();
    if (v6(v7, 1, v8) != 1)
    {
      sub_1DF47E5B4(*(v0 + 144), &qword_1ECE37A10, &qword_1DF567C00);
    }
  }

  else
  {
    (*(v0 + 376))(*(v0 + 176), *(v0 + 144), *(v0 + 152));
  }

  sub_1DF484F10(&qword_1ED954CC0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1DF5648E4())
  {
    (*(v0 + 376))(*(v0 + 184), *(v0 + 176), *(v0 + 152));
  }

  else
  {
    v9 = *(v0 + 312);
    v10 = *(v0 + 216);
    v11 = *(v0 + 184);
    v12 = *(v0 + 152);
    (*(v0 + 368))(*(v0 + 176), v12);
    v9(v11, v10, v12);
  }

  v13 = *(v0 + 368);
  v14 = *(v0 + 168);
  v15 = *(v0 + 152);
  sub_1DF5643B4();
  v16 = sub_1DF564404();
  v13(v14, v15);
  if (v16)
  {
    v17 = *(v0 + 376);
    v18 = *(v0 + 304);
    v19 = *(v0 + 184);
    v20 = *(v0 + 152);
    v21 = *(v0 + 128);
    (*(v0 + 368))(*(v0 + 216), v20);

    sub_1DF543D88(v0 + 16);
    v17(v21, v19, v20);
  }

  else
  {
    v23 = *(v0 + 368);
    v24 = *(v0 + 304);
    v25 = *(v0 + 216);
    v26 = *(v0 + 184);
    v27 = *(v0 + 152);
    sub_1DF5448BC();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();

    v23(v26, v27);
    v23(v25, v27);
    sub_1DF543D88(v0 + 16);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1DF54255C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF542628(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF5426D4;

  return sub_1DF4B8748(0, 0);
}

uint64_t sub_1DF5426D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF542820, 0, 0);
  }
}

uint64_t sub_1DF542844@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1DF564494();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF481988();
  v12 = [v11 aa_primaryAppleAccount];
  if (v12 && (v13 = v12, v14 = [v12 aa_altDSID], v13, v14))
  {
    v15 = sub_1DF564944();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0;
  }

  sub_1DF5642D4();
  swift_allocObject();
  v18 = sub_1DF5642C4();
  sub_1DF4FDDA0(v10, v18, v15, v17);

  v19 = OBJC_IVAR___CloudFeature_ttl;
  swift_beginAccess();
  sub_1DF4952D8(&v10[v19], v6);
  v20 = v31;
  if ((*(v31 + 48))(v6, 1, v7) == 1)
  {
    sub_1DF47E5B4(v6, &qword_1ECE37A10, &qword_1DF567C00);
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v21 = sub_1DF5647B4();
    __swift_project_value_buffer(v21, qword_1ED956260);
    v22 = v10;
    v23 = sub_1DF564794();
    v24 = sub_1DF564C24();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_1DF47C000, v23, v24, "feature fetched without TTL: %{public}@", v25, 0xCu);
      sub_1DF47E5B4(v26, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v26, -1, -1);
      MEMORY[0x1E12D75F0](v25, -1, -1);
    }

    return (*(v20 + 16))(v33, v32, v7);
  }

  else
  {
    v29 = *(v20 + 32);
    v29(v9, v6, v7);
    sub_1DF484F10(&qword_1ED954CC0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v30 = v32;
    if (sub_1DF5648D4())
    {
      return (v29)(v33, v9, v7);
    }

    else
    {
      (*(v20 + 8))(v9, v7);
      return (*(v20 + 16))(v33, v30, v7);
    }
  }
}

void sub_1DF542C9C(_xpc_activity_s *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a1;
  v97 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE38420, &unk_1DF56CEA0);
  MEMORY[0x1EEE9AC00](v98);
  v99 = (&v88 - v3);
  v104 = sub_1DF564494();
  v4 = *(v104 - 8);
  v5 = MEMORY[0x1EEE9AC00](v104);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v96 = &v88 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v102 = &v88 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v91 = &v88 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v90 = &v88 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v88 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v18 = MEMORY[0x1EEE9AC00](v92);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v88 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v88 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v88 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v88 - v30;
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  sub_1DF4FCF04(v31);
  v32 = *(v2 + OBJC_IVAR___DaemonController_configStore + 8);
  ObjectType = swift_getObjectType();
  (*(v32 + 8))(0x726665527478656ELL, 0xEF65746144687365, ObjectType, v32);
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v94 = v7;
  v34 = sub_1DF5647B4();
  v35 = __swift_project_value_buffer(v34, qword_1ED956260);
  v103 = v31;
  sub_1DF4952D8(v31, v26);
  sub_1DF4952D8(v29, v23);
  v93 = v35;
  v36 = sub_1DF564794();
  v37 = sub_1DF564C44();
  v38 = os_log_type_enabled(v36, v37);
  v100 = v29;
  v101 = v17;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v105 = v89;
    *v39 = 136315394;
    sub_1DF4952D8(v26, v20);
    v40 = v4;
    v41 = sub_1DF564994();
    v43 = v42;
    sub_1DF47E5B4(v26, &qword_1ECE37A10, &qword_1DF567C00);
    v44 = v41;
    v4 = v40;
    v45 = sub_1DF47EF6C(v44, v43, &v105);

    *(v39 + 4) = v45;
    *(v39 + 12) = 2080;
    sub_1DF4952D8(v23, v20);
    v46 = sub_1DF564994();
    v48 = v47;
    sub_1DF47E5B4(v23, &qword_1ECE37A10, &qword_1DF567C00);
    v49 = sub_1DF47EF6C(v46, v48, &v105);

    *(v39 + 14) = v49;
    _os_log_impl(&dword_1DF47C000, v36, v37, "existing cache first feature expiry: %s next allowed retry: %s", v39, 0x16u);
    v50 = v89;
    swift_arrayDestroy();
    v17 = v101;
    MEMORY[0x1E12D75F0](v50, -1, -1);
    v51 = v39;
    v29 = v100;
    MEMORY[0x1E12D75F0](v51, -1, -1);
  }

  else
  {

    sub_1DF47E5B4(v23, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(v26, &qword_1ECE37A10, &qword_1DF567C00);
  }

  v52 = v99;
  v53 = *(v98 + 48);
  sub_1DF4952D8(v103, v99);
  sub_1DF4952D8(v29, v52 + v53);
  v54 = *(v4 + 48);
  v55 = v104;
  v56 = v54(v52, 1, v104);
  v57 = v54(v52 + v53, 1, v55);
  if (v56 != 1)
  {
    v60 = *(v4 + 32);
    if (v57 != 1)
    {
      v61 = v90;
      v60(v90, v52, v55);
      v62 = v52 + v53;
      v52 = v91;
      v60(v91, v62, v55);
      sub_1DF484F10(&qword_1ED954CC0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v63 = sub_1DF5648E4();
      v64 = *(v4 + 8);
      if ((v63 & 1) == 0)
      {
        v64(v52, v55);
        v65 = v17;
        v66 = v61;
        goto LABEL_17;
      }

      v64(v61, v55);
    }

    v65 = v17;
    v66 = v52;
LABEL_17:
    v60(v65, v66, v55);
    goto LABEL_18;
  }

  if (v57 == 1)
  {
    sub_1DF47E5B4(v29, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(v103, &qword_1ECE37A10, &qword_1DF567C00);
    v58 = 1;
    v59 = v97;
LABEL_28:
    (*(v4 + 56))(v59, v58, 1, v55);
    return;
  }

  v60 = *(v4 + 32);
  v60(v17, v52 + v53, v55);
LABEL_18:
  empty = xpc_activity_copy_criteria(v95);
  v68 = v96;
  if (!empty)
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_string(empty, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9C40], 1);
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9D88], 0);
    if (!*MEMORY[0x1E69E9DB8])
    {
      goto LABEL_30;
    }

    xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9DB8], 1);
  }

  int64 = xpc_dictionary_get_int64(empty, *MEMORY[0x1E69E9C68]);
  if (!__OFADD__(int64, xpc_dictionary_get_int64(empty, *MEMORY[0x1E69E9C98])))
  {
    v99 = v60;
    v70 = v102;
    sub_1DF564414();
    (*(v4 + 16))(v68, v70, v55);
    v71 = sub_1DF564794();
    v72 = sub_1DF564C44();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v105 = v74;
      *v73 = 136315138;
      sub_1DF484F10(&qword_1ED954CB0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v75 = sub_1DF5650A4();
      v76 = v68;
      v78 = v77;
      v79 = v4;
      v80 = *(v4 + 8);
      v80(v76, v104);
      v81 = sub_1DF47EF6C(v75, v78, &v105);

      *(v73 + 4) = v81;
      _os_log_impl(&dword_1DF47C000, v71, v72, "earliest allowed time to rebuild cache: %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      v82 = v74;
      v55 = v104;
      MEMORY[0x1E12D75F0](v82, -1, -1);
      MEMORY[0x1E12D75F0](v73, -1, -1);
    }

    else
    {

      v79 = v4;
      v80 = *(v4 + 8);
      v80(v68, v55);
    }

    v83 = v94;
    v84 = v99;
    sub_1DF564474();
    v85 = v102;
    v86 = sub_1DF5643F4();
    swift_unknownObjectRelease();
    v80(v83, v55);
    v80(v85, v55);
    sub_1DF47E5B4(v100, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(v103, &qword_1ECE37A10, &qword_1DF567C00);
    if (v86)
    {
      v4 = v79;
      v87 = v97;
      v84(v97, v101, v55);
      v59 = v87;
      v58 = 0;
    }

    else
    {
      v80(v101, v55);
      v58 = 1;
      v59 = v97;
      v4 = v79;
    }

    goto LABEL_28;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

id DaemonController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1DF5437E0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12D66D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DF543860;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF543868(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_1DF5473EC;

  return v7(v4 + 16);
}

uint64_t sub_1DF54395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DF5473F0;

  return sub_1DF536C60(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DF543A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DF5473F0;

  return sub_1DF536D40(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DF543B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DF5473F0;

  return sub_1DF536E20(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DF543C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DF5473F0;

  return sub_1DF536F00(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DF543DDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF48D3C0;

  return sub_1DF53DE90();
}

uint64_t sub_1DF543E88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF48D3C0;

  return sub_1DF52EC1C();
}

uint64_t sub_1DF543F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF543F60, a5, 0);
}

uint64_t sub_1DF543F60()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v9 = *(v0 + 56);
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v9;
  *(v5 + 64) = v1;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
  *v6 = v0;
  v6[1] = sub_1DF5440D0;

  return MEMORY[0x1EEE6DE38](v0 + 16, v9, v4, 0xD00000000000001ELL, 0x80000001DF574CB0, sub_1DF544C00, v5, v7);
}

uint64_t sub_1DF5440D0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1DF5473E8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1DF48EC1C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF544214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF544240, a5, 0);
}

uint64_t sub_1DF544240()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v9 = *(v0 + 56);
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v9;
  *(v5 + 64) = v1;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = type metadata accessor for GeoClassificationInfo(0);
  *v6 = v0;
  v6[1] = sub_1DF5440D0;

  return MEMORY[0x1EEE6DE38](v0 + 16, v9, v4, 0xD00000000000001ELL, 0x80000001DF574CB0, sub_1DF546B1C, v5, v7);
}

uint64_t sub_1DF5443A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5443D0, a5, 0);
}

uint64_t sub_1DF5443D0()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v9 = *(v0 + 56);
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v9;
  *(v5 + 64) = v1;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = type metadata accessor for Ticket();
  *v6 = v0;
  v6[1] = sub_1DF5440D0;

  return MEMORY[0x1EEE6DE38](v0 + 16, v9, v4, 0xD00000000000001ELL, 0x80000001DF574CB0, sub_1DF546408, v5, v7);
}

uint64_t sub_1DF544534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF544560, a5, 0);
}

uint64_t sub_1DF544560()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter, &unk_1DF56B680);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v9 = *(v0 + 56);
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v9;
  *(v5 + 64) = v1;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = type metadata accessor for WaitlistResult();
  *v6 = v0;
  v6[1] = sub_1DF5440D0;

  return MEMORY[0x1EEE6DE38](v0 + 16, v9, v4, 0xD00000000000001ELL, 0x80000001DF574CB0, sub_1DF545CF4, v5, v7);
}

void sub_1DF5446C4(void *a1, int64_t a2, int64_t a3)
{
  xpc_dictionary_set_int64(a1, *MEMORY[0x1E69E9C98], a3);
  xpc_dictionary_set_int64(a1, *MEMORY[0x1E69E9C68], a2);
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED956260);
  oslog = sub_1DF564794();
  v7 = sub_1DF564C44();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF574CD0, &v11);
    *(v8 + 12) = 2050;
    *(v8 + 14) = a2;
    *(v8 + 22) = 2050;
    *(v8 + 24) = a3;
    _os_log_impl(&dword_1DF47C000, oslog, v7, "activity %s, delay: %{public}lld, grace: %{public}lld", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }
}

unint64_t sub_1DF5448BC()
{
  result = qword_1ECE38430;
  if (!qword_1ECE38430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38430);
  }

  return result;
}

uint64_t sub_1DF544910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D3C0;

  return sub_1DF543868(a1, v4, v5, v6);
}

uint64_t sub_1DF5449DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF535644(a1, v4, v5, v7, v6);
}

void sub_1DF544A9C()
{
  sub_1DF564494();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF48D3C0;

  JUMPOUT(0x1DF54395CLL);
}

uint64_t sub_1DF544C18(uint64_t a1)
{
  sub_1DF564494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38458, &qword_1DF56CF18);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF538E84(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1DF544DD8(uint64_t a1)
{
  sub_1DF564494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38458, &qword_1DF56CF18);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF53AF74(a1, v11, v10, v3, v4, v5, v6, v7);
}

unint64_t sub_1DF544FD4()
{
  result = qword_1ECE38468;
  if (!qword_1ECE38468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38468);
  }

  return result;
}

uint64_t sub_1DF5450D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D3C0;

  return sub_1DF53D3E0(a1, v4, v5, v6);
}

uint64_t sub_1DF545184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D3C0;

  return sub_1DF53D8B4(a1, v4, v5, v6);
}

uint64_t sub_1DF545238(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D3C0;

  return sub_1DF53554C(a1, v4, v5, v6);
}

uint64_t sub_1DF545304(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF536890(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF5453C4(uint64_t a1)
{
  sub_1DF564494();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DF48D3C0;

  return sub_1DF536FE0(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DF545530(uint64_t a1)
{
  sub_1DF564494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF53A0F4(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1DF5456F0(uint64_t a1)
{
  sub_1DF564494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF53BF30(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1DF545944(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF53ED2C(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF545A04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D3C0;

  return sub_1DF543868(a1, v4, v5, v6);
}

uint64_t sub_1DF545AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF536408(a1, v4, v5, v7, v6);
}

void sub_1DF545B90()
{
  sub_1DF564494();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF48D3C0;

  JUMPOUT(0x1DF543C38);
}

uint64_t sub_1DF545D0C(uint64_t a1)
{
  sub_1DF564494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF539BEC(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1DF545ECC(uint64_t a1)
{
  sub_1DF564494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF53BB00(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1DF546118(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D3C0;

  return sub_1DF543868(a1, v4, v5, v6);
}

uint64_t sub_1DF5461E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF53602C(a1, v4, v5, v7, v6);
}

void sub_1DF5462A4()
{
  sub_1DF564494();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF48D3C0;

  JUMPOUT(0x1DF543B44);
}

uint64_t sub_1DF546420(uint64_t a1)
{
  sub_1DF564494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF5397D0(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1DF5465E0(uint64_t a1)
{
  sub_1DF564494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF53B7E0(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1DF54682C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D3C0;

  return sub_1DF543868(a1, v4, v5, v6);
}

uint64_t sub_1DF5468F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF535C50(a1, v4, v5, v7, v6);
}

void sub_1DF5469B8()
{
  sub_1DF564494();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF48D3C0;

  JUMPOUT(0x1DF543A50);
}

uint64_t sub_1DF546B34(uint64_t a1)
{
  sub_1DF564494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384B0, &qword_1DF56D138);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF5393B4(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1DF546CF4(uint64_t a1)
{
  sub_1DF564494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384B0, &qword_1DF56D138);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF53B4C0(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_34Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_38Tm()
{
  v1 = sub_1DF564494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_51Tm(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1DF564494();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 80) & ~v7;
  v9 = *(v6 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v7 | v12;
  v15 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return MEMORY[0x1EEE6BDD0](v2, v15 + 8, v14 | 7);
}

unint64_t sub_1DF547394()
{
  result = qword_1ECE38528;
  if (!qword_1ECE38528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38528);
  }

  return result;
}

uint64_t sub_1DF547430(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 0x6165627472616568;
    case 1:
      return 0x656C436568636163;
    case 2:
      return 0x6E776F6E6B6E75;
  }

  sub_1DF564DF4();

  MEMORY[0x1E12D62C0](a1, a2);
  return 0x5265727574616566;
}

uint64_t sub_1DF547520(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF54757C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1DF5475CC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DF547604(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = a1;
  if (a2 && (a1 == a4 && a5 == a2 || (sub_1DF5650D4() & 1) != 0))
  {
    return 1;
  }

  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF5647B4();
  __swift_project_value_buffer(v11, qword_1ED956088);

  v12 = a3;

  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1DF47EF6C(a4, a5, &v19);
    *(v15 + 12) = 2080;
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      v9 = 7104878;
      v17 = 0xE300000000000000;
    }

    v18 = sub_1DF47EF6C(v9, v17, &v19);

    *(v15 + 14) = v18;
    _os_log_impl(&dword_1DF47C000, v13, v14, "invalid geoclassification cache, altDSID changed. Cache altDSID: %s, currentAltDSID: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  return 0;
}

void sub_1DF547814(uint64_t *a1, void *a2, char *a3, uint64_t a4, unint64_t a5)
{
  v50 = a1;
  v51 = a2;
  v8 = sub_1DF564184();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DF564494();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_cacheTill;
  sub_1DF564484();
  v53 = v16;
  LOBYTE(v16) = sub_1DF5643F4();
  v17 = *(v13 + 8);
  v52 = v12;
  v17(v15, v12);
  if (v16)
  {
    sub_1DF5641C4();
    swift_allocObject();
    sub_1DF5641B4();
    (*(v9 + 104))(v11, *MEMORY[0x1E6967FC8], v8);
    sub_1DF564194();
    v54 = a3;
    v55 = a4;
    v56 = a5;
    sub_1DF548318();
    v27 = sub_1DF5641A4();
    v29 = v28;
    v30 = a4;

    v31 = sub_1DF564354();
    v32 = v50;
    v33 = v50[1];
    v54 = *v50;
    v55 = v33;

    MEMORY[0x1E12D62C0](45, 0xE100000000000000);
    MEMORY[0x1E12D62C0](v32[2], v32[3]);
    MEMORY[0x1E12D62C0](45, 0xE100000000000000);
    MEMORY[0x1E12D62C0](v32[4], v32[5]);
    v34 = sub_1DF564914();

    [v51 setObject:v31 forKey:v34];

    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v35 = sub_1DF5647B4();
    __swift_project_value_buffer(v35, qword_1ED956088);
    v36 = a3;

    v20 = sub_1DF564794();
    v37 = sub_1DF564C44();

    if (os_log_type_enabled(v20, v37))
    {
      v38 = swift_slowAlloc();
      v51 = v27;
      v39 = v38;
      v40 = swift_slowAlloc();
      v50 = v29;
      v41 = v40;
      v49 = swift_slowAlloc();
      v54 = v49;
      *v39 = 138412802;
      *(v39 + 4) = v36;
      *v41 = v36;
      *(v39 + 12) = 2080;
      v42 = v36;
      *(v39 + 14) = sub_1DF47EF6C(v30, a5, &v54);
      *(v39 + 22) = 2082;
      sub_1DF5488F4(&qword_1ED954CB0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v43 = sub_1DF5650A4();
      v45 = sub_1DF47EF6C(v43, v44, &v54);

      *(v39 + 24) = v45;
      _os_log_impl(&dword_1DF47C000, v20, v37, "updating geoclassification cache with info: %@, altDSID: %s, ttl:%{public}s", v39, 0x20u);
      sub_1DF484888(v41);
      MEMORY[0x1E12D75F0](v41, -1, -1);
      v46 = v49;
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v46, -1, -1);
      MEMORY[0x1E12D75F0](v39, -1, -1);
      v48 = v50;
      v47 = v51;
    }

    else
    {
      v47 = v27;
      v48 = v29;
    }

    sub_1DF48C308(v47, v48);
  }

  else
  {
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v18 = sub_1DF5647B4();
    __swift_project_value_buffer(v18, qword_1ED956088);
    v19 = a3;

    v20 = sub_1DF564794();
    v21 = sub_1DF564C24();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v54 = v23;
      *v22 = 136315138;
      sub_1DF5488F4(&qword_1ED954CB0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v24 = sub_1DF5650A4();
      v26 = sub_1DF47EF6C(v24, v25, &v54);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1DF47C000, v20, v21, "cacheTill value is in the past: %s, will not cache this geoclassification", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1E12D75F0](v23, -1, -1);
      MEMORY[0x1E12D75F0](v22, -1, -1);
    }
  }
}

uint64_t sub_1DF547F60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38538, &qword_1DF56D488);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF54867C();
  sub_1DF5652A4();
  v15 = a2;
  v14 = 0;
  type metadata accessor for GeoClassificationInfo(0);
  sub_1DF5488F4(&unk_1ECE37650, type metadata accessor for GeoClassificationInfo, &protocol conformance descriptor for GeoClassificationInfo);
  sub_1DF565074();
  if (!v4)
  {
    v13 = 1;
    sub_1DF565054();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DF548140()
{
  if (*v0)
  {
    return 0x44495344746C61;
  }

  else
  {
    return 0x6F666E496F6567;
  }
}

uint64_t sub_1DF548174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F666E496F6567 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF548250(uint64_t a1)
{
  v2 = sub_1DF54867C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF54828C(uint64_t a1)
{
  v2 = sub_1DF54867C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF5482C8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DF5486D0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_1DF548318()
{
  result = qword_1ECE37790;
  if (!qword_1ECE37790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37790);
  }

  return result;
}

uint64_t sub_1DF54836C(uint64_t *a1, void *a2)
{
  v4 = sub_1DF564104();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v16 = *a1;
  v17 = v8;

  MEMORY[0x1E12D62C0](45, 0xE100000000000000);
  MEMORY[0x1E12D62C0](a1[2], a1[3]);
  MEMORY[0x1E12D62C0](45, 0xE100000000000000);
  MEMORY[0x1E12D62C0](a1[4], a1[5]);
  v9 = sub_1DF564914();

  v10 = [a2 dataForKey_];

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1DF564374();
  v13 = v12;

  sub_1DF564144();
  swift_allocObject();
  sub_1DF4AD474(v11, v13);
  sub_1DF564134();
  (*(v5 + 104))(v7, *MEMORY[0x1E6967F30], v4);
  sub_1DF564114();
  sub_1DF548590();
  sub_1DF564124();
  sub_1DF48C308(v11, v13);

  sub_1DF48C308(v11, v13);
  return v16;
}

unint64_t sub_1DF548590()
{
  result = qword_1ECE38530;
  if (!qword_1ECE38530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38530);
  }

  return result;
}

uint64_t sub_1DF5485E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DF54862C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF54867C()
{
  result = qword_1ECE377A8;
  if (!qword_1ECE377A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE377A8);
  }

  return result;
}

uint64_t sub_1DF5486D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38540, &qword_1DF56D490);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  sub_1DF54867C();
  sub_1DF565284();
  if (!v1)
  {
    type metadata accessor for GeoClassificationInfo(0);
    v9[7] = 0;
    sub_1DF5488F4(&qword_1ECE37648, type metadata accessor for GeoClassificationInfo, &protocol conformance descriptor for GeoClassificationInfo);
    sub_1DF564FE4();
    v7 = v10;
    v9[6] = 1;
    sub_1DF564FC4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1DF5488F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DF548950()
{
  result = qword_1ECE38548;
  if (!qword_1ECE38548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38548);
  }

  return result;
}

unint64_t sub_1DF5489A8()
{
  result = qword_1ECE37798;
  if (!qword_1ECE37798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37798);
  }

  return result;
}

unint64_t sub_1DF548A00()
{
  result = qword_1ECE377A0;
  if (!qword_1ECE377A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE377A0);
  }

  return result;
}

id static GMEligibilityBypass.bypass.getter()
{
  if ((sub_1DF548FD8() & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED955308 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED955310;
  v1 = sub_1DF564914();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_1DF548AF8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_1ED955310 = v2;
}

void sub_1DF548B94(unsigned __int8 *a1@<X8>)
{
  if (sub_1DF548FD8())
  {
    if (qword_1ED955308 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED955310;
    v3 = sub_1DF564914();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void sub_1DF548C44(unsigned __int8 *a1)
{
  v1 = *a1;
  if (sub_1DF548FD8())
  {
    if (qword_1ED955308 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED955310;
    v3 = sub_1DF564914();
    [v2 setBool:v1 forKey:v3];
  }
}

void static GMEligibilityBypass.bypass.setter(char a1)
{
  if (sub_1DF548FD8())
  {
    if (qword_1ED955308 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED955310;
    v3 = sub_1DF564914();
    [v2 setBool:a1 & 1 forKey:v3];
  }
}

void (*static GMEligibilityBypass.bypass.modify(unsigned __int8 *a1))(unsigned __int8 *a1)
{
  if (sub_1DF548FD8())
  {
    if (qword_1ED955308 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED955310;
    v3 = sub_1DF564914();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return sub_1DF548E98;
}

void sub_1DF548E98(unsigned __int8 *a1)
{
  v1 = *a1;
  if (sub_1DF548FD8())
  {
    if (qword_1ED955308 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED955310;
    v3 = sub_1DF564914();
    [v2 setBool:v1 forKey:v3];
  }
}

id GMEligibilityBypass.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GMEligibilityBypass();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1DF548FD8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DF564944();

    sub_1DF5649B4();
  }

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();
  return has_internal_ui;
}

uint64_t sub_1DF5490B0(unint64_t a1)
{
  v10 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF564F04())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E12D66D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = &v4[OBJC_IVAR___CloudFeature_featureID];
      if (sub_1DF564A24() & 1) != 0 || (*v7 == 0x6C6C2E64756F6C63 ? (v8 = *(v7 + 1) == 0xE90000000000006DLL) : (v8 = 0), v8 || (sub_1DF5650D4()))
      {
        sub_1DF564E64();
        sub_1DF564E94();
        sub_1DF564EA4();
        sub_1DF564E74();
      }

      else
      {
      }

      if (v6 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1DF54924C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_1ED954EE8 = v2;
}

id static GMAssetsBypass.gmAssetsBypass()()
{
  if ((sub_1DF548FD8() & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED954EE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED954EE8;
  v1 = sub_1DF564914();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void static GMAssetsBypass.setGMEligibilityBypass(_:)(char a1)
{
  if (sub_1DF548FD8())
  {
    if (qword_1ED954EE0 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED954EE8;
    v3 = sub_1DF564914();
    [v2 setBool:a1 & 1 forKey:v3];
  }
}

id GMAssetsBypass.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GMAssetsBypass();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1DF54975C()
{
  sub_1DF564DF4();

  if (*(v0 + OBJC_IVAR___CSFEligibility_regionEligible))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CSFEligibility_regionEligible))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12D62C0](v1, v2);

  MEMORY[0x1E12D62C0](0x6175676E616C202CLL, 0xEC000000203A6567);
  if (*(v0 + OBJC_IVAR___CSFEligibility_languageEligible))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CSFEligibility_languageEligible))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12D62C0](v3, v4);

  MEMORY[0x1E12D62C0](0x656369766564202CLL, 0xEA0000000000203ALL);
  if (*(v0 + OBJC_IVAR___CSFEligibility_deviceEligibile))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CSFEligibility_deviceEligibile))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E12D62C0](v5, v6);

  MEMORY[0x1E12D62C0](62, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_1DF5498CC(uint64_t a1)
{
  sub_1DF4EC8F4(a1, v6);
  if (v7)
  {
    type metadata accessor for Eligibility();
    if (swift_dynamicCast())
    {
      if (v5[OBJC_IVAR___CSFEligibility_regionEligible] == *(v1 + OBJC_IVAR___CSFEligibility_regionEligible) && v5[OBJC_IVAR___CSFEligibility_languageEligible] == *(v1 + OBJC_IVAR___CSFEligibility_languageEligible) && v5[OBJC_IVAR___CSFEligibility_siriLanguageEligible] == *(v1 + OBJC_IVAR___CSFEligibility_siriLanguageEligible) && v5[OBJC_IVAR___CSFEligibility_locationEligible] == *(v1 + OBJC_IVAR___CSFEligibility_locationEligible))
      {
        v4 = v5[OBJC_IVAR___CSFEligibility_deviceEligibile];

        v2 = v4 ^ *(v1 + OBJC_IVAR___CSFEligibility_deviceEligibile) ^ 1;
        return v2 & 1;
      }
    }
  }

  else
  {
    sub_1DF4A7D80(v6);
  }

  v2 = 0;
  return v2 & 1;
}

id Eligibility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Eligibility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Eligibility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DF549BC4(char *a1@<X8>)
{
  v3 = [v1 domain];
  v4 = sub_1DF564944();
  v6 = v5;

  if (v4 == sub_1DF564944() && v6 == v7)
  {

    v10 = 3;
  }

  else
  {
    v9 = sub_1DF5650D4();

    if (v9)
    {
      v10 = 3;
    }

    else
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v11 = sub_1DF5647B4();
      __swift_project_value_buffer(v11, qword_1ED956398);
      v12 = v1;
      v13 = sub_1DF564794();
      v14 = sub_1DF564C24();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v12;
        *v16 = v12;
        v17 = v12;
        _os_log_impl(&dword_1DF47C000, v13, v14, "Unhandled NSError to TicketManagerError: %@", v15, 0xCu);
        sub_1DF47E5B4(v16, &unk_1ECE37F10, &qword_1DF567510);
        MEMORY[0x1E12D75F0](v16, -1, -1);
        MEMORY[0x1E12D75F0](v15, -1, -1);
      }

      v10 = 0;
    }
  }

  *a1 = v10;
}

id sub_1DF549DA8()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  qword_1ECE422C0 = result;
  return result;
}

id sub_1DF549DDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38578, qword_1DF56D6B8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_1DF564504();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = [objc_opt_self() currentLocale];
  sub_1DF5644F4();

  v9 = sub_1DF5644E4();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  sub_1DF564564();
  v10 = sub_1DF564594();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_1DF564574();
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone_];

  v13 = sub_1DF564914();
  [v7 setDateFormat_];

  return v7;
}

uint64_t sub_1DF54A038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DF48D4B0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1DF54A1A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_1DF564AA4();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

void sub_1DF54A258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1DF564864();
  }

  else
  {
    v6 = 0;
  }

  v8[4] = a3;
  v8[5] = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DF54A1A4;
  v8[3] = &block_descriptor_10;
  v7 = _Block_copy(v8);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v7);
}

uint64_t sub_1DF54A354(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF54A3F4, 0, 0);
}

uint64_t sub_1DF54A3F4()
{
  v1 = v0[11];
  sub_1DF5640A4();
  v2 = sub_1DF564344();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[11];
  if (v4 == 1)
  {
    sub_1DF47E5B4(v0[11], &qword_1ECE37A18, qword_1DF56B370);
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF5647B4();
    __swift_project_value_buffer(v6, qword_1ED954C50);
    v7 = sub_1DF564794();
    v8 = sub_1DF564C24();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DF47C000, v7, v8, "Attempted to BAA sign request with no path", v9, 2u);
      MEMORY[0x1E12D75F0](v9, -1, -1);
    }

    sub_1DF54AB9C();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[8];
    v13 = v0[9];
    v15 = sub_1DF564324();
    v17 = v16;
    v0[12] = v16;
    (*(v3 + 8))(v5, v2);
    v18 = sub_1DF5640F4();
    v0[13] = v18;
    v19 = *(v18 - 8);
    v0[14] = v19;
    (*(v19 + 16))(v14, v13, v18);
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    v20 = sub_1DF5647B4();
    __swift_project_value_buffer(v20, qword_1ED954C50);
    v21 = sub_1DF564794();
    v22 = sub_1DF564C14();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DF47C000, v21, v22, "Fetching BAA signing credentials", v23, 2u);
      MEMORY[0x1E12D75F0](v23, -1, -1);
    }

    v24 = v0[10];

    v25 = v24 + *(type metadata accessor for BAARequestSigner(0) + 20);
    v26 = swift_task_alloc();
    v0[15] = v26;
    v26[2] = v25;
    v26[3] = v24;
    v26[4] = v15;
    v26[5] = v17;
    v27 = swift_task_alloc();
    v0[16] = v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38580, &unk_1DF56D738);
    *v27 = v0;
    v27[1] = sub_1DF54A800;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000002ELL, 0x80000001DF575020, sub_1DF54C088, v26, v28);
  }
}

uint64_t sub_1DF54A800()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1DF54AB00;
  }

  else
  {

    v2 = sub_1DF54A928;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF54A928()
{
  v1 = v0[7];
  v16 = v0[2];
  v14 = v0[4];
  v15 = v0[3];
  v13 = v0[5];
  v2 = v0[6];
  sub_1DF564364();
  sub_1DF5640C4();

  sub_1DF564364();
  sub_1DF5640C4();

  v3 = SecCertificateCopyData(v2);
  v4 = sub_1DF564374();
  v6 = v5;

  v17 = v4;
  v18 = v6;
  v7 = SecCertificateCopyData(v1);
  v8 = sub_1DF564374();
  v10 = v9;

  sub_1DF564384();
  sub_1DF564364();
  sub_1DF5640C4();

  sub_1DF48C308(v8, v10);

  sub_1DF48C308(v14, v13);
  sub_1DF48C308(v16, v15);
  sub_1DF48C308(v17, v18);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DF54AB00()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[8];

  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1DF54AB9C()
{
  result = qword_1ECE37680;
  if (!qword_1ECE37680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37680);
  }

  return result;
}

uint64_t sub_1DF54ABF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v41 = a1;
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v40 = *(v6 - 8);
  v39 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = v34 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v34 - v10;
  v11 = sub_1DF564834();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38590, &unk_1DF56D750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  v45 = sub_1DF564944();
  v46 = v16;
  v17 = MEMORY[0x1E69E6158];
  sub_1DF564D94();
  *(inited + 96) = v17;
  *(inited + 72) = 4608835;
  *(inited + 80) = 0xE300000000000000;
  v45 = sub_1DF564944();
  v46 = v18;
  sub_1DF564D94();
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 144) = 129600;
  v45 = sub_1DF564944();
  v46 = v19;
  sub_1DF564D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DF566E40;
  *(v20 + 32) = sub_1DF564944();
  *(v20 + 40) = v21;
  *(v20 + 48) = sub_1DF564944();
  *(v20 + 56) = v22;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
  *(inited + 216) = v20;
  v35 = sub_1DF4C30D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CA8, &qword_1DF568868);
  swift_arrayDestroy();
  v34[1] = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_1DF4AB608();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E7F98], v11);
  v23 = sub_1DF564C84();
  (*(v12 + 8))(v14, v11);
  v25 = v36;
  v24 = v37;
  (*(v8 + 16))(v36, v41, v37);
  v26 = v38;
  sub_1DF4952D8(v42, v38);
  v27 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v28 = (v9 + *(v40 + 80) + v27) & ~*(v40 + 80);
  v29 = (v39 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v8 + 32))(v30 + v27, v25, v24);
  sub_1DF48C284(v26, v30 + v28);
  v31 = (v30 + v29);
  v32 = v44;
  *v31 = v43;
  v31[1] = v32;

  sub_1DF54A258(v23, v35, sub_1DF54C094, v30);
}