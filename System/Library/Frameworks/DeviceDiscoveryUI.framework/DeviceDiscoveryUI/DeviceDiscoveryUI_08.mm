uint64_t sub_23812ECB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23812ED10()
{
  v1 = type metadata accessor for DDDeviceDiscoveryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v19 = *(*(v1 - 1) + 64);
  v4 = sub_2381527EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v20 = *(v5 + 64);
  swift_unknownObjectRelease();

  v7 = v0 + v3;

  v8 = v1[10];
  v9 = sub_238152E1C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = v0 + v3 + v1[17];
  v11 = type metadata accessor for PermissionTask(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    (*(v5 + 8))(v10 + *(v11 + 20), v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);

  v12 = (v7 + v1[18]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_238085CA0(*v12, v13);
  }

  if (*(v7 + v1[22]))
  {
  }

  if (*(v7 + v1[23]))
  {
  }

  v14 = (v7 + v1[25]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_238085CA0(*v14, v15);
  }

  v16 = (v3 + v19 + v6) & ~v6;

  (*(v5 + 8))(v0 + v16, v4);

  return MEMORY[0x2821FE8E8](v0, v16 + v20, v2 | v6 | 7, v17);
}

uint64_t sub_23812F090(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2381527EC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_238087150;

  return sub_238126454(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_23812F1F4()
{
  v1 = type metadata accessor for DDDeviceDiscoveryView(0);
  v20 = *(*(v1 - 1) + 80);
  v2 = (v20 + 40) & ~v20;
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_2381527EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v19 = *(v5 + 64);
  swift_unknownObjectRelease();

  v7 = v0 + v2;

  v8 = v1[10];
  v9 = sub_238152E1C();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);

  v10 = v0 + v2 + v1[17];
  v11 = type metadata accessor for PermissionTask(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    (*(v5 + 8))(v10 + *(v11 + 20), v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);

  v12 = (v7 + v1[18]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_238085CA0(*v12, v13);
  }

  if (*(v7 + v1[22]))
  {
  }

  if (*(v7 + v1[23]))
  {
  }

  v21 = v4;

  v14 = (v7 + v1[25]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_238085CA0(*v14, v15);
  }

  v16 = (v6 + ((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6;

  (*(v5 + 8))(v0 + v16, v21);

  return MEMORY[0x2821FE8E8](v0, ((((v19 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v20 | v6 | 7, v17);
}

uint64_t sub_23812F5E0(uint64_t a1)
{
  v3 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2381527EC();
  v13 = v1[2];
  v12 = v1[3];
  v11 = v1[4];
  v9 = *(v1 + v5 + 8);
  v10 = *(v1 + v5);
  v6 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_23812699C(a1, v13, v12, v11, v1 + v4, v10, v9, v6);
}

uint64_t sub_23812F7E0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23812F828(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2381525EC();
      swift_allocObject();
      sub_2381525BC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_23815270C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_23812F8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_23812A0A8(sub_23812F948, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_23812F930(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23812F9BC()
{
  v1 = sub_238152B5C();
  v2 = v0;
  result = 0;
  if (v0 >> 60 != 15)
  {
    sub_238085D80(v1, v0);
    v5 = sub_238131B34(v1, v2, v4);
    if (v6)
    {
      v7 = v5;
      sub_238087244(v1, v2);
    }

    else
    {
      v12 = v1;
      v13 = v2;
      sub_238085D80(v1, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED930, &qword_23815EC70);
      if (swift_dynamicCast())
      {
        sub_23812F930(v10, v14);
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v8 = sub_23815554C();
        sub_238087244(v1, v2);
        if (v8)
        {
          __swift_project_boxed_opaque_existential_1(v14, v15);
          sub_23815553C();
          sub_238087244(v1, v2);
          v9 = *&v10[0];
          __swift_destroy_boxed_opaque_existential_1(v14);
          return v9;
        }

        __swift_destroy_boxed_opaque_existential_1(v14);
      }

      else
      {
        sub_238087244(v1, v2);
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        sub_238071284(v10, &unk_27DEED938, &qword_23815EC78);
      }

      v7 = sub_238131910(v1, v2);
    }

    sub_238087244(v1, v2);
    return v7;
  }

  return result;
}

uint64_t sub_23812FBA4()
{
  v1 = sub_238152BAC();
  v2 = *(v1 - 1);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238131658();
  v7 = 0;
  v8 = v6 >> 60;
  if (v6 >> 60 == 15)
  {
    return v7;
  }

  v9 = v5;
  v10 = v6;
  v11 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
LABEL_9:
    if (v11 != 2)
    {
      v7 = 0;
      goto LABEL_15;
    }

    v12 = v1;
    v16 = *(v9 + 16);
    v17 = sub_2381525AC();
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = sub_2381525DC();
    if (!__OFSUB__(v16, v19))
    {
      v1 = (v16 - v19 + v18);
      sub_2381525CC();
      if (v1)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v7 = v5;
  if (!v11)
  {
LABEL_15:
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v20 = sub_23815293C();
    __swift_project_value_buffer(v20, qword_27DEED910);
    (*(v2 + 16))(v4, v0, v1);
    v21 = sub_23815291C();
    v22 = sub_2381550CC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = v8;
      v24 = v23;
      v25 = swift_slowAlloc();
      v35 = v9;
      v26 = v25;
      v37 = v25;
      *v24 = 136315394;
      v27 = sub_238152B3C();
      v28 = v1;
      v30 = v29;
      (*(v2 + 8))(v4, v28);
      v31 = sub_238085EAC(v27, v30, &v37);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v7;
      _os_log_impl(&dword_238060000, v21, v22, "Signature for %s: %ld", v24, 0x16u);
      v32 = __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x2383EA8A0](v26, -1, -1, v32);
      MEMORY[0x2383EA8A0](v24, -1, -1);
      sub_238087244(v35, v10);
    }

    else
    {
      sub_238087244(v9, v10);

      (*(v2 + 8))(v4, v1);
    }

    return v7;
  }

  v12 = v1;
  if (v5 > v5 >> 32)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = sub_2381525AC();
  if (v13)
  {
    v14 = v13;
    v15 = sub_2381525DC();
    if (__OFSUB__(v9, v15))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      sub_2381525CC();
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v1 = (v9 - v15 + v14);
    sub_2381525CC();
    if (v1)
    {
LABEL_13:
      v7 = *v1;
      v1 = v12;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_26:
  result = sub_2381525CC();
  __break(1u);
  return result;
}

uint64_t sub_23812FEFC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_238154B8C();
  v29 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED928, &qword_23815EC68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_238154BDC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238154BEC();
  v11 = sub_238152B5C();
  v13 = v12;

  if (v13 >> 60 == 15)
  {
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v14 = sub_23815293C();
    __swift_project_value_buffer(v14, qword_27DEED910);
    v15 = sub_23815291C();
    v16 = sub_2381550DC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315138;
      v19 = sub_238154BEC();
      v21 = sub_238085EAC(v19, v20, &v31);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_238060000, v15, v16, "Failed to get value for key: %s", v17, 0xCu);
      v22 = __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x2383EA8A0](v18, -1, -1, v22);
      MEMORY[0x2383EA8A0](v17, -1, -1);
    }

    v23 = sub_238154B6C();
    v24 = *(*(v23 - 8) + 56);
    v25 = v23;
    v26 = v30;

    return v24(v26, 1, 1, v25);
  }

  else
  {
    sub_238154BBC();
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    sub_238154BCC();
    sub_238154B7C();
    v28 = sub_238087244(v11, v13);
    (*(v29 + 8))(v3, v1, v28);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_238130414@<X0>(uint64_t a1@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = sub_238152BAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &uu[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (!sub_238152B6C())
  {
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v16 = sub_23815293C();
    __swift_project_value_buffer(v16, qword_27DEED910);
    (*(v4 + 16))(v6, v1, v3);
    v17 = sub_23815291C();
    v18 = sub_2381550EC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *uu = v20;
      *v19 = 136315138;
      v21 = sub_238152B3C();
      v23 = v22;
      (*(v4 + 8))(v6, v3);
      v24 = sub_238085EAC(v21, v23, uu);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_238060000, v17, v18, "Could not convert endpoint to nw_endpoint %s", v19, 0xCu);
      v25 = __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x2383EA8A0](v20, -1, -1, v25);
      MEMORY[0x2383EA8A0](v19, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    goto LABEL_19;
  }

  *uu = 0;
  v31 = 0;
  nw_endpoint_get_service_identifier();
  if (!uuid_is_null(uu))
  {
    sub_2381527BC();
LABEL_17:
    swift_unknownObjectRelease();
    v26 = sub_2381527EC();
    return (*(*(v26 - 8) + 56))(a1, 0, 1, v26);
  }

  if (qword_27DEEA118 != -1)
  {
    swift_once();
  }

  v7 = sub_23815293C();
  __swift_project_value_buffer(v7, qword_27DEED910);
  v8 = sub_23815291C();
  v9 = sub_2381550CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_238060000, v8, v9, "No UUID provided by nw_endpoint_get_service_identifier, attempting to generate one with the wifiSignature", v10, 2u);
    MEMORY[0x2383EA8A0](v10, -1, -1);
  }

  v11 = sub_23812FBA4();
  if ((v12 & 1) == 0)
  {
    sub_2381313E4(v11, a1);
    goto LABEL_17;
  }

  v13 = sub_23815291C();
  v14 = sub_2381550DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_238060000, v13, v14, "No signature to create UUID with, unable to create UUID", v15, 2u);
    MEMORY[0x2383EA8A0](v15, -1, -1);
  }

  swift_unknownObjectRelease();
LABEL_19:
  v28 = sub_2381527EC();
  return (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
}

uint64_t sub_238130894()
{
  v1 = v0;
  v2 = sub_238154BAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_238152E1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v9, v1, v6);
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CD90A0])
  {
    (*(v7 + 96))(v9, v6);

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA0, &qword_23815A7B0) + 64);
    sub_238154B9C();
    (*(v3 + 8))(v5, v2);
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v13 = sub_23815293C();
    __swift_project_value_buffer(v13, qword_27DEED910);
    v14 = sub_23815291C();
    v15 = sub_2381550FC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_238060000, v14, v15, "Successfully decoded custom data as WABrowserAgentInterface.DescriptorToAgent, returning true for isWifiAware", v16, 2u);
      MEMORY[0x2383EA8A0](v16, -1, -1);
    }

    sub_238085CA0(v11, v10);

    v17 = sub_238152E0C();
    (*(*(v17 - 8) + 8))(&v9[v12], v17);
    return 1;
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }
}

uint64_t sub_238130D2C()
{
  v1 = sub_238152E1C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_238130894() & 1) == 0)
  {
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v15 = sub_23815293C();
    __swift_project_value_buffer(v15, qword_27DEED910);
    v16 = sub_23815291C();
    v17 = sub_2381550DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_238060000, v16, v17, "Attempted to fetch wifiAwareServiceName on a non-wifiAware descriptor, returning nil", v18, 2u);
      MEMORY[0x2383EA8A0](v18, -1, -1);
    }

    return 0;
  }

  (*(v2 + 16))(v4, v0, v1);
  if ((*(v2 + 88))(v4, v1) != *MEMORY[0x277CD90A0])
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  (*(v2 + 96))(v4, v1);
  v5 = *v4;
  v6 = v4[1];
  sub_238085CA0(v4[2], v4[3]);
  if (qword_27DEEA118 != -1)
  {
    swift_once();
  }

  v7 = sub_23815293C();
  __swift_project_value_buffer(v7, qword_27DEED910);

  v8 = sub_23815291C();
  v9 = sub_2381550FC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_238085EAC(v5, v6, &v21);
    _os_log_impl(&dword_238060000, v8, v9, "Successfully got wifiAwareServiceName from descriptor: %s", v10, 0xCu);
    v12 = __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2383EA8A0](v11, -1, -1, v12);
    MEMORY[0x2383EA8A0](v10, -1, -1);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA0, &qword_23815A7B0) + 64);
  v14 = sub_238152E0C();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  return v5;
}

uint64_t sub_23813109C()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEED910);
  __swift_project_value_buffer(v0, qword_27DEED910);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

uint64_t sub_238131128(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_238152BAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_238152B6C())
  {
    if (a2())
    {
      v8 = sub_238154DEC();
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        return v8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v13 = sub_23815293C();
    __swift_project_value_buffer(v13, qword_27DEED910);
    (*(v5 + 16))(v7, a1, v4);
    v14 = sub_23815291C();
    v15 = sub_2381550EC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      v18 = sub_238152B3C();
      v20 = v19;
      (*(v5 + 8))(v7, v4);
      v21 = sub_238085EAC(v18, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_238060000, v14, v15, "Could not convert endpoint to nw_endpoint %s", v16, 0xCu);
      v22 = __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x2383EA8A0](v17, -1, -1, v22);
      MEMORY[0x2383EA8A0](v16, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  return 0;
}

void sub_2381313E4(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2381527EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2381527BC();
  if (qword_27DEEA118 != -1)
  {
    swift_once();
  }

  v8 = sub_23815293C();
  __swift_project_value_buffer(v8, qword_27DEED910);
  (*(v5 + 16))(v7, a2, v4);
  v9 = sub_23815291C();
  v10 = sub_2381550CC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    v13 = sub_23815279C();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_238085EAC(v13, v15, &v19);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a1;
    _os_log_impl(&dword_238060000, v9, v10, "Created UUID: %s from %ld", v11, 0x16u);
    v17 = __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2383EA8A0](v12, -1, -1, v17);
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_238131658()
{
  v1 = sub_238152BAC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DEEA118 != -1)
  {
    swift_once();
  }

  v5 = sub_23815293C();
  __swift_project_value_buffer(v5, qword_27DEED910);
  (*(v2 + 16))(v4, v0, v1);
  v6 = sub_23815291C();
  v7 = sub_2381550CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_238152B3C();
    v12 = v11;
    (*(v2 + 8))(v4, v1);
    v13 = sub_238085EAC(v10, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_238060000, v6, v7, "Attempted to fetch signature data for %s", v8, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2383EA8A0](v9, -1, -1, v14);
    MEMORY[0x2383EA8A0](v8, -1, -1);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  return sub_238152B5C();
}

void *sub_23813189C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD18, &qword_238158C98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_238131910(uint64_t a1, unint64_t a2)
{
  sub_238085D80(a1, a2);
  sub_2381319B8(a1, a2);
  v4 = sub_238154D5C();

  return v4;
}

