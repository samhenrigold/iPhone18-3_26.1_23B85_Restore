unint64_t sub_1DD4A7B08()
{
  result = qword_1ECCDD738;
  if (!qword_1ECCDD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD738);
  }

  return result;
}

unint64_t sub_1DD4A7B60()
{
  result = qword_1ECCDD740;
  if (!qword_1ECCDD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD740);
  }

  return result;
}

unint64_t sub_1DD4A7BB8()
{
  result = qword_1ECCDD748;
  if (!qword_1ECCDD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD748);
  }

  return result;
}

unint64_t sub_1DD4A7C10()
{
  result = qword_1ECCDD750;
  if (!qword_1ECCDD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD750);
  }

  return result;
}

unint64_t sub_1DD4A7C68()
{
  result = qword_1ECCDD758;
  if (!qword_1ECCDD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD758);
  }

  return result;
}

uint64_t DateTimeSlotResolutionTask.init(query:context:spec:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *(a3 + 1);
  v7 = a3[16];
  v8 = a3[17];
  v9 = a3[18];
  *(a4 + 40) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = v4;
  *(a4 + 57) = v5;
  *(a4 + 64) = v6;
  *(a4 + 72) = v7;
  *(a4 + 73) = v8;
  *(a4 + 74) = v9;
  *(a4 + 24) = &type metadata for DateTimeResolver;
  *(a4 + 32) = &off_1F58B6D58;
  return result;
}

uint64_t DateTimeSlotResolutionTask.run(withAlreadyResolvedSlots:)@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 57);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 73);
  v10 = *(v1 + 74);
  LOBYTE(v33) = *(v1 + 56);
  BYTE1(v33) = v6;
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v37 = v10;

  DateTimeResolver.makeRecommendation(value:context:spec:)(v4, v5, &v33, &v38);

  if (!v2)
  {
    if (qword_1ECCDB0C0 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD63F9F8();
    __swift_project_value_buffer(v12, qword_1ECD0DDC0);
    v13 = OUTLINED_FUNCTION_20_2();
    sub_1DD4A59E8(v13, v14);
    v15 = sub_1DD63F9D8();
    v16 = sub_1DD640368();
    v17 = OUTLINED_FUNCTION_20_2();
    sub_1DD4A5A0C(v17, v18);
    if (os_log_type_enabled(v15, v16))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315138;
      v21 = OUTLINED_FUNCTION_20_2();
      v22 = sub_1DD4A81F8(v21);
      v24 = sub_1DD39565C(v22, v23, &v33);
      v39 = v16;
      v25 = a1;
      v26 = v24;

      *(v19 + 4) = v26;
      a1 = v25;
      _os_log_impl(&dword_1DD38D000, v15, v39, "DateTime recommendations: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12B3DA0](v20, -1, -1);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
    }

    v27 = OUTLINED_FUNCTION_20_2();
    sub_1DD4725F4(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_20_2();
    result = sub_1DD4A5A0C(v30, v31);
    v32 = v34;
    *a1 = v33;
    *(a1 + 8) = v32;
  }

  return result;
}

uint64_t sub_1DD4A7F9C()
{
  v1 = type metadata accessor for Contact(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v23 - v8);
  sub_1DD4279B8(v0, &v23 - v8);
  v10 = 1701736302;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD3C95D4(v9, v6);
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v23 = v15;
      v24 = v14;
      sub_1DD415D68(v6, v3);
      v13 = sub_1DD63FE38();
      goto LABEL_4;
    case 2u:
      v16 = *v9;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v23 = v18 + 2;
      v24 = v17;
      v19 = MEMORY[0x1E12B2430](v16, v1);
      v21 = v20;

      MEMORY[0x1E12B2260](v19, v21);

      OUTLINED_FUNCTION_65();
      v10 = v23;
      break;
    case 3u:
      return v10;
    default:
      sub_1DD3C95D4(v9, v6);
      OUTLINED_FUNCTION_1_54();
      v23 = v11;
      v24 = v12;
      sub_1DD415D68(v6, v3);
      v13 = sub_1DD63FE38();
LABEL_4:
      MEMORY[0x1E12B2260](v13);

      OUTLINED_FUNCTION_65();
      v10 = v23;
      sub_1DD415B40(v6);
      break;
  }

  return v10;
}

uint64_t sub_1DD4A81F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_2_48();
  switch(v3)
  {
    case 1:
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v9 = v5;
      goto LABEL_4;
    case 2:
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v9 = v7 + 2;
      v8 = type metadata accessor for DateTime();
      v6 = MEMORY[0x1E12B2430](a1, v8);
      goto LABEL_6;
    case 3:
      return result;
    default:
      OUTLINED_FUNCTION_1_54();
      v9 = v4;
LABEL_4:
      type metadata accessor for DateTime();

      v6 = sub_1DD63FE38();
LABEL_6:
      MEMORY[0x1E12B2260](v6);

      OUTLINED_FUNCTION_65();
      return v9;
  }
}

uint64_t sub_1DD4A8310()
{
  memcpy(__dst, v0, 0x2C9uLL);
  sub_1DD472DB0(__dst);
  result = OUTLINED_FUNCTION_2_48();
  switch(v2)
  {
    case 1:
      nullsub_1();
      memcpy(v20, v0, 0x2C9uLL);
      nullsub_1();
      v8 = v7;
      v20[90] = 0;
      v20[91] = 0xE000000000000000;
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v18 = v9;
      v19 = v10;
      memcpy(v17, v8, sizeof(v17));
      OUTLINED_FUNCTION_6_39();
      nullsub_1();
      goto LABEL_4;
    case 2:
      nullsub_1();
      OUTLINED_FUNCTION_6_39();
      nullsub_1();
      v13 = *v12;
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v20[0] = v14 + 2;
      v15 = MEMORY[0x1E12B2430](v13, &type metadata for Location);
      MEMORY[0x1E12B2260](v15);

      OUTLINED_FUNCTION_65();
      result = v20[0];
      break;
    case 3:
      return result;
    default:
      nullsub_1();
      memcpy(v20, v0, 0x2C9uLL);
      nullsub_1();
      OUTLINED_FUNCTION_1_54();
      v18 = v3;
      v19 = v4;
      memcpy(v17, v5, sizeof(v17));
      OUTLINED_FUNCTION_6_39();
      nullsub_1();
LABEL_4:
      sub_1DD472DF8(v6, &v16);
      v11 = sub_1DD63FE38();
      MEMORY[0x1E12B2260](v11);

      OUTLINED_FUNCTION_65();
      result = v18;
      break;
  }

  return result;
}

uint64_t sub_1DD4A8508()
{
  memcpy(__dst, v0, 0x81uLL);
  sub_1DD472D58(__dst);
  result = OUTLINED_FUNCTION_2_48();
  switch(v2)
  {
    case 1:
      nullsub_1();
      memcpy(v60, v0, 0x81uLL);
      nullsub_1();
      v16 = v15;
      *v61 = 0;
      v62 = 0xE000000000000000;
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v58 = v18;
      v59 = v17;
      v19 = memcpy(v57, v16, sizeof(v57));
      OUTLINED_FUNCTION_5_47(v19, v20, v21, v22, v23, v24, v25, v26, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v57[10], v57[11], v57[12], v57[13], v57[14], v57[15], v58, v59, *v60, *&v60[8], *&v60[16], *&v60[24], *&v60[32], *&v60[40], *&v60[48], *&v60[56], *&v60[64], *&v60[72], *&v60[80], *&v60[88], *&v60[96], *&v60[104], *&v60[112], *&v60[120], *&v60[128]);
      nullsub_1();
      goto LABEL_4;
    case 2:
      nullsub_1();
      OUTLINED_FUNCTION_5_47(v28, v29, v30, v31, v32, v33, v34, v35, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v57[10], v57[11], v57[12], v57[13], v57[14], v57[15], v58, v59, *v60, *&v60[8], *&v60[16], *&v60[24], *&v60[32], *&v60[40], *&v60[48], *&v60[56], *&v60[64], *&v60[72], *&v60[80], *&v60[88], *&v60[96], *&v60[104], *&v60[112], *&v60[120], *&v60[128]);
      nullsub_1();
      v37 = *v36;
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      *v60 = v38 + 2;
      v39 = MEMORY[0x1E12B2430](v37, &type metadata for SportsItem);
      MEMORY[0x1E12B2260](v39);

      OUTLINED_FUNCTION_65();
      result = *v60;
      break;
    case 3:
      return result;
    default:
      nullsub_1();
      memcpy(v60, v0, 0x81uLL);
      nullsub_1();
      OUTLINED_FUNCTION_1_54();
      v58 = v3;
      v59 = v4;
      v6 = memcpy(v57, v5, sizeof(v57));
      OUTLINED_FUNCTION_5_47(v6, v7, v8, v9, v10, v11, v12, v13, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v57[10], v57[11], v57[12], v57[13], v57[14], v57[15], v58, v59, *v60, *&v60[8], *&v60[16], *&v60[24], *&v60[32], *&v60[40], *&v60[48], *&v60[56], *&v60[64], *&v60[72], *&v60[80], *&v60[88], *&v60[96], *&v60[104], *&v60[112], *&v60[120], *&v60[128]);
      nullsub_1();
LABEL_4:
      sub_1DD400BFC(v14, &v41);
      v27 = sub_1DD63FE38();
      MEMORY[0x1E12B2260](v27);

      OUTLINED_FUNCTION_65();
      result = v58;
      break;
  }

  return result;
}

uint64_t sub_1DD4A86EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 75))
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

