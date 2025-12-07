uint64_t sub_1D9A35E80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9A364F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E18, &unk_1D9C8A5B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E20, &unk_1D9C8A3E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1D99AB100(a1, &v20 - v12, &qword_1ECB51E18, &unk_1D9C8A5B0);
  sub_1D99AB100(a2, &v13[v15], &qword_1ECB51E18, &unk_1D9C8A5B0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB51E18, &unk_1D9C8A5B0);
LABEL_9:
      type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig(0);
      sub_1D9C7D3CC();
      sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1D9C7DC2C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1D99AB100(v13, v10, &qword_1ECB51E18, &unk_1D9C8A5B0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
LABEL_6:
    sub_1D99A6AE0(v13, &qword_1ECB51E20, &unk_1D9C8A3E0);
    goto LABEL_7;
  }

  sub_1D9A37528(&v13[v15], v7, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
  v18 = sub_1D9A36BCC(v10, v7);
  sub_1D9A374C8(v7, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
  sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
  sub_1D99A6AE0(v13, &qword_1ECB51E18, &unk_1D9C8A5B0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D9A3683C(void *a1, void *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512B8, &qword_1D9C85E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E28, &unk_1D9C8A3F0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_1D9C7E7DC() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB512B8, &qword_1D9C85E28);
  sub_1D99AB100(a2 + v14, &v13[v15], &qword_1ECB512B8, &qword_1D9C85E28);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB512B8, &qword_1D9C85E28);
LABEL_11:
      sub_1D9C7D3CC();
      sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1D9C7DC2C();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  sub_1D99AB100(v13, v10, &qword_1ECB512B8, &qword_1D9C85E28);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
LABEL_8:
    sub_1D99A6AE0(v13, &qword_1ECB51E28, &unk_1D9C8A3F0);
    goto LABEL_9;
  }

  v18 = v21;
  sub_1D9A37528(&v13[v15], v21, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
  v19 = sub_1D9A364F8(v10, v18);
  sub_1D9A374C8(v18, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
  sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig);
  sub_1D99A6AE0(v13, &qword_1ECB512B8, &qword_1D9C85E28);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D9A36BCC(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig(0);
  MEMORY[0x1EEE9AC00](v28);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51EF8, &qword_1D9C8AEE8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - v16;
  v19 = *(v18 + 56);
  sub_1D9A37464(a1, &v27 - v16);
  sub_1D9A37464(a2, &v17[v19]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9A37464(v17, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D9A37528(&v17[v19], v5, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
      if (sub_1D9A0097C(*v11, *v5))
      {
        sub_1D9C7D3CC();
        sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1D9C7DC2C())
        {
          v20 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig;
          sub_1D9A374C8(v5, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
          v21 = v11;
LABEL_13:
          sub_1D9A374C8(v21, v20);
          sub_1D9A374C8(v17, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
          return 1;
        }
      }

      v25 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig;
      sub_1D9A374C8(v5, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig);
      v26 = v11;
LABEL_16:
      sub_1D9A374C8(v26, v25);
      sub_1D9A374C8(v17, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config);
      return 0;
    }

    v22 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.SignSymbolConverterConfig;
    v23 = v11;
  }

  else
  {
    sub_1D9A37464(v17, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D9A37528(&v17[v19], v8, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
      if (sub_1D9A007D8(*v14, *v8))
      {
        sub_1D9C7D3CC();
        sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1D9C7DC2C())
        {
          v20 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig;
          sub_1D9A374C8(v8, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
          v21 = v14;
          goto LABEL_13;
        }
      }

      v25 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig;
      sub_1D9A374C8(v8, type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig);
      v26 = v14;
      goto LABEL_16;
    }

    v22 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.QIDConverterConfig;
    v23 = v14;
  }

  sub_1D9A374C8(v23, v22);
  sub_1D99A6AE0(v17, &qword_1ECB51EF8, &qword_1D9C8AEE8);
  return 0;
}

uint64_t sub_1D9A37034(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512B0, &unk_1D9C8A520);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v24 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51EF0, &qword_1D9C8AEE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if ((sub_1D9A01074(*a1, *a2) & 1) == 0 || (sub_1D9A01074(a1[1], a2[1]) & 1) == 0 || (sub_1D9A01074(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_12;
  }

  v25 = type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  v14 = *(v25 + 32);
  v15 = *(v11 + 48);
  sub_1D99AB100(a1 + v14, v13, &qword_1ECB512B0, &unk_1D9C8A520);
  v16 = a2 + v14;
  v17 = v15;
  sub_1D99AB100(v16, &v13[v15], &qword_1ECB512B0, &unk_1D9C8A520);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v10, &qword_1ECB512B0, &unk_1D9C8A520);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      sub_1D9A37528(&v13[v17], v7, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
      if (sub_1D9A25D50(*v10, *v7))
      {
        sub_1D9C7D3CC();
        sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v23 = sub_1D9C7DC2C();
        sub_1D9A374C8(v7, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
        sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
        sub_1D99A6AE0(v13, &qword_1ECB512B0, &unk_1D9C8A520);
        if (v23)
        {
          goto LABEL_7;
        }

LABEL_12:
        v19 = 0;
        return v19 & 1;
      }

      sub_1D9A374C8(v7, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
      sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
      v20 = &qword_1ECB512B0;
      v21 = &unk_1D9C8A520;
LABEL_11:
      sub_1D99A6AE0(v13, v20, v21);
      goto LABEL_12;
    }

    sub_1D9A374C8(v10, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
LABEL_10:
    v20 = &qword_1ECB51EF0;
    v21 = &qword_1D9C8AEE0;
    goto LABEL_11;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1D99A6AE0(v13, &qword_1ECB512B0, &unk_1D9C8A520);
LABEL_7:
  sub_1D9C7D3CC();
  sub_1D9A35E80(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = sub_1D9C7DC2C();
  return v19 & 1;
}

uint64_t sub_1D9A37464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_LabelCachingConverterConfig.OneOf_Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A374C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A37528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A375A8(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v35 = *a1;
  v36 = v10;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v38 = a2[2];
  v15 = *v2;
  if (*(v15 + 16))
  {
    v16 = sub_1D99ED894(v38, v14);
    if (v17)
    {
      if (*(v15 + 16))
      {
        v18 = *(*(v15 + 56) + 8 * v16);

        v19 = sub_1D99ED894(v36, v11);
        if (v20)
        {
          v21 = *(*(v15 + 56) + 8 * v19);
          v39 = v15;

          v22 = sub_1D9A37974(v18, v21);

          return v22 & 1;
        }
      }
    }
  }

  v37 = v6;
  static Logger.argos.getter(v8);

  v23 = sub_1D9C7D8BC();
  v24 = sub_1D9C7E0AC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v34 = v5;
    v26 = v25;
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136315394;
    v39 = 0;
    v40 = 0xE000000000000000;
    v41 = v27;
    sub_1D9C7E40C();
    HIDWORD(v32) = v24;
    MEMORY[0x1DA73DF90](0xD00000000000001FLL, 0x80000001D9CA5340);
    MEMORY[0x1DA73DF90](v36, v11);
    v36 = v12;
    MEMORY[0x1DA73DF90](0xD000000000000014, 0x80000001D9CA5360);
    MEMORY[0x1DA73DF90](v35, v9);
    v28 = sub_1D9A0E224(v39, v40, &v41);

    *(v26 + 4) = v28;
    *(v26 + 12) = 2080;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1D9C7E40C();
    MEMORY[0x1DA73DF90](0xD00000000000001FLL, 0x80000001D9CA5340);
    MEMORY[0x1DA73DF90](v38, v14);
    MEMORY[0x1DA73DF90](0xD000000000000014, 0x80000001D9CA5360);
    MEMORY[0x1DA73DF90](v36, v13);
    v29 = sub_1D9A0E224(v39, v40, &v41);

    *(v26 + 14) = v29;
    _os_log_impl(&dword_1D9962000, v23, BYTE4(v32), "Invalid input nodes: %s %s", v26, 0x16u);
    v30 = v33;
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v30, -1, -1);
    MEMORY[0x1DA7405F0](v26, -1, -1);

    (*(v37 + 8))(v8, v34);
  }

  else
  {

    (*(v37 + 8))(v8, v5);
  }

  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1D9A37974(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = v3 == *(a1 + 32) && v4 == *(a1 + 40);
  if (v5 || (sub_1D9C7E7DC() & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = sub_1D9A37974(a1, Strong);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_1D9A37A10()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1D9A37A90(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *v3;
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = sub_1D99ED894(*(a1 + 16), *(a1 + 24));
  if ((v9 & 1) == 0 || !*(v5 + 16))
  {
    goto LABEL_12;
  }

  v10 = *(*(v5 + 56) + 8 * v8);

  v11 = sub_1D99ED894(v6, v7);
  if ((v12 & 1) == 0)
  {

LABEL_12:
    *a3 = 0u;
    a3[1] = 0u;
    return;
  }

  v64 = a3;
  v13 = *(*(v5 + 56) + 8 * v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51730, &qword_1D9C86DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9C85660;
  v15 = v10[3];
  v16 = v10[4];
  v17 = v10[5];
  *(inited + 32) = v10[2];
  *(inited + 40) = v15;
  *(inited + 48) = v16;
  *(inited + 56) = v17;

  v68 = v13;

  for (i = swift_weakLoadStrong(); i; i = swift_weakLoadStrong())
  {
    v19 = i[2];
    v20 = i[3];
    v21 = i[4];
    v22 = i[5];
    v23 = inited;
    v25 = *(inited + 16);
    v24 = *(inited + 24);

    if (v25 >= v24 >> 1)
    {
      inited = sub_1D9AF8F0C((v24 > 1), v25 + 1, 1, v23);
    }

    else
    {
      inited = v23;
    }

    *(inited + 16) = v25 + 1;
    v26 = (inited + 32 * v25);
    v26[4] = v19;
    v26[5] = v20;
    v26[6] = v21;
    v26[7] = v22;
  }

  v67 = inited;

  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1D9C85660;
  v28 = v68[3];
  v29 = v68[4];
  v30 = v68[5];
  *(v27 + 32) = v68[2];
  *(v27 + 40) = v28;
  *(v27 + 48) = v29;
  *(v27 + 56) = v30;

  for (j = swift_weakLoadStrong(); j; j = swift_weakLoadStrong())
  {
    v32 = j[2];
    v33 = j[3];
    v34 = j[4];
    v35 = j[5];
    v36 = *(v27 + 16);
    v37 = *(v27 + 24);

    if (v36 >= v37 >> 1)
    {
      v27 = sub_1D9AF8F0C((v37 > 1), v36 + 1, 1, v27);
    }

    *(v27 + 16) = v36 + 1;
    v38 = (v27 + 32 * v36);
    v38[4] = v32;
    v38[5] = v33;
    v38[6] = v34;
    v38[7] = v35;
  }

  v39 = *(v67 + 16);
  if (!v39)
  {
    goto LABEL_41;
  }

  v40 = 0;
  v41 = 0;
  v42 = *(v27 + 16);
  v43 = v27 + 32;
  v44 = v42;
  while (1)
  {
    v45 = v42 - v41;
    if (v42 == v41)
    {
      goto LABEL_41;
    }

    v46 = v39 - v40;
    if (v44 < v39 - v40)
    {
      v46 = v44;
    }

    v47 = (v67 + 56 + 32 * v40);
    while (1)
    {
      if (__OFSUB__(v39, v40))
      {
        __break(1u);
LABEL_44:
        __break(1u);
      }

      if (v45 >= v39 - v40)
      {
        break;
      }

      ++v40;
      v47 += 4;
      if (v40 >= v39)
      {
        goto LABEL_41;
      }
    }

    if (v46 < v45)
    {
      goto LABEL_40;
    }

    if (v40 < 0)
    {
      goto LABEL_44;
    }

    v48 = *(v47 - 1);
    v49 = *v47;
    v66 = v43;
    v50 = (v43 + 32 * v41);
    v51 = *v50;
    v52 = v50[1];
    v54 = v50[2];
    v53 = v50[3];
    v55 = *(v47 - 3) == v51 && *(v47 - 2) == v52;
    if (v55 || (v65 = *(v47 - 1), v62 = v53, v63 = v54, v56 = sub_1D9C7E7DC(), v53 = v62, v54 = v63, v48 = v65, (v56 & 1) != 0))
    {
      v57 = v48 == v54 && v49 == v53;
      if (v57 || (sub_1D9C7E7DC() & 1) != 0)
      {
        break;
      }
    }

    ++v40;
    v43 = v66;
LABEL_40:
    ++v41;
    --v44;
    if (v40 >= v39)
    {
LABEL_41:

      *v64 = 0u;
      v64[1] = 0u;
      return;
    }
  }

  v58 = *(v47 - 3);
  v59 = *(v47 - 2);
  v60 = *(v47 - 1);
  v61 = *v47;

  *v64 = v58;
  *(v64 + 1) = v59;
  *(v64 + 2) = v60;
  *(v64 + 3) = v61;
}

uint64_t type metadata accessor for URLMatchDomainAssignmentRule(uint64_t a1)
{
  result = qword_1ECB51F38;
  if (!qword_1ECB51F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9A37F2C(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1D9A37FB4@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v5 = v4;
  v122 = type metadata accessor for URLMatchDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v122);
  v117 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v115 = (&v110 - v15);
  v16 = sub_1D9C7D8DC();
  v120 = *(v16 - 8);
  v121 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v110 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0, &qword_1D9C8AF90);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v110 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = a1[7];
  v170 = a1[6];
  v171 = v28;
  v172[0] = a1[8];
  *(v172 + 13) = *(a1 + 141);
  v29 = a1[3];
  v166 = a1[2];
  v167 = v29;
  v30 = a1[5];
  v168 = a1[4];
  v169 = v30;
  v31 = a1[1];
  v164 = *a1;
  v165 = v31;
  if (*(v4 + 32) == 1 && *(a2 + 104) != 1)
  {
    goto LABEL_7;
  }

  v118 = a2;
  v123 = &v110 - v27;
  if ((sub_1D9A38BF0(a3) & 1) == 0)
  {
    goto LABEL_7;
  }

  v32 = *(v4 + 16);
  if (!*(v32 + 16))
  {
    v111 = v13;
    v114 = 0;
    v112 = 0.0;
    goto LABEL_9;
  }

  sub_1D99B1E14(v32);
  v114 = v34;
  if (!v34)
  {
LABEL_7:
    v35 = a1[7];
    a4[6] = a1[6];
    a4[7] = v35;
    a4[8] = a1[8];
    *(a4 + 141) = *(a1 + 141);
    v36 = a1[3];
    a4[2] = a1[2];
    a4[3] = v36;
    v37 = a1[5];
    a4[4] = a1[4];
    a4[5] = v37;
    v38 = a1[1];
    *a4 = *a1;
    a4[1] = v38;
    sub_1D99AB100(&v164, &v155, &qword_1ECB510B8, &unk_1D9C864F0);
    return result;
  }

  v111 = v13;
  v112 = v33;
LABEL_9:
  v40 = _s14DetectedResultVMa(0);
  v41 = *(v40 - 8);
  v42 = v123;
  (*(v41 + 56))(v123, 1, 1, v40);
  v43 = *(v4 + 24);
  if (*(v43 + 16))
  {
    v44 = *(v118 + 56);
    *&v155 = *(v5 + *(v122 + 28));

    sub_1D9A5FF38(v43, &v155, v44, v25);

    sub_1D9A39168(v25, v42);
    sub_1D99AB100(v42, v22, &qword_1ECB510C0, &qword_1D9C8AF90);
    LODWORD(v44) = (*(v41 + 48))(v22, 1, v40);
    sub_1D99A6AE0(v22, &qword_1ECB510C0, &qword_1D9C8AF90);
    if (v44 == 1)
    {
      v45 = v171;
      a4[6] = v170;
      a4[7] = v45;
      a4[8] = v172[0];
      *(a4 + 141) = *(v172 + 13);
      v46 = v167;
      a4[2] = v166;
      a4[3] = v46;
      v47 = v169;
      a4[4] = v168;
      a4[5] = v47;
      v48 = v165;
      *a4 = v164;
      a4[1] = v48;
      sub_1D99AB100(&v164, &v155, &qword_1ECB510B8, &unk_1D9C864F0);
      sub_1D99A6AE0(v42, &qword_1ECB510C0, &qword_1D9C8AF90);

      return result;
    }
  }

  v113 = v41;
  v110 = v40;
  if (*(v5 + 33) != 1)
  {
    v61 = v119;
    static Logger.argos.getter(v119);
    v62 = v117;
    sub_1D9A391D8(v5, v117, type metadata accessor for URLMatchDomainAssignmentRule);
    v63 = v111;
    sub_1D9A391D8(v118, v111, type metadata accessor for VisualUnderstanding.ImageRegion);
    v64 = sub_1D9C7D8BC();
    v65 = sub_1D9C7E09C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&v144[0] = v118;
      *v66 = 136315394;
      v67 = v122;
      v68 = sub_1D9A15C94(*(v62 + *(v122 + 20)));
      v69 = v62;
      v71 = v70;
      sub_1D9A392A4(v69, type metadata accessor for URLMatchDomainAssignmentRule);
      v72 = sub_1D9A0E224(v68, v71, v144);

      *(v66 + 4) = v72;
      *(v66 + 12) = 2080;
      v73 = v63[1];
      v155 = *v63;
      v156 = v73;
      v74 = NormalizedRect.loggingDescription.getter();
      v76 = v75;
      sub_1D9A392A4(v63, type metadata accessor for VisualUnderstanding.ImageRegion);
      v77 = sub_1D9A0E224(v74, v76, v144);

      *(v66 + 14) = v77;
      v78 = v67;
      _os_log_impl(&dword_1D9962000, v64, v65, "Assign %s to region %s", v66, 0x16u);
      v79 = v118;
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v79, -1, -1);
      MEMORY[0x1DA7405F0](v66, -1, -1);

      (*(v120 + 8))(v119, v121);
    }

    else
    {

      sub_1D9A392A4(v63, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9A392A4(v62, type metadata accessor for URLMatchDomainAssignmentRule);
      (*(v120 + 8))(v61, v121);
      v78 = v122;
    }

    v80 = v123;
    v86 = *(v5 + *(v78 + 20));
    v87 = *(v113 + 48);
    v88 = v110;
    v113 += 48;
    v89 = v87(v123, 1, v110);
    LODWORD(v122) = v86;
    if (v89)
    {
      LOBYTE(v144[0]) = v86;
      *&v155 = *(v5 + *(v78 + 28));

      sub_1D9A19958(&v155, &v151);

      v90 = v151;
      v91 = v152;
      v92 = v153;
      v93 = v154;
    }

    else
    {
      v94 = (v80 + *(v88 + 28));
      v90 = *v94;
      v91 = v94[1];
      v92 = v94[2];
      v93 = v94[3];
      v151 = *v94;
      v152 = v91;
      v153 = v92;
      v154 = v93;
    }

    v95 = v87(v80, 1, v88);
    v96 = 0.0;
    v97 = 0;
    if (!v95)
    {
      v97 = *(v123 + *(v88 + 32));
    }

    v98 = v122;
    LOBYTE(v144[0]) = v122;
    if (v114)
    {
      v96 = v112;
    }

    *(v144 + 8) = 0u;
    *(&v144[1] + 8) = 0u;
    BYTE8(v144[2]) = 0;
    v145 = 0u;
    v146 = 0u;
    *&v147 = v90;
    *(&v147 + 1) = v91;
    *&v148 = v92;
    *(&v148 + 1) = v93;
    LODWORD(v149) = 0;
    DWORD1(v149) = v97;
    *(&v149 + 1) = LODWORD(v96);
    LOWORD(v150[0]) = 0;
    *&v150[1] = 0;
    *(&v150[0] + 1) = 0;
    *(&v150[1] + 5) = 0;
    v161 = v170;
    v162 = v171;
    v163[0] = v172[0];
    *(v163 + 13) = *(v172 + 13);
    v157 = v166;
    v158 = v167;
    v159 = v168;
    v160 = v169;
    v155 = v164;
    v156 = v165;
    if (sub_1D99AE104(&v155) == 1)
    {
      goto LABEL_28;
    }

    v101 = sub_1D9A15C94(v155);
    v103 = v102;
    if (v101 == sub_1D9A15C94(v98) && v103 == v104)
    {
    }

    else
    {
      v105 = sub_1D9C7E7DC();

      if ((v105 & 1) == 0)
      {
LABEL_28:
        v132 = v148;
        v133 = v149;
        v134[0] = v150[0];
        *(v134 + 13) = *(v150 + 13);
        v128 = v144[2];
        v129 = v145;
        v130 = v146;
        v131 = v147;
        v99 = v144[0];
        v100 = v144[1];
LABEL_34:
        v126 = v99;
        v127 = v100;
        faiss::NormalizationTransform::~NormalizationTransform(&v126);
        v141 = v132;
        v142 = v133;
        v143[0] = v134[0];
        *(v143 + 13) = *(v134 + 13);
        v137 = v128;
        v138 = v129;
        v139 = v130;
        v140 = v131;
        v135 = v126;
        v136 = v127;
        v106 = v133;
        a4[6] = v132;
        a4[7] = v106;
        a4[8] = v143[0];
        *(a4 + 141) = *(v143 + 13);
        v107 = v138;
        a4[2] = v137;
        a4[3] = v107;
        v108 = v140;
        a4[4] = v139;
        a4[5] = v108;
        v109 = v136;
        *a4 = v135;
        a4[1] = v109;
        sub_1D99A6AE0(v123, &qword_1ECB510C0, &qword_1D9C8AF90);

        return result;
      }
    }

    v141 = v161;
    v142 = v162;
    v143[0] = v163[0];
    *(v143 + 13) = *(v163 + 13);
    v137 = v157;
    v138 = v158;
    v139 = v159;
    v140 = v160;
    v135 = v155;
    v136 = v156;
    v132 = v148;
    v133 = v149;
    v134[0] = v150[0];
    *(v134 + 13) = *(v150 + 13);
    v128 = v144[2];
    v129 = v145;
    v130 = v146;
    v131 = v147;
    v126 = v144[0];
    v127 = v144[1];
    sub_1D9B67854(&v135, &v126, v124);
    sub_1D99AE0B0(v144);
    v132 = v124[6];
    v133 = v124[7];
    v134[0] = v125[0];
    *(v134 + 13) = *(v125 + 13);
    v128 = v124[2];
    v129 = v124[3];
    v130 = v124[4];
    v131 = v124[5];
    v99 = v124[0];
    v100 = v124[1];
    goto LABEL_34;
  }

  v49 = v116;
  static Logger.argos.getter(v116);
  v50 = v115;
  sub_1D9A391D8(v118, v115, type metadata accessor for VisualUnderstanding.ImageRegion);
  v51 = sub_1D9C7D8BC();
  v52 = sub_1D9C7E09C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v144[0] = v54;
    *v53 = 136315138;
    v55 = v50[1];
    v155 = *v50;
    v156 = v55;
    v56 = NormalizedRect.loggingDescription.getter();
    v58 = v57;
    sub_1D9A392A4(v50, type metadata accessor for VisualUnderstanding.ImageRegion);
    v59 = sub_1D9A0E224(v56, v58, v144);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_1D9962000, v51, v52, "Reject domain (String(describing: curDomainInfo?.domain.name)) for region %s", v53, 0xCu);
    v60 = __swift_destroy_boxed_opaque_existential_0Tm(v54);
    MEMORY[0x1DA7405F0](v54, -1, -1, v60);
    MEMORY[0x1DA7405F0](v53, -1, -1);
  }

  else
  {

    sub_1D9A392A4(v50, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  (*(v120 + 8))(v49, v121);
  v81 = v123;
  sub_1D99D3B54(&v155);
  v82 = v162;
  a4[6] = v161;
  a4[7] = v82;
  a4[8] = v163[0];
  *(a4 + 141) = *(v163 + 13);
  v83 = v158;
  a4[2] = v157;
  a4[3] = v83;
  v84 = v160;
  a4[4] = v159;
  a4[5] = v84;
  v85 = v156;
  *a4 = v155;
  a4[1] = v85;
  sub_1D99A6AE0(v81, &qword_1ECB510C0, &qword_1D9C8AF90);

  return result;
}

uint64_t sub_1D9A38BF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51640, &qword_1D9C869F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for DomainAssignmentSignals.ImageMetadata(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DomainAssignmentSignals(0);
  sub_1D99AB100(a1 + *(v15 + 24), v10, &qword_1ECB51640, &qword_1D9C869F0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D99A6AE0(v10, &qword_1ECB51640, &qword_1D9C869F0);
  }

  else
  {
    v29 = v1;
    sub_1D9A39240(v10, v14);
    sub_1D99AB100(v14, v7, &qword_1ECB51FD0, &unk_1D9C862F0);
    v16 = sub_1D9C7B80C();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (v18(v7, 1, v16) == 1)
    {
      sub_1D99A6AE0(v7, &qword_1ECB51FD0, &unk_1D9C862F0);
    }

    else
    {
      v19 = sub_1D9C7B73C();
      v21 = v20;
      (*(v17 + 8))(v7, v16);
      v22 = sub_1D9A38FE0(v19, v21, *v29);

      if (v22)
      {
        sub_1D9A392A4(v14, type metadata accessor for DomainAssignmentSignals.ImageMetadata);
        return 1;
      }
    }

    v24 = v30;
    sub_1D99AB100(&v14[*(v11 + 20)], v30, &qword_1ECB51FD0, &unk_1D9C862F0);
    if (v18(v24, 1, v16) == 1)
    {
      sub_1D99A6AE0(v24, &qword_1ECB51FD0, &unk_1D9C862F0);
      sub_1D9A392A4(v14, type metadata accessor for DomainAssignmentSignals.ImageMetadata);
    }

    else
    {
      v25 = sub_1D9C7B73C();
      v27 = v26;
      (*(v17 + 8))(v24, v16);
      v28 = sub_1D9A38FE0(v25, v27, v29[1]);

      sub_1D9A392A4(v14, type metadata accessor for DomainAssignmentSignals.ImageMetadata);
      if (v28)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_1D9A38FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515A0, &qword_1D9C86590);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = a3 + 40;
  v10 = *(a3 + 16) + 1;
  do
  {
    if (!--v10)
    {
      break;
    }

    v11 = v9 + 16;
    v14 = v9 - 8;
    v12 = *(v9 - 8);
    v13 = *(v14 + 8);
    v19[2] = a1;
    v19[3] = a2;
    v19[0] = v12;
    v19[1] = v13;
    v15 = sub_1D9C7B98C();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    sub_1D99A57F8();

    sub_1D9C7E2EC();
    v17 = v16;
    sub_1D99A6AE0(v8, &qword_1ECB515A0, &qword_1D9C86590);

    v9 = v11;
  }

  while ((v17 & 1) != 0);
  return v10 != 0;
}

uint64_t sub_1D9A39168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0, &qword_1D9C8AF90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A391D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A39240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainAssignmentSignals.ImageMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A392A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D9A39304(id a1)
{
  v224 = sub_1D9C7D8DC();
  v2 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v4 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v199 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v199 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v218 = &v199 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v219 = &v199 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v220 = &v199 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v217 = &v199 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v216 = &v199 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v221 = &v199 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v199 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v199 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v199 - v31;
  v33 = [a1 bundleIdentifier];
  if (!v33 || (v222 = v2, v223 = a1, v34 = v33, sub_1D9C7DC7C(), v34, v2 = v222, a1 = v223, v35 = sub_1D9C7DE4C(), , (v35 & 1) == 0))
  {
    static Logger.argos.getter(v4);
    v58 = sub_1D9C7D8BC();
    v59 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1D9962000, v58, v59, "Models bundle has inappropriate Bundle ID", v60, 2u);
      MEMORY[0x1DA7405F0](v60, -1, -1);
    }

    (*(v2 + 8))(v4, v224);
    return;
  }

  v36 = [a1 infoDictionary];
  if (!v36)
  {
    static Logger.argos.getter(v32);
    v69 = sub_1D9C7D8BC();
    v70 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_1D9962000, v69, v70, "Cannot access MLModels Meta bundle Info.plist", v71, 2u);
      MEMORY[0x1DA7405F0](v71, -1, -1);
    }

    (*(v2 + 8))(v32, v224);
    return;
  }

  v37 = v36;
  v38 = sub_1D9C7DB4C();

  v39 = sub_1D9A45EA0(MEMORY[0x1E69E7CC0]);
  if (!*(v38 + 16) || (v212 = v39, v40 = sub_1D99ED894(0x63617073656D614ELL, 0xEF736C65646F4D65), (v41 & 1) == 0))
  {

    static Logger.argos.getter(v7);
    v61 = sub_1D9C7D8BC();
    v62 = sub_1D9C7E0AC();
    v63 = os_log_type_enabled(v61, v62);
    v65 = v223;
    v64 = v224;
    if (v63)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v227 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_1D9A0E224(0x63617073656D614ELL, 0xEF736C65646F4D65, &v227);
      _os_log_impl(&dword_1D9962000, v61, v62, "The %s key is missing", v66, 0xCu);
      v68 = __swift_destroy_boxed_opaque_existential_0Tm(v67);
      MEMORY[0x1DA7405F0](v67, -1, -1, v68);
      MEMORY[0x1DA7405F0](v66, -1, -1);
    }

    (*(v222 + 8))(v7, v64);
    return;
  }

  sub_1D99A579C(*(v38 + 56) + 32 * v40, &v227);

  sub_1D99A579C(&v227, v226);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F50, &unk_1D9C8AFA0);
  v42 = swift_dynamicCast();
  v43 = v223;
  v44 = v224;
  if (!v42)
  {

    static Logger.argos.getter(v10);
    v72 = sub_1D9C7D8BC();
    v73 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v226[0] = v75;
      *v74 = 136315138;
      *(v74 + 4) = sub_1D9A0E224(0x63617073656D614ELL, 0xEF736C65646F4D65, v226);
      _os_log_impl(&dword_1D9962000, v72, v73, "The %s key has invalid data", v74, 0xCu);
      v76 = __swift_destroy_boxed_opaque_existential_0Tm(v75);
      MEMORY[0x1DA7405F0](v75, -1, -1, v76);
      MEMORY[0x1DA7405F0](v74, -1, -1);
    }

    (*(v222 + 8))(v10, v44);
    __swift_destroy_boxed_opaque_existential_0Tm(&v227);
    return;
  }

  v45 = v225;
  v209 = sub_1D9A46088(MEMORY[0x1E69E7CC0]);
  static Logger.argos.getter(v28);
  sub_1D9A3E0E0(v25);
  v46 = v222 + 8;
  v47 = *(v222 + 8);
  v47(v28, v44);

  v48 = sub_1D9C7D8BC();
  v49 = sub_1D9C7E09C();

  v50 = os_log_type_enabled(v48, v49);
  v214 = v46;
  v215 = v47;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v226[0] = v52;
    *v51 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51608, &qword_1D9C86880);
    v53 = sub_1D9C7DB5C();
    v55 = sub_1D9A0E224(v53, v54, v226);

    *(v51 + 4) = v55;
    v44 = v224;
    _os_log_impl(&dword_1D9962000, v48, v49, "MLModelsMetaBundle.init(): namespaceDict = %s", v51, 0xCu);
    v56 = __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x1DA7405F0](v52, -1, -1, v56);
    MEMORY[0x1DA7405F0](v51, -1, -1);
  }

  v47(v25, v44);
  v78 = v218;
  v77 = v219;
  v79 = 0;
  v80 = v45 + 64;
  v81 = 1 << *(v45 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v45 + 64);
  v84 = (v81 + 63) >> 6;
  v206 = 0x80000001D9CA3A40;
  v213 = (v222 + 16);
  v200 = (v222 + 32);
  *&v57 = 136315394;
  v202 = v57;
  *&v57 = 136315138;
  v201 = v57;
  v85 = v209;
  v204 = v45 + 64;
  v203 = v84;
  v205 = v45;
LABEL_24:
  v86 = v79;
  v209 = v85;
  while (v83)
  {
    v79 = v86;
LABEL_33:
    v92 = __clz(__rbit64(v83)) | (v79 << 6);
    v93 = *(v45 + 56);
    v94 = (*(v45 + 48) + 16 * v92);
    v95 = *v94;
    v96 = *(v93 + 8 * v92);
    v97 = qword_1EDD354B8;
    v210 = v94[1];

    if (v97 != -1)
    {
      swift_once();
    }

    v222 = v96;
    v211 = byte_1EDD354C0;
    v208 = v83;
    if ((byte_1EDD354C0 & 1) == 0)
    {
      goto LABEL_51;
    }

    v98 = [objc_opt_self() mainBundle];
    v99 = [v98 bundleIdentifier];

    if (!v99)
    {
LABEL_42:
      v105 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v105 = &qword_1EDD355A8;
      }

      goto LABEL_47;
    }

    v100 = sub_1D9C7DC7C();
    v102 = v101;

    if (v100 == 0xD00000000000002BLL && v206 == v102)
    {
    }

    else
    {
      v104 = sub_1D9C7E7DC();

      if ((v104 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v105 = &off_1ECB51BA8;
    if (qword_1ECB50988 != -1)
    {
      swift_once();
      v105 = &off_1ECB51BA8;
    }

LABEL_47:
    v106 = *(*v105 + 32);

    v107 = sub_1D9C7DC4C();
    LODWORD(v106) = [v106 BOOLForKey_];

    if (v106)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v108 = __swift_project_value_buffer(v44, qword_1EDD2C990);
      v109 = *v213;
      (*v213)(v221, v108, v44);
      goto LABEL_54;
    }

LABEL_51:
    v110 = v220;
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v111 = __swift_project_value_buffer(v44, qword_1EDD354D8);
    v109 = *v213;
    (*v213)(v221, v111, v44);
    if ((v211 & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_54:
    v112 = [objc_opt_self() mainBundle];
    v113 = [v112 bundleIdentifier];

    if (!v113)
    {
      goto LABEL_61;
    }

    v114 = sub_1D9C7DC7C();
    v116 = v115;

    if (v114 == 0xD00000000000002BLL && v206 == v116)
    {
    }

    else
    {
      v117 = sub_1D9C7E7DC();

      if ((v117 & 1) == 0)
      {
LABEL_61:
        v118 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v118 = &qword_1EDD355A8;
        }

        goto LABEL_63;
      }
    }

    v118 = &off_1ECB51BA8;
    if (qword_1ECB50988 != -1)
    {
      swift_once();
      v118 = &off_1ECB51BA8;
    }

LABEL_63:
    v119 = *(*v118 + 32);

    v120 = sub_1D9C7DC4C();
    LODWORD(v119) = [v119 BOOLForKey_];

    if (v119)
    {
      v207 = v109;
      v121 = v44;
      v122 = v77;
      v123 = v78;
      v110 = v220;
      (*v200)(v220, v221, v121);
      goto LABEL_69;
    }

    v110 = v220;
LABEL_66:
    v122 = v77;
    v123 = v78;
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v124 = v224;
    v125 = __swift_project_value_buffer(v224, qword_1EDD354D8);
    v207 = v109;
    v109(v110, v125, v124);
    v215(v221, v124);
LABEL_69:
    v126 = v210;

    v127 = sub_1D9C7D8BC();
    v128 = sub_1D9C7E09C();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v226[0] = v130;
      *v129 = v202;
      *(v129 + 4) = sub_1D9A0E224(v95, v126, v226);
      *(v129 + 12) = 2080;
      v131 = sub_1D9C7DB5C();
      v133 = sub_1D9A0E224(v131, v132, v226);
      v78 = v218;

      *(v129 + 14) = v133;
      v44 = v224;
      _os_log_impl(&dword_1D9962000, v127, v128, "MLModelsMetaBundle.init(): loading trial role %s %s", v129, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v130, -1, -1);
      v134 = v129;
      v77 = v219;
      MEMORY[0x1DA7405F0](v134, -1, -1);

      v215(v110, v44);
    }

    else
    {

      v135 = v224;
      v215(v110, v224);
      v78 = v123;
      v77 = v122;
      v44 = v135;
    }

    v136 = (v208 - 1) & v208;

    v137 = sub_1D9C7E56C();

    if (v137 <= 8)
    {
      v83 = v136;

      v138 = v222;
      if (*(v222 + 16))
      {
        sub_1D99ED894(0x63617073656D616ELL, 0xE900000000000065);
        if (v139)
        {

          v140 = sub_1D9C7E56C();

          if (v140 <= 3)
          {
            if (*(v138 + 16))
            {
              v141 = sub_1D99ED894(0x6D614E6C65646F6DLL, 0xE900000000000065);
              if (v142)
              {
                v178 = (*(v138 + 56) + 16 * v141);
                v179 = *v178;
                v180 = v178[1];

                v181 = v209;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v226[0] = v181;
                v183 = v180;
                v77 = v219;
                sub_1D9C115E8(v179, v183, v140, v137, isUniquelyReferenced_nonNull_native);
                v85 = v226[0];
                v45 = v205;
                v80 = v204;
                v84 = v203;
                goto LABEL_24;
              }
            }
          }
        }
      }

      if (!v211)
      {
        goto LABEL_108;
      }

      v143 = [objc_opt_self() mainBundle];
      v144 = [v143 bundleIdentifier];

      if (v144)
      {
        v145 = sub_1D9C7DC7C();
        v147 = v146;

        if (v145 == 0xD00000000000002BLL && v206 == v147)
        {

LABEL_101:
          v163 = &off_1ECB51BA8;
          if (qword_1ECB50988 != -1)
          {
            swift_once();
            v163 = &off_1ECB51BA8;
          }

LABEL_105:
          v164 = *(*v163 + 32);

          v165 = sub_1D9C7DC4C();
          LODWORD(v164) = [v164 BOOLForKey_];

          if (v164)
          {
            v166 = qword_1EDD2C990;
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
              v166 = qword_1EDD2C990;
            }

LABEL_110:
            v167 = __swift_project_value_buffer(v44, v166);
            v207(v77, v167, v44);

            v168 = sub_1D9C7D8BC();
            v169 = sub_1D9C7E0AC();

            if (os_log_type_enabled(v168, v169))
            {
              v170 = swift_slowAlloc();
              v171 = swift_slowAlloc();
              v226[0] = v171;
              *v170 = v201;
              v172 = sub_1D9C7DB5C();
              v174 = v173;

              v175 = v172;
              v77 = v219;
              v176 = sub_1D9A0E224(v175, v174, v226);
              v78 = v218;

              *(v170 + 4) = v176;
              _os_log_impl(&dword_1D9962000, v168, v169, "Malformed trial identifiers: %s", v170, 0xCu);
              v177 = __swift_destroy_boxed_opaque_existential_0Tm(v171);
              MEMORY[0x1DA7405F0](v171, -1, -1, v177);
              MEMORY[0x1DA7405F0](v170, -1, -1);
            }

            else
            {
            }

            v91 = v77;
            goto LABEL_27;
          }

LABEL_108:
          v166 = qword_1EDD354D8;
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
            v166 = qword_1EDD354D8;
          }

          goto LABEL_110;
        }

        v162 = sub_1D9C7E7DC();

        if (v162)
        {
          goto LABEL_101;
        }
      }

      v163 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v163 = &qword_1EDD355A8;
      }

      goto LABEL_105;
    }

    v83 = v136;
    v208 = v95;

    if (!v211)
    {
LABEL_96:
      v157 = qword_1EDD354D8;
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
        v157 = qword_1EDD354D8;
      }

      goto LABEL_98;
    }

    v148 = [objc_opt_self() mainBundle];
    v149 = [v148 bundleIdentifier];

    if (v149)
    {
      v150 = sub_1D9C7DC7C();
      v152 = v151;

      if (v150 == 0xD00000000000002BLL && v206 == v152)
      {

LABEL_89:
        v154 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v154 = &off_1ECB51BA8;
        }

        goto LABEL_93;
      }

      v153 = sub_1D9C7E7DC();

      if (v153)
      {
        goto LABEL_89;
      }
    }

    v154 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v154 = &qword_1EDD355A8;
    }