uint64_t sub_23813197C@<X0>(uint64_t *a3@<X8>)
{
  result = sub_238154D5C();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_2381319B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_23815276C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_238085CA0(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_23813189C(v10, 0);
      v14 = sub_2381526FC();
      v15 = sub_238085CA0(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v8, v4, v15);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_238131B34(uint64_t a1, unint64_t a2, __n128 a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_238154D5C();
    }

    goto LABEL_10;
  }

  if (v3 != 2)
  {
    return sub_238154D5C();
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  a1 = sub_2381525AC();
  if (a1)
  {
    a1 = sub_2381525DC();
    if (__OFSUB__(v4, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v5, v4))
  {
    __break(1u);
LABEL_10:
    v6 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_2381525AC() || !__OFSUB__(v6, sub_2381525DC()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_2381525CC();
  return sub_238154D5C();
}

double sub_238131E44(uint64_t a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = (a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss);
  v5 = *(a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss);
  v6 = *(a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss + 8);
  *v4 = v3;
  v4[1] = v2;

  return sub_23807A454(v5, v6);
}

uint64_t sub_238131EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238132E40();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_238131F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238132E40();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_238131FA8(uint64_t a1)
{
  sub_238132E40();
  sub_23815408C();
  __break(1u);
}

id sub_238131FD0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController;
  v4 = *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController];
  if (v4)
  {
    v5 = *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController];
  }

  else
  {
    sub_238132034(v2, a2);
    v6 = *&v2[v3];
    *&v2[v3] = v7;
    v5 = v7;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_238132034(char *a1, uint64_t a2)
{
  type metadata accessor for CNDDUISecureContactViewController(a1, a2);
  v3 = [swift_getObjCClassFromMetadata() viewControllerForContact_];
  [v3 setAllowsEditing_];
  [v3 setActions_];
  [v3 setDisplayMode_];
  [v3 setDelegate_];

  v4 = sub_23807CB28(1);
  v6 = type metadata accessor for SnapshottingContactViewController(v4, v5);
  v39 = v6;
  aBlock[0] = a1;
  v7 = a1;
  v8 = sub_238154C8C();

  if (v6)
  {
    v9 = __swift_project_boxed_opaque_existential_1(aBlock, v6);
    v10 = *(v6 - 8);
    MEMORY[0x28223BE20](v9);
    v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_2381555BC();
    (*(v10 + 8))(v12, v6);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v15 = [v14 initWithTitle:v8 style:2 target:v13 action:{sel_didTapDone, aBlock[0]}];

  swift_unknownObjectRelease();
  v16 = v3;
  v17 = [v16 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2381590E0;
  *(v18 + 32) = v15;
  sub_23807A3F8(0, &qword_27DEED9F8, 0x277D751E0);
  v19 = v15;
  v20 = sub_238154ECC();

  [v17 setLeftBarButtonItems_];

  v21 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  v22 = [v21 view];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_opt_self() mainScreen];
    [v24 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    [v23 setFrame_];
    v33 = objc_opt_self();
    v34 = swift_allocObject();
    *(v34 + 16) = v21;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_238132ECC;
    *(v35 + 24) = v34;
    v40 = sub_23807BEF4;
    v41 = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23813264C;
    v39 = &block_descriptor_9;
    v36 = _Block_copy(aBlock);
    v21;

    [v33 performWithoutAnimation_];

    _Block_release(v36);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

id sub_2381324F8(void *a1)
{
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
  result = [a1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = result;
  [result setNeedsLayout];

  result = [a1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = result;
  [result layoutIfNeeded];

  [a1 beginAppearanceTransition:1 animated:0];

  return [a1 endAppearanceTransition];
}

void sub_23813275C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_238131FD0(a1, a2);
    [v2 addChildViewController_];

    v4 = [v2 view];
    if (v4)
    {
      v5 = v4;
      v6 = OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController;
      v7 = [*&v2[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController] view];
      if (v7)
      {
        v8 = v7;
        [v5 addSubview_];

        v9 = [*&v2[v6] view];
        if (v9)
        {
          v10 = v9;
          [v9 setAlpha_];

          v11 = objc_opt_self();
          v12 = swift_allocObject();
          *(v12 + 16) = v2;
          v45 = sub_23813331C;
          v46 = v12;
          aBlock = MEMORY[0x277D85DD0];
          v42 = 1107296256;
          v43 = sub_238106D10;
          v44 = &block_descriptor_35;
          v13 = _Block_copy(&aBlock);
          v14 = v2;

          v15 = swift_allocObject();
          *(v15 + 16) = v14;
          v45 = sub_238133324;
          v46 = v15;
          aBlock = MEMORY[0x277D85DD0];
          v42 = 1107296256;
          v43 = sub_23811A13C;
          v44 = &block_descriptor_41;
          v16 = _Block_copy(&aBlock);
          v17 = v14;

          [v11 animateWithDuration:v13 animations:v16 completion:0.3];
          _Block_release(v16);
          _Block_release(v13);
          return;
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_snapshotView;
  v19 = [*&v2[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_snapshotView] removeFromSuperview];
  v21 = sub_238131FD0(v19, v20);
  v22 = [v21 view];

  if (!v22)
  {
    goto LABEL_16;
  }

  v23 = [v22 snapshotViewAfterScreenUpdates_];

  v24 = *&v2[v18];
  *&v2[v18] = v23;
  v25 = v23;

  if (v25)
  {
    v26 = v25;
    v27 = [v2 view];
    if (!v27)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v28 = v27;
    [v27 addSubview_];
  }

  v29 = *&v2[v18];
  if (v29)
  {
    v30 = objc_opt_self();
    v40 = v29;
    v31 = [v30 mainScreen];
    [v31 bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    [v40 setFrame_];
  }
}

void sub_238132B28(uint64_t a1, uint64_t a2)
{
  v2 = sub_238131FD0(a1, a2);
  v3 = [v2 view];

  if (v3)
  {
    [v3 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

id sub_238132CF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_238132DEC()
{
  result = qword_27DEED9E0;
  if (!qword_27DEED9E0)
  {
    result = swift_getWitnessTable(byte_23815EDE0, &type metadata for SnapshottingContactViewController.Phase, v0, v1);
    atomic_store(result, &qword_27DEED9E0);
  }

  return result;
}

unint64_t sub_238132E40()
{
  result = qword_27DEED9E8;
  if (!qword_27DEED9E8)
  {
    result = swift_getWitnessTable(byte_23815ED28, &type metadata for SnapshottingContactView, v0, v1);
    atomic_store(result, &qword_27DEED9E8);
  }

  return result;
}

uint64_t sub_238132E94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_238132EFC()
{
  v0 = sub_2381549FC();
  v25 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_238154A2C();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238154A4C();
  v21 = v6;
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  sub_23807A3F8(0, &qword_27DEEBA50, 0x277D85C78);
  v13 = sub_23815517C();
  sub_238154A3C();
  sub_238154A6C();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v15 = swift_allocObject();
  v16 = v22;
  *(v15 + 16) = v22;
  aBlock[4] = sub_238133278;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238106D10;
  aBlock[3] = &block_descriptor_29;
  v17 = _Block_copy(aBlock);
  v18 = v16;

  sub_238154A0C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2380D0B70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
  sub_2381332B8();
  sub_23815537C();
  MEMORY[0x2383E9780](v12, v5, v2, v17);
  _Block_release(v17);

  (*(v25 + 8))(v2, v0);
  (*(v23 + 8))(v5, v24);
  return (v14)(v12, v21);
}

void sub_238133278(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase);
  *(v3 + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase) = 1;
  if ((v4 & 1) == 0)
  {
    sub_23813275C(1, a2);
  }
}

unint64_t sub_2381332B8()
{
  result = qword_27DEEBC90;
  if (!qword_27DEEBC90)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECFC0, &qword_23815ABE0);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_27DEEBC90);
  }

  return result;
}

uint64_t sub_238133364(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2381333B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI17NameDropViewModelV11HeaderStateOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3 - 1;
  if (v2 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_SaySSG7symbols_SS4textSS13secondaryLinetSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI17NameDropViewModelV20ContactProviderStateOSg(unint64_t *a1)
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

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2381334BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238133504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_23813358C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    sub_23813393C(0, a2);
    return sub_23815523C() & 1;
  }

  return result;
}

BOOL sub_238133638(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_238133668@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_238133694@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_238133780@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23813379C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_238133988(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_2381337E0()
{
  result = qword_27DEEDA00;
  if (!qword_27DEEDA00)
  {
    result = swift_getWitnessTable(aQ_3, &type metadata for NameDropViewModel.Buttons, v0, v1);
    atomic_store(result, &qword_27DEEDA00);
  }

  return result;
}

unint64_t sub_238133838()
{
  result = qword_27DEEDA08;
  if (!qword_27DEEDA08)
  {
    result = swift_getWitnessTable(byte_23815F048, &type metadata for NameDropViewModel.Buttons, v0, v1);
    atomic_store(result, &qword_27DEEDA08);
  }

  return result;
}

unint64_t sub_238133890()
{
  result = qword_27DEEDA10;
  if (!qword_27DEEDA10)
  {
    result = swift_getWitnessTable(byte_23815F0A0, &type metadata for NameDropViewModel.Buttons, v0, v1);
    atomic_store(result, &qword_27DEEDA10);
  }

  return result;
}

unint64_t sub_2381338E8()
{
  result = qword_27DEEDA18;
  if (!qword_27DEEDA18)
  {
    result = swift_getWitnessTable(byte_23815F0D8, &type metadata for NameDropViewModel.Buttons, v0, v1);
    atomic_store(result, &qword_27DEEDA18);
  }

  return result;
}

unint64_t sub_23813393C(uint64_t a1, uint64_t a2)
{
  result = qword_27DEEBFF0;
  if (!qword_27DEEBFF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEEBFF0);
  }

  return result;
}

uint64_t sub_238133988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2381339C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238133A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_238133A80(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HighlightedStringView(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x96)
  {
    goto LABEL_17;
  }

  if (a2 + 65386 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65386 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65386;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65386;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65386;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x6B;
  v8 = v6 - 107;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for HighlightedStringView(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65386 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65386 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x96)
  {
    v4 = 0;
  }

  if (a2 > 0x95)
  {
    v5 = ((a2 - 150) >> 16) + 1;
    *result = a2 - 150;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 106;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_238133C48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v39 = BYTE1(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEAC30, &qword_2381584F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDA20, &qword_23815F360);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDA28, &qword_23815F368);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v38 = &v37 - v11;
  v12 = sub_23815264C();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_23815260C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v40 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  sub_23807CB28(a1);
  sub_23815263C();
  sub_23815261C();
  v43[0] = sub_23807CB28(v39);
  v43[1] = v19;
  v20 = sub_2381527FC();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_2381340C4();
  sub_2380704A0();
  sub_23815267C();
  sub_238071284(v5, &unk_27DEEAC30, &qword_2381584F0);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v21 = &qword_27DEEDA20;
    v22 = &qword_23815F360;
    v23 = v8;
  }

  else
  {
    v24 = v38;
    sub_23813411C(v8, v38);
    v25 = [objc_opt_self() systemBlueColor];
    v26 = sub_23815465C();
    sub_23813418C();
    v27 = sub_23815262C();
    v42 = v26;
    sub_2381341F0();
    sub_23815265C();
    v27(v43, 0);
    v21 = &qword_27DEEDA28;
    v22 = &qword_23815F368;
    v23 = v24;
  }

  sub_238071284(v23, v21, v22);
  (*(v14 + 16))(v40, v18, v13);
  v28 = sub_23815437C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  result = (*(v14 + 8))(v18, v13);
  v36 = v41;
  *v41 = v28;
  v36[1] = v30;
  *(v36 + 16) = v32 & 1;
  v36[3] = v34;
  return result;
}

unint64_t sub_2381340C4()
{
  result = qword_27DEEDA30;
  if (!qword_27DEEDA30)
  {
    v3 = sub_23815260C();
    result = swift_getWitnessTable(MEMORY[0x277CC8C38], v3, v0, v1);
    atomic_store(result, &qword_27DEEDA30);
  }

  return result;
}

uint64_t sub_23813411C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDA28, &qword_23815F368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23813418C()
{
  result = qword_27DEEDA38;
  if (!qword_27DEEDA38)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDA28, &qword_23815F368);
    result = swift_getWitnessTable(MEMORY[0x277D83D30], v3, v0, v1);
    atomic_store(result, &qword_27DEEDA38);
  }

  return result;
}

unint64_t sub_2381341F0()
{
  result = qword_27DEEDA40;
  if (!qword_27DEEDA40)
  {
    result = swift_getWitnessTable(MEMORY[0x277CDF228], MEMORY[0x277CDF230], v0, v1);
    atomic_store(result, &qword_27DEEDA40);
  }

  return result;
}

uint64_t sub_238134264(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8D0, &unk_238158120);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_23813445C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8D0, &unk_238158120);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for _DDDevicePickerView(uint64_t a1)
{
  result = qword_27DEEDA70;
  if (!qword_27DEEDA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23813468C(uint64_t a1)
{
  sub_238134A04(319);
  if (v1 <= 0x3F)
  {
    sub_238134A98(319);
    if (v2 <= 0x3F)
    {
      sub_238134C78(319, &qword_27DEEA350, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_238134B2C(319, &qword_27DEEA360, MEMORY[0x277CDFA28]);
        if (v4 <= 0x3F)
        {
          sub_238134C14(319, &qword_27DEEA900, &qword_27DEEA850, &qword_2381580D8, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_238134C78(319, &qword_27DEEA368, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_238134B2C(319, &qword_27DEEA358, MEMORY[0x277CDFAA0]);
              if (v7 <= 0x3F)
              {
                sub_238134B2C(319, &qword_27DEEA910, MEMORY[0x277CDF3E0]);
                if (v8 <= 0x3F)
                {
                  sub_23807A964(319);
                  if (v9 <= 0x3F)
                  {
                    sub_238134B80(319);
                    if (v10 <= 0x3F)
                    {
                      sub_23807A9F8(319);
                      if (v11 <= 0x3F)
                      {
                        sub_23812A958(319);
                        if (v12 <= 0x3F)
                        {
                          sub_238134C14(319, &qword_27DEEDA98, &qword_27DEEBB70, &qword_238159970, MEMORY[0x277CE10B8]);
                          if (v13 <= 0x3F)
                          {
                            sub_238134C78(319, &unk_27DEECD90, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
                            if (v14 <= 0x3F)
                            {
                              sub_238067930();
                              if (v15 <= 0x3F)
                              {
                                sub_238134C78(319, &qword_27DEED710, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                                if (v16 <= 0x3F)
                                {
                                  type metadata accessor for CGSize(319);
                                  if (v17 <= 0x3F)
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
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_238134A04(uint64_t a1)
{
  if (!qword_27DEEDA80)
  {
    type metadata accessor for DeviceBrowserViewModel(255);
    sub_23814F050(&unk_27DEED8B0, type metadata accessor for DeviceBrowserViewModel, a5_0);
    v1 = sub_2381539EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEDA80);
    }
  }
}

void sub_238134A98(uint64_t a1)
{
  if (!qword_27DEEDA88)
  {
    type metadata accessor for _DDContactInfoCache(255);
    sub_23814F050(&qword_27DEEC608, type metadata accessor for _DDContactInfoCache, byte_23815B404);
    v1 = sub_2381539EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEDA88);
    }
  }
}

void sub_238134B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23815380C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_238134B80(uint64_t a1)
{
  if (!qword_27DEEDA90)
  {
    type metadata accessor for _DDWirelessSettingsController(255);
    sub_23814F050(&unk_27DEED8A0, type metadata accessor for _DDWirelessSettingsController, asc_23815DBE4);
    v1 = sub_2381539EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEDA90);
    }
  }
}

void sub_238134C14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_238134C78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_238134D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_238153EBC();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_238153ECC();
}

uint64_t sub_238134E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_238153EBC();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_238153ECC();
}

uint64_t sub_238134F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2380712E4(a3, v22 - v9, &qword_27DEEBA00, &qword_23815B4A0);
  v11 = sub_238154FBC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_238071284(v10, &qword_27DEEBA00, &qword_23815B4A0);
  }

  else
  {
    sub_238154FAC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_238154F3C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_238154D3C() + 32;
      sub_23815362C();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);
  sub_23815362C();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2381351E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2380712E4(a3, v23 - v10, &qword_27DEEBA00, &qword_23815B4A0);
  v12 = sub_238154FBC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238071284(v11, &qword_27DEEBA00, &qword_23815B4A0);
  }

  else
  {
    sub_238154FAC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_238154F3C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_238154D3C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);

      return v21;
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

  sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

__n128 sub_23813549C@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  result = v7;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_238135540(__int128 *a1, void **a2)
{
  v2 = a1[3];
  v16 = a1[2];
  v17 = v2;
  v18 = *(a1 + 64);
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23808E888(&v14, v12);
  sub_238152A8C();

  v12[2] = v9;
  v12[3] = v10;
  v13 = v11;
  v12[0] = v7;
  v12[1] = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v7 = v14;
  v8 = v15;
  sub_23808E888(&v14, v6);
  v4;
  sub_238152A9C();
  sub_238088B04(v12);
  sub_23808E828(v12);
  return sub_23808E828(&v14);
}

uint64_t sub_238135680(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_23815486C();
      v5 = sub_238154F0C();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v12 = sub_23815486C();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

void sub_2381357DC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_23813585C(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_238152A9C();
}

uint64_t sub_2381358CC()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEDA48);
  __swift_project_value_buffer(v0, qword_27DEEDA48);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

uint64_t sub_238135928@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for _DDDevicePickerView(0);
  sub_2380712E4(v1 + *(v10 + 28), v9, &qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_238153A0C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2381550EC();
    v13 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_238135B30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for _DDDevicePickerView(0);
  sub_2380712E4(v1 + *(v10 + 32), v9, &unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23807121C(v9, a1, &qword_27DEEA850, &qword_2381580D8);
  }

  sub_2381550EC();
  v12 = sub_2381540CC();
  sub_23815290C();

  sub_238153CEC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_238135D18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for _DDDevicePickerView(0);
  sub_2380712E4(v1 + *(v10 + 36), v9, &unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23807121C(v9, a1, &qword_27DEEA850, &qword_2381580D8);
  }

  sub_2381550EC();
  v12 = sub_2381540CC();
  sub_23815290C();

  sub_238153CEC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_238135F00()
{
  v1 = sub_238153CFC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for _DDDevicePickerView(0) + 40));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_2381550EC();
  v8 = sub_2381540CC();
  sub_23815290C();

  sub_238153CEC();
  swift_getAtKeyPath();
  v9 = sub_2380700D8(v6, 0);
  (*(v2 + 8))(v4, v1, v9);
  return *&v10[1];
}

uint64_t sub_23813605C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for _DDDevicePickerView(0);
  sub_2380712E4(v1 + *(v10 + 44), v9, &qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_238153A2C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2381550EC();
    v13 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_238136264@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for _DDDevicePickerView(0);
  sub_2380712E4(v1 + *(v10 + 48), v9, &qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2381537EC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2381550EC();
    v13 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void *sub_23813646C()
{
  result = sub_238154F0C();
  result[2] = 6;
  result[4] = 9142498;
  result[5] = 0xA300000000000000;
  result[6] = 9142498;
  result[7] = 0xA300000000000000;
  result[8] = 9142498;
  result[9] = 0xA300000000000000;
  result[10] = 9142498;
  result[11] = 0xA300000000000000;
  result[12] = 9142498;
  result[13] = 0xA300000000000000;
  result[14] = 9142498;
  result[15] = 0xA300000000000000;
  qword_27DEEDA60 = result;
  return result;
}

uint64_t sub_2381364CC()
{
  v1 = sub_238153F1C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v46 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA848, &qword_2381580D0);
  v5 = MEMORY[0x28223BE20](v4);
  v54 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v43[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA850, &qword_2381580D8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v45 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v52 = &v43[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v53 = &v43[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v43[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v43[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v43[-v21];
  v51 = v0;
  sub_238135B30(&v43[-v21]);
  v23 = v2[13];
  v49 = *MEMORY[0x277CE0560];
  v48 = v23;
  v23(v20);
  v47 = v2[7];
  v47(v20, 0, 1, v1);
  v50 = v4;
  v24 = *(v4 + 48);
  sub_2380712E4(v22, v8, &qword_27DEEA850, &qword_2381580D8);
  sub_2380712E4(v20, &v8[v24], &qword_27DEEA850, &qword_2381580D8);
  v57 = v2;
  v25 = v2[6];
  if (v25(v8, 1, v1) == 1)
  {
    v55 = v25;
    sub_238071284(v20, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v22, &qword_27DEEA850, &qword_2381580D8);
    if (v55(&v8[v24], 1, v1) == 1)
    {
      sub_238071284(v8, &qword_27DEEA850, &qword_2381580D8);
      goto LABEL_8;
    }

LABEL_6:
    v27 = v8;
LABEL_14:
    sub_238071284(v27, &qword_27DEEA848, &qword_2381580D0);
    goto LABEL_15;
  }

  v26 = v56;
  sub_2380712E4(v8, v56, &qword_27DEEA850, &qword_2381580D8);
  if (v25(&v8[v24], 1, v1) == 1)
  {
    sub_238071284(v20, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v22, &qword_27DEEA850, &qword_2381580D8);
    (v57[1])(v26, v1);
    goto LABEL_6;
  }

  v55 = v25;
  v28 = &v8[v24];
  v29 = v46;
  (v57[4])(v46, v28, v1);
  sub_23814F050(&qword_27DEEA858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v44 = sub_238154C7C();
  v30 = v57[1];
  v30(v29, v1);
  sub_238071284(v20, &qword_27DEEA850, &qword_2381580D8);
  sub_238071284(v22, &qword_27DEEA850, &qword_2381580D8);
  v30(v56, v1);
  sub_238071284(v8, &qword_27DEEA850, &qword_2381580D8);
  if ((v44 & 1) == 0)
  {
LABEL_15:
    v36 = 0;
    return v36 & 1;
  }

LABEL_8:
  v31 = v53;
  sub_238135D18(v53);
  v32 = v52;
  v48(v52, v49, v1);
  v47(v32, 0, 1, v1);
  v33 = *(v50 + 48);
  v34 = v54;
  sub_2380712E4(v31, v54, &qword_27DEEA850, &qword_2381580D8);
  sub_2380712E4(v32, &v34[v33], &qword_27DEEA850, &qword_2381580D8);
  v35 = v55;
  if (v55(v34, 1, v1) != 1)
  {
    v37 = v45;
    sub_2380712E4(v34, v45, &qword_27DEEA850, &qword_2381580D8);
    if (v35(&v34[v33], 1, v1) != 1)
    {
      v39 = v32;
      v40 = v57;
      v41 = v46;
      (v57[4])(v46, &v34[v33], v1);
      sub_23814F050(&qword_27DEEA858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v36 = sub_238154C7C();
      v42 = v40[1];
      v42(v41, v1);
      sub_238071284(v39, &qword_27DEEA850, &qword_2381580D8);
      sub_238071284(v31, &qword_27DEEA850, &qword_2381580D8);
      v42(v37, v1);
      sub_238071284(v34, &qword_27DEEA850, &qword_2381580D8);
      return v36 & 1;
    }

    sub_238071284(v32, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v31, &qword_27DEEA850, &qword_2381580D8);
    (v57[1])(v37, v1);
    goto LABEL_13;
  }

  sub_238071284(v32, &qword_27DEEA850, &qword_2381580D8);
  sub_238071284(v31, &qword_27DEEA850, &qword_2381580D8);
  if (v35(&v34[v33], 1, v1) != 1)
  {
LABEL_13:
    v27 = v34;
    goto LABEL_14;
  }

  sub_238071284(v34, &qword_27DEEA850, &qword_2381580D8);
  v36 = 1;
  return v36 & 1;
}

uint64_t sub_238136C8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for _DDDevicePickerView(0);
  v4 = *(v3 - 8);
  v59 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v5;
  v7 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAE0, &unk_23815F450);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAD8, &qword_23815F448);
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v60 = &v35 - v11;
  *v10 = sub_238153DEC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB48, &unk_23815F488);
  sub_238137478(v1, &v10[*(v12 + 44)]);
  sub_23814EF88(v1, v7, type metadata accessor for _DDDevicePickerView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = *(v4 + 80);
  v15 = swift_allocObject();
  sub_23814E8B0(v7, v15 + v13, type metadata accessor for _DDDevicePickerView);
  v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAF8, &qword_23815F460) + 36)];
  v44 = v10;
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = sub_238149C38;
  *(v16 + 3) = v15;
  v39 = v2;
  sub_23814EF88(v2, v7, type metadata accessor for _DDDevicePickerView);
  v17 = swift_allocObject();
  sub_23814E8B0(v7, v17 + v13, type metadata accessor for _DDDevicePickerView);
  v18 = &v10[*(v8 + 36)];
  *v18 = sub_238149C50;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  *&v66 = sub_23807CB28(96);
  *(&v66 + 1) = v19;
  sub_2380704A0();
  v50 = sub_23815438C();
  v49 = v20;
  v45 = v21;
  v48 = v22;
  v23 = v2 + *(v59 + 84);
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v61) = v24;
  *(&v61 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815472C();
  v40 = *(&v66 + 1);
  v38 = v66;
  v41 = v67;
  sub_23814EF88(v2, v7, type metadata accessor for _DDDevicePickerView);
  v26 = swift_allocObject();
  sub_23814E8B0(v7, v26 + v13, type metadata accessor for _DDDevicePickerView);
  v53 = type metadata accessor for _DDDevicePickerView;
  sub_23814EF88(v2, v7, type metadata accessor for _DDDevicePickerView);
  v54 = v6;
  v51 = v14;
  v36 = swift_allocObject();
  v52 = type metadata accessor for _DDDevicePickerView;
  sub_23814E8B0(v7, v36 + v13, type metadata accessor for _DDDevicePickerView);
  sub_23814EF88(v2, v7, type metadata accessor for _DDDevicePickerView);
  v37 = swift_allocObject();
  sub_23814E8B0(v7, v37 + v13, type metadata accessor for _DDDevicePickerView);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA10, &qword_238158270);
  v43 = sub_23814965C();
  v46 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
  v47 = sub_23807B04C();
  LOBYTE(v14) = v45;
  v27 = v50;
  v28 = v49;
  v29 = v44;
  sub_23815450C();

  sub_238070490(v27, v28, v14 & 1);

  sub_238071284(v29, &qword_27DEEDAE0, &unk_23815F450);

  v30 = v39;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v63 = v68;
  v64 = v69;
  v65 = v70;
  v61 = v66;
  v62 = v67;
  sub_23814EF88(v30, v7, v53);
  v31 = swift_allocObject();
  sub_23814E8B0(v7, v31 + v13, v52);
  *&v66 = v58;
  *(&v66 + 1) = v42;
  *&v67 = MEMORY[0x277CE0BD8];
  *(&v67 + 1) = &type metadata for _DDPinEntryAlertView;
  *&v68 = v43;
  *(&v68 + 1) = v46;
  *&v69 = MEMORY[0x277CE0BC8];
  *(&v69 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  sub_2380D0648();
  v32 = v55;
  v33 = v60;
  sub_23815455C();

  v68 = v63;
  v69 = v64;
  v70 = v65;
  v66 = v61;
  v67 = v62;
  sub_23808E828(&v66);
  return (*(v56 + 8))(v33, v32);
}

uint64_t sub_238137478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v212 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB60, &qword_23815F540);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v213 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v211 = &v176 - v6;
  *&v216 = type metadata accessor for _DDDevicePickerView(0);
  v196 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v197 = v7;
  v198 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB68, &qword_23815F548);
  v200 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v199 = &v176 - v8;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB70, &qword_23815F550);
  MEMORY[0x28223BE20](v201);
  v202 = &v176 - v9;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB78, &qword_23815F558);
  MEMORY[0x28223BE20](v207);
  v203 = &v176 - v10;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB80, &qword_23815F560);
  MEMORY[0x28223BE20](v205);
  v206 = &v176 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB88, &qword_23815F568);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v210 = &v176 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v218 = &v176 - v15;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB90, &unk_23815F570);
  MEMORY[0x28223BE20](v195);
  v187 = &v176 - v16;
  v17 = sub_2381547FC();
  v183 = *(v17 - 8);
  v184 = v17;
  MEMORY[0x28223BE20](v17);
  v182 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F0, &qword_23815C8C0);
  v19 = MEMORY[0x28223BE20](v181);
  v185 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v180 = &v176 - v22;
  MEMORY[0x28223BE20](v21);
  v186 = &v176 - v23;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB98, &qword_23815F580);
  MEMORY[0x28223BE20](v177);
  v25 = &v176 - v24;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBA0, &qword_23815F588);
  MEMORY[0x28223BE20](v178);
  v27 = &v176 - v26;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBA8, &qword_23815F590);
  v209 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v29 = &v176 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBB0, &qword_23815F598);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v179 = &v176 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v176 = &v176 - v34;
  MEMORY[0x28223BE20](v33);
  v190 = &v176 - v35;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBB8, &qword_23815F5A0);
  MEMORY[0x28223BE20](v193);
  v194 = &v176 - v36;
  *&v189 = sub_238152F3C();
  *&v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v38 = &v176 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBC0, &qword_23815F5A8);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v176 - v40;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBC8, &qword_23815F5B0);
  MEMORY[0x28223BE20](v191);
  v43 = &v176 - v42;
  *&v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBD0, &qword_23815F5B8);
  v214 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v192 = &v176 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBD8, &qword_23815F5C0);
  v46 = MEMORY[0x28223BE20](v45 - 8);
  v217 = &v176 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v220 = &v176 - v48;
  v221 = a1;
  v49 = sub_238139870();
  v208 = sub_2381533AC();
  v50 = MEMORY[0x2383E79D0]();
  v51 = sub_23815337C();

  if ((((v49 - 3) < 0xFEu) & ~v51) != 0 || v49 == 3)
  {
    (*(v214 + 56))(v220, 1, 1, v219);
    v59 = v221;
  }

  else
  {
    v52 = v221;
    v53 = *(v221 + 8);
    v54 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType;
    if (*(v53 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) == 2)
    {
      *v41 = sub_238153DEC();
      *(v41 + 1) = 0;
      v41[16] = 1;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCA8, &qword_23815F7D0);
      sub_2381433E4(v52, &v41[*(v55 + 44)]);
      sub_238139870();
      if (*(v53 + v54) == 1 && (sub_238152F1C(), v56 = sub_238152EEC(), (*(v188 + 8))(v38, v189), (v56 & 1) != 0))
      {
        v57 = 0;
        v58 = 0x4024000000000000;
      }

      else
      {
        v58 = 0x4030000000000000;
        v57 = 0x4030000000000000;
      }

      v62 = v192;
      v63 = sub_2381540FC();
      sub_23807121C(v41, v43, &qword_27DEEDBC0, &qword_23815F5A8);
      v64 = &v43[*(v191 + 36)];
      *v64 = v63;
      *(v64 + 1) = v58;
      *(v64 + 2) = 0x4030000000000000;
      *(v64 + 3) = v57;
      *(v64 + 4) = 0x4030000000000000;
      v64[40] = 0;
      sub_2380712E4(v43, v194, &qword_27DEEDBC8, &qword_23815F5B0);
      swift_storeEnumTagMultiPayload();
      sub_23814BF64();
      sub_2380711D4(&qword_27DEEDCA0, &qword_27DEEDB90, &unk_23815F570, MEMORY[0x277CE14C0]);
      sub_238153ECC();
      v65 = v43;
      v66 = &qword_27DEEDBC8;
      v67 = &qword_23815F5B0;
    }

    else
    {
      sub_238139B64(v29);
      if (sub_238139870() == 2)
      {
        v60 = sub_2381540FC();
        sub_2380712E4(v29, v27, &qword_27DEEDBA8, &qword_23815F590);
        v27[*(v178 + 36)] = v60;
        sub_2380712E4(v27, v25, &qword_27DEEDBA0, &qword_23815F588);
        swift_storeEnumTagMultiPayload();
        sub_23814BDFC();
        sub_23814BEB4();
        v61 = v176;
        sub_238153ECC();
        sub_238071284(v27, &qword_27DEEDBA0, &qword_23815F588);
      }

      else
      {
        sub_2380712E4(v29, v25, &qword_27DEEDBA8, &qword_23815F590);
        swift_storeEnumTagMultiPayload();
        sub_23814BDFC();
        sub_23814BEB4();
        v61 = v176;
        sub_238153ECC();
      }

      v68 = v182;
      sub_238071284(v29, &qword_27DEEDBA8, &qword_23815F590);
      sub_23807121C(v61, v190, &qword_27DEEDBB0, &qword_23815F598);
      sub_2381547EC();
      v69 = sub_2381540EC();
      sub_238152EFC();
      v70 = sub_238152EEC();
      (*(v188 + 8))(v38, v189);
      v71 = 0uLL;
      v72 = 0uLL;
      if (v70)
      {
        sub_23815377C();
        *(&v72 + 1) = v73;
        *(&v71 + 1) = v74;
      }

      v188 = v72;
      v189 = v71;
      v75 = v180;
      (*(v183 + 32))(v180, v68, v184);
      v76 = v75 + *(v181 + 36);
      *v76 = v69;
      v77 = v189;
      *(v76 + 24) = v188;
      *(v76 + 8) = v77;
      *(v76 + 40) = (v70 & 1) == 0;
      v78 = v186;
      sub_23807121C(v75, v186, &qword_27DEEC8F0, &qword_23815C8C0);
      v79 = v190;
      v80 = v179;
      sub_2380712E4(v190, v179, &qword_27DEEDBB0, &qword_23815F598);
      v81 = v185;
      sub_2380712E4(v78, v185, &qword_27DEEC8F0, &qword_23815C8C0);
      v82 = v187;
      sub_2380712E4(v80, v187, &qword_27DEEDBB0, &qword_23815F598);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC88, &qword_23815F7C8);
      sub_2380712E4(v81, v82 + *(v83 + 48), &qword_27DEEC8F0, &qword_23815C8C0);
      sub_238071284(v81, &qword_27DEEC8F0, &qword_23815C8C0);
      sub_238071284(v80, &qword_27DEEDBB0, &qword_23815F598);
      sub_2380712E4(v82, v194, &qword_27DEEDB90, &unk_23815F570);
      swift_storeEnumTagMultiPayload();
      sub_23814BF64();
      sub_2380711D4(&qword_27DEEDCA0, &qword_27DEEDB90, &unk_23815F570, MEMORY[0x277CE14C0]);
      v62 = v192;
      sub_238153ECC();
      sub_238071284(v82, &qword_27DEEDB90, &unk_23815F570);
      sub_238071284(v78, &qword_27DEEC8F0, &qword_23815C8C0);
      v65 = v79;
      v66 = &qword_27DEEDBB0;
      v67 = &qword_23815F598;
    }

    sub_238071284(v65, v66, v67);
    v84 = v220;
    v59 = v221;
    sub_23807121C(v62, v220, &qword_27DEEDBD0, &qword_23815F5B8);
    (*(v214 + 56))(v84, 0, 1, v219);
  }

  v85 = *(v59 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v86 = *(v253 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v87 = *(v253 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v88 = *(v253 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v89 = *(v253 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *&v219 = v85;
  sub_238152A8C();

  v90 = *(v253 + 16);

  v214 = v89;
  v91 = v221;
  v92 = v86 | v87 | v88 | v89 | v90;
  v93 = v92 != 0;
  LODWORD(v195) = v92 == 0;
  v94 = *(v221 + *(v216 + 56) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v95 = v253;
  v194 = v94;
  if (v253 == 8 || (v96 = *(v219 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType), v96 == 2))
  {
    if (v93)
    {
LABEL_25:
      LODWORD(v193) = v90 != 0;
      LODWORD(v192) = v214 != 0;
      v115 = sub_23813A3DC();
      v116 = v195;
      v117 = v115 & v195;
      v118 = v198;
      sub_23814EF88(v91, v198, type metadata accessor for _DDDevicePickerView);
      v119 = (*(v196 + 80) + 17) & ~*(v196 + 80);
      v120 = v119 + v197;
      v121 = swift_allocObject();
      *(v121 + 16) = v86 != 0;
      sub_23814E8B0(v118, v121 + v119, type metadata accessor for _DDDevicePickerView);
      v122 = (v121 + v120);
      *v122 = v87 != 0;
      v122[1] = v88 != 0;
      v122[2] = v193;
      v122[3] = v192;
      v122[4] = v116;
      v122[5] = v117 & 1;
      *&v250[0] = sub_23814B9F8;
      *(&v250[0] + 1) = v121;
      sub_238154B0C();
      sub_238154AFC();
      v123 = sub_2380A0C84();
      *(&v254 + 1) = type metadata accessor for DevicePickerViewDropDelegate(0, v124);
      *&v255[0] = sub_23814F050(&qword_27DEEDBE0, type metadata accessor for DevicePickerViewDropDelegate, byte_23815A27C);
      *&v253 = v123;
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBE8, &qword_23815F778);
      v126 = sub_2380711D4(&qword_27DEEDBF0, &qword_27DEEDBE8, &qword_23815F778, MEMORY[0x277CDF7D8]);
      v127 = v199;
      sub_23815453C();

      v128 = __swift_destroy_boxed_opaque_existential_1(&v253);
      v129 = v200;
      v130 = v204;
      (*(v200 + 16))(v202, v127, v204, v128);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBF8, &qword_23815F780);
      sub_2380711D4(&qword_27DEEDC00, &qword_27DEEDBF8, &qword_23815F780, MEMORY[0x277CE14C0]);
      *&v253 = v125;
      *(&v253 + 1) = v126;
      swift_getOpaqueTypeConformance2();
      v131 = v203;
      sub_238153ECC();
      sub_2380712E4(v131, v206, &qword_27DEEDB78, &qword_23815F558);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC08, &qword_23815F788);
      sub_23814BAB4();
      sub_23814BB6C();
      sub_238153ECC();
      v114 = v219;
      sub_238071284(v131, &qword_27DEEDB78, &qword_23815F558);
      (*(v129 + 8))(v127, v130);
      goto LABEL_29;
    }

    if (sub_23813A3DC() & 1) != 0 || (v97 = v91 + *(v216 + 80), v98 = *v97, v99 = *(v97 + 8), LOBYTE(v253) = v98, *(&v253 + 1) = v99, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0), sub_23815470C(), (v250[0]))
    {
      if ((sub_23813A3DC() & 1) == 0)
      {
        v100 = v91 + *(v216 + 80);
        v101 = *v100;
        v102 = *(v100 + 8);
        LOBYTE(v253) = v101;
        *(&v253 + 1) = v102;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
        sub_23815470C();
        if (LOBYTE(v250[0]) == 1)
        {
          v103 = *(v219 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType);
          v104 = sub_2381540EC();
          LOBYTE(v240) = 0;
          *(&v240 + 1) = v94;
          LOBYTE(v241) = v103;
          BYTE8(v241) = v104;
          v242 = 0u;
          v243 = 0u;
          v244 = 1;
          v223[64] = 1;
          memset(&v223[32], 0, 32);
          *v223 = v240;
          *&v223[16] = v241;
          LOBYTE(v225) = 1;
          v247 = 0u;
          v248 = 0u;
          v249 = 1;
          v245 = v240;
          v246 = v241;
          *&v230[23] = v241;
          memset(&v230[39], 0, 32);
          v230[71] = 1;
          *&v230[7] = v240;
          v239 = 1;
          *&v250[0] = 0;
          BYTE8(v250[0]) = 1;
          *(v250 + 9) = *v230;
          *(&v250[4] + 9) = *&v230[64];
          *(&v250[3] + 9) = *&v230[48];
          *(&v250[2] + 9) = *&v230[32];
          *(&v250[1] + 9) = *&v230[16];
          *(&v250[5] + 1) = 0;
          v251 = 1;
          v253 = v250[0];
          v254 = v250[1];
          LOBYTE(v258) = 1;
          v256 = v250[4];
          v257 = *&v250[5];
          v255[0] = v250[2];
          v255[1] = v250[3];
          v105 = v94;
          sub_2380712E4(&v240, &v233, &qword_27DEEDC58, &qword_23815F7B0);
          sub_2380712E4(&v245, &v233, &qword_27DEEDC58, &qword_23815F7B0);
          sub_238071284(v223, &qword_27DEEDC58, &qword_23815F7B0);
          v106 = v257;
          v107 = v202;
          *(v202 + 4) = v256;
          *(v107 + 5) = v106;
          v107[96] = v258;
          v108 = v254;
          *v107 = v253;
          *(v107 + 1) = v108;
          v109 = v255[1];
          *(v107 + 2) = v255[0];
          *(v107 + 3) = v109;
          swift_storeEnumTagMultiPayload();
          sub_2380712E4(v250, &v233, &qword_27DEEDC60, &qword_23815F7B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBF8, &qword_23815F780);
          sub_2380711D4(&qword_27DEEDC00, &qword_27DEEDBF8, &qword_23815F780, MEMORY[0x277CE14C0]);
          v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDBE8, &qword_23815F778);
          v111 = sub_2380711D4(&qword_27DEEDBF0, &qword_27DEEDBE8, &qword_23815F778, MEMORY[0x277CDF7D8]);
          *&v233 = v110;
          *(&v233 + 1) = v111;
          swift_getOpaqueTypeConformance2();
          v112 = v203;
          sub_238153ECC();
          sub_2380712E4(v112, v206, &qword_27DEEDB78, &qword_23815F558);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC08, &qword_23815F788);
          sub_23814BAB4();
          sub_23814BB6C();
          sub_238153ECC();
          sub_238071284(v250, &qword_27DEEDC60, &qword_23815F7B8);
          sub_238071284(&v240, &qword_27DEEDC58, &qword_23815F7B0);
          v113 = v112;
          v114 = v219;
          sub_238071284(v113, &qword_27DEEDB78, &qword_23815F558);
          goto LABEL_29;
        }
      }

      goto LABEL_25;
    }

    LOBYTE(v233) = 1;
    v230[0] = 1;
    *&v250[0] = 0;
    BYTE8(v250[0]) = 1;
    v252 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBF8, &qword_23815F780);
    sub_2380711D4(&qword_27DEEDC00, &qword_27DEEDBF8, &qword_23815F780, MEMORY[0x277CE14C0]);
    sub_238153ECC();
    v138 = v257;
    v139 = v206;
    *(v206 + 64) = v256;
    *(v139 + 80) = v138;
    *(v139 + 96) = v258;
    v140 = v254;
    *v139 = v253;
    *(v139 + 16) = v140;
    v141 = v255[1];
    *(v139 + 32) = v255[0];
    *(v139 + 48) = v141;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC08, &qword_23815F788);
    sub_23814BAB4();
    sub_23814BB6C();
    sub_238153ECC();
  }

  else
  {
    v132 = sub_2381540EC();
    LOBYTE(v253) = 1;
    LOBYTE(v225) = v95;
    *(&v225 + 1) = v94;
    LOBYTE(v226) = v96;
    BYTE8(v226) = v132;
    v227 = 0u;
    v228 = 0u;
    v229 = 1;
    v249 = 1;
    v247 = 0u;
    v248 = 0u;
    v245 = v225;
    v246 = v226;
    v224 = 1;
    v244 = 1;
    v242 = 0u;
    v243 = 0u;
    v240 = v225;
    v241 = v226;
    *&v223[23] = v226;
    memset(&v223[39], 0, 32);
    v223[71] = 1;
    *&v223[7] = v225;
    v222 = 1;
    *v230 = 0;
    v230[8] = 1;
    *&v230[9] = *v223;
    *&v230[73] = *&v223[64];
    *&v230[57] = *&v223[48];
    *&v230[41] = *&v223[32];
    *&v230[25] = *&v223[16];
    v231 = 0;
    v232 = 1;
    v233 = *v230;
    v234 = *&v230[16];
    v238 = 1;
    v236 = *&v230[64];
    v237 = *&v230[80];
    v235[0] = *&v230[32];
    v235[1] = *&v230[48];
    v133 = v94;
    sub_2380712E4(&v225, &v253, &qword_27DEEDC58, &qword_23815F7B0);
    sub_2380712E4(&v240, &v253, &qword_27DEEDC58, &qword_23815F7B0);
    sub_238071284(&v245, &qword_27DEEDC58, &qword_23815F7B0);
    v239 = 0;
    v250[4] = v236;
    v250[5] = v237;
    v251 = v238;
    v250[0] = v233;
    v250[1] = v234;
    v250[2] = v235[0];
    v250[3] = v235[1];
    v252 = 0;
    sub_2380712E4(v230, &v253, &qword_27DEEDC60, &qword_23815F7B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBF8, &qword_23815F780);
    sub_2380711D4(&qword_27DEEDC00, &qword_27DEEDBF8, &qword_23815F780, MEMORY[0x277CE14C0]);
    sub_238153ECC();
    v134 = v257;
    v135 = v206;
    *(v206 + 64) = v256;
    *(v135 + 80) = v134;
    *(v135 + 96) = v258;
    v136 = v254;
    *v135 = v253;
    *(v135 + 16) = v136;
    v137 = v255[1];
    *(v135 + 32) = v255[0];
    *(v135 + 48) = v137;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC08, &qword_23815F788);
    sub_23814BAB4();
    sub_23814BB6C();
    sub_238153ECC();
    sub_238071284(v230, &qword_27DEEDC60, &qword_23815F7B8);
    sub_238071284(&v225, &qword_27DEEDC58, &qword_23815F7B0);
  }

  v114 = v219;
