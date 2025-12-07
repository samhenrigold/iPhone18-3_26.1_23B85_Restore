unint64_t sub_23C42AFD8()
{
  result = qword_27E1F4800;
  if (!qword_27E1F4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4800);
  }

  return result;
}

unint64_t sub_23C42B02C()
{
  result = qword_27E1F4818;
  if (!qword_27E1F4818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F4818);
  }

  return result;
}

uint64_t sub_23C42B078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23C42B0E8(void *a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  sub_23C428964(a1, a2, a3, v3 + v8, v3 + v11, v13, v14);
}

uint64_t sub_23C42B21C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23C42A010(result, a2);
  }

  return result;
}

unint64_t sub_23C42B230()
{
  result = qword_27E1F4820;
  if (!qword_27E1F4820)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4820);
  }

  return result;
}

uint64_t sub_23C42B288(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23C42B29C(a1, a2);
  }

  return a1;
}

uint64_t sub_23C42B29C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NetworkMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_23C43707C();
  swift_allocObject();
  *(v0 + 16) = sub_23C43706C();
  return v0;
}

uint64_t NetworkMonitor.init()()
{
  sub_23C43707C();
  swift_allocObject();
  *(v0 + 16) = sub_23C43706C();
  return v0;
}

uint64_t sub_23C42B3D8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_23C42B53C(a1, a2);
  return sub_23C43704C();
}

uint64_t sub_23C42B44C(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_23C43708C();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_23C43709C();
    a2(v7);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_23C42B53C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23C42B54C()
{
  v0 = sub_23C4370AC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C43703C();
  sub_23C43709C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t NetworkMonitor.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23C42B6A8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_23C42B53C(a1, a2);
  return sub_23C43704C();
}

uint64_t sub_23C42B720()
{
  v0 = sub_23C4370AC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C43703C();
  sub_23C43709C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t type metadata accessor for NetworkError(uint64_t a1)
{
  result = qword_27E1F4830;
  if (!qword_27E1F4830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23C42B9D8(uint64_t a1)
{
  sub_23C42BB0C(319, &qword_27E1F4840, type metadata accessor for Dataclass);
  if (v1 <= 0x3F)
  {
    sub_23C42BAAC();
    if (v2 <= 0x3F)
    {
      sub_23C42BADC();
      if (v3 <= 0x3F)
      {
        sub_23C42BB0C(319, &qword_27E1F4858, MEMORY[0x277CC8678]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23C42BAAC()
{
  result = qword_27E1F4848;
  if (!qword_27E1F4848)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27E1F4848);
  }

  return result;
}

uint64_t sub_23C42BADC()
{
  result = qword_27E1F4850;
  if (!qword_27E1F4850)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27E1F4850);
  }

  return result;
}

void sub_23C42BB0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23C42BB58()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v1 = sub_23C43711C();
  v2 = [v0 initWithString_];

  sub_23C43714C();
  v3 = sub_23C43711C();

  qword_2814FA118 = v3;
  return result;
}

id ACAccountDataclassQuota.getter()
{
  if (qword_2814FA110 != -1)
  {
    swift_once();
  }

  v1 = qword_2814FA118;

  return v1;
}

id sub_23C42BC4C()
{
  v1 = v0[3];
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_23C42BCA0(v0);
    v0[3] = v2;
    v3 = v2;
  }

  sub_23C42F030(v1);
  return v2;
}

id sub_23C42BCA0(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 defaultStore];
  result = [v2 defaultStore];
  if (result)
  {
    v5 = result;
    v6 = [result aida:*a1 accountForiCloudAccount:?];

    v7 = objc_allocWithZone(MEMORY[0x277CEC808]);
    v8 = sub_23C43711C();
    v9 = [v7 initWithAccountStore:v3 grandSlamAccount:v6 appTokenID:v8];

    if (v9)
    {
      [v9 setUseAltDSID_];
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NetworkController.init(account:accountDataclass:urlSession:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 1;
  return result;
}

uint64_t NetworkController.fetchData(forURLKey:additionalHeaders:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = v3;
  v7 = sub_23C436E8C();
  v4[4] = v7;
  v4[5] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[6] = v8;
  v9 = swift_task_alloc();
  v4[7] = v9;
  *v9 = v4;
  v9[1] = sub_23C42BEC8;

  return NetworkController.fetchURL(forKey:)(v8, a1, a2);
}

uint64_t sub_23C42BEC8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_23C42C3C4;
  }

  else
  {
    v2 = sub_23C42BFDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C42BFDC()
{
  v1 = v0[2];
  v2 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v3 = sub_23C436E4C();
  v18 = [v2 initWithURL:v3 cachePolicy:1 timeoutInterval:30.0];
  v0[9] = v18;

  if (v1)
  {
    v4 = v0[2];
    v7 = *(v4 + 64);
    v6 = v4 + 64;
    v5 = v7;
    v8 = -1;
    v9 = -1 << *(v0[2] + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & v5;
    v11 = (63 - v9) >> 6;

    v13 = 0;
    if (v10)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        goto LABEL_13;
      }

      v10 = *(v6 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        do
        {
LABEL_10:
          v10 &= v10 - 1;

          v15 = sub_23C43711C();
          v16 = sub_23C43711C();
          [v18 setValue:v15 forHTTPHeaderField:v16];
        }

        while (v10);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_23C42C1EC;

    return NetworkController.fetchData(forURLRequest:)(v18);
  }

  return result;
}

uint64_t sub_23C42C1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 88) = v3;

  if (v3)
  {
    v9 = sub_23C42C428;
  }

  else
  {
    v8[12] = a3;
    v8[13] = a2;
    v8[14] = a1;
    v9 = sub_23C42C328;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_23C42C328()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  return v4(v5, v6, v7);
}

uint64_t sub_23C42C3C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C42C428()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t NetworkController.fetchURL(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4528, &qword_23C438180);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C42C55C, 0, 0);
}

uint64_t sub_23C42C55C()
{
  v64 = v0;
  v1 = *(v0 + 88);
  v2 = *v1;
  v3 = *(v1 + 8);
  *(v0 + 104) = v3;
  v4 = [v2 propertiesForDataclass_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_23C4370EC();

    v7 = sub_23C42DFA0(v6);

    if (v7)
    {

      v8 = [**(v0 + 88) propertiesForDataclass_];
      if (!v8 || (v9 = v8, v10 = sub_23C4370EC(), v9, v11 = sub_23C42DFA0(v10), , !v11))
      {
        if (qword_2814FA100 != -1)
        {
          swift_once();
        }

        v38 = *(v0 + 104);
        v39 = sub_23C43701C();
        __swift_project_value_buffer(v39, qword_2814FA1F0);
        v40 = v38;
        v41 = sub_23C436FFC();
        v42 = sub_23C4372CC();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v63[0] = v44;
          *v43 = 136315138;
          v45 = sub_23C43714C();
          v47 = sub_23C423048(v45, v46, v63);

          *(v43 + 4) = v47;
          _os_log_impl(&dword_23C414000, v41, v42, "Still not able to fetch properties for dataclass: %s. Bailing.", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44);
          MEMORY[0x23EED1A40](v44, -1, -1);
          MEMORY[0x23EED1A40](v43, -1, -1);
        }

        v48 = *(v0 + 104);
        type metadata accessor for NetworkError(0);
        sub_23C42EB8C();
        swift_allocError();
        *v49 = v48;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v50 = v48;
        goto LABEL_32;
      }

      if (*(v11 + 16) && (v12 = sub_23C4235F0(*(v0 + 72), *(v0 + 80)), (v13 & 1) != 0))
      {
        sub_23C424C14(*(v11 + 56) + 32 * v12, v0 + 16);

        if (swift_dynamicCast())
        {
          v14 = *(v0 + 96);
          v16 = *(v0 + 48);
          v15 = *(v0 + 56);
          sub_23C436E7C();
          v17 = sub_23C436E8C();
          v18 = *(v17 - 8);
          v19 = (*(v18 + 48))(v14, 1, v17);
          v20 = *(v0 + 96);
          if (v19 != 1)
          {
            v62 = *(v0 + 64);

            (*(v18 + 32))(v62, v20, v17);

            v61 = *(v0 + 8);
            goto LABEL_33;
          }

          sub_23C41ED98(*(v0 + 96), &qword_27E1F4528, &qword_23C438180);
          if (qword_2814FA100 != -1)
          {
            swift_once();
          }

          v21 = sub_23C43701C();
          __swift_project_value_buffer(v21, qword_2814FA1F0);

          v22 = sub_23C436FFC();
          v23 = sub_23C4372CC();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v63[0] = v25;
            *v24 = 136315138;
            *(v24 + 4) = sub_23C423048(v16, v15, v63);
            _os_log_impl(&dword_23C414000, v22, v23, "Failed to create URL from string: %s", v24, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v25);
            MEMORY[0x23EED1A40](v25, -1, -1);
            MEMORY[0x23EED1A40](v24, -1, -1);
          }

          type metadata accessor for NetworkError(0);
          sub_23C42EB8C();
          swift_allocError();
          *v26 = v16;
          v26[1] = v15;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
LABEL_32:

          v61 = *(v0 + 8);
LABEL_33:

          return v61();
        }
      }

      else
      {
      }

      if (qword_2814FA100 != -1)
      {
        swift_once();
      }

      v51 = sub_23C43701C();
      __swift_project_value_buffer(v51, qword_2814FA1F0);

      v52 = sub_23C436FFC();
      v53 = sub_23C4372CC();

      if (os_log_type_enabled(v52, v53))
      {
        v55 = *(v0 + 72);
        v54 = *(v0 + 80);
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v63[0] = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_23C423048(v55, v54, v63);
        _os_log_impl(&dword_23C414000, v52, v53, "Failed to fetch URL for key: %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x23EED1A40](v57, -1, -1);
        MEMORY[0x23EED1A40](v56, -1, -1);
      }

      v59 = *(v0 + 72);
      v58 = *(v0 + 80);
      type metadata accessor for NetworkError(0);
      sub_23C42EB8C();
      swift_allocError();
      *v60 = v59;
      v60[1] = v58;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_32;
    }
  }

  if (qword_2814FA100 != -1)
  {
    swift_once();
  }

  v27 = sub_23C43701C();
  __swift_project_value_buffer(v27, qword_2814FA1F0);
  v28 = v3;
  v29 = sub_23C436FFC();
  v30 = sub_23C4372CC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v63[0] = v32;
    *v31 = 136315138;
    v33 = sub_23C43714C();
    v35 = sub_23C423048(v33, v34, v63);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_23C414000, v29, v30, "Failed to fetch properties for dataclass: %s. Trying to renew credentials.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x23EED1A40](v32, -1, -1);
    MEMORY[0x23EED1A40](v31, -1, -1);
  }

  v36 = swift_task_alloc();
  *(v0 + 112) = v36;
  *v36 = v0;
  v36[1] = sub_23C42CD7C;

  return sub_23C42E27C();
}

uint64_t sub_23C42CD7C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23C42CEC8, 0, 0);
  }
}

