uint64_t type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(uint64_t a1)
{
  result = qword_1EE2D05F8;
  if (!qword_1EE2D05F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E58988CC(uint64_t a1)
{
  sub_1E5A29E74();
  if (v1 <= 0x3F)
  {
    sub_1E5898960();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5898960()
{
  if (!qword_1EE2CFA50)
  {
    v0 = sub_1E5A2BC44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2CFA50);
    }
  }
}

uint64_t type metadata accessor for PersonalizedWorkoutPlanCandidate(uint64_t a1)
{
  result = qword_1EE2D0558;
  if (!qword_1EE2D0558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5898A0C(uint64_t a1)
{
  sub_1E5A29E74();
  if (v1 <= 0x3F)
  {
    sub_1E5898AD4();
    if (v2 <= 0x3F)
    {
      sub_1E5898B54(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5898AD4()
{
  if (!qword_1EE2CFA68)
  {
    v0 = sub_1E5A2BA24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2CFA68);
    }
  }
}

void sub_1E5898B54(uint64_t a1)
{
  if (!qword_1EE2D05C0)
  {
    type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(255);
    v1 = sub_1E5A2BD84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D05C0);
    }
  }
}

void sub_1E5898BAC(uint64_t a1)
{
  type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(319);
  if (v1 <= 0x3F)
  {
    sub_1E5898C30(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5898C30(uint64_t a1)
{
  if (!qword_1EE2CFA58)
  {
    type metadata accessor for PersonalizedWorkoutPlanCandidateType(255);
    v1 = sub_1E5A2BC44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2CFA58);
    }
  }
}

uint64_t type metadata accessor for PersonalizedWorkoutPlanCandidateType(uint64_t a1)
{
  result = qword_1EE2D06F8;
  if (!qword_1EE2D06F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5898CD4(uint64_t a1)
{
  v1 = type metadata accessor for PersonalizedWorkoutPlanCandidate(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1E5898D40()
{
  result = qword_1EE2CFD58[0];
  if (!qword_1EE2CFD58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2CFD58);
  }

  return result;
}

uint64_t type metadata accessor for PersonalizedWorkoutPlanCandidates(uint64_t a1)
{
  result = qword_1EE2D07A8;
  if (!qword_1EE2D07A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PreviousPlanLockupState(uint64_t a1)
{
  result = qword_1EE2D00D0;
  if (!qword_1EE2D00D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5898E64(uint64_t a1)
{
  sub_1E58FE834();
  if (v1 <= 0x3F)
  {
    sub_1E5A29EB4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PreviousPlanLockupLoadState(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for PreviousPlanLockupLoadState(uint64_t a1)
{
  result = qword_1EE2D0010;
  if (!qword_1EE2D0010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5898F64(uint64_t a1)
{
  sub_1E5898FBC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1E5898FBC(uint64_t a1)
{
  if (!qword_1EE2CFF38[0])
  {
    type metadata accessor for PreviousPlanDetail(255);
    v1 = sub_1E5A2BD84();
    if (!v2)
    {
      atomic_store(v1, qword_1EE2CFF38);
    }
  }
}

uint64_t type metadata accessor for PreviousPlanDetail(uint64_t a1)
{
  result = qword_1EE2CFF90;
  if (!qword_1EE2CFF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5899060(uint64_t a1)
{
  sub_1E5A29CF4();
  if (v1 <= 0x3F)
  {
    sub_1E5A29E34();
    if (v2 <= 0x3F)
    {
      sub_1E58991A0(319, &qword_1EE2CFA48, &type metadata for PreviousPlanWeekday);
      if (v3 <= 0x3F)
      {
        sub_1E58991A0(319, &qword_1EE2CFA38, MEMORY[0x1E69E6530]);
        if (v4 <= 0x3F)
        {
          sub_1E58991A0(319, &qword_1EE2CFA40, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            sub_1E5A29E74();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E58991A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1E5A2BC44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t AsyncState.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5A2B904();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1E5A29E34();
  swift_getTupleTypeMetadata2();
  v8 = *(a2 - 8);
  (*(v8 + 16))(v7, a1, a2);
  sub_1E5A29E14();
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B8B4();
  return (*(v8 + 8))(a1, a2);
}

uint64_t sub_1E5899364()
{

  return swift_deallocObject();
}

uint64_t sub_1E58993B4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  swift_getFunctionTypeMetadata1();
  v8 = sub_1E5A2A054();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[37];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  swift_getFunctionTypeMetadata2();
  v12 = sub_1E5A2A054();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[38];
    goto LABEL_9;
  }

  v14 = sub_1E5A29E74();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[39];

  return v15(v16, a2, v14);
}

uint64_t sub_1E5899554(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  swift_getFunctionTypeMetadata1();
  v8 = sub_1E5A2A054();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[37];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  swift_getFunctionTypeMetadata2();
  v12 = sub_1E5A2A054();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[38];
    goto LABEL_7;
  }

  v14 = sub_1E5A29E74();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[39];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E5899704(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  sub_1E5A2A374();
  sub_1E5A2A314();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB500, &qword_1E5A30400);
  sub_1E5A2A384();
  sub_1E58B3B18(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  sub_1E58B3B18(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  sub_1E58B1C48();
  sub_1E58B1C9C();
  sub_1E58B1CF0();
  sub_1E5A2A1A4();
  swift_getOpaqueTypeConformance2();
  sub_1E58B3B18(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  swift_getWitnessTable();
  sub_1E5A2A354();
  sub_1E5A2A334();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2A3A4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E5A2BD84();
  sub_1E5A2B734();
  sub_1E58B1D44();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E5A2A0C4();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E58B3B18(&qword_1ECFFB540, MEMORY[0x1E699DC08], MEMORY[0x1E699DC00]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5899FDC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1E589A0E8()
{
  if (*v0)
  {
    return 0x7974696C61646F6DLL;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1E589A11C()
{
  if (*v0)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1E589A268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for HeightReader(0, v5, *(v4 + 40), a4);
  v7 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E5A2A684();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v4 + v7 + *(v6 + 40), v5);

  return swift_deallocObject();
}

uint64_t sub_1E589A3E0()
{

  return swift_deallocObject();
}

uint64_t sub_1E589A418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for HeightReader(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v10 = sub_1E5A2A604();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E5A2A684();
    (*(*(v13 - 8) + 8))(v4 + v8, v13);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v4 + v8 + *(v6 + 40), v5);
  (*(v11 + 8))(v4 + ((v8 + v9 + v12) & ~v12), v10);

  return swift_deallocObject();
}

uint64_t sub_1E589A61C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFBF30, &qword_1E5A2FB48);
  sub_1E5A2A6C4();
  sub_1E5A2A684();
  sub_1E58CD164(&qword_1ECFFBF38, &qword_1ECFFBF30, &qword_1E5A2FB48, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1E58CE1C8(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E589A75C()
{

  return swift_deallocObject();
}

uint64_t sub_1E589A794()
{

  return swift_deallocObject();
}

uint64_t sub_1E589A7D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC0B8, &qword_1E5A2FDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E589A844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC0B8, &qword_1E5A2FDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E589A8AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC0A0, &qword_1E5A2FD88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E589A934()
{

  return swift_deallocObject();
}

uint64_t sub_1E589A96C()
{
  v1 = *(v0 + 24);
  v10[0] = *(v0 + 16);
  v2 = v10[0];
  v10[1] = v1;
  v3 = *(v0 + 48);
  v11 = *(v0 + 32);
  v9 = v11;
  v12 = v3;
  v4 = (type metadata accessor for TVWorkoutPlansView(0, v10) - 8);
  v5 = (v0 + ((*(*v4 + 80) + 64) & ~*(*v4 + 80)));
  sub_1E58B369C(*v5, v5[1]);
  (*(*(v2 - 8) + 8))(v5 + v4[19], v2);
  (*(*(v1 - 8) + 8))(v5 + v4[20], v1);
  (*(*(v9 - 8) + 8))(v5 + v4[21]);
  v6 = v4[22];
  v7 = sub_1E5A29E74();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  return swift_deallocObject();
}

uint64_t sub_1E589AB14(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC0D0, &qword_1E5A2FDB0);
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  swift_getTupleTypeMetadata3();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  sub_1E5A2AC14();
  sub_1E5A2A6C4();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC0D8, &qword_1E5A2FDB8);
  sub_1E58CD164(&qword_1ECFFC0E0, &qword_1ECFFC0D8, &qword_1E5A2FDB8, MEMORY[0x1E697C7C8]);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E58D3D84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E589AE00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC140, &qword_1E5A3B010);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E589AE78(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC140, &qword_1E5A3B010);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E589AF30()
{

  return swift_deallocObject();
}

uint64_t sub_1E589AF68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC228, &unk_1E5A30470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[37] + 16);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  swift_getFunctionTypeMetadata1();
  v13 = sub_1E5A2A054();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[38];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  swift_getFunctionTypeMetadata2();
  v16 = sub_1E5A2A054();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[39];
    goto LABEL_11;
  }

  v17 = sub_1E5A29E74();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[40];

  return v18(v19, a2, v17);
}

uint64_t sub_1E589B164(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC228, &unk_1E5A30470);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[37] + 16) = -a2;
    return result;
  }

  swift_getFunctionTypeMetadata1();
  v13 = sub_1E5A2A054();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[38];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  swift_getFunctionTypeMetadata2();
  v16 = sub_1E5A2A054();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[39];
    goto LABEL_9;
  }

  v17 = sub_1E5A29E74();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[40];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1E589B374(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC1F8, &qword_1E5A303F8);
  sub_1E5A2A374();
  sub_1E5A2A314();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB500, &qword_1E5A30400);
  sub_1E5A2A384();
  sub_1E58E2134(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  sub_1E58E2134(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  sub_1E58B1C48();
  sub_1E58B1C9C();
  sub_1E58B1CF0();
  sub_1E5A2A1A4();
  swift_getOpaqueTypeConformance2();
  sub_1E58E2134(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  swift_getWitnessTable();
  sub_1E5A2A354();
  sub_1E5A2A334();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2A3A4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E5A2BD84();
  sub_1E5A2B734();
  sub_1E58E1D54();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E589BBD0()
{

  return swift_deallocObject();
}

uint64_t sub_1E589BC3C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  sub_1E5A2A374();
  sub_1E5A2A314();
  sub_1E5A2A384();
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  sub_1E5A2A244();
  v3 = sub_1E5A2BD84();
  return (*(*(v3 - 8) + 48))(a1, a2, v3);
}

uint64_t sub_1E589BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E5A2A374();
  sub_1E5A2A314();
  sub_1E5A2A384();
  sub_1E58E7B3C(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  sub_1E58E7B3C(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  sub_1E58E7B3C(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  sub_1E5A2A244();
  v5 = sub_1E5A2BD84();
  return (*(*(v5 - 8) + 56))(a1, a2, a2, v5);
}

uint64_t sub_1E589BFA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1E589BFB4()
{

  return swift_deallocObject();
}

uint64_t sub_1E589BFEC()
{

  return swift_deallocObject();
}

uint64_t sub_1E589C034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC6E8, &unk_1E5A34260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E589C09C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E5A29E74();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E589C148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E5A29E74();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E589C1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5A29E34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E5A29E74();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E589C2FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E5A29E34();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1E5A29E74();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E589C41C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for WorkoutPlansLayout(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[7];
    }

    else
    {
      v14 = sub_1E5A29EB4();
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[9]);
        if (v16 >= 6)
        {
          return v16 - 5;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[8];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1E589C578(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for WorkoutPlansLayout(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[7];
    }

    else
    {
      result = sub_1E5A29EB4();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = a2 + 5;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E589C6D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1E589C6E4()
{

  return swift_deallocObject();
}

uint64_t sub_1E589C71C()
{

  return swift_deallocObject();
}

uint64_t sub_1E589C764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A2A2F4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E589C7D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A2A2F4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E589C840()
{

  return swift_deallocObject();
}

uint64_t sub_1E589C880(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD620, &qword_1E5A35BC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD628, &qword_1E5A35BD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD630, &qword_1E5A35BD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD638, &qword_1E5A35BE0);
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD640, &qword_1E5A35BE8);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD648, &unk_1E5A35BF0);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B5B4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC770, &unk_1E5A319A0);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD650, &unk_1E5A37DD0);
  sub_1E5A2A6C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E58CD164(&qword_1ECFFC768, &qword_1ECFFC770, &unk_1E5A319A0, MEMORY[0x1E697FD58]);
  swift_getWitnessTable();
  sub_1E58CD164(&qword_1ECFFD658, &qword_1ECFFD650, &unk_1E5A37DD0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1E5A2B594();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E58EFCE8();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  v1 = MEMORY[0x1E69E6338];
  sub_1E58CD164(&qword_1ECFFD660, &qword_1ECFFD638, &qword_1E5A35BE0, MEMORY[0x1E69E6338]);
  sub_1E5A2B6F4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2B834();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AD04();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD668, &qword_1E5A35C00);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E58CD164(&qword_1ECFFD670, &qword_1ECFFD628, &qword_1E5A35BD0, v1);
  sub_1E5A2B6F4();
  sub_1E5A2BD84();
  sub_1E5A2B734();
  sub_1E5911818();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2B604();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  swift_getWitnessTable();
  sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1E589D120()
{

  return swift_deallocObject();
}

uint64_t sub_1E589D168@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1E589D174()
{

  return swift_deallocObject();
}

uint64_t sub_1E589D1DC()
{

  return swift_deallocObject();
}

uint64_t sub_1E589D264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD780, &unk_1E5A37DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E589D368()
{
  v13 = sub_1E5A29EB4();
  v1 = *(v13 - 8);
  v2 = (*(v1 + 80) + 144) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1E5A29E74();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v1 + 8))(v0 + v2, v13);

  v10 = *(v5 + 8);
  v10(v0 + v6, v4);
  v11 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v9, 1, v11))
  {
    v10(v0 + v9 + *(v11 + 20), v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1E589D62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E589D734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E589D84C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1E589D858()
{

  return swift_deallocObject();
}

uint64_t sub_1E589D890()
{

  return swift_deallocObject();
}

uint64_t sub_1E589D8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E589D9BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E589DA84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDD00, &qword_1E5A37B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E589DAEC()
{

  return swift_deallocObject();
}

uint64_t sub_1E589DB30()
{

  return swift_deallocObject();
}

uint64_t sub_1E589DB70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1E589DB7C()
{

  return swift_deallocObject();
}

uint64_t sub_1E589DBDC()
{

  return swift_deallocObject();
}

uint64_t sub_1E589DC4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD780, &unk_1E5A37DE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E589DCBC()
{

  return swift_deallocObject();
}

uint64_t sub_1E589DCF4()
{
  v1 = *(v0 + 24);
  v10[0] = *(v0 + 16);
  v2 = v10[0];
  v10[1] = v1;
  v3 = *(v0 + 48);
  v11 = *(v0 + 32);
  v9 = v11;
  v12 = v3;
  v4 = (type metadata accessor for WorkoutPlansView(0, v10) - 8);
  v5 = (v0 + ((*(*v4 + 80) + 64) & ~*(*v4 + 80)));
  sub_1E58B369C(*v5, v5[1]);
  (*(*(v2 - 8) + 8))(v5 + v4[19], v2);
  (*(*(v1 - 8) + 8))(v5 + v4[20], v1);
  (*(*(v9 - 8) + 8))(v5 + v4[21]);
  v6 = v4[22];
  v7 = sub_1E5A29E74();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  return swift_deallocObject();
}

uint64_t sub_1E589DE9C(void *a1)
{
  sub_1E5A2BD84();
  swift_getTupleTypeMetadata3();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A494();
  sub_1E5A2A6C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AC14();
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  swift_getOpaqueTypeConformance2();
  sub_1E58D3D84();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E589E090(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E0, &unk_1E5A39160);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  sub_1E5A2A6C4();
  type metadata accessor for TVCustomPlanView.FocusedButton(255, v1, v2, v3);
  sub_1E5A2BD84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getTupleTypeMetadata3();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B624();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  sub_1E5A2A6C4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
  return swift_getWitnessTable();
}

uint64_t sub_1E589E440()
{

  return swift_deallocObject();
}

uint64_t sub_1E589E47C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE2F0, &unk_1E5A39908);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  sub_1E5951170();
  sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E589E540@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1E589E54C()
{

  return swift_deallocObject();
}

uint64_t sub_1E589E5A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5A2A7D4();
  *a1 = result;
  return result;
}

uint64_t sub_1E589E5FC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E5A29E74();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E589E72C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1E5A29E74();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E589E85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E589E8C8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PersonalizedWorkoutPlanCandidate(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E589E94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5A29EB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PreviousPlanDetail(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E589EA58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E5A29EB4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PreviousPlanDetail(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E589EC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E589ECF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E589EDFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE740, &qword_1E5A3ABC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E589EE6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE740, &qword_1E5A3ABC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E589EEE8()
{

  return swift_deallocObject();
}

uint64_t sub_1E589EF20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC228, &unk_1E5A30470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[17] + 16);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  swift_getFunctionTypeMetadata3();
  v13 = sub_1E5A2A054();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[18];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  sub_1E5A2BD84();
  swift_getFunctionTypeMetadata1();
  v16 = sub_1E5A2A054();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[19];
    goto LABEL_11;
  }

  v17 = sub_1E5A2BD84();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[20];

  return v18(v19, a2, v17);
}

uint64_t sub_1E589F19C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC228, &unk_1E5A30470);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[17] + 16) = -a2;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  swift_getFunctionTypeMetadata3();
  v13 = sub_1E5A2A054();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[18];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_1E5A2BD84();
  swift_getFunctionTypeMetadata1();
  v16 = sub_1E5A2A054();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[19];
    goto LABEL_9;
  }

  v17 = sub_1E5A2BD84();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[20];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1E589F41C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC208, &qword_1E5A30408);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  swift_getOpaqueTypeConformance2();
  sub_1E5969788();
  sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE780, &qword_1E5A3AC78);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE788, &qword_1E5A3AC80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE790, &qword_1E5A3AC88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE798, &unk_1E5A3B790);
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  sub_1E5A2BD84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2B5B4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE7A0, &unk_1E5A3ACA0);
  sub_1E5A2A6C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E58CD164(&qword_1ECFFE7A8, &qword_1ECFFE7A0, &unk_1E5A3ACA0, MEMORY[0x1E697FD58]);
  swift_getWitnessTable();
  sub_1E5A2B594();
  sub_1E5A2A714();
  v2 = MEMORY[0x1E697D680];
  swift_getWitnessTable();
  sub_1E596A1D8(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ActiveWorkoutPlanWorkout(255);
  swift_getOpaqueTypeConformance2();
  sub_1E596A1D8(&qword_1ECFFE7B0, type metadata accessor for ActiveWorkoutPlanWorkout, &protocol conformance descriptor for ActiveWorkoutPlanWorkout);
  sub_1E5A2B5C4();
  sub_1E5A2BD84();
  sub_1E5A2B734();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC210, &qword_1E5A30410);
  sub_1E58CD164(&qword_1ECFFC218, &qword_1ECFFC210, &qword_1E5A30410, v2);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B604();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1E589FC7C()
{
  v1 = *(v0 + 24);
  v34[0] = *(v0 + 16);
  v34[1] = v1;
  v2 = *(v0 + 48);
  v32 = *(v0 + 32);
  v35 = v32;
  v36 = v2;
  active = type metadata accessor for ActiveWorkoutPlanWorkoutView(0, v34);
  v33 = *(*(active - 1) + 80);
  v4 = (v33 + 64) & ~v33;
  v5 = *(*(active - 1) + 64);
  v6 = type metadata accessor for ActiveWorkoutPlanWorkout(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = v4 + v5 + v7;
  v9 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1E5A2A684();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  else
  {
  }

  v11 = v8 & ~v7;
  sub_1E58B369C(*(v9 + active[17]), *(v9 + active[17] + 8));
  v12 = active[18];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD7C8, &qword_1E5A35E28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  swift_getFunctionTypeMetadata3();
  v13 = sub_1E5A2A054();
  (*(*(v13 - 8) + 8))(v9 + v12, v13);
  v14 = active[19];
  sub_1E5A2BD84();
  swift_getFunctionTypeMetadata1();
  v15 = sub_1E5A2A054();
  (*(*(v15 - 8) + 8))(v9 + v14, v15);
  v16 = active[20];
  v17 = *(v32 - 8);
  if (!(*(v17 + 48))(v9 + v16, 1, v32))
  {
    (*(v17 + 8))(v9 + v16, v32);
  }

  v18 = v0 + v11;
  v19 = sub_1E5A2A064();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v0 + v11, 1, v19))
  {
    (*(v20 + 8))(v0 + v11, v19);
  }

  v21 = *(type metadata accessor for ActiveWorkoutPlanArtwork(0) + 20);
  v22 = sub_1E5A29D44();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v18 + v21, 1, v22))
  {
    (*(v23 + 8))(v18 + v21, v22);
  }

  v24 = v6[6];
  v25 = sub_1E5A29CF4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 8);
  v27(v18 + v24, v25);
  v27(v18 + v6[7], v25);
  v27(v18 + v6[8], v25);
  v28 = v6[9];
  if (!(*(v26 + 48))(v18 + v28, 1, v25))
  {
    v27(v18 + v28, v25);
  }

  v29 = v6[10];
  v30 = sub_1E5A29E74();
  (*(*(v30 - 8) + 8))(v18 + v29, v30);
  return swift_deallocObject();
}

uint64_t sub_1E58A01DC()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A021C()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A02C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE988, &unk_1E5A40DE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E58A0394(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE988, &unk_1E5A40DE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E58A0480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE910, &unk_1E5A3B250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58A04FC()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A0534()
{
  sub_1E58B369C(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1E58A0590(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  swift_getOpaqueTypeConformance2();
  sub_1E5969788();
  sub_1E5A2B5C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA0, &qword_1E5A3B448);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAA8, &qword_1E5A3B450);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB0, &qword_1E5A3B458);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAB8, &unk_1E5A3B460);
  v39 = MEMORY[0x1E6981840];
  v7 = sub_1E5A2BD84();
  v30 = v2;
  v31 = v1;
  v32 = v3;
  v33 = v4;
  v34 = v6;
  v35 = v5;
  type metadata accessor for TVActiveWorkoutPlanWorkoutView.FocusedButton(255, &v30);
  v8 = sub_1E5A2BD84();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v30 = v7;
  v31 = v8;
  v32 = WitnessTable;
  v33 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = v7;
  v31 = v8;
  v32 = WitnessTable;
  v33 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = OpaqueTypeMetadata2;
  v31 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  v30 = OpaqueTypeMetadata2;
  v31 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v30 = v13;
  v31 = MEMORY[0x1E69E6158];
  v32 = v14;
  v33 = MEMORY[0x1E69E6168];
  sub_1E5A2B5C4();
  v15 = sub_1E5A2BD84();
  v16 = swift_getWitnessTable();
  v30 = v15;
  v31 = v8;
  v32 = v16;
  v33 = v10;
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = sub_1E5A29E74();
  v30 = v15;
  v31 = v8;
  v32 = v16;
  v33 = v10;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_1E5977D28(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  sub_1E5A2B5C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2AA84();
  sub_1E5A2BD84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v21 = sub_1E5A2B604();
  v22 = swift_getWitnessTable();
  v30 = v21;
  v31 = v8;
  v32 = v22;
  v33 = v10;
  swift_getOpaqueTypeMetadata2();
  v40 = sub_1E5A2A6C4();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2A774();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  sub_1E5A2A6C4();
  v23 = sub_1E5A2B734();
  swift_getWitnessTable();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEAC0, &qword_1E5A3B470);
  v25 = sub_1E58CD164(qword_1ECFFEAC8, &qword_1ECFFEAC0, &qword_1E5A3B470, MEMORY[0x1E697DB78]);
  v30 = v24;
  v31 = v25;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v30 = v23;
  v31 = v26;
  swift_getOpaqueTypeMetadata2();
  v30 = v23;
  v31 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B604();
  v27 = sub_1E5A2B494();
  swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v30 = v27;
  v31 = v28;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  sub_1E5A2AA84();
  v30 = v27;
  v31 = v28;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E58A0E84(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E5A29EB4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    State = type metadata accessor for PreviousPlanLockupLoadState(0);
    v16 = *(*(State - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, State);
  }
}

uint64_t sub_1E58A1008(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1E5A29EB4();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    State = type metadata accessor for PreviousPlanLockupLoadState(0);
    v16 = *(*(State - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, State);
  }

  return result;
}

uint64_t sub_1E58A118C(uint64_t a1, uint64_t a2, int *a3)
{
  active = type metadata accessor for ActiveWorkoutPlanArtwork(0);
  v7 = *(active - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = active;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1E5A29CF4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7C0, &unk_1E5A3ADD0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = sub_1E5A29E74();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_1E58A1358(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ActiveWorkoutPlanArtwork(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1E5A29CF4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE7C0, &unk_1E5A3ADD0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = sub_1E5A29E74();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1E58A152C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for ScheduleConfigurationSection(255);
  type metadata accessor for PageContentSection(255, v2, v4, v5);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A494();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  sub_1E5A2AC14();
  sub_1E5A2A6C4();
  swift_getWitnessTable();
  sub_1E598932C(&qword_1EE2CFAE8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for BottomActionSection(255, v1, v3, v6);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ScheduledDayReviewView(255);
  swift_getOpaqueTypeConformance2();
  sub_1E598932C(&qword_1ECFFED38, type metadata accessor for ScheduledDayReviewView, &protocol conformance descriptor for ScheduledDayReviewView);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  swift_getOpaqueTypeConformance2();
  sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFED40, &qword_1E5A3C098);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  swift_getOpaqueTypeConformance2();
  sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098, MEMORY[0x1E697BF38]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E58A1960(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WorkoutPlanDateHelper(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E58A1A0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WorkoutPlanDateHelper(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E58A1AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5A29EB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E58A1B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5A29EB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E58A1C28@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E6931450]();
  *a1 = result;
  return result;
}

uint64_t sub_1E58A1C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF90, &qword_1E5A3C550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58A1D38()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A1D94(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEEF8, &qword_1E5A3C398);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  sub_1E58CD164(&qword_1ECFFEF00, &qword_1ECFFEEF8, &qword_1E5A3C398, MEMORY[0x1E6981870]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E58A1EE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF90, &qword_1E5A3C550);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF98, &qword_1E5A3C558);
  type metadata accessor for TrainerPreferenceView(255, v1, v2, v3);
  sub_1E5A2A6C4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();

  return swift_getWitnessTable();
}

uint64_t sub_1E58A2058()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A2090(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v7 = a1[2];
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView(255, v1, v2, v3);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2B494();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v6 = MEMORY[0x1E69E6338];
  sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2A474();
  sub_1E5A2A6C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  sub_1E5A2B734();
  sub_1E59926B8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B604();
  sub_1E5A2BD84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF250, &qword_1E5A3C900);
  type metadata accessor for TVCustomPlanView(255, v8, v7, v4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, v6);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  sub_1E5A2B734();
  sub_1E58CD164(&qword_1EE2CFAB8, &qword_1ECFFF250, &qword_1E5A3C900, MEMORY[0x1E6981870]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AD04();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  sub_1E5A2BD84();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E58A2BF0()
{
  v1 = *(type metadata accessor for PersonalizedWorkoutPlanCandidates(0) - 8);
  v2 = (*(v1 + 80) + 105) & ~*(v1 + 80);
  sub_1E58B369C(*(v0 + 48), *(v0 + 56));

  v3 = *(type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0) + 20);
  v4 = sub_1E5A29E74();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E58A2D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 246)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xA)
    {
      return v10 - 9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E58A2E58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 246)
  {
    *(a1 + *(a4 + 20)) = a2 + 9;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E58A2F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E58A3008(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E58A3098(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1E5A29E74();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1E58A31C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1E5A29E74();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E58A32FC(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF600, &qword_1E5A3DED0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF608, &qword_1E5A3DED8);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A774();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF610, &qword_1E5A3DEE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF618, &qword_1E5A3DEE8);
  sub_1E59A6BD0();
  sub_1E59A6C88();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E58A35A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF678, &qword_1E5A3E008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58A3618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E58A3690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2A0, &qword_1E5A30640);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E58A3728()
{

  sub_1E591CB8C(*(v0 + 224), *(v0 + 232));

  return swift_deallocObject();
}

uint64_t sub_1E58A379C()
{
  v1 = sub_1E5A2A024();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 217) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E58A3890()
{
  v1 = sub_1E5A2A1F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 232) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E58A399C()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A39D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC228, &unk_1E5A30470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    if (a2 == 254)
    {
      v12 = *(a1 + a3[13] + 16);
      if (v12 > 1)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    swift_getFunctionTypeMetadata2();
    v13 = sub_1E5A2A054();
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
      swift_getFunctionTypeMetadata();
      v15 = sub_1E5A2A054();
      return (*(*(v15 - 8) + 48))(a1 + a3[15], a2, v15);
    }

    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[14];
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1E58A3BCC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC228, &unk_1E5A30470);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    if (a3 == 254)
    {
      *(a1 + a4[13] + 16) = -a2;
      return result;
    }

    swift_getFunctionTypeMetadata2();
    v13 = sub_1E5A2A054();
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
      swift_getFunctionTypeMetadata();
      v15 = sub_1E5A2A054();
      return (*(*(v15 - 8) + 56))(a1 + a4[15], a2, a2, v15);
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[14];
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E58A3DC4(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v7 = a1[2];
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  type metadata accessor for PersonalizedWorkoutPlanCandidateView(255, v1, v2, v3);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  swift_getOpaqueTypeMetadata2();
  v6 = MEMORY[0x1E69E6338];
  sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70, MEMORY[0x1E69E6338]);
  sub_1E59C97C0(&qword_1ECFFC820, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2B734();
  sub_1E59926B8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2BD84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8D8, &unk_1E5A3EA80);
  type metadata accessor for CustomPlanView(255, v8, v7, v4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  sub_1E5A2AA84();
  sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908, v6);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A494();
  sub_1E5A2B854();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2B734();
  sub_1E59C8D30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5A2B604();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF8E8, &qword_1E5A3EA98);
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AD04();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  sub_1E59C8DE8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2BD84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E58A4950()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A4988()
{
  v1 = *(v0 + 40);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = v1;
  v2 = type metadata accessor for PersonalizedWorkoutPlansView(0, &v13);
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5A2A684();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_1E58B369C(*(v4 + v2[13]), *(v4 + v2[13] + 8));
  v6 = v2[14];
  v7 = MEMORY[0x1E69E6158];
  v8 = MEMORY[0x1E69E6530];
  swift_getFunctionTypeMetadata2();
  v9 = sub_1E5A2A054();
  (*(*(v9 - 8) + 8))(v4 + v6, v9);
  v10 = v2[15];
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  *&v14 = v8;
  *(&v14 + 1) = v7;
  v15 = v7;
  swift_getFunctionTypeMetadata();
  v11 = sub_1E5A2A054();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);
  return swift_deallocObject();
}

uint64_t sub_1E58A4BDC()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A4C14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1E5A29E74();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF990, &qword_1E5A3ED18);
    swift_getFunctionTypeMetadata3();
    v8 = sub_1E5A2A054();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E58A4D14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1E5A29E74();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF990, &qword_1E5A3ED18);
    swift_getFunctionTypeMetadata3();
    v7 = sub_1E5A2A054();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E58A4E0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LockupView(255, *a1, a1[1], a4);
  sub_1E5A2A6C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B594();
  sub_1E5A2B594();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF960, &qword_1E5A3ED00);
  swift_getWitnessTable();
  sub_1E59CA4A0();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A714();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E59CF984(&qword_1ECFFC220, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1E58A5138()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A51A0()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A5224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5A29E74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E58A5358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5A29E74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E58A548C()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A54C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAC8, &qword_1E5A3F4A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58A5538(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFFAC8, &qword_1E5A3F4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E58A55A0()
{
  sub_1E58B369C(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E58A564C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EditItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1E5A29E74();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[16];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E58A57CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for EditItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_1E5A29E74();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[16];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E58A5950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF78, &qword_1E5A3FD40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
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

  else
  {
    v11 = sub_1E5A29EB4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E58A5A8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF78, &qword_1E5A3FD40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_1E5A29EB4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E58A5BBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1E58A5BC8()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A5C00()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A5C54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E58A5D10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E58A5DC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFFEB0, &qword_1E5A40408);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE0E8, &unk_1E5A3AC90);
  sub_1E5A2A6C4();
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView.FocusedButton(255, v1, v2, v3);
  sub_1E5A2BD84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B624();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  sub_1E5A2A6C4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
  return swift_getWitnessTable();
}

uint64_t sub_1E58A618C()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A61C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE988, &unk_1E5A40DE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC228, &unk_1E5A30470);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[13];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[15]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[16];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1E58A635C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE988, &unk_1E5A40DE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC228, &unk_1E5A30470);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[13];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[15]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[16];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1E58A64F4(uint64_t a1)
{
  v43 = *a1;
  v2 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFED40, &qword_1E5A3C098);
  sub_1E5A2A644();
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000E8, &qword_1E5A40D20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0000F0, &qword_1E5A40D28);
  v42 = *(a1 + 8);
  sub_1E5A2AA84();
  sub_1E5A2B494();
  sub_1E5A2A6C4();
  v52 = sub_1E58CD164(&qword_1ED0000F8, &qword_1ED0000F0, &qword_1E5A40D28, MEMORY[0x1E6981870]);
  v53 = v2;
  WitnessTable = swift_getWitnessTable();
  v49 = swift_getWitnessTable();
  v50 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000100, &qword_1E5A40D30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000108, &qword_1E5A40D38);
  sub_1E58CD164(&qword_1ED000110, &qword_1ED000108, &qword_1E5A40D38, MEMORY[0x1E697CD20]);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = swift_getOpaqueTypeConformance2();
  v4 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeMetadata2();
  v44 = v43;
  v45 = v42;
  v46 = v2;
  v5 = type metadata accessor for WorkoutPlanScheduleReviewView(255, &v44);
  v6 = swift_getWitnessTable();
  v44 = v5;
  *&v45 = v6;
  v7 = swift_getOpaqueTypeMetadata2();
  v44 = v5;
  *&v45 = v6;
  v8 = swift_getOpaqueTypeConformance2();
  v44 = v7;
  *&v45 = v8;
  v9 = swift_getOpaqueTypeMetadata2();
  v44 = v7;
  *&v45 = v8;
  v10 = swift_getOpaqueTypeConformance2();
  v44 = v9;
  *&v45 = v10;
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000118, &qword_1E5A40D40);
  v44 = v9;
  *&v45 = v10;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000120, &unk_1E5A40D48);
  v15 = sub_1E59F6A70();
  v44 = v14;
  *&v45 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v44 = v11;
  *&v45 = v12;
  *(&v45 + 1) = v13;
  v46 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v44 = v40;
  *&v45 = OpaqueTypeMetadata2;
  *(&v45 + 1) = v4;
  v46 = v38;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = sub_1E59F6B64();
  v44 = v11;
  *&v45 = v12;
  *(&v45 + 1) = v13;
  v46 = v16;
  v20 = swift_getOpaqueTypeConformance2();
  v44 = v41;
  *&v45 = &type metadata for WorkoutPlanCreationRoute;
  *(&v45 + 1) = v17;
  v46 = v18;
  v47 = v19;
  v48 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v44 = v41;
  *&v45 = &type metadata for WorkoutPlanCreationRoute;
  *(&v45 + 1) = v17;
  v46 = v18;
  v47 = v19;
  v48 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v44 = v21;
  *&v45 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v44 = v21;
  *&v45 = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v44 = v23;
  *&v45 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000140, &qword_1E5A40D58);
  v44 = v23;
  *&v45 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFE9F0, &qword_1E5A3B340);
  v29 = sub_1E58CD164(&qword_1ED000130, &qword_1ECFFE9F0, &qword_1E5A3B340, MEMORY[0x1E697BEF0]);
  v44 = v28;
  *&v45 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v44 = v25;
  *&v45 = v26;
  *(&v45 + 1) = v27;
  v46 = v30;
  swift_getOpaqueTypeMetadata2();
  v44 = v25;
  *&v45 = v26;
  *(&v45 + 1) = v27;
  v46 = v30;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A6F4();
  sub_1E5A2AA84();
  v31 = sub_1E5A2B494();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098, MEMORY[0x1E697BF38]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v34 = sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
  v44 = v31;
  *&v45 = v32;
  *(&v45 + 1) = v33;
  v46 = v34;
  swift_getOpaqueTypeMetadata2();
  v35 = sub_1E5A2A6C4();
  v44 = v31;
  *&v45 = v32;
  *(&v45 + 1) = v33;
  v46 = v34;
  swift_getOpaqueTypeConformance2();
  v36 = swift_getWitnessTable();
  v44 = v35;
  *&v45 = MEMORY[0x1E69E6370];
  *(&v45 + 1) = v36;
  v46 = MEMORY[0x1E69E6388];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E58A6D00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5A2A884();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E58A6D68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5A2A7F4();
  *a1 = result;
  return result;
}