LABEL_29:
  if (*(v114 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) == 2)
  {
    v142 = v221;
    if (v214)
    {
      if (qword_27DEEA130 != -1)
      {
        swift_once();
      }

      *&v250[0] = 0xD000000000000017;
      *(&v250[0] + 1) = 0x80000002381632E0;
      *&v250[1] = 0xD000000000000043;
      *(&v250[1] + 1) = 0x8000000238163300;
      *&v250[2] = qword_27DEEDA68;
      BYTE8(v250[2]) = 0;
    }

    else
    {
      v144 = 0xE000000000000000;
      *&v253 = 0;
      *(&v253 + 1) = 0xE000000000000000;
      sub_23815541C();

      *&v253 = 0xD000000000000024;
      *(&v253 + 1) = 0x8000000238163350;
      v146 = (*(v142 + *(v216 + 64) + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
      v147 = v146[1];
      if (v147)
      {
        v148 = *v146;
        sub_2380F9130(0, v145);

        v149 = sub_2380F3278(v148, v147);
        if (v149)
        {
          v150 = v149;
          v151 = [v149 localizedName];
          v152 = sub_238154CCC();
          v144 = v153;

          v149 = v152;
        }

        else
        {
          v144 = 0xE000000000000000;
        }
      }

      else
      {
        v149 = 0;
      }

      MEMORY[0x2383E9410](v149, v144);

      MEMORY[0x2383E9410](46, 0xE100000000000000);
      v154 = v253;
      if (qword_27DEEA130 != -1)
      {
        swift_once();
      }

      *&v250[0] = 0xD000000000000019;
      *(&v250[0] + 1) = 0x8000000238163380;
      v250[1] = v154;
      *&v250[2] = qword_27DEEDA68;
      BYTE8(v250[2]) = 1;
    }

    sub_23814BD18();

    sub_238153ECC();
    v155 = *&v255[0];
    v216 = v254;
    v219 = v253;
    v230[0] = 1;
    v223[0] = BYTE8(v255[0]);
    v156 = v253;
    v157 = v254;
    sub_23814BD6C(v253, *(&v253 + 1), v254, *(&v254 + 1), *&v255[0]);
    sub_23814BD6C(v156, *(&v156 + 1), v157, *(&v157 + 1), v155);
    sub_23814BDB4(v156, *(&v156 + 1), v157, *(&v157 + 1), v155);
    LOBYTE(v233) = 0;
    *&v250[0] = 0;
    BYTE8(v250[0]) = v230[0];
    v250[1] = v219;
    v250[2] = v216;
    *&v250[3] = v155;
    WORD4(v250[3]) = v223[0];
    sub_23814BD6C(v156, *(&v156 + 1), v157, *(&v157 + 1), v155);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC20, &qword_23815F790);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC28, &qword_23815F798);
    sub_2380711D4(&qword_27DEEDC30, &qword_27DEEDC20, &qword_23815F790, MEMORY[0x277CE14C0]);
    sub_23814BC9C();
    sub_238153ECC();
    sub_23814BDB4(v156, *(&v156 + 1), v157, *(&v157 + 1), v155);
    sub_23814BDB4(v156, *(&v156 + 1), v157, *(&v157 + 1), v155);
    *(&v250[2] + 10) = *(v255 + 10);
    v250[1] = v254;
    v250[2] = v255[0];
    v259 = v253;
    v260 = v254;
    v261[0] = v255[0];
    *(v261 + 10) = *(&v250[2] + 10);
    *(v255 + 10) = *(&v250[2] + 10);
  }

  else
  {
    if ((sub_23813A3DC() & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_238152A8C(), , , v253 != 8))
    {
      v143 = 0;
    }

    else
    {
      sub_23813D514(&v253);
      v143 = v253;
    }

    LOBYTE(v233) = 1;
    *&v250[0] = v143;
    BYTE9(v250[3]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC20, &qword_23815F790);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC28, &qword_23815F798);
    sub_2380711D4(&qword_27DEEDC30, &qword_27DEEDC20, &qword_23815F790, MEMORY[0x277CE14C0]);
    sub_23814BC9C();
    sub_238153ECC();

    *(&v250[2] + 10) = *(v255 + 10);
    v250[1] = v254;
    v250[2] = v255[0];
    v259 = v253;
    v260 = v254;
    v261[0] = v255[0];
    *(v261 + 10) = *(&v250[2] + 10);
    *(v255 + 10) = *(&v250[2] + 10);
  }

  sub_2380712E4(&v253, v250, &qword_27DEEDC40, &qword_23815F7A0);
  v158 = sub_238139870();
  v159 = MEMORY[0x2383E79D0]();
  v160 = sub_23815337C();

  if ((((v158 - 3) < 0xFEu) & ~v160) != 0 || v158 == 3)
  {
    v162 = v211;
    sub_238139B64(v211);
    v161 = 0;
  }

  else
  {
    v161 = 1;
    v162 = v211;
  }

  (*(v209 + 56))(v162, v161, 1, v215);
  v163 = v162;
  v164 = v217;
  sub_2380712E4(v220, v217, &qword_27DEEDBD8, &qword_23815F5C0);
  v165 = v218;
  v166 = v210;
  sub_2380712E4(v218, v210, &qword_27DEEDB88, &qword_23815F568);
  v167 = v213;
  sub_2380712E4(v163, v213, &qword_27DEEDB60, &qword_23815F540);
  v168 = v164;
  v169 = v212;
  sub_2380712E4(v168, v212, &qword_27DEEDBD8, &qword_23815F5C0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC48, &qword_23815F7A8);
  sub_2380712E4(v166, v169 + v170[12], &qword_27DEEDB88, &qword_23815F568);
  v171 = (v169 + v170[16]);
  v172 = v260;
  v233 = v259;
  v234 = v260;
  v173 = v261[0];
  v235[0] = v261[0];
  v174 = *(v261 + 10);
  *(v235 + 10) = *(v261 + 10);
  *v171 = v259;
  v171[1] = v172;
  v171[2] = v173;
  *(v171 + 42) = v174;
  sub_2380712E4(v167, v169 + v170[20], &qword_27DEEDB60, &qword_23815F540);
  sub_2380712E4(&v233, v250, &qword_27DEEDC40, &qword_23815F7A0);
  sub_238071284(&v253, &qword_27DEEDC40, &qword_23815F7A0);
  sub_238071284(v163, &qword_27DEEDB60, &qword_23815F540);
  sub_238071284(v165, &qword_27DEEDB88, &qword_23815F568);
  sub_238071284(v220, &qword_27DEEDBD8, &qword_23815F5C0);
  sub_238071284(v167, &qword_27DEEDB60, &qword_23815F540);
  v250[0] = v259;
  v250[1] = v260;
  v250[2] = v261[0];
  *(&v250[2] + 10) = *(v261 + 10);
  sub_238071284(v250, &qword_27DEEDC40, &qword_23815F7A0);
  sub_238071284(v166, &qword_27DEEDB88, &qword_23815F568);
  return sub_238071284(v217, &qword_27DEEDBD8, &qword_23815F5C0);
}

uint64_t sub_238139870()
{
  v1 = sub_23815313C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = sub_238152F3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238152F1C();
  v12 = sub_238152EEC();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (v12)
  {
    v14 = *(v0 + 8);

    sub_23815316C();

    (*(v2 + 32))(v5, v7, v1);
    v15 = (*(v2 + 88))(v5, v1);
    if (MEMORY[0x277D54978] && v15 == *MEMORY[0x277D54978])
    {
      (*(v2 + 96))(v5, v1);
      v16 = sub_2381527EC();
      (*(*(v16 - 8) + 8))(v5, v16);
      return 2;
    }

    else if (MEMORY[0x277D54988] && v15 == *MEMORY[0x277D54988])
    {
      return 2;
    }

    else
    {
      (*(v2 + 8))(v5, v1);
      if (*(v14 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) == 1)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    sub_238152F2C();
    v18 = sub_238152EEC();
    v13(v11, v8);
    if (v18)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_238139B64@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC80, &qword_23815F7C0);
  v89 = *(v2 - 8);
  v90 = v2;
  MEMORY[0x28223BE20](v2);
  v88 = &v73 - v3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCC8, &qword_23815F808);
  v4 = MEMORY[0x28223BE20](v84);
  v87 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = &v73 - v6;
  v7 = sub_2381547FC();
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238152F3C();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x28223BE20](v9);
  v76 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCD0, &qword_23815F810);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v83 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v73 - v14;
  v15 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_2381537EC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_238153A2C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_238139870() == 1)
  {
    v26 = 34;
  }

  else
  {
    v26 = 48;
  }

  v92 = *(v1 + 24);
  v93 = v26;
  v27 = sub_238135F00();
  sub_23813605C(v25);
  v85 = v1;
  result = sub_238136264(v21);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  (*(v23 + 16))(v17 + *(v15 + 32), v25, v22);
  (*(v19 + 16))(v17 + *(v15 + 36), v21, v18);
  *v17 = 0;
  v17[1] = 0;
  v29 = v93;
  v17[2] = v93;
  v17[3] = v29;
  v17[4] = v27;
  v30 = sub_2380C3CE8(v17);
  v32 = v31;
  v79 = v33;
  LODWORD(v92) = v34;
  v35 = ~v34;
  sub_23814EFF0(v17, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
  (*(v19 + 8))(v21, v18);
  (*(v23 + 8))(v25, v22);
  if (v35)
  {
    v36 = v85;
    v37 = sub_238139870();
    sub_2381533AC();
    v38 = MEMORY[0x2383E79D0]();
    v39 = sub_23815337C();

    if ((((v37 - 3) < 0xFEu) & ~v39) != 0 || v37 == 3)
    {
      v49 = v76;
      sub_238152F1C();
      v50 = sub_238152EEC();
      (*(v77 + 8))(v49, v78);
      v41 = v86;
      v42 = v87;
      v51 = v82;
      v46 = v80;
      if (v50)
      {
        v40 = 1;
        v45 = v82;
        v43 = v84;
        v44 = v81;
      }

      else
      {
        v52 = v73;
        sub_2381547EC();
        v53 = v52;
        v54 = v81;
        (*(v46 + 32))(v51, v53, v81);
        v44 = v54;
        v40 = 0;
        v45 = v51;
        v43 = v84;
      }
    }

    else
    {
      v40 = 1;
      v41 = v86;
      v42 = v87;
      v43 = v84;
      v44 = v81;
      v45 = v82;
      v46 = v80;
    }

    v55 = v45;
    (*(v46 + 56))(v45, v40, 1, v44);
    if (sub_238139870() == 3)
    {
      v56 = 0;
    }

    else
    {
      v56 = 0x4020000000000000;
    }

    *v41 = sub_238153D1C();
    *(v41 + 8) = v56;
    *(v41 + 16) = 0;
    v57 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCD8, &qword_23815F818) + 44);
    v75 = v30;
    v74 = v32;
    v58 = v79;
    sub_23813F930(v30, v32, v79, v92 & 1, v36, v93, v57);
    v59 = sub_238139870();
    v60 = sub_23814270C(*(*(v36 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType), v59);
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = sub_2381540FC();
    v68 = v41 + *(v43 + 36);
    *v68 = v67;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62;
    *(v68 + 24) = v64;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    v69 = v83;
    sub_2380712E4(v55, v83, &qword_27DEEDCD0, &qword_23815F810);
    sub_2380712E4(v41, v42, &qword_27DEEDCC8, &qword_23815F808);
    v70 = v42;
    v71 = v88;
    sub_2380712E4(v69, v88, &qword_27DEEDCD0, &qword_23815F810);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCE0, &qword_23815F820);
    sub_2380712E4(v70, v71 + *(v72 + 48), &qword_27DEEDCC8, &qword_23815F808);
    sub_2380B3F60(v75, v74, v58, v92);
    sub_238071284(v41, &qword_27DEEDCC8, &qword_23815F808);
    sub_238071284(v55, &qword_27DEEDCD0, &qword_23815F810);
    sub_238071284(v70, &qword_27DEEDCC8, &qword_23815F808);
    sub_238071284(v69, &qword_27DEEDCD0, &qword_23815F810);
    v48 = v91;
    sub_23807121C(v71, v91, &qword_27DEEDC80, &qword_23815F7C0);
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v48 = v91;
  }

  return (*(v89 + 56))(v48, v47, 1, v90);
}

uint64_t sub_23813A3DC()
{
  v30 = sub_238153F1C();
  v0 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA848, &qword_2381580D0);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA850, &qword_2381580D8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = sub_238153A0C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238135928(v16);
  v17 = sub_2381539FC();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    goto LABEL_2;
  }

  sub_238135D18(v12);
  v19 = v30;
  (*(v0 + 104))(v10, *MEMORY[0x277CE0558], v30);
  (*(v0 + 56))(v10, 0, 1, v19);
  v20 = *(v2 + 48);
  sub_2380712E4(v12, v4, &qword_27DEEA850, &qword_2381580D8);
  sub_2380712E4(v10, &v4[v20], &qword_27DEEA850, &qword_2381580D8);
  v21 = *(v0 + 48);
  if (v21(v4, 1, v19) != 1)
  {
    v22 = v29;
    sub_2380712E4(v4, v29, &qword_27DEEA850, &qword_2381580D8);
    if (v21(&v4[v20], 1, v19) != 1)
    {
      v23 = v28;
      (*(v0 + 32))(v28, &v4[v20], v19);
      sub_23814F050(&qword_27DEEA858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v24 = v22;
      v18 = sub_238154C7C();
      v25 = *(v0 + 8);
      v25(v23, v19);
      sub_238071284(v10, &qword_27DEEA850, &qword_2381580D8);
      sub_238071284(v12, &qword_27DEEA850, &qword_2381580D8);
      v25(v24, v19);
      sub_238071284(v4, &qword_27DEEA850, &qword_2381580D8);
      return v18 & 1;
    }

    sub_238071284(v10, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v12, &qword_27DEEA850, &qword_2381580D8);
    (*(v0 + 8))(v22, v19);
    goto LABEL_8;
  }

  sub_238071284(v10, &qword_27DEEA850, &qword_2381580D8);
  sub_238071284(v12, &qword_27DEEA850, &qword_2381580D8);
  if (v21(&v4[v20], 1, v19) != 1)
  {
LABEL_8:
    sub_238071284(v4, &qword_27DEEA848, &qword_2381580D0);
    v18 = 0;
    return v18 & 1;
  }

  sub_238071284(v4, &qword_27DEEA850, &qword_2381580D8);
LABEL_2:
  v18 = 1;
  return v18 & 1;
}

double sub_23813A8E4@<D0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v43 = a8;
  v36 = a6;
  v37 = a7;
  v35 = a5;
  v44 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE58, &qword_23815FA30);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE60, &qword_23815FA38);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - v19;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE68, &qword_23815FA40);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v22 = &v34 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE70, &qword_23815FA48);
  v41 = *(v23 - 8);
  v42 = v23;
  MEMORY[0x28223BE20](v23);
  v39 = &v34 - v24;
  v45 = a2;
  v46 = a3;
  v47 = a1;
  v34 = a1;
  v48 = a4;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v52 = v43;
  v43 = a10;
  v53 = a10;
  sub_2381540DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE78, &qword_23815FA50);
  sub_23814C7C4();
  sub_2381537CC();
  type metadata accessor for DeviceBrowserViewModel(0);
  sub_23814F050(&unk_27DEED8B0, type metadata accessor for DeviceBrowserViewModel, a5_0);
  sub_2381539CC();
  swift_getKeyPath();
  sub_2381539DC();

  v25 = sub_2381527EC();
  v26 = sub_2380711D4(&qword_27DEEDE98, &qword_27DEEDE60, &qword_23815FA38, MEMORY[0x277CDD6E0]);
  v27 = sub_23814F050(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23815444C();
  sub_238071284(v16, &qword_27DEEDE58, &qword_23815FA30);
  (*(v18 + 8))(v20, v17);
  if (sub_238139870() == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    type metadata accessor for _DDDevicePickerView(0);
  }

  *&v54 = v17;
  *(&v54 + 1) = v25;
  *&v55 = v26;
  *(&v55 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v39;
  v29 = v40;
  sub_23815443C();
  (*(v38 + 8))(v22, v29);
  if (v43)
  {
    sub_23815392C();
  }

  sub_2381548DC();
  sub_2381538EC();
  v30 = v44;
  (*(v41 + 32))(v44, v28, v42);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEA0, &qword_23815FA88) + 36));
  v32 = v55;
  *v31 = v54;
  v31[1] = v32;
  result = *&v56;
  v31[2] = v56;
  return result;
}

__n128 sub_23813AE8C@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  HIDWORD(v26) = a8;
  v31 = a9;
  v28 = a10;
  v17 = sub_238153EDC();
  MEMORY[0x28223BE20](v17);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE90, &qword_23815FA58);
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v19 = &v26 - v18;
  v27 = sub_238153DFC();
  v32 = a1;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v39 = BYTE4(v26);
  LODWORD(v40) = 0;
  sub_23814F050(&qword_27DEEDEA8, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_23815570C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEB0, &qword_23815FB00);
  sub_2380711D4(&qword_27DEEDEB8, &qword_27DEEDEB0, &qword_23815FB00, MEMORY[0x277CE14C0]);
  v20 = v28;
  sub_2381537BC();
  if (v20)
  {
    sub_23815392C();
  }

  sub_2381548DC();
  sub_238153A8C();
  v21 = v31;
  (*(v29 + 32))(v31, v19, v30);
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE78, &qword_23815FA50) + 36);
  v23 = v45;
  *(v22 + 64) = v44;
  *(v22 + 80) = v23;
  *(v22 + 96) = v46;
  v24 = v41;
  *v22 = v40;
  *(v22 + 16) = v24;
  result = v43;
  *(v22 + 32) = v42;
  *(v22 + 48) = result;
  return result;
}

uint64_t sub_23813B214@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v216 = a7;
  v222 = a6;
  v224 = a5;
  v226 = a4;
  v227 = a3;
  v223 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEC0, &qword_23815FB08);
  v220 = *(v10 - 8);
  v221 = v10;
  MEMORY[0x28223BE20](v10);
  v215 = &v202 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEC8, &qword_23815FB10);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v241 = &v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v248 = &v202 - v15;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDED0, &qword_23815FB18);
  v250 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v231 = &v202 - v16;
  v17 = sub_2381547FC();
  v212 = *(v17 - 8);
  v213 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v205 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v211 = &v202 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v202 - v23;
  MEMORY[0x28223BE20](v22);
  v228 = &v202 - v25;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F0, &qword_23815C8C0);
  v236 = *(v242 - 8);
  v26 = MEMORY[0x28223BE20](v242);
  v204 = &v202 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v203 = &v202 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v209 = &v202 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v210 = &v202 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v208 = &v202 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v207 = &v202 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v202 - v39;
  MEMORY[0x28223BE20](v38);
  v206 = &v202 - v41;
  v42 = sub_238152F3C();
  v233 = *(v42 - 8);
  v234 = v42;
  MEMORY[0x28223BE20](v42);
  v232 = &v202 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDED8, &qword_23815FB20);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v217 = &v202 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v225 = &v202 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v218 = &v202 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v235 = &v202 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = &v202 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEE0, &qword_23815FB28);
  v56 = MEMORY[0x28223BE20](v55 - 8);
  v246 = &v202 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v247 = &v202 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v240 = &v202 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v244 = &v202 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v251 = &v202 - v65;
  MEMORY[0x28223BE20](v64);
  v245 = &v202 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEE8, &qword_23815FB30);
  v68 = *(v67 - 8);
  v69 = MEMORY[0x28223BE20](v67);
  v214 = &v202 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v69);
  v230 = &v202 - v72;
  MEMORY[0x28223BE20](v71);
  v74 = &v202 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEF0, &qword_23815FB38);
  v76 = MEMORY[0x28223BE20](v75 - 8);
  v239 = &v202 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v80 = a2;
  v81 = &v202 - v79;
  v249 = v80;
  v237 = v78;
  v238 = &v202 - v79;
  v219 = a1;
  if (a1)
  {
    sub_23813CE8C(0, v78, v74);
    sub_23807121C(v74, v81, &qword_27DEEDEE8, &qword_23815FB30);
    (*(v68 + 56))(v81, 0, 1, v67);
  }

  else
  {
    (*(v68 + 56))(&v202 - v79, 1, 1, v67);
  }

  v229 = v74;
  if (v227)
  {
    v82 = v232;
    sub_238152F2C();
    v83 = sub_238152EEC();
    (*(v233 + 8))(v82, v234);
    v202 = v24;
    if (v83)
    {
      v84 = 1;
    }

    else
    {
      sub_2381533AC();
      v87 = MEMORY[0x2383E79D0]();
      v88 = sub_23815337C();

      v84 = 1;
      if (v88 & 1) == 0 && (v219)
      {
        v89 = v228;
        sub_2381547EC();
        if ((sub_2381364CC() & 1) != 0 || sub_238139870())
        {
          v90 = sub_23815413C();
        }

        else
        {
          v90 = sub_23815412C();
        }

        v91 = v90;
        (*(v212 + 32))(v40, v89, v213);
        v92 = &v40[*(v242 + 36)];
        *v92 = v91;
        *(v92 + 8) = 0u;
        *(v92 + 24) = 0u;
        v92[40] = 1;
        v93 = v206;
        sub_23807121C(v40, v206, &qword_27DEEC8F0, &qword_23815C8C0);
        sub_23807121C(v93, v54, &qword_27DEEC8F0, &qword_23815C8C0);
        v84 = 0;
      }
    }

    (*(v236 + 56))(v54, v84, 1, v242);
    sub_23813CE8C(1, v237, v74);
    v94 = v235;
    sub_2380712E4(v54, v235, &qword_27DEEDED8, &qword_23815FB20);
    v95 = v74;
    v96 = v74;
    v97 = v230;
    sub_2380712E4(v95, v230, &qword_27DEEDEE8, &qword_23815FB30);
    v98 = v231;
    sub_2380712E4(v94, v231, &qword_27DEEDED8, &qword_23815FB20);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF18, &qword_23815FB60);
    sub_2380712E4(v97, v98 + *(v99 + 48), &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v96, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v54, &qword_27DEEDED8, &qword_23815FB20);
    sub_238071284(v97, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v94, &qword_27DEEDED8, &qword_23815FB20);
    v86 = v245;
    sub_23807121C(v98, v245, &qword_27DEEDED0, &qword_23815FB18);
    v85 = 0;
    v24 = v202;
  }

  else
  {
    v85 = 1;
    v86 = v245;
  }

  v100 = v250 + 56;
  v101 = *(v250 + 56);
  v102 = 1;
  v101(v86, v85, 1, v243);
  v250 = v100;
  v228 = v101;
  if (v226)
  {
    v103 = v232;
    sub_238152F2C();
    v104 = sub_238152EEC();
    (*(v233 + 8))(v103, v234);
    if (v104)
    {
      v105 = 1;
      v106 = v229;
    }

    else
    {
      sub_2381533AC();
      v107 = MEMORY[0x2383E79D0]();
      v108 = sub_23815337C();

      v105 = 1;
      v106 = v229;
      if (v108 & 1) == 0 && ((v219 | v227))
      {
        sub_2381547EC();
        if ((sub_2381364CC() & 1) != 0 || sub_238139870())
        {
          v109 = sub_23815413C();
        }

        else
        {
          v109 = sub_23815412C();
        }

        v110 = v109;
        v111 = v208;
        (*(v212 + 32))(v208, v24, v213);
        v112 = &v111[*(v242 + 36)];
        *v112 = v110;
        *(v112 + 8) = 0u;
        *(v112 + 24) = 0u;
        v112[40] = 1;
        v113 = v111;
        v114 = v207;
        sub_23807121C(v113, v207, &qword_27DEEC8F0, &qword_23815C8C0);
        sub_23807121C(v114, v218, &qword_27DEEC8F0, &qword_23815C8C0);
        v105 = 0;
      }
    }

    v115 = v218;
    (*(v236 + 56))(v218, v105, 1, v242);
    sub_23813CE8C(2, v237, v106);
    v116 = v235;
    sub_2380712E4(v115, v235, &qword_27DEEDED8, &qword_23815FB20);
    v117 = v106;
    v118 = v106;
    v119 = v230;
    sub_2380712E4(v117, v230, &qword_27DEEDEE8, &qword_23815FB30);
    v120 = v231;
    sub_2380712E4(v116, v231, &qword_27DEEDED8, &qword_23815FB20);
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF18, &qword_23815FB60);
    sub_2380712E4(v119, v120 + *(v121 + 48), &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v118, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v115, &qword_27DEEDED8, &qword_23815FB20);
    sub_238071284(v119, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v116, &qword_27DEEDED8, &qword_23815FB20);
    sub_23807121C(v120, v251, &qword_27DEEDED0, &qword_23815FB18);
    v102 = 0;
    v101 = v228;
  }

  v101(v251, v102, 1, v243);
  if (v224)
  {
    v122 = v232;
    sub_238152F2C();
    v123 = sub_238152EEC();
    (*(v233 + 8))(v122, v234);
    v124 = 1;
    v125 = v229;
    if ((v123 & 1) == 0)
    {
      sub_2381533AC();
      v126 = MEMORY[0x2383E79D0]();
      v127 = sub_23815337C();

      v124 = 1;
      if (v127 & 1) == 0 && ((v219 | v227 | v226))
      {
        v128 = v211;
        sub_2381547EC();
        if ((sub_2381364CC() & 1) != 0 || sub_238139870())
        {
          v129 = sub_23815413C();
        }

        else
        {
          v129 = sub_23815412C();
        }

        v130 = v129;
        v131 = v209;
        (*(v212 + 32))(v209, v128, v213);
        v132 = &v131[*(v242 + 36)];
        *v132 = v130;
        *(v132 + 8) = 0u;
        *(v132 + 24) = 0u;
        v132[40] = 1;
        v133 = v131;
        v134 = v210;
        sub_23807121C(v133, v210, &qword_27DEEC8F0, &qword_23815C8C0);
        sub_23807121C(v134, v225, &qword_27DEEC8F0, &qword_23815C8C0);
        v124 = 0;
      }
    }

    v135 = v225;
    (*(v236 + 56))(v225, v124, 1, v242);
    v136 = v214;
    sub_23813CE8C(4, v237, v214);
    LODWORD(v218) = sub_23815412C();
    sub_23815377C();
    v138 = v137;
    v140 = v139;
    v142 = v141;
    v144 = v143;
    LODWORD(v211) = sub_2381540FC();
    LOBYTE(v301[0]) = 0;
    LOBYTE(v294) = 1;
    sub_2381548EC();
    sub_238153A8C();
    *&v252[55] = v306;
    *&v252[71] = v307;
    *&v252[87] = v308;
    *&v252[103] = v309;
    *&v252[7] = v303;
    *&v252[23] = v304;
    *&v252[39] = v305;
    v145 = v235;
    sub_2380712E4(v135, v235, &qword_27DEEDED8, &qword_23815FB20);
    sub_2380712E4(v136, v125, &qword_27DEEDEE8, &qword_23815FB30);
    v146 = v125;
    v147 = v215;
    sub_2380712E4(v145, v215, &qword_27DEEDED8, &qword_23815FB20);
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF20, &qword_23815FB68);
    sub_2380712E4(v146, v147 + *(v148 + 48), &qword_27DEEDEE8, &qword_23815FB30);
    v149 = v147 + *(v148 + 64);
    *v149 = v218;
    *(v149 + 8) = v138;
    *(v149 + 16) = v140;
    *(v149 + 24) = v142;
    *(v149 + 32) = v144;
    *(v149 + 40) = 0;
    *(v149 + 48) = v211;
    *(v149 + 56) = 0u;
    *(v149 + 72) = 0u;
    *(v149 + 88) = 1;
    v150 = *&v252[80];
    *(v149 + 153) = *&v252[64];
    *(v149 + 169) = v150;
    *(v149 + 185) = *&v252[96];
    *(v149 + 200) = *&v252[111];
    v151 = *&v252[16];
    *(v149 + 89) = *v252;
    *(v149 + 105) = v151;
    v152 = *&v252[48];
    *(v149 + 121) = *&v252[32];
    *(v149 + 137) = v152;
    v153 = v136;
    v101 = v228;
    sub_238071284(v153, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v225, &qword_27DEEDED8, &qword_23815FB20);
    sub_238071284(v146, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v145, &qword_27DEEDED8, &qword_23815FB20);
    v154 = v248;
    sub_23807121C(v147, v248, &qword_27DEEDEC0, &qword_23815FB08);
    (*(v220 + 56))(v154, 0, 1, v221);
  }

  else
  {
    (*(v220 + 56))(v248, 1, 1, v221);
  }

  v155 = v249;
  if (v222)
  {
    v156 = v232;
    sub_238152F2C();
    v157 = sub_238152EEC();
    (*(v233 + 8))(v156, v234);
    if (v157)
    {
      v158 = 1;
      v159 = v229;
    }

    else
    {
      sub_2381533AC();
      v162 = MEMORY[0x2383E79D0]();
      v163 = sub_23815337C();

      v159 = v229;
      if (v163 & 1) == 0 && ((v219 & 1) != 0 || (v227 & 1) != 0 || (v226 & 1) != 0 || (v224))
      {
        v164 = v205;
        sub_2381547EC();
        if ((sub_2381364CC() & 1) != 0 || sub_238139870())
        {
          v165 = sub_23815413C();
        }

        else
        {
          v165 = sub_23815412C();
        }

        v166 = v165;
        v167 = v204;
        (*(v212 + 32))(v204, v164, v213);
        v168 = &v167[*(v242 + 36)];
        *v168 = v166;
        *(v168 + 8) = 0u;
        *(v168 + 24) = 0u;
        v168[40] = 1;
        v169 = v167;
        v170 = v203;
        sub_23807121C(v169, v203, &qword_27DEEC8F0, &qword_23815C8C0);
        sub_23807121C(v170, v217, &qword_27DEEC8F0, &qword_23815C8C0);
        v158 = 0;
      }

      else
      {
        v158 = 1;
      }
    }

    v171 = v217;
    (*(v236 + 56))(v217, v158, 1, v242);
    sub_23813CE8C(3, v237, v159);
    v172 = v159;
    v173 = v235;
    sub_2380712E4(v171, v235, &qword_27DEEDED8, &qword_23815FB20);
    v174 = v230;
    sub_2380712E4(v172, v230, &qword_27DEEDEE8, &qword_23815FB30);
    v175 = v231;
    sub_2380712E4(v173, v231, &qword_27DEEDED8, &qword_23815FB20);
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF18, &qword_23815FB60);
    sub_2380712E4(v174, v175 + *(v176 + 48), &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v172, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v171, &qword_27DEEDED8, &qword_23815FB20);
    sub_238071284(v174, &qword_27DEEDEE8, &qword_23815FB30);
    v155 = v249;
    sub_238071284(v173, &qword_27DEEDED8, &qword_23815FB20);
    v161 = v244;
    sub_23807121C(v175, v244, &qword_27DEEDED0, &qword_23815FB18);
    v160 = 0;
    v101 = v228;
  }

  else
  {
    v160 = 1;
    v161 = v244;
  }

  v101(v161, v160, 1, v243);
  if (sub_23813A3DC())
  {
    if (v216)
    {
      v177 = *(v155 + *(type metadata accessor for _DDDevicePickerView(0) + 56) + 8);
      sub_2381548DC();
      sub_238153A8C();
      *&v254[55] = v310[3];
      *&v254[71] = v310[4];
      *&v254[87] = v310[5];
      *&v254[103] = v310[6];
      *&v254[7] = v310[0];
      *&v254[23] = v310[1];
      *&v254[39] = v310[2];
      v178 = v177;
      v179 = sub_2381540EC();
      LOBYTE(v287) = 0;
      *(&v287 + 1) = v178;
      LOBYTE(v288[0]) = 0;
      *(&v288[4] + 1) = *&v254[64];
      *(&v288[5] + 1) = *&v254[80];
      *(&v288[6] + 1) = *&v254[96];
      *&v288[7] = *&v254[111];
      *(v288 + 1) = *v254;
      *(&v288[1] + 1) = *&v254[16];
      *(&v288[2] + 1) = *&v254[32];
      *(&v288[3] + 1) = *&v254[48];
      BYTE8(v288[7]) = v179;
      v289 = 0u;
      *&v253[71] = v288[3];
      *&v253[87] = v288[4];
      *&v253[103] = v288[5];
      *&v253[119] = v288[6];
      *&v253[7] = v287;
      *&v253[23] = v288[0];
      *&v253[39] = v288[1];
      *&v253[55] = v288[2];
      *&v253[135] = v288[7];
      v290 = 0u;
      memset(&v253[151], 0, 32);
      *(&v295[4] + 1) = *&v254[64];
      *(&v295[5] + 1) = *&v254[80];
      *(&v295[6] + 1) = *&v254[96];
      *(v295 + 1) = *v254;
      *(&v295[1] + 1) = *&v254[16];
      *(&v295[2] + 1) = *&v254[32];
      LOBYTE(v271[0]) = 1;
      LOBYTE(v269[0]) = 1;
      LOBYTE(v291) = 1;
      v253[183] = 1;
      LOBYTE(v255) = 1;
      LOBYTE(v294) = 0;
      *(&v294 + 1) = v178;
      LOBYTE(v295[0]) = 0;
      *&v295[7] = *&v254[111];
      *(&v295[3] + 1) = *&v254[48];
      BYTE8(v295[7]) = v179;
      v296 = 0u;
      v297 = 0u;
      LOBYTE(v298) = 1;
      sub_2380712E4(&v287, v301, &qword_27DEEDF10, &qword_23815FB58);
      sub_238071284(&v294, &qword_27DEEDF10, &qword_23815FB58);
      *(&v301[8] + 9) = *&v253[128];
      *(&v301[9] + 9) = *&v253[144];
      *(&v301[10] + 9) = *&v253[160];
      *(&v301[4] + 9) = *&v253[64];
      *(&v301[5] + 9) = *&v253[80];
      *(&v301[6] + 9) = *&v253[96];
      *(&v301[7] + 9) = *&v253[112];
      *(v301 + 9) = *v253;
      *(&v301[1] + 9) = *&v253[16];
      *(&v301[2] + 9) = *&v253[32];
      *&v301[0] = 0;
      BYTE8(v301[0]) = 1;
      *(&v301[11] + 9) = *&v253[176];
      *(&v301[3] + 9) = *&v253[48];
      *(&v301[12] + 1) = 0;
      LOBYTE(v302) = 1;
      CGSizeMake();
      v283 = v301[10];
      v284 = v301[11];
      v285 = v301[12];
      LOBYTE(v286) = v302;
      v279 = v301[6];
      v280 = v301[7];
      v281 = v301[8];
      v282 = v301[9];
      v275 = v301[2];
      v276 = v301[3];
      v277 = v301[4];
      v278 = v301[5];
      v273 = v301[0];
      v274 = v301[1];
    }

    else
    {
      sub_23814C918(&v273);
    }

    sub_23813D514(v301);
    v265 = v283;
    v266 = v284;
    v267 = v285;
    v261 = v279;
    v262 = v280;
    v263 = v281;
    v264 = v282;
    v257 = v275;
    v258 = v276;
    v259 = v277;
    v260 = v278;
    v255 = v273;
    v256 = v274;
    v269[10] = v283;
    v269[11] = v284;
    v269[12] = v285;
    v269[6] = v279;
    v269[7] = v280;
    v269[8] = v281;
    v269[9] = v282;
    v269[2] = v275;
    v269[3] = v276;
    v269[4] = v277;
    v269[5] = v278;
    v269[0] = v273;
    v269[1] = v274;
    v290 = v283;
    v291 = v284;
    v292 = v285;
    v288[5] = v279;
    v288[6] = v280;
    v288[7] = v281;
    v289 = v282;
    v288[1] = v275;
    v288[2] = v276;
    v288[3] = v277;
    v288[4] = v278;
    v180 = *&v301[0];
    v268 = v286;
    v270 = v286;
    LOBYTE(v293) = v286;
    v287 = v273;
    v288[0] = v274;
    sub_2380712E4(v269, v301, &qword_27DEEDF08, &qword_23815FB50);
    v271[10] = v265;
    v271[11] = v266;
    v271[12] = v267;
    v272 = v268;
    v271[6] = v261;
    v271[7] = v262;
    v271[8] = v263;
    v271[9] = v264;
    v271[2] = v257;
    v271[3] = v258;
    v271[4] = v259;
    v271[5] = v260;
    v271[0] = v255;
    v271[1] = v256;
    sub_238071284(v271, &qword_27DEEDF08, &qword_23815FB50);
    v297 = v290;
    v298 = v291;
    v299 = v292;
    v295[5] = v288[5];
    v295[6] = v288[6];
    v295[7] = v288[7];
    v296 = v289;
    v295[1] = v288[1];
    v295[2] = v288[2];
    v295[3] = v288[3];
    v295[4] = v288[4];
    v294 = v287;
    v295[0] = v288[0];
    *&v300 = v293;
    *(&v300 + 1) = v180;
    CGSizeMake();
    v301[10] = v297;
    v301[11] = v298;
    v301[12] = v299;
    v302 = v300;
    v301[6] = v295[5];
    v301[7] = v295[6];
    v301[8] = v295[7];
    v301[9] = v296;
    v301[2] = v295[1];
    v301[3] = v295[2];
    v301[4] = v295[3];
    v301[5] = v295[4];
    v301[0] = v294;
    v301[1] = v295[0];
  }

  else
  {
    sub_23814C8F4(v301);
  }

  v181 = v239;
  sub_2380712E4(v238, v239, &qword_27DEEDEF0, &qword_23815FB38);
  v182 = v240;
  sub_2380712E4(v245, v240, &qword_27DEEDEE0, &qword_23815FB28);
  sub_2380712E4(v251, v247, &qword_27DEEDEE0, &qword_23815FB28);
  v183 = v241;
  sub_2380712E4(v248, v241, &qword_27DEEDEC8, &qword_23815FB10);
  sub_2380712E4(v244, v246, &qword_27DEEDEE0, &qword_23815FB28);
  v283 = v301[10];
  v284 = v301[11];
  v285 = v301[12];
  v286 = v302;
  v279 = v301[6];
  v280 = v301[7];
  v281 = v301[8];
  v282 = v301[9];
  v275 = v301[2];
  v276 = v301[3];
  v277 = v301[4];
  v278 = v301[5];
  v273 = v301[0];
  v274 = v301[1];
  v184 = v223;
  sub_2380712E4(v181, v223, &qword_27DEEDEF0, &qword_23815FB38);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEF8, &qword_23815FB40);
  sub_2380712E4(v182, v184 + v185[12], &qword_27DEEDEE0, &qword_23815FB28);
  sub_2380712E4(v247, v184 + v185[16], &qword_27DEEDEE0, &qword_23815FB28);
  sub_2380712E4(v183, v184 + v185[20], &qword_27DEEDEC8, &qword_23815FB10);
  sub_2380712E4(v246, v184 + v185[24], &qword_27DEEDEE0, &qword_23815FB28);
  v186 = v185[28];
  v187 = v282;
  v290 = v283;
  v291 = v284;
  v188 = v284;
  v189 = v285;
  v292 = v285;
  v293 = v286;
  v190 = v280;
  v191 = v281;
  v288[7] = v281;
  v289 = v282;
  v192 = v279;
  v193 = v278;
  v288[5] = v279;
  v288[6] = v280;
  v194 = v275;
  v195 = v274;
  v288[1] = v275;
  v288[2] = v276;
  v196 = v276;
  v197 = v277;
  v288[3] = v277;
  v288[4] = v278;
  v287 = v273;
  v198 = v273;
  v288[0] = v274;
  v199 = (v184 + v186);
  v199[10] = v283;
  v199[11] = v188;
  v200 = v286;
  v199[12] = v189;
  v199[13] = v200;
  v199[6] = v192;
  v199[7] = v190;
  v199[8] = v191;
  v199[9] = v187;
  v199[2] = v194;
  v199[3] = v196;
  v199[4] = v197;
  v199[5] = v193;
  *v199 = v198;
  v199[1] = v195;
  sub_2380712E4(&v287, &v294, &qword_27DEEDF00, &qword_23815FB48);
  sub_238071284(v244, &qword_27DEEDEE0, &qword_23815FB28);
  sub_238071284(v248, &qword_27DEEDEC8, &qword_23815FB10);
  sub_238071284(v251, &qword_27DEEDEE0, &qword_23815FB28);
  sub_238071284(v245, &qword_27DEEDEE0, &qword_23815FB28);
  sub_238071284(v238, &qword_27DEEDEF0, &qword_23815FB38);
  v297 = v283;
  v298 = v284;
  v299 = v285;
  v300 = v286;
  v295[5] = v279;
  v295[6] = v280;
  v295[7] = v281;
  v296 = v282;
  v295[1] = v275;
  v295[2] = v276;
  v295[3] = v277;
  v295[4] = v278;
  v294 = v273;
  v295[0] = v274;
  sub_238071284(&v294, &qword_27DEEDF00, &qword_23815FB48);
  sub_238071284(v246, &qword_27DEEDEE0, &qword_23815FB28);
  sub_238071284(v241, &qword_27DEEDEC8, &qword_23815FB10);
  sub_238071284(v247, &qword_27DEEDEE0, &qword_23815FB28);
  sub_238071284(v240, &qword_27DEEDEE0, &qword_23815FB28);
  return sub_238071284(v239, &qword_27DEEDEF0, &qword_23815FB38);
}