uint64_t sub_23C42CEC8()
{
  v47 = v0;
  v1 = [**(v0 + 88) propertiesForDataclass_];
  if (!v1 || (v2 = v1, v3 = sub_23C4370EC(), v2, v4 = sub_23C42DFA0(v3), , !v4))
  {
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 104);
    v21 = sub_23C43701C();
    __swift_project_value_buffer(v21, qword_2814FA1F0);
    v22 = v20;
    v23 = sub_23C436FFC();
    v24 = sub_23C4372CC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46[0] = v26;
      *v25 = 136315138;
      v27 = sub_23C43714C();
      v29 = sub_23C423048(v27, v28, v46);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_23C414000, v23, v24, "Still not able to fetch properties for dataclass: %s. Bailing.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23EED1A40](v26, -1, -1);
      MEMORY[0x23EED1A40](v25, -1, -1);
    }

    v30 = *(v0 + 104);
    type metadata accessor for NetworkError(0);
    sub_23C42EB8C();
    swift_allocError();
    *v31 = v30;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v32 = v30;
    goto LABEL_23;
  }

  if (!*(v4 + 16) || (v5 = sub_23C4235F0(*(v0 + 72), *(v0 + 80)), (v6 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_23C424C14(*(v4 + 56) + 32 * v5, v0 + 16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v33 = sub_23C43701C();
    __swift_project_value_buffer(v33, qword_2814FA1F0);

    v34 = sub_23C436FFC();
    v35 = sub_23C4372CC();

    if (os_log_type_enabled(v34, v35))
    {
      v37 = *(v0 + 72);
      v36 = *(v0 + 80);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_23C423048(v37, v36, v46);
      _os_log_impl(&dword_23C414000, v34, v35, "Failed to fetch URL for key: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x23EED1A40](v39, -1, -1);
      MEMORY[0x23EED1A40](v38, -1, -1);
    }

    v41 = *(v0 + 72);
    v40 = *(v0 + 80);
    type metadata accessor for NetworkError(0);
    sub_23C42EB8C();
    swift_allocError();
    *v42 = v41;
    v42[1] = v40;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_23;
  }

  v7 = *(v0 + 96);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  sub_23C436E7C();
  v10 = sub_23C436E8C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = *(v0 + 96);
  if (v12 == 1)
  {
    sub_23C41ED98(*(v0 + 96), &qword_27E1F4528, &qword_23C438180);
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v14 = sub_23C43701C();
    __swift_project_value_buffer(v14, qword_2814FA1F0);

    v15 = sub_23C436FFC();
    v16 = sub_23C4372CC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v46[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_23C423048(v9, v8, v46);
      _os_log_impl(&dword_23C414000, v15, v16, "Failed to create URL from string: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23EED1A40](v18, -1, -1);
      MEMORY[0x23EED1A40](v17, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_23C42EB8C();
    swift_allocError();
    *v19 = v9;
    v19[1] = v8;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_23:

    v43 = *(v0 + 8);
    goto LABEL_24;
  }

  v45 = *(v0 + 64);

  (*(v11 + 32))(v45, v13, v10);

  v43 = *(v0 + 8);
LABEL_24:

  return v43();
}

uint64_t NetworkController.fetchData(forURLRequest:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23C436D5C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C42D5C0, 0, 0);
}

uint64_t sub_23C42D5C0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_23C4255A0();
  v3 = *v1;
  v4 = [v3 aa_personID];
  v5 = sub_23C43711C();
  [v2 setValue:v4 forHTTPHeaderField:v5];

  [v2 aa:v3 addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
  [v2 ak_addAnisetteHeaders];
  sub_23C42688C(v3);
  v6 = sub_23C43711C();

  v7 = sub_23C43711C();
  [v2 setValue:v6 forHTTPHeaderField:v7];

  if ([v3 isProvisionedForDataclass_] && (objc_msgSend(v3, sel_aa_isManagedAppleID) & 1) == 0)
  {
    v9 = sub_23C42BC4C();
    sub_23C426664(v9);
  }

  else
  {
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v8 = sub_23C43701C();
    __swift_project_value_buffer(v8, qword_2814FA1F0);
    v9 = sub_23C436FFC();
    v10 = sub_23C4372DC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      MEMORY[0x23EED1A40](v11, -1, -1);
    }
  }

  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_23C42D850;

  return sub_23C425C24(v3);
}

uint64_t sub_23C42D850()
{

  return MEMORY[0x2822009F8](sub_23C42D94C, 0, 0);
}

uint64_t sub_23C42D94C()
{
  sub_23C436D2C();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23C42D9F8;
  v2 = *(v0 + 56);

  return MEMORY[0x28211ECF8](v2, 0);
}

uint64_t sub_23C42D9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 56);
  v7 = *(*v4 + 40);
  v8 = *(*v4 + 32);
  v5[10] = a1;
  v5[11] = a2;
  v5[12] = a3;
  v5[13] = v3;

  (*(v7 + 8))(v6, v8);
  if (v3)
  {
    v9 = sub_23C42DF34;
  }

  else
  {
    v9 = sub_23C42DB70;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_23C42DB70()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v3 = v0[2];
    v4 = sub_23C43701C();
    __swift_project_value_buffer(v4, qword_2814FA1F0);
    v5 = v3;
    v6 = sub_23C436FFC();
    v7 = sub_23C4372BC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[2];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&dword_23C414000, v6, v7, "Successfully fetched response for request: %@", v9, 0xCu);
      sub_23C41ED98(v10, &qword_27E1F4798, &qword_23C438C98);
      MEMORY[0x23EED1A40](v10, -1, -1);
      MEMORY[0x23EED1A40](v9, -1, -1);
    }

    v12 = v0[1];
    v13 = v0[10];
    v14 = v0[11];

    return v12(v13, v14, v2);
  }

  else
  {
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v16 = v0[2];
    v17 = sub_23C43701C();
    __swift_project_value_buffer(v17, qword_2814FA1F0);
    v18 = v16;
    v19 = sub_23C436FFC();
    v20 = sub_23C4372CC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[2];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v21;
      *v23 = v21;
      v24 = v21;
      _os_log_impl(&dword_23C414000, v19, v20, "Failed to fetch response for request: %@", v22, 0xCu);
      sub_23C41ED98(v23, &qword_27E1F4798, &qword_23C438C98);
      MEMORY[0x23EED1A40](v23, -1, -1);
      MEMORY[0x23EED1A40](v22, -1, -1);
    }

    v25 = v0[12];
    v33 = v0[11];
    v26 = v0[10];
    v27 = v0[5];
    v28 = v0[6];
    v29 = v0[4];

    type metadata accessor for NetworkError(0);
    sub_23C42EB8C();
    swift_allocError();
    v31 = v30;
    sub_23C436D2C();
    (*(v27 + 32))(v31, v28, v29);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_23C42A010(v26, v33);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_23C42DF34()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_23C42DFA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4520, &qword_23C438178);
    v2 = sub_23C43743C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_23C4247DC(*(a1 + 48) + 40 * v12, v27);
        sub_23C424C14(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_23C4247DC(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_23C424C14(v25 + 8, v20);
        sub_23C41ED98(v24, &qword_27E1F4868, &qword_23C439170);
        v21 = v18;
        sub_23C417A6C(v20, v22);
        v13 = v21;
        sub_23C417A6C(v22, v23);
        sub_23C417A6C(v23, &v21);
        result = sub_23C4235F0(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_23C417A6C(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_23C417A6C(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_23C41ED98(v24, &qword_27E1F4868, &qword_23C439170);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_23C42E29C()
{
  v1 = **(v0 + 232);
  *(v0 + 240) = v1;
  v2 = [v1 aa_altDSID];
  *(v0 + 248) = v2;
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4870, &qword_23C439178);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C438CA0;
    *(inited + 32) = sub_23C43714C();
    *(inited + 40) = v5;
    *(inited + 48) = 1;
    *(inited + 56) = sub_23C43714C();
    *(inited + 64) = v6;
    *(inited + 72) = 1;
    v7 = sub_23C417970(inited);
    *(v0 + 256) = v7;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4878, &qword_23C439180);
    swift_arrayDestroy();
    v8 = objc_opt_self();
    *(v0 + 264) = v8;
    v9 = [v8 defaultStore];
    *(v0 + 272) = v9;
    if (v9)
    {
      v10 = v9;
      sub_23C42EBE4(v7);
      v11 = sub_23C4370DC();
      *(v0 + 280) = v11;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 224;
      *(v0 + 24) = sub_23C42E604;
      v12 = swift_continuation_init();
      *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4880, &qword_23C439188);
      *(v0 + 160) = MEMORY[0x277D85DD0];
      *(v0 + 168) = 1107296256;
      *(v0 + 176) = sub_23C42EE9C;
      *(v0 + 184) = &block_descriptor_1;
      *(v0 + 192) = v12;
      [v10 renewCredentialsForAccount:v1 options:v11 completion:v0 + 160];
      v13 = v0 + 16;
    }

    else
    {

      __break(1u);
    }

    return MEMORY[0x282200938](v13);
  }

  else
  {
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v14 = sub_23C43701C();
    __swift_project_value_buffer(v14, qword_2814FA1F0);
    v15 = sub_23C436FFC();
    v16 = sub_23C4372CC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23C414000, v15, v16, "Renew credentials failed, missing id", v17, 2u);
      MEMORY[0x23EED1A40](v17, -1, -1);
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_23C42E604()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {

    v3 = sub_23C42EB14;
  }

  else
  {
    v3 = sub_23C42E724;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_23C42E724()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 224);

  if (v2 == 2)
  {
    v19 = *(v0 + 248);

    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v20 = sub_23C43701C();
    __swift_project_value_buffer(v20, qword_2814FA1F0);
    v15 = sub_23C436FFC();
    v16 = sub_23C4372CC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_26;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Renew credentials failed.";
    goto LABEL_25;
  }

  if (v2 == 1)
  {
    v13 = *(v0 + 248);

    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v14 = sub_23C43701C();
    __swift_project_value_buffer(v14, qword_2814FA1F0);
    v15 = sub_23C436FFC();
    v16 = sub_23C4372CC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_26;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Renew credentials rejected.";
    goto LABEL_25;
  }

  if (v2)
  {
    v21 = *(v0 + 248);

    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v22 = sub_23C43701C();
    __swift_project_value_buffer(v22, qword_2814FA1F0);
    v15 = sub_23C436FFC();
    v16 = sub_23C4372CC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_26;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Renew credentials failed w/ unknown reason.";
    goto LABEL_25;
  }

  if (qword_2814FA100 != -1)
  {
    swift_once();
  }

  v3 = sub_23C43701C();
  __swift_project_value_buffer(v3, qword_2814FA1F0);
  v4 = sub_23C436FFC();
  v5 = sub_23C4372DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23C414000, v4, v5, "Successfully renewed credentials.", v6, 2u);
    MEMORY[0x23EED1A40](v6, -1, -1);
  }

  v7 = *(v0 + 264);

  v8 = [v7 defaultStore];
  if (!v8)
  {

    __break(1u);
    return;
  }

  v9 = v8;
  v10 = *(v0 + 248);

  v11 = [v9 aa:v10 appleAccountWithAltDSID:?];

  if (!v11)
  {
    v15 = sub_23C436FFC();
    v16 = sub_23C4372CC();
    if (!os_log_type_enabled(v15, v16))
    {
LABEL_26:

      goto LABEL_27;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Renew credentials failed, missing account";
LABEL_25:
    _os_log_impl(&dword_23C414000, v15, v16, v18, v17, 2u);
    MEMORY[0x23EED1A40](v17, -1, -1);
    goto LABEL_26;
  }

  v12 = *(v0 + 232);

  *v12 = v11;
LABEL_27:
  v23 = *(v0 + 8);

  v23();
}