LABEL_93:
    v155 = *(*v154 + 32);

    v156 = sub_1D9C7DC4C();
    LODWORD(v155) = [v155 BOOLForKey_];

    if (!v155)
    {
      goto LABEL_96;
    }

    v157 = qword_1EDD2C990;
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
      v157 = qword_1EDD2C990;
    }

LABEL_98:
    v158 = __swift_project_value_buffer(v44, v157);
    v207(v78, v158, v44);
    v159 = v210;

    v160 = sub_1D9C7D8BC();
    v161 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v160, v161))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v226[0] = v88;
      *v87 = v201;
      v89 = sub_1D9A0E224(v208, v159, v226);

      *(v87 + 4) = v89;
      v77 = v219;
      _os_log_impl(&dword_1D9962000, v160, v161, "Unknown role: %s", v87, 0xCu);
      v90 = __swift_destroy_boxed_opaque_existential_0Tm(v88);
      MEMORY[0x1DA7405F0](v88, -1, -1, v90);
      MEMORY[0x1DA7405F0](v87, -1, -1);
    }

    else
    {
    }

    v91 = v78;
LABEL_27:
    v215(v91, v44);
    v86 = v79;
    v45 = v205;
    v80 = v204;
    v84 = v203;
  }

  while (1)
  {
    v79 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      __break(1u);
      return;
    }

    if (v79 >= v84)
    {
      break;
    }

    v83 = *(v80 + 8 * v79);
    ++v86;
    if (v83)
    {
      goto LABEL_33;
    }
  }

  v184 = v216;
  static Logger.argos.getter(v216);
  v185 = v217;
  sub_1D9A3E0E0(v217);
  v186 = v215;
  v215(v184, v44);

  v187 = sub_1D9C7D8BC();
  v188 = sub_1D9C7E09C();

  if (os_log_type_enabled(v187, v188))
  {
    v189 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v226[0] = v190;
    *v189 = v202;
    sub_1D9C7B80C();
    sub_1D9A3B0BC();
    v191 = sub_1D9C7DB5C();
    v193 = v192;

    v194 = sub_1D9A0E224(v191, v193, v226);

    *(v189 + 4) = v194;
    *(v189 + 12) = 2080;
    v195 = sub_1D9C7DB5C();
    v197 = v196;

    v198 = sub_1D9A0E224(v195, v197, v226);

    *(v189 + 14) = v198;
    _os_log_impl(&dword_1D9962000, v187, v188, "MLModelsMetaBundle.init(): %s %s", v189, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v190, -1, -1);
    MEMORY[0x1DA7405F0](v189, -1, -1);

    v186(v217, v224);
  }

  else
  {

    v186(v185, v44);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v227);
}

