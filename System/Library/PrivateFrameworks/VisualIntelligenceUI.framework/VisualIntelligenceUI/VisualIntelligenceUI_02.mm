uint64_t sub_21DF485E4@<X0>(uint64_t a1@<X8>)
{
  sub_21E141A44();
  v2 = sub_21E140914();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA74D8, &qword_21E146B00);
  *(a1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_21DF48654(uint64_t a1)
{
  v2 = sub_21E13F444();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21E13FDA4();
}

void sub_21DF487D8(uint64_t a1)
{
  sub_21DF37A78(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_21DF48E78(319, &qword_280F68D70, MEMORY[0x277D85048]);
        if (v4 <= 0x3F)
        {
          sub_21DF48E78(319, &qword_280F68D48, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21DF488E0(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_21E13F444() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 24);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  v15 = *(v11 + 80);
  if (v10 <= v12)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = *(v9 + 84);
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(*(v8 - 8) + 64) + 7;
  if (v16 < a2)
  {
    v18 = ((((((v17 + ((v14 + v15 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v13 + 42) & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v16 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_32;
      }

      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_32;
      }
    }

    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    v32 = v16 + (v26 | v25);
    return (v32 + 1);
  }

LABEL_32:
  v27 = (((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + v13 + 34) & ~v13;
  if (v10 == v16)
  {
    v28 = *(v9 + 48);

    return v28(v27);
  }

  v29 = (v27 + v14 + v15) & ~v15;
  if (v12 != v16)
  {
    v31 = *(((v17 + v29) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v31 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v32 = v31 - 1;
    if (v32 < 0)
    {
      v32 = -1;
    }

    return (v32 + 1);
  }

  v30 = *(v11 + 48);

  return v30(v29, v12, v8);
}

void sub_21DF48B80(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_21E13F444() - 8) + 64);
  v9 = *(*(a4 + 16) - 8);
  if (v8 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v9 + 84);
  v13 = *(a4 + 24);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v14 + 80);
  if (v12 <= v15)
  {
    v19 = *(v14 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  v20 = *(v14 + 64) + 7;
  v21 = ((((((v20 + ((v17 + v18 + (((v10 & 0xFFFFFFFFFFFFFFF8) + v16 + 42) & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 >= a3)
  {
    v24 = 0;
    v25 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((((v20 + ((v17 + v18 + (((v10 & 0xFFFFFFF8) + v16 + 42) & ~v16)) & ~v18)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v19 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2 - v19;
    if (a2 <= v19)
    {
LABEL_22:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      v28 = (((a1 + v10 + 8) & 0xFFFFFFFFFFFFFFF8) + v16 + 34) & ~v16;
      if (v12 == v19)
      {
        v29 = *(v11 + 56);

        v29(v28, a2);
      }

      else
      {
        v30 = (v28 + v17 + v18) & ~v18;
        if (v15 == v19)
        {
          v31 = *(v14 + 56);

          v31(v30, a2, v15, v13);
        }

        else
        {
          v32 = ((v20 + v30) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v32 = (a2 - 0x7FFFFFFF);
            v32[1] = 0;
          }

          else
          {
            v32[1] = a2;
          }
        }
      }

      return;
    }
  }

  if (((((((v20 + ((v17 + v18 + (((v10 & 0xFFFFFFF8) + v16 + 42) & ~v16)) & ~v18)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (((((((v20 + ((v17 + v18 + (((v10 & 0xFFFFFFF8) + v16 + 42) & ~v16)) & ~v18)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v27 = ~v19 + a2;
    bzero(a1, ((((((v20 + ((v17 + v18 + (((v10 & 0xFFFFFFFFFFFFFFF8) + v16 + 42) & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *(a1 + v21) = v26;
    }

    else
    {
      *(a1 + v21) = v26;
    }
  }

  else if (v24)
  {
    *(a1 + v21) = v26;
  }
}

void sub_21DF48E78(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21E141744();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21DF48EDC()
{
  result = qword_27CEA7490;
  if (!qword_27CEA7490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7488, &qword_21E146AD8);
    sub_21DF48F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7490);
  }

  return result;
}

unint64_t sub_21DF48F68()
{
  result = qword_27CEA7498;
  if (!qword_27CEA7498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA74A0, &qword_21E146AE0);
    sub_21DF48FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7498);
  }

  return result;
}

unint64_t sub_21DF48FF4()
{
  result = qword_27CEA74A8;
  if (!qword_27CEA74A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA74B0, &qword_21E146AE8);
    sub_21DF23E5C(&qword_27CEA74B8, &qword_27CEA74C0, &qword_21E146AF0, MEMORY[0x277CDF3A0]);
    sub_21DF23E5C(&qword_27CEA74C8, &qword_27CEA74D0, &qword_21E146AF8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA74A8);
  }

  return result;
}

unint64_t sub_21DF490D8()
{
  result = qword_27CEA74E0;
  if (!qword_27CEA74E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA74D8, &qword_21E146B00);
    sub_21DF49194(&qword_27CEA74E8, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA74E0);
  }

  return result;
}

uint64_t sub_21DF49194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21DF491DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DF4927C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for AttributionContainer(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_21DF46938(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_21DF49338()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v5 = *(type metadata accessor for AttributionContainer(0, v11) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_21E13F734() - 8);
  v9 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_21DF46C7C(v0 + v6, v9, v1, v2, v3, v4);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v9 = v1;
  v8 = *(v0 + 24);
  v10 = v8;
  v11 = v2;
  v3 = type metadata accessor for AttributionContainer(0, &v9);
  v4 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v5 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21E13F444();
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v5 + *(v3 + 64), v1);
  (*(*(v8 - 8) + 8))(v5 + *(v3 + 68));

  return swift_deallocObject();
}

uint64_t sub_21DF49614(uint64_t a1, double *a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v11 = v2[2];
  v4 = v11;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  type metadata accessor for AttributionContainer(0, &v11);
  v8 = *a2;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v9 = type metadata accessor for AttributionContainer(0, &v11);
  return sub_21DF46CF8(v9, v8);
}

unint64_t sub_21DF496C4()
{
  result = qword_27CEA70D0;
  if (!qword_27CEA70D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA70C8, &qword_21E146350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA70D0);
  }

  return result;
}

uint64_t (*EnvironmentValues.openPredictedAction.getter())()
{
  sub_21DF497E0();
  sub_21E13FFA4();
  *(swift_allocObject() + 16) = v1;
  return sub_21DF26868;
}

unint64_t sub_21DF497E0()
{
  result = qword_27CEA7528;
  if (!qword_27CEA7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7528);
  }

  return result;
}

uint64_t EnvironmentValues.openPredictedAction.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_21DF497E0();
  return sub_21E13FFB4();
}

void (*EnvironmentValues.openPredictedAction.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_21DF497E0();
  sub_21E13FFA4();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_21DF27C9C;
  *(v4 + 8) = v5;
  return sub_21DF49970;
}

void sub_21DF49970(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v2[2] = sub_21DF27CA0;
    v2[3] = v5;

    sub_21E13FFB4();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[2] = sub_21DF27CA0;
    v2[3] = v6;
    sub_21E13FFB4();
  }

  free(v2);
}

uint64_t sub_21DF49A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = sub_21E13EFC4();
  v25 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13EEE4();
  v24 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_21E1423F4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v5);
  sub_21E1423C4();
  v16 = v28;

  v17 = v29;

  v18 = sub_21E1423B4();
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = (v10 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 2) = v18;
  *(v21 + 3) = v22;
  *(v21 + 4) = v16;
  *(v21 + 5) = v17;
  (*(v9 + 32))(&v21[v19], v11, v24);
  (*(v6 + 32))(&v21[v20], v26, v25);
  sub_21E0C2E04(0, 0, v14, &unk_21E146C88, v21);
}

uint64_t sub_21DF49D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_21E13F1B4();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550, &qword_21E146C90);
  v7[9] = swift_task_alloc();
  v7[10] = sub_21E1423C4();
  v7[11] = sub_21E1423B4();
  v9 = swift_task_alloc();
  v7[12] = v9;
  *v9 = v7;
  v9[1] = sub_21DF49ED4;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v7 + 17, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v10);
}

uint64_t sub_21DF49ED4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21DF4A2CC;
  }

  else
  {
    v2 = sub_21DF49FE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DF49FE8()
{
  *(v0 + 137) = *(v0 + 136);
  v2 = sub_21E142364();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return MEMORY[0x2822009F8](sub_21DF4A068, v2, v1);
}

uint64_t sub_21DF4A068()
{
  if (*(v0 + 137))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 40);
    v3 = sub_21E13EFC4();
    (*(*(v3 - 8) + 16))(v1, v2, v3);
    v4 = *MEMORY[0x277D792E8];
    v5 = sub_21E13DFD4();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1, v4, v5);
    (*(v6 + 56))(v1, 0, 1, v5);
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v7[1] = sub_21DF4A468;
    v8 = *(v0 + 72);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);

    return sub_21E0BEE74(v10, v9, v8, 0);
  }

  else
  {

    sub_21E13EBE4();
    v12 = sub_21E13F1A4();
    v13 = sub_21E142564();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = *(v0 + 48);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21DF05000, v12, v13, "Failed to unlock to open a predicted action.", v18, 2u);
      MEMORY[0x223D540B0](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_21DF4A2CC()
{
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DF4A350, v2, v1);
}

uint64_t sub_21DF4A350()
{

  sub_21E13EBE4();
  v1 = sub_21E13F1A4();
  v2 = sub_21E142564();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21DF05000, v1, v2, "Failed to unlock to open a predicted action.", v7, 2u);
    MEMORY[0x223D540B0](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21DF4A468()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  sub_21DF4AAF8(v2);
  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_21DF4A5AC, v4, v3);
}

uint64_t sub_21DF4A5AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DF4A61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21DF4A898;
  *(v9 + 24) = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7538, &qword_21E146C68);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7540, &unk_21E146C70) + 36));
  *v11 = KeyPath;
  v11[1] = sub_21DF27CA0;
  v11[2] = v9;
}

uint64_t View.allowsOpeningPredictedActions(executor:entity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x223D51B40](v4, a3, &type metadata for OpenPredictedActionModifier);
}

unint64_t sub_21DF4A784()
{
  result = qword_27CEA7530;
  if (!qword_27CEA7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7530);
  }

  return result;
}

uint64_t sub_21DF4A7D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21DF4A820(uint64_t result, int a2, int a3)
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

uint64_t sub_21DF4A8A0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21E13EEE4() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_21E13EFC4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_21DF4AA04;

  return sub_21DF49D48(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_21DF4AA04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21DF4AAF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAC550, &qword_21E146C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21DF4AB60()
{
  result = qword_27CEA7548;
  if (!qword_27CEA7548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7540, &unk_21E146C70);
    sub_21DF23E5C(&qword_27CEA7550, &qword_27CEA7538, &qword_21E146C68, MEMORY[0x277CE04B0]);
    sub_21DF23E5C(&qword_27CEA7558, &qword_27CEA7560, &qword_21E146C98, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7548);
  }

  return result;
}

uint64_t sub_21DF4AC58(uint64_t a1)
{
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + *(type metadata accessor for Omnibar(0) + 36)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v11[1] = v7;
  sub_21DF4CFC8();

  sub_21E13D3C4();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x277D78DB0])
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = v8 == *MEMORY[0x277D78DC0] || v8 == *MEMORY[0x277D78DC8];
    if (v10 || v8 == *MEMORY[0x277D78DA8] || v8 == *MEMORY[0x277D78DB8])
    {
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21DF4B2E4(uint64_t a1)
{
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + *(type metadata accessor for Omnibar(0) + 36)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v11[1] = v7;
  sub_21DF4CFC8();

  sub_21E13D3C4();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x277D78DB0])
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = v8 == *MEMORY[0x277D78DC0] || v8 == *MEMORY[0x277D78DC8];
    if (v10 || v8 == *MEMORY[0x277D78DA8] || v8 == *MEMORY[0x277D78DB8])
    {
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21DF4BA24(uint64_t a1)
{
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + *(type metadata accessor for Omnibar(0) + 36)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v11[1] = v7;
  sub_21DF4CFC8();

  sub_21E13D3C4();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x277D78DB0])
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = v8 == *MEMORY[0x277D78DC0] || v8 == *MEMORY[0x277D78DC8];
    if (v10 || v8 == *MEMORY[0x277D78DA8] || v8 == *MEMORY[0x277D78DB8])
    {
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21DF4C0AC(uint64_t a1)
{
  v2 = sub_21E13D834();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  result = (*(v3 + 88))(v6, v2);
  if (result == *MEMORY[0x277D78DB0])
  {
    return (*(v3 + 8))(v6, v2);
  }

  if (result != *MEMORY[0x277D78DC0] && result != *MEMORY[0x277D78DC8] && result != *MEMORY[0x277D78DA8] && result != *MEMORY[0x277D78DB8])
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

uint64_t sub_21DF4C2EC(uint64_t a1)
{
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + *(type metadata accessor for Omnibar(0) + 36)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v11[1] = v7;
  sub_21DF4CFC8();

  sub_21E13D3C4();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x277D78DB0])
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = v8 == *MEMORY[0x277D78DC0] || v8 == *MEMORY[0x277D78DC8];
    if (v10 || v8 == *MEMORY[0x277D78DA8] || v8 == *MEMORY[0x277D78DB8])
    {
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21DF4C690(uint64_t a1)
{
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + *(type metadata accessor for Omnibar(0) + 36)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v11[1] = v7;
  sub_21DF4CFC8();

  sub_21E13D3C4();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x277D78DB0])
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v10 = v8 == *MEMORY[0x277D78DC0] || v8 == *MEMORY[0x277D78DC8];
    if (v10 || v8 == *MEMORY[0x277D78DA8] || v8 == *MEMORY[0x277D78DB8])
    {
    }

    else
    {
      result = sub_21E142B04();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21DF4CCB0(uint64_t a1)
{
  v3 = sub_21E13D834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + *(type metadata accessor for Omnibar(0) + 36)) + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v10[1] = v7;
  sub_21DF4CFC8();

  sub_21E13D3C4();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x277D78DB0])
  {

    return (*(v4 + 8))(v6, v3);
  }

  else if (v8 == *MEMORY[0x277D78DC0] || v8 == *MEMORY[0x277D78DC8] || v8 == *MEMORY[0x277D78DA8] || v8 == *MEMORY[0x277D78DB8])
  {
  }

  else
  {
    result = sub_21E142B04();
    __break(1u);
  }

  return result;
}

unint64_t sub_21DF4CFC8()
{
  result = qword_280F6C000;
  if (!qword_280F6C000)
  {
    type metadata accessor for SheetModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F6C000);
  }

  return result;
}

uint64_t type metadata accessor for CapsuleButtonStyle(uint64_t a1)
{
  result = qword_27CEA7568;
  if (!qword_27CEA7568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DF4D094(uint64_t a1)
{
  sub_21DF37A78(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21DF4D124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v72 = sub_21E13F904();
  MEMORY[0x28223BE20](v72);
  v71[1] = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21E13F8E4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v5 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E1405E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7578, &qword_21E146D60);
  MEMORY[0x28223BE20](v74);
  v11 = v71 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7580, &qword_21E146D68);
  MEMORY[0x28223BE20](v76);
  v13 = v71 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7588, &qword_21E146D70);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7590, &qword_21E146D78);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7598, &qword_21E146D80);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v73 = v71 - v21;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA75A0, &qword_21E146D88);
  MEMORY[0x28223BE20](v82);
  v87 = v71 - v22;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA75A8, &qword_21E146D90);
  MEMORY[0x28223BE20](v81);
  v85 = v71 - v23;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA75B0, &qword_21E146D98);
  MEMORY[0x28223BE20](v83);
  v86 = v71 - v24;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA75B8, &qword_21E146DA0);
  MEMORY[0x28223BE20](v84);
  v88 = v71 - v25;
  v90 = a1;
  sub_21E1405F4();
  sub_21DF4DD08();
  sub_21DF4DD60();
  sub_21E140DA4();
  (*(v7 + 8))(v9, v6);
  KeyPath = swift_getKeyPath();
  v27 = &v11[*(v74 + 36)];
  *v27 = KeyPath;
  *(v27 + 1) = 1;
  v27[16] = 0;
  sub_21E13F8D4();
  sub_21DF4E09C();
  sub_21E140EF4();
  (*(v79 + 8))(v5, v80);
  sub_21DF23614(v11, &qword_27CEA7578, &qword_21E146D60);
  v28 = sub_21E140AC4();
  v29 = swift_getKeyPath();
  v30 = &v13[*(v76 + 36)];
  *v30 = v29;
  v30[1] = v28;
  sub_21E1409E4();
  sub_21DF4E1A0();
  v31 = v75;
  sub_21E140D84();
  v32 = v89;
  sub_21DF23614(v13, &qword_27CEA7580, &qword_21E146D68);
  sub_21E141CC4();
  v33 = v73;
  sub_21E13FCE4();
  (*(v77 + 32))(v18, v31, v78);
  v34 = &v18[*(v16 + 44)];
  v35 = v98;
  *(v34 + 4) = v97;
  *(v34 + 5) = v35;
  *(v34 + 6) = v99;
  v36 = v94;
  *v34 = v93;
  *(v34 + 1) = v36;
  v37 = v96;
  *(v34 + 2) = v95;
  *(v34 + 3) = v37;
  LOBYTE(v31) = sub_21E140914();
  sub_21E13F374();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_21DF3DE9C(v18, v33, &qword_27CEA7590, &qword_21E146D78);
  v46 = v33 + *(v20 + 44);
  *v46 = v31;
  *(v46 + 8) = v39;
  *(v46 + 16) = v41;
  *(v46 + 24) = v43;
  *(v46 + 32) = v45;
  *(v46 + 40) = 0;
  if (*(v32 + *(type metadata accessor for CapsuleButtonStyle(0) + 20)) == 1)
  {
    v92 = _s20VisualIntelligenceUI17PinStyleProvidingPAAE15foregroundColor9isEnabled05SwiftC00H0VSb_tF_0();
  }

  else
  {
    sub_21E13F8F4();
  }

  v47 = sub_21E13F674();
  v48 = v87;
  sub_21DF3DE9C(v33, v87, &qword_27CEA7598, &qword_21E146D80);
  *(v48 + *(v82 + 36)) = v47;
  sub_21DF4DAEC(&v92);
  v49 = v92;
  v50 = v85;
  v51 = &v85[*(v81 + 36)];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA75E8, &qword_21E146E18);
  v53 = *(v52 + 52);
  v54 = *MEMORY[0x277CE0128];
  v55 = sub_21E140144();
  (*(*(v55 - 8) + 104))(v51 + v53, v54, v55);
  *v51 = v49;
  *(v51 + *(v52 + 56)) = 256;
  sub_21DF3DE9C(v48, v50, &qword_27CEA75A0, &qword_21E146D88);
  if (sub_21E140604())
  {
    v56 = 0.8;
  }

  else
  {
    v56 = 1.0;
  }

  v57 = v86;
  sub_21DF3DE9C(v50, v86, &qword_27CEA75A8, &qword_21E146D90);
  *(v57 + *(v83 + 36)) = v56;
  if (sub_21E140604())
  {
    v58 = 0.95;
  }

  else
  {
    v58 = 1.0;
  }

  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v60 = v59;
  v62 = v61;
  v63 = v88;
  sub_21DF3DE9C(v57, v88, &qword_27CEA75B0, &qword_21E146D98);
  v64 = v63 + *(v84 + 36);
  *v64 = v58;
  *(v64 + 8) = v58;
  *(v64 + 16) = v60;
  *(v64 + 24) = v62;
  v65 = sub_21E141D74();
  v66 = sub_21E140604();
  v67 = v63;
  v68 = v91;
  sub_21DF3DE9C(v67, v91, &qword_27CEA75B8, &qword_21E146DA0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA75F0, &unk_21E146E20);
  v70 = v68 + *(result + 36);
  *v70 = v65;
  *(v70 + 8) = v66 & 1;
  return result;
}

uint64_t sub_21DF4DAEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21E13F444();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v10 = sub_21E13F904();
  MEMORY[0x28223BE20](v10);
  if (*(v1 + *(type metadata accessor for CapsuleButtonStyle(0) + 20)) == 1)
  {
    sub_21E13F8F4();
  }

  else
  {
    sub_21E021DE8(v9);
    (*(v4 + 104))(v6, *MEMORY[0x277CDF3C0], v3);
    sub_21E13F434();
    v11 = *(v4 + 8);
    v11(v6, v3);
    v11(v9, v3);
    sub_21E141524();
    v12 = sub_21E141514();

    v14[1] = v12;
  }

  result = sub_21E13F674();
  *a1 = result;
  return result;
}

unint64_t sub_21DF4DD08()
{
  result = qword_280F68E08;
  if (!qword_280F68E08)
  {
    sub_21E1405E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F68E08);
  }

  return result;
}

unint64_t sub_21DF4DD60()
{
  result = qword_27CEA75C0;
  if (!qword_27CEA75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA75C0);
  }

  return result;
}

uint64_t sub_21DF4DDB4@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_21E140584();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_21E140564();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_21E140574();
  sub_21E140594();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7658, &qword_21E146E98) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_21DF4E044@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21E13FFE4();
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7650, &qword_21E146E90);
  return sub_21DF4DDB4((a1 + *(v2 + 44)));
}

unint64_t sub_21DF4E09C()
{
  result = qword_27CEA75C8;
  if (!qword_27CEA75C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7578, &qword_21E146D60);
    sub_21E1405E4();
    sub_21DF4DD08();
    sub_21DF4DD60();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DB0, &qword_27CEA75D0, &qword_21E1489D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA75C8);
  }

  return result;
}

unint64_t sub_21DF4E1A0()
{
  result = qword_27CEA75D8;
  if (!qword_27CEA75D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7580, &qword_21E146D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7578, &qword_21E146D60);
    sub_21DF4E09C();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_280F68DD0, &qword_27CEA75E0, &qword_21E146E10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA75D8);
  }

  return result;
}