uint64_t sub_23C42EB14(uint64_t a1)
{
  v2 = v1[35];
  v3 = v1[34];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

unint64_t sub_23C42EB8C()
{
  result = qword_27E1F4860;
  if (!qword_27E1F4860)
  {
    type metadata accessor for NetworkError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4860);
  }

  return result;
}

uint64_t sub_23C42EBE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4510, &qword_23C438170);
    v2 = sub_23C43743C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_23C417A6C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_23C417A6C(v29, v30);
    result = sub_23C43732C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_23C417A6C(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23C42EE9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t get_enum_tag_for_layout_string_So17AAGrandSlamSignerCSgSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23C42EF98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23C42EFE0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_23C42F030(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_23C42F058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[33] = a5;
  v6[34] = v5;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C42F0FC, v5, 0);
}

uint64_t sub_23C42F0FC()
{
  v64 = v0;
  v1 = *(v0 + 272);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 240);
    v3 = *(v0 + 248);

    v5 = sub_23C4235F0(v4, v3);
    if (v6)
    {
      sub_23C423938(*(v2 + 56) + 40 * v5, v0 + 16);

      sub_23C423938(v0 + 16, v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4758, &qword_23C439280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48C8, &qword_23C439330);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 224);
        *(v0 + 328) = v7;
        if (qword_2814FA108 != -1)
        {
          swift_once();
        }

        v8 = sub_23C43701C();
        __swift_project_value_buffer(v8, qword_2814FA208);

        v9 = sub_23C436FFC();
        v10 = sub_23C4372BC();

        if (os_log_type_enabled(v9, v10))
        {
          v12 = *(v0 + 240);
          v11 = *(v0 + 248);
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v63[0] = v14;
          *v13 = 136315138;
          *(v13 + 4) = sub_23C423048(v12, v11, v63);
          _os_log_impl(&dword_23C414000, v9, v10, "TaskLimiter: reusing existing task for identifier %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x23EED1A40](v14, -1, -1);
          MEMORY[0x23EED1A40](v13, -1, -1);
        }

        v15 = swift_task_alloc();
        *(v0 + 336) = v15;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
        *v15 = v0;
        v15[1] = sub_23C42FC98;
        v17 = *(v0 + 232);
        v18 = MEMORY[0x277D84950];
        v19 = MEMORY[0x277D84F70] + 8;
        v20 = v7;
        goto LABEL_25;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    else
    {
    }
  }

  if (qword_2814FA108 != -1)
  {
    swift_once();
  }

  v21 = sub_23C43701C();
  __swift_project_value_buffer(v21, qword_2814FA208);

  v22 = sub_23C436FFC();
  v23 = sub_23C4372BC();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = *(v0 + 240);
    v24 = *(v0 + 248);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v63[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_23C423048(v25, v24, v63);
    _os_log_impl(&dword_23C414000, v22, v23, "TaskLimiter: creating new task for identifier %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x23EED1A40](v27, -1, -1);
    MEMORY[0x23EED1A40](v26, -1, -1);
  }

  v28 = *(v1 + 112);
  if (!*(v28 + 16))
  {
    goto LABEL_19;
  }

  v30 = *(v0 + 240);
  v29 = *(v0 + 248);

  v31 = sub_23C4235F0(v30, v29);
  if ((v32 & 1) == 0)
  {

LABEL_19:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_20;
  }

  sub_23C423938(*(v28 + 56) + 40 * v31, v0 + 56);

LABEL_20:
  v34 = *(v0 + 272);
  v33 = *(v0 + 280);
  v36 = *(v0 + 256);
  v35 = *(v0 + 264);
  v37 = sub_23C43726C();
  v38 = *(*(v37 - 8) + 56);
  v38(v33, 1, 1, v37);
  sub_23C417A7C(v0 + 56, v0 + 96, &qword_27E1F4740, &qword_23C438AD8);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  v40 = *(v0 + 112);
  *(v39 + 32) = *(v0 + 96);
  *(v39 + 48) = v40;
  *(v39 + 64) = *(v0 + 128);
  *(v39 + 72) = v36;
  *(v39 + 80) = v35;

  v41 = sub_23C4211FC(0, 0, v33, &unk_23C439308, v39);
  *(v0 + 288) = v41;
  v38(v33, 1, 1, v37);
  v42 = sub_23C4362FC(&qword_27E1F4748, type metadata accessor for TaskLimiter, &protocol conformance descriptor for TaskLimiter);
  v43 = swift_allocObject();
  v43[2] = v34;
  v43[3] = v42;
  v43[4] = v34;
  v43[5] = v41;
  swift_retain_n();

  v44 = sub_23C4211EC(0, 0, v33, &unk_23C439318, v43);
  *(v0 + 296) = v44;
  v38(v33, 1, 1, v37);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v41;
  v45[5] = v44;

  v46 = sub_23C4211FC(0, 0, v33, &unk_23C439328, v45);
  *(v0 + 304) = v46;

  v47 = sub_23C436FFC();
  v48 = sub_23C4372BC();

  if (os_log_type_enabled(v47, v48))
  {
    v50 = *(v0 + 240);
    v49 = *(v0 + 248);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63[0] = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_23C423048(v50, v49, v63);
    _os_log_impl(&dword_23C414000, v47, v48, "TaskLimiter: storing task for identifier %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x23EED1A40](v52, -1, -1);
    MEMORY[0x23EED1A40](v51, -1, -1);
  }

  v54 = *(v0 + 240);
  v53 = *(v0 + 248);
  v63[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48C8, &qword_23C439330);
  v63[4] = sub_23C436800(&qword_27E1F48D0, &qword_27E1F48C8, &qword_23C439330);
  v63[0] = v46;
  swift_beginAccess();

  sub_23C422CB0(v63, v54, v53);
  swift_endAccess();

  v55 = sub_23C436FFC();
  v56 = sub_23C4372BC();

  if (os_log_type_enabled(v55, v56))
  {
    v58 = *(v0 + 240);
    v57 = *(v0 + 248);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v63[0] = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_23C423048(v58, v57, v63);
    _os_log_impl(&dword_23C414000, v55, v56, "TaskLimiter: performing task operation for identifier %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x23EED1A40](v60, -1, -1);
    MEMORY[0x23EED1A40](v59, -1, -1);
  }

  v61 = swift_task_alloc();
  *(v0 + 312) = v61;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  *v61 = v0;
  v61[1] = sub_23C42F9EC;
  v17 = *(v0 + 232);
  v18 = MEMORY[0x277D84950];
  v19 = MEMORY[0x277D84F70] + 8;
  v20 = v46;
LABEL_25:

  return MEMORY[0x282200430](v17, v20, v19, v16, v18);
}

uint64_t sub_23C42F9EC()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_23C42FBD8;
  }

  else
  {
    v4 = sub_23C42FB18;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23C42FB18()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];

  sub_23C41ED98((v0 + 7), &qword_27E1F4740, &qword_23C438AD8);
  sub_23C420A0C(v3, v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C42FBD8()
{
  v1 = v0[34];
  v3 = v0[30];
  v2 = v0[31];

  sub_23C41ED98((v0 + 7), &qword_27E1F4740, &qword_23C438AD8);
  sub_23C420A0C(v3, v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C42FC98()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_23C42FE38;
  }

  else
  {
    v4 = sub_23C42FDC4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23C42FDC4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C42FE38()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C42FEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[33] = a5;
  v6[34] = v5;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C42FF50, v5, 0);
}

uint64_t sub_23C42FF50()
{
  v64 = v0;
  v1 = *(v0 + 272);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 240);
    v3 = *(v0 + 248);

    v5 = sub_23C4235F0(v4, v3);
    if (v6)
    {
      sub_23C423938(*(v2 + 56) + 40 * v5, v0 + 16);

      sub_23C423938(v0 + 16, v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4758, &qword_23C439280);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4898, &unk_23C439270);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 224);
        *(v0 + 328) = v7;
        if (qword_2814FA108 != -1)
        {
          swift_once();
        }

        v8 = sub_23C43701C();
        __swift_project_value_buffer(v8, qword_2814FA208);

        v9 = sub_23C436FFC();
        v10 = sub_23C4372BC();

        if (os_log_type_enabled(v9, v10))
        {
          v12 = *(v0 + 240);
          v11 = *(v0 + 248);
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v63[0] = v14;
          *v13 = 136315138;
          *(v13 + 4) = sub_23C423048(v12, v11, v63);
          _os_log_impl(&dword_23C414000, v9, v10, "TaskLimiter: reusing existing task for identifier %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x23EED1A40](v14, -1, -1);
          MEMORY[0x23EED1A40](v13, -1, -1);
        }

        v15 = swift_task_alloc();
        *(v0 + 336) = v15;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
        *v15 = v0;
        v15[1] = sub_23C43096C;
        v17 = *(v0 + 232);
        v18 = MEMORY[0x277D84950];
        v19 = MEMORY[0x277D84F78] + 8;
        v20 = v7;
        goto LABEL_25;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    else
    {
    }
  }

  if (qword_2814FA108 != -1)
  {
    swift_once();
  }

  v21 = sub_23C43701C();
  __swift_project_value_buffer(v21, qword_2814FA208);

  v22 = sub_23C436FFC();
  v23 = sub_23C4372BC();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = *(v0 + 240);
    v24 = *(v0 + 248);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v63[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_23C423048(v25, v24, v63);
    _os_log_impl(&dword_23C414000, v22, v23, "TaskLimiter: creating new task for identifier %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x23EED1A40](v27, -1, -1);
    MEMORY[0x23EED1A40](v26, -1, -1);
  }

  v28 = *(v1 + 112);
  if (!*(v28 + 16))
  {
    goto LABEL_19;
  }

  v30 = *(v0 + 240);
  v29 = *(v0 + 248);

  v31 = sub_23C4235F0(v30, v29);
  if ((v32 & 1) == 0)
  {

LABEL_19:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_20;
  }

  sub_23C423938(*(v28 + 56) + 40 * v31, v0 + 56);

LABEL_20:
  v34 = *(v0 + 272);
  v33 = *(v0 + 280);
  v36 = *(v0 + 256);
  v35 = *(v0 + 264);
  v37 = sub_23C43726C();
  v38 = *(*(v37 - 8) + 56);
  v38(v33, 1, 1, v37);
  sub_23C417A7C(v0 + 56, v0 + 96, &qword_27E1F4740, &qword_23C438AD8);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  v40 = *(v0 + 112);
  *(v39 + 32) = *(v0 + 96);
  *(v39 + 48) = v40;
  *(v39 + 64) = *(v0 + 128);
  *(v39 + 72) = v36;
  *(v39 + 80) = v35;

  v41 = sub_23C4211EC(0, 0, v33, &unk_23C439248, v39);
  *(v0 + 288) = v41;
  v38(v33, 1, 1, v37);
  v42 = sub_23C4362FC(&qword_27E1F4748, type metadata accessor for TaskLimiter, &protocol conformance descriptor for TaskLimiter);
  v43 = swift_allocObject();
  v43[2] = v34;
  v43[3] = v42;
  v43[4] = v34;
  v43[5] = v41;
  swift_retain_n();

  v44 = sub_23C4211EC(0, 0, v33, &unk_23C439258, v43);
  *(v0 + 296) = v44;
  v38(v33, 1, 1, v37);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v41;
  v45[5] = v44;

  v46 = sub_23C4211EC(0, 0, v33, &unk_23C439268, v45);
  *(v0 + 304) = v46;

  v47 = sub_23C436FFC();
  v48 = sub_23C4372BC();

  if (os_log_type_enabled(v47, v48))
  {
    v50 = *(v0 + 240);
    v49 = *(v0 + 248);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63[0] = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_23C423048(v50, v49, v63);
    _os_log_impl(&dword_23C414000, v47, v48, "TaskLimiter: storing task for identifier %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x23EED1A40](v52, -1, -1);
    MEMORY[0x23EED1A40](v51, -1, -1);
  }

  v54 = *(v0 + 240);
  v53 = *(v0 + 248);
  v63[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4898, &unk_23C439270);
  v63[4] = sub_23C436800(&qword_27E1F48A0, &qword_27E1F4898, &unk_23C439270);
  v63[0] = v46;
  swift_beginAccess();

  sub_23C422CB0(v63, v54, v53);
  swift_endAccess();

  v55 = sub_23C436FFC();
  v56 = sub_23C4372BC();

  if (os_log_type_enabled(v55, v56))
  {
    v58 = *(v0 + 240);
    v57 = *(v0 + 248);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v63[0] = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_23C423048(v58, v57, v63);
    _os_log_impl(&dword_23C414000, v55, v56, "TaskLimiter: performing task operation for identifier %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x23EED1A40](v60, -1, -1);
    MEMORY[0x23EED1A40](v59, -1, -1);
  }

  v61 = swift_task_alloc();
  *(v0 + 312) = v61;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  *v61 = v0;
  v61[1] = sub_23C430840;
  v17 = *(v0 + 232);
  v18 = MEMORY[0x277D84950];
  v19 = MEMORY[0x277D84F78] + 8;
  v20 = v46;
LABEL_25:

  return MEMORY[0x282200430](v17, v20, v19, v16, v18);
}

uint64_t sub_23C430840()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_23C436D00;
  }

  else
  {
    v4 = sub_23C436CFC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23C43096C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_23C436D08;
  }

  else
  {
    v4 = sub_23C436CF8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23C430A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a4;
  return MEMORY[0x2822009F8](sub_23C430ABC, 0, 0);
}

uint64_t sub_23C430ABC()
{
  sub_23C417A7C(*(v0 + 96), v0 + 16, &qword_27E1F4740, &qword_23C438AD8);
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v3 = *(v2 + 16);
    *(v0 + 80) = swift_getAssociatedTypeWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = sub_23C420E64;

    return v10(boxed_opaque_existential_0, v1, v2);
  }

  else
  {
    sub_23C41ED98(v0 + 16, &qword_27E1F4740, &qword_23C438AD8);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    v7 = *(v0 + 104);
    sub_23C41ED98(v0 + 56, &qword_27E1F4788, &qword_23C4392C0);
    v11 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_23C42108C;
    v9 = *(v0 + 88);

    return v11(v9);
  }
}

uint64_t sub_23C430D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a4;
  return MEMORY[0x2822009F8](sub_23C430D7C, 0, 0);
}