uint64_t sub_1DD4A872C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD4A879C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1DD4A87DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DD4A8848(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DD6407B8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1DD42BC6C(0, v2 & ~(v2 >> 63), 0);
    v3 = v37;
    v34 = sub_1DD55AD40(v1);
    v35 = v4;
    v36 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (!__OFADD__(v6++, 1))
      {
        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_1DD55AE74(v34, v35, v36, v1);
        v13 = *(v12 + 51);

        v37 = v3;
        v15 = *(v3 + 16);
        v14 = *(v3 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1DD42BC6C(v14 > 1, v15 + 1, 1);
          v3 = v37;
        }

        *(v3 + 16) = v15 + 1;
        *(v3 + v15 + 32) = v13;
        if (v32)
        {
          if (!v10)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v16 = v3;
          if (sub_1DD640788())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v21 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD468, &qword_1DD650488);
          v22 = sub_1DD640298();
          sub_1DD640818();
          v22(v33, 0);
        }

        else
        {
          if (v10)
          {
            goto LABEL_37;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v16 = v3;
          v1 = v11;
          v17 = 1 << *(v11 + 32);
          if (v9 >= v17)
          {
            goto LABEL_32;
          }

          v18 = v9 >> 6;
          v19 = *(v30 + 8 * (v9 >> 6));
          if (((v19 >> v9) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_34;
          }

          v20 = v19 & (-2 << (v9 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v23 = v18 << 6;
            v24 = v18 + 1;
            v25 = (v29 + 8 * v18);
            while (v24 < (v17 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_1DD3AA558(v9, v8, 0);
                v17 = __clz(__rbit64(v26)) + v23;
                goto LABEL_27;
              }
            }

            sub_1DD3AA558(v9, v8, 0);
          }

LABEL_27:
          v28 = *(v11 + 36);
          v34 = v17;
          v35 = v28;
          v36 = 0;
          v21 = v31;
        }

        v3 = v16;
        if (v6 == v21)
        {
          sub_1DD3AA558(v34, v35, v36);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_1DD4A8B3C(uint64_t a1)
{
  v2 = v1;
  sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v50 = v5;
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v53 = v8;
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECCDB0C0 != -1)
  {
    swift_once();
  }

  v11 = sub_1DD63F9F8();
  v12 = __swift_project_value_buffer(v11, qword_1ECD0DDC0);

  v55 = v12;
  v13 = sub_1DD63F9D8();
  v14 = sub_1DD640368();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v57[0] = v16;
    *v15 = 136315138;
    v17 = sub_1DD48A1FC();
    v19 = sub_1DD39565C(v17, v18, v57);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1DD38D000, v13, v14, "received input datetime: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E12B3DA0](v16, -1, -1);
    MEMORY[0x1E12B3DA0](v15, -1, -1);
  }

  sub_1DD3C2388(v2 + 32, v57);
  __swift_mutable_project_boxed_opaque_existential_1(v57, v61);
  v56[3] = &type metadata for DefinedTimeStore;
  v56[4] = &off_1F58B7818;
  type metadata accessor for DateTimeConstraintGenerator();
  v20 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v56, &type metadata for DefinedTimeStore);
  *(v20 + 40) = &type metadata for DefinedTimeStore;
  *(v20 + 48) = &off_1F58B7818;
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v21 = *(v2 + 1);
  v22 = *(v2 + 8);
  v23 = *(v2 + 16);
  v24 = *(v2 + 17);
  v25 = *(v2 + 18);
  LOBYTE(v57[0]) = *v2;
  BYTE1(v57[0]) = v21;
  v57[1] = v22;
  v58 = v23;
  v59 = v24;
  v60 = v25;
  v26 = *(v2 + 24);
  LOBYTE(v56[0]) = 38;

  v52 = v20;
  v27 = sub_1DD4901FC(a1, v57, v26, 0, v56);

  v29 = v53;
  v28 = v54;
  (*(v53 + 16))(v10, v26 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v54);
  LOBYTE(v57[0]) = *(v26 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere);
  sub_1DD4AE2C0(v10, v57, v22);
  v31 = v30;
  (*(v29 + 8))(v10, v28);
  if ((v31 & 1) == 0)
  {
    v32 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    swift_beginAccess();
    v33 = v49;
    v34 = v50;
    v35 = v51;
    (*(v50 + 16))(v49, v26 + v32, v51);
    sub_1DD63D1C8();
    swift_beginAccess();
    (*(v34 + 40))(v26 + v32, v33, v35);
    swift_endAccess();
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v27;

  Logger.asyncBackground(_:)(sub_1DD4A96CC, v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD760, &unk_1DD651760);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1DD6504B0;
  *(v37 + 56) = &type metadata for MeridiemConstraintSolver;
  *(v37 + 64) = &off_1F58BB520;
  *(v37 + 96) = &type metadata for HolidayConstraintSolver;
  *(v37 + 104) = &off_1F58B8990;
  v38 = swift_allocObject();
  *(v37 + 72) = v38;
  sub_1DD3C2388(v2 + 72, v38 + 16);
  *(v37 + 136) = &type metadata for CalendarComponentConstraintSolver;
  *(v37 + 144) = &off_1F58B0DA8;
  *(v37 + 176) = &type metadata for RecurrenceConstraintSolver;
  *(v37 + 184) = &off_1F58BE898;
  *(v37 + 216) = &type metadata for DurationConstraintSolver;
  *(v37 + 224) = &off_1F58B7B18;
  *(v37 + 256) = &type metadata for TemporalityConstraintSolver;
  *(v37 + 264) = &off_1F58C3670;
  *(v37 + 296) = &type metadata for RecurrenceConstraintSolver;
  *(v37 + 304) = &off_1F58BE898;
  type metadata accessor for DateTimeConstraintSolver();
  swift_allocObject();
  v39 = sub_1DD493148(v27, v26, v37);

  v40 = v62;
  v41 = sub_1DD493160();
  if (!v40)
  {
    v42 = v41;
    v43 = sub_1DD4937AC(1) & 1;
    sub_1DD493938(0);
    sub_1DD493938(1);
    MEMORY[0x1EEE9AC00](v44);
    *(&v48 - 8) = v2;
    *(&v48 - 7) = v39;
    *(&v48 - 48) = 0;
    *(&v48 - 5) = 1;
    *(&v48 - 32) = v45;
    *(&v48 - 31) = v46;
    *(&v48 - 24) = 0;
    *(&v48 - 2) = 1;
    *(&v48 - 8) = v43;
    v2 = sub_1DD605308(sub_1DD4A96D4, (&v48 - 10), v42);
  }

  return v2;
}

unint64_t sub_1DD4A9190(uint64_t a1)
{
  sub_1DD6408D8();

  type metadata accessor for DateTimeConstraint();
  sub_1DD49C1EC();
  v1 = sub_1DD640278();
  MEMORY[0x1E12B2260](v1);

  return 0xD000000000000017;
}

void sub_1DD4A9228(void *a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9)
{
  v10 = v9;
  v88 = a7;
  v89 = a4;
  HIDWORD(v87) = a6;
  v99 = a3;
  v100 = a5;
  v14 = sub_1DD63D168();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a2[17];

  if (v19 == 1)
  {
    sub_1DD4949F8(0, v20, v21, v22, v23, v24, v25, v26, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
    sub_1DD4A97A8(v27);
    v86 = v10;
    v28 = sub_1DD49C318();

    if (v28)
    {
      v98[0] = 36;
      v29 = *(a2 + 3);
      (*(v15 + 16))(v17, v29 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v14);
      LOBYTE(v96) = *(v29 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere);
      v30 = sub_1DD4AE18C(v98, v17, &v96, *(a2 + 1));
      (*(v15 + 8))(v17, v14);
      if (v30)
      {
        type metadata accessor for DateTime();
        v18 = sub_1DD489E08(v18, v30);
      }
    }
  }

  v31 = *a2;
  LODWORD(v86) = v100 & 0x100;
  if (!v31 && (v100 & 0x100) == 0)
  {
    v32 = v18[2];
    v33 = v18[3];
    v98[0] = 1;
    v34 = v18[5];
    LOBYTE(v96) = 4;
    type metadata accessor for DateTime();
    swift_allocObject();
    v35 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(v32, v33, v98, v34, &v96, 0);

    v18 = v35;
  }

  sub_1DD4949F8(0, v20, v21, v22, v23, v24, v25, v26, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  sub_1DD4A97A8(v36);
  sub_1DD493BC8(0, v37, v38, v39, v40, v41, v42, v43, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  v45 = v44;
  sub_1DD4949F8(1, v46, v47, v48, v49, v50, v51, v52, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  v54 = sub_1DD4A97A8(v53);
  sub_1DD493BC8(1, v55, v56, v57, v58, v59, v60, v61, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  v63 = v62;
  v64 = sub_1DD49C318();

  if (v64)
  {
    v65 = v18[3];
    if (v65)
    {
      *(v65 + 72) = 0;
    }
  }

  sub_1DD5A84D8(v45, &v96);

  v66 = v96;
  swift_beginAccess();
  v18[8] = v66;
  if (sub_1DD49C318())
  {
  }

  else
  {
    sub_1DD4A8848(v54);
    v68 = v67;

    v69 = *(v68 + 16);
    v70 = (v68 + 32);
    while (v69)
    {
      v71 = *v70++;
      --v69;
      if (v71 == 38)
      {

        goto LABEL_22;
      }
    }
  }

  v72 = v18[7];
  if (v72)
  {
    v73 = *(v72 + 32);
    if (v73)
    {
      v74 = *(v73 + 24);
      if (v74)
      {
        *(v74 + 72) = 0;
      }
    }
  }

LABEL_22:
  v75 = v18[7];
  if (v75 && (v76 = *(v75 + 32)) != 0)
  {

    sub_1DD5A84D8(v63, &v96);

    v77 = v96;
    swift_beginAccess();
    *(v76 + 64) = v77;
  }

  else
  {
  }

  v78 = v100;
  v79 = sub_1DD493734();
  if (v79)
  {
    v80 = v18[3];
    if (v80)
    {
      swift_beginAccess();
      *(v80 + 73) = 1;
    }

    v81 = v18[7];
    if (v81)
    {
      v82 = *(v81 + 32);
      if (v82)
      {
        v83 = *(v82 + 24);
        if (v83)
        {
          swift_beginAccess();
          *(v83 + 73) = 1;
        }
      }
    }
  }

  *a8 = v18;
  *(a8 + 8) = BYTE4(v87) & 1;
  v84 = v99 & 1;
  *(a8 + 16) = v88;
  v85 = v86 >> 8;
  *(a8 + 24) = a9 & 1;
  *(a8 + 32) = v84;
  *(a8 + 40) = v89;
  *(a8 + 48) = v78 & 1;
  *(a8 + 49) = v85;
  *(a8 + 56) = 0;
  *(a8 + 64) = 1;
  *(a8 + 72) = v79;
}

void sub_1DD4A96D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 49))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_1DD4A9228(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), v3 | *(v2 + 48), *(v2 + 56), *(v2 + 64), a2, *(v2 + 72));
}

unint64_t *sub_1DD4A9730(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DD4A9ACC(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

unint64_t *sub_1DD4A9914(uint64_t a1)
{
  v1 = a1;
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  v4 = (8 * v3);
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_17;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = (v19 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v3, v4);
    OUTLINED_FUNCTION_0_71();
    while (v9)
    {
      OUTLINED_FUNCTION_3_42();
LABEL_10:
      if (*(*(*(v1 + 48) + 8 * v10) + 53) == 1)
      {
        OUTLINED_FUNCTION_1_55();
        v14 = __OFADD__(v13, 1);
        v5 = v13 + 1;
        if (v14)
        {
          __break(1u);
LABEL_14:
          sub_1DD51607C(v4, v3, v5, v1);
          return v15;
        }
      }
    }

    v11 = v7;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_14;
      }

      ++v11;
      if (*(v6 + 8 * v12))
      {
        OUTLINED_FUNCTION_2_49();
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v18 = swift_slowAlloc();
  v16 = sub_1DD4A9730(v18, v3, v1);

  MEMORY[0x1E12B3DA0](v18, -1, -1);
  return v16;
}

void sub_1DD4A9ACC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  OUTLINED_FUNCTION_0_71();
  while (v10)
  {
    OUTLINED_FUNCTION_3_42();
LABEL_9:
    if (*(*(*(a3 + 48) + 8 * v11) + 53) == 1)
    {
      OUTLINED_FUNCTION_1_55();
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_13:

        sub_1DD51607C(a1, a2, v6, a3);
        return;
      }
    }
  }

  v12 = v8;
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      goto LABEL_13;
    }

    ++v12;
    if (*(v7 + 8 * v13))
    {
      OUTLINED_FUNCTION_2_49();
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1DD4A9BA0(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 1);
  v7 = a2[16];
  v8 = a2[17];
  v9 = a2[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD778, &qword_1DD6517C8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643BB0;
  v11 = type metadata accessor for ConvergenceStrategyResolverRule();
  v12 = OUTLINED_FUNCTION_0_72(v11);
  *(v10 + 56) = v2;
  *(v10 + 64) = &off_1F58B5710;
  *(v10 + 32) = v12;
  v13 = type metadata accessor for OperatingHoursConvergenceResolverRule();
  v14 = OUTLINED_FUNCTION_0_72(v13);
  *(v10 + 96) = v2;
  *(v10 + 104) = &off_1F58BCAF0;
  *(v10 + 72) = v14;
  v15 = type metadata accessor for SortingResolverRule();
  v16 = OUTLINED_FUNCTION_0_72(v15);
  *(v10 + 136) = v2;
  *(v10 + 144) = &off_1F58C0808;
  *(v10 + 112) = v16;
  ResolverRule = type metadata accessor for PickFirstResolverRule();
  v18 = OUTLINED_FUNCTION_0_72(ResolverRule);
  *(v10 + 176) = v2;
  *(v10 + 184) = &off_1F58BD2B8;
  *(v10 + 152) = v18;
  type metadata accessor for DateTimeSuggestionResolver();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 17) = v5;
  *(v19 + 24) = v6;
  *(v19 + 32) = v7;
  *(v19 + 33) = v8;
  *(v19 + 34) = v9;
  *(v19 + 40) = a1;
  *(v19 + 48) = v10;

  return v19;
}

uint64_t sub_1DD4A9CDC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1DD63D078();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1;
  v10 = qword_1ECCDB0C0;

  if (v10 != -1)
  {
LABEL_10:
    swift_once();
  }

  v11 = sub_1DD63F9F8();
  __swift_project_value_buffer(v11, qword_1ECD0DDC0);

  v12 = sub_1DD63F9D8();
  v13 = sub_1DD640368();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    (*(v7 + 16))(v9, *(v4 + 40) + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date, v6);
    sub_1DD4AA3B4();
    v17 = sub_1DD640CB8();
    v18 = v7;
    v20 = v19;
    (*(v18 + 8))(v9, v6);
    v21 = sub_1DD39565C(v17, v20, &v28);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1DD38D000, v12, v13, "current time is %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E12B3DA0](v16, -1, -1);
    v22 = v15;
    v3 = v27;
    MEMORY[0x1E12B3DA0](v22, -1, -1);
  }

  v6 = 0;
  v7 = *(v4 + 48);
  v23 = *(v7 + 16);
  v24 = v7 + 32;
  v9 = &v28;
  while (v23 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v28 = v6;
    sub_1DD3C2388(v24, v29);
    sub_1DD4A9FBC(v6, v29, &v30, v4);
    sub_1DD4AA34C(&v28);
    v24 += 40;
    ++v6;
  }

  swift_beginAccess();
  return v30;
}

void sub_1DD4A9FBC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  swift_beginAccess();
  v9 = *a3;
  v10 = *(a4 + 17);
  v11 = *(a4 + 24);
  v12 = *(a4 + 32);
  v13 = *(a4 + 33);
  v14 = *(a4 + 34);
  LOBYTE(v35[0]) = *(a4 + 16);
  BYTE1(v35[0]) = v10;
  v35[1] = v11;
  v36 = v12;
  v37 = v13;
  v38 = v14;
  v15 = *(a4 + 40);
  v16 = *(v8 + 8);

  v17 = v16(v9, v35, v15, v7, v8);

  swift_beginAccess();
  *a3 = v17;

  if (qword_1ECCDB0C0 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD63F9F8();
  __swift_project_value_buffer(v18, qword_1ECD0DDC0);
  sub_1DD3C2388(a2, v35);
  v19 = sub_1DD63F9D8();
  v20 = sub_1DD640368();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136315394;
    sub_1DD3C2388(v35, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD770, &unk_1DD6517B8);
    v23 = sub_1DD63FE38();
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1(v35);
    v26 = sub_1DD39565C(v23, v25, &v34);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    swift_beginAccess();
    v27 = *a3;

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
    v29 = MEMORY[0x1E12B2430](v27, v28);
    v31 = v30;

    v32 = sub_1DD39565C(v29, v31, &v34);

    *(v21 + 14) = v32;
    _os_log_impl(&dword_1DD38D000, v19, v20, "Results after applying rule %s: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v22, -1, -1);
    MEMORY[0x1E12B3DA0](v21, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v35);
  }
}

uint64_t sub_1DD4AA2C4()
{

  return v0;
}

uint64_t sub_1DD4AA2F4()
{
  sub_1DD4AA2C4();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4AA34C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD768, &qword_1DD6517B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD4AA3B4()
{
  result = qword_1EE1663F8;
  if (!qword_1EE1663F8)
  {
    sub_1DD63D078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1663F8);
  }

  return result;
}

uint64_t TerminalElement.DateTimeValue.toDateTime()()
{
  v91 = sub_1DD63DFE8();
  OUTLINED_FUNCTION_0();
  v88 = v0;
  MEMORY[0x1EEE9AC00](v1);
  v87 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD780, &qword_1DD6517F0);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD788, &qword_1DD6517F8);
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v84 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v84 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  OUTLINED_FUNCTION_3(v16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v84 - v18;
  v19 = sub_1DD63E0A8();
  OUTLINED_FUNCTION_0();
  v89 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD790, &qword_1DD651800);
  OUTLINED_FUNCTION_3(v24);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v84 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD798, &qword_1DD651808);
  v29 = OUTLINED_FUNCTION_3(v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v84 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v84 - v36;
  sub_1DD63DF58();
  v94 = sub_1DD4AAD7C(v37, 1);
  sub_1DD417838(v37, &qword_1ECCDD798, &qword_1DD651808);
  sub_1DD63DF68();
  v38 = sub_1DD4AB0F4(v27);
  sub_1DD417838(v27, &qword_1ECCDD790, &qword_1DD651800);
  sub_1DD63DF38();
  sub_1DD4AC924(v34, v31, &qword_1ECCDD798, &qword_1DD651808);
  if (__swift_getEnumTagSinglePayload(v31, 1, v19) == 1)
  {
    sub_1DD417838(v31, &qword_1ECCDD798, &qword_1DD651808);
  }

  else
  {
    v39 = v89;
    (*(v89 + 32))(v23, v31, v19);
    if (sub_1DD480C68())
    {
      v40 = sub_1DD480384();
      (*(v39 + 8))(v23, v19);
      sub_1DD417838(v34, &qword_1ECCDD798, &qword_1DD651808);
      v41 = v93;
      v42 = v94;
      goto LABEL_7;
    }

    (*(v39 + 8))(v23, v19);
  }

  v41 = v93;
  v42 = v94;
  sub_1DD417838(v34, &qword_1ECCDD798, &qword_1DD651808);
  v40 = 0;
LABEL_7:
  sub_1DD63DF48();
  v43 = sub_1DD4AB0F4(v27);
  sub_1DD417838(v27, &qword_1ECCDD790, &qword_1DD651800);
  v94 = sub_1DD4AB2B8(v42, v38);
  v93 = sub_1DD4AB2B8(v40, v43);
  v44 = v92;
  if (v42 | v38)
  {
    goto LABEL_20;
  }

  sub_1DD63DF78();
  v45 = sub_1DD63DF28();
  v46 = OUTLINED_FUNCTION_1_56();
  if (__swift_getEnumTagSinglePayload(v46, v47, v45) == 1)
  {
    v48 = &qword_1ECCDD788;
    v49 = &qword_1DD6517F8;
    v50 = v44;
  }

  else
  {
    v51 = v86;
    sub_1DD63DF08();
    v52 = v51;
    OUTLINED_FUNCTION_72();
    (*(v53 + 8))(v44, v45);
    v54 = sub_1DD63E118();
    if (__swift_getEnumTagSinglePayload(v52, 1, v54) != 1)
    {
      sub_1DD63E1B8();
      v61 = v85;
      v62 = OUTLINED_FUNCTION_1_56();
      __swift_storeEnumTagSinglePayload(v62, v63, 1, v64);
      v65 = OUTLINED_FUNCTION_1_56();
      sub_1DD547E68(v65, v66, v67);
      sub_1DD417838(v61, &qword_1ECCDD2B0, &qword_1DD64F430);
      OUTLINED_FUNCTION_72();
      (*(v68 + 8))(v52, v54);
      if (v98[1] != 38)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    v48 = &qword_1ECCDD2A0;
    v49 = &qword_1DD64F420;
    v50 = v52;
  }

  sub_1DD417838(v50, v48, v49);
LABEL_13:
  sub_1DD63DF78();
  if (__swift_getEnumTagSinglePayload(v41, 1, v45) == 1)
  {
    sub_1DD417838(v41, &qword_1ECCDD788, &qword_1DD6517F8);
  }

  else
  {
    v55 = TerminalElement.Recurrence.toRecurrence()();
    v56 = v41;
    v57 = *(*(v45 - 8) + 8);
    v57(v56, v45);
    if (v55)
    {
      v58 = *(v55 + 24);

      if (v58)
      {
        v96 = 1;
        v59 = v84;
        sub_1DD63DF78();
        if (__swift_getEnumTagSinglePayload(v59, 1, v45) == 1)
        {
          sub_1DD417838(v59, &qword_1ECCDD788, &qword_1DD6517F8);
          v60 = 0;
        }

        else
        {
          v81 = TerminalElement.Recurrence.toRecurrence()();
          v82 = v59;
          v60 = v81;
          v57(v82, v45);
        }

        v95 = 4;
        type metadata accessor for DateTime.DateTimeRange();
        swift_allocObject();
        v83 = DateTime.DateTimeRange.init(withInterval:)(v58);
        type metadata accessor for DateTime();
        swift_allocObject();
        v79 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(0, 0, &v96, v60, &v95, v83);

        goto LABEL_31;
      }
    }
  }

LABEL_20:
  v98[0] = 1;
  v69 = sub_1DD4AB358();
  v70 = v90;
  sub_1DD63DF88();
  v71 = OUTLINED_FUNCTION_1_56();
  v72 = v91;
  if (__swift_getEnumTagSinglePayload(v71, v73, v91) == 1)
  {
    sub_1DD417838(v70, &qword_1ECCDD780, &qword_1DD6517F0);
    v74 = 4;
  }

  else
  {
    v75 = v87;
    v76 = v88;
    (*(v88 + 16))(v87, v70, v72);
    v77 = (*(v76 + 88))(v75, v72);
    if (v77 == *MEMORY[0x1E69D1848])
    {
      v74 = 0;
    }

    else if (v77 == *MEMORY[0x1E69D1858])
    {
      v74 = 1;
    }

    else if (v77 == *MEMORY[0x1E69D1850])
    {
      v74 = 2;
    }

    else
    {
      (*(v76 + 8))(v75, v72);
      v74 = 4;
    }

    (*(v76 + 8))(v70, v72);
  }

  v97 = v74;
  v78 = sub_1DD4AB6F4(v94, v93);
  type metadata accessor for DateTime();
  swift_allocObject();
  v79 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(v42, v38, v98, v69, &v97, v78);

LABEL_31:

  return v79;
}

uint64_t sub_1DD4AAD7C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD788, &qword_1DD6517F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD798, &qword_1DD651808);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_1DD63E0A8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD4AC924(a1, v12, &qword_1ECCDD798, &qword_1DD651808);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1DD417838(v12, &qword_1ECCDD798, &qword_1DD651808);
    if ((a2 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  (*(v14 + 32))(v16, v12, v13);
  if (!sub_1DD480C68())
  {
    (*(v14 + 8))(v16, v13);
    if ((a2 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    sub_1DD63DF78();
    v18 = sub_1DD63DF28();
    if (__swift_getEnumTagSinglePayload(v6, 1, v18) == 1)
    {
      v19 = &qword_1ECCDD788;
      v20 = &qword_1DD6517F8;
      v21 = v6;
    }

    else
    {
      sub_1DD63DF08();
      (*(*(v18 - 8) + 8))(v6, v18);
      v22 = sub_1DD63E118();
      if (__swift_getEnumTagSinglePayload(v9, 1, v22) != 1)
      {
        v17 = sub_1DD5487FC();
        (*(*(v22 - 8) + 8))(v9, v22);
        return v17;
      }

      v19 = &qword_1ECCDD2A0;
      v20 = &qword_1DD64F420;
      v21 = v9;
    }

    sub_1DD417838(v21, v19, v20);
    return 0;
  }

  v17 = sub_1DD480384();
  (*(v14 + 8))(v16, v13);
  return v17;
}

uint64_t sub_1DD4AB0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD790, &qword_1DD651800);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_1DD63E108();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD4AC924(a1, v4, &qword_1ECCDD790, &qword_1DD651800);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1DD417838(v4, &qword_1ECCDD790, &qword_1DD651800);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  if (!TerminalElement.Time.canConvertToTime()())
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  v9 = TerminalElement.Time.toTime()();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_1DD4AB2B8(uint64_t a1, uint64_t a2)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  v7 = 1;
  v6 = 4;
  type metadata accessor for DateTime();
  swift_allocObject();
  v2 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(a1, a2, &v7, 0, &v6, 0);

  return v2;
}

uint64_t sub_1DD4AB6F4(uint64_t a1, uint64_t a2)
{
  v134 = a1;
  v135 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD788, &qword_1DD6517F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v128 = &v121 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD7A0, &qword_1DD651810);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v133 = &v121 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD7A8, &qword_1DD651818);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v132 = &v121 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD298, &qword_1DD64F418);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v124 = &v121 - v10;
  v11 = sub_1DD63E0A8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v136 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v122 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v121 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v123 = &v121 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A8, &qword_1DD64F428);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v129 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v121 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD790, &qword_1DD651800);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v130 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v121 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD798, &qword_1DD651808);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v137 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v121 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v121 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v121 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v131 = &v121 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v127 = &v121 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v121 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v121 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v141 = &v121 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v121 - v53;
  v140 = v2;
  sub_1DD63DF58();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v11);
  v139 = v54;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD417838(v37, &qword_1ECCDD798, &qword_1DD651808);
    v56 = sub_1DD63E1B8();
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v56);
  }

  else
  {
    sub_1DD63E098();
    (*(v12 + 8))(v37, v11);
  }

  v57 = v12;
  sub_1DD63DF68();
  v58 = sub_1DD63E108();
  if (__swift_getEnumTagSinglePayload(v29, 1, v58) == 1)
  {
    sub_1DD417838(v29, &qword_1ECCDD790, &qword_1DD651800);
    v59 = sub_1DD63E1B8();
    __swift_storeEnumTagSinglePayload(v141, 1, 1, v59);
  }

  else
  {
    sub_1DD63E0F8();
    (*(*(v58 - 8) + 8))(v29, v58);
  }

  sub_1DD4AC924(v139, v49, &qword_1ECCDD2B0, &qword_1DD64F430);
  v60 = sub_1DD63E1B8();
  if (__swift_getEnumTagSinglePayload(v49, 1, v60) == 1)
  {
    sub_1DD417838(v49, &qword_1ECCDD2B0, &qword_1DD64F430);
    v138 = 0;
  }

  else
  {
    v138 = sub_1DD567F90(v61);
    (*(*(v60 - 8) + 8))(v49, v60);
  }

  sub_1DD4AC924(v141, v46, &qword_1ECCDD2B0, &qword_1DD64F430);
  if (__swift_getEnumTagSinglePayload(v46, 1, v60) == 1)
  {
    sub_1DD417838(v46, &qword_1ECCDD2B0, &qword_1DD64F430);
    v126 = 0;
  }

  else
  {
    v126 = sub_1DD567F90(v62);
    (*(*(v60 - 8) + 8))(v46, v60);
  }

  sub_1DD63DF58();
  if (__swift_getEnumTagSinglePayload(v34, 1, v11) == 1)
  {
    v63 = &qword_1ECCDD798;
    v64 = &qword_1DD651808;
    v65 = v34;
LABEL_17:
    sub_1DD417838(v65, v63, v64);
    v67 = v133;
    v68 = v134;
    v69 = v136;
    v152[0] = 38;
    v70 = 1;
    goto LABEL_22;
  }

  sub_1DD480B8C(v24);
  (*(v12 + 8))(v34, v11);
  v66 = sub_1DD63DFD8();
  if (__swift_getEnumTagSinglePayload(v24, 1, v66) == 1)
  {
    v63 = &qword_1ECCDD2A8;
    v64 = &qword_1DD64F428;
    v65 = v24;
    goto LABEL_17;
  }

  v71 = v123;
  sub_1DD63DFC8();
  v72 = v71;
  v73 = sub_1DD63E118();
  v74 = __swift_getEnumTagSinglePayload(v72, 1, v73);
  v68 = v134;
  if (v74 == 1)
  {
    sub_1DD417838(v72, &qword_1ECCDD2A0, &qword_1DD64F420);
    v152[0] = 38;
  }

  else
  {
    sub_1DD547E68(v139, 0, v152);
    (*(*(v73 - 8) + 8))(v72, v73);
  }

  (*(*(v66 - 8) + 8))(v24, v66);
  v70 = v152[0] == 38;
  v67 = v133;
  v69 = v136;
LABEL_22:
  if ((v138 & v70 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1DD63DF58();
  v75 = v137;
  if (__swift_getEnumTagSinglePayload(v137, 1, v11) == 1)
  {
    sub_1DD417838(v75, &qword_1ECCDD798, &qword_1DD651808);
    goto LABEL_34;
  }

  (*(v57 + 32))(v69, v75, v11);
  sub_1DD63E058();
  if ((v76 & 1) == 0)
  {
    v152[0] = 11;
  }

  sub_1DD63E068();
  if ((v77 & 1) == 0)
  {
    v152[0] = 9;
  }

  v78 = v124;
  v79 = v136;
  sub_1DD63E088();
  v80 = sub_1DD63E198();
  if (__swift_getEnumTagSinglePayload(v78, 1, v80) != 1)
  {
    (*(v57 + 8))(v79, v11);
    sub_1DD417838(v78, &qword_1ECCDD298, &qword_1DD64F418);
    goto LABEL_33;
  }

  sub_1DD417838(v78, &qword_1ECCDD298, &qword_1DD64F418);
  sub_1DD63E028();
  v82 = v81;
  (*(v57 + 8))(v79, v11);
  if ((v82 & 1) == 0)
  {
LABEL_33:
    v152[0] = 8;
  }

LABEL_34:
  v83 = v130;
  sub_1DD63DF68();
  if (__swift_getEnumTagSinglePayload(v83, 1, v58) == 1)
  {
    sub_1DD417838(v83, &qword_1ECCDD790, &qword_1DD651800);
    v84 = 38;
    v85 = v135;
LABEL_38:
    v89 = v139;
    v90 = v132;
    goto LABEL_43;
  }

  v86 = v129;
  sub_1DD63E0C8();
  (*(*(v58 - 8) + 8))(v83, v58);
  v87 = sub_1DD63DFD8();
  v88 = __swift_getEnumTagSinglePayload(v86, 1, v87);
  v85 = v135;
  if (v88 == 1)
  {
    sub_1DD417838(v86, &qword_1ECCDD2A8, &qword_1DD64F428);
    v84 = 38;
    goto LABEL_38;
  }

  v91 = v125;
  sub_1DD63DFC8();
  v92 = sub_1DD63E118();
  v93 = __swift_getEnumTagSinglePayload(v91, 1, v92);
  v89 = v139;
  if (v93 == 1)
  {
    sub_1DD417838(v91, &qword_1ECCDD2A0, &qword_1DD64F420);
    v151 = 38;
  }

  else
  {
    sub_1DD547E68(v141, 0, &v151);
    (*(*(v92 - 8) + 8))(v91, v92);
  }

  v90 = v132;
  (*(*(v87 - 8) + 8))(v129, v87);
  v84 = v151;
LABEL_43:
  sub_1DD63DFA8();
  v94 = sub_1DD63E188();
  if (__swift_getEnumTagSinglePayload(v90, 1, v94) == 1)
  {
    sub_1DD417838(v90, &qword_1ECCDD7A8, &qword_1DD651818);
    v95 = 0;
  }

  else
  {
    v96 = TerminalElement.Interval.toInterval()();
    v97 = v90;
    v95 = v96;
    (*(*(v94 - 8) + 8))(v97, v94);
  }

  sub_1DD63DF98();
  v98 = sub_1DD63E148();
  if (__swift_getEnumTagSinglePayload(v67, 1, v98) == 1)
  {
    sub_1DD417838(v67, &qword_1ECCDD7A0, &qword_1DD651810);
    v99 = 0;
  }

  else
  {
    v99 = TerminalElement.Duration.toInterval()();
    (*(*(v98 - 8) + 8))(v67, v98);
  }

  v100 = v131;
  if (!(v138 & 1 | (v152[0] != 38)))
  {
    if ((v126 & 1) == 0)
    {
LABEL_55:
      v101 = 20;
      goto LABEL_56;
    }

    sub_1DD4AC924(v141, v131, &qword_1ECCDD2B0, &qword_1DD64F430);
    if (__swift_getEnumTagSinglePayload(v100, 1, v60) != 1)
    {
      TerminalElement.Qualifier.toQualifier()(&v143);
      (*(*(v60 - 8) + 8))(v100, v60);
      v101 = v143;
      goto LABEL_56;
    }

LABEL_54:
    sub_1DD417838(v100, &qword_1ECCDD2B0, &qword_1DD64F430);
    goto LABEL_55;
  }

  v100 = v127;
  sub_1DD4AC924(v89, v127, &qword_1ECCDD2B0, &qword_1DD64F430);
  if (__swift_getEnumTagSinglePayload(v100, 1, v60) == 1)
  {
    goto LABEL_54;
  }

  TerminalElement.Qualifier.toQualifier()(&v142);
  (*(*(v60 - 8) + 8))(v100, v60);
  v101 = v142;
LABEL_56:
  v102 = v152[0];
  if (v152[0] != 38 || v84 != 38 || v95 || v101 != 20 || v99)
  {
    sub_1DD417838(v141, &qword_1ECCDD2B0, &qword_1DD64F430);
    sub_1DD417838(v89, &qword_1ECCDD2B0, &qword_1DD64F430);
    if (v85)
    {
    }

    else
    {
      v68 = 0;
    }

    if (v102 == 38)
    {
      v108 = v84;
    }

    else
    {
      v108 = v102;
    }

    v145 = v108;
    v144 = v101;
    type metadata accessor for DateTime.DateTimeRange();
    swift_allocObject();
    v109 = &v145;
    v110 = &v144;
    v111 = v68;
    v112 = v85;
    v113 = v99;
    v114 = v95;
    goto LABEL_73;
  }

  v103 = v128;
  sub_1DD63DF78();
  v104 = sub_1DD63DF28();
  if (__swift_getEnumTagSinglePayload(v103, 1, v104) != 1)
  {
    if (v68 && *(v68 + 16))
    {
      sub_1DD417838(v141, &qword_1ECCDD2B0, &qword_1DD64F430);
      v105 = v89;
      v106 = &qword_1ECCDD2B0;
      v107 = &qword_1DD64F430;
    }

    else
    {
      v116 = v122;
      sub_1DD63DF08();
      v117 = sub_1DD63E118();
      if (__swift_getEnumTagSinglePayload(v116, 1, v117) != 1)
      {
        v118 = v121;
        __swift_storeEnumTagSinglePayload(v121, 1, 1, v60);
        sub_1DD547E68(v118, 1, &v150);
        sub_1DD417838(v118, &qword_1ECCDD2B0, &qword_1DD64F430);
        sub_1DD417838(v141, &qword_1ECCDD2B0, &qword_1DD64F430);
        sub_1DD417838(v89, &qword_1ECCDD2B0, &qword_1DD64F430);
        (*(*(v117 - 8) + 8))(v116, v117);
        goto LABEL_79;
      }

      sub_1DD417838(v141, &qword_1ECCDD2B0, &qword_1DD64F430);
      sub_1DD417838(v89, &qword_1ECCDD2B0, &qword_1DD64F430);
      v106 = &qword_1ECCDD2A0;
      v107 = &qword_1DD64F420;
      v105 = v116;
    }

    sub_1DD417838(v105, v106, v107);
    v150 = 38;
LABEL_79:
    (*(*(v104 - 8) + 8))(v103, v104);
    v119 = v150;
    if (v150 == 38)
    {
      goto LABEL_80;
    }

    if (v85)
    {
    }

    else
    {
      v68 = 0;
    }

    v147 = v119;
    v146 = 20;
    type metadata accessor for DateTime.DateTimeRange();
    swift_allocObject();
    v109 = &v147;
    v110 = &v146;
    v111 = v68;
    v112 = v85;
    v113 = 0;
    v114 = 0;
LABEL_73:
    v115 = DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, v111, v112, v113, v114, v109, v110);
    goto LABEL_82;
  }

  sub_1DD417838(v141, &qword_1ECCDD2B0, &qword_1DD64F430);
  sub_1DD417838(v89, &qword_1ECCDD2B0, &qword_1DD64F430);
  sub_1DD417838(v103, &qword_1ECCDD788, &qword_1DD6517F8);
LABEL_80:
  if (!v85)
  {
    return 0;
  }

  v149 = 38;
  v148 = 20;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v115 = DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, v68, v85, 0, 0, &v149, &v148);