unint64_t sub_21DF4E2A4()
{
  result = qword_27CEA75F8;
  if (!qword_27CEA75F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75F0, &unk_21E146E20);
    sub_21DF4E35C();
    sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648, &qword_21E146E50, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA75F8);
  }

  return result;
}

unint64_t sub_21DF4E35C()
{
  result = qword_27CEA7600;
  if (!qword_27CEA7600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75B8, &qword_21E146DA0);
    sub_21DF4E3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7600);
  }

  return result;
}

unint64_t sub_21DF4E3E8()
{
  result = qword_27CEA7608;
  if (!qword_27CEA7608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75B0, &qword_21E146D98);
    sub_21DF4E474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7608);
  }

  return result;
}

unint64_t sub_21DF4E474()
{
  result = qword_27CEA7610;
  if (!qword_27CEA7610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75A8, &qword_21E146D90);
    sub_21DF4E52C();
    sub_21DF23E5C(&qword_27CEA7640, &qword_27CEA75E8, &qword_21E146E18, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7610);
  }

  return result;
}

unint64_t sub_21DF4E52C()
{
  result = qword_27CEA7618;
  if (!qword_27CEA7618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA75A0, &qword_21E146D88);
    sub_21DF4E5E4();
    sub_21DF23E5C(&qword_27CEA7630, &qword_27CEA7638, &qword_21E146E48, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7618);
  }

  return result;
}

unint64_t sub_21DF4E5E4()
{
  result = qword_27CEA7620;
  if (!qword_27CEA7620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7598, &qword_21E146D80);
    sub_21DF4E670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7620);
  }

  return result;
}

unint64_t sub_21DF4E670()
{
  result = qword_27CEA7628;
  if (!qword_27CEA7628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7590, &qword_21E146D78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7580, &qword_21E146D68);
    sub_21DF4E1A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7628);
  }

  return result;
}

uint64_t static AfterUnlock.perform(_:onFailure:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = MKBGetDeviceLockState();
  if (!v11 || v11 == 3)
  {
    return a1();
  }

  v13 = sub_21E1423F4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_21E1423C4();

  sub_21DF09028(a3, a4);
  v14 = sub_21E1423B4();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  sub_21E0C2E04(0, 0, v10, &unk_21E146EC0, v15);
}

uint64_t sub_21DF4E8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = sub_21E1423C4();
  v7[7] = sub_21E1423B4();
  v8 = swift_task_alloc();
  v7[8] = v8;
  *v8 = v7;
  v8[1] = sub_21DF4E9B8;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v7 + 10, 0, 0, 0xD000000000000017, 0x800000021E15B6B0, sub_21DFF37E8, 0, v9);
}

uint64_t sub_21DF4E9B8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_21DF4EB4C;
  }

  else
  {
    v2 = sub_21DF4EACC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21DF4EACC()
{
  *(v0 + 81) = *(v0 + 80);
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DF4EBD0, v2, v1);
}

uint64_t sub_21DF4EB4C()
{
  *(v0 + 81) = 0;
  v2 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DF4EBD0, v2, v1);
}

uint64_t sub_21DF4EBD0()
{

  if ((sub_21E142434() & 1) == 0)
  {
    if (*(v0 + 81) == 1)
    {
      v1 = *(v0 + 16);
    }

    else
    {
      v1 = *(v0 + 32);
      if (!v1)
      {
        goto LABEL_6;
      }
    }

    v1();
  }

LABEL_6:
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21DF4EC60(uint64_t a1)
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
  v10[1] = sub_21DF4AA04;

  return sub_21DF4E8C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t getEnumTagSinglePayload for NewActionModel.SpecialActionType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NewActionModel.SpecialActionType(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21DF4EE28()
{
  result = qword_27CEA7668;
  if (!qword_27CEA7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7668);
  }

  return result;
}

void sub_21DF4EE7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, int a6, uint64_t a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, double a12, double a13, double a14)
{
  v76 = a14;
  v78 = a6;
  v80 = a10;
  v81 = a11;
  v82 = a8;
  v83 = a9;
  v79 = a4;
  v85 = a1;
  v84 = sub_21E13F7B4();
  v20 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21E13F934();
  v23 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v26 = INFINITY;
    v27 = a7;
  }

  else
  {
    v26 = INFINITY;
    v27 = a7;
    if (*&a2 != INFINITY)
    {
      v28 = (*&a2 + a13) / (a12 + a13);
      if (COERCE__INT64(fabs(v28)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if (v28 <= -9.22337204e18)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v28 >= 9.22337204e18)
      {
LABEL_53:
        __break(1u);
        return;
      }

      v27 = v28;
      v26 = *&a2;
    }
  }

  if (v27 <= 1)
  {
    v27 = 1;
  }

  if (v27 >= a7)
  {
    v29 = a7;
  }

  else
  {
    v29 = v27;
  }

  if (__OFSUB__(v29, 1))
  {
    goto LABEL_48;
  }

  v30 = v29;
  v31 = v29 * a12;
  v32 = (v29 - 1) * a13;
  v33 = v31 + v32;
  if (v26 <= v33 || v26 == INFINITY)
  {
    v35 = v33;
  }

  else
  {
    v35 = v26;
  }

  if (a7 < 0)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (a7)
  {
    v36 = sub_21E142314();
    *(v36 + 16) = v29;
    bzero((v36 + 32), 8 * v29);
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  sub_21E13F884();
  sub_21DF4F6CC();
  sub_21E1424D4();
  sub_21E142504();
  v37 = v90;
  if (v89 < v90)
  {
    goto LABEL_50;
  }

  if (v90 != v89)
  {
    v73 = (v35 - v32) / v30 + a13;
    v75 = (v35 - v32) / v30;
    v38 = (v20 + 8);
    v39 = v23;
    v40 = (v36 + 32);
    v41 = (v39 + 8);
    v70 = (v36 + 40);
    v74 = a5 & 1;
    width = v80;
    height = v81;
    x = v82;
    y = v83;
    v72 = v89;
    do
    {
      sub_21E13F894();
      LOBYTE(v90) = 0;
      LOBYTE(v89) = v74;
      sub_21E13F774();
      v46 = *v38;
      (*v38)(v22, v84);
      sub_21E13F914();
      v88 = v47;
      sub_21E13F924();
      v49 = v48;
      v50 = *(v36 + 16);
      v86 = x;
      v87 = height;
      if (v50 == 1)
      {
        v51 = 0;
      }

      else
      {
        if (!v50)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v51 = 0;
        v52 = 0;
        v53 = *v40;
        v54 = v70;
        for (i = 1; i != v50; ++i)
        {
          v56 = *v54++;
          v57 = v56;
          v58 = i < v52;
          v59 = v56 < v53;
          if (v56 != v53)
          {
            v58 = v59;
          }

          if (v58)
          {
            v51 = i;
            v53 = v57;
            v52 = i;
          }
        }
      }

      v60 = v82;
      v61 = v83;
      v91.origin.x = v82;
      v91.origin.y = v83;
      v62 = v80;
      v63 = v81;
      v91.size.width = v80;
      v91.size.height = v81;
      MinX = CGRectGetMinX(v91);
      v92.origin.x = v60;
      v92.origin.y = v61;
      v92.size.width = v62;
      v92.size.height = v63;
      MinY = CGRectGetMinY(v92);
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      v66 = *(v36 + 16);
      if (v51 >= v66)
      {
        goto LABEL_46;
      }

      v67 = v87;
      v68 = MinX + v73 * v51;
      v69 = MinY + v40[v51];
      if (v78)
      {
        v71 = y;
        sub_21E13F894();
        _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
        LOBYTE(v90) = 0;
        LOBYTE(v89) = 0;
        y = v71;
        sub_21E13F794();
        v46(v22, v84);
        v66 = *(v36 + 16);
      }

      if (v51 >= v66)
      {
        goto LABEL_47;
      }

      ++v37;
      v40[v51] = v49 + v76 + v40[v51];
      v93.origin.x = v86;
      v93.origin.y = y;
      v93.size.width = width;
      v93.size.height = v67;
      v95.origin.x = v68;
      v95.origin.y = v69;
      v95.size.width = v88;
      v95.size.height = v49;
      v94 = CGRectUnion(v93, v95);
      x = v94.origin.x;
      y = v94.origin.y;
      width = v94.size.width;
      height = v94.size.height;
      (*v41)(v25, v77);
    }

    while (v37 != v72);
  }
}

uint64_t (*sub_21DF4F5A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21E13F304();
  return sub_21DF4F628;
}

void sub_21DF4F628(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_21DF4F678()
{
  result = qword_27CEA7670;
  if (!qword_27CEA7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7670);
  }

  return result;
}

unint64_t sub_21DF4F6CC()
{
  result = qword_27CEA7678;
  if (!qword_27CEA7678)
  {
    sub_21E13F884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7678);
  }

  return result;
}

double sub_21DF4F724()
{
  swift_getKeyPath();
  sub_21DF50040();
  sub_21E13D3C4();

  return *(v0 + 16);
}