uint64_t sub_23813CE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF28, &qword_23815FB70);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF30, &qword_23815FB78);
  MEMORY[0x28223BE20](v26);
  v27 = v23 - v9;
  v10 = sub_238153EDC();
  MEMORY[0x28223BE20](v10);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF38, &qword_23815FB80);
  MEMORY[0x28223BE20](v25);
  v12 = v23 - v11;
  v13 = sub_238139870();
  if (v13 == 1)
  {
    v14 = sub_238153DFC();
    v24 = v6;
    MEMORY[0x28223BE20](v14);
    v23[-2] = v3;
    LOBYTE(v23[-1]) = a1;
    LODWORD(v32) = 0;
    sub_23814F050(&qword_27DEEDEA8, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
    sub_23815570C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE0F8, &qword_23815FC78);
    sub_23814D79C(&qword_27DEEE100, &qword_27DEEE0F8, &qword_23815FC78, sub_23814D818);
    sub_2381537BC();
    v15 = sub_23815494C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v16 = v32;
    v17 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE0D8, &qword_23815FC68) + 36)];
    *v17 = v15;
    v17[1] = v16;
    KeyPath = swift_getKeyPath();
    v19 = &v12[*(v25 + 36)];
    *v19 = KeyPath;
    v19[8] = 0;
    sub_2380712E4(v12, v27, &qword_27DEEDF38, &qword_23815FB80);
    swift_storeEnumTagMultiPayload();
    sub_23814D530();
    sub_23814D6CC();
    sub_238153ECC();
    return sub_238071284(v12, &qword_27DEEDF38, &qword_23815FB80);
  }

  else
  {
    v23[1] = v23;
    MEMORY[0x28223BE20](v13);
    v23[-4] = v3;
    LOBYTE(v23[-3]) = a1;
    v23[-2] = a2;
    v21 = sub_238153D1C();
    v31 = 1;
    sub_238146268(a1, &v32);
    v41 = *&v33[80];
    v42 = *&v33[96];
    v43 = *&v33[112];
    v37 = *&v33[16];
    v38 = *&v33[32];
    v39 = *&v33[48];
    v40 = *&v33[64];
    v35 = v32;
    v36 = *v33;
    v45[6] = *&v33[80];
    v45[7] = *&v33[96];
    v45[8] = *&v33[112];
    v45[2] = *&v33[16];
    v45[3] = *&v33[32];
    v45[4] = *&v33[48];
    v45[5] = *&v33[64];
    v44 = v33[128];
    v46 = v33[128];
    v45[0] = v32;
    v45[1] = *v33;
    sub_2380712E4(&v35, &v29, &qword_27DEEDF40, &qword_23815FB88);
    sub_238071284(v45, &qword_27DEEDF40, &qword_23815FB88);
    *&v30[55] = v38;
    *&v30[39] = v37;
    *&v30[103] = v41;
    *&v30[119] = v42;
    *&v30[135] = v43;
    v30[151] = v44;
    *&v30[71] = v39;
    *&v30[87] = v40;
    *&v30[7] = v35;
    *&v30[23] = v36;
    *&v33[97] = *&v30[96];
    *&v33[113] = *&v30[112];
    *&v33[129] = *&v30[128];
    *&v33[33] = *&v30[32];
    *&v33[49] = *&v30[48];
    *&v33[65] = *&v30[64];
    *&v33[81] = *&v30[80];
    *&v33[1] = *v30;
    v32 = v21;
    v33[0] = v31;
    v34 = *&v30[144];
    *&v33[17] = *&v30[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF48, &qword_23815FB90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF50, &qword_23815FB98);
    sub_2380711D4(&qword_27DEEDF58, &qword_27DEEDF48, &qword_23815FB90, MEMORY[0x277CE1138]);
    sub_23814C950();
    sub_23815482C();
    v22 = v24;
    (*(v24 + 16))(v27, v8, v6);
    swift_storeEnumTagMultiPayload();
    sub_23814D530();
    sub_23814D6CC();
    sub_238153ECC();
    return (*(v22 + 8))(v8, v6);
  }
}

uint64_t sub_23813D514@<X0>(uint64_t *a1@<X8>)
{
  v66 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE40, &qword_23815F960);
  MEMORY[0x28223BE20](v60);
  v59 = &v57[-v2];
  v3 = type metadata accessor for _DDDevicePickerEducationView(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v57[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = sub_238152E1C();
  v6 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_238152DEC();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v57[-v13];
  v15 = sub_238152F3C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = *(v1 + 8);
  v61 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType;
  LODWORD(v17) = *(v67 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType);
  v65 = v1;
  if (!v17 && ((sub_2381364CC() & 1) != 0 || (sub_23813A3DC() & 1) != 0))
  {
    v24 = sub_2381540FC();
    goto LABEL_13;
  }

  sub_238152F1C();
  v19 = sub_238152EEC();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) != 0 && *(v67 + v61) == 1)
  {
    v20 = sub_2381540EC();
    v21 = sub_23815413C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238158810;
    v23 = sub_23815411C();
    *(inited + 32) = v23;
    v20 = sub_2381540EC();
    *(inited + 33) = v20;
    v21 = sub_23815413C();
    sub_23815413C();
    if (sub_23815413C() != v23)
    {
      v21 = sub_23815413C();
    }
  }

  sub_23815413C();
  if (sub_23815413C() != v20)
  {
    v24 = sub_23815413C();
LABEL_13:
    v21 = v24;
  }

  v58 = v21;
  v25 = v62;
  (*(v6 + 16))(v8, v67 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browseDescriptor, v62);
  sub_238152D6C();
  (*(v6 + 8))(v8, v25);
  nw_browse_descriptor_get_browse_scope();
  swift_unknownObjectRelease();
  sub_238152DDC();
  sub_238152D8C();
  sub_23814F050(&qword_27DEEBA08, MEMORY[0x277CD90C8], MEMORY[0x277CD90D0]);
  v26 = v64;
  v27 = sub_23815535C();
  v28 = *(v63 + 8);
  v28(v12, v26);
  v28(v14, v26);
  v71 = &type metadata for SharingFeatureFlags;
  v72 = sub_23807ABE4();
  LOBYTE(v69) = 1;
  LOBYTE(v28) = sub_23815283C();
  __swift_destroy_boxed_opaque_existential_1(&v69);
  LOBYTE(v25) = v28 & v27;
  v29 = type metadata accessor for _DDDevicePickerView(0);
  v30 = *(v65 + *(v29 + 52) + 8);
  v31 = *(v65 + *(v29 + 60) + 8);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  swift_storeEnumTagMultiPayload();
  v32 = v3[5];
  *(v5 + v32) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v33 = v3[6];
  *(v5 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v34 = v3[7];
  *(v5 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  swift_storeEnumTagMultiPayload();
  v35 = v5 + v3[10];
  v68 = 0;
  v36 = v31;
  sub_2381546FC();
  v37 = v70;
  *v35 = v69;
  *(v35 + 1) = v37;
  v38 = v5 + v3[11];
  v68 = 0;
  sub_2381546FC();
  v39 = v70;
  *v38 = v69;
  *(v38 + 1) = v39;
  v40 = (v5 + v3[8]);
  type metadata accessor for _DDAskToAirDropManager(0);
  sub_23814F050(&qword_27DEEA920, type metadata accessor for _DDAskToAirDropManager, byte_23815D738);
  v41 = v30;
  *v40 = sub_2381539BC();
  v40[1] = v42;
  v43 = (v5 + v3[9]);
  type metadata accessor for _DDPinPairingManager(0);
  sub_23814F050(&qword_27DEEA930, type metadata accessor for _DDPinPairingManager, byte_23815D4F0);
  *v43 = sub_2381539BC();
  v43[1] = v44;
  *(v5 + v3[12]) = v25 & 1;
  if ((v25 & 1) != 0 || (sub_2381364CC() & 1) == 0 && (sub_238071D48()) && *(v67 + v61) != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    if (v69 == 8)
    {
      sub_23815377C();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = v59;
      sub_23814EF88(v5, v59, type metadata accessor for _DDDevicePickerEducationView);
      v54 = &v53[*(v60 + 36)];
      *v54 = v58;
      *(v54 + 1) = v46;
      *(v54 + 2) = v48;
      *(v54 + 3) = v50;
      *(v54 + 4) = v52;
      v54[40] = 0;
      sub_23814C6C4();
    }
  }

  v55 = sub_2381547BC();
  result = sub_23814EFF0(v5, type metadata accessor for _DDDevicePickerEducationView);
  *v66 = v55;
  return result;
}

double sub_23813DD84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return result;
}

uint64_t sub_23813DE00(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2380712E4(a1, &v10 - v7, &qword_27DEEC9F0, &qword_23815A090);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2380712E4(v8, v6, &qword_27DEEC9F0, &qword_23815A090);

  sub_238152A9C();
  return sub_238071284(v8, &qword_27DEEC9F0, &qword_23815A090);
}

void sub_23813DF30(uint64_t a1)
{
  type metadata accessor for _DDDevicePickerView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v1 == 1)
  {
    sub_238103664();
  }
}

double sub_23813DFC8(uint64_t a1)
{
  v2 = type metadata accessor for _DDDevicePickerView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-v8];
  v10 = (a1 + *(v3 + 88));
  v11 = *v10;
  v12 = *(v10 + 1);
  v19[16] = v11;
  v20 = v12;
  v19[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815471C();
  v13 = sub_238154FBC();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_23814EF88(a1, v6, type metadata accessor for _DDDevicePickerView);
  sub_238154F8C();
  v14 = sub_238154F7C();
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_23814E8B0(v6, v16 + v15, type metadata accessor for _DDDevicePickerView);
  sub_2381351E4(0, 0, v9, &unk_23815F4E8, v16, MEMORY[0x277D84F78] + 8);

  return result;
}

uint64_t sub_23813E1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_2381554BC();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_238154F8C();
  v4[8] = sub_238154F7C();
  v7 = sub_238154F3C();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x2822009F8](sub_23813E2F0, v7, v6);
}

uint64_t sub_23813E2F0()
{
  sub_23815562C();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_23813E3BC;

  return sub_23814A898(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_23813E3BC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = sub_23813E61C;
  }

  else
  {
    v8 = sub_23813E554;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23813E554()
{
  v1 = *(v0 + 32);

  v2 = (v1 + *(type metadata accessor for _DDDevicePickerView(0) + 80));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 104) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815471C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23813E61C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23813E688(uint64_t a1)
{
  v2 = type metadata accessor for _DDDevicePickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23814EF88(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23814E8B0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for _DDDevicePickerView);
  return sub_23815474C();
}

uint64_t sub_23813E7DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238154C8C();
  v4 = sub_238154C8C();
  v5 = DDUILocalizedString();

  sub_238154CCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_238158810;
  v8 = *(v1 + *(type metadata accessor for _DDDevicePickerView(0) + 64) + 8);
  v9 = *(v8 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = *(v8 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
  sub_2380F9130(0, v7);

  v11 = sub_2380F3278(v10, v9);
  if (!v11)
  {
    v9 = 0;
LABEL_4:
    v12 = 0xE000000000000000;
    goto LABEL_5;
  }

  v22 = v11;
  v23 = [v11 localizedName];
  v9 = sub_238154CCC();
  v12 = v24;

LABEL_5:
  v13 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v14 = sub_2380F1440();
  *(v6 + 64) = v14;
  *(v6 + 32) = v9;
  *(v6 + 40) = v12;
  v15 = *(v8 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName);
  v16 = *(v8 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName + 8);
  *(v6 + 96) = v13;
  *(v6 + 104) = v14;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v15 = sub_23807CB28(100);
  }

  *(v6 + 72) = v15;
  *(v6 + 80) = v17;

  sub_238154C9C();

  sub_2380704A0();
  result = sub_23815438C();
  *a1 = result;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_23813EA1C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _DDDevicePickerView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_23814EF88(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23814E8B0(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for _DDDevicePickerView);
  v8 = sub_2381537AC();
  v31 = v9;
  v32 = v8;
  v33 = v10;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_2381546FC();
  v30 = v37;
  v28 = v36;
  v29 = v38;
  LOBYTE(v34) = 0;
  sub_2381546FC();
  v11 = v36;
  v27 = v37;
  LOBYTE(v34) = 0;
  sub_2381546FC();
  v12 = v36;
  v13 = v37;
  if (qword_27DEEA100 != -1)
  {
    swift_once();
  }

  v14 = qword_27DEF3290;
  type metadata accessor for _DDPinPairingManager(0);
  sub_23814F050(&qword_27DEEA930, type metadata accessor for _DDPinPairingManager, byte_23815D4F0);
  v15 = v14;
  v16 = sub_2381539BC();
  v18 = v17;
  if (qword_27DEEA030 != -1)
  {
    swift_once();
  }

  v19 = qword_27DEF3190;
  type metadata accessor for DDDeviceAccessController(0);
  sub_23814F050(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController, byte_238159338);
  v20 = v19;
  result = sub_2381539BC();
  *a1 = 6;
  v22 = v32 & 1;
  v23 = v31 & 1;
  v24 = v30;
  *(a1 + 8) = v28;
  *(a1 + 16) = v24;
  *(a1 + 24) = v29;
  *(a1 + 32) = v11;
  *(a1 + 33) = v36;
  *(a1 + 36) = *(&v36 + 3);
  *(a1 + 40) = v27;
  *(a1 + 48) = v12;
  *(a1 + 49) = v34;
  *(a1 + 52) = *(&v34 + 3);
  *(a1 + 56) = v13;
  *(a1 + 64) = v22;
  *(a1 + 68) = *&v40[3];
  *(a1 + 65) = *v40;
  *(a1 + 72) = v33;
  *(a1 + 80) = v23;
  *(a1 + 84) = *&v39[3];
  *(a1 + 81) = *v39;
  *(a1 + 88) = v16;
  *(a1 + 96) = v18;
  *(a1 + 104) = result;
  *(a1 + 112) = v25;
  *(a1 + 120) = sub_23814AD50;
  *(a1 + 128) = v7;
  return result;
}

uint64_t sub_23813ED7C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = a2[3];
  v27 = a2[2];
  v28 = v4;
  v29 = *(a2 + 64);
  v5 = a2[1];
  v25 = *a2;
  v26 = v5;
  if (qword_27DEEA120 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEEDA48);
  sub_23808E888(&v25, &v23);
  v7 = sub_23815291C();
  v8 = sub_2381550BC();
  sub_23808E828(&v25);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v11 = sub_23808884C();
    v13 = sub_238085EAC(v11, v12, &v23);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_238060000, v7, v8, "New DeviceAccessController state: %s", v9, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2383EA8A0](v10, -1, -1, v14);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  v15 = v25;
  if (v29 == 2)
  {
    v20 = (a3 + *(type metadata accessor for _DDDevicePickerView(0) + 76));
    v18 = *v20;
    v19 = *(v20 + 1);
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_12:
    LOBYTE(v23) = v18;
    v24 = v19;
    goto LABEL_13;
  }

  if (v29 == 3)
  {
    v16 = vorrq_s8(v27, v28);
    if (!(*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | *(&v26 + 1) | v26 | *(&v25 + 1) | v25))
    {
      v21 = (a3 + *(type metadata accessor for _DDDevicePickerView(0) + 76));
      v18 = *v21;
      v19 = *(v21 + 1);
      goto LABEL_12;
    }
  }

  v17 = (a3 + *(type metadata accessor for _DDDevicePickerView(0) + 76));
  v18 = *v17;
  v19 = *(v17 + 1);
LABEL_10:
  LOBYTE(v23) = v18;
  v24 = v19;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  return sub_23815471C();
}

uint64_t sub_23813EFD0@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAA0, &qword_23815F418);
  MEMORY[0x28223BE20](v2);
  v76 = &v65 - v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAA8, &qword_23815F420);
  MEMORY[0x28223BE20](v75);
  v5 = &v65 - v4;
  v6 = sub_238152F3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAB0, &qword_23815F428);
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v81 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAB8, &qword_23815F430);
  v73 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v74 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v65 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v65 - v17;
  MEMORY[0x28223BE20](v16);
  v71 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAC0, &qword_23815F438);
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAC8, &qword_23815F440);
  v78 = *(v22 - 8);
  v79 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  if (sub_238139870() == 1)
  {
    sub_238136C8C(v21);
    v25 = *(v1 + *(type metadata accessor for _DDDevicePickerView(0) + 112) + 8);
    sub_2381548DC();
    sub_2381538EC();
    v26 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB28, &qword_23815F478) + 36)];
    v27 = v83;
    *v26 = v82;
    *(v26 + 1) = v27;
    *(v26 + 2) = v84;
    v28 = sub_23815497C();
    v29 = &v21[*(v19 + 36)];
    *v29 = v28;
    v29[1] = v25;
    v30 = sub_238149948();
    v31 = sub_2381497A0();
    sub_238134D20(v21, v19, v11, v30, v31);
    v32 = &qword_27DEEDAC0;
    v33 = &qword_23815F438;
    v34 = v21;
  }

  else
  {
    v67 = v11;
    v68 = v19;
    sub_238136C8C(v81);
    sub_238152F2C();
    v35 = sub_238152EEC();
    (*(v7 + 8))(v9, v6);
    if (v35)
    {
      v36 = v77;
      v37 = v72;
      (*(v77 + 16))(v76, v81, v72);
      swift_storeEnumTagMultiPayload();
      v66 = sub_238149488();
      v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAD8, &qword_23815F448);
      v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAE0, &unk_23815F450);
      v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
      v41 = sub_23814965C();
      v42 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
      v43 = sub_23807B04C();
      *&v82 = v39;
      *(&v82 + 1) = v40;
      *&v83 = MEMORY[0x277CE0BD8];
      *(&v83 + 1) = &type metadata for _DDPinEntryAlertView;
      *&v84 = v41;
      *(&v84 + 1) = v42;
      v85 = MEMORY[0x277CE0BC8];
      v86 = v43;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v45 = sub_2380D0648();
      *&v82 = v38;
      *(&v82 + 1) = &type metadata for DAPairingState;
      *&v83 = OpaqueTypeConformance2;
      *(&v83 + 1) = v45;
      swift_getOpaqueTypeConformance2();
      v46 = v69;
      sub_238153ECC();
    }

    else
    {
      v47 = sub_2381540FC();
      v48 = v72;
      (*(v77 + 16))(v5, v81, v72);
      v49 = v76;
      v5[*(v75 + 36)] = v47;
      sub_2380712E4(v5, v49, &qword_27DEEDAA8, &qword_23815F420);
      swift_storeEnumTagMultiPayload();
      v66 = sub_238149488();
      v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAD8, &qword_23815F448);
      v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAE0, &unk_23815F450);
      v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
      v52 = sub_23814965C();
      v53 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
      v54 = sub_23807B04C();
      *&v82 = v50;
      *(&v82 + 1) = v51;
      *&v83 = MEMORY[0x277CE0BD8];
      *(&v83 + 1) = &type metadata for _DDPinEntryAlertView;
      *&v84 = v52;
      *(&v84 + 1) = v53;
      v85 = MEMORY[0x277CE0BC8];
      v86 = v54;
      v55 = swift_getOpaqueTypeConformance2();
      v56 = sub_2380D0648();
      *&v82 = v65;
      *(&v82 + 1) = &type metadata for DAPairingState;
      *&v83 = v55;
      *(&v83 + 1) = v56;
      swift_getOpaqueTypeConformance2();
      v46 = v69;
      v37 = v48;
      v36 = v77;
      sub_238153ECC();
      sub_238071284(v5, &qword_27DEEDAA8, &qword_23815F420);
    }

    v57 = v67;
    (*(v36 + 8))(v81, v37);
    v58 = sub_2381497A0();
    v59 = *(v73 + 16);
    v60 = v70;
    v59(v70, v46, v57);
    sub_238071284(v46, &qword_27DEEDAB8, &qword_23815F430);
    v61 = v71;
    v59(v71, v60, v57);
    sub_238071284(v60, &qword_27DEEDAB8, &qword_23815F430);
    v62 = v74;
    v59(v74, v61, v57);
    v63 = sub_238149948();
    sub_238134E18(v62, v68, v57, v63, v58);
    sub_238071284(v62, &qword_27DEEDAB8, &qword_23815F430);
    v34 = v61;
    v32 = &qword_27DEEDAB8;
    v33 = &qword_23815F430;
  }

  sub_238071284(v34, v32, v33);
  sub_238149BA8();
  (*(v78 + 16))(v80, v24, v79);
  return sub_238071284(v24, &qword_27DEEDAC8, &qword_23815F440);
}