uint64_t sub_1E58A6DBC()
{
  v1 = *(v0 + 32);
  v11[0] = *(v0 + 16);
  v11[1] = v1;
  v2 = type metadata accessor for WorkoutPlanCreationView(0, v11);
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA0, &unk_1E5A2FBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5A2A5E4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E5A2A684();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  sub_1E58B369C(*(v4 + v2[14]), *(v4 + v2[14] + 8));

  v8 = v4 + v2[16];
  v9 = sub_1E5A2A644();
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60);

  return swift_deallocObject();
}

uint64_t sub_1E58A703C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5A2A8C4();
  *a1 = result;
  return result;
}

uint64_t sub_1E58A7098()
{
  v1 = *(v0 + 32);
  v11[0] = *(v0 + 16);
  v11[1] = v1;
  v2 = type metadata accessor for WorkoutPlanCreationView(0, v11);
  v3 = (*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA0, &unk_1E5A2FBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5A2A5E4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBF58, &qword_1E5A303F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E5A2A684();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  sub_1E58B369C(*(v4 + v2[14]), *(v4 + v2[14] + 8));

  v8 = v4 + v2[16];
  v9 = sub_1E5A2A644();
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED000148, &qword_1E5A40D60);

  return swift_deallocObject();
}

uint64_t sub_1E58A7330()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000688, &qword_1E5A41DC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  sub_1E58CD164(&qword_1ED000698, &qword_1ED000688, &qword_1E5A41DC0, MEMORY[0x1E6981870]);
  sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E58A7424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000708, &qword_1E5A41EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58A7494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000758, &qword_1E5A41F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58A7508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5A2A1F4();
  v8 = *(v6 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v6;
    v10 = *(v8 + 48);
    v11 = a1;
  }

  else
  {
    v12 = type metadata accessor for ArchivedWorkoutPlansLayout(0, *(a3 + 32), *(a3 + 64), v7);
    if (*(*(v12 - 8) + 84) == a2)
    {
      v9 = v12;
      v13 = *(v12 - 8);
      v14 = *(a3 + 84);
    }

    else
    {
      v15 = sub_1E5A29EB4();
      if (*(*(v15 - 8) + 84) != a2)
      {
        v17 = sub_1E5A2A184();
        if (*(*(v17 - 8) + 84) == a2)
        {
          v18 = v17;
          v19 = *(v17 - 8);
          v20 = *(a3 + 96);
        }

        else
        {
          v18 = *(a3 + 24);
          if (*(*(v18 - 8) + 84) != a2)
          {
            v21 = *(a1 + *(a3 + 104));
            if (v21 >= 2)
            {
              return v21 - 1;
            }

            else
            {
              return 0;
            }
          }

          v19 = *(*(a3 + 24) - 8);
          v20 = *(a3 + 100);
        }

        return (*(v19 + 48))(a1 + v20, a2, v18);
      }

      v9 = v15;
      v13 = *(v15 - 8);
      v14 = *(a3 + 92);
    }

    v10 = *(v13 + 48);
    v11 = a1 + v14;
  }

  return v10(v11, a2, v9);
}