uint64_t sub_23C430D7C()
{
  sub_23C417A7C(*(v0 + 96), v0 + 16, &qword_27E1F4740, &qword_23C438AD8);
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v3 = *(v2 + 16);
    *(v0 + 80) = swift_getAssociatedTypeWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = sub_23C431018;

    return v10(boxed_opaque_existential_0, v1, v2);
  }

  else
  {
    sub_23C41ED98(v0 + 16, &qword_27E1F4740, &qword_23C438AD8);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    v7 = *(v0 + 104);
    sub_23C41ED98(v0 + 56, &qword_27E1F4788, &qword_23C4392C0);
    v11 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_23C436CF4;
    v9 = *(v0 + 88);

    return v11(v9);
  }
}

uint64_t sub_23C431018()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_23C436D04;
  }

  else
  {
    v2 = sub_23C43112C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C43112C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[13];
  sub_23C41ED98((v0 + 7), &qword_27E1F4788, &qword_23C4392C0);
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_23C436CF4;
  v3 = v0[11];

  return v5(v3);
}

uint64_t sub_23C431240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_23C4373EC();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C431304, a4, 0);
}

uint64_t sub_23C431304()
{
  v1 = *(*(v0 + 16) + 120);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_23C4374FC();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_23C4313E8;

  return sub_23C435954(v2, v3, 0, 0, 1);
}