__n128 sub_21DF4F798@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF50040();
  sub_21E13D3C4();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_21DF4F810(double a1, double a2, double a3, double a4)
{
  result = sub_21E13F364();
  if (result)
  {
    v4[2] = a1;
    v4[3] = a2;
    v4[4] = a3;
    v4[5] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF50040();
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21DF4F928()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI26SystemMinimumLayoutMargins___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SystemMinimumLayoutMargins(uint64_t a1)
{
  result = qword_27CEA7688;
  if (!qword_27CEA7688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DF4FA18(uint64_t a1)
{
  result = sub_21E13D404();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21DF4FB7C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SystemMinimumLayoutMarginsReader.MarginsTrackingViewController();
  objc_msgSendSuper2(&v12, sel_viewLayoutMarginsDidChange);
  [v0 systemMinimumLayoutMargins];
  result = sub_21E13F384();
  v6 = *&v0[OBJC_IVAR____TtCV20VisualIntelligenceUI32SystemMinimumLayoutMarginsReader29MarginsTrackingViewController_minimumLayoutMargins];
  if (v6)
  {
    v7 = v2;
    v8 = v3;
    v9 = v4;
    v10 = v5;
    swift_getKeyPath();
    sub_21DF50040();

    sub_21E13D3C4();

    if (sub_21E13F364())
    {
    }

    if (sub_21E13F364())
    {
      v6[2] = v7;
      v6[3] = v8;
      v6[4] = v9;
      v6[5] = v10;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E13D3B4();
  }

  return result;
}

id sub_21DF4FDB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemMinimumLayoutMarginsReader.MarginsTrackingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_21DF4FE18(double *a1, double *a2)
{
  swift_getKeyPath();
  sub_21DF50040();
  sub_21E13D3C4();

  v4 = a1[3];
  swift_getKeyPath();
  sub_21E13D3C4();

  if (v4 != a2[3])
  {
    return 0;
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  v5 = a1[5];
  swift_getKeyPath();
  sub_21E13D3C4();

  if (v5 != a2[5])
  {
    return 0;
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  v6 = a1[2];
  swift_getKeyPath();
  sub_21E13D3C4();

  if (v6 != a2[2])
  {
    return 0;
  }

  swift_getKeyPath();
  sub_21E13D3C4();

  v7 = a1[4];
  swift_getKeyPath();
  sub_21E13D3C4();

  return v7 == a2[4];
}

unint64_t sub_21DF50040()
{
  result = qword_27CEA76A0;
  if (!qword_27CEA76A0)
  {
    type metadata accessor for SystemMinimumLayoutMargins(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA76A0);
  }

  return result;
}

__n128 sub_21DF50098()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 16) = result;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_21DF500C4()
{
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v1 = *(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage);

  return v1;
}

uint64_t sub_21DF50180@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  *a1 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence);
  return result;
}

uint64_t NewEntityModel.__allocating_init(systemImage:centroid:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = swift_allocObject();
  NewEntityModel.init(systemImage:centroid:)(a1, a2, a3, a4);
  return v8;
}

uint64_t NewEntityModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id;
  v4 = sub_21E13D344();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21DF50324@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners;
  swift_beginAccess();
  v4 = sub_21E13ED04();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21DF5041C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13ED04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_21DF606B8(&unk_280F69088, MEMORY[0x277D79618], MEMORY[0x277D79620]);
  v9 = sub_21E142074();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3B4();
  }

  return (v10)(a1, v4);
}

uint64_t sub_21DF5069C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners;
  swift_beginAccess();
  v5 = sub_21E13ED04();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_21DF50738(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage);
  v6 = *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage) == a1 && *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage + 8) == a2;
  if (v6 || (sub_21E142B14() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3B4();
  }
}

unsigned __int8 *sub_21DF508A4(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3B4();
  }

  return result;
}

unint64_t NewEntityModel.cardLayout.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v4 = *(v6 + v3);
  *a1 = v4;
  return sub_21DF5706C(v4);
}

unint64_t sub_21DF50A8C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return sub_21DF5706C(v5);
}

unint64_t sub_21DF50B54(unint64_t *a1)
{
  v2 = *a1;
  sub_21DF5706C(v2);
  return NewEntityModel.cardLayout.setter(&v2);
}

unint64_t NewEntityModel.cardLayout.setter(unint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v8 = v2;
  v9 = v4;
  if (static CardLayout.== infix(_:_:)(&v9, &v8))
  {
    v5 = *(v1 + v3);
    *(v1 + v3) = v2;
    return sub_21DF5AF24(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9 = v1;
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3B4();
    sub_21DF5AF24(v2);
  }
}

unint64_t sub_21DF50CD4(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  sub_21DF5706C(a2);
  return sub_21DF5AF24(v5);
}

uint64_t (*NewEntityModel.cardLayout.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF50E94;
}

uint64_t NewEntityModel.cardModel.getter()
{
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21DF50F60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t NewEntityModel.cardModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21DF51184(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*NewEntityModel.cardModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF5133C;
}

uint64_t sub_21DF51348()
{
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();
}

uint64_t sub_21DF513F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  *a2 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions);
}

uint64_t sub_21DF514A8(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions;

  v5 = sub_21E0E022C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3B4();
  }
}

uint64_t (*NewEntityModel.actions.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF517C8;
}

uint64_t sub_21DF517E8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21DF518B4@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t sub_21DF519D4(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  swift_beginAccess();

  v8 = sub_21E0E022C(v7, a1);

  if (v8)
  {
    *(v4 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3B4();
  }
}

uint64_t (*NewEntityModel.preShutterActions.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF51C64;
}

uint64_t sub_21DF51C70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v50 - v2;
  v69 = sub_21E13EEB4();
  KeyPath = *(v69 - 8);
  MEMORY[0x28223BE20](v69 - 8);
  v68 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = v50 - v7;
  MEMORY[0x28223BE20](v8);
  v66 = v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = v50 - v11;
  v12 = sub_21E13D994();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v65 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = v50 - v16;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  v78 = v0;
  v50[1] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v18 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v19 = *(v0 + v18);
  v51 = v0;
  v50[2] = v17;
  if (v19 >> 62)
  {
LABEL_28:
    v72 = v19 & 0xFFFFFFFFFFFFFF8;
    v74 = sub_21E1427B4();
  }

  else
  {
    v72 = v19 & 0xFFFFFFFFFFFFFF8;
    v74 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v19;
  v73 = v19 & 0xC000000000000001;
  v21 = (v13 + 56);
  v64 = (KeyPath + 32);
  v63 = (KeyPath + 88);
  v62 = *MEMORY[0x277D79680];
  v56 = (KeyPath + 8);
  v55 = (KeyPath + 96);
  v61 = (v13 + 32);
  v60 = (v13 + 48);
  v54 = (v13 + 88);
  v53 = *MEMORY[0x277D78F28];
  v52 = (v13 + 8);

  v13 = 0;
  v19 = 0;
  v22 = &unk_21E148070;
  v70 = v20;
  v71 = v12;
  v59 = v3;
  v58 = v21;
  while (v74 != v13)
  {
    if (v73)
    {
      v12 = MEMORY[0x223D530F0](v13, v20);
      if (__OFADD__(v13, 1))
      {
LABEL_22:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v13 >= *(v72 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v12 = *(v20 + 8 * v13 + 32);

      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }
    }

    KeyPath = swift_getKeyPath();
    v25 = v22;
    v77 = v12;
    sub_21DF606B8(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
    sub_21E13D3C4();

    v26 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
    swift_beginAccess();
    v27 = v12 + v26;
    v22 = v25;
    sub_21DF236C0(v27, v3, &qword_27CEA6D48, v25);
    v28 = sub_21E13EEE4();
    if ((*(*(v28 - 8) + 48))(v3, 1, v28))
    {

      sub_21DF23614(v3, &qword_27CEA6D48, v25);
      (*v21)(v75, 1, 1, v71);
    }

    else
    {
      v29 = v75;
      v30 = v67;
      sub_21E13EEC4();

      sub_21DF23614(v3, &qword_27CEA6D48, v25);
      v31 = *v64;
      v32 = v66;
      v33 = v30;
      v34 = v69;
      (*v64)(v66, v33, v69);
      v35 = v68;
      v31(v68, v32, v34);
      v36 = (*v63)(v35, v34);
      if (v36 == v62)
      {
        (*v55)(v35, v34);
        v37 = v29;
        v38 = v35;
        v12 = v71;
        (*v61)(v29, v38, v71);
        v21 = v58;
        (*v58)(v37, 0, 1, v12);
      }

      else
      {
        v39 = v29;
        v21 = v58;
        v40 = v71;
        (*v58)(v39, 1, 1, v71);
        v41 = v35;
        v12 = v40;
        (*v56)(v41, v34);
      }

      KeyPath = v65;
      v42 = (*v60)(v75, 1, v12);
      v20 = v70;
      v3 = v59;
      v22 = v25;
      if (v42 != 1)
      {
        v43 = *v61;
        v44 = v57;
        (*v61)(v57, v75, v12);
        v43(KeyPath, v44, v12);
        v45 = (*v54)(KeyPath, v12);
        if (v45 == v53)
        {
          v23 = 0;
        }

        else
        {
          (*v52)(KeyPath, v12);
          v23 = 1;
        }

        v20 = v70;
        v22 = v25;
        goto LABEL_6;
      }
    }

    sub_21DF23614(v75, &qword_27CEA6D98, &qword_21E145DC0);
    v23 = 1;
LABEL_6:
    ++v13;
    v24 = __OFADD__(v19, v23);
    v19 += v23;
    if (v24)
    {
      goto LABEL_27;
    }
  }

  v46 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable;
  v47 = v51;
  result = swift_beginAccess();
  if (((v19 != 0) ^ *(v47 + v46)))
  {
    v49 = swift_getKeyPath();
    MEMORY[0x28223BE20](v49);
    v50[-2] = v47;
    LOBYTE(v50[-1]) = v19 != 0;
    v76 = v47;
    sub_21E13D3B4();
  }

  else
  {
    *(v47 + v46) = v19 != 0;
  }

  return result;
}

uint64_t NewEntityModel.isThirdPartySearchAvailable.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3B4();
  }

  return result;
}

uint64_t (*sub_21DF526A4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DF52708;
}

uint64_t sub_21DF52708(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_21DF51C70();
  }

  return result;
}

uint64_t NewEntityModel.visualSearchActions.setter(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();

  v5 = sub_21E0E022C(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    return sub_21DF51C70();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3B4();
  }
}

uint64_t sub_21DF528D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  *(a1 + v4) = a2;

  return sub_21DF51C70();
}

uint64_t (*NewEntityModel.visualSearchActions.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21DF526A4(v4);
  return sub_21DF52A80;
}

void sub_21DF52A80(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_21E13D3D4();

  free(v1);
}

uint64_t NewEntityModel.isThirdPartySearchAvailable.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_21DF52BD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t (*NewEntityModel.isThirdPartySearchAvailable.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF52E04;
}

uint64_t NewEntityModel.textAction.getter()
{
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  swift_beginAccess();
}

uint64_t sub_21DF52ED0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t NewEntityModel.textAction.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    if (a1)
    {
      v6 = sub_21E1423C4();
      MEMORY[0x28223BE20](v6);
      v11 = v5;
      v12 = a1;

      v7 = sub_21E0C372C(sub_21DF35578, &v10, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);

      if (v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11 = v2;
    v12 = a1;
    v13 = v2;
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3B4();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_21DF53194(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*NewEntityModel.textAction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF5334C;
}

uint64_t (*NewEntityModel.dataDetectors.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF5351C;
}

uint64_t NewEntityModel.pin.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  swift_beginAccess();
  return sub_21DF236C0(v5 + v3, a1, &qword_27CEACB50, &qword_21E14FA80);
}

uint64_t NewEntityModel.pin.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  swift_beginAccess();
  sub_21DF236C0(v1 + v6, v5, &qword_27CEACB50, &qword_21E14FA80);
  v7 = sub_21DF5F390(v5, a1);
  sub_21DF23614(v5, &qword_27CEACB50, &qword_21E14FA80);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3B4();
  }

  else
  {
    swift_beginAccess();
    sub_21DF5F6B0(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_21DF23614(a1, &qword_27CEACB50, &qword_21E14FA80);
}

uint64_t sub_21DF537EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  swift_beginAccess();
  sub_21DF5F6B0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t (*NewEntityModel.pin.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  swift_beginAccess();
  return sub_21DF539A0;
}

uint64_t NewEntityModel.__allocating_init(pin:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NewEntityModel.init(pin:)(a1);
  return v2;
}

uint64_t NewEntityModel.init(pin:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21E13EF04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21E13D344();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21E13ED04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13ECE4();
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners, v14, v11);
  v15 = v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage;
  strcpy((v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage), "questionmark");
  *(v15 + 13) = 0;
  *(v15 + 14) = -5120;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) = 1;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout) = 0;
  v16 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions) = v16;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__preShutterActions) = v16;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions) = v16;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable) = 0;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction) = 0;
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__dataDetectors) = v16;
  (*(v5 + 56))(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin, 1, 1, v4);
  sub_21E13D3F4();
  sub_21E13EE24();
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v10, v19);
  (*(v5 + 16))(v7, a1, v4);
  *(v2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel) = sub_21DF338D4(v7, 0, 0, 8.0, 8.0);
  NewEntityModel.apply(pin:)(a1);
  (*(v5 + 8))(a1, v4);
  return v2;
}