LABEL_82:

  return v115;
}

uint64_t sub_1DD4AC924(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_72();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD4AC988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = sub_1DD63CBB8();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63D1E8();
  result = sub_1DD63CA78();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = sub_1DD63CA28();
    v11 = v10;
    v12 = sub_1DD63CAB8();
    v14 = v13;
    v15 = sub_1DD63CA98();
    v17 = v16;
    v34 = 7;
    v33 = 12;
    v32 = 7;
    v31 = 7;
    type metadata accessor for DateTime.Date();
    swift_allocObject();
    v18 = DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(v9, v11 & 1, v12, v14 & 1, v15, v17 & 1, &v34, 0, &v33, 0, 1, &v32, 0, 1, &v31, 0);
    if (v8 <= 12)
    {
      v19 = v8;
    }

    else
    {
      v19 = v8 - 12;
    }

    v20 = sub_1DD63CAE8();
    v22 = v21;
    v23 = sub_1DD63CB08();
    v25 = v24;
    v30 = v8 > 11;
    v29 = 3;
    type metadata accessor for DateTime.Time();
    swift_allocObject();
    v26 = DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(v19, 0, v20, v22 & 1, v23, v25 & 1, &v30, &v29, 0, 1);
    type metadata accessor for DateTime();
    swift_allocObject();
    v27 = DateTime.init(withDate:time:)(v18, v26);
    (*(v3 + 8))(v5, v28);
    return v27;
  }

  return result;
}

uint64_t sub_1DD4ACBFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD644F40;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(4, 0, 0, v1, 6, 0, 0, v2);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_1_12();
  *(inited + 88) = OUTLINED_FUNCTION_3_6(0, 0, 0, v3, 7, v4, v5, v6);
  *(inited + 96) = xmmword_1DD643600;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_1_15();
  v7 = OUTLINED_FUNCTION_0_73();
  *(inited + 120) = OUTLINED_FUNCTION_3_6(v7, v8, v9, v10, v11, v12, v13, v14);
  *(inited + 128) = xmmword_1DD643640;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_1_12();
  *(inited + 152) = OUTLINED_FUNCTION_3_6(4, 0, 0, v15, 5, v16, v17, v18);
  *(inited + 160) = xmmword_1DD651820;
  *(inited + 176) = 0;
  OUTLINED_FUNCTION_1_15();
  v19 = OUTLINED_FUNCTION_0_73();
  *(inited + 184) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v19, v20, v21, v22, v23, 0, 0, v24);
  *(inited + 192) = xmmword_1DD643660;
  *(inited + 208) = 0;
  OUTLINED_FUNCTION_1_15();
  v25 = OUTLINED_FUNCTION_0_73();
  *(inited + 216) = OUTLINED_FUNCTION_3_6(v25, v26, v27, v28, v29, v30, v31, v32);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD4ACD84@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD63E198();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69D1A10])
  {
    *a1 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69D1A20])
  {
    v10 = 1;
  }

  else if (result == *MEMORY[0x1E69D1A38])
  {
    v10 = 2;
  }

  else if (result == *MEMORY[0x1E69D1A30])
  {
    v10 = 3;
  }

  else if (result == *MEMORY[0x1E69D1A08])
  {
    v10 = 4;
  }

  else if (result == *MEMORY[0x1E69D1A28])
  {
    v10 = 5;
  }

  else
  {
    if (result != *MEMORY[0x1E69D1A18])
    {
      *a1 = 7;
      return (*(v5 + 8))(v8, v4);
    }

    v10 = 6;
  }

  *a1 = v10;
  return result;
}

unint64_t DateTime.Date.DayOfWeek.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD4ACF78()
{
  result = qword_1ECCDD7B0;
  if (!qword_1ECCDD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7B0);
  }

  return result;
}

uint64_t sub_1DD4ACFD4@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.DayOfWeek.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s9DayOfWeekOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4AD188()
{
  result = qword_1ECCDD7B8;
  if (!qword_1ECCDD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7B8);
  }

  return result;
}

uint64_t sub_1DD4AD1DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v24 = 0;
  v23 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(5, 0, 0, &v24, 7, 0, 0, &v23);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  v1 = OUTLINED_FUNCTION_1_57();
  *(inited + 88) = OUTLINED_FUNCTION_0_74(v1, v2, v3, v4, v5, v6, v7, v8, v18, *v20, *&v20[4], v23, v24);
  *(inited + 96) = xmmword_1DD643600;
  *(inited + 112) = 0;
  v9 = OUTLINED_FUNCTION_1_57();
  *(inited + 120) = OUTLINED_FUNCTION_0_74(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21, v22, v23, v24);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

unint64_t DateTime.Date.DefinedDate.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD4AD304()
{
  result = qword_1ECCDD7C0;
  if (!qword_1ECCDD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7C0);
  }

  return result;
}

uint64_t sub_1DD4AD360@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.DefinedDate.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s11DefinedDateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4AD514()
{
  result = qword_1ECCDD7C8;
  if (!qword_1ECCDD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7C8);
  }

  return result;
}

unint64_t sub_1DD4AD584()
{
  result = qword_1ECCDD7D0;
  if (!qword_1ECCDD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7D0);
  }

  return result;
}

_BYTE *_s15DefinedDateTimeOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD4AD740()
{
  result = qword_1ECCDD7D8;
  if (!qword_1ECCDD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7D8);
  }

  return result;
}

uint64_t sub_1DD4AD794(unsigned __int8 *a1)
{
  v2 = *a1;
  switch(v2)
  {
    case 16:
      v3 = 0;
      break;
    case 17:
      v3 = 0x3FF0000000000000;
      break;
    case 19:
      v3 = 0xBFF0000000000000;
      break;
    default:
      return 0;
  }

  result = 0;
  switch(*v1)
  {
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x16:
    case 0x17:
      v18 = 1;
      v17 = v2;
      v5 = type metadata accessor for DateTime.Interval();
      OUTLINED_FUNCTION_0_75(v5);
      v6 = &v18;
      v7 = &v17;
      goto LABEL_15;
    case 1:
    case 0xB:
    case 0x11:
    case 0x12:
    case 0x14:
      v24 = 12;
      v23 = v2;
      v8 = type metadata accessor for DateTime.Interval();
      OUTLINED_FUNCTION_0_75(v8);
      v6 = &v24;
      v7 = &v23;
      goto LABEL_15;
    case 9:
      v22 = 7;
      v21 = v2;
      v12 = type metadata accessor for DateTime.Interval();
      OUTLINED_FUNCTION_0_75(v12);
      v6 = &v22;
      v7 = &v21;
      goto LABEL_15;
    case 0xA:
    case 0x13:
      v20 = 11;
      v19 = v2;
      v9 = type metadata accessor for DateTime.Interval();
      OUTLINED_FUNCTION_0_75(v9);
      v6 = &v20;
      v7 = &v19;
      goto LABEL_15;
    case 0x1F:
      v16 = 4;
      v15 = v2;
      v11 = type metadata accessor for DateTime.Interval();
      OUTLINED_FUNCTION_0_75(v11);
      v6 = &v16;
      v7 = &v15;
      goto LABEL_15;
    case 0x20:
      v14 = 6;
      v13 = v2;
      v10 = type metadata accessor for DateTime.Interval();
      OUTLINED_FUNCTION_0_75(v10);
      v6 = &v14;
      v7 = &v13;
LABEL_15:
      result = DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(v3, 0, v6, v7);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t DateTime.DateTimeRange.DefinedDateTimeRange.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 20;
  switch(result)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v2 = 1;
      goto LABEL_34;
    case 2:
      v2 = 2;
      goto LABEL_34;
    case 3:
      v2 = 3;
      goto LABEL_34;
    case 4:
      v2 = 4;
      goto LABEL_34;
    case 5:
      v2 = 5;
      goto LABEL_34;
    case 6:
      v2 = 6;
      goto LABEL_34;
    case 7:
      v2 = 7;
      goto LABEL_34;
    case 8:
      v2 = 8;
      goto LABEL_34;
    case 9:
      v2 = 9;
      goto LABEL_34;
    case 10:
      v2 = 10;
      goto LABEL_34;
    case 11:
      v2 = 11;
      goto LABEL_34;
    case 12:
      v2 = 12;
      goto LABEL_34;
    case 13:
      v2 = 13;
      goto LABEL_34;
    case 14:
      v2 = 14;
      goto LABEL_34;
    case 15:
      v2 = 15;
      goto LABEL_34;
    case 16:
      v2 = 16;
      goto LABEL_34;
    case 17:
      v2 = 17;
      goto LABEL_34;
    case 18:
      v2 = 18;
      goto LABEL_34;
    case 19:
      v2 = 19;
LABEL_34:
      v3 = v2;
      break;
    case 20:
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    case 28:
      v3 = 28;
      break;
    case 29:
      v3 = 29;
      break;
    case 30:
      v3 = 30;
      break;
    case 31:
      v3 = 31;
      break;
    case 32:
      v3 = 32;
      break;
    case 33:
      v3 = 33;
      break;
    case 34:
      v3 = 34;
      break;
    case 35:
      v3 = 35;
      break;
    case 36:
      v3 = 36;
      break;
    case 37:
      v3 = 37;
      break;
    default:
      v3 = 38;
      break;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1DD4ADA88()
{
  result = qword_1EE1604E0;
  if (!qword_1EE1604E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1604E0);
  }

  return result;
}

uint64_t sub_1DD4ADAE4@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.DateTimeRange.DefinedDateTimeRange.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s20DefinedDateTimeRangeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20DefinedDateTimeRangeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4ADD20()
{
  result = qword_1ECCDD7E0;
  if (!qword_1ECCDD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7E0);
  }

  return result;
}

BOOL sub_1DD4ADD74(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        sub_1DD400F60(*a1, v3, 1);
        v8 = OUTLINED_FUNCTION_11_0();
        sub_1DD400F60(v8, v9, 1);
        return ((v5 ^ v2) & 1) == 0;
      }

      goto LABEL_11;
    }

    if (v7 != 2 || (v6 | v5) != 0)
    {
LABEL_11:
      v12 = OUTLINED_FUNCTION_11_0();
      sub_1DD400F4C(v12, v13, v7);
      sub_1DD400F60(v2, v3, v4);
      v14 = OUTLINED_FUNCTION_11_0();
      sub_1DD400F60(v14, v15, v7);
      return 0;
    }

    sub_1DD400F60(*a1, v3, 2);
    v16 = 0;
    v17 = 0;
    v18 = 2;
  }

  else
  {
    if (*(a2 + 16))
    {

      goto LABEL_11;
    }

    v19 = *a1;
    if (v2 != v5 || v3 != v6)
    {
      v21 = sub_1DD640CD8();
      v22 = OUTLINED_FUNCTION_11_0();
      sub_1DD400F4C(v22, v23, 0);
      v24 = OUTLINED_FUNCTION_0_76();
      sub_1DD400F4C(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_0_76();
      sub_1DD400F60(v27, v28, v29);
      v30 = OUTLINED_FUNCTION_11_0();
      sub_1DD400F60(v30, v31, 0);
      return v21 & 1;
    }

    sub_1DD400F4C(v19, v3, 0);
    v32 = OUTLINED_FUNCTION_0_76();
    sub_1DD400F4C(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_0_76();
    sub_1DD400F60(v35, v36, v37);
    v16 = OUTLINED_FUNCTION_0_76();
  }

  sub_1DD400F60(v16, v17, v18);
  return 1;
}

uint64_t sub_1DD4ADEDC(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1E12B3140](1);
      v3 = v2 & 1;
    }

    else
    {
      v3 = 2;
    }

    return MEMORY[0x1E12B3140](v3);
  }

  else
  {
    MEMORY[0x1E12B3140](0);

    return sub_1DD63FD28();
  }
}

uint64_t sub_1DD4ADF74()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1DD640E28();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1E12B3140](1);
      v3 = v1 & 1;
    }

    else
    {
      v3 = 2;
    }

    MEMORY[0x1E12B3140](v3);
  }

  else
  {
    MEMORY[0x1E12B3140](0);
    sub_1DD63FD28();
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD4AE014(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1DD640E28();
  sub_1DD4ADEDC(v4);
  return sub_1DD640E78();
}

uint64_t get_enum_tag_for_layout_string_13SiriInference25DefinedDateTimeRangeStoreV3KeyO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1DD4AE084(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD4AE0C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD4AE108(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1DD4AE134()
{
  result = qword_1ECCDD7E8;
  if (!qword_1ECCDD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7E8);
  }

  return result;
}

uint64_t sub_1DD4AE18C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a3;
  if (!*(a4 + 16) || (v6 = sub_1DD400FC0(), (v7 & 1) == 0))
  {
    if (qword_1ECCDB078 != -1)
    {
      OUTLINED_FUNCTION_2_50(&qword_1ECCDB078);
    }

    v9 = off_1ECCDD7F0;
    if (!*(off_1ECCDD7F0 + 2))
    {
      return 0;
    }

    v10 = sub_1DD400FC0();
    if ((v11 & 1) == 0)
    {
      return 0;
    }

    v12 = *(v9[7] + 8 * v10);

    v13 = sub_1DD63D128();
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v13 = 22616;
      v15 = 0xE200000000000000;
    }

    sub_1DD59B8FC(v13, v15, 0, v12);
    v8 = v16;

    if (v8)
    {
LABEL_18:

      return v8;
    }

    if (v4 == 2)
    {
      v17 = 0;
    }

    else
    {
      sub_1DD59B8FC(v4 & 1, 0, 1, v12);
      if (v17)
      {
LABEL_17:
        v8 = v17;
        goto LABEL_18;
      }
    }

    sub_1DD59B8FC(v17, 0, 2, v12);
    goto LABEL_17;
  }

  v8 = *(*(a4 + 56) + 8 * v6);

  return v8;
}

uint64_t sub_1DD4AE2C0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v11 = 10;
  v10 = v3;
  result = sub_1DD4AE18C(&v11, a1, &v10, a3);
  if (result)
  {
    v5 = *(result + 16);
    if (v5 && (v6 = *(v5 + 89), v6 != 7))
    {
    }

    else
    {
      v7 = *(result + 56);

      if (!v7)
      {
        return 0;
      }

      v8 = *(v7 + 24);

      if (!v8)
      {
        return 0;
      }

      v9 = *(v8 + 16);

      if (!v9)
      {
        return 0;
      }

      v6 = *(v9 + 89);

      if (v6 == 7)
      {
        return 0;
      }
    }

    result = 1;
    switch(v6)
    {
      case 1:
        result = 3;
        break;
      case 2:
        result = 4;
        break;
      case 3:
        result = 5;
        break;
      case 4:
        result = 6;
        break;
      case 5:
        result = 7;
        break;
      case 6:
        return result;
      default:
        result = 2;
        break;
    }
  }

  return result;
}

void *sub_1DD4AE410()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD800, &qword_1DD651E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD651E00;
  *(inited + 32) = 2;
  *(inited + 40) = sub_1DD3D4B78();
  *(inited + 48) = 0;
  *(inited + 56) = sub_1DD3B2F0C();
  *(inited + 64) = 3;
  *(inited + 72) = sub_1DD3D4C84();
  *(inited + 80) = 4;
  *(inited + 88) = sub_1DD4ACBFC();
  *(inited + 96) = 5;
  *(inited + 104) = sub_1DD4AD1DC();
  *(inited + 112) = 6;
  *(inited + 120) = sub_1DD4B0C3C();
  *(inited + 128) = 7;
  *(inited + 136) = sub_1DD4B7CFC();
  *(inited + 144) = 12;
  *(inited + 152) = sub_1DD4BFC18();
  *(inited + 160) = 13;
  *(inited + 168) = sub_1DD4C19E0();
  *(inited + 176) = 14;
  *(inited + 184) = sub_1DD5127A0();
  *(inited + 192) = 15;
  *(inited + 200) = sub_1DD530AB0();
  *(inited + 208) = 16;
  *(inited + 216) = sub_1DD532A9C();
  *(inited + 224) = 22;
  *(inited + 232) = sub_1DD4C2260();
  *(inited + 240) = 23;
  *(inited + 248) = sub_1DD3CE328();
  *(inited + 256) = 24;
  *(inited + 264) = sub_1DD5FD81C();
  *(inited + 272) = 19;
  *(inited + 280) = sub_1DD637604();
  *(inited + 288) = 10;
  *(inited + 296) = sub_1DD4BF74C();
  *(inited + 304) = 21;
  *(inited + 312) = sub_1DD637BCC();
  *(inited + 320) = 36;
  *(inited + 328) = sub_1DD544A14();
  *(inited + 336) = 37;
  *(inited + 344) = sub_1DD637B04();
  *(inited + 352) = 17;
  *(inited + 360) = sub_1DD5CF004();
  *(inited + 368) = 18;
  *(inited + 376) = sub_1DD5F1704();
  *(inited + 384) = 1;
  *(inited + 392) = sub_1DD3CA7D8();
  *(inited + 400) = 20;
  *(inited + 408) = sub_1DD6377E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD808, &qword_1DD651E48);
  sub_1DD41B2C8();
  result = sub_1DD63FC88();
  off_1ECCDD7F0 = result;
  return result;
}

uint64_t DefinedDateTimeRangeStore.isDateInDefinedDateTimeRange(_:dateTimeRange:calendar:locale:hemisphere:overrides:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = *a2;
  v25 = 2;
  v8 = sub_1DD4AE18C(&v26, a4, &v25, a6);
  if (!v8)
  {
    return 0;
  }

  if (!*(v8 + 56))
  {
    if (qword_1ECCDB0C0 != -1)
    {
      OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1ECD0DDC0);
    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DD38D000, v21, v22, "got nil dateTimeRangeCollection, returning false for isDateInDefinedDateTimeRange", v23, 2u);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    return 0;
  }

  v9 = sub_1DD49D49C(a1, a3);

  if (qword_1ECCDB0C0 != -1)
  {
    OUTLINED_FUNCTION_5_0(&qword_1ECCDB0C0);
  }

  v10 = sub_1DD63F9F8();
  __swift_project_value_buffer(v10, qword_1ECD0DDC0);

  v11 = sub_1DD63F9D8();
  v12 = sub_1DD640368();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
    sub_1DD4AEFEC();
    v15 = sub_1DD640278();
    v17 = sub_1DD39565C(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1DD38D000, v11, v12, "got dateTimeRangeCollection: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12B3DA0](v14, -1, -1);
    MEMORY[0x1E12B3DA0](v13, -1, -1);
  }

  v18 = sub_1DD4A01A0(a1, v9);

  return v18 & 1;
}

uint64_t DefinedDateTimeRangeStore.requiresWitchingHourDisambiguation(forDateTime:referenceDate:calendar:locale:overrides:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = sub_1DD63D218();
  OUTLINED_FUNCTION_0();
  v50 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v49 = v13 - v12;
  v54 = sub_1DD63D228();
  OUTLINED_FUNCTION_0();
  v48 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  sub_1DD63D1D8();
  OUTLINED_FUNCTION_0();
  v52 = v19;
  v53 = v20;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v46 - v25;
  v27 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v47 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v32 = v31 - v30;
  v56 = 37;
  v51 = a2;
  if ((DefinedDateTimeRangeStore.isDateInDefinedDateTimeRange(_:dateTimeRange:calendar:locale:hemisphere:overrides:)(a2, &v56, a3, a4, v33, a5) & 1) != 0 && (v34 = *(a1 + 16)) != 0 && v34[24] == 1 && v34[40] == 1 && v34[89] == 7 && v34[57] == 1)
  {
    v35 = *(a1 + 24);
    if (v35)
    {
      if ((*(v35 + 24) & 1) == 0)
      {
        v36 = *(v35 + 57);
        if (v36 != 2)
        {
          v37 = *(v35 + 16);
          if ((v36 & (v37 < 12)) != 0)
          {
            v38 = v37 + 12;
          }

          else
          {
            v38 = *(v35 + 16);
          }

          v39 = *(v35 + 32);
          if (*(v35 + 40))
          {
            v39 = 0;
          }

          v46[0] = v39;
          v46[1] = v38;
          (*(v53 + 104))(v23, *MEMORY[0x1E69698D0], v52);
          v40 = v48;
          (*(v48 + 104))(v18, *MEMORY[0x1E69699C8], v54);
          v41 = v49;
          v42 = v50;
          (*(v50 + 104))(v49, *MEMORY[0x1E6969998], v55);
          sub_1DD63D238();
          (*(v42 + 8))(v41, v55);
          (*(v40 + 8))(v18, v54);
          (*(v53 + 8))(v23, v52);
          if (__swift_getEnumTagSinglePayload(v26, 1, v27) != 1)
          {
            v45 = v47;
            (*(v47 + 32))(v32, v26, v27);
            v43 = sub_1DD63CFB8();
            (*(v45 + 8))(v32, v27);
            return v43 & 1;
          }

          sub_1DD4AF0C8(v26);
        }
      }
    }

    v43 = 1;
  }

  else
  {
    v43 = 0;
  }

  return v43 & 1;
}