uint64_t sub_23813F930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v109 = a3;
  v110 = a1;
  v111 = a2;
  v124 = a7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCE8, &qword_23815F828);
  MEMORY[0x28223BE20](v123);
  v117 = &v104 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCF0, &qword_23815F830);
  MEMORY[0x28223BE20](v105);
  v108 = &v104 - v11;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCF8, &qword_23815F838);
  v12 = MEMORY[0x28223BE20](v107);
  v14 = (&v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v104 = &v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD00, &qword_23815F840);
  v113 = *(v16 - 8);
  v114 = v16;
  MEMORY[0x28223BE20](v16);
  v106 = &v104 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD08, &qword_23815F848);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v115 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = &v104 - v21;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD10, &qword_23815F850);
  MEMORY[0x28223BE20](v118);
  v121 = &v104 - v22;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD18, &qword_23815F858);
  MEMORY[0x28223BE20](v119);
  v24 = &v104 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD20, &qword_23815F860);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v112 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = (&v104 - v29);
  MEMORY[0x28223BE20](v28);
  v32 = &v104 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD28, &qword_23815F868);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v122 = &v104 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v120 = &v104 - v36;
  if (a4)
  {
    v37 = sub_238135F00();
    v112 = a6;
    v38 = sub_2380BECE0(a6, a6, v37);
    if (v39 == -1)
    {
      v74 = v116;
      (*(v113 + 56))(v116, 1, 1, v114);
    }

    else
    {
      v40 = v38;
      v41 = v39;
      if (v39)
      {
        swift_storeEnumTagMultiPayload();
        sub_2380711D4(&qword_27DEEDD58, &qword_27DEEDCF8, &qword_23815F838, MEMORY[0x277CE11A8]);
        v42 = v106;
        sub_238153ECC();
        sub_2380B3E24(v40, v41);
      }

      else
      {
        v75 = sub_238139870();
        sub_2381533AC();
        v76 = MEMORY[0x2383E79D0]();
        v77 = sub_23815337C();

        if ((((v75 - 3) < 0xFEu) & ~v77) != 0 || v75 == 3)
        {
          v78 = sub_2381548DC();
        }

        else
        {
          v78 = sub_2381548AC();
        }

        v42 = v106;
        *v14 = v78;
        v14[1] = v79;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD60, &qword_23815F8D0);
        sub_238142478(a5, v14 + *(v80 + 44));
        v112 = v40;
        v81 = v104;
        sub_23807121C(v14, v104, &qword_27DEEDCF8, &qword_23815F838);
        sub_2380712E4(v81, v108, &qword_27DEEDCF8, &qword_23815F838);
        swift_storeEnumTagMultiPayload();
        sub_2380711D4(&qword_27DEEDD58, &qword_27DEEDCF8, &qword_23815F838, MEMORY[0x277CE11A8]);
        sub_238153ECC();
        sub_2380B3E24(v112, v41);
        sub_238071284(v81, &qword_27DEEDCF8, &qword_23815F838);
      }

      v74 = v116;
      sub_23807121C(v42, v116, &qword_27DEEDD00, &qword_23815F840);
      (*(v113 + 56))(v74, 0, 1, v114);
    }

    type metadata accessor for _DDDevicePickerView(0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    sub_238141270(v156, *(&v156 + 1), &v156);

    v144 = v164;
    v145[0] = v165[0];
    *(v145 + 15) = *(v165 + 15);
    v140 = v160;
    v141 = v161;
    v142 = v162;
    v143 = v163;
    v136 = v156;
    v137 = v157;
    v138 = v158;
    v139 = v159;
    v82 = v115;
    sub_2380712E4(v74, v115, &qword_27DEEDD08, &qword_23815F848);
    v134 = v144;
    v135[0] = v145[0];
    *(v135 + 15) = *(v145 + 15);
    v130 = v140;
    v131 = v141;
    v132 = v142;
    v133 = v143;
    v126 = v136;
    v127 = v137;
    v128 = v138;
    v129 = v139;
    v83 = v117;
    sub_2380712E4(v82, v117, &qword_27DEEDD08, &qword_23815F848);
    v84 = v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD30, &qword_23815F8B8) + 48);
    v85 = v133;
    v86 = v134;
    v154 = v134;
    v155[0] = v135[0];
    v87 = v129;
    v88 = v130;
    v150 = v130;
    v151 = v131;
    v89 = v131;
    v90 = v132;
    v152 = v132;
    v153 = v133;
    v146 = v126;
    v147 = v127;
    v92 = v126;
    v91 = v127;
    v148 = v128;
    v149 = v129;
    v93 = v133;
    v94 = v135[0];
    *(v84 + 128) = v134;
    *(v84 + 144) = v94;
    v96 = v128;
    v95 = v129;
    v97 = v131;
    *(v84 + 64) = v130;
    *(v84 + 80) = v97;
    *(v84 + 96) = v132;
    *(v84 + 112) = v93;
    v98 = v127;
    *v84 = v126;
    *(v84 + 16) = v98;
    *(v84 + 32) = v128;
    *(v84 + 48) = v95;
    v164 = v86;
    v165[0] = v135[0];
    v160 = v88;
    v161 = v89;
    v162 = v90;
    v163 = v85;
    v156 = v92;
    v157 = v91;
    *(v155 + 15) = *(v135 + 15);
    *(v84 + 159) = *(v135 + 15);
    *(v165 + 15) = *(v135 + 15);
    v158 = v96;
    v159 = v87;
    sub_2380712E4(&v136, v125, &qword_27DEEDD38, &qword_23815F8C0);
    sub_2380712E4(&v146, v125, &qword_27DEEDD38, &qword_23815F8C0);
    sub_238071284(&v156, &qword_27DEEDD38, &qword_23815F8C0);
    sub_238071284(v82, &qword_27DEEDD08, &qword_23815F848);
    sub_2380712E4(v83, v121, &qword_27DEEDCE8, &qword_23815F828);
    swift_storeEnumTagMultiPayload();
    v99 = MEMORY[0x277CE14C0];
    sub_2380711D4(&qword_27DEEDD40, &qword_27DEEDD18, &qword_23815F858, MEMORY[0x277CE14C0]);
    sub_2380711D4(&qword_27DEEDD48, &qword_27DEEDCE8, &qword_23815F828, v99);
    v70 = v120;
    sub_238153ECC();
    sub_238071284(&v136, &qword_27DEEDD38, &qword_23815F8C0);
    sub_238071284(v83, &qword_27DEEDCE8, &qword_23815F828);
    v71 = v74;
    v72 = &qword_27DEEDD08;
    v73 = &qword_23815F848;
  }

  else
  {
    v117 = v24;
    v43 = sub_238139870();
    sub_2381533AC();
    v44 = MEMORY[0x2383E79D0]();
    v45 = sub_23815337C();

    if ((((v43 - 3) < 0xFEu) & ~v45) != 0 || v43 == 3)
    {
      v46 = sub_2381548DC();
    }

    else
    {
      v46 = sub_2381548AC();
    }

    *v30 = v46;
    v30[1] = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD68, &qword_23815F8D8);
    v50 = v110;
    v49 = v111;
    sub_2381406B0(v30 + *(v48 + 44));
    sub_23807121C(v30, v32, &qword_27DEEDD20, &qword_23815F860);
    sub_238141270(v50, v49, &v136);
    v51 = v112;
    sub_2380712E4(v32, v112, &qword_27DEEDD20, &qword_23815F860);
    v134 = v144;
    v135[0] = v145[0];
    *(v135 + 15) = *(v145 + 15);
    v130 = v140;
    v131 = v141;
    v132 = v142;
    v133 = v143;
    v126 = v136;
    v127 = v137;
    v128 = v138;
    v129 = v139;
    v52 = v117;
    sub_2380712E4(v51, v117, &qword_27DEEDD20, &qword_23815F860);
    v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD70, &qword_23815F8E0) + 48);
    v54 = v133;
    v55 = v132;
    v153 = v133;
    v154 = v134;
    v56 = v134;
    v155[0] = v135[0];
    v57 = v129;
    v58 = v130;
    v150 = v130;
    v151 = v131;
    v59 = v131;
    v152 = v132;
    v146 = v126;
    v147 = v127;
    v61 = v126;
    v60 = v127;
    v148 = v128;
    v149 = v129;
    v62 = v133;
    v63 = v135[0];
    *(v53 + 128) = v134;
    *(v53 + 144) = v63;
    v65 = v128;
    v64 = v129;
    v66 = v131;
    *(v53 + 64) = v130;
    *(v53 + 80) = v66;
    *(v53 + 96) = v132;
    *(v53 + 112) = v62;
    v67 = v127;
    *v53 = v126;
    *(v53 + 16) = v67;
    *(v53 + 32) = v128;
    *(v53 + 48) = v64;
    v163 = v54;
    v164 = v56;
    v165[0] = v135[0];
    v160 = v58;
    v161 = v59;
    v162 = v55;
    v156 = v61;
    v157 = v60;
    *(v155 + 15) = *(v135 + 15);
    *(v53 + 159) = *(v135 + 15);
    *(v165 + 15) = *(v135 + 15);
    v158 = v65;
    v159 = v57;
    sub_2380712E4(&v136, v125, &qword_27DEEDD38, &qword_23815F8C0);
    sub_2380712E4(&v146, v125, &qword_27DEEDD38, &qword_23815F8C0);
    sub_238071284(&v156, &qword_27DEEDD38, &qword_23815F8C0);
    sub_238071284(v51, &qword_27DEEDD20, &qword_23815F860);
    sub_2380712E4(v52, v121, &qword_27DEEDD18, &qword_23815F858);
    swift_storeEnumTagMultiPayload();
    v68 = MEMORY[0x277CE14C0];
    sub_2380711D4(&qword_27DEEDD40, &qword_27DEEDD18, &qword_23815F858, MEMORY[0x277CE14C0]);
    sub_2380711D4(&qword_27DEEDD48, &qword_27DEEDCE8, &qword_23815F828, v68);
    v69 = v120;
    sub_238153ECC();
    sub_238071284(&v136, &qword_27DEEDD38, &qword_23815F8C0);
    v70 = v69;
    sub_238071284(v52, &qword_27DEEDD18, &qword_23815F858);
    v71 = v32;
    v72 = &qword_27DEEDD20;
    v73 = &qword_23815F860;
  }

  sub_238071284(v71, v72, v73);
  v100 = v122;
  sub_2380712E4(v70, v122, &qword_27DEEDD28, &qword_23815F868);
  v101 = v124;
  sub_2380712E4(v100, v124, &qword_27DEEDD28, &qword_23815F868);
  v102 = v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD50, &qword_23815F8C8) + 48);
  *v102 = 0;
  *(v102 + 8) = 1;
  sub_238071284(v70, &qword_27DEEDD28, &qword_23815F868);
  return sub_238071284(v100, &qword_27DEEDD28, &qword_23815F868);
}

uint64_t sub_2381406B0@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD78, &qword_23815F8E8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v32 - v7;
  v8 = sub_23815468C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v38 = sub_2381546CC();
  (*(v9 + 8))(v11, v8);
  sub_2381548DC();
  sub_2381538EC();
  v12 = v67;
  v13 = v68;
  v14 = v69;
  v15 = v70;
  v36 = v71;
  v32 = v72;
  v33 = v67;
  LOBYTE(v9) = sub_23815411C();
  sub_238139870();
  sub_23815377C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v66 = v13;
  v34 = v13;
  v64 = v15;
  v61 = 0;
  v24 = v37;
  sub_238140AAC(v37);
  v25 = v35;
  sub_2380712E4(v24, v35, &qword_27DEEDD78, &qword_23815F8E8);
  *&v39 = v38;
  *(&v39 + 1) = v12;
  LOBYTE(v40) = v13;
  *(&v40 + 1) = *v65;
  DWORD1(v40) = *&v65[3];
  *(&v40 + 1) = v14;
  LOBYTE(v41) = v15;
  *(&v41 + 1) = *v63;
  DWORD1(v41) = *&v63[3];
  v26 = v32;
  *(&v41 + 1) = v36;
  *&v42 = v32;
  BYTE8(v42) = v9;
  *(&v42 + 9) = *v62;
  HIDWORD(v42) = *&v62[3];
  *&v43 = v17;
  *(&v43 + 1) = v19;
  *&v44 = v21;
  *(&v44 + 1) = v23;
  v45 = 0;
  *(a3 + 96) = 0;
  v27 = v40;
  *a3 = v39;
  *(a3 + 16) = v27;
  v28 = v44;
  *(a3 + 64) = v43;
  *(a3 + 80) = v28;
  v29 = v42;
  *(a3 + 32) = v41;
  *(a3 + 48) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD80, &qword_23815F8F0);
  sub_2380712E4(v25, a3 + *(v30 + 48), &qword_27DEEDD78, &qword_23815F8E8);
  sub_2380712E4(&v39, v46, &qword_27DEEDD88, &qword_23815F8F8);
  sub_238071284(v37, &qword_27DEEDD78, &qword_23815F8E8);
  sub_238071284(v25, &qword_27DEEDD78, &qword_23815F8E8);
  v46[0] = v38;
  v46[1] = v33;
  v47 = v34;
  *v48 = *v65;
  *&v48[3] = *&v65[3];
  v49 = v14;
  v50 = v15;
  *v51 = *v63;
  *&v51[3] = *&v63[3];
  v52 = v36;
  v53 = v26;
  v54 = v9;
  *&v55[3] = *&v62[3];
  *v55 = *v62;
  v56 = v17;
  v57 = v19;
  v58 = v21;
  v59 = v23;
  v60 = 0;
  return sub_238071284(v46, &qword_27DEEDD88, &qword_23815F8F8);
}

uint64_t sub_238140AAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD90, &qword_23815F900);
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - v5;
  v7 = type metadata accessor for _DDDevicePickerView(0);
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD98, &qword_23815F908);
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDA0, &qword_23815F910);
  MEMORY[0x28223BE20](v12);
  v65 = &v57 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDA8, &qword_23815F918);
  MEMORY[0x28223BE20](v64);
  v66 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDB0, &qword_23815F920);
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  if (*(*(v2 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) || (v60 = a1, v58 = &v57 - v17, v57 = v18, v20 = sub_238139870(), sub_2381533AC(), v21 = MEMORY[0x2383E79D0](), v22 = sub_23815337C(), v59 = v4, v23 = v22, v21, (((v20 - 3) < 0xFEu) & ~v23) != 0) || v20 == 3)
  {
    swift_storeEnumTagMultiPayload();
    sub_23814C024();
    return sub_238153ECC();
  }

  else
  {
    v24 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v25 = sub_238154C8C();
    v26 = [v24 initWithBundleIdentifier_];

    v27 = *MEMORY[0x277D1B240];
    v28 = objc_opt_self();
    v29 = v26;
    v30 = [v28 imageDescriptorNamed_];
    sub_23814EF88(v2, &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
    v31 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v32 = swift_allocObject() + v31;
    v33 = v29;
    sub_23814E8B0(&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v32, type metadata accessor for _DDDevicePickerView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB760, &qword_23815F800);
    sub_23814C274();
    sub_2381528FC();
    sub_238139870();
    CGSizeMake();
    v34 = v65;
    sub_238139870();
    CGSizeMake();
    sub_2381548DC();
    sub_2381538EC();
    (*(v62 + 32))(v34, v11, v63);
    v35 = (v34 + *(v12 + 36));
    v36 = v68;
    *v35 = v67;
    v35[1] = v36;
    v35[2] = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238158810;
    v38 = sub_23815410C();
    *(inited + 32) = v38;
    v39 = sub_23815412C();
    *(inited + 33) = v39;
    v40 = sub_23815413C();
    sub_23815413C();
    if (sub_23815413C() != v38)
    {
      v40 = sub_23815413C();
    }

    sub_23815413C();
    if (sub_23815413C() != v39)
    {
      v40 = sub_23815413C();
    }

    sub_23815377C();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v66;
    sub_23807121C(v34, v66, &qword_27DEEDDA0, &qword_23815F910);
    v50 = v49 + *(v64 + 36);
    *v50 = v40;
    *(v50 + 8) = v42;
    *(v50 + 16) = v44;
    *(v50 + 24) = v46;
    *(v50 + 32) = v48;
    *(v50 + 40) = 0;
    sub_2381545DC();
    v51 = sub_23815460C();

    v52 = v49;
    v53 = v57;
    sub_23807121C(v52, v57, &qword_27DEEDDA8, &qword_23815F918);
    v54 = (v53 + *(v15 + 36));
    *v54 = v51;
    v54[1] = 0x4026000000000000;
    v54[2] = 0;
    v54[3] = 0;
    v55 = v53;
    v56 = v58;
    sub_23807121C(v55, v58, &qword_27DEEDDB0, &qword_23815F920);
    sub_2380712E4(v56, v6, &qword_27DEEDDB0, &qword_23815F920);
    swift_storeEnumTagMultiPayload();
    sub_23814C024();
    sub_238153ECC();

    return sub_238071284(v56, &qword_27DEEDDB0, &qword_23815F920);
  }
}

__n128 sub_238141270@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_238139870() == 1)
  {
    v5 = 46;
  }

  else
  {
    v5 = 43;
  }

  if (*(*(v3 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType))
  {
    v6 = (v3 + *(type metadata accessor for _DDDevicePickerView(0) + 96));
    v7 = *v6;
    v8 = v6[1];
    v9 = sub_238154CCC();
    if (v8)
    {
      if (v7 == v9 && v8 == v10)
      {

LABEL_15:
        v5 = 45;
        goto LABEL_16;
      }

      v12 = sub_2381555CC();

      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v5 = 41;
  }

LABEL_16:
  v13 = sub_238139870();
  if (v13 <= 1)
  {
    if (v13)
    {
      v55 = sub_238153DFC();
      LOBYTE(v143) = 0;
      sub_238142D2C(v5, v3, a1, a2, &v97);
      *&v152[7] = v97;
      *&v152[23] = *v98;
      *&v152[39] = *&v98[16];
      *&v152[55] = *&v98[32];
      v105 = v55;
      v106[0] = v143;
      *&v106[1] = *v152;
      *&v106[17] = *&v152[16];
      *&v106[33] = *&v152[32];
      *&v106[49] = *&v152[48];
      *&v106[64] = *&v98[40];
      *&v152[32] = *&v106[16];
      *&v152[48] = *&v106[32];
      *&v152[64] = *&v106[48];
      *&v153 = *&v98[40];
      *v152 = v55;
      *&v152[16] = *v106;
      LOBYTE(v88) = 0;
      BYTE8(v153) = 0;
      sub_2380712E4(&v105, &v143, &qword_27DEEC998, &qword_23815DAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC998, &qword_23815DAA0);
      sub_2380711D4(&qword_27DEEDE08, &qword_27DEEC998, &qword_23815DAA0, MEMORY[0x277CE1198]);
      sub_238153ECC();
      v125 = v145;
      v126 = v146;
      v127[0] = v147[0];
      *(v127 + 9) = *(v147 + 9);
      v123 = v143;
      v124 = v144;
      sub_23814C52C(&v123);
      v156 = v130;
      *v157 = v131;
      *&v157[16] = v132;
      *&v152[64] = v127[0];
      v153 = v127[1];
      v154 = v128;
      v155 = v129;
      *v152 = v123;
      *&v152[16] = v124;
      *&v152[32] = v125;
      *&v152[48] = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE00, &qword_23815F938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE28, &qword_23815F948);
      sub_23814C398();
      sub_23814C47C();
      sub_238153ECC();
      v150 = v120;
      *v151 = v121;
      *&v151[16] = v122;
      v147[0] = v116;
      v147[1] = v117;
      v148 = v118;
      v149 = v119;
      v143 = v112;
      v144 = v113;
      v145 = v114;
      v146 = v115;
      sub_23814C538(&v143);
      v156 = v150;
      *v157 = *v151;
      *&v157[15] = *&v151[15];
      *&v152[64] = v147[0];
      v153 = v147[1];
      v154 = v148;
      v155 = v149;
      *v152 = v143;
      *&v152[16] = v144;
      *&v152[32] = v145;
      *&v152[48] = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDE8, &qword_23815F930);
      sub_23814C30C();
      sub_238153ECC();
      sub_238071284(&v105, &qword_27DEEC998, &qword_23815DAA0);
    }

    else
    {
      v53 = sub_238153DFC();
      LOBYTE(v143) = 0;
      sub_2381429D0(v5, a1, a2, &v88);
      *&v152[7] = v88;
      *&v152[23] = v89;
      *&v152[39] = v90;
      *&v152[55] = v91;
      v97 = v53;
      v98[0] = v143;
      *&v98[1] = *v152;
      *&v98[17] = *&v152[16];
      *&v98[33] = *&v152[32];
      *&v98[49] = *&v152[48];
      *&v98[64] = *(&v91 + 1);
      v105 = v53;
      *v106 = *v98;
      *&v106[64] = *(&v91 + 1);
      *&v106[32] = *&v98[32];
      *&v106[48] = *&v98[48];
      *&v106[16] = *&v98[16];
      sub_23814C554(&v105);
      v156 = v109;
      *v157 = v110;
      v157[16] = v111;
      *&v152[64] = *&v106[48];
      v153 = *&v106[64];
      v154 = v107;
      v155 = v108;
      *v152 = v105;
      *&v152[16] = *v106;
      *&v152[32] = *&v106[16];
      *&v152[48] = *&v106[32];
      sub_2380712E4(&v97, &v143, &qword_27DEEC998, &qword_23815DAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC998, &qword_23815DAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE18, &qword_23815F940);
      sub_2380711D4(&qword_27DEEDE08, &qword_27DEEC998, &qword_23815DAA0, MEMORY[0x277CE1198]);
      sub_2380711D4(&qword_27DEEDE10, &qword_27DEEDE18, &qword_23815F940, MEMORY[0x277CE14C0]);
      sub_238153ECC();
      v130 = v150;
      v131 = *v151;
      LOBYTE(v132) = v151[16];
      v127[0] = v147[0];
      v127[1] = v147[1];
      v128 = v148;
      v129 = v149;
      v123 = v143;
      v124 = v144;
      v125 = v145;
      v126 = v146;
      sub_23814C54C(&v123);
      v156 = v130;
      *v157 = v131;
      *&v157[16] = v132;
      *&v152[64] = v127[0];
      v153 = v127[1];
      v154 = v128;
      v155 = v129;
      *v152 = v123;
      *&v152[16] = v124;
      *&v152[32] = v125;
      *&v152[48] = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE00, &qword_23815F938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE28, &qword_23815F948);
      sub_23814C398();
      sub_23814C47C();
      sub_238153ECC();
      v150 = v120;
      *v151 = v121;
      *&v151[16] = v122;
      v147[0] = v116;
      v147[1] = v117;
      v148 = v118;
      v149 = v119;
      v143 = v112;
      v144 = v113;
      v145 = v114;
      v146 = v115;
      sub_23814C538(&v143);
      v155 = v149;
      v156 = v150;
      *v157 = *v151;
      *&v157[15] = *&v151[15];
      *&v152[64] = v147[0];
      v153 = v147[1];
      v154 = v148;
      *v152 = v143;
      *&v152[16] = v144;
      *&v152[32] = v145;
      *&v152[48] = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDE8, &qword_23815F930);
      sub_23814C30C();
      sub_238153ECC();
      sub_238071284(&v97, &qword_27DEEC998, &qword_23815DAA0);
    }

    v156 = v141;
    *v157 = v142[0];
    *&v157[15] = *(v142 + 15);
    *&v152[64] = v137;
    v153 = v138;
    v154 = v139;
    v155 = v140;
    *v152 = v133;
    *&v152[16] = v134;
    *&v152[32] = v135;
    *&v152[48] = v136;
  }

  else
  {
    if (v13 == 2)
    {
      v54 = sub_238153DFC();
      LOBYTE(v143) = 0;
      sub_238143038(v5, a1, a2, &v97);
      *&v152[7] = v97;
      *&v152[23] = *v98;
      *&v152[39] = *&v98[16];
      *&v152[55] = *&v98[32];
      v105 = v54;
      v106[0] = v143;
      *&v106[1] = *v152;
      *&v106[17] = *&v152[16];
      *&v106[33] = *&v152[32];
      *&v106[49] = *&v152[48];
      *&v106[64] = *&v98[40];
      *&v152[32] = *&v106[16];
      *&v152[48] = *&v106[32];
      *&v152[64] = *&v106[48];
      *&v153 = *&v98[40];
      *v152 = v54;
      *&v152[16] = *v106;
      LOBYTE(v88) = 1;
      BYTE8(v153) = 1;
      sub_2380712E4(&v105, &v143, &qword_27DEEC998, &qword_23815DAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC998, &qword_23815DAA0);
      sub_2380711D4(&qword_27DEEDE08, &qword_27DEEC998, &qword_23815DAA0, MEMORY[0x277CE1198]);
      sub_238153ECC();
      v125 = v145;
      v126 = v146;
      v127[0] = v147[0];
      *(v127 + 9) = *(v147 + 9);
      v123 = v143;
      v124 = v144;
      sub_23814C52C(&v123);
      v156 = v130;
      *v157 = v131;
      *&v157[16] = v132;
      *&v152[64] = v127[0];
      v153 = v127[1];
      v154 = v128;
      v155 = v129;
      *v152 = v123;
      *&v152[16] = v124;
      *&v152[32] = v125;
      *&v152[48] = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE00, &qword_23815F938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE28, &qword_23815F948);
      sub_23814C398();
      sub_23814C47C();
      sub_238153ECC();
      v150 = v120;
      *v151 = v121;
      *&v151[16] = v122;
      v147[0] = v116;
      v147[1] = v117;
      v148 = v118;
      v149 = v119;
      v143 = v112;
      v144 = v113;
      v145 = v114;
      v146 = v115;
      sub_23814C538(&v143);
      v156 = v150;
      *v157 = *v151;
      *&v157[15] = *&v151[15];
      *&v152[64] = v147[0];
      v153 = v147[1];
      v154 = v148;
      v155 = v149;
      *v152 = v143;
      *&v152[16] = v144;
      *&v152[32] = v145;
      *&v152[48] = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDE8, &qword_23815F930);
      sub_23814C30C();
      sub_238153ECC();
      sub_238071284(&v105, &qword_27DEEC998, &qword_23815DAA0);
      v156 = v141;
      *v157 = v142[0];
      *&v157[15] = *(v142 + 15);
      *&v152[64] = v137;
      v153 = v138;
      v154 = v139;
      v155 = v140;
      *v152 = v133;
      *&v152[16] = v134;
      v52 = v135;
      v51 = v136;
    }

    else
    {
      if (v13 != 3)
      {
        sub_23814C300(&v143);
        v141 = v150;
        v142[0] = *v151;
        *(v142 + 15) = *&v151[15];
        v137 = v147[0];
        v138 = v147[1];
        v139 = v148;
        v140 = v149;
        v133 = v143;
        v134 = v144;
        v135 = v145;
        v136 = v146;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDE8, &qword_23815F930);
        sub_23814C30C();
        sub_238153ECC();
        goto LABEL_27;
      }

      *v152 = sub_23807CB28(v5);
      sub_2380704A0();
      v14 = sub_23815438C();
      v67 = a3;
      v16 = v15;
      v18 = v17;
      sub_2381542BC();
      sub_2381541AC();

      v19 = sub_23815435C();
      v62 = v20;
      v64 = v19;
      v22 = v21;
      v61 = v23;

      sub_238070490(v14, v16, v18 & 1);

      v24 = sub_23815412C();
      sub_23815377C();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v152[0] = v22 & 1;
      LOBYTE(v143) = 0;
      v33 = sub_23815414C();
      sub_23815377C();
      LOBYTE(v133) = 0;
      *&v79 = v64;
      *(&v79 + 1) = v62;
      LOBYTE(v80) = v22 & 1;
      *(&v80 + 1) = v61;
      LOBYTE(v81) = v24;
      *(&v81 + 1) = v26;
      *&v82 = v28;
      *(&v82 + 1) = v30;
      *&v83 = v32;
      BYTE8(v83) = 0;
      HIDWORD(v83) = *&v152[3];
      *(&v83 + 9) = *v152;
      LOBYTE(v84) = v33;
      DWORD1(v84) = *(&v143 + 3);
      *(&v84 + 1) = v143;
      *(&v84 + 1) = v34;
      *v85 = v35;
      *&v85[8] = v36;
      *&v85[16] = v37;
      v85[24] = 0;
      *v152 = a1;
      *&v152[8] = a2;

      v38 = sub_23815438C();
      v40 = v39;
      v42 = v41;
      sub_2381542BC();
      v43 = sub_23815435C();
      v63 = v44;
      v65 = v43;
      v46 = v45;

      sub_238070490(v38, v40, v42 & 1);

      sub_23815463C();
      v69 = sub_23815431C();
      v71 = v47;
      v66 = v48;
      v50 = v49;

      sub_238070490(v65, v63, v46 & 1);

      *v78 = *v85;
      *&v78[9] = *&v85[9];
      v74 = v81;
      v75 = v82;
      v86[2] = v81;
      v86[3] = v82;
      v72 = v79;
      v73 = v80;
      v86[0] = v79;
      v86[1] = v80;
      *(v87 + 9) = *&v85[9];
      v87[0] = *v85;
      v76 = v83;
      v77 = v84;
      v86[4] = v83;
      v86[5] = v84;
      v90 = v81;
      v91 = v82;
      v88 = v79;
      v89 = v80;
      *(v94 + 9) = *&v85[9];
      v93 = v84;
      v94[0] = *v85;
      v92 = v83;
      *&v95 = v69;
      *(&v95 + 1) = v66;
      LOBYTE(v96) = v50 & 1;
      *(&v96 + 1) = v71;
      v97 = v79;
      *v98 = v80;
      *&v98[48] = v83;
      *&v98[64] = v84;
      *&v98[16] = v81;
      *&v98[32] = v82;
      v101 = v95;
      v102 = v96;
      v99 = *v85;
      v100 = v94[1];
      sub_2380712E4(&v79, v152, &qword_27DEEDE30, &qword_23815F950);
      sub_238070430(v69, v66, v50 & 1);

      sub_2380712E4(v86, v152, &qword_27DEEDE30, &qword_23815F950);
      sub_238070430(v69, v66, v50 & 1);

      sub_238070490(v69, v66, v50 & 1);

      v103[4] = v76;
      v103[5] = v77;
      *v104 = *v78;
      *&v104[9] = *&v78[9];
      v103[0] = v72;
      v103[1] = v73;
      v103[2] = v74;
      v103[3] = v75;
      sub_238071284(v103, &qword_27DEEDE30, &qword_23815F950);
      v107 = v99;
      v108 = v100;
      v109 = v101;
      v110 = v102;
      *&v106[16] = *&v98[16];
      *&v106[32] = *&v98[32];
      *&v106[48] = *&v98[48];
      *&v106[64] = *&v98[64];
      v105 = v97;
      *v106 = *v98;
      sub_23814C540(&v105);
      v156 = v109;
      *v157 = v110;
      v157[16] = v111;
      *&v152[64] = *&v106[48];
      v153 = *&v106[64];
      v154 = v107;
      v155 = v108;
      *v152 = v105;
      *&v152[16] = *v106;
      *&v152[32] = *&v106[16];
      *&v152[48] = *&v106[32];
      sub_2380712E4(&v88, &v143, &qword_27DEEDE38, &qword_23815F958);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC998, &qword_23815DAA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE18, &qword_23815F940);
      sub_2380711D4(&qword_27DEEDE08, &qword_27DEEC998, &qword_23815DAA0, MEMORY[0x277CE1198]);
      sub_2380711D4(&qword_27DEEDE10, &qword_27DEEDE18, &qword_23815F940, MEMORY[0x277CE14C0]);
      a3 = v67;
      sub_238153ECC();
      v130 = v150;
      v131 = *v151;
      LOBYTE(v132) = v151[16];
      v127[0] = v147[0];
      v127[1] = v147[1];
      v128 = v148;
      v129 = v149;
      v123 = v143;
      v124 = v144;
      v125 = v145;
      v126 = v146;
      sub_23814C54C(&v123);
      v156 = v130;
      *v157 = v131;
      *&v157[16] = v132;
      *&v152[64] = v127[0];
      v153 = v127[1];
      v154 = v128;
      v155 = v129;
      *v152 = v123;
      *&v152[16] = v124;
      *&v152[32] = v125;
      *&v152[48] = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE00, &qword_23815F938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE28, &qword_23815F948);
      sub_23814C398();
      sub_23814C47C();
      sub_238153ECC();
      v150 = v120;
      *v151 = v121;
      *&v151[16] = v122;
      v147[0] = v116;
      v147[1] = v117;
      v148 = v118;
      v149 = v119;
      v143 = v112;
      v144 = v113;
      v145 = v114;
      v146 = v115;
      sub_23814C538(&v143);
      v156 = v150;
      *v157 = *v151;
      *&v157[15] = *&v151[15];
      *&v152[64] = v147[0];
      v153 = v147[1];
      v154 = v148;
      v155 = v149;
      *v152 = v143;
      *&v152[16] = v144;
      *&v152[32] = v145;
      *&v152[48] = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDE8, &qword_23815F930);
      sub_23814C30C();
      sub_238153ECC();
      sub_238071284(&v88, &qword_27DEEDE38, &qword_23815F958);
      sub_238070490(v69, v66, v50 & 1);

      sub_238071284(&v79, &qword_27DEEDE30, &qword_23815F950);
      v156 = v141;
      *v157 = v142[0];
      *&v157[15] = *(v142 + 15);
      *&v152[64] = v137;
      v153 = v138;
      v154 = v139;
      v155 = v140;
      *v152 = v133;
      *&v152[16] = v134;
      v52 = v135;
      v51 = v136;
    }

    *&v152[32] = v52;
    *&v152[48] = v51;
  }