uint64_t NewEntityModel.apply(pin:)(uint64_t a1)
{
  v279 = 0;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76B0, &qword_21E1472A0);
  MEMORY[0x28223BE20](v241);
  v240 = &v222 - v2;
  v242 = sub_21E13EE04();
  v246 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v239 = &v222 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v227 = &v222 - v5;
  v274 = sub_21E13EE74();
  v229 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v273 = &v222 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_21E13EE94();
  v228 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v271 = &v222 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_21E13F1F4();
  v223 = *(v253 - 1);
  MEMORY[0x28223BE20](v253);
  v252 = &v222 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76B8, &qword_21E1472A8);
  MEMORY[0x28223BE20](v9 - 8);
  v262 = (&v222 - v10);
  v278 = sub_21E13F274();
  v277 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v243 = &v222 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v225 = &v222 - v13;
  MEMORY[0x28223BE20](v14);
  v260 = &v222 - v15;
  MEMORY[0x28223BE20](v16);
  v281 = &v222 - v17;
  v257 = sub_21E13EEB4();
  v248 = *(v257 - 1);
  MEMORY[0x28223BE20](v257 - 1);
  v256 = (&v222 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v255 = &v222 - v20;
  MEMORY[0x28223BE20](v21);
  v254 = &v222 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D98, &qword_21E145DC0);
  MEMORY[0x28223BE20](v23 - 8);
  v264 = &v222 - v24;
  v25 = sub_21E13D994();
  v226 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v238 = &v222 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v237 = &v222 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v29 - 8);
  v230 = &v222 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v245 = &v222 - v32;
  MEMORY[0x28223BE20](v33);
  v244 = &v222 - v34;
  MEMORY[0x28223BE20](v35);
  v259 = &v222 - v36;
  MEMORY[0x28223BE20](v37);
  v265 = (&v222 - v38);
  MEMORY[0x28223BE20](v39);
  v261 = (&v222 - v40);
  MEMORY[0x28223BE20](v41);
  v43 = &v222 - v42;
  MEMORY[0x28223BE20](v44);
  v276 = &v222 - v45;
  v46 = sub_21E13EEE4();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v275 = &v222 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v222 - v50;
  v52 = sub_21E13ED04();
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v222 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v222 - v56;
  v58 = sub_21E13EF04();
  v59 = *(v58 - 8);
  (*(v59 + 16))(v57, a1, v58);
  (*(v59 + 56))(v57, 0, 1, v58);
  NewEntityModel.pin.setter(v57);
  sub_21E13EEF4();
  sub_21DF5041C(v54);
  v60 = sub_21E13EDE4();
  sub_21DF50738(v60, v61);
  v62 = sub_21E13EDD4();
  v63 = *(v62 + 16);
  v263 = v25;
  v231 = v47;
  v258 = v43;
  if (v63)
  {
    v283 = MEMORY[0x277D84F90];
    sub_21E142924();
    v270 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
    v66 = *(v47 + 16);
    v65 = v47 + 16;
    v64 = v66;
    v269 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions;
    v67 = (*(v65 + 64) + 32) & ~*(v65 + 64);
    v251 = v62;
    v68 = v62 + v67;
    v268 = *(v65 + 56);
    v267 = v65 + 40;
    v266 = (v65 - 8);
    v66(v51, (v62 + v67), v46);
    while (1)
    {
      swift_getKeyPath();
      v70 = v46;
      v71 = v282;
      v288 = v282;
      sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
      sub_21E13D3C4();

      v73 = *(v71 + v269);
      MEMORY[0x28223BE20](v72);
      *(&v222 - 2) = v51;

      v74 = v279;
      v75 = sub_21DF57C30(sub_21DF5F770, (&v222 - 4), v73);
      v279 = v74;

      if (!v75)
      {
        v76 = v275;
        v64(v275, v51, v70);
        type metadata accessor for NewActionModel(0);
        swift_allocObject();
        NewActionModel.init(pill:)(v76);
      }

      v69 = v276;
      v64(v276, v51, v70);
      (*v267)(v69, 0, 1, v70);
      NewActionModel.pill.setter(v69);
      (*v266)(v51, v70);
      sub_21E1428F4();
      sub_21E142934();
      sub_21E142944();
      sub_21E142904();
      v68 += v268;
      --v63;
      v46 = v70;
      if (!v63)
      {
        break;
      }

      v64(v51, v68, v70);
    }

    v77 = v283;
    v25 = v263;
    v43 = v258;
  }

  else
  {

    v77 = MEMORY[0x277D84F90];
  }

  v289 = v77;
  swift_bridgeObjectRetain_n();
  sub_21DF514A8(v77);
  v224 = v77 >> 62;
  v276 = v77;
  if (v77 >> 62)
  {
LABEL_156:
    v78 = sub_21E1427B4();
  }

  else
  {
    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v264;
  v80 = v25;
  v280 = v46;
  if (!v78)
  {
LABEL_30:

    v83 = 0;
    goto LABEL_31;
  }

  v81 = 0;
  v270 = v276 & 0xC000000000000001;
  v269 = v276 & 0xFFFFFFFFFFFFFF8;
  v268 = v231 + 48;
  v267 = v226 + 56;
  v251 = (v248 + 4);
  v250 = (v248 + 11);
  LODWORD(v249) = *MEMORY[0x277D79680];
  v236 = (v248 + 1);
  v235 = (v248 + 12);
  v248 = (v226 + 32);
  v247 = (v226 + 48);
  v234 = (v226 + 88);
  v233 = *MEMORY[0x277D78F38];
  v232 = (v226 + 8);
  v266 = v78;
  while (1)
  {
    if (v270)
    {
      v83 = MEMORY[0x223D530F0](v81, v276);
      v84 = (v81 + 1);
      if (__OFADD__(v81, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v81 >= *(v269 + 16))
      {
        goto LABEL_152;
      }

      v83 = *(v276 + 8 * v81 + 32);

      v84 = (v81 + 1);
      if (__OFADD__(v81, 1))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    v25 = v79;
    swift_getKeyPath();
    v283 = v83;
    sub_21DF606B8(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
    sub_21E13D3C4();
    v46 = v280;

    v85 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
    swift_beginAccess();
    sub_21DF236C0(v83 + v85, v43, &qword_27CEA6D48, &unk_21E148070);
    if (!(*v268)(v43, 1, v46))
    {
      break;
    }

    sub_21DF23614(v43, &qword_27CEA6D48, &unk_21E148070);
    (*v267)(v79, 1, 1, v80);
    v82 = v266;
LABEL_14:
    sub_21DF23614(v79, &qword_27CEA6D98, &qword_21E145DC0);
LABEL_15:
    ++v81;
    if (v84 == v82)
    {
      goto LABEL_30;
    }
  }

  v86 = v255;
  sub_21E13EEC4();
  sub_21DF23614(v43, &qword_27CEA6D48, &unk_21E148070);
  v25 = v251;
  v87 = *v251;
  v88 = v254;
  v89 = v257;
  (*v251)(v254, v86, v257);
  v90 = v256;
  (v87)(v256, v88, v89);
  v91 = (*v250)(v90, v89);
  if (v91 == v249)
  {
    (*v235)(v90, v89);
    v79 = v264;
    v92 = v90;
    v80 = v263;
    (*v248)(v264, v92, v263);
    (*v267)(v79, 0, 1, v80);
  }

  else
  {
    v79 = v264;
    v25 = v263;
    (*v267)(v264, 1, 1, v263);
    v93 = v90;
    v80 = v25;
    (*v236)(v93, v89);
  }

  if ((*v247)(v79, 1, v80) == 1)
  {

    v43 = v258;
    v82 = v266;
    goto LABEL_14;
  }

  v94 = *v248;
  v43 = v237;
  (*v248)(v237);
  v25 = v238;
  (v94)(v238, v43, v80);
  v95 = (*v234)(v25, v80);
  if (v95 != v233)
  {

    (*v232)(v25, v80);
    v43 = v258;
    v82 = v266;
    v46 = v280;
    goto LABEL_15;
  }

  (*(v226 + 96))(v25, v80);
  v221 = sub_21E13E3F4();
  (*(*(v221 - 8) + 8))(v25, v221);
  v46 = v280;
LABEL_31:
  v96 = v282;
  NewEntityModel.textAction.setter(v83);
  swift_getKeyPath();
  v97 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  v283 = v96;
  v98 = sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  v264 = v97;
  v263 = v98;
  sub_21E13D3C4();

  v99 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
  swift_beginAccess();
  v100 = v261;
  v101 = v262;
  if (!*(v96 + v99))
  {
LABEL_35:
    NewEntityModel.dataDetectors.setter(MEMORY[0x277D84F90]);
    v110 = MEMORY[0x277D84F90];
    goto LABEL_91;
  }

  v102 = sub_21DFE4554();
  v103 = v102;
  v104 = *(v102 + 16);
  if (v104)
  {
    v105 = MEMORY[0x277D796D0];
    v106 = sub_21DF5BE28(*(v102 + 16), 0, &qword_27CEA7738, &qword_21E147750, MEMORY[0x277D796D0]);
    v107 = v277;
    sub_21DF5ECEC(&v283, &v106[(*(v277 + 80) + 32) & ~*(v277 + 80)], v104, v103, v105);
    v109 = v108;
    sub_21DF5F790();
    if (v109 != v104)
    {
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {

    v106 = MEMORY[0x277D84F90];
    v107 = v277;
  }

  v111 = MEMORY[0x277D84F90];
  v270 = *(v106 + 2);
  if (v270)
  {
    v46 = 0;
    v269 = v107 + 16;
    v266 = (v223 + 8);
    v268 = v107 + 32;
    v112 = (v107 + 8);
    while (v46 < *(v106 + 2))
    {
      v43 = (*(v277 + 80) + 32) & ~*(v277 + 80);
      v25 = *(v277 + 72);
      (*(v277 + 16))(v281, &v106[v43 + v25 * v46], v278);
      sub_21E13F244();
      v113 = sub_21E13F1D4();
      v114 = *(v113 - 8);
      if ((*(v114 + 48))(v101, 1, v113) == 1)
      {
        sub_21DF23614(v101, &qword_27CEA76B8, &qword_21E1472A8);
        v115 = 1;
      }

      else
      {
        v116 = sub_21E13F1C4();
        v117 = (*(v114 + 8))(v101, v113);
        v118 = v252;
        MEMORY[0x223D52DD0](v117);

        LODWORD(v116) = sub_21E13F1E4();
        (*v266)(v118, v253);
        v115 = v116 ^ 1;
      }

      v119 = sub_21E13F224();
      if (v120)
      {
        v121 = v119;
        v122 = v120;

        v123 = HIBYTE(v122) & 0xF;
        if ((v122 & 0x2000000000000000) == 0)
        {
          v123 = v121 & 0xFFFFFFFFFFFFLL;
        }

        v124 = v123 == 0;
      }

      else
      {
        v124 = 1;
      }

      v125 = sub_21E13F254();
      if (!v126)
      {
        goto LABEL_39;
      }

      v127 = v125;
      v128 = v126;

      v129 = HIBYTE(v128) & 0xF;
      v158 = (v128 & 0x2000000000000000) == 0;
      v101 = v262;
      if (v158)
      {
        v129 = v127 & 0xFFFFFFFFFFFFLL;
      }

      if (((v115 | v124) & 1) == 0 && v129)
      {
        v130 = *v268;
        (*v268)(v260, v281, v278);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v283 = v111;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21DF5BF68(0, *(v111 + 16) + 1, 1);
          v111 = v283;
        }

        v133 = *(v111 + 16);
        v132 = *(v111 + 24);
        if (v133 >= v132 >> 1)
        {
          sub_21DF5BF68((v132 > 1), v133 + 1, 1);
          v111 = v283;
        }

        *(v111 + 16) = v133 + 1;
        v130(v111 + v43 + v133 * v25, v260, v278);
        v101 = v262;
      }

      else
      {
LABEL_39:
        (*v112)(v281, v278);
      }

      if (v270 == ++v46)
      {
        goto LABEL_60;
      }
    }

LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

LABEL_60:

  v283 = v111;

  v134 = v279;
  sub_21DF5D0D4(&v283, v135);
  if (v134)
  {
    goto LABEL_159;
  }

  v136 = v283;
  v283 = MEMORY[0x277D84F90];
  v137 = *(v136 + 16);
  v138 = v278;
  v139 = v277;
  v140 = v225;
  if (v137)
  {
    v141 = (*(v277 + 80) + 32) & ~*(v277 + 80);
    v268 = v136;
    v142 = v136 + v141;
    v281 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__dataDetectors;
    swift_beginAccess();
    v145 = *(v139 + 16);
    v143 = v139 + 16;
    v144 = v145;
    v270 = *(v143 + 56);
    v269 = v143 - 8;
    v279 = v145;
    v277 = v143;
    do
    {
      v144(v140, v142, v138);
      swift_getKeyPath();
      v146 = v282;
      v287 = v282;
      sub_21E13D3C4();

      v148 = v138;
      v149 = *&v281[v146];
      MEMORY[0x28223BE20](v147);
      *(&v222 - 2) = v140;

      v43 = sub_21DF57C30(sub_21DF5F798, (&v222 - 4), v149);

      if (!v43)
      {
        v150 = v243;
        v144(v243, v140, v148);
        type metadata accessor for NewActionModel(0);
        swift_allocObject();
        v43 = NewActionModel.init(dataDetector:)(v150);
        v138 = v148;
      }

      v151 = (*v269)(v140, v138);
      MEMORY[0x223D52AF0](v151);
      if (*((v283 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v283 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v278 = *((v283 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21E1422F4();
      }

      sub_21E142324();
      v142 += v270;
      --v137;
      v144 = v279;
    }

    while (v137);
    v152 = v283;
  }

  else
  {

    v152 = MEMORY[0x277D84F90];
  }

  v46 = v280;
  v153 = v276;
  v25 = v276 & 0xFFFFFFFFFFFFFF8;
  if (v224)
  {
    v154 = sub_21E1427B4();
  }

  else
  {
    v154 = *((v276 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v155 = 0;
  v156 = v153 & 0xC000000000000001;
  while (1)
  {
    if (v154 == v155)
    {
      goto LABEL_90;
    }

    if (v156)
    {
      v157 = MEMORY[0x223D530F0](v155, v153);
    }

    else
    {
      if (v155 >= *(v25 + 16))
      {
        goto LABEL_154;
      }

      v157 = *(v153 + 8 * v155 + 32);
    }

    v158 = *(v157 + 16) == *(v267 + 16) && *(v157 + 24) == *(v267 + 24);
    if (v158)
    {
      break;
    }

    v43 = sub_21E142B14();

    if (v43)
    {
      goto LABEL_88;
    }

    v159 = __OFADD__(v155++, 1);
    v153 = v276;
    if (v159)
    {
      goto LABEL_155;
    }
  }

LABEL_88:
  v134 = (v155 + 1);
  if (__OFADD__(v155, 1))
  {
    __break(1u);
LABEL_159:

    __break(1u);
    return result;
  }

  sub_21DF5F950(v155, v155 + 1, v152);

LABEL_90:
  NewEntityModel.dataDetectors.setter(v152);

  v110 = MEMORY[0x277D84F90];
  v100 = v261;
LABEL_91:
  v160 = v289;
  v287 = v110;
  if (v289 >> 62)
  {
    v43 = sub_21E1427B4();
  }

  else
  {
    v43 = *((v289 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v279 = v160;
  v281 = v43;
  if (!v43)
  {
    v182 = MEMORY[0x277D84F90];
    v183 = v282;
    NewEntityModel.actions.setter(MEMORY[0x277D84F90]);
    goto LABEL_122;
  }

  v161 = 0;
  v278 = v160 & 0xC000000000000001;
  v277 = v160 & 0xFFFFFFFFFFFFFF8;
  v276 = v231 + 48;
  v270 = v231 + 16;
  v269 = v231 + 8;
  LODWORD(v262) = *MEMORY[0x277D79678];
  v268 = v229 + 104;
  v267 = v229 + 8;
  v266 = (v228 + 8);
  while (2)
  {
    if (v278)
    {
      v43 = MEMORY[0x223D530F0](v161, v160);
    }

    else
    {
      if (v161 >= *(v277 + 16))
      {
        goto LABEL_148;
      }

      v43 = *(v160 + 8 * v161 + 32);
    }

    v162 = (v161 + 1);
    if (__OFADD__(v161, 1))
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    swift_getKeyPath();
    v286 = v43;
    sub_21DF606B8(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
    sub_21E13D3C4();

    v163 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
    swift_beginAccess();
    sub_21DF236C0(v43 + v163, v100, &qword_27CEA6D48, &unk_21E148070);
    v25 = *v276;
    if ((*v276)(v100, 1, v46))
    {
      sub_21DF23614(v100, &qword_27CEA6D48, &unk_21E148070);
LABEL_96:
      sub_21E1428F4();
      sub_21E142934();
      sub_21E142944();
      sub_21E142904();
      goto LABEL_97;
    }

    v164 = v275;
    (*v270)(v275, v100, v46);
    sub_21DF23614(v100, &qword_27CEA6D48, &unk_21E148070);
    v165 = v271;
    sub_21E13EEA4();
    (*v269)(v164, v46);
    v166 = v273;
    v167 = v274;
    (*v268)(v273, v262, v274);
    LOBYTE(v164) = sub_21E13EE84();
    v168 = v166;
    v46 = v280;
    (*v267)(v168, v167);
    v169 = v165;
    v100 = v261;
    (*v266)(v169, v272);
    if ((v164 & 1) == 0)
    {
      goto LABEL_96;
    }

LABEL_97:
    v160 = v279;
    ++v161;
    if (v162 != v281)
    {
      continue;
    }

    break;
  }

  NewEntityModel.actions.setter(v287);
  v170 = 0;
  v286 = MEMORY[0x277D84F90];
  LODWORD(v262) = *MEMORY[0x277D79670];
  while (2)
  {
    if (v278)
    {
      v171 = MEMORY[0x223D530F0](v170, v160);
      v172 = (v170 + 1);
      if (__OFADD__(v170, 1))
      {
        break;
      }

      goto LABEL_112;
    }

    if (v170 >= *(v277 + 16))
    {
      goto LABEL_149;
    }

    v171 = *(v160 + 8 * v170 + 32);

    v172 = (v170 + 1);
    if (!__OFADD__(v170, 1))
    {
LABEL_112:
      swift_getKeyPath();
      v285 = v171;
      sub_21E13D3C4();

      v173 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
      swift_beginAccess();
      v174 = v171 + v173;
      v175 = v265;
      sub_21DF236C0(v174, v265, &qword_27CEA6D48, &unk_21E148070);
      if ((v25)(v175, 1, v46))
      {

        sub_21DF23614(v175, &qword_27CEA6D48, &unk_21E148070);
      }

      else
      {
        v176 = v175;
        v177 = v275;
        (*v270)(v275, v176, v46);
        sub_21DF23614(v176, &qword_27CEA6D48, &unk_21E148070);
        v178 = v46;
        v179 = v271;
        sub_21E13EEA4();
        (*v269)(v177, v178);
        v180 = v273;
        v181 = v274;
        (*v268)(v273, v262, v274);
        LOBYTE(v177) = sub_21E13EE84();
        (*v267)(v180, v181);
        (*v266)(v179, v272);
        if (v177)
        {
          sub_21E1428F4();
          sub_21E142934();
          sub_21E142944();
          sub_21E142904();
        }

        else
        {
        }

        v46 = v280;
        v160 = v279;
      }

      ++v170;
      v43 = v281;
      if (v172 == v281)
      {
        goto LABEL_120;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_120:
  v182 = v286;
  v183 = v282;
LABEL_122:
  NewEntityModel.preShutterActions.setter(v182);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA6858, &unk_21E147300);
  v184 = swift_allocObject();
  *(v184 + 16) = xmmword_21E144A20;
  v185 = v246;
  v186 = *(v246 + 104);
  v187 = v227;
  LODWORD(v255) = *MEMORY[0x277D79658];
  v188 = v242;
  v254 = (v246 + 104);
  v253 = v186;
  v186(v227);
  v189 = v275;
  sub_21E13EDF4();
  v190 = *(v185 + 8);
  v246 = v185 + 8;
  v252 = v190;
  (v190)(v187, v188);
  type metadata accessor for NewActionModel(0);
  swift_allocObject();
  v191 = NewActionModel.init(pill:)(v189);
  v250 = v184;
  *(v184 + 32) = v191;
  v192 = MEMORY[0x277D84F90];
  v285 = MEMORY[0x277D84F90];
  if (v43)
  {
    v25 = 0;
    v270 = v160 & 0xC000000000000001;
    v269 = v160 & 0xFFFFFFFFFFFFFF8;
    v276 = v231 + 48;
    v261 = (v231 + 16);
    v265 = (v231 + 8);
    LODWORD(v260) = *MEMORY[0x277D79678];
    v258 = (v229 + 104);
    v257 = (v229 + 8);
    v256 = (v228 + 8);
    v251 = (v231 + 56);
    v249 = (v231 + 32);
    v193 = &qword_27CEA6D48;
    v194 = v259;
    while (1)
    {
      if (v270)
      {
        v197 = MEMORY[0x223D530F0](v25, v160);
      }

      else
      {
        if (v25 >= *(v269 + 16))
        {
          goto LABEL_151;
        }

        v197 = *(v160 + 8 * v25 + 32);
      }

      v198 = v276;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_150;
      }

      v277 = v25;
      v278 = v25 + 1;
      swift_getKeyPath();
      v199 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel___observationRegistrar;
      v284 = v197;
      v43 = sub_21DF606B8(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
      sub_21E13D3C4();
      v46 = v280;

      v200 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
      swift_beginAccess();
      sub_21DF236C0(v197 + v200, v194, v193, &unk_21E148070);
      v201 = v193;
      v202 = *v198;
      if ((*v198)(v194, 1, v46))
      {

        v193 = v201;
        sub_21DF23614(v194, v201, &unk_21E148070);
      }

      else
      {
        v266 = v43;
        v267 = v199;
        v268 = v202;
        v203 = v275;
        (*v261)(v275, v194, v46);
        v193 = v201;
        sub_21DF23614(v194, v201, &unk_21E148070);
        v204 = v271;
        sub_21E13EEA4();
        v262 = *v265;
        v262(v203, v46);
        v205 = v273;
        v43 = v46;
        v46 = v274;
        (*v258)(v273, v260, v274);
        LOBYTE(v203) = sub_21E13EE84();
        (*v257)(v205, v46);
        (*v256)(v204, v272);
        if (v203)
        {
          swift_getKeyPath();
          v284 = v197;
          sub_21E13D3C4();

          v206 = v244;
          sub_21DF236C0(v197 + v200, v244, v193, &unk_21E148070);
          v207 = v239;
          v208 = v242;
          (v253)(v239, v255, v242);
          v209 = v245;
          sub_21E13EDF4();
          (v252)(v207, v208);
          (*v251)(v209, 0, 1, v43);
          v210 = *(v241 + 48);
          v211 = v240;
          sub_21DF236C0(v206, v240, v193, &unk_21E148070);
          sub_21DF236C0(v209, v211 + v210, v193, &unk_21E148070);
          v212 = v268;
          v46 = v43;
          if ((v268)(v211, 1, v43) == 1)
          {
            sub_21DF23614(v209, v193, &unk_21E148070);
            sub_21DF23614(v206, v193, &unk_21E148070);
            v213 = v212(v211 + v210, 1, v43);
            v195 = v278;
            v196 = v277;
            if (v213 == 1)
            {
              sub_21DF23614(v211, v193, &unk_21E148070);
              v194 = v259;
              v160 = v279;
LABEL_142:

              goto LABEL_126;
            }

LABEL_139:
            sub_21DF23614(v211, &qword_27CEA76B0, &qword_21E1472A0);
            v194 = v259;
            v160 = v279;
          }

          else
          {
            v214 = v230;
            v43 = &unk_21E148070;
            sub_21DF236C0(v211, v230, v193, &unk_21E148070);
            if (v212(v211 + v210, 1, v46) == 1)
            {
              sub_21DF23614(v245, v193, &unk_21E148070);
              sub_21DF23614(v244, v193, &unk_21E148070);
              v262(v214, v46);
              v195 = v278;
              v196 = v277;
              goto LABEL_139;
            }

            v215 = v275;
            (*v249)(v275, v211 + v210, v46);
            sub_21DF606B8(&qword_280F69080, MEMORY[0x277D79698], MEMORY[0x277D796A8]);
            v216 = sub_21E142074();
            v217 = v215;
            v218 = v262;
            v262(v217, v46);
            sub_21DF23614(v245, v193, &unk_21E148070);
            sub_21DF23614(v244, v193, &unk_21E148070);
            v218(v214, v46);
            sub_21DF23614(v211, v193, &unk_21E148070);
            v194 = v259;
            v160 = v279;
            v195 = v278;
            v196 = v277;
            if (v216)
            {
              goto LABEL_142;
            }
          }

          sub_21E1428F4();
          sub_21E142934();
          sub_21E142944();
          sub_21E142904();
          goto LABEL_126;
        }

        v194 = v259;
      }

      v160 = v279;
      v195 = v278;
      v196 = v277;
LABEL_126:
      v25 = v196 + 1;
      v158 = v195 == v281;
      v183 = v282;
      if (v158)
      {
        v192 = v285;
        break;
      }
    }
  }

  v285 = v250;
  sub_21DF5B174(v192);
  NewEntityModel.visualSearchActions.setter(v285);
  swift_getKeyPath();
  v285 = v183;
  sub_21E13D3C4();

  swift_beginAccess();
  swift_getKeyPath();
  v284 = v183;

  sub_21E13D3C4();

  swift_beginAccess();

  sub_21DF2B578(v219);
}

uint64_t NewEntityModel.init(systemImage:centroid:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v40 = a1;
  v41 = a2;
  v6 = sub_21E13D344();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21E13ED04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13ECE4();
  (*(v11 + 32))(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners, v13, v10);
  v14 = v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage;
  strcpy((v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage), "questionmark");
  *(v14 + 13) = 0;
  *(v14 + 14) = -5120;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) = 1;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout) = 0;
  v15 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions) = v15;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__preShutterActions) = v15;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions) = v15;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable) = 0;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction) = 0;
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__dataDetectors) = v15;
  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  v17 = sub_21E13EF04();
  (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
  sub_21E13D3F4();
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  (*(v7 + 32))(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v9, v6);
  v39 = *(v7 + 16);
  v39(v9, v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v6);
  type metadata accessor for CardModel(0);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions) = v15;
  v19 = (v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88, &unk_21E145670);
  (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__barcode;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C90, &unk_21E147310);
  (*(*(v24 - 8) + 56))(v18 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__summarization;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C98, &unk_21E145680);
  (*(*(v26 - 8) + 56))(v18 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__readAloud;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA0, &unk_21E147320);
  (*(*(v28 - 8) + 56))(v18 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__eventExtraction;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA8, &unk_21E145690);
  (*(*(v30 - 8) + 56))(v18 + v29, 1, 1, v30);
  v31 = v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0u;
  *(v31 + 64) = 0u;
  *(v31 + 80) = -1;
  v32 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__geoLookup;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CB0, &qword_21E147330);
  (*(*(v33 - 8) + 56))(v18 + v32, 1, 1, v33);
  v34 = v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = -256;
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualSearch) = sub_21DF26084(v15);
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executionFailures) = sub_21DF26264(v15);
  v35 = v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text;
  *v35 = 0;
  *(v35 + 8) = 0;
  *(v35 + 16) = -1;
  v36 = v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback;
  *v36 = 0;
  *(v36 + 8) = -1;
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience) = 5;
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed) = 1;
  sub_21E13D3F4();
  v39((v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_id), v9, v6);
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding) = 0x4020000000000000;
  *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding) = 0x4020000000000000;
  swift_getKeyPath();
  v43 = 0;
  v44 = 0;
  v42 = v18;
  v45 = v18;
  sub_21DF606B8(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3B4();

  (*(v7 + 8))(v9, v6);
  *(v5 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel) = v18;
  sub_21DF50738(v40, v41);
  sub_21E13ECE4();
  sub_21DF5041C(v13);
  return v5;
}

uint64_t type metadata accessor for NewEntityModel(uint64_t a1)
{
  result = qword_280F6B670;
  if (!qword_280F6B670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21DF5706C(unint64_t result)
{
  if (result >= 9)
  {
  }

  return result;
}

uint64_t NewEntityModel.__allocating_init(actions:searchActions:)(unint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  NewEntityModel.init(actions:searchActions:)(a1, a2);
  return v4;
}

uint64_t NewEntityModel.init(actions:searchActions:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v39 = a2;
  v4 = sub_21E13D344();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E13ED04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13ECE4();
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners, v11, v8);
  v12 = v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage;
  strcpy((v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage), "questionmark");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence) = 1;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions) = v13;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__preShutterActions) = v13;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions) = v13;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable) = 0;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction) = 0;
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__dataDetectors) = v13;
  v14 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin;
  v15 = sub_21E13EF04();
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  sub_21E13D3F4();
  _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
  (*(v5 + 32))(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v7, v4);
  v37 = *(v5 + 16);
  v37(v7, v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v4);
  type metadata accessor for CardModel(0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__carouselActions) = v13;
  v17 = (v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executeAction);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__selectedActionID);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88, &unk_21E145670);
  (*(*(v20 - 8) + 56))(v16 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__barcode;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C90, &unk_21E147310);
  (*(*(v22 - 8) + 56))(v16 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__summarization;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C98, &unk_21E145680);
  (*(*(v24 - 8) + 56))(v16 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__readAloud;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA0, &unk_21E147320);
  (*(*(v26 - 8) + 56))(v16 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__eventExtraction;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA8, &unk_21E145690);
  (*(*(v28 - 8) + 56))(v16 + v27, 1, 1, v28);
  v29 = v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 80) = -1;
  v30 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__geoLookup;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CB0, &qword_21E147330);
  (*(*(v31 - 8) + 56))(v16 + v30, 1, 1, v31);
  v32 = v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = -256;
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualSearch) = sub_21DF26084(v13);
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__executionFailures) = sub_21DF26264(v13);
  v33 = v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text;
  *v33 = 0;
  *(v33 + 8) = 0;
  *(v33 + 16) = -1;
  v34 = v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback;
  *v34 = 0;
  *(v34 + 8) = -1;
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience) = 5;
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed) = 1;
  sub_21E13D3F4();
  v37((v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_id), v7, v4);
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding) = 0x4020000000000000;
  *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding) = 0x4020000000000000;
  swift_getKeyPath();
  v41 = 0;
  v42 = 0;
  v40 = v16;
  v43 = v16;
  sub_21DF606B8(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3B4();

  (*(v5 + 8))(v7, v4);
  *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel) = v16;
  sub_21DF50738(0x6E6F697473657571, 0xEC0000006B72616DLL);
  sub_21E13ECE4();
  sub_21DF5041C(v11);
  NewEntityModel.actions.setter(v38);
  NewEntityModel.visualSearchActions.setter(v39);
  return v3;
}