void DefinedDateTimeRangeStore.getDefinedDateTimeRangesFor(_:calendar:locale:ranges:hemisphere:overrides:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v10 = *a5;
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    if (qword_1ECCDB078 != -1)
    {
      OUTLINED_FUNCTION_2_50(&qword_1ECCDB078);
    }

    sub_1DD418DBC();
    v11 = a1;
  }

  MEMORY[0x1EEE9AC00](a1);
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v13 = v10;
  v14 = a6;

  sub_1DD4AEE54(sub_1DD4AF130, v12, v11);
}

void sub_1DD4AEE54(uint64_t (*result)(char *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = result;
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
  v12 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
LABEL_8:
    while (1)
    {
      v21 = *(*(v4 + 48) + (__clz(__rbit64(v10)) | (v6 << 6)));
      v14 = v5(&v21);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        v20 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD42BCB0(0, *(v12 + 16) + 1, 1);
          v12 = v22;
        }

        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1DD42BCB0(v16 > 1, v17 + 1, 1);
          v12 = v22;
        }

        *(v12 + 16) = v17 + 1;
        *(v12 + v17 + 32) = v20;
        v4 = a3;
        v5 = result;
      }

      v10 &= v10 - 1;
      if (!v10)
      {
        goto LABEL_4;
      }
    }

LABEL_18:
  }

  else
  {
LABEL_4:
    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_18;
      }

      v10 = *(v7 + 8 * v13);
      ++v6;
      if (v10)
      {
        v6 = v13;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1DD4AEFEC()
{
  result = qword_1ECCDD7F8;
  if (!qword_1ECCDD7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDD4F0, &unk_1DD651E10);
    sub_1DD4AF070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7F8);
  }

  return result;
}

unint64_t sub_1DD4AF070()
{
  result = qword_1EE163828;
  if (!qword_1EE163828)
  {
    sub_1DD63D078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163828);
  }

  return result;
}

uint64_t sub_1DD4AF0C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DefinedDateTimeRangeStore(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t DateTime.Time.DefinedTime.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD4AF228()
{
  result = qword_1ECCDD810;
  if (!qword_1ECCDD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD810);
  }

  return result;
}

uint64_t sub_1DD4AF284@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Time.DefinedTime.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s11DefinedTimeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4AF438()
{
  result = qword_1ECCDD818;
  if (!qword_1ECCDD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD818);
  }

  return result;
}

void *sub_1DD4AF49C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD828, &qword_1DD651FA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 2;
  *(inited + 40) = sub_1DD53C21C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD830, &qword_1DD651FB0);
  sub_1DD4AF62C();
  result = sub_1DD63FC88();
  off_1ECCDD820 = result;
  return result;
}

uint64_t sub_1DD4AF538()
{
  if (qword_1ECCDB080 != -1)
  {
    swift_once();
  }

  v0 = off_1ECCDD820;
  if (!*(off_1ECCDD820 + 2))
  {
    return 0;
  }

  v1 = sub_1DD400FC0();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = *(v0[7] + 8 * v1);

  v4 = sub_1DD63D128();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 0x746C7561666564;
    v6 = 0xE700000000000000;
  }

  sub_1DD59B948(v4, v6, v3);
  v8 = v7;

  if (!v8)
  {
    sub_1DD59B948(0x746C7561666564, 0xE700000000000000, v3);
    v8 = v9;
  }

  return v8;
}

unint64_t sub_1DD4AF62C()
{
  result = qword_1ECCDD838;
  if (!qword_1ECCDD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD838);
  }

  return result;
}

id sub_1DD4AF680()
{
  sub_1DD63C7D8();
  swift_allocObject();
  sub_1DD63C7C8();
  sub_1DD4B0ACC();
  result = sub_1DD4AF7DC(0xD000000000000024, 0x80000001DD66D8A0);
  if (!result)
  {
    type metadata accessor for InferenceError();
    swift_allocObject();
    v1 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001DD66D8D0, 0x292874696E69, 0xE600000000000000, 24, MEMORY[0x1E69E7CC0], 2);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0xE000000000000000;

    OUTLINED_FUNCTION_0_77();
    sub_1DD4B0B10(v2, v3, &protocol conformance descriptor for InferenceError);
    swift_allocError();
    *v4 = v1;
    swift_willThrow();
  }

  return result;
}

id sub_1DD4AF7DC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD63FDA8();

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

uint64_t sub_1DD4AF850(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1DD63FE28();
  MEMORY[0x1EEE9AC00](v5 - 8);
  type metadata accessor for ContactResolverDESRecord(0);
  sub_1DD4B0B10(&qword_1ECCDD858, type metadata accessor for ContactResolverDESRecord, &unk_1DD64B9F4);
  result = sub_1DD63C7B8();
  if (!v3)
  {
    v8 = result;
    v9 = v7;
    sub_1DD63FE18();
    v10 = sub_1DD63FDF8();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v40 = v8;
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v38 = a3;
      v14 = sub_1DD63F9F8();
      __swift_project_value_buffer(v14, qword_1EE16F068);

      v15 = sub_1DD63F9D8();
      v16 = sub_1DD640368();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        aBlock[0] = v18;
        *v17 = 136315138;
        v19 = sub_1DD39565C(v12, v13, aBlock);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_1DD38D000, v15, v16, "DES Record: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x1E12B3DA0](v18, -1, -1);
        MEMORY[0x1E12B3DA0](v17, -1, -1);
      }

      else
      {
      }

      v25 = dispatch_semaphore_create(0);
      OUTLINED_FUNCTION_57();
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD860, &qword_1DD651FE8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD643F90;
      *(inited + 32) = 1702125924;
      *(inited + 40) = 0xE400000000000000;
      sub_1DD4C1B10();
      *(inited + 48) = v28;
      sub_1DD63FC88();
      v29 = sub_1DD63CF08();
      sub_1DD4FBEF0();

      v30 = sub_1DD63FC48();

      v31 = swift_allocObject();
      *(v31 + 16) = v26;
      *(v31 + 24) = v25;
      aBlock[4] = sub_1DD4B0B98;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DD4AFE08;
      aBlock[3] = &block_descriptor_20;
      v32 = _Block_copy(aBlock);

      v33 = v25;

      [v38 saveRecordWithData:v29 recordInfo:v30 completion:v32];
      _Block_release(v32);

      sub_1DD6404F8();
      OUTLINED_FUNCTION_26_0(v26 + 16, aBlock);
      v34 = *(v26 + 16);
      if (!v34)
      {

        v36 = v40;
        v37 = v9;
        return sub_1DD3AD790(v36, v37);
      }

      v20 = v9;
      swift_willThrow();
      v35 = v34;

      v8 = v40;
    }

    else
    {
      v20 = v9;
      type metadata accessor for InferenceError();
      swift_allocObject();
      v21 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001DD66D8D0, 0xD000000000000011, 0x80000001DD66D940, 33, MEMORY[0x1E69E7CC0], 2);
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xE000000000000000;

      OUTLINED_FUNCTION_0_77();
      sub_1DD4B0B10(v22, v23, &protocol conformance descriptor for InferenceError);
      swift_allocError();
      *v24 = v21;
      swift_willThrow();
    }

    v36 = v8;
    v37 = v20;
    return sub_1DD3AD790(v36, v37);
  }

  return result;
}

uint64_t sub_1DD4AFDA0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  v6 = a2;

  return sub_1DD640508();
}

uint64_t sub_1DD4AFE08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1DD63D0D8();
    v10 = sub_1DD63D0F8();
    v11 = 0;
  }

  else
  {
    v10 = sub_1DD63D0F8();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v11, 1, v10);

  v12 = a3;
  v9(v8, a3);

  return sub_1DD3C34AC(v8);
}

uint64_t sub_1DD4AFF08(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  v5 = a1;
  return sub_1DD640508();
}

void sub_1DD4AFF6C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1DD4AFFD4(uint64_t a1, void *a2)
{
  v5 = sub_1DD63D0F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD840, &qword_1DD651FD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v56 - v16;
  v18 = sub_1DD4B0648(a2);
  if (v2)
  {
    return;
  }

  v56[1] = 0;
  v65 = v11;
  v68 = a1;
  v57 = a2;
  v60 = 0;
  v19 = v6;
  v20 = 0;
  v67 = v18;
  v21 = v14;
  v22 = v18 + 64;
  v23 = 1 << *(v18 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v18 + 64);
  v26 = (v23 + 63) >> 6;
  v62 = v19 + 16;
  v72 = (v19 + 32);
  v66 = v19;
  v70 = (v19 + 8);
  v56[2] = v76;
  v71 = v5;
  v73 = v8;
  v64 = v21;
  v63 = v17;
  v61 = v18 + 64;
  v69 = v26;
  while (v25)
  {
    v27 = v20;
LABEL_11:
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v29 = v28 | (v27 << 6);
    v30 = v66;
    v31 = v67;
    v32 = v65;
    (*(v66 + 16))(v65, *(v67 + 48) + *(v66 + 72) * v29, v5);
    v33 = *(*(v31 + 56) + 8 * v29);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD848, &qword_1DD651FD8);
    v35 = v5;
    v36 = *(v34 + 48);
    v37 = *(v30 + 32);
    v21 = v64;
    v37(v64, v32, v35);
    *(v21 + v36) = v33;
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v34);

    v8 = v73;
    v17 = v63;
    v22 = v61;
LABEL_12:
    sub_1DD4B081C(v21, v17);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD848, &qword_1DD651FD8);
    if (__swift_getEnumTagSinglePayload(v17, 1, v38) == 1)
    {
      goto LABEL_27;
    }

    v39 = *&v17[*(v38 + 48)];
    v5 = v71;
    (*v72)(v8, v17, v71);
    if (!*(v39 + 16) || (v40 = sub_1DD3978DC(), (v41 & 1) == 0))
    {

      goto LABEL_23;
    }

    sub_1DD395720(*(v39 + 56) + 32 * v40, aBlock);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v42 = v76[8];
    sub_1DD63D018();
    if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_31;
    }

    if (v43 <= -9.22337204e18)
    {
      goto LABEL_32;
    }

    if (v43 >= 9.22337204e18)
    {
      goto LABEL_33;
    }

    v44 = v42 < v43;
    v8 = v73;
    if (v44)
    {
LABEL_23:
      OUTLINED_FUNCTION_57();
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      v59 = (v46 + 16);
      v47 = dispatch_semaphore_create(0);
      v58 = sub_1DD63D0B8();
      v48 = swift_allocObject();
      *(v48 + 16) = v46;
      *(v48 + 24) = v47;
      v76[2] = sub_1DD4B0AA0;
      v76[3] = v48;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v76[0] = sub_1DD4AFF6C;
      v76[1] = &block_descriptor_5;
      v49 = _Block_copy(aBlock);

      v50 = v47;

      v51 = v58;
      [v57 deleteSavedRecordWithIdentfier:v58 completion:v49];
      _Block_release(v49);

      sub_1DD6404F8();
      v52 = v59;
      OUTLINED_FUNCTION_26_0(v59, v74);
      v53 = *v52;
      if (*v52)
      {
        swift_willThrow();
        v55 = v53;

        (*v70)(v73, v71);

        return;
      }

      v5 = v71;
      v8 = v73;
      (*v70)(v73, v71);

      v54 = __OFADD__(v60++, 1);
      v26 = v69;
      if (v54)
      {
        __break(1u);
LABEL_27:

        return;
      }
    }

    else
    {
      (*v70)(v73, v5);
      v26 = v69;
    }
  }

  while (1)
  {
    v27 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v27 >= v26)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD848, &qword_1DD651FD8);
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v45);
      v25 = 0;
      goto LABEL_12;
    }

    v25 = *(v22 + 8 * v27);
    ++v20;
    if (v25)
    {
      v20 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_1DD4B0648(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_57();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  OUTLINED_FUNCTION_57();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  v5 = v4 + 16;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  aBlock[4] = sub_1DD4B0AC0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD4B09B4;
  aBlock[3] = &block_descriptor_13;
  v7 = _Block_copy(aBlock);

  v8 = v2;

  [a1 fetchSavedRecordInfoWithCompletion_];
  _Block_release(v7);
  sub_1DD6404F8();
  OUTLINED_FUNCTION_26_0(v3 + 16, aBlock);
  v9 = *(v3 + 16);
  if (v9)
  {
    swift_willThrow();
    v10 = v9;
  }

  else
  {

    OUTLINED_FUNCTION_26_0(v5, v12);
    v5 = *(v4 + 16);
  }

  return v5;
}

uint64_t sub_1DD4B081C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD840, &qword_1DD651FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4B088C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    sub_1DD63D0F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD850, &qword_1DD651FE0);
    sub_1DD4B0B10(&qword_1EE163810, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v7 = sub_1DD63FC88();
  }

  swift_beginAccess();
  *(a3 + 16) = v7;

  swift_beginAccess();
  v8 = *(a4 + 16);
  *(a4 + 16) = a2;
  v9 = a2;

  return sub_1DD640508();
}

uint64_t sub_1DD4B09B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1DD63D0F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD850, &qword_1DD651FE0);
    sub_1DD4B0B10(&qword_1EE163810, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v4 = sub_1DD63FC58();
  }

  v6 = a3;
  v5(v4, a3);
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1DD4B0ACC()
{
  result = qword_1EE160218;
  if (!qword_1EE160218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE160218);
  }

  return result;
}

uint64_t sub_1DD4B0B10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD4B0BA0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DD4B0BE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD4B0C3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 56) = OUTLINED_FUNCTION_2_51(6, v1, v2, v3, v4, v5, v6, v7);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_12();
  *(inited + 88) = OUTLINED_FUNCTION_2_51(7, v8, v9, v10, v11, v12, v13, v14);
  *(inited + 96) = xmmword_1DD643620;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_12();
  *(inited + 120) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(7, 0, 0, v15, 10, 0, 0, v16);
  *(inited + 128) = xmmword_1DD643660;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_12();
  *(inited + 152) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(8, 0, 0, v17, 10, 30, 0, v18);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD4B0D84(uint64_t a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v1 = sub_1DD63FD58();
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
    v1 = 5000257;
  }

  MEMORY[0x1E12B2260](v1, v3);
}

void sub_1DD4B0E18()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  sub_1DD4B69D8(v5, v22 - v10, &qword_1ECCDF3A0, &qword_1DD644940);
  v12 = sub_1DD6401F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DD390754(v11, &qword_1ECCDF3A0, &qword_1DD644940);
  }

  else
  {
    sub_1DD6401E8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1DD6401A8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v18 = sub_1DD63FE68() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = v3;
      *(v19 + 24) = v1;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v20 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v22[1] = 7;
      v22[2] = v20;
      v22[3] = v18;
      swift_task_create();

      sub_1DD390754(v5, &qword_1ECCDF3A0, &qword_1DD644940);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1DD390754(v5, &qword_1ECCDF3A0, &qword_1DD644940);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v1;
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4B1110()
{
  v1 = v0;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000027, 0x80000001DD66D980);
  MEMORY[0x1E12B2260](v1[2], v1[3]);
  MEMORY[0x1E12B2260](0xD000000000000015, 0x80000001DD66D9B0);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  sub_1DD640CC8();
  MEMORY[0x1E12B2260](0x65776F6C6C61202CLL, 0xEA00000000003D64);
  sub_1DD4B0D84(v0[10]);
  MEMORY[0x1E12B2260](125, 0xE100000000000000);
  return 0;
}

void DisambiguationEntityResolution.__allocating_init(useCase:)()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD868, &qword_1DD652050);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v79 = (&v74 - v7);
  v8 = OUTLINED_FUNCTION_6_2();
  v9 = type metadata accessor for LearnedDisambiguationPersistentStorage(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v75 = type metadata accessor for PervasiveConfiguration(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - v19;
  sub_1DD54DE78(v93);
  sub_1DD54C398(v93, v20);
  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v21 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v21, qword_1ECD0DDF0);
  v22 = OUTLINED_FUNCTION_14_26();
  sub_1DD4B62FC(v22, v17, v23);
  v76 = v0;
  v24 = sub_1DD63F9D8();
  v25 = sub_1DD640368();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_54();
    v77 = v4;
    v27 = v26;
    v28 = OUTLINED_FUNCTION_62();
    v78 = v2;
    v29 = v28;
    v92[0] = v28;
    *v27 = 136315138;
    v30 = sub_1DD54CC64();
    v74 = v9;
    v31 = v13;
    v32 = v20;
    v34 = v33;
    OUTLINED_FUNCTION_2_52();
    sub_1DD4B6238();
    v35 = sub_1DD39565C(v30, v34, v92);
    v20 = v32;
    v13 = v31;
    v9 = v74;

    *(v27 + 4) = v35;
    OUTLINED_FUNCTION_44_9(&dword_1DD38D000, v24, v25, "DisambiguationEntityResolution: configured %s", v74);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v2 = v78;
    OUTLINED_FUNCTION_0_1();
    v4 = v77;
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    OUTLINED_FUNCTION_2_52();
    sub_1DD4B6238();
  }

  v36 = v79;
  v37 = OUTLINED_FUNCTION_5_9();
  sub_1DD4F6EBC(v37, v38, v39);
  if (__swift_getEnumTagSinglePayload(v36, 1, v9) == 1)
  {

    sub_1DD390754(v36, &qword_1ECCDD868, &qword_1DD652050);
    v40 = sub_1DD63F9D8();
    v41 = sub_1DD640378();
    if (OUTLINED_FUNCTION_9_0(v41))
    {
      v42 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v42);
      OUTLINED_FUNCTION_50_11(&dword_1DD38D000, v43, v41, "DisambiguationEntityResolution: Could not be created");
      OUTLINED_FUNCTION_23_0();
    }

    OUTLINED_FUNCTION_2_52();
    sub_1DD4B6238();
  }

  else
  {
    sub_1DD4B6BD0(v36, v13, type metadata accessor for LearnedDisambiguationPersistentStorage);
    sub_1DD54C784(&v90);
    if (v91)
    {
      sub_1DD3AA4A8(&v90, v92);
      sub_1DD3C2388(v92, &v90);
      v44 = type metadata accessor for LoggingDataEmitter();
      v45 = sub_1DD50EE6C();
      v77 = v4;
      v46 = v45;
      v47 = type metadata accessor for ExperimentationTriggerLogger();
      v48 = swift_allocObject();
      v78 = v2;
      v49 = v48;
      v88 = v75;
      v89 = &off_1F58BD0C8;
      __swift_allocate_boxed_opaque_existential_1(v87);
      v50 = OUTLINED_FUNCTION_14_26();
      sub_1DD4B62FC(v50, v51, v52);
      v85 = v9;
      v86 = &off_1F58BA090;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
      sub_1DD4B62FC(v13, boxed_opaque_existential_1, type metadata accessor for LearnedDisambiguationPersistentStorage);
      v83[3] = v44;
      v83[4] = &off_1F58BAF78;
      v83[0] = v46;
      v81 = v47;
      v82 = &off_1F58C3DB8;
      v80[0] = v49;
      type metadata accessor for DisambiguationEntityResolution(0);
      v75 = swift_allocObject();
      v76 = v20;
      __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
      v79 = &v74;
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x1EEE9AC00](v54);
      OUTLINED_FUNCTION_2();
      v57 = v56 - v55;
      (*(v58 + 16))(v56 - v55);
      __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x1EEE9AC00](v59);
      OUTLINED_FUNCTION_2();
      v62 = v61 - v60;
      (*(v63 + 16))(v61 - v60);
      __swift_mutable_project_boxed_opaque_existential_1(v83, v44);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x1EEE9AC00](v64);
      OUTLINED_FUNCTION_2();
      v67 = (v66 - v65);
      (*(v68 + 16))(v66 - v65);
      __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
      OUTLINED_FUNCTION_7_0();
      MEMORY[0x1EEE9AC00](v69);
      OUTLINED_FUNCTION_2();
      v72 = (v71 - v70);
      (*(v73 + 16))(v71 - v70);
      sub_1DD4B5DB4(v77, v78, v57, v62, &v90, *v67, *v72, v75);
      __swift_destroy_boxed_opaque_existential_1(v92);
      OUTLINED_FUNCTION_22_17();
      OUTLINED_FUNCTION_2_52();
      sub_1DD4B6238();
      __swift_destroy_boxed_opaque_existential_1(v80);
      __swift_destroy_boxed_opaque_existential_1(v83);
      __swift_destroy_boxed_opaque_existential_1(v84);
      __swift_destroy_boxed_opaque_existential_1(v87);
    }

    else
    {

      OUTLINED_FUNCTION_22_17();
      OUTLINED_FUNCTION_2_52();
      sub_1DD4B6238();
      sub_1DD390754(&v90, &qword_1ECCDD870, &qword_1DD652058);
    }
  }

  OUTLINED_FUNCTION_17();
}