void sub_1D9A3AD88(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F48, &qword_1D9C8AF98);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(a1 + 56);
    v15 = *(*(a1 + 48) + v13);
    v16 = sub_1D9C7B80C();
    v17 = *(v16 - 8);
    v18 = v14 + *(v17 + 72) * v13;
    v19 = *(v3 + 48);
    (*(v17 + 16))(&v5[v19], v18, v16);
    *v5 = v15;
    sub_1D9A92BC4(v15, &v5[v19], v21);
    sub_1D9A3B054(v5);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1D9A3AF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v10 << 6);
      v13 = *(a1 + 56) + 24 * v12;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(*(a1 + 48) + v12);
      v17 = *(v13 + 16);

      v19 = MEMORY[0x1DA73F560](v18);
      sub_1D9A93530(v16, v14, v15, v17, a2, a3);
      objc_autoreleasePoolPop(v19);

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1D9A3B054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F48, &qword_1D9C8AF98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9A3B0BC()
{
  result = qword_1ECB51F58;
  if (!qword_1ECB51F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51F58);
  }

  return result;
}

void sub_1D9A3B158(uint64_t a1)
{
  sub_1D9A3B1F0(319);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9A3B1F0(uint64_t a1)
{
  if (!qword_1EDD2C618)
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(255);
    v1 = sub_1D9C7DBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD2C618);
    }
  }
}

void sub_1D9A3B2A0(uint64_t a1)
{
  sub_1D9A003F4();
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D9A3B324@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1D9A3B34C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1D9A3B368(uint64_t a1, uint64_t a2)
{
  sub_1D9C7E8DC();
  sub_1D9C7DBDC();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9A3B3D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A3D018();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D9A3B420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D9C7E8DC();
  sub_1D9C7DBDC();
  return sub_1D9C7E93C();
}

uint64_t sub_1D9A3B488()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD419D0);
  __swift_project_value_buffer(v0, qword_1EDD419D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C86430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "finger_print_model_name";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parse_flow_domin_model_mapper";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "parse_camera_flow_domin_model_mapper";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "search_flow_domin_model_mapper";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "search_victoria_domin_model_mapper";
  *(v15 + 8) = 34;
  *(v15 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A3B71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1D9C7D5CC();
      }

      else if (result == 2)
      {
        sub_1D9A3B820(a1, v5, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1D9A3B918(a1, v5, a2, a3);
          break;
        case 4:
          sub_1D9A3BA10(a1, v5, a2, a3);
          break;
        case 5:
          sub_1D9A3BB08(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1D9A3B820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9C7D39C();
  type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
  sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B0E0);
  sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B018);
  return sub_1D9C7D4AC();
}

uint64_t sub_1D9A3B918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9C7D39C();
  type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
  sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B0E0);
  sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B018);
  return sub_1D9C7D4AC();
}

uint64_t sub_1D9A3BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9C7D39C();
  type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
  sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B0E0);
  sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B018);
  return sub_1D9C7D4AC();
}

uint64_t sub_1D9A3BB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9C7D39C();
  type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
  sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B0E0);
  sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B018);
  return sub_1D9C7D4AC();
}

uint64_t sub_1D9A3BC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1D9C7D7CC(), !v4))
  {
    v9 = v4;
    if (*(v3[2] + 16))
    {
      sub_1D9C7D39C();
      type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
      sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B0E0);
      sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B018);
      result = sub_1D9C7D6DC();
      if (v4)
      {
        return result;
      }

      v9 = 0;
    }

    if (*(v3[4] + 16))
    {
      sub_1D9C7D39C();
      type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
      sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B0E0);
      sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B018);
      result = sub_1D9C7D6DC();
      if (v9)
      {
        return result;
      }

      v9 = 0;
    }

    if (*(v3[5] + 16))
    {
      sub_1D9C7D39C();
      type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
      sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B0E0);
      sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B018);
      v8 = v9;
      result = sub_1D9C7D6DC();
      if (v9)
      {
        return result;
      }
    }

    else
    {
      v8 = v9;
    }

    if (!*(v3[3] + 16) || (sub_1D9C7D39C(), type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0), sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B0E0), sub_1D9A3CB8C(&qword_1EDD2E560, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B018), result = sub_1D9C7D6DC(), !v8))
    {
      type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9A3BFC8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  a1[2] = sub_1D9A43FD0(MEMORY[0x1E69E7CC0]);
  a1[3] = sub_1D9A43FD0(v2);
  a1[4] = sub_1D9A43FD0(v2);
  a1[5] = sub_1D9A43FD0(v2);
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9A3C05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D9A3C0D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D9A3C198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A3CB8C(&qword_1ECB51F70, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig, &unk_1D9C8B238);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A3C238(uint64_t a1)
{
  v2 = sub_1D9A3CB8C(&qword_1EDD2E4A8, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig, &unk_1D9C8B270);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A3C2A4(uint64_t a1, uint64_t a2)
{
  sub_1D9A3CB8C(&qword_1EDD2E4A8, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig, &unk_1D9C8B270);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A3C324()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB70F00);
  __swift_project_value_buffer(v0, qword_1ECB70F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PARSE";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SEARCH";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SEARCH_VICTORIA";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A3C558()
{
  result = MEMORY[0x1DA73DF90](0x4D6E69616D6F442ELL, 0xED0000736C65646FLL);
  qword_1ECB70F18 = 0xD00000000000002FLL;
  unk_1ECB70F20 = 0x80000001D9CA5CE0;
  return result;
}

uint64_t sub_1D9A3C5D0()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD419E8);
  __swift_project_value_buffer(v0, qword_1EDD419E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D9C85660;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "domain_model_names";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1D9C7D81C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1D9C7D82C();
}

uint64_t sub_1D9A3C73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D57C();
    }
  }

  return result;
}