uint64_t sub_21DF57814(uint64_t a1)
{
  v1 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  if (v1 == sub_21E13EE54() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21E142B14();
  }

  return v5 & 1;
}

uint64_t sub_21DF57890@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_21E13EDA4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_21DF57A64@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7778, &unk_21E147790);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v19 = v9;
    v20 = v8;
    v21 = a3;
    v14 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    while (1)
    {
      sub_21DF236C0(v14, v12, &qword_27CEA7778, &unk_21E147790);
      v16 = a1(v12);
      if (v3)
      {
        return sub_21DF23614(v12, &qword_27CEA7778, &unk_21E147790);
      }

      if (v16)
      {
        break;
      }

      sub_21DF23614(v12, &qword_27CEA7778, &unk_21E147790);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a3 = v21;
        goto LABEL_10;
      }
    }

    a3 = v21;
    sub_21DF3DE9C(v12, v21, &qword_27CEA7778, &unk_21E147790);
    v17 = 0;
LABEL_10:
    v9 = v19;
    v8 = v20;
  }

  else
  {
    v17 = 1;
  }

  return (*(v9 + 56))(a3, v17, 1, v8, v10);
}

uint64_t sub_21DF57C30(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_21E1427B4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x223D530F0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_21DF57D54(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v27 = a2;
  v4 = sub_21E13F274();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B0, &unk_21E1477F0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77B8, &qword_21E1557F0);
  MEMORY[0x28223BE20](v11 - 8);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = *a1;
  swift_getKeyPath();
  v28 = v16;
  sub_21DF606B8(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__semanticDataDetectorActionable;
  swift_beginAccess();
  (*(v5 + 16))(v15, v27, v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v18 = *(v8 + 56);
  sub_21DF236C0(v16 + v17, v10, &qword_27CEA77B8, &qword_21E1557F0);
  sub_21DF236C0(v15, &v10[v18], &qword_27CEA77B8, &qword_21E1557F0);
  v19 = *(v5 + 48);
  if (v19(v10, 1, v4) != 1)
  {
    v21 = v26;
    sub_21DF236C0(v10, v26, &qword_27CEA77B8, &qword_21E1557F0);
    if (v19(&v10[v18], 1, v4) != 1)
    {
      v22 = v25;
      (*(v5 + 32))(v25, &v10[v18], v4);
      sub_21DF606B8(&qword_27CEA77C0, MEMORY[0x277D796D0], MEMORY[0x277D796E0]);
      v20 = sub_21E142074();
      v23 = *(v5 + 8);
      v23(v22, v4);
      sub_21DF23614(v15, &qword_27CEA77B8, &qword_21E1557F0);
      v23(v21, v4);
      sub_21DF23614(v10, &qword_27CEA77B8, &qword_21E1557F0);
      return v20 & 1;
    }

    sub_21DF23614(v15, &qword_27CEA77B8, &qword_21E1557F0);
    (*(v5 + 8))(v21, v4);
    goto LABEL_6;
  }

  sub_21DF23614(v15, &qword_27CEA77B8, &qword_21E1557F0);
  if (v19(&v10[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v10, &qword_27CEA77B0, &unk_21E1477F0);
    v20 = 0;
    return v20 & 1;
  }

  sub_21DF23614(v10, &qword_27CEA77B8, &qword_21E1557F0);
  v20 = 1;
  return v20 & 1;
}

uint64_t NewEntityModel.apply(executionState:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v5 = sub_21E13DAE4();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = sub_21E13E224();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21E13DF64();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v37 - v20;
  v22 = *(v11 + 16);
  v40 = a1;
  v22(v13, a1, v10, v19);
  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x277D793B0])
  {
    (*(v11 + 96))(v13, v10);
    v23 = *(v15 + 32);
    v23(v21, v13, v14);
    v23(v17, v21, v14);
    if ((*(v15 + 88))(v17, v14) == *MEMORY[0x277D79278])
    {
      (*(v15 + 96))(v17, v14);
      v25 = v38;
      v24 = v39;
      v26 = *(v38 + 32);
      v26(v9, v17, v39);
      v27 = v37;
      v26(v37, v9, v24);
      v28 = (*(v25 + 88))(v27, v24);
      LODWORD(v26) = *MEMORY[0x277D79048];
      (*(v25 + 8))(v27, v24);
      v30 = v40;
      v29 = v41;
      if (v28 == v26)
      {
        swift_getKeyPath();
        v43[0] = v3;
        sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
        sub_21E13D3C4();

        v31 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
        swift_beginAccess();
        v32 = *(v3 + v31);
        v43[0] = v32;
        v42[0] = 8;
        sub_21DF5706C(v32);
        v33 = static CardLayout.== infix(_:_:)(v43, v42);
        sub_21DF5AF24(v32);
        if ((v33 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_9;
    }

    (*(v15 + 8))(v17, v14);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
  }

  v30 = v40;
  v29 = v41;
LABEL_9:
  if (!sub_21DFE4D84())
  {
    sub_21DF58960(v30, v43);
    NewEntityModel.cardLayout.setter(v43);
  }

LABEL_11:
  swift_getKeyPath();
  v43[0] = v3;
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  swift_beginAccess();
  swift_getKeyPath();
  v42[0] = v3;

  sub_21E13D3C4();

  v34 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__actions;
  swift_beginAccess();
  v35 = *(v3 + v34);

  sub_21DF2BCDC(v30, v29, v35);
}

uint64_t static CardLayout.== infix(_:_:)(int64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 3)
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {
        if (v3 == 4)
        {
          sub_21DF5AF24(4uLL);
          v4 = 4;
          goto LABEL_31;
        }

        goto LABEL_33;
      }

      if (v2 == 5)
      {
        if (v3 == 5)
        {
          sub_21DF5AF24(5uLL);
          v4 = 5;
          goto LABEL_31;
        }

        goto LABEL_33;
      }
    }

    else
    {
      switch(v2)
      {
        case 6:
          if (v3 == 6)
          {
            sub_21DF5AF24(6uLL);
            v4 = 6;
            goto LABEL_31;
          }

          goto LABEL_33;
        case 7:
          if (v3 == 7)
          {
            sub_21DF5AF24(7uLL);
            v4 = 7;
            goto LABEL_31;
          }

          goto LABEL_33;
        case 8:
          if (v3 == 8)
          {
            sub_21DF5AF24(8uLL);
            v4 = 8;
LABEL_31:
            sub_21DF5AF24(v4);
            v5 = 1;
            return v5 & 1;
          }

          goto LABEL_33;
      }
    }

    goto LABEL_32;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        sub_21DF5AF24(2uLL);
        v4 = 2;
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    if (v2 == 3)
    {
      if (v3 == 3)
      {
        sub_21DF5AF24(3uLL);
        v4 = 3;
        goto LABEL_31;
      }

LABEL_33:
      sub_21DF5706C(*a2);
      sub_21DF5706C(v2);
      sub_21DF5AF24(v2);
      sub_21DF5AF24(v3);
      v5 = 0;
      return v5 & 1;
    }

LABEL_32:
    if (v3 >= 9)
    {
      v7 = *(v2 + 16);
      v8 = *(v3 + 16);
      v9 = v7;
      sub_21DF5706C(v3);
      sub_21DF5706C(v2);
      v5 = static CardLayout.== infix(_:_:)(&v9, &v8);
      sub_21DF5AF24(v2);
      sub_21DF5AF24(v3);
      return v5 & 1;
    }

    goto LABEL_33;
  }

  if (!v2)
  {
    if (!v3)
    {
      sub_21DF5AF24(0);
      v4 = 0;
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if (v2 != 1)
  {
    goto LABEL_32;
  }

  if (v3 != 1)
  {
    goto LABEL_33;
  }

  v5 = 1;
  sub_21DF5AF24(1uLL);
  sub_21DF5AF24(1uLL);
  return v5 & 1;
}

uint64_t sub_21DF58960@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v84 = a2;
  v3 = sub_21E13F0B4();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v75 = &v72 - v6;
  v7 = sub_21E13D994();
  v8 = *(v7 - 8);
  v80 = v7;
  v81 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v72 - v12;
  v13 = sub_21E13F1B4();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13);
  v74 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - v18;
  v20 = sub_21E13DF64();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = &v72 - v25;
  v27 = sub_21E13E224();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v31, a1, v27, v29);
  v32 = (*(v28 + 88))(v31, v27);
  if (v32 == *MEMORY[0x277D793B0])
  {
    (*(v28 + 96))(v31, v27);
    (*(v21 + 4))(v26, v31, v20);
    (*(v21 + 2))(v23, v26, v20);
    v33 = (*(v21 + 11))(v23, v20);
    if (v33 == *MEMORY[0x277D79268])
    {
      (*(v21 + 12))(v23, v20);
      v35 = *v23;
      v34 = v23[1];
      sub_21E13EBE4();

      v36 = sub_21E13F1A4();
      v37 = sub_21E142564();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v35;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v85 = v40;
        *v39 = 136315138;
        v41 = sub_21E0E08C0(v38, v34, &v85);

        *(v39 + 4) = v41;
        _os_log_impl(&dword_21DF05000, v36, v37, "Layout was requested for an error state, returning .text for error: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x223D540B0](v40, -1, -1);
        MEMORY[0x223D540B0](v39, -1, -1);
      }

      else
      {
      }

      (*(v82 + 8))(v19, v83);
      result = (*(v21 + 1))(v26, v20);
LABEL_33:
      v46 = 2;
      goto LABEL_34;
    }

    if (v33 == *MEMORY[0x277D79270])
    {
      v47 = *(v21 + 1);
      v47(v26, v20);
      v48 = 5;
LABEL_10:
      *v84 = v48;
      v49 = v23;
      return (v47)(v49, v20);
    }

    if (v33 != *MEMORY[0x277D79280])
    {
      if (v33 == *MEMORY[0x277D79220])
      {
        v47 = *(v21 + 1);
        v47(v26, v20);
        v48 = 7;
        goto LABEL_10;
      }

      if (v33 != *MEMORY[0x277D79230])
      {
        if (v33 == *MEMORY[0x277D79260])
        {
LABEL_42:
          v67 = *(v21 + 1);
          v67(v26, v20);
          result = (v67)(v23, v20);
          v46 = 1;
          goto LABEL_34;
        }

        if (v33 == *MEMORY[0x277D79248])
        {
          v47 = *(v21 + 1);
          v47(v26, v20);
          v48 = 3;
          goto LABEL_10;
        }

        if (v33 == *MEMORY[0x277D79288])
        {
          v47 = *(v21 + 1);
          v47(v26, v20);
          v48 = 4;
          goto LABEL_10;
        }

        if (v33 == *MEMORY[0x277D79228])
        {
          v47 = *(v21 + 1);
          v47(v26, v20);
          v48 = 6;
          goto LABEL_10;
        }

        if (v33 == *MEMORY[0x277D79240])
        {
          v47 = *(v21 + 1);
          v47(v26, v20);
          v48 = 8;
          goto LABEL_10;
        }

        if (v33 != *MEMORY[0x277D79290] && v33 != *MEMORY[0x277D79258] && v33 != *MEMORY[0x277D79238])
        {
          if (v33 == *MEMORY[0x277D79278])
          {
            goto LABEL_42;
          }

          if (v33 != *MEMORY[0x277D79250])
          {
            v43 = sub_21E142B04();
            __break(1u);
            goto LABEL_76;
          }
        }
      }
    }

    v56 = *(v21 + 1);
    v56(v26, v20);
    result = (v56)(v23, v20);
    goto LABEL_47;
  }

  if (v32 != *MEMORY[0x277D793A0])
  {
    if (v32 != *MEMORY[0x277D793B8])
    {
      if (v32 == *MEMORY[0x277D793A8])
      {
        (*(v28 + 96))(v31, v27);
        v58 = *v31;
        v57 = v31[1];
        v59 = v74;
        sub_21E13EBE4();

        v60 = sub_21E13F1A4();
        v61 = sub_21E142564();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v85 = v63;
          *v62 = 136315138;
          v64 = sub_21E0E08C0(v58, v57, &v85);

          *(v62 + 4) = v64;
          _os_log_impl(&dword_21DF05000, v60, v61, "Layout was requested for an error state, returning .text for error: %s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x223D540B0](v63, -1, -1);
          MEMORY[0x223D540B0](v62, -1, -1);
        }

        else
        {
        }

        result = (*(v82 + 8))(v59, v83);
        goto LABEL_33;
      }

      goto LABEL_85;
    }

    (*(v28 + 96))(v31, v27);
    v50 = v77;
    v20 = v78;
    v51 = v75;
    (*(v77 + 32))(v75, v31, v78);
    v52 = v76;
    (*(v50 + 16))(v76, v51, v20);
    v53 = (*(v50 + 88))(v52, v20);
    if (v53 != *MEMORY[0x277D78A38])
    {
      if (v53 == *MEMORY[0x277D78A30])
      {
        (*(v50 + 8))(v51, v20);
        (*(v50 + 96))(v52, v20);
        *v84 = 8;
        v65 = sub_21E13F0A4();
        return (*(*(v65 - 8) + 8))(v52, v65);
      }

      if (v53 == *MEMORY[0x277D78A40])
      {
        v47 = *(v50 + 8);
        v47(v51, v20);
        *v84 = 1;
      }

      else
      {
        if (v53 == *MEMORY[0x277D78A48])
        {
          result = (*(v50 + 8))(v51, v20);
          v46 = 8;
          goto LABEL_34;
        }

        v68 = v73;
        sub_21E13EBF4();
        v69 = sub_21E13F1A4();
        v70 = sub_21E142564();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_21DF05000, v69, v70, "Layout requested for an external action result state we don't know about; defaulting to basic", v71, 2u);
          MEMORY[0x223D540B0](v71, -1, -1);
        }

        (*(v82 + 8))(v68, v83);
        v47 = *(v50 + 8);
        v47(v51, v20);
        *v84 = 0;
      }

      v49 = v52;
      return (v47)(v49, v20);
    }

    v54 = *(v50 + 8);
    v54(v51, v20);
    result = (v54)(v52, v20);
    v46 = 8;