uint64_t sub_1E58A7728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E5A2A1F4();
  v10 = *(v8 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v8;
    v12 = *(v10 + 56);
    v13 = a1;
  }

  else
  {
    v14 = type metadata accessor for ArchivedWorkoutPlansLayout(0, *(a4 + 32), *(a4 + 64), v9);
    if (*(*(v14 - 8) + 84) == a3)
    {
      v11 = v14;
      v15 = *(v14 - 8);
      v16 = *(a4 + 84);
    }

    else
    {
      v17 = sub_1E5A29EB4();
      if (*(*(v17 - 8) + 84) != a3)
      {
        result = sub_1E5A2A184();
        if (*(*(result - 8) + 84) == a3)
        {
          v19 = result;
          v20 = *(result - 8);
          v21 = *(a4 + 96);
        }

        else
        {
          v19 = *(a4 + 24);
          if (*(*(v19 - 8) + 84) != a3)
          {
            *(a1 + *(a4 + 104)) = a2 + 1;
            return result;
          }

          v20 = *(*(a4 + 24) - 8);
          v21 = *(a4 + 100);
        }

        return (*(v20 + 56))(a1 + v21, a2, a2, v19);
      }

      v11 = v17;
      v15 = *(v17 - 8);
      v16 = *(a4 + 92);
    }

    v12 = *(v15 + 56);
    v13 = a1 + v16;
  }

  return v12(v13, a2, a2, v11);
}

uint64_t sub_1E58A7960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1E58A7A34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_1E58A7B0C()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A7B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5A29EB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E58A7C04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5A29EB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E58A7CC0()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A7CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C70, &qword_1E5A43CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58A7D6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED000C70, &qword_1E5A43CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E58A7DD4()
{
  sub_1E58B369C(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E58A7E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5A2A2F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
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

  else
  {
    v11 = sub_1E5A29EB4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E58A7F40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5A2A2F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_1E5A29EB4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E58A8060(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1E5A2A2F4();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1E5A29EB4();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[11] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_1E58A8224(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1E5A2A2F4();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1E5A29EB4();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[11] + 8) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E58A83D8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1E5A29CF4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1E5A29E34();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_1E5A29E74();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_1E58A8544(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1E5A29CF4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1E5A29E34();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_1E5A29E74();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1E58A86B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
      swift_getFunctionTypeMetadata();
      v13 = sub_1E5A2A054();
      return (*(*(v13 - 8) + 48))(a1 + *(a3 + 44), a2, v13);
    }
  }
}

uint64_t sub_1E58A8820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFC120, &qword_1E5A2FF10);
      swift_getFunctionTypeMetadata();
      v13 = sub_1E5A2A054();
      return (*(*(v13 - 8) + 56))(v5 + *(a4 + 44), a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E58A8990(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F20, &qword_1E5A44B50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F28, &qword_1E5A44B58);
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata3();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2A6C4();
  sub_1E5A2A6C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A774();
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F18, &qword_1E5A44B48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED000F38, &qword_1E5A44B68);
  sub_1E5A1872C();
  sub_1E5A187E4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E58A8C54()
{

  return swift_deallocObject();
}

uint64_t sub_1E58A8C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5A29E74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E58A8D50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5A29E74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E58A8E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LockupView.Layout(0, *(a3 + 16), *(a3 + 24), a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = type metadata accessor for PreviousPlanDetail(0);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 40));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1E58A8F1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LockupView.Layout(0, *(a4 + 16), *(a4 + 24), a4);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PreviousPlanDetail(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E58A9028(void *a1)
{
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECFFE0F0, &qword_1E5A39170);
  sub_1E5A2A6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001048, &qword_1E5A44EF8);
  sub_1E5A2A6C4();
  swift_getWitnessTable();
  sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  sub_1E58CD164(qword_1ED001070, &qword_1ED001048, &qword_1E5A44EF8, MEMORY[0x1E697EC18]);
  return swift_getWitnessTable();
}

uint64_t sub_1E58A918C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  v6 = sub_1E5A2A2F4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1E58A9204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  v7 = sub_1E5A2A2F4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1E58A9280@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E5A2A8A4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E58A92E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001190, &qword_1E5A44FF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  sub_1E58CD164(&qword_1ED0011C8, &qword_1ED001190, &qword_1E5A44FF0, MEMORY[0x1E6981870]);
  sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E58A93E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0011D8, &qword_1E5A450E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58A945C()
{
  v1 = sub_1E5A2AD34();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E58A94E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0012E8, &qword_1E5A45578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E58A954C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0012E8, &qword_1E5A45578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58A95BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5A2A814();
  *a1 = result;
  return result;
}

uint64_t sub_1E58A9614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001308, &qword_1E5A45588);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58A9684()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0012E8, &qword_1E5A45578);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001340, &qword_1E5A455B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED001348, &qword_1E5A455B8);
  sub_1E5A25034();
  sub_1E5A25118();
  sub_1E5A25288();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E58A9754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001468, &unk_1E5A45B10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for WorkoutPlanScheduledItem(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E58A9888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001468, &unk_1E5A45B10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for WorkoutPlanScheduledItem(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E58A99C0()
{
  v1 = (type metadata accessor for ActivityListItemView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED001468, &unk_1E5A45B10);
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v2 + v1[9];

  v5 = *(type metadata accessor for WorkoutPlanScheduledItem(0) + 24);
  v6 = sub_1E5A29E74();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1E58A9B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0014F0, &qword_1E5A45B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58A9C3C(uint64_t a1)
{
  v1 = *(a1 + 136);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 104);
  v8 = *(a1 + 120);
  v9 = v1;
  type metadata accessor for ArchivedWorkoutPlansFeature(255, &v3);
  swift_getWitnessTable();
  sub_1E5A2B974();
  swift_getWitnessTable();
  return sub_1E5A2A4F4();
}

uint64_t sub_1E58A9D1C(uint64_t a1)
{
  swift_getFunctionTypeMetadata1();
  sub_1E5A2A054();
  sub_1E5A2A044();
  return v2;
}

uint64_t sub_1E58A9D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  *(v21 + 48) = a7;
  *(v21 + 56) = a8;
  *(v21 + 64) = a9;
  *(v21 + 72) = a10;
  *(v21 + 80) = a11;
  *(v21 + 96) = a12;
  *(v21 + 112) = a13;
  *(v21 + 128) = a14;
  *(v21 + 136) = a15;
  *(v21 + 144) = a1;
  *(v21 + 152) = a2;
  swift_getFunctionTypeMetadata2();
  return sub_1E5A2A034();
}

uint64_t (*sub_1E58A9E74(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  swift_getFunctionTypeMetadata2();
  sub_1E5A2A054();
  sub_1E5A2A044();
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 32) = v2;
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 56) = *(a1 + 56);
  *(v4 + 72) = v3;
  v5 = *(a1 + 96);
  *(v4 + 80) = *(a1 + 80);
  *(v4 + 96) = v5;
  v6 = *(a1 + 128);
  *(v4 + 112) = *(a1 + 112);
  *(v4 + 128) = v6;
  *(v4 + 144) = v8;
  return sub_1E58B4144;
}

uint64_t sub_1E58A9F50(_OWORD *a1)
{
  sub_1E58A9C3C(a1);
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v2 > 2u)
  {
    sub_1E5A2A734();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB580, &qword_1E5A30510);
    sub_1E5A2A734();
    *(swift_allocObject() + 16) = xmmword_1E5A2C920;
    sub_1E5A2A724();
  }

  sub_1E58B3B18(&qword_1ECFFB568, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB570, &unk_1E5A2CA80);
  sub_1E58B3B60();
  return sub_1E5A2BDD4();
}

uint64_t TVArchivedWorkoutPlansView.init(store:canvasArtworkViewBuilder:canvasViewDescriptorViewBuilder:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20)
{
  v21 = swift_allocObject();
  *(v21 + 16) = a8;
  *(v21 + 24) = a10;
  *(v21 + 32) = a11;
  *(v21 + 40) = a12;
  *(v21 + 48) = a13;
  *(v21 + 56) = a14;
  *(v21 + 64) = a15;
  *(v21 + 72) = a16;
  *(v21 + 80) = a17;
  *(v21 + 96) = a18;
  *(v21 + 112) = a19;
  *(v21 + 128) = a20;
  *(v21 + 144) = a1;
  *(v21 + 152) = a2;

  v37 = a8;
  v38 = a12;
  v39 = a13;
  v40 = a14;
  v41 = a15;
  v42 = a16;
  v43 = a17;
  v44 = *(&a18 + 1);
  v45 = a19;
  v46 = a20;
  type metadata accessor for ArchivedWorkoutPlansFeature(255, &v37);
  swift_getWitnessTable();
  sub_1E5A2B974();
  swift_getWitnessTable();
  *a9 = sub_1E5A2A4E4();
  *(a9 + 8) = v22;
  *(a9 + 16) = v23 & 1;
  v37 = a8;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a13;
  v42 = a14;
  v43 = a15;
  v44 = a16;
  v45 = a17;
  v46 = a18;
  v47 = a19;
  v48 = a20;
  v24 = type metadata accessor for TVArchivedWorkoutPlansView(0, &v37);

  v37 = a3;
  v38 = v25;
  swift_getFunctionTypeMetadata1();
  sub_1E5A2A034();
  sub_1E58A9D70(a5, a6, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, *(&a20 + 1));

  v26 = *(v24 + 156);
  v27 = sub_1E5A29E74();
  return (*(*(v27 - 8) + 32))(a9 + v26, a7, v27);
}

uint64_t sub_1E58AA468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v130 = a2;
  v129 = a1;
  v139 = a6;
  v112 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v110 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v109 = &v97 - v12;
  v125 = sub_1E5A2AB64();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1E5A2A2F4();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v119 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3[8];
  v16 = a3[16];
  v114 = type metadata accessor for ArchivedWorkoutPlansLayout(0, v15, v16, v17);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v111 = &v97 - v18;
  v19 = sub_1E5A2A4B4();
  v118 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v131 = &v97 - v20;
  WitnessTable = swift_getWitnessTable();
  v137 = v19;
  v162 = v19;
  v163 = WitnessTable;
  v136 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v120 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v116 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v115 = &v97 - v25;
  v132 = v26;
  v135 = sub_1E5A2AA84();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v97 - v27;
  v117 = v6;
  sub_1E58A9C3C(a3);
  v28 = a3[2];
  v29 = a3[3];
  v141 = v28;
  v142 = v29;
  v30 = a3[5];
  v106 = a3[4];
  v143 = v106;
  v105 = v30;
  v144 = v30;
  v32 = a3[6];
  v31 = a3[7];
  v145 = v32;
  v146 = v31;
  v33 = a3[9];
  v34 = a3[10];
  v107 = v15;
  v147 = v15;
  v148 = v33;
  v104 = v33;
  v140 = a4;
  v149 = a4;
  v150 = v34;
  v103 = v34;
  v36 = a3[11];
  v35 = a3[12];
  v151 = v36;
  v152 = v35;
  v128 = v35;
  v37 = a3[14];
  v126 = a3[13];
  v153 = v126;
  v154 = v37;
  v127 = v37;
  v38 = a3[15];
  v155 = v38;
  v156 = v16;
  v108 = v16;
  v39 = a3[17];
  v157 = v39;
  v158 = a5;
  v138 = a5;
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v161)
  {
    v41 = v110;
    (v129)(v40);
    v42 = v112;
    v43 = *(v112 + 16);
    v44 = v109;
    v45 = v140;
    v43(v109, v41, v140);
    v46 = *(v42 + 8);
    v46(v41, v45);
    v43(v41, v44, v45);
    v47 = v137;
    v48 = v136;
    v162 = v137;
    v163 = v136;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v50 = v133;
    v51 = v138;
    sub_1E595ECB8(v41, v132, v45, OpaqueTypeConformance2, v138);
    v46(v41, v45);
    v46(v44, v45);
  }

  else
  {
    v52 = sub_1E5A2AD84();
    MEMORY[0x1EEE9AC00](v52);
    *(&v97 - 20) = v28;
    *(&v97 - 19) = v29;
    v53 = v36;
    v101 = v36;
    v54 = v106;
    v100 = v31;
    v55 = v32;
    v99 = v32;
    v56 = v105;
    *(&v97 - 18) = v106;
    *(&v97 - 17) = v56;
    *(&v97 - 16) = v55;
    *(&v97 - 15) = v31;
    v112 = v29;
    v57 = v107;
    v58 = v39;
    v102 = v39;
    v59 = v104;
    *(&v97 - 14) = v107;
    *(&v97 - 13) = v59;
    v60 = v140;
    *(&v97 - 12) = v140;
    v61 = v60;
    v62 = v103;
    *(&v97 - 11) = v103;
    *(&v97 - 10) = v53;
    v63 = v126;
    *(&v97 - 9) = v128;
    *(&v97 - 8) = v63;
    *(&v97 - 7) = v127;
    *(&v97 - 6) = v38;
    v98 = v38;
    v110 = v28;
    v64 = v108;
    *(&v97 - 5) = v108;
    *(&v97 - 4) = v58;
    v65 = v138;
    v66 = v129;
    *(&v97 - 3) = v138;
    *(&v97 - 2) = v66;
    *(&v97 - 1) = v130;
    v67 = v61;
    sub_1E594320C(v68, sub_1E58B3CF4, (&v97 - 22), v61, v65);
    LODWORD(v130) = sub_1E5A2AD94();
    v69 = sub_1E58A9C3C(a3);
    v129 = &v97;
    MEMORY[0x1EEE9AC00](v69);
    v70 = v112;
    *(&v97 - 18) = v110;
    *(&v97 - 17) = v70;
    *(&v97 - 16) = v54;
    *(&v97 - 15) = v56;
    v71 = v100;
    *(&v97 - 14) = v99;
    *(&v97 - 13) = v71;
    *(&v97 - 12) = v57;
    *(&v97 - 11) = v59;
    *(&v97 - 10) = v67;
    *(&v97 - 9) = v62;
    v72 = v128;
    *(&v97 - 8) = v101;
    *(&v97 - 7) = v72;
    v73 = v127;
    *(&v97 - 6) = v126;
    *(&v97 - 5) = v73;
    *(&v97 - 4) = v98;
    *(&v97 - 3) = v64;
    *(&v97 - 2) = v102;
    *(&v97 - 1) = v65;
    swift_getKeyPath();
    v74 = v111;
    sub_1E5A2B944();

    v75 = v121;
    v76 = v119;
    v77 = v122;
    (*(v121 + 16))(v119, v74, v122);
    (*(v113 + 8))(v74, v114);
    sub_1E5A2A294();
    v79 = v78;
    sub_1E5A2A2D4();
    v81 = v80;
    sub_1E5A2A2C4();
    v83 = v82;
    sub_1E5A2A2E4();
    v85 = v84;
    (*(v75 + 8))(v76, v77);
    v86 = v123;
    sub_1E5A2AB54();
    v87 = v116;
    v47 = v137;
    v48 = v136;
    v88 = v131;
    MEMORY[0x1E6931D70](v130, v86, v137, v136, v79, v81, v83, v85);
    (*(v124 + 8))(v86, v125);
    (*(v118 + 8))(v88, v47);
    v162 = v47;
    v163 = v48;
    v131 = swift_getOpaqueTypeConformance2();
    v89 = v120;
    v90 = *(v120 + 16);
    v91 = v115;
    v92 = v132;
    v90(v115, v87, v132);
    v93 = *(v89 + 8);
    v93(v87, v92);
    v90(v87, v91, v92);
    v51 = v65;
    v50 = v133;
    sub_1E595EBC0(v87, v92, v140, v131, v51);
    v93(v87, v92);
    v93(v91, v92);
  }

  v162 = v47;
  v163 = v48;
  v159 = swift_getOpaqueTypeConformance2();
  v160 = v51;
  v94 = v135;
  swift_getWitnessTable();
  v95 = v134;
  (*(v134 + 16))(v139, v50, v94);
  return (*(v95 + 8))(v50, v94);
}

uint64_t sub_1E58AB03C@<X0>(uint64_t a1@<X0>, char *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13(v10);
  v14 = *(v6 + 16);
  v14(v12, v8, a5);
  v15 = *(v6 + 8);
  v15(v8, a5);
  v14(a2, v12, a5);
  return (v15)(v12, a5);
}

