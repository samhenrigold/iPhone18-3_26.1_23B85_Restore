uint64_t getEnumTagSinglePayload for DonationConversionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2313F8D68(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_2313F8DB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2313F8E2C()
{
  result = qword_27DD4ED48;
  if (!qword_27DD4ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4ED48);
  }

  return result;
}

unint64_t sub_2313F8E88(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x7A696E676F636572;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x55746C7561666564;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_2313F8F3C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x2313F9008);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2313F9030()
{
  result = qword_27DD4D760;
  if (!qword_27DD4D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD4D760);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InteractionDevicePlatform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t OUTLINED_FUNCTION_67()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t Donation.userDonator.getter()
{
  v2 = OUTLINED_FUNCTION_92();
  v3 = (v1 + *(type metadata accessor for Donation(v2) + 32));
  v4 = *v3;
  v5 = v3[1];
  *v0 = *v3;
  v0[1] = v5;

  return sub_2313E6C34(v4, v5);
}

void static InteractionStore.inProcess(user:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  v7 = &unk_28460C4B0;
  v3 = sub_2313E3100();
  v8 = v3;
  LOBYTE(v6[0]) = 0;
  v4 = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v6);
  v7 = &unk_28460C4B0;
  v8 = v3;
  OUTLINED_FUNCTION_19_7();
  v5 = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v6);
  v7 = &unk_28460C4B0;
  v8 = v3;
  OUTLINED_FUNCTION_19_7();
  LOBYTE(v3) = sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(v6);
  LOBYTE(v6[0]) = v4 & 1;
  BYTE1(v6[0]) = v5 & 1;
  BYTE2(v6[0]) = v3 & 1;
  sub_2313E4D38(v6, &v9, a2);
}

uint64_t sub_2313F92E8()
{
  OUTLINED_FUNCTION_92();
  sub_231477CB8();
  sub_2313F7138(&qword_280C3C180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v0 = OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_2313FD260(&qword_280C3C140, &unk_27DD4EA90, &unk_23147F7E0);
  return sub_231478498();
}

uint64_t OUTLINED_FUNCTION_123_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 - 304);
  v7 = *(v4 - 312);
  v8 = *(v4 - 296);

  return sub_2313ED944(v6, v7, v8, a4);
}

uint64_t sub_2313F93F0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_231477C98();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2313F9468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = a3;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  v9 = MEMORY[0x28223BE20](v77);
  v78 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = (&v67 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v67 - v13;
  v14 = type metadata accessor for Interaction(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v67 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v67 - v21;
  v74 = type metadata accessor for _NewInteraction(0);
  v23 = MEMORY[0x28223BE20](v74);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = (&v67 - v26);
  swift_beginAccess();
  v28 = *(a1 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    v70 = v17;
    v76 = v14;
    *(a1 + 16) = v30;
    if (qword_280C3CF50 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v31 = sub_231477B68();
  v32 = __swift_project_value_buffer(v31, qword_280C3D970);
  sub_2313EB328();
  sub_2313EB328();

  v71 = v32;
  v33 = sub_231477B58();
  v34 = sub_231478298();
  v35 = os_log_type_enabled(v33, v34);
  v75 = a2;
  v73 = v22;
  v72 = v20;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v69 = a5;
    v37 = v36;
    v38 = swift_slowAlloc();
    v68 = a4;
    v39 = v38;
    v82 = v38;
    *v37 = 136315650;
    v40 = *v27;
    v41 = v27[1];

    sub_2313EB380();
    v42 = sub_2313EB684(v40, v41, &v82);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2048;
    v43 = *&v25[*(v74 + 64)];
    sub_2313EB380();
    *(v37 + 14) = v43;
    *(v37 + 22) = 2048;
    a2 = v75;
    swift_beginAccess();
    *(v37 + 24) = *(a1 + 16);

    _os_log_impl(&dword_2313E1000, v33, v34, "Track the interaction: %s, contentHash: %ld with %ld", v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v44 = v39;
    a4 = v68;
    MEMORY[0x23192F1F0](v44, -1, -1);
    MEMORY[0x23192F1F0](v37, -1, -1);
  }

  else
  {
    sub_2313EB380();

    sub_2313EB380();
  }

  v45 = a2[1];
  v46 = v81;
  *v81 = *a2;
  v46[1] = v45;
  type metadata accessor for QueryValue(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v86 = 0;
  sub_2313E93D4();

  v47 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  sub_2313E8CDC();
  v48 = v82;
  v49 = v83;
  v50 = v84;
  v51 = v85;
  v52 = v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2313F3244();
    v52 = v65;
  }

  v53 = *(v52 + 16);
  if (v53 >= *(v52 + 24) >> 1)
  {
    sub_2313F3244();
    v52 = v66;
  }

  swift_bridgeObjectRelease_n();
  sub_2313E937C(v81, &unk_27DD4D680, &unk_2314795C0);
  *(v52 + 16) = v53 + 1;
  v54 = v52 + 32 * v53;
  *(v54 + 32) = v48;
  *(v54 + 40) = v49;
  *(v54 + 48) = v50;
  *(v54 + 56) = v51;
  v82 = v47;
  v83 = v52;
  v84 = v86;
  v55 = v80;
  sub_2313FEB98();

  if (__swift_getEnumTagSinglePayload(v55, 1, v76) == 1)
  {
    return sub_2313E937C(v55, &qword_27DD4D690, &qword_231479AD0);
  }

  sub_2313F31EC();
  sub_2313EB328();
  v57 = sub_231477B58();
  v58 = sub_231478298();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v82 = v60;
    *v59 = 136315138;
    sub_2313EB328();
    v61 = sub_231477EB8();
    v63 = v62;
    sub_2313EB380();
    v64 = sub_2313EB684(v61, v63, &v82);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_2313E1000, v57, v58, "Found the interaction: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x23192F1F0](v60, -1, -1);
    MEMORY[0x23192F1F0](v59, -1, -1);
  }

  else
  {

    sub_2313EB380();
  }

  if (sub_231438658(v75))
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
    swift_getObjectType();
    sub_231478388();
  }

  return sub_2313EB380();
}

void sub_2313F9CA4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _NewInteraction(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_0();
  v49 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v47 = type metadata accessor for Interaction(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_0();
  v46 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D988, &unk_23147A270);
  OUTLINED_FUNCTION_14(v15);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = a1[4];
  v20 = a1[5];
  v21 = a1[6];
  v22 = a1[7];
  v23 = *(v7 + 72);
  v48 = a1;
  v24 = *(a1 + v23);
  v51[0] = v19;
  v51[1] = v20;
  v51[2] = v21;
  v51[3] = v22;
  v51[4] = v21;
  v51[5] = v22;
  v51[6] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
  v26 = *(v25 + 48);
  OUTLINED_FUNCTION_1_21();
  sub_2314054F0();
  *&v18[v26] = a3;
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v25);
  swift_bridgeObjectRetain_n();

  sub_23140620C(v18, v51);
  v28 = *(a2 + 64);
  v27 = *(a2 + 72);
  v29 = v28 == 0xD000000000000011 && 0x8000000231482700 == v27;
  if (v29 || (sub_2314787C8() & 1) != 0)
  {

    OUTLINED_FUNCTION_14_12();
    v33 = sub_231406EA0(v30, v31, v32);

    sub_231460790(v28, v27, v33);

    if (__swift_getEnumTagSinglePayload(v12, 1, v47) == 1)
    {
      v34 = sub_2313E937C(v12, &qword_27DD4D690, &qword_231479AD0);
      MEMORY[0x28223BE20](v34);
      OUTLINED_FUNCTION_18_7();
      sub_23140A904();
    }

    else
    {
      v35 = v46;
      sub_231461468();
      v36 = sub_231476C18();
      if (v36)
      {
        MEMORY[0x28223BE20](v36);
        OUTLINED_FUNCTION_18_7();
        sub_23140A904();
      }

      sub_231405CC4(v35, type metadata accessor for Interaction);
    }
  }

  sub_2314061B4();
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v37 = sub_231477B68();
  __swift_project_value_buffer(v37, qword_280C3D970);
  sub_2314054F0();

  v38 = sub_231477B58();
  v39 = sub_2314782A8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v50 = v41;
    *v40 = 136315394;

    OUTLINED_FUNCTION_4_14();
    v42 = OUTLINED_FUNCTION_17();
    v45 = sub_2313EB684(v42, v43, v44);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2048;
    *(v40 + 14) = sub_231405C58();

    _os_log_impl(&dword_2313E1000, v38, v39, "Cached donation for %s: cacheSize %ld", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x23192F1F0](v41, -1, -1);
    MEMORY[0x23192F1F0](v40, -1, -1);
  }

  else
  {

    OUTLINED_FUNCTION_4_14();
  }
}

uint64_t sub_2313FA1B8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = sub_231477E58();
  CanLearnFromApp = SGSiriCanLearnFromApp(v3);

  return CanLearnFromApp;
}

uint64_t sub_2313FA260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Interaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 Donation.init(interaction:entities:)()
{
  OUTLINED_FUNCTION_73();
  v3 = v2;
  v4 = type metadata accessor for Donation(0);
  v5 = OUTLINED_FUNCTION_132_0(v4);
  v7 = v3 + v6;
  *(v3 + v6) = xmmword_231479AA0;
  v8 = v5[9];
  v9 = v5[10];
  *(v3 + v9) = 0;
  *(v3 + v5[7]) = 0;
  OUTLINED_FUNCTION_9_2();
  sub_2313F31EC();
  *(v3 + *(v1 + 20)) = v0;
  sub_2313EADE8(*v7, *(v7 + 8));
  result = xmmword_231479AA0;
  *v7 = xmmword_231479AA0;
  *(v3 + v8) = 1;
  *(v3 + v9) = 0;
  return result;
}