LABEL_34:
    *v84 = v46;
    return result;
  }

  (*(v28 + 96))(v31, v27);
  v20 = v81;
  v21 = v79;
  v42 = v31;
  v31 = v80;
  (*(v81 + 32))(v79, v42, v80);
  (*(v20 + 16))(v10, v21, v31);
  v43 = (*(v20 + 88))(v10, v31);
  if (v43 == *MEMORY[0x277D78F80])
  {
    v44 = *(v20 + 8);
    v44(v21, v31);
    result = (v44)(v10, v31);
    v46 = 7;
    goto LABEL_34;
  }

  if (v43 != *MEMORY[0x277D78F30])
  {
    if (v43 == *MEMORY[0x277D78F38])
    {
      (*(v20 + 8))(v21, v31);
      (*(v20 + 96))(v10, v31);
      v66 = sub_21E13E3F4();
      result = (*(*(v66 - 8) + 8))(v10, v66);
      goto LABEL_47;
    }

    if (v43 == *MEMORY[0x277D78F68])
    {
      (*(v20 + 96))(v10, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D20, &unk_21E147360);

      sub_21DF23614(v10, &qword_27CEA6D28, &unk_21E145D10);
LABEL_84:
      __break(1u);
LABEL_85:
      sub_21E142B04();
      __break(1u);
      goto LABEL_86;
    }

    if (v43 == *MEMORY[0x277D78F70])
    {
      result = (*(v20 + 8))(v21, v31);
      v46 = 5;
      goto LABEL_34;
    }

    if (v43 == *MEMORY[0x277D78F78])
    {
      goto LABEL_46;
    }

    if (v43 == *MEMORY[0x277D78F28])
    {
      result = (*(v20 + 8))(v21, v31);
      v46 = 8;
      goto LABEL_34;
    }

    if (v43 == *MEMORY[0x277D78F98] || v43 == *MEMORY[0x277D78F20])
    {
      result = (*(v20 + 8))(v21, v31);
      v46 = 3;
      goto LABEL_34;
    }

    if (v43 == *MEMORY[0x277D78F88])
    {
      result = (*(v20 + 8))(v21, v31);
      v46 = 4;
      goto LABEL_34;
    }

    if (v43 == *MEMORY[0x277D78F60])
    {
      result = (*(v20 + 8))(v21, v31);
      v46 = 6;
      goto LABEL_34;
    }

LABEL_76:
    if (v43 != *MEMORY[0x277D78F58] && v43 != *MEMORY[0x277D78F48])
    {
      if (v43 != *MEMORY[0x277D78F90] && v43 != *MEMORY[0x277D78F50] && v43 != *MEMORY[0x277D78FA0])
      {
        if (v43 == *MEMORY[0x277D78F40])
        {
          result = (*(v81 + 8))(v79, v80);
          goto LABEL_47;
        }

LABEL_86:
        result = sub_21E142B04();
        __break(1u);
        return result;
      }

      goto LABEL_84;
    }

LABEL_46:
    result = (*(v20 + 8))(v21, v31);
    goto LABEL_47;
  }

  v55 = *(v20 + 8);
  v55(v21, v31);
  result = (v55)(v10, v31);
LABEL_47:
  *v84 = 0;
  return result;
}

unint64_t NewEntityModel.prepareForPresentationOfAction(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D48, &unk_21E148070);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = sub_21E13EEE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11[1] = a1;
  sub_21DF606B8(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
  sub_21E13D3C4();

  v9 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewActionModel__pill;
  swift_beginAccess();
  sub_21DF236C0(a1 + v9, v4, &qword_27CEA6D48, &unk_21E148070);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21DF23614(v4, &qword_27CEA6D48, &unk_21E148070);
    v11[0] = 0;
    return NewEntityModel.cardLayout.setter(v11);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    static CardLayout.expectedLayout(for:)(v11);
    NewEntityModel.cardLayout.setter(v11);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t static CardLayout.expectedLayout(for:)@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = sub_21E13EE74();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21E13EE94();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E13D994();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = sub_21E13EEB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EEC4();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277D79680])
  {
    (*(v15 + 96))(v17, v14);
    (*(v8 + 32))(v13, v17, v7);
    (*(v8 + 16))(v10, v13, v7);
    v19 = (*(v8 + 88))(v10, v7);
    if (v19 == *MEMORY[0x277D78F80])
    {
      v20 = *(v8 + 8);
      v20(v13, v7);
      result = (v20)(v10, v7);
LABEL_4:
      v22 = 7;
LABEL_8:
      *v33 = v22;
      return result;
    }

    if (v19 == *MEMORY[0x277D78F30])
    {
      v26 = *(v8 + 8);
      v26(v13, v7);
      result = (v26)(v10, v7);
      goto LABEL_13;
    }

    if (v19 == *MEMORY[0x277D78F38])
    {
      (*(v8 + 8))(v13, v7);
      (*(v8 + 96))(v10, v7);
      v27 = sub_21E13E3F4();
      result = (*(*(v27 - 8) + 8))(v10, v27);
      goto LABEL_13;
    }

    if (v19 == *MEMORY[0x277D78F68])
    {
      (*(v8 + 8))(v13, v7);
      (*(v8 + 96))(v10, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D20, &unk_21E147360);

      *v33 = 1;
      return sub_21DF23614(v10, &qword_27CEA6D28, &unk_21E145D10);
    }

    if (v19 == *MEMORY[0x277D78F70])
    {
      result = (*(v8 + 8))(v13, v7);
      v22 = 5;
      goto LABEL_8;
    }

    if (v19 == *MEMORY[0x277D78F78])
    {
      result = (*(v8 + 8))(v13, v7);
      goto LABEL_4;
    }

    if (v19 == *MEMORY[0x277D78F28])
    {
      result = (*(v8 + 8))(v13, v7);
      goto LABEL_7;
    }

    if (v19 == *MEMORY[0x277D78F98] || v19 == *MEMORY[0x277D78F20])
    {
      result = (*(v8 + 8))(v13, v7);
      v22 = 3;
      goto LABEL_8;
    }

    if (v19 == *MEMORY[0x277D78F88])
    {
      result = (*(v8 + 8))(v13, v7);
      v22 = 4;
      goto LABEL_8;
    }

    if (v19 == *MEMORY[0x277D78F60])
    {
      result = (*(v8 + 8))(v13, v7);
      v22 = 6;
      goto LABEL_8;
    }

    if (v19 == *MEMORY[0x277D78F58] || v19 == *MEMORY[0x277D78F48])
    {
      result = (*(v8 + 8))(v13, v7);
      v22 = 1;
      goto LABEL_8;
    }

    if (v19 == *MEMORY[0x277D78F90] || v19 == *MEMORY[0x277D78F50] || v19 == *MEMORY[0x277D78FA0] || v19 == *MEMORY[0x277D78F40])
    {
      result = (*(v8 + 8))(v13, v7);
      goto LABEL_13;
    }

LABEL_39:
    result = sub_21E142B04();
    __break(1u);
    return result;
  }

  if (v18 != *MEMORY[0x277D79688])
  {
    sub_21E142B04();
    __break(1u);
    goto LABEL_39;
  }

  sub_21E13EEA4();
  v24 = v31;
  v23 = v32;
  (*(v31 + 104))(v3, *MEMORY[0x277D79678], v32);
  v25 = sub_21E13EE84();
  (*(v24 + 8))(v3, v23);
  result = (*(v29 + 8))(v6, v30);
  if (v25)
  {
LABEL_7:
    v22 = 8;
    goto LABEL_8;
  }