LABEL_27:
  v56 = *v157;
  *(a3 + 128) = v156;
  *(a3 + 144) = v56;
  *(a3 + 159) = *&v157[15];
  v57 = v153;
  *(a3 + 64) = *&v152[64];
  *(a3 + 80) = v57;
  v58 = v155;
  *(a3 + 96) = v154;
  *(a3 + 112) = v58;
  v59 = *&v152[16];
  *a3 = *v152;
  *(a3 + 16) = v59;
  result = *&v152[48];
  *(a3 + 32) = *&v152[32];
  *(a3 + 48) = result;
  return result;
}

double sub_238142478@<D0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDD78, &qword_23815F8E8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v26 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-v8];
  v10 = sub_23815468C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
  v14 = sub_2381546CC();
  (*(v11 + 8))(v13, v10);
  sub_2381548DC();
  sub_2381538EC();
  LOBYTE(v13) = v29;
  v15 = v30;
  v24 = v31;
  v17 = v32;
  v16 = v33;
  v25 = v9;
  v18 = v28;
  sub_238140AAC(v9);
  v19 = v9;
  v20 = v26;
  sub_2380712E4(v19, v26, &qword_27DEEDD78, &qword_23815F8E8);
  *a4 = v14;
  *(a4 + 8) = v18;
  *(a4 + 16) = v13;
  *(a4 + 24) = v15;
  *(a4 + 32) = v24;
  *(a4 + 40) = v17;
  *(a4 + 48) = v16;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDDE0, &qword_23815F928);
  sub_2380712E4(v20, a4 + *(v21 + 48), &qword_27DEEDD78, &qword_23815F8E8);

  sub_238071284(v25, &qword_27DEEDD78, &qword_23815F8E8);
  sub_238071284(v20, &qword_27DEEDD78, &qword_23815F8E8);

  return result;
}

double sub_23814270C(char a1, char a2)
{
  if (a2 == 1)
  {
    return 16.0;
  }

  sub_2381533AC();
  v5 = MEMORY[0x2383E79D0]();
  v6 = sub_23815337C();

  if (v6)
  {
    if (a2 == 3)
    {
      return 13.0;
    }
  }

  else if (a2 != 2)
  {
    return 13.0;
  }

  v7 = a2 != 2 && a1 == 0;
  result = 0.0;
  if (!v7)
  {
    return 16.0;
  }

  return result;
}

double sub_2381427C8@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_23815468C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v7 = sub_2381546CC();
  (*(v4 + 8))(v6, v3);
  sub_238139870();
  CGSizeMake();
  sub_238139870();
  CGSizeMake();
  sub_2381548DC();
  sub_2381538EC();
  *&v10[8] = v11;
  *&v10[24] = v12;
  *&v10[40] = v13;
  v8 = *&v10[18];
  *(a2 + 18) = *&v10[2];
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v8;
  result = *&v10[34];
  *(a2 + 50) = *&v10[34];
  *(a2 + 64) = *&v10[48];
  return result;
}

uint64_t sub_2381429A8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2381545EC();
  *a2 = result;
  return result;
}

uint64_t sub_2381429D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v54 = sub_23815426C();
  v49 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_23807CB28(a1);
  v57 = v7;
  v45 = sub_2380704A0();
  v8 = sub_23815438C();
  v10 = v9;
  v12 = v11;
  sub_23815428C();
  v13 = sub_23815435C();
  v15 = v14;
  v17 = v16;

  sub_238070490(v8, v10, v12 & 1);

  sub_23815463C();
  v18 = sub_23815431C();
  v51 = v19;
  v52 = v18;
  v50 = v20;
  v53 = v21;

  sub_238070490(v13, v15, v17 & 1);

  v56 = v47;
  v57 = v48;

  v22 = sub_23815438C();
  v24 = v23;
  LOBYTE(v13) = v25;
  sub_23815424C();
  v26 = v49;
  v27 = v46;
  v28 = v54;
  (*(v49 + 104))(v46, *MEMORY[0x277CE0A10], v54);
  sub_23815429C();

  (*(v26 + 8))(v27, v28);
  v29 = sub_23815435C();
  v31 = v30;
  LOBYTE(v26) = v32;

  sub_238070490(v22, v24, v13 & 1);

  sub_23815421C();
  v33 = sub_2381542FC();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_238070490(v29, v31, v26 & 1);

  v40 = v50 & 1;
  v55 = v50 & 1;
  LOBYTE(v56) = v50 & 1;
  v58 = v37 & 1;
  v42 = v51;
  v41 = v52;
  *a4 = v52;
  *(a4 + 8) = v42;
  *(a4 + 16) = v40;
  *(a4 + 24) = v53;
  *(a4 + 32) = v33;
  *(a4 + 40) = v35;
  *(a4 + 48) = v37 & 1;
  *(a4 + 56) = v39;
  v43 = v41;
  sub_238070430(v41, v42, v40);

  sub_238070430(v33, v35, v37 & 1);

  sub_238070490(v33, v35, v37 & 1);

  sub_238070490(v43, v42, v55);
}

uint64_t sub_238142D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_23807CB28(a1);
  sub_2380704A0();
  v6 = sub_23815438C();
  v8 = v7;
  v10 = v9;
  sub_23815424C();
  v11 = sub_23815435C();
  v13 = v12;
  v15 = v14;

  sub_238070490(v6, v8, v10 & 1);

  v16 = sub_23815434C();
  v43 = v17;
  v44 = v16;
  v42 = v18;
  v45 = v19;
  sub_238070490(v11, v13, v15 & 1);

  if (*(*(a2 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType))
  {
  }

  else
  {
    sub_23807CB28(44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_238157F20;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_2380F1440();
    *(v20 + 32) = a3;
    *(v20 + 40) = a4;

    sub_238154CEC();
  }

  v21 = sub_23815438C();
  v23 = v22;
  v25 = v24;
  sub_23815417C();
  v26 = sub_23815435C();
  v28 = v27;
  v30 = v29;

  sub_238070490(v21, v23, v25 & 1);

  sub_23815463C();
  v31 = sub_23815431C();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_238070490(v26, v28, v30 & 1);

  *a5 = v44;
  *(a5 + 8) = v43;
  *(a5 + 16) = v42 & 1;
  *(a5 + 24) = v45;
  *(a5 + 32) = v31;
  *(a5 + 40) = v33;
  *(a5 + 48) = v35 & 1;
  *(a5 + 56) = v37;
  sub_238070430(v44, v43, v42 & 1);

  sub_238070430(v31, v33, v35 & 1);

  sub_238070490(v31, v33, v35 & 1);

  sub_238070490(v44, v43, v42 & 1);
}

uint64_t sub_238143038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v5 = sub_23815426C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_23807CB28(a1);
  v61 = v9;
  v52 = sub_2380704A0();
  v10 = sub_23815438C();
  v12 = v11;
  v14 = v13;
  sub_23815419C();
  v51 = *MEMORY[0x277CE0A10];
  v15 = *(v6 + 104);
  v46 = v6 + 104;
  v47 = v5;
  v50 = v15;
  v15(v8);
  sub_23815429C();

  v16 = *(v6 + 8);
  v48 = v6 + 8;
  v49 = v16;
  v16(v8, v5);
  v17 = sub_23815435C();
  v19 = v18;
  LOBYTE(v5) = v20;

  sub_238070490(v10, v12, v14 & 1);

  sub_23815463C();
  v21 = sub_23815431C();
  v54 = v22;
  v55 = v21;
  v24 = v23;
  v53 = v25;

  sub_238070490(v17, v19, v5 & 1);

  v60 = v56;
  v61 = v57;

  v26 = sub_23815438C();
  v28 = v27;
  LOBYTE(v17) = v29;
  sub_23815424C();
  v30 = v47;
  v50(v8, v51, v47);
  sub_23815429C();

  v49(v8, v30);
  v31 = sub_23815435C();
  v33 = v32;
  LOBYTE(v19) = v34;

  sub_238070490(v26, v28, v17 & 1);

  sub_23815421C();
  v35 = sub_2381542FC();
  v37 = v36;
  LOBYTE(v17) = v38;
  v40 = v39;
  sub_238070490(v31, v33, v19 & 1);

  v41 = v53 & 1;
  v59 = v53 & 1;
  LOBYTE(v60) = v53 & 1;
  v62 = v17 & 1;
  v42 = v58;
  v43 = v54;
  v44 = v55;
  *v58 = v55;
  v42[1] = v24;
  *(v42 + 16) = v41;
  v42[3] = v43;
  v42[4] = v35;
  v42[5] = v37;
  *(v42 + 48) = v17 & 1;
  v42[7] = v40;
  sub_238070430(v44, v24, v41);

  sub_238070430(v35, v37, v17 & 1);

  sub_238070490(v35, v37, v17 & 1);

  sub_238070490(v44, v24, v59);
}

uint64_t sub_2381433E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a2;
  v22 = sub_2381547FC();
  v20 = *(v22 - 8);
  v3 = v20;
  v4 = MEMORY[0x28223BE20](v22);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v21 = sub_238153D1C();
  v36 = 1;
  sub_2381438D0(a1, &v32);
  v49 = *&v33[176];
  v50 = *&v33[192];
  v51 = *&v33[208];
  v45 = *&v33[112];
  v46 = *&v33[128];
  v48 = *&v33[160];
  v47 = *&v33[144];
  v41 = *&v33[48];
  v42 = *&v33[64];
  v44 = *&v33[96];
  v43 = *&v33[80];
  v37 = v32;
  v38 = *v33;
  v40 = *&v33[32];
  v39 = *&v33[16];
  v52[12] = *&v33[176];
  v52[13] = *&v33[192];
  v52[14] = *&v33[208];
  v52[8] = *&v33[112];
  v52[9] = *&v33[128];
  v52[11] = *&v33[160];
  v52[10] = *&v33[144];
  v52[4] = *&v33[48];
  v52[5] = *&v33[64];
  v52[7] = *&v33[96];
  v52[6] = *&v33[80];
  v52[0] = v32;
  v52[1] = *v33;
  v52[3] = *&v33[32];
  v52[2] = *&v33[16];
  sub_2380712E4(&v37, v31, &qword_27DEEDCB0, &qword_23815F7D8);
  sub_238071284(v52, &qword_27DEEDCB0, &qword_23815F7D8);
  *&v35[183] = v48;
  *&v35[199] = v49;
  *&v35[215] = v50;
  *&v35[231] = v51;
  *&v35[119] = v44;
  *&v35[135] = v45;
  *&v35[151] = v46;
  *&v35[167] = v47;
  *&v35[55] = v40;
  *&v35[71] = v41;
  *&v35[87] = v42;
  *&v35[103] = v43;
  *&v35[7] = v37;
  *&v35[23] = v38;
  *&v35[39] = v39;
  v9 = v36;
  sub_2381548EC();
  sub_238153A8C();
  v10 = v8;
  v19 = v8;
  sub_2381547EC();
  v11 = *(v3 + 16);
  v12 = v22;
  v11(v6, v10, v22);
  v13 = v21;
  v31[0] = v21;
  v31[1] = 0;
  LOBYTE(v31[2]) = v9;
  *(&v31[26] + 1) = *&v35[192];
  *(&v31[28] + 1) = *&v35[208];
  *(&v31[30] + 1) = *&v35[224];
  v31[32] = *&v35[239];
  *(&v31[18] + 1) = *&v35[128];
  *(&v31[20] + 1) = *&v35[144];
  *(&v31[22] + 1) = *&v35[160];
  *(&v31[24] + 1) = *&v35[176];
  *(&v31[10] + 1) = *&v35[64];
  *(&v31[12] + 1) = *&v35[80];
  *(&v31[14] + 1) = *&v35[96];
  *(&v31[16] + 1) = *&v35[112];
  *(&v31[2] + 1) = *v35;
  *(&v31[4] + 1) = *&v35[16];
  *(&v31[6] + 1) = *&v35[32];
  *(&v31[8] + 1) = *&v35[48];
  *&v31[41] = v28;
  *&v31[43] = v29;
  *&v31[45] = v30;
  *&v31[33] = v24;
  *&v31[35] = v25;
  *&v31[37] = v26;
  *&v31[39] = v27;
  v14 = v23;
  memcpy(v23, v31, 0x178uLL);
  v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCB8, &qword_23815F7E0) + 48)];
  v11(v15, v6, v12);
  sub_2380712E4(v31, &v32, &qword_27DEEDCC0, &qword_23815F7E8);
  v16 = *(v20 + 8);
  v16(v19, v12);
  v16(v6, v12);
  v32 = v13;
  v33[0] = v9;
  *&v33[193] = *&v35[192];
  *&v33[209] = *&v35[208];
  *v34 = *&v35[224];
  *&v34[15] = *&v35[239];
  *&v33[129] = *&v35[128];
  *&v33[145] = *&v35[144];
  *&v33[161] = *&v35[160];
  *&v33[177] = *&v35[176];
  *&v33[65] = *&v35[64];
  *&v33[81] = *&v35[80];
  *&v33[97] = *&v35[96];
  *&v33[113] = *&v35[112];
  *&v33[1] = *v35;
  *&v33[17] = *&v35[16];
  *&v33[33] = *&v35[32];
  *&v33[49] = *&v35[48];
  *&v34[87] = v28;
  *&v34[103] = v29;
  *&v34[119] = v30;
  *&v34[23] = v24;
  *&v34[39] = v25;
  *&v34[55] = v26;
  *&v34[71] = v27;
  return sub_238071284(&v32, &qword_27DEEDCC0, &qword_23815F7E8);
}

uint64_t sub_2381438D0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_2381548DC();
  v6 = v5;
  sub_238143BD4(&v44);
  v27 = v50;
  v28 = v51;
  v23 = v46;
  v24 = v47;
  v25 = v48;
  v26 = v49;
  v21 = v44;
  v22 = v45;
  v30[6] = v50;
  v30[7] = v51;
  v30[2] = v46;
  v30[3] = v47;
  v30[4] = v48;
  v30[5] = v49;
  v29 = v52;
  v31 = v52;
  v30[0] = v44;
  v30[1] = v45;
  sub_2380712E4(&v21, v34, &qword_27DEEC988, &unk_23815F7F0);
  sub_238071284(v30, &qword_27DEEC988, &unk_23815F7F0);
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v11 = v21;
  v12 = v22;
  v7 = sub_238153DFC();
  LOBYTE(v44) = 1;
  sub_238143F38(a1, v32);
  *&v20[7] = v32[0];
  *&v20[23] = v32[1];
  *&v20[39] = v32[2];
  *&v20[55] = v33;
  v8 = v44;
  *&v34[0] = v4;
  *(&v34[0] + 1) = v6;
  v34[7] = v17;
  v34[8] = v18;
  v35 = v19;
  v34[3] = v13;
  v34[4] = v14;
  v34[5] = v15;
  v34[6] = v16;
  v34[1] = v11;
  v34[2] = v12;
  v36[0] = v7;
  v36[1] = 0;
  v37[0] = v44;
  *&v37[1] = *v20;
  *&v37[17] = *&v20[16];
  *&v37[33] = *&v20[32];
  *&v37[49] = *&v20[48];
  *&v37[64] = *(&v33 + 1);
  *&v10[8] = v7;
  *&v10[24] = *v37;
  *&v10[72] = *&v37[48];
  *v10 = v19;
  *&v10[88] = *(&v33 + 1);
  *&v10[56] = *&v37[32];
  *&v10[40] = *&v37[16];
  *a2 = v34[0];
  a2[1] = v11;
  a2[4] = v14;
  a2[5] = v15;
  a2[2] = v12;
  a2[3] = v13;
  a2[8] = v18;
  a2[9] = *v10;
  a2[6] = v16;
  a2[7] = v17;
  a2[13] = *&v10[64];
  a2[14] = *&v10[80];
  a2[11] = *&v10[32];
  a2[12] = *&v10[48];
  a2[10] = *&v10[16];
  v38[0] = v7;
  v38[1] = 0;
  v39 = v8;
  v41 = *&v20[16];
  v42 = *&v20[32];
  *v43 = *&v20[48];
  *&v43[15] = *&v20[63];
  v40 = *v20;
  sub_2380712E4(v34, &v44, &qword_27DEEC990, &unk_23815C9F0);
  sub_2380712E4(v36, &v44, &qword_27DEEC998, &qword_23815DAA0);
  sub_238071284(v38, &qword_27DEEC998, &qword_23815DAA0);
  *&v44 = v4;
  *(&v44 + 1) = v6;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v47 = v13;
  v48 = v14;
  v49 = v15;
  v50 = v16;
  v45 = v11;
  v46 = v12;
  return sub_238071284(&v44, &qword_27DEEC990, &unk_23815C9F0);
}

uint64_t sub_238143BD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23815468C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2381545CC();
  v6 = sub_23815460C();

  sub_2381548DC();
  sub_2381538EC();
  *&v28[3] = *&v28[27];
  *&v28[11] = *&v28[35];
  *&v28[19] = *&v28[43];
  if (qword_27DEEA130 != -1)
  {
    swift_once();
  }

  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);

  v7 = sub_2381546CC();

  (*(v3 + 8))(v5, v2);
  sub_2381548DC();
  sub_2381538EC();
  *&v27[6] = *&v28[51];
  *&v27[22] = *&v28[59];
  *&v27[38] = v29;
  *&v30[0] = v6;
  WORD4(v30[0]) = 256;
  *(v30 + 10) = *v28;
  *(&v30[1] + 10) = *&v28[8];
  *(&v30[2] + 10) = *&v28[16];
  *(&v30[3] + 1) = *&v28[23];
  *&v21[31] = v30[2];
  *&v21[39] = v30[3];
  *&v21[15] = v30[0];
  *&v21[23] = v30[1];
  v31[0] = v7;
  v31[1] = 0;
  *v32 = 1;
  *&v32[48] = *(&v29 + 1);
  *&v32[34] = *&v27[32];
  *&v32[18] = *&v27[16];
  *&v32[2] = *v27;
  v26 = *&v32[48];
  v24 = *&v32[16];
  v25 = *&v32[32];
  v22 = v7;
  v23 = *v32;
  v8 = v30[0];
  v9 = v30[1];
  v10 = v30[3];
  *(a1 + 32) = v30[2];
  *(a1 + 48) = v10;
  *a1 = v8;
  *(a1 + 16) = v9;
  v11 = v22;
  v12 = v23;
  v13 = v24;
  v14 = v25;
  *(a1 + 128) = v26;
  *(a1 + 96) = v13;
  *(a1 + 112) = v14;
  *(a1 + 64) = v11;
  *(a1 + 80) = v12;
  v33[0] = v7;
  v33[1] = 0;
  v34 = 1;
  v35 = *v27;
  v36 = *&v27[16];
  *v37 = *&v27[32];
  *&v37[14] = *&v27[46];
  sub_2380712E4(v30, &v17, &unk_27DEEC9A0, &unk_23815CA00);
  sub_2380712E4(v31, &v17, &qword_27DEEB760, &qword_23815F800);
  sub_238071284(v33, &qword_27DEEB760, &qword_23815F800);
  v17 = v6;
  v18 = 256;
  v19 = *v28;
  v20 = *&v28[8];
  *v21 = *&v28[16];
  *&v21[7] = *&v28[23];
  return sub_238071284(&v17, &unk_27DEEC9A0, &unk_23815CA00);
}

uint64_t sub_238143F38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43[1] = a1;
  v50 = a2;
  v2 = sub_23815426C();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238153D7C();
  MEMORY[0x28223BE20](v4 - 8);
  sub_238153D8C();
  v5 = sub_23815436C();
  v7 = v6;
  v9 = v8;
  sub_2381542BC();
  v10 = sub_23815435C();
  v12 = v11;
  v14 = v13;

  sub_238070490(v5, v7, v9 & 1);

  v52[0] = sub_238153F0C();
  v15 = sub_23815432C();
  v45 = v16;
  v46 = v15;
  v18 = v17;
  v44 = v19;
  sub_238070490(v10, v12, v14 & 1);

  sub_238153D6C();
  sub_238153D5C();
  type metadata accessor for _DDDevicePickerView(0);
  sub_238153D4C();
  sub_238153D5C();
  sub_238153D9C();
  v20 = sub_23815436C();
  v22 = v21;
  v24 = v23;
  sub_23815424C();
  v26 = v47;
  v25 = v48;
  v27 = v49;
  (*(v48 + 104))(v47, *MEMORY[0x277CE0A10], v49);
  sub_23815429C();

  (*(v25 + 8))(v26, v27);
  v28 = sub_23815435C();
  v30 = v29;
  LOBYTE(v27) = v31;

  sub_238070490(v20, v22, v24 & 1);

  sub_23815421C();
  v32 = sub_2381542FC();
  v34 = v33;
  LOBYTE(v22) = v35;
  v37 = v36;
  sub_238070490(v28, v30, v27 & 1);

  v38 = v44 & 1;
  v51 = v44 & 1;
  v54 = v44 & 1;
  LOBYTE(v22) = v22 & 1;
  v53 = v22;
  v39 = v50;
  v40 = v45;
  v41 = v46;
  *v50 = v46;
  v39[1] = v18;
  *(v39 + 16) = v38;
  v39[3] = v40;
  v39[4] = v32;
  v39[5] = v34;
  *(v39 + 48) = v22;
  v39[7] = v37;
  sub_238070430(v41, v18, v38);

  sub_238070430(v32, v34, v22);

  sub_238070490(v32, v34, v22);

  sub_238070490(v41, v18, v51);
}

uint64_t sub_238144350(unsigned __int8 a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v2;
}

uint64_t sub_238144458()
{
  v1 = v0;
  v2 = sub_238153A0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 activeInterfaceOrientation];

  IsLandscape = UIInterfaceOrientationIsLandscape(v7);
  v9 = SFDeviceModelCodeGet();
  sub_238135928(v5);
  LOBYTE(v6) = sub_2381539FC();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    return 1;
  }

  if (sub_238139870() == 3)
  {
    return *(v1 + *(type metadata accessor for _DDDevicePickerView(0) + 104));
  }

  if (sub_2381364CC())
  {
    sub_23815392C();
    if (v11 > 414.0)
    {
      return 6;
    }

    return *(v1 + *(type metadata accessor for _DDDevicePickerView(0) + 104));
  }

  v12 = v9 == 2 || IsLandscape;
  if (IsLandscape)
  {
    result = 6;
  }

  else
  {
    result = 3;
  }

  if ((v12 & 1) == 0)
  {
    return *(v1 + *(type metadata accessor for _DDDevicePickerView(0) + 104));
  }

  return result;
}

uint64_t sub_238144610@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v25 = a2;
  v28 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE060, &qword_23815FC30);
  MEMORY[0x28223BE20](v29);
  v6 = &v24 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDFD0, &qword_23815FBE0);
  MEMORY[0x28223BE20](v24);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1B8, &qword_23815FD90);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1C0, &qword_23815FD98);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF70, &qword_23815FBA0);
  MEMORY[0x28223BE20](v27);
  v16 = &v24 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF80, &qword_23815FBA8);
  MEMORY[0x28223BE20](v17);
  v19 = &v24 - v18;
  if (sub_238139870() || *(*(a1 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) != 2)
  {
    if (sub_238139870() == 2)
    {
      sub_23814523C(v25, v26, v8);
      sub_2380712E4(v8, v14, &qword_27DEEDFD0, &qword_23815FBE0);
      swift_storeEnumTagMultiPayload();
      sub_23814CAC0();
      sub_23814CDA4(&qword_27DEEDFC8, &qword_27DEEDFD0, &qword_23815FBE0, sub_23814CE58);
      sub_238153ECC();
      sub_2380712E4(v16, v11, &qword_27DEEDF70, &qword_23815FBA0);
      swift_storeEnumTagMultiPayload();
      sub_23814CA08();
      sub_23814CDA4(&qword_27DEEE058, &qword_27DEEE060, &qword_23815FC30, sub_23814D1C4);
      sub_238153ECC();
      sub_238071284(v16, &qword_27DEEDF70, &qword_23815FBA0);
      v20 = v8;
      v21 = &qword_27DEEDFD0;
      v22 = &qword_23815FBE0;
    }

    else
    {
      sub_23814591C(v25, v26, v6);
      sub_2380712E4(v6, v11, &qword_27DEEE060, &qword_23815FC30);
      swift_storeEnumTagMultiPayload();
      sub_23814CA08();
      sub_23814CDA4(&qword_27DEEE058, &qword_27DEEE060, &qword_23815FC30, sub_23814D1C4);
      sub_238153ECC();
      v20 = v6;
      v21 = &qword_27DEEE060;
      v22 = &qword_23815FC30;
    }
  }

  else
  {
    sub_238144BA0(v25, v19);
    sub_2380712E4(v19, v14, &qword_27DEEDF80, &qword_23815FBA8);
    swift_storeEnumTagMultiPayload();
    sub_23814CAC0();
    sub_23814CDA4(&qword_27DEEDFC8, &qword_27DEEDFD0, &qword_23815FBE0, sub_23814CE58);
    sub_238153ECC();
    sub_2380712E4(v16, v11, &qword_27DEEDF70, &qword_23815FBA0);
    swift_storeEnumTagMultiPayload();
    sub_23814CA08();
    sub_23814CDA4(&qword_27DEEE058, &qword_27DEEE060, &qword_23815FC30, sub_23814D1C4);
    sub_238153ECC();
    sub_238071284(v16, &qword_27DEEDF70, &qword_23815FBA0);
    v20 = v19;
    v21 = &qword_27DEEDF80;
    v22 = &qword_23815FBA8;
  }

  return sub_238071284(v20, v21, v22);
}

double sub_238144BA0@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v43 = a1;
  v49 = a2;
  v4 = type metadata accessor for _DDDevicePickerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDFC0, &qword_23815FBC8);
  MEMORY[0x28223BE20](v47);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDFB0, &qword_23815FBC0);
  MEMORY[0x28223BE20](v9 - 8);
  v46 = &v42 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDFA0, &qword_23815FBB8);
  MEMORY[0x28223BE20](v45);
  v48 = &v42 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF90, &qword_23815FBB0);
  MEMORY[0x28223BE20](v44);
  v13 = &v42 - v12;
  *v8 = sub_238153DEC();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1C8, &qword_23815FDA0) + 44);
  v14 = sub_238144350(v3);
  v50 = v14;
  swift_getKeyPath();
  sub_23814EF88(v2, &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_23814E8B0(&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for _DDDevicePickerView);
  *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB8A8, &unk_23815A080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1D0, &qword_23815FDC8);
  sub_2380711D4(&qword_27DEEE198, &qword_27DEEB8A8, &unk_23815A080, MEMORY[0x277D83980]);
  sub_23814F050(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2380711D4(&qword_27DEEE1D8, &qword_27DEEE1D0, &qword_23815FDC8, MEMORY[0x277CE14C0]);
  sub_23815480C();
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_23815541C();

  v50 = 0xD000000000000010;
  v51 = 0x80000002381633E0;
  v17 = 0xE900000000000073;
  v18 = 0x656369766544794DLL;
  v19 = 0xEC00000073656369;
  v20 = 0x766544726568744FLL;
  v21 = 0xEF73656369766544;
  v22 = 0x6465726961706E55;
  if (v43 != 3)
  {
    v22 = 0x6544646572696150;
    v21 = 0xED00007365636976;
  }

  if (v43 != 2)
  {
    v20 = v22;
    v19 = v21;
  }

  if (v43)
  {
    v18 = 0x656C706F6550;
    v17 = 0xE600000000000000;
  }

  if (v43 <= 1u)
  {
    v23 = v18;
  }

  else
  {
    v23 = v20;
  }

  if (v43 <= 1u)
  {
    v24 = v17;
  }

  else
  {
    v24 = v19;
  }

  MEMORY[0x2383E9410](v23, v24);

  sub_2380711D4(&qword_27DEEDFB8, &qword_27DEEDFC0, &qword_23815FBC8, MEMORY[0x277CE1198]);
  v25 = v46;
  sub_2381544AC();

  sub_238071284(v8, &qword_27DEEDFC0, &qword_23815FBC8);
  v26 = sub_238153EFC();
  v27 = sub_2381540FC();
  v28 = v48;
  sub_23807121C(v25, v48, &qword_27DEEDFB0, &qword_23815FBC0);
  v29 = v28 + *(v45 + 36);
  *v29 = v26;
  *(v29 + 4) = v27;
  v30 = &v13[*(v44 + 36)];
  v31 = *(sub_238153A7C() + 20);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_238153DDC();
  (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
  __asm { FMOV            V0.2D, #20.0 }

  *v30 = _Q0;
  *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80) + 36)] = 256;
  sub_23807121C(v28, v13, &qword_27DEEDFA0, &qword_23815FBB8);
  LOBYTE(v32) = sub_2381540EC();
  v39 = v49;
  sub_23807121C(v13, v49, &qword_27DEEDF90, &qword_23815FBB0);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF80, &qword_23815FBA8) + 36);
  *v40 = v32;
  result = 0.0;
  *(v40 + 8) = 0u;
  *(v40 + 24) = 0u;
  *(v40 + 40) = 1;
  return result;
}