BOOL sub_2313FA388(void *a1, double a2)
{
  type metadata accessor for Interaction(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  v8 = type metadata accessor for Donation(0);
  v9 = OUTLINED_FUNCTION_14(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  sub_231476BC8();
  v14 = v13;
  v15 = a1[8];
  v37 = a1[9];
  v16 = a1[6];
  v17 = a1[7];
  v18 = sub_2313FA690(&unk_2846085E8);
  v19 = sub_2313FA690(&unk_284608648);
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v20 = sub_231477B68();
  __swift_project_value_buffer(v20, qword_280C3D970);
  sub_2313F4BF8(a1, v12, type metadata accessor for Donation);
  v21 = sub_231477B58();
  v22 = sub_2314782A8();
  if (os_log_type_enabled(v21, v22))
  {
    v36 = v16;
    v23 = swift_slowAlloc();
    v35 = v15;
    v24 = v17;
    v25 = swift_slowAlloc();
    v38 = v25;
    *v23 = 136315650;
    sub_2313F4BF8(v12, v7, type metadata accessor for Interaction);
    v26 = sub_231477EB8();
    v28 = v27;
    sub_231404F7C(v12);
    v29 = sub_2313EB684(v26, v28, &v38);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2048;
    *(v23 + 14) = a2;
    *(v23 + 22) = 2048;
    *(v23 + 24) = v14;
    _os_log_impl(&dword_2313E1000, v21, v22, "Checking the interaction StartDate with interaction %s, donatedTs: %f, startDateTs: %f", v23, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v30 = v25;
    v17 = v24;
    v15 = v35;
    MEMORY[0x23192F1F0](v30, -1, -1);
    v31 = v23;
    v16 = v36;
    MEMORY[0x23192F1F0](v31, -1, -1);
  }

  else
  {

    sub_231404F7C(v12);
  }

  v32 = sub_231405B6C(v15, v37, v18);

  if (v32)
  {
    v33 = sub_231405B6C(v16, v17, v19);

    if (v33)
    {
      return v14 <= a2 + -86400.0;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2313FA690(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D558, &qword_231479560);
  result = sub_2314784C8();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_2314788E8();

    sub_231477F38();
    result = sub_231478918();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_2314787C8() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2313FA820()
{
  if (sub_231477268())
  {
    return 0;
  }

  sub_2314770E8();
  sub_231477628();

  sub_231477808();
  OUTLINED_FUNCTION_9_14();

  if (!v0)
  {
    result = v2;
    if (!v2)
    {
      sub_231477278();
      return 0;
    }
  }

  return result;
}

void sub_2313FA928()
{
  OUTLINED_FUNCTION_64();
  HIDWORD(v90) = v2;
  HIDWORD(v94) = v3;
  v98 = v4;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  OUTLINED_FUNCTION_4();
  v96 = v8;
  v97 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v91 = v9;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39();
  v92 = v11;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39();
  v93 = v13;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_81();
  v95 = v15;
  OUTLINED_FUNCTION_47();
  v16 = sub_2314776A8();
  OUTLINED_FUNCTION_4();
  v100 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v19 = sub_231476F88();
  OUTLINED_FUNCTION_4();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  v26 = v6[1];
  v105 = *v6;
  v106[0] = v26;
  *(v106 + 9) = *(v6 + 25);
  v27 = *v0;
  v28 = *(v0 + 8);
  v29 = *(v0 + 16);
  v30 = sub_2313F4D04();
  if (!v1)
  {
    v101 = v19;
    v102 = v25;
    v103 = v16;
    HIDWORD(v88) = v29;
    v89 = v28;
    v85 = v27;
    v86 = v30;
    v87 = 0;
    v31 = *(v98 + 16);
    v32 = MEMORY[0x277D84F90];
    if (v31)
    {
      *&v105 = MEMORY[0x277D84F90];
      v33 = OUTLINED_FUNCTION_47_1();
      sub_2314051E0(v33, v34, v35);
      v36 = 0;
      v37 = v105;
      v104 = (v98 + 32);
      v99 = v100 + 8;
      v100 = v21 + 32;
      while (2)
      {
        switch(v104[v36])
        {
          case 1u:
            OUTLINED_FUNCTION_189();
            goto LABEL_14;
          case 2u:
            OUTLINED_FUNCTION_186();
            goto LABEL_14;
          case 4u:
            OUTLINED_FUNCTION_86_0();
            goto LABEL_14;
          case 5u:
            OUTLINED_FUNCTION_108_0();
            goto LABEL_14;
          case 6u:
            OUTLINED_FUNCTION_85_0();
            goto LABEL_14;
          case 7u:
            if (qword_280C3BC58 != -1)
            {
              OUTLINED_FUNCTION_11_14();
              swift_once();
            }

            v38 = sub_2314770D8();
            __swift_project_value_buffer(v38, qword_280C3D818);
            OUTLINED_FUNCTION_45_0();
            goto LABEL_22;
          case 8u:
            if (qword_27DD4D280 != -1)
            {
              OUTLINED_FUNCTION_10_12();
              swift_once();
            }

            v44 = sub_2314770D8();
            __swift_project_value_buffer(v44, qword_27DD5ACE0);
            OUTLINED_FUNCTION_45_0();
LABEL_22:
            sub_231477508();
            goto LABEL_15;
          case 9u:
            OUTLINED_FUNCTION_137_0();
            goto LABEL_14;
          default:
LABEL_14:
            sub_2314776B8();
            sub_2314774F8();
            v39 = OUTLINED_FUNCTION_134_0();
            v40(v39);
LABEL_15:
            *&v105 = v37;
            v42 = *(v37 + 16);
            v41 = *(v37 + 24);
            if (v42 >= v41 >> 1)
            {
              v45 = OUTLINED_FUNCTION_20(v41);
              sub_2314051E0(v45, v42 + 1, 1);
              v37 = v105;
            }

            ++v36;
            *(v37 + 16) = v42 + 1;
            OUTLINED_FUNCTION_59();
            (*(v21 + 32))(v37 + v43 + *(v21 + 72) * v42, v102);
            if (v31 != v36)
            {
              continue;
            }

            v46 = OUTLINED_FUNCTION_47_1();
            sub_23140557C(v46, v47, v48);
            v49 = MEMORY[0x277D0B7F0];
            v21 = MEMORY[0x277D0B728];
            while (2)
            {
              v50 = *v104++;
              v51 = v103;
              switch(v50)
              {
                case 1:
                  OUTLINED_FUNCTION_170();
                  goto LABEL_33;
                case 2:
                  OUTLINED_FUNCTION_163();
                  goto LABEL_33;
                case 4:
                  OUTLINED_FUNCTION_82_0();
                  goto LABEL_33;
                case 5:
                  OUTLINED_FUNCTION_104_0();
                  goto LABEL_33;
                case 6:
                  OUTLINED_FUNCTION_81_0();
                  goto LABEL_33;
                case 7:
                  if (qword_280C3BC58 != -1)
                  {
                    OUTLINED_FUNCTION_11_14();
                    swift_once();
                  }

                  v52 = sub_2314770D8();
                  v53 = v52;
                  v54 = qword_280C3D818;
                  goto LABEL_41;
                case 8:
                  if (qword_27DD4D280 != -1)
                  {
                    OUTLINED_FUNCTION_10_12();
                    swift_once();
                  }

                  v52 = sub_2314770D8();
                  v53 = v52;
                  v54 = qword_27DD5ACE0;
LABEL_41:
                  __swift_project_value_buffer(v52, v54);
                  *(&v106[0] + 1) = v53;
                  *&v106[1] = v21;
                  __swift_allocate_boxed_opaque_existential_1(&v105);
                  OUTLINED_FUNCTION_38_1();
                  (*(v57 + 16))();
                  goto LABEL_34;
                case 9:
                  OUTLINED_FUNCTION_128_0();
                  goto LABEL_33;
                default:
LABEL_33:
                  *(&v106[0] + 1) = v51;
                  *&v106[1] = v49;
                  __swift_allocate_boxed_opaque_existential_1(&v105);
                  sub_2314776B8();
LABEL_34:
                  v56 = *(v32 + 16);
                  v55 = *(v32 + 24);
                  if (v56 >= v55 >> 1)
                  {
                    v58 = OUTLINED_FUNCTION_20(v55);
                    sub_23140557C(v58, v56 + 1, 1);
                  }

                  *(v32 + 16) = v56 + 1;
                  sub_2313F198C(&v105, v32 + 40 * v56 + 32);
                  if (--v31)
                  {
                    continue;
                  }

                  v59 = v97;
                  OUTLINED_FUNCTION_127_0();
                  v69 = BYTE4(v88);
                  break;
              }

              break;
            }

            break;
        }

        break;
      }
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_127_0();
      v69 = BYTE4(v88);
      v59 = v70;
    }

    v71 = v85;
    *&v105 = v85;
    *(&v105 + 1) = v68;
    LOBYTE(v106[0]) = v69;
    sub_2313FEEDC(v67 & 1, v60, v61, v62, v63, v64, v65, v66, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
    sub_231405268(v37);

    OUTLINED_FUNCTION_2_10();
    sub_2313ED944(v72, &qword_27DD4E0B0, v73, v74);
    OUTLINED_FUNCTION_139_0();
    sub_2314773D8();

    v75 = *(v96 + 8);
    v75(v21, v59);
    OUTLINED_FUNCTION_54_1();
    sub_2313ED944(v76, &qword_27DD4E0B0, &qword_23147CCE8, v77);
    OUTLINED_FUNCTION_128();
    sub_231477438();

    v78 = OUTLINED_FUNCTION_98();
    (v75)(v78);
    v79 = v95;
    sub_231404004(BYTE4(v94) & 1, &qword_27DD4E0B0, &qword_23147CCE8, v95);
    v80 = (v75)(v93, v59);
    *&v105 = MEMORY[0x277D84F98];
    MEMORY[0x28223BE20](v80);
    v81 = v89;
    *(&v85 - 6) = v71;
    *(&v85 - 5) = v81;
    *(&v85 - 32) = BYTE4(v88);
    v82 = v98;
    *(&v85 - 3) = v79;
    *(&v85 - 2) = v82;
    *(&v85 - 1) = &v105;
    v83 = v87;
    sub_231477098();

    if (v83)
    {
    }

    v84 = OUTLINED_FUNCTION_128();
    (v75)(v84);
  }

  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_62();
}

void InteractionQuery.fetchStats(_:groupBy:useDistinct:enableFastQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D890, qword_23147F7F0);
  OUTLINED_FUNCTION_4();
  v115 = v32;
  v116 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17_0();
  v112 = v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_39();
  v113 = v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39();
  v114 = v37;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_119_0();
  v120 = sub_2314776A8();
  OUTLINED_FUNCTION_4();
  v118 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2();
  v119 = sub_231476F88();
  OUTLINED_FUNCTION_4();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_12_0();
  v121 = v44;
  v45 = *(v30 + 8);
  v46 = *(v20 + 8);
  v47 = *(v20 + 16);
  if (v45)
  {
    v122 = *v20;
    v123 = v46;
    v124 = v47;
    OUTLINED_FUNCTION_113_0(v45);
    sub_2313FA928();
  }

  else
  {
    v109 = *v20;
    v110 = v46;
    HIDWORD(v111) = v47;
    v108 = __PAIR64__(v26, v24);
    OUTLINED_FUNCTION_113_0(v45);
    v48 = sub_2313F4D04();
    if (!v21)
    {
      v105 = 0;
      v106 = v22;
      v49 = *(v28 + 16);
      v50 = MEMORY[0x277D84F90];
      v107 = v28;
      if (v49)
      {
        v104 = v48;
        *&v125 = MEMORY[0x277D84F90];
        v51 = OUTLINED_FUNCTION_47_1();
        sub_2314051E0(v51, v52, v53);
        v54 = 0;
        v55 = v125;
        v129 = (v28 + 32);
        v117 = v118 + 8;
        v118 = v42 + 32;
        while (2)
        {
          switch(v129[v54])
          {
            case 1u:
              OUTLINED_FUNCTION_189();
              goto LABEL_16;
            case 2u:
              OUTLINED_FUNCTION_186();
              goto LABEL_16;
            case 4u:
              OUTLINED_FUNCTION_86_0();
              goto LABEL_16;
            case 5u:
              OUTLINED_FUNCTION_108_0();
              goto LABEL_16;
            case 6u:
              OUTLINED_FUNCTION_85_0();
              goto LABEL_16;
            case 7u:
              if (qword_280C3BC58 != -1)
              {
                OUTLINED_FUNCTION_11_14();
                swift_once();
              }

              v56 = sub_2314770D8();
              __swift_project_value_buffer(v56, qword_280C3D818);
              OUTLINED_FUNCTION_45_0();
              goto LABEL_24;
            case 8u:
              if (qword_27DD4D280 != -1)
              {
                OUTLINED_FUNCTION_10_12();
                swift_once();
              }

              v62 = sub_2314770D8();
              __swift_project_value_buffer(v62, qword_27DD5ACE0);
              OUTLINED_FUNCTION_45_0();
LABEL_24:
              sub_231477508();
              goto LABEL_17;
            case 9u:
              OUTLINED_FUNCTION_137_0();
              goto LABEL_16;
            default:
LABEL_16:
              sub_2314776B8();
              sub_2314774F8();
              v57 = OUTLINED_FUNCTION_134_0();
              v58(v57);
LABEL_17:
              *&v125 = v55;
              v60 = *(v55 + 16);
              v59 = *(v55 + 24);
              if (v60 >= v59 >> 1)
              {
                v63 = OUTLINED_FUNCTION_20(v59);
                sub_2314051E0(v63, v60 + 1, 1);
                v55 = v125;
              }

              ++v54;
              *(v55 + 16) = v60 + 1;
              OUTLINED_FUNCTION_59();
              (*(v42 + 32))(v55 + v61 + *(v42 + 72) * v60, v121, v119);
              if (v49 != v54)
              {
                continue;
              }

              v122 = v50;
              v64 = OUTLINED_FUNCTION_47_1();
              sub_23140557C(v64, v65, v66);
              v67 = MEMORY[0x277D0B7F0];
              v68 = MEMORY[0x277D0B728];
              while (2)
              {
                v69 = *v129++;
                switch(v69)
                {
                  case 1:
                    OUTLINED_FUNCTION_170();
                    goto LABEL_35;
                  case 2:
                    OUTLINED_FUNCTION_163();
                    goto LABEL_35;
                  case 4:
                    OUTLINED_FUNCTION_82_0();
                    goto LABEL_35;
                  case 5:
                    OUTLINED_FUNCTION_104_0();
                    goto LABEL_35;
                  case 6:
                    OUTLINED_FUNCTION_81_0();
                    goto LABEL_35;
                  case 7:
                    if (qword_280C3BC58 != -1)
                    {
                      OUTLINED_FUNCTION_11_14();
                      swift_once();
                    }

                    v70 = sub_2314770D8();
                    v71 = v70;
                    v72 = qword_280C3D818;
                    goto LABEL_43;
                  case 8:
                    if (qword_27DD4D280 != -1)
                    {
                      OUTLINED_FUNCTION_10_12();
                      swift_once();
                    }

                    v70 = sub_2314770D8();
                    v71 = v70;
                    v72 = qword_27DD5ACE0;
LABEL_43:
                    __swift_project_value_buffer(v70, v72);
                    v127 = v71;
                    v128 = v68;
                    __swift_allocate_boxed_opaque_existential_1(&v125);
                    OUTLINED_FUNCTION_38_1();
                    (*(v75 + 16))();
                    goto LABEL_36;
                  case 9:
                    OUTLINED_FUNCTION_128_0();
                    goto LABEL_35;
                  default:
LABEL_35:
                    v127 = v120;
                    v128 = v67;
                    __swift_allocate_boxed_opaque_existential_1(&v125);
                    sub_2314776B8();
LABEL_36:
                    v122 = v50;
                    v74 = *(v50 + 16);
                    v73 = *(v50 + 24);
                    if (v74 >= v73 >> 1)
                    {
                      v76 = OUTLINED_FUNCTION_20(v73);
                      sub_23140557C(v76, v74 + 1, 1);
                      v50 = v122;
                    }

                    *(v50 + 16) = v74 + 1;
                    sub_2313F198C(&v125, v50 + 40 * v74 + 32);
                    if (--v49)
                    {
                      continue;
                    }

                    v77 = v116;
                    OUTLINED_FUNCTION_156();
                    break;
                }

                break;
              }

              break;
          }

          break;
        }
      }

      else
      {
        v55 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_156();
        v77 = v116;
      }

      *&v125 = v88;
      *(&v125 + 1) = v87;
      v126 = v86;
      v89 = v112;
      sub_23143D8C4(v85 & 1, v78, v79, v80, v81, v82, v83, v84, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
      sub_231405268(v55);

      OUTLINED_FUNCTION_2_10();
      sub_2313ED944(v90, v91, qword_23147F7F0, v92);
      OUTLINED_FUNCTION_25();
      sub_2314773D8();

      v93 = *(v115 + 8);
      v93(v89, v77);
      OUTLINED_FUNCTION_54_1();
      sub_2313ED944(v94, &unk_27DD4D890, qword_23147F7F0, v95);
      sub_231477438();
      v96 = v115 + 8;

      v93(v113, v77);
      OUTLINED_FUNCTION_145_0();
      sub_231404004(v97, &unk_27DD4D890, qword_23147F7F0, v98);
      v99 = (v93)(v114, v77);
      *&v125 = MEMORY[0x277D84F98];
      MEMORY[0x28223BE20](v99);
      v100 = v110;
      *(&v104 - 6) = v109;
      *(&v104 - 5) = v100;
      *(&v104 - 32) = BYTE4(v111);
      v101 = v107;
      *(&v104 - 3) = v96;
      *(&v104 - 2) = v101;
      *(&v104 - 1) = &v125;
      v102 = v105;
      sub_231477098();

      if (v102)
      {
      }

      v103 = OUTLINED_FUNCTION_133_0();
      (v93)(v103);
    }
  }

  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_62();
}

uint64_t sub_2313FBAA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t type metadata accessor for HistoryStats(uint64_t a1)
{
  result = qword_280C3CB30;
  if (!qword_280C3CB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2313FBB2C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

_BYTE *sub_2313FBB80(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2313FBC4CLL);
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

void sub_2313FBC74()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  v4 = OUTLINED_FUNCTION_14(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_43_1();
  v6 = *(v0 + 16);
  sub_2313FBD8C();
  OUTLINED_FUNCTION_69();
  *(v2 + 16) = v6;
  v7 = OUTLINED_FUNCTION_160();
  sub_2313E95CC(v7, v8, &unk_27DD4D680, &unk_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_147_0();
  v9 = OUTLINED_FUNCTION_144();
  sub_2313E937C(v9, v10, &unk_2314795C0);
  OUTLINED_FUNCTION_62_1(&unk_2314795C1);
  OUTLINED_FUNCTION_36_1(v11 + 32 * &unk_2314795C0);
  OUTLINED_FUNCTION_16();
}

void sub_2313FBD8C()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_92();
  type metadata accessor for QueryValue(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_137();
  switch(v3)
  {
    case 6:
      v9 = *(v5 + 16);
      v10 = MEMORY[0x277D84F90];
      if (v9)
      {
        v18 = v0;
        v19 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_86();
        v10 = v19;
        v11 = (v5 + 40);
        do
        {
          v12 = *v11;
          *v1 = *(v11 - 1);
          v1[1] = v12;
          OUTLINED_FUNCTION_144();
          swift_storeEnumTagMultiPayload();
          v14 = *(v19 + 16);
          v13 = *(v19 + 24);

          if (v14 >= v13 >> 1)
          {
            OUTLINED_FUNCTION_95();
            sub_2313FC060(v15, v16, v17);
          }

          *(v19 + 16) = v14 + 1;
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_0_5();
          sub_2313F31EC();
          v11 += 2;
          --v9;
        }

        while (v9);
        v0 = v18;
      }

      *v0 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_35();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_16();
      break;
    default:
      OUTLINED_FUNCTION_34_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_35();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_16();

      break;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void *OUTLINED_FUNCTION_119(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_23141D774(v5, a2, a3, a4, v4);
}

void sub_2313FC190(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2314770A8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2313FC214()
{
  v1 = OUTLINED_FUNCTION_91();
  v2(v1);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2313FC268(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2313FC2C0(uint64_t a1, void (*a2)(void *))
{
  v103 = a2;
  v111 = a1;
  v110 = sub_231477C98();
  OUTLINED_FUNCTION_4();
  v115 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v5);
  v108 = sub_231477D28();
  OUTLINED_FUNCTION_4();
  v116 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v9);
  v102 = sub_231477CB8();
  OUTLINED_FUNCTION_4();
  v114 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_0();
  v13 = OUTLINED_FUNCTION_28(v12);
  v14 = type metadata accessor for _NewInteraction(v13);
  v15 = OUTLINED_FUNCTION_29(v14);
  v98 = v16;
  v97 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_28(&v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = sub_231478348();
  OUTLINED_FUNCTION_4();
  v96 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v21);
  v94 = sub_231478308();
  OUTLINED_FUNCTION_4();
  v93 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2();
  v26 = v25 - v24;
  sub_2314782F8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2();
  v100 = sub_231477D08();
  OUTLINED_FUNCTION_4();
  v99 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2();
  v32 = v31 - v30;
  v109 = dispatch_group_create();
  v33 = swift_allocObject();
  v113 = v33;
  *(v33 + 16) = 0;
  v105 = v33 + 16;
  v34 = swift_allocObject();
  v112 = v34;
  *(v34 + 16) = 0;
  OUTLINED_FUNCTION_140(v34 + 16);
  v92 = sub_2313E4AFC(0, &qword_280C3C8F8, 0x277D85CA0);
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CC8();
  aBlock = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_65_0();
  sub_2313F7138(v35, v36, MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313FD260(&qword_280C3CEB0, &unk_27DD4EAA0, qword_23147F920);
  sub_231478498();
  (*(v93 + 104))(v26, *MEMORY[0x277D85260], v94);
  v37 = sub_231478338();
  aBlock = MEMORY[0x277D84F90];
  sub_2313F7138(&unk_280C3C110, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  v38 = OUTLINED_FUNCTION_134();
  __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  OUTLINED_FUNCTION_130();
  sub_2313FD260(v40, v41, v42);
  OUTLINED_FUNCTION_133();
  sub_231478498();
  OUTLINED_FUNCTION_109();
  v43 = sub_231478358();

  v44 = OUTLINED_FUNCTION_144();
  v45(v44);
  v46 = OUTLINED_FUNCTION_145();
  dispatch_group_enter(v46);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_105();
  sub_2313EB328();
  v48 = (v97 + ((*(v98 + 80) + 24) & ~*(v98 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v112;
  OUTLINED_FUNCTION_23_0();
  sub_2313F31EC();
  *(v50 + v48) = v103;
  *(v50 + v49) = v113;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;
  v121 = sub_2313FD2FC;
  v122 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v118 = 1107296256;
  v98 = &v119;
  v119 = sub_2313FD2B8;
  v120 = &block_descriptor_58;
  v51 = _Block_copy(&aBlock);

  v94 = v43;
  swift_unknownObjectRetain();
  v52 = v32;
  sub_231477CC8();
  v53 = v101;
  sub_2313F92E8();
  v54 = ObjectType;
  sub_231478368();
  _Block_release(v51);
  v55 = *(v114 + 8);
  v114 += 8;
  v56 = v102;
  v55(v53, v102);
  v57 = *(v99 + 8);
  v58 = v100;
  v57(v52, v100);

  v59 = swift_allocObject();
  v60 = v109;
  *(v59 + 16) = v109;
  v121 = sub_23141FA6C;
  v122 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v118 = 1107296256;
  v119 = sub_2313FD2B8;
  v120 = &block_descriptor_64;
  v61 = _Block_copy(&aBlock);
  v109 = v60;
  sub_231477CC8();
  sub_2313F92E8();
  v62 = v94;
  sub_231478378();
  _Block_release(v61);
  v55(v53, v56);
  v57(v52, v58);

  v63 = v104;
  sub_231477D18();
  v64 = v106;
  *v106 = 200;
  LODWORD(v114) = *MEMORY[0x277D85178];
  v65 = v115;
  v103 = *(v115 + 104);
  v66 = v110;
  v103(v64);
  OUTLINED_FUNCTION_139();
  sub_2313F93F0(v67);
  v68 = v62;
  MEMORY[0x23192E4A0](v63, v64, v61, v54);
  v69 = *(v65 + 8);
  v115 = v65 + 8;
  v69(v61, v66);
  v69(v64, v66);
  v70 = *(v116 + 8);
  v116 += 8;
  v71 = v108;
  v70(v63, v108);
  v107 = v54;
  sub_231478398();
  OUTLINED_FUNCTION_139();
  sub_231477D18();
  v72 = v64;
  v73 = v109;
  *v72 = 4000;
  v74 = v110;
  (v103)(v72, v114, v110);
  v75 = OUTLINED_FUNCTION_17();
  MEMORY[0x23192DDF0](v75);
  v69(v72, v74);
  v70(v61, v71);
  v76 = v73;
  sub_2314782E8();
  v70(v63, v71);
  if (sub_231477CA8())
  {
    v76 = v68;
    sub_231478388();
  }

  v77 = sub_231477E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D978, &unk_23147A260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231479A40;
  *(inited + 32) = 0x6C6C6F50656D6974;
  *(inited + 40) = 0xEA00000000006465;
  OUTLINED_FUNCTION_146();
  v79 = *v76;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x64657461647075;
  *(inited + 64) = 0xE700000000000000;
  OUTLINED_FUNCTION_146();
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 80), "donationType");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  sub_2313E4AFC(0, &qword_280C3C0F0, 0x277CCACA8);

  v80 = OUTLINED_FUNCTION_42();
  *(inited + 96) = sub_23141A9D0(v80, v81);
  sub_2313E4AFC(0, &qword_280C3C0F8, 0x277D82BB8);
  sub_231477DC8();
  v82 = sub_231477DA8();

  OUTLINED_FUNCTION_17();
  AnalyticsSendEvent();

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v83 = sub_231477B68();
  v84 = __swift_project_value_buffer(v83, qword_280C3D970);
  v85 = v112;

  v86 = v113;

  v87 = sub_231477B58();
  sub_231478298();
  v88 = OUTLINED_FUNCTION_44();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 67109376;
    *(v90 + 4) = *(v86 + 16);

    *(v90 + 8) = 2048;
    *(v90 + 10) = *(v85 + 16);

    _os_log_impl(&dword_2313E1000, v87, v84, "End tracking the interaction with found: %{BOOL}d and timePolled: %ld", v90, 0x12u);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  else
  {
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_2313FD088()
{
  v1 = (type metadata accessor for _NewInteraction(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[15];
  sub_231476CA8();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v0 + v2 + v3);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2313FD1DC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_60_0(unint64_t *a1)
{
  v4 = MEMORY[0x277D0B7A8];

  return sub_2313ED944(a1, v1, v2, v4);
}

uint64_t sub_2313FD260(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2313FD2B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2313FD2FC()
{
  v0 = type metadata accessor for _NewInteraction(0);
  OUTLINED_FUNCTION_29(v0);
  v1 = OUTLINED_FUNCTION_56_0();

  return sub_2313F9468(v1, v2, v3, v4, v5);
}

uint64_t sub_2313FD390(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v118 = a4;
  v116 = a5;
  LODWORD(v8) = a3;
  v11 = type metadata accessor for Interaction(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v114 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v113 = &v110 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v110 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v110 - v19;
  v21 = sub_231477B48();
  v119 = *(v21 - 8);
  v120 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  v123 = v23 - v22;
  if (qword_280C3C7F0 != -1)
  {
    swift_once();
  }

  v115 = v18;
  sub_231477ED8();
  v121 = os_transaction_create();

  sub_2313E74F8("siriremembers.BiomeDonator", 26, 2, v123);
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v24 = sub_231477B68();
  v25 = __swift_project_value_buffer(v24, qword_280C3D970);
  OUTLINED_FUNCTION_2_20();
  sub_231405490(a1, v20, v26);

  v117 = v25;
  v27 = sub_231477B58();
  v28 = sub_2314782A8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v124[0] = v111;
    *v29 = 136315394;
    v112 = v8;
    v30 = a1;
    v31 = *(v20 + 8);
    v32 = *(v20 + 9);

    OUTLINED_FUNCTION_0_18();
    sub_2313FC268(v20, v33);
    v34 = sub_2313EB684(v31, v32, v124);
    a1 = v30;

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    if (a6)
    {
      v6 = v116;
    }

    else
    {
      v6 = 7104878;
    }

    if (a6)
    {
      v35 = a6;
    }

    else
    {
      v35 = 0xE300000000000000;
    }

    v8 = sub_2313EB684(v6, v35, v124);

    *(v29 + 14) = v8;
    LOBYTE(v8) = v112;
    _os_log_impl(&dword_2313E1000, v27, v28, "SiriRemembers starts the biome donation for interaction type: %s with accountIdentifier: %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  else
  {

    OUTLINED_FUNCTION_0_18();
    sub_2313FC268(v20, v36);
  }

  v37 = a1[6];
  v38 = a1[7];
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    if ((v8 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1((v122 + 56), *(v122 + 80));
      if ((sub_2313FA1B8(v37, v38) & 1) == 0)
      {
        OUTLINED_FUNCTION_5_17();
        v40 = v113;
        sub_231405490(a1, v113, v41);
        v42 = v114;
        sub_231405490(a1, v114, v37);
        v43 = sub_231477B58();
        v44 = sub_2314782A8();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v124[0] = swift_slowAlloc();
          *v45 = 136315394;
          v46 = v40;
          v47 = *(v40 + 64);
          v48 = *(v40 + 72);

          sub_2313FC268(v46, type metadata accessor for Interaction);
          v49 = sub_2313EB684(v47, v48, v124);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;
          v50 = *(v42 + 48);
          v51 = *(v42 + 56);

          sub_2313FC268(v42, type metadata accessor for Interaction);
          v52 = sub_2313EB684(v50, v51, v124);

          *(v45 + 14) = v52;
          _os_log_impl(&dword_2313E1000, v43, v44, "SiriRemembers skips the biome donation for interaction type: %s with appBundleId: %s.", v45, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0();
          MEMORY[0x23192F1F0]();
          OUTLINED_FUNCTION_15_0();
          MEMORY[0x23192F1F0]();
        }

        else
        {

          OUTLINED_FUNCTION_5_17();
          sub_2313FC268(v42, v86);
          sub_2313FC268(v40, v44);
        }

        sub_23141FA18();
        swift_allocError();
        *v87 = 1;
        swift_willThrow();
LABEL_50:
        sub_2314783A8();
        if (qword_280C3CF48 != -1)
        {
          OUTLINED_FUNCTION_0_1(&qword_280C3CF48);
        }

        v84 = v123;
        sub_231477B28();
        swift_unknownObjectRelease();
        (*(v119 + 8))(v84, v120);
        return v84;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_20();
    v53 = v115;
    sub_231405490(a1, v115, v54);
    v55 = sub_231477B58();
    v56 = sub_2314782A8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v124[0] = v58;
      *v57 = 136315138;
      v117 = a2;
      v60 = *(v53 + 64);
      v59 = *(v53 + 72);

      OUTLINED_FUNCTION_0_18();
      sub_2313FC268(v53, v61);
      v62 = sub_2313EB684(v60, v59, v124);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_2313E1000, v55, v56, "SiriRemembers skips the learn from appCheck for interaction type: %s.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    else
    {

      OUTLINED_FUNCTION_0_18();
      sub_2313FC268(v53, v63);
    }
  }

  v64 = a1[8];
  v65 = a1[9];
  OUTLINED_FUNCTION_132();
  v67 = v64 == 0xD000000000000011 && v66 == v65;
  if (v67 || (OUTLINED_FUNCTION_11_17(0xD000000000000011, v66) & 1) != 0)
  {
    v68 = OUTLINED_FUNCTION_3_11();
    sub_23145F78C(v68, v69, v70, v71);
    if (v6)
    {
      goto LABEL_50;
    }

    v72 = OUTLINED_FUNCTION_13_14();
    v73 = [v72 source];
    [v73 sendEvent_];

    v124[1] = &unk_284611D38;
  }

  else
  {
    OUTLINED_FUNCTION_132();
    v75 = v64 == 0xD000000000000013 && v74 == v65;
    if (v75 || (OUTLINED_FUNCTION_11_17(0xD000000000000013, v74) & 1) != 0 || ((OUTLINED_FUNCTION_132(), v64 == 0xD00000000000001ALL) ? (v77 = v76 == v65) : (v77 = 0), v77 || (OUTLINED_FUNCTION_11_17(0xD00000000000001ALL, v76) & 1) != 0))
    {
      v78 = OUTLINED_FUNCTION_3_11();
      sub_23145F7E8(v78, v79, v80, v81);
      if (v6)
      {
        goto LABEL_50;
      }

      v82 = OUTLINED_FUNCTION_13_14();
      v83 = [v82 source];
      [v83 sendEvent_];

      v124[2] = &unk_284611D38;
    }

    else
    {
      OUTLINED_FUNCTION_132();
      v90 = v64 == 0xD000000000000011 && v89 == v65;
      if (v90 || (OUTLINED_FUNCTION_11_17(0xD000000000000011, v89) & 1) != 0)
      {
        v91 = OUTLINED_FUNCTION_3_11();
        sub_23145F860(v91, v92, v93, v94);
        if (v6)
        {
          goto LABEL_50;
        }

        v95 = OUTLINED_FUNCTION_13_14();
        v96 = [v95 source];
        [v96 sendEvent_];

        v124[3] = &unk_284611D38;
      }

      else if (sub_231478048() & 1) != 0 || (v64 == 0xD000000000000010 ? (v97 = 0x8000000231481F90 == v65) : (v97 = 0), v97 || (sub_2314787C8()))
      {
        v98 = OUTLINED_FUNCTION_3_11();
        sub_23145F824(v98, v99, v100, v101);
        if (v6)
        {
          goto LABEL_50;
        }

        v102 = OUTLINED_FUNCTION_13_14();
        v103 = [v102 source];
        [v103 sendEvent_];

        v124[4] = &unk_284611D38;
      }

      else
      {
        v104 = OUTLINED_FUNCTION_3_11();
        sub_23145F748(v104, v105, v106, v107);
        if (v6)
        {
          goto LABEL_50;
        }

        v108 = OUTLINED_FUNCTION_13_14();
        v109 = [v108 source];
        [v109 sendEvent_];

        v124[6] = &unk_284611D38;
      }
    }
  }

  v84 = swift_dynamicCastObjCProtocolConditional();
  if (!v84)
  {
  }

  sub_2314783A8();
  if (qword_280C3CF48 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280C3CF48);
  }

  v85 = v123;
  sub_231477B28();
  swift_unknownObjectRelease();
  (*(v119 + 8))(v85, v120);
  return v84;
}

uint64_t sub_2313FDE50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v102 = a4;
  v105 = a3;
  v6 = sub_231476CA8();
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v94 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v94 - v9;
  v96 = type metadata accessor for _NewInteraction(0);
  MEMORY[0x28223BE20](v96);
  v11 = (&v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D988, &unk_23147A270);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v94 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
  v15 = MEMORY[0x28223BE20](v103);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v94 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v94 - v24;
  v26 = type metadata accessor for Interaction(0);
  v27 = MEMORY[0x28223BE20](v26);
  v100 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v95 = &v94 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v94 - v31;
  v33 = *a1;
  if (v33)
  {
    v104 = v33;
  }

  else
  {
    if (qword_280C3CA98 != -1)
    {
      swift_once();
    }

    v104 = qword_280C3D8C8;
  }

  sub_2313E93D4();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {

    sub_2313E937C(v25, &qword_27DD4D690, &qword_231479AD0);
  }

  else
  {
    sub_2313F31EC();
    if (v32[80] == 1)
    {
      v34 = qword_280C3CF50;

      if (v34 != -1)
      {
        swift_once();
      }

      v35 = sub_231477B68();
      __swift_project_value_buffer(v35, qword_280C3D970);
      v36 = sub_231477B58();
      v37 = sub_2314782A8();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v105;
      if (v38)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_2313E1000, v36, v37, "donation is replacing existing interaction", v40, 2u);
        MEMORY[0x23192F1F0](v40, -1, -1);
      }

      *(v39 + 81) = 1;
      v42 = *v32;
      v41 = *(v32 + 1);

      sub_2313EB380();
      *v105 = v42;
      *(v105 + 8) = v41;

      v43 = v102;
      *(v102 + 80) = 1;
      *v43 = v42;
      v43[1] = v41;
      goto LABEL_44;
    }

    sub_2313EB380();
  }

  v44 = v105;
  sub_2313EB328();
  sub_231406A04(v11, v14);
  sub_2313EB380();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v103);
  v46 = v102;
  if (EnumTagSinglePayload == 1)
  {
    v47 = &qword_27DD4D988;
    v48 = &unk_23147A270;
    v49 = v14;
    goto LABEL_25;
  }

  sub_2314030BC();
  sub_2313E93D4();

  v50 = v17[80];
  sub_2313EB380();
  if (v50 != 1)
  {
    v47 = &qword_27DD4D990;
    v48 = &unk_23147FCE0;
    v49 = v19;
LABEL_25:
    sub_2313E937C(v49, v47, v48);
    v64 = *(v44 + 48) == 0xD000000000000011 && 0x8000000231482700 == *(v44 + 56);
    if (v64 || (sub_2314787C8() & 1) != 0)
    {

      v65 = sub_231460150();

      v66 = *(v44 + 48);
      v67 = *(v44 + 56);

      sub_231460790(v66, v67, v65);

      if (__swift_getEnumTagSinglePayload(v23, 1, v26) == 1)
      {
        sub_2313E937C(v23, &qword_27DD4D690, &qword_231479AD0);
        goto LABEL_45;
      }

      v68 = v95;
      sub_2313F31EC();
      v69 = v97;
      v71 = v98;
      v70 = v99;
      (*(v98 + 16))(v97, v44 + *(v96 + 52), v99);
      sub_231476BC8();
      v73 = v72;
      (*(v71 + 8))(v69, v70);
      sub_231476BC8();
      if (vabdd_f64(v73, v74) > 1.0)
      {
        sub_2313EB380();
        goto LABEL_45;
      }

      if (qword_280C3CF50 != -1)
      {
        swift_once();
      }

      v75 = sub_231477B68();
      __swift_project_value_buffer(v75, qword_280C3D970);
      v76 = sub_231477B58();
      v77 = sub_2314782A8();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_2313E1000, v76, v77, "donation is replacing existing interaction in Cache", v78, 2u);
        MEMORY[0x23192F1F0](v78, -1, -1);
      }

      *(v46 + 80) = 1;
      v80 = *v68;
      v79 = v68[1];

      sub_2313EB380();
      *v46 = v80;
      *(v46 + 8) = v79;

      v81 = v105;
      *(v105 + 81) = 1;
      *v81 = v80;
      v81[1] = v79;
LABEL_44:

      goto LABEL_45;
    }

    goto LABEL_45;
  }

  sub_2313E93D4();

  v52 = v97;
  v51 = v98;
  v53 = v44;
  v54 = *(v98 + 16);
  v55 = &v17[*(v26 + 48)];
  v56 = v99;
  v54(v97, v55, v99);
  sub_2313EB380();
  sub_231476BC8();
  v58 = v57;
  v59 = *(v51 + 8);
  v59(v52, v56);
  v60 = v94;
  v54(v94, (v53 + *(v96 + 52)), v56);
  sub_231476BC8();
  v62 = v61;
  v59(v60, v56);
  if (v58 - v62 <= 1.0 && v58 - v62 >= -4.0)
  {
    v82 = v102;
    if (qword_280C3CF50 != -1)
    {
      swift_once();
    }

    v83 = sub_231477B68();
    __swift_project_value_buffer(v83, qword_280C3D970);
    v84 = sub_231477B58();
    v85 = sub_2314782A8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_2313E1000, v84, v85, "donation is replacing existing interaction in Cache", v86, 2u);
      MEMORY[0x23192F1F0](v86, -1, -1);
    }

    *(v82 + 80) = 1;
    sub_2313E93D4();

    v88 = *v17;
    v87 = *(v17 + 1);

    sub_2313EB380();
    *v82 = v88;
    *(v82 + 8) = v87;

    v89 = v105;
    *(v105 + 81) = 1;
    sub_2314030BC();

    v91 = *v17;
    v90 = *(v17 + 1);

    sub_2313EB380();
    *v89 = v91;
    v89[1] = v90;
    goto LABEL_44;
  }

  sub_2313E937C(v19, &qword_27DD4D990, &unk_23147FCE0);
LABEL_45:
  sub_2313EB328();
  v92 = v100;
  sub_2313EB328();
  sub_2313F9CA4(v11, v92, v101);

  sub_2313EB380();
  return sub_2313EB380();
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_42_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231478968();
}

void OUTLINED_FUNCTION_125_0()
{

  JUMPOUT(0x23192E060);
}

uint64_t OUTLINED_FUNCTION_25_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t result, uint64_t a2)
{
  *(v2 - 240) = result;
  *(v2 - 232) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_4()
{

  return sub_231477EA8();
}

uint64_t get_enum_tag_for_layout_string_13SiriRemembers8QueryKeyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_2313FEB98()
{
  OUTLINED_FUNCTION_64();
  v33 = v3;
  v29 = v4;
  v31 = sub_231477948();
  OUTLINED_FUNCTION_4();
  v27 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_28_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E180, &unk_23147CDF0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_34();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_119_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_76_0();
  sub_2313FEEDC(0, v17, v18, v19, v20, v21, v22, v23, v27, v29, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  sub_231477098();
  if (!v0)
  {
    sub_2313E95CC(v2, v14, &qword_27DD4E180, &unk_23147CDF0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v32) != 1)
    {
      (*(v28 + 32))(v1, v14, v32);
      (*(v28 + 16))(v9, v1, v32);
      sub_2314393C4(v9, v30);
      (*(v28 + 8))(v1, v32);
    }

    sub_2313E937C(v2, &qword_27DD4E180, &unk_23147CDF0);
    v24 = type metadata accessor for Interaction(0);
    OUTLINED_FUNCTION_197(v24);
  }

  v25 = OUTLINED_FUNCTION_25();
  v26(v25);
  OUTLINED_FUNCTION_62();
}

uint64_t OUTLINED_FUNCTION_117(uint64_t a1, uint64_t a2)
{

  return sub_231478648();
}

void sub_2313FEEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15();
  a19 = v22;
  a20 = v23;
  HIDWORD(v288) = v24;
  OUTLINED_FUNCTION_171(v25);
  v26 = sub_231477668();
  v27 = OUTLINED_FUNCTION_0_0(v26, &v324);
  v287 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0D0, &qword_23147CD58);
  v31 = OUTLINED_FUNCTION_0_0(v30, &v336);
  v286 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v34);
  v35 = sub_2314773C8();
  v36 = OUTLINED_FUNCTION_0_0(v35, &v309);
  v284 = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v39);
  v40 = sub_231476EB8();
  v41 = OUTLINED_FUNCTION_0_0(v40, &v330);
  v290 = v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_28(v43);
  v44 = sub_2314770D8();
  v45 = OUTLINED_FUNCTION_0_0(v44, v331);
  v282 = v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA98, &qword_23147CD60);
  v49 = OUTLINED_FUNCTION_0_0(v48, &v337);
  v289 = v50;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_47_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0D8, &qword_23147CD68);
  v56 = OUTLINED_FUNCTION_0_0(v55, &v319);
  v292 = v57;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v59);
  v60 = sub_231477468();
  v61 = OUTLINED_FUNCTION_0_0(v60, &v341);
  v320 = v62;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_47_0(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0E0, &unk_23147CD70);
  OUTLINED_FUNCTION_14(v64);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_28(v66);
  v67 = sub_231476CA8();
  v68 = OUTLINED_FUNCTION_0_0(v67, &a13);
  v319 = v69;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_12_0();
  v71 = OUTLINED_FUNCTION_28(v70);
  Value = type metadata accessor for QueryValue(v71);
  v73 = OUTLINED_FUNCTION_0_0(Value, &a14);
  v304 = v74;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_34();
  v77 = (v75 - v76);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_28_3();
  v79 = sub_2314770C8();
  v80 = OUTLINED_FUNCTION_0_0(v79, &a17);
  v82 = v81;
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v83);
  v85 = (v281 - v84);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  v87 = OUTLINED_FUNCTION_0_0(v86, &v345);
  v296 = v88;
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v91);
  v93 = v281 - v92;
  v94 = *(v20 + 8);
  v303 = *v20;
  OUTLINED_FUNCTION_176(*(v20 + 16));
  sub_231477948();
  sub_231400E2C(&qword_280C3D6F8, MEMORY[0x277D1F230], MEMORY[0x277D1F220]);
  v322 = v93;
  sub_231476ED8();
  v95 = v94;
  v342 = v94;
  v96 = *(v94 + 16) + 1;
  v97 = 40;
  do
  {
    if (!--v96)
    {
      break;
    }

    v98 = *(v95 + v97);
    v97 += 32;
  }

  while (v98 != 15);
  *(&v344 + 1) = &unk_28460C4B0;
  v99 = sub_2313E3100();
  v345 = v99;
  LOBYTE(v343) = 0;
  v318 = v95;

  sub_231476D68();
  OUTLINED_FUNCTION_198();
  LOBYTE(v343) = 2;
  v100 = sub_231476D68();
  OUTLINED_FUNCTION_198();
  v101 = 1;
  LOBYTE(v343) = 1;
  sub_231476D68();
  __swift_destroy_boxed_opaque_existential_0(&v343);
  if ((v100 & 1) == 0)
  {
    *(&v344 + 1) = &unk_28460C4B0;
    v345 = v99;
    LOBYTE(v343) = 0;
    sub_231476D68();
    OUTLINED_FUNCTION_198();
    LOBYTE(v343) = 2;
    sub_231476D68();
    OUTLINED_FUNCTION_198();
    LOBYTE(v343) = 1;
    v100 = sub_231476D68();
    __swift_destroy_boxed_opaque_existential_0(&v343);
    if ((v100 & 1) == 0)
    {
      OUTLINED_FUNCTION_23_5();
      v102 = v318;
      goto LABEL_32;
    }
  }

  if (!v333)
  {
    v102 = v318;
    if (!v96)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
      OUTLINED_FUNCTION_180();
      v106 = v105 & ~v104;
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_231479580;
      *(v102 + v106) = 1;
      swift_storeEnumTagMultiPayload();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_11;
      }

      goto LABEL_118;
    }

    goto LABEL_14;
  }

  v100 = v303;
  swift_bridgeObjectRetain_n();
  v102 = v318;
  swift_bridgeObjectRetain_n();
  v101 = v294;
  v333 = sub_23144490C(v102, v100, v102);
  v294 = v101;
  if ((v103 & 1) == 0)
  {
    OUTLINED_FUNCTION_91_0();
    v111 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_91_0();
    v113 = 32 * v112 + 88;
    OUTLINED_FUNCTION_23_5();
    while (1)
    {
      v114 = *(v102 + 16);
      if (v111 == v114)
      {
        goto LABEL_30;
      }

      if (v111 >= v114)
      {
        goto LABEL_109;
      }

      v101 = *(v102 + v113 - 16);
      if (v101 != 15)
      {
        if (v111 != v333)
        {
          if (v333 >= v114)
          {
            goto LABEL_110;
          }

          OUTLINED_FUNCTION_164();
          LODWORD(v325) = v115;
          v117 = *(v116 + 24);
          v119 = *(v118 - 24);
          OUTLINED_FUNCTION_165();
          OUTLINED_FUNCTION_135_0(*v120);
          v327 = v121;
          v326 = v122;
          sub_2313E8ABC(v121, v122);
          v324 = v117;

          v329 = v119;
          v123 = OUTLINED_FUNCTION_144();
          sub_2313E8ABC(v123, v124);
          OUTLINED_FUNCTION_142_0();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2314285F0();
            v102 = v134;
          }

          if (v333 >= *(v102 + 16))
          {
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          v100 = v327;
          OUTLINED_FUNCTION_91_0();
          OUTLINED_FUNCTION_101_0(v102 + 32 * v125);
          *(v126 + 56) = v332;
          sub_2313ED930(v127, v128);

          if (v111 >= *(v102 + 16))
          {
            goto LABEL_112;
          }

          v129 = (v102 + v113);
          v130 = *(v102 + v113 - 24);
          v131 = *(v102 + v113 - 16);
          v101 = *(v102 + v113);
          v132 = v326;
          *(v129 - 3) = v100;
          *(v129 - 2) = v132;
          *(v129 - 8) = v325;
          *v129 = v324;
          sub_2313ED930(v130, v131);

          v342 = v102;
        }

        OUTLINED_FUNCTION_91_0();
        v333 = v133 + 1;
      }

      OUTLINED_FUNCTION_23_5();
      ++v111;
      v113 += 32;
    }
  }

  v333 = *(v102 + 16);
  OUTLINED_FUNCTION_23_5();
LABEL_30:

  OUTLINED_FUNCTION_91_0();
  if (v135 < v136)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  sub_23144472C(v333, v135);
  v102 = v342;
  while (1)
  {
LABEL_32:
    v315 = *(v102 + 16);
    if (v315)
    {
      v137 = 0;
      v314 = v102 + 32;
      v329 = v319 + 32;
      v328 = (v319 + 8);
      v333 = v82 + 32;
      v298 = v82 + 16;
      *(&v299 + 1) = 0x8000000231482D80;
      v313 = v320 + 8;
      v312 = v296 + 8;
      v311 = v296 + 32;
      *&v299 = 0xD000000000000025;
      v332 = v85;
      v318 = v102;
      do
      {
        if (v137 >= *(v102 + 16))
        {
          __break(1u);
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        v324 = v137;
        v138 = v314 + 32 * v137;
        v139 = *(v138 + 8);
        v140 = *(v138 + 16);
        v141 = *(v138 + 24);
        *&v343 = *v138;
        *(&v343 + 1) = v139;
        v326 = v140;
        LOBYTE(v344) = v140;
        *(&v344 + 1) = v141;
        v327 = v343;
        sub_2313E8ABC(v343, v139);

        sub_231400F04();
        v143 = v142;
        v144 = *(v142 + 16);
        v325 = v139;
        if (v144)
        {
          v320 = v141;
          *&v343 = MEMORY[0x277D84F90];
          v145 = OUTLINED_FUNCTION_47_1();
          sub_2313E8C84(v145, v146, v147);
          v148 = v343;
          OUTLINED_FUNCTION_6();
          v319 = v143;
          v150 = v143 + v149;
          v152 = *(v151 + 72);
          do
          {
            sub_2314015B4(v150, v21, type metadata accessor for QueryValue);
            sub_2314015B4(v21, v77, type metadata accessor for QueryValue);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 1u:
                MEMORY[0x23192E2E0](*v77);
                break;
              case 2u:
                MEMORY[0x23192E290](*v77);
                break;
              case 3u:
                sub_231477EE8();

                break;
              case 4u:
                OUTLINED_FUNCTION_37_1();
                v153 = v330;
                v154 = OUTLINED_FUNCTION_96_0();
                v155 = v331[0];
                v156(v154);
                v157 = sub_231476BC8();
                MEMORY[0x23192E290](v157);
                OUTLINED_FUNCTION_37_1();
                v158(v153, v155);
                break;
              default:
                sub_2314781B8();
                break;
            }

            OUTLINED_FUNCTION_8_13();
            sub_23140166C(v21, v159);
            *&v343 = v148;
            v161 = *(v148 + 16);
            v160 = *(v148 + 24);
            if (v161 >= v160 >> 1)
            {
              OUTLINED_FUNCTION_20(v160);
              OUTLINED_FUNCTION_129_0();
              sub_2313E8C84(v164, v165, v166);
              v148 = v343;
            }

            *(v148 + 16) = v161 + 1;
            OUTLINED_FUNCTION_59();
            v163 = v148 + v162 + *(v82 + 72) * v161;
            v85 = v332;
            (*(v82 + 32))(v163, v332, v334);
            v150 += v152;
            --v144;
          }

          while (v144);
          OUTLINED_FUNCTION_166();

          v139 = v325;
        }

        else
        {

          v148 = MEMORY[0x277D84F90];
        }

        if (v139 >= 0x12)
        {
          OUTLINED_FUNCTION_188();
          v171 = v327;
          sub_2313E8ABC(v327, v139);
          MEMORY[0x23192E060](v171, v139);
          sub_2313ED930(v171, v139);
          v172 = v302;
          sub_231477EE8();

          OUTLINED_FUNCTION_37_1();
          v173(v321, v172, v334);
          v174 = *(v148 + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v174 >= *(v148 + 24) >> 1)
          {
            sub_23141CF98();
            v148 = v175;
          }

          OUTLINED_FUNCTION_59();
          v102 = v148 + v176;
          v177 = *(v82 + 72);
          swift_arrayDestroy();
          if (v177 < 0 || v177 >= *(v148 + 16) * v177)
          {
            OUTLINED_FUNCTION_167();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v177)
          {
            OUTLINED_FUNCTION_167();
            swift_arrayInitWithTakeBackToFront();
          }

          ++*(v148 + 16);
          if (v177 >= 1)
          {
            v178 = 0;
            v179 = v102;
            while ((v178 & 1) == 0)
            {
              OUTLINED_FUNCTION_37_1();
              v180(v179, v321, v334);
              v179 += v177;
              v178 = 1;
              if (v179 - v177 >= v102)
              {
                goto LABEL_63;
              }
            }

LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

LABEL_63:
          sub_2313E937C(v321, &qword_27DD4E0E0, &unk_23147CD70);
          OUTLINED_FUNCTION_196();

          v343 = v299;
          v181 = 0xE200000000000000;
          v182 = 15649;
          v170 = v316;
          switch(v326)
          {
            case 1uLL:
              break;
            case 2uLL:
              v181 = 0xE100000000000000;
              v182 = 60;
              break;
            case 3uLL:
              v182 = 15676;
              break;
            case 4uLL:
              v181 = 0xE100000000000000;
              v182 = 62;
              break;
            case 5uLL:
              v182 = 15678;
              break;
            case 6uLL:
              v182 = 20041;
              break;
            case 7uLL:
              v181 = 0xE400000000000000;
              v182 = OUTLINED_FUNCTION_141_0();
              break;
            default:
              v181 = 0xE100000000000000;
              v182 = 61;
              break;
          }

          MEMORY[0x23192E060](v182, v181);

          OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_158();
          if (v183)
          {
            v187 = OUTLINED_FUNCTION_151();
            OUTLINED_FUNCTION_25_2(v187, v188);
            if (v189)
            {
              OUTLINED_FUNCTION_19_6();
              OUTLINED_FUNCTION_153();
              sub_231477FC8();
            }

            goto LABEL_86;
          }
        }

        else
        {
          OUTLINED_FUNCTION_46_0();
          *&v343 = sub_2313ED6C8();
          *(&v343 + 1) = v167;
          v168 = 0xE100000000000000;
          OUTLINED_FUNCTION_125_0();
          v169 = 61;
          v170 = v316;
          switch(v326)
          {
            case 1uLL:
              v168 = 0xE200000000000000;
              v169 = 15649;
              break;
            case 2uLL:
              v169 = 60;
              break;
            case 3uLL:
              v168 = 0xE200000000000000;
              v169 = 15676;
              break;
            case 4uLL:
              v169 = 62;
              break;
            case 5uLL:
              v168 = 0xE200000000000000;
              v169 = 15678;
              break;
            case 6uLL:
              v168 = 0xE200000000000000;
              v169 = 20041;
              break;
            case 7uLL:
              v168 = 0xE400000000000000;
              v169 = OUTLINED_FUNCTION_141_0();
              break;
            default:
              break;
          }

          MEMORY[0x23192E060](v169, v168);

          OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_158();
          if (v183)
          {
            v184 = OUTLINED_FUNCTION_151();
            OUTLINED_FUNCTION_25_2(v184, v185);
            if (v186)
            {
              OUTLINED_FUNCTION_19_6();
              OUTLINED_FUNCTION_153();
              sub_231477FC8();
            }

LABEL_86:
            OUTLINED_FUNCTION_63_1();
            v190 = OUTLINED_FUNCTION_90_0();
            MEMORY[0x23192E060](v190);
            v191 = OUTLINED_FUNCTION_46_0();
            sub_2313ED930(v191, v192);

            v196 = v335[0];
            v195 = v335[1];
            goto LABEL_87;
          }
        }

        v193 = OUTLINED_FUNCTION_46_0();
        sub_2313ED930(v193, v194);

        v195 = 0xE100000000000000;
        v196 = 63;
LABEL_87:
        MEMORY[0x23192E060](v196, v195);

        *&v343 = v148;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DAA0, &qword_23147A7E8);
        OUTLINED_FUNCTION_7_7();
        OUTLINED_FUNCTION_131_0();
        sub_2313ED944(v197, v198, v199, v200);
        OUTLINED_FUNCTION_155();
        sub_231477478();
        OUTLINED_FUNCTION_0_13();
        sub_2313ED944(&qword_280C3D7F8, &qword_27DD4E0B0, &qword_23147CCE8, v201);
        OUTLINED_FUNCTION_144_0();
        v100 = v323;
        v101 = v322;
        sub_2314771B8();
        v137 = v324 + 1;

        OUTLINED_FUNCTION_37_1();
        v202(v170, v317);
        v203 = OUTLINED_FUNCTION_33_1();
        v204(v203, v100);
        v205 = OUTLINED_FUNCTION_33_1();
        v206(v205, &qword_23147A7E8, v100);
        v102 = v318;
      }

      while (v137 != v315);
    }

    v207 = v303;
    if (!*(v303 + 16))
    {
      (*(v296 + 32))(v295, v101, v100);
      goto LABEL_105;
    }

    v208 = v291;
    sub_231477918();
    v209 = v101;
    OUTLINED_FUNCTION_60_0(&qword_280C3CE08);
    OUTLINED_FUNCTION_145_0();
    v82 = v293;
    sub_2314773D8();
    v210 = v292 + 8;
    v21 = *(v292 + 8);
    v21(v208, v82);
    OUTLINED_FUNCTION_72_0(&qword_280C3CE20, &qword_27DD4E0B0, &qword_23147CCE8);
    OUTLINED_FUNCTION_49_0();
    v211 = v323;
    sub_2313ED944(v212, v213, v214, v215);
    OUTLINED_FUNCTION_138_0();
    v102 = v209;
    sub_2314771D8();
    v216 = OUTLINED_FUNCTION_134_0();
    (v21)(v216);
    OUTLINED_FUNCTION_139();
    v217 = OUTLINED_FUNCTION_144();
    v329 = v218;
    v328 = v219;
    v219(v217);
    off_27DD4E0F8(v209, v77, v211);
    v220 = *(v207 + 16);
    v333 = v220 - 1;
    if (v220 != 1)
    {
      break;
    }

    v221 = *(v207 + 16);
    if ((v288 & 0x100000000) != 0)
    {
      if (v221)
      {
        v222 = *(v207 + 48);
        v343 = *(v207 + 32);
        v344 = v222;
        OUTLINED_FUNCTION_61_1(*(v207 + 64));
        sub_231477998();
        v224 = v223;
        OUTLINED_FUNCTION_194();
        sub_23143BEA8(*(v225 - 256), v226, v224, v227, v228, v229, v230, v231, v281[0], v281[1], v281[2], v282, v283, v284, v285, v286, v287, v288, v289, v290);

        sub_23144467C(&v343);
        OUTLINED_FUNCTION_36_0();
        OUTLINED_FUNCTION_168();
        v232();
        goto LABEL_105;
      }

      goto LABEL_116;
    }

    if (v221)
    {
      v261 = *(v207 + 48);
      v343 = *(v207 + 32);
      v344 = v261;
      OUTLINED_FUNCTION_61_1(*(v207 + 64));
      OUTLINED_FUNCTION_138_0();
      sub_2314231F4();
      sub_23144467C(&v343);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
      OUTLINED_FUNCTION_41_1();
      v262 = swift_allocObject();
      OUTLINED_FUNCTION_110_0(v262, xmmword_231479580);
      v263 = sub_2314776A8();
      v264 = MEMORY[0x277D0B7E8];
      v262[3].n128_u64[1] = v263;
      v262[4].n128_u64[0] = v264;
      __swift_allocate_boxed_opaque_existential_1(&v262[2]);
      sub_231477698();
      OUTLINED_FUNCTION_2_10();
      sub_2313ED944(v265, v266, v267, v268);
      OUTLINED_FUNCTION_145_0();
      OUTLINED_FUNCTION_109_0();
      sub_2314773D8();

      sub_231477998();
      sub_231476E98();
      swift_allocObject();
      OUTLINED_FUNCTION_17();
      sub_231476E88();
      v337 = v263;
      v338 = MEMORY[0x277D0B7F8];
      __swift_allocate_boxed_opaque_existential_1(v335);
      sub_231477698();
      OUTLINED_FUNCTION_144_0();
      sub_231476EA8();
      __swift_destroy_boxed_opaque_existential_0(v335);
      OUTLINED_FUNCTION_92_0();
      sub_2314774D8();
      v269 = v301;
      v340 = v301;
      v341 = MEMORY[0x277D0B728];
      __swift_allocate_boxed_opaque_existential_1(v339);
      OUTLINED_FUNCTION_107_0();
      (*(v270 + 16))();
      v337 = v269;
      v338 = MEMORY[0x277D0B730];
      __swift_allocate_boxed_opaque_existential_1(v335);
      OUTLINED_FUNCTION_130_0();
      sub_231477208();
      OUTLINED_FUNCTION_13_1();
      v271(v207, v21);
      __swift_destroy_boxed_opaque_existential_0(v339);
      OUTLINED_FUNCTION_0_13();
      sub_2313ED944(v272, v273, v274, v275);
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_130_0();
      OUTLINED_FUNCTION_126_0();
      sub_2314771C8();

      (*(v82 + 8))(v210, v269);
      v276 = *(v289 + 8);
      v277 = OUTLINED_FUNCTION_133_0();
      v276(v277);
      (v276)(v77, v209);
      OUTLINED_FUNCTION_98();
      goto LABEL_104;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v318 = v279;
LABEL_11:
    v101 = *(v318 + 16);
    v107 = *(v318 + 24);
    v100 = v101 + 1;
    if (v101 >= v107 >> 1)
    {
      OUTLINED_FUNCTION_20(v107);
      OUTLINED_FUNCTION_129_0();
      sub_2313F3244();
      v318 = v280;
    }

    v108 = v318;
    *(v318 + 16) = v100;
    v109 = v108 + 32 * v101;
    *(v109 + 32) = xmmword_23147CC80;
    *(v109 + 48) = 0;
    *(v109 + 56) = v102;
    v102 = v108;
    v342 = v108;
LABEL_14:
    OUTLINED_FUNCTION_23_5();
  }

  if (v220 + 0x4000000000000000 < 0)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  sub_231477378();
  v233 = 0;
  OUTLINED_FUNCTION_135_0("DirectEngagement");
  OUTLINED_FUNCTION_100_0();
  v331[1] = v234;
  v85 = (v286 + 8);
  OUTLINED_FUNCTION_100_0();
  v331[0] = v235;
  OUTLINED_FUNCTION_100_0();
  v330 = v236;
  v237 = v207 + 72;
  v334 = xmmword_231479580;
  while (1)
  {
    v238 = *(v207 + 16);
    if (v233 == v238)
    {
      break;
    }

    if (v233 >= v238)
    {
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_138_0();
    sub_2314231F4();
    sub_23144467C(&v343);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
    OUTLINED_FUNCTION_41_1();
    v239 = swift_allocObject();
    OUTLINED_FUNCTION_68(v239);
    v240 = sub_2314776A8();
    v239[3].n128_u64[1] = v240;
    v239[4].n128_u64[0] = MEMORY[0x277D0B7E8];
    __swift_allocate_boxed_opaque_existential_1(&v239[2]);
    sub_231477698();
    OUTLINED_FUNCTION_2_10();
    sub_2313ED944(&qword_280C3CB48, &qword_27DD4DA98, &qword_23147CD60, v241);
    OUTLINED_FUNCTION_145_0();
    OUTLINED_FUNCTION_130_0();
    sub_2314773D8();

    sub_231477988();
    OUTLINED_FUNCTION_41_1();
    v82 = swift_allocObject();
    OUTLINED_FUNCTION_68(v82);
    v242[7] = v240;
    v242[8] = MEMORY[0x277D0B7E8];
    __swift_allocate_boxed_opaque_existential_1(v242 + 4);
    OUTLINED_FUNCTION_87();
    sub_2314776B8();
    sub_231400E2C(&qword_280C3C190, MEMORY[0x277D1F240], MEMORY[0x277D1F238]);
    OUTLINED_FUNCTION_144_0();
    sub_231476F08();

    OUTLINED_FUNCTION_107_0();
    sub_2314774D8();
    v340 = v240;
    v341 = MEMORY[0x277D0B7F0];
    __swift_allocate_boxed_opaque_existential_1(v339);
    OUTLINED_FUNCTION_45_0();
    sub_2314776B8();
    v337 = v301;
    v338 = MEMORY[0x277D0B730];
    __swift_allocate_boxed_opaque_existential_1(v335);
    v243 = v300;
    sub_231477208();
    OUTLINED_FUNCTION_37_1();
    v244(v82, v243);
    __swift_destroy_boxed_opaque_existential_0(v339);
    OUTLINED_FUNCTION_0_13();
    v77 = &qword_23147CD58;
    sub_2313ED944(&qword_27DD4E0E8, &qword_27DD4E0D0, &qword_23147CD58, v245);
    OUTLINED_FUNCTION_107_0();
    OUTLINED_FUNCTION_130_0();
    sub_2314771C8();
    v246 = *v85;
    v247 = OUTLINED_FUNCTION_128();
    v246(v247);
    __swift_destroy_boxed_opaque_existential_0(v335);
    OUTLINED_FUNCTION_55_1();
    sub_2313ED944(&qword_27DD4E0F0, &qword_27DD4E0D0, &qword_23147CD58, v248);
    OUTLINED_FUNCTION_139_0();
    sub_2314773A8();
    OUTLINED_FUNCTION_91_0();
    if (v233 < v249)
    {
      OUTLINED_FUNCTION_105_0();
      OUTLINED_FUNCTION_99_0();
      sub_231477398();
      OUTLINED_FUNCTION_37_1();
      v250(v21, v297);
    }

    (v246)(v308, v309);
    v102 = *v331[0];
    v21 = v310;
    (*v331[0])(v307, v310);
    (v102)(v306, v21);
    v237 += 48;
    ++v233;
    v207 = v303;
  }

  OUTLINED_FUNCTION_92_0();
  (*(v251 + 16))(v283, v305, v285);
  OUTLINED_FUNCTION_195();
  sub_231477658();
  sub_231477378();
  sub_231477368();
  sub_231477398();
  OUTLINED_FUNCTION_90_0();
  sub_231477368();
  v252 = v297;
  v337 = v297;
  v338 = MEMORY[0x277D0B7D0];
  __swift_allocate_boxed_opaque_existential_1(v335);
  sub_231477658();
  OUTLINED_FUNCTION_0_13();
  sub_2313ED944(v253, v254, v255, v256);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_109_0();
  OUTLINED_FUNCTION_126_0();
  sub_2314771C8();
  v257 = OUTLINED_FUNCTION_33_1();
  v258(v257, v252);
  v259 = OUTLINED_FUNCTION_139_0();
  v260(v259);
  OUTLINED_FUNCTION_134();
LABEL_104:
  OUTLINED_FUNCTION_168();
  v278();
  __swift_destroy_boxed_opaque_existential_0(v335);
LABEL_105:
  OUTLINED_FUNCTION_16();
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_231400E2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_172()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
}

uint64_t OUTLINED_FUNCTION_196()
{
  *(v0 - 144) = 0;
  *(v0 - 136) = 0xE000000000000000;

  return sub_2314784E8();
}

void sub_231400F04()
{
  OUTLINED_FUNCTION_15();
  v96 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_27DD4E0F8, &unk_23147CD80);
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_78_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_43_1();
  Value = type metadata accessor for QueryValue(0);
  v9 = MEMORY[0x28223BE20](Value);
  v11 = (&v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v98 = &v95 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v95 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v95 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v95 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v95 - v25);
  v27 = MEMORY[0x28223BE20](v24);
  v97 = &v95 - v28;
  MEMORY[0x28223BE20](v27);
  v32 = &v95 - v31;
  v33 = *(v96 + 8);
  v34 = *(v96 + 24);
  if (v33 != 6)
  {
    if (v33 != 10)
    {
      if (v33 != 7)
      {

        goto LABEL_48;
      }

      v35 = *(v34 + 16);
      if (!v35)
      {
        goto LABEL_48;
      }

      v98 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v36 = v34 + v98;
      v37 = *(v29 + 72);
      v96 = v34;

      v38 = MEMORY[0x277D84F90];
      while (1)
      {
        OUTLINED_FUNCTION_21_4();
        v39 = OUTLINED_FUNCTION_36_0();
        sub_2314015B4(v39, v40, v41);
        OUTLINED_FUNCTION_1_12();
        sub_2314448B0(v32, v26, v42);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          if (*v26 < 3uLL)
          {
            *v1 = qword_23147CE00[*v26];
            OUTLINED_FUNCTION_129_0();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_150_0(v1, 0);
            OUTLINED_FUNCTION_1_12();
            sub_2314448B0(v1, v97, v43);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_3_0();
              sub_23141CEC0();
              v38 = v54;
            }

            v44 = v38;
            v45 = *(v38 + 16);
            v46 = v44;
            v47 = *(v44 + 24);
            if (v45 >= v47 >> 1)
            {
              OUTLINED_FUNCTION_20(v47);
              sub_23141CEC0();
              v46 = v55;
            }

            *(v46 + 16) = v45 + 1;
            v38 = v46;
            OUTLINED_FUNCTION_1_12();
            sub_2314448B0(v48, v49, v50);
            goto LABEL_15;
          }
        }

        else
        {
          OUTLINED_FUNCTION_8_13();
          sub_23140166C(v26, v51);
        }

        OUTLINED_FUNCTION_150_0(v1, 1);
        v52 = OUTLINED_FUNCTION_160();
        sub_2313E937C(v52, v53, &unk_23147CD80);
LABEL_15:
        v36 += v37;
        if (!--v35)
        {
          goto LABEL_45;
        }
      }
    }

    v56 = *(v34 + 16);
    if (!v56)
    {
      goto LABEL_48;
    }

    v57 = v34 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v58 = *(v29 + 72);
    v96 = *(v96 + 24);

    v59 = MEMORY[0x277D84F90];
    while (1)
    {
      OUTLINED_FUNCTION_21_4();
      sub_2314015B4(v57, v16, v60);
      OUTLINED_FUNCTION_1_12();
      v61 = OUTLINED_FUNCTION_134_0();
      sub_2314448B0(v61, v62, v63);
      OUTLINED_FUNCTION_191();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (!*v11)
        {
          v64 = 1;
          goto LABEL_26;
        }

        if (*v11 == 1)
        {
          v64 = 2;
LABEL_26:
          *v0 = v64;
          OUTLINED_FUNCTION_16_5();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_150_0(v0, 0);
          OUTLINED_FUNCTION_1_12();
          sub_2314448B0(v0, v98, v66);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_0();
            sub_23141CEC0();
            v59 = v72;
          }

          v68 = *(v59 + 16);
          v67 = *(v59 + 24);
          v69 = v59;
          if (v68 >= v67 >> 1)
          {
            OUTLINED_FUNCTION_20(v67);
            sub_23141CEC0();
            v69 = v73;
          }

          *(v69 + 16) = v68 + 1;
          v59 = v69;
          OUTLINED_FUNCTION_1_12();
          sub_2314448B0(v98, v70, v71);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_13();
        sub_23140166C(v11, v65);
      }

      OUTLINED_FUNCTION_150_0(v0, 1);
      sub_2313E937C(v0, &off_27DD4E0F8, &unk_23147CD80);
LABEL_31:
      v57 += v58;
      if (!--v56)
      {
        goto LABEL_45;
      }
    }
  }

  v98 = v30;
  v74 = *(v34 + 16);
  if (!v74)
  {
    goto LABEL_48;
  }

  v75 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v96 = v34;
  v97 = v75;
  v76 = v34 + v75;
  v77 = *(v29 + 72);

  v78 = MEMORY[0x277D84F90];
  do
  {
    OUTLINED_FUNCTION_21_4();
    v79 = OUTLINED_FUNCTION_154();
    sub_2314015B4(v79, v80, v81);
    OUTLINED_FUNCTION_1_12();
    sub_2314448B0(v23, v19, v82);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_8_13();
      sub_23140166C(v19, v90);
LABEL_43:
      OUTLINED_FUNCTION_150_0(v2, 1);
      v91 = OUTLINED_FUNCTION_25();
      sub_2313E937C(v91, v92, &unk_23147CD80);
      goto LABEL_44;
    }

    if (*v19 >= 7uLL)
    {
      goto LABEL_43;
    }

    *v2 = *v19 + 1;
    OUTLINED_FUNCTION_129_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_150_0(v2, 0);
    OUTLINED_FUNCTION_1_12();
    v83 = OUTLINED_FUNCTION_84_0();
    sub_2314448B0(v83, v84, v85);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_0();
      sub_23141CEC0();
      v78 = v93;
    }

    v87 = *(v78 + 16);
    v86 = *(v78 + 24);
    if (v87 >= v86 >> 1)
    {
      OUTLINED_FUNCTION_20(v86);
      sub_23141CEC0();
      v78 = v94;
    }

    *(v78 + 16) = v87 + 1;
    OUTLINED_FUNCTION_1_12();
    sub_2314448B0(v98, v88, v89);
LABEL_44:
    v76 += v77;
    --v74;
  }

  while (v74);
LABEL_45:

LABEL_48:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_2314015B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_17();
  v5(v4);
  return a2;
}

uint64_t sub_231401610(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_17();
  v5(v4);
  return a2;
}

uint64_t sub_23140166C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2314016C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_231401768(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  sub_2313ED944(&qword_280C3D6D0, &qword_27DD4E0B0, &qword_23147CCE8, MEMORY[0x277D0B768]);
  sub_231400E2C(qword_280C3CB80, MEMORY[0x277D1F230], MEMORY[0x277D1F228]);
  return sub_231476F68();
}

const void *sub_231401890(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D8, &qword_23147A1F0);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_98_0(v3);
  OUTLINED_FUNCTION_100(v4);
  return v3;
}