LABEL_13:
  *v33 = 0;
  return result;
}

Swift::Void __swiftcall NewEntityModel.reset()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v5 = sub_21E13F1B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E13EBF4();

  v9 = sub_21E13F1A4();
  v10 = sub_21E142554();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22[0] = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24[0] = v13;
    *v12 = 136315138;
    sub_21E13D344();
    sub_21DF606B8(&qword_27CEA6CF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_21E142AB4();
    v16 = sub_21E0E08C0(v14, v15, v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21DF05000, v9, v10, "Reset entity %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223D540B0](v13, -1, -1);
    v17 = v12;
    v4 = v22[0];
    MEMORY[0x223D540B0](v17, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v18 = MEMORY[0x277D84F90];
  sub_21DF514A8(MEMORY[0x277D84F90]);
  NewEntityModel.actions.setter(v18);
  NewEntityModel.preShutterActions.setter(v18);
  NewEntityModel.visualSearchActions.setter(v18);
  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__textAction;
  swift_beginAccess();
  if (*(v1 + v19))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v22[-2] = v1;
    v22[-1] = 0;
    v23[0] = v1;
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3B4();
  }

  NewEntityModel.dataDetectors.setter(MEMORY[0x277D84F90]);
  v21 = sub_21E13EF04();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  NewEntityModel.pin.setter(v4);
  v23[0] = 0;
  NewEntityModel.cardLayout.setter(v23);
  swift_getKeyPath();
  v23[0] = v1;
  sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
  sub_21E13D3C4();

  swift_beginAccess();

  CardModel.reset()();
}

uint64_t NewEntityModel.Prominence.hashValue.getter()
{
  v1 = *v0;
  sub_21E142C14();
  MEMORY[0x223D53460](v1);
  return sub_21E142C44();
}

uint64_t NewEntityModel.deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id;
  v2 = sub_21E13D344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__corners;
  v4 = sub_21E13ED04();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_21DF5AF24(*(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout));

  sub_21DF23614(v0 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__pin, &qword_27CEACB50, &qword_21E14FA80);
  v5 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel___observationRegistrar;
  v6 = sub_21E13D404();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t NewEntityModel.__deallocating_deinit()
{
  NewEntityModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21DF5A974@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id;
  v5 = sub_21E13D344();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t static NewEntityModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_21E1423C4();
  v5[2] = a1;
  v5[3] = a2;
  return sub_21E0C372C(sub_21DF23B64, v5, "VisualIntelligenceUI/NewEntityModel.swift", 41, 2, 233) & 1;
}

uint64_t sub_21DF5AA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  result = sub_21E13D324();
  if (result)
  {
    swift_getKeyPath();
    sub_21DF606B8(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);
    sub_21E13D3C4();

    v7 = *(a1 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence);
    swift_getKeyPath();
    sub_21E13D3C4();

    v8 = v7 == *(a2 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__prominence);
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21DF5ABA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21E1423C4();
  v5[2] = v2;
  v5[3] = v3;
  return sub_21E0C372C(sub_21DF6078C, v5, "VisualIntelligenceUI/NewEntityModel.swift", 41, 2, 233) & 1;
}

uint64_t NewEntityModel.hash(into:)(uint64_t a1)
{
  sub_21E13D344();
  sub_21DF606B8(&qword_280F6C090, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_21E142024();
}

uint64_t NewEntityModel.hashValue.getter()
{
  sub_21E142C14();
  sub_21E13D344();
  sub_21DF606B8(&qword_280F6C090, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_21E142024();
  return sub_21E142C44();
}

uint64_t sub_21DF5AD40()
{
  sub_21E142C14();
  sub_21E13D344();
  sub_21DF606B8(&qword_280F6C090, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_21E142024();
  return sub_21E142C44();
}

uint64_t sub_21DF5ADE0(uint64_t a1)
{
  sub_21E13D344();
  sub_21DF606B8(&qword_280F6C090, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_21E142024();
}

uint64_t sub_21DF5AE68(uint64_t a1)
{
  sub_21E142C14();
  sub_21E13D344();
  sub_21DF606B8(&qword_280F6C090, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_21E142024();
  return sub_21E142C44();
}

unint64_t sub_21DF5AF24(unint64_t result)
{
  if (result >= 9)
  {
  }

  return result;
}

uint64_t ResolvedAction.id.getter()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t static ResolvedAction.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_21E1423C4();
  v11 = v3;
  v12 = v5;
  v6 = sub_21E0C372C(sub_21DF60774, v10, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);
  if (v6)
  {
    MEMORY[0x28223BE20](v6);
    v9[2] = v2;
    v9[3] = v4;
    v7 = sub_21E0C372C(sub_21DF6078C, v9, "VisualIntelligenceUI/NewEntityModel.swift", 41, 2, 233);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21DF5B07C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_21DF5B08C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_21E1423C4();
  v11 = v3;
  v12 = v5;
  v6 = sub_21E0C372C(sub_21DF60774, v10, "VisualIntelligenceUI/NewActionModel.swift", 41, 2, 173);
  if (v6)
  {
    MEMORY[0x28223BE20](v6);
    v9[2] = v2;
    v9[3] = v4;
    v7 = sub_21E0C372C(sub_21DF6078C, v9, "VisualIntelligenceUI/NewEntityModel.swift", 41, 2, 233);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21DF5B174(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21E1427B4();
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

  v13 = sub_21E1427B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21DF5D238(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21DF5EA1C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_21DF5B264(uint64_t result)
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

  result = sub_21E06A5D0(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_21DF5B350(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_21E06AA0C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7740, &qword_21E147758);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21DF5B488(uint64_t result)
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

  result = sub_21E06AE50(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_21DF5B574(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21E06ABFC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21DF5B668(uint64_t a1)
{
  v63 = sub_21E13EF04();
  v3 = *(v63 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v63);
  v58 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v51 - v8;
  MEMORY[0x28223BE20](v9);
  v61 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7700, &qword_21E147710);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7708, &qword_21E147718);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - v15;
  v64 = v1;
  v17 = *v1;
  v18 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = v17[3] >> 1, v20 <= v18))
  {
    v17 = sub_21E06A808(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v17);
    v20 = v17[3] >> 1;
  }

  v21 = v17[2];
  v22 = (v3[80] + 32) & ~v3[80];
  v23 = v3;
  v24 = *(v3 + 9);
  v25 = v20 - v21;
  v57 = v22;
  v60 = v24;
  v26 = v17 + v22 + v24 * v21;
  v27 = &qword_27CEA7700;
  sub_21DF236C0(a1, v13, &qword_27CEA7700, &qword_21E147710);
  v28 = sub_21DF5EF94(v16, v26, v25);
  sub_21DF23614(a1, &qword_27CEA7700, &qword_21E147710);
  if (v28 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v29 = v17[2];
  v27 = (v29 + v28);
  if (__OFADD__(v29, v28))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17[2] = v27;
  if (v28 != v25)
  {
    v30 = &qword_27CEA7708;
    v31 = &qword_21E147718;
    v32 = v16;
    goto LABEL_8;
  }

LABEL_11:
  v34 = v61;
  sub_21DF3DE9C(v16, v61, &qword_27CEACB50, &qword_21E14FA80);
  v35 = v63;
  v52 = *(v23 + 7);
  v53 = v23 + 56;
  v52(v16, 1, 1, v63);
  v36 = v34;
  v37 = v59;
  sub_21DF236C0(v36, v59, &qword_27CEACB50, &qword_21E14FA80);
  v38 = v23 + 48;
  v55 = *(v23 + 6);
  if (v55(v37, 1, v35) != 1)
  {
    v39 = (v56 + 32);
    v51 = (v56 + 8);
    v40 = v62;
    v54 = v38;
    do
    {
      sub_21DF23614(v37, &qword_27CEACB50, &qword_21E14FA80);
      v42 = v17[3];
      v43 = v42 >> 1;
      if ((v42 >> 1) < v27 + 1)
      {
        v17 = sub_21E06A808((v42 > 1), v27 + 1, 1, v17);
        v43 = v17[3] >> 1;
      }

      sub_21DF236C0(v61, v40, &qword_27CEACB50, &qword_21E14FA80);
      v44 = v63;
      if (v55(v40, 1, v63) == 1)
      {
LABEL_14:
        sub_21DF23614(v40, &qword_27CEACB50, &qword_21E14FA80);
        v41 = v27;
      }

      else
      {
        v56 = *v39;
        if (v27 <= v43)
        {
          v41 = v43;
        }

        else
        {
          v41 = v27;
        }

        v45 = v58;
        v46 = v17 + v57 + v60 * v27;
        while (1)
        {
          (v56)(v45, v40, v44);
          if (v41 == v27)
          {
            break;
          }

          v47 = v39;
          v48 = v61;
          sub_21DF23614(v61, &qword_27CEACB50, &qword_21E14FA80);
          (v56)(v46, v45, v63);
          v27 = (v27 + 1);
          sub_21DF3DE9C(v16, v48, &qword_27CEACB50, &qword_21E14FA80);
          v52(v16, 1, 1, v63);
          v49 = v48;
          v39 = v47;
          v40 = v62;
          v44 = v63;
          sub_21DF236C0(v49, v62, &qword_27CEACB50, &qword_21E14FA80);
          v50 = v55(v40, 1, v44);
          v46 += v60;
          if (v50 == 1)
          {
            goto LABEL_14;
          }
        }

        (*v51)(v45, v44);
        v27 = v41;
      }

      v17[2] = v41;
      v37 = v59;
      sub_21DF236C0(v61, v59, &qword_27CEACB50, &qword_21E14FA80);
    }

    while (v55(v37, 1, v63) != 1);
  }

  sub_21DF23614(v61, &qword_27CEACB50, &qword_21E14FA80);
  sub_21DF23614(v16, &qword_27CEA7708, &qword_21E147718);
  v32 = v37;
  v30 = &qword_27CEACB50;
  v31 = &qword_21E14FA80;
LABEL_8:
  result = sub_21DF23614(v32, v30, v31);
  *v64 = v17;
  return result;
}

void *sub_21DF5BD50(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEA6858, &unk_21E147300);
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

void *sub_21DF5BE28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21DF5BF24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA77E0, &qword_21E147860, type metadata accessor for WaypointLayout.Element);
  *v3 = result;
  return result;
}

void *sub_21DF5BF68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA7738, &qword_21E147750, MEMORY[0x277D796D0]);
  *v3 = result;
  return result;
}

char *sub_21DF5BFAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5C430(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21DF5BFCC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA77A8, &qword_21E1477E8, MEMORY[0x277D78D90]);
  *v3 = result;
  return result;
}

void *sub_21DF5C010(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA76E0, &qword_21E1476C0, MEMORY[0x277D79630]);
  *v3 = result;
  return result;
}

void *sub_21DF5C054(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA76D8, &qword_21E1476B8, type metadata accessor for WaypointLayout.WaypointFrame);
  *v3 = result;
  return result;
}

char *sub_21DF5C098(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5C53C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21DF5C0B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5C668(a1, a2, a3, *v3, &qword_27CEA77E8, &qword_21E147868);
  *v3 = result;
  return result;
}

char *sub_21DF5C0E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5C668(a1, a2, a3, *v3, &qword_27CEA7780, &qword_21E14FB50);
  *v3 = result;
  return result;
}

void *sub_21DF5C118(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA7770, &qword_21E147788, MEMORY[0x277CDFA60]);
  *v3 = result;
  return result;
}

void *sub_21DF5C15C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5C9FC(a1, a2, a3, *v3, &qword_27CEA7750, &qword_21E147768, &qword_27CEA7758, &qword_21E147770);
  *v3 = result;
  return result;
}

void *sub_21DF5C19C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5C9FC(a1, a2, a3, *v3, &qword_27CEA7788, &unk_21E1477A0, &qword_27CEA7790, &unk_21E14FB00);
  *v3 = result;
  return result;
}

void *sub_21DF5C1DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5C9FC(a1, a2, a3, *v3, &qword_27CEA7798, &qword_21E1477B0, &qword_27CEA7778, &unk_21E147790);
  *v3 = result;
  return result;
}

void *sub_21DF5C21C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5C9FC(a1, a2, a3, *v3, &qword_27CEA7748, &qword_21E147760, &qword_27CEA7740, &qword_21E147758);
  *v3 = result;
  return result;
}

void *sub_21DF5C25C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5C7B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21DF5C27C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5C8F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21DF5C29C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA76C8, &qword_21E1476A8, type metadata accessor for MapsDisambiguationViewItem);
  *v3 = result;
  return result;
}

void *sub_21DF5C2E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5C9FC(a1, a2, a3, *v3, &qword_27CEA7718, &qword_21E147728, &unk_27CEACFB0, &qword_21E147730);
  *v3 = result;
  return result;
}

char *sub_21DF5C320(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5CBE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21DF5C340(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5CCE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21DF5C360(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA7710, &qword_21E147720, MEMORY[0x277D794F8]);
  *v3 = result;
  return result;
}

char *sub_21DF5C3A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5CDEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21DF5C3C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21DF5CEF8(a1, a2, a3, *v3, &qword_27CEA76F8, &qword_21E147708, MEMORY[0x277D796B8]);
  *v3 = result;
  return result;
}

char *sub_21DF5C430(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76D0, &qword_21E1476B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21DF5C53C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7728, &qword_21E147740);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21DF5C668(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_21DF5C7B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7730, &qword_21E147748);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21DF5C8F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7720, &qword_21E147738);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_21DF5C9FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_21DF5CBE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76E8, &qword_21E1476C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21DF5CCE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD2C0, &qword_21E1476D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21DF5CDEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA76F0, &qword_21E147700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21DF5CEF8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_21DF5D0D4(uint64_t *a1, __n128 a2)
{
  v3 = *(sub_21E13F274() - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_21E101928(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_21DF5D2D8(v6);
  *a1 = v4;
}

unint64_t sub_21DF5D17C(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_21E1427B4();
    }

    result = sub_21E1428C4();
    *v2 = result;
  }

  return result;
}

uint64_t sub_21DF5D238(uint64_t a1, char a2)
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

  sub_21E1427B4();
LABEL_9:
  result = sub_21E1428C4();
  *v2 = result;
  return result;
}

void sub_21DF5D2D8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21E142AA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v5 = v3;
      v6 = v2 / 2;
      if (v2 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21E13F274();
        v7 = sub_21E142314();
        *(v7 + 16) = v6;
      }

      v8 = *(sub_21E13F274() - 8);
      v10[0] = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10[1] = v6;
      sub_21DF5D6AC(v10, v9, v11, a1, v5);
      *(v7 + 16) = 0;

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
    sub_21DF5D404(0, v2, 1, a1, v4);
  }
}

void sub_21DF5D404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 a5)
{
  v9 = sub_21E13F274();
  MEMORY[0x28223BE20](v9);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v34 - v12;
  v15 = MEMORY[0x28223BE20](v13);
  v48 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v14 + 16);
    v18 = v14 + 16;
    v20 = *(v18 + 56);
    v45 = (v18 - 8);
    v46 = v19;
    v47 = v18;
    v42 = (v18 + 16);
    v43 = v17;
    v21 = (v17 + v20 * (a3 - 1));
    v41 = -v20;
    v22 = a1 - a3;
    v35 = v20;
    v23 = v17 + v20 * a3;