void sub_1DD4B1908()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v155 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD878, &unk_1DD652060);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v147 = v137 - v7;
  OUTLINED_FUNCTION_6_2();
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v144 = v9;
  v145 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v143 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  v151 = v137 - v14;
  v15 = OUTLINED_FUNCTION_6_2();
  type metadata accessor for LearningResult(v15);
  OUTLINED_FUNCTION_0();
  v148 = v16;
  v149 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v150 = (v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = v137 - v21;
  v23 = sub_1DD63D9E8();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  v31 = OUTLINED_FUNCTION_3(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_4();
  v146 = v32 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = (v137 - v35);
  v37 = type metadata accessor for LearnedDisambiguation(0);
  OUTLINED_FUNCTION_0();
  v140 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v141 = v137 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v142 = v137 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v45 = *v3;
  v46 = v1[10];
  v47 = v1[3];
  v153 = v1[2];
  v154 = v137 - v48;
  v152 = v47;
  if (sub_1DD62886C(v153, v47, v46))
  {
    v139 = v22;
    __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
    v137[1] = v45;
    sub_1DD4F3F88();
    sub_1DD63DA08();
    v49 = sub_1DD63D9D8();
    v50 = *(v25 + 8);
    v138 = v23;
    v51 = v23;
    v52 = v50;
    v50(v29, v51);
    sub_1DD4F7E34(v49, v36);
    if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
    {
      sub_1DD390754(v36, &qword_1ECCDD880, &qword_1DD652070);
      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_78();
        swift_once();
      }

      v53 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v53, qword_1ECD0DDF0);

      v54 = sub_1DD63F9D8();
      v55 = sub_1DD640368();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = v37;
        v57 = OUTLINED_FUNCTION_54();
        v58 = OUTLINED_FUNCTION_62();
        v156[0] = v58;
        *v57 = 136315138;
        *(v57 + 4) = sub_1DD39565C(v153, v152, v156);
        OUTLINED_FUNCTION_58_6(&dword_1DD38D000, v59, v60, "DisambiguationEntityResolution: No history found for %s, bypassing pervasive");
        __swift_destroy_boxed_opaque_existential_1(v58);
        OUTLINED_FUNCTION_25_12();
        v37 = v56;
        OUTLINED_FUNCTION_0_1();
      }
    }

    else
    {
      OUTLINED_FUNCTION_17_25();
      sub_1DD4B6BD0(v36, v154, v68);
      if ((sub_1DD4B2910() & 1) == 0)
      {
        v153 = v37;
        sub_1DD4F3F88();
        sub_1DD63DA08();
        v78 = sub_1DD63D9D8();
        v52(v29, v138);
        v79 = v139;
        sub_1DD4B2BD4(v78);
        v80 = sub_1DD6401F8();
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v81, v82, v83, v80);
        OUTLINED_FUNCTION_16_26();
        v84 = v150;
        sub_1DD4B62FC(v79, v150, v85);
        v86 = (*(v149 + 80) + 40) & ~*(v149 + 80);
        v87 = swift_allocObject();
        v87[2] = 0;
        v87[3] = 0;
        v87[4] = v1;
        OUTLINED_FUNCTION_3_43();
        sub_1DD4B6BD0(v84, v88 + v86, v89);

        OUTLINED_FUNCTION_37_14();
        sub_1DD4B0E18();

        sub_1DD4B47A4(2);
        if (__swift_project_boxed_opaque_existential_1(v1 + 17, v1[20])[3])
        {
          if (qword_1ECCDB0E0 != -1)
          {
            OUTLINED_FUNCTION_0_78();
            swift_once();
          }

          v90 = sub_1DD63F9F8();
          OUTLINED_FUNCTION_130(v90, qword_1ECD0DDF0);
          v91 = sub_1DD63F9D8();
          v92 = sub_1DD640368();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_11_3(v93);
            OUTLINED_FUNCTION_18(&dword_1DD38D000, v94, v95, "DisambiguationEntityResolution: Forcing disambiguation");
            OUTLINED_FUNCTION_23_0();
          }

          OUTLINED_FUNCTION_1_58();
          sub_1DD4B6238();
          OUTLINED_FUNCTION_3_43();
          v96 = v147;
          sub_1DD4B6BD0(v79, v147, v97);
          OUTLINED_FUNCTION_10_15();
          __swift_storeEnumTagSinglePayload(v98, v99, v100, v148);
          v101 = OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_unusedPrediction;
          OUTLINED_FUNCTION_55_7();
          sub_1DD4B628C(v96, v1 + v101);
          swift_endAccess();
          OUTLINED_FUNCTION_65_0();
          v72 = v153;
        }

        else
        {
          v102 = v146;
          sub_1DD4B69D8(v79, v146, &qword_1ECCDD880, &qword_1DD652070);
          v103 = v153;
          if (__swift_getEnumTagSinglePayload(v102, 1, v153) == 1)
          {
            sub_1DD390754(v102, &qword_1ECCDD880, &qword_1DD652070);
            if (qword_1ECCDB0E0 != -1)
            {
              OUTLINED_FUNCTION_0_78();
              swift_once();
            }

            v104 = sub_1DD63F9F8();
            OUTLINED_FUNCTION_130(v104, qword_1ECD0DDF0);
            v105 = sub_1DD63F9D8();
            v106 = sub_1DD640368();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_11_3(v107);
              OUTLINED_FUNCTION_18(&dword_1DD38D000, v108, v109, "DisambiguationEntityResolution: No confident prediction");
              OUTLINED_FUNCTION_23_0();
            }

            OUTLINED_FUNCTION_1_58();
            sub_1DD4B6238();
            v110 = v148;
            if (*(v79 + *(v148 + 24)) == 1)
            {
              OUTLINED_FUNCTION_3_43();
              v111 = v147;
              sub_1DD4B6BD0(v79, v147, v112);
              OUTLINED_FUNCTION_10_15();
              __swift_storeEnumTagSinglePayload(v113, v114, v115, v110);
              v116 = OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_unusedPrediction;
              OUTLINED_FUNCTION_55_7();
              sub_1DD4B628C(v111, v1 + v116);
              swift_endAccess();
            }

            else
            {
              OUTLINED_FUNCTION_4_40();
              sub_1DD4B6238();
            }

            OUTLINED_FUNCTION_65_0();
          }

          else
          {
            OUTLINED_FUNCTION_17_25();
            v152 = v117;
            v118 = v155;
            sub_1DD4B6BD0(v102, v155, v119);
            v150 = v1;
            v120 = *v118;
            v121 = v118[1];

            v122 = v143;
            sub_1DD63D0E8();
            v123 = sub_1DD63D098();
            v125 = v124;
            (*(v144 + 8))(v122, v145);
            v126 = v142;
            sub_1DD63D068();
            v127 = *(v118 + v103[7]);
            v128 = *(v118 + v103[8]);
            *v126 = v120;
            v126[1] = v121;
            v126[2] = v123;
            v126[3] = v125;
            *(v126 + v103[7]) = v127;
            *(v126 + v103[8]) = v128;
            v129 = (v126 + v103[9]);
            *v129 = 0;
            v129[1] = 0xE000000000000000;
            OUTLINED_FUNCTION_41_10((v126 + v103[10]));
            OUTLINED_FUNCTION_65_0();
            __swift_storeEnumTagSinglePayload(v130, v131, v132, v80);
            OUTLINED_FUNCTION_10_32();
            v133 = v141;
            sub_1DD4B62FC(v126, v141, v134);
            v135 = (*(v140 + 80) + 32) & ~*(v140 + 80);
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            sub_1DD4B6BD0(v133, v136 + v135, v152);
            *(v136 + ((v40 + v135 + 7) & 0xFFFFFFFFFFFFFFF8)) = v150;

            OUTLINED_FUNCTION_37_14();
            sub_1DD4B0E18();

            sub_1DD4B6238();
            OUTLINED_FUNCTION_4_40();
            sub_1DD4B6238();
            sub_1DD4B6238();
            OUTLINED_FUNCTION_10_15();
            v72 = v103;
          }
        }

        goto LABEL_15;
      }

      OUTLINED_FUNCTION_1_58();
      sub_1DD4B6238();
    }

    OUTLINED_FUNCTION_65_0();
    v72 = v37;
LABEL_15:
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
    OUTLINED_FUNCTION_17();
    return;
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v61 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v61, qword_1ECD0DDF0);

  v62 = sub_1DD63F9D8();
  v63 = sub_1DD640368();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = OUTLINED_FUNCTION_54();
    v65 = OUTLINED_FUNCTION_62();
    v156[0] = v65;
    *v64 = 136315138;
    *(v64 + 4) = sub_1DD39565C(v153, v152, v156);
    OUTLINED_FUNCTION_58_6(&dword_1DD38D000, v66, v67, "DisambiguationEntityResolution: Unsupported use case: %s");
    __swift_destroy_boxed_opaque_existential_1(v65);
    OUTLINED_FUNCTION_25_12();
    OUTLINED_FUNCTION_0_1();
  }

  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_17();

  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
}

uint64_t sub_1DD4B23FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DD4B241C, 0, 0);
}

uint64_t sub_1DD4B241C()
{
  OUTLINED_FUNCTION_34_0();
  sub_1DD4B4138(*(v0 + 24));
  OUTLINED_FUNCTION_26();

  return v1();
}

uint64_t sub_1DD4B2474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1DD63F328();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for LearnedDisambiguation(0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD4B2560, 0, 0);
}

uint64_t sub_1DD4B2560()
{
  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[2];
  v3 = sub_1DD63F9F8();
  v4 = __swift_project_value_buffer(v3, qword_1ECD0DDF0);
  OUTLINED_FUNCTION_10_32();
  sub_1DD4B62FC(v2, v1, v5);
  v6 = sub_1DD63F9D8();
  v7 = sub_1DD640368();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_54();
    v24 = OUTLINED_FUNCTION_62();
    *v8 = 136315138;
    LearnedDisambiguation.description.getter();
    OUTLINED_FUNCTION_1_58();
    sub_1DD4B6238();
    v9 = OUTLINED_FUNCTION_15_1();
    v12 = sub_1DD39565C(v9, v10, v11);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DD38D000, v6, v7, "DisambiguationEntityResolution: Storing current learning to memory now: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    OUTLINED_FUNCTION_1_58();
    sub_1DD4B6238();
  }

  v13 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_21_18();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v15);
    OUTLINED_FUNCTION_50_11(&dword_1DD38D000, v16, v4, "DisambiguationEntityResolution: Saving as an outgoing interaction");
    OUTLINED_FUNCTION_23_0();
  }

  v18 = v0[5];
  v17 = v0[6];
  v19 = v0[4];

  (*(v18 + 104))(v17, *MEMORY[0x1E69D2A68], v19);
  v20 = swift_task_alloc();
  v0[8] = v20;
  *v20 = v0;
  v20[1] = sub_1DD4B27B0;
  v21 = v0[6];
  v22 = v0[2];

  return sub_1DD4B44AC(v22, v21);
}

uint64_t sub_1DD4B27B0()
{
  OUTLINED_FUNCTION_44_11();
  OUTLINED_FUNCTION_30_1();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_26();

  return v7();
}

uint64_t sub_1DD4B2910()
{
  v41[3] = &type metadata for PERFeatures;
  v41[4] = sub_1DD4B6B7C();
  v1 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(v41);
  if ((v1 & 1) == 0)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v6 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v6, qword_1ECD0DDF0);
    v4 = sub_1DD63F9D8();
    v7 = sub_1DD640368();
    if (OUTLINED_FUNCTION_29_15(v7))
    {
      goto LABEL_10;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v2 = __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  if ((v2[7] & 1) == 0)
  {
    v15 = v2[6];
    type metadata accessor for LearnedDisambiguation(0);
    sub_1DD63CFF8();
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      v40 = v39;
      swift_once();
      v16 = v40;
    }

    v17 = -v16;
    v18 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v18, qword_1ECD0DDF0);
    v19 = sub_1DD63F9D8();
    v20 = sub_1DD640368();
    if (OUTLINED_FUNCTION_29_15(v20))
    {
      v21 = OUTLINED_FUNCTION_54();
      *v21 = 134217984;
      *(v21 + 4) = v17;
      OUTLINED_FUNCTION_52_7();
      OUTLINED_FUNCTION_44_9(v22, v23, v24, v25);
      OUTLINED_FUNCTION_25_12();
    }

    v26 = sub_1DD63F9D8();
    v27 = sub_1DD640368();
    if (OUTLINED_FUNCTION_29_15(v27))
    {
      v28 = OUTLINED_FUNCTION_54();
      *v28 = 134217984;
      *(v28 + 4) = v15;
      OUTLINED_FUNCTION_52_7();
      OUTLINED_FUNCTION_44_9(v29, v30, v31, v32);
      OUTLINED_FUNCTION_25_12();
    }

    if (v15 <= v17)
    {
      return 0;
    }

    v4 = sub_1DD63F9D8();
    v33 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_29_15(v33))
    {
      v13 = 1;
      goto LABEL_13;
    }

    v34 = OUTLINED_FUNCTION_54();
    *v34 = 134217984;
    *(v34 + 4) = v17;
    OUTLINED_FUNCTION_52_7();
    _os_log_impl(v35, v36, v37, v38, v34, 0xCu);
    v13 = 1;
    goto LABEL_11;
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v3 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v3, qword_1ECD0DDF0);
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (!OUTLINED_FUNCTION_29_15(v5))
  {
    goto LABEL_12;
  }

LABEL_10:
  v8 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20_0(v8);
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_48_11(v9, v10, v11, v12);
  v13 = 0;
LABEL_11:
  OUTLINED_FUNCTION_19_0();
LABEL_13:

  return v13;
}

uint64_t sub_1DD4B2BD4(uint64_t a1)
{
  v3 = v1[15];
  v4 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v3);
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v5 = sub_1DD4F75D0(a1);
  (*(v4 + 16))(v5, v3, v4);
}

void sub_1DD4B2C70(uint64_t *a1)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = v2;
    v5 = a1[1];
    v6 = qword_1ECCDB0E0;

    if (v6 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v7 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v7, qword_1ECD0DDF0);

    v8 = sub_1DD63F9D8();
    v9 = sub_1DD640368();
    sub_1DD4B6454(v3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v10 = 136315394;

      v12 = MEMORY[0x1E69E6158];
      v13 = MEMORY[0x1E12B2430](v11, MEMORY[0x1E69E6158]);
      v15 = v14;

      v16 = sub_1DD39565C(v13, v15, v31);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2080;

      MEMORY[0x1E12B2430](v17, v12);

      v18 = OUTLINED_FUNCTION_15_1();
      v21 = sub_1DD39565C(v18, v19, v20);

      *(v10 + 14) = v21;
      OUTLINED_FUNCTION_57_10(&dword_1DD38D000, v22, v23, "DisambiguationEntityResolution: PervasiveEntityResolution extracted choices (%s)\n and associated identifiers: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v24 = v4[2];
    v25 = v4[3];
    v31[0] = v3;
    v31[1] = v5;
    type metadata accessor for OngoingLearning();
    v26 = swift_allocObject();

    sub_1DD4B4C48(v24, v25, v31);
    v4[4] = v26;
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v27 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v27, qword_1ECD0DDF0);
    oslog = sub_1DD63F9D8();
    sub_1DD640378();
    OUTLINED_FUNCTION_21_18();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v29);
      OUTLINED_FUNCTION_48_11(&dword_1DD38D000, oslog, v1, "DisambiguationEntityResolution: PervasiveEntityResolution no choices extracted");
      OUTLINED_FUNCTION_19_0();
    }
  }
}

void sub_1DD4B2F44()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for LearnedDisambiguation(0);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = *(v2 + 4);
  if (!v19)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v22 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v22, qword_1ECD0DDF0);
    v40 = sub_1DD63F9D8();
    sub_1DD640378();
    OUTLINED_FUNCTION_21_18();
    if (!os_log_type_enabled(v40, v23))
    {
      goto LABEL_14;
    }

    v24 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_20_0(v24);
    v25 = "DisambiguationEntityResolution: PervasiveEntityResolution no user select found";
    goto LABEL_13;
  }

  if (*(v0 + 32))
  {
    v21 = *(v2 + 2);
    v20 = *(v2 + 3);
    v41 = *v2;
    v42 = v21;
    v43 = v20;
    v44 = v19;

    sub_1DD4B4EBC();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {

      sub_1DD390754(v8, &qword_1ECCDD880, &qword_1DD652070);
    }

    else
    {
      sub_1DD4B6BD0(v8, v18, type metadata accessor for LearnedDisambiguation);
      sub_1DD6401F8();
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
      OUTLINED_FUNCTION_10_32();
      sub_1DD4B62FC(v18, v15, v35);
      v36 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v37 = (v13 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      *(v38 + 24) = 0;
      sub_1DD4B6BD0(v15, v38 + v36, type metadata accessor for LearnedDisambiguation);
      *(v38 + v37) = v0;

      OUTLINED_FUNCTION_37_14();
      sub_1DD4B0E18();

      OUTLINED_FUNCTION_1_58();
      sub_1DD4B6238();
    }

    OUTLINED_FUNCTION_17();
    return;
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v26 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v26, qword_1ECD0DDF0);
  v40 = sub_1DD63F9D8();
  sub_1DD640378();
  OUTLINED_FUNCTION_21_18();
  if (os_log_type_enabled(v40, v27))
  {
    v28 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_20_0(v28);
    v25 = "DisambiguationEntityResolution: PervasiveEntityResolution got the user selection but did not capture the choices";
LABEL_13:
    OUTLINED_FUNCTION_48_11(&dword_1DD38D000, v40, v0, v25);
    OUTLINED_FUNCTION_19_0();
  }

LABEL_14:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4B32F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_1DD63F328();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_1DD63D0F8();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for LearnedDisambiguation(0);
  v5[17] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[18] = v8;
  *v8 = v5;
  v8[1] = sub_1DD4B3474;

  return sub_1DD4F2C78((v5 + 2));
}

uint64_t sub_1DD4B3474()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  v1 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD4B3560, 0, 0);
}

uint64_t sub_1DD4B3560()
{
  v45 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1ECD0DDF0);
  v5 = sub_1DD63F9D8();
  v6 = sub_1DD640368();
  v42 = v3;
  v43 = v2;
  v41 = v1;
  if (OUTLINED_FUNCTION_9_0(v6))
  {
    v7 = OUTLINED_FUNCTION_54();
    v8 = OUTLINED_FUNCTION_62();
    v44 = v8;
    *v7 = 136315138;
    v0[5] = v1;
    v0[6] = v2;
    v0[7] = v3;
    v9 = sub_1DD63FE38();
    v11 = sub_1DD39565C(v9, v10, &v44);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DD38D000, v5, v6, "Collected signal values: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_23_0();
  }

  v13 = v0[16];
  v12 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[8];
  v17 = v16[1];
  v37 = v0[13];
  v38 = *v16;
  v18 = *(v16 + v13[7]);
  v40 = *(v16 + v13[8]);
  v19 = (v16 + v13[9]);
  v20 = v19[1];
  v39 = *v19;

  sub_1DD63D0E8();
  v21 = sub_1DD63D098();
  v23 = v22;
  (*(v15 + 8))(v14, v37);
  sub_1DD63D068();
  *v12 = v38;
  v12[1] = v17;
  v12[2] = v21;
  v12[3] = v23;
  *(v12 + v13[7]) = v18;
  *(v12 + v13[8]) = v40;
  v24 = (v12 + v13[9]);
  *v24 = v39;
  v24[1] = v20;
  v25 = (v12 + v13[10]);
  *v25 = v41;
  v25[1] = v43;
  v25[2] = v42;
  sub_1DD4B3A3C();
  sub_1DD4B4260(v12);
  v26 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_21_18();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v28);
    OUTLINED_FUNCTION_50_11(&dword_1DD38D000, v29, v23, "DisambiguationEntityResolution: Saving as an incoming interaction");
    OUTLINED_FUNCTION_23_0();
  }

  v31 = v0[11];
  v30 = v0[12];
  v32 = v0[10];

  (*(v31 + 104))(v30, *MEMORY[0x1E69D2A60], v32);
  v33 = swift_task_alloc();
  v0[19] = v33;
  *v33 = v0;
  v33[1] = sub_1DD4B386C;
  v34 = v0[17];
  v35 = v0[12];

  return sub_1DD4B44AC(v34, v35);
}

uint64_t sub_1DD4B386C()
{
  OUTLINED_FUNCTION_44_11();
  OUTLINED_FUNCTION_30_1();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[10];
  v5 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1DD4B39B4, 0, 0);
}

uint64_t sub_1DD4B39B4()
{
  OUTLINED_FUNCTION_44_11();
  OUTLINED_FUNCTION_1_58();
  sub_1DD4B6238();

  OUTLINED_FUNCTION_26();

  return v0();
}

void sub_1DD4B3A3C()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LearningResult(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  OUTLINED_FUNCTION_3(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD878, &unk_1DD652060);
  v14 = OUTLINED_FUNCTION_3(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  v66 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  v23 = sub_1DD63D9E8();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  if (qword_1ECCDB118 != -1)
  {
    OUTLINED_FUNCTION_6_40(&qword_1ECCDB118);
  }

  OUTLINED_FUNCTION_38_11();
  if (v30)
  {
    if (*(__swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]) + 8) != 1)
    {
      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_78();
        swift_once();
      }

      v42 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v42, qword_1ECD0DDF0);
      v66 = sub_1DD63F9D8();
      sub_1DD640368();
      OUTLINED_FUNCTION_21_18();
      if (!os_log_type_enabled(v66, v43))
      {
        goto LABEL_20;
      }

      v44 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v44);
      v41 = "DisambiguationEntityResolution: Skipping training data emission because of rate limit.";
      goto LABEL_19;
    }

    v65 = v3;
    v31 = v1[10];
    v32 = v1[11];
    v33 = v1[2];
    v64 = v1[3];
    if (sub_1DD628ABC(v33, v64, v31, v32))
    {
      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_78();
        swift_once();
      }

      v34 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v34, qword_1ECD0DDF0);

      v66 = sub_1DD63F9D8();
      v35 = sub_1DD640368();

      if (!os_log_type_enabled(v66, v35))
      {
        goto LABEL_20;
      }

      v36 = OUTLINED_FUNCTION_54();
      v37 = OUTLINED_FUNCTION_62();
      v67 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1DD39565C(v33, v64, &v67);
      _os_log_impl(&dword_1DD38D000, v66, v35, "Excluding use case %s for logging.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_25_12();
      OUTLINED_FUNCTION_0_1();

LABEL_36:
      OUTLINED_FUNCTION_17();
      return;
    }

    v64 = __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
    v63 = type metadata accessor for LearnedDisambiguation(0);

    sub_1DD63DA08();
    v47 = sub_1DD63D9D8();
    (*(v25 + 8))(v29, v23);
    v64 = sub_1DD4F75D0(v47);
    v48 = OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_unusedPrediction;
    swift_beginAccess();
    sub_1DD4B69D8(v1 + v48, v22, &qword_1ECCDD878, &unk_1DD652060);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v4);
    sub_1DD390754(v22, &qword_1ECCDD878, &unk_1DD652060);
    if (EnumTagSinglePayload != 1 && *(__swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]) + 24) == 1)
    {
      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_78();
        swift_once();
      }

      v50 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v50, qword_1ECD0DDF0);

      v51 = sub_1DD63F9D8();
      v52 = sub_1DD640368();
      if (OUTLINED_FUNCTION_9_0(v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 67109120;
        sub_1DD4B69D8(v1 + v48, v19, &qword_1ECCDD878, &unk_1DD652060);
        if (__swift_getEnumTagSinglePayload(v19, 1, v4))
        {
          v54 = &qword_1ECCDD878;
          v55 = &unk_1DD652060;
          v56 = v19;
        }

        else
        {
          OUTLINED_FUNCTION_16_26();
          sub_1DD4B62FC(v19, v8, v57);
          sub_1DD390754(v19, &qword_1ECCDD878, &unk_1DD652060);
          sub_1DD4B69D8(v8, v12, &qword_1ECCDD880, &qword_1DD652070);
          OUTLINED_FUNCTION_4_40();
          sub_1DD4B6238();
          v58 = v63;
          if (__swift_getEnumTagSinglePayload(v12, 1, v63) != 1)
          {
            v59 = *&v12[*(v58 + 32)];
            OUTLINED_FUNCTION_1_58();
            sub_1DD4B6238();
            goto LABEL_34;
          }

          v54 = &qword_1ECCDD880;
          v55 = &qword_1DD652070;
          v56 = v12;
        }

        sub_1DD390754(v56, v54, v55);
        v59 = 0;
LABEL_34:
        *(v53 + 4) = v59;

        _os_log_impl(&dword_1DD38D000, v51, v52, "DisambiguationEntityResolution: Forced disambiguation ignoring prediction %u.", v53, 8u);
        OUTLINED_FUNCTION_0_1();

        goto LABEL_35;
      }
    }