uint64_t sub_23C4313E8()
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
    v7 = sub_23C421E84;
  }

  else
  {
    v7 = sub_23C431570;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_23C431570()
{
  if (qword_2814FA108 != -1)
  {
    swift_once();
  }

  v1 = sub_23C43701C();
  __swift_project_value_buffer(v1, qword_2814FA208);
  v2 = sub_23C436FFC();
  v3 = sub_23C4372CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23C414000, v2, v3, "Task limitier timed out", v4, 2u);
    MEMORY[0x23EED1A40](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  sub_23C43728C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23C4316CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_23C4373EC();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C431790, a4, 0);
}

uint64_t sub_23C431790()
{
  v1 = *(*(v0 + 16) + 120);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_23C4374FC();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_23C431874;

  return sub_23C435954(v2, v3, 0, 0, 1);
}

uint64_t sub_23C431874()
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
    v7 = sub_23C436D0C;
  }

  else
  {
    v7 = sub_23C4319FC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_23C4319FC()
{
  if (qword_2814FA108 != -1)
  {
    swift_once();
  }

  v1 = sub_23C43701C();
  __swift_project_value_buffer(v1, qword_2814FA208);
  v2 = sub_23C436FFC();
  v3 = sub_23C4372CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23C414000, v2, v3, "Task limitier timed out", v4, 2u);
    MEMORY[0x23EED1A40](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  sub_23C43728C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23C431B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_23C431B7C, 0, 0);
}