uint64_t sub_23814523C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v64 = a3;
  v7 = type metadata accessor for _DDDevicePickerView(0);
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE000, &qword_23815FBF8);
  MEMORY[0x28223BE20](v62);
  v10 = &v56 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDFF0, &qword_23815FBF0);
  MEMORY[0x28223BE20](v63);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDFE0, &qword_23815FBE8);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v16 = sub_238144458();
  v61 = a2;
  sub_23815392C();
  if (v17 <= 414.0)
  {
    v18 = 16.0;
  }

  else
  {
    v18 = 20.0;
  }

  v19 = a1;
  result = sub_238144350(a1);
  v21 = *(result + 16);
  v65 = v16;
  v22 = v16;
  v23 = ceil(v21 / v16);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = result;
  v58 = v12;
  v25 = v4;
  v26 = v23;
  result = sub_2381548EC();
  *v10 = result;
  *(v10 + 1) = v27;
  *(v10 + 2) = 0;
  v10[24] = 1;
  *(v10 + 4) = 0;
  v10[40] = 1;
  if (v26 < 0)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1E8, &qword_23815FDE0) + 44);
  v57 = v15;
  v66 = 0;
  v67 = v26;
  swift_getKeyPath();
  v28 = v60;
  sub_23814EF88(v25, v60, type metadata accessor for _DDDevicePickerView);
  v29 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  LODWORD(v59) = v19;
  v30 = v13;
  v31 = (v8 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v65;
  *(v32 + 16) = v24;
  *(v32 + 24) = v33;
  sub_23814E8B0(v28, v32 + v29, type metadata accessor for _DDDevicePickerView);
  *(v32 + v31) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF00, &qword_238158FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1F0, &qword_23815FDE8);
  sub_238087E84();
  v34 = v30;
  sub_2380711D4(&qword_27DEEE1F8, &qword_27DEEE1F0, &qword_23815FDE8, MEMORY[0x277CE1138]);
  v35 = v57;
  sub_23815480C();
  v36 = sub_23815494C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v37 = v66;
  v38 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE020, &qword_23815FC08) + 36)];
  *v38 = v36;
  v38[1] = v37;
  v39 = sub_23815494C();
  v40 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE010, &qword_23815FC00) + 36)];
  v41 = v65;
  *v40 = v39;
  v40[1] = v41;
  v42 = sub_2381540EC();
  v43 = &v10[*(v62 + 36)];
  *v43 = v42;
  *(v43 + 8) = 0u;
  *(v43 + 24) = 0u;
  v43[40] = 1;
  v44 = sub_238139870();
  sub_23815392C();
  v46 = v45 + v22 * -112.0;
  if (v44 == 2)
  {
    v47 = 0x4020000000000000;
  }

  else
  {
    v47 = 0;
  }

  if (v44 == 2)
  {
    v48 = v46;
  }

  else
  {
    v48 = 0.0;
  }

  v49 = sub_2381540FC();
  v50 = v58;
  sub_23807121C(v10, v58, &qword_27DEEE000, &qword_23815FBF8);
  v51 = v50 + *(v63 + 36);
  *v51 = v49;
  *(v51 + 8) = v47;
  *(v51 + 16) = 0;
  *(v51 + 24) = v47;
  *(v51 + 32) = v48;
  *(v51 + 40) = 0;
  KeyPath = swift_getKeyPath();
  sub_23807121C(v50, v35, &qword_27DEEDFF0, &qword_23815FBF0);
  v53 = v35 + *(v34 + 36);
  *v53 = KeyPath;
  *(v53 + 8) = 0;
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_23815541C();

  v66 = 0xD000000000000010;
  v67 = 0x80000002381633E0;
  if (v59 <= 1u)
  {
    if (v59)
    {
      v54 = 0xE600000000000000;
      v55 = 0x656C706F6550;
    }

    else
    {
      v54 = 0xE900000000000073;
      v55 = 0x656369766544794DLL;
    }
  }

  else if (v59 == 2)
  {
    v54 = 0xEC00000073656369;
    v55 = 0x766544726568744FLL;
  }

  else if (v59 == 3)
  {
    v54 = 0xEF73656369766544;
    v55 = 0x6465726961706E55;
  }

  else
  {
    v54 = 0xED00007365636976;
    v55 = 0x6544646572696150;
  }

  MEMORY[0x2383E9410](v55, v54);

  sub_23814CE58();
  sub_2381544AC();

  return sub_238071284(v35, &qword_27DEEDFE0, &qword_23815FBE8);
}

uint64_t sub_23814591C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v71 = a2;
  v72 = a1;
  v55 = sub_238153EDC();
  MEMORY[0x28223BE20](v55);
  v57 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE0C0, &qword_23815FC60);
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v54 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE0B0, &qword_23815FC58);
  MEMORY[0x28223BE20](v61);
  v60 = &v54 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE0A0, &qword_23815FC50);
  MEMORY[0x28223BE20](v59);
  v58 = &v54 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE090, &qword_23815FC48);
  MEMORY[0x28223BE20](v56);
  v65 = &v54 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE080, &qword_23815FC40);
  MEMORY[0x28223BE20](v62);
  v64 = &v54 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE070, &qword_23815FC38);
  MEMORY[0x28223BE20](v69);
  v68 = &v54 - v11;
  v12 = sub_23815485C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_23815486C();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_238153A0C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v3;
  sub_238135928(v22);
  v24 = sub_2381539FC();
  (*(v20 + 8))(v22, v19);
  if (v24)
  {
    sub_2381548EC();
  }

  else
  {
    sub_2381548BC();
  }

  v25 = sub_238144458();
  v54 = v25;
  *v15 = xmmword_23815F370;
  (*(v13 + 104))(v15, *MEMORY[0x277CDF108], v12);
  sub_23815487C();
  sub_238135680(v18, v25);
  sub_23815392C();
  v26 = sub_238139870();
  MEMORY[0x28223BE20](v26);
  *(&v54 - 4) = v23;
  *(&v54 - 24) = v72;
  sub_238153DEC();
  LODWORD(v73) = 0;
  sub_23814F050(&qword_27DEEDEA8, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_23815570C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE220, &qword_23815FE08);
  v53 = sub_23814D79C(&qword_27DEEE228, &qword_27DEEE220, &qword_23815FE08, sub_23814F6B8);
  v27 = v63;
  sub_23815498C();
  v28 = sub_23815494C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v29 = v73;
  v30 = v60;
  (*(v66 + 32))(v60, v27, v67);
  v31 = (v30 + *(v61 + 36));
  *v31 = v28;
  v31[1] = v29;
  v32 = sub_23815494C();
  v33 = v58;
  sub_23807121C(v30, v58, &qword_27DEEE0B0, &qword_23815FC58);
  v34 = (v33 + *(v59 + 36));
  v35 = v54;
  *v34 = v32;
  v34[1] = v35;
  LOBYTE(v32) = sub_2381540EC();
  v36 = v65;
  sub_23807121C(v33, v65, &qword_27DEEE0A0, &qword_23815FC50);
  v37 = v36 + *(v56 + 36);
  *v37 = v32;
  *(v37 + 8) = 0u;
  *(v37 + 24) = 0u;
  *(v37 + 40) = 1;
  v38 = sub_238139870();
  sub_23815392C();
  v40 = v39 + v35 * -112.0;
  if (v38 == 2)
  {
    v41 = 0x4020000000000000;
  }

  else
  {
    v41 = 0;
  }

  if (v38 == 2)
  {
    v42 = v40;
  }

  else
  {
    v42 = 0.0;
  }

  v43 = sub_2381540FC();
  v44 = v36;
  v45 = v64;
  sub_23807121C(v44, v64, &qword_27DEEE090, &qword_23815FC48);
  v46 = v45 + *(v62 + 36);
  *v46 = v43;
  *(v46 + 8) = v41;
  *(v46 + 16) = 0;
  *(v46 + 24) = v41;
  *(v46 + 32) = v42;
  *(v46 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v48 = v68;
  sub_23807121C(v45, v68, &qword_27DEEE080, &qword_23815FC40);
  v49 = v48 + *(v69 + 36);
  *v49 = KeyPath;
  *(v49 + 8) = 0;
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_23815541C();

  v73 = 0xD000000000000010;
  v74 = 0x80000002381633E0;
  if (v72 <= 1u)
  {
    if (v72)
    {
      v50 = 0xE600000000000000;
      v51 = 0x656C706F6550;
    }

    else
    {
      v50 = 0xE900000000000073;
      v51 = 0x656369766544794DLL;
    }
  }

  else if (v72 == 2)
  {
    v50 = 0xEC00000073656369;
    v51 = 0x766544726568744FLL;
  }

  else if (v72 == 3)
  {
    v50 = 0xEF73656369766544;
    v51 = 0x6465726961706E55;
  }

  else
  {
    v50 = 0xED00007365636976;
    v51 = 0x6544646572696150;
  }

  MEMORY[0x2383E9410](v51, v50);

  sub_23814D1C4();
  sub_2381544AC();

  return sub_238071284(v48, &qword_27DEEE070, &qword_23815FC38);
}

uint64_t sub_238146268@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_23814641C(a1, &v32);
  v3 = v32;
  v4 = v33;
  v5 = v34;
  v6 = sub_2381540EC();
  LOBYTE(v41[0]) = v5;
  v7 = sub_238139870();
  sub_2381467D4(v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_2381540FC();
  v24[0] = v3;
  v24[1] = v4;
  LOBYTE(v25) = v5;
  BYTE8(v25) = v6;
  v26 = 0u;
  v27 = 0u;
  LOBYTE(v28) = 1;
  BYTE8(v28) = v16;
  *&v29 = v9;
  *(&v29 + 1) = v11;
  *&v30 = v13;
  *(&v30 + 1) = v15;
  v31 = 0;
  LOBYTE(v40) = 0;
  v38 = v29;
  v39 = v30;
  v36 = 0u;
  v37 = v28;
  v34 = v25;
  v35 = 0u;
  v32 = v3;
  v33 = v4;
  v23[136] = 1;
  v17 = v30;
  *(a2 + 96) = v29;
  *(a2 + 112) = v17;
  v18 = v40;
  v19 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v19;
  v20 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v20;
  v21 = v33;
  *a2 = v32;
  *(a2 + 16) = v21;
  *(a2 + 128) = v18;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  v41[0] = v3;
  v41[1] = v4;
  v42 = v5;
  v43 = v6;
  v44 = 0u;
  v45 = 0u;
  v46 = 1;
  v47 = v16;
  v48 = v9;
  v49 = v11;
  v50 = v13;
  v51 = v15;
  v52 = 0;
  sub_2380712E4(v24, v23, &qword_27DEEE1B0, &qword_23815FD88);
  return sub_238071284(v41, &qword_27DEEE1B0, &qword_23815FD88);
}

__n128 sub_23814641C@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_23815426C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_238152F3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2381533AC();
  v12 = MEMORY[0x2383E79D0]();
  v13 = sub_23815337C();

  if ((v13 & 1) != 0 && (sub_238152F1C(), v14 = sub_238152EEC(), (*(v9 + 8))(v11, v8), (v14 & 1) == 0))
  {
    *&v54 = sub_23807CB28((a1 + 36));
    *(&v54 + 1) = v28;
    sub_2380704A0();
    v29 = sub_23815438C();
    v31 = v30;
    v33 = v32;
    sub_23815419C();
    sub_2381541AC();

    v34 = sub_23815435C();
    v36 = v35;
    v38 = v37;

    sub_238070490(v29, v31, v33 & 1);

    sub_23815463C();
    v39 = sub_23815431C();
    v41 = v40;
    v43 = v42;
    v45 = v44;

    sub_238070490(v34, v36, v38 & 1);

    v49 = v39;
    v50 = v41;
    v51 = v43 & 1;
    v52 = v45;
    v53 = 0;
  }

  else
  {
    *&v54 = sub_23807CB28((a1 + 36));
    *(&v54 + 1) = v15;
    sub_2380704A0();
    v16 = sub_23815438C();
    v18 = v17;
    v20 = v19;
    sub_23815424C();
    sub_2381541AC();

    (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v4);
    sub_23815429C();

    (*(v5 + 8))(v7, v4);
    v21 = sub_23815435C();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    sub_238070490(v16, v18, v20 & 1);

    v49 = v21;
    v50 = v23;
    v51 = v25 & 1;
    v52 = v27;
    v53 = 1;
  }

  sub_238153ECC();
  result = v55;
  v47 = v56;
  *a2 = v54;
  *(a2 + 16) = result;
  *(a2 + 32) = v47;
  return result;
}

void sub_2381467D4(char a1)
{
  v2 = sub_238152F3C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 1 && a1 != 3)
  {
    sub_2381533AC();
    v6 = MEMORY[0x2383E79D0]();
    v7 = sub_23815337C();

    if (v7)
    {
      sub_238152F1C();
      sub_238152EEC();
      v8 = (*(v3 + 8))(v5, v2);
    }

    v9 = MEMORY[0x2383E79D0](v8);
    v10 = sub_23815337C();

    if (v10)
    {
      sub_238152F1C();
      sub_238152EEC();
      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_238146988(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() avatarImageRender];
  v3 = [v2 placeholderImageForSize:40.0 scale:{40.0, 5.0}];
  v4 = sub_23815466C();

  qword_27DEEDA68 = v4;
}

uint64_t sub_238146A00(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for _DDDevicePickerView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  result = sub_238144350(a2);
  v9 = ceil(*(result + 16) / *(a1 + *(v5 + 116)));
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = result;
    v14[0] = 0;
    v14[1] = v9;
    swift_getKeyPath();
    sub_23814EF88(a1, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    sub_23814E8B0(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for _DDDevicePickerView);
    *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF00, &qword_238158FE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE110, &qword_23815FC80);
    sub_238087E84();
    sub_23814D818();
    return sub_23815480C();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_238146C40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE160, &qword_23815FCA8);
  MEMORY[0x28223BE20](v7);
  sub_238147574(a4, a2, *a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE120, &qword_23815FC88);
  sub_23814D8B0();
  sub_23814DA80();
  return sub_23815483C();
}

uint64_t sub_238146D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for _DDDevicePickerView(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = *(a3 + *(MEMORY[0x28223BE20](v8 - 8) + 116));
  v12 = a2 * v10;
  if ((a2 * v10) >> 64 != (a2 * v10) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12 + v10;
  if (__OFADD__(v12, v10))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v52[0] = a3;
  a3 = v11;
  v14 = *(a1 + 16);
  if (v13 >= v14)
  {
    a2 = *(a1 + 16);
  }

  else
  {
    a2 = v12 + v10;
  }

  *a4 = sub_238153D0C();
  *(a4 + 8) = 0x4034000000000000;
  *(a4 + 16) = 0;
  if (a2 < v12)
  {
    goto LABEL_14;
  }

  if (v14 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(a1 + 16);
  swift_unknownObjectRetain();
  if (v15 != a2 - v12)
  {
LABEL_18:
    v49 = *(type metadata accessor for _DDNodeViewModel(0) - 8);
    sub_23814E204(a1, a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v12, (2 * a2) | 1);
    v51 = v50;

    a1 = v51;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE190, &qword_23815FD18);
  v52[1] = a1;
  sub_23814EF88(v52[0], v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  v16 = (*(a3 + 80) + 16) & ~*(a3 + 80);
  v17 = swift_allocObject();
  sub_23814E8B0(v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for _DDDevicePickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB8A8, &unk_23815A080);
  sub_2381527EC();
  type metadata accessor for _DDNodeView(0);
  sub_2380711D4(&qword_27DEEE198, &qword_27DEEB8A8, &unk_23815A080, MEMORY[0x277D83980]);
  sub_23814F050(&qword_27DEEE1A0, type metadata accessor for _DDNodeView, aJ);
  sub_23814F050(&qword_27DEEE1A8, type metadata accessor for _DDNodeViewModel, aQ_4);
  sub_23815481C();
  v18 = sub_2381540EC();
  sub_23815377C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE140, &qword_23815FC98) + 36);
  *v27 = v18;
  *(v27 + 8) = v20;
  *(v27 + 16) = v22;
  *(v27 + 24) = v24;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  v28 = sub_23815410C();
  sub_23815377C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE130, &qword_23815FC90) + 36);
  *v37 = v28;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  v38 = sub_23815411C();
  sub_23815377C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE120, &qword_23815FC88);
  v48 = a4 + *(result + 36);
  *v48 = v38;
  *(v48 + 8) = v40;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = v46;
  *(v48 + 40) = 0;
  return result;
}

uint64_t sub_238147194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _DDNodeViewModel(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _DDDevicePickerView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_23814EF88(a1, a3, type metadata accessor for _DDNodeViewModel);
  v31 = *(*(a2 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType);
  v12 = sub_238139870();
  sub_23814EF88(a2, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  sub_23814EF88(a1, v8, type metadata accessor for _DDNodeViewModel);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v30 + 80) + v13) & ~*(v30 + 80);
  v15 = swift_allocObject();
  sub_23814E8B0(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for _DDDevicePickerView);
  sub_23814E8B0(v8, v15 + v14, type metadata accessor for _DDNodeViewModel);
  v16 = type metadata accessor for _DDNodeView(0);
  swift_unknownObjectWeakInit();
  v17 = (a3 + v16[9]);
  v32 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA348, &qword_238157968);
  sub_2381546FC();
  v18 = v34;
  *v17 = v33;
  v17[1] = v18;
  v19 = a3 + v16[10];
  LOBYTE(v32) = 0;
  sub_2381546FC();
  v20 = v34;
  *v19 = v33;
  *(v19 + 8) = v20;
  v21 = a3 + v16[11];
  LOBYTE(v32) = 0;
  sub_2381546FC();
  v22 = v34;
  *v21 = v33;
  *(v21 + 8) = v22;
  v23 = v16[12];
  *(a3 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v24 = v16[13];
  *(a3 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v25 = a3 + v16[14];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = v16[15];
  *(a3 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  swift_storeEnumTagMultiPayload();
  v27 = (a3 + v16[5]);
  *v27 = sub_2381507DC;
  v27[1] = v15;
  *(a3 + v16[6]) = v12;
  *(a3 + v16[7]) = v31;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_238147574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE188, &qword_23815FD10);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE170, &qword_23815FCB0);
  result = MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  else if (*(a2 + 16) < 6uLL || a1 - 1 == a3)
  {
    swift_storeEnumTagMultiPayload();
    sub_23814DB0C();
    return sub_238153ECC();
  }

  else
  {
    sub_2381547EC();
    v13 = sub_2381540EC();
    sub_23815377C();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F0, &qword_23815C8C0) + 36)];
    *v22 = v13;
    *(v22 + 1) = v15;
    *(v22 + 2) = v17;
    *(v22 + 3) = v19;
    *(v22 + 4) = v21;
    v22[40] = 0;
    sub_2381548DC();
    sub_2381538EC();
    v23 = &v12[*(v9 + 36)];
    v24 = v25[1];
    *v23 = v25[0];
    *(v23 + 1) = v24;
    *(v23 + 2) = v25[2];
    sub_2380712E4(v12, v8, &qword_27DEEE170, &qword_23815FCB0);
    swift_storeEnumTagMultiPayload();
    sub_23814DB0C();
    sub_238153ECC();
    return sub_238071284(v12, &qword_27DEEE170, &qword_23815FCB0);
  }

  return result;
}

uint64_t sub_2381477D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for _DDDevicePickerView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = *a1;
  v16 = *a1 * a3;
  if ((v15 * a3) >> 64 != v16 >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16 + a3;
  if (__OFADD__(v16, a3))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = *(a2 + 16);
  if (v17 >= v18)
  {
    a3 = *(a2 + 16);
  }

  else
  {
    a3 += v16;
  }

  *a5 = sub_238153D0C();
  *(a5 + 8) = 0x4034000000000000;
  *(a5 + 16) = 0;
  if (a3 < v16)
  {
    goto LABEL_15;
  }

  if (v18 < v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v16 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v17 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v18 != a3 - v16)
  {
LABEL_19:
    v22 = *(type metadata accessor for _DDNodeViewModel(0) - 8);
    sub_23814E204(a2, a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v16, (2 * a3) | 1);
    a2 = v23;
    goto LABEL_12;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE200, &qword_23815FDF0);
  v24[1] = a2;
  sub_23814EF88(a4, v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = swift_allocObject();
  sub_23814E8B0(v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for _DDDevicePickerView);
  *(v20 + ((v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB8A8, &unk_23815A080);
  sub_2381527EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE208, &qword_23815FDF8);
  sub_2380711D4(&qword_27DEEE198, &qword_27DEEB8A8, &unk_23815A080, MEMORY[0x277D83980]);
  sub_2380711D4(&qword_27DEEE210, &qword_27DEEE208, &qword_23815FDF8, MEMORY[0x277CE1148]);
  sub_23814F050(&qword_27DEEE1A8, type metadata accessor for _DDNodeViewModel, aQ_4);
  return sub_23815481C();
}

uint64_t sub_238147B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _DDNodeViewModel(0);
  v41[0] = *(v7 - 8);
  v8 = *(v41[0] + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _DDDevicePickerView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_23814EF88(a1, a3, type metadata accessor for _DDNodeViewModel);
  v43 = *(*(a2 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType);
  v42 = sub_238139870();
  v41[1] = swift_unknownObjectWeakLoadStrong();
  sub_23814EF88(a2, v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  sub_23814EF88(a1, v9, type metadata accessor for _DDNodeViewModel);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v41[0] + 80) + v13) & ~*(v41[0] + 80);
  v15 = swift_allocObject();
  sub_23814E8B0(v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for _DDDevicePickerView);
  sub_23814E8B0(v9, v15 + v14, type metadata accessor for _DDNodeViewModel);
  v16 = type metadata accessor for _DDNodeView(0);
  swift_unknownObjectWeakInit();
  v17 = (a3 + v16[9]);
  v44 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA348, &qword_238157968);
  sub_2381546FC();
  v18 = v46;
  *v17 = v45;
  v17[1] = v18;
  v19 = a3 + v16[10];
  LOBYTE(v44) = 0;
  sub_2381546FC();
  v20 = v46;
  *v19 = v45;
  *(v19 + 8) = v20;
  v21 = a3 + v16[11];
  LOBYTE(v44) = 0;
  sub_2381546FC();
  v22 = v46;
  *v21 = v45;
  *(v21 + 8) = v22;
  v23 = v16[12];
  *(a3 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v24 = v16[13];
  *(a3 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v25 = a3 + v16[14];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = v16[15];
  *(a3 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  swift_storeEnumTagMultiPayload();
  v27 = (a3 + v16[5]);
  *v27 = sub_23814F694;
  v27[1] = v15;
  v28 = v43;
  *(a3 + v16[6]) = v42;
  *(a3 + v16[7]) = v28;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  LOBYTE(v26) = sub_23815411C();
  sub_23815377C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE218, &qword_23815FE00) + 36);
  *v37 = v26;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE208, &qword_23815FDF8) + 52);
  v39 = sub_2381527EC();
  return (*(*(v39 - 8) + 16))(a3 + v38, a1, v39);
}

uint64_t sub_238147FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-v7];
  v9 = *(a2 + 40);
  v14[16] = *(a2 + 32);
  v15 = v9;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815471C();
  v10 = *(a2 + *(type metadata accessor for _DDDevicePickerView(0) + 92));
  v11 = sub_2381527EC();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a3, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  v10(v8, a1);
  return sub_238071284(v8, &qword_27DEEC9F0, &qword_23815A090);
}

uint64_t sub_238148158(uint64_t a1, unsigned __int8 a2, double a3)
{
  v6 = type metadata accessor for _DDDevicePickerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_238144350(a2);
  sub_23814F774(v9);
  v11 = v10;

  v16[1] = v11;
  swift_getKeyPath();
  sub_23814EF88(a1, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_23814E8B0(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for _DDDevicePickerView);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_23814FF64;
  *(v14 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE238, &qword_23815FE40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE218, &qword_23815FE00);
  sub_2380711D4(&qword_27DEEE240, &qword_27DEEE238, &qword_23815FE40, MEMORY[0x277D83980]);
  sub_23814F050(&qword_27DEEB990, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23814F6B8();
  return sub_23815480C();
}

uint64_t sub_2381483D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _DDNodeViewModel(0);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _DDDevicePickerView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_23814EF88(a1, a3, type metadata accessor for _DDNodeViewModel);
  v42 = *(*(a2 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType);
  v13 = sub_238139870();
  sub_23814EF88(a2, &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  sub_23814EF88(a1, v9, type metadata accessor for _DDNodeViewModel);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + *(v41 + 80) + v14) & ~*(v41 + 80);
  v16 = swift_allocObject();
  sub_23814E8B0(&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for _DDDevicePickerView);
  sub_23814E8B0(v9, v16 + v15, type metadata accessor for _DDNodeViewModel);
  v17 = type metadata accessor for _DDNodeView(0);
  swift_unknownObjectWeakInit();
  v18 = (a3 + v17[9]);
  v43 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA348, &qword_238157968);
  sub_2381546FC();
  v19 = v45;
  *v18 = v44;
  v18[1] = v19;
  v20 = a3 + v17[10];
  LOBYTE(v43) = 0;
  sub_2381546FC();
  v21 = v45;
  *v20 = v44;
  *(v20 + 8) = v21;
  v22 = a3 + v17[11];
  LOBYTE(v43) = 0;
  sub_2381546FC();
  v23 = v45;
  *v22 = v44;
  *(v22 + 8) = v23;
  v24 = v17[12];
  *(a3 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v25 = v17[13];
  *(a3 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v26 = a3 + v17[14];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = v17[15];
  *(a3 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  swift_storeEnumTagMultiPayload();
  v28 = (a3 + v17[5]);
  *v28 = sub_2381507DC;
  v28[1] = v16;
  *(a3 + v17[6]) = v13;
  *(a3 + v17[7]) = v42;
  swift_unknownObjectWeakAssign();
  v29 = sub_23815411C();
  sub_23815377C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE218, &qword_23815FE00);
  v39 = a3 + *(result + 36);
  *v39 = v29;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_238148810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v94 = a2;
  v104 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8E0, &unk_23815C8B0);
  v102 = *(v5 - 8);
  v103 = v5;
  MEMORY[0x28223BE20](v5);
  v89 = &v87 - v6;
  v95 = sub_2381527EC();
  v107 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v87 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA28, &qword_23815A668);
  MEMORY[0x28223BE20](v96);
  v98 = &v87 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v88 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v105 = &v87 - v13;
  MEMORY[0x28223BE20](v12);
  v106 = &v87 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8E8, &qword_23815FDD0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v101 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v100 = &v87 - v18;
  v19 = type metadata accessor for _DDDevicePickerView(0);
  v90 = *(v19 - 8);
  v20 = *(v90 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for _DDNodeViewModel(0);
  v22 = *(v93 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v93);
  v25 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v87 - v26;
  v91 = &v87 - v26;
  v28 = type metadata accessor for _DDListNodeView(0);
  v29 = (v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v99 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v87 - v32;
  v92 = a1;
  sub_23814EF88(a1, v27, type metadata accessor for _DDNodeViewModel);
  sub_23814EF88(v94, v21, type metadata accessor for _DDDevicePickerView);
  sub_23814EF88(a1, v25, type metadata accessor for _DDNodeViewModel);
  v34 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v35 = *(v22 + 80);
  v36 = (v20 + v35 + v34) & ~v35;
  v37 = swift_allocObject();
  v38 = v21;
  v39 = v22;
  v40 = v107;
  sub_23814E8B0(v38, v37 + v34, type metadata accessor for _DDDevicePickerView);
  sub_23814E8B0(v25, v37 + v36, type metadata accessor for _DDNodeViewModel);
  v41 = v29[10];
  *&v33[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v42 = v29[11];
  *&v33[v42] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v43 = &v33[v29[12]];
  *v43 = swift_getKeyPath();
  v43[8] = 0;
  v44 = v29[13];
  *&v33[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  v45 = v106;
  swift_storeEnumTagMultiPayload();
  sub_23814E8B0(v91, v33, type metadata accessor for _DDNodeViewModel);
  v46 = 1;
  (*(v22 + 56))(v33, 0, 1, v93);
  v47 = &v33[v29[7]];
  *v47 = 0;
  *(v47 + 1) = 0;
  *&v33[v29[8]] = 0;
  v48 = v29[9];
  v49 = v95;
  v50 = &v33[v48];
  *v50 = sub_23814EEBC;
  v50[1] = v37;
  v51 = *(v40 + 16);
  v51(v45, v92, v49);
  v52 = *(v40 + 56);
  v52(v45, 0, 1, v49);
  v53 = *(v97 + 16);
  if (v53)
  {
    v54 = v97 + ((v35 + 32) & ~v35) + *(v39 + 72) * (v53 - 1);
    v55 = v105;
    v51(v105, v54, v49);
    v46 = 0;
  }

  else
  {
    v55 = v105;
  }

  v52(v55, v46, 1, v49);
  v56 = *(v96 + 48);
  v57 = v98;
  sub_2380712E4(v45, v98, &qword_27DEEC9F0, &qword_23815A090);
  sub_2380712E4(v55, v57 + v56, &qword_27DEEC9F0, &qword_23815A090);
  v58 = *(v107 + 48);
  if (v58(v57, 1, v49) == 1)
  {
    sub_238071284(v55, &qword_27DEEC9F0, &qword_23815A090);
    sub_238071284(v45, &qword_27DEEC9F0, &qword_23815A090);
    v59 = v58(v57 + v56, 1, v49);
    v60 = v100;
    if (v59 == 1)
    {
      sub_238071284(v57, &qword_27DEEC9F0, &qword_23815A090);
LABEL_12:
      v76 = 1;
      v74 = v103;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v61 = v88;
  sub_2380712E4(v57, v88, &qword_27DEEC9F0, &qword_23815A090);
  if (v58(v57 + v56, 1, v49) == 1)
  {
    sub_238071284(v105, &qword_27DEEC9F0, &qword_23815A090);
    sub_238071284(v106, &qword_27DEEC9F0, &qword_23815A090);
    (*(v107 + 8))(v61, v49);
    v60 = v100;
LABEL_9:
    sub_238071284(v57, &qword_27DEEBA28, &qword_23815A668);
    goto LABEL_10;
  }

  v77 = v107;
  v78 = v87;
  (*(v107 + 32))(v87, v57 + v56, v49);
  sub_23814F050(&qword_27DEEBA30, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v79 = v61;
  v80 = sub_238154C7C();
  v81 = *(v77 + 8);
  v81(v78, v49);
  sub_238071284(v105, &qword_27DEEC9F0, &qword_23815A090);
  sub_238071284(v106, &qword_27DEEC9F0, &qword_23815A090);
  v81(v79, v49);
  sub_238071284(v57, &qword_27DEEC9F0, &qword_23815A090);
  v60 = v100;
  if (v80)
  {
    goto LABEL_12;
  }

LABEL_10:
  v62 = v89;
  sub_2381547EC();
  v63 = sub_23815412C();
  sub_23815377C();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F0, &qword_23815C8C0) + 36);
  *v72 = v63;
  *(v72 + 8) = v65;
  *(v72 + 16) = v67;
  *(v72 + 24) = v69;
  *(v72 + 32) = v71;
  *(v72 + 40) = 0;
  v73 = sub_23815414C();
  v74 = v103;
  v75 = v62 + *(v103 + 36);
  *v75 = v73;
  *(v75 + 8) = 0u;
  *(v75 + 24) = 0u;
  *(v75 + 40) = 1;
  sub_23807121C(v62, v60, &qword_27DEEC8E0, &unk_23815C8B0);
  v76 = 0;
LABEL_13:
  (*(v102 + 56))(v60, v76, 1, v74);
  v82 = v99;
  sub_23814EF88(v33, v99, type metadata accessor for _DDListNodeView);
  v83 = v101;
  sub_2380712E4(v60, v101, &qword_27DEEC8E8, &qword_23815FDD0);
  v84 = v104;
  sub_23814EF88(v82, v104, type metadata accessor for _DDListNodeView);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE1E0, &qword_23815FDD8);
  sub_2380712E4(v83, v84 + *(v85 + 48), &qword_27DEEC8E8, &qword_23815FDD0);
  sub_238071284(v60, &qword_27DEEC8E8, &qword_23815FDD0);
  sub_23814EFF0(v33, type metadata accessor for _DDListNodeView);
  sub_238071284(v83, &qword_27DEEC8E8, &qword_23815FDD0);
  return sub_23814EFF0(v82, type metadata accessor for _DDListNodeView);
}

uint64_t sub_238149344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a1 + *(type metadata accessor for _DDDevicePickerView(0) + 92));
  v8 = sub_2381527EC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a2, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v7(v6, MEMORY[0x277D84F90]);
  return sub_238071284(v6, &qword_27DEEC9F0, &qword_23815A090);
}

unint64_t sub_238149488()
{
  result = qword_27DEEDAD0;
  if (!qword_27DEEDAD0)
  {
    v8[18] = v0;
    v8[19] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAA8, &qword_23815F420);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAD8, &qword_23815F448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAE0, &unk_23815F450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
    v5 = sub_23814965C();
    v6 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
    v7 = sub_23807B04C();
    v8[6] = v5;
    v8[7] = v6;
    v8[8] = MEMORY[0x277CE0BC8];
    v8[9] = v7;
    v8[2] = v4;
    v8[3] = &type metadata for DAPairingState;
    v8[4] = swift_getOpaqueTypeConformance2();
    v8[5] = sub_2380D0648();
    v8[0] = swift_getOpaqueTypeConformance2();
    v8[1] = sub_2380711D4(&qword_27DEEA518, &qword_27DEEA520, &qword_238157BC0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v8);
    atomic_store(result, &qword_27DEEDAD0);
  }

  return result;
}

unint64_t sub_23814965C()
{
  result = qword_27DEEDAE8;
  if (!qword_27DEEDAE8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAE0, &unk_23815F450);
    v4[0] = sub_2381496E8();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDAE8);
  }

  return result;
}

