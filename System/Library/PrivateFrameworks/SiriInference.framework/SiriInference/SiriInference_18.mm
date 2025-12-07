uint64_t sub_1DD4DE46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  type metadata accessor for InferenceError();
  OUTLINED_FUNCTION_4_46();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0xE000000000000000;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a4;
  *(v12 + 64) = a5;
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 72) = a6;
  *(v12 + 80) = v13;
  *(v12 + 88) = 1;
  v14 = qword_1EE166510;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v15 = sub_1DD63F9F8();
  __swift_project_value_buffer(v15, qword_1EE16F0C8);
  sub_1DD4DEB78();
  sub_1DD426968();
  swift_allocError();
  *v16 = v12;
  return swift_willThrow();
}

uint64_t sub_1DD4DE56C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v39[0] = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
  type metadata accessor for InferenceError();
  if (swift_dynamicCast())
  {

    v15 = *(v36 + 16);
    v17 = *(v36 + 24);
    v16 = *(v36 + 32);
    v19 = *(v36 + 40);
    v18 = *(v36 + 48);
    v21 = *(v36 + 56);
    v20 = *(v36 + 64);
    v22 = *(v36 + 80);
    v34 = *(v36 + 72);
    v32 = *(v36 + 88);
    OUTLINED_FUNCTION_4_46();
    v23 = swift_allocObject();
    *(v23 + 89) = 0;
    *(v23 + 16) = v15;
    *(v23 + 24) = v17;
    *(v23 + 32) = v16;
    *(v23 + 40) = v19;
    *(v23 + 48) = v18;
    *(v23 + 56) = v21;
    *(v23 + 64) = v20;
    *(v23 + 72) = v34;
    *(v23 + 80) = v22;
    *(v23 + 88) = v32;
    v24 = *(v36 + 89);

    *(v23 + 89) = v24;
  }

  else
  {
    v25 = a1;
    if (swift_dynamicCast())
    {

      v39[0] = v36;
      v39[1] = v37;
      v39[2] = v38;
      v23 = sub_1DD4DE7C0(v39);
    }

    else
    {
      *&v39[0] = a1;
      v26 = a1;
      v27 = sub_1DD63FE38();
      v33 = v28;
      v35 = v27;
      v29 = [objc_opt_self() callStackSymbols];
      v30 = sub_1DD640118();

      OUTLINED_FUNCTION_4_46();
      v23 = swift_allocObject();
      *(v23 + 89) = 0;
      *(v23 + 16) = 60;
      *(v23 + 24) = v35;
      *(v23 + 32) = v33;
      *(v23 + 40) = a3;
      *(v23 + 48) = a4;
      *(v23 + 56) = a5;
      *(v23 + 64) = a6;
      *(v23 + 72) = a7;
      *(v23 + 80) = v30;
      *(v23 + 88) = a2;
    }
  }

  return v23;
}

uint64_t sub_1DD4DE7C0(unsigned __int8 *a1)
{
  v2 = *a1;
  switch(v2)
  {
    case 1:
      v5 = *(a1 + 2);
      if (v5)
      {
        v6 = *(a1 + 1) == 0xD00000000000002ALL && v5 == 0x80000001DD66EC00;
        if (v6 || (sub_1DD640CD8() & 1) != 0)
        {
          v3 = 46;
          goto LABEL_22;
        }
      }

LABEL_19:
      v3 = 46;
      v4 = 2;
      goto LABEL_23;
    case 90:
      v3 = 50;
      goto LABEL_22;
    case 13:
      v3 = 49;
      goto LABEL_22;
    case 14:
      v3 = 47;
      goto LABEL_22;
  }

  if (v2 != 23)
  {
    if (v2 == 80)
    {
      v3 = 51;
      goto LABEL_22;
    }

    if (v2 == 11)
    {
      v3 = 48;
LABEL_22:
      v4 = 1;
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v4 = 0;
  v3 = 46;
LABEL_23:
  v7 = *(a1 + 8);
  v15 = *(a1 + 24);
  v16 = v7;
  v8 = *(a1 + 5);
  sub_1DD4DF5DC(&v16, v14);
  sub_1DD4DF5DC(&v15, v14);

  v9 = sub_1DD47FA08();
  v11 = v10;
  sub_1DD4DF64C(&v16);
  sub_1DD4DF64C(&v15);

  type metadata accessor for InferenceError();
  v12 = swift_allocObject();
  *(v12 + 89) = 0;
  *(v12 + 16) = v3;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0xE000000000000000;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0xE000000000000000;
  *(v12 + 72) = 0;
  *(v12 + 80) = v8;
  *(v12 + 88) = v4;

  sub_1DD4DF64C(&v16);
  sub_1DD4DF64C(&v15);

  return v12;
}

uint64_t sub_1DD4DE96C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 89) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  *(v10 + 80) = a9;
  *(v10 + 88) = a10;
  return v10;
}

uint64_t sub_1DD4DE998()
{
  v1 = v0;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000017, 0x80000001DD66EB80);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](0x3D656C696620, 0xE600000000000000);
  MEMORY[0x1E12B2260](v1[5], v1[6]);
  MEMORY[0x1E12B2260](0x6F6974636E756620, 0xEA00000000003D6ELL);
  MEMORY[0x1E12B2260](v1[7], v1[8]);
  MEMORY[0x1E12B2260](0x3D656E696C20, 0xE600000000000000);
  v2 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v2);

  MEMORY[0x1E12B2260](0x3D67736D20, 0xE500000000000000);
  v4 = v0[3];
  v3 = v0[4];

  MEMORY[0x1E12B2260](v4, v3);

  MEMORY[0x1E12B2260](62, 0xE100000000000000);
  return 0;
}

void sub_1DD4DEB1C()
{
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F0C8);

  sub_1DD4DEB78();
}

void sub_1DD4DEB78()
{
  if ((*(v0 + 89) & 1) == 0)
  {
    *(v0 + 89) = 1;
    sub_1DD4DEBE4();
    if (*(v0 + 88))
    {
      if (*(v0 + 88) == 1)
      {

        sub_1DD4DEDE8();
      }

      else
      {
        sub_1DD4DEDE8();

        sub_1DD4DEFCC();
      }
    }
  }
}

void sub_1DD4DEBE4()
{

  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640378();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v18 = v4;
    *v3 = 136446210;
    v5 = sub_1DD4DE998();
    v7 = sub_1DD39565C(v5, v6, &v18);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1DD38D000, v1, v2, "%{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  v8 = *(v0 + 80);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      v13 = sub_1DD63F9D8();
      v14 = sub_1DD640378();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v18 = v16;
        *v15 = 136446210;
        v17 = sub_1DD39565C(v12, v11, &v18);

        *(v15 + 4) = v17;
        _os_log_impl(&dword_1DD38D000, v13, v14, "%{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

void sub_1DD4DEDE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD18, &qword_1DD6549F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = 0x6449726F727265;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_1DD4DDD28(*(v0 + 16));
  *(inited + 56) = v2;
  *(inited + 64) = 3;
  *(inited + 72) = 1701603686;
  *(inited + 80) = 0xE400000000000000;
  v3 = *(v0 + 48);
  *(inited + 88) = *(v0 + 40);
  *(inited + 96) = v3;
  *(inited + 104) = 3;
  *(inited + 112) = 0x6E6F6974636E7566;
  *(inited + 120) = 0xE800000000000000;
  v4 = *(v0 + 64);
  *(inited + 128) = *(v0 + 56);
  *(inited + 136) = v4;
  *(inited + 144) = 3;
  *(inited + 152) = 1701734764;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = *(v0 + 72);
  *(inited + 176) = 0;
  *(inited + 184) = 0;

  sub_1DD63FC88();
  MEMORY[0x1E12B2260](0x636E657265666E49, 0xEE00726F72724565);
  v5 = sub_1DD63FDA8();

  CoreAnalyticsMetric.eventPayload()();
  OUTLINED_FUNCTION_15_2();

  sub_1DD395950();
  v6 = sub_1DD63FC48();

  AnalyticsSendEvent();
}

void sub_1DD4DEFCC()
{
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v1 = sub_1DD63F9F8();
  __swift_project_value_buffer(v1, qword_1EE16F0C8);
  OUTLINED_FUNCTION_15_2();

  oslog = sub_1DD63F9D8();
  v2 = sub_1DD640388();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446210;
    v5 = sub_1DD4DE998();
    sub_1DD39565C(v5, v6, &v8);
    OUTLINED_FUNCTION_15_2();

    *(v3 + 4) = v0;
    _os_log_impl(&dword_1DD38D000, oslog, v2, "Simulating crash for InferenceError: %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }
}

unint64_t sub_1DD4DF10C(uint64_t a1, uint64_t a2)
{
  sub_1DD640D18();
  OUTLINED_FUNCTION_15_2();

  if (v2 >= 0x48)
  {
    return 72;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DD4DF180@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD4DF10C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DD4DF1B0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD4DDD28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t InferenceError.deinit()
{

  return v0;
}

uint64_t InferenceError.__deallocating_deinit()
{
  InferenceError.deinit();
  OUTLINED_FUNCTION_4_46();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for InferenceError.MeasurementKind(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t getEnumTagSinglePayload for InferenceError.ErrorId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xB9)
  {
    if (a2 + 71 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 71) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 72;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x48;
  v5 = v6 - 72;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InferenceError.ErrorId(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 71 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 71) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xB9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xB8)
  {
    v6 = ((a2 - 185) >> 8) + 1;
    *result = a2 + 71;
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
        break;
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
          *result = a2 + 71;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4DF530()
{
  result = qword_1ECCDDD08;
  if (!qword_1ECCDDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD08);
  }

  return result;
}

unint64_t sub_1DD4DF588()
{
  result = qword_1ECCDDD10;
  if (!qword_1ECCDDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD10);
  }

  return result;
}

uint64_t sub_1DD4DF5DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4DF64C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id INPerson.toContactQuery()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD63CD18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD63F9F8();
  __swift_project_value_buffer(v8, qword_1EE16F068);
  v9 = sub_1DD63F9D8();
  v10 = sub_1DD640368();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DD38D000, v9, v10, "converting INPerson to ContactQuery", v11, 2u);
    MEMORY[0x1E12B3DA0](v11, -1, -1);
  }

  v82 = [v2 isMe];
  v80 = sub_1DD3CA460(v2, &selRef_contactIdentifier);
  v81 = v12;
  v13 = [v2 nameComponents];
  if (v13)
  {
    v14 = v13;
    sub_1DD63CCC8();

    v15 = sub_1DD63CC68();
    v17 = 0xE000000000000000;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    v77 = v18;
    if (v16)
    {
      v19 = v15;
    }

    else
    {
      v19 = 0;
    }

    v79 = v19;
    v20 = sub_1DD63CC08();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v75 = v22;
    if (v21)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    v78 = v23;
    v24 = sub_1DD63CC48();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v73 = v26;
    if (v25)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0;
    }

    v76 = v27;
    v28 = sub_1DD63CC28();
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v71 = v30;
    if (v29)
    {
      v31 = v28;
    }

    else
    {
      v31 = 0;
    }

    v74 = v31;
    v32 = sub_1DD63CC88();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0;
    }

    v72 = v34;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    v70 = v35;
    v36 = sub_1DD63CCD8();
    v38 = v37;
    (*(v5 + 8))(v7, v4);
    if (v38)
    {
      v69 = 0;
      goto LABEL_41;
    }

    v69 = 0;
    v36 = 0;
  }

  else
  {
    v39 = [v2 displayName];
    v69 = sub_1DD63FDD8();
    v17 = v40;

    v78 = 0;
    v79 = 0;
    v36 = 0;
    v70 = 0xE000000000000000;
    v71 = 0xE000000000000000;
    v72 = 0;
    v73 = 0xE000000000000000;
    v74 = 0;
    v75 = 0xE000000000000000;
    v76 = 0;
    v77 = 0xE000000000000000;
  }

  v38 = 0xE000000000000000;
LABEL_41:
  v41 = [v2 relationship];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1DD4DFB58(v41);
    v67 = v44;
    v68 = v43;

    sub_1DD4178B4(0, 0, 0);
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  result = [v2 personHandle];
  v46 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v47 = result;
    sub_1DD4085DC([result type], &v83);
    v48 = v83;
    v49 = [v47 label];
    if (v49)
    {
      v50 = v49;
      v51 = sub_1DD4E0314(v50);
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0xE000000000000000;
    }

    v55 = sub_1DD3CA460(v47, &selRef_value);
    v56 = v57;

    if (!v56)
    {
      v55 = 0;
      v56 = 0xE000000000000000;
    }

    result = sub_1DD3FAA54(0, 0, 0);
    v54 = MEMORY[0x1E69E7CC0];
    v46 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v48 = 0;
    v51 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
  }

  v58 = v80;
  v59 = v81;
  if (!v81)
  {
    v58 = 0;
    v59 = 0xE000000000000000;
  }

  *a1 = v58;
  *(a1 + 8) = v59;
  *(a1 + 16) = v82;
  *(a1 + 24) = v69;
  *(a1 + 32) = v17;
  v60 = v77;
  *(a1 + 40) = v79;
  *(a1 + 48) = v60;
  v61 = v75;
  *(a1 + 56) = v78;
  *(a1 + 64) = v61;
  v62 = v73;
  *(a1 + 72) = v76;
  *(a1 + 80) = v62;
  v63 = v71;
  *(a1 + 88) = v74;
  *(a1 + 96) = v63;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  v64 = v70;
  *(a1 + 120) = v72;
  *(a1 + 128) = v64;
  *(a1 + 136) = v36;
  *(a1 + 144) = v38;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0xE000000000000000;
  v65 = v67;
  v66 = v68;
  *(a1 + 168) = 0;
  *(a1 + 176) = v66;
  *(a1 + 184) = v65;
  *(a1 + 192) = v48;
  *(a1 + 200) = v51;
  *(a1 + 208) = v53;
  *(a1 + 216) = v54;
  *(a1 + 224) = v55;
  *(a1 + 232) = v56;
  *(a1 + 240) = v46;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  return result;
}