uint64_t sub_23C431B7C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_23C431C70;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F70] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD00000000000001ELL, 0x800000023C4396C0, sub_23C436854, v1, v4);
}

uint64_t sub_23C431C70()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23C431DAC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23C431DAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C431E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_23C431E34, 0, 0);
}

uint64_t sub_23C431E34()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_23C431F28;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD00000000000001ELL, 0x800000023C4396C0, sub_23C436050, v1, v4);
}

uint64_t sub_23C431F28()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23C436D18, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23C432064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48D8, &qword_23C439338);
  v6 = *(v5 - 8);
  v30 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v27 = &v25 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4778, &qword_23C439290);
  v12 = swift_allocObject();
  *(v12 + 20) = 0;
  *(v12 + 16) = 0;
  v34 = sub_23C43726C();
  v13 = *(v34 - 8);
  v33 = *(v13 + 56);
  v35 = v13 + 56;
  v33(v11, 1, 1, v34);
  v14 = *(v6 + 16);
  v29 = v6 + 16;
  v31 = v14;
  v14(v8, a1, v5);
  v15 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  v25 = v12;
  v26 = a2;
  v17 = v36;
  *(v16 + 4) = a2;
  *(v16 + 5) = v17;
  *(v16 + 6) = v12;
  v28 = *(v6 + 32);
  v28(&v16[v15], v8, v5);

  v18 = v27;
  sub_23C4330D8(0, 0, v27, &unk_23C439348, v16);

  v19 = v18;
  v33(v18, 1, 1, v34);
  v20 = v5;
  v31(v8, v32, v5);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v25;
  v23 = v26;
  *(v21 + 4) = v36;
  *(v21 + 5) = v23;
  *(v21 + 6) = v22;
  v28(&v21[v15], v8, v20);

  sub_23C4211EC(0, 0, v19, &unk_23C439358, v21);
}