LABEL_35:
    __swift_project_boxed_opaque_existential_1(v1 + 22, v1[25]);
    sub_1DD4B69D8(v1 + v48, v66, &qword_1ECCDD878, &unk_1DD652060);
    __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
    sub_1DD50EF64();

    v60 = OUTLINED_FUNCTION_5_9();
    sub_1DD390754(v60, v61, &unk_1DD652060);
    goto LABEL_36;
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v38 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v38, qword_1ECD0DDF0);
  v66 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_21_18();
  if (!os_log_type_enabled(v66, v39))
  {
    goto LABEL_20;
  }

  v40 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20_0(v40);
  v41 = "DisambiguationEntityResolution: Skipping training data emission because D&U not allowed.";
LABEL_19:
  OUTLINED_FUNCTION_48_11(&dword_1DD38D000, v66, v1, v41);
  OUTLINED_FUNCTION_19_0();
LABEL_20:
  OUTLINED_FUNCTION_17();
}

void sub_1DD4B4138(uint64_t a1)
{
  if (qword_1ECCDB118 != -1)
  {
    OUTLINED_FUNCTION_6_40(&qword_1ECCDB118);
  }

  OUTLINED_FUNCTION_38_11();
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 22, v1[25]);
    v4 = __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
    sub_1DD510B78(a1, *(v4 + 24));
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v5 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v5, qword_1ECD0DDF0);
    oslog = sub_1DD63F9D8();
    sub_1DD640368();
    OUTLINED_FUNCTION_21_18();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v7);
      OUTLINED_FUNCTION_48_11(&dword_1DD38D000, oslog, a1, "DisambiguationEntityResolution: Skipping model triggered emission because D&U not allowed.");
      OUTLINED_FUNCTION_19_0();
    }
  }
}

void sub_1DD4B4260(uint64_t a1)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD878, &unk_1DD652060);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for LearningResult(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  if (qword_1ECCDB118 != -1)
  {
    OUTLINED_FUNCTION_6_40(&qword_1ECCDB118);
  }

  OUTLINED_FUNCTION_38_11();
  if (v12)
  {
    v13 = OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_unusedPrediction;
    swift_beginAccess();
    sub_1DD4B69D8(v1 + v13, v6, &qword_1ECCDD878, &unk_1DD652060);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1DD390754(v6, &qword_1ECCDD878, &unk_1DD652060);
    }

    else
    {
      OUTLINED_FUNCTION_3_43();
      v18 = OUTLINED_FUNCTION_5_9();
      sub_1DD4B6BD0(v18, v19, v20);
      if (*(v11 + *(v7 + 20) + 8))
      {
        sub_1DD4B47A4(3);
        __swift_project_boxed_opaque_existential_1((v1 + 176), *(v1 + 200));
        sub_1DD510844();
      }

      OUTLINED_FUNCTION_4_40();
      sub_1DD4B6238();
    }
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v14 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v14, qword_1ECD0DDF0);
    v21 = sub_1DD63F9D8();
    sub_1DD640368();
    OUTLINED_FUNCTION_21_18();
    if (os_log_type_enabled(v21, v15))
    {
      v16 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v16);
      OUTLINED_FUNCTION_48_11(&dword_1DD38D000, v21, v2, "DisambiguationEntityResolution: Skipping model evaluation emission because D&U not allowed.");
      OUTLINED_FUNCTION_19_0();
    }

    v17 = v21;
  }
}

uint64_t sub_1DD4B44AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD4B44D0, 0, 0);
}

uint64_t sub_1DD4B44D0(__n128 a1)
{
  v16 = v1;
  v2 = v1[4];
  v3 = v2[2];
  v4 = v2[3];
  if (sub_1DD62886C(v3, v4, v2[10]))
  {
    __swift_project_boxed_opaque_existential_1((v1[4] + 40), *(v1[4] + 64));
    v5 = swift_task_alloc();
    v1[5] = v5;
    *v5 = v1;
    v5[1] = sub_1DD4B46C4;
    v7 = v1[2];
    v6 = v1[3];

    return sub_1DD4F88F4(v7, v6);
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v9 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v9, qword_1ECD0DDF0);

    v10 = sub_1DD63F9D8();
    v11 = sub_1DD640368();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_54();
      v13 = OUTLINED_FUNCTION_62();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1DD39565C(v3, v4, &v15);
      _os_log_impl(&dword_1DD38D000, v10, v11, "Unsupported use case %s, not storing.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    OUTLINED_FUNCTION_26();

    return v14();
  }
}

uint64_t sub_1DD4B46C4()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  v1 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v2 = v1;

  OUTLINED_FUNCTION_26();

  return v3();
}

void sub_1DD4B47A4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (qword_1ECCDB118 != -1)
  {
    OUTLINED_FUNCTION_6_40(&qword_1ECCDB118);
  }

  if (byte_1ECD0DE38 == 1)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v4, qword_1ECD0DDF0);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640368();
    if (OUTLINED_FUNCTION_9_0(v6))
    {
      v7 = OUTLINED_FUNCTION_54();
      v8 = OUTLINED_FUNCTION_62();
      v21[0] = v8;
      *v7 = 136315138;
      v9 = "92-A728-FDC9D43DEDB6";
      v10 = v8;
      switch(v3)
      {
        case OS_LOG_TYPE_INFO:
          v11 = "23B24C08-F87F-4992-A728-FDC9D43DEDB6";
          goto LABEL_18;
        case OS_LOG_TYPE_DEBUG:
          v11 = "28AD56FC-E9DA-11ED-A05B-0242AC120003";
          goto LABEL_18;
        case OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO:
          v11 = "920A9A12-BBD0-42FB-A11C-7B1AE2C709B4";
LABEL_18:
          v9 = (v11 - 32);
          break;
        default:
          break;
      }

      v15 = sub_1DD39565C(0xD000000000000024, v9 | 0x8000000000000000, v21);

      *(v7 + 4) = v15;
      OUTLINED_FUNCTION_44_9(&dword_1DD38D000, v5, v6, "DisambiguationEntityResolution: Emitting Triggered Logging for: %s", oslog);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_25_12();
    }

    sub_1DD4B69D8(v2 + OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_triggerLogger, v21, &qword_1ECCDC250, &qword_1DD645B10);
    if (v22)
    {
      __swift_project_boxed_opaque_existential_1(v21, v22);
      sub_1DD63F488();
      if (sub_1DD63F468())
      {
        sub_1DD63F448();

        v16 = sub_1DD63F738();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      sub_1DD601998(v3, v16, v18);

      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      sub_1DD390754(v21, &qword_1ECCDC250, &qword_1DD645B10);
    }
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v12 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v12, qword_1ECD0DDF0);
    osloga = sub_1DD63F9D8();
    sub_1DD640368();
    OUTLINED_FUNCTION_21_18();
    if (os_log_type_enabled(osloga, v13))
    {
      v14 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v14);
      OUTLINED_FUNCTION_48_11(&dword_1DD38D000, osloga, v3, "DisambiguationEntityResolution: Skipping trigger logging because D&U not allowed.");
      OUTLINED_FUNCTION_19_0();
    }
  }
}

void *DisambiguationEntityResolution.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_unusedPrediction, &qword_1ECCDD878, &unk_1DD652060);
  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_triggerLogger, &qword_1ECCDC250, &qword_1DD645B10);
  return v0;
}

uint64_t DisambiguationEntityResolution.__deallocating_deinit()
{
  DisambiguationEntityResolution.deinit();

  return swift_deallocClassInstance();
}

void *sub_1DD4B4C48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = v4;
  v3[5] = v5;
  if (*(v5 + 16) == *(v4 + 16))
  {

    swift_bridgeObjectRetain_n();
    v6 = sub_1DD63FC88();
    v7 = 0;
    v8 = 0;
    v28 = v4;
    v29 = *(v5 + 16);
    v27 = v5;
    while (1)
    {
      if (v29 == v8)
      {
        swift_bridgeObjectRelease_n();

        goto LABEL_17;
      }

      if (v8 >= *(v5 + 16))
      {
        break;
      }

      if (v8 >= *(v4 + 16))
      {
        goto LABEL_19;
      }

      v30 = v8;
      v10 = *(v5 + v7 + 32);
      v9 = *(v5 + v7 + 40);
      v11 = v7;
      v12 = *(v4 + v7 + 32);
      v13 = *(v4 + v7 + 40);

      swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_1DD3978DC();
      if (__OFADD__(v6[2], (v15 & 1) == 0))
      {
        goto LABEL_20;
      }

      v16 = v14;
      v17 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC328, &qword_1DD6521F0);
      if (sub_1DD640A08())
      {
        v18 = sub_1DD3978DC();
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_22;
        }

        v16 = v18;
      }

      if (v17)
      {
        v20 = (v6[7] + 16 * v16);
        *v20 = v12;
        v20[1] = v13;
      }

      else
      {
        v6[(v16 >> 6) + 8] |= 1 << v16;
        v21 = (v6[6] + 16 * v16);
        *v21 = v10;
        v21[1] = v9;
        v22 = (v6[7] + 16 * v16);
        *v22 = v12;
        v22[1] = v13;
        v23 = v6[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_21;
        }

        v6[2] = v25;
      }

      v7 = v11 + 16;
      v8 = v30 + 1;
      v5 = v27;
      v4 = v28;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_1DD640D58();
    __break(1u);
  }

  else
  {
    v6 = sub_1DD63FC88();
LABEL_17:
    v3[6] = v6;
    return v3;
  }

  return result;
}