uint64_t OUTLINED_FUNCTION_112()
{

  return sub_2313F31EC();
}

__n128 OUTLINED_FUNCTION_112_0@<Q0>(char a1@<W8>)
{
  *(v3 - 128) = v1;
  *(v3 - 120) = a1;
  *(v3 - 119) = *(v2 + 9);
  result = *(v2 + 25);
  *(v3 - 103) = result;
  return result;
}

void *sub_23140193C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v10 = 0;
    a3 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v9 = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v25 = a4;
    while (1)
    {
      if (v9 >= a3)
      {
        goto LABEL_24;
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v13 >= v11)
          {
            v7 = 0;
            a3 = v9;
            result = v24;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v13);
          ++v10;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v13 = v10;
LABEL_15:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v13 << 6);
      v16 = (*(a4 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(a4 + 56) + 24 * v15;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v8 = *v16;
      *(v8 + 8) = v17;
      *(v8 + 16) = v19;
      *(v8 + 24) = v20;
      *(v8 + 32) = v21;
      v22 = a3;
      if (v12 == a3)
      {
        break;
      }

      v8 += 40;

      result = sub_231401AEC(v19, v20, v21);
      v9 = v12;
      v10 = v13;
      a4 = v25;
      a3 = v22;
    }

    sub_231401AEC(v19, v20, v21);
    v10 = v13;
    result = v24;
    a4 = v25;
    a3 = v22;
LABEL_19:
    v5 = v23;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_231401AEC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return v3;
}