uint64_t sub_1DD4DFB58(void *a1)
{
  v2 = sub_1DD63FDD8();
  v4 = v3;
  if (v2 == sub_1DD63FDD8() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_1DD640CD8();

    if ((v7 & 1) == 0)
    {
      v8 = sub_1DD63FDD8();
      v10 = v9;
      if (v8 == sub_1DD63FDD8() && v10 == v11)
      {
      }

      else
      {
        v13 = sub_1DD640CD8();

        if ((v13 & 1) == 0)
        {
          v14 = sub_1DD63FDD8();
          v16 = v15;
          if (v14 == sub_1DD63FDD8() && v16 == v17)
          {
          }

          else
          {
            v19 = sub_1DD640CD8();

            if ((v19 & 1) == 0)
            {
              v20 = sub_1DD63FDD8();
              v22 = v21;
              if (v20 == sub_1DD63FDD8() && v22 == v23)
              {
              }

              else
              {
                v25 = sub_1DD640CD8();

                if ((v25 & 1) == 0)
                {
                  v26 = sub_1DD63FDD8();
                  v28 = v27;
                  if (v26 == sub_1DD63FDD8() && v28 == v29)
                  {
                  }

                  else
                  {
                    v31 = sub_1DD640CD8();

                    if ((v31 & 1) == 0)
                    {
                      v32 = sub_1DD63FDD8();
                      v34 = v33;
                      if (v32 == sub_1DD63FDD8() && v34 == v35)
                      {
                      }

                      else
                      {
                        v37 = sub_1DD640CD8();

                        if ((v37 & 1) == 0)
                        {
                          v38 = sub_1DD63FDD8();
                          v40 = v39;
                          if (v38 == sub_1DD63FDD8() && v40 == v41)
                          {
                          }

                          else
                          {
                            v43 = sub_1DD640CD8();

                            if ((v43 & 1) == 0)
                            {
                              v44 = sub_1DD63FDD8();
                              v46 = v45;
                              if (v44 == sub_1DD63FDD8() && v46 == v47)
                              {
                              }

                              else
                              {
                                v49 = sub_1DD640CD8();

                                if ((v49 & 1) == 0)
                                {
                                  v50 = sub_1DD63FDD8();
                                  v52 = v51;
                                  if (v50 == sub_1DD63FDD8() && v52 == v53)
                                  {
                                  }

                                  else
                                  {
                                    v55 = sub_1DD640CD8();

                                    if ((v55 & 1) == 0)
                                    {
                                      v56 = sub_1DD63FDD8();
                                      v58 = v57;
                                      if (v56 == sub_1DD63FDD8() && v58 == v59)
                                      {
                                      }

                                      else
                                      {
                                        v61 = sub_1DD640CD8();

                                        if ((v61 & 1) == 0)
                                        {
                                          v62 = sub_1DD63FDD8();
                                          v64 = v63;
                                          if (v62 == sub_1DD63FDD8() && v64 == v65)
                                          {
                                          }

                                          else
                                          {
                                            v67 = sub_1DD640CD8();

                                            if ((v67 & 1) == 0)
                                            {
                                              v68 = sub_1DD63FDD8();
                                              v70 = v69;
                                              if (v68 == sub_1DD63FDD8() && v70 == v71)
                                              {
                                              }

                                              else
                                              {
                                                v73 = sub_1DD640CD8();

                                                if ((v73 & 1) == 0)
                                                {
                                                  v74 = sub_1DD63FDD8();
                                                  v76 = v75;
                                                  if (v74 == sub_1DD63FDD8() && v76 == v77)
                                                  {
                                                  }

                                                  else
                                                  {
                                                    v79 = sub_1DD640CD8();

                                                    if ((v79 & 1) == 0)
                                                    {
                                                      if (qword_1EE165FB0 != -1)
                                                      {
                                                        swift_once();
                                                      }

                                                      v80 = sub_1DD63F9F8();
                                                      __swift_project_value_buffer(v80, qword_1EE16F068);
                                                      v81 = a1;
                                                      v82 = sub_1DD63F9D8();
                                                      v83 = sub_1DD640378();

                                                      if (os_log_type_enabled(v82, v83))
                                                      {
                                                        v84 = swift_slowAlloc();
                                                        v85 = swift_slowAlloc();
                                                        v90 = v85;
                                                        *v84 = 136315138;
                                                        v86 = sub_1DD63FDD8();
                                                        v88 = sub_1DD39565C(v86, v87, &v90);

                                                        *(v84 + 4) = v88;
                                                        _os_log_impl(&dword_1DD38D000, v82, v83, "unhandled INPersonRelationship: %s", v84, 0xCu);
                                                        __swift_destroy_boxed_opaque_existential_1(v85);
                                                        MEMORY[0x1E12B3DA0](v85, -1, -1);
                                                        MEMORY[0x1E12B3DA0](v84, -1, -1);
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
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_1DD63FDD8();
}

uint64_t sub_1DD4E0314(void *a1)
{
  v2 = sub_1DD63FDD8();
  v4 = v3;
  if (v2 == sub_1DD63FDD8() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_1DD640CD8();

    if ((v7 & 1) == 0)
    {
      v8 = sub_1DD63FDD8();
      v10 = v9;
      if (v8 == sub_1DD63FDD8() && v10 == v11)
      {
      }

      else
      {
        v13 = sub_1DD640CD8();

        if ((v13 & 1) == 0)
        {
          v14 = sub_1DD63FDD8();
          v16 = v15;
          if (v14 == sub_1DD63FDD8() && v16 == v17)
          {
          }

          else
          {
            v19 = sub_1DD640CD8();

            if ((v19 & 1) == 0)
            {
              v20 = sub_1DD63FDD8();
              v22 = v21;
              if (v20 == sub_1DD63FDD8() && v22 == v23)
              {
              }

              else
              {
                v25 = sub_1DD640CD8();

                if ((v25 & 1) == 0)
                {
                  v26 = sub_1DD63FDD8();
                  v28 = v27;
                  if (v26 == sub_1DD63FDD8() && v28 == v29)
                  {
                  }

                  else
                  {
                    v31 = sub_1DD640CD8();

                    if ((v31 & 1) == 0)
                    {
                      v32 = sub_1DD63FDD8();
                      v34 = v33;
                      if (v32 == sub_1DD63FDD8() && v34 == v35)
                      {
                      }

                      else
                      {
                        v37 = sub_1DD640CD8();

                        if ((v37 & 1) == 0)
                        {
                          v38 = sub_1DD63FDD8();
                          v40 = v39;
                          if (v38 == sub_1DD63FDD8() && v40 == v41)
                          {
                          }

                          else
                          {
                            v43 = sub_1DD640CD8();

                            if ((v43 & 1) == 0)
                            {
                              v44 = sub_1DD63FDD8();
                              v46 = v45;
                              if (v44 == sub_1DD63FDD8() && v46 == v47)
                              {
                              }

                              else
                              {
                                v49 = sub_1DD640CD8();

                                if ((v49 & 1) == 0)
                                {
                                  v50 = sub_1DD63FDD8();
                                  v52 = v51;
                                  if (v50 == sub_1DD63FDD8() && v52 == v53)
                                  {
                                  }

                                  else
                                  {
                                    v55 = sub_1DD640CD8();

                                    if ((v55 & 1) == 0)
                                    {
                                      v56 = sub_1DD63FDD8();
                                      v58 = v57;
                                      if (v56 == sub_1DD63FDD8() && v58 == v59)
                                      {
                                      }

                                      else
                                      {
                                        v61 = sub_1DD640CD8();

                                        if ((v61 & 1) == 0)
                                        {
                                          if (qword_1EE165FB0 != -1)
                                          {
                                            swift_once();
                                          }

                                          v62 = sub_1DD63F9F8();
                                          __swift_project_value_buffer(v62, qword_1EE16F068);
                                          v63 = a1;
                                          v64 = sub_1DD63F9D8();
                                          v65 = sub_1DD640378();

                                          if (os_log_type_enabled(v64, v65))
                                          {
                                            v66 = swift_slowAlloc();
                                            v67 = swift_slowAlloc();
                                            v72 = v67;
                                            *v66 = 136315138;
                                            v68 = sub_1DD63FDD8();
                                            v70 = sub_1DD39565C(v68, v69, &v72);

                                            *(v66 + 4) = v70;
                                            _os_log_impl(&dword_1DD38D000, v64, v65, "unhandled INPersonHandleLabel: %s", v66, 0xCu);
                                            __swift_destroy_boxed_opaque_existential_1(v67);
                                            MEMORY[0x1E12B3DA0](v67, -1, -1);
                                            MEMORY[0x1E12B3DA0](v66, -1, -1);
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
      }
    }
  }

  return sub_1DD63FDD8();
}

id sub_1DD4E099C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1DD4E0A00(a3);
  v6 = objc_allocWithZone(MEMORY[0x1E696E960]);

  return [v6 initWithInterval:v5 frequency:a1 weeklyRecurrenceDays:a2];
}

uint64_t sub_1DD4E0A00(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.22337204e18)
  {
    return a1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t TerminalElement.Interval.toInterval()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  v6 = sub_1DD63E168();
  v8 = v7;
  sub_1DD63E158();
  v9 = sub_1DD63E118();
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    sub_1DD3ADFD0(v5, &qword_1ECCDD2A0, &qword_1DD64F420);
    v10 = 13;
  }

  else
  {
    sub_1DD548A5C();
    (*(*(v9 - 8) + 8))(v5, v9);
    v10 = v17[1];
  }

  v17[0] = v10;
  sub_1DD63E178();
  v11 = sub_1DD63E1B8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v11) == 1)
  {
    sub_1DD3ADFD0(v2, &qword_1ECCDD2B0, &qword_1DD64F430);
    v12 = 20;
  }

  else
  {
    TerminalElement.Qualifier.toQualifier()(&v16);
    (*(*(v11 - 8) + 8))(v2, v11);
    v12 = v16;
  }

  v15 = v12;
  type metadata accessor for DateTime.Interval();
  swift_allocObject();
  return DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(v6, v8 & 1, v17, &v15);
}

uint64_t DateTime.Interval.__allocating_init(withQuantity:timeUnit:)(char *a1, double a2)
{
  OUTLINED_FUNCTION_1_71();
  result = swift_allocObject();
  v5 = *a1;
  *(result + 16) = a2;
  *(result + 24) = 0;
  *(result + 25) = v5;
  *(result + 26) = 20;
  return result;
}

uint64_t DateTime.Interval.__allocating_init(withQuantity:timeUnit:qualifier:)(uint64_t a1, char a2, char *a3, char *a4)
{
  OUTLINED_FUNCTION_1_71();
  result = swift_allocObject();
  v9 = *a3;
  v10 = *a4;
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  *(result + 25) = v9;
  *(result + 26) = v10;
  return result;
}

uint64_t DateTime.Interval.init(withQuantity:timeUnit:)(char *a1, double a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = 0;
  *(v2 + 25) = v3;
  *(v2 + 26) = 20;
  return OUTLINED_FUNCTION_14_4();
}

uint64_t DateTime.Interval.__allocating_init(withTimeUnit:qualifier:)(_BYTE *a1, char *a2)
{
  OUTLINED_FUNCTION_1_71();
  result = swift_allocObject();
  v5 = *a2;
  *(result + 25) = *a1;
  *(result + 26) = v5;
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

uint64_t DateTime.Interval.init(withTimeUnit:qualifier:)(_BYTE *a1, char *a2)
{
  v3 = *a2;
  *(v2 + 25) = *a1;
  *(v2 + 26) = v3;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  return OUTLINED_FUNCTION_14_4();
}

uint64_t DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(uint64_t a1, char a2, char *a3, char *a4)
{
  v5 = *a3;
  v6 = *a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;
  *(v4 + 25) = v5;
  *(v4 + 26) = v6;
  return OUTLINED_FUNCTION_14_4();
}

uint64_t sub_1DD4E0DF8()
{
  if (*(v0 + 24) == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1DD640E48();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1E12B3170](v2);
  }

  v3 = *(v0 + 25);
  sub_1DD640E48();
  if (v3 != 13)
  {
    MEMORY[0x1E12B3140](v3);
  }

  v4 = *(v0 + 26);
  if (v4 == 20)
  {
    return sub_1DD640E48();
  }

  sub_1DD640E48();
  return MEMORY[0x1E12B3140](v4);
}

BOOL static DateTime.Interval.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 25);
  v4 = *(a2 + 25);
  if (v3 == 13)
  {
    if (v4 != 13)
    {
      return 0;
    }
  }

  else if (v3 != v4)
  {
    return 0;
  }

  v6 = *(a1 + 26);
  v7 = *(a2 + 26);
  v8 = v7 == 20;
  v9 = v6 == v7;
  if (v6 == 20)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1DD4E0F18()
{
  if (v0[24])
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    MEMORY[0x1E12B2260](0x797469746E617571, 0xE90000000000003DLL);
    sub_1DD640228();
    sub_1DD3BE2A4();
    v1 = v2;
    v3 = *(v2 + 16);
    if (v3 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v13;
    }

    *(v1 + 16) = v3 + 1;
    v4 = v1 + 16 * v3;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
  }

  if (v0[25] != 13)
  {
    MEMORY[0x1E12B2260](0x74696E55656D6974, 0xE90000000000003DLL);
    sub_1DD6409F8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v1 = v14;
    }

    v5 = *(v1 + 16);
    if (v5 >= *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v15;
    }

    *(v1 + 16) = v5 + 1;
    v6 = v1 + 16 * v5;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
  }

  if (v0[26] != 20)
  {
    MEMORY[0x1E12B2260](0x656966696C617571, 0xEA00000000003D72);
    sub_1DD6409F8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v1 = v16;
    }

    v7 = *(v1 + 16);
    if (v7 >= *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v17;
    }

    *(v1 + 16) = v7 + 1;
    v8 = v1 + 16 * v7;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v9 = sub_1DD63FD58();
  v11 = v10;

  MEMORY[0x1E12B2260](v9, v11);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0x6C61767265746E49;
}

uint64_t sub_1DD4E11D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E617571 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74696E55656D6974 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656966696C617571 && a2 == 0xE900000000000072)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD4E12F8(char a1)
{
  if (!a1)
  {
    return 0x797469746E617571;
  }

  if (a1 == 1)
  {
    return 0x74696E55656D6974;
  }

  return 0x656966696C617571;
}

uint64_t sub_1DD4E135C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4E11D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4E1384(uint64_t a1)
{
  v2 = sub_1DD4E1968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4E13C0(uint64_t a1)
{
  v2 = sub_1DD4E1968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD4E1418(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD20, &qword_1DD654A18);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4E1968();
  sub_1DD640EF8();
  v12[15] = 0;
  sub_1DD640BE8();
  if (!v2)
  {
    v12[14] = *(v3 + 25);
    v12[13] = 1;
    sub_1DD4E19BC();
    sub_1DD640C08();
    v12[12] = *(v3 + 26);
    v12[11] = 2;
    sub_1DD49FA54();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DD4E15CC()
{
  sub_1DD640E28();
  sub_1DD4E0DF8();
  return sub_1DD640E78();
}

uint64_t DateTime.Interval.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_1_71();
  v2 = swift_allocObject();
  DateTime.Interval.init(from:)(a1);
  return v2;
}

uint64_t DateTime.Interval.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD38, &qword_1DD654A20);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8 - 5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4E1968();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime.Interval();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14[2] = 0;
    *(v1 + 16) = sub_1DD640AF8();
    *(v1 + 24) = v10 & 1;
    v14[0] = 1;
    sub_1DD4E1A34();
    OUTLINED_FUNCTION_5_52(&type metadata for DateTime.TimeUnit, v14);
    *(v1 + 25) = v14[1];
    v13[0] = 2;
    sub_1DD49FB20();
    OUTLINED_FUNCTION_5_52(&type metadata for DateTime.Qualifier, v13);
    (*(v6 + 8))(v9, v4);
    *(v1 + 26) = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DD4E1890(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD4E0DF8();
  return sub_1DD640E78();
}

uint64_t sub_1DD4E18F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.Interval.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD4E1968()
{
  result = qword_1ECCDDD28;
  if (!qword_1ECCDDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD28);
  }

  return result;
}

unint64_t sub_1DD4E19BC()
{
  result = qword_1ECCDDD30;
  if (!qword_1ECCDDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD30);
  }

  return result;
}

unint64_t sub_1DD4E1A34()
{
  result = qword_1ECCDDD40;
  if (!qword_1ECCDDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD40);
  }

  return result;
}

unint64_t sub_1DD4E1A8C()
{
  result = qword_1ECCDDD48;
  if (!qword_1ECCDDD48)
  {
    type metadata accessor for DateTime.Interval();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD48);
  }

  return result;
}

_BYTE *_s8IntervalC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1DD4E1CE4()
{
  result = qword_1ECCDDD50;
  if (!qword_1ECCDDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD50);
  }

  return result;
}

unint64_t sub_1DD4E1D3C()
{
  result = qword_1ECCDDD58;
  if (!qword_1ECCDDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD58);
  }

  return result;
}

unint64_t sub_1DD4E1D94()
{
  result = qword_1ECCDDD60;
  if (!qword_1ECCDDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD60);
  }

  return result;
}

void sub_1DD4E1DE8(uint64_t a1, uint64_t a2, char a3)
{
  if ((*(a1 + 24) & 1) != 0 || *(a1 + 25) == 13)
  {
    return;
  }

  switch(*(a1 + 25))
  {
    case 1:
      OUTLINED_FUNCTION_0_92();
      if (!(v5 ^ v6 | v10))
      {
        goto LABEL_91;
      }

      if (v4 <= -9.22337204e18)
      {
        goto LABEL_98;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v5)
      {
        goto LABEL_105;
      }

      OUTLINED_FUNCTION_4_47(v7);
      v9 = v8 & 0xFE;
      v10 = v10 || v9 == 8;
      v11 = !v10;
      v12 = OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6(v12);
      OUTLINED_FUNCTION_1_72();
      v15 = 5;
      goto LABEL_89;
    case 4:
      OUTLINED_FUNCTION_0_92();
      if (!(v5 ^ v6 | v10))
      {
        goto LABEL_90;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v5)
      {
        goto LABEL_104;
      }

      OUTLINED_FUNCTION_4_47(v23);
      v25 = v24 & 0xFE;
      v11 = !v10 && v25 != 8;
      v27 = OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6(v27);
      OUTLINED_FUNCTION_1_72();
      v15 = 4;
      goto LABEL_89;
    case 6:
      OUTLINED_FUNCTION_0_92();
      if (!(v5 ^ v6 | v10))
      {
        goto LABEL_93;
      }

      if (v34 <= -9.22337204e18)
      {
        goto LABEL_100;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v5)
      {
        goto LABEL_107;
      }

      OUTLINED_FUNCTION_4_47(v35);
      v37 = v36 & 0xFE;
      v11 = !v10 && v37 != 8;
      v39 = OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6(v39);
      OUTLINED_FUNCTION_1_72();
      v15 = 2;
      goto LABEL_89;
    case 7:
      OUTLINED_FUNCTION_0_92();
      if (!(v5 ^ v6 | v10))
      {
        goto LABEL_94;
      }

      if (v40 <= -9.22337204e18)
      {
        goto LABEL_101;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v5)
      {
        goto LABEL_108;
      }

      OUTLINED_FUNCTION_4_47(v41);
      v43 = v42 & 0xFE;
      v11 = !v10 && v43 != 8;
      v45 = OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6(v45);
      OUTLINED_FUNCTION_1_72();
      v15 = 9;
      goto LABEL_89;
    case 0xA:
      OUTLINED_FUNCTION_0_92();
      if (!(v5 ^ v6 | v10))
      {
        goto LABEL_95;
      }

      if (v46 <= -9.22337204e18)
      {
        goto LABEL_102;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v5)
      {
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_4_47(v47);
      v49 = v48 & 0xFE;
      v11 = !v10 && v49 != 8;
      v51 = OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6(v51);
      OUTLINED_FUNCTION_1_72();
      v15 = 1;
      goto LABEL_89;
    case 0xB:
      OUTLINED_FUNCTION_0_92();
      if (!(v5 ^ v6 | v10))
      {
        __break(1u);
LABEL_90:
        __break(1u);
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
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
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
        return;
      }

      if (v16 <= -9.22337204e18)
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v5)
      {
        goto LABEL_103;
      }

      OUTLINED_FUNCTION_4_47(v17);
      v19 = v18 & 0xFE;
      v11 = !v10 && v19 != 8;
      v21 = OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6(v21);
      OUTLINED_FUNCTION_1_72();
      v15 = 8;
LABEL_89:
      sub_1DD48DFB4(v15, v13, a3, 1, v14, 1, v11, 0);
      return;
    case 0xC:
      OUTLINED_FUNCTION_0_92();
      if (!(v5 ^ v6 | v10))
      {
        goto LABEL_92;
      }

      if (v28 <= -9.22337204e18)
      {
        goto LABEL_99;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v5)
      {
        goto LABEL_106;
      }

      OUTLINED_FUNCTION_4_47(v29);
      v31 = v30 & 0xFE;
      v11 = !v10 && v31 != 8;
      v33 = OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6(v33);
      OUTLINED_FUNCTION_1_72();
      v15 = 11;
      goto LABEL_89;
    default:
      return;
  }
}

uint64_t OUTLINED_FUNCTION_3_49()
{

  return type metadata accessor for DateTimeConstraint();
}

uint64_t sub_1DD4E2140(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  while (v5)
  {
    v6 = v2;
LABEL_10:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + (v7 | (v6 << 6))) == (result & 1))
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v6);
    ++v2;
    if (v5)
    {
      v2 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1DD4E21DC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1DD4E220C(int64_t a1)
{
  v199 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  OUTLINED_FUNCTION_0_25(v1, &__dst[5]);
  v196 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_25(v4);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD68, &unk_1DD65F510);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_25(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD70, &qword_1DD654CC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_1_4();
  v198 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25(v183 - v11);
  v12 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_25(v14 - v13);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_25(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_1_4();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v183 - v22);
  k = type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_25(v26 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0_25(v27, &v222);
  v213 = v28;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_25(v30);
  v31 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  v35 = v34 - v33;
  if (qword_1EE166460 != -1)
  {
    goto LABEL_138;
  }

  while (1)
  {
    v36 = qword_1EE16F0C0;
    v37 = v35 + *(v31 + 20);
    *v37 = "CRR.IsFaceTimeableSignalProvider";
    *(v37 + 8) = 32;
    *(v37 + 16) = 2;
    v38 = v36;
    sub_1DD63F9B8();
    *(v35 + *(v31 + 24)) = v38;
    v39 = v38;
    v31 = sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1DD643F90;
    v41 = sub_1DD6408F8();
    v43 = v42;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = sub_1DD392BD8();
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    v183[0] = v39;
    v183[1] = v35;
    sub_1DD63F998();

    v44 = *v199;
    v45 = *(*v199 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    v190 = v20;
    v212 = v23;
    v188 = v44;
    v203 = v45;
    if (!v45)
    {
      v47 = MEMORY[0x1E69E7CC0];
      goto LABEL_34;
    }

    v46 = 0;
    v201 = v44 + 32;
    v47 = MEMORY[0x1E69E7CC0];
LABEL_4:
    if (v46 < *(v44 + 16))
    {
      break;
    }

LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

  v43 = *(v201 + 8 * v46);
  v214 = *(v43 + 16);
  if (!v214)
  {
    goto LABEL_31;
  }

  v204 = v46;
  v211 = v43 + ((*(v213 + 80) + 32) & ~*(v213 + 80));

  v20 = 0;
  v205 = v43;
  while (v20 < *(v43 + 16))
  {
    v48 = v206;
    sub_1DD4DDC08(v211 + *(v213 + 72) * v20, v206, &qword_1ECCDBBE8, &qword_1DD644470);
    v49 = v208;
    sub_1DD3CE214(v48, v208, type metadata accessor for Contact);
    sub_1DD390754(v48, &qword_1ECCDBBE8, &qword_1DD644470);
    v50 = *(v49 + *(k + 80));

    sub_1DD4E72EC(v49, type metadata accessor for Contact);
    v41 = *(v50 + 16);
    if (v41)
    {
      v210 = v47;
      v222 = v35;
      sub_1DD42A2D4(0, v41, 0, v51, v52, v53, v54);
      v55 = v222;
      v56 = v41 - 1;
      for (i = 32; ; i += 80)
      {
        memcpy(__dst, (v50 + i), 0x4AuLL);
        if (LOBYTE(__dst[2]))
        {
          if (LOBYTE(__dst[2]) == 1)
          {
            sub_1DD3C6A40(__dst, &v215);
            v58 = 0xE700000000000000;
            v59 = 0x3A6F746C69616DLL;
          }

          else
          {
            sub_1DD3C6A40(__dst, &v215);
            v58 = 0xE400000000000000;
            v59 = 980182388;
          }
        }

        else
        {
          v219 = __dst[5];
          v220 = __dst[6];
          v217 = 64;
          v218 = 0xE100000000000000;
          sub_1DD3C6A40(__dst, &v215);
          sub_1DD3B7F10();
          v60 = sub_1DD6406D8();
          v59 = 980182388;
          if (v60)
          {
            v59 = 0x3A6F746C69616DLL;
          }

          v58 = 0xE400000000000000;
          if (v60)
          {
            v58 = 0xE700000000000000;
          }
        }

        v215 = v59;
        v216 = v58;
        MEMORY[0x1E12B2260](__dst[7], __dst[8]);
        sub_1DD3C6A9C(__dst);
        v65 = v215;
        v66 = v216;
        v222 = v55;
        v68 = *(v55 + 16);
        v67 = *(v55 + 24);
        v41 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          sub_1DD42A2D4(v67 > 1, v68 + 1, 1, v61, v62, v63, v64);
          v55 = v222;
        }

        *(v55 + 16) = v41;
        v69 = v55 + 16 * v68;
        *(v69 + 32) = v65;
        *(v69 + 40) = v66;
        if (!v56)
        {
          break;
        }

        --v56;
      }

      v47 = v210;
      v35 = MEMORY[0x1E69E7CC0];
      v43 = v205;
    }

    else
    {

      v55 = v35;
    }

    v31 = sub_1DD41859C(v55);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BF7D8(0, *(v47 + 16) + 1, 1, v47);
      v47 = v72;
    }

    v23 = v212;
    v71 = *(v47 + 16);
    v70 = *(v47 + 24);
    if (v71 >= v70 >> 1)
    {
      sub_1DD3BF7D8(v70 > 1, v71 + 1, 1, v47);
      v47 = v73;
    }

    ++v20;
    *(v47 + 16) = v71 + 1;
    *(v47 + 8 * v71 + 32) = v31;
    if (v20 == v214)
    {

      v44 = v188;
      v46 = v204;
LABEL_31:
      if (++v46 == v203)
      {
LABEL_34:
        v210 = v47;
        v31 = sub_1DD4E3720(v47);
        v74 = sub_1DD63FC88();
        v208 = v31 + 64;
        OUTLINED_FUNCTION_4_1();
        v20 = v76 & v75;
        v206 = (v77 + 63) >> 6;
        k = v31;

        v78 = 0;
        while (1)
        {
          v214 = v74;
          if (!v20)
          {
            while (1)
            {
              v35 = v78 + 1;
              if (__OFADD__(v78, 1))
              {
                __break(1u);
                goto LABEL_133;
              }

              if (v35 >= v206)
              {
                break;
              }

              v20 = *(v208 + 8 * v35);
              ++v78;
              if (v20)
              {
                goto LABEL_40;
              }
            }

            if (qword_1EE165FB0 != -1)
            {
              OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
            }

            v99 = sub_1DD63F9F8();
            __swift_project_value_buffer(v99, qword_1EE16F068);
            v100 = v214;

            v101 = sub_1DD63F9D8();
            v102 = sub_1DD640368();

            if (os_log_type_enabled(v101, v102))
            {
              v41 = swift_slowAlloc();
              v43 = swift_slowAlloc();
              __dst[0] = v43;
              *v41 = 136315138;
              v103 = sub_1DD63FC68();
              v20 = v104;
              v105 = sub_1DD39565C(v103, v104, __dst);

              *(v41 + 4) = v105;
              _os_log_impl(&dword_1DD38D000, v101, v102, "IsFaceTimeableSignalProvider::addSignals - handle IDS support: %s", v41, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v43);
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_0_1();
            }

            v35 = v199;
            v106 = v197;
            OUTLINED_FUNCTION_35_12();

            v107 = sub_1DD4E2140(1, v100);

            v31 = sub_1DD63F9D8();
            v108 = sub_1DD640368();
            if (os_log_type_enabled(v31, v108))
            {
              if (v107)
              {
                v109 = "IsFaceTimeableSignalProvider::addSignals - some handles support IDS/FaceTime";
              }

              else
              {
                v109 = "IsFaceTimeableSignalProvider::addSignals - No handles support IDS/FaceTime";
              }

              v110 = OUTLINED_FUNCTION_9();
              *v110 = 0;
              _os_log_impl(&dword_1DD38D000, v31, v108, v109, v110, 2u);
              v41 = v198;
              OUTLINED_FUNCTION_0_1();
            }

            v111 = v188;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v113 = v111;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1DD586A30();
              v111 = v188;
              v113 = v182;
            }

            v204 = v113 + 32;
            v208 = v113;
            *v35 = v113;
            v114 = v196;
            OUTLINED_FUNCTION_25_13();
            v185 = v117;
            v184 = v115;
            while (v116 != v115)
            {
              if (v116 >= *(v111 + 16))
              {
                goto LABEL_137;
              }

              v205 = v116;
              v186 = v116 + 1;
              OUTLINED_FUNCTION_36_12();
              v192 = v118;

              for (j = 0; ; j = v193)
              {
                v120 = *(v192 + 16);
                if (j == v120)
                {
                  v193 = j;
                  v121 = 1;
                  v31 = v191;
                  v122 = v190;
                }

                else
                {
                  v31 = v191;
                  if (j >= v120)
                  {
                    goto LABEL_134;
                  }

                  v123 = j + 1;
                  OUTLINED_FUNCTION_50_12();
                  v128 = v192 + (v125 & ~v124) + *(v126 + 72) * v127;
                  v129 = *(v31 + 48);
                  v130 = v187;
                  *v187 = v127;
                  sub_1DD4DDC08(v128, v130 + v129, &qword_1ECCDBBE8, &qword_1DD644470);
                  v131 = v130;
                  v122 = v190;
                  sub_1DD4DDCBC(v131, v190, &qword_1ECCDC238, &unk_1DD654E40);
                  v121 = 0;
                  v193 = v123;
                }

                __swift_storeEnumTagSinglePayload(v122, v121, 1, v31);
                sub_1DD4DDCBC(v122, v23, &qword_1ECCDC240, &qword_1DD645AA0);
                if (__swift_getEnumTagSinglePayload(v23, 1, v31) == 1)
                {
                  break;
                }

                v206 = *v23;
                v132 = v23 + *(v31 + 48);
                v133 = v189;
                sub_1DD3CE214(v132 + *(v207 + 36), v189, type metadata accessor for ContactResolver.SignalSet);
                sub_1DD390754(v132, &qword_1ECCDBBE8, &qword_1DD644470);
                v134 = *(v133 + 272);

                sub_1DD4E72EC(v133, type metadata accessor for ContactResolver.SignalSet);
                v135 = 0;
                OUTLINED_FUNCTION_36_12();
                OUTLINED_FUNCTION_25_13();
                v211 = v134;
                for (k = v136; ; v136 = k)
                {
                  if (v135 == v136)
                  {
                    v137 = 1;
                    v135 = v136;
                  }

                  else
                  {
                    if ((v135 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_118;
                    }

                    if (v135 >= *(v134 + 16))
                    {
                      goto LABEL_119;
                    }

                    v132 = v135 + 1;
                    v138 = v134 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v135;
                    v139 = *(v43 + 48);
                    v140 = v200;
                    *v200 = v135;
                    sub_1DD4DDC08(v138, v140 + v139, &qword_1ECCDBBD8, &unk_1DD645A90);
                    sub_1DD4DDCBC(v140, v41, &qword_1ECCDDD68, &unk_1DD65F510);
                    ++v135;
                    OUTLINED_FUNCTION_25_13();
                  }

                  __swift_storeEnumTagSinglePayload(v41, v137, 1, v43);
                  sub_1DD4DDCBC(v41, v20, &qword_1ECCDDD70, &qword_1DD654CC0);
                  if (__swift_getEnumTagSinglePayload(v20, 1, v43) == 1)
                  {
                    break;
                  }

                  v141 = *v20;
                  sub_1DD4DDCBC(v20 + *(v43 + 48), v106, &qword_1ECCDBBD8, &unk_1DD645A90);
                  if (*(v132 + 16) && (OUTLINED_FUNCTION_25_13(), sub_1DD3978DC(), OUTLINED_FUNCTION_25_13(), (v143 & 1) != 0))
                  {
                    LODWORD(v203) = *(*(v132 + 56) + v142);
                    if (v203)
                    {
                      v144 = 0;
                      v145 = v208;
                      v146 = v205;
                    }

                    else
                    {
                      v145 = v208;
                      v146 = v205;
                      if (*(v106 + 16) == 1)
                      {
                        v144 = 1;
                      }

                      else
                      {
                        v144 = *(v194 + 48) ^ 1;
                      }
                    }

                    if (v146 >= *(v145 + 16))
                    {
                      goto LABEL_120;
                    }

                    v147 = v204;
                    v148 = *(v204 + 8 * v146);
                    v149 = swift_isUniquelyReferenced_nonNull_native();
                    *(v147 + 8 * v146) = v148;
                    if ((v149 & 1) == 0)
                    {
                      sub_1DD586A18();
                      v148 = v175;
                      *(v204 + 8 * v146) = v175;
                    }

                    if ((v206 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_121;
                    }

                    if (v206 >= *(v148 + 16))
                    {
                      goto LABEL_122;
                    }

                    OUTLINED_FUNCTION_50_12();
                    v152 = *(v150 + 72) * v151;
                    OUTLINED_FUNCTION_23_20();
                    v154 = v153 + v152;
                    v155 = *(v153 + v152 + 272);
                    v156 = swift_isUniquelyReferenced_nonNull_native();
                    *(v154 + 272) = v155;
                    if (v156)
                    {
                      if ((v141 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_123;
                      }
                    }

                    else
                    {
                      sub_1DD586A48();
                      v155 = v176;
                      *(v154 + 272) = v176;
                      if ((v141 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_123;
                      }
                    }

                    if (v141 >= *(v155 + 16))
                    {
                      goto LABEL_124;
                    }

                    LODWORD(v201) = v144;
                    v43 = (*(v114 + 80) + 32) & ~*(v114 + 80);
                    v20 = *(v114 + 72) * v141;
                    *(v155 + v43 + v20 + 73) = v203;
                    *(v154 + 272) = v155;
                    v157 = v205;
                    if (v205 >= *(v145 + 16))
                    {
                      goto LABEL_125;
                    }

                    v158 = v204;
                    v159 = *(v204 + 8 * v205);
                    v160 = swift_isUniquelyReferenced_nonNull_native();
                    *(v158 + 8 * v157) = v159;
                    if ((v160 & 1) == 0)
                    {
                      sub_1DD586A18();
                      v159 = v177;
                      *(v204 + 8 * v157) = v177;
                    }

                    if (v206 >= *(v159 + 16))
                    {
                      goto LABEL_126;
                    }

                    OUTLINED_FUNCTION_23_20();
                    v162 = v161 + v152;
                    v163 = *(v161 + v152 + 272);
                    v164 = swift_isUniquelyReferenced_nonNull_native();
                    *(v162 + 272) = v163;
                    if ((v164 & 1) == 0)
                    {
                      sub_1DD586A48();
                      v163 = v178;
                      *(v162 + 272) = v178;
                    }

                    if (v141 >= *(v163 + 16))
                    {
                      goto LABEL_127;
                    }

                    v165 = v163 + v43 + v20 + *(v202 + 36);
                    v166 = type metadata accessor for ContactResolver.HandleSignalSet(0);
                    *(v165 + *(v166 + 52)) = v203;
                    *(v162 + 272) = v163;
                    if (v205 >= *(v208 + 16))
                    {
                      goto LABEL_128;
                    }

                    v132 = v166;
                    v167 = v205;
                    v168 = v204;
                    v169 = *(v204 + 8 * v205);
                    v170 = swift_isUniquelyReferenced_nonNull_native();
                    *(v168 + 8 * v167) = v169;
                    if ((v170 & 1) == 0)
                    {
                      sub_1DD586A18();
                      v169 = v179;
                      *(v204 + 8 * v205) = v179;
                    }

                    v23 = v212;
                    if (v206 >= *(v169 + 16))
                    {
                      goto LABEL_129;
                    }

                    OUTLINED_FUNCTION_23_20();
                    v172 = v171 + v152;
                    v41 = *(v171 + v152 + 272);
                    v173 = swift_isUniquelyReferenced_nonNull_native();
                    *(v172 + 272) = v41;
                    if ((v173 & 1) == 0)
                    {
                      sub_1DD586A48();
                      *(v172 + 272) = v180;
                    }

                    v106 = v197;
                    sub_1DD390754(v197, &qword_1ECCDBBD8, &unk_1DD645A90);
                    v174 = *(v172 + 272);
                    if (v141 >= *(v174 + 16))
                    {
                      goto LABEL_130;
                    }

                    *(v174 + v43 + v20 + *(v202 + 36) + *(v132 + 56)) = v201 & 1;
                    *(v172 + 272) = v174;
                    v35 = v199;
                    OUTLINED_FUNCTION_36_12();
                    v114 = v196;
                    OUTLINED_FUNCTION_35_12();
                    OUTLINED_FUNCTION_25_13();
                  }

                  else
                  {
                    sub_1DD390754(v106, &qword_1ECCDBBD8, &unk_1DD645A90);
                  }

                  v134 = v211;
                }
              }

              v111 = v188;
              OUTLINED_FUNCTION_25_13();
              v115 = v184;
            }

            goto LABEL_131;
          }

          v35 = v78;
LABEL_40:
          v79 = __clz(__rbit64(v20)) | (v35 << 6);
          v80 = (*(k + 48) + 16 * v79);
          v41 = *v80;
          v81 = v80[1];
          v82 = *(*(k + 56) + v79);
          __dst[0] = *v80;
          __dst[1] = v81;
          v215 = 980182388;
          v216 = 0xE400000000000000;
          sub_1DD3B52B8();
          sub_1DD3B530C();

          v83 = OUTLINED_FUNCTION_56_7(&v215);
          LODWORD(v211) = v82;
          if (v83)
          {
            break;
          }

          __dst[0] = v41;
          __dst[1] = v81;
          v215 = 0x3A6F746C69616DLL;
          v216 = 0xE700000000000000;
          v31 = OUTLINED_FUNCTION_56_7(&v215);

          if (v31)
          {
            goto LABEL_43;
          }

          v23 = v81;
LABEL_45:
          OUTLINED_FUNCTION_25_13();
          swift_isUniquelyReferenced_nonNull_native();
          __dst[0] = v31;
          sub_1DD3978DC();
          OUTLINED_FUNCTION_7_5();
          if (__OFADD__(v90, v91))
          {
            goto LABEL_135;
          }

          v43 = v88;
          v92 = v89;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD78, &unk_1DD654CC8);
          v31 = __dst;
          if (sub_1DD640A08())
          {
            v31 = __dst[0];
            v93 = sub_1DD3978DC();
            if ((v92 & 1) != (v94 & 1))
            {
              result = sub_1DD640D58();
              __break(1u);
              return result;
            }

            v43 = v93;
          }

          v20 &= v20 - 1;
          if (v92)
          {

            v74 = __dst[0];
            OUTLINED_FUNCTION_46_4();
          }

          else
          {
            v74 = __dst[0];
            OUTLINED_FUNCTION_26_19(__dst[0] + 8 * (v43 >> 6));
            v95 = (*(v74 + 48) + 16 * v43);
            *v95 = v41;
            v95[1] = v23;
            OUTLINED_FUNCTION_46_4();
            v96 = *(v74 + 16);
            v97 = __OFADD__(v96, 1);
            v98 = v96 + 1;
            if (v97)
            {
              goto LABEL_136;
            }

            *(v74 + 16) = v98;
          }

          v78 = v35;
          v23 = v212;
        }

LABEL_43:
        v84 = sub_1DD63FF08();
        v85 = sub_1DD4127E0(v84, v41, v81);
        v31 = v86;
        v41 = MEMORY[0x1E12B2190](v85);
        v23 = v87;

        goto LABEL_45;
      }

      goto LABEL_4;
    }
  }

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
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:

  sub_1DD6404C8();
  sub_1DD63F9A8();
  return OUTLINED_FUNCTION_20_22();
}

uint64_t sub_1DD4E3720(uint64_t a1)
{
  v2 = sub_1DD63FB58();
  v3 = OUTLINED_FUNCTION_0_25(v2, &v160);
  v143 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_25(v6 - v5);
  v7 = sub_1DD63FC18();
  v8 = OUTLINED_FUNCTION_0_25(v7, &v161);
  v150 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  v141 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v147 = v137 - v13;
  isa = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  if (qword_1EE166460 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v19 = qword_1EE16F0C0;
    v20 = v18 + isa[5];
    *v20 = "CRR.IDSLookup";
    *(v20 + 8) = 13;
    *(v20 + 16) = 2;
    v21 = v19;
    sub_1DD63F9B8();
    *(v18 + isa[6]) = v21;
    v22 = v21;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DD643F90;
    v24 = sub_1DD6408F8();
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DD392BD8();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v148 = v22;
    v149 = v18;
    sub_1DD63F998();

    v27 = *(a1 + 16);
    v28 = MEMORY[0x1E69E7CC0];
    v29 = 32;
    if (!v27)
    {
      break;
    }

    while (1)
    {
      v18 = *(a1 + v29);
      isa = *(v18 + 16);
      if (isa)
      {
        v154 = v29;
        v155 = v27;
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
        v31 = OUTLINED_FUNCTION_45_10(v30);
        _swift_stdlib_malloc_size(v31);
        OUTLINED_FUNCTION_22_18();
        v31[2] = isa;
        v31[3] = v32;
        sub_1DD5D4EFC();
        v156 = v33;
        v34 = v159[0];

        sub_1DD3AA5A4(v34);
        if (v156 != isa)
        {
          goto LABEL_83;
        }

        v29 = v154;
        v27 = v155;
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      v18 = v31[2];
      isa = v28[2].isa;
      if (__OFADD__(isa, v18))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || isa + v18 > (v28[3].isa >> 1))
      {
        sub_1DD3BE2A4();
        v28 = v35;
      }

      if (v31[2])
      {
        if (((v28[3].isa >> 1) - v28[2].isa) < v18)
        {
          goto LABEL_84;
        }

        swift_arrayInitWithCopy();

        if (v18)
        {
          v36 = v28[2].isa;
          v37 = __OFADD__(v36, v18);
          v38 = (v36 + v18);
          if (v37)
          {
            goto LABEL_88;
          }

          v28[2].isa = v38;
        }
      }

      else
      {

        if (v18)
        {
          goto LABEL_82;
        }
      }

      v29 += 8;
      if (!--v27)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
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
LABEL_97:
    __break(1u);
LABEL_98:
    OUTLINED_FUNCTION_4_2(&qword_1EE166460);
  }

LABEL_18:
  v39 = sub_1DD63FDD8();
  v41 = sub_1DD4E45C4(v39, v40, v28);

  v140 = *MEMORY[0x1E69A47F0];
  v42 = sub_1DD63FDD8();
  v44 = sub_1DD4E45C4(v42, v43, v28);

  v45 = *MEMORY[0x1E69A47E8];
  v46 = sub_1DD63FDD8();
  v48 = sub_1DD4E45C4(v46, v47, v28);

  v49 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v159[0] = v49;
  sub_1DD4E7058(v41, sub_1DD4E7438, 0, isUniquelyReferenced_nonNull_native, v159);
  v51 = v159[0];
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v159[0] = v51;
  sub_1DD4E7058(v48, sub_1DD4E7438, 0, v52, v159);
  isa = v159[0];
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v159[0] = isa;
  sub_1DD4E7058(v44, sub_1DD4E7438, 0, v53, v159);
  v146 = 0;
  v152 = v159[0];
  v18 = sub_1DD4E4D00(a1, v159[0]);
  v154 = *(v18 + 16);
  if (!v154)
  {

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v85 = sub_1DD63F9F8();
    __swift_project_value_buffer(v85, qword_1EE16F068);
    v86 = sub_1DD63F9D8();
    v87 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_5_6(v87))
    {
      goto LABEL_72;
    }

    v88 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v88);
    v91 = "IsFaceTimeableSignalProvider::fetchIsFaceTimeable - Stopping FaceTime support search because FaceTime support is known from local cache lookup";
    goto LABEL_71;
  }

  v137[1] = v45;
  v138 = sub_1DD63FDD8();
  v139 = v54;
  v55 = 0;
  v56 = MEMORY[0x1E69E7CC0];
  v153 = v18;
  while (v154 != v55)
  {
    if (v55 >= *(v18 + 16))
    {
      goto LABEL_85;
    }

    isa = *(*(v18 + 8 * v55 + 32) + 16);
    if (isa)
    {
      v155 = v55;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v58 = OUTLINED_FUNCTION_45_10(v57);
      _swift_stdlib_malloc_size(v58);
      OUTLINED_FUNCTION_22_18();
      v58[2] = isa;
      v58[3] = v59;
      OUTLINED_FUNCTION_49_8();
      sub_1DD5D4EFC();
      v156 = v60;
      v61 = v159[0];
      v18 = v159[1];
      a1 = v159[3];

      sub_1DD3AA5A4(v61);
      if (v156 != isa)
      {
        goto LABEL_89;
      }

      v18 = v153;
      v55 = v155;
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
    }

    isa = v58[2];
    v62 = *(v56 + 16);
    if (__OFADD__(v62, isa))
    {
      goto LABEL_86;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || isa + v62 > *(v56 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v56 = v63;
    }

    if (v58[2])
    {
      if ((*(v56 + 24) >> 1) - *(v56 + 16) < isa)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_49_8();
      swift_arrayInitWithCopy();

      if (isa)
      {
        v64 = *(v56 + 16);
        v37 = __OFADD__(v64, isa);
        v65 = isa + v64;
        if (v37)
        {
          goto LABEL_94;
        }

        *(v56 + 16) = v65;
      }
    }

    else
    {

      if (isa)
      {
        goto LABEL_87;
      }
    }

    ++v55;
  }

  v66 = sub_1DD4E4FB8(v138, v139, v56);

  v67 = v152;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v159[0] = v67;
  v69 = v146;
  sub_1DD4E7058(v66, sub_1DD4E7438, 0, v68, v159);
  v152 = v159[0];
  v70 = sub_1DD4E4D00(v18, v66);

  v155 = *(v70 + 16);
  if (!v155)
  {

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v120 = sub_1DD63F9F8();
    __swift_project_value_buffer(v120, qword_1EE16F068);
    v86 = sub_1DD63F9D8();
    v121 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_5_6(v121))
    {
      goto LABEL_72;
    }

    v122 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v122);
    v91 = "IsFaceTimeableSignalProvider::fetchIsFaceTimeable - Stopping FaceTime support search because FaceTime support is known from IDSServiceNameFaceTimeMulti search";
LABEL_71:
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v89, v90, v91);
    OUTLINED_FUNCTION_23_0();
LABEL_72:

    goto LABEL_80;
  }

  v146 = v69;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
  }

  v71 = sub_1DD63F9F8();
  v153 = __swift_project_value_buffer(v71, qword_1EE16F068);
  isa = sub_1DD63F9D8();
  v72 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v72))
  {
    v73 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v73);
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v74, v75, "IsFaceTimeableSignalProvider::fetchIsFaceTimeable - Starting legacy IDS (IDSServiceNameFaceTime & IDSServiceNameCalling) search for FaceTime support");
    OUTLINED_FUNCTION_23_0();
  }

  v18 = 0;
  v76 = MEMORY[0x1E69E7CC0];
  v154 = v70;
  while (v155 != v18)
  {
    if (v18 >= *(v70 + 16))
    {
      goto LABEL_91;
    }

    isa = *(*(v70 + 8 * v18 + 32) + 16);
    if (isa)
    {
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v78 = OUTLINED_FUNCTION_45_10(v77);
      _swift_stdlib_malloc_size(v78);
      OUTLINED_FUNCTION_22_18();
      v78[2] = isa;
      v78[3] = v79;
      OUTLINED_FUNCTION_49_8();
      sub_1DD5D4EFC();
      v156 = v80;
      a1 = v159[0];

      sub_1DD3AA5A4(a1);
      if (v156 != isa)
      {
        goto LABEL_95;
      }

      v70 = v154;
    }

    else
    {
      v78 = MEMORY[0x1E69E7CC0];
    }

    isa = v78[2];
    v81 = *(v76 + 16);
    if (__OFADD__(v81, isa))
    {
      goto LABEL_92;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || isa + v81 > *(v76 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v76 = v82;
    }

    if (v78[2])
    {
      if ((*(v76 + 24) >> 1) - *(v76 + 16) < isa)
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_49_8();
      swift_arrayInitWithCopy();

      if (isa)
      {
        v83 = *(v76 + 16);
        v37 = __OFADD__(v83, isa);
        v84 = isa + v83;
        if (v37)
        {
          goto LABEL_97;
        }

        *(v76 + 16) = v84;
      }
    }

    else
    {

      if (isa)
      {
        goto LABEL_93;
      }
    }

    ++v18;
  }

  v92 = swift_allocObject();
  v93 = MEMORY[0x1E69E7CC8];
  *(v92 + 16) = MEMORY[0x1E69E7CC8];
  v94 = (v92 + 16);
  v95 = swift_allocObject();
  *(v95 + 16) = v93;
  v96 = dispatch_group_create();
  dispatch_group_enter(v96);
  dispatch_group_enter(v96);
  v97 = sub_1DD63FDD8();
  v99 = v98;
  OUTLINED_FUNCTION_18_9();
  v100 = swift_allocObject();
  *(v100 + 16) = v92;
  *(v100 + 24) = v96;
  v156 = v92;

  v101 = v96;
  v102 = v97;
  v103 = v151;
  sub_1DD4E55E8(v102, v99, v76, sub_1DD4E747C, v100);

  v104 = sub_1DD63FDD8();
  v106 = v105;
  OUTLINED_FUNCTION_18_9();
  v107 = swift_allocObject();
  *(v107 + 16) = v95;
  *(v107 + 24) = v101;
  v108 = v101;

  sub_1DD4E55E8(v104, v106, v76, sub_1DD4E75C0, v107);

  OUTLINED_FUNCTION_25_13();
  sub_1DD63FBE8();
  v109 = v142;
  *v142 = 2500;
  v110 = v143;
  v111 = v144;
  (*(v143 + 104))(v109, *MEMORY[0x1E69E7F38], v144);
  sub_1DD63FBF8();
  (*(v110 + 8))(v109, v111);
  v112 = *(v150 + 8);
  v113 = v145;
  v150 += 8;
  v112(v103, v145);
  if (sub_1DD640408())
  {

    v114 = sub_1DD63F9D8();
    v115 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v115))
    {
      v116 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v116);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v117, v118, "IsFaceTimeableSignalProvider::fetchIsFaceTimeable - IDS legacy lookup timed out");
      OUTLINED_FUNCTION_23_0();
      v119 = v108;
    }

    else
    {
      v119 = v114;
      v114 = v108;
    }

    v112(v147, v113);
  }

  else
  {
    swift_beginAccess();
    v123 = *v94;

    v124 = v152;
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v158[0] = v124;
    sub_1DD4E7058(v123, sub_1DD4E7438, 0, v125, v158);
    v126 = v158[0];
    swift_beginAccess();
    v127 = *(v95 + 16);

    v128 = swift_isUniquelyReferenced_nonNull_native();
    v157 = v126;
    sub_1DD4E7058(v127, sub_1DD4E7438, 0, v128, &v157);

    v152 = v157;

    v129 = sub_1DD63F9D8();
    v130 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v130))
    {
      v131 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v131);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v132, v133, "IsFaceTimeableSignalProvider::fetchIsFaceTimeable - IDS lookups complete");
      OUTLINED_FUNCTION_23_0();
      v134 = v108;
    }

    else
    {
      v134 = v129;
      v129 = v108;
    }

    v135 = v145;

    v112(v147, v135);
  }

LABEL_80:
  sub_1DD6404C8();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_20_22();
  return v152;
}

uint64_t sub_1DD4E45C4(NSObject *a1, unint64_t a2, NSObject *a3)
{
  v4 = v3;
  v71 = a3;
  v7 = sub_1DD63FB58();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v64 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1DD63FC18();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DD63FC88();
  v57 = (v15 + 16);
  v61 = dispatch_semaphore_create(0);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD63F9F8();
  v17 = __swift_project_value_buffer(v16, qword_1EE16F068);

  v62 = v17;
  v18 = sub_1DD63F9D8();
  v19 = sub_1DD640368();

  v20 = os_log_type_enabled(v18, v19);
  v67 = v10;
  v68 = v9;
  v69 = v14;
  v60 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v72[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1DD39565C(a1, a2, v72);
    _os_log_impl(&dword_1DD38D000, v18, v19, "IsFaceTimeableSignalProvider::lookupLocally - starting IDS local lookup for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1E12B3DA0](v22, -1, -1);
    MEMORY[0x1E12B3DA0](v21, -1, -1);
  }

  v23 = a1;
  v24 = v4[3];
  v25 = v4[4];
  v59 = __swift_project_boxed_opaque_existential_1(v4, v24);
  v26 = sub_1DD3FDCD4(v71);
  v58 = sub_1DD63FDD8();
  v28 = v27;
  v29 = v4[5];
  v30 = swift_allocObject();
  v31 = v61;
  *(v30 + 16) = v15;
  *(v30 + 24) = v31;
  v32 = v15;
  v33 = *(v25 + 8);
  v70 = v32;

  v71 = v31;
  v61 = v23;
  v34 = v60;
  v33(v26, v23, v60, v58, v28, v29, sub_1DD4E74E4, v30, v24, v25);

  v35 = v63;
  sub_1DD63FBE8();
  v37 = v64;
  v36 = v65;
  *v64 = 50;
  v38 = v66;
  (*(v36 + 104))(v37, *MEMORY[0x1E69E7F38], v66);
  v39 = v69;
  sub_1DD63FBF8();
  (*(v36 + 8))(v37, v38);
  v40 = v68;
  v41 = *(v67 + 8);
  v41(v35, v68);
  LOBYTE(v38) = sub_1DD6404E8();

  if (v38)
  {
    v42 = sub_1DD63F9D8();
    v43 = sub_1DD640368();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v72[0] = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_1DD39565C(v61, v34, v72);
      _os_log_impl(&dword_1DD38D000, v42, v43, "IsFaceTimeableSignalProvider::lookupLocally - IDS local lookup timed out for %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1E12B3DA0](v45, -1, -1);
      MEMORY[0x1E12B3DA0](v44, -1, -1);
    }

    v46 = sub_1DD63FC88();
    v41(v39, v40);
  }

  else
  {

    v47 = sub_1DD63F9D8();
    v48 = sub_1DD640368();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v72[0] = v67;
      *v49 = 136315394;
      *(v49 + 4) = sub_1DD39565C(v61, v34, v72);
      *(v49 + 12) = 2080;
      v50 = v57;
      swift_beginAccess();

      v51 = sub_1DD63FC68();
      v53 = v52;

      v54 = sub_1DD39565C(v51, v53, v72);

      *(v49 + 14) = v54;
      _os_log_impl(&dword_1DD38D000, v47, v48, "IsFaceTimeableSignalProvider::lookupLocally - IDS local lookup for %s ended. Found %s.", v49, 0x16u);
      v55 = v67;
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v55, -1, -1);
      MEMORY[0x1E12B3DA0](v49, -1, -1);

      v41(v69, v40);
    }

    else
    {

      v41(v39, v40);
      v50 = v57;
    }

    swift_beginAccess();
    v46 = *v50;
  }

  return v46;
}

uint64_t sub_1DD4E4D00(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v29 = result + 32;
  v30 = *(result + 16);
  v28 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = v3;
  if (v3 == v30)
  {
    return v28;
  }

  if (v3 >= v30)
  {
    goto LABEL_40;
  }

  ++v3;
  if (!__OFADD__(v4, 1))
  {
    v5 = *(v29 + 8 * v4);
    v6 = v5 + 56;
    v7 = 1 << *(v5 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v5 + 56);
    v10 = (v7 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v11 = 0;
    while (v9)
    {
      v12 = v9;
LABEL_15:
      v9 = (v12 - 1) & v12;
      if (*(a2 + 16))
      {

        v14 = sub_1DD3978DC();
        if (v15)
        {
          v16 = *(*(a2 + 56) + v14);

          if (v16)
          {
LABEL_36:

            goto LABEL_2;
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v13 >= v10)
      {
        break;
      }

      v12 = *(v6 + 8 * v13);
      ++v11;
      if (v12)
      {
        v11 = v13;
        goto LABEL_15;
      }
    }

    v17 = 1 << *(v5 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v5 + 56);
    v20 = (v17 + 63) >> 6;

    v21 = 0;
    while (v19)
    {
LABEL_29:
      if (*(a2 + 16))
      {
        v19 &= v19 - 1;

        sub_1DD3978DC();
        v24 = v23;

        if (v24)
        {
          continue;
        }
      }

      v25 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DD42B8FC(0, *(v28 + 16) + 1, 1);
        v25 = v28;
      }

      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_1DD42B8FC(v26 > 1, v27 + 1, 1);
        v25 = v28;
      }

      *(v25 + 16) = v27 + 1;
      v28 = v25;
      *(v25 + 8 * v27 + 32) = v5;
      goto LABEL_2;
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {
        goto LABEL_36;
      }

      v19 = *(v6 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        goto LABEL_29;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4E4FB8(uint64_t a1, unint64_t a2, char *a3)
{
  v47 = a2;
  v48 = a3;
  v4 = sub_1DD63FB58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_1DD63FC18();
  v51 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1DD63FC88();
  v45 = (v13 + 16);
  v14 = dispatch_semaphore_create(0);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v52 = v13;

  v16 = v14;
  v46 = a1;
  v17 = v47;
  sub_1DD4E55E8(a1, v47, v48, sub_1DD4E74A0, v15);

  sub_1DD63FBE8();
  *v7 = 2500;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F38], v4);
  sub_1DD63FBF8();
  (*(v5 + 8))(v7, v4);
  v18 = v49;
  v19 = v51 + 8;
  v20 = *(v51 + 8);
  v20(v9, v49);
  if (sub_1DD6404E8())
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD63F9F8();
    __swift_project_value_buffer(v21, qword_1EE16F068);
    v22 = v17;

    v23 = sub_1DD63F9D8();
    v24 = sub_1DD640368();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v16;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v22;
      v29 = v27;
      v53[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1DD39565C(v46, v28, v53);
      _os_log_impl(&dword_1DD38D000, v23, v24, "IsFaceTimeableSignalProvider::lookup - IDS lookup timed out for %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12B3DA0](v29, -1, -1);
      v30 = v26;
      v16 = v25;
      MEMORY[0x1E12B3DA0](v30, -1, -1);
    }

    v31 = sub_1DD63FC88();
    v20(v12, v18);
  }

  else
  {
    v50 = v16;
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v32 = sub_1DD63F9F8();
    __swift_project_value_buffer(v32, qword_1EE16F068);

    v33 = v17;

    v34 = sub_1DD63F9D8();
    v35 = sub_1DD640368();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v48 = v12;
      v37 = v36;
      v38 = swift_slowAlloc();
      v53[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_1DD39565C(v46, v33, v53);
      *(v37 + 12) = 2080;
      v39 = v45;
      swift_beginAccess();

      v40 = sub_1DD63FC68();
      v51 = v19;
      v42 = v41;

      v43 = sub_1DD39565C(v40, v42, v53);

      *(v37 + 14) = v43;
      _os_log_impl(&dword_1DD38D000, v34, v35, "IsFaceTimeableSignalProvider::lookup - IDS lookup for %s ended. Found %s.", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v38, -1, -1);
      MEMORY[0x1E12B3DA0](v37, -1, -1);

      v20(v48, v18);
    }

    else
    {

      v20(v12, v18);
      v39 = v45;
    }

    swift_beginAccess();
    v31 = *v39;
  }

  return v31;
}

uint64_t sub_1DD4E55E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD63F9F8();
  __swift_project_value_buffer(v10, qword_1EE16F068);

  v11 = sub_1DD63F9D8();
  v12 = sub_1DD640368();

  v25 = a2;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1DD39565C(a1, a2, &v28);
    _os_log_impl(&dword_1DD38D000, v11, v12, "IsFaceTimeableSignalProvider::lookupAsync - starting IDS lookup for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12B3DA0](v14, -1, -1);
    MEMORY[0x1E12B3DA0](v13, -1, -1);
  }

  v15 = v6[3];
  v16 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v15);
  v17 = sub_1DD3FDCD4(a3);
  v18 = sub_1DD63FDD8();
  v20 = v19;
  v21 = v6[5];
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  v23 = *(v16 + 16);

  v23(v17, a1, v25, v18, v20, v21, sub_1DD4E7498, v22, v15, v16);
}

void sub_1DD4E5824(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  *(a2 + 16) = a1;

  dispatch_group_leave(a3);
}

uint64_t sub_1DD4E5890(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD4E58F0(a1);
  swift_beginAccess();
  *(a2 + 16) = v3;

  return sub_1DD640508();
}

uint64_t sub_1DD4E58F0(int64_t a1)
{
  if (!a1 || (v1 = sub_1DD4E5D80(a1)) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v2 = v1;
  v3 = sub_1DD63FC88();
  OUTLINED_FUNCTION_4_1();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_9:
    OUTLINED_FUNCTION_10_36();
    v12 = *(*(v2 + 56) + 8 * (v11 | (v9 << 6)));
    if (v12 == 2)
    {
      OUTLINED_FUNCTION_55_8();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_44_12();
      OUTLINED_FUNCTION_7_5();
      if (__OFADD__(v23, v24))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        result = sub_1DD640D58();
        __break(1u);
        return result;
      }

      v25 = v21;
      v26 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD78, &unk_1DD654CC8);
      if (OUTLINED_FUNCTION_58_7())
      {
        v27 = sub_1DD3978DC();
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_41;
        }

        v25 = v27;
      }

      v3 = v62;
      if ((v26 & 1) == 0)
      {
        OUTLINED_FUNCTION_26_19(&v62[v25 >> 6]);
        OUTLINED_FUNCTION_40_7(v42, v43, v44, v45, v46, v47, v48, v49, v61);
        *(v50 + v25) = 0;
        v51 = *(v3 + 16);
        v40 = __OFADD__(v51, 1);
        v41 = v51 + 1;
        if (v40)
        {
          goto LABEL_40;
        }

        goto LABEL_28;
      }

      *(v62[7] + v25) = 0;
LABEL_26:
    }

    else if (v12 == 1)
    {
      OUTLINED_FUNCTION_55_8();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_44_12();
      OUTLINED_FUNCTION_7_5();
      if (__OFADD__(v15, v16))
      {
        goto LABEL_38;
      }

      v17 = v13;
      v18 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD78, &unk_1DD654CC8);
      if (OUTLINED_FUNCTION_58_7())
      {
        v19 = sub_1DD3978DC();
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_41;
        }

        v17 = v19;
      }

      v3 = v62;
      if (v18)
      {
        *(v62[7] + v17) = 1;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_26_19(&v62[v17 >> 6]);
      OUTLINED_FUNCTION_40_7(v29, v30, v31, v32, v33, v34, v35, v36, v61);
      *(v37 + v17) = v38;
      v39 = *(v3 + 16);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_39;
      }

LABEL_28:
      *(v3 + 16) = v41;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return v3;
    }

    v6 = *(v2 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_36:
  OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
LABEL_30:
  v52 = sub_1DD63F9F8();
  __swift_project_value_buffer(v52, qword_1EE16F068);

  v53 = sub_1DD63F9D8();
  v54 = sub_1DD640378();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v62 = v56;
    *v55 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFA8, &unk_1DD6444A0);
    v57 = sub_1DD63FE38();
    v59 = sub_1DD39565C(v57, v58, &v62);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_1DD38D000, v53, v54, "IsFaceTimeableSignalProvider::makeHandleStatuses - unclear IDS results: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  return sub_1DD63FC88();
}

uint64_t sub_1DD4E5CC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = a1;

  return sub_1DD640508();
}

uint64_t sub_1DD4E5D30(int64_t a1, void (*a2)(void))
{
  sub_1DD4E58F0(a1);
  a2();
}

unint64_t sub_1DD4E5D80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB58, &qword_1DD65E1B0);
    v2 = sub_1DD640A78();
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

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1DD400EF0(*(a1 + 48) + 40 * v10, __src);
    sub_1DD395720(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1DD400EF0(__dst, v20);
    if (!swift_dynamicCast())
    {
      sub_1DD390754(__dst, &qword_1ECCDDD88, &qword_1DD654CE0);

      goto LABEL_22;
    }

    sub_1DD395720(&__dst[40], v20);
    sub_1DD390754(__dst, &qword_1ECCDDD88, &qword_1DD654CE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v5 &= v5 - 1;
    result = sub_1DD3978DC();
    v11 = result;
    if (v12)
    {
      v13 = (v2[6] + 16 * result);
      *v13 = v18;
      v13[1] = v19;

      *(v2[7] + 8 * v11) = v18;
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v2[6] + 16 * result);
      *v14 = v18;
      v14[1] = v19;
      *(v2[7] + 8 * result) = v18;
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_26;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_1DD4E6084(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1DD63FC58();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

id sub_1DD4E6158(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v15 = a3;
  if (a1)
  {
    v16 = sub_1DD6400F8();
    if (!v15)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = 0;
  if (a3)
  {
LABEL_3:
    v15 = sub_1DD63FDA8();
  }

LABEL_4:
  if (a5)
  {
    a5 = sub_1DD63FDA8();
  }

  if (a7)
  {
    v19[4] = a7;
    v19[5] = a8;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1DD4E6084;
    v19[3] = a9;
    a7 = _Block_copy(v19);
  }

  v17 = [v10 *a10];
  _Block_release(a7);

  return v17;
}

void sub_1DD4E62AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_6_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB58, &qword_1DD65E1B0);
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_48_12();
  if (!v16)
  {
LABEL_27:

    *v12 = v14;
    OUTLINED_FUNCTION_54_8();
    return;
  }

  v36 = v13;
  v17 = 0;
  v18 = v13;
  OUTLINED_FUNCTION_0_93();
  OUTLINED_FUNCTION_24_15();
  if (!v15)
  {
LABEL_4:
    v19 = v17;
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v17 >= v12)
      {
        break;
      }

      ++v19;
      if (*(v18 + 8 * v17))
      {
        OUTLINED_FUNCTION_14_3();
        v15 = v21 & v20;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      OUTLINED_FUNCTION_14_29();
      if (v34 != v35)
      {
        OUTLINED_FUNCTION_15_27(v33);
      }

      else
      {
        OUTLINED_FUNCTION_16_30(v33);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_36();
LABEL_9:
    OUTLINED_FUNCTION_21_20();
    v24 = *(v23 + 8 * v22);
    if ((a12 & 1) == 0)
    {
    }

    v25 = OUTLINED_FUNCTION_59_6();
    OUTLINED_FUNCTION_42_9(v25, v26, v27);
    sub_1DD640E78();
    OUTLINED_FUNCTION_2_59();
    OUTLINED_FUNCTION_31_15();
    if (v28)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_19:
    OUTLINED_FUNCTION_3_50(v29);
    *(v32 + 8 * v31) = v24;
    OUTLINED_FUNCTION_46_3();
    v13 = v36;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_39_11();
    if (!v28)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1DD4E6438()
{
  OUTLINED_FUNCTION_6_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB48, &qword_1DD643EC8);
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_48_12();
  if (!v4)
  {
LABEL_27:

    *v0 = v2;
    return;
  }

  v5 = 0;
  OUTLINED_FUNCTION_0_93();
  OUTLINED_FUNCTION_24_15();
  if (!v3)
  {
LABEL_4:
    v6 = v5;
    while (1)
    {
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v6;
      if (*(v1 + 8 * v5))
      {
        OUTLINED_FUNCTION_14_3();
        v3 = v8 & v7;
        goto LABEL_9;
      }
    }

    if (v23)
    {
      OUTLINED_FUNCTION_14_29();
      if (v21 != v22)
      {
        OUTLINED_FUNCTION_15_27(v20);
      }

      else
      {
        OUTLINED_FUNCTION_16_30(v20);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_36();
LABEL_9:
    OUTLINED_FUNCTION_21_20();
    v11 = *(v10 + 8 * v9);
    if ((v23 & 1) == 0)
    {
    }

    v12 = OUTLINED_FUNCTION_59_6();
    OUTLINED_FUNCTION_42_9(v12, v13, v14);
    sub_1DD640E78();
    OUTLINED_FUNCTION_2_59();
    OUTLINED_FUNCTION_31_15();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_19:
    OUTLINED_FUNCTION_3_50(v16);
    *(v19 + 8 * v18) = v11;
    OUTLINED_FUNCTION_46_3();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v15)
    {
      if (v17)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_39_11();
    if (!v15)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1DD4E65B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_53_7();
  v33 = v32;
  v34 = *v32;
  v66 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDDA0, &qword_1DD654D60);
  v36 = sub_1DD640A68();
  if (!v34[2])
  {
LABEL_29:

LABEL_30:
    *v33 = v36;
    OUTLINED_FUNCTION_54_8();
    return;
  }

  v65 = v34;
  v37 = 0;
  v38 = v34;
  OUTLINED_FUNCTION_0_93();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;
  v44 = v36 + 64;
  if ((v40 & v39) == 0)
  {
LABEL_4:
    v46 = v37;
    while (1)
    {
      v37 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v37 >= v43)
      {
        break;
      }

      ++v46;
      if (v38[v37])
      {
        OUTLINED_FUNCTION_14_3();
        v41 = v48 & v47;
        goto LABEL_9;
      }
    }

    if ((v66 & 1) == 0)
    {

      v33 = v32;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_14_29();
    v33 = v32;
    if (v63 != v64)
    {
      OUTLINED_FUNCTION_15_27(v62);
    }

    else
    {
      OUTLINED_FUNCTION_16_30(v62);
    }

    v34[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v45 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
LABEL_9:
    v49 = v45 | (v37 << 6);
    v50 = (v34[6] + 16 * v49);
    v51 = *v50;
    v52 = v50[1];
    v53 = *(v34[7] + 8 * v49);
    if ((v66 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_59_6();
    sub_1DD63FD28();
    sub_1DD640E78();
    OUTLINED_FUNCTION_2_59();
    OUTLINED_FUNCTION_31_15();
    if (v54)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_21:
    OUTLINED_FUNCTION_7_39();
    *(v44 + v58) |= v59;
    v61 = (*(v36 + 48) + 16 * v60);
    *v61 = v51;
    v61[1] = v52;
    *(*(v36 + 56) + 8 * v60) = v53;
    OUTLINED_FUNCTION_46_3();
    v34 = v65;
    if (!v41)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v54)
    {
      if (v56)
      {
        break;
      }
    }

    if (v55 == v57)
    {
      v55 = 0;
    }

    if (*(v44 + 8 * v55) != -1)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1DD4E67BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_6_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_48_12();
  if (!v18)
  {
LABEL_27:

    *v12 = v14;
    OUTLINED_FUNCTION_54_8();
    return;
  }

  v39 = v13;
  v19 = 0;
  v20 = v13;
  OUTLINED_FUNCTION_0_93();
  OUTLINED_FUNCTION_24_15();
  if (!v15)
  {
LABEL_4:
    v21 = v19;
    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v19 >= v12)
      {
        break;
      }

      ++v21;
      if (*(v20 + 8 * v19))
      {
        OUTLINED_FUNCTION_14_3();
        v15 = v23 & v22;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      OUTLINED_FUNCTION_14_29();
      if (v37 != v38)
      {
        OUTLINED_FUNCTION_15_27(v36);
      }

      else
      {
        OUTLINED_FUNCTION_16_30(v36);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_36();
LABEL_9:
    OUTLINED_FUNCTION_21_20();
    v26 = *(v25 + 8 * v24);
    if ((a12 & 1) == 0)
    {

      v27 = v26;
    }

    v28 = OUTLINED_FUNCTION_59_6();
    OUTLINED_FUNCTION_42_9(v28, v29, v30);
    sub_1DD640E78();
    OUTLINED_FUNCTION_2_59();
    OUTLINED_FUNCTION_31_15();
    if (v31)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_19:
    OUTLINED_FUNCTION_3_50(v32);
    *(v35 + 8 * v34) = v26;
    OUTLINED_FUNCTION_46_3();
    v13 = v39;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v31)
    {
      if (v33)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_39_11();
    if (!v31)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_1DD4E691C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD80, &qword_1DD654CD8);
  v34 = v4;
  result = sub_1DD640A68();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1DD57634C(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_1DD640E28();
    sub_1DD63FD28();
    result = sub_1DD640E78();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_1DD4E6BB8()
{
  OUTLINED_FUNCTION_6_46();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD90, &qword_1DD654CE8);
  sub_1DD640A68();
  OUTLINED_FUNCTION_48_12();
  if (!v3)
  {
LABEL_31:

LABEL_32:
    *v0 = v2;
    return;
  }

  v29 = v0;
  v4 = 0;
  OUTLINED_FUNCTION_0_93();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v10 = v2 + 64;
  if ((v6 & v5) == 0)
  {
LABEL_4:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v4 >= v9)
      {
        break;
      }

      ++v12;
      if (v1[v4])
      {
        OUTLINED_FUNCTION_14_3();
        v7 = v14 & v13;
        goto LABEL_9;
      }
    }

    if ((v2 & 1) == 0)
    {

      v0 = v29;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_14_29();
    v0 = v29;
    if (v27 != v28)
    {
      OUTLINED_FUNCTION_15_27(v26);
    }

    else
    {
      OUTLINED_FUNCTION_16_30(v26);
    }

    v1[2] = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_9:
    v15 = v11 | (v4 << 6);
    v16 = *(v1[7] + 8 * v15);
    v30 = *(v1[6] + 16 * v15);
    v17 = *(v1[6] + 16 * v15 + 8);
    if ((v2 & 1) == 0)
    {

      v18 = v16;
    }

    sub_1DD640E28();
    sub_1DD640E48();
    if (v17)
    {
      sub_1DD63FD28();
    }

    sub_1DD640E78();
    OUTLINED_FUNCTION_2_59();
    OUTLINED_FUNCTION_31_15();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_23:
    OUTLINED_FUNCTION_7_39();
    *(v10 + v23) |= v24;
    *(*(v2 + 48) + 16 * v25) = v30;
    *(*(v2 + 56) + 8 * v25) = v16;
    OUTLINED_FUNCTION_46_3();
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    if (*(v10 + 8 * v20) != -1)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1DD4E6DCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD98, &unk_1DD654CF0);
  v41 = v4;
  v6 = sub_1DD640A68();
  if (!v5[2])
  {

LABEL_33:
    *v3 = v6;
    return;
  }

  v39 = v2;
  v40 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_0_93();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 64;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v17;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_14_3();
        v11 = v19 & v18;
        goto LABEL_9;
      }
    }

    if (v41)
    {
      OUTLINED_FUNCTION_14_29();
      if (v37 != v38)
      {
        OUTLINED_FUNCTION_15_27(v36);
      }

      else
      {
        OUTLINED_FUNCTION_16_30(v36);
      }

      v5[2] = 0;
    }

    v3 = v39;
    goto LABEL_33;
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_36();
LABEL_9:
    v20 = v15 | (v7 << 6);
    v21 = (v5[6] + 32 * v20);
    v22 = v21[1];
    v23 = v21[3];
    v45 = v21[2];
    v46 = *v21;
    v24 = (v5[7] + v20 * v16);
    v25 = v24[1];
    v26 = v24[3];
    v42 = v24[2];
    v43 = *v24;
    v44 = v24[4];
    if ((v41 & 1) == 0)
    {
    }

    sub_1DD640E28();
    sub_1DD63FD28();
    if (v23)
    {
      MEMORY[0x1E12B3140](1);
      sub_1DD63FD28();
    }

    else
    {
      MEMORY[0x1E12B3140](0);
    }

    sub_1DD640E78();
    OUTLINED_FUNCTION_2_59();
    OUTLINED_FUNCTION_31_15();
    if (v27)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_24:
    OUTLINED_FUNCTION_7_39();
    *(v14 + v31) |= v32;
    v34 = (*(v6 + 48) + 32 * v33);
    *v34 = v46;
    v34[1] = v22;
    v34[2] = v45;
    v34[3] = v23;
    v35 = (*(v6 + 56) + 40 * v33);
    *v35 = v43;
    v35[1] = v25;
    v35[2] = v42;
    v35[3] = v26;
    v35[4] = v44;
    OUTLINED_FUNCTION_46_3();
    v5 = v40;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v27)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    if (*(v14 + 8 * v28) != -1)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1DD4E7058(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  sub_1DD4E73FC(a1, a2, a3, v42);
  v6 = v42[1];
  v7 = v42[3];
  v8 = v42[4];
  v35 = v42[5];
  v36 = v42[0];
  v9 = (v42[2] + 64) >> 6;

  v34 = v6;
  if (v8)
  {
    while (1)
    {
      v37 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v36 + 48) + 16 * v12);
      v14 = v13[1];
      LOBYTE(v12) = *(*(v36 + 56) + v12);
      v40[0] = *v13;
      v40[1] = v14;
      v41 = v12;

      v35(v38, v40);

      v15 = v38[0];
      v16 = v38[1];
      v17 = v39;
      v18 = *v43;
      v19 = sub_1DD3978DC();
      OUTLINED_FUNCTION_7_5();
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v24 = v20;
      if (v18[3] >= v23)
      {
        if ((v37 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD78, &unk_1DD654CC8);
          sub_1DD640A18();
        }
      }

      else
      {
        sub_1DD4E691C(v23, v37 & 1);
        v25 = sub_1DD3978DC();
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_24;
        }

        v19 = v25;
      }

      v8 &= v8 - 1;
      v27 = *v43;
      if (v24)
      {
        v28 = *(v27[7] + v19);

        *(v27[7] + v19) = (v28 | v17) & 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_19(&v27[v19 >> 6]);
        v29 = (v27[6] + 16 * v19);
        *v29 = v15;
        v29[1] = v16;
        *(v27[7] + v19) = v17;
        v30 = v27[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_23;
        }

        v27[2] = v32;
      }

      a4 = 1;
      v7 = v10;
      v6 = v34;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1DD3AA5A4(v36);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v37 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD4E72EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD4E7344(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;

  v6 = a4;
  return a2;
}

uint64_t sub_1DD4E738C(_BYTE *a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_1DD4E73C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_1DD4E73FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1DD4E7438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DD4E738C(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return result;
}

uint64_t objectdestroy_3Tm_0()
{

  OUTLINED_FUNCTION_18_9();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DD4E7504(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1DD4E7544(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_3_50(unint64_t a1@<X8>)
{
  *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v1 + 48) + 16 * a1);
  *v5 = v2;
  v5[1] = v3;
}

void OUTLINED_FUNCTION_40_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = (*(v9 + 48) + 16 * v10);
  *v12 = a9;
  v12[1] = v11;
}

uint64_t OUTLINED_FUNCTION_42_9(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1DD63FD28();
}

unint64_t OUTLINED_FUNCTION_44_12()
{

  return sub_1DD3978DC();
}

uint64_t OUTLINED_FUNCTION_45_10(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_46_4()
{
  *(*(v0 + 56) + v1) = *(v2 - 320);
}

uint64_t OUTLINED_FUNCTION_55_8()
{
}

uint64_t OUTLINED_FUNCTION_56_7(uint64_t a1)
{

  return sub_1DD63FD48();
}

uint64_t OUTLINED_FUNCTION_58_7()
{

  return sub_1DD640A08();
}

uint64_t OUTLINED_FUNCTION_59_6()
{

  return sub_1DD640E28();
}

void sub_1DD4E781C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(*a1 + 16))
  {
    v45 = *(*a1 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_52:
      sub_1DD586A30();
      v2 = v43;
    }

    v4 = 0;
    v5 = v2 + 32;
    v6 = v45;
    v50 = v2 + 32;
    v51 = v2;
    do
    {
      if (v4 == v6)
      {
        goto LABEL_50;
      }

      if (v4 >= *(v2 + 16))
      {
        goto LABEL_51;
      }

      v46 = *(*(v5 + 8 * v4) + 16);
      if (v46)
      {
        v7 = 0;
        while (v4 < *(v2 + 16))
        {
          v8 = *(v5 + 8 * v4);
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_49;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
          OUTLINED_FUNCTION_50();
          v49 = *(*(v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v11 + 36) + *(v10 + 72) * v7 + 272) + 16);
          if (v49)
          {
            v12 = 0;
            while (v4 < *(v2 + 16))
            {
              if (v7 >= *(*(v5 + 8 * v4) + 16))
              {
                goto LABEL_41;
              }

              OUTLINED_FUNCTION_0_94();
              v15 = *(v13 + v14 + 272);
              if (v12 >= *(v15 + 16))
              {
                goto LABEL_42;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
              OUTLINED_FUNCTION_50();
              v19 = *(v18 + 72);
              if (*(a2 + 16))
              {
                v20 = v16;
                v48 = (*(v17 + 80) + 32) & ~*(v17 + 80);
                v47 = v19 * v12;
                v21 = v15 + v48 + v19 * v12;
                v22 = *(v21 + 56);
                v23 = *(v21 + 64);
                sub_1DD640E28();
                sub_1DD63FD28();
                v24 = sub_1DD640E78();
                v25 = ~(-1 << *(a2 + 32));
                while (1)
                {
                  v26 = v24 & v25;
                  if (((*(a2 + 56 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
                  {
                    break;
                  }

                  v27 = (*(a2 + 48) + 16 * v26);
                  if (*v27 != v22 || v27[1] != v23)
                  {
                    v29 = sub_1DD640CD8();
                    v24 = v26 + 1;
                    if ((v29 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  if (v4 >= *(v51 + 16))
                  {
                    goto LABEL_43;
                  }

                  v30 = *(v50 + 8 * v4);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v50 + 8 * v4) = v30;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1DD586A18();
                    v30 = v40;
                    *(v50 + 8 * v4) = v40;
                  }

                  if (v7 >= *(v30 + 16))
                  {
                    goto LABEL_44;
                  }

                  OUTLINED_FUNCTION_0_94();
                  *(v32 + v33 + *(type metadata accessor for ContactResolver.SignalSet(0) + 176)) = 1;
                  *(v50 + 8 * v4) = v30;
                  if (v4 >= *(v51 + 16))
                  {
                    goto LABEL_45;
                  }

                  v34 = swift_isUniquelyReferenced_nonNull_native();
                  *(v50 + 8 * v4) = v30;
                  if ((v34 & 1) == 0)
                  {
                    sub_1DD586A18();
                    v30 = v41;
                    *(v50 + 8 * v4) = v41;
                  }

                  if (v7 < *(v30 + 16))
                  {
                    OUTLINED_FUNCTION_0_94();
                    v37 = v35 + v36;
                    v38 = *(v35 + v36 + 272);
                    v39 = swift_isUniquelyReferenced_nonNull_native();
                    *(v37 + 272) = v38;
                    if ((v39 & 1) == 0)
                    {
                      sub_1DD586A48();
                      v38 = v42;
                      *(v37 + 272) = v42;
                    }

                    if (v12 < *(v38 + 16))
                    {
                      *(v38 + v48 + v47 + *(v20 + 36) + 1) = 1;
                      *(v37 + 272) = v38;
                      break;
                    }

                    goto LABEL_47;
                  }

                  goto LABEL_46;
                }
              }

              ++v12;
              v5 = v50;
              v2 = v51;
              if (v12 == v49)
              {
                goto LABEL_36;
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
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            break;
          }

LABEL_36:
          if (++v7 == v46)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_37:
      ++v4;
      v6 = v45;
    }

    while (v4 != v45);
    *a1 = v2;
  }
}

uint64_t sub_1DD4E7C30(uint64_t a1)
{
  v8 = MEMORY[0x1E69E7CD0];
  v3 = sub_1DD3CC020();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v8;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E12B2C10](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v1 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = v5;
    sub_1DD4E7D18(&v8, &v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1DD4E82AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD4E8314(void *a1)
{
  v1 = [a1 unformattedInternationalStringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD4E8388(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Contact(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  MEMORY[0x1EEE9AC00](v8);
  v64 = (&v60 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  i = &v60 - v14;
  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v16 = sub_1DD63F9F8();
    __swift_project_value_buffer(v16, qword_1EE16F068);
    v17 = sub_1DD63F9D8();
    v18 = sub_1DD640368();
    v19 = os_log_type_enabled(v17, v18);
    v67 = i;
    if (v19)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DD38D000, v17, v18, "adding isMeCard signal", v20, 2u);
      MEMORY[0x1E12B3DA0](v20, -1, -1);
    }

    v21 = *a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DD586A30();
      v23 = v59;
    }

    v24 = 0;
    v25 = *(v21 + 16);
    v61 = v21 + 32;
    v62 = v25;
    v26 = v23 + 32;
    *a1 = v23;
    v68 = v12;
    v60 = v21;
    v72 = v23;
LABEL_7:
    if (v24 == v62)
    {
    }

    if (v24 >= *(v21 + 16))
    {
      goto LABEL_42;
    }

    v27 = *(v61 + 8 * v24);
    v71 = v24;
    v63 = v24 + 1;
    v69 = *(v27 + 16);
    *a1 = v23;
    v65 = v27;

    for (i = 0; ; i = v70)
    {
      do
      {
        if (i == v69)
        {
          v28 = 1;
          i = v69;
          v29 = v67;
          v12 = v68;
        }

        else
        {
          v29 = v67;
          v12 = v68;
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          if (i >= *(v65 + 16))
          {
            goto LABEL_41;
          }

          v30 = a2;
          v31 = a3;
          v32 = a1;
          v33 = i;
          v34 = v65;
          v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
          v36 = (v33 + 1);
          v37 = v34 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33;
          v38 = *(v8 + 48);
          v39 = v64;
          *v64 = v33;
          a1 = v32;
          a3 = v31;
          a2 = v30;
          sub_1DD3C68F8(v37, v39 + v38);
          sub_1DD4E89B0(v39, v12, &qword_1ECCDC238, &unk_1DD654E40);
          v28 = 0;
          i = v36;
        }

        __swift_storeEnumTagSinglePayload(v12, v28, 1, v8);
        sub_1DD4E89B0(v12, v29, &qword_1ECCDC240, &qword_1DD645AA0);
        if (__swift_getEnumTagSinglePayload(v29, 1, v8) == 1)
        {

          v24 = v63;
          v21 = v60;
          v23 = v72;
          goto LABEL_7;
        }

        v73 = *v29;
        v40 = *(v8 + 48);
        v12 = v66;
        sub_1DD415D68(v29 + v40, v66);
        sub_1DD3C6968(v29 + v40);
        v42 = *v12;
        v41 = v12[1];

        sub_1DD415B40(v12);
        if (v42 == a2 && v41 == a3)
        {

          break;
        }

        v44 = sub_1DD640CD8();
      }

      while ((v44 & 1) == 0);
      if (v71 >= *(v72 + 16))
      {
        break;
      }

      v45 = v71;
      v46 = *(v26 + 8 * v71);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v45) = v46;
      if ((v47 & 1) == 0)
      {
        sub_1DD586A18();
        v46 = v56;
        *(v26 + 8 * v71) = v56;
      }

      if ((v73 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (v73 >= *(v46 + 16))
      {
        goto LABEL_37;
      }

      v70 = i;
      i = v8;
      v12 = a1;
      v8 = a2;
      a2 = a3;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      a1 = ((*(*(v48 - 8) + 80) + 32) & ~*(*(v48 - 8) + 80));
      a3 = *(*(v48 - 8) + 72) * v73;
      *(a1 + v46 + a3 + 16) = 1;
      v49 = v26;
      v51 = v71;
      v50 = v72;
      *(v49 + 8 * v71) = v46;
      if (v51 >= *(v50 + 16))
      {
        goto LABEL_38;
      }

      v52 = v48;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 8 * v51) = v46;
      v26 = v49;
      if ((v53 & 1) == 0)
      {
        sub_1DD586A18();
        v46 = v57;
        *(v49 + 8 * v71) = v57;
      }

      if (v73 >= *(v46 + 16))
      {
        goto LABEL_39;
      }

      v54 = a1 + v46 + *(v52 + 36) + a3;
      v54[*(type metadata accessor for ContactResolver.SignalSet(0) + 136)] = 1;
      v55 = v72;
      *(v49 + 8 * v71) = v46;
      a1 = v12;
      *v12 = v55;
      a3 = a2;
      a2 = v8;
      v8 = i;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }
}

uint64_t sub_1DD4E89B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1DD4E8A18(uint64_t *a1)
{
  v2 = *(sub_1DD63D078() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC724();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1DD4EB080(v6);
  *a1 = v3;
}

uint64_t sub_1DD4E8AC0(uint64_t *a1)
{
  v2 = type metadata accessor for Signpost(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v6 = qword_1EE16F0C0;
    v7 = &v5[v2[5]];
    *v7 = "ContactResolver.IsRecentSignalProvider";
    *(v7 + 1) = 38;
    v7[16] = 2;
    v8 = v6;
    sub_1DD63F9B8();
    *&v5[v2[6]] = v8;
    v2 = v8;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DD643F90;
    v10 = sub_1DD6408F8();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1DD392BD8();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    OUTLINED_FUNCTION_22_19();
    sub_1DD63F998();

    v13 = *a1;
    v14 = *(*a1 + 16);
    if (!v14)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD586A30();
      v13 = v18;
    }

    v15 = 0;
    v16 = (v13 + 32);
    while (v15 < *(v13 + 16))
    {
      ++v15;
      sub_1DD4E8F14(v16++);
      if (v14 == v15)
      {
        *a1 = v13;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_9:
  sub_1DD6404C8();
  sub_1DD63F9A8();
  return sub_1DD41BFFC(v5);
}

uint64_t sub_1DD4E8CFC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_1DD63D078() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1DD4E8DE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDDB0, &qword_1DD654E58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD6444F0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = swift_getKeyPath();
  *(v0 + 32) = KeyPath;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  v4 = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  *(v0 + 96) = 0xD000000000000012;
  *(v0 + 104) = 0x80000001DD66ED00;
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 112) = v7;
  *(v0 + 120) = v8;
  *(v0 + 128) = result;
  *(v0 + 136) = 0xD000000000000011;
  *(v0 + 144) = 0x80000001DD66ED20;
  off_1EE161848 = v0;
  return result;
}

void sub_1DD4E8F14(uint64_t **a1)
{
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD68, &unk_1DD65F510);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_25(&v233 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD70, &qword_1DD654CC0);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v233 - v7;
  v285 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16_3();
  v281 = v11;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  OUTLINED_FUNCTION_0();
  v250 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v233 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16_3();
  v291 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25(&v233 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v23 = OUTLINED_FUNCTION_3(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_16_3();
  v289 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  v28 = OUTLINED_FUNCTION_3(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v34 = OUTLINED_FUNCTION_3(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_0();
  v290 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_16_3();
  v283 = v39;
  v40 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v288 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_18_0();
  v280 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v233 - v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0();
  v277 = v61;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_18_0();
  v66 = v65;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v68);
  v270 = a1;
  v71 = *a1;
  if (!v71[2])
  {
    return;
  }

  if (qword_1EE161840 != -1)
  {
    goto LABEL_117;
  }

  while (1)
  {
    v72 = off_1EE161848;
    v73 = *(off_1EE161848 + 2);
    v74 = &unk_1DD654000;
    v245 = v8;
    v234 = v15;
    v258 = v19;
    v287 = v69;
    v239 = v73;
    if (!v73)
    {
      break;
    }

    v75 = 0;
    v282 = 0;
    v238 = off_1EE161848 + 32;
    v273 = v288 + 32;
    v265 = (v288 + 16);
    v278 = (v288 + 8);
    v15 = MEMORY[0x1E69E7CD0];
    *&v70 = 136315394;
    v251 = v70;
    v284 = v53;
    *&v267 = v66;
    v236 = off_1EE161848;
    while (1)
    {
      if (v75 >= v72[2])
      {
        goto LABEL_112;
      }

      v246 = v75;
      v76 = &v238[40 * v75];
      v66 = *v76;
      v53 = *(v76 + 1);
      v77 = *(v76 + 2);
      v254 = *(v76 + 3);
      v78 = *(v76 + 4);
      v293[0] = v15;
      v8 = v71[2];
      v286 = v66;
      v256 = v53;
      v279 = v77;
      v259 = v78;
      v257 = v71;
      if (v8)
      {
        v79 = v277;
        v80 = v71 + ((*(v277 + 80) + 32) & ~*(v277 + 80));

        v81 = *(v79 + 72);
        v82 = v283;
        v83 = v266;
        do
        {
          sub_1DD4DDC08(v80, v83, &qword_1ECCDBBE8, &qword_1DD644470);
          swift_getAtKeyPath();
          v19 = sub_1DD63F148();
          OUTLINED_FUNCTION_11_5(v82);
          if (v84)
          {
            sub_1DD390754(v83, &qword_1ECCDBBE8, &qword_1DD644470);
            v90 = v82;
            v91 = &qword_1ECCDCB80;
            v92 = &qword_1DD64A0E0;
          }

          else
          {
            v85 = v262;
            sub_1DD63F108();
            OUTLINED_FUNCTION_72();
            (*(v86 + 8))(v283, v19);
            v87 = v261;
            (*v273)(v261, v85, v40);
            (*v265)(v264, v87, v40);
            v88 = v263;
            sub_1DD56DD54();
            v19 = v278;
            v89 = *v278;
            v83 = v266;
            (*v278)(v88, v40);
            v89(v87, v40);
            v82 = v283;
            v90 = v83;
            v91 = &qword_1ECCDBBE8;
            v92 = &qword_1DD644470;
          }

          sub_1DD390754(v90, v91, v92);
          v80 += v81;
          --v8;
        }

        while (v8);
        v15 = v293[0];
        OUTLINED_FUNCTION_14_30();
        v66 = v286;
        v53 = v256;
      }

      else
      {
      }

      if (*(v15 + 2))
      {
        break;
      }

      v69 = v287;
      v71 = v257;
LABEL_46:
      v75 = v246 + 1;
      v74 = &unk_1DD654000;
      v72 = v236;
      v15 = MEMORY[0x1E69E7CD0];
      if (v246 + 1 == v239)
      {
        goto LABEL_49;
      }
    }

    v293[0] = sub_1DD598638(v15);
    v53 = v282;
    sub_1DD4E8A18(v293);
    v71 = v257;
    v282 = v53;
    if (v53)
    {
      goto LABEL_122;
    }

    if (!*(v293[0] + 16))
    {
      goto LABEL_116;
    }

    OUTLINED_FUNCTION_18_3();
    v94 = *(v93 + 16);
    v276 = v95;
    v94(v244, v95 + v96, v40);
    sub_1DD63CF88();
    sub_1DD63CFD8();
    v293[0] = v71;
    v293[1] = 0;
    v293[2] = 0;

    v97 = v284;
    v53 = v267;
    while (1)
    {
      sub_1DD583860(v275);
      OUTLINED_FUNCTION_84();
      sub_1DD4DDCBC(v98, v99, &qword_1ECCDC240, &qword_1DD645AA0);
      OUTLINED_FUNCTION_11_5(v293);
      if (v84)
      {

        v8 = *v278;
        v135 = OUTLINED_FUNCTION_19_23(&v294);
        (v8)(v135);
        v136 = OUTLINED_FUNCTION_19_23(&v269);
        (v8)(v136);
        v69 = v287;
        goto LABEL_46;
      }

      v8 = v293[0];
      v100 = v19;
      sub_1DD4DDCBC(v293 + *(v19 + 12), v53, &qword_1ECCDBBE8, &qword_1DD644470);
      v101 = v268;
      swift_getAtKeyPath();
      v102 = sub_1DD63F148();
      OUTLINED_FUNCTION_11_5(v101);
      if (v84)
      {
        sub_1DD390754(v101, &qword_1ECCDCB80, &qword_1DD64A0E0);
        v108 = 1;
        v105 = v289;
        v107 = v97;
      }

      else
      {
        v103 = v289;
        v104 = v101;
        sub_1DD63F108();
        v105 = v103;
        OUTLINED_FUNCTION_72();
        v53 = v267;
        v107 = v284;
        (*(v106 + 8))(v104, v102);
        v108 = 0;
      }

      __swift_storeEnumTagSinglePayload(v105, v108, 1, v40);
      v109 = v269;
      v19 = &qword_1ECCDEBC0;
      sub_1DD4DDC08(v105, v269, &qword_1ECCDEBC0, &qword_1DD6445A0);
      if (__swift_getEnumTagSinglePayload(v109, 1, v40) == 1)
      {
        v110 = v53;
        v111 = v71;
        v112 = sub_1DD390754(v109, &qword_1ECCDEBC0, &qword_1DD6445A0);
LABEL_26:
        v19 = v100;
        goto LABEL_27;
      }

      (*v273)(v107, v109, v40);
      OUTLINED_FUNCTION_2_60();
      sub_1DD4A0A78(&qword_1EE166638, v113);
      v15 = v40;
      if (sub_1DD63FD68())
      {
        v110 = v53;
        v111 = v71;
        OUTLINED_FUNCTION_13_29();
        v112 = v114();
        v105 = v289;
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v286;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD586A18();
        v71 = v134;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_110;
      }

      if (v8 >= v71[2])
      {
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_23_21();
      LOBYTE(v292) = 1;
      v19 = v256;
      swift_setAtWritableKeyPath();
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v111 = v71;
      v121 = sub_1DD63F9F8();
      __swift_project_value_buffer(v121, qword_1EE16F068);
      sub_1DD4DDC08(v53, v260, &qword_1ECCDBBE8, &qword_1DD644470);

      v122 = v259;

      v123 = sub_1DD63F9D8();
      v124 = sub_1DD640368();

      LODWORD(v257) = v124;
      v125 = v123;
      if (os_log_type_enabled(v123, v124))
      {
        v126 = swift_slowAlloc();
        v292 = swift_slowAlloc();
        *v126 = v251;
        v127 = v260;
        v19 = *v260;
        v128 = v260[1];

        sub_1DD390754(v127, &qword_1ECCDBBE8, &qword_1DD644470);
        v129 = sub_1DD39565C(v19, v128, &v292);

        *(v126 + 4) = v129;
        *(v126 + 12) = 2082;

        v130 = sub_1DD39565C(v254, v122, &v292);

        *(v126 + 14) = v130;
        _os_log_impl(&dword_1DD38D000, v125, v257, "contact %s is recent %{public}s", v126, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_14_30();
        OUTLINED_FUNCTION_0_1();

        OUTLINED_FUNCTION_13_29();
        v112 = v131(v284, v40);
        v105 = v289;
        v110 = v267;
      }

      else
      {

        sub_1DD390754(v260, &qword_1ECCDBBE8, &qword_1DD644470);
        OUTLINED_FUNCTION_13_29();
        v132(v107, v40);
        v105 = v289;
        v110 = v267;
        OUTLINED_FUNCTION_14_30();
      }

LABEL_27:
      v115 = v276;
      MEMORY[0x1EEE9AC00](v112);
      *(&v233 - 2) = v105;
      v116 = v282;
      v117 = sub_1DD4E8CFC(sub_1DD4EC674, (&v233 - 4), v115);
      v282 = v116;
      v15 = (v118 & 1) != 0 ? *(v115 + 16) : v117;
      v71 = v111;
      v119 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v284;
      v66 = &qword_1ECCDBBE8;
      v53 = v110;
      if ((v119 & 1) == 0)
      {
        sub_1DD586A18();
        v71 = v133;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v8 >= v71[2])
      {
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_3_51();
      OUTLINED_FUNCTION_23_21();
      v292 = v15;
      swift_setAtWritableKeyPath();
      sub_1DD390754(v110, &qword_1ECCDBBE8, &qword_1DD644470);
      *v270 = v71;
      sub_1DD390754(v289, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v66 = v286;
    }

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
    v232 = v69;
    swift_once();
    v69 = v232;
  }

  v282 = 0;
LABEL_49:
  v274 = v255 + 272;
  v8 = v74;
  v289 = (v288 + 32);
  v278 = (v288 + 8);
  v279 = v288 + 16;

  v137 = 0;
  *&v138 = 136315138;
  v267 = v138;
  v257 = v71;
  v268 = v71;
  v66 = v272;
  v286 = v40;
  while (2)
  {
    OUTLINED_FUNCTION_20_23();
    while (1)
    {
      v139 = v257[2];
      if (v137 == v139)
      {
        v140 = 1;
      }

      else
      {
        if (v137 >= v139)
        {
          goto LABEL_113;
        }

        OUTLINED_FUNCTION_3_51();
        v143 = v257 + v141 + *(v142 + 72) * v137;
        v144 = *(v19 + 12);
        v15 = v242;
        *v242 = v137;
        sub_1DD4DDC08(v143, &v15[v144], &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD4DDCBC(v15, v53, &qword_1ECCDC238, &unk_1DD654E40);
        v140 = 0;
        ++v137;
      }

      __swift_storeEnumTagSinglePayload(v53, v140, 1, v19);
      sub_1DD4DDCBC(v53, v71, &qword_1ECCDC240, &qword_1DD645AA0);
      OUTLINED_FUNCTION_11_5(v71);
      if (v84)
      {

        return;
      }

      v276 = v137;
      v273 = *v71;
      sub_1DD4DDCBC(v71 + *(v19 + 12), v255, &qword_1ECCDBBE8, &qword_1DD644470);
      v53 = *(*(v274 + *(v287 + 36)) + 16);
      v275 = *(v274 + *(v287 + 36));
      if (v53)
      {
        v284 = *(v253 + 36);
        OUTLINED_FUNCTION_3_51();
        v71 = (v146 + v145);
        v283 = *(v147 + 72);
        v19 = MEMORY[0x1E69E7CC0];
        do
        {
          v148 = v291;
          sub_1DD4DDC08(v71, v291, &qword_1ECCDBBD8, &unk_1DD645A90);
          v149 = &v284[v148];
          v150 = v281;
          sub_1DD4EC610(v149, v281);
          v151 = v150 + *(v285 + 36);
          v15 = v290;
          sub_1DD4DDCBC(v151, v290, &qword_1ECCDCB80, &qword_1DD64A0E0);
          v152 = sub_1DD63F148();
          if (__swift_getEnumTagSinglePayload(v15, 1, v152) == 1)
          {
            sub_1DD390754(v291, &qword_1ECCDBBD8, &unk_1DD645A90);
            sub_1DD390754(v15, &qword_1ECCDCB80, &qword_1DD64A0E0);
            v40 = v286;
          }

          else
          {
            v153 = v271;
            sub_1DD63F108();
            sub_1DD390754(v291, &qword_1ECCDBBD8, &unk_1DD645A90);
            OUTLINED_FUNCTION_72();
            (*(v154 + 8))(v290, v152);
            v155 = *v289;
            v40 = v286;
            (*v289)(v280, v153, v286);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DD3BF700();
              v19 = v159;
            }

            v156 = v19[2];
            v15 = (v156 + 1);
            v66 = v272;
            if (v156 >= v19[3] >> 1)
            {
              sub_1DD3BF700();
              v19 = v160;
            }

            v19[2] = v15;
            OUTLINED_FUNCTION_18_3();
            v155(v19 + v157 + *(v158 + 72) * v156, v280, v40);
          }

          v71 = (v71 + v283);
          --v53;
        }

        while (v53);
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      v161 = v19[2];
      if (v161)
      {
        OUTLINED_FUNCTION_18_3();
        v71 = (v19 + v162);
        v53 = *(v163 + 16);
        v164 = v243;
        (v53)(v243, v19 + v162, v40);
        for (i = 1; v161 != i; ++i)
        {
          v166 = v288;
          (v53)(v66, v71 + *(v288 + 72) * i, v40);
          OUTLINED_FUNCTION_2_60();
          sub_1DD4A0A78(&qword_1EE166638, v167);
          v15 = v40;
          v168 = sub_1DD63FD68();
          v169 = *(v166 + 8);
          if (v168)
          {
            v169(v164, v40);
            (*v289)(v164, v66, v40);
          }

          else
          {
            v169(v66, v40);
          }
        }

        v8 = v248;
        (*v289)(v248, v164, v40);
        v170 = v8;
        v171 = 0;
      }

      else
      {
        v8 = v248;
        v170 = v248;
        v171 = 1;
      }

      __swift_storeEnumTagSinglePayload(v170, v171, 1, v40);

      OUTLINED_FUNCTION_14_30();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v40);
      v173 = v249;
      if (EnumTagSinglePayload != 1)
      {
        break;
      }

      sub_1DD390754(v255, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v8, &qword_1ECCDEBC0, &qword_1DD6445A0);
      OUTLINED_FUNCTION_20_23();
      v137 = v276;
    }

    v174 = OUTLINED_FUNCTION_1_8();
    v269 = v175;
    v175(v174);
    v15 = v235;
    sub_1DD63CF88();
    sub_1DD63CFD8();
    v176 = 0;
    v177 = v275;
    v53 = *(v275 + 16);
    v71 = &qword_1ECCDBBD8;
    v19 = &unk_1DD645A90;
    v284 = v53;
LABEL_80:
    if (v176 == v53)
    {
      v178 = 1;
      v179 = v53;
      v15 = v247;
    }

    else
    {
      if ((v176 & 0x8000000000000000) != 0)
      {
        goto LABEL_114;
      }

      if (v176 >= *(v177 + 16))
      {
        goto LABEL_115;
      }

      v179 = v176 + 1;
      OUTLINED_FUNCTION_3_51();
      v15 = v241;
      *v241 = v176;
      OUTLINED_FUNCTION_22_19();
      sub_1DD4DDC08(v180, v181, v182, v183);
      OUTLINED_FUNCTION_84();
      sub_1DD4DDCBC(v184, v185, &qword_1ECCDDD68, &unk_1DD65F510);
      v178 = 0;
    }

    __swift_storeEnumTagSinglePayload(v15, v178, 1, v173);
    OUTLINED_FUNCTION_84();
    sub_1DD4DDCBC(v186, v187, &qword_1ECCDDD70, &qword_1DD654CC0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v173) == 1)
    {
      v15 = v278;
      v8 = *v278;
      v230 = OUTLINED_FUNCTION_19_23(&v267 + 8);
      (v8)(v230);
      v231 = OUTLINED_FUNCTION_19_23(&v260);
      (v8)(v231);
      sub_1DD390754(v255, &qword_1ECCDBBE8, &qword_1DD644470);
      OUTLINED_FUNCTION_14_30();
      v137 = v276;
      continue;
    }

    break;
  }

  v283 = *v15;
  v188 = v252;
  OUTLINED_FUNCTION_22_19();
  sub_1DD4DDCBC(v189, v190, v191, v192);
  OUTLINED_FUNCTION_84();
  sub_1DD4EC610(v193, v194);
  OUTLINED_FUNCTION_84();
  v8 = &qword_1ECCDCB80;
  sub_1DD4DDCBC(v195, v196, &qword_1ECCDCB80, &qword_1DD64A0E0);
  v197 = v19;
  v198 = v71;
  v199 = sub_1DD63F148();
  if (__swift_getEnumTagSinglePayload(v15, 1, v199) == 1)
  {
    sub_1DD390754(v188, v198, v197);
    v200 = OUTLINED_FUNCTION_1_8();
    sub_1DD390754(v200, v201, &qword_1DD64A0E0);
    v71 = v198;
    v19 = v197;
    v40 = v286;
LABEL_90:
    v177 = v275;
    v53 = v284;
    v176 = v179;
    goto LABEL_80;
  }

  v202 = v237;
  sub_1DD63F108();
  OUTLINED_FUNCTION_72();
  (*(v203 + 8))(v15, v199);
  v204 = v240;
  v40 = v286;
  v269(v240, v202, v286);
  OUTLINED_FUNCTION_2_60();
  sub_1DD4A0A78(&qword_1EE166638, v205);
  v15 = v40;
  if (sub_1DD63FD68())
  {
    OUTLINED_FUNCTION_13_29();
    v206(v204, v40);
    v71 = &qword_1ECCDBBD8;
    v19 = &unk_1DD645A90;
    sub_1DD390754(v252, &qword_1ECCDBBD8, &unk_1DD645A90);
    goto LABEL_90;
  }

  v207 = v268;
  v19 = &unk_1DD645A90;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD586A18();
    v207 = v228;
  }

  v71 = &qword_1ECCDBBD8;
  v176 = v179;
  if ((v273 & 0x8000000000000000) == 0)
  {
    if (v273 >= v207[2])
    {
      goto LABEL_119;
    }

    v208 = (*(v277 + 80) + 32) & ~*(v277 + 80);
    v268 = v207;
    v209 = v207 + v208 + *(v277 + 72) * v273 + *(v287 + 36);
    v210 = *(v209 + 272);
    v211 = swift_isUniquelyReferenced_nonNull_native();
    *(v209 + 272) = v210;
    if ((v211 & 1) == 0)
    {
      sub_1DD586A48();
      v210 = v229;
      *(v209 + 272) = v229;
    }

    if ((v283 & 0x8000000000000000) != 0)
    {
      goto LABEL_120;
    }

    if (v283 >= *(v210 + 16))
    {
      goto LABEL_121;
    }

    OUTLINED_FUNCTION_3_51();
    *(v210 + v212 + *(v213 + 72) * v214 + *(v253 + 36) + *(v285 + 40)) = 1;
    *(v209 + 272) = v210;
    *v270 = v268;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v215 = sub_1DD63F9F8();
    __swift_project_value_buffer(v215, qword_1EE16F068);
    v216 = v252;
    v8 = v234;
    OUTLINED_FUNCTION_22_19();
    sub_1DD4DDC08(v217, v218, v219, v220);
    v221 = sub_1DD63F9D8();
    v15 = sub_1DD640368();
    if (os_log_type_enabled(v221, v15))
    {
      v222 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      v293[0] = v283;
      *v222 = v267;
      v223 = *(v8 + 64);
      v266 = *(v8 + 56);

      sub_1DD390754(v8, &qword_1ECCDBBD8, &unk_1DD645A90);
      v8 = v15;
      v224 = sub_1DD39565C(v266, v223, v293);
      v71 = &qword_1ECCDBBD8;

      *(v222 + 4) = v224;
      _os_log_impl(&dword_1DD38D000, v221, v8, "handle %s is recent", v222, 0xCu);
      v15 = v283;
      __swift_destroy_boxed_opaque_existential_1(v283);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();

      OUTLINED_FUNCTION_13_29();
      v225(v240, v40);
      v226 = v252;
    }

    else
    {

      sub_1DD390754(v8, &qword_1ECCDBBD8, &unk_1DD645A90);
      OUTLINED_FUNCTION_13_29();
      v227(v240, v40);
      v226 = v216;
    }

    sub_1DD390754(v226, &qword_1ECCDBBD8, &unk_1DD645A90);
    v177 = v275;
    v53 = v284;
    goto LABEL_80;
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:

  __break(1u);
}

uint64_t sub_1DD4EACDC(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_1DD63D078();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDDA8, &unk_1DD65B820);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  (*(v4 + 16))(&v22 - v15, a1, v3, v14);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_1DD4DDC08(v16, v9, &qword_1ECCDEBC0, &qword_1DD6445A0);
  sub_1DD4DDC08(v23, &v9[v17], &qword_1ECCDEBC0, &qword_1DD6445A0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
  {
    sub_1DD4DDC08(v9, v12, &qword_1ECCDEBC0, &qword_1DD6445A0);
    if (__swift_getEnumTagSinglePayload(&v9[v17], 1, v3) != 1)
    {
      v19 = v22;
      (*(v4 + 32))(v22, &v9[v17], v3);
      sub_1DD4A0A78(&qword_1EE166050, MEMORY[0x1E6969550]);
      v18 = sub_1DD63FD98();
      v20 = *(v4 + 8);
      v20(v19, v3);
      sub_1DD390754(v16, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v20(v12, v3);
      sub_1DD390754(v9, &qword_1ECCDEBC0, &qword_1DD6445A0);
      return v18 & 1;
    }

    sub_1DD390754(v16, &qword_1ECCDEBC0, &qword_1DD6445A0);
    (*(v4 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_1DD390754(v16, &qword_1ECCDEBC0, &qword_1DD6445A0);
  if (__swift_getEnumTagSinglePayload(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_1DD390754(v9, &qword_1ECCDDDA8, &unk_1DD65B820);
    v18 = 0;
    return v18 & 1;
  }

  sub_1DD390754(v9, &qword_1ECCDEBC0, &qword_1DD6445A0);
  v18 = 1;
  return v18 & 1;
}

void sub_1DD4EB080(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DD640CA8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DD63D078();
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1DD63D078() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DD4EB42C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1DD4EB1B0(0, v2, 1, a1);
  }
}

void sub_1DD4EB1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1DD63D078();
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v30 - v11;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v35 = v19;
      v36 = a3;
      v33 = v21;
      v34 = v20;
      do
      {
        v22 = v43;
        v23 = v41;
        (v41)(v43, v21, v8, v14);
        v24 = v44;
        v23(v44, v19, v8);
        v25 = sub_1DD63CFB8();
        v26 = *v18;
        (*v18)(v24, v8);
        v26(v22, v8);
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (!v39)
        {
          __break(1u);
          return;
        }

        v27 = *v38;
        v28 = v40;
        (*v38)(v40, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        v27(v19, v28, v8);
        v19 += v37;
        v21 += v37;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v36 + 1;
      v19 = &v35[v31];
      v20 = v34 - 1;
      v21 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD4EB42C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v126 = a1;
  v145 = sub_1DD63D078();
  MEMORY[0x1EEE9AC00](v145);
  v129 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v138 = &v122 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v144 = &v122 - v13;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v143 = &v122 - v17;
  v134 = v15;
  v135 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v136 = v20;
      v115 = v20 + 16;
      v116 = *(v20 + 2);
      while (v116 >= 2)
      {
        if (!*v135)
        {
          goto LABEL_140;
        }

        v117 = v6;
        v118 = &v136[16 * v116];
        v6 = *v118;
        v119 = &v115[2 * v116];
        v120 = v119[1];
        sub_1DD4EBD9C(*v135 + *(v134 + 72) * *v118, *v135 + *(v134 + 72) * *v119, *v135 + *(v134 + 72) * v120, v5);
        if (v117)
        {
          break;
        }

        if (v120 < v6)
        {
          goto LABEL_128;
        }

        if (v116 - 2 >= *v115)
        {
          goto LABEL_129;
        }

        *v118 = v6;
        *(v118 + 1) = v120;
        v121 = *v115 - v116;
        if (*v115 < v116)
        {
          goto LABEL_130;
        }

        v116 = *v115 - 1;
        memmove(v119, v119 + 2, 16 * v121);
        *v115 = v116;
        v6 = 0;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v20 = sub_1DD4EC2B8();
    goto LABEL_104;
  }

  v123 = a4;
  v19 = 0;
  v141 = (v15 + 8);
  v142 = v15 + 16;
  v140 = (v15 + 32);
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = v19++;
    if (v19 >= v18)
    {
      goto LABEL_32;
    }

    v125 = v6;
    v136 = v20;
    v137 = v18;
    v22 = *v135;
    v23 = *(v15 + 72);
    v5 = v21;
    v24 = *v135 + v23 * v19;
    v25 = *(v15 + 16);
    v26 = v143;
    v133 = v19;
    v27 = v145;
    v25(v143, v24, v145, v16);
    v28 = v144;
    v131 = v25;
    (v25)(v144, v22 + v23 * v5, v27);
    LODWORD(v132) = sub_1DD63CFB8();
    v29 = *(v134 + 8);
    v29(v28, v27);
    v30 = v27;
    v19 = v133;
    v130 = v29;
    v29(v26, v30);
    v31 = v137;
    v124 = v5;
    v32 = v5 + 2;
    v139 = v23;
    v33 = v22 + v23 * (v5 + 2);
    while (1)
    {
      v34 = v32;
      v35 = v19 + 1;
      if (v35 >= v31)
      {
        break;
      }

      v36 = v35;
      v37 = v143;
      v38 = v145;
      v39 = v131;
      (v131)(v143, v33, v145);
      v40 = v144;
      v39(v144, v24, v38);
      v41 = sub_1DD63CFB8() & 1;
      v42 = v40;
      v5 = v141;
      v43 = v130;
      (v130)(v42, v38);
      v44 = v37;
      v19 = v36;
      v43(v44, v38);
      v33 += v139;
      v24 += v139;
      v32 = v34 + 1;
      v31 = v137;
      if ((v132 & 1) != v41)
      {
        goto LABEL_9;
      }
    }

    v19 = v31;
LABEL_9:
    v6 = v125;
    if (v132)
    {
      v21 = v124;
      if (v19 < v124)
      {
        goto LABEL_134;
      }

      if (v124 >= v19)
      {
        v15 = v134;
        v20 = v136;
LABEL_32:
        v53 = v145;
        goto LABEL_33;
      }

      v5 = v19;
      v45 = v31 >= v34 ? v34 : v31;
      v46 = v139 * (v45 - 1);
      v47 = v139 * v45;
      v48 = v124 * v139;
      v133 = v19;
      do
      {
        if (v21 != --v5)
        {
          v49 = *v135;
          if (!*v135)
          {
            goto LABEL_141;
          }

          v50 = v145;
          v51 = *v140;
          (*v140)(v129, v49 + v48, v145);
          v52 = v48 < v46 || v49 + v48 >= v49 + v47;
          if (v52)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v48 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51((v49 + v46), v129, v50);
        }

        ++v21;
        v46 -= v139;
        v47 -= v139;
        v48 += v139;
      }

      while (v21 < v5);
      v6 = v125;
      v19 = v133;
      v15 = v134;
    }

    else
    {
      v15 = v134;
    }

    v20 = v136;
    v53 = v145;
    v21 = v124;
LABEL_33:
    v54 = v135[1];
    if (v19 < v54)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_133;
      }

      if (v19 - v21 < v123)
      {
        break;
      }
    }

LABEL_49:
    if (v19 < v21)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BEB7C();
      v20 = v113;
    }

    v71 = *(v20 + 2);
    v72 = v71 + 1;
    if (v71 >= *(v20 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v20 = v114;
    }

    *(v20 + 2) = v72;
    v73 = v20 + 32;
    v74 = &v20[16 * v71 + 32];
    *v74 = v21;
    *(v74 + 1) = v19;
    v139 = *v126;
    if (!v139)
    {
      goto LABEL_142;
    }

    if (v71)
    {
      v136 = v20;
      while (1)
      {
        v75 = v72 - 1;
        v76 = &v73[16 * v72 - 16];
        v77 = &v20[16 * v72];
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v78 = *(v20 + 4);
          v79 = *(v20 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_70:
          if (v81)
          {
            goto LABEL_119;
          }

          v93 = *v77;
          v92 = *(v77 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_122;
          }

          v97 = *(v76 + 1);
          v98 = v97 - *v76;
          if (__OFSUB__(v97, *v76))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v95, v98))
          {
            goto LABEL_127;
          }

          if (v95 + v98 >= v80)
          {
            if (v80 < v98)
            {
              v75 = v72 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v72 < 2)
        {
          goto LABEL_121;
        }

        v100 = *v77;
        v99 = *(v77 + 1);
        v88 = __OFSUB__(v99, v100);
        v95 = v99 - v100;
        v96 = v88;
LABEL_85:
        if (v96)
        {
          goto LABEL_124;
        }

        v102 = *v76;
        v101 = *(v76 + 1);
        v88 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v88)
        {
          goto LABEL_126;
        }

        if (v103 < v95)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v75 - 1 >= v72)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v135)
        {
          goto LABEL_139;
        }

        v107 = &v73[16 * v75 - 16];
        v108 = *v107;
        v109 = &v73[16 * v75];
        v110 = *(v109 + 1);
        sub_1DD4EBD9C(*v135 + *(v134 + 72) * *v107, *v135 + *(v134 + 72) * *v109, *v135 + *(v134 + 72) * v110, v139);
        if (v6)
        {
          goto LABEL_112;
        }

        if (v110 < v108)
        {
          goto LABEL_114;
        }

        v5 = 0;
        v6 = v73;
        v111 = *(v136 + 2);
        if (v75 > v111)
        {
          goto LABEL_115;
        }

        *v107 = v108;
        *(v107 + 1) = v110;
        if (v75 >= v111)
        {
          goto LABEL_116;
        }

        v72 = v111 - 1;
        memmove(v109, v109 + 16, 16 * (v111 - 1 - v75));
        v20 = v136;
        *(v136 + 2) = v111 - 1;
        v112 = v111 > 2;
        v73 = v6;
        v6 = 0;
        if (!v112)
        {
          goto LABEL_99;
        }
      }

      v82 = &v73[16 * v72];
      v83 = *(v82 - 8);
      v84 = *(v82 - 7);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_117;
      }

      v87 = *(v82 - 6);
      v86 = *(v82 - 5);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_118;
      }

      v89 = *(v77 + 1);
      v90 = v89 - *v77;
      if (__OFSUB__(v89, *v77))
      {
        goto LABEL_120;
      }

      v88 = __OFADD__(v80, v90);
      v91 = v80 + v90;
      if (v88)
      {
        goto LABEL_123;
      }

      if (v91 >= v85)
      {
        v105 = *v76;
        v104 = *(v76 + 1);
        v88 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v88)
        {
          goto LABEL_131;
        }

        if (v80 < v106)
        {
          v75 = v72 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v15 = v134;
    v18 = v135[1];
    if (v19 >= v18)
    {
      goto LABEL_102;
    }
  }

  v55 = v21 + v123;
  if (__OFADD__(v21, v123))
  {
    goto LABEL_135;
  }

  if (v55 >= v54)
  {
    v55 = v135[1];
  }

  if (v55 < v21)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v19 == v55)
  {
    goto LABEL_49;
  }

  v124 = v21;
  v125 = v6;
  v56 = *v135;
  v57 = *(v15 + 72);
  v139 = *(v15 + 16);
  v58 = v56 + v57 * (v19 - 1);
  v59 = -v57;
  v60 = (v21 - v19);
  v136 = v20;
  v137 = v56;
  v127 = v57;
  v128 = v55;
  v61 = (v56 + v19 * v57);
LABEL_42:
  v132 = v58;
  v133 = v19;
  v130 = v61;
  v131 = v60;
  v62 = v58;
  while (1)
  {
    v63 = v143;
    v64 = v139;
    (v139)(v143, v61, v53);
    v65 = v144;
    v64(v144, v62, v145);
    v66 = sub_1DD63CFB8();
    v5 = v141;
    v67 = *v141;
    v68 = v65;
    v53 = v145;
    (*v141)(v68, v145);
    v67(v63, v53);
    if ((v66 & 1) == 0)
    {
LABEL_47:
      v19 = v133 + 1;
      v58 = v132 + v127;
      v60 = v131 - 1;
      v61 = &v130[v127];
      if (v133 + 1 == v128)
      {
        v19 = v128;
        v21 = v124;
        v6 = v125;
        v20 = v136;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    if (!v137)
    {
      break;
    }

    v69 = *v140;
    v70 = v138;
    (*v140)(v138, v61, v53);
    swift_arrayInitWithTakeFrontToBack();
    v69(v62, v70, v53);
    v62 += v59;
    v61 += v59;
    v52 = __CFADD__(v60++, 1);
    if (v52)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_1DD4EBD9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = a4;
  v60 = sub_1DD63D078();
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v49 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v13 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v13)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v12;
  v64 = a1;
  v63 = v61;
  v55 = (v9 + 8);
  v56 = (v9 + 16);
  v17 = v14 / v12;
  if (v16 >= v14 / v12)
  {
    v31 = v61;
    sub_1DD3C1C80(a2, v14 / v12, v61);
    v32 = v31 + v17 * v12;
    v33 = -v12;
    v34 = v32;
    v51 = -v12;
    v52 = a1;
LABEL_36:
    v35 = v34;
    v53 = a2;
    v54 = a2 + v33;
    v36 = a3;
    v49 = v34;
    while (1)
    {
      if (v32 <= v61)
      {
        v64 = a2;
        v62 = v35;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v35;
      v59 = v36 + v33;
      v37 = v32 + v33;
      v38 = v57;
      v39 = *v56;
      v40 = v32;
      v41 = v60;
      (*v56)(v57, v37, v60);
      v42 = v58;
      v39(v58, v54, v41);
      LOBYTE(v39) = sub_1DD63CFB8();
      v43 = *v55;
      (*v55)(v42, v41);
      v43(v38, v41);
      if (v39)
      {
        v32 = v40;
        a3 = v59;
        if (v36 < v53 || v59 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v50;
          v33 = v51;
          a1 = v52;
        }

        else
        {
          v47 = v50;
          v33 = v51;
          v34 = v50;
          v13 = v36 == v53;
          v48 = v54;
          a2 = v54;
          a1 = v52;
          if (!v13)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v48;
            v34 = v47;
          }
        }

        goto LABEL_36;
      }

      v44 = v59;
      if (v36 < v40 || v59 >= v40)
      {
        swift_arrayInitWithTakeFrontToBack();
        v36 = v44;
        v32 = v37;
        v35 = v37;
        a1 = v52;
        a2 = v53;
        v33 = v51;
      }

      else
      {
        v35 = v37;
        v13 = v40 == v36;
        v36 = v59;
        v32 = v37;
        a1 = v52;
        a2 = v53;
        v33 = v51;
        if (!v13)
        {
          swift_arrayInitWithTakeBackToFront();
          v36 = v44;
          v32 = v37;
          v35 = v37;
        }
      }
    }

    v64 = a2;
    v62 = v49;
  }

  else
  {
    v18 = v61;
    sub_1DD3C1C80(a1, (a2 - a1) / v12, v61);
    v54 = v18 + v16 * v12;
    v62 = v54;
    v59 = a3;
    while (v61 < v54 && a2 < a3)
    {
      v20 = a1;
      v21 = v57;
      v22 = *v56;
      v23 = v60;
      (*v56)(v57, a2, v60);
      v24 = v58;
      v22(v58, v61, v23);
      LOBYTE(v22) = sub_1DD63CFB8();
      v25 = a2;
      v26 = *v55;
      (*v55)(v24, v23);
      v26(v21, v23);
      if (v22)
      {
        a2 = v25 + v12;
        v27 = v20;
        if (v20 < v25 || v20 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v59;
        }

        else
        {
          a3 = v59;
          if (v20 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v29 = v61 + v12;
        v27 = v20;
        if (v20 < v61 || v20 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v25;
          a3 = v59;
        }

        else
        {
          a2 = v25;
          a3 = v59;
          if (v20 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v63 = v29;
        v61 = v29;
      }

      a1 = v27 + v12;
      v64 = a1;
    }
  }

LABEL_58:
  sub_1DD4EC41C(&v64, &v63, &v62, MEMORY[0x1E6969530]);
}

void sub_1DD4EC324(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_18_25();
  v12 = !v12 || v5 >= v11;
  if (v12)
  {
    OUTLINED_FUNCTION_1_8();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    OUTLINED_FUNCTION_1_8();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1DD4EC41C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_7();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_18_25();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    OUTLINED_FUNCTION_1_8();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_1_8();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_1DD4EC4E4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1DD4EC510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC88, &qword_1DD654E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1DD4EC610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for IsRecentSignalProvider(uint64_t a1)
{
  result = qword_1EE1650F0;
  if (!qword_1EE1650F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD4EC8AC(uint64_t a1)
{
  result = sub_1DD63D078();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DD4EC960()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v0 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD652040;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E6969AB8], v0);
  v8(v7 + v4, *MEMORY[0x1E6969AC0], v0);
  v8(v7 + 2 * v4, *MEMORY[0x1E6969A68], v0);
  v8(v7 + 3 * v4, *MEMORY[0x1E6969A78], v0);
  v8(v7 + 4 * v4, *MEMORY[0x1E6969A48], v0);

  sub_1DD56BDEC();
}

uint64_t sub_1DD4ECAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v78 = a2;
  sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  v66 = v5;
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v64 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2_1();
  v65 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v74 = (&v61 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v69 = &v61 - v15;
  sub_1DD63CBB8();
  OUTLINED_FUNCTION_0();
  v72 = v17;
  v73 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v70 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v63 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_1();
  v61 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v75 = &v61 - v25;
  v26 = sub_1DD63D188();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v32 = v31 - v30;
  v33 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2();
  v39 = v38 - v37;
  v40 = (19 * (a1 % 19) + 15) % 30;
  v41 = ((4 * (a1 % 7) + 2 * (a1 % 4) - v40 + 34) % 7 + v40 + 114) / 0x1Fu;
  v68 = (((4 * (a1 % 7) + 2 * (a1 % 4) - v40 + 34) % 7 + v40 + 114) % 0x1Fu + 1);
  (*(v28 + 104))(v32, *MEMORY[0x1E6969868], v26);
  sub_1DD63D198();
  (*(v28 + 8))(v32, v26);
  v76 = v35;
  v42 = v69;
  (*(v35 + 16))(v69, v39, v33);
  v43 = v42;
  v77 = v33;
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v33);
  v44 = sub_1DD63D328();
  v45 = v71;
  (*(*(v44 - 8) + 16))(v71, v78, v44);
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v44);
  v46 = v41;
  v47 = v70;
  sub_1DD63CB68(v43, v45, 0, 1, a1, 0, v46, 0, v68, 0, 0);
  v48 = v74;
  sub_1DD63CA68();
  (*(v72 + 8))(v20, v73);
  if (__swift_getEnumTagSinglePayload(v48, 1, v47) == 1)
  {
    sub_1DD4AF0C8(v48);
    sub_1DD4ED2C4();
    swift_allocError();
    *v49 = 0;
    *(v49 + 8) = 1;
    swift_willThrow();
    return (*(v76 + 8))(v39, v77);
  }

  v50 = v63;
  v74 = *(v63 + 32);
  v74(v75, v48, v47);
  v51 = v39;
  v53 = v66;
  v52 = v67;
  v54 = v64;
  (*(v66 + 104))(v64, *MEMORY[0x1E6969A48], v67);
  v55 = v65;
  sub_1DD63D268();
  (*(v53 + 8))(v54, v52);
  if (__swift_getEnumTagSinglePayload(v55, 1, v47) == 1)
  {
    sub_1DD4AF0C8(v55);
    sub_1DD4ED2C4();
    swift_allocError();
    *v56 = 1;
    *(v56 + 8) = 1;
    swift_willThrow();
    (*(v50 + 8))(v75, v47);
    v39 = v51;
    return (*(v76 + 8))(v39, v77);
  }

  v58 = v61;
  v74(v61, v55, v47);
  sub_1DD4EC960();
  sub_1DD3D856C(v59, v62);

  v60 = *(v50 + 8);
  v60(v58, v47);
  v60(v75, v47);
  return (*(v76 + 8))(v51, v77);
}

unint64_t sub_1DD4ED2C4()
{
  result = qword_1ECCDDDB8;
  if (!qword_1ECCDDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JulianEasterError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JulianEasterError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1DD4ED368(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD4ED384(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

__n128 Landmark.init(venue:airport:theater:business:poi:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(a6 + 16);
  v10 = a7[1].n128_u8[0];
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = *a3;
  *(a8 + 32) = v8;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = *a6;
  *(a8 + 72) = v9;
  result = *a7;
  *(a8 + 80) = *a7;
  *(a8 + 96) = v10;
  return result;
}

uint64_t Landmark.venue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Landmark.theater.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Landmark.poi.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t static Landmark.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 16);
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[10];
  v12 = *(a1 + 96);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v18 = *(a2 + 40);
  v17 = *(a2 + 48);
  v20 = *(a2 + 56);
  v19 = *(a2 + 64);
  v21 = *(a2 + 88);
  if (v3)
  {
    if (!v13)
    {
      goto LABEL_17;
    }

    if (*a1 != *a2 || v3 != v13)
    {
      v50 = a1[5];
      v52 = *(a2 + 48);
      v45 = *(a1 + 96);
      v46 = *(a2 + 96);
      v41 = a1[8];
      v43 = a1[10];
      v40 = *(a2 + 88);
      v47 = a1[11];
      v48 = *(a2 + 40);
      v23 = *(a2 + 64);
      v54 = a1[7];
      v24 = *(a2 + 56);
      v39 = a1[6];
      v25 = sub_1DD640CD8();
      v18 = v48;
      v7 = v50;
      v17 = v52;
      v9 = v54;
      v8 = v39;
      v20 = v24;
      v19 = v23;
      v10 = v41;
      v11 = v43;
      if ((v25 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (v13)
  {
    goto LABEL_17;
  }

  if (!v5)
  {
    if (!v15)
    {
      v49 = v18;
      v51 = v7;
      v53 = v17;
      v55 = v9;
      v26 = v8;
      v42 = v20;
      v44 = v19;
      OUTLINED_FUNCTION_4_48();

      goto LABEL_20;
    }

LABEL_15:

LABEL_16:

    goto LABEL_17;
  }

  v59 = v4;
  v60 = v5;
  v61 = v6;
  if (!v15)
  {
    goto LABEL_15;
  }

  v49 = v18;
  v51 = v7;
  v53 = v17;
  v55 = v9;
  v26 = v8;
  v42 = v20;
  v44 = v19;
  OUTLINED_FUNCTION_4_48();
  v56 = v14;
  v57 = v15;
  v58 = v16 & 0x1FF;
  swift_bridgeObjectRetain_n();

  v27 = static AirportLandmark.== infix(_:_:)(&v59, &v56);

  if (v27)
  {
LABEL_20:
    v30 = v4;
    v31 = v42;
    if (v26)
    {
      v32 = v44;
      v33 = v55;
      v34 = v45;
      if (!v53)
      {
        goto LABEL_17;
      }

      if (v51 != v49 || v26 != v53)
      {
        v36 = v30;
        v37 = sub_1DD640CD8();
        v31 = v42;
        v30 = v36;
        v34 = v45;
        v32 = v44;
        if ((v37 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v32 = v44;
      v33 = v55;
      v34 = v45;
      if (v53)
      {
        goto LABEL_17;
      }
    }

    if (v10)
    {
      v59 = v33;
      v60 = v10;
      v61 = v34;
      if (v32)
      {
        v56 = v31;
        v57 = v32;
        v58 = v30 & 0x1FF;
        swift_bridgeObjectRetain_n();

        v38 = static BusinessLandmark.== infix(_:_:)(&v59, &v56);

        if ((v38 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_36;
      }
    }

    else if (!v32)
    {

LABEL_36:
      if (v47)
      {
        v59 = v11;
        v60 = v47;
        LOBYTE(v61) = v12;
        if (v21)
        {
          v56 = v40;
          v57 = v21;
          LOBYTE(v58) = v46;
          swift_bridgeObjectRetain_n();

          v28 = static POILandmark.== infix(_:_:)(&v59, &v56);

          return v28 & 1;
        }
      }

      else if (!v21)
      {

        v28 = 1;
        return v28 & 1;
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1DD4ED808(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756E6576 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74726F70726961 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72657461656874 && a2 == 0xE700000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7373656E69737562 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 6909808 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD640CD8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DD4ED9AC(char a1)
{
  result = 0x65756E6576;
  switch(a1)
  {
    case 1:
      result = 0x74726F70726961;
      break;
    case 2:
      result = 0x72657461656874;
      break;
    case 3:
      result = 0x7373656E69737562;
      break;
    case 4:
      result = 6909808;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4EDA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4ED808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4EDA6C(uint64_t a1)
{
  v2 = sub_1DD4EE200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4EDAA8(uint64_t a1)
{
  v2 = sub_1DD4EE200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Landmark.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDDC0, &qword_1DD655098);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = *(v1 + 24);
  v37 = *(v1 + 16);
  v38 = v9;
  v43 = *(v1 + 32);
  v10 = *(v1 + 40);
  v35 = *(v1 + 48);
  v36 = v10;
  v11 = *(v1 + 56);
  v33 = *(v1 + 64);
  v34 = v11;
  LODWORD(v11) = *(v1 + 72);
  v12 = *(v1 + 88);
  v29 = *(v1 + 80);
  v30 = v12;
  v31 = *(v1 + 96);
  v32 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4EE200();
  sub_1DD640EF8();
  LOBYTE(v40) = 0;
  v13 = v39;
  sub_1DD640BC8();
  if (!v13)
  {
    v15 = v33;
    v14 = v34;
    v40 = v37;
    v41 = v38;
    v42 = v43;
    v44 = 1;
    v16 = sub_1DD4EE254();

    OUTLINED_FUNCTION_1_73(v17, v18, v19, &type metadata for AirportLandmark);
    if (v16)
    {
LABEL_3:

      return (*(v5 + 8))(v8, v3);
    }

    LOBYTE(v40) = 2;
    sub_1DD640BC8();
    v40 = v14;
    v41 = v15;
    v42 = v32;
    v44 = 3;
    v20 = sub_1DD4EE2A8();

    OUTLINED_FUNCTION_1_73(v21, v22, v23, &type metadata for BusinessLandmark);

    if (!v20)
    {
      v40 = v29;
      v41 = v30;
      LOBYTE(v42) = v31;
      v44 = 4;
      sub_1DD4EE2FC();

      OUTLINED_FUNCTION_1_73(v25, v26, v27, &type metadata for POILandmark);
      goto LABEL_3;
    }
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t Landmark.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDDE8, &qword_1DD6550A0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4EE200();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  v6 = sub_1DD640AD8();
  v23 = v7;
  LOBYTE(__src[0]) = 1;
  sub_1DD4EE350();
  OUTLINED_FUNCTION_3_52(&type metadata for AirportLandmark, __src);
  v20 = v25;
  v22 = v26;
  v41 = v27;
  LOBYTE(v25) = 2;
  v19 = sub_1DD640AD8();
  v21 = v8;
  LOBYTE(__src[0]) = 3;
  sub_1DD4EE3A4();
  OUTLINED_FUNCTION_3_52(&type metadata for BusinessLandmark, __src);
  v17 = v25;
  v18 = v26;
  v16 = v27;
  v42 = 4;
  sub_1DD4EE3F8();
  OUTLINED_FUNCTION_3_52(&type metadata for POILandmark, &v42);
  v9 = OUTLINED_FUNCTION_0_95();
  v10(v9);
  v15 = v38;
  v14 = v39;
  v13 = v40;
  __src[0] = v6;
  __src[1] = v23;
  __src[2] = v20;
  __src[3] = v22;
  v11 = v41;
  LOWORD(__src[4]) = v41;
  __src[5] = v19;
  __src[6] = v21;
  __src[7] = v17;
  __src[8] = v18;
  LOWORD(__src[9]) = v16;
  __src[10] = v38;
  __src[11] = v39;
  LOBYTE(__src[12]) = v40;
  memcpy(a2, __src, 0x61uLL);
  sub_1DD4EE44C(__src, &v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v25 = v6;
  v26 = v23;
  v27 = v20;
  v28 = v22;
  v29 = v11;
  v30 = v19;
  v31 = v21;
  v32 = v17;
  v33 = v18;
  v34 = v16;
  v35 = v15;
  v36 = v14;
  v37 = v13;
  return sub_1DD4EE484(&v25);
}

unint64_t sub_1DD4EE200()
{
  result = qword_1ECCDDDC8;
  if (!qword_1ECCDDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDC8);
  }

  return result;
}

unint64_t sub_1DD4EE254()
{
  result = qword_1ECCDDDD0;
  if (!qword_1ECCDDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDD0);
  }

  return result;
}

unint64_t sub_1DD4EE2A8()
{
  result = qword_1ECCDDDD8;
  if (!qword_1ECCDDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDD8);
  }

  return result;
}

unint64_t sub_1DD4EE2FC()
{
  result = qword_1ECCDDDE0;
  if (!qword_1ECCDDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDE0);
  }

  return result;
}

unint64_t sub_1DD4EE350()
{
  result = qword_1ECCDDDF0;
  if (!qword_1ECCDDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDF0);
  }

  return result;
}

unint64_t sub_1DD4EE3A4()
{
  result = qword_1ECCDDDF8;
  if (!qword_1ECCDDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDF8);
  }

  return result;
}

unint64_t sub_1DD4EE3F8()
{
  result = qword_1ECCDDE00;
  if (!qword_1ECCDDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE00);
  }

  return result;
}

uint64_t sub_1DD4EE4BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 97))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1DD4EE510(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Landmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}