uint64_t sub_1D9A3C7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1D9C7D7AC(), !v4))
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9A3C834()
{
  if (qword_1ECB509B8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECB70F18;

  return v0;
}

uint64_t sub_1D9A3C8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A3CB8C(&qword_1ECB51F78, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B0A8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9A3C96C(uint64_t a1)
{
  v2 = sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B0E0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9A3C9D8(uint64_t a1, uint64_t a2)
{
  sub_1D9A3CB8C(&qword_1EDD2E568, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels, &unk_1D9C8B0E0);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9A3CA54(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1D9A1EF04(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9A3CB8C(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9A3CB8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9A3CD84(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0)
  {
    return 0;
  }

  sub_1D9A00AB0(a1[2], a2[2]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1D9A00AB0(a1[3], a2[3]);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_1D9A00AB0(a1[4], a2[4]);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_1D9A00AB0(a1[5], a2[5]);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(0);
  sub_1D9C7D3CC();
  sub_1D9A3CB8C(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

unint64_t sub_1D9A3CEAC()
{
  result = qword_1ECB51F80;
  if (!qword_1ECB51F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51F80);
  }

  return result;
}

unint64_t sub_1D9A3CF04()
{
  result = qword_1ECB51F88;
  if (!qword_1ECB51F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51F90, qword_1D9C8B398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51F88);
  }

  return result;
}

unint64_t sub_1D9A3CF6C()
{
  result = qword_1ECB51F98;
  if (!qword_1ECB51F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51F98);
  }

  return result;
}

unint64_t sub_1D9A3CFC4()
{
  result = qword_1ECB51FA0;
  if (!qword_1ECB51FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FA0);
  }

  return result;
}

unint64_t sub_1D9A3D018()
{
  result = qword_1ECB51FA8;
  if (!qword_1ECB51FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FA8);
  }

  return result;
}

void sub_1D9A3D06C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  sub_1D99A85E0(a1, &v13 - v4);
  Context = type metadata accessor for VisualQueryContext(0);
  if ((*(*(Context - 8) + 48))(v5, 1, Context) == 1)
  {
    sub_1D99A6AE0(v5, &unk_1ECB51B10, &qword_1D9C86550);
    sub_1D9C7DC7C();
LABEL_10:

    return;
  }

  v8 = *(v5 + 5);
  v7 = *(v5 + 6);

  sub_1D9A3DE74(v5, type metadata accessor for VisualQueryContext);
  v9 = sub_1D9C7DC7C();
  if (!v7)
  {
    goto LABEL_10;
  }

  if (v9 == v8 && v7 == v10)
  {

    goto LABEL_12;
  }

  v12 = sub_1D9C7E7DC();

  if (v12)
  {
LABEL_12:
    *(v1 + 8) = 0;
  }
}

uint64_t sub_1D9A3D1F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = sub_1D9C7DCDC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7D8DC();
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v67 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  v23 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  MEMORY[0x1EEE9AC00](v23);
  v70 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v67 - v26;
  *v27 = sub_1D9A453D0(MEMORY[0x1E69E7CC0]);
  *(v27 + 4) = 0;
  sub_1D9C7D3BC();
  v28 = *(v23 + 32);
  v29 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  (*(*(v29 - 8) + 56))(&v27[v28], 1, 1, v29);
  v30 = *(v23 + 36);
  v31 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  (*(*(v31 - 8) + 56))(&v27[v30], 1, 1, v31);
  v32 = sub_1D9A75D94();
  v69 = v9;
  v73 = v12;
  if (v32)
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v33 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v33 = &qword_1EDD355A8;
  }

  v34 = *(*v33 + 32);

  v35 = sub_1D9C7DC4C();
  LODWORD(v34) = [v34 BOOLForKey_];

  if (v34)
  {
    v72 = a1;
    static Logger.argos.getter(v22);
    sub_1D9A3E0E0(v19);
    v36 = *(v75 + 8);
    v36(v22, v76);
    v37 = sub_1D9C7D8BC();
    v38 = sub_1D9C7E09C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D9962000, v37, v38, "OCR is disabled due to InternalSettings config", v39, 2u);
      MEMORY[0x1DA7405F0](v39, -1, -1);
    }

    v36(v19, v76);
    v27[8] = 0;
    a1 = v72;
  }

  v40 = [objc_opt_self() defaultManager];
  v41 = sub_1D9C7DC4C();
  v42 = [v40 contentsAtPath_];

  if (v42)
  {
    v43 = sub_1D9C7B87C();
    v45 = v44;

    v46 = sub_1D9B88EB8(v43, v45);
    v55 = v54;
    v72 = a1;
    v56 = v46;
    sub_1D99A5748(v43, v45);

    sub_1D9C7DCBC();
    v73 = v56;
    sub_1D9C7DC9C();
    sub_1D9A3DD50();
    memset(v77, 0, sizeof(v77));
    v78 = 0;
    v57 = v70;
    sub_1D9C7D69C();
    sub_1D9A3DE74(v27, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D9A3DE0C(v57, v27, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v58 = sub_1D9A75D94();
    if (v58)
    {
      if (qword_1ECB50988 != -1)
      {
        swift_once();
      }

      v59 = &off_1ECB51BA8;
    }

    else
    {
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
      }

      v59 = &qword_1EDD355A8;
    }

    v60 = *(*v59 + 32);

    v61 = sub_1D9C7DC4C();
    LODWORD(v60) = [v60 BOOLForKey_];

    if (v60)
    {
      v62 = v67;
      static Logger.argos.getter(v67);
      sub_1D9A3E0E0(v68);
      v63 = *(v75 + 8);
      v63(v62, v76);
      v64 = sub_1D9C7D8BC();
      v65 = sub_1D9C7E09C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1D9962000, v64, v65, "OCR is disabled due to InternalSettings config", v66, 2u);
        MEMORY[0x1DA7405F0](v66, -1, -1);
      }

      sub_1D99A5748(v73, v55);

      v63(v68, v76);
      v27[8] = 0;
    }

    else
    {
      sub_1D99A5748(v73, v55);
    }
  }

  else
  {

    v47 = v73;
    static Logger.argos.getter(v73);

    v48 = sub_1D9C7D8BC();
    v49 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v77[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1D9A0E224(a1, a2, v77);
      _os_log_impl(&dword_1D9962000, v48, v49, "Failed to load SearchConfig at path %s", v50, 0xCu);
      v52 = __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x1DA7405F0](v51, -1, -1, v52);
      MEMORY[0x1DA7405F0](v50, -1, -1);
    }

    (*(v75 + 8))(v47, v76);
  }

  return sub_1D9A3DE0C(v27, v74, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
}

uint64_t sub_1D9A3DBF4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = *v2;
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = sub_1D99ED894(a1, a2);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  sub_1D9A3DDA8(*(v12 + 56) + *(v6 + 72) * v13, v8);
  sub_1D9A3DE0C(v8, v11, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
  v15 = v11[2];
  sub_1D9A3DE74(v11, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
  return v15;
}

unint64_t sub_1D9A3DD50()
{
  result = qword_1EDD30820;
  if (!qword_1EDD30820)
  {
    type metadata accessor for Argos_Protos_Queryflow_SearchConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD30820);
  }

  return result;
}

uint64_t sub_1D9A3DDA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A3DE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A3DE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static Logger.argos.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  if (byte_1EDD354C0 != 1)
  {
    goto LABEL_15;
  }

  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v3 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v3 = &qword_1EDD355A8;
  }

  v4 = *(*v3 + 32);

  v5 = sub_1D9C7DC4C();
  LODWORD(v4) = [v4 BOOLForKey_];

  if (v4)
  {
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDD2C990;
  }

  else
  {
LABEL_15:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDD354D8;
  }

  v7 = sub_1D9C7D8DC();
  v8 = __swift_project_value_buffer(v7, v6);
  v9 = *(*(v7 - 8) + 16);

  return v9(a2, v8, v7);
}

uint64_t sub_1D9A3E0E0@<X0>(uint64_t a2@<X8>)
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  if (byte_1EDD354C0 != 1)
  {
    goto LABEL_13;
  }

  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v4 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v4 = &qword_1EDD355A8;
  }

  v5 = *(*v4 + 32);

  v6 = sub_1D9C7DC4C();
  LODWORD(v5) = [v5 BOOLForKey_];

  if (v5)
  {
    v7 = sub_1D9C7D8DC();
    v8 = *(*(v7 - 8) + 16);
    v9 = v7;
    v10 = a2;
    v11 = v2;
  }

  else
  {
LABEL_13:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D9C7D8DC();
    v11 = __swift_project_value_buffer(v12, qword_1EDD354D8);
    v8 = *(*(v12 - 8) + 16);
    v10 = a2;
    v9 = v12;
  }

  return v8(v10, v11, v9);
}

uint64_t sub_1D9A3E2EC()
{
  v0 = sub_1D9C7D8DC();
  __swift_allocate_value_buffer(v0, qword_1EDD2C990);
  __swift_project_value_buffer(v0, qword_1EDD2C990);
  return sub_1D9C7D8CC();
}

uint64_t sub_1D9A3E36C()
{
  v0 = sub_1D9C7D8DC();
  __swift_allocate_value_buffer(v0, qword_1EDD354D8);
  __swift_project_value_buffer(v0, qword_1EDD354D8);
  sub_1D9A3E8F8();
  sub_1D9C7E24C();
  return sub_1D9C7D8EC();
}

uint64_t sub_1D9A3E3D4()
{
  result = os_variant_has_internal_ui();
  byte_1EDD354C0 = result;
  return result;
}

uint64_t sub_1D9A3E3FC()
{
  sub_1D9A3E8F8();
  result = sub_1D9C7E25C();
  qword_1EDD2A988 = result;
  return result;
}

id static VILogger.log.getter()
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  if (byte_1EDD354C0 == 1)
  {
    if (qword_1EDD2A980 != -1)
    {
      swift_once();
    }

    v0 = qword_1EDD2A988;

    return v0;
  }

  else
  {
    sub_1D9A3E8F8();
    return sub_1D9C7E24C();
  }
}

uint64_t static VILogger.shouldLogInternalMessage.getter()
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  return byte_1EDD354C0;
}

id VILogger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VILogger.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VILogger();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VILogger.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VILogger();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s12VisualLookUp8VILoggerC31shouldLogInternalVerboseMessageSbvgZ_0(uint64_t a1)
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  if (byte_1EDD354C0 != 1)
  {
    return 0;
  }

  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v1 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDD355A8;
  }

  v3 = *(*v1 + 32);

  v4 = sub_1D9C7DC4C();
  v5 = [v3 BOOLForKey_];

  return v5;
}

unint64_t sub_1D9A3E8F8()
{
  result = qword_1EDD35480;
  if (!qword_1EDD35480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD35480);
  }

  return result;
}

id _s12VisualLookUp8VILoggerC10verboseLogSo9OS_os_logCvgZ_0(uint64_t a1)
{
  if (qword_1EDD354B8 != -1)
  {
    swift_once();
  }

  if (byte_1EDD354C0 != 1)
  {
    goto LABEL_17;
  }

  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v1 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDD355A8;
  }

  v2 = *(*v1 + 32);

  v3 = sub_1D9C7DC4C();
  LODWORD(v2) = [v2 BOOLForKey_];

  if (v2)
  {
    if (qword_1EDD2A980 != -1)
    {
      swift_once();
    }

    v4 = qword_1EDD2A988;

    return v4;
  }

  else
  {
LABEL_17:
    sub_1D9A3E8F8();
    return sub_1D9C7E24C();
  }
}

VisualLookUp::MLEngineType_optional __swiftcall MLEngineType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9C7E56C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MLEngineType.rawValue.getter()
{
  v1 = 0x6F73736572707365;
  if (*v0 != 1)
  {
    v1 = 13669;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69736976;
  }
}

uint64_t sub_1D9A3EBC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6F73736572707365;
  if (v2 != 1)
  {
    v4 = 13669;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F69736976;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6F73736572707365;
  if (*a2 != 1)
  {
    v8 = 13669;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F69736976;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9C7E7DC();
  }

  return v11 & 1;
}

unint64_t sub_1D9A3ECB4()
{
  result = qword_1ECB51FB0;
  if (!qword_1ECB51FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FB0);
  }

  return result;
}

uint64_t sub_1D9A3ED08()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

double sub_1D9A3ED9C(uint64_t a1)
{
  sub_1D9C7DD6C();

  return result;
}

uint64_t sub_1D9A3EE1C()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

void sub_1D9A3EEB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6F73736572707365;
  if (v2 != 1)
  {
    v5 = 13669;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F69736976;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D9A3EF18()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    VTPixelTransferSessionInvalidate(v1);
  }

  return swift_deallocClassInstance();
}

void sub_1D9A3EF90(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, __CVBuffer *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, uint64_t a11)
{
  sub_1D99A83E8(a1, v49);
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  v21 = sub_1D9AFD4B8(v49, a2);

  v22 = *(a3 + 24);
  if (!v22)
  {
    sub_1D99A182C();
    swift_allocError();
    *v27 = 0xD000000000000018;
    *(v27 + 8) = 0x80000001D9CA5F40;
    *(v27 + 16) = 6;
    swift_willThrow();
    goto LABEL_5;
  }

  v49[13] = v21;
  v24 = a4[3];
  v23 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v24);
  v25 = *(v23 + 32);
  v26 = v22;
  v25(v46, v24, v23);
  if (v11)
  {

    return;
  }

  v28 = v47;
  v29 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v30 = (*(v29 + 24))(v28, v29);
  Width = CVPixelBufferGetWidth(a5);
  Height = CVPixelBufferGetHeight(a5);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a5);
  v45[0] = a6;
  v45[1] = a7;
  v45[2] = a8;
  v45[3] = a9;
  v34 = sub_1D9B1CEB8(v30, PixelFormatType, v45, a11, Width, Height);

  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  v35 = CVPixelBufferGetWidth(v34);
  v36 = CVPixelBufferGetHeight(v34);
  v37 = v35;
  v38 = CVPixelBufferGetWidth(a5);
  v39 = CVPixelBufferGetHeight(a5);
  if (v37 == v38 && v36 == v39)
  {
    v44 = VTPixelTransferSessionTransferImage(v26, v34, a5);
    if (v44 != sub_1D9C7D92C())
    {
      v41 = 0x80000001D9CA5F80;
      sub_1D99A182C();
      swift_allocError();
      v43 = 0xD000000000000018;
      goto LABEL_14;
    }

    sub_1D9AFCCA4();
LABEL_5:

    return;
  }

  v41 = 0x80000001D9CA5F60;
  sub_1D99A182C();
  swift_allocError();
  v43 = 0xD00000000000001FLL;
LABEL_14:
  *v42 = v43;
  *(v42 + 8) = v41;
  *(v42 + 16) = 6;
  swift_willThrow();
}

double sub_1D9A3F368()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53580, &qword_1D9C8B5B0);
  v0 = swift_allocObject();
  *(v0 + 40) = 0;
  result = 0.0;
  *(v0 + 16) = xmmword_1D9C8B510;
  *(v0 + 32) = 0;
  qword_1EDD2AED0 = v0;
  return result;
}

void sub_1D9A3F3B8(uint64_t *a1)
{
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;
  v10 = a1[2];
  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  a1[2] = v11;
  v12 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
LABEL_10:
    __break(1u);
    return;
  }

  *a1 = v12;
  v13 = a1[1];
  if (v13 < v12)
  {
    a1[1] = v12;
    v13 = v12;
  }

  static Logger.argos.getter(v26 - v8);
  sub_1D9A3E0E0(v6);
  v27 = *(v4 + 8);
  v27(v9, v3);
  v14 = sub_1D9C7D8BC();
  v15 = sub_1D9C7E09C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26[1] = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26[0] = v3;
    v19 = v18;
    v31 = v18;
    *v17 = 136315138;
    v28 = v12;
    v29 = v13;
    v30 = v11;
    v20 = sub_1D9C7DD0C();
    v22 = sub_1D9A0E224(v20, v21, &v31);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1D9962000, v14, v15, "ProcessInputImageEspresso.init(): %s", v17, 0xCu);
    v23 = __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x1DA7405F0](v19, -1, -1, v23);
    MEMORY[0x1DA7405F0](v17, -1, -1);

    v24 = v6;
    v25 = v26[0];
  }

  else
  {

    v24 = v6;
    v25 = v3;
  }

  v27(v24, v25);
}

void sub_1D9A3F618(uint64_t *a1)
{
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;
  v10 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v10;
    v11 = a1[1];
    if (v11 < v10)
    {
      a1[1] = v10;
      v11 = v10;
    }

    v27 = a1[2];
    static Logger.argos.getter(v26 - v8);
    sub_1D9A3E0E0(v6);
    v12 = *(v4 + 8);
    v12(v9, v3);
    v13 = sub_1D9C7D8BC();
    v14 = v3;
    v15 = sub_1D9C7E09C();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      v26[0] = v14;
      v17 = v16;
      v18 = swift_slowAlloc();
      v26[1] = v1;
      v19 = v18;
      v31 = v18;
      *v17 = 136315138;
      v28 = v10;
      v29 = v11;
      v30 = v27;
      v20 = sub_1D9C7DD0C();
      v22 = sub_1D9A0E224(v20, v21, &v31);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1D9962000, v13, v15, "ProcessInputImageEspresso.deinit(): %s", v17, 0xCu);
      v23 = __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1DA7405F0](v19, -1, -1, v23);
      MEMORY[0x1DA7405F0](v17, -1, -1);

      v24 = v6;
      v25 = v26[0];
    }

    else
    {

      v24 = v6;
      v25 = v14;
    }

    v12(v24, v25);
  }
}

uint64_t sub_1D9A3F86C()
{
  if (qword_1EDD2AEC8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD2AED0;
  os_unfair_lock_lock((qword_1EDD2AED0 + 40));
  sub_1D9A3F618((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));

  return swift_deallocClassInstance();
}

void sub_1D9A3F934(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, double *a6, uint64_t a7)
{
  v14 = *a6;
  v15 = a6[1];
  v16 = a6[2];
  v17 = a6[3];
  sub_1D99A83E8(a1, v36);
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  sub_1D9AFD4B8(v36, a7);

  sub_1D9C7D92C();
  v18 = *(v7 + 16);
  v19 = [v18 setScalingMode_];
  if (v19 != sub_1D9C7D92C())
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1D9C7E40C();
    MEMORY[0x1DA73DF90](0xD000000000000032, 0x80000001D9CA5FA0);
    v37 = v19;
LABEL_7:
    v26 = sub_1D9C7E7AC();
    MEMORY[0x1DA73DF90](v26);

    v27 = v32;
    v28 = v33;
    sub_1D99A182C();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = 6;
    swift_willThrow();
    goto LABEL_8;
  }

  v20 = [v18 setFillColorBGRA_];
  if (v20 != sub_1D9C7D92C())
  {
    sub_1D9C7E40C();

    v32 = 0xD000000000000030;
    v33 = 0x80000001D9CA5FE0;
    v37 = v20;
    goto LABEL_7;
  }

  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  (*(v22 + 32))(&v32, v21, v22);
  if (!v8)
  {
    v23 = v34;
    v24 = v35;
    __swift_project_boxed_opaque_existential_1(&v32, v34);
    v25 = (*(v24 + 24))(v23, v24);
    v30 = v25;
    v31 = [v18 cropScaleImageFromSource:v25 destination:a3 normalizedBoundingBox:1 bottomLeftBoxOrigin:{v14, v15, v16, v17}];

    __swift_destroy_boxed_opaque_existential_0Tm(&v32);
    if (v31 != sub_1D9C7D92C())
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1D9C7E40C();
      MEMORY[0x1DA73DF90](0xD000000000000032, 0x80000001D9CA6020);
      v37 = v31;
      goto LABEL_7;
    }
  }