void sub_231401B20(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231402F78();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_231401C64(v5);
  *a1 = v2;
}

void sub_231401B8C()
{
  OUTLINED_FUNCTION_64();
  if (v2 != v1)
  {
    v4 = v2;
    v5 = v1;
    v6 = *v3;
    v7 = *v3 + 40 * v2 - 40;
    v8 = v0 - v2;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = v10 + 40;
        v12 = *(v10 + 40) == *v10 && *(v10 + 48) == *(v10 + 8);
        if (v12 || (sub_2314787C8() & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v14 = *(v10 + 40);
        v13 = *(v10 + 48);
        v15 = *(v10 + 72);
        v16 = *(v10 + 56);
        v17 = *(v10 + 16);
        v18 = *(v10 + 32);
        *v11 = *v10;
        *(v10 + 56) = v17;
        *v10 = v14;
        *(v10 + 8) = v13;
        *(v10 + 16) = v16;
        *(v10 + 32) = v15;
        v10 -= 40;
        *(v11 + 32) = v18;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != v5)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_62();
}

void sub_231401C64(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_231478788() < v1)
  {
    if (v1 >= -1)
    {
      v2 = v1 / 2;
      if (v1 <= 1)
      {
        v3 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8C0, &qword_231479890);
        v3 = sub_231478178();
        *(v3 + 16) = v2;
      }

      OUTLINED_FUNCTION_138();
      sub_23141DB14(v4, v5, v6, v7);
      *(v3 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    sub_231401B8C();
  }
}

uint64_t sub_231401D64(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v51 = *MEMORY[0x277D85DE8];
  v45[0] = a1;
  v45[1] = a2;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DDC0, &qword_23147BA70);
  if (swift_dynamicCast())
  {
    sub_2313F198C(v46, &v49);
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    sub_2314769A8();
    v46[0] = v48;
    __swift_destroy_boxed_opaque_existential_0(&v49);
    goto LABEL_59;
  }

  v47 = 0;
  memset(v46, 0, sizeof(v46));
  sub_23140224C(v46, &qword_27DD4DDC8, &unk_23147BA78);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v46[0] = a1;
    *(&v46[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v46;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_231478558();
  }

  sub_2314022AC(v5, v6, &v49);
  v7 = *(&v49 + 1);
  v8 = v49;
  if (*(&v49 + 1) >> 60 != 15)
  {
    v46[0] = v49;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v46[0] = MEMORY[0x23192CC30](v9);
  *(&v46[0] + 1) = v10;
  MEMORY[0x28223BE20](*&v46[0]);
  v40[2] = v45;
  v11 = sub_231431D98(sub_231432420, v40);
  v13 = *(&v46[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v46[0]);
  switch(*(&v46[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v46[0]) - LODWORD(v46[0]);
      if (__OFSUB__(DWORD1(v46[0]), v46[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v46[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v46[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v46[0] + 16);
      v21 = *(*&v46[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_231476B68();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v40[4] = v4;
      v41 = v8;
      v42 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v43 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v44 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v48 + 7) = 0;
      *&v48 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v46[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v32 = OUTLINED_FUNCTION_9_10();
      v28 = sub_231431CE8(v32, v33, v34);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_231477FF8();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_231478028();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v49 = v14;
      *(&v49 + 1) = v44;
      v31 = *(&v49 + v29);
    }

    else
    {
      v30 = v43;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_231478558();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v35 = OUTLINED_FUNCTION_9_10();
      v18 = sub_231431CE8(v35, v36, v37);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_9_10();
    v18 = sub_231478008();
LABEL_46:
    *(&v48 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      OUTLINED_FUNCTION_11_10();
      sub_231476B88();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    OUTLINED_FUNCTION_11_10();
    sub_231476B88();
    sub_2313F3D2C(v41, v42);
    goto LABEL_58;
  }

  sub_2313F3D2C(v41, v42);
LABEL_59:
  v38 = v46[0];
  sub_2313F3FD4(*&v46[0], *(&v46[0] + 1));

  sub_2313EB8A4(v38, *(&v38 + 1));
  return v38;
}

uint64_t sub_23140224C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2314022AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_231476B08();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_231476878();
      swift_allocObject();
      v8 = sub_231476838();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_231476B58();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void OUTLINED_FUNCTION_65()
{

  sub_2313FBD8C();
}

uint64_t OUTLINED_FUNCTION_65_1()
{
  v2 = *(v0 - 168);

  return sub_23140166C(v2, type metadata accessor for _InteractionWithEntity);
}

const void *sub_2314023F8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D9A0, &qword_2314798E8);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_98_0(v3);
  OUTLINED_FUNCTION_100(v4);
  return v3;
}

void *sub_231402470(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2314025F0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23144923C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_231403918(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_23140265C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_2314787C8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_113()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_113_0@<Q0>(char a1@<W8>)
{
  *(v3 - 136) = v1;
  *(v3 - 128) = a1;
  *(v3 - 127) = *(v2 + 9);
  result = *(v2 + 25);
  *(v3 - 111) = result;
  return result;
}

uint64_t sub_2314027B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v8;
LABEL_9:
      result = sub_23140285C(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
      goto LABEL_9;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_2314068D0(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x23140284CLL);
      }

      return result;
  }
}

uint64_t sub_23140285C(uint64_t a1, uint64_t a2)
{
  result = sub_231476848();
  if (!result || (result = sub_231476868(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_231476858();
      sub_231477D88();
      OUTLINED_FUNCTION_3_4();
      sub_23140292C(v5, v6, MEMORY[0x277CC5538]);
      return sub_231477D48();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23140292C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_231402974()
{
  OUTLINED_FUNCTION_64();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8B8, &unk_23147A238);
  v2 = sub_231478628();
  v3 = 0;
  OUTLINED_FUNCTION_36();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v10 = v9 + 64;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_8:
      v14 = v11 | (v3 << 6);
      v15 = (*(v1 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = 3 * v14;
      v19 = *(v1 + 56) + 24 * v14;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v23 = (v2[6] + 16 * v14);
      *v23 = v17;
      v23[1] = v16;
      v24 = v2[7] + 8 * v18;
      *v24 = v20;
      *(v24 + 8) = v21;
      *(v24 + 16) = v22;
      v25 = v2[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v2[2] = v27;

      sub_231401AEC(v20, v21, v22);
      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        OUTLINED_FUNCTION_62();
        return;
      }

      v13 = *(v1 + 64 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v6 = (v13 - 1) & v13;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void OUTLINED_FUNCTION_36_1(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
}

uint64_t OUTLINED_FUNCTION_36_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2314786B8();
}

uint64_t sub_231402B08(uint64_t a1, unint64_t a2)
{
  v3 = *v2;
  switch(*(v2 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_10_14();
      v47 = v3;
      v6 = sub_231478798();
      goto LABEL_16;
    case 2:
      v44 = 0;
      v45 = 0xE000000000000000;
      MEMORY[0x23192E060](a1, a2);
      OUTLINED_FUNCTION_10_14();
      sub_2314781E8();
      goto LABEL_17;
    case 3:
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_10_14();
      v21 = OUTLINED_FUNCTION_22_5();
      MEMORY[0x23192E060](v21);
      goto LABEL_17;
    case 4:
      v47 = 0;
      v48 = 0xE000000000000000;
      v9 = *(v3 + 16);
      if (!v9)
      {
        return 0;
      }

      v10 = (v3 + 48);
      do
      {
        v11 = *(v10 - 2);
        v12 = *(v10 - 1);
        v13 = *v10;
        v10 += 24;
        v44 = v11;
        v45 = v12;
        v46 = v13;
        v14 = OUTLINED_FUNCTION_22_5();
        sub_231401AEC(v14, v15, v13);
        v16 = sub_231402B08(a1, a2);
        v18 = v17;
        v19 = OUTLINED_FUNCTION_22_5();
        sub_231403090(v19, v20, v13);
        MEMORY[0x23192E060](v16, v18);

        --v9;
      }

      while (v9);
      return v47;
    case 5:
      v47 = 0;
      v48 = 0xE000000000000000;
      v44 = sub_231401864(v3);
      sub_231402E40(&v44);
      v23 = *(v44 + 16);
      if (v23)
      {
        v24 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v24 = a1 & 0xFFFFFFFFFFFFLL;
        }

        v43 = v24;
        v25 = (v44 + 64);
        do
        {
          v27 = *(v25 - 4);
          v26 = *(v25 - 3);
          v28 = *(v25 - 2);
          v29 = *(v25 - 1);
          v30 = *v25;
          if (v43)
          {
            OUTLINED_FUNCTION_27_3();

            v31 = OUTLINED_FUNCTION_3_7();
            sub_231401AEC(v31, v32, v33);
            MEMORY[0x23192E060](46, 0xE100000000000000);
            MEMORY[0x23192E060](v27, v26);

            v27 = v44;
            v26 = v45;
          }

          else
          {

            v34 = OUTLINED_FUNCTION_3_7();
            sub_231401AEC(v34, v35, v36);
          }

          v25 += 40;
          v44 = v28;
          v45 = v29;
          v46 = v30;
          v37 = sub_231402B08(v27, v26);
          v39 = v38;

          v40 = OUTLINED_FUNCTION_3_7();
          sub_231403090(v40, v41, v42);
          MEMORY[0x23192E060](v37, v39);

          --v23;
        }

        while (v23);

        return v47;
      }

      else
      {

        return 0;
      }

    default:
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_10_14();
      if (v3)
      {
        v6 = 1702195828;
      }

      else
      {
        v6 = 0x65736C6166;
      }

      if (v3)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      v8 = v7;
LABEL_16:
      MEMORY[0x23192E060](v6, v8);

LABEL_17:
      MEMORY[0x23192E060](10, 0xE100000000000000);
      return v44;
  }
}

uint64_t sub_231402E40(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_231402F78();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_231402F8C(v6);
  *a1 = v2;
  return result;
}

void sub_231402EAC()
{
  OUTLINED_FUNCTION_54();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_13_3(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_43();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5D8, &qword_23147A1F0);
      v7 = OUTLINED_FUNCTION_49(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_33(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_41();
        sub_23141FBB4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8C0, &qword_231479890);
    OUTLINED_FUNCTION_48(v12, v13, v14, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37();
  if (!v4)
  {
    OUTLINED_FUNCTION_12_3();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_231402F8C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231478788();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D8C0, &qword_231479890);
        v6 = sub_231478178();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2314488A0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_231406F78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231403090(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return v3;
}

uint64_t sub_2314030BC()
{
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_149(v1, v2, v3, v4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_17();
  v6(v5);
  return v0;
}

void OUTLINED_FUNCTION_71(uint64_t a1@<X8>)
{
  *(a1 + 32) = *(v4 - 184);
  *(a1 + 40) = v1;
  *(a1 + 48) = v2;
  *(a1 + 56) = v3;
}

uint64_t OUTLINED_FUNCTION_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_48_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2314786F8();
}

uint64_t OUTLINED_FUNCTION_146()
{

  return swift_beginAccess();
}

uint64_t *OUTLINED_FUNCTION_146_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 64) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 32));
}

void sub_231403238()
{
  OUTLINED_FUNCTION_15();
  v24 = v2;
  v28 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_137();
  Value = type metadata accessor for QueryValue(0);
  OUTLINED_FUNCTION_4();
  v27 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_141();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D568, &qword_2314795C8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  sub_2313E93D4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 6u:
      v13 = *v10;
      v14 = *(*v10 + 16);
      if (v14)
      {
        v30 = MEMORY[0x277D84F90];
        sub_2313FC060(0, v14, 0);
        v15 = 0;
        v16 = v30;
        OUTLINED_FUNCTION_59();
        v26 = v13 + v17;
        v25 = v4 + 8;
        do
        {
          if (v15 >= *(v13 + 16))
          {
            __break(1u);
            JUMPOUT(0x2314036A8);
          }

          v18 = *(v4 + 16);
          v19 = v28;
          v18(v0, v26 + *(v4 + 72) * v15, v28);
          v18(v1, v0, v19);
          swift_storeEnumTagMultiPayload();
          (*(v4 + 8))(v0, v19);
          v30 = v16;
          v21 = *(v16 + 16);
          v20 = *(v16 + 24);
          if (v21 >= v20 >> 1)
          {
            v22 = OUTLINED_FUNCTION_20(v20);
            sub_2313FC060(v22, v21 + 1, 1);
            v16 = v30;
          }

          ++v15;
          *(v16 + 16) = v21 + 1;
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_0_5();
          sub_2313F31EC();
        }

        while (v14 != v15);
      }

      else
      {

        v16 = MEMORY[0x277D84F90];
      }

      *v24 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_35();
      break;
    default:
      v11 = OUTLINED_FUNCTION_16_1();
      v12(v11);
      OUTLINED_FUNCTION_67();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
      OUTLINED_FUNCTION_35();
      break;
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_16();
}

__n128 OUTLINED_FUNCTION_76_0()
{
  v2 = v0[1].n128_u8[0];
  result = *v0;
  *(v1 - 112) = *v0;
  *(v1 - 96) = v2;
  return result;
}

void OUTLINED_FUNCTION_61_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_61_1(__n128 a1)
{
  *(v1 - 112) = a1;

  return sub_2314446D0(v1 - 144, v1 - 240);
}

void OUTLINED_FUNCTION_84(uint64_t a1@<X8>, void (*a2)(void)@<X3>)
{

  sub_23141D9F4(v2 + a1, v4, v3 + a1, a2);
}

uint64_t OUTLINED_FUNCTION_115()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_115_0()
{
  v2 = *v0;
  v3 = *(v0 - 3);
  v4 = *(v0 - 2);
  v5 = *(v0 - 5);
  v6 = *(v0 - 4);
  v7 = *(v0 - 8);
  *(v1 - 144) = v5;
  *(v1 - 136) = v6;
  *(v1 - 128) = v3;
  *(v1 - 120) = v4;
  *(v1 - 112) = v7;
  *(v1 - 104) = v2;
  sub_2313E9688(v5, v6, v3, v4, v7);
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231478948();
}

size_t sub_23140380C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_149(a1, a2, a3, a4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_29(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      OUTLINED_FUNCTION_100(result - v13);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231403918(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231478788();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D628, &unk_2314798F0);
        v6 = sub_231478178();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23141E06C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23140265C(0, v2, 1, a1);
  }

  return result;
}

size_t sub_231403A1C(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_23140380C(v9, a2, &qword_27DD4D8B0, &qword_23147A230, &qword_27DD4D888, &unk_23147A210);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D888, &unk_23147A210) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_2314070BC(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_231403B58(uint64_t a1)
{
  v2 = sub_231477D58();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_231403C40();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 32);
    do
    {
      v9 = *v8++;
      v7 = v9 | (v7 << 8);
      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_231403C40()
{
  v1 = sub_231477D58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  (*(v2 + 16))(&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  sub_2313F7138(&unk_280C3C170, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  v4 = sub_2314780B8();
  v5 = *(v4 + 16);
  (*(v2 + 8))(v0, v1);
  if (v5 < 2)
  {
    return;
  }

  v6 = v5 >> 1;
  v7 = v5 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v7)
    {
      goto LABEL_9;
    }

    v9 = *(v4 + 16);
    if (i - 32 >= v9)
    {
      break;
    }

    if (v7 - 32 >= v9)
    {
      goto LABEL_12;
    }

    v10 = *(v4 + i);
    v11 = *(v4 + v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2314285DC();
      v4 = v12;
    }

    *(v4 + i) = v11;
    *(v4 + v7) = v10;
LABEL_9:
    --v7;
    if (!--v6)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t *OUTLINED_FUNCTION_88()
{

  return sub_2313F4D04();
}

void InteractionQuery.filter(startDate:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_175();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v6 = OUTLINED_FUNCTION_14(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_74_0();
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  sub_231403238();
  OUTLINED_FUNCTION_172();
  sub_2313E95CC(v9, v0, &unk_27DD4D680, &unk_2314795C0);

  OUTLINED_FUNCTION_71_0();
  sub_2313E8CDC();
  v10 = v16[0];
  v11 = v16[1];
  sub_2313F3390();
  OUTLINED_FUNCTION_147_0();
  v12 = OUTLINED_FUNCTION_191();
  sub_2313E937C(v12, v13, &unk_2314795C0);
  OUTLINED_FUNCTION_62_1(v2 + 1);
  v15 = v14 + 32 * v2;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  OUTLINED_FUNCTION_118_0(v15);
  OUTLINED_FUNCTION_16();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_231403FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_231412C48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_231404004@<X0>(char a1@<W1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_171(a4);
  v8 = sub_231477668();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_177();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4();
  v55 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_78_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_28(v21);
  sub_231476CA8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  sub_231476C98();
  sub_231476BC8();
  v24 = v23;
  v25 = OUTLINED_FUNCTION_134();
  v26(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D5E8, &qword_23147CCC0);
  OUTLINED_FUNCTION_41_1();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_231479580;
  OUTLINED_FUNCTION_132();
  MEMORY[0x23192D700](0xD00000000000001CLL);
  v28 = sub_231476F88();
  v29 = MEMORY[0x277D0B6D8];
  *(v27 + 56) = v28;
  *(v27 + 64) = v29;
  v51 = v28;
  __swift_allocate_boxed_opaque_existential_1((v27 + 32));
  sub_231477508();
  v53 = *(v10 + 8);
  (v53)(v5, v8);
  OUTLINED_FUNCTION_2_10();
  v30 = OUTLINED_FUNCTION_142_0();
  v32 = sub_2313ED944(v30, a2, a3, v31);
  OUTLINED_FUNCTION_140_0();
  sub_2314773F8();

  OUTLINED_FUNCTION_41_1();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_184(v33);
  sub_231405614(a1, v24 + -120.0, v24);
  *(v27 + 56) = v28;
  *(v27 + 64) = MEMORY[0x277D0B6D8];
  __swift_allocate_boxed_opaque_existential_1((v27 + 32));
  sub_231477508();
  (v53)(v5, v8);
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_140_0();
  sub_2314773F8();

  v34 = *(v55 + 8);
  v34(v4, v52);
  OUTLINED_FUNCTION_41_1();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_184(v35);
  sub_231405614(a1, v24 + -600.0, v24 + -120.0);
  *(v27 + 56) = v51;
  *(v27 + 64) = MEMORY[0x277D0B6D8];
  __swift_allocate_boxed_opaque_existential_1((v27 + 32));
  sub_231477508();
  (v53)(v5, v8);
  OUTLINED_FUNCTION_89();
  sub_2314773F8();

  v36 = OUTLINED_FUNCTION_98();
  (v34)(v36);
  OUTLINED_FUNCTION_41_1();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_26_4(v37);
  sub_231405614(a1, v24 + -3600.0, v24 + -600.0);
  *(v53 + 56) = v51;
  OUTLINED_FUNCTION_146_0(MEMORY[0x277D0B6D8]);
  OUTLINED_FUNCTION_157();
  sub_231477508();
  (v53)(v5, v8);
  sub_2314773F8();

  v38 = OUTLINED_FUNCTION_96_0();
  (v34)(v38);
  OUTLINED_FUNCTION_41_1();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_26_4(v39);
  sub_231405614(a1, v24 + -21600.0, v24 + -3600.0);
  *(v53 + 56) = v51;
  OUTLINED_FUNCTION_146_0(MEMORY[0x277D0B6D8]);
  sub_231477508();
  v40 = OUTLINED_FUNCTION_84_0();
  (v53)(v40);
  OUTLINED_FUNCTION_144_0();
  sub_2314773F8();

  v34(v50, v52);
  OUTLINED_FUNCTION_41_1();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_26_4(v41);
  sub_231405614(a1, v24 + -86400.0, v24 + -21600.0);
  *(v53 + 56) = v51;
  OUTLINED_FUNCTION_146_0(MEMORY[0x277D0B6D8]);
  sub_231477508();
  (v53)(v5, v8);
  sub_2314773F8();

  v34(v32, v52);
  OUTLINED_FUNCTION_41_1();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_26_4(v42);
  sub_231405614(a1, v24 + -604800.0, v24 + -86400.0);
  *(v53 + 56) = v51;
  OUTLINED_FUNCTION_146_0(MEMORY[0x277D0B6D8]);
  OUTLINED_FUNCTION_157();
  sub_231477508();
  v43 = OUTLINED_FUNCTION_84_0();
  (v53)(v43);
  sub_2314773F8();

  v44 = OUTLINED_FUNCTION_160();
  (v34)(v44);
  OUTLINED_FUNCTION_41_1();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_26_4(v45);
  sub_231405614(a1, v24 + -2419200.0, v24 + -604800.0);
  *(v53 + 56) = v51;
  OUTLINED_FUNCTION_146_0(MEMORY[0x277D0B6D8]);
  v46 = v8;
  sub_231477508();
  (v53)(v5, v8);
  OUTLINED_FUNCTION_138_0();
  OUTLINED_FUNCTION_140_0();
  sub_2314773F8();

  v47 = OUTLINED_FUNCTION_98();
  (v34)(v47);
  OUTLINED_FUNCTION_41_1();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_231479580;
  sub_231405614(a1, 0.0, v24 + -2419200.0);
  *(v48 + 56) = v51;
  OUTLINED_FUNCTION_146_0(MEMORY[0x277D0B6D8]);
  sub_231477508();
  (v53)(v5, v46);
  OUTLINED_FUNCTION_140_0();
  sub_2314773F8();

  return (v34)(v53, v52);
}

uint64_t sub_231404A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = *&a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E140, &unk_23147CDD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for HistoryStats(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2314058C0();
  sub_231477628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4E0B0, &qword_23147CCE8);
  sub_2313ED944(&qword_280C3D6D0, &qword_27DD4E0B0, &qword_23147CCE8, MEMORY[0x277D0B768]);
  v13 = v36;
  result = sub_2314775E8();
  if (!v13)
  {
    v36 = v10;
    v15 = v33;
    while (1)
    {
      v16 = sub_2313FA820();
      v17 = v16;
      if (!v16)
      {
        break;
      }

      sub_2314438EC(v15, v16);
      sub_231442C9C(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
      sub_2314015B4(v12, v9, type metadata accessor for HistoryStats);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v36);
      sub_231460450();

      sub_23140166C(v12, type metadata accessor for HistoryStats);
    }
  }

  return result;
}

void sub_231404CE8()
{
  OUTLINED_FUNCTION_15();
  v1 = v0;
  v3 = v2;
  sub_231477468();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  sub_2314771F8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_177();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v1);
  sub_2314774B8();
  sub_2314771E8();
  v6 = OUTLINED_FUNCTION_25();
  v7(v6);
  sub_2314784E8();
  sub_231477838();
  sub_231400E2C(&qword_280C3CE70, MEMORY[0x277D0B828], MEMORY[0x277D0B830]);
  sub_231478798();

  OUTLINED_FUNCTION_132();
  MEMORY[0x23192E060](0xD000000000000011);
  sub_231477828();
  sub_231400E2C(&qword_280C3CE78, MEMORY[0x277D0B748], MEMORY[0x277D0B750]);
  v8 = sub_231478798();
  MEMORY[0x23192E060](v8);

  v9 = OUTLINED_FUNCTION_16_5();
  v10(v9);

  OUTLINED_FUNCTION_16();
}

uint64_t sub_231404F7C(uint64_t a1)
{
  v2 = type metadata accessor for Donation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_231404FD8(uint64_t a1)
{
  sub_231476CA8();
  if (v1 <= 0x3F)
  {
    sub_2314050B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2314050B0()
{
  if (!qword_280C3CEC0[0])
  {
    v0 = sub_231478418();
    if (!v1)
    {
      atomic_store(v0, qword_280C3CEC0);
    }
  }
}

uint64_t sub_23140510C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_231476CA8();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23140518C()
{
  result = qword_280C3C198;
  if (!qword_280C3C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C198);
  }

  return result;
}

void OUTLINED_FUNCTION_150()
{

  sub_2313E8CDC();
}

uint64_t OUTLINED_FUNCTION_150_0(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_231405268(uint64_t a1)
{
  v2 = sub_231476F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_231403FE4(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_231403FE4(v12 > 1, v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x277D0B6D8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_2313F198C(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_231405434(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_17();
  v5(v4);
  return a2;
}

uint64_t sub_231405490(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2314054F0()
{
  OUTLINED_FUNCTION_73();
  v1(0);
  OUTLINED_FUNCTION_3();
  v2 = OUTLINED_FUNCTION_17();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_116()
{

  return sub_2313E93D4();
}

uint64_t sub_23140557C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_231412D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_152(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return type metadata accessor for QueryFilter(0, a4, a5, a4);
}

uint64_t *OUTLINED_FUNCTION_95_0@<X0>(char a1@<W8>)
{
  *(v3 - 128) = v1;
  *(v3 - 120) = a1;
  *(v3 - 119) = *(v2 + 9);
  *(v3 - 103) = *(v2 + 25);

  return sub_2313F4D04();
}

uint64_t sub_231405614(char a1, double a2, double a3)
{
  v5 = sub_2314773C8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_231477378();
  sub_231477368();
  v6 = MEMORY[0x277D839F8];
  v7 = MEMORY[0x277D0B858];
  v10 = MEMORY[0x277D839F8];
  v11 = MEMORY[0x277D0B858];
  *v9 = a2;
  sub_231477388();
  sub_2313E937C(v9, &qword_27DD4E0C8, &qword_23147CD50);
  sub_231477368();
  v10 = v6;
  v11 = v7;
  *v9 = a3;
  sub_231477388();
  sub_2313E937C(v9, &qword_27DD4E0C8, &qword_23147CD50);
  sub_231477368();
  return sub_231477658();
}

uint64_t OUTLINED_FUNCTION_147()
{
}

uint64_t OUTLINED_FUNCTION_147_0()
{
  v2 = *(*v0 + 16);

  return sub_2313F34A0(v2);
}

void sub_2314058C0()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_4();
  v11 = v10;
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_177();
  if (byte_27DD4EE00 == 2 || (has_internal_diagnostics = os_variant_has_internal_diagnostics(), byte_27DD4EE00 = has_internal_diagnostics, has_internal_diagnostics))
  {
    v28 = v4;
    (*(v11 + 16))(v0, v6, v9);
    v14 = qword_280C3CF50;

    if (v14 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v15 = sub_231477B68();
    __swift_project_value_buffer(v15, qword_280C3D970);

    v16 = sub_231477B58();
    v17 = sub_2314782A8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_2313EB684(v28, v2, &v29);
      *(v18 + 12) = 2080;
      sub_231404CE8();
      v20 = v19;
      v22 = v21;
      v23 = OUTLINED_FUNCTION_84_0();
      v24(v23);
      v25 = sub_2313EB684(v20, v22, &v29);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_2313E1000, v16, v17, "InteractionQuery#logGeneratedSQL (%s): %s", v18, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    else
    {

      v26 = OUTLINED_FUNCTION_84_0();
      v27(v26);
    }
  }

  OUTLINED_FUNCTION_16();
}

uint64_t OUTLINED_FUNCTION_153()
{

  return sub_231477F68();
}

BOOL sub_231405B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2314788E8();
  sub_231477F38();
  v6 = sub_231478918();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_2314787C8();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_231405C58()
{

  v0 = sub_231406EA0(&qword_27DD4EB60, &qword_23147FCF8, sub_231406E84);

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_231405CC4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_231405D1C(uint64_t *a1)
{
  v2 = sub_231476CA8();
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v6 = *a1;
  v7 = *a1 + 64;
  v8 = 1 << *(*a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(*a1 + 64);
  v11 = (v8 + 63) >> 6;
  v28 = (v3 + 8);
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  v27 = v6;
  v25 = v2;
  v24 = v5;
  v23 = v6;
  if (v10)
  {
    goto LABEL_8;
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
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      do
      {
LABEL_8:
        v15 = *(v6 + 48) + 56 * (__clz(__rbit64(v10)) | (v13 << 6));
        v16 = *(v15 + 48);
        v17 = *(v15 + 32);
        v18 = *v15;
        v33[1] = *(v15 + 16);
        v33[2] = v17;
        v33[0] = v18;
        v34 = v16;
        v31 = *(v15 + 8);
        v19 = *(v15 + 24);
        v29 = *(v15 + 40);
        v30 = v19;
        sub_231406050(v33, v32);

        sub_231476C98();
        sub_231407184();
        if ((sub_231477E38() & 1) == 0)
        {
          sub_23140674C(v33);
          if (v20)
          {
            v21 = v26;
            swift_isUniquelyReferenced_nonNull_native();
            v32[0] = *v21;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD90, &unk_23147FD00);
            v5 = v24;
            sub_2314785F8();
            v22 = v32[0];

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAD0, &qword_23147F908);
            sub_23140769C();
            v2 = v25;
            sub_231478608();

            v27 = v22;
            *v26 = v22;
            v6 = v23;
          }
        }

        v10 &= v10 - 1;
        (*v28)(v5, v2);
      }

      while (v10);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2314060AC()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13_2();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_9(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2314068B0;
  *(v4 + 24) = v0;
  v9[4] = sub_2313EAA4C;
  v9[5] = v4;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  v9[2] = v5;
  v9[3] = &block_descriptor_14;
  _Block_copy(v9);
  OUTLINED_FUNCTION_12_2();

  dispatch_sync(v1, v2);
  _Block_release(v2);
  v7 = OUTLINED_FUNCTION_6_0(v6, "");

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2314061B4()
{

  sub_2314060AC();
}

uint64_t sub_23140620C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D988, &unk_23147A270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  sub_231461370();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2313E937C(v6, &qword_27DD4D988, &unk_23147A270);
    sub_23146093C();
    sub_2314071DC(a2);
    v10 = a1;
    v11 = &qword_27DD4D988;
    v12 = &unk_23147A270;
  }

  else
  {
    sub_231406994(v6, v9);
    sub_2314063B0(v9, a2);
    sub_2314071DC(a2);
    sub_2313E937C(a1, &qword_27DD4D988, &unk_23147A270);
    v11 = &qword_27DD4D990;
    v12 = &unk_23147FCE0;
    v10 = v9;
  }

  return sub_2313E937C(v10, v11, v12);
}

uint64_t sub_2314063B0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = sub_231476CA8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  v13 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v13;
  v20[2] = *(a2 + 32);
  v21 = *(a2 + 48);
  sub_231476C98();
  sub_231476BE8();
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_231461370();
  (*(v7 + 16))(v10, v12, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAD0, &qword_23147F908);
  v15 = swift_allocObject();
  sub_231406994(v5, v15 + *(*v15 + 104));
  (*(v7 + 32))(v15 + *(*v15 + 112), v10, v6);
  v18 = v20;
  v19 = v15;

  sub_2314060AC();

  return (v14)(v12, v6);
}

uint64_t sub_231406630(uint64_t a1, uint64_t *a2, char a3)
{
  sub_23140674C(a2);
  OUTLINED_FUNCTION_0_7();
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = sub_231478888();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DD90, &unk_23147FD00);
  if (sub_2314785F8())
  {
    sub_23140674C(a2);
    OUTLINED_FUNCTION_10_8();
    if (!v12)
    {
      goto LABEL_12;
    }

    v9 = v11;
  }

  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;
  }

  else
  {
    sub_23140720C(v9, a2, a1, v13);
    return sub_231406050(a2, v15);
  }
}

unint64_t sub_23140674C(uint64_t *a1)
{
  sub_2314788E8();
  v2 = a1[6];
  sub_231477F38();
  sub_231477F38();
  sub_231477F38();
  MEMORY[0x23192E9B0](v2);
  v3 = sub_231478918();

  return sub_2314072F0(a1, v3);
}

uint64_t sub_231406800(uint64_t *a1, uint64_t *a2, uint64_t a3)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_231406630(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  return result;
}

uint64_t sub_23140686C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  return sub_231406800(a1, v5, a3);
}

uint64_t sub_2314068D0(uint64_t a1, uint64_t a2)
{
  sub_231477D88();
  OUTLINED_FUNCTION_3_4();
  sub_23140292C(v2, v3, MEMORY[0x277CC5538]);
  return sub_231477D48();
}

uint64_t sub_231406994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231406A04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D988, &unk_23147A270);
  OUTLINED_FUNCTION_14(v4);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-1] - v6;
  v9 = a1[4];
  v8 = a1[5];
  v11 = a1[6];
  v10 = a1[7];
  v12 = *(a1 + *(type metadata accessor for _NewInteraction(0) + 64));
  v17[0] = v9;
  v17[1] = v8;
  v17[2] = v11;
  v17[3] = v10;
  v17[4] = v11;
  v17[5] = v10;
  v17[6] = v12;
  swift_bridgeObjectRetain_n();

  sub_231406B50(v17, v7);
  sub_2314071DC(v17);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    sub_2313E937C(v7, &qword_27DD4D988, &unk_23147A270);
    v14 = 1;
  }

  else
  {
    sub_231406994(v7, a2);
    v14 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v14, 1, v13);
}

uint64_t sub_231406B50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_231476CA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_231406EA0(&qword_27DD4EB60, &qword_23147FCF8, sub_231406E84);

  sub_231406DA4(a1, v8);
  v10 = v9;

  if (v10)
  {
    sub_231476C98();
    v11 = sub_231476C18();
    (*(v5 + 8))(v7, v4);
    if (v11)
    {
      sub_231461370();

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
      v13 = a2;
      v14 = 0;
    }

    else
    {
      sub_23146093C();

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);
      v13 = a2;
      v14 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D990, &unk_23147FCE0);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v15);
  }
}

void sub_231406DA4(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_23140674C(a1);
    if (v2)
    {
    }
  }
}

uint64_t sub_231406E58@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_231406E28(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_231406EA0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_231478318();
  return v4;
}

uint64_t sub_231406EF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D690, &qword_231479AD0);
  OUTLINED_FUNCTION_29(v0);
  v1 = OUTLINED_FUNCTION_56_0();

  return sub_2313FDE50(v1, v2, v3, v4, v5);
}

uint64_t sub_231406F78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = v10 + 40;
        result = *(v10 + 40);
        if (result == *v10 && *(v10 + 48) == *(v10 + 8))
        {
          break;
        }

        result = sub_2314787C8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v10 + 40);
        v13 = *(v10 + 48);
        v15 = *(v10 + 72);
        v16 = *(v10 + 56);
        v17 = *(v10 + 16);
        v18 = *(v10 + 32);
        *v11 = *v10;
        *(v10 + 56) = v17;
        *v10 = v14;
        *(v10 + 8) = v13;
        *(v10 + 16) = v16;
        *(v10 + 32) = v15;
        v10 -= 40;
        *(v11 + 32) = v18;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t SGSiriCanLearnFromApp(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:v1];

  return v3 ^ 1u;
}

void sub_2314070BC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_73();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_109(), __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), OUTLINED_FUNCTION_3(), v4 + *(v10 + 72) * v3 <= a3))
  {
    v11 = OUTLINED_FUNCTION_109();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_39_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_39_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

unint64_t sub_231407184()
{
  result = qword_280C3CB68;
  if (!qword_280C3CB68)
  {
    sub_231476CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3CB68);
  }

  return result;
}

unint64_t sub_23140720C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_23140726C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAC0, &qword_23147D020);
  swift_allocObject();
  v0 = sub_231407518(20.0);
  type metadata accessor for SiriRemembersDonationCache();
  swift_allocObject();
  result = sub_2314078F8(v0);
  qword_280C3D8C8 = result;
  return result;
}

unint64_t sub_2314072F0(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v24 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v22 = ~v3;
    v6 = *a1;
    v5 = a1[1];
    v7 = a1[2];
    v8 = a1[3];
    v21 = a1[4];
    v19 = a1[6];
    v20 = a1[5];
    v23 = *(v2 + 48);
    do
    {
      v9 = (v23 + 56 * v4);
      v11 = v9[2];
      v10 = v9[3];
      v12 = v9[4];
      v13 = v9[5];
      v14 = v9[6];
      v15 = *v9 == v6 && v9[1] == v5;
      if (v15 || (sub_2314787C8() & 1) != 0)
      {
        v16 = v11 == v7 && v10 == v8;
        if (v16 || (sub_2314787C8() & 1) != 0)
        {
          v17 = v12 == v21 && v13 == v20;
          if (v17 || (sub_2314787C8()) && v14 == v19)
          {
            break;
          }
        }
      }

      v4 = (v4 + 1) & v22;
    }

    while (((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_231407454()
{
  result = qword_280C3C5B8;
  if (!qword_280C3C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5B8);
  }

  return result;
}

uint64_t sub_231407518(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAD0, &qword_23147F908);
  sub_23140769C();
  sub_231477DC8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAE0, &unk_23147F910);
  OUTLINED_FUNCTION_15_10(v3);
  sub_2314078CC();
  *(v1 + 16) = v4;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_2314075CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_231476CA8();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_23140769C()
{
  result = qword_280C3C5C8;
  if (!qword_280C3C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C3C5C8);
  }

  return result;
}

void sub_2314076F0()
{
  OUTLINED_FUNCTION_15();
  v12 = v1;
  v11 = sub_231478308();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  sub_2314782F8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_0();
  v9 = sub_231477D08();
  v10 = OUTLINED_FUNCTION_14(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CC8();
  sub_2313E6E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  sub_2313E6ED0();
  sub_231478498();
  (*(v3 + 104))(v7, *MEMORY[0x277D85260], v11);
  *(v0 + 16) = sub_231478338();
  *(v0 + 24) = v12;
  OUTLINED_FUNCTION_16();
}

uint64_t sub_2314078F8(uint64_t a1)
{
  type metadata accessor for Interaction(0);
  sub_231477DC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4EB68, &qword_23147FD18);
  swift_allocObject();
  sub_2314078CC();
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_231407C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231407C5C(a1, a2);
  *a3 = result & 1;
  return result;
}

char *sub_231407CEC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

char *sub_231407D10(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_3(a3, result);
  }

  return result;
}

uint64_t sub_231407DAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_231476CA8();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_231407FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231476CA8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_231408074(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231476CA8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314081F4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2314082F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_231476CA8();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = type metadata accessor for Interaction(0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2314083BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_231476CA8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = type metadata accessor for Interaction(0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_231408550@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_231435594(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_23140857C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_97();
  v4 = sub_231477A58();
  if (*(*(v4 - 8) + 84) == a2)
  {
    v5 = v4;
    v6 = v2;
  }

  else
  {
    sub_231477A88();
    v6 = OUTLINED_FUNCTION_28_2();
  }

  return __swift_getEnumTagSinglePayload(v6, a2, v5);
}

uint64_t sub_231408610(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_97();
  v6 = sub_231477A58();
  if (*(*(v6 - 8) + 84) == a3)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    sub_231477A88();
    v8 = OUTLINED_FUNCTION_28_2();
  }

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
}

uint64_t sub_2314086AC(unint64_t *a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    sub_231477A88();
    v5 = OUTLINED_FUNCTION_28_2();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }
}

void *sub_231408730(void *result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_231477A88();
    v4 = OUTLINED_FUNCTION_28_2();

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_231408848@<X0>(uint64_t *a1@<X8>)
{
  result = InteractionDirection.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_231408870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_91();
  v7 = type metadata accessor for Interaction(v6);
  if (*(*(v7 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_28_0(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_23140890C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Interaction(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_231408A8C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6B0, qword_23147B940);
  result = sub_231477DC8();
  *a1 = result;
  return result;
}

__n128 sub_231408BB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_231408BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2314770C8();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_231408C54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_2314770C8();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_231408E34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_231408EE8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_231408F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_231424118(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2314091A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2314091EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_231409230()
{
  swift_unknownObjectRelease();
  if (*(v0 + 24))
  {

    if (*(v0 + 56) >= 3uLL)
    {
    }
  }

  if (*(v0 + 104) >= 3uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

void *sub_2314092CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v84 = a4;
  LODWORD(v83) = a3;
  v87 = a2;
  v6 = type metadata accessor for Entity(0);
  v92 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_2();
  v85 = (v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DEC0, &qword_23147F580);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v74 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 72);
  v81 = *(a1 + 64);
  v82 = v13;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 56);
  v79 = *(a1 + 48);
  v80 = v15;
  v18 = *(a1 + 81);
  v78 = dword_23147FB54[*(a1 + 82)];
  v90 = v12;

  v91 = v14;

  v93 = v16;

  v94 = v17;

  v89 = sub_2314781A8();
  v19 = type metadata accessor for Interaction(0);
  v20 = v19[12];
  v21 = sub_231476CA8();
  OUTLINED_FUNCTION_3();
  (*(v22 + 16))(v11, a1 + v20, v21);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v21);
  v86 = sub_231478218();
  v23 = sub_2314767B8();
  swift_allocObject();
  sub_2314767A8();
  v24 = sub_2313F6380();
  if (v4)
  {
    sub_2313E937C(v11, &qword_27DD4DEC0, &qword_23147F580);
  }

  else
  {
    v27 = v24;
    v28 = v25;
    v95 = 0;
    v77 = v18 + 1;

    v29 = v19[18];
    v30 = (a1 + v19[17]);
    v31 = v30[1];
    v76 = *v30;
    v32 = *(a1 + v29 + 8);
    v75 = *(a1 + v29);
    if (v83)
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    LODWORD(v83) = v33;

    v34 = sub_231478218();
    v35 = *(a1 + v19[16]);
    v36 = objc_allocWithZone(MEMORY[0x277CF1580]);
    v79 = sub_23145FBE8(v82, v90, v81, v91, v80, v93, v79, v94, v77, v78, v89, v11, v86, v27, v28, v76, v31, v75, v32, v83, v34, v35);
    v37 = MEMORY[0x277D84F90];
    v100 = MEMORY[0x277D84F90];
    v38 = *(v87 + 64);
    v84 = v87 + 64;
    v39 = 1 << *(v87 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & v38;
    v83 = (v39 + 63) >> 6;

    v42 = 0;
    v43 = v85;
    v44 = v92;
    v88 = v23;
    while (v41)
    {
      v80 = v37;
      result = v87;
LABEL_16:
      v85 = v42;
      v46 = __clz(__rbit64(v41)) | (v42 << 6);
      v47 = result[7];
      v48 = (result[6] + 16 * v46);
      v49 = v48[1];
      v81 = *v48;
      v82 = (v41 - 1) & v41;
      v50 = *(v47 + 8 * v46);
      v51 = MEMORY[0x277D84F90];
      v99 = MEMORY[0x277D84F90];
      v91 = *(v50 + 16);
      v86 = v49;

      v52 = 0;
      v90 = v50;
      while (v91 != v52)
      {
        if (v52 >= *(v50 + 16))
        {
          __break(1u);
          goto LABEL_29;
        }

        v89 = v51;
        v53 = v50 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v54 = *(v44 + 72);
        v94 = v52;
        sub_231405490(v53 + v54 * v52, v43, type metadata accessor for Entity);
        v55 = v43[1];
        v93 = *v43;
        v56 = v43[2];
        v57 = v43[3];
        swift_allocObject();

        sub_2314767A8();
        v58 = v95;
        v59 = sub_2313F6380();
        if (v58)
        {

          OUTLINED_FUNCTION_4_13();
          sub_2313FC268(v43, v73);
        }

        v61 = v59;
        v62 = v60;

        sub_2314212C8();
        v95 = 0;
        v96 = v63;
        v97 = 0;
        v98 = 5;

        v64 = sub_231402B08(0, 0xE000000000000000);
        v65 = v43;
        v67 = v66;

        sub_231403090(v96, v97, v98);
        v68 = objc_allocWithZone(MEMORY[0x277CF1578]);
        v69 = v67;
        v43 = v65;
        sub_23145FAD0(v93, v55, v56, v57, v61, v62, v64, v69);
        OUTLINED_FUNCTION_4_13();
        v71 = sub_2313FC268(v65, v70);
        MEMORY[0x23192E1C0](v71);
        if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          OUTLINED_FUNCTION_16_10();
        }

        OUTLINED_FUNCTION_16_5();
        result = sub_231478188();
        v51 = v99;
        v52 = v94 + 1;
        v44 = v92;
        v50 = v90;
      }

      v72 = objc_allocWithZone(MEMORY[0x277CF1570]);
      sub_23145FE68(v81, v86, v51);
      MEMORY[0x23192E1C0]();
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_16_10();
      }

      OUTLINED_FUNCTION_16_5();
      sub_231478188();
      v37 = v100;
      v42 = v85;
      v41 = v82;
    }

    result = v87;
    while (1)
    {
      v45 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v45 >= v83)
      {

        return v79;
      }

      v41 = *(v84 + 8 * v45);
      ++v42;
      if (v41)
      {
        v80 = v37;
        v42 = v45;
        goto LABEL_16;
      }
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_231409A6C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_231409AAC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4DA58, &unk_23147A530) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = sub_231476AF8();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v3))
  {
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_231409BA4()
{
  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_28_0(*(v0 + 16));
  }

  v4 = OUTLINED_FUNCTION_23_9();
  type metadata accessor for _Entity(v4);
  v5 = OUTLINED_FUNCTION_30_5(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_231409C0C()
{
  OUTLINED_FUNCTION_13_15();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_52_1();
    type metadata accessor for _Entity(v4);
    v5 = OUTLINED_FUNCTION_22_9(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_231409C74()
{
  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_28_0(*(v0 + 16));
  }

  OUTLINED_FUNCTION_23_9();
  sub_231476CA8();
  v4 = OUTLINED_FUNCTION_30_5(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_231409CDC()
{
  OUTLINED_FUNCTION_13_15();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    sub_231476CA8();
    v4 = OUTLINED_FUNCTION_22_9(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_231409D6C()
{
  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_28_0(*(v0 + 16));
  }

  OUTLINED_FUNCTION_23_9();
  sub_231476CA8();
  v4 = OUTLINED_FUNCTION_30_5(*(v1 + 56));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_231409DD4()
{
  OUTLINED_FUNCTION_13_15();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    sub_231476CA8();
    v4 = OUTLINED_FUNCTION_22_9(*(v2 + 56));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_231409E3C()
{
  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_28_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_23_9();
  sub_231476CA8();
  v4 = OUTLINED_FUNCTION_30_5(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_231409EA4()
{
  OUTLINED_FUNCTION_13_15();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    sub_231476CA8();
    v4 = OUTLINED_FUNCTION_22_9(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_231409F0C()
{
  OUTLINED_FUNCTION_24_5();
  if (v2)
  {
    return OUTLINED_FUNCTION_28_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_23_9();
  sub_231476CA8();
  v4 = OUTLINED_FUNCTION_30_5(*(v1 + 52));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_231409F74()
{
  OUTLINED_FUNCTION_13_15();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    sub_231476CA8();
    v4 = OUTLINED_FUNCTION_22_9(*(v2 + 52));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_23140A20C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2314779E8();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23140A294(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2314779E8();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

xpc_object_t sub_23140A418()
{
  result = xpc_int64_create(*MEMORY[0x277D862C0]);
  qword_27DD4D218 = result;
  return result;
}

uint64_t static ActivityHeartbeat.idleCheckFrequency.getter(uint64_t a1, uint64_t a2)
{
  if (qword_27DD4D210 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

void *sub_23140A4A0()
{
  type metadata accessor for ActivityHeartbeat();
  v0 = swift_allocObject();
  result = sub_23140A64C(v0);
  qword_280C3BE28 = result;
  return result;
}

uint64_t sub_23140A4D0()
{
  v1 = (*(v0 + 16))();
  v2 = *(v0 + 32);
  v3 = __OFSUB__(v1, v2);
  result = v1 - v2;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23140A52C()
{
  sub_2314784E8();

  sub_23140A4D0();
  v0 = sub_231478798();
  MEMORY[0x23192E060](v0);

  MEMORY[0x23192E060](0x73646E6F63657320, 0xEF3D656C6469202CLL);
  v1 = sub_23140A4D0();
  v2 = v1 <= 420;
  if (v1 <= 420)
  {
    v3 = 0x65736C6166;
  }

  else
  {
    v3 = 1702195828;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x23192E060](v3, v4);

  MEMORY[0x23192E060](23849, 0xE200000000000000);
  return 0xD000000000000016;
}

void *sub_23140A64C(void *a1)
{
  a1[2] = sub_2313F6BB4;
  a1[3] = 0;
  a1[4] = sub_2313F6BB4();
  if (qword_280C3CF50 != -1)
  {
    swift_once();
  }

  v2 = sub_231477B68();
  __swift_project_value_buffer(v2, qword_280C3D970);

  v3 = sub_231477B58();
  v4 = sub_2314782A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1[4];

    _os_log_impl(&dword_2313E1000, v3, v4, "ActivityHeartbeat: initialized %ld", v5, 0xCu);
    MEMORY[0x23192F1F0](v5, -1, -1);
  }

  else
  {
  }

  return a1;
}

uint64_t ActivityHeartbeat.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23140A854()
{
  result = sub_231478508();
  qword_280C3D898 = result;
  unk_280C3D8A0 = v1;
  return result;
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

uint64_t sub_23140A904()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13_2();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_9(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_23140AE3C;
  *(v4 + 24) = v0;
  v9[4] = sub_2313EAA1C;
  v9[5] = v4;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  v9[2] = v5;
  v9[3] = &block_descriptor;
  _Block_copy(v9);
  OUTLINED_FUNCTION_12_2();

  dispatch_sync(v1, v2);
  _Block_release(v2);
  v7 = OUTLINED_FUNCTION_6_0(v6, "");

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23140AA04()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13_2();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_9(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2313E3434;
  *(v4 + 24) = v0;
  v9[4] = sub_2313EAA4C;
  v9[5] = v4;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  v9[2] = v5;
  v9[3] = &block_descriptor_24;
  _Block_copy(v9);
  OUTLINED_FUNCTION_12_2();

  dispatch_sync(v1, v2);
  _Block_release(v2);
  v7 = OUTLINED_FUNCTION_6_0(v6, "");

  if (v7)
  {
    __break(1u);
  }

  return result;
}

id AppIntentProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppIntentProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23140ABB0()
{
  OUTLINED_FUNCTION_15();
  v12 = v2;
  v13 = v3;
  v11 = sub_231478308();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_0();
  sub_2314782F8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v8 = sub_231477D08();
  v9 = OUTLINED_FUNCTION_14(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  sub_2313E4AFC(0, &qword_280C3CE90, 0x277D85C78);
  sub_231477CC8();
  sub_2313E6E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4EAA0, qword_23147F920);
  v10 = sub_2313E6ED0();
  OUTLINED_FUNCTION_10_0(v10);
  (*(v5 + 104))(v1, *MEMORY[0x277D85260], v11);
  v0[2] = OUTLINED_FUNCTION_7();
  v0[3] = v12;
  v0[4] = v13;
  OUTLINED_FUNCTION_16();
}

uint64_t sub_23140AD58(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_1(a1, a2);
  v3 = *(v2 + 24);

  return v3;
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

double AppMatcher.init()@<D0>(_OWORD *a1@<X8>)
{
  static InteractionStore.inProcess()();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[9];
    *(a1 + 25) = *&v5[9];
  }

  return result;
}

__n128 AppMatcher.init(store:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 25);
  *(a2 + 25) = result;
  return result;
}

void AppMatcher.resolve(intent:bundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_64();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_231477B48();
  OUTLINED_FUNCTION_4();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2();
  v38 = v37 - v36;
  sub_2313E74F8("AppMatcher", 10, 2, v37 - v36);
  v39 = v27[2];
  if (v39 == 1)
  {
    if (qword_280C3CF50 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v46 = sub_231477B68();
    OUTLINED_FUNCTION_38(v46, qword_280C3D970);

    v47 = sub_231477B58();
    v48 = sub_2314782A8();

    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_24();
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v60 = swift_slowAlloc();
      *v49 = 136315138;
      v61 = v34;
      v62 = v60;
      v51 = v27[4];
      v50 = v27[5];

      v52 = sub_2313EB684(v51, v50, &v62);
      v34 = v61;

      *(v49 + 4) = v52;
      _os_log_impl(&dword_2313E1000, v47, v48, "AppMatcher has 1 candidate: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    v53 = v27[5];
    *v31 = v27[4];
    *(v31 + 8) = v53;
    *(v31 + 16) = 0;
    *(v31 + 24) = MEMORY[0x277D84F90];
  }

  else
  {
    if (!v39)
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v40 = sub_231477B68();
      OUTLINED_FUNCTION_38(v40, qword_280C3D970);
      v41 = sub_231477B58();
      v42 = sub_2314782A8();
      v43 = OUTLINED_FUNCTION_28_1();
      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_32();
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_2313E1000, v41, v42, "AppMatcher has no candidates", v45, 2u);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      goto LABEL_8;
    }

    v54 = static AppSelectionUtilityHelper.equivalentInteractionIntentsFor(intent:)(v29);
    a13 = 1;
    v55.super.isa = v29;
    v56 = AppMatcher.getInteractionStats(intent:interactionTypes:interactionDirection:bundleIds:groupBySiriDonation:isDonatedBySiri:)(v55, v54, &a13, v27, 0, 2u);
    if (!v23)
    {
      v57 = v56;

      if (!*(v57 + 16))
      {

LABEL_8:
        *v31 = 0;
        *(v31 + 8) = 0;
        *(v31 + 16) = 3;
        *(v31 + 24) = MEMORY[0x277D84F90];
        goto LABEL_18;
      }

      v58 = v34;
      v59 = AppMatcher.makeAppSignals(stats:)(v57);

      AppMatcher.decide(signals:)(v59, v31);
      v34 = v58;
    }
  }

LABEL_18:
  sub_2314783A8();
  if (qword_280C3CF48 != -1)
  {
    swift_once();
  }

  sub_231477B28();
  (*(v34 + 8))(v38, v32);
  OUTLINED_FUNCTION_62();
}

__n128 AppMatcherResult.init(recommendation:signals:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u64[1] = a2;
  return result;
}

uint64_t AppMatcher.getInteractionStats(intent:bundleIds:)(void *a1, uint64_t a2)
{
  v4 = static AppSelectionUtilityHelper.equivalentInteractionIntentsFor(intent:)(a1);
  v8 = 1;
  v5.super.isa = a1;
  v6 = AppMatcher.getInteractionStats(intent:interactionTypes:interactionDirection:bundleIds:groupBySiriDonation:isDonatedBySiri:)(v5, v4, &v8, a2, 0, 2u);

  return v6;
}

uint64_t AppMatcher.makeAppSignals(stats:)(uint64_t a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D560, &qword_2314795B0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_34();
  v42 = (v3 - v4);
  MEMORY[0x28223BE20](v5);
  v43 = &v35 - v6;
  v45[0] = sub_23140FED0(a1);
  v7 = 0;
  sub_23140FE1C(v45);
  v8 = v45[0];
  v9 = *(v45[0] + 16);
  if (v9)
  {
    v37 = 0;
    v48 = MEMORY[0x277D84F90];
    sub_231412598(0, v9, 0);
    v10 = v48;
    v41 = *(v8 + 16);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D900, &qword_2314795B8);
    v12 = 0;
    v39 = *(v11 - 8);
    v40 = v11;
    v38 = v8 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    while (v41 != v12)
    {
      if (v12 >= *(v8 + 16))
      {
        goto LABEL_16;
      }

      v14 = v43;
      v13 = v44;
      v15 = *(v44 + 48);
      sub_2313E95CC(v38 + *(v39 + 72) * v12, &v43[v15], &qword_27DD4D900, &qword_2314795B8);
      v16 = v42;
      *v42 = v12;
      v17 = (v16 + *(v13 + 48));
      sub_2314125B8(&v14[v15], v17);
      sub_23140EFF4(v12, *v17, v17[1], v17 + *(v40 + 48), v45);
      sub_2313E937C(v16, &qword_27DD4D560, &qword_2314795B0);
      v18 = v45[0];
      v7 = v45[1];
      v19 = v45[2];
      v20 = v46;
      v21 = v47;
      v48 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      if (v23 >= v22 >> 1)
      {
        v35 = v47;
        v36 = v46;
        sub_231412598(v22 > 1, v23 + 1, 1);
        v21 = v35;
        v20 = v36;
        v10 = v48;
      }

      *(v10 + 16) = v23 + 1;
      v24 = v10 + 56 * v23;
      *(v24 + 32) = v18;
      *(v24 + 40) = v7;
      *(v24 + 48) = v19;
      *(v24 + 56) = v20;
      *(v24 + 72) = v21;
      if (v9 == ++v12)
      {

        v7 = v37;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_10:
  if (qword_280C3CF50 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v25 = sub_231477B68();
  __swift_project_value_buffer(v25, qword_280C3D970);

  v26 = sub_231477B58();
  v27 = sub_2314782A8();

  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_24();
    v28 = swift_slowAlloc();
    OUTLINED_FUNCTION_23();
    v29 = swift_slowAlloc();
    v45[0] = v29;
    *v28 = 136315138;
    v30 = MEMORY[0x23192E1F0](v10, &type metadata for AppMatcherSignals);
    v32 = sub_2313EB684(v30, v31, v45);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2313E1000, v26, v27, "AppMatcher#makeAppSignals signals: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v33 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x23192F1F0](v33);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  v45[0] = v10;

  sub_23140FDB0(v45);
  if (v7)
  {

    __break(1u);
  }

  else
  {

    return v45[0];
  }

  return result;
}

uint64_t AppMatcher.decide(signals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v83 = a2;
    v5 = 0;
    v6 = *(a1 + 80);
    v7 = v6 / 10.0;
    v8 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90];
    v10 = v6 / 5.0;
LABEL_3:
    v11 = v3 + 56 * v5;
    while (v4 != v5)
    {
      if (v5 >= v4)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        OUTLINED_FUNCTION_0();
        swift_once();
        goto LABEL_45;
      }

      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 80);
      v14 = *(v11 + 48);
      v11 += 56;
      if (v14)
      {
        ++v5;
        if (v10 >= v13)
        {
          continue;
        }
      }

      v15 = *(v11 - 24);
      v2 = *(v11 - 16);
      v16 = *v11;
      v17 = *(v11 + 8);
      v18 = *(v11 + 16);

      v85 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = OUTLINED_FUNCTION_55();
        sub_231412598(v19, v20, 1);
        v9 = v85;
      }

      v22 = *(v9 + 16);
      v21 = *(v9 + 24);
      if (v22 >= v21 >> 1)
      {
        v24 = OUTLINED_FUNCTION_20(v21);
        sub_231412598(v24, v22 + 1, 1);
        v9 = v85;
      }

      *(v9 + 16) = v22 + 1;
      v23 = v9 + 56 * v22;
      *(v23 + 32) = v15;
      *(v23 + 40) = v2;
      *(v23 + 48) = v14;
      *(v23 + 56) = v16;
      *(v23 + 64) = v17;
      *(v23 + 72) = v18;
      *(v23 + 80) = v13;
      v5 = v12;
      goto LABEL_3;
    }

    v25 = *(v9 + 16);
    v84 = v3;
    if (v25)
    {
      v85 = v8;
      v26 = OUTLINED_FUNCTION_55();
      sub_23141252C(v26, v25, 0);
      v2 = v8;
      v27 = (v9 + 40);
      do
      {
        v29 = *(v27 - 1);
        v28 = *v27;
        v85 = v2;
        v30 = v2[2];
        v31 = v2[3];

        if (v30 >= v31 >> 1)
        {
          sub_23141252C(v31 > 1, v30 + 1, 1);
          v2 = v85;
        }

        v2[2] = v30 + 1;
        v32 = &v2[2 * v30];
        v32[4] = v29;
        v32[5] = v28;
        v27 += 7;
        --v25;
      }

      while (v25);

      v3 = v84;
    }

    else
    {

      v2 = MEMORY[0x277D84F90];
    }

    v34 = 0;
    v35 = MEMORY[0x277D84F90];
    v36 = MEMORY[0x277D84F90];
LABEL_23:
    v37 = v3 + 56 * v34;
    while (v4 != v34)
    {
      if (v34 >= v4)
      {
        goto LABEL_63;
      }

      v38 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_64;
      }

      v39 = *(v37 + 80);
      ++v34;
      v37 += 56;
      if (v7 <= v39 && v39 < v10)
      {
        v41 = *(v37 - 24);
        v9 = *(v37 - 16);
        v42 = *(v37 - 8);
        v43 = *v37;
        v44 = *(v37 + 8);
        v45 = *(v37 + 16);

        v85 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = OUTLINED_FUNCTION_55();
          sub_231412598(v46, v47, 1);
          v36 = v85;
        }

        v49 = *(v36 + 16);
        v48 = *(v36 + 24);
        if (v49 >= v48 >> 1)
        {
          v51 = OUTLINED_FUNCTION_20(v48);
          sub_231412598(v51, v49 + 1, 1);
          v36 = v85;
        }

        *(v36 + 16) = v49 + 1;
        v50 = v36 + 56 * v49;
        *(v50 + 32) = v41;
        *(v50 + 40) = v9;
        *(v50 + 48) = v42;
        *(v50 + 56) = v43;
        *(v50 + 64) = v44;
        *(v50 + 72) = v45;
        *(v50 + 80) = v39;
        v34 = v38;
        v3 = v84;
        goto LABEL_23;
      }
    }

    v52 = *(v36 + 16);
    if (v52)
    {
      v85 = v35;
      v53 = OUTLINED_FUNCTION_55();
      sub_23141252C(v53, v52, 0);
      v9 = v35;
      v54 = (v36 + 40);
      do
      {
        v56 = *(v54 - 1);
        v55 = *v54;
        v85 = v9;
        v57 = *(v9 + 16);
        v58 = *(v9 + 24);

        if (v57 >= v58 >> 1)
        {
          sub_23141252C(v58 > 1, v57 + 1, 1);
          v9 = v85;
        }

        *(v9 + 16) = v57 + 1;
        v59 = v9 + 16 * v57;
        *(v59 + 32) = v56;
        *(v59 + 40) = v55;
        v54 += 7;
        --v52;
      }

      while (v52);

      v3 = v84;
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    if (qword_280C3CF50 != -1)
    {
      goto LABEL_65;
    }

LABEL_45:
    v60 = sub_231477B68();
    __swift_project_value_buffer(v60, qword_280C3D970);

    v61 = sub_231477B58();
    v62 = sub_2314782A8();

    if (os_log_type_enabled(v61, v62))
    {
      OUTLINED_FUNCTION_24();
      v63 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v64 = swift_slowAlloc();
      v85 = v64;
      *v63 = 136315138;
      v65 = MEMORY[0x23192E1F0](v2, MEMORY[0x277D837D0]);
      v67 = sub_2313EB684(v65, v66, &v85);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_2313E1000, v61, v62, "AppMatcher#decide plausibleApps: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    v68 = sub_231477B58();
    v69 = sub_2314782A8();

    if (os_log_type_enabled(v68, v69))
    {
      OUTLINED_FUNCTION_24();
      v70 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v71 = swift_slowAlloc();
      v85 = v71;
      *v70 = 136315138;
      v72 = MEMORY[0x23192E1F0](v9, MEMORY[0x277D837D0]);
      v74 = sub_2313EB684(v72, v73, &v85);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_2313E1000, v68, v69, "AppMatcher#decide spoilerApps: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
      v75 = OUTLINED_FUNCTION_8_1();
      MEMORY[0x23192F1F0](v75);
    }

    if (v2[2] >= 2uLL)
    {

      a2 = v83;
      *v83 = v2;
      *(v83 + 8) = 0;
      v33 = 2;
      goto LABEL_51;
    }

    v76 = *(v9 + 16);

    v78 = v2[2];
    if (v76)
    {
      if (v78)
      {
        v79 = v2[4];
        v80 = v2[5];

        a2 = v83;
        *v83 = v79;
        *(v83 + 8) = v80;
        *(v83 + 16) = 1;
LABEL_57:
        v3 = v84;
        goto LABEL_58;
      }

      __break(1u);
    }

    else if (v78)
    {
      v81 = v2[4];
      v82 = v2[5];

      a2 = v83;
      *v83 = v81;
      *(v83 + 8) = v82;
      *(v83 + 16) = 0;
      goto LABEL_57;
    }

    __break(1u);
    return result;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v33 = 3;
LABEL_51:
  *(a2 + 16) = v33;
LABEL_58:
  *(a2 + 24) = v3;
}

uint64_t AppMatcher.getInteractionStats(intent:bundleIds:groupBySiriDonation:)(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = static AppSelectionUtilityHelper.equivalentInteractionIntentsFor(intent:)(a1);
  v10 = 1;
  v7.super.isa = a1;
  v8 = AppMatcher.getInteractionStats(intent:interactionTypes:interactionDirection:bundleIds:groupBySiriDonation:isDonatedBySiri:)(v7, v6, &v10, a2, v3, 2u);

  return v8;
}

uint64_t AppMatcher.getInteractionStats(intent:interactionTypes:interactionDirection:bundleIds:groupBySiriDonation:isDonatedBySiri:)(INIntent a1, uint64_t a2, char *a3, uint64_t a4, char a5, unsigned int a6)
{
  AppMatcher.getEntityQuery(intent:)();
  if (v7)
  {
    return v6;
  }

  if (v35)
  {
    v10 = AppMatcher.getIsGroupInteraction(intent:)(a1);
    if (v11)
    {
      OUTLINED_FUNCTION_26();
      sub_231412628(v12, v13, v14, v15, v34, v35);
    }

    else
    {
      v33 = v10;
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v24 = sub_231477B68();
      OUTLINED_FUNCTION_38(v24, qword_280C3D970);
      v25 = sub_231477B58();
      v26 = sub_2314782A8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 67109120;
        *(v27 + 4) = v33;
        _os_log_impl(&dword_2313E1000, v25, v26, "AppMatcher#getInteractionStats: isGroupInteraction: %{BOOL}d", v27, 8u);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      AppMatcher.getInteractionStats(entityQuery:interactionTypes:interactionDirection:bundleIds:groupBySiriDonation:isDonatedBySiri:isGroupInteraction:)();
      v6 = v28;
      OUTLINED_FUNCTION_26();
      sub_231412628(v29, v30, v31, v32, v34, v35);
    }

    return v6;
  }

  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v16 = sub_231477B68();
  OUTLINED_FUNCTION_38(v16, qword_280C3D970);
  v17 = sub_231477B58();
  sub_2314782A8();
  v18 = OUTLINED_FUNCTION_28_1();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_32();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_46(v20);
    OUTLINED_FUNCTION_29_0(&dword_2313E1000, v21, v22, "AppMatcher#getInteractionStats: Can not construct entity query");
    v23 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x23192F1F0](v23);
  }

  type metadata accessor for HistoryStats(0);
  return sub_231477DC8();
}

void AppMatcher.getEntityQuery(intent:)()
{
  OUTLINED_FUNCTION_64();
  v1.super.isa = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_34();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v88 - v10;
  v105 = OUTLINED_FUNCTION_40_0();
  v12 = AppMatcher.getEntities(intent:)(v1);
  if (!v13)
  {
    v14 = v12;
    if (v12)
    {
      v98 = 0;
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v15 = sub_231477B68();
      OUTLINED_FUNCTION_38(v15, qword_280C3D970);

      v16 = sub_231477B58();
      v17 = sub_2314782A8();

      v18 = os_log_type_enabled(v16, v17);
      v97 = v11;
      v99 = v3;
      v93 = v4;
      v94 = v8;
      if (v18)
      {
        OUTLINED_FUNCTION_24();
        v19 = swift_slowAlloc();
        OUTLINED_FUNCTION_23();
        v20 = swift_slowAlloc();
        *&v100 = v20;
        *v19 = 136315138;
        v21 = type metadata accessor for Entity(0);
        v22 = MEMORY[0x23192E1F0](v14, v21);
        v24 = sub_2313EB684(v22, v23, &v100);

        *(v19 + 4) = v24;
        OUTLINED_FUNCTION_57(&dword_2313E1000, v25, v26, "AppMatcher#getEntityQuery: entities extracted from intent: %s");
        __swift_destroy_boxed_opaque_existential_0(v20);
        v27 = OUTLINED_FUNCTION_8_1();
        MEMORY[0x23192F1F0](v27);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      v28 = AppMatcher.getSiriMatcherEntities(intent:)(v1);
      if (v29)
      {

        v30 = &loc_231479000;
      }

      else
      {
        v30 = &loc_231479000;
        if (v28)
        {
          *&v100 = v28;
          sub_2314135C4(v14);
        }
      }

      v41 = sub_231477B58();
      sub_2314782A8();
      v42 = OUTLINED_FUNCTION_28_1();
      if (os_log_type_enabled(v42, v43))
      {
        OUTLINED_FUNCTION_24();
        v44 = swift_slowAlloc();
        OUTLINED_FUNCTION_23();
        v45 = swift_slowAlloc();
        *&v100 = v45;
        *v44 = v30[160];
        v46 = type metadata accessor for Entity(0);

        v48 = MEMORY[0x23192E1F0](v47, v46);
        v50 = v49;

        v51 = sub_2313EB684(v48, v50, &v100);

        *(v44 + 4) = v51;
        OUTLINED_FUNCTION_57(&dword_2313E1000, v52, v53, "AppMatcher#getEntityQuery: entities queried: %s");
        __swift_destroy_boxed_opaque_existential_0(v45);
        v54 = OUTLINED_FUNCTION_8_1();
        MEMORY[0x23192F1F0](v54);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      AppMatcher.getEntityQuery(entities:)(v55, &v100);

      if (v104)
      {
        v92 = v104;
        v56 = *(&v100 + 1);
        v57 = v100;
        v98 = v101;
        v95 = v103;
        v96 = v102;
        v58 = AppMatcher.includePersonEntity(intent:)(v1);
        v59 = sub_231477B58();
        v60 = sub_2314782A8();
        v61 = OUTLINED_FUNCTION_28_1();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 67109120;
          *(v63 + 4) = v58;
          _os_log_impl(&dword_2313E1000, v59, v60, "AppMatcher#getEntityQuery: includePersonEntity: %{BOOL}d", v63, 8u);
          OUTLINED_FUNCTION_15_0();
          MEMORY[0x23192F1F0]();
        }

        if (v58)
        {
          v64 = v97;
          *v97 = 0x476567617373654DLL;
          v64[1] = 0xEC00000070756F72;
          type metadata accessor for QueryValue(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_2313E95CC(v64, v94, &unk_27DD4D680, &unk_2314795C0);
          v93 = v56;
          sub_2313E9688(v57, v56, v98, v96, v95);
          v65 = v92;

          sub_2313E8CDC();
          v91 = *(&v100 + 1);
          v94 = v100;
          v90 = v101;
          v89 = v102;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v65;
          v68 = v65;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_3_0();
            sub_2313F3244();
            v67 = v92;
            v68 = v86;
          }

          v70 = *(v68 + 16);
          v69 = *(v68 + 24);
          v88 = v70 + 1;
          if (v70 >= v69 >> 1)
          {
            OUTLINED_FUNCTION_20(v69);
            sub_2313F3244();
            v67 = v92;
            v68 = v87;
          }

          v71 = v98;
          v73 = v95;
          v72 = v96;
          v56 = v93;
          sub_231412628(v57, v93, v98, v96, v95, v67);
          sub_2313E937C(v97, &unk_27DD4D680, &unk_2314795C0);
          *(v68 + 16) = v88;
          v74 = v68 + 32 * v70;
          v75 = v91;
          *(v74 + 32) = v94;
          *(v74 + 40) = v75;
          *(v74 + 48) = v90;
          *(v74 + 56) = v89;
        }

        else
        {

          v71 = v98;
          v73 = v95;
          v72 = v96;
          v68 = v92;
        }

        v85 = v99;
        *v99 = v57;
        v85[1] = v56;
        v85[2] = v71;
        v85[3] = v72;
        v85[4] = v73;
        v85[5] = v68;
      }

      else
      {
        v76 = sub_231477B58();
        sub_2314782A8();
        v77 = OUTLINED_FUNCTION_44();
        if (os_log_type_enabled(v77, v78))
        {
          OUTLINED_FUNCTION_32();
          v79 = swift_slowAlloc();
          *v79 = 0;
          OUTLINED_FUNCTION_56();
          _os_log_impl(v80, v81, v82, v83, v79, 2u);
          OUTLINED_FUNCTION_15_0();
          MEMORY[0x23192F1F0]();
        }

        v84 = v99;
        v99[1] = 0u;
        v84[2] = 0u;
        *v84 = 0u;
      }
    }

    else
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v31 = sub_231477B68();
      OUTLINED_FUNCTION_38(v31, qword_280C3D970);
      v32 = sub_231477B58();
      sub_2314782A8();
      v33 = OUTLINED_FUNCTION_44();
      if (os_log_type_enabled(v33, v34))
      {
        OUTLINED_FUNCTION_32();
        v35 = swift_slowAlloc();
        OUTLINED_FUNCTION_46(v35);
        OUTLINED_FUNCTION_56();
        _os_log_impl(v36, v37, v38, v39, 0, 2u);
        v40 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x23192F1F0](v40);
      }

      v3[1] = 0u;
      v3[2] = 0u;
      *v3 = 0u;
    }
  }

  OUTLINED_FUNCTION_62();
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppMatcher.getIsGroupInteraction(intent:)(INIntent intent)
{
  v1 = AppMatcher.getEntities(intent:)(intent);
  if (!v3)
  {
    v4 = v1;
    if (v1)
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v5 = sub_231477B68();
      OUTLINED_FUNCTION_38(v5, qword_280C3D970);

      v6 = sub_231477B58();
      v7 = sub_2314782A8();

      if (os_log_type_enabled(v6, v7))
      {
        OUTLINED_FUNCTION_24();
        v8 = swift_slowAlloc();
        OUTLINED_FUNCTION_23();
        v9 = swift_slowAlloc();
        v27 = v9;
        *v8 = 136315138;
        v10 = type metadata accessor for Entity(0);
        v11 = MEMORY[0x23192E1F0](v4, v10);
        v13 = sub_2313EB684(v11, v12, &v27);

        *(v8 + 4) = v13;
        OUTLINED_FUNCTION_58(&dword_2313E1000, v14, v15, "AppMatcher#getIsGroupInteraction: entities extracted from intent: %s");
        __swift_destroy_boxed_opaque_existential_0(v9);
        v16 = OUTLINED_FUNCTION_8_1();
        MEMORY[0x23192F1F0](v16);
        OUTLINED_FUNCTION_15_0();
        MEMORY[0x23192F1F0]();
      }

      v17 = *(v4 + 16);

      return v17 > 1;
    }

    else
    {
      if (qword_280C3CF50 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v18 = sub_231477B68();
      OUTLINED_FUNCTION_38(v18, qword_280C3D970);
      v19 = sub_231477B58();
      sub_2314782A8();
      v20 = OUTLINED_FUNCTION_28_1();
      if (os_log_type_enabled(v20, v21))
      {
        OUTLINED_FUNCTION_32();
        v22 = swift_slowAlloc();
        OUTLINED_FUNCTION_46(v22);
        OUTLINED_FUNCTION_29_0(&dword_2313E1000, v23, v24, "AppMatcher#getIsGroupInteraction: Can not extract entities from intent");
        v25 = OUTLINED_FUNCTION_4_0();
        MEMORY[0x23192F1F0](v25);
      }

      return 0;
    }
  }

  return v2;
}

void AppMatcher.getInteractionStats(entityQuery:interactionTypes:interactionDirection:bundleIds:groupBySiriDonation:isDonatedBySiri:isGroupInteraction:)()
{
  OUTLINED_FUNCTION_64();
  v168 = v0;
  LODWORD(v163) = v1;
  v171 = v2;
  HIDWORD(v167) = v3;
  v172 = v4;
  v6 = v5;
  v176 = v7;
  v9 = v8;
  v162 = sub_231476CA8();
  OUTLINED_FUNCTION_4();
  v161 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_47_0(v13 - v12);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D568, &qword_2314795C8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47_0(&v158 - v15);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD4D680, &unk_2314795C0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47_0(&v158 - v22);
  v23 = *v9;
  v24 = *(v9 + 8);
  v26 = *(v9 + 16);
  v25 = *(v9 + 24);
  v27 = *(v9 + 32);
  v28 = *(v9 + 40);
  v170 = *v6;
  v185 = OUTLINED_FUNCTION_40_0();
  LOBYTE(v178) = 0;
  v29 = MEMORY[0x277D84F90];
  swift_bridgeObjectRetain_n();
  sub_2313E9688(v23, v24, v26, v25, v27);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_0();
    sub_23141D258();
    v29 = v144;
  }

  v31 = v29[2];
  v30 = v29[3];
  if (v31 >= v30 >> 1)
  {
    OUTLINED_FUNCTION_10(v30);
    sub_23141D258();
    v186 = v145;
  }

  else
  {
    v186 = v29;
  }

  v32 = MEMORY[0x277D84F90];
  swift_bridgeObjectRelease_n();
  v186[2] = v31 + 1;
  v33 = &v186[6 * v31];
  v33[4] = v23;
  v33[5] = v24;
  v33[6] = v26;
  v33[7] = v25;
  *(v33 + 64) = v27;
  v33[9] = v28;
  LOBYTE(v182) = v178;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4D6A0, &qword_2314795D0);
  Value = type metadata accessor for QueryValue(0);
  v35 = (*(*(Value - 8) + 80) + 32) & ~*(*(Value - 8) + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_231479580;
  *(v36 + v35) = v163 & 1;
  v163 = Value;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_0();
    sub_2313F3244();
    v32 = v146;
  }

  v38 = *(v32 + 16);
  v37 = *(v32 + 24);
  if (v38 >= v37 >> 1)
  {
    OUTLINED_FUNCTION_10(v37);
    sub_2313F3244();
    v32 = v147;
  }

  *(v32 + 16) = v38 + 1;
  v39 = v32 + 32 * v38;
  *(v39 + 32) = xmmword_231479590;
  *(v39 + 48) = 0;
  *(v39 + 56) = v36;
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_22();
  sub_2313E95CC(v40, v41, v42, v43);

  OUTLINED_FUNCTION_30();
  sub_2313E8CDC();
  v44 = v178;
  v158 = v179;
  v45 = v180;
  v46 = v181;
  v47 = v32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_0();
    sub_2313F3244();
    v47 = v148;
  }

  v49 = *(v47 + 16);
  v48 = *(v47 + 24);
  if (v49 >= v48 >> 1)
  {
    OUTLINED_FUNCTION_16_0(v48);
    sub_2313F3244();
    v47 = v149;
  }

  sub_2313E937C(v173, &unk_27DD4D680, &unk_2314795C0);
  *(v47 + 16) = v49 + 1;
  v50 = v47 + 32 * v49;
  v51 = v158;
  *(v50 + 32) = v44;
  *(v50 + 40) = v51;
  *(v50 + 48) = v45;
  *(v50 + 56) = v46;
  v52 = v177;
  OUTLINED_FUNCTION_52();
  sub_231476C88();
  sub_231476BE8();
  (*(v161 + 8))(v44, v162);
  swift_storeEnumTagMultiPayload();
  sub_231403238();
  v184 = v52;
  OUTLINED_FUNCTION_22();
  sub_2313E95CC(v53, v54, &unk_27DD4D680, &unk_2314795C0);

  OUTLINED_FUNCTION_30();
  sub_2313E8CDC();
  v55 = v178;
  v56 = v179;
  v57 = v180;
  v58 = v181;
  v59 = v47;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0();
    sub_2313F3244();
    v59 = v150;
  }

  v61 = *(v59 + 16);
  v60 = *(v59 + 24);
  v62 = v171;
  if (v61 >= v60 >> 1)
  {
    OUTLINED_FUNCTION_16_0(v60);
    sub_2313F3244();
    v59 = v151;
  }

  v63 = v186;

  sub_2313E937C(v174, &unk_27DD4D680, &unk_2314795C0);
  sub_2313E937C(v175, &qword_27DD4D568, &qword_2314795C8);
  *(v59 + 16) = v61 + 1;
  v64 = v59 + 32 * v61;
  *(v64 + 32) = v55;
  *(v64 + 40) = v56;
  *(v64 + 48) = v57;
  *(v64 + 56) = v58;
  if (v172)
  {

    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_22();
    sub_2313E95CC(v65, v66, v67, v68);

    OUTLINED_FUNCTION_30();
    sub_2313E8CDC();
    v69 = v178;
    v63 = v179;
    v70 = v180;
    v71 = v181;
    v72 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_0();
      sub_2313F3244();
      v72 = v152;
    }

    v74 = *(v72 + 16);
    v73 = *(v72 + 24);
    if (v74 >= v73 >> 1)
    {
      OUTLINED_FUNCTION_10(v73);
      sub_2313F3244();
      v72 = v153;
    }

    sub_2313E937C(v169, &unk_27DD4D680, &unk_2314795C0);
    *(v72 + 16) = v74 + 1;
    v75 = v72 + 32 * v74;
    *(v75 + 32) = v69;
    *(v75 + 40) = v63;
    *(v75 + 48) = v70;
    *(v75 + 56) = v71;
    OUTLINED_FUNCTION_31_0();
    v59 = v72;
  }

  v76 = v176;
  if (qword_280C3CF50 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v77 = sub_231477B68();
  __swift_project_value_buffer(v77, qword_280C3D970);

  v78 = sub_231477B58();
  v79 = sub_2314782A8();

  v80 = &loc_231479000;
  if (os_log_type_enabled(v78, v79))
  {
    OUTLINED_FUNCTION_24();
    v81 = swift_slowAlloc();
    OUTLINED_FUNCTION_23();
    v63 = swift_slowAlloc();
    v178 = v63;
    *v81 = 136315138;
    v82 = MEMORY[0x23192E1F0](v76, MEMORY[0x277D837D0]);
    v84 = sub_2313EB684(v82, v83, &v178);

    *(v81 + 4) = v84;
    v80 = &loc_231479000;
    OUTLINED_FUNCTION_56();
    _os_log_impl(v85, v86, v87, v88, v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v89 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x23192F1F0](v89);
    OUTLINED_FUNCTION_15_0();
    MEMORY[0x23192F1F0]();
  }

  v90 = v170;
  if (v170 != 3)
  {
    v91 = sub_231477B58();
    v92 = sub_2314782A8();
    if (os_log_type_enabled(v91, v92))
    {
      OUTLINED_FUNCTION_24();
      v93 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v63 = swift_slowAlloc();
      v178 = v63;
      *v93 = 136315138;
      v177 = v90;
      v94 = sub_231477EB8();
      v80 = sub_2313EB684(v94, v95, &v178);
      v90 = v170;

      *(v93 + 4) = v80;
      OUTLINED_FUNCTION_61_0(&dword_2313E1000, v96, v97, "AppMatcher#getInteractionStats query param interactionDirection passed in: %s");
      __swift_destroy_boxed_opaque_existential_0(v63);
      v98 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x23192F1F0](v98);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    *v164 = v90;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_22();
    sub_2313E95CC(v99, v100, v101, v102);

    OUTLINED_FUNCTION_30();
    sub_2313E8CDC();
    v103 = v59;
    if ((OUTLINED_FUNCTION_63() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_0();
      sub_2313F3244();
      v103 = v154;
    }

    v105 = *(v103 + 16);
    v104 = *(v103 + 24);
    if (v105 >= v104 >> 1)
    {
      OUTLINED_FUNCTION_10(v104);
      sub_2313F3244();
      v103 = v155;
    }

    sub_2313E937C(v164, &unk_27DD4D680, &unk_2314795C0);
    *(v103 + 16) = v105 + 1;
    v106 = v103 + 32 * v105;
    *(v106 + 32) = v92;
    *(v106 + 40) = v63;
    *(v106 + 48) = v90;
    *(v106 + 56) = v80;
    OUTLINED_FUNCTION_31_0();
    v59 = v103;
    v62 = v171;
    v80 = &loc_231479000;
  }

  if (v62 != 2)
  {
    v107 = sub_231477B58();
    v108 = sub_2314782A8();
    if (os_log_type_enabled(v107, v108))
    {
      OUTLINED_FUNCTION_24();
      v109 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v63 = swift_slowAlloc();
      v178 = v63;
      *v109 = 136315138;
      if (v62)
      {
        v110 = 1702195828;
      }

      else
      {
        v110 = 0x65736C6166;
      }

      if (v62)
      {
        v90 = 0xE400000000000000;
      }

      else
      {
        v90 = 0xE500000000000000;
      }

      v80 = sub_2313EB684(v110, v90, &v178);

      *(v109 + 4) = v80;
      OUTLINED_FUNCTION_61_0(&dword_2313E1000, v111, v112, "AppMatcher#getInteractionStats query param isDonatedBySiri passed in: %s");
      __swift_destroy_boxed_opaque_existential_0(v63);
      v113 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x23192F1F0](v113);
      OUTLINED_FUNCTION_15_0();
      MEMORY[0x23192F1F0]();
    }

    *v166 = v62 & 1;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_22();
    sub_2313E95CC(v114, v115, v116, v117);

    OUTLINED_FUNCTION_30();
    sub_2313E8CDC();
    v118 = v59;
    if ((OUTLINED_FUNCTION_63() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_0();
      sub_2313F3244();
      v118 = v156;
    }

    v120 = *(v118 + 16);
    v119 = *(v118 + 24);
    if (v120 >= v119 >> 1)
    {
      OUTLINED_FUNCTION_10(v119);
      sub_2313F3244();
      v118 = v157;
    }

    sub_2313E937C(v166, &unk_27DD4D680, &unk_2314795C0);
    *(v118 + 16) = v120 + 1;
    v121 = v118 + 32 * v120;
    *(v121 + 32) = v108;
    *(v121 + 40) = v63;
    *(v121 + 48) = v90;
    *(v121 + 56) = v80;
    OUTLINED_FUNCTION_31_0();
    v59 = v118;
  }

  v182 = v186;
  v183 = v59;
  OUTLINED_FUNCTION_6_1(v184);
  v122 = OUTLINED_FUNCTION_51();
  v123 = v168;
  InteractionQuery.fetchStats(_:groupBy:useDistinct:enableFastQuery:)(v122, v124, v125, v126, v127, v128, v129, v130, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169);
  if (v123)
  {
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_7_0();

    v131 = sub_231477B58();
    sub_2314782A8();
    v132 = OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v132, v133))
    {
      OUTLINED_FUNCTION_24();
      v134 = swift_slowAlloc();
      OUTLINED_FUNCTION_23();
      v135 = swift_slowAlloc();
      v178 = v135;
      *v134 = 136315138;
      type metadata accessor for HistoryStats(0);

      v136 = sub_231477DB8();
      v138 = v137;

      v139 = sub_2313EB684(v136, v138, &v178);

      *(v134 + 4) = v139;
      OUTLINED_FUNCTION_59_0(&dword_2313E1000, v140, v141, "AppMatcher#getInteractionStats stats: %s");
      __swift_destroy_boxed_opaque_existential_0(v135);
      v142 = OUTLINED_FUNCTION_8_1();
      MEMORY[0x23192F1F0](v142);
      v143 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x23192F1F0](v143);
    }
  }

  OUTLINED_FUNCTION_62();
}