uint64_t sub_1E58AB1B4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  v61 = sub_1E5A2A374();
  v3 = a1[2];
  v58 = a1[3];
  v50 = sub_1E5A2A314();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB500, &qword_1E5A30400);
  v4 = a1[4];
  v56 = a1[5];
  v57 = v4;
  v47 = sub_1E5A2A384();
  v5 = a1[7];
  v55 = a1[8];
  v6 = a1[9];
  v59 = v5;
  v60 = v6;
  v7 = a1;
  v8 = sub_1E58B3B18(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v39 = v7[10];
  v9 = sub_1E58B3B18(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v10 = sub_1E58B1C48();
  v11 = sub_1E58B1C9C();
  v12 = sub_1E58B1CF0();
  v38 = v7[13];
  v40 = v7[17];
  v95 = v61;
  v96 = v3;
  v97 = v50;
  v98 = &type metadata for WorkoutPlanItemContext;
  v99 = v56;
  v100 = v6;
  v101 = v8;
  v102 = v39;
  v103 = v9;
  v104 = v10;
  v105 = v11;
  v106 = v12;
  v107 = v38;
  v108 = v40;
  v13 = sub_1E5A2A1A4();
  v54 = v7[11];
  v95 = MEMORY[0x1E697E108];
  v96 = MEMORY[0x1E697E100];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v7[12];
  v44 = sub_1E58B3B18(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v36 = v7;
  v14 = v7[15];
  v52 = v7[16];
  v53 = v14;
  v35[0] = v13;
  WitnessTable = swift_getWitnessTable();
  v49 = v3;
  v46 = sub_1E5A2A354();
  v35[2] = sub_1E5A2A334();
  v35[3] = sub_1E5A2AA84();
  v15 = MEMORY[0x1E6981E70];
  v35[1] = sub_1E5A2AA84();
  v97 = v3;
  v98 = v58;
  v99 = v15;
  v100 = v15;
  v101 = v50;
  v102 = v48;
  v103 = v57;
  v104 = &type metadata for WorkoutPlanItemContext;
  v105 = v56;
  v106 = v47;
  v107 = v15;
  v108 = v59;
  v109 = v55;
  v110 = v6;
  v111 = v13;
  v112 = MEMORY[0x1E6981E60];
  v113 = v54;
  v114 = MEMORY[0x1E6981E60];
  v115 = MEMORY[0x1E6981E60];
  v116 = OpaqueTypeConformance2;
  v117 = v51;
  v118 = v44;
  v119 = MEMORY[0x1E6981E60];
  v16 = MEMORY[0x1E6981E60];
  v120 = v53;
  v121 = v52;
  v122 = WitnessTable;
  sub_1E5A2A3A4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v93 = swift_getWitnessTable();
  v94 = swift_getWitnessTable();
  v17 = v16;
  v91 = v16;
  v92 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v89 = swift_getWitnessTable();
  v90 = v17;
  v87 = v18;
  v88 = swift_getWitnessTable();
  v85 = swift_getWitnessTable();
  v86 = v17;
  v19 = swift_getWitnessTable();
  v20 = sub_1E5A2A4B4();
  v21 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E5A2BD84();
  sub_1E5A2B734();
  v22 = sub_1E58B1D44();
  v95 = v20;
  v96 = v21;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = v19;
  v82 = swift_getWitnessTable();
  v79 = v22;
  v80 = swift_getWitnessTable();
  v81 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  v23 = sub_1E5A2B604();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v35 - v28;
  sub_1E5A2AA34();
  v62 = v49;
  v63 = v58;
  v64 = v57;
  v30 = v36[6];
  v65 = v56;
  v66 = v30;
  v67 = v59;
  v68 = v55;
  v69 = v60;
  v70 = v39;
  v71 = v54;
  v72 = v51;
  v31 = v36[14];
  v73 = v38;
  v74 = v31;
  v75 = v53;
  v76 = v52;
  v77 = v40;
  v78 = v41;
  sub_1E5A2B5F4();
  swift_getWitnessTable();
  v32 = *(v24 + 16);
  v32(v29, v26, v23);
  v33 = *(v24 + 8);
  v33(v26, v23);
  v32(v42, v29, v23);
  return (v33)(v29, v23);
}

uint64_t sub_1E58ABA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v52 = a7;
  v53 = a8;
  v41 = a6;
  v42 = a1;
  v62 = a5;
  v63 = a4;
  v65 = a3;
  v43 = a9;
  v51 = a17;
  v61 = a16;
  v58 = a13;
  v59 = a12;
  v55 = a18;
  v40 = a15;
  v54 = a14;
  v39 = a11;
  v60 = a10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  v19 = sub_1E5A2A374();
  v44 = sub_1E5A2A314();
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB500, &qword_1E5A30400);
  v49 = sub_1E5A2A384();
  sub_1E58B3B18(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  sub_1E58B3B18(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  sub_1E58B1C48();
  sub_1E58B1C9C();
  sub_1E58B1CF0();
  v47 = v19;
  v64 = a2;
  v20 = sub_1E5A2A1A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_1E58B3B18(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v38[0] = v20;
  WitnessTable = swift_getWitnessTable();
  v48 = sub_1E5A2A354();
  v21 = MEMORY[0x1E6981E70];
  v38[1] = sub_1E5A2A334();
  v38[2] = sub_1E5A2AA84();
  sub_1E5A2AA84();
  v70 = a2;
  v71 = v65;
  v72 = v21;
  v73 = v21;
  v74 = v44;
  v75 = v50;
  v76 = v63;
  v77 = &type metadata for WorkoutPlanItemContext;
  v78 = v62;
  v79 = v49;
  v80 = v21;
  v81 = v52;
  v82 = v53;
  v83 = a10;
  v84 = v20;
  v85 = MEMORY[0x1E6981E60];
  v86 = a12;
  v87 = MEMORY[0x1E6981E60];
  v88 = MEMORY[0x1E6981E60];
  v89 = OpaqueTypeConformance2;
  v90 = a13;
  v91 = v46;
  v92 = MEMORY[0x1E6981E60];
  v22 = MEMORY[0x1E6981E60];
  v93 = a16;
  v94 = a17;
  v95 = WitnessTable;
  sub_1E5A2A3A4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v67[33] = swift_getWitnessTable();
  v67[34] = swift_getWitnessTable();
  v67[31] = v22;
  v67[32] = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v67[29] = swift_getWitnessTable();
  v67[30] = v22;
  v67[27] = v23;
  v67[28] = swift_getWitnessTable();
  v67[25] = swift_getWitnessTable();
  v67[26] = v22;
  OpaqueTypeConformance2 = swift_getWitnessTable();
  v24 = sub_1E5A2A4B4();
  v68 = v24;
  v69 = swift_getWitnessTable();
  v49 = MEMORY[0x1E697CF18];
  v50 = v69;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  v25 = sub_1E5A2BD84();
  v26 = sub_1E5A2B734();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v38 - v31;
  v67[2] = v64;
  v67[3] = v65;
  v67[4] = v63;
  v67[5] = v62;
  v67[6] = v41;
  v67[7] = v52;
  v67[8] = v53;
  v67[9] = v60;
  v67[10] = v39;
  v67[11] = v59;
  v67[12] = v58;
  v67[13] = v54;
  v67[14] = v40;
  v67[15] = v61;
  v67[16] = v51;
  v67[17] = v55;
  v67[18] = v42;
  v66[2] = v64;
  v66[3] = v65;
  v66[4] = v63;
  v66[5] = v62;
  v66[6] = v41;
  v66[7] = v52;
  v66[8] = v53;
  v66[9] = v60;
  v66[10] = v39;
  v66[11] = v59;
  v66[12] = v58;
  v66[13] = v54;
  v66[14] = v40;
  v66[15] = v61;
  v66[16] = v51;
  v66[17] = v55;
  v66[18] = v42;
  v33 = sub_1E58B1D44();
  v68 = v24;
  v69 = v50;
  v67[23] = swift_getOpaqueTypeConformance2();
  v67[24] = OpaqueTypeConformance2;
  v67[22] = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  sub_1E59B66BC(sub_1E58B3BDC, v67, sub_1E58B3C4C, v66, v56, v25, v33, v34);
  v67[19] = v33;
  v67[20] = v34;
  v67[21] = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  v35 = *(v27 + 16);
  v35(v32, v29, v26);
  v36 = *(v27 + 8);
  v36(v29, v26);
  v35(v43, v32, v26);
  return (v36)(v32, v26);
}

uint64_t sub_1E58AC398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, ValueMetadata *a11, ValueMetadata *a12, char *a13, uint64_t a14, uint64_t a15, char *a16, char *a17, char *a18)
{
  v105 = a7;
  v106 = a8;
  v96 = a6;
  v97 = a1;
  v120 = a5;
  v113 = a4;
  v111 = a3;
  v94 = a9;
  v119 = a18;
  v114 = a17;
  v118 = a16;
  v95 = a15;
  v112 = a14;
  v117 = a13;
  v110 = a12;
  v104 = a11;
  v115 = a10;
  v19 = sub_1E5A2A374();
  v20 = sub_1E5A2A314();
  v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB500, &qword_1E5A30400);
  v108 = sub_1E5A2A384();
  v92 = sub_1E58B3B18(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v91 = sub_1E58B3B18(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v90 = sub_1E58B1C48();
  v89 = sub_1E58B1C9C();
  v93 = sub_1E58B1CF0();
  v107 = v19;
  v116 = a2;
  v109 = v20;
  v21 = sub_1E5A2A1A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = sub_1E58B3B18(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v99 = v21;
  WitnessTable = swift_getWitnessTable();
  sub_1E5A2A354();
  sub_1E5A2A334();
  v88 = sub_1E5A2AA84();
  v22 = MEMORY[0x1E6981E70];
  v86 = sub_1E5A2AA84();
  v156 = a2;
  v157 = v111;
  v158 = v22;
  v159 = v22;
  v160 = v20;
  v161 = v103;
  v162 = v113;
  v163 = &type metadata for WorkoutPlanItemContext;
  v164 = v120;
  v165 = v108;
  v166 = v22;
  v167 = v105;
  v168 = v106;
  v169 = a10;
  v170 = v99;
  v23 = MEMORY[0x1E6981E60];
  v171 = MEMORY[0x1E6981E60];
  v172 = a12;
  v173 = MEMORY[0x1E6981E60];
  v174 = MEMORY[0x1E6981E60];
  v175 = OpaqueTypeConformance2;
  v176 = a13;
  v177 = v102;
  v178 = MEMORY[0x1E6981E60];
  v179 = a16;
  v180 = a17;
  v181 = WitnessTable;
  sub_1E5A2A3A4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v24 = sub_1E5A2AA84();
  v152 = swift_getWitnessTable();
  v153 = swift_getWitnessTable();
  v150 = v23;
  v151 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v148 = swift_getWitnessTable();
  v149 = v23;
  v146 = v25;
  v147 = swift_getWitnessTable();
  v144 = swift_getWitnessTable();
  v145 = v23;
  WitnessTable = swift_getWitnessTable();
  v101 = sub_1E5A2A4B4();
  v154 = v101;
  v103 = swift_getWitnessTable();
  v155 = v103;
  swift_getOpaqueTypeMetadata2();
  v87 = v24;
  v26 = sub_1E5A2AA84();
  v88 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v86 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v83 - v29;
  v154 = v107;
  v30 = v116;
  v155 = v116;
  v156 = v109;
  v157 = &type metadata for WorkoutPlanItemContext;
  v31 = v120;
  v158 = v120;
  v33 = v104;
  v32 = v105;
  v159 = v105;
  v160 = v108;
  v161 = v115;
  v162 = v92;
  v163 = v104;
  v164 = v91;
  v165 = v90;
  v166 = v89;
  v167 = v93;
  v34 = v112;
  v168 = v112;
  v169 = a16;
  v170 = v102;
  v171 = v119;
  v35 = sub_1E5A2A244();
  v108 = v35;
  v36 = sub_1E5A2BD84();
  v89 = *(v36 - 8);
  v90 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v91 = &v83 - v37;
  v109 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v92 = &v83 - v39;
  v107 = v26;
  v102 = sub_1E5A2BD84();
  v99 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v93 = &v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  OpaqueTypeConformance2 = &v83 - v42;
  v154 = v30;
  v43 = v111;
  v155 = v111;
  v44 = v113;
  v156 = v113;
  v157 = v31;
  v45 = v96;
  v158 = v96;
  v159 = v32;
  v46 = v106;
  v160 = v106;
  v47 = v115;
  v161 = v115;
  v162 = v33;
  v48 = v110;
  v163 = v110;
  v164 = v117;
  v165 = v34;
  v49 = v95;
  v166 = v95;
  v167 = v118;
  v168 = v114;
  v169 = v119;
  v84 = type metadata accessor for TVArchivedWorkoutPlansView(0, &v154);
  sub_1E58A9C3C(v84);
  v121 = v116;
  v122 = v43;
  v123 = v44;
  v124 = v120;
  v125 = v45;
  v126 = v32;
  v50 = v47;
  v51 = v91;
  v127 = v46;
  v128 = v50;
  v129 = v104;
  v130 = v48;
  v131 = v117;
  v132 = v112;
  v133 = v49;
  v134 = v118;
  v135 = v114;
  v136 = v119;
  swift_getKeyPath();
  sub_1E5A2B934();

  v52 = v109;
  if ((*(v109 + 48))(v51, 1) == 1)
  {
    (*(v89 + 8))(v51, v90);
    v53 = v93;
    (*(v88 + 56))(v93, 1, 1, v107);
    v54 = v101;
    v154 = v101;
    v155 = v103;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = WitnessTable;
    v142 = v55;
    v143 = WitnessTable;
    swift_getWitnessTable();
    v57 = OpaqueTypeConformance2;
    sub_1E598D20C(v53, OpaqueTypeConformance2);
    v58 = v99;
    v59 = *(v99 + 8);
    v60 = v102;
    v59(v53, v102);
  }

  else
  {
    v61 = *(v52 + 32);
    v62 = v92;
    v63 = v61();
    MEMORY[0x1EEE9AC00](v63);
    v64 = v111;
    *(&v83 - 18) = v116;
    *(&v83 - 17) = v64;
    v65 = v120;
    *(&v83 - 16) = v113;
    *(&v83 - 15) = v65;
    v67 = v105;
    v66 = v106;
    *(&v83 - 14) = v96;
    *(&v83 - 13) = v67;
    *(&v83 - 12) = v66;
    v68 = v104;
    *(&v83 - 11) = v115;
    *(&v83 - 10) = v68;
    v69 = v117;
    *(&v83 - 9) = v110;
    *(&v83 - 8) = v69;
    v70 = v95;
    *(&v83 - 7) = v112;
    *(&v83 - 6) = v70;
    v71 = v114;
    *(&v83 - 5) = v118;
    *(&v83 - 4) = v71;
    v72 = v97;
    *(&v83 - 3) = v119;
    *(&v83 - 2) = v72;
    *(&v83 - 1) = v62;
    v73 = v86;
    v56 = WitnessTable;
    sub_1E58AA468(sub_1E58B3CAC, (&v83 - 20), v84, v87, WitnessTable, v86);
    v154 = v101;
    v155 = v103;
    v137 = swift_getOpaqueTypeConformance2();
    v138 = v56;
    v74 = v107;
    v120 = swift_getWitnessTable();
    v75 = v88;
    v76 = *(v88 + 16);
    v77 = v85;
    v76(v85, v73, v74);
    v78 = *(v75 + 8);
    v78(v73, v74);
    v76(v73, v77, v74);
    v79 = v77;
    v54 = v101;
    v78(v79, v74);
    v80 = v93;
    (*(v75 + 32))(v93, v73, v74);
    (*(v75 + 56))(v80, 0, 1, v74);
    v57 = OpaqueTypeConformance2;
    sub_1E598D20C(v80, OpaqueTypeConformance2);
    v58 = v99;
    v59 = *(v99 + 8);
    v81 = v80;
    v60 = v102;
    v59(v81, v102);
    (*(v109 + 8))(v92, v108);
  }

  v154 = v54;
  v155 = v103;
  v140 = swift_getOpaqueTypeConformance2();
  v141 = v56;
  v139 = swift_getWitnessTable();
  swift_getWitnessTable();
  (*(v58 + 16))(v94, v57, v60);
  return (v59)(v57, v60);
}

uint64_t sub_1E58AD1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, ValueMetadata *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, ValueMetadata *a12, ValueMetadata *a13, uint64_t a14, uint64_t a15, uint64_t a16, ValueMetadata *a17, uint64_t a18, ValueMetadata *a19)
{
  v448 = a8;
  v438 = a7;
  v447 = a6;
  v446 = a5;
  v449 = a4;
  v380 = a2;
  v432 = a1;
  v415 = a9;
  v439 = a19;
  v441 = a18;
  v440 = a17;
  v434 = a16;
  v435 = a15;
  v443 = a14;
  v442 = a13;
  v436 = a12;
  v445 = a11;
  v444 = a10;
  v433 = sub_1E5A2A374();
  v20 = sub_1E5A2A314();
  v427 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB500, &qword_1E5A30400);
  v430 = sub_1E5A2A384();
  v21 = sub_1E58B3B18(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v22 = sub_1E58B3B18(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v23 = sub_1E58B1C48();
  v377 = v22;
  v378 = v21;
  v375 = sub_1E58B1C9C();
  v376 = v23;
  v374 = sub_1E58B1CF0();
  v24 = sub_1E5A2A1A4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v429 = sub_1E58B3B18(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v426 = v24;
  WitnessTable = swift_getWitnessTable();
  v516 = v433;
  v517 = MEMORY[0x1E6981E70];
  v518 = a3;
  v519 = v449;
  v520 = MEMORY[0x1E6981E70];
  v521 = MEMORY[0x1E6981E70];
  v25 = v20;
  v420 = v20;
  v522 = v20;
  v26 = v427;
  v523 = v427;
  v27 = v446;
  v524 = v446;
  v525 = &type metadata for WorkoutPlanItemContext;
  v526 = v447;
  v28 = v430;
  v527 = v430;
  v528 = MEMORY[0x1E6981E70];
  v529 = v448;
  v530 = a10;
  v531 = a11;
  v532 = v24;
  v533 = MEMORY[0x1E6981E60];
  v534 = a13;
  v535 = MEMORY[0x1E6981E60];
  v536 = MEMORY[0x1E6981E60];
  v537 = OpaqueTypeConformance2;
  v538 = a14;
  v539 = v429;
  v540 = MEMORY[0x1E6981E60];
  v29 = MEMORY[0x1E6981E60];
  v541 = a17;
  v542 = a18;
  v543 = WitnessTable;
  v30 = sub_1E5A2A3A4();
  v423 = sub_1E5A2AA84();
  v386 = *(v423 - 8);
  MEMORY[0x1EEE9AC00](v423);
  v385 = (&v360 - v31);
  v422 = v30;
  v399 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v383 = (&v360 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v382 = &v360 - v35;
  v516 = v433;
  v517 = MEMORY[0x1E6981E70];
  v518 = a3;
  v36 = a3;
  v437 = a3;
  v519 = v449;
  v520 = MEMORY[0x1E6981E70];
  v521 = MEMORY[0x1E6981E70];
  v522 = v25;
  v523 = v26;
  v524 = v27;
  v525 = &type metadata for WorkoutPlanItemContext;
  v37 = v447;
  v526 = v447;
  v527 = v28;
  v528 = MEMORY[0x1E6981E70];
  v38 = v448;
  v529 = v448;
  v39 = v444;
  v530 = v444;
  v40 = v445;
  v531 = v445;
  v532 = v426;
  v41 = v29;
  v533 = v29;
  v42 = v442;
  v534 = v442;
  v535 = v29;
  v536 = v29;
  v537 = OpaqueTypeConformance2;
  v43 = v443;
  v538 = v443;
  v539 = v429;
  v540 = v41;
  v541 = a17;
  v44 = v441;
  v542 = v441;
  v543 = WitnessTable;
  v431 = sub_1E5A2A334();
  v368 = *(v431 - 8);
  MEMORY[0x1EEE9AC00](v431);
  v367 = &v360 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v366 = &v360 - v47;
  v48 = sub_1E5A29E74();
  v393 = *(v48 - 8);
  v394 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v395 = &v360 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v516 = v36;
  v517 = v449;
  v50 = v446;
  v518 = v446;
  v519 = v37;
  v520 = v438;
  v521 = v38;
  v51 = v39;
  v522 = v39;
  v523 = v40;
  v524 = v436;
  v525 = v42;
  v526 = v43;
  v527 = v435;
  v528 = v434;
  v52 = v440;
  v529 = v440;
  v530 = v44;
  v531 = v439;
  v428 = type metadata accessor for TVArchivedWorkoutPlansView(0, &v516);
  v392 = *(v428 - 8);
  MEMORY[0x1EEE9AC00](v428);
  v403 = v53;
  v404 = &v360 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v402 = &v360 - v55;
  v384 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v410 = &v360 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E5A2A1F4();
  MEMORY[0x1EEE9AC00](v58 - 8);
  v409 = &v360 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1E5A2A2F4();
  v360 = *(v60 - 8);
  v361 = v60;
  MEMORY[0x1EEE9AC00](v60);
  v408 = &v360 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v44;
  v398 = type metadata accessor for ArchivedWorkoutPlansLayout(0, v51, v44, v63);
  v400 = *(v398 - 8);
  MEMORY[0x1EEE9AC00](v398);
  v362 = &v360 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v381 = &v360 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v379 = &v360 - v68;
  v69 = v448;
  v70 = sub_1E5A2BD84();
  MEMORY[0x1EEE9AC00](v70 - 8);
  v407 = &v360 - v71;
  v72 = sub_1E5A2A164();
  MEMORY[0x1EEE9AC00](v72 - 8);
  v406 = &v360 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB588, &qword_1E5A2CAF0);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v405 = &v360 - v75;
  v516 = v433;
  v517 = MEMORY[0x1E6981E70];
  v518 = v437;
  v519 = v449;
  v520 = MEMORY[0x1E6981E70];
  v521 = MEMORY[0x1E6981E70];
  v522 = v420;
  v523 = v427;
  v524 = v50;
  v525 = &type metadata for WorkoutPlanItemContext;
  v526 = v37;
  v527 = v430;
  v528 = MEMORY[0x1E6981E70];
  v529 = v69;
  v530 = v51;
  v76 = v445;
  v531 = v445;
  v532 = v426;
  v533 = MEMORY[0x1E6981E60];
  v534 = v42;
  v535 = MEMORY[0x1E6981E60];
  v536 = MEMORY[0x1E6981E60];
  v537 = OpaqueTypeConformance2;
  v538 = v43;
  v539 = v429;
  v540 = MEMORY[0x1E6981E60];
  v541 = v52;
  v542 = v62;
  v543 = WitnessTable;
  v77 = sub_1E5A2A354();
  v365 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v364 = &v360 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v363 = &v360 - v80;
  v81 = v438;
  v82 = v434;
  v83 = sub_1E5A2A1D4();
  v370 = *(v83 - 8);
  v371 = v83;
  MEMORY[0x1EEE9AC00](v83);
  v369 = &v360 - v84;
  v419 = v77;
  v85 = sub_1E5A2AA84();
  v372 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v390 = (&v360 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v87);
  v389 = &v360 - v88;
  v89 = sub_1E5A2A274();
  v396 = *(v89 - 8);
  v397 = v89;
  MEMORY[0x1EEE9AC00](v89);
  v373 = &v360 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91);
  v387 = &v360 - v92;
  v421 = v85;
  v93 = sub_1E5A2AA84();
  v391 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v388 = (&v360 - v94);
  v417 = v95;
  v96 = sub_1E5A2AA84();
  v412 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v411 = &v360 - v97;
  v516 = v81;
  v517 = v76;
  v518 = v82;
  v98 = v439;
  v519 = v439;
  v99 = sub_1E5A2A184();
  MEMORY[0x1EEE9AC00](v99);
  v101 = (&v360 - v100);
  v102 = sub_1E5A2AA84();
  v413 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v416 = &v360 - v103;
  sub_1E58A9C3C(v428);
  v450 = v437;
  v451 = v449;
  v452 = v446;
  v453 = v447;
  v454 = v81;
  v455 = v448;
  v456 = v444;
  v457 = v76;
  v458 = v436;
  v459 = v442;
  v460 = v443;
  v461 = v435;
  v462 = v82;
  v463 = v440;
  v464 = v441;
  v465 = v98;
  swift_getKeyPath();
  sub_1E5A2B944();

  v401 = v101;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v418 = v96;
  v414 = v102;
  if (EnumCaseMultiPayload <= 1)
  {
    v178 = MEMORY[0x1E6981E60];
    v179 = v423;
    if (!EnumCaseMultiPayload)
    {
      v180 = swift_getWitnessTable();
      v181 = swift_getWitnessTable();
      v472 = v180;
      v473 = v181;
      v182 = v421;
      v183 = swift_getWitnessTable();
      v184 = v388;
      v166 = v178;
      sub_1E595EBC0(v183, MEMORY[0x1E6981E70], v182, v178, v183);
      v470 = v178;
      v471 = v183;
      v185 = v417;
      v186 = swift_getWitnessTable();
      v468 = swift_getWitnessTable();
      v469 = v178;
      v187 = swift_getWitnessTable();
      v188 = v411;
      sub_1E595EBC0(v184, v185, v179, v186, v187);
      (v391[1])(v184, v185);
      v466 = v186;
      v467 = v187;
      v189 = v418;
      v190 = swift_getWitnessTable();
      v191 = v416;
      sub_1E595EBC0(v188, v189, MEMORY[0x1E6981E70], v190, v178);
      (*(v412 + 8))(v188, v189);
      goto LABEL_13;
    }

    v268 = v422;
    v269 = swift_getWitnessTable();
    v270 = v385;
    v166 = v178;
    sub_1E595ECB8(v269, v268, MEMORY[0x1E6981E70], v269, v178);
    v271 = swift_getWitnessTable();
    v272 = swift_getWitnessTable();
    v496 = v271;
    v497 = v272;
    v273 = swift_getWitnessTable();
    v494 = v178;
    v495 = v273;
    v274 = v417;
    v275 = swift_getWitnessTable();
    v492 = v269;
    v493 = v178;
    v276 = swift_getWitnessTable();
    v277 = v411;
    sub_1E595ECB8(v270, v274, v179, v275, v276);
    (*(v386 + 8))(v270, v179);
    v490 = v275;
    v491 = v276;
    v278 = v418;
    v279 = swift_getWitnessTable();
    v191 = v416;
    sub_1E595EBC0(v277, v278, MEMORY[0x1E6981E70], v279, v178);
    (*(v412 + 8))(v277, v278);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v516 = v433;
    v517 = v437;
    v518 = v420;
    v519 = &type metadata for WorkoutPlanItemContext;
    v520 = v447;
    v521 = v448;
    v522 = v430;
    v523 = v445;
    v524 = v378;
    v525 = v436;
    v526 = v377;
    v527 = v376;
    v528 = v375;
    v529 = v374;
    v530 = v435;
    v531 = v440;
    v532 = v429;
    v533 = v439;
    sub_1E5A2A244();
    sub_1E5A2A224();
    v397 = sub_1E5A2A204();
    sub_1E5A2A214();
    sub_1E5A2A234();
    sub_1E5A2A2B4();
    v192 = sub_1E58A9C3C(v428);
    v396 = &v360;
    MEMORY[0x1EEE9AC00](v192);
    swift_getKeyPath();
    sub_1E5A2B944();

    v193 = sub_1E58A9C3C(v428);
    v396 = &v360;
    MEMORY[0x1EEE9AC00](v193);
    v194 = v444;
    swift_getKeyPath();
    v195 = v379;
    sub_1E5A2B944();

    v196 = v398;
    v197 = *(v398 + 36);
    v396 = *(v400 + 8);
    LODWORD(v400) = v195[v197];
    (v396)(v195, v398);
    v198 = v428;
    v199 = sub_1E58A9C3C(v428);
    MEMORY[0x1EEE9AC00](v199);
    swift_getKeyPath();
    v200 = v381;
    sub_1E5A2B944();

    v201 = v194;
    (*(v384 + 2))(v410, &v200[*(v196 + 40)], v194);
    (v396)(v200, v196);
    v398 = sub_1E58A9D1C(v198);
    v396 = v202;
    v203 = swift_allocObject();
    v391 = v203;
    v204 = v437;
    v205 = v449;
    v203[2] = v437;
    v203[3] = v205;
    v206 = v447;
    v203[4] = v446;
    v203[5] = v206;
    v207 = v438;
    v208 = v448;
    v203[6] = v438;
    v203[7] = v208;
    v209 = v445;
    v203[8] = v201;
    v203[9] = v209;
    v210 = v436;
    v211 = v442;
    v203[10] = v436;
    v203[11] = v211;
    v212 = v435;
    v203[12] = v443;
    v203[13] = v212;
    v213 = v440;
    v203[14] = v434;
    v203[15] = v213;
    v214 = v439;
    v203[16] = v441;
    v203[17] = v214;
    v215 = swift_allocObject();
    v216 = v449;
    v215[2] = v204;
    v215[3] = v216;
    v215[4] = v446;
    v215[5] = v206;
    v215[6] = v207;
    v215[7] = v208;
    v215[8] = v444;
    v215[9] = v209;
    v217 = v442;
    v215[10] = v210;
    v215[11] = v217;
    v218 = v435;
    v215[12] = v443;
    v215[13] = v218;
    v215[14] = v434;
    v215[15] = v213;
    v215[16] = v441;
    v215[17] = v214;
    v219 = v428;
    v220 = v432;
    v221 = sub_1E58A9E74(v428);
    v389 = v222;
    v390 = v221;
    v223 = v392;
    v388 = *(v392 + 16);
    v388(v402, v220, v219);
    v224 = (*(v223 + 80) + 144) & ~*(v223 + 80);
    v225 = swift_allocObject();
    v226 = v449;
    v225[2] = v437;
    v225[3] = v226;
    v227 = v447;
    v225[4] = v446;
    v225[5] = v227;
    v228 = v448;
    v225[6] = v438;
    v225[7] = v228;
    v229 = v445;
    v225[8] = v444;
    v225[9] = v229;
    v230 = v442;
    v225[10] = v436;
    v225[11] = v230;
    v231 = v435;
    v225[12] = v443;
    v225[13] = v231;
    v232 = v440;
    v225[14] = v434;
    v225[15] = v232;
    v233 = v439;
    v225[16] = v441;
    v225[17] = v233;
    v392 = *(v223 + 32);
    v387 = v224;
    (v392)(v225 + v224, v402, v219);
    v388(v404, v432, v219);
    v234 = swift_allocObject();
    *(v234 + 16) = v437;
    *(v234 + 24) = v226;
    v235 = v447;
    *(v234 + 32) = v446;
    *(v234 + 40) = v235;
    v236 = v448;
    *(v234 + 48) = v438;
    *(v234 + 56) = v236;
    v237 = v445;
    *(v234 + 64) = v444;
    *(v234 + 72) = v237;
    v238 = v442;
    *(v234 + 80) = v436;
    *(v234 + 88) = v238;
    v239 = v435;
    *(v234 + 96) = v443;
    *(v234 + 104) = v239;
    v240 = v440;
    *(v234 + 112) = v434;
    *(v234 + 120) = v240;
    v241 = v439;
    *(v234 + 128) = v441;
    *(v234 + 136) = v241;
    v242 = v428;
    (v392)(&v387[v234], v404, v428);
    (*(v393 + 16))(v395, v432 + *(v242 + 156), v394);
    v166 = MEMORY[0x1E6981E60];
    v243 = v383;
    sub_1E5A2A394();
    v244 = v422;
    v245 = swift_getWitnessTable();
    v246 = v399;
    v247 = v399[2];
    v248 = v382;
    v247(v382, v243, v244);
    v449 = v246[1];
    v399 = v246 + 1;
    (v449)(v243, v244);
    v247(v243, v248, v244);
    v249 = v385;
    sub_1E595EBC0(v243, v244, MEMORY[0x1E6981E70], v245, v166);
    v250 = swift_getWitnessTable();
    v251 = swift_getWitnessTable();
    v488 = v250;
    v489 = v251;
    v252 = swift_getWitnessTable();
    v486 = v166;
    v487 = v252;
    v253 = v417;
    v254 = swift_getWitnessTable();
    v484 = v245;
    v485 = v166;
    v255 = v423;
    v256 = swift_getWitnessTable();
    v257 = v411;
    sub_1E595ECB8(v249, v253, v255, v254, v256);
    (*(v386 + 8))(v249, v255);
    v482 = v254;
    v258 = v418;
    v483 = v256;
    v259 = swift_getWitnessTable();
    v191 = v416;
    sub_1E595EBC0(v257, v258, MEMORY[0x1E6981E70], v259, v166);
    (*(v412 + 8))(v257, v258);
    v260 = v449;
    (v449)(v383, v244);
    (v260)(v382, v244);
LABEL_11:
    v267 = v438;
    goto LABEL_12;
  }

  v105 = v418;
  if (EnumCaseMultiPayload != 3)
  {
    v261 = swift_getWitnessTable();
    v262 = swift_getWitnessTable();
    v514 = v261;
    v515 = v262;
    v263 = swift_getWitnessTable();
    v166 = MEMORY[0x1E6981E60];
    v512 = MEMORY[0x1E6981E60];
    v513 = v263;
    v264 = swift_getWitnessTable();
    v510 = swift_getWitnessTable();
    v511 = v166;
    v265 = swift_getWitnessTable();
    v508 = v264;
    v509 = v265;
    v266 = swift_getWitnessTable();
    v191 = v416;
    sub_1E595ECB8(v266, v105, MEMORY[0x1E6981E70], v266, v166);
    v267 = v445;
LABEL_12:
    (*(*(v267 - 8) + 8))(v401, v267);
    goto LABEL_13;
  }

  v106 = v396;
  v107 = v397;
  v108 = v387;
  (v396[4])(v387, v401, v397);
  v109 = v106[2];
  v110 = v373;
  v109(v373, v108, v107);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v370 + 32))(v369, v110, v371);
    v516 = v433;
    v517 = v437;
    v518 = v420;
    v519 = &type metadata for WorkoutPlanItemContext;
    v520 = v447;
    v521 = v448;
    v522 = v430;
    v523 = v445;
    v524 = v378;
    v525 = v436;
    v526 = v377;
    v527 = v376;
    v528 = v375;
    v529 = v374;
    v530 = v435;
    v531 = v440;
    v532 = v429;
    v533 = v439;
    sub_1E5A2A244();
    sub_1E5A2A224();
    v399 = sub_1E5A2A204();
    sub_1E5A2A214();
    sub_1E5A2A234();
    v386 = sub_1E5A2A1C4();
    v111 = v428;
    v112 = sub_1E58A9C3C(v428);
    MEMORY[0x1EEE9AC00](v112);
    swift_getKeyPath();
    v113 = v379;
    sub_1E5A2B944();

    (*(v360 + 16))(v408, v113, v361);
    v114 = *(v400 + 8);
    v400 += 8;
    v401 = v114;
    (v114)(v113, v398);
    v115 = sub_1E58A9C3C(v111);
    v385 = &v360;
    MEMORY[0x1EEE9AC00](v115);
    swift_getKeyPath();
    sub_1E5A2B944();

    v116 = sub_1E58A9C3C(v111);
    v385 = &v360;
    MEMORY[0x1EEE9AC00](v116);
    v117 = v439;
    swift_getKeyPath();
    v118 = v381;
    sub_1E5A2B944();

    LODWORD(v385) = v118[*(v398 + 36)];
    v401(v118);
    v119 = v428;
    v120 = sub_1E58A9C3C(v428);
    MEMORY[0x1EEE9AC00](v120);
    v121 = v444;
    swift_getKeyPath();
    v122 = v362;
    sub_1E5A2B944();

    v123 = v398;
    (*(v384 + 2))(v410, &v122[*(v398 + 40)], v121);
    (v401)(v122, v123);
    v124 = sub_1E58A9D1C(v119);
    v400 = v125;
    v401 = v124;
    v126 = swift_allocObject();
    v398 = v126;
    v127 = v437;
    v128 = v449;
    v126[2] = v437;
    v126[3] = v128;
    v129 = v447;
    v126[4] = v446;
    v126[5] = v129;
    v130 = v448;
    v126[6] = v438;
    v126[7] = v130;
    v131 = v445;
    v126[8] = v121;
    v126[9] = v131;
    v132 = v442;
    v126[10] = v436;
    v126[11] = v132;
    v133 = v443;
    v134 = v435;
    v126[12] = v443;
    v126[13] = v134;
    v135 = v434;
    v136 = v440;
    v126[14] = v434;
    v126[15] = v136;
    v126[16] = v441;
    v126[17] = v117;
    v137 = swift_allocObject();
    v138 = v449;
    v137[2] = v127;
    v137[3] = v138;
    v137[4] = v446;
    v137[5] = v129;
    v137[6] = v438;
    v137[7] = v130;
    v137[8] = v444;
    v137[9] = v131;
    v137[10] = v436;
    v137[11] = v132;
    v137[12] = v133;
    v137[13] = v134;
    v139 = v440;
    v137[14] = v135;
    v137[15] = v139;
    v140 = v439;
    v137[16] = v441;
    v137[17] = v140;
    v141 = v428;
    v142 = v432;
    v143 = sub_1E58A9E74(v428);
    v383 = v144;
    v384 = v143;
    v145 = v392;
    v382 = *(v392 + 16);
    (v382)(v402, v142, v141);
    v146 = (*(v145 + 80) + 144) & ~*(v145 + 80);
    v147 = swift_allocObject();
    v148 = v449;
    v147[2] = v437;
    v147[3] = v148;
    v149 = v447;
    v147[4] = v446;
    v147[5] = v149;
    v150 = v448;
    v147[6] = v438;
    v147[7] = v150;
    v151 = v445;
    v147[8] = v444;
    v147[9] = v151;
    v152 = v442;
    v147[10] = v436;
    v147[11] = v152;
    v153 = v435;
    v147[12] = v443;
    v147[13] = v153;
    v147[14] = v434;
    v147[15] = v139;
    v154 = v441;
    v155 = v439;
    v147[16] = v441;
    v147[17] = v155;
    v392 = *(v145 + 32);
    v381 = v146;
    (v392)(v147 + v146, v402, v141);
    (v382)(v404, v432, v141);
    v156 = swift_allocObject();
    v157 = v449;
    *(v156 + 16) = v437;
    *(v156 + 24) = v157;
    v158 = v447;
    *(v156 + 32) = v446;
    *(v156 + 40) = v158;
    v159 = v448;
    *(v156 + 48) = v438;
    *(v156 + 56) = v159;
    v160 = v445;
    *(v156 + 64) = v444;
    *(v156 + 72) = v160;
    v161 = v442;
    *(v156 + 80) = v436;
    *(v156 + 88) = v161;
    v162 = v435;
    *(v156 + 96) = v443;
    *(v156 + 104) = v162;
    v163 = v440;
    *(v156 + 112) = v434;
    *(v156 + 120) = v163;
    v164 = v439;
    *(v156 + 128) = v154;
    *(v156 + 136) = v164;
    v165 = v428;
    (v392)(&v381[v156], v404, v428);
    (*(v393 + 16))(v395, v432 + *(v165 + 156), v394);
    v166 = MEMORY[0x1E6981E60];
    v167 = v364;
    sub_1E5A2A344();
    v168 = v419;
    v169 = swift_getWitnessTable();
    v170 = v365;
    v171 = *(v365 + 16);
    v172 = v363;
    v171(v363, v167, v168);
    v173 = *(v170 + 8);
    v173(v167, v168);
    v171(v167, v172, v168);
    v174 = v168;
    v175 = v431;
    v176 = swift_getWitnessTable();
    v177 = v389;
    sub_1E595EBC0(v167, v174, v175, v169, v176);
    v173(v167, v174);
    v173(v172, v174);
    (*(v370 + 8))(v369, v371);
  }

  else
  {
    v516 = v433;
    v517 = v437;
    v518 = v420;
    v519 = &type metadata for WorkoutPlanItemContext;
    v520 = v447;
    v521 = v448;
    v522 = v430;
    v523 = v445;
    v524 = v378;
    v525 = v436;
    v526 = v377;
    v527 = v376;
    v528 = v375;
    v529 = v374;
    v530 = v435;
    v531 = v440;
    v532 = v429;
    v533 = v439;
    sub_1E5A2A244();
    sub_1E5A2A224();
    v401 = sub_1E5A2A204();
    sub_1E5A2A214();
    sub_1E5A2A234();
    sub_1E5A2A2B4();
    v288 = sub_1E58A9C3C(v428);
    v399 = &v360;
    MEMORY[0x1EEE9AC00](v288);
    swift_getKeyPath();
    sub_1E5A2B944();

    v289 = sub_1E58A9C3C(v428);
    v399 = &v360;
    MEMORY[0x1EEE9AC00](v289);
    swift_getKeyPath();
    v290 = v379;
    sub_1E5A2B944();

    v291 = v398;
    v292 = *(v398 + 36);
    v399 = *(v400 + 8);
    LODWORD(v400) = v290[v292];
    (v399)(v290, v398);
    v293 = v428;
    v294 = sub_1E58A9C3C(v428);
    MEMORY[0x1EEE9AC00](v294);
    v295 = v447;
    v296 = v444;
    swift_getKeyPath();
    v297 = v381;
    sub_1E5A2B944();

    (*(v384 + 2))(v410, &v297[*(v291 + 40)], v296);
    (v399)(v297, v291);
    v298 = sub_1E58A9D1C(v293);
    v398 = v299;
    v399 = v298;
    v300 = swift_allocObject();
    v386 = v300;
    v301 = v437;
    v302 = v449;
    v300[2] = v437;
    v300[3] = v302;
    v300[4] = v446;
    v300[5] = v295;
    v303 = v448;
    v300[6] = v438;
    v300[7] = v303;
    v304 = v445;
    v300[8] = v296;
    v300[9] = v304;
    v305 = v442;
    v300[10] = v436;
    v300[11] = v305;
    v306 = v443;
    v307 = v435;
    v300[12] = v443;
    v300[13] = v307;
    v308 = v440;
    v300[14] = v434;
    v300[15] = v308;
    v309 = v439;
    v300[16] = v441;
    v300[17] = v309;
    v310 = swift_allocObject();
    v311 = v449;
    v310[2] = v301;
    v310[3] = v311;
    v310[4] = v446;
    v310[5] = v295;
    v310[6] = v438;
    v310[7] = v303;
    v310[8] = v444;
    v310[9] = v304;
    v310[10] = v436;
    v310[11] = v305;
    v312 = v435;
    v310[12] = v306;
    v310[13] = v312;
    v310[14] = v434;
    v310[15] = v308;
    v310[16] = v441;
    v310[17] = v309;
    v313 = v428;
    v314 = v432;
    v315 = sub_1E58A9E74(v428);
    v384 = v316;
    v385 = v315;
    v317 = v392;
    v383 = *(v392 + 16);
    v383(v402, v314, v313);
    v318 = (*(v317 + 80) + 144) & ~*(v317 + 80);
    v319 = swift_allocObject();
    v320 = v449;
    v319[2] = v437;
    v319[3] = v320;
    v319[4] = v446;
    v319[5] = v295;
    v321 = v448;
    v319[6] = v438;
    v319[7] = v321;
    v322 = v445;
    v319[8] = v444;
    v319[9] = v322;
    v323 = v442;
    v319[10] = v436;
    v319[11] = v323;
    v324 = v435;
    v319[12] = v443;
    v319[13] = v324;
    v325 = v440;
    v319[14] = v434;
    v319[15] = v325;
    v326 = v439;
    v319[16] = v441;
    v319[17] = v326;
    v392 = *(v317 + 32);
    v382 = v318;
    (v392)(v319 + v318, v402, v313);
    v383(v404, v432, v313);
    v327 = swift_allocObject();
    v328 = v449;
    *(v327 + 16) = v437;
    *(v327 + 24) = v328;
    v329 = v447;
    *(v327 + 32) = v446;
    *(v327 + 40) = v329;
    *(v327 + 48) = v438;
    *(v327 + 56) = v321;
    v330 = v445;
    *(v327 + 64) = v444;
    *(v327 + 72) = v330;
    v331 = v442;
    *(v327 + 80) = v436;
    *(v327 + 88) = v331;
    v332 = v435;
    *(v327 + 96) = v443;
    *(v327 + 104) = v332;
    v333 = v440;
    *(v327 + 112) = v434;
    *(v327 + 120) = v333;
    v334 = v439;
    *(v327 + 128) = v441;
    *(v327 + 136) = v334;
    (v392)(&v382[v327], v404, v313);
    (*(v393 + 16))(v395, v432 + *(v313 + 156), v394);
    v166 = MEMORY[0x1E6981E60];
    v335 = v367;
    sub_1E5A2A324();
    v336 = v431;
    v337 = swift_getWitnessTable();
    v338 = v368;
    v339 = *(v368 + 16);
    v340 = v366;
    v339(v366, v335, v336);
    v341 = *(v338 + 8);
    v341(v335, v336);
    v339(v335, v340, v336);
    v342 = v419;
    v343 = swift_getWitnessTable();
    v177 = v389;
    sub_1E595ECB8(v335, v342, v336, v343, v337);
    v341(v335, v336);
    v341(v340, v336);
    (v396[1])(v373, v397);
  }

  v344 = swift_getWitnessTable();
  v345 = swift_getWitnessTable();
  v480 = v344;
  v481 = v345;
  v346 = v421;
  v347 = swift_getWitnessTable();
  v348 = v372;
  v349 = v390;
  (*(v372 + 16))(v390, v177, v346);
  v350 = v388;
  sub_1E595ECB8(v349, MEMORY[0x1E6981E70], v346, v166, v347);
  v478 = v166;
  v479 = v347;
  v351 = v417;
  v352 = swift_getWitnessTable();
  v476 = swift_getWitnessTable();
  v477 = v166;
  v353 = v423;
  v354 = swift_getWitnessTable();
  v355 = v411;
  sub_1E595EBC0(v350, v351, v353, v352, v354);
  (v391[1])(v350, v351);
  v474 = v352;
  v475 = v354;
  v356 = v418;
  v357 = swift_getWitnessTable();
  v191 = v416;
  sub_1E595EBC0(v355, v356, MEMORY[0x1E6981E70], v357, v166);
  v358 = v421;
  (*(v412 + 8))(v355, v356);
  v359 = *(v348 + 8);
  v359(v390, v358);
  v359(v389, v358);
  (v396[1])(v387, v397);
LABEL_13:
  v280 = swift_getWitnessTable();
  v281 = swift_getWitnessTable();
  v506 = v280;
  v507 = v281;
  v282 = swift_getWitnessTable();
  v504 = v166;
  v505 = v282;
  v283 = swift_getWitnessTable();
  v502 = swift_getWitnessTable();
  v503 = v166;
  v284 = swift_getWitnessTable();
  v500 = v283;
  v501 = v284;
  v498 = swift_getWitnessTable();
  v499 = v166;
  v285 = v414;
  swift_getWitnessTable();
  v286 = v413;
  (*(v413 + 16))(v415, v191, v285);
  return (*(v286 + 8))(v191, v285);
}

uint64_t sub_1E58B0644(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v26[0] = a8;
  v29 = a5;
  v30 = a7;
  v27 = a4;
  v32 = a2;
  v33 = a1;
  v31 = a17;
  v28 = a15;
  v26[3] = a13;
  v26[2] = a12;
  v26[1] = a9;
  v34 = a3;
  v35 = &type metadata for WorkoutPlanItemContext;
  v36 = a6;
  v37 = a8;
  v38 = a10;
  v39 = a11;
  v40 = sub_1E58B1C48();
  v41 = sub_1E58B1C9C();
  v42 = sub_1E58B1CF0();
  v43 = a14;
  v44 = a16;
  v45 = a18;
  v20 = type metadata accessor for ArchivedWorkoutPlansAction(0, &v34);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (v26 - v22);
  v34 = a3;
  v35 = v27;
  v36 = v29;
  v37 = a6;
  v38 = v30;
  v39 = v26[0];
  v40 = a9;
  v41 = a10;
  v42 = a11;
  v43 = a12;
  v44 = a13;
  v45 = a14;
  v46 = a15;
  v47 = a16;
  v48 = a17;
  v49 = a18;
  v24 = type metadata accessor for TVArchivedWorkoutPlansView(0, &v34);
  sub_1E58A9C3C(v24);
  *v23 = v33;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_1E58B0850(uint64_t *a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v30 = a8;
  v40 = a7;
  v29 = a6;
  v39 = a5;
  v37 = a4;
  v42 = a2;
  v33 = a1;
  v41 = a17;
  v32 = a18;
  v38 = a15;
  v36 = a13;
  v35 = a12;
  v34 = a9;
  v31 = a10;
  v43 = a3;
  v44 = &type metadata for WorkoutPlanItemContext;
  v45 = a6;
  v46 = a8;
  v47 = a10;
  v48 = a11;
  v49 = sub_1E58B1C48();
  v50 = sub_1E58B1C9C();
  v51 = sub_1E58B1CF0();
  v52 = a14;
  v53 = a16;
  v54 = a18;
  v19 = type metadata accessor for ArchivedWorkoutPlansAction(0, &v43);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - v21;
  v23 = *v33;
  v24 = v33[1];
  v25 = *(v33 + 16);
  v43 = a3;
  v44 = v37;
  v45 = v39;
  v46 = v29;
  v47 = v40;
  v48 = v30;
  v49 = a9;
  v50 = a10;
  v51 = a11;
  v52 = a12;
  v53 = a13;
  v54 = a14;
  v55 = a15;
  v56 = a16;
  v57 = a17;
  v58 = a18;
  v26 = type metadata accessor for TVArchivedWorkoutPlansView(0, &v43);
  sub_1E58A9C3C(v26);
  *v22 = v23;
  *(v22 + 1) = v24;
  v22[16] = v25;
  swift_storeEnumTagMultiPayload();
  sub_1E58B413C(v23, v24);
  sub_1E5A2B954();

  return (*(v20 + 8))(v22, v19);
}

void *sub_1E58B0AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  v74 = a8;
  v79 = a7;
  v72 = a6;
  v70 = a1;
  v64 = a9;
  v76 = a17;
  v78 = a16;
  v75 = a14;
  v73 = a12;
  v21 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v77 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v71 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v69 = qword_1EE2D33E0;
  *&v80 = a2;
  *(&v80 + 1) = a3;
  *&v81 = a4;
  *(&v81 + 1) = a5;
  *&v82 = v72;
  *(&v82 + 1) = v79;
  *&v83 = v74;
  *(&v83 + 1) = a10;
  v68 = a10;
  *&v84 = a11;
  v25 = v73;
  *(&v84 + 1) = v73;
  *&v85 = a13;
  v67 = a13;
  v65 = a3;
  v26 = v75;
  *(&v85 + 1) = v75;
  v86 = a15;
  v87 = v78;
  v27 = v72;
  v66 = a15;
  v28 = v76;
  v88 = v76;
  v29 = type metadata accessor for TVArchivedWorkoutPlansView(0, &v80);
  v30 = sub_1E58A9C3C(v29);
  MEMORY[0x1EEE9AC00](v30);
  v31 = v65;
  *(&v63 - 16) = a2;
  *(&v63 - 15) = v31;
  *(&v63 - 14) = a4;
  *(&v63 - 13) = a5;
  v32 = v79;
  *(&v63 - 12) = v27;
  *(&v63 - 11) = v32;
  v33 = v68;
  *(&v63 - 10) = v34;
  *(&v63 - 9) = v33;
  *(&v63 - 8) = a11;
  *(&v63 - 7) = v25;
  v58 = v67;
  v59 = v26;
  v60 = v66;
  v61 = v78;
  v62 = v28;
  swift_getKeyPath();
  sub_1E5A2B944();

  v35 = sub_1E5A2AF64();
  v37 = v36;
  v39 = v38;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    sub_1E5A2AF34();
    v41 = sub_1E5A2AFA4();
    v43 = v42;
    v45 = v44;

    sub_1E58B3C9C(v35, v37, v39 & 1);

    LODWORD(v80) = sub_1E5A2ABA4();
    v46 = sub_1E5A2AF84();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_1E58B3C9C(v41, v43, v45 & 1);

    v61 = sub_1E5A2B7F4();
    v62 = v53;
    BYTE8(v60) = 1;
    *&v60 = 0;
    LOBYTE(v59) = 1;
    v58 = 0;
    result = sub_1E5A2A764();
    v89 = v50 & 1;
    v54 = v64;
    *v64 = v46;
    v54[1] = v48;
    *(v54 + 16) = v50 & 1;
    v54[3] = v52;
    v55 = v85;
    *(v54 + 6) = v84;
    *(v54 + 7) = v55;
    *(v54 + 8) = v86;
    v56 = v81;
    *(v54 + 2) = v80;
    *(v54 + 3) = v56;
    v57 = v83;
    *(v54 + 4) = v82;
    *(v54 + 5) = v57;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TVArchivedWorkoutPlansView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v87 = *(a1 - 1);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v86 = v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84[4] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  v4 = sub_1E5A2A374();
  v102 = v4;
  v5 = a1[2];
  v104 = a1[3];
  v91 = sub_1E5A2A314();
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB500, &qword_1E5A30400);
  v6 = a1[5];
  v111 = a1[4];
  v113 = v6;
  v95 = sub_1E5A2A384();
  v7 = a1[7];
  v112 = a1[8];
  v109 = a1[9];
  v8 = v109;
  v110 = v7;
  v108 = sub_1E58B3B18(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v100 = a1[10];
  v9 = v100;
  v10 = sub_1E58B3B18(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v11 = sub_1E58B1C48();
  v12 = sub_1E58B1C9C();
  v13 = sub_1E58B1CF0();
  v99 = a1[13];
  v101 = a1[17];
  v154 = v4;
  v155 = v5;
  v14 = v91;
  v156 = v91;
  v157 = &type metadata for WorkoutPlanItemContext;
  v158 = v6;
  v159 = v8;
  v160 = v108;
  v161 = v9;
  v162 = v10;
  v163 = v11;
  v164 = v12;
  v165 = v13;
  v166 = v99;
  v167 = v101;
  v15 = sub_1E5A2A1A4();
  v108 = a1[11];
  v154 = MEMORY[0x1E697E108];
  v155 = MEMORY[0x1E697E100];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = a1[12];
  v103 = sub_1E58B3B18(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v98 = a1;
  v16 = a1[16];
  v105 = a1[15];
  v106 = v16;
  v17 = v15;
  v92 = v15;
  WitnessTable = swift_getWitnessTable();
  v154 = v102;
  v155 = MEMORY[0x1E6981E70];
  v156 = v5;
  v18 = v104;
  v157 = v104;
  v158 = MEMORY[0x1E6981E70];
  v159 = MEMORY[0x1E6981E70];
  v19 = v14;
  v160 = v14;
  v20 = v95;
  v21 = v96;
  v161 = v96;
  v23 = v111;
  v22 = v112;
  v162 = v111;
  v163 = &type metadata for WorkoutPlanItemContext;
  v24 = v113;
  v164 = v113;
  v165 = v95;
  v166 = MEMORY[0x1E6981E70];
  v167 = v110;
  v168 = v112;
  v169 = v109;
  v170 = v17;
  v171 = MEMORY[0x1E6981E60];
  v172 = v108;
  v173 = MEMORY[0x1E6981E60];
  v174 = MEMORY[0x1E6981E60];
  v25 = OpaqueTypeConformance2;
  v175 = OpaqueTypeConformance2;
  v176 = v107;
  v177 = v103;
  v178 = MEMORY[0x1E6981E60];
  v179 = v105;
  v180 = v106;
  v181 = WitnessTable;
  v94 = sub_1E5A2A354();
  v154 = v102;
  v155 = MEMORY[0x1E6981E70];
  v156 = v5;
  v97 = v5;
  v157 = v18;
  v158 = MEMORY[0x1E6981E70];
  v159 = MEMORY[0x1E6981E70];
  v160 = v19;
  v161 = v21;
  v162 = v23;
  v163 = &type metadata for WorkoutPlanItemContext;
  v164 = v24;
  v165 = v20;
  v166 = MEMORY[0x1E6981E70];
  v26 = MEMORY[0x1E6981E70];
  v27 = v110;
  v167 = v110;
  v168 = v22;
  v29 = v108;
  v28 = v109;
  v169 = v109;
  v170 = v92;
  v171 = MEMORY[0x1E6981E60];
  v172 = v108;
  v173 = MEMORY[0x1E6981E60];
  v174 = MEMORY[0x1E6981E60];
  v175 = v25;
  v31 = v106;
  v30 = v107;
  v176 = v107;
  v177 = v103;
  v178 = MEMORY[0x1E6981E60];
  v32 = v105;
  v179 = v105;
  v180 = v106;
  v181 = WitnessTable;
  v84[2] = sub_1E5A2A334();
  v84[3] = sub_1E5A2AA84();
  v84[1] = sub_1E5A2AA84();
  v154 = v102;
  v155 = v26;
  v156 = v5;
  v157 = v18;
  v158 = v26;
  v159 = v26;
  v160 = v91;
  v161 = v96;
  v162 = v111;
  v163 = &type metadata for WorkoutPlanItemContext;
  v164 = v113;
  v165 = v95;
  v166 = v26;
  v167 = v27;
  v168 = v112;
  v169 = v28;
  v170 = v92;
  v171 = MEMORY[0x1E6981E60];
  v172 = v29;
  v173 = MEMORY[0x1E6981E60];
  v174 = MEMORY[0x1E6981E60];
  v175 = OpaqueTypeConformance2;
  v176 = v30;
  v177 = v103;
  v178 = MEMORY[0x1E6981E60];
  v33 = MEMORY[0x1E6981E60];
  v179 = v32;
  v180 = v31;
  v181 = WitnessTable;
  sub_1E5A2A3A4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v152 = v34;
  v153 = v35;
  v36 = MEMORY[0x1E697F968];
  v37 = swift_getWitnessTable();
  v150 = v33;
  v151 = v37;
  v38 = swift_getWitnessTable();
  v148 = swift_getWitnessTable();
  v149 = v33;
  v39 = swift_getWitnessTable();
  v146 = v38;
  v147 = v39;
  v144 = swift_getWitnessTable();
  v145 = v33;
  v103 = v36;
  v40 = swift_getWitnessTable();
  v41 = sub_1E5A2A4B4();
  v42 = swift_getWitnessTable();
  v154 = v41;
  v155 = v42;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E5A2BD84();
  sub_1E5A2B734();
  v43 = sub_1E58B1D44();
  v154 = v41;
  v155 = v42;
  v142 = swift_getOpaqueTypeConformance2();
  v143 = v40;
  v141 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v138 = v43;
  v139 = v44;
  v140 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  v45 = sub_1E5A2B604();
  v46 = swift_getWitnessTable();
  v154 = v45;
  v155 = v46;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v154 = v45;
  v155 = v46;
  v48 = swift_getOpaqueTypeConformance2();
  v154 = OpaqueTypeMetadata2;
  v155 = v48;
  v49 = v48;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E5A2A0C4();
  sub_1E5A2AA84();
  v50 = sub_1E5A2B494();
  v102 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  WitnessTable = v84 - v51;
  v52 = sub_1E5A2A6C4();
  v94 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v95 = v84 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v96 = v84 - v55;
  v114 = v97;
  v115 = v104;
  v116 = v111;
  v117 = v113;
  v92 = v98[6];
  v118 = v92;
  v119 = v110;
  v120 = v112;
  v121 = v109;
  v122 = v100;
  v123 = v108;
  v124 = v107;
  v91 = v98[14];
  v125 = v99;
  v126 = v91;
  v127 = v105;
  v128 = v106;
  v56 = v85;
  v129 = v101;
  v130 = v85;
  v154 = OpaqueTypeMetadata2;
  v155 = v49;
  v57 = swift_getOpaqueTypeConformance2();
  v136 = MEMORY[0x1E6981E60];
  v137 = v57;
  v58 = swift_getWitnessTable();
  v59 = sub_1E58B3B18(&qword_1ECFFB540, MEMORY[0x1E699DC08], MEMORY[0x1E699DC00]);
  v134 = v58;
  v135 = v59;
  v60 = swift_getWitnessTable();
  v61 = WitnessTable;
  sub_1E5A2B484();
  v63 = v86;
  v62 = v87;
  v64 = v98;
  (*(v87 + 16))(v86, v56, v98);
  v65 = (*(v62 + 80) + 144) & ~*(v62 + 80);
  v66 = swift_allocObject();
  v67 = v104;
  *(v66 + 2) = v97;
  *(v66 + 3) = v67;
  v68 = v113;
  *(v66 + 4) = v111;
  *(v66 + 5) = v68;
  v69 = v110;
  *(v66 + 6) = v92;
  *(v66 + 7) = v69;
  v70 = v109;
  *(v66 + 8) = v112;
  *(v66 + 9) = v70;
  v72 = v107;
  v71 = v108;
  *(v66 + 10) = v100;
  *(v66 + 11) = v71;
  v73 = v99;
  *(v66 + 12) = v72;
  *(v66 + 13) = v73;
  v74 = v105;
  v75 = v106;
  *(v66 + 14) = v91;
  *(v66 + 15) = v74;
  v76 = v101;
  *(v66 + 16) = v75;
  *(v66 + 17) = v76;
  (*(v62 + 32))(&v66[v65], v63, v64);
  v133 = v60;
  v77 = swift_getWitnessTable();
  v78 = v95;
  sub_1E5A2B364();

  (*(v102 + 8))(v61, v50);
  v131 = v77;
  v132 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  v79 = v94;
  v80 = *(v94 + 16);
  v81 = v96;
  v80(v96, v78, v52);
  v82 = *(v79 + 8);
  v82(v78, v52);
  v80(v89, v81, v52);
  return (v82)(v81, v52);
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

unint64_t sub_1E58B1C48()
{
  result = qword_1ECFFB518;
  if (!qword_1ECFFB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB518);
  }

  return result;
}

unint64_t sub_1E58B1C9C()
{
  result = qword_1ECFFB520;
  if (!qword_1ECFFB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB520);
  }

  return result;
}

unint64_t sub_1E58B1CF0()
{
  result = qword_1ECFFB528;
  if (!qword_1ECFFB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB528);
  }

  return result;
}

unint64_t sub_1E58B1D44()
{
  result = qword_1ECFFB538;
  if (!qword_1ECFFB538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB538);
  }

  return result;
}