LABEL_8:
  sub_1D9AFCCA4();
}

unint64_t sub_1D9A3FCB0(double a1)
{
  v2 = v1;
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  Width = CVPixelBufferGetWidth(v2);
  result = CVPixelBufferGetHeight(v2);
  if (Width < 1 || result < 1)
  {
    static Logger.argos.getter(v7);
    v14 = sub_1D9C7D8BC();
    v18 = sub_1D9C7E09C();
    if (!os_log_type_enabled(v14, v18))
    {
      v17 = 1;
      v10 = v7;
      goto LABEL_17;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D9962000, v14, v18, "Image width and/or height was non-positive.", v16, 2u);
    v17 = 1;
    v10 = v7;
LABEL_15:
    MEMORY[0x1DA7405F0](v16, -1, -1);
LABEL_17:

    (*(v5 + 8))(v10, v4);
    sub_1D9A3FF6C();
    swift_allocError();
    *v19 = v17;
    return swift_willThrow();
  }

  if (result >= Width)
  {
    v13 = Width;
  }

  else
  {
    v13 = result;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (v13 <= a1)
  {
    return v2;
  }

  result = VIRescaleCVPixelBufferUsingVTSession(v2, a1);
  if (!result)
  {
    static Logger.argos.getter(v10);
    v14 = sub_1D9C7D8BC();
    v15 = sub_1D9C7E09C();
    if (!os_log_type_enabled(v14, v15))
    {
      v17 = 0;
      goto LABEL_17;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D9962000, v14, v15, "Failed to rescale CVPixelBuffer", v16, 2u);
    v17 = 0;
    goto LABEL_15;
  }

  return result;
}

unint64_t sub_1D9A3FF6C()
{
  result = qword_1ECB51FB8;
  if (!qword_1ECB51FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FB8);
  }

  return result;
}

unint64_t sub_1D9A3FFD4()
{
  result = qword_1ECB51FC0;
  if (!qword_1ECB51FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FC0);
  }

  return result;
}

uint64_t type metadata accessor for OverlapRegionDomainAssignmentRule(uint64_t a1)
{
  result = qword_1EDD31230;
  if (!qword_1EDD31230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9A4009C(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1D9A40124@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v55 = type metadata accessor for OverlapRegionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v21 = a1[7];
  v65 = a1[6];
  v66 = v21;
  v67[0] = a1[8];
  *(v67 + 13) = *(a1 + 141);
  v22 = a1[3];
  v61 = a1[2];
  v62 = v22;
  v23 = a1[5];
  v63 = a1[4];
  v64 = v23;
  v24 = a1[1];
  v59 = *a1;
  v60 = v24;
  if (*(a2 + 104))
  {
    goto LABEL_2;
  }

  v30 = &v53 - v19;
  v54 = v20;
  v56 = v18;
  sub_1D9A405A4(a2, a3);
  if ((v31 & 1) == 0)
  {
    static Logger.argos.getter(v16);
    sub_1D9A3E0E0(v13);
    v41 = *(v54 + 8);
    v41(v16, v56);
    v42 = sub_1D9C7D8BC();
    v43 = sub_1D9C7E09C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D9962000, v42, v43, "No satisfied overlap regions.", v44, 2u);
      MEMORY[0x1DA7405F0](v44, -1, -1);
    }

    v41(v13, v56);
    v45 = v66;
    a4[6] = v65;
    a4[7] = v45;
    a4[8] = v67[0];
    *(a4 + 141) = *(v67 + 13);
    v46 = v62;
    a4[2] = v61;
    a4[3] = v46;
    v47 = v64;
    a4[4] = v63;
    a4[5] = v47;
    v28 = v59;
    v29 = v60;
    goto LABEL_10;
  }

  if (*(v4 + 16) != 1)
  {
LABEL_2:
    v25 = a1[7];
    a4[6] = a1[6];
    a4[7] = v25;
    a4[8] = a1[8];
    *(a4 + 141) = *(a1 + 141);
    v26 = a1[3];
    a4[2] = a1[2];
    a4[3] = v26;
    v27 = a1[5];
    a4[4] = a1[4];
    a4[5] = v27;
    v28 = *a1;
    v29 = a1[1];
LABEL_10:
    *a4 = v28;
    a4[1] = v29;
    sub_1D99D39B8(&v59, v57);
    return result;
  }

  static Logger.argos.getter(v30);
  sub_1D9A40DCC(v4, v10, type metadata accessor for OverlapRegionDomainAssignmentRule);
  v32 = sub_1D9C7D8BC();
  v33 = sub_1D9C7E09C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v57[0] = v35;
    *v34 = 136315138;
    v36 = sub_1D9A15C94(v10[*(v55 + 20)]);
    v38 = v37;
    sub_1D9A40E34(v10, type metadata accessor for OverlapRegionDomainAssignmentRule);
    v39 = sub_1D9A0E224(v36, v38, v57);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_1D9962000, v32, v33, "Reject %s as it has an overlap region.", v34, 0xCu);
    v40 = __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x1DA7405F0](v35, -1, -1, v40);
    MEMORY[0x1DA7405F0](v34, -1, -1);
  }

  else
  {

    sub_1D9A40E34(v10, type metadata accessor for OverlapRegionDomainAssignmentRule);
  }

  (*(v54 + 8))(v30, v56);
  sub_1D99D3B54(v57);
  v49 = v57[7];
  a4[6] = v57[6];
  a4[7] = v49;
  a4[8] = v58[0];
  *(a4 + 141) = *(v58 + 13);
  v50 = v57[3];
  a4[2] = v57[2];
  a4[3] = v50;
  v51 = v57[5];
  a4[4] = v57[4];
  a4[5] = v51;
  result = *v57;
  v52 = v57[1];
  *a4 = v57[0];
  a4[1] = v52;
  return result;
}

void sub_1D9A405A4(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for OverlapRegionDomainAssignmentRule(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v85 - v9;
  v10 = sub_1D9C7D8DC();
  v91 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v85 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v85 - v17;
  v19 = _s14DetectedResultVMa(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 24);
  v24 = *v2;
  v97 = *(v2 + *(v6 + 36));

  v25 = sub_1D9A601D8(v24, &v97, v23);

  v26 = *(v25 + 16);
  if (v26)
  {
    v85 = v10;
    v27 = 0;
    v96 = *(v2 + 8);
    v28 = v25 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    while (v27 < *(v25 + 16))
    {
      sub_1D9A40DCC(v28 + *(v20 + 72) * v27, v22, _s14DetectedResultVMa);
      if (v96 > 0.0)
      {
        v29 = &v22[*(v19 + 24)];
        v30 = *v29;
        v31 = v29[1];
        v32 = v29[2];
        v33 = v29[3];
        v34 = a1[1];
        v95 = *a1;
        v35 = a1[2];
        v36 = a1[3];
        v98.origin.x = v30;
        v98.origin.y = v31;
        v98.size.width = v32;
        v98.size.height = v33;
        Width = CGRectGetWidth(v98);
        v93 = v30;
        v99.origin.x = v30;
        v38 = v31;
        v39 = v95;
        v99.origin.y = v38;
        v99.size.width = v32;
        v99.size.height = v33;
        v40 = Width * CGRectGetHeight(v99);
        v100.origin.x = v39;
        v100.origin.y = v34;
        v100.size.width = v35;
        v100.size.height = v36;
        v94 = CGRectGetWidth(v100);
        v101.origin.x = v39;
        v101.origin.y = v34;
        v101.size.width = v35;
        v101.size.height = v36;
        Height = CGRectGetHeight(v101);
        v92 = v40;
        if (v40 > 0.0)
        {
          v94 = v94 * Height;
          if (v94 > 0.0)
          {
            v102.origin.x = v93;
            v102.origin.y = v38;
            v102.size.width = v32;
            v102.size.height = v33;
            v114.origin.x = v39;
            v114.origin.y = v34;
            v114.size.width = v35;
            v114.size.height = v36;
            v103 = CGRectIntersection(v102, v114);
            x = v103.origin.x;
            y = v103.origin.y;
            v44 = v103.size.width;
            v45 = v103.size.height;
            if (!CGRectIsNull(v103))
            {
              v104.origin.x = x;
              v104.origin.y = y;
              v104.size.width = v44;
              v104.size.height = v45;
              v46 = CGRectGetWidth(v104);
              v105.origin.x = x;
              v105.origin.y = y;
              v105.size.width = v44;
              v105.size.height = v45;
              v47 = CGRectGetHeight(v105);
              *&v47 = v46 * v47 / (v92 + v94 - v46 * v47);
              if (v96 < *&v47)
              {

                static Logger.argos.getter(v18);
                v79 = v89;
                sub_1D9A3E0E0(v89);
                v71 = *(v91 + 8);
                v72 = v85;
                v71(v18, v85);
                v80 = v90;
                sub_1D9A40DCC(v2, v90, type metadata accessor for OverlapRegionDomainAssignmentRule);
                v81 = sub_1D9C7D8BC();
                v82 = sub_1D9C7E09C();
                if (os_log_type_enabled(v81, v82))
                {
                  v83 = swift_slowAlloc();
                  *v83 = 134217984;
                  v84 = *(v80 + 8);
                  sub_1D9A40E34(v80, type metadata accessor for OverlapRegionDomainAssignmentRule);
                  *(v83 + 4) = v84;
                  _os_log_impl(&dword_1D9962000, v81, v82, "Found satisfied object result with iou threshold %f.", v83, 0xCu);
                  MEMORY[0x1DA7405F0](v83, -1, -1);
                }

                else
                {

                  sub_1D9A40E34(v80, type metadata accessor for OverlapRegionDomainAssignmentRule);
                }

                v78 = v79;
                goto LABEL_25;
              }
            }
          }
        }
      }

      LODWORD(v95) = *(v2 + 12);
      if (*&v95 > 0.0)
      {
        v48 = &v22[*(v19 + 24)];
        v49 = *v48;
        v50 = v48[1];
        v51 = v48[2];
        v52 = v48[3];
        v53 = a1[1];
        v94 = *a1;
        v54 = a1[2];
        v55 = a1[3];
        v106.origin.x = v49;
        v106.origin.y = v50;
        v106.size.width = v51;
        v106.size.height = v52;
        v56 = CGRectGetWidth(v106);
        v92 = v49;
        v107.origin.x = v49;
        v57 = v50;
        v58 = v94;
        v107.origin.y = v57;
        v107.size.width = v51;
        v107.size.height = v52;
        v59 = v56 * CGRectGetHeight(v107);
        v108.origin.x = v58;
        v108.origin.y = v53;
        v108.size.width = v54;
        v108.size.height = v55;
        v93 = CGRectGetWidth(v108);
        v109.origin.x = v58;
        v109.origin.y = v53;
        v109.size.width = v54;
        v109.size.height = v55;
        v60 = CGRectGetHeight(v109);
        if (v59 > 0.0)
        {
          v93 = v93 * v60;
          if (v93 > 0.0)
          {
            v110.origin.x = v92;
            v110.origin.y = v57;
            v110.size.width = v51;
            v110.size.height = v52;
            v115.origin.x = v58;
            v115.origin.y = v53;
            v115.size.width = v54;
            v115.size.height = v55;
            v111 = CGRectIntersection(v110, v115);
            v61 = v111.origin.x;
            v62 = v111.origin.y;
            v63 = v111.size.width;
            v64 = v111.size.height;
            if (!CGRectIsNull(v111))
            {
              v112.origin.x = v61;
              v112.origin.y = v62;
              v112.size.width = v63;
              v112.size.height = v64;
              v65 = CGRectGetWidth(v112);
              v113.origin.x = v61;
              v113.origin.y = v62;
              v113.size.width = v63;
              v113.size.height = v64;
              v66 = v65 * CGRectGetHeight(v113);
              v67 = v93;
              if (v93 >= v59)
              {
                v67 = v59;
              }

              v68 = v66 / v67;
              if (*&v95 < v68)
              {

                v69 = v86;
                static Logger.argos.getter(v86);
                v70 = v88;
                sub_1D9A3E0E0(v88);
                v71 = *(v91 + 8);
                v72 = v85;
                v71(v69, v85);
                v73 = v87;
                sub_1D9A40DCC(v2, v87, type metadata accessor for OverlapRegionDomainAssignmentRule);
                v74 = sub_1D9C7D8BC();
                v75 = sub_1D9C7E09C();
                if (os_log_type_enabled(v74, v75))
                {
                  v76 = swift_slowAlloc();
                  *v76 = 134217984;
                  v77 = *(v73 + 12);
                  sub_1D9A40E34(v73, type metadata accessor for OverlapRegionDomainAssignmentRule);
                  *(v76 + 4) = v77;
                  _os_log_impl(&dword_1D9962000, v74, v75, "Found satisfied object result with ioa threshold %f.", v76, 0xCu);
                  MEMORY[0x1DA7405F0](v76, -1, -1);
                }

                else
                {

                  sub_1D9A40E34(v73, type metadata accessor for OverlapRegionDomainAssignmentRule);
                }

                v78 = v70;
LABEL_25:
                v71(v78, v72);
                sub_1D9A40E34(v22, _s14DetectedResultVMa);
                return;
              }
            }
          }
        }
      }

      ++v27;
      sub_1D9A40E34(v22, _s14DetectedResultVMa);
      if (v26 == v27)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
  }
}

uint64_t sub_1D9A40DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A40E34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D9A40E94(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v82 = a5;
  v83 = a4;
  v84 = a1;
  v9 = type metadata accessor for VisualUnderstanding.ImageRegion(0) - 8;
  MEMORY[0x1EEE9AC00](v9);
  v90 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v80 = a3[1];
  v81 = v12;
  v13 = MEMORY[0x1E69E7CC0];
  v87 = *(a2 + 16);
  if (!v87)
  {
    v63 = MEMORY[0x1E69E7CC0];
    goto LABEL_74;
  }

  v14 = 0;
  v89 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v88 = *(v10 + 72);
  v86 = MEMORY[0x1E69E7CC0];
  v91 = 0x80000001D9CA60A0;
  do
  {
    v92 = v14;
    v15 = v90;
    sub_1D99B1BBC(v89 + v88 * v14, v90);
    v16 = *(v15 + 112);
    v17 = *(v16 + 16);
    v93 = v16;
    v95 = v17;
    if (v17)
    {
      v6 = 0;
      v94 = v16 + 32;
      v18 = v13;
      while (1)
      {
        if (v6 >= *(v16 + 16))
        {
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v108 = v18;
        v19 = v94 + 48 * v6;
        v20 = *(v19 + 32);
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = *(v19 + 40);
          v102 = v13;
          swift_bridgeObjectRetain_n();
          v96 = v22;

          sub_1D99FE4F8(0, v21, 0);
          v23 = v102;
          v97 = v20;
          v24 = (v20 + 48);
          do
          {
            v26 = *(v24 - 2);
            v25 = *(v24 - 1);
            v27 = *v24;
            v102 = v23;
            v28 = *(v23 + 2);
            v5 = *(v23 + 3);

            if (v28 >= v5 >> 1)
            {
              sub_1D99FE4F8((v5 > 1), v28 + 1, 1);
              v23 = v102;
            }

            *(v23 + 2) = v28 + 1;
            v29 = &v23[24 * v28];
            *(v29 + 4) = v26;
            *(v29 + 5) = v25;
            *(v29 + 6) = v27;
            v24 += 3;
            --v21;
          }

          while (v21);

          swift_bridgeObjectRelease_n();
          v13 = MEMORY[0x1E69E7CC0];
          v16 = v93;
        }

        else
        {
          v23 = v13;
        }

        v15 = *(v23 + 2);
        v18 = v108;
        v30 = *(v108 + 2);
        v31 = v30 + v15;
        if (__OFADD__(v30, v15))
        {
          goto LABEL_83;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v31 <= *(v18 + 3) >> 1)
        {
          if (!*(v23 + 2))
          {
            goto LABEL_8;
          }
        }

        else
        {
          if (v30 <= v31)
          {
            v33 = v30 + v15;
          }

          else
          {
            v33 = v30;
          }

          v18 = sub_1D9AFA214(isUniquelyReferenced_nonNull_native, v33, 1, v18);
          if (!*(v23 + 2))
          {
LABEL_8:

            if (v15)
            {
              goto LABEL_84;
            }

            goto LABEL_9;
          }
        }

        if ((*(v18 + 3) >> 1) - *(v18 + 2) < v15)
        {
          goto LABEL_85;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v34 = *(v18 + 2);
          v35 = __OFADD__(v34, v15);
          v36 = v34 + v15;
          if (v35)
          {
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            v78 = v99;
            v79 = v100;
            __swift_project_boxed_opaque_existential_1(v98, v99);
            (*(v79 + 8))(v15, v78, v79);

            __swift_destroy_boxed_opaque_existential_0Tm(&v101);
            sub_1D99BB3B8(&v102);
            __swift_destroy_boxed_opaque_existential_0Tm(v98);
            v85 = v5;
            if (v5)
            {
              goto LABEL_92;
            }

LABEL_76:
            swift_beginAccess();
            sub_1D99BB2FC(*(v6 + 16), *(v6 + 24), *(v6 + 32));

            return;
          }

          *(v18 + 2) = v36;
        }

LABEL_9:
        if (++v6 == v95)
        {
          goto LABEL_32;
        }
      }
    }

    v18 = v13;
LABEL_32:
    v37 = *(v18 + 2) + 1;
    v38 = 32;
    ++v92;
    do
    {
      if (!--v37)
      {
        goto LABEL_3;
      }

      v39 = *&v18[v38];
      v38 += 24;
    }

    while (!*(v39 + 16));

    if ((*(v90 + 104) & 1) == 0)
    {
      v15 = *(v90 + 48);
      v40 = (v15 + 32);
      v41 = -*(v15 + 16);
      v6 = -1;
      while (1)
      {
        if (v41 + v6 == -1)
        {
          goto LABEL_4;
        }

        if (++v6 >= *(v15 + 16))
        {
          break;
        }

        v42 = v40 + 160;
        v43 = sub_1D9BE7168(*v40, &unk_1F55294F0);
        v40 = v42;
        if (v43)
        {
          goto LABEL_40;
        }
      }

LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      return;
    }

LABEL_40:
    v44 = *(v16 + 16);
    if (v44)
    {
      v45 = 0;
      v46 = (v16 + 64);
      v47 = v13;
      while (1)
      {
        if (v45 >= *(v93 + 16))
        {
          goto LABEL_88;
        }

        v48 = *v46;
        v15 = *(*v46 + 16);
        v49 = *(v47 + 2);
        v6 = v49 + v15;
        if (__OFADD__(v49, v15))
        {
          goto LABEL_89;
        }

        v50 = swift_isUniquelyReferenced_nonNull_native();
        if ((v50 & 1) != 0 && v6 <= *(v47 + 3) >> 1)
        {
          if (!*(v48 + 16))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v49 <= v6)
          {
            v51 = v49 + v15;
          }

          else
          {
            v51 = v49;
          }

          v47 = sub_1D9AF870C(v50, v51, 1, v47);
          if (!*(v48 + 16))
          {
LABEL_42:

            if (v15)
            {
              goto LABEL_90;
            }

            goto LABEL_43;
          }
        }

        if ((*(v47 + 3) >> 1) - *(v47 + 2) < v15)
        {
          __break(1u);
          goto LABEL_94;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v52 = *(v47 + 2);
          v35 = __OFADD__(v52, v15);
          v53 = v52 + v15;
          if (v35)
          {
            goto LABEL_95;
          }

          *(v47 + 2) = v53;
        }

LABEL_43:
        ++v45;
        v46 += 6;
        if (v44 == v45)
        {
          goto LABEL_59;
        }
      }
    }

    v47 = v13;
LABEL_59:
    v54 = (v47 + 48);
    v55 = *(v47 + 2) + 1;
    while (--v55)
    {
      v57 = *(v54 - 2);
      v56 = *(v54 - 1);
      v6 = *v54;
      if (v56 != 0xD00000000000002DLL || v91 != v6)
      {
        v54 += 3;
        if ((sub_1D9C7E7DC() & 1) == 0)
        {
          continue;
        }
      }

      sub_1D99B1C88(v90);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v59 = v86;
      }

      else
      {
        v59 = sub_1D9AF870C(0, *(v86 + 2) + 1, 1, v86);
      }

      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      if (v61 >= v60 >> 1)
      {
        v59 = sub_1D9AF870C((v60 > 1), v61 + 1, 1, v59);
      }

      *(v59 + 2) = v61 + 1;
      v86 = v59;
      v62 = &v59[24 * v61];
      *(v62 + 4) = v57;
      *(v62 + 5) = v56;
      *(v62 + 6) = v6;
      goto LABEL_5;
    }

LABEL_3:

LABEL_4:
    sub_1D99B1C88(v90);
LABEL_5:
    v14 = v92;
  }

  while (v92 != v87);
  v63 = v86;
LABEL_74:
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  v64 = v63;
  if (*(v63 + 2))
  {
    v65 = *(v63 + 4);
    v66 = *(v64 + 5);
    v67 = *(v64 + 6);

    v102 = v66;
    v103 = v67;

    MEMORY[0x1DA73DF90](0x707265676E69662DLL, 0xEC000000746E6972);

    v68 = v102;
    v69 = v103;
    v70 = *(v6 + 16);
    v71 = *(v6 + 24);
    v72 = *(v6 + 32);
    *(v6 + 16) = v65;
    *(v6 + 24) = v68;
    *(v6 + 32) = v69;
    sub_1D99BB254(v70, v71, v72);
    goto LABEL_76;
  }

  sub_1D99A17C8(v84, &v102);
  v105 = v80;
  v104 = v81;
  v106 = v83;
  v107 = v82;

  swift_unknownObjectRetain();
  v73 = v85;
  sub_1D9ABFE8C(&v102, sub_1D9A41AD4, v6, &v101);
  v85 = v73;
  if (v73)
  {
    sub_1D99BB3B8(&v102);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517A8, &unk_1D9C86E40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9C85660;
    sub_1D99A17C8(&v101, inited + 32);
    sub_1D9BDBF78(inited);
    v15 = v75;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511E0, &qword_1D9C85D18);
    swift_arrayDestroy();
    if (!*(v15 + 16))
    {
LABEL_86:

      __swift_destroy_boxed_opaque_existential_0Tm(&v101);
      sub_1D99BB3B8(&v102);
      goto LABEL_76;
    }

    v76 = v84[3];
    v77 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v76);
    v5 = v85;
    sub_1D9B7DE80(v76, v77, v98);
    if (!v5)
    {
      goto LABEL_91;
    }

    v85 = v5;

    __swift_destroy_boxed_opaque_existential_0Tm(&v101);
    sub_1D99BB3B8(&v102);