void sub_1DD4B4EBC()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD63D9E8();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v94 = v10 - v9;
  OUTLINED_FUNCTION_6_2();
  v11 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v93 = v16 - v15;
  OUTLINED_FUNCTION_6_2();
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v18 = *v2;
  v95 = v2[3];
  v96 = v2[4];
  if (!*(v2 + 16))
  {
    v32 = v4;
    if ((v18 & 0x8000000000000000) == 0 && v18 < *(v0[4] + 16))
    {
      v33 = v13;
      v98 = v0[3];
      v101 = v0[2];

      sub_1DD63D0E8();
      v91 = sub_1DD63D098();
      v85 = v34;
      v35 = OUTLINED_FUNCTION_39_10();
      v36(v35);
      sub_1DD63D068();
      v88 = v5;
      v28 = type metadata accessor for LearnedDisambiguation(0);
      (*(v13 + 16))(v4 + v28[6], v93, v11);
      sub_1DD4F3F88();
      v38 = v37;
      sub_1DD63FE58();

      OUTLINED_FUNCTION_15_0();
      sub_1DD63D9F8();
      v39 = sub_1DD63D9D8();
      (*(v7 + 8))(v94, v88);
      (*(v33 + 8))(v93, v11);
      *v32 = v101;
      v32[1] = v98;
      v32[2] = v91;
      v32[3] = v85;
      *(v32 + v28[7]) = v38;
      *(v32 + v28[8]) = v39;
LABEL_16:
      v54 = (v32 + v28[9]);
      *v54 = v95;
      v54[1] = v96;
      OUTLINED_FUNCTION_41_10((v32 + v28[10]));
      goto LABEL_17;
    }

LABEL_23:
    type metadata accessor for LearnedDisambiguation(0);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_17();

    __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
    return;
  }

  v90 = v13;
  if (*(v2 + 16) != 1)
  {
    v83 = v11;
    v86 = v4;
    v89 = v5;
    v40 = 0;
    v41 = v0[4];
    v99 = v41;
    v102 = *(v41 + 16);
    for (i = v41 + 40; ; i += 16)
    {
      if (v102 == v40)
      {
        type metadata accessor for LearnedDisambiguation(0);
        OUTLINED_FUNCTION_65_0();
        goto LABEL_18;
      }

      if (v40 >= *(v99 + 16))
      {
        break;
      }

      sub_1DD3B7F10();

      if (!sub_1DD640688())
      {
        v103 = v0[2];
        v82 = v0[3];

        sub_1DD63D0E8();
        v47 = sub_1DD63D098();
        v80 = v48;
        v81 = v47;
        v49 = OUTLINED_FUNCTION_39_10();
        v50(v49);
        sub_1DD63D068();
        v28 = type metadata accessor for LearnedDisambiguation(0);
        v32 = v86;
        (*(v13 + 16))(v86 + v28[6], v93, v83);
        sub_1DD4F3F88();
        v52 = v51;
        sub_1DD63FE58();

        sub_1DD63D9F8();
        v53 = sub_1DD63D9D8();
        (*(v7 + 8))(v94, v89);
        (*(v90 + 8))(v93, v83);
        *v86 = v103;
        v86[1] = v82;
        v86[2] = v81;
        v86[3] = v80;
        *(v86 + v28[7]) = v52;
        *(v86 + v28[8]) = v53;
        goto LABEL_16;
      }

      ++v40;
    }

    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_0_78();
    swift_once();
LABEL_20:
    v55 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v55, qword_1ECD0DDF0);
    v56 = OUTLINED_FUNCTION_15_1();
    sub_1DD4B69A0(v56, v57, 1u);

    v58 = sub_1DD63F9D8();
    v59 = sub_1DD640378();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      swift_slowAlloc();
      *v60 = 136315394;
      v61 = OUTLINED_FUNCTION_15_1();
      v64 = sub_1DD39565C(v61, v62, v63);
      v65 = OUTLINED_FUNCTION_15_1();
      sub_1DD4B69BC(v65, v66, 1u);
      *(v60 + 4) = v64;
      *(v60 + 12) = 2080;
      v67 = OUTLINED_FUNCTION_5_9();
      v70 = sub_1DD39565C(v67, v68, v69);

      *(v60 + 14) = v70;
      OUTLINED_FUNCTION_57_10(&dword_1DD38D000, v71, v72, "DisambiguationEntityResolution: PervasiveEntityResolution No match to identifier [%s] in %s.");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      v73 = OUTLINED_FUNCTION_15_1();
      sub_1DD4B69BC(v73, v74, 1u);
    }

    goto LABEL_23;
  }

  v19 = v0[6];
  v20 = OUTLINED_FUNCTION_15_1();
  sub_1DD59B780(v20, v21, v19);
  if (!v22)
  {
    sub_1DD63FC68();
    if (qword_1ECCDB0E0 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v97 = v0[3];
  v100 = v0[2];

  sub_1DD63D0E8();
  v23 = sub_1DD63D098();
  v84 = v24;
  v87 = v23;
  v25 = OUTLINED_FUNCTION_39_10();
  v26(v25);
  sub_1DD63D068();
  v27 = v5;
  v28 = type metadata accessor for LearnedDisambiguation(0);
  (*(v13 + 16))(v4 + v28[6], v93, v11);
  sub_1DD4F3F88();
  v92 = v29;
  sub_1DD63FE58();

  OUTLINED_FUNCTION_15_0();
  sub_1DD63D9F8();
  v30 = sub_1DD63D9D8();
  (*(v7 + 8))(v94, v27);
  (*(v90 + 8))(v93, v11);
  *v4 = v100;
  v4[1] = v97;
  v4[2] = v87;
  v4[3] = v84;
  *(v4 + v28[7]) = v92;
  *(v4 + v28[8]) = v30;
  v31 = (v4 + v28[9]);
  *v31 = v95;
  v31[1] = v96;
  OUTLINED_FUNCTION_41_10((v4 + v28[10]));
LABEL_17:
  OUTLINED_FUNCTION_10_15();
  v46 = v28;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4B56C8()
{

  return v0;
}

uint64_t sub_1DD4B5708()
{
  sub_1DD4B56C8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DisambiguationEntityResolution(uint64_t a1)
{
  result = qword_1ECCDD898;
  if (!qword_1ECCDD898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD4B5788(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD4B5880;

  return v6(a1);
}

uint64_t sub_1DD4B5880()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  v1 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v2 = v1;

  OUTLINED_FUNCTION_26();

  return v3();
}

uint64_t sub_1DD4B5964(uint64_t a1)
{
  v84 = type metadata accessor for PervasiveConfiguration(0);
  v85 = &off_1F58BD0C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
  sub_1DD4B6BD0(a1, boxed_opaque_existential_1, type metadata accessor for PervasiveConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD652040;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001DD66DB90;
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x80000001DD66DBB0;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x80000001DD66DBD0;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x80000001DD66DBF0;
  *(inited + 96) = 0xD000000000000014;
  *(inited + 104) = 0x80000001DD66DC10;
  v81 = MEMORY[0x1E69E7CC0];
  sub_1DD42A2D4(0, 5, 0, v4, v5, v6, v7);
  v8 = v81;
  v13 = sub_1DD63FE58();
  v15 = v14;
  v17 = *(v81 + 16);
  v16 = *(v81 + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1DD42A2D4(v16 > 1, v17 + 1, 1, v9, v10, v11, v12);
    v8 = v81;
  }

  *(v8 + 16) = v17 + 1;
  v18 = v8 + 16 * v17;
  *(v18 + 32) = v13;
  *(v18 + 40) = v15;
  v23 = sub_1DD63FE58();
  v25 = v24;
  v27 = *(v8 + 16);
  v26 = *(v8 + 24);
  if (v27 >= v26 >> 1)
  {
    sub_1DD42A2D4(v26 > 1, v27 + 1, 1, v19, v20, v21, v22);
    v8 = v81;
  }

  *(v8 + 16) = v27 + 1;
  v28 = v8 + 16 * v27;
  *(v28 + 32) = v23;
  *(v28 + 40) = v25;
  v33 = sub_1DD63FE58();
  v35 = v34;
  v37 = *(v8 + 16);
  v36 = *(v8 + 24);
  if (v37 >= v36 >> 1)
  {
    sub_1DD42A2D4(v36 > 1, v37 + 1, 1, v29, v30, v31, v32);
  }

  v38 = v81;
  *(v81 + 16) = v37 + 1;
  v39 = v81 + 16 * v37;
  *(v39 + 32) = v33;
  *(v39 + 40) = v35;
  v44 = sub_1DD63FE58();
  v46 = v45;
  v48 = *(v81 + 16);
  v47 = *(v81 + 24);
  if (v48 >= v47 >> 1)
  {
    sub_1DD42A2D4(v47 > 1, v48 + 1, 1, v40, v41, v42, v43);
    v38 = v81;
  }

  *(v38 + 16) = v48 + 1;
  v49 = v38 + 16 * v48;
  *(v49 + 32) = v44;
  *(v49 + 40) = v46;
  v54 = sub_1DD63FE58();
  v56 = v55;
  v58 = *(v38 + 16);
  v57 = *(v38 + 24);
  if (v58 >= v57 >> 1)
  {
    sub_1DD42A2D4(v57 > 1, v58 + 1, 1, v50, v51, v52, v53);
    v38 = v81;
  }

  *(v38 + 16) = v58 + 1;
  v59 = v38 + 16 * v58;
  *(v59 + 32) = v54;
  *(v59 + 40) = v56;
  swift_setDeallocating();
  sub_1DD46CAFC();
  v60 = __swift_project_boxed_opaque_existential_1(v83, v84);
  v61 = v60[4] == 5000257 && v60[5] == 0xE300000000000000;
  if (v61 || (sub_1DD640CD8() & 1) != 0)
  {
    v62 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v83, v84);
    sub_1DD3B7F10();
    v68 = sub_1DD640638();
    v69 = *(v68 + 16);
    if (v69)
    {
      v82 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4(0, v69, 0, v64, v65, v66, v67);
      v62 = v82;
      v70 = v68 + 40;
      do
      {
        v75 = sub_1DD63FE58();
        v77 = v76;
        v79 = *(v82 + 16);
        v78 = *(v82 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_1DD42A2D4(v78 > 1, v79 + 1, 1, v71, v72, v73, v74);
        }

        *(v82 + 16) = v79 + 1;
        v80 = v82 + 16 * v79;
        *(v80 + 32) = v75;
        *(v80 + 40) = v77;
        v70 += 16;
        --v69;
      }

      while (v69);
    }

    else
    {

      v62 = MEMORY[0x1E69E7CC0];
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v83);
  return v62;
}

void *sub_1DD4B5DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v43[3] = type metadata accessor for PervasiveConfiguration(0);
  v43[4] = &off_1F58BD0C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  sub_1DD4B6BD0(a3, boxed_opaque_existential_1, type metadata accessor for PervasiveConfiguration);
  v42[3] = type metadata accessor for LearnedDisambiguationPersistentStorage(0);
  v42[4] = &off_1F58BA090;
  v17 = __swift_allocate_boxed_opaque_existential_1(v42);
  sub_1DD4B6BD0(a4, v17, type metadata accessor for LearnedDisambiguationPersistentStorage);
  v41[3] = type metadata accessor for LoggingDataEmitter();
  v41[4] = &off_1F58BAF78;
  v41[0] = a6;
  v40[3] = type metadata accessor for ExperimentationTriggerLogger();
  v40[4] = &off_1F58C3DB8;
  v40[0] = a7;
  a8[4] = 0;
  v18 = OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_unusedPrediction;
  v19 = type metadata accessor for LearningResult(0);
  __swift_storeEnumTagSinglePayload(a8 + v18, 1, 1, v19);
  a8[2] = a1;
  a8[3] = a2;
  sub_1DD3C2388(v42, (a8 + 5));
  sub_1DD3C2388(v43, v39);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v39, v39[3]);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v39[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v21);
  v25 = sub_1DD4B5964(v23);
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_1(v39);
  a8[10] = v25;
  a8[11] = v27;
  sub_1DD3C2388(a5, (a8 + 12));
  sub_1DD3C2388(v43, (a8 + 17));
  sub_1DD3C2388(v41, (a8 + 22));
  sub_1DD3C2388(v40, a8 + OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_triggerLogger);
  if (qword_1ECCDB0E0 != -1)
  {
    swift_once();
  }

  v28 = sub_1DD63F9F8();
  __swift_project_value_buffer(v28, qword_1ECD0DDF0);

  v29 = sub_1DD63F9D8();
  v30 = sub_1DD640368();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39[0] = v32;
    *v31 = 136315138;

    v33 = sub_1DD4B1110();
    v35 = v34;

    v36 = sub_1DD39565C(v33, v35, v39);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1DD38D000, v29, v30, "DisambiguationEntityResolution: processing with %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1E12B3DA0](v32, -1, -1);
    MEMORY[0x1E12B3DA0](v31, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return a8;
}

uint64_t sub_1DD4B6158()
{
  v1 = OUTLINED_FUNCTION_43();
  v2 = type metadata accessor for LearningResult(v1);
  OUTLINED_FUNCTION_3(v2);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12_1(v5);
  *v6 = v7;
  v6[1] = sub_1DD4B6C2C;
  v8 = OUTLINED_FUNCTION_13_25();

  return sub_1DD4B23FC(v8, v9, v3, v4, v10);
}

uint64_t sub_1DD4B6238()
{
  v1 = OUTLINED_FUNCTION_43();
  v2(v1);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DD4B628C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD878, &unk_1DD652060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4B62FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_15_0();
  v5(v4);
  return a2;
}

uint64_t sub_1DD4B6358()
{
  v2 = OUTLINED_FUNCTION_43();
  type metadata accessor for LearnedDisambiguation(v2);
  OUTLINED_FUNCTION_43_12();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_1(v3);
  *v4 = v5;
  v4[1] = sub_1DD4B6C2C;
  v6 = OUTLINED_FUNCTION_13_25();

  return sub_1DD4B2474(v6, v7, v0, v8, v1);
}

uint64_t sub_1DD4B6454(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v1 = (type metadata accessor for LearnedDisambiguation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[8];
  sub_1DD63D078();
  OUTLINED_FUNCTION_7();
  (*(v6 + 8))(v0 + v3 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1DD4B65D8()
{
  v2 = OUTLINED_FUNCTION_43();
  type metadata accessor for LearnedDisambiguation(v2);
  OUTLINED_FUNCTION_43_12();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_1(v3);
  *v4 = v5;
  v4[1] = sub_1DD4B66D4;
  v6 = OUTLINED_FUNCTION_13_25();

  return sub_1DD4B32F4(v6, v7, v0, v8, v1);
}

uint64_t sub_1DD4B66D4()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  v1 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v2 = v1;

  OUTLINED_FUNCTION_26();

  return v3();
}

void sub_1DD4B67BC(uint64_t a1)
{
  sub_1DD4B6948(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DisambiguationEntityResolution.learnedSelection(from:)()
{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 232))();
}

void sub_1DD4B6948(uint64_t a1)
{
  if (!qword_1ECCDD8A8)
  {
    type metadata accessor for LearningResult(255);
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCDD8A8);
    }
  }
}

uint64_t sub_1DD4B69A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_1DD4B69BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_1DD4B69D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return a2;
}

uint64_t sub_1DD4B6A34()
{
  OUTLINED_FUNCTION_44_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_1(v0);
  *v1 = v2;
  v1[1] = sub_1DD4B6C2C;
  v3 = OUTLINED_FUNCTION_13_25();

  return v4(v3);
}

uint64_t sub_1DD4B6AD8()
{
  OUTLINED_FUNCTION_44_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_1(v0);
  *v1 = v2;
  v1[1] = sub_1DD4B66D4;
  v3 = OUTLINED_FUNCTION_13_25();

  return v4(v3);
}

unint64_t sub_1DD4B6B7C()
{
  result = qword_1ECCDD8B0;
  if (!qword_1ECCDD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD8B0);
  }

  return result;
}

uint64_t sub_1DD4B6BD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_15_0();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_22_17()
{

  return sub_1DD4B6238();
}

BOOL OUTLINED_FUNCTION_29_15(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_41_10(void *a1@<X8>)
{
  a1[1] = -1;
  a1[2] = -1;
  *a1 = -1;
}

void OUTLINED_FUNCTION_50_11(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

double OUTLINED_FUNCTION_55_7()
{

  swift_beginAccess();
  return result;
}

void OUTLINED_FUNCTION_57_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_58_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_1DD4B6E0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD63D078();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD6404F8();
  if (qword_1EE1625A8)
  {
    v5 = qword_1EE1625A8;
  }

  else
  {
    sub_1DD63CF58();
    swift_allocObject();
    v5 = sub_1DD4D67BC(1, v4);
    qword_1EE1625A8 = v5;
  }

  sub_1DD640508();
  return v5;
}

uint64_t TerminalElement.Duration.toInterval()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1DD63DF18();
  v5 = v4;
  sub_1DD63DF08();
  v6 = sub_1DD63E118();
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_1DD49C75C(v2);
    v7 = 13;
  }

  else
  {
    sub_1DD548A5C();
    (*(*(v6 - 8) + 8))(v2, v6);
    v7 = v11[1];
  }

  if (v5)
  {
    v3 = 0;
  }

  v11[0] = v7;
  v10 = 20;
  type metadata accessor for DateTime.Interval();
  swift_allocObject();
  return DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(v3, 0, v11, &v10);
}

uint64_t sub_1DD4B7048(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  result = 0;
  switch(*(a1 + 25))
  {
    case 1:
      v3 = OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6(v3);
      OUTLINED_FUNCTION_1_59();
      v6 = 5;
      goto LABEL_11;
    case 4:
      v8 = OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6(v8);
      OUTLINED_FUNCTION_1_59();
      v6 = 4;
      goto LABEL_11;
    case 6:
      v10 = OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6(v10);
      OUTLINED_FUNCTION_1_59();
      v6 = 2;
      goto LABEL_11;
    case 7:
      v11 = OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6(v11);
      OUTLINED_FUNCTION_1_59();
      v6 = 9;
      goto LABEL_11;
    case 0xA:
      v12 = OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6(v12);
      OUTLINED_FUNCTION_1_59();
      v6 = 1;
      goto LABEL_11;
    case 0xB:
      v7 = OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6(v7);
      OUTLINED_FUNCTION_1_59();
      v6 = 7;
      goto LABEL_11;
    case 0xC:
      v9 = OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6(v9);
      OUTLINED_FUNCTION_1_59();
      v6 = 11;
LABEL_11:
      result = sub_1DD48DFB4(v6, v4, 2, 2, v5, 1, 1, 0);
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DD4B7190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v130 = a3;
  v107 = a1;
  v141 = sub_1DD63C868();
  OUTLINED_FUNCTION_0();
  v111 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v101 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v101 - v13;
  v15 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_0();
  v143 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v101 - v21;
  v23 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v145 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v101 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v101 - v32;
  sub_1DD63D2B8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v34);
  if (*(v107 + 48))
  {
    return;
  }

  v134 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v37;
  v127 = v35;
  v116 = v33;
  v135 = v30;
  v117 = v27;
  v128 = v23;
  v129 = v22;
  v144 = v15;
  v136 = v14;
  v38 = *(v107 + 24);
  v39 = MEMORY[0x1E69E7CD0];
  v147 = MEMORY[0x1E69E7CD0];
  v40 = *a6;
  v41 = sub_1DD3CC020();
  v42 = a6;
  v105 = a6;
  v110 = v40;
  v109 = v41;
  if (v41)
  {
    v43 = v38;
    v133 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    v108 = v40 & 0xC000000000000001;
    v103 = v40 & 0xFFFFFFFFFFFFFF8;
    v102 = v40 + 32;
    v104 = *&v38 & 0x7FF0000000000000;
    v44 = 0;
    v125 = v43;
    v124 = v106 + 16;
    v123 = (v143 + 16);
    v140 = (v111 + 16);
    v138 = v111 + 8;
    v122 = v106 + 8;
    v121 = (v145 + 8);
    v120 = v143 + 8;
    v115 = v145 + 32;
    v114 = v145 + 16;
    v45 = v141;
    v46 = v130;
    v47 = v144;
    v48 = v42;
    v126 = v19;
    while (1)
    {
      if (v108)
      {
        v49 = MEMORY[0x1E12B2C10](v44, v40);
      }

      else
      {
        if (v44 >= *(v103 + 16))
        {
          goto LABEL_55;
        }

        v49 = *(v102 + 8 * v44);
      }

      if (__OFADD__(v44++, 1))
      {
        break;
      }

      v51 = sub_1DD48E73C();
      if (*(v51 + 16))
      {
        v52 = v106;
        if (v104 == 0x7FF0000000000000)
        {
          goto LABEL_52;
        }

        if (v43 <= -9.22337204e18)
        {
          goto LABEL_53;
        }

        if (v43 >= 9.22337204e18)
        {
          goto LABEL_54;
        }

        v145 = *(v51 + 16);
        v142 = v49;
        v113 = v44;
        v53 = OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval;
        v54 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v112 = v51;
        v55 = v51 + v54;
        v56 = v46;
        swift_beginAccess();
        v57 = *(v52 + 72);
        v131 = *(v52 + 16);
        v132 = v57;
        v58 = v53;
        v59 = v134;
        v60 = v135;
        v61 = v140;
        v139 = v53;
        v62 = v45;
        do
        {
          v143 = v55;
          v63 = v127;
          v64 = v59;
          v131();
          (*v123)(v19, v56 + v133, v47);
          v65 = v136;
          v137 = *v61;
          v137(v136, v142 + v58, v62);
          sub_1DD63C848();
          v66 = *v138;
          (*v138)(v65, v62);
          v67 = v129;
          sub_1DD63D268();
          v68 = v67;
          OUTLINED_FUNCTION_16_0();
          v69(v64, v63);
          v70 = v62;
          v71 = *v121;
          v72 = v128;
          (*v121)(v60, v128);
          OUTLINED_FUNCTION_16_0();
          v73(v19, v144);
          if (__swift_getEnumTagSinglePayload(v68, 1, v72) == 1)
          {
            sub_1DD4AF0C8(v68);
          }

          else
          {
            OUTLINED_FUNCTION_16_0();
            v74 = v116;
            v75(v116, v68, v72);
            v76 = v118;
            v137(v118, v142 + v139, v70);
            sub_1DD63C848();
            v137 = v71;
            v66(v76, v70);
            OUTLINED_FUNCTION_16_0();
            v77(v117, v74, v72);
            sub_1DD63C838();
            sub_1DD56D300();
            v66(v65, v141);
            (v137)(v74, v72);
          }

          v47 = v144;
          v55 = v143 + v132;
          v78 = v145-- == 1;
          v61 = v140;
          v62 = v141;
          v56 = v130;
          v19 = v126;
          v59 = v134;
          v60 = v135;
          v58 = v139;
        }

        while (!v78);
        v46 = v130;
        v45 = v141;

        v48 = v105;
        v44 = v113;
      }

      else
      {
      }

      v40 = v110;
      if (v44 == v109)
      {
        v42 = v48;
        v39 = v147;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    v79 = *(v39 + 16);
    if (!v79)
    {

      v100 = MEMORY[0x1E69E7CC0];
LABEL_43:
      *v42 = v100;
      return;
    }

    v146 = MEMORY[0x1E69E7CC0];
    sub_1DD640988();
    v82 = sub_1DD55B198();
    v83 = 0;
    v145 = v39 + 56;
    v84 = v111;
    v139 = v111 + 8;
    v140 = (v111 + 16);
    v137 = v79;
    v138 = v80;
    v135 = (v39 + 64);
    while ((v82 & 0x8000000000000000) == 0 && v82 < 1 << *(v39 + 32))
    {
      v85 = v82 >> 6;
      if ((*(v145 + 8 * (v82 >> 6)) & (1 << v82)) == 0)
      {
        goto LABEL_47;
      }

      if (*(v39 + 36) != v80)
      {
        goto LABEL_48;
      }

      v142 = v83;
      v143 = v80;
      v86 = *(v39 + 48) + *(v84 + 72) * v82;
      v87 = *(v84 + 16);
      v88 = v141;
      LODWORD(v144) = v81;
      v89 = v119;
      v87(v136, v86, v141);
      v87(v89, v136, v88);
      type metadata accessor for RecurringDateInterval(0);
      swift_allocObject();
      sub_1DD57F5F8(v89, 0);
      (*(v84 + 8))(v136, v88);
      sub_1DD640958();
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      if (v144)
      {
        goto LABEL_56;
      }

      v90 = 1 << *(v39 + 32);
      if (v82 >= v90)
      {
        goto LABEL_49;
      }

      v91 = *(v145 + 8 * v85);
      if ((v91 & (1 << v82)) == 0)
      {
        goto LABEL_50;
      }

      if (*(v39 + 36) != v143)
      {
        goto LABEL_51;
      }

      v92 = v91 & (-2 << (v82 & 0x3F));
      if (v92)
      {
        v90 = __clz(__rbit64(v92)) | v82 & 0x7FFFFFFFFFFFFFC0;
        v93 = v137;
        v94 = v142;
      }

      else
      {
        v95 = v85 << 6;
        v96 = v85 + 1;
        v97 = &v135[8 * v85];
        v93 = v137;
        v94 = v142;
        while (v96 < (v90 + 63) >> 6)
        {
          v99 = *v97++;
          v98 = v99;
          v95 += 64;
          ++v96;
          if (v99)
          {
            sub_1DD3AA558(v82, v143, 0);
            v90 = __clz(__rbit64(v98)) + v95;
            goto LABEL_40;
          }
        }

        sub_1DD3AA558(v82, v143, 0);
      }

LABEL_40:
      v81 = 0;
      v83 = (v94 + 1);
      v82 = v90;
      v80 = v138;
      v84 = v111;
      if (v83 == v93)
      {

        v100 = v146;
        v42 = v105;
        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
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
}

uint64_t sub_1DD4B7CFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v3 = 1;
  v2 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(5, 0, 0, &v3, 7, 0, 0, &v2);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD4B7DCC(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1DD4BA758(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

unint64_t sub_1DD4B7E68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_1DD4B7EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1DD4B7F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LearnedDisambiguation(0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    sub_1DD4BC018(v14, &v17 - v11);
    for (i = 1; v13 != i; ++i)
    {
      sub_1DD4BC018(v14 + *(v6 + 72) * i, v9);
      if (sub_1DD63CFC8())
      {
        sub_1DD4BC07C(v12);
        sub_1DD4BC0D8(v9, v12, type metadata accessor for LearnedDisambiguation);
      }

      else
      {
        sub_1DD4BC07C(v9);
      }
    }

    sub_1DD4BC0D8(v12, a2, type metadata accessor for LearnedDisambiguation);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t (*sub_1DD4B80D0(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1DD4BB93C(v6, a2, a3);
  return sub_1DD4B8144;
}

void sub_1DD4B8144(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1DD4B8190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_1DD4B81E8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (v7 < result)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_1DD4B822C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  v59 = a4;
  v66 = a3;
  v10 = *(a1 + 16);
  v55 = a2;
  v56 = v10;
  if (v10)
  {
    v11 = 0;
    v58 = *(v6 + 24);
    v12 = a1 + 32;
    v13 = a5;
    v14 = MEMORY[0x1E69E7CC0];
    v15 = a6;
    v54 = a1 + 32;
    while (2)
    {
      v16 = (v12 + 16 * v11);
      v57 = v11 + 1;
      v17 = *v16;
      v18 = v16[1];
      v19 = sub_1DD63FE58();
      v21 = v20;
      v22 = v59[3];
      v23 = v59[4];
      __swift_project_boxed_opaque_existential_1(v59, v22);

      v8 = sub_1DD5E8CD4(v17, v18, v22, v23);

      v64 = 0;
      v65 = 0xE000000000000000;
      v24 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v24 = v19 & 0xFFFFFFFFFFFFLL;
      }

      v60 = v19;
      v61 = v21;
      v62 = 0;
      v63 = v24;

      while (1)
      {
        v25 = sub_1DD63FF88();
        if (!v26)
        {
          break;
        }

        v27 = v25;
        v28 = v26;
        if ((sub_1DD63FD38() & 1) == 0)
        {
          MEMORY[0x1E12B2250](v27, v28);
        }
      }

      v9 = &v53;
      v31 = v64;
      v30 = v65;
      v60 = v64;
      v61 = v65;
      MEMORY[0x1EEE9AC00](v29);
      v32 = sub_1DD450388();

      if (v32)
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD3BE2A4();
          v8 = v44;
        }

        v32 = *(v8 + 16);
        if (v32 >= *(v8 + 24) >> 1)
        {
          sub_1DD3BE2A4();
          v8 = v45;
        }

        *(v8 + 16) = v32 + 1;
        v33 = v8 + 16 * v32;
        *(v33 + 32) = v31;
        *(v33 + 40) = v30;
      }

      v34 = sub_1DD4BA368(v8);
      if (v7)
      {

        return v32;
      }

      v6 = v34;

      v35 = sub_1DD4B8A94(v6);

      v36 = 0;
      v37 = *(v35 + 16);
      while (v37 != v36)
      {
        if (v36 >= *(v35 + 16))
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v6 = sub_1DD4B9A34(v38, v66, v13, v15);

        v8 = *(v6 + 16);
        v39 = *(v14 + 16);
        v9 = v39 + v8;
        if (__OFADD__(v39, v8))
        {
          goto LABEL_48;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v9 > *(v14 + 24) >> 1)
        {
          sub_1DD3BEAAC();
          v14 = v40;
        }

        if (*(v6 + 16))
        {
          if ((*(v14 + 24) >> 1) - *(v14 + 16) < v8)
          {
            goto LABEL_50;
          }

          swift_arrayInitWithCopy();

          if (v8)
          {
            v41 = *(v14 + 16);
            v42 = __OFADD__(v41, v8);
            v43 = v41 + v8;
            if (v42)
            {
              goto LABEL_51;
            }

            *(v14 + 16) = v43;
          }
        }

        else
        {

          if (v8)
          {
            goto LABEL_49;
          }
        }

        ++v36;
      }

      v11 = v57;
      v12 = v54;
      v9 = 0xE000000000000000;
      if (v57 != v56)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v32 = sub_1DD4B8718(v14);

  if (*(v32 + 16) > v55)
  {
    if (v55 < 0)
    {
LABEL_52:
      __break(1u);
    }

    else
    {
      v6 = sub_1DD4BF4BC();
      v8 = v46;
      v14 = v47;
      v9 = v48;

      if ((v9 & 1) == 0)
      {
LABEL_38:
        sub_1DD598494(v6, v8, v14, v9);
        v32 = v49;
        swift_unknownObjectRelease();
        return v32;
      }

      sub_1DD640D08();
      swift_unknownObjectRetain_n();
      v50 = swift_dynamicCastClass();
      if (!v50)
      {
        swift_unknownObjectRelease();
        v50 = MEMORY[0x1E69E7CC0];
      }

      v51 = *(v50 + 16);

      if (!__OFSUB__(v9 >> 1, v14))
      {
        if (v51 == (v9 >> 1) - v14)
        {
          v32 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (!v32)
          {
            swift_unknownObjectRelease();
            return MEMORY[0x1E69E7CC0];
          }

          return v32;
        }

LABEL_54:
        swift_unknownObjectRelease_n();
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  return v32;
}

uint64_t sub_1DD4B8718(uint64_t a1)
{
  v85 = sub_1DD63FC88();
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_32;
  }

  v3 = 0;
  v78 = a1 + 32;
  do
  {
    v4 = v78 + 40 * v3;
    v6 = *v4;
    v5 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v9 = *(v4 + 32);
    v88 = v6;
    v89 = v5;
    v90 = v7;
    v91 = v8;
    v92 = v9;
    ++v3;
    v10 = 1 << *(v85 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v85 + 64);
    v13 = (v10 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v14 = 0;
    do
    {
      if (!v12)
      {
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v15 >= v13)
          {

            swift_isUniquelyReferenced_nonNull_native();
            v84[0] = v85;
            sub_1DD3FFA9C();

            goto LABEL_31;
          }

          v12 = *(v85 + 64 + 8 * v15);
          ++v14;
          if (v12)
          {
            v14 = v15;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);

        __break(1u);
        return result;
      }

LABEL_12:
      v16 = (*(v85 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v12)))));
      if (*v16 == v5 && v16[1] == v7)
      {
        break;
      }

      v12 &= v12 - 1;
    }

    while ((sub_1DD640CD8() & 1) == 0);

    sub_1DD59B6F0();
    v18 = sub_1DD4BBD98(v86);
    v22 = OUTLINED_FUNCTION_7_34(v18, v19, v20, v21);
    if (*v23)
    {
      v30 = *&v87;
      if (!v86)
      {
        v30 = 3.4028e38;
      }

      if (v8 < v30)
      {
        v30 = v8;
      }

      *(v23 + 24) = v30;
    }

    v31 = OUTLINED_FUNCTION_13_26(v22, v23, v24, v25, v26, v27, v28, v29, v78, v81, v84[0]);
    v33 = v32(v31);
    v37 = OUTLINED_FUNCTION_7_34(v33, v34, v35, v36);
    if (*v38)
    {

      sub_1DD608684(v39);
      v48 = OUTLINED_FUNCTION_13_26(v40, v41, v42, v43, v44, v45, v46, v47, v79, v82, v84[0]);
      (v37)(v48);
    }

    else
    {

      v61 = OUTLINED_FUNCTION_13_26(v53, v54, v55, v56, v57, v58, v59, v60, v79, v82, v84[0]);
      v49 = (v37)(v61);
    }

    v62 = OUTLINED_FUNCTION_7_34(v49, v50, v51, v52);
    if (!*v63)
    {
      goto LABEL_30;
    }

    v70 = v63[4];
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    if (v71)
    {
      goto LABEL_34;
    }

    v63[4] = v72;
LABEL_30:
    v73 = OUTLINED_FUNCTION_13_26(v62, v63, v64, v65, v66, v67, v68, v69, v80, v83, v84[0]);
    v74(v73);

LABEL_31:
    ;
  }

  while (v3 != v2);
LABEL_32:

  sub_1DD59842C(v75);
  v84[0] = v76;
  sub_1DD4B7DCC(v84, sub_1DD4EC694, &type metadata for RetrievalResult, sub_1DD4BA960, sub_1DD4BA864);
  swift_bridgeObjectRelease_n();
  return v84[0];
}

uint64_t sub_1DD4B8A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1DD42B424(0, v1, 0);
  v4 = 0;
  v5 = v20;
  v18 = v1;
  v19 = a1 + 32;
  do
  {
    v6 = *(v19 + 8 * v4);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v2;

      sub_1DD42B444(0, v7, 0);
      v9 = v2;
      v10 = *(v2 + 16);
      v11 = 32;
      do
      {
        v12 = *(v6 + v11);
        v13 = *(v9 + 24);
        if (v10 >= v13 >> 1)
        {
          sub_1DD42B444(v13 > 1, v10 + 1, 1);
        }

        v14 = v12;
        *(v9 + 16) = v10 + 1;
        *(v9 + 4 * v10 + 32) = v14;
        v11 += 8;
        ++v10;
        --v7;
      }

      while (v7);

      v2 = v8;
      v1 = v18;
    }

    else
    {
      v9 = v2;
    }

    v16 = *(v20 + 16);
    v15 = *(v20 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1DD42B424(v15 > 1, v16 + 1, 1);
    }

    ++v4;
    *(v20 + 16) = v16 + 1;
    *(v20 + 8 * v16 + 32) = v9;
  }

  while (v4 != v1);
  return v5;
}

void sub_1DD4B8C28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v55 - v5;
  v6 = type metadata accessor for InferenceEuclidDebugMetrics(0);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = *(a1 + 16);
  if (HIDWORD(v10))
  {
    __break(1u);
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
    v11 = a1 + 32;
    for (i = v10; i; --i)
    {
      v11 += 40;

      sub_1DD6075D8(v13);
    }

    v14 = v66;
    v15 = MEMORY[0x1E69E7CC0];
    v61 = v10;
    if (v10)
    {
      v66 = MEMORY[0x1E69E7CC0];
      v16 = OUTLINED_FUNCTION_12_25();
      sub_1DD42B444(v16, v17, v18);
      v15 = v66;
      v19 = *(v66 + 16);
      v20 = (a1 + 56);
      v21 = v10;
      do
      {
        v22 = *v20;
        v66 = v15;
        v23 = *(v15 + 24);
        if (v19 >= v23 >> 1)
        {
          v24 = OUTLINED_FUNCTION_10_33(v23);
          sub_1DD42B444(v24, v25, v26);
          v15 = v66;
        }

        *(v15 + 16) = v19 + 1;
        *(v15 + 4 * v19 + 32) = v22;
        v20 += 10;
        ++v19;
        --v21;
      }

      while (v21);
    }

    v27 = sub_1DD63D0F8();
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v27);
    v28 = sub_1DD4B8190(v15);
    v29 = sub_1DD4B7E68(v15);
    sub_1DD4B8FDC(v15);
    v31 = v30;
    v32 = sub_1DD4B90E0(v15);
    v33 = LODWORD(v32);

    v34 = sub_1DD4BA5C0();
    v59 = v35;
    v60 = v34;
    v36 = *(v14 + 16);
    if (v36)
    {
      v56 = v29;
      v57 = v28;
      v58 = a2;
      v66 = MEMORY[0x1E69E7CC0];
      v37 = OUTLINED_FUNCTION_12_25();
      sub_1DD42B478(v37, v38, v39);
      v40 = v66;
      v41 = *(v66 + 16);
      v42 = 32;
      do
      {
        v43 = *(v14 + v42);
        v66 = v40;
        v44 = *(v40 + 24);
        if (v41 >= v44 >> 1)
        {
          v45 = OUTLINED_FUNCTION_10_33(v44);
          sub_1DD42B478(v45, v46, v47);
          v40 = v66;
        }

        *(v40 + 16) = v41 + 1;
        *(v40 + 8 * v41 + 32) = v43;
        v42 += 8;
        ++v41;
        --v36;
      }

      while (v36);

      v28 = v57;
      a2 = v58;
      v29 = v56;
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    LOBYTE(v66) = BYTE4(v28) & 1;
    v65 = BYTE4(v29) & 1;
    v64 = 0;
    v63 = 0;
    v48 = sub_1DD4B9EB8();
    sub_1DD4BA6E8(v62, v9);
    v49 = MEMORY[0x1E69E7CC0];
    *(v9 + v6[5]) = MEMORY[0x1E69E7CC0];
    v50 = v9 + v6[6];
    *v50 = v28 | ((HIDWORD(v28) & 1) << 32);
    *(v50 + 8) = v29 | ((HIDWORD(v29) & 1) << 32);
    *(v50 + 16) = v31;
    *(v50 + 28) = 0;
    *(v50 + 24) = v33;
    *(v50 + 29) = 0;
    v51 = v9 + v6[7];
    v52 = v59;
    *v51 = v60;
    *(v51 + 8) = v52;
    *(v51 + 16) = 0x100000000;
    *(v51 + 28) = 1;
    *(v51 + 24) = 0;
    *(v9 + v6[8]) = v40;
    *(v9 + v6[9]) = 2;
    *(v9 + v6[10]) = v49;
    v53 = v9 + v6[11];
    *v53 = v48;
    *(v53 + 4) = BYTE4(v48) & 1;
    *a2 = 1;
    *(a2 + 4) = v61;
    *(a2 + 8) = 0;
    v54 = type metadata accessor for InferenceEuclidLog(0);
    sub_1DD4BC0D8(v9, a2 + *(v54 + 20), type metadata accessor for InferenceEuclidDebugMetrics);
  }
}

uint64_t sub_1DD4B8FDC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v3 = result;

    sub_1DD4B7DCC(&v3, sub_1DD4EC6AC, MEMORY[0x1E69E6448], sub_1DD4BAEDC, sub_1DD4BA904);
    v2 = *(v3 + 16);
    if (v1)
    {
      if (v1 >> 1 < v2)
      {
      }
    }

    else
    {
      if (v1 >> 1 < v2)
      {
      }

      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

double sub_1DD4B90E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0;
  result = 0.0;
  do
  {
    v4 = *(a1 + 32 + 4 * v2++);
    *&result = *&result + v4;
  }

  while (v1 != v2);
  *&result = *&result / v1;
  return result;
}

uint64_t sub_1DD4B911C()
{

  return v0;
}

uint64_t sub_1DD4B9144()
{
  sub_1DD4B911C();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4B9194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79546C616E676973 && a2 == 0xEA00000000006570;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001DD66DE00 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1682531437 && a2 == 0xE400000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7361696C61 && a2 == 0xE500000000000000)
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

unint64_t sub_1DD4B9348(char a1)
{
  result = 0x7954797469746E65;
  switch(a1)
  {
    case 1:
      result = 0x79546C616E676973;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 1682531437;
      break;
    case 4:
      result = 0x7361696C61;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_1DD4B93DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD8C8, &qword_1DD6523B8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4BBF8C();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v11 = sub_1DD640B28();
  v31 = v12;
  OUTLINED_FUNCTION_3_44(1);
  v13 = sub_1DD640B28();
  v30 = v14;
  v28 = v13;
  OUTLINED_FUNCTION_3_44(2);
  v27 = sub_1DD640B28();
  v29 = v15;
  OUTLINED_FUNCTION_3_44(3);
  v26 = sub_1DD640B88();
  v34 = 4;
  v16 = sub_1DD640B28();
  v17 = *(v7 + 8);
  v18 = v16;
  v25 = v19;
  v17(v10, v5);
  v20 = v30;
  __src[0] = v11;
  __src[1] = v31;
  v21 = v28;
  __src[2] = v28;
  __src[3] = v30;
  v22 = v29;
  __src[4] = v27;
  __src[5] = v29;
  __src[6] = v26;
  __src[7] = v18;
  v23 = v25;
  __src[8] = v25;
  sub_1DD4BBFE0(__src, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v11;
  v33[1] = v31;
  v33[2] = v21;
  v33[3] = v20;
  v33[4] = v27;
  v33[5] = v22;
  v33[6] = v26;
  v33[7] = v18;
  v33[8] = v23;
  sub_1DD4BA6B8(v33);
  return memcpy(a2, __src, 0x48uLL);
}

uint64_t sub_1DD4B96E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4B9194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4B9710(uint64_t a1)
{
  v2 = sub_1DD4BBF8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4B974C(uint64_t a1)
{
  v2 = sub_1DD4BBF8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DD4B9788@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DD4B93DC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

uint64_t sub_1DD4B97D4()
{
  v1 = v0;
  v2 = sub_1DD63C768();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  *(v0 + 16) = 0;
  sub_1DD63C7A8();
  swift_allocObject();
  v9 = sub_1DD63C798();
  *(v0 + 16) = 0;
  *(v0 + 24) = v9;

  sub_1DD63F798();
  v10 = sub_1DD63F788();
  v11 = sub_1DD63F778();

  *(v1 + 16) = v11;

  (*(v4 + 104))(v8, *MEMORY[0x1E6967EF8], v2);
  sub_1DD63C778();
  return v1;
}

uint64_t sub_1DD4B9A34(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v6 = v5;
  v9 = sub_1DD63EF38();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  if (!*(v4 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1DD63EF08();

  if (!v5)
  {
    v18 = *(v16 + 16);
    v19 = v11 + 16;
    v49 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v18 == v6)
      {
        goto LABEL_20;
      }

      if (v6 >= *(v16 + 16))
      {
        __break(1u);
        v43 = OUTLINED_FUNCTION_11_30();
        v44(v43, v19);
        sub_1DD3AD77C(v48, v9);
      }

      (*(v11 + 16))(v15, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v6, v9);
      sub_1DD63EF18();
      if (v20 > a3)
      {
        v41 = OUTLINED_FUNCTION_11_30();
        v42(v41, v9);
LABEL_20:

        return v49;
      }

      sub_1DD63EF18();
      if (v21 < a4)
      {
        break;
      }

      v24 = v9;
      v25 = sub_1DD63EF28();
      if (v26 >> 60 == 15)
      {
        v27 = OUTLINED_FUNCTION_11_30();
        v28(v27, v9);
        v19 = v11 + 16;
LABEL_13:
        ++v6;
      }

      else
      {
        v29 = v26;
        v30 = v25;
        sub_1DD4BA664();
        v48 = v30;
        sub_1DD63C788();
        memcpy(__dst, __src, sizeof(__dst));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD38, &unk_1DD6522F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DD643F90;
        *(inited + 32) = sub_1DD4B9FE4(__dst[2], __dst[3]);
        sub_1DD56BB0C(inited);
        v47 = v32;
        v45 = __dst[4];
        v46 = __dst[5];

        sub_1DD63EF18();
        v34 = v33;
        sub_1DD4BA6B8(__dst);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD3BEAAC();
          v49 = v39;
        }

        v35 = *(v49 + 16);
        if (v35 >= *(v49 + 24) >> 1)
        {
          sub_1DD3BEAAC();
          v49 = v40;
        }

        ++v6;
        sub_1DD3AD77C(v48, v29);
        v36 = OUTLINED_FUNCTION_11_30();
        v9 = v24;
        v37(v36, v24);
        *(v49 + 16) = v35 + 1;
        v38 = v49 + 40 * v35;
        *(v38 + 32) = v47;
        *(v38 + 40) = v45;
        *(v38 + 48) = v46;
        *(v38 + 56) = v34;
        *(v38 + 64) = 1;
        v19 = v11 + 16;
      }
    }

    v22 = OUTLINED_FUNCTION_11_30();
    v23(v22, v9);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1DD4B9EB8()
{
  if (!*(v0 + 16))
  {
    v1 = 0;
    LOBYTE(v3) = 1;
    return v1 | (v3 << 32);
  }

  v1 = sub_1DD63EEF8();

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = HIDWORD(v1);
    if (!HIDWORD(v1))
    {
      return v1 | (v3 << 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4B9FE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_41();
  v5 = a1 == 0xD000000000000014 && v4 == a2;
  if (v5 || (OUTLINED_FUNCTION_27(0xD000000000000014, v4) & 1) != 0)
  {
    return 1;
  }

  OUTLINED_FUNCTION_6_41();
  v8 = a1 == 0xD000000000000013 && v7 == a2;
  if (v8 || (OUTLINED_FUNCTION_27(0xD000000000000013, v7) & 1) != 0)
  {
    return 2;
  }

  OUTLINED_FUNCTION_6_41();
  v10 = a1 == 0xD000000000000013 && v9 == a2;
  if (v10 || (OUTLINED_FUNCTION_27(0xD000000000000013, v9) & 1) != 0)
  {
    return 128;
  }

  OUTLINED_FUNCTION_6_41();
  v12 = a1 == 0xD000000000000013 && v11 == a2;
  if (v12 || (OUTLINED_FUNCTION_27(0xD000000000000013, v11) & 1) != 0)
  {
    return 64;
  }

  OUTLINED_FUNCTION_6_41();
  v14 = a1 == 0xD00000000000001ELL && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_27(0xD00000000000001ELL, v13) & 1) != 0)
  {
    return 128;
  }

  OUTLINED_FUNCTION_6_41();
  v16 = a1 == 0xD000000000000012 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_27(0xD000000000000012, v15) & 1) != 0)
  {
    return 64;
  }

  OUTLINED_FUNCTION_6_41();
  if (a1 == 0xD000000000000017 && v17 == a2)
  {
    return 16;
  }

  if (OUTLINED_FUNCTION_27(0xD000000000000017, v17))
  {
    return 16;
  }

  return 0;
}

uint64_t sub_1DD4BA174()
{
  v1 = v0;
  v2 = sub_1DD63FAE8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = sub_1DD63FAC8();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = sub_1DD63D168();
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_2();
  sub_1DD63D108();
  (*(v11 + 104))(v15, *MEMORY[0x1E697B938], v9);
  (*(v4 + 104))(v8, *MEMORY[0x1E697B940], v2);
  sub_1DD63FB08();
  swift_allocObject();
  *(v1 + 16) = sub_1DD63FAF8();
  return v1;
}

void *sub_1DD4BA368(uint64_t a1)
{
  v2 = v1;
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD8B8, &qword_1DD6522E8);
  v4 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v4 + 16) = xmmword_1DD643F90;
  *(v4 + 32) = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;

  sub_1DD63FAB8();
  if (v1)
  {
  }

  else
  {

    swift_beginAccess();
    v2 = *v6;
    if (*v6)
    {
      swift_willThrow();
      v8 = v2;
    }

    else
    {
      swift_beginAccess();
      v2 = *(v3 + 16);
    }
  }

  return v2;
}

void sub_1DD4BA520(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a2;
  v9 = a2;

  if (a1)
  {
    swift_beginAccess();
    *(a4 + 16) = a1;
  }
}

uint64_t sub_1DD4BA608()
{

  OUTLINED_FUNCTION_8_34();

  return swift_deallocClassInstance();
}

unint64_t sub_1DD4BA664()
{
  result = qword_1ECCDD8C0;
  if (!qword_1ECCDD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD8C0);
  }

  return result;
}

uint64_t sub_1DD4BA6E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4BA758(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1DD640CA8();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_1DD640158();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1DD4BA864(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3 + 32);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *(v9 - 8);
        if (v10 >= v7 && (v7 != v10 || *(v9 + 24) >= *(v9 - 16)))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v12 = *v9;
        v13 = *(v9 + 8);
        result = *(v9 + 16);
        v14 = *(v9 + 24);
        v15 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v15;
        *(v9 + 32) = *(v9 - 8);
        *(v9 - 32) = v13;
        *(v9 - 24) = result;
        *(v9 - 16) = v14;
        *(v9 - 8) = v7;
        *(v9 - 40) = v12;
        v9 -= 40;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DD4BA904(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 4 * a3 - 4;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 4 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 4;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD4BA960(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *a3 + 40 * v9;
        v11 = *(v10 + 32);
        v12 = *a3 + 40 * v7;
        v13 = *(v12 + 32);
        v14 = v13 < v11 || *(v10 + 24) < *(v12 + 24) && v11 == v13;
        v16 = v7 + 2;
        if (v6 <= v7 + 2)
        {
          v9 = v7 + 2;
        }

        else
        {
          v9 = v6;
        }

        v17 = (*a3 + 40 * v7 + 112);
        while (v16 < v6)
        {
          v18 = *v17;
          if (v11 < *v17 || (v18 == v11 ? (v19 = *(v17 - 2) < *(v17 - 12)) : (v19 = 0), v19))
          {
            if (!v14)
            {
              v9 = v16;
              goto LABEL_37;
            }
          }

          else if (v14)
          {
            v9 = v16;
            goto LABEL_29;
          }

          v17 += 10;
          ++v16;
          v11 = v18;
        }

        if (!v14)
        {
          goto LABEL_58;
        }

LABEL_29:
        if (v9 < v7)
        {
          goto LABEL_132;
        }

        if (v7 < v9)
        {
          v20 = 40 * v9 - 16;
          v21 = 40 * v7 + 32;
          v22 = v9;
          v23 = v7;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_135;
              }

              v25 = (v24 + v21);
              v26 = *(v24 + v21 - 32);
              v27 = v24 + v20;
              v28 = *(v25 - 2);
              v29 = *(v25 - 2);
              v30 = *v25;
              v31 = *(v27 + 8);
              v32 = *(v27 - 8);
              *(v25 - 2) = *(v27 - 24);
              *(v25 - 1) = v32;
              *v25 = v31;
              *(v27 - 24) = v26;
              *(v27 - 8) = v28;
              *v27 = v29;
              *(v27 + 8) = v30;
            }

            ++v23;
            v20 -= 40;
            v21 += 40;
          }

          while (v23 < v22);
          v6 = a3[1];
        }
      }

LABEL_37:
      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_129;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_130;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v33 = *a3;
            v34 = *a3 + 40 * v9;
            v35 = v7 - v9;
            do
            {
              v36 = *(v33 + 40 * v9 + 32);
              v37 = v35;
              v38 = v34;
              do
              {
                v39 = *(v38 - 8);
                if (v39 >= v36 && (v36 != v39 || *(v38 + 24) >= *(v38 - 16)))
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_133;
                }

                v41 = *v38;
                v42 = *(v38 + 8);
                v43 = *(v38 + 16);
                v44 = *(v38 + 24);
                v45 = *(v38 - 24);
                *v38 = *(v38 - 40);
                *(v38 + 16) = v45;
                *(v38 + 32) = *(v38 - 8);
                *(v38 - 32) = v42;
                *(v38 - 24) = v43;
                *(v38 - 16) = v44;
                *(v38 - 8) = v36;
                *(v38 - 40) = v41;
                v38 -= 40;
              }

              while (!__CFADD__(v37++, 1));
              ++v9;
              v34 += 40;
              --v35;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

LABEL_58:
      if (v9 < v7)
      {
        goto LABEL_128;
      }

      v94 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BEB7C();
        v8 = v90;
      }

      v47 = v8[2];
      v48 = v47 + 1;
      if (v47 >= v8[3] >> 1)
      {
        sub_1DD3BEB7C();
        v8 = v91;
      }

      v8[2] = v48;
      v49 = v8 + 4;
      v50 = &v8[2 * v47 + 4];
      *v50 = v7;
      v50[1] = v94;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_136;
      }

      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          v52 = &v49[2 * v48 - 2];
          v53 = &v8[2 * v48];
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v54 = v8[4];
            v55 = v8[5];
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_78:
            if (v57)
            {
              goto LABEL_118;
            }

            v69 = *v53;
            v68 = v53[1];
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_121;
            }

            v73 = v52[1];
            v74 = v73 - *v52;
            if (__OFSUB__(v73, *v52))
            {
              goto LABEL_124;
            }

            if (__OFADD__(v71, v74))
            {
              goto LABEL_126;
            }

            if (v71 + v74 >= v56)
            {
              if (v56 < v74)
              {
                v51 = v48 - 2;
              }

              goto LABEL_100;
            }

            goto LABEL_93;
          }

          if (v48 < 2)
          {
            goto LABEL_120;
          }

          v76 = *v53;
          v75 = v53[1];
          v64 = __OFSUB__(v75, v76);
          v71 = v75 - v76;
          v72 = v64;