uint64_t sub_23C4323A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48A8, &qword_23C439288);
  v6 = *(v5 - 8);
  v30 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v27 = &v25 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4778, &qword_23C439290);
  v12 = swift_allocObject();
  *(v12 + 20) = 0;
  *(v12 + 16) = 0;
  v34 = sub_23C43726C();
  v13 = *(v34 - 8);
  v33 = *(v13 + 56);
  v35 = v13 + 56;
  v33(v11, 1, 1, v34);
  v14 = *(v6 + 16);
  v29 = v6 + 16;
  v31 = v14;
  v14(v8, a1, v5);
  v15 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  v25 = v12;
  v26 = a2;
  v17 = v36;
  *(v16 + 4) = a2;
  *(v16 + 5) = v17;
  *(v16 + 6) = v12;
  v28 = *(v6 + 32);
  v28(&v16[v15], v8, v5);

  v18 = v27;
  sub_23C4330D8(0, 0, v27, &unk_23C4392A0, v16);

  v19 = v18;
  v33(v18, 1, 1, v34);
  v20 = v5;
  v31(v8, v32, v5);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v25;
  v23 = v26;
  *(v21 + 4) = v36;
  *(v21 + 5) = v23;
  *(v21 + 6) = v22;
  v28(&v21[v15], v8, v20);

  sub_23C4211EC(0, 0, v19, &unk_23C4392B0, v21);
}

uint64_t sub_23C4326DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[6] = a5;
  v9 = swift_task_alloc();
  v7[9] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  v7[10] = v10;
  *v9 = v7;
  v9[1] = sub_23C4327B4;
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F70] + 8;

  return MEMORY[0x282200430](v7 + 2, a4, v12, v10, v11);
}

uint64_t sub_23C4327B4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_23C4329AC;
  }

  else
  {
    v2 = sub_23C4328C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_23C4328C8()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  sub_23C43728C();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v0 + 2;
  os_unfair_lock_lock((v3 + 20));
  sub_23C436BBC((v3 + 16));
  os_unfair_lock_unlock((v3 + 20));
  if (!v1)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v5 = v0[1];

    v5();
  }
}

uint64_t sub_23C4329AC()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  os_unfair_lock_lock((v3 + 20));
  sub_23C436B90((v3 + 16));
  os_unfair_lock_unlock((v3 + 20));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23C432A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = swift_task_alloc();
  v7[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  v7[6] = v10;
  *v9 = v7;
  v9[1] = sub_23C432B48;
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v10, a4, v12, v10, v11);
}

uint64_t sub_23C432B48()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_23C432D34;
  }

  else
  {
    v2 = sub_23C432C5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_23C432C5C()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  sub_23C43728C();
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock((v3 + 20));
  sub_23C4362E0((v3 + 16));
  os_unfair_lock_unlock((v3 + 20));
  if (!v1)
  {

    v4 = v0[1];

    v4();
  }
}

uint64_t sub_23C432D34()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  os_unfair_lock_lock((v3 + 20));
  sub_23C4362B4((v3 + 16));
  os_unfair_lock_unlock((v3 + 20));

  v5 = *(v0 + 8);

  return v5();
}

_BYTE *sub_23C432DFC(_BYTE *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((*result & 1) == 0)
  {
    if (qword_2814FA108 != -1)
    {
      swift_once();
    }

    v5 = sub_23C43701C();
    __swift_project_value_buffer(v5, qword_2814FA208);
    v6 = sub_23C436FFC();
    v7 = sub_23C4372BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23C414000, v6, v7, "Timeoutable task finished before timeout", v8, 2u);
      MEMORY[0x23EED1A40](v8, -1, -1);
    }

    sub_23C424C14(a3, &v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48D8, &qword_23C439338);
    result = sub_23C43722C();
  }

  *v3 = 1;
  return result;
}

_BYTE *sub_23C432F40(_BYTE *result)
{
  v1 = result;
  if ((*result & 1) == 0)
  {
    if (qword_2814FA108 != -1)
    {
      swift_once();
    }

    v2 = sub_23C43701C();
    __swift_project_value_buffer(v2, qword_2814FA208);
    v3 = sub_23C436FFC();
    v4 = sub_23C4372BC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23C414000, v3, v4, "Timeoutable task finished before timeout", v5, 2u);
      MEMORY[0x23EED1A40](v5, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48A8, &qword_23C439288);
    result = sub_23C43722C();
  }

  *v1 = 1;
  return result;
}

_BYTE *sub_23C433060(_BYTE *result, int a2, id a3, uint64_t *a4, uint64_t *a5)
{
  v5 = result;
  if ((*result & 1) == 0)
  {
    v8 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    result = sub_23C43721C();
  }

  *v5 = 1;
  return result;
}

uint64_t sub_23C4330D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23C417A7C(a3, v25 - v10, &qword_27E1F4738, &qword_23C438F40);
  v12 = sub_23C43726C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23C41ED98(v11, &qword_27E1F4738, &qword_23C438F40);
  }

  else
  {
    sub_23C43725C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23C43720C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23C43718C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23C41ED98(a3, &qword_27E1F4738, &qword_23C438F40);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23C41ED98(a3, &qword_27E1F4738, &qword_23C438F40);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23C4333D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = swift_task_alloc();
  v7[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  v7[6] = v10;
  *v9 = v7;
  v9[1] = sub_23C4334AC;
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v10, a4, v12, v10, v11);
}

uint64_t sub_23C4334AC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_23C43369C;
  }

  else
  {
    v2 = sub_23C4335C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_23C4335C0()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  sub_23C43728C();
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock((v3 + 20));
  sub_23C436B64((v3 + 16));
  os_unfair_lock_unlock((v3 + 20));
  if (!v1)
  {

    v4 = v0[1];

    v4();
  }
}

uint64_t sub_23C4336B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = swift_task_alloc();
  v7[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  v7[6] = v10;
  *v9 = v7;
  v9[1] = sub_23C433788;
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v10, a4, v12, v10, v11);
}

uint64_t sub_23C433788()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_23C436D14;
  }

  else
  {
    v2 = sub_23C43389C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_23C43389C()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  sub_23C43728C();
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock((v3 + 20));
  sub_23C436288((v3 + 16));
  os_unfair_lock_unlock((v3 + 20));
  if (!v1)
  {

    v4 = v0[1];

    v4();
  }
}

_BYTE *sub_23C433978(_BYTE *result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = result;
  if ((*result & 1) == 0)
  {
    sub_23C43724C();
    sub_23C4362FC(&qword_27E1F4780, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_23C4370CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    result = sub_23C43721C();
  }

  *v4 = 1;
  return result;
}

uint64_t sub_23C433AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = v10;
  v8[30] = v11;
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[24] = a4;
  return MEMORY[0x2822009F8](sub_23C433AD4, 0, 0);
}

uint64_t sub_23C433AD4()
{
  v1 = *(*(v0 + 192) + OBJC_IVAR____TtC14ACSEFoundation16TaskLimitersObjC_taskLimiters);
  *(v0 + 248) = v1;
  return MEMORY[0x2822009F8](sub_23C433B00, v1, 0);
}

uint64_t sub_23C433B00()
{
  v0[32] = TaskLimiters.limiter(key:timeout:)(v0[25], v0[26], 300);

  return MEMORY[0x2822009F8](sub_23C433B74, 0, 0);
}

uint64_t sub_23C433B74()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[24];
  v4 = swift_allocObject();
  v0[33] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_23C433C84;
  v7 = v0[25];
  v8 = v0[26];

  return sub_23C42F058((v0 + 12), v7, v8, &unk_23C4392F0, v4);
}