LABEL_5:
    v39 = v21;
    v40 = a3;
    v37 = v23;
    v38 = v22;
    v50 = v22;
    v24 = v21;
    while (1)
    {
      v25 = v48;
      v26 = v46;
      (v46)(v48, v23, v9, v15);
      v27 = v49;
      v26(v49, v24, v9);
      v28 = sub_21E13F264();
      v29 = sub_21E13F264();
      v30 = *v45;
      (*v45)(v27, v9);
      v30(v25, v9);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v40 + 1;
        v21 = &v39[v35];
        v22 = v38 - 1;
        v23 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v23, v9);
      swift_arrayInitWithTakeFrontToBack();
      v31(v24, v32, v9);
      v24 += v41;
      v23 += v41;
      if (__CFADD__(v50++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21DF5D6AC(int64_t *a1, __n128 a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = v5;
  v120 = a1;
  v10 = sub_21E13F274();
  MEMORY[0x28223BE20](v10);
  v124 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v134 = &v117 - v13;
  MEMORY[0x28223BE20](v14);
  v140 = &v117 - v15;
  v18 = MEMORY[0x28223BE20](v16);
  v139 = &v117 - v19;
  v20 = a4[1];
  v129 = v17;
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_94:
    v6 = *v120;
    if (!*v120)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v129;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v22 = sub_21E101914(v22);
    }

    v142 = v22;
    v113 = *(v22 + 2);
    if (v113 >= 2)
    {
      while (*a4)
      {
        v114 = *&v22[16 * v113];
        v115 = *&v22[16 * v113 + 24];
        sub_21DF5E090(*a4 + *(v10 + 72) * v114, *a4 + *(v10 + 72) * *&v22[16 * v113 + 16], *a4 + *(v10 + 72) * v115, v6, v112);
        if (v7)
        {
          goto LABEL_104;
        }

        if (v115 < v114)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_21E101914(v22);
        }

        if (v113 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v116 = &v22[16 * v113];
        *v116 = v114;
        *(v116 + 1) = v115;
        v142 = v22;
        sub_21E101888(v113 - 1);
        v22 = v142;
        v113 = *(v142 + 2);
        if (v113 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v118 = a5;
  v21 = 0;
  v137 = (v17 + 8);
  v138 = v17 + 16;
  v136 = (v17 + 32);
  v22 = MEMORY[0x277D84F90];
  v122 = a4;
  v141 = v10;
  while (1)
  {
    v130 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v131 = v20;
      v119 = v7;
      v23 = *a4;
      v121 = v21;
      v24 = v129[9];
      v6 = &v23[v24 * (v21 + 1)];
      v25 = v23;
      v135 = v23;
      v26 = v10;
      v27 = v129[2];
      v28 = v139;
      v27(v139, v6, v26, v18);
      v29 = &v25[v24 * v21];
      v30 = v140;
      v127 = v27;
      (v27)(v140, v29, v26);
      v132 = sub_21E13F264();
      v128 = sub_21E13F264();
      v31 = v129[1];
      v31(v30, v26);
      v126 = v31;
      v31(v28, v26);
      v32 = v121 + 2;
      v133 = v24;
      v33 = &v135[v24 * (v121 + 2)];
      while (1)
      {
        v34 = v131;
        if (v131 == v32)
        {
          break;
        }

        v35 = v127;
        LODWORD(v135) = v132 < v128;
        v36 = v139;
        v37 = v141;
        (v127)(v139, v33, v141);
        v38 = v140;
        v35(v140, v6, v37);
        v39 = sub_21E13F264();
        v40 = sub_21E13F264();
        v41 = v126;
        (v126)(v38, v37);
        v41(v36, v37);
        v22 = v130;
        ++v32;
        v33 += v133;
        v6 += v133;
        if (((v135 ^ (v39 >= v40)) & 1) == 0)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v7 = v119;
      v21 = v121;
      a4 = v122;
      v10 = v141;
      if (v132 < v128)
      {
        if (v34 < v121)
        {
          goto LABEL_123;
        }

        if (v121 < v34)
        {
          v42 = v133 * (v34 - 1);
          v6 = v34 * v133;
          v131 = v34;
          v43 = v34;
          v44 = v121;
          v45 = v121 * v133;
          do
          {
            if (v44 != --v43)
            {
              v46 = *a4;
              if (!v46)
              {
                goto LABEL_129;
              }

              v47 = *v136;
              (*v136)(v124, &v46[v45], v10);
              if (v45 < v42 || &v46[v45] >= &v46[v6])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v47(&v46[v42], v124, v10);
              a4 = v122;
              v22 = v130;
            }

            ++v44;
            v42 -= v133;
            v6 -= v133;
            v45 += v133;
          }

          while (v44 < v43);
          v7 = v119;
          v21 = v121;
          v34 = v131;
        }
      }
    }

    v48 = a4[1];
    if (v34 < v48)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v118)
      {
        if (__OFADD__(v21, v118))
        {
          goto LABEL_124;
        }

        if (v21 + v118 >= v48)
        {
          v6 = a4[1];
        }

        else
        {
          v6 = v21 + v118;
        }

        if (v6 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v6)
        {
          break;
        }
      }
    }

    v6 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_21E06A15C(0, *(v22 + 2) + 1, 1, v22);
    }

    v50 = *(v22 + 2);
    v49 = *(v22 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v22 = sub_21E06A15C((v49 > 1), v50 + 1, 1, v22);
    }

    *(v22 + 2) = v51;
    v52 = &v22[16 * v50];
    *(v52 + 4) = v21;
    *(v52 + 5) = v6;
    v53 = *v120;
    if (!*v120)
    {
      goto LABEL_131;
    }

    v125 = v6;
    if (v50)
    {
      while (1)
      {
        v6 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v22 + 4);
          v55 = *(v22 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_52:
          if (v57)
          {
            goto LABEL_110;
          }

          v70 = &v22[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_113;
          }

          v76 = &v22[16 * v6 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_117;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v6 = v51 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v80 = &v22[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_66:
        if (v75)
        {
          goto LABEL_112;
        }

        v83 = &v22[16 * v6];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_115;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_73:
        v91 = v6 - 1;
        if (v6 - 1 >= v51)
        {
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

        if (!*a4)
        {
          goto LABEL_128;
        }

        v92 = *&v22[16 * v91 + 32];
        v93 = *&v22[16 * v6 + 40];
        sub_21DF5E090(*a4 + v129[9] * v92, *a4 + v129[9] * *&v22[16 * v6 + 32], *a4 + v129[9] * v93, v53, v18);
        if (v7)
        {
          goto LABEL_104;
        }

        if (v93 < v92)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_21E101914(v22);
        }

        if (v91 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v94 = &v22[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        v142 = v22;
        sub_21E101888(v6);
        v22 = v142;
        v51 = *(v142 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v22[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_108;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_109;
      }

      v65 = &v22[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_111;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_114;
      }

      if (v69 >= v61)
      {
        v87 = &v22[16 * v6 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_118;
        }

        if (v56 < v90)
        {
          v6 = v51 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a4[1];
    v21 = v125;
    if (v125 >= v20)
    {
      goto LABEL_94;
    }
  }

  v119 = v7;
  v95 = *a4;
  v96 = v129[9];
  v135 = v129[2];
  v97 = &v95[v96 * (v34 - 1)];
  v132 = -v96;
  v133 = v95;
  v121 = v21;
  v98 = (v21 - v34);
  v123 = v96;
  v99 = &v95[v34 * v96];
  v125 = v6;
LABEL_85:
  v131 = v34;
  v126 = v99;
  v127 = v98;
  v128 = v97;
  v100 = v97;
  while (1)
  {
    v101 = v139;
    v102 = v135;
    (v135)(v139, v99, v10);
    v103 = v140;
    v102(v140, v100, v141);
    v104 = sub_21E13F264();
    v105 = sub_21E13F264();
    v106 = *v137;
    v107 = v103;
    v10 = v141;
    (*v137)(v107, v141);
    v106(v101, v10);
    if (v104 >= v105)
    {
LABEL_84:
      v34 = v131 + 1;
      v97 = v128 + v123;
      v98 = v127 - 1;
      v6 = v125;
      v99 = &v126[v123];
      if (v131 + 1 != v125)
      {
        goto LABEL_85;
      }

      v7 = v119;
      v21 = v121;
      a4 = v122;
      v22 = v130;
      if (v125 < v121)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v108 = *v136;
    v109 = v134;
    (*v136)(v134, v99, v10);
    swift_arrayInitWithTakeFrontToBack();
    v108(v100, v109, v10);
    v100 += v132;
    v99 += v132;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_84;
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
}

void sub_21DF5E090(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, __n128 a5)
{
  v62 = sub_21E13F274();
  v9 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v48 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v65 = a1;
  v64 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v18;
    if (v18 >= 1)
    {
      v33 = -v14;
      v52 = a4;
      v53 = (v9 + 16);
      v51 = (v9 + 8);
      v34 = v32;
      v61 = a1;
      v54 = v33;
      do
      {
        v49 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v37 = a3;
        v55 = v35;
        v56 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v65 = v35;
            v63 = v49;
            goto LABEL_58;
          }

          v38 = v37;
          v50 = v32;
          v60 = v37 + v33;
          v39 = v34 + v33;
          v40 = *v53;
          v41 = v58;
          v42 = v34 + v33;
          v43 = v34;
          v44 = v62;
          (*v53)(v58, v42, v62);
          v45 = v59;
          (v40)(v59, v36, v44);
          v57 = sub_21E13F264();
          v46 = sub_21E13F264();
          v47 = *v51;
          (*v51)(v45, v44);
          v47(v41, v44);
          if (v57 < v46)
          {
            break;
          }

          v32 = v39;
          v37 = v60;
          if (v38 < v43 || v60 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v56;
            a1 = v61;
          }

          else
          {
            v36 = v56;
            a1 = v61;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v39;
          v33 = v54;
          v35 = v55;
          if (v39 <= v52)
          {
            a2 = v55;
            goto LABEL_57;
          }
        }

        v34 = v43;
        if (v38 < v55 || v60 >= v55)
        {
          a3 = v60;
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v61;
          v32 = v50;
          v33 = v54;
        }

        else
        {
          a3 = v60;
          a2 = v56;
          a1 = v61;
          v32 = v50;
          v33 = v54;
          if (v38 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v52);
    }

LABEL_57:
    v65 = a2;
    v63 = v32;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v17;
    v63 = a4 + v17;
    v60 = a3;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v9 + 16);
      v55 = v14;
      v56 = v9 + 16;
      v53 = (v9 + 8);
      v54 = v20;
      do
      {
        v61 = a1;
        v21 = v58;
        v22 = v62;
        v23 = v54;
        v54(v58, a2, v62);
        v24 = v59;
        v23(v59, a4, v22);
        v25 = a2;
        v26 = sub_21E13F264();
        v27 = sub_21E13F264();
        v28 = *v53;
        (*v53)(v24, v22);
        v28(v21, v22);
        if (v26 >= v27)
        {
          v29 = v55;
          v31 = a4 + v55;
          v30 = v61;
          if (v61 < a4 || v61 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v61 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v31;
          a4 += v29;
        }

        else
        {
          v29 = v55;
          a2 = v25 + v55;
          v30 = v61;
          if (v61 < v25 || v61 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v61 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v30 + v29;
        v65 = a1;
      }

      while (a4 < v57 && a2 < v60);
    }
  }

LABEL_58:
  sub_21E06C5A8(&v65, &v64, &v63);
}

char *sub_21DF5E648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *v7;
  v16 = (v15 + 32 + 32 * a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7768, &qword_21E147780);
  result = swift_arrayDestroy();
  v18 = __OFSUB__(a3, v8);
  v19 = a3 - v8;
  if (v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = *(v15 + 16);
  v18 = __OFSUB__(v20, a2);
  v21 = v20 - a2;
  if (v18)
  {
    goto LABEL_21;
  }

  result = &v16[4 * a3];
  v22 = (v15 + 32 + 32 * a2);
  if (result != v22 || result >= &v22[32 * v21])
  {
    result = memmove(result, v22, 32 * v21);
  }

  v24 = *(v15 + 16);
  v18 = __OFADD__(v24, v19);
  v25 = v24 + v19;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v15 + 16) = v25;
LABEL_13:
  if (a3 > 0)
  {
    *v16 = a4;
    v16[1] = a5;
    v16[2] = a6;
    v16[3] = a7;
    if (a3 == 1)
    {
      return result;
    }

LABEL_23:

    __break(1u);
    return result;
  }
}

unint64_t sub_21DF5E790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_21E13EF04();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_21DF23614(v25, &qword_27CEA7700, &qword_21E147710);
  }

  if (v18 < 1)
  {
    return sub_21DF23614(v25, &qword_27CEA7700, &qword_21E147710);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_21DF23614(v25, &qword_27CEA7700, &qword_21E147710);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21DF5E92C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for NewActionModel(0);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21DF5E994(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D530F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_21DF5EA14;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DF5EA1C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21E1427B4();
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
      result = sub_21E1427B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21DF605A8();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77C8, &qword_21E147828);
            v9 = sub_21DF5E994(v13, i, a3);
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
        type metadata accessor for NewActionModel(0);
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

uint64_t sub_21DF5EB9C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = sub_21DF5EC00(a1);
  v4 = v3[2];

  return a2((v3 + 4), v4);
}

void *sub_21DF5EC00(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_21E0AC7DC(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void sub_21DF5ECEC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
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
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
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
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
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
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_21DF5EF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v27 = a1;
  v5 = sub_21E13EF04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7708, &qword_21E147718);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = *(v6 + 32);
  v19(v14, v3, v5, v16);
  v29 = v6;
  v20 = *(v6 + 56);
  v20(v14, 0, 1, v5);
  v28 = v20;
  v20(v18, 1, 1, v5);
  result = sub_21DF6051C(v14, v18);
  if (!a2)
  {
LABEL_10:
    v22 = 0;
    goto LABEL_12;
  }

  v22 = v30;
  if (!v30)
  {
LABEL_12:
    v26 = v27;
LABEL_13:
    sub_21DF3DE9C(v18, v26, &qword_27CEA7708, &qword_21E147718);
    return v22;
  }

  if ((v30 & 0x8000000000000000) == 0)
  {
    v23 = (v29 + 48);
    v24 = 1;
    while (1)
    {
      sub_21DF3DE9C(v18, v11, &qword_27CEACB50, &qword_21E14FA80);
      v28(v18, 1, 1, v5);
      if ((*v23)(v11, 1, v5) == 1)
      {
        sub_21DF23614(v11, &qword_27CEACB50, &qword_21E14FA80);
        v22 = v24 - 1;
        goto LABEL_12;
      }

      (v19)(v8, v11, v5);
      (v19)(a2, v8, v5);
      if (v30 == v24)
      {
        break;
      }

      a2 += *(v29 + 72);
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v26 = v27;
    v22 = v30;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DF5F2B0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_21E1427B4();
  if (result < v3)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7)
  {
    v10 = sub_21E1427B4();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (!v11)
  {
    sub_21DF5D17C(result, 1);
    return sub_21DF60120(v5, v3, 0, type metadata accessor for NewEntityModel);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21DF5F390(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E13EF04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA77D8, &qword_21E147858);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_21DF236C0(a1, &v21 - v12, &qword_27CEACB50, &qword_21E14FA80);
  sub_21DF236C0(a2, &v13[v15], &qword_27CEACB50, &qword_21E14FA80);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21DF236C0(v13, v10, &qword_27CEACB50, &qword_21E14FA80);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21DF606B8(&qword_280F69070, MEMORY[0x277D796B8], MEMORY[0x277D796C0]);
      v18 = sub_21E142074();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_21DF23614(v13, &qword_27CEACB50, &qword_21E14FA80);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21DF23614(v13, &qword_27CEA77D8, &qword_21E147858);
    v17 = 1;
    return v17 & 1;
  }

  sub_21DF23614(v13, &qword_27CEACB50, &qword_21E14FA80);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_21DF5F6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_21DF5F7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NewActionModel(0);
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = sub_21E1427B4();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_21E1427B4();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x28223BE20](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_21DF5EB9C(v4, sub_21DF6058C);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void sub_21DF5F950(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (sub_21E1427B4() < v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v11 = sub_21E1427B4();
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v9)
  {
    v14 = sub_21E1427B4();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (v12)
  {
    goto LABEL_21;
  }

  sub_21DF5D238(v15, 1);

  sub_21DF5F7B8(v7, v6, v11, v4);
}

unint64_t sub_21DF5FA88()
{
  result = qword_27CEA76C0;
  if (!qword_27CEA76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA76C0);
  }

  return result;
}

void sub_21DF5FB80(uint64_t a1)
{
  sub_21E13D344();
  if (v1 <= 0x3F)
  {
    sub_21E13ED04();
    if (v2 <= 0x3F)
    {
      sub_21DF5FD68(319);
      if (v3 <= 0x3F)
      {
        sub_21E13D404();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}