LABEL_93:
          if (v72)
          {
            goto LABEL_123;
          }

          v78 = *v52;
          v77 = v52[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_125;
          }

          if (v79 < v71)
          {
            goto LABEL_107;
          }

LABEL_100:
          if (v51 - 1 >= v48)
          {
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
            goto LABEL_131;
          }

          if (!*a3)
          {
            goto LABEL_134;
          }

          v83 = &v49[2 * v51 - 2];
          v84 = *v83;
          v85 = &v49[2 * v51];
          v86 = v85[1];
          sub_1DD4BB5F0((*a3 + 40 * *v83), (*a3 + 40 * *v85), *a3 + 40 * v86, v95);
          if (v5)
          {
            goto LABEL_111;
          }

          if (v86 < v84)
          {
            goto LABEL_113;
          }

          v87 = v8;
          v88 = v8[2];
          if (v51 > v88)
          {
            goto LABEL_114;
          }

          *v83 = v84;
          v83[1] = v86;
          if (v51 >= v88)
          {
            goto LABEL_115;
          }

          v48 = v88 - 1;
          memmove(&v49[2 * v51], v85 + 2, 16 * (v88 - 1 - v51));
          v87[2] = v88 - 1;
          v89 = v88 > 2;
          v8 = v87;
          if (!v89)
          {
            goto LABEL_107;
          }
        }

        v58 = &v49[2 * v48];
        v59 = *(v58 - 8);
        v60 = *(v58 - 7);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_116;
        }

        v63 = *(v58 - 6);
        v62 = *(v58 - 5);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_117;
        }

        v65 = v53[1];
        v66 = v65 - *v53;
        if (__OFSUB__(v65, *v53))
        {
          goto LABEL_119;
        }

        v64 = __OFADD__(v56, v66);
        v67 = v56 + v66;
        if (v64)
        {
          goto LABEL_122;
        }

        if (v67 >= v61)
        {
          v81 = *v52;
          v80 = v52[1];
          v64 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v64)
          {
            goto LABEL_127;
          }

          if (v56 < v82)
          {
            v51 = v48 - 2;
          }

          goto LABEL_100;
        }

        goto LABEL_78;
      }

LABEL_107:
      v6 = a3[1];
      v7 = v94;
      if (v94 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_137;
  }

  sub_1DD4BB38C(&v97, *a1, a3);
LABEL_111:
}