unint64_t sub_2381496E8()
{
  result = qword_27DEEDAF0;
  if (!qword_27DEEDAF0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAF8, &qword_23815F460);
    v4[0] = sub_2380711D4(&qword_27DEEDB00, &qword_27DEEDB08, &unk_23815F468, MEMORY[0x277CE1198]);
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDAF0);
  }

  return result;
}

unint64_t sub_2381497A0()
{
  result = qword_27DEEDB10;
  if (!qword_27DEEDB10)
  {
    v9[18] = v0;
    v9[19] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAB8, &qword_23815F430);
    v4 = sub_238149488();
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAD8, &qword_23815F448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAE0, &unk_23815F450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
    v6 = sub_23814965C();
    v7 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
    v8 = sub_23807B04C();
    v9[6] = v6;
    v9[7] = v7;
    v9[8] = MEMORY[0x277CE0BC8];
    v9[9] = v8;
    v9[2] = v5;
    v9[3] = &type metadata for DAPairingState;
    v9[4] = swift_getOpaqueTypeConformance2();
    v9[5] = sub_2380D0648();
    v9[0] = v4;
    v9[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v9);
    atomic_store(result, &qword_27DEEDB10);
  }

  return result;
}

unint64_t sub_238149948()
{
  result = qword_27DEEDB18;
  if (!qword_27DEEDB18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAC0, &qword_23815F438);
    v4[0] = sub_238149A00();
    v4[1] = sub_2380711D4(&qword_27DEEDB30, &qword_27DEEDB38, &qword_23815F480, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDB18);
  }

  return result;
}

unint64_t sub_238149A00()
{
  result = qword_27DEEDB20;
  if (!qword_27DEEDB20)
  {
    v8[18] = v0;
    v8[19] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDB28, &qword_23815F478);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAD8, &qword_23815F448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAE0, &unk_23815F450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
    v5 = sub_23814965C();
    v6 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270, MEMORY[0x277CDF028]);
    v7 = sub_23807B04C();
    v8[6] = v5;
    v8[7] = v6;
    v8[8] = MEMORY[0x277CE0BC8];
    v8[9] = v7;
    v8[2] = v4;
    v8[3] = &type metadata for DAPairingState;
    v8[4] = swift_getOpaqueTypeConformance2();
    v8[5] = sub_2380D0648();
    v8[0] = swift_getOpaqueTypeConformance2();
    v8[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v8);
    atomic_store(result, &qword_27DEEDB20);
  }

  return result;
}

unint64_t sub_238149BA8()
{
  result = qword_27DEEDB40;
  if (!qword_27DEEDB40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAC8, &qword_23815F440);
    v4[0] = sub_238149948();
    v4[1] = sub_2381497A0();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEDB40);
  }

  return result;
}

uint64_t sub_238149C68(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_238149CDC()
{
  v1 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23813E688(v2);
}

uint64_t sub_238149E1C(uint64_t a1, __int128 *a2)
{
  v5 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23813ED7C(a1, a2, v6);
}

uint64_t sub_238149F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_23814A0B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_238153CFC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_2380712E4(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_2381550EC();
    v19 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_23814A2B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_238153CFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_2380712E4(v2, &v13 - v9, &unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23807121C(v10, a1, &qword_27DEEA850, &qword_2381580D8);
  }

  sub_2381550EC();
  v12 = sub_2381540CC();
  sub_23815290C();

  sub_238153CEC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23814A508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA850, &qword_2381580D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_2380712E4(a1, &v11 - v8, &qword_27DEEA850, &qword_2381580D8);
  return a5(v9);
}

void sub_23814A6A8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_23814A728(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_238152A9C();
}

void sub_23814A7A8(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_23814A828(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_238152A9C();
}

uint64_t sub_23814A898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2381554AC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_23814A998, 0, 0);
}

uint64_t sub_23814A998()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2381554BC();
  v5 = sub_23814F050(&qword_27DEEDB50, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_23815560C();
  sub_23814F050(&qword_27DEEDB58, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2381554CC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_23814AB28;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_23814AB28()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23814ACE4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_23814ACE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23814AD50(uint64_t a1, unint64_t a2)
{
  type metadata accessor for _DDDevicePickerView(0);
  sub_23808CAB0(1, a1, a2);
  return 0;
}

uint64_t sub_23814AE4C()
{
  v1 = type metadata accessor for _DDDevicePickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_238153A0C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_238153F1C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_238153F1C();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_238153A2C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2381537EC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  MEMORY[0x2383EA980](v5 + v1[21]);
  v18 = (v5 + v1[22]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_238085CA0(*v18, v19);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7, v20);
}

uint64_t sub_23814B2DC(uint64_t a1)
{
  v4 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238087150;

  return sub_23813E1FC(a1, v6, v7, v1 + v5);
}

uint64_t sub_23814B56C()
{
  v1 = type metadata accessor for _DDDevicePickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_238153A0C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_238153F1C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_238153F1C();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_238153A2C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2381537EC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  MEMORY[0x2383EA980](v5 + v1[21]);
  v18 = (v5 + v1[22]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_238085CA0(*v18, v19);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 6, v2 | 7, v20);
}

double sub_23814B9F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 17) & ~*(v5 + 80)));
  v7 = v6 + *(v5 + 64);
  return sub_23813A8E4(a1, *(v2 + 16), v6, *v7, v7[1], v7[2], v7[3], v7[4], a2, v7[5]);
}

unint64_t sub_23814BAB4()
{
  result = qword_27DEEDC10;
  if (!qword_27DEEDC10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDC08, &qword_23815F788);
    v4[0] = sub_2380711D4(&qword_27DEEDC00, &qword_27DEEDBF8, &qword_23815F780, MEMORY[0x277CE14C0]);
    v4[1] = MEMORY[0x277CE1170];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEDC10);
  }

  return result;
}

unint64_t sub_23814BB6C()
{
  result = qword_27DEEDC18;
  if (!qword_27DEEDC18)
  {
    v5[10] = v0;
    v5[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDB78, &qword_23815F558);
    v4 = sub_2380711D4(&qword_27DEEDC00, &qword_27DEEDBF8, &qword_23815F780, MEMORY[0x277CE14C0]);
    v5[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDBE8, &qword_23815F778);
    v5[3] = sub_2380711D4(&qword_27DEEDBF0, &qword_27DEEDBE8, &qword_23815F778, MEMORY[0x277CDF7D8]);
    v5[0] = v4;
    v5[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v5);
    atomic_store(result, &qword_27DEEDC18);
  }

  return result;
}

unint64_t sub_23814BC9C()
{
  result = qword_27DEEDC38;
  if (!qword_27DEEDC38)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDC28, &qword_23815F798);
    v4[0] = MEMORY[0x277CE11C0];
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27DEEDC38);
  }

  return result;
}

unint64_t sub_23814BD18()
{
  result = qword_27DEEDC50;
  if (!qword_27DEEDC50)
  {
    result = swift_getWitnessTable(byte_23815DA14, &type metadata for _DDUIEducationView, v0, v1);
    atomic_store(result, &qword_27DEEDC50);
  }

  return result;
}

double sub_23814BD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return result;
}

double sub_23814BDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return result;
}

unint64_t sub_23814BDFC()
{
  result = qword_27DEEDC68;
  if (!qword_27DEEDC68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDBA0, &qword_23815F588);
    v4[0] = sub_23814BEB4();
    v4[1] = sub_2380711D4(&qword_27DEEA518, &qword_27DEEA520, &qword_238157BC0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDC68);
  }

  return result;
}

unint64_t sub_23814BEB4()
{
  result = qword_27DEEDC70;
  if (!qword_27DEEDC70)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDBA8, &qword_23815F590);
    v4[0] = sub_2380711D4(&qword_27DEEDC78, &qword_27DEEDC80, &qword_23815F7C0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27DEEDC70);
  }

  return result;
}

unint64_t sub_23814BF64()
{
  result = qword_27DEEDC90;
  if (!qword_27DEEDC90)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDBC8, &qword_23815F5B0);
    v4[0] = sub_2380711D4(&qword_27DEEDC98, &qword_27DEEDBC0, &qword_23815F5A8, MEMORY[0x277CE1198]);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDC90);
  }

  return result;
}

unint64_t sub_23814C024()
{
  result = qword_27DEEDDB8;
  if (!qword_27DEEDDB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDDB0, &qword_23815F920);
    v4[0] = sub_23814C0B0();
    v4[1] = MEMORY[0x277CDF760];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDDB8);
  }

  return result;
}

unint64_t sub_23814C0B0()
{
  result = qword_27DEEDDC0;
  if (!qword_27DEEDDC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDDA8, &qword_23815F918);
    v4[0] = sub_23814C13C();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDDC0);
  }

  return result;
}

unint64_t sub_23814C13C()
{
  result = qword_27DEEDDC8;
  if (!qword_27DEEDDC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDDA0, &qword_23815F910);
    v4[0] = sub_2380711D4(&qword_27DEEDDD0, &qword_27DEEDD98, &qword_23815F908, MEMORY[0x277D7EA70]);
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDDC8);
  }

  return result;
}

double sub_23814C1F4@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for _DDDevicePickerView(0);

  return sub_2381427C8(a2);
}

unint64_t sub_23814C274()
{
  result = qword_27DEEDDD8;
  if (!qword_27DEEDDD8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB760, &qword_23815F800);
    v4[0] = sub_2380B5048();
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDDD8);
  }

  return result;
}

unint64_t sub_23814C30C()
{
  result = qword_27DEEDDF0;
  if (!qword_27DEEDDF0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDDE8, &qword_23815F930);
    v4[0] = sub_23814C398();
    v4[1] = sub_23814C47C();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEDDF0);
  }

  return result;
}

unint64_t sub_23814C398()
{
  result = qword_27DEEDDF8;
  if (!qword_27DEEDDF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDE00, &qword_23815F938);
    v4[0] = sub_2380711D4(&qword_27DEEDE08, &qword_27DEEC998, &qword_23815DAA0, MEMORY[0x277CE1198]);
    v4[1] = sub_2380711D4(&qword_27DEEDE10, &qword_27DEEDE18, &qword_23815F940, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEDDF8);
  }

  return result;
}

unint64_t sub_23814C47C()
{
  result = qword_27DEEDE20;
  if (!qword_27DEEDE20)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDE28, &qword_23815F948);
    v4[0] = sub_2380711D4(&qword_27DEEDE08, &qword_27DEEC998, &qword_23815DAA0, MEMORY[0x277CE1198]);
    v4[1] = v4[0];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEDE20);
  }

  return result;
}

unint64_t sub_23814C6C4()
{
  result = qword_27DEEDE48;
  if (!qword_27DEEDE48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDE40, &qword_23815F960);
    v4[0] = sub_23814F050(&qword_27DEEDE50, type metadata accessor for _DDDevicePickerEducationView, aI_3);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDE48);
  }

  return result;
}

unint64_t sub_23814C7C4()
{
  result = qword_27DEEDE80;
  if (!qword_27DEEDE80)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDE78, &qword_23815FA50);
    v4[0] = sub_2380711D4(&qword_27DEEDE88, &qword_27DEEDE90, &qword_23815FA58, MEMORY[0x277CDF340]);
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDE80);
  }

  return result;
}

double sub_23814C8F4(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_23814C918(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_23814C950()
{
  result = qword_27DEEDF60;
  if (!qword_27DEEDF60)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDF50, &qword_23815FB98);
    v4[0] = sub_23814CA08();
    v4[1] = sub_23814CDA4(&qword_27DEEE058, &qword_27DEEE060, &qword_23815FC30, sub_23814D1C4);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEDF60);
  }

  return result;
}

unint64_t sub_23814CA08()
{
  result = qword_27DEEDF68;
  if (!qword_27DEEDF68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDF70, &qword_23815FBA0);
    v4[0] = sub_23814CAC0();
    v4[1] = sub_23814CDA4(&qword_27DEEDFC8, &qword_27DEEDFD0, &qword_23815FBE0, sub_23814CE58);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEDF68);
  }

  return result;
}

unint64_t sub_23814CAC0()
{
  result = qword_27DEEDF78;
  if (!qword_27DEEDF78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDF80, &qword_23815FBA8);
    v4[0] = sub_23814CB4C();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDF78);
  }

  return result;
}

unint64_t sub_23814CB4C()
{
  result = qword_27DEEDF88;
  if (!qword_27DEEDF88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDF90, &qword_23815FBB0);
    v4[0] = sub_23814CC04();
    v4[1] = sub_2380711D4(&qword_27DEEC850, &qword_27DEEC338, &qword_23815BC80, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDF88);
  }

  return result;
}

unint64_t sub_23814CC04()
{
  result = qword_27DEEDF98;
  if (!qword_27DEEDF98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDFA0, &qword_23815FBB8);
    v4[0] = sub_23814CCBC();
    v4[1] = sub_2380711D4(&qword_27DEEC898, &qword_27DEEC8A0, &unk_23815FBD0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDF98);
  }

  return result;
}

unint64_t sub_23814CCBC()
{
  result = qword_27DEEDFA8;
  if (!qword_27DEEDFA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDFB0, &qword_23815FBC0);
    v4[0] = sub_2380711D4(&qword_27DEEDFB8, &qword_27DEEDFC0, &qword_23815FBC8, MEMORY[0x277CE1198]);
    v4[1] = sub_23814F050(&qword_27DEEAC80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDFA8);
  }

  return result;
}

uint64_t sub_23814CDA4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = sub_23814F050(&qword_27DEEAC80, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23814CE58()
{
  result = qword_27DEEDFD8;
  if (!qword_27DEEDFD8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDFE0, &qword_23815FBE8);
    v4[0] = sub_23814CF10();
    v4[1] = sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDFD8);
  }

  return result;
}

unint64_t sub_23814CF10()
{
  result = qword_27DEEDFE8;
  if (!qword_27DEEDFE8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDFF0, &qword_23815FBF0);
    v4[0] = sub_23814CF9C();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDFE8);
  }

  return result;
}

unint64_t sub_23814CF9C()
{
  result = qword_27DEEDFF8;
  if (!qword_27DEEDFF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE000, &qword_23815FBF8);
    v4[0] = sub_23814D028();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEDFF8);
  }

  return result;
}

unint64_t sub_23814D028()
{
  result = qword_27DEEE008;
  if (!qword_27DEEE008)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE010, &qword_23815FC00);
    v4[0] = sub_23814D0E0();
    v4[1] = sub_2380711D4(&qword_27DEEE048, &qword_27DEEE050, &unk_23815FC20, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE008);
  }

  return result;
}

unint64_t sub_23814D0E0()
{
  result = qword_27DEEE018;
  if (!qword_27DEEE018)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE020, &qword_23815FC08);
    v4[0] = sub_2380711D4(&qword_27DEEE028, &qword_27DEEE030, &qword_23815FC10, MEMORY[0x277CDE590]);
    v4[1] = sub_2380711D4(&qword_27DEEE038, &qword_27DEEE040, &qword_23815FC18, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE018);
  }

  return result;
}

unint64_t sub_23814D1C4()
{
  result = qword_27DEEE068;
  if (!qword_27DEEE068)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE070, &qword_23815FC38);
    v4[0] = sub_23814D27C();
    v4[1] = sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE068);
  }

  return result;
}

unint64_t sub_23814D27C()
{
  result = qword_27DEEE078;
  if (!qword_27DEEE078)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE080, &qword_23815FC40);
    v4[0] = sub_23814D308();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE078);
  }

  return result;
}

unint64_t sub_23814D308()
{
  result = qword_27DEEE088;
  if (!qword_27DEEE088)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE090, &qword_23815FC48);
    v4[0] = sub_23814D394();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE088);
  }

  return result;
}

unint64_t sub_23814D394()
{
  result = qword_27DEEE098;
  if (!qword_27DEEE098)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE0A0, &qword_23815FC50);
    v4[0] = sub_23814D44C();
    v4[1] = sub_2380711D4(&qword_27DEEE048, &qword_27DEEE050, &unk_23815FC20, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE098);
  }

  return result;
}

unint64_t sub_23814D44C()
{
  result = qword_27DEEE0A8;
  if (!qword_27DEEE0A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE0B0, &qword_23815FC58);
    v4[0] = sub_2380711D4(&qword_27DEEE0B8, &qword_27DEEE0C0, &qword_23815FC60, MEMORY[0x277CDF170]);
    v4[1] = sub_2380711D4(&qword_27DEEE038, &qword_27DEEE040, &qword_23815FC18, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE0A8);
  }

  return result;
}

unint64_t sub_23814D530()
{
  result = qword_27DEEE0C8;
  if (!qword_27DEEE0C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDF38, &qword_23815FB80);
    v4[0] = sub_23814D5E8();
    v4[1] = sub_2380711D4(&qword_27DEEB460, &qword_27DEEB468, &qword_238159B28, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE0C8);
  }

  return result;
}

unint64_t sub_23814D5E8()
{
  result = qword_27DEEE0D0;
  if (!qword_27DEEE0D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE0D8, &qword_23815FC68);
    v4[0] = sub_2380711D4(&qword_27DEEE0E0, &qword_27DEEE0E8, &qword_23815FC70, MEMORY[0x277CDF340]);
    v4[1] = sub_2380711D4(&qword_27DEEE038, &qword_27DEEE040, &qword_23815FC18, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE0D0);
  }

  return result;
}

unint64_t sub_23814D6CC()
{
  result = qword_27DEEE0F0;
  if (!qword_27DEEE0F0)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDF28, &qword_23815FB70);
    v4[0] = sub_2380711D4(&qword_27DEEDF58, &qword_27DEEDF48, &qword_23815FB90, MEMORY[0x277CE1138]);
    v4[1] = sub_23814C950();
    v4[2] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v4);
    atomic_store(result, &qword_27DEEE0F0);
  }

  return result;
}

uint64_t sub_23814D79C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23814D818()
{
  result = qword_27DEEE108;
  if (!qword_27DEEE108)
  {
    v6[5] = v0;
    v6[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE110, &qword_23815FC80);
    v4 = sub_23814D8B0();
    v5 = sub_23814DA80();
    v6[0] = MEMORY[0x277CE1410];
    v6[1] = v4;
    v6[2] = v5;
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v6);
    atomic_store(result, &qword_27DEEE108);
  }

  return result;
}

unint64_t sub_23814D8B0()
{
  result = qword_27DEEE118;
  if (!qword_27DEEE118)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE120, &qword_23815FC88);
    v4[0] = sub_23814D93C();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE118);
  }

  return result;
}

unint64_t sub_23814D93C()
{
  result = qword_27DEEE128;
  if (!qword_27DEEE128)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE130, &qword_23815FC90);
    v4[0] = sub_23814D9C8();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE128);
  }

  return result;
}

unint64_t sub_23814D9C8()
{
  result = qword_27DEEE138;
  if (!qword_27DEEE138)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE140, &qword_23815FC98);
    v4[0] = sub_2380711D4(&qword_27DEEE148, &qword_27DEEE150, &qword_23815FCA0, MEMORY[0x277CE1138]);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE138);
  }

  return result;
}

unint64_t sub_23814DA80()
{
  result = qword_27DEEE158;
  if (!qword_27DEEE158)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE160, &qword_23815FCA8);
    v4[0] = sub_23814DB0C();
    v4[1] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEE158);
  }

  return result;
}

unint64_t sub_23814DB0C()
{
  result = qword_27DEEE168;
  if (!qword_27DEEE168)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE170, &qword_23815FCB0);
    v4[0] = sub_23814DB98();
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE168);
  }

  return result;
}

unint64_t sub_23814DB98()
{
  result = qword_27DEEE178;
  if (!qword_27DEEE178)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC8F0, &qword_23815C8C0);
    v4[0] = sub_23814F050(&qword_27DEEE180, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE178);
  }

  return result;
}

uint64_t sub_23814DC54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_238153C2C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23814DCAC()
{
  v1 = type metadata accessor for _DDDevicePickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_238153A0C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_238153F1C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_238153F1C();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_238153A2C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2381537EC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  MEMORY[0x2383EA980](v5 + v1[21]);
  v18 = (v5 + v1[22]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_238085CA0(*v18, v19);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7, v20);
}

uint64_t sub_23814E148(uint64_t *a1)
{
  v3 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);

  return sub_238146C40(a1, v6, v1 + v4, v5);
}

void sub_23814E204(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE50, &qword_23815AF70);
      v7 = *(type metadata accessor for _DDNodeViewModel(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for _DDNodeViewModel(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for _DDDevicePickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_238153A0C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_238153F1C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_238153F1C();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_238153A2C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2381537EC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  MEMORY[0x2383EA980](v5 + v1[21]);
  v18 = (v5 + v1[22]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_238085CA0(*v18, v19);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7, v20);
}

uint64_t sub_23814E82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_238147194(a1, v6, a2);
}

uint64_t sub_23814E8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23814E974()
{
  v1 = type metadata accessor for _DDDevicePickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_238153A0C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_238153F1C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_238153F1C();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_238153A2C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2381537EC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  MEMORY[0x2383EA980](v5 + v1[21]);
  v18 = (v5 + v1[22]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_238085CA0(*v18, v19);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7, v20);
}

uint64_t sub_23814EE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_238148810(a1, v2 + v6, v7, a2);
}

uint64_t sub_23814EEBC()
{
  v1 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for _DDNodeViewModel(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_238149344(v0 + v2, v5);
}

uint64_t sub_23814EF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23814EFF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23814F050(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23814F098()
{
  v1 = type metadata accessor for _DDDevicePickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_238153A0C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_238153F1C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_238153F1C();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_238153A2C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2381537EC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  MEMORY[0x2383EA980](v5 + v1[21]);
  v18 = (v5 + v1[22]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_238085CA0(*v18, v19);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7, v20);
}

uint64_t sub_23814F534@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2381477D0(a1, v7, v8, v2 + v6, a2, v9);
}

uint64_t sub_23814F5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_238147B20(a1, v6, a2);
}

unint64_t sub_23814F6B8()
{
  result = qword_27DEEE230;
  if (!qword_27DEEE230)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEE218, &qword_23815FE00);
    v4[0] = sub_23814F050(&qword_27DEEE1A0, type metadata accessor for _DDNodeView, aJ);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEE230);
  }

  return result;
}

void sub_23814F774(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE248, &qword_23815FE48);
  v2 = MEMORY[0x28223BE20](v42);
  v41 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - v5;
  v7 = MEMORY[0x277D84F90];
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v4;
    v8 = *(v4 + 80);
    v37 = v8;
    v38 = (v8 + 32) & ~v8;
    v9 = MEMORY[0x277D84F90] + v38;
    v10 = 0;
    v11 = 0;
    v12 = *(type metadata accessor for _DDNodeViewModel(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v39 = *(v12 + 72);
    v14 = v7;
    while (1)
    {
      v15 = v41;
      v16 = *(v42 + 48);
      *v41 = v10;
      sub_23814EF88(v13, v15 + v16, type metadata accessor for _DDNodeViewModel);
      v17 = v6;
      sub_23807121C(v15, v6, &qword_27DEEE248, &qword_23815FE48);
      if (v11)
      {
        v44 = v14;
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE250, &unk_23815FE50);
        v21 = *(v43 + 72);
        v22 = v38;
        v44 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v44);
        if (!v21)
        {
          goto LABEL_35;
        }

        v24 = v23 - v22;
        if (v23 - v22 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v21;
        v27 = v44;
        *(v44 + 2) = v20;
        v27[3] = 2 * (v24 / v21);
        v28 = v27 + v22;
        v29 = v14[3] >> 1;
        v30 = v29 * v21;
        if (v14[2])
        {
          if (v27 < v14 || v28 >= v14 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v9 = &v28[v30];
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v6 = v17;
      v33 = __OFSUB__(v11--, 1);
      if (v33)
      {
        break;
      }

      ++v10;
      sub_23807121C(v17, v9, &qword_27DEEE248, &qword_23815FE48);
      v9 += *(v32 + 72);
      v13 += v39;
      v7 = v44;
      v14 = v44;
      if (v40 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 0;
LABEL_29:
  v34 = v7[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v33 = __OFSUB__(v35, v11);
    v36 = v35 - v11;
    if (v33)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v7[2] = v36;
  }
}

uint64_t objectdestroy_154Tm()
{
  v1 = type metadata accessor for _DDDevicePickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_238153A0C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_238153F1C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_238153F1C();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  sub_2380700D8(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_238153A2C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2381537EC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  MEMORY[0x2383EA980](v5 + v1[21]);
  v18 = (v5 + v1[22]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_238085CA0(*v18, v19);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7, v20);
}

uint64_t sub_23814FF64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2381483D0(a1, v6, a2);
}

uint64_t sub_238150018()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7, v1);
}

uint64_t sub_238150050(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE248, &qword_23815FE48);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t objectdestroy_132Tm()
{
  v1 = type metadata accessor for _DDDevicePickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v32 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for _DDNodeViewModel(0);
  v5 = *(*(v4 - 1) + 80);
  v33 = *(*(v4 - 1) + 64);
  v34 = v0;
  v6 = v0 + v3;

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_238153A0C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_238153F1C();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v1[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_238153F1C();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v6 + v12, 1, v13))
    {
      (*(v14 + 8))(v6 + v12, v13);
    }
  }

  else
  {
  }

  sub_2380700D8(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v15 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_238153A2C();
    (*(*(v16 - 8) + 8))(v6 + v15, v16);
  }

  else
  {
  }

  v17 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_2381537EC();
    (*(*(v18 - 8) + 8))(v6 + v17, v18);
  }

  else
  {
  }

  MEMORY[0x2383EA980](v6 + v1[21]);
  v19 = (v6 + v1[22]);
  v20 = v19[1];
  if (v20 >> 60 != 15)
  {
    sub_238085CA0(*v19, v20);
  }

  v21 = v2 | v5;
  v22 = (v3 + v32 + v5) & ~v5;

  v23 = sub_2381527EC();
  (*(*(v23 - 8) + 8))(v34 + v22, v23);
  v24 = v34 + v22 + v4[5];
  sub_238070070(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 24), *(v24 + 32));

  v25 = v4[7];
  v26 = sub_23815278C();
  v27 = *(*(v26 - 8) + 8);
  v27(v34 + v22 + v25, v26);
  v27(v34 + v22 + v4[8], v26);
  v28 = v4[9];
  v29 = sub_238152BAC();
  (*(*(v29 - 8) + 8))(v34 + v22 + v28, v29);

  return MEMORY[0x2821FE8E8](v34, v22 + v33, v21 | 7, v30);
}

uint64_t sub_2381506D8(uint64_t a1)
{
  v3 = *(type metadata accessor for _DDDevicePickerView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for _DDNodeViewModel(0) - 8);
  return sub_238147FD0(a1, v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

id sub_238150808(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for CNSecureFieldPickerViewController(a1, a2);
  return objc_msgSendSuper2(&v7, *a4, a3);
}

void sub_238150A04(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

id sub_238150C88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_238150D58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_238150DA0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_238150E00(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9 = type metadata accessor for FieldPickerViewController(a1, a2);
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC17DeviceDiscoveryUI25FieldPickerViewController_presentedContact] = v3;
  *&v10[OBJC_IVAR____TtC17DeviceDiscoveryUI25FieldPickerViewController_selectionFromContact] = v4;
  v11 = &v10[OBJC_IVAR____TtC17DeviceDiscoveryUI25FieldPickerViewController_fieldSaveHandler];
  *v11 = v6;
  *(v11 + 1) = v5;
  v12 = &v10[OBJC_IVAR____TtC17DeviceDiscoveryUI25FieldPickerViewController_dismissHandler];
  *v12 = v8;
  *(v12 + 1) = v7;
  v14 = objc_allocWithZone(type metadata accessor for CNSecureFieldPickerViewController(v10, v13));
  v15 = v3;
  v16 = v4;

  v26.receiver = v10;
  v26.super_class = v9;
  v17 = [v14 initWithNameDrop:v15 fieldSelections:v16];
  v18 = objc_msgSendSuper2(&v26, sel_initWithRootViewController_, v17);
  [v17 setDelegate_];
  sub_23807A3F8(0, &unk_27DEEE2F0, 0x277D750C8);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v8;
  v20[4] = v7;

  v21 = sub_23815524C();
  sub_23807A3F8(0, &qword_27DEED9F8, 0x277D751E0);
  v22 = v21;
  v23 = sub_23815511C();
  [v23 setStyle_];
  v24 = [v17 navigationItem];

  [v24 setRightBarButtonItem_];
  return v18;
}

uint64_t sub_238151064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238151154();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2381510C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238151154();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23815112C(uint64_t a1)
{
  sub_238151154();
  sub_23815408C();
  __break(1u);
}

unint64_t sub_238151154()
{
  result = qword_27DEEE2E8;
  if (!qword_27DEEE2E8)
  {
    result = swift_getWitnessTable(byte_23815FEF8, &type metadata for FieldPickerView, v0, v1);
    atomic_store(result, &qword_27DEEE2E8);
  }

  return result;
}

uint64_t sub_2381511A8()
{
  MEMORY[0x2383EA980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

uint64_t sub_2381511E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7, v1);
}