uint64_t sub_23C433C84()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_23C433E60;
  }

  else
  {
    v2 = sub_23C433DB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C433DB4()
{
  v1 = v0[29];
  sub_23C424C14((v0 + 12), (v0 + 20));
  v1(v0 + 20, 0);

  sub_23C41ED98((v0 + 20), &qword_27E1F4890, &qword_23C439218);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v2 = v0[1];

  return v2();
}

uint64_t sub_23C433E60()
{
  v1 = sub_23C436E3C();
  v2 = [v1 domain];
  if (!v2)
  {
    sub_23C43714C();
    v2 = sub_23C43711C();
  }

  v17 = *(v0 + 280);
  v3 = [v1 code];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F44F0, &unk_23C438F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C4391A0;
  *(inited + 32) = sub_23C43714C();
  *(inited + 40) = v5;
  v6 = [v1 localizedDescription];
  v7 = sub_23C43714C();
  v9 = v8;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  sub_23C417638(inited);
  swift_setDeallocating();
  sub_23C41ED98(inited + 32, &qword_27E1F44F8, &qword_23C438140);
  v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v11 = sub_23C4370DC();

  v12 = [v10 initWithDomain:v2 code:v3 userInfo:v11];

  *(v0 + 144) = 0u;
  *(v0 + 128) = 0u;
  v13 = v12;
  v16(v0 + 128, v12);

  sub_23C41ED98(v0 + 128, &qword_27E1F4890, &qword_23C439218);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_23C4340B4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23C4251CC;

  return sub_23C433AA0(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_23C4341A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_23C4341CC, 0, 0);
}

uint64_t sub_23C4341CC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_23C431F28;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F70] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x286D726F66726570, 0xEE00293A6B736174, sub_23C436BD8, v1, v4);
}

uint64_t sub_23C434478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_23C434534;
  v7[3] = &block_descriptor_32;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t sub_23C434534(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_23C417A6C(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_23C41ED98(v10, &qword_27E1F4890, &qword_23C439218);
}

uint64_t sub_23C4345E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23C417A7C(a1, v12, &qword_27E1F4890, &qword_23C439218);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_23C43749C();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = 0;
  }

  (*(a3 + 16))(a3, v10, a2);
  return swift_unknownObjectRelease();
}

uint64_t sub_23C434740(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48D8, &qword_23C439338);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  a2(sub_23C436C64, v9);
}

uint64_t sub_23C434890(uint64_t a1, void *a2)
{
  if (a2)
  {
    *&v6[0] = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48D8, &qword_23C439338);
    return sub_23C43721C();
  }

  else
  {
    sub_23C417A7C(a1, &v4, &qword_27E1F4890, &qword_23C439218);
    if (v5)
    {
      sub_23C417A6C(&v4, v6);
      sub_23C424C14(v6, &v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48D8, &qword_23C439338);
      sub_23C43722C();
      return __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {
      return sub_23C41ED98(&v4, &qword_27E1F4890, &qword_23C439218);
    }
  }
}

uint64_t sub_23C4349B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void, void, char *, uint64_t, void *))
{
  v24 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v23 - v17;
  v19 = sub_23C43726C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v9;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = a3;
  v20[8] = a4;
  v20[9] = a5;
  v20[10] = a6;
  v21 = v9;

  a9(0, 0, v18, v24, v20);
}

uint64_t sub_23C434B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_23C434B40, 0, 0);
}

uint64_t sub_23C434B40()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14ACSEFoundation16TaskLimitersObjC_taskLimiters);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](sub_23C434B6C, v1, 0);
}

uint64_t sub_23C434B6C()
{
  v0[10] = TaskLimiters.limiter(key:timeout:)(v0[3], v0[4], 300);

  return MEMORY[0x2822009F8](sub_23C434BE0, 0, 0);
}

uint64_t sub_23C434BE0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_allocObject();
  v0[11] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_23C434CD8;
  v5 = v0[3];
  v6 = v0[4];

  return sub_23C42FEAC(sub_23C42FEAC, v5, v6, &unk_23C439228, v3);
}

uint64_t sub_23C434CD8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_23C434E7C;
  }

  else
  {
    v2 = sub_23C434E08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C434E08()
{
  (*(v0 + 56))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C434E7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C434EE0(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23C4251CC;

  return sub_23C434B0C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_23C434FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23C434FF8, 0, 0);
}

uint64_t sub_23C434FF8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_23C4350EC;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000033, 0x800000023C439ED0, sub_23C436344, v1, v4);
}

uint64_t sub_23C4350EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23C435200(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48C0, &qword_23C4392C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  (*(v5 + 16))(&v11 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  a2(sub_23C43634C, v9);
}

uint64_t sub_23C435500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_23C4355BC;
  v7[3] = &block_descriptor_2;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t sub_23C4355BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id TaskLimitersObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TaskLimitersObjC.init()()
{
  v1 = OBJC_IVAR____TtC14ACSEFoundation16TaskLimitersObjC_taskLimiters;
  type metadata accessor for TaskLimiters();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x277D84F98];
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for TaskLimitersObjC();
  return objc_msgSendSuper2(&v4, sel_init);
}

id TaskLimitersObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TaskLimitersObjC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_23C4358A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23C4251CC;

  return sub_23C434FD4(a1, v5, v4);
}

uint64_t sub_23C435954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_23C4373DC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_23C435A54, 0, 0);
}

uint64_t sub_23C435A54()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_23C4373EC();
  v5 = sub_23C4362FC(&qword_27E1F48B0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_23C4374DC();
  sub_23C4362FC(&qword_27E1F48B8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_23C4373FC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_23C435BE4;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_23C435BE4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23C435DA0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_23C435DA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C435E0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C4251CC;

  return sub_23C430D58(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_23C435ED0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C4251CC;

  return sub_23C4316CC(a1, v4, v5, v7, v6);
}

uint64_t sub_23C435F90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C4251CC;

  return sub_23C431E10(a1, v4, v5, v7, v6);
}

uint64_t sub_23C436058(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48A8, &qword_23C439288) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23C4251CC;

  return sub_23C432A74(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_23C436170(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48A8, &qword_23C439288) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23C4251CC;

  return sub_23C4336B4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_23C4362FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23C4363B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C4251CC;

  return sub_23C42ACDC(a1, v4);
}

uint64_t sub_23C436470(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C4251CC;

  return sub_23C4341A8(a1, v4, v5, v6);
}

uint64_t objectdestroy_40Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_23C436574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C4251CC;

  return sub_23C430A98(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_23C436638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C4251CC;

  return sub_23C431240(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_44Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23C436740(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C4251CC;

  return sub_23C431B58(a1, v4, v5, v7, v6);
}

uint64_t sub_23C436800(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23C43685C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48D8, &qword_23C439338) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23C41FA0C;

  return sub_23C4326DC(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t objectdestroy_57Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_23C436A4C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48D8, &qword_23C439338) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23C41FA0C;

  return sub_23C4333D8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t objectdestroy_76Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_23C436C64(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F48D8, &qword_23C439338);

  return sub_23C434890(a1, a2);
}