LABEL_92:
  }
}

uint64_t sub_1D9A4187C(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v29[-1] - v13;
  if (a4)
  {
    static Logger.argos.getter(&v29[-1] - v13);
    v15 = a1;
    v16 = sub_1D9C7D8BC();
    v17 = sub_1D9C7E0AC();
    sub_1D99BB468(a1, a2, a3, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29[0] = v19;
      *v18 = 136446210;
      swift_getErrorValue();
      v20 = sub_1D9A4F730(v29[4], v29[5]);
      v22 = sub_1D9A0E224(v20, v21, v29);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D9962000, v16, v17, "Failed to calculate image fingerprint: %{public}s", v18, 0xCu);
      v23 = __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x1DA7405F0](v19, -1, -1, v23);
      MEMORY[0x1DA7405F0](v18, -1, -1);
    }

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    swift_beginAccess();
    v25 = a5[2];
    v26 = a5[3];
    v27 = a5[4];
    a5[2] = a1;
    a5[3] = a2;
    a5[4] = a3;

    return sub_1D99BB254(v25, v26, v27);
  }
}

void VisualQueryContext.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v71 - v8;
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = sub_1D9A455CC(v9, &qword_1ECB52218, &qword_1D9C8BA98);
  Context = type metadata accessor for VisualQueryContext(0);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v11 = Context[10];
  v12 = sub_1D9C7B80C();
  v13 = *(*(v12 - 8) + 56);
  v79 = v11;
  v13(a2 + v11, 1, 1, v12);
  v78 = Context[11];
  *(a2 + v78) = 0;
  v80 = Context[12];
  *(a2 + v80) = 0;
  v81 = Context[13];
  *(a2 + v81) = 0;
  v14 = Context[14];
  v13(a2 + v14, 1, 1, v12);
  v15 = (a2 + Context[15]);
  *v15 = 0;
  v15[1] = 0;
  v16 = a2 + Context[16];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = Context[17];
  *(a2 + v17) = 0;
  v18 = (a2 + Context[18]);
  *v18 = 0;
  v18[1] = 0;
  v19 = Context[19];
  *(a2 + v19) = 0;
  v20 = (a2 + Context[20]);
  *v20 = 0;
  v20[1] = 0;
  *(a2 + Context[21]) = 3;
  if (a1)
  {
    v72 = v14;
    v73 = v15;
    v74 = v17;
    v75 = v18;
    v21 = v6;
    v76 = v19;
    v77 = v20;
    v22 = a1;
    v23 = [v22 applicationIdentifier];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1D9C7DC7C();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    *a2 = v25;
    *(a2 + 8) = v27;
    v28 = [v22 catalogIDs];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1D9C7DF2C();
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    v31 = v21;
    *(a2 + 16) = v30;
    v32 = [v22 customDetectorThreshold];
    v33 = sub_1D9C7DB4C();

    sub_1D9A42E70(v33);
    v35 = v34;

    v36 = v82;
    if (!v35)
    {
      v35 = sub_1D9A455CC(MEMORY[0x1E69E7CC0], &qword_1ECB52218, &qword_1D9C8BA98);
    }

    *(a2 + 24) = v35;
    *(a2 + 32) = [v22 engagementSuggestionType];
    v37 = [v22 featureIdentifier];
    if (v37)
    {
      v38 = v37;
      v39 = sub_1D9C7DC7C();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    *(a2 + 40) = v39;
    *(a2 + 48) = v41;
    *(a2 + 56) = [v22 imageType];
    v42 = [v22 imageURL];
    if (v42)
    {
      v43 = v42;
      sub_1D9C7B7CC();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = 1;
    v13(v36, v44, 1, v12);
    sub_1D9A45714(v36, a2 + v79);
    v46 = [v22 location];
    *(a2 + v78) = v46;
    v47 = [v22 preferredMetalDevice];
    *(a2 + v80) = v47;
    v48 = [v22 queryID];
    *(a2 + v81) = v48;
    v49 = [v22 referralURL];
    if (v49)
    {
      v50 = v49;
      sub_1D9C7B7CC();

      v45 = 0;
    }

    v13(v31, v45, 1, v12);
    sub_1D9A45714(v31, a2 + v72);
    v51 = [v22 teamID];
    if (v51)
    {
      v52 = v51;
      v53 = sub_1D9C7DC7C();
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    v56 = v73;
    *v73 = v53;
    v56[1] = v55;
    [v22 uiScale];
    *(a2 + v74) = v57;
    v58 = [v22 countryCode];
    if (v58)
    {
      v59 = v58;
      v60 = sub_1D9C7DC7C();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    v63 = v75;
    *v75 = v60;
    v63[1] = v62;
    v64 = [v22 includeLowConfidenceRegions];
    *(a2 + v76) = v64;
    v65 = [v22 locale];
    if (v65)
    {
      v66 = v65;
      v67 = sub_1D9C7DC7C();
      v69 = v68;
    }

    else
    {

      v67 = 0;
      v69 = 0;
    }

    v70 = v77;
    *v77 = v67;
    v70[1] = v69;
  }
}

uint64_t VisualQueryContext.countryCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for VisualQueryContext(0) + 72));

  return v1;
}

void VisualQueryContext.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VisualQueryContext(0) + 72));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t VisualQueryContext.includeLowConfidenceRegions.setter(char a1)
{
  result = type metadata accessor for VisualQueryContext(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t VisualQueryContext.locale.getter()
{
  v1 = *(v0 + *(type metadata accessor for VisualQueryContext(0) + 80));

  return v1;
}

void VisualQueryContext.locale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VisualQueryContext(0) + 80));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t VisualQueryContext.Mode.description.getter()
{
  v1 = 0x4520796B63697453;
  if (*v0 != 1)
  {
    v1 = 0x6E616D6544206E4FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265676145;
  }
}

VisualLookUp::VisualQueryContext::Mode_optional __swiftcall VisualQueryContext.Mode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9C7E56C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VisualQueryContext.Mode.rawValue.getter()
{
  v1 = 0x6974537265676165;
  if (*v0 != 1)
  {
    v1 = 0x646E616D65446E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265676165;
  }
}

uint64_t sub_1D9A423EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6974537265676165;
  v4 = 0xEB00000000796B63;
  if (v2 != 1)
  {
    v3 = 0x646E616D65446E6FLL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7265676165;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6974537265676165;
  v8 = 0xEB00000000796B63;
  if (*a2 != 1)
  {
    v7 = 0x646E616D65446E6FLL;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7265676165;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9C7E7DC();
  }

  return v11 & 1;
}

void sub_1D9A42508(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEB00000000796B63;
  v5 = 0x6974537265676165;
  if (v2 != 1)
  {
    v5 = 0x646E616D65446E6FLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265676165;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D9A4256C()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

double sub_1D9A42614(uint64_t a1)
{
  sub_1D9C7DD6C();

  return result;
}

uint64_t sub_1D9A426A8()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D9A4280C()
{
  v1 = 0x4520796B63697453;
  if (*v0 != 1)
  {
    v1 = 0x6E616D6544206E4FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265676145;
  }
}

uint64_t VisualQueryContext.init(applicationIdentifier:queryID:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = MEMORY[0x1E69E7CC0];
  *(a5 + 16) = MEMORY[0x1E69E7CC0];
  *(a5 + 24) = sub_1D9A455CC(v9, &qword_1ECB52218, &qword_1D9C8BA98);
  Context = type metadata accessor for VisualQueryContext(0);
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  v11 = Context[10];
  v12 = sub_1D9C7B80C();
  v13 = *(*(v12 - 8) + 56);
  v13(a5 + v11, 1, 1, v12);
  v14 = Context[11];
  *(a5 + Context[12]) = 0;
  v15 = Context[13];
  result = (v13)(a5 + Context[14], 1, 1, v12);
  v17 = (a5 + Context[15]);
  *v17 = 0;
  v17[1] = 0;
  v18 = a5 + Context[16];
  *v18 = 0;
  *(v18 + 8) = 1;
  *(a5 + Context[17]) = 0;
  v19 = (a5 + Context[18]);
  *v19 = 0;
  v19[1] = 0;
  *(a5 + Context[19]) = 0;
  v20 = (a5 + Context[20]);
  *v20 = 0;
  v20[1] = 0;
  *(a5 + Context[21]) = 3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + v15) = a3;
  *(a5 + v14) = a4;
  return result;
}

void VisualQueryContext.init(applicationIdentifier:queryID:location:timestamp:customDetectorThreshold:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = MEMORY[0x1E69E7CC0];
  *(a8 + 16) = MEMORY[0x1E69E7CC0];
  sub_1D9A455CC(v12, &qword_1ECB52218, &qword_1D9C8BA98);
  Context = type metadata accessor for VisualQueryContext(0);
  *(a8 + 32) = 0u;
  *(a8 + 48) = 0u;
  v14 = Context[10];
  v15 = sub_1D9C7B80C();
  v16 = *(*(v15 - 8) + 56);
  v16(a8 + v14, 1, 1, v15);
  v17 = Context[11];
  *(a8 + Context[12]) = 0;
  v18 = Context[13];
  v16(a8 + Context[14], 1, 1, v15);

  v19 = (a8 + Context[15]);
  *v19 = 0;
  v19[1] = 0;
  v20 = a8 + Context[16];
  *(a8 + Context[17]) = 0;
  v21 = (a8 + Context[18]);
  *v21 = 0;
  v21[1] = 0;
  *(a8 + Context[19]) = 0;
  v22 = (a8 + Context[20]);
  *v22 = 0;
  v22[1] = 0;
  *(a8 + Context[21]) = 3;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + v18) = a3;
  *(a8 + v17) = a4;
  *v20 = a5;
  *(v20 + 8) = a6 & 1;
  *(a8 + 24) = a7;
}