uint64_t sub_1E58B1DC8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, ValueMetadata *a6@<X5>, uint64_t a7@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, ValueMetadata *a12, unint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(void, void), uint64_t a18)
{
  v203 = a2;
  v204 = a8;
  v200 = a7;
  v179 = a6;
  v180 = a1;
  v196 = a4;
  v197 = a5;
  v195 = a3;
  v177 = a9;
  v189 = a18;
  v199 = a17;
  v198 = a16;
  v178 = a15;
  v188 = a14;
  v194 = a13;
  v202 = a12;
  v193 = a11;
  v201 = a10;
  v190 = sub_1E5A2A0C4();
  v172 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v171 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E5A2A734();
  v169 = *(v19 - 8);
  v170 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v168 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E5A2BA14();
  v166 = *(v21 - 8);
  v167 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v165 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E5A2B994();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v164 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E5A29EB4();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v162 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E5A2BB14();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v161 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E5A2B9C4();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v173 = &v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v163 = &v153 - v32;
  v176 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB4F8, &unk_1E5A2C940);
  v33 = sub_1E5A2A374();
  v34 = sub_1E5A2A314();
  v191 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB500, &qword_1E5A30400);
  v192 = sub_1E5A2A384();
  v35 = sub_1E58B3B18(&qword_1ECFFB508, MEMORY[0x1E699DAE8], MEMORY[0x1E699DAE0]);
  v36 = sub_1E58B3B18(&qword_1ECFFB510, MEMORY[0x1E699D980], MEMORY[0x1E699D978]);
  v37 = sub_1E58B1C48();
  v38 = sub_1E58B1C9C();
  v39 = sub_1E58B1CF0();
  v248 = v33;
  v186 = v33;
  v40 = v203;
  v249 = v203;
  v250 = v34;
  v185 = v34;
  v251 = &type metadata for WorkoutPlanItemContext;
  v41 = v197;
  v252 = v197;
  v253 = v201;
  v254 = v35;
  v255 = v193;
  v256 = v36;
  v257 = v37;
  v258 = v38;
  v259 = v39;
  v260 = v188;
  v261 = v189;
  v42 = sub_1E5A2A1A4();
  v248 = MEMORY[0x1E697E108];
  v249 = MEMORY[0x1E697E100];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v184 = OpaqueTypeConformance2;
  v181 = sub_1E58B3B18(&qword_1ECFFB530, MEMORY[0x1E699DB18], MEMORY[0x1E699DB10]);
  v182 = v42;
  WitnessTable = swift_getWitnessTable();
  v248 = v33;
  v249 = MEMORY[0x1E6981E70];
  v44 = v40;
  v250 = v40;
  v45 = v195;
  v46 = v196;
  v251 = v195;
  v252 = MEMORY[0x1E6981E70];
  v253 = MEMORY[0x1E6981E70];
  v254 = v34;
  v255 = v191;
  v256 = v196;
  v257 = &type metadata for WorkoutPlanItemContext;
  v47 = v41;
  v258 = v41;
  v259 = v192;
  v260 = MEMORY[0x1E6981E70];
  v49 = v200;
  v48 = v201;
  v261 = v200;
  v50 = v204;
  v262 = v204;
  v263 = v201;
  v264 = v42;
  v265 = MEMORY[0x1E6981E60];
  v266 = v202;
  v267 = MEMORY[0x1E6981E60];
  v268 = MEMORY[0x1E6981E60];
  v269 = OpaqueTypeConformance2;
  v51 = v194;
  v270 = v194;
  v271 = v181;
  v272 = MEMORY[0x1E6981E60];
  v52 = v199;
  v273 = v198;
  v274 = v199;
  v275 = WitnessTable;
  v187 = sub_1E5A2A354();
  v248 = v186;
  v249 = MEMORY[0x1E6981E70];
  v250 = v44;
  v251 = v45;
  v252 = MEMORY[0x1E6981E70];
  v253 = MEMORY[0x1E6981E70];
  v53 = MEMORY[0x1E6981E70];
  v254 = v185;
  v255 = v191;
  v256 = v46;
  v257 = &type metadata for WorkoutPlanItemContext;
  v258 = v47;
  v259 = v192;
  v260 = MEMORY[0x1E6981E70];
  v261 = v49;
  v262 = v50;
  v263 = v48;
  v54 = v48;
  v55 = v181;
  v264 = v182;
  v265 = MEMORY[0x1E6981E60];
  v56 = v202;
  v266 = v202;
  v267 = MEMORY[0x1E6981E60];
  v268 = MEMORY[0x1E6981E60];
  v269 = v184;
  v270 = v51;
  v271 = v181;
  v272 = MEMORY[0x1E6981E60];
  v57 = v198;
  v273 = v198;
  v274 = v52;
  v275 = WitnessTable;
  v174 = sub_1E5A2A334();
  v175 = sub_1E5A2AA84();
  sub_1E5A2AA84();
  v248 = v186;
  v249 = v53;
  v250 = v203;
  v251 = v195;
  v252 = v53;
  v253 = v53;
  v254 = v185;
  v255 = v191;
  v256 = v196;
  v257 = &type metadata for WorkoutPlanItemContext;
  v258 = v197;
  v259 = v192;
  v260 = v53;
  v261 = v49;
  v262 = v204;
  v263 = v54;
  v264 = v182;
  v265 = MEMORY[0x1E6981E60];
  v266 = v56;
  v267 = MEMORY[0x1E6981E60];
  v268 = MEMORY[0x1E6981E60];
  v269 = v184;
  v270 = v51;
  v271 = v55;
  v272 = MEMORY[0x1E6981E60];
  v58 = MEMORY[0x1E6981E60];
  v273 = v57;
  v274 = v52;
  v275 = WitnessTable;
  sub_1E5A2A3A4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v59 = swift_getWitnessTable();
  v60 = swift_getWitnessTable();
  v246 = v59;
  v247 = v60;
  v61 = swift_getWitnessTable();
  v244 = v58;
  v245 = v61;
  v62 = swift_getWitnessTable();
  v242 = swift_getWitnessTable();
  v243 = v58;
  v63 = swift_getWitnessTable();
  v240 = v62;
  v241 = v63;
  v238 = swift_getWitnessTable();
  v239 = v58;
  v64 = swift_getWitnessTable();
  v65 = sub_1E5A2A4B4();
  v66 = swift_getWitnessTable();
  v248 = v65;
  v249 = v66;
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E5A2BD84();
  sub_1E5A2B734();
  v67 = sub_1E58B1D44();
  v248 = v65;
  v249 = v66;
  v236 = swift_getOpaqueTypeConformance2();
  v237 = v64;
  v235 = swift_getWitnessTable();
  v68 = swift_getWitnessTable();
  v232 = v67;
  v233 = v68;
  v234 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  v69 = sub_1E5A2B604();
  v159 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v158 = &v153 - v70;
  v71 = swift_getWitnessTable();
  v248 = v69;
  v249 = v71;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v157 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v155 = v71;
  v156 = &v153 - v73;
  v160 = v69;
  v248 = v69;
  v249 = v71;
  v74 = swift_getOpaqueTypeConformance2();
  v184 = OpaqueTypeMetadata2;
  v248 = OpaqueTypeMetadata2;
  v192 = v74;
  v249 = v74;
  v75 = swift_getOpaqueTypeMetadata2();
  v175 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v174 = &v153 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v176 = &v153 - v78;
  v182 = v79;
  v80 = sub_1E5A2AA84();
  WitnessTable = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v181 = &v153 - v81;
  v185 = v82;
  v191 = sub_1E5A2AA84();
  v187 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v186 = &v153 - v83;
  v248 = v203;
  v84 = v195;
  v85 = v196;
  v249 = v195;
  v250 = v196;
  v87 = v197;
  v86 = v198;
  v251 = v197;
  v88 = v178;
  v89 = v179;
  v252 = v179;
  v253 = v200;
  v254 = v204;
  v255 = v201;
  v256 = v193;
  v257 = v202;
  v258 = v194;
  v90 = v188;
  v91 = v189;
  v259 = v188;
  v260 = v178;
  v261 = v198;
  v262 = v199;
  v263 = v189;
  v154 = type metadata accessor for TVArchivedWorkoutPlansView(0, &v248);
  sub_1E58A9C3C(v154);
  v205 = v203;
  v206 = v84;
  v207 = v85;
  v208 = v87;
  v209 = v89;
  v210 = v200;
  v211 = v204;
  v212 = v201;
  v213 = v193;
  v214 = v202;
  v215 = v194;
  v216 = v90;
  v217 = v88;
  v218 = v86;
  v219 = v199;
  v220 = v91;
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v231 - 1 >= 2)
  {
    v105 = v190;
    v96 = MEMORY[0x1E6981E60];
    if (v231)
    {
      v111 = v158;
      v112 = v154;
      sub_1E58AB1B4(v154, v158);
      sub_1E5A2B9B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E5A2C930;
      *(inited + 32) = 1701667182;
      *(inited + 40) = 0xE400000000000000;
      sub_1E5A2BA84();
      if (qword_1EE2CFA28 != -1)
      {
        swift_once();
      }

      v172 = qword_1EE2D33E0;
      v114 = sub_1E58A9C3C(v112);
      MEMORY[0x1EEE9AC00](v114);
      v116 = v195;
      v115 = v196;
      *(&v153 - 16) = v203;
      *(&v153 - 15) = v116;
      *(&v153 - 14) = v115;
      v117 = v179;
      *(&v153 - 13) = v197;
      *(&v153 - 12) = v117;
      v118 = v204;
      *(&v153 - 11) = v200;
      *(&v153 - 10) = v118;
      v119 = v193;
      *(&v153 - 9) = v201;
      *(&v153 - 8) = v119;
      v120 = v194;
      *(&v153 - 7) = v202;
      *(&v153 - 6) = v120;
      v121 = v178;
      *(&v153 - 5) = v188;
      *(&v153 - 4) = v121;
      v122 = v199;
      *(&v153 - 3) = v198;
      *(&v153 - 2) = v122;
      *(&v153 - 1) = v189;
      swift_getKeyPath();
      sub_1E5A2B944();

      v123 = sub_1E5A2BB64();
      v124 = MEMORY[0x1E69E6158];
      *(inited + 48) = v123;
      *(inited + 56) = v125;
      *(inited + 72) = v124;
      strcpy((inited + 80), "impressionType");
      *(inited + 120) = v124;
      *(inited + 95) = -18;
      *(inited + 96) = 0x666C656873;
      *(inited + 104) = 0xE500000000000000;
      sub_1E590DF48(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
      swift_arrayDestroy();
      sub_1E5A2B984();
      v126 = MEMORY[0x1E69E7CC0];
      sub_1E590DF48(MEMORY[0x1E69E7CC0]);
      sub_1E590DF48(v126);
      v127 = v163;
      sub_1E5A2B9D4();
      v128 = sub_1E5A2B9E4();
      (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
      v129 = v165;
      sub_1E5A2BA04();
      v130 = v156;
      v131 = v112;
      v132 = v160;
      sub_1E5A2B014();
      (*(v166 + 8))(v129, v167);
      sub_1E58B3AB0(v127);
      (*(v159 + 8))(v111, v132);
      v133 = v168;
      sub_1E58A9F50(v131);
      v134 = v174;
      v102 = v184;
      v135 = v192;
      sub_1E5A2B394();
      (*(v169 + 8))(v133, v170);
      (*(v157 + 8))(v130, v102);
      v248 = v102;
      v249 = v135;
      v136 = swift_getOpaqueTypeConformance2();
      v137 = v175;
      v138 = v176;
      v139 = *(v175 + 16);
      v140 = v182;
      v139(v176, v134, v182);
      v204 = *(v137 + 8);
      v204(v134, v140);
      v139(v134, v138, v140);
      v141 = v181;
      v96 = MEMORY[0x1E6981E60];
      sub_1E595ECB8(v134, MEMORY[0x1E6981E70], v140, MEMORY[0x1E6981E60], v136);
      v223 = v96;
      v224 = v136;
      v142 = v185;
      v143 = swift_getWitnessTable();
      v144 = sub_1E58B3B18(&qword_1ECFFB540, MEMORY[0x1E699DC08], MEMORY[0x1E699DC00]);
      v104 = v186;
      sub_1E595EBC0(v141, v142, v190, v143, v144);
      (*(WitnessTable + 8))(v141, v142);
      v145 = v204;
      v204(v134, v140);
      v146 = v140;
      v103 = v192;
      v145(v176, v146);
    }

    else
    {
      v102 = v184;
      v248 = v184;
      v103 = v192;
      v249 = v192;
      v106 = swift_getOpaqueTypeConformance2();
      v107 = v181;
      sub_1E595EBC0(v106, MEMORY[0x1E6981E70], v182, v96, v106);
      v221 = v96;
      v222 = v106;
      v108 = v185;
      v109 = swift_getWitnessTable();
      v110 = sub_1E58B3B18(&qword_1ECFFB540, MEMORY[0x1E699DC08], MEMORY[0x1E699DC00]);
      v104 = v186;
      sub_1E595EBC0(v107, v108, v105, v109, v110);
      (*(WitnessTable + 8))(v107, v108);
    }
  }

  else
  {
    v92 = v171;
    sub_1E5A2A0B4();
    v93 = v184;
    v248 = v184;
    v94 = v192;
    v249 = v192;
    v95 = swift_getOpaqueTypeConformance2();
    v96 = MEMORY[0x1E6981E60];
    v229 = MEMORY[0x1E6981E60];
    v230 = v95;
    v97 = v185;
    v98 = swift_getWitnessTable();
    v99 = sub_1E58B3B18(&qword_1ECFFB540, MEMORY[0x1E699DC08], MEMORY[0x1E699DC00]);
    v100 = v186;
    v101 = v190;
    sub_1E595ECB8(v92, v97, v190, v98, v99);
    v172[1](v92, v101);
    v102 = v93;
    v103 = v94;
    v104 = v100;
  }

  v248 = v102;
  v249 = v103;
  v147 = swift_getOpaqueTypeConformance2();
  v227 = v96;
  v228 = v147;
  v148 = swift_getWitnessTable();
  v149 = sub_1E58B3B18(&qword_1ECFFB540, MEMORY[0x1E699DC08], MEMORY[0x1E699DC00]);
  v225 = v148;
  v226 = v149;
  v150 = v191;
  swift_getWitnessTable();
  v151 = v187;
  (*(v187 + 16))(v177, v104, v150);
  return (*(v151 + 8))(v104, v150);
}

uint64_t sub_1E58B34AC(uint64_t a1, uint64_t a2, ValueMetadata *a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v33 = a6;
  v34 = a8;
  v30 = a4;
  v27 = a3;
  v35 = a1;
  v31 = a12;
  v29 = a11;
  v26[1] = a17;
  v32 = a16;
  v28 = a14;
  v36 = a2;
  v37 = &type metadata for WorkoutPlanItemContext;
  v38 = a5;
  v39 = a7;
  v40 = a9;
  v41 = a10;
  v42 = sub_1E58B1C48();
  v43 = sub_1E58B1C9C();
  v44 = sub_1E58B1CF0();
  v45 = a13;
  v46 = a15;
  v47 = a17;
  v20 = type metadata accessor for ArchivedWorkoutPlansAction(0, &v36);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v26 - v22;
  v36 = a2;
  v37 = v27;
  v38 = v30;
  v39 = a5;
  v40 = v33;
  v41 = a7;
  v42 = v34;
  v43 = a9;
  v44 = a10;
  v45 = a11;
  v46 = a12;
  v47 = a13;
  v48 = a14;
  v49 = a15;
  v50 = a16;
  v51 = a17;
  v24 = type metadata accessor for TVArchivedWorkoutPlansView(0, &v36);
  sub_1E58A9C3C(v24);
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();

  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_1E58B36A4()
{
  v17 = v0[3];
  v15 = v0[5];
  v16 = v0[4];
  v13 = v0[7];
  v14 = v0[6];
  v1 = v0[9];
  v12 = v0[8];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[17];
  v19[0] = v0[2];
  v18 = v19[0];
  v19[1] = v17;
  v19[2] = v16;
  v19[3] = v15;
  v19[4] = v14;
  v19[5] = v13;
  v19[6] = v12;
  v19[7] = v1;
  v19[8] = v3;
  v19[9] = v2;
  v19[10] = v4;
  v19[11] = v5;
  v19[12] = v6;
  v19[13] = v7;
  v19[14] = v8;
  v19[15] = v9;
  v10 = *(type metadata accessor for TVArchivedWorkoutPlansView(0, v19) - 8);
  return sub_1E58B34AC(v0 + ((*(v10 + 80) + 144) & ~*(v10 + 80)), v18, v17, v16, v15, v14, v13, v12, v1, v3, v2, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E58B3808(uint64_t a1)
{
  v1 = *(a1 + 136);
  v9 = *(a1 + 16);
  v2 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = v2;
  v3 = *(a1 + 104);
  v12 = *(a1 + 72);
  v13 = v3;
  v14 = *(a1 + 120);
  v15 = v1;
  type metadata accessor for ArchivedWorkoutPlansFeature(255, &v9);
  swift_getWitnessTable();
  sub_1E5A2B974();
  swift_getWitnessTable();
  result = sub_1E5A2A504();
  if (v5 <= 0x3F)
  {
    v16 = 0;
    v9 = result;
    swift_getFunctionTypeMetadata1();
    result = sub_1E5A2A054();
    if (v6 <= 0x3F)
    {
      v17 = 0;
      *&v10 = result;
      swift_getFunctionTypeMetadata2();
      result = sub_1E5A2A054();
      if (v7 <= 0x3F)
      {
        v18 = 0;
        *(&v10 + 1) = result;
        result = sub_1E5A29E74();
        if (v8 <= 0x3F)
        {
          v19 = 0;
          *&v11 = result;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E58B39D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E58B39F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_1ECFFB548)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECFFB548);
    }
  }
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

uint64_t sub_1E58B3AB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E58B3B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E58B3B60()
{
  result = qword_1ECFFB578;
  if (!qword_1ECFFB578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB570, &unk_1E5A2CA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB578);
  }

  return result;
}

void *sub_1E58B3C4C@<X0>(uint64_t *a1@<X8>)
{
  *v3 = *(v1 + 104);
  *&v3[16] = *(v1 + 120);
  return sub_1E58B0AB0(*(v1 + 144), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), a1, *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *&v3[8], *(v1 + 128), *(v1 + 136));
}

uint64_t sub_1E58B3C9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E58B3D48(uint64_t a1)
{
  v17 = v1[4];
  v18 = v1[3];
  v15 = v1[6];
  v16 = v1[5];
  v2 = v1[9];
  v13 = v1[8];
  v14 = v1[7];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[15];
  v9 = v1[16];
  v10 = v1[17];
  v21[0] = v1[2];
  v19 = v21[0];
  v21[1] = v18;
  v21[2] = v17;
  v21[3] = v16;
  v21[4] = v15;
  v21[5] = v14;
  v21[6] = v13;
  v21[7] = v2;
  v21[8] = v3;
  v21[9] = v4;
  v21[10] = v5;
  v21[11] = v6;
  v21[12] = v7;
  v21[13] = v8;
  v21[14] = v9;
  v21[15] = v10;
  v11 = *(type metadata accessor for TVArchivedWorkoutPlansView(0, v21) - 8);
  return sub_1E58B0644(a1, v1 + ((*(v11 + 80) + 144) & ~*(v11 + 80)), v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E58B3E48(uint64_t *a1)
{
  v17 = v1[4];
  v18 = v1[3];
  v15 = v1[6];
  v16 = v1[5];
  v2 = v1[9];
  v13 = v1[8];
  v14 = v1[7];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[15];
  v9 = v1[16];
  v10 = v1[17];
  v21[0] = v1[2];
  v19 = v21[0];
  v21[1] = v18;
  v21[2] = v17;
  v21[3] = v16;
  v21[4] = v15;
  v21[5] = v14;
  v21[6] = v13;
  v21[7] = v2;
  v21[8] = v3;
  v21[9] = v4;
  v21[10] = v5;
  v21[11] = v6;
  v21[12] = v7;
  v21[13] = v8;
  v21[14] = v9;
  v21[15] = v10;
  v11 = *(type metadata accessor for TVArchivedWorkoutPlansView(0, v21) - 8);
  return sub_1E58B0850(a1, v1 + ((*(v11 + 80) + 144) & ~*(v11 + 80)), v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_84Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  v3 = *(v0 + 136);
  v16[0] = *(v0 + 16);
  v16[1] = v1;
  v4 = *(v0 + 48);
  v17 = *(v0 + 32);
  v18 = v4;
  v19 = v2;
  v5 = *(v0 + 88);
  v20 = *(v0 + 72);
  v21 = v5;
  v6 = *(v0 + 120);
  v22 = *(v0 + 104);
  v23 = v6;
  v24 = v3;
  v7 = (type metadata accessor for TVArchivedWorkoutPlansView(0, v16) - 8);
  v8 = (v0 + ((*(*v7 + 80) + 144) & ~*(*v7 + 80)));
  sub_1E58B369C(*v8, v8[1]);
  v9 = v7[39];
  swift_getFunctionTypeMetadata1();
  v10 = sub_1E5A2A054();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = v7[40];
  swift_getFunctionTypeMetadata2();
  v12 = sub_1E5A2A054();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  v13 = v7[41];
  v14 = sub_1E5A29E74();
  (*(*(v14 - 8) + 8))(v8 + v13, v14);
  return swift_deallocObject();
}

uint64_t WorkoutPlanModalityPreference.modalityIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkoutPlanModalityPreference.preferredMusicGenres.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t WorkoutPlanModalityPreference.preferredTrainers.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t WorkoutPlanModalityPreference.init(modalityIdentifier:preferredMusicGenres:preferredTrainers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E58B42D0()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E58B4318(uint64_t a1)
{
  v2 = *v1;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v2);
  return sub_1E5A2C204();
}

unint64_t sub_1E58B435C()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1E58B43B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E58BA9A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E58B43E4(uint64_t a1)
{
  v2 = sub_1E58B46A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58B4420(uint64_t a1)
{
  v2 = sub_1E58B46A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanModalityPreference.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB590, &unk_1E5A2CB60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58B46A0();
  sub_1E5A2C224();
  LOBYTE(v15) = 0;
  v8 = v13;
  sub_1E5A2C064();
  if (!v8)
  {
    v9 = v11;
    v15 = v12;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5A0, &qword_1E5A3F610);
    sub_1E58B4A18(&qword_1ECFFB5A8, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1E5A2C0B4();
    v15 = v9;
    v14 = 2;
    sub_1E5A2C0B4();
  }

  return (*(v4 + 8))(v6, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E58B46A0()
{
  result = qword_1ECFFB598;
  if (!qword_1ECFFB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFB598);
  }

  return result;
}

uint64_t WorkoutPlanModalityPreference.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5B0, &qword_1E5A2CB70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58B46A0();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v17 = sub_1E5A2BF94();
  v18 = v9;
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5A0, &qword_1E5A3F610);
  v19 = 1;
  sub_1E58B4A18(&qword_1ECFFB5B8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
  sub_1E5A2BFE4();
  v15 = v20;
  v19 = 2;
  sub_1E5A2BFE4();
  (*(v6 + 8))(v8, v5);
  v10 = v20;
  v11 = v16;
  v12 = v18;
  *v16 = v17;
  v11[1] = v12;
  v11[2] = v15;
  v11[3] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1E58B4A18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFB5A0, &qword_1E5A3F610);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static WorkoutPlanModalityPreference.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1E5A2C114() & 1) == 0 || (sub_1E58B61B8(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1E58B61B8(v3, v4);
}

uint64_t sub_1E58B4B48(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v25 = v7;
  v26 = result;
  v28 = a2;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v6));
    v27 = (v6 - 1) & v6;
LABEL_13:
    v12 = *(result + 48) + 24 * (v9 | (v2 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = a2;
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](v15);

    sub_1E5A2BB74();
    v17 = sub_1E5A2C204();
    v18 = -1 << *(v16 + 32);
    v19 = v17 & ~v18;
    if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_33:
      sub_1E58BAAC0(v13, v14, v15);
      return 0;
    }

    v20 = ~v18;
    v21 = *(v28 + 48);
    while (1)
    {
      v22 = v21 + 24 * v19;
      v23 = *(v22 + 16);
      if (v23 <= 1)
      {
        if (*(v22 + 16))
        {
          if (v15 == 1)
          {
            goto LABEL_25;
          }
        }

        else if (!v15)
        {
          goto LABEL_25;
        }

        goto LABEL_16;
      }

      if (v23 != 2)
      {
        break;
      }

      if (v15 == 2)
      {
        goto LABEL_25;
      }

LABEL_16:
      v19 = (v19 + 1) & v20;
      if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (v15 != 3)
    {
      goto LABEL_16;
    }

LABEL_25:
    v24 = *v22 == v13 && *(v22 + 8) == v14;
    if (!v24 && (sub_1E5A2C114() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1E58BAAC0(v13, v14, v23);
    v7 = v25;
    result = v26;
    v6 = v27;
    a2 = v28;
  }

  while (v27);
LABEL_8:
  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v27 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B4D88(uint64_t a1, uint64_t a2)
{
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB600, &unk_1E5A36750);
  MEMORY[0x1EEE9AC00](v116);
  v5 = &v95 - v4;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB608, &qword_1E5A2CDC0);
  MEMORY[0x1EEE9AC00](v128);
  v7 = &v95 - v6;
  v8 = sub_1E5A29D44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v115 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v95 - v14;
  v16 = sub_1E5A2A064();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v95 - v23;
  v120 = type metadata accessor for WorkoutPlanArtwork(0);
  MEMORY[0x1EEE9AC00](v120);
  v130 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v129 = &v95 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v95 - v29;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v110 = v8;
  v31 = 0;
  v32 = a1 + 56;
  v33 = 1 << *(a1 + 32);
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  else
  {
    v34 = -1;
  }

  v35 = v34 & *(a1 + 56);
  v36 = (v33 + 63) >> 6;
  result = v17 + 48;
  v108 = (v17 + 32);
  v118 = (v17 + 8);
  v117 = (v9 + 48);
  v104 = (v9 + 32);
  v106 = (v9 + 8);
  v127 = a2 + 56;
  v121 = a2;
  v111 = v5;
  v103 = v15;
  v125 = v21;
  v126 = v17 + 48;
  v102 = a1 + 56;
  v101 = v36;
LABEL_7:
  v38 = v105;
  if (v35)
  {
    v39 = result;
    v96 = (v35 - 1) & v35;
    v97 = v31;
    v40 = __clz(__rbit64(v35)) | (v31 << 6);
    v41 = &qword_1ECFFB5E8;
LABEL_14:
    v45 = *(a1 + 48);
    v99 = v28;
    v124 = *(v28 + 72);
    v46 = v30;
    sub_1E58BAAD8(v45 + v124 * v40, v30);
    v98 = v46;
    v47 = v46;
    v48 = v129;
    sub_1E58BAB3C(v47, v129);
    sub_1E5A2C1B4();
    sub_1E58BABA0(v48, v38, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
    v49 = *v39;
    if (v49(v38, 1, v16) == 1)
    {
      sub_1E5A2C1D4();
    }

    else
    {
      v50 = v112;
      (*v108)(v112, v38, v16);
      sub_1E5A2C1D4();
      sub_1E58BAC64(&qword_1ECFFB5F0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
      sub_1E5A2BA44();
      (*v118)(v50, v16);
    }

    v51 = v117;
    v52 = v120;
    v53 = v129;
    v54 = *(v129 + *(v120 + 20));
    v114 = v54;
    WorkoutPlanArtworkVariant.rawValue.getter(v54);
    sub_1E5A2BB74();

    v109 = *(v52 + 24);
    v55 = v103;
    sub_1E58BABA0(v53 + v109, v103, &qword_1ECFFB5E0, &qword_1E5A3AC70);
    v56 = *v51;
    v57 = v110;
    v58 = (*v51)(v55, 1, v110);
    v123 = v49;
    v100 = a1;
    if (v58 == 1)
    {
      sub_1E5A2C1D4();
    }

    else
    {
      v59 = v107;
      (*v104)(v107, v55, v57);
      sub_1E5A2C1D4();
      sub_1E58BAC64(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1E5A2BA44();
      (*v106)(v59, v57);
    }

    v60 = sub_1E5A2C204();
    v61 = v121;
    v62 = -1 << *(v121 + 32);
    v63 = v60 & ~v62;
    if (((*(v127 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
    {
LABEL_91:
      sub_1E58BAC08(v129);
      return 0;
    }

    v122 = ~v62;
    v113 = v16;
    v119 = v56;
    while (1)
    {
      v64 = v130;
      sub_1E58BAAD8(*(v61 + 48) + v63 * v124, v130);
      v65 = *(v128 + 48);
      sub_1E58BABA0(v64, v7, v41, &unk_1E5A2CDB0);
      sub_1E58BABA0(v129, &v7[v65], v41, &unk_1E5A2CDB0);
      v66 = v123;
      if (v123(v7, 1, v16) == 1)
      {
        v67 = v66(&v7[v65], 1, v16);
        v68 = v119;
        if (v67 != 1)
        {
          goto LABEL_23;
        }

        sub_1E58BAD14(v7, v41, &unk_1E5A2CDB0);
      }

      else
      {
        v69 = v41;
        v70 = v125;
        v71 = v69;
        sub_1E58BABA0(v7, v125, v69, &unk_1E5A2CDB0);
        if (v66(&v7[v65], 1, v16) == 1)
        {
          (*v118)(v70, v16);
          v41 = v71;
          v61 = v121;
LABEL_23:
          sub_1E58BAD14(v7, &qword_1ECFFB608, &qword_1E5A2CDC0);
LABEL_24:
          sub_1E58BAC08(v130);
          goto LABEL_25;
        }

        v72 = v112;
        (*v108)(v112, &v7[v65], v16);
        sub_1E58BAC64(&qword_1ECFFB618, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB0]);
        v73 = sub_1E5A2BA74();
        v74 = *v118;
        (*v118)(v72, v16);
        v74(v125, v16);
        v61 = v121;
        v41 = &qword_1ECFFB5E8;
        v51 = v117;
        sub_1E58BAD14(v7, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
        v68 = v119;
        if ((v73 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v75 = *(v130 + *(v120 + 20));
      if (v75 > 4)
      {
        v76 = v114;
        if (*(v130 + *(v120 + 20)) <= 6u)
        {
          if (v75 == 5)
          {
            v78 = 0xE500000000000000;
            v77 = 0x74726F6873;
          }

          else
          {
            v78 = 0xE400000000000000;
            v77 = 1819042164;
          }
        }

        else if (v75 == 7)
        {
          v78 = 0xE400000000000000;
          v77 = 1954047348;
        }

        else if (v75 == 8)
        {
          v77 = 0x6469576172746C75;
          v78 = 0xE900000000000065;
        }

        else
        {
          v78 = 0xE400000000000000;
          v77 = 1701079415;
        }
      }

      else
      {
        v76 = v114;
        if (*(v130 + *(v120 + 20)) <= 1u)
        {
          v78 = 0xE600000000000000;
          if (*(v130 + *(v120 + 20)))
          {
            v77 = 0x7265746E6563;
          }

          else
          {
            v77 = 0x72656E6E6162;
          }
        }

        else if (v75 == 2)
        {
          v78 = 0xE400000000000000;
          v77 = 2019912806;
        }

        else if (v75 == 3)
        {
          v77 = 0x657263536C6C7566;
          v78 = 0xEA00000000006E65;
        }

        else
        {
          v78 = 0xE700000000000000;
          v77 = 0x72616C75676572;
        }
      }

      v79 = v51;
      if (v76 > 4)
      {
        v82 = 0x6469576172746C75;
        if (v76 != 8)
        {
          v82 = 1701079415;
        }

        v83 = 0xE900000000000065;
        if (v76 != 8)
        {
          v83 = 0xE400000000000000;
        }

        if (v76 == 7)
        {
          v82 = 1954047348;
          v83 = 0xE400000000000000;
        }

        v84 = 0x74726F6873;
        if (v76 != 5)
        {
          v84 = 1819042164;
        }

        v85 = 0xE500000000000000;
        if (v76 != 5)
        {
          v85 = 0xE400000000000000;
        }

        if (v76 <= 6)
        {
          v80 = v84;
        }

        else
        {
          v80 = v82;
        }

        if (v76 <= 6)
        {
          v81 = v85;
        }

        else
        {
          v81 = v83;
        }
      }

      else if (v76 <= 1)
      {
        v81 = 0xE600000000000000;
        if (v76)
        {
          v80 = 0x7265746E6563;
        }

        else
        {
          v80 = 0x72656E6E6162;
        }
      }

      else if (v76 == 2)
      {
        v81 = 0xE400000000000000;
        v80 = 2019912806;
      }

      else if (v76 == 3)
      {
        v80 = 0x657263536C6C7566;
        v81 = 0xEA00000000006E65;
      }

      else
      {
        v81 = 0xE700000000000000;
        v80 = 0x72616C75676572;
      }

      if (v77 == v80 && v78 == v81)
      {
      }

      else
      {
        v86 = sub_1E5A2C114();

        if ((v86 & 1) == 0)
        {
          sub_1E58BAC08(v130);
          v61 = v121;
          v16 = v113;
          v51 = v79;
          goto LABEL_25;
        }
      }

      v87 = *(v116 + 48);
      v88 = v111;
      sub_1E58BABA0(v130 + *(v120 + 24), v111, &qword_1ECFFB5E0, &qword_1E5A3AC70);
      sub_1E58BABA0(v129 + v109, v88 + v87, &qword_1ECFFB5E0, &qword_1E5A3AC70);
      v89 = v110;
      if (v68(v88, 1, v110) == 1)
      {
        sub_1E58BAC08(v130);
        v90 = v68(v88 + v87, 1, v89);
        v16 = v113;
        v51 = v79;
        if (v90 == 1)
        {
          sub_1E58BAD14(v88, &qword_1ECFFB5E0, &qword_1E5A3AC70);
LABEL_89:
          sub_1E58BAC08(v129);
          a1 = v100;
          v28 = v99;
          v30 = v98;
          v31 = v97;
          v32 = v102;
          v36 = v101;
          v35 = v96;
          result = v126;
          goto LABEL_7;
        }

        goto LABEL_80;
      }

      v91 = v115;
      sub_1E58BABA0(v88, v115, &qword_1ECFFB5E0, &qword_1E5A3AC70);
      if (v68(v88 + v87, 1, v89) == 1)
      {
        sub_1E58BAC08(v130);
        (*v106)(v91, v89);
        v16 = v113;
        v51 = v117;
LABEL_80:
        sub_1E58BAD14(v88, &qword_1ECFFB600, &unk_1E5A36750);
        v61 = v121;
        goto LABEL_25;
      }

      v92 = v107;
      (*v104)(v107, v88 + v87, v89);
      sub_1E58BAC64(&qword_1ECFFB610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v93 = sub_1E5A2BA74();
      v94 = *v106;
      (*v106)(v92, v89);
      sub_1E58BAC08(v130);
      v94(v115, v89);
      v41 = &qword_1ECFFB5E8;
      sub_1E58BAD14(v111, &qword_1ECFFB5E0, &qword_1E5A3AC70);
      v61 = v121;
      v16 = v113;
      v51 = v117;
      if (v93)
      {
        goto LABEL_89;
      }

LABEL_25:
      v63 = (v63 + 1) & v122;
      if (((*(v127 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
      {
        goto LABEL_91;
      }
    }
  }

  v42 = v31;
  v41 = &qword_1ECFFB5E8;
  while (1)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v43 >= v36)
    {
      return 1;
    }

    v44 = *(v32 + 8 * v43);
    ++v42;
    if (v44)
    {
      v39 = result;
      v96 = (v44 - 1) & v44;
      v97 = v43;
      v40 = __clz(__rbit64(v44)) | (v43 << 6);
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B5D34(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v38 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v43 = a2 + 56;
  v39 = v8;
  v40 = result;
  if (v7)
  {
LABEL_7:
    v9 = __clz(__rbit64(v7));
    v42 = (v7 - 1) & v7;
LABEL_13:
    v12 = (*(v3 + 48) + 32 * (v9 | (v4 << 6)));
    v14 = *v12;
    v13 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    MEMORY[0x1E6932DE0](*(v15 + 16));
    v17 = *(v15 + 16);
    if (v17)
    {
      v18 = (v15 + 32);
      do
      {
        v19 = *v18++;
        MEMORY[0x1E6932DE0](v19);
        --v17;
      }

      while (v17);
    }

    MEMORY[0x1E6932DE0](*(v16 + 16));
    v20 = *(v16 + 16);
    if (v20)
    {
      v21 = (v16 + 32);
      do
      {
        v22 = *v21++;
        MEMORY[0x1E6932DE0](v22);
        --v20;
      }

      while (v20);
    }

    v23 = sub_1E5A2C204();
    v24 = -1 << *(v2 + 32);
    v25 = v23 & ~v24;
    if ((*(v43 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
    {
      v26 = ~v24;
      v27 = *(v2 + 48);
      do
      {
        v28 = (v27 + 32 * v25);
        result = *v28;
        v29 = v28[2];
        v30 = v28[3];
        v31 = *v28 == v14 && v28[1] == v13;
        if (v31 || (result = sub_1E5A2C114(), (result & 1) != 0))
        {
          v32 = *(v29 + 16);
          if (v32 == *(v15 + 16))
          {
            if (v32)
            {
              v33 = v29 == v15;
            }

            else
            {
              v33 = 1;
            }

            if (!v33)
            {
              v34 = (v29 + 32);
              v35 = (v15 + 32);
              while (v32)
              {
                if (*v34 != *v35)
                {
                  goto LABEL_21;
                }

                ++v34;
                ++v35;
                if (!--v32)
                {
                  goto LABEL_36;
                }
              }

              __break(1u);
              __break(1u);
              goto LABEL_48;
            }

LABEL_36:
            v36 = *(v30 + 16);
            if (v36 == *(v16 + 16))
            {
              if (!v36 || v30 == v16)
              {
LABEL_42:

                v3 = v40;
                v2 = a2;
                v8 = v39;
                v7 = v42;
                if (v42)
                {
                  goto LABEL_7;
                }

                goto LABEL_8;
              }

              v37 = 32;
              while (*(v30 + v37) == *(v16 + v37))
              {
                ++v37;
                if (!--v36)
                {
                  goto LABEL_42;
                }
              }
            }
          }
        }

LABEL_21:
        v25 = (v25 + 1) & v26;
      }

      while (((*(v43 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
    }

    return 0;
  }

LABEL_8:
  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v38 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v42 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1E58B6048(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](v13);
    result = sub_1E5A2C204();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B61B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    v16 = sub_1E5A2C204();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E58B6370(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v33 = a2 + 56;
  v29 = result + 56;
  v30 = result;
  v28 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v31 = (v6 - 1) & v6;
LABEL_13:
    v11 = (*(result + 48) + 32 * (v8 | (v2 << 6)));
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    v16 = a2;
    sub_1E5A2C1B4();

    sub_1E5A2BB74();
    sub_1E58B93C8(v34, v14);
    v32 = v15;
    sub_1E58B93C8(v34, v15);
    v17 = sub_1E5A2C204();
    v18 = -1 << *(v16 + 32);
    v19 = v17 & ~v18;
    if (((*(v33 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_27:

      return 0;
    }

    v20 = v16;
    v21 = ~v18;
    while (1)
    {
      v22 = v20;
      v23 = (*(v20 + 48) + 32 * v19);
      v24 = v23[2];
      v25 = v23[3];
      v26 = *v23 == v13 && v23[1] == v12;
      if (!v26 && (sub_1E5A2C114() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (sub_1E58B61B8(v24, v14))
      {
        break;
      }

LABEL_16:
      v19 = (v19 + 1) & v21;
      v20 = v22;
      if (((*(v33 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v27 = sub_1E58B61B8(v25, v32);

    if ((v27 & 1) == 0)
    {
      goto LABEL_16;
    }

    v3 = v29;
    result = v30;
    a2 = v22;
    v7 = v28;
    v6 = v31;
  }

  while (v31);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v31 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}