void VisualQueryContext.init(applicationIdentifier:queryID:location:imageType:timestamp:customDetectorThreshold:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v13 = MEMORY[0x1E69E7CC0];
  *(a9 + 2) = MEMORY[0x1E69E7CC0];
  sub_1D9A455CC(v13, &qword_1ECB52218, &qword_1D9C8BA98);
  Context = type metadata accessor for VisualQueryContext(0);
  *(a9 + 5) = 0;
  *(a9 + 6) = 0;
  *(a9 + 4) = 0;
  v15 = Context[10];
  v16 = sub_1D9C7B80C();
  v17 = *(*(v16 - 8) + 56);
  v17(&a9[v15], 1, 1, v16);
  v18 = Context[11];
  *&a9[Context[12]] = 0;
  v19 = Context[13];
  v17(&a9[Context[14]], 1, 1, v16);

  v20 = &a9[Context[15]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = Context[16];
  *&a9[Context[17]] = 0;
  v22 = &a9[Context[18]];
  *v22 = 0;
  *(v22 + 1) = 0;
  a9[Context[19]] = 0;
  v23 = &a9[Context[20]];
  *v23 = 0;
  *(v23 + 1) = 0;
  a9[Context[21]] = 3;
  *a9 = a1;
  *(a9 + 1) = a2;
  *&a9[v19] = a3;
  *&a9[v18] = a4;
  v24 = &a9[v21];
  *v24 = a6;
  v24[8] = a7 & 1;
  *(a9 + 7) = a5;
  *(a9 + 3) = a8;
}

void VisualQueryContext.init(applicationIdentifier:queryID:location:imageType:cameraSearchMode:timestamp:customDetectorThreshold:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a11)
{
  v27 = *a6;
  v14 = MEMORY[0x1E69E7CC0];
  *(a9 + 2) = MEMORY[0x1E69E7CC0];
  sub_1D9A455CC(v14, &qword_1ECB52218, &qword_1D9C8BA98);
  Context = type metadata accessor for VisualQueryContext(0);
  *(a9 + 5) = 0;
  *(a9 + 6) = 0;
  *(a9 + 4) = 0;
  v16 = Context[10];
  v17 = sub_1D9C7B80C();
  v18 = *(*(v17 - 8) + 56);
  v18(&a9[v16], 1, 1, v17);
  v19 = Context[11];
  *&a9[Context[12]] = 0;
  v20 = Context[13];
  v18(&a9[Context[14]], 1, 1, v17);

  v21 = &a9[Context[15]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &a9[Context[16]];
  *&a9[Context[17]] = 0;
  v23 = &a9[Context[18]];
  *v23 = 0;
  *(v23 + 1) = 0;
  a9[Context[19]] = 0;
  v24 = &a9[Context[20]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = Context[21];
  *a9 = a1;
  *(a9 + 1) = a2;
  *&a9[v20] = a3;
  *&a9[v19] = a4;
  *v22 = a7;
  v22[8] = a8 & 1;
  *(a9 + 7) = a5;
  a9[v25] = v27;
  *(a9 + 3) = a11;
}

void sub_1D9A42E70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52218, &qword_1D9C8BA98);
    v2 = sub_1D9C7E54C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_1D99F08F0(*(a1 + 48) + 40 * v11, v24);
        sub_1D99A579C(*(a1 + 56) + 32 * v11, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_1D99F08F0(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_1D9A47A14(v21);

          goto LABEL_23;
        }

        sub_1D99A579C(v22 + 8, v20);
        sub_1D9A47A14(v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51FF0, &qword_1D9C93CD0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v12 = sub_1D99ED894(v18, v19);
        if (v13)
        {
          v8 = (v2[6] + 16 * v12);
          *v8 = v18;
          v8[1] = v19;
          v9 = v12;

          *(v2[7] + 8 * v9) = v18;

          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
          v14 = (v2[6] + 16 * v12);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * v12) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_26;
          }

          v2[2] = v17;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }

LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t sub_1D9A4312C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52258, &unk_1D9C8BAD8);
    v3 = sub_1D9C7E54C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D99AB100(v4, v11, &qword_1ECB52260, &qword_1D9C893D0);
      v5 = v11[0];
      result = sub_1D99EE030(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_1D9A17E50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A43254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52248, &qword_1D9C8BAC8);
    v3 = sub_1D9C7E54C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D99AB100(v4, &v13, &qword_1ECB52250, &qword_1D9C8BAD0);
      v5 = v13;
      v6 = v14;
      result = sub_1D99ED894(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D9A17E50(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A43384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52088, &unk_1D9C8B910);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D99ED894(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D9A43488(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52080, &qword_1D9C8B908);
  v3 = sub_1D9C7E54C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1D99F0BB0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1D99F0BB0(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9A435C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;

      result = sub_1D99EE05C(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A436D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52020, &qword_1D9C8B8A8);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A437EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52240, &qword_1D9C8BAC0);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A438F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52198, &qword_1D9C8BA18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521A0, &qword_1D9C8BA20);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52198, &qword_1D9C8BA18);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D99ED894(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
      result = sub_1D9A479AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A43AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52118, &qword_1D9C8B9A0);
    v3 = sub_1D9C7E54C();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D99EE164(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D9A43BB4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52110, &qword_1D9C8B998);
  v3 = sub_1D9C7E54C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D99F0BB0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D99F0BB0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9A43CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52278, &qword_1D9C8BAF8);
    v3 = sub_1D9C7E54C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D99AB100(v4, &v11, &unk_1ECB52280, &unk_1D9C8BB00);
      v5 = v11;
      result = sub_1D99F0BB4();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D9A17E50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A43DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52160, &qword_1D9C8B9E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52168, &qword_1D9C8B9E8);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52160, &qword_1D9C8B9E0);
      result = sub_1D99EE1AC(*v5, v5[1], v5[2], v5[3]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 32 * result);
      v15 = *(v5 + 1);
      *v14 = *v5;
      v14[1] = v15;
      v16 = v7[7];
      v17 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
      result = sub_1D9A479AC(v5 + v8, v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for VisualUnderstanding.ImageRegion);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A43FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52030, &qword_1D9C8B8B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52038, &qword_1D9C8B8C0);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52030, &qword_1D9C8B8B8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D99ED894(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
      result = sub_1D9A479AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A441B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52148, &qword_1D9C8B9C8);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A442BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521A8, &qword_1D9C8BA28);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A443C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521B0, &qword_1D9C8BA30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521B8, &qword_1D9C8BA38);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB521B0, &qword_1D9C8BA30);
      v11 = *v5;
      result = sub_1D99EE004(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1D9C7B80C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A445A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52060, &qword_1D9C8B8E8);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A446BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52150, &qword_1D9C8B9D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52158, &qword_1D9C8B9D8);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52150, &qword_1D9C8B9D0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D99ED894(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig(0);
      result = sub_1D9A479AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig.DomainConfig);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A448A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520B0, &qword_1D9C8B938);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 64); ; i += 4)
    {
      v12 = *(i - 1);
      v13 = *(i - 2);
      v14 = *i;
      v15 = i[1];

      result = sub_1D99EE1AC(*&v13, *(&v13 + 1), *&v12, *(&v12 + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 32 * result);
      *v7 = v13;
      v7[1] = v12;
      v8 = (v3[7] + 32 * result);
      *v8 = v14;
      v8[1] = v15;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A449E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A0, &unk_1D9C953A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A8, &qword_1D9C8B930);
    v7 = sub_1D9C7E54C();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB520A0, &unk_1D9C953A0);
      result = sub_1D99EDF30(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D9C7B98C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A44BD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090, &unk_1D9C953B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52098, &unk_1D9C8B920);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52090, &unk_1D9C953B0);
      result = sub_1D99EDF30(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D9C7B98C();
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A44DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520C8, &qword_1D9C8B950);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520D0, &qword_1D9C8B958);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB520C8, &qword_1D9C8B950);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D99ED894(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for LandmarkSignals(0);
      result = sub_1D9A479AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for LandmarkSignals);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A44FB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520D8, &qword_1D9C8B960);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A450B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520E0, &qword_1D9C8B968);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520E8, &qword_1D9C8B970);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB520E0, &qword_1D9C8B968);
      v11 = *v5;
      result = sub_1D99F0BB0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for StorefrontSignals(0);
      result = sub_1D9A479AC(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for StorefrontSignals);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A45290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52228, &qword_1D9C8BAA8);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *(i - 7);
      v11 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = v3[7] + 32 * result;
      *v15 = v8;
      *(v15 + 8) = v7;
      *(v15 + 16) = v9;
      *(v15 + 17) = v10;
      *(v15 + 24) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A453D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52010, &qword_1D9C8B898);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52018, &qword_1D9C8B8A0);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52010, &qword_1D9C8B898);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D99ED894(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig(0);
      result = sub_1D9A479AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Argos_Protos_Queryflow_DomainSearchConfig);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A455CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1D99ED894(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for VisualQueryContext(uint64_t a1)
{
  result = qword_1EDD352B8;
  if (!qword_1EDD352B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9A45714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9A45788()
{
  result = qword_1ECB51FD8;
  if (!qword_1ECB51FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FD8);
  }

  return result;
}

unint64_t sub_1D9A457E0()
{
  result = qword_1ECB51FE0;
  if (!qword_1ECB51FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51FE8, &qword_1D9C8B7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51FE0);
  }

  return result;
}

void sub_1D9A4586C(uint64_t a1)
{
  sub_1D9A45C48(319, &qword_1EDD2C5E0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D9A45C48(319, &qword_1EDD2C4C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D9A45AD0(319);
      if (v3 <= 0x3F)
      {
        sub_1D9A45B44(319, &qword_1EDD2C408, type metadata accessor for VISuggestionType);
        if (v4 <= 0x3F)
        {
          type metadata accessor for VIQueryContextImageType(319);
          if (v5 <= 0x3F)
          {
            sub_1D9A45B44(319, &qword_1EDD35450, MEMORY[0x1E6968FB0]);
            if (v6 <= 0x3F)
            {
              sub_1D9A45B44(319, &qword_1EDD2C458, sub_1D9A45B98);
              if (v7 <= 0x3F)
              {
                sub_1D9A45BE4(319);
                if (v8 <= 0x3F)
                {
                  sub_1D9A45C48(319, &qword_1EDD2C468, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1D9A45C48(319, &qword_1EDD2C2E0, &type metadata for VisualQueryContext.Mode, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
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

void sub_1D9A45AD0(uint64_t a1)
{
  if (!qword_1EDD2C608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECB51FF0, &qword_1D9C93CD0);
    v1 = sub_1D9C7DBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD2C608);
    }
  }
}

void sub_1D9A45B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9C7E27C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D9A45B98()
{
  result = qword_1EDD2C460;
  if (!qword_1EDD2C460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD2C460);
  }

  return result;
}

void sub_1D9A45BE4(uint64_t a1)
{
  if (!qword_1EDD2C388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECB52000, &qword_1D9C8B878);
    v1 = sub_1D9C7E27C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD2C388);
    }
  }
}

void sub_1D9A45C48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D9A45CA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520B8, &qword_1D9C8B940);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A45DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52028, &qword_1D9C8B8B0);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A45EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521C8, &qword_1D9C8BA48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521D0, &qword_1D9C8BA50);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB521C8, &qword_1D9C8BA48);
      v11 = *v5;
      result = sub_1D99EE2D4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1D9C7B80C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A46088(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521C0, &qword_1D9C8BA40);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 24);
      v7 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;

      result = sub_1D99EE2D4(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v7;
      *(v11 + 8) = v6;
      *(v11 + 16) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A46194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52040, &qword_1D9C8B8C8);
    v3 = sub_1D9C7E54C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D99AB100(v4, v13, &qword_1ECB52048, &qword_1D9C8B8D0);
      result = sub_1D99EE414(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D9A17E50(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A462D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520F8, &qword_1D9C8B980);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1D99ED894(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A463EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52170, &qword_1D9C8B9F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52178, &qword_1D9C8B9F8);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52170, &qword_1D9C8B9F0);
      result = sub_1D99EE138(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
      result = sub_1D9A479AC(&v5[v8], v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A465D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52108, &qword_1D9C8B990);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 104); ; i += 10)
    {
      v16 = *(i - 7);
      v17 = *(i - 9);
      v14 = *(i - 3);
      v15 = *(i - 5);
      v5 = *(i - 1);
      v6 = *i;

      result = sub_1D99EE1AC(*&v17, *(&v17 + 1), *&v16, *(&v16 + 1));
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 32 * result);
      *v9 = v17;
      v9[1] = v16;
      v10 = v3[7] + 48 * result;
      *v10 = v15;
      *(v10 + 16) = v14;
      *(v10 + 32) = v5;
      *(v10 + 40) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A46708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52100, &qword_1D9C8B988);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D99EE138(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A46808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52050, &qword_1D9C8B8D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52058, &qword_1D9C8B8E0);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52050, &qword_1D9C8B8D8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1D99ED894(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
      result = sub_1D9A479AC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A469F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521D8, &qword_1D9C8BA58);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      swift_unknownObjectRetain();
      result = sub_1D99EE2D4(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D9A46AEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520F0, &qword_1D9C8B978);
  v3 = sub_1D9C7E54C();
  LODWORD(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1D99EE164(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1D99EE164(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9A46C28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52128, &qword_1D9C8B9A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v11 = sub_1D9C7E54C();
    v12 = *(v6 + 48);
    v13 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);

    while (1)
    {
      sub_1D99AB100(v13, v9, &qword_1ECB52128, &qword_1D9C8B9A8);
      result = sub_1D99EE518(v9);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = v11[6];
      v19 = sub_1D9C7B93C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v17, v9, v19);
      *(v11[7] + 16 * v17) = *&v9[v12];
      v20 = v11[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v11[2] = v22;
      v13 += v14;
      if (!--v10)
      {

        return v11;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A46E24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52138, &qword_1D9C8B9B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52140, &qword_1D9C8B9C0);
    v7 = sub_1D9C7E54C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D99AB100(v9, v5, &qword_1ECB52138, &qword_1D9C8B9B8);
      result = sub_1D99EE518(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D9C7B93C();
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A4700C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52180, &qword_1D9C8BA00);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1D99EE138(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A47114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52210, &qword_1D9C8BA90);
    v3 = sub_1D9C7E54C();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1D99EE5EC(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A4721C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52190, &qword_1D9C8BA10);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1D99EE2D4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A47310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52188, &qword_1D9C8BA08);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 40);
      v7 = *(i - 4);
      v6 = *(i - 3);
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *i;

      result = sub_1D99EE138(v5);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v13 = v3[7] + 40 * result;
      *v13 = v7;
      *(v13 + 8) = v6;
      *(v13 + 16) = v9;
      *(v13 + 24) = v8;
      *(v13 + 32) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A4742C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521F8, &qword_1D9C8BA78);
    v3 = sub_1D9C7E54C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D99AB100(v4, &v11, &qword_1ECB52200, &qword_1D9C8BA80);
      v5 = v11;
      result = sub_1D99F0BB4();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D9A17E50(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A47568(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;

      result = sub_1D99EE458(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A47654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52208, &qword_1D9C8BA88);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1D99EE720(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A4776C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1D9C7E54C();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 16);
      v11 = *(i - 1);
      v10 = *i;

      result = a4(v9);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      v14 = (v7[7] + 16 * result);
      *v14 = v11;
      v14[1] = v10;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A4786C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52070, &qword_1D9C8B8F8);
    v3 = sub_1D9C7E54C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D99EE7D4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D9A47958()
{
  result = qword_1ECB52120;
  if (!qword_1ECB52120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52120);
  }

  return result;
}

uint64_t sub_1D9A479AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A47A14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52220, &qword_1D9C8BAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

float sub_1D9A47A7C(CGFloat *a1)
{
  v2 = *a1;
  v27 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v28.origin.x = *v1;
  v28.origin.y = v5;
  v28.size.width = v7;
  v28.size.height = v8;
  Width = CGRectGetWidth(v28);
  v25 = v6;
  v29.origin.x = v6;
  v10 = v5;
  v29.origin.y = v5;
  v29.size.width = v7;
  v29.size.height = v8;
  v11 = Width * CGRectGetHeight(v29);
  v30.origin.x = v2;
  v30.origin.y = v27;
  v30.size.width = v3;
  v30.size.height = v4;
  v26 = CGRectGetWidth(v30);
  v31.origin.x = v2;
  v31.origin.y = v27;
  v31.size.width = v3;
  v31.size.height = v4;
  Height = CGRectGetHeight(v31);
  v13 = 0.0;
  if (v11 > 0.0)
  {
    v14 = v26 * Height;
    if (v26 * Height > 0.0)
    {
      v32.origin.x = v25;
      v36.origin.x = v2;
      v32.origin.y = v10;
      v32.size.width = v7;
      v32.size.height = v8;
      v36.origin.y = v27;
      v36.size.width = v3;
      v36.size.height = v4;
      v33 = CGRectIntersection(v32, v36);
      x = v33.origin.x;
      y = v33.origin.y;
      v17 = v33.size.width;
      v18 = v33.size.height;
      IsNull = CGRectIsNull(v33);
      v13 = 0.0;
      if (!IsNull)
      {
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = v17;
        v34.size.height = v18;
        v20 = v14;
        v21 = CGRectGetWidth(v34);
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = v17;
        v35.size.height = v18;
        v22 = v21 * CGRectGetHeight(v35);
        if (v20 >= v11)
        {
          v23 = v11;
        }

        else
        {
          v23 = v20;
        }

        return v22 / v23;
      }
    }
  }

  return v13;
}

uint64_t NormalizedRect.loggingDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8, &qword_1D9C8BB10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D9C86430;
  v18.origin.x = v1;
  v18.origin.y = v2;
  v18.size.width = v3;
  v18.size.height = v4;
  MinX = CGRectGetMinX(v18);
  v7 = MEMORY[0x1E69E7DE0];
  *(v5 + 56) = MEMORY[0x1E69E7DE0];
  v8 = sub_1D99D2A0C();
  *(v5 + 64) = v8;
  *(v5 + 32) = MinX;
  v19.origin.x = v1;
  v19.origin.y = v2;
  v19.size.width = v3;
  v19.size.height = v4;
  MinY = CGRectGetMinY(v19);
  *(v5 + 96) = v7;
  *(v5 + 104) = v8;
  *(v5 + 72) = MinY;
  v20.origin.x = v1;
  v20.origin.y = v2;
  v20.size.width = v3;
  v20.size.height = v4;
  Width = CGRectGetWidth(v20);
  *(v5 + 136) = v7;
  *(v5 + 144) = v8;
  *(v5 + 112) = Width;
  v21.origin.x = v1;
  v21.origin.y = v2;
  v21.size.width = v3;
  v21.size.height = v4;
  Height = CGRectGetHeight(v21);
  *(v5 + 176) = v7;
  *(v5 + 184) = v8;
  *(v5 + 152) = Height;
  NormalizedRect.rectID.getter();
  v13 = v12;
  v15 = v14;
  *(v5 + 216) = MEMORY[0x1E69E6158];
  *(v5 + 224) = sub_1D99D2A60();
  *(v5 + 192) = v13;
  *(v5 + 200) = v15;

  return sub_1D9C7DCAC();
}

Swift::Float __swiftcall NormalizedRect.intersectionOverUnion(_:)(VisualLookUp::NormalizedRect a1)
{
  v3 = *v1;
  r2_8 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v29.origin.x = *v2;
  v29.origin.y = v7;
  v29.size.width = v8;
  v29.size.height = v9;
  Width = CGRectGetWidth(v29);
  v26 = v7;
  v27 = v6;
  v30.origin.x = v6;
  v30.origin.y = v7;
  v11 = v8;
  v30.size.width = v8;
  v30.size.height = v9;
  v12 = Width * CGRectGetHeight(v30);
  v31.origin.x = v3;
  v31.origin.y = r2_8;
  v31.size.width = v4;
  v31.size.height = v5;
  v13 = CGRectGetWidth(v31);
  v32.origin.x = v3;
  v32.origin.y = r2_8;
  v32.size.width = v4;
  v32.size.height = v5;
  Height = CGRectGetHeight(v32);
  v15 = 0.0;
  v25 = v12;
  if (v12 > 0.0)
  {
    v16 = v13 * Height;
    if (v13 * Height > 0.0)
    {
      v33.origin.y = v26;
      v33.origin.x = v27;
      v33.size.width = v11;
      v33.size.height = v9;
      v37.origin.x = v3;
      v37.origin.y = r2_8;
      v37.size.width = v4;
      v37.size.height = v5;
      v34 = CGRectIntersection(v33, v37);
      x = v34.origin.x;
      y = v34.origin.y;
      v19 = v34.size.width;
      v20 = v34.size.height;
      IsNull = CGRectIsNull(v34);
      v15 = 0.0;
      if (!IsNull)
      {
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = v19;
        v35.size.height = v20;
        v22 = CGRectGetWidth(v35);
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = v19;
        v36.size.height = v20;
        v23 = CGRectGetHeight(v36);
        return v22 * v23 / (v25 + v16 - v22 * v23);
      }
    }
  }

  return v15;
}

VisualLookUp::NormalizedRect __swiftcall NormalizedRect.normalizeWithReference(_:)(VisualLookUp::NormalizedRect a1)
{
  v4 = v2;
  v5 = v1[2];
  v19 = v1[3];
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = *v3 - *v1;
  v11 = v7 - v1[1];
  v20.origin.x = *v3;
  v20.origin.y = v7;
  v20.size.width = v8;
  v20.size.height = v9;
  Width = CGRectGetWidth(v20);
  v21.origin.x = v6;
  v21.origin.y = v7;
  v21.size.width = v8;
  v21.size.height = v9;
  Height = CGRectGetHeight(v21);
  v22.origin.x = v10;
  v22.origin.y = v11;
  v22.size.width = Width;
  v22.size.height = Height;
  v14 = 1.0 / v5 * CGRectGetWidth(v22);
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = Width;
  v23.size.height = Height;
  v15 = 1.0 / v19 * CGRectGetHeight(v23);
  *v4 = 1.0 / v5 * v10;
  v4[1] = 1.0 / v19 * v11;
  v4[2] = v14;
  v4[3] = v15;
  result.bottomLeftCGRect.size.height = v18;
  result.bottomLeftCGRect.size.width = v17;
  result.bottomLeftCGRect.origin.y = v16;
  result.bottomLeftCGRect.origin.x = v15;
  return result;
}

VisualLookUp::NormalizedRect __swiftcall NormalizedRect.init(topLeftCGRect:)(__C::CGRect topLeftCGRect)
{
  height = topLeftCGRect.size.height;
  width = topLeftCGRect.size.width;
  y = topLeftCGRect.origin.y;
  x = topLeftCGRect.origin.x;
  v6 = v1;
  MinX = CGRectGetMinX(topLeftCGRect);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = 1.0 - CGRectGetMaxY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectGetHeight(v16);
  *v6 = MinX;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  result.bottomLeftCGRect.size.height = v13;
  result.bottomLeftCGRect.size.width = v12;
  result.bottomLeftCGRect.origin.y = v11;
  result.bottomLeftCGRect.origin.x = v10;
  return result;
}

void NormalizedRect.rectID.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8, &qword_1D9C8BB10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D9C85E90;
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  v6 = round(CGRectGetMinX(v13) * 1000.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = MEMORY[0x1E69E6530];
  v8 = MEMORY[0x1E69E65A8];
  *(v5 + 56) = MEMORY[0x1E69E6530];
  *(v5 + 64) = v8;
  *(v5 + 32) = v6;
  v14.origin.x = v1;
  v14.origin.y = v2;
  v14.size.width = v3;
  v14.size.height = v4;
  v9 = round(CGRectGetMinY(v14) * 1000.0);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v5 + 96) = v7;
  *(v5 + 104) = v8;
  *(v5 + 72) = v9;
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.width = v3;
  v15.size.height = v4;
  v10 = round(CGRectGetWidth(v15) * 1000.0);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v5 + 136) = v7;
  *(v5 + 144) = v8;
  *(v5 + 112) = v10;
  v16.origin.x = v1;
  v16.origin.y = v2;
  v16.size.width = v3;
  v16.size.height = v4;
  v11 = round(CGRectGetHeight(v16) * 1000.0);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  *(v5 + 176) = v7;
  *(v5 + 184) = v8;
  *(v5 + 152) = v11;

  sub_1D9C7DCAC();
}

__n128 static NormalizedRect.entireImage.getter@<Q0>(__n128 *a1@<X8>)
{
  *a1 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  a1[1] = result;
  return result;
}

double NormalizedRect.topLeftCGRect.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v7.origin.x = *v0;
  v7.origin.y = v2;
  v7.size.width = v3;
  v7.size.height = v4;
  MinX = CGRectGetMinX(v7);
  v8.origin.x = v1;
  v8.origin.y = v2;
  v8.size.width = v3;
  v8.size.height = v4;
  CGRectGetMaxY(v8);
  v9.origin.x = v1;
  v9.origin.y = v2;
  v9.size.width = v3;
  v9.size.height = v4;
  CGRectGetWidth(v9);
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  CGRectGetHeight(v10);
  return MinX;
}

VisualLookUp::NormalizedRect __swiftcall NormalizedRect.init(srcSize:bottomLeftCGRectUnscaled:)(CGSize srcSize, __C::CGRect bottomLeftCGRectUnscaled)
{
  height = bottomLeftCGRectUnscaled.size.height;
  width = bottomLeftCGRectUnscaled.size.width;
  y = bottomLeftCGRectUnscaled.origin.y;
  x = bottomLeftCGRectUnscaled.origin.x;
  v7 = v2;
  if (srcSize.width != 0.0)
  {
    v9 = 0.0;
    v8 = 1.0 / srcSize.width;
    if (srcSize.height == 0.0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0.0;
  v9 = 0.0;
  if (srcSize.height != 0.0)
  {
LABEL_3:
    v9 = 1.0 / srcSize.height;
  }

LABEL_4:
  v10 = v8 * CGRectGetMinX(bottomLeftCGRectUnscaled);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v11 = v9 * CGRectGetMinY(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v12 = v8 * CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v13 = v9 * CGRectGetHeight(v19);
  *v7 = v10;
  v7[1] = v11;
  v7[2] = v12;
  v7[3] = v13;
  result.bottomLeftCGRect.size.height = v16;
  result.bottomLeftCGRect.size.width = v15;
  result.bottomLeftCGRect.origin.y = v14;
  result.bottomLeftCGRect.origin.x = v13;
  return result;
}

CGFloat CGRect.scale(scaleX:scaleY:)(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13.origin.x = a3;
  v13.origin.y = a4;
  v13.size.width = a5;
  v13.size.height = a6;
  v11 = CGRectGetMinX(v13) * a1;
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  CGRectGetMinY(v14);
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  CGRectGetWidth(v15);
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  CGRectGetHeight(v16);
  return v11;
}

uint64_t NormalizedRect.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v10.origin.x = *v0;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  MinX = CGRectGetMinX(v10);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  MaxX = CGRectGetMaxX(v11);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v12.origin.x = v1;
  v12.origin.y = v2;
  v12.size.width = v3;
  v12.size.height = v4;
  MinY = CGRectGetMinY(v12);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MaxY = CGRectGetMaxY(v13);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  return MEMORY[0x1DA73EB00](*&MaxY);
}

__C::CGRect __swiftcall CGRect.toImageCoordinates(imageSize:)(CGSize imageSize)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  height = imageSize.height;
  width = imageSize.width;
  v11 = imageSize.width * v1;
  v12 = imageSize.height * v2;
  v18.origin.x = v1;
  v18.origin.y = v2;
  v18.size.width = v3;
  v18.size.height = v4;
  v13 = CGRectGetWidth(v18) * width;
  v19.origin.x = v8;
  v19.origin.y = v7;
  v19.size.width = v6;
  v19.size.height = v5;
  v14 = CGRectGetHeight(v19) * height;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

__C::CGRect __swiftcall CGRect.constrainedNormalizedRect()()
{
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 1.0;
  return CGRectIntersection(*&v0, v5);
}

double CGRect.expand(by:)(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  v10 = -(CGRectGetWidth(v18) * a1) * 0.5;
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  v11 = -(CGRectGetHeight(v19) * a1) * 0.5;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;

  *&result = CGRectInset(*&v12, v10, v11);
  return result;
}

VisualLookUp::NormalizedRect __swiftcall CGRect.toConstrainedNormalizedRect()()
{
  v5 = v0;
  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = 1.0;
  v7.size.height = 1.0;
  result = CGRectIntersection(*&v1, v7);
  *v5 = result;
  return result;
}

uint64_t NormalizedRect.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D9C7E8DC();
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  MinX = CGRectGetMinX(v10);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  MaxX = CGRectGetMaxX(v11);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v12.origin.x = v1;
  v12.origin.y = v2;
  v12.size.width = v3;
  v12.size.height = v4;
  MinY = CGRectGetMinY(v12);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MaxY = CGRectGetMaxY(v13);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  return sub_1D9C7E93C();
}

void NormalizedRect.init(from:)(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52290, &qword_1D9C8BB18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A48FCC();
  sub_1D9C7E95C();
  if (!v2)
  {
    LOBYTE(v30) = 0;
    v9 = sub_1D9C7E5FC();
    v11 = v10;
    LOBYTE(v30) = 1;
    v28 = sub_1D9C7E5FC();
    v29 = v12;
    LOBYTE(v30) = 2;
    v26 = sub_1D9C7E5FC();
    v27 = v13;
    LOBYTE(v30) = 3;
    v14 = sub_1D9C7E5FC();
    v30 = 0.0;
    v24 = v15;
    v25 = v14;
    v16 = sub_1D9A495CC(v9, v11, &v30);

    if (v16)
    {
      v17 = v30;
    }

    else
    {
      v17 = 0.0;
    }

    v30 = 0.0;
    v18 = sub_1D9A495CC(v28, v29, &v30);

    if (v18)
    {
      v19 = v30;
    }

    else
    {
      v19 = 0.0;
    }

    v30 = 0.0;
    v20 = sub_1D9A495CC(v26, v27, &v30);

    if (v20)
    {
      v21 = v30;
    }

    else
    {
      v21 = 0.0;
    }

    v30 = 0.0;
    v22 = sub_1D9A495CC(v25, v24, &v30);

    (*(v6 + 8))(v8, v5);
    v23 = v30;
    if (!v22)
    {
      v23 = 0.0;
    }

    *a2 = v17;
    a2[1] = v19;
    a2[2] = v21;
    a2[3] = v23;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void NormalizedRect.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52298, &qword_1D9C8BB20);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-v6];
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9A48FCC();
  sub_1D9C7E96C();
  sub_1D9C7DFFC();
  v12[15] = 0;
  sub_1D9C7E6EC();
  if (!v2)
  {

    sub_1D9C7DFFC();
    v12[14] = 1;
    sub_1D9C7E6EC();

    v13.origin.x = v8;
    v13.origin.y = v9;
    v13.size.width = v10;
    v13.size.height = v11;
    CGRectGetWidth(v13);
    sub_1D9C7DFFC();
    v12[13] = 2;
    sub_1D9C7E6EC();

    v14.origin.x = v8;
    v14.origin.y = v9;
    v14.size.width = v10;
    v14.size.height = v11;
    CGRectGetHeight(v14);
    sub_1D9C7DFFC();
    v12[12] = 3;
    sub_1D9C7E6EC();
  }

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D9A48ED4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D9C7E8DC();
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  MinX = CGRectGetMinX(v10);
  if (MinX == 0.0)
  {
    MinX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinX);
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = v3;
  v11.size.height = v4;
  MaxX = CGRectGetMaxX(v11);
  if (MaxX == 0.0)
  {
    MaxX = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxX);
  v12.origin.x = v1;
  v12.origin.y = v2;
  v12.size.width = v3;
  v12.size.height = v4;
  MinY = CGRectGetMinY(v12);
  if (MinY == 0.0)
  {
    MinY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MinY);
  v13.origin.x = v1;
  v13.origin.y = v2;
  v13.size.width = v3;
  v13.size.height = v4;
  MaxY = CGRectGetMaxY(v13);
  if (MaxY == 0.0)
  {
    MaxY = 0.0;
  }

  MEMORY[0x1DA73EB00](*&MaxY);
  return sub_1D9C7E93C();
}

unint64_t sub_1D9A48FCC()
{
  result = qword_1EDD2BE30;
  if (!qword_1EDD2BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BE30);
  }

  return result;
}

CGFloat CGRect.scale(_:)(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  v10 = CGRectGetMinX(v12) * a1;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetMinY(v13);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetHeight(v15);
  return v10;
}

__C::CGRect __swiftcall CGRect.scale(targetSize:)(CGSize targetSize)
{
  v5 = targetSize.width * v1;
  v6 = targetSize.height * v2;
  v7 = targetSize.width * v3;
  v8 = targetSize.height * v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

CGPoint __swiftcall CGRect.centerPoint()()
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  MidX = CGRectGetMidX(*&v0);
  v12.origin.x = v7;
  v12.origin.y = v6;
  v12.size.width = v5;
  v12.size.height = v4;
  MidY = CGRectGetMidY(v12);
  v10 = MidX;
  result.y = MidY;
  result.x = v10;
  return result;
}

Swift::String __swiftcall CGRect.regionID()()
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8, &qword_1D9C8BB10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9C85E90;
  v9 = MEMORY[0x1E69E7DE0];
  *(v8 + 56) = MEMORY[0x1E69E7DE0];
  v10 = sub_1D99D2A0C();
  *(v8 + 64) = v10;
  *(v8 + 32) = v7;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v6;
  v17.origin.x = v7;
  v17.origin.y = v6;
  v17.size.width = v5;
  v17.size.height = v4;
  Width = CGRectGetWidth(v17);
  *(v8 + 136) = v9;
  *(v8 + 144) = v10;
  *(v8 + 112) = Width;
  v18.origin.x = v7;
  v18.origin.y = v6;
  v18.size.width = v5;
  v18.size.height = v4;
  Height = CGRectGetHeight(v18);
  *(v8 + 176) = v9;
  *(v8 + 184) = v10;
  *(v8 + 152) = Height;

  v13 = sub_1D9C7DCAC();
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_1D9A4926C()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

double sub_1D9A49310(uint64_t a1)
{
  sub_1D9C7DD6C();

  return result;
}

uint64_t sub_1D9A493A0()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

unint64_t sub_1D9A49440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9A49844(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D9A49470(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 120;
  v4 = 0xE500000000000000;
  v5 = 0x6874646977;
  if (*v1 != 2)
  {
    v5 = 0x746867696568;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 121;
    v2 = 0xE100000000000000;
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

uint64_t sub_1D9A494D0()
{
  v1 = 120;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 121;
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

unint64_t sub_1D9A4952C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9A49844(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9A49554(uint64_t a1)
{
  v2 = sub_1D9A48FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9A49590(uint64_t a1)
{
  v2 = sub_1D9A48FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1D9A495CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1D9C7E3EC();
  if (!v3)
  {
    return v8;
  }

